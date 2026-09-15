#!/usr/bin/env python3
"""Analyse skill-script-automation study runs (study section 4.2-4.3, 6.3).

Inputs: a runs/ directory holding, per run id, <id>-worker.jsonl (claude stream-json transcript),
<id>-server.jsonl (MPS MCP call-log slice) and <id>.meta.json (harness metadata).

Outputs (written into --out, default <runs>/analysis):
  metrics.csv   one row per run: tokens (in/out/cache), authored tool-input chars, tool-result bytes,
                skill-file bytes read, tool calls, errors, retries, validation loops, wall-clock, pass
  tools.json    per-tool call counts, error counts, avg input chars, avg result bytes (transcript + server)
  chains.json   bigrams/trigrams of tool+op with counts and avg input chars per occurrence
  errors.json   error->retry pairs, check_root_node_problems repeats per root, stale-runtime incidents
  hotspots.md   top-N chains (>= --min-occurrences) with example run-id:step ranges
A compact JSON summary is printed to stdout. Stdlib only, Python >= 3.9.
Exit codes: 0 ok, 2 usage.
"""
from __future__ import annotations

import argparse
import csv
import json
import os
import re
import sys
from collections import Counter, defaultdict
from pathlib import Path

SKILL_DIR_RE = re.compile(r"(?:\.agents|\.claude)/skills/|\bmps-[a-z0-9-]+/(?:SKILL\.md|references/)")
TEMP_RESULT_RE = re.compile(r"mps-node-\d+\.json|/T/mps-[a-z-]*\d+|mps-mcp-result")
BLUEPRINT_WRITE_RE = re.compile(r"cat\s*>|tee\s|open\([^)]*['\"]w['\"]|json\.dump\(|>\s*\S+\.json")


def classify_bash(command: str) -> str:
    """skill_read | temp_result_read | blueprint_write | other — what a Bash call is used for."""
    if SKILL_DIR_RE.search(command):
        return "skill_read"
    if BLUEPRINT_WRITE_RE.search(command):
        return "blueprint_write"
    if TEMP_RESULT_RE.search(command):
        return "temp_result_read"
    return "other"
STALE_RE = re.compile(r"descriptorStatus\W+hollow|runtime_stale|RUNTIME_STALE", re.I)
VALIDATE_TOOL = "mps_mcp_check_root_node_problems"


def mcp_name(name: str) -> str:
    """mcp__<server>__mps_mcp_x -> mps_mcp_x ; other tools unchanged."""
    if name.startswith("mcp__"):
        return name.split("__", 2)[-1]
    return name


def op_of(inp) -> str | None:
    if not isinstance(inp, dict):
        return None
    parts = [str(inp[k]).strip() for k in ("operation", "kind") if inp.get(k) not in (None, "")]
    return "/".join(parts) if parts else None


def key_of(name: str, inp) -> str:
    op = op_of(inp)
    return f"{name}:{op}" if op else name


def result_text(content) -> str:
    if isinstance(content, str):
        return content
    if isinstance(content, list):
        return "".join(part.get("text", "") for part in content if isinstance(part, dict))
    return json.dumps(content) if content is not None else ""


def is_error_result(block, text: str) -> bool:
    if block.get("is_error"):
        return True
    head = text.lstrip()[:200]
    return head.startswith("{") and '"ok":false' in head.replace(" ", "")


def root_ref_of(inp) -> str | None:
    if not isinstance(inp, dict):
        return None
    for k, v in inp.items():
        if isinstance(v, str) and ("ref" in k.lower() or "node" in k.lower()):
            return v
    return None


def load_jsonl(path: Path):
    if not path.exists():
        return []
    out = []
    with path.open() as fh:
        for line in fh:
            line = line.strip()
            if not line:
                continue
            try:
                out.append(json.loads(line))
            except json.JSONDecodeError:
                continue
    return out


def analyse_run(run_id: str, runs: Path):
    events = load_jsonl(runs / f"{run_id}-worker.jsonl")
    meta = json.loads((runs / f"{run_id}.meta.json").read_text()) if (runs / f"{run_id}.meta.json").exists() else {}
    server = load_jsonl(runs / f"{run_id}-server.jsonl")
    # The server slice is cut by time window; drop lines from other projects (e.g. the observer
    # evaluating a previous run while this one was running).
    if meta.get("project"):
        server = [s for s in server if not s.get("project") or s["project"].rstrip("/") == meta["project"].rstrip("/")]

    calls = []            # ordered tool_use steps: dict(step, name, key, input_chars, result_bytes, error, root)
    by_id = {}
    usage = Counter()
    step = 0
    skill_bytes = 0
    result_total = 0
    stale = 0
    final = {}
    for ev in events:
        t = ev.get("type")
        if t == "assistant":
            msg = ev.get("message", {})
            for k, v in (msg.get("usage") or {}).items():
                if isinstance(v, (int, float)):
                    usage[k] += v
            for block in msg.get("content") or []:
                if isinstance(block, dict) and block.get("type") == "tool_use":
                    step += 1
                    name = mcp_name(block.get("name", "?"))
                    inp = block.get("input")
                    call = {"step": step, "name": name, "key": key_of(name, inp),
                            "input_chars": len(json.dumps(inp)) if inp is not None else 0,
                            "result_bytes": 0, "error": False, "root": root_ref_of(inp), "result_is_temp_file": False,
                            "skill_read": (name == "Read" and isinstance(inp, dict)
                                           and bool(SKILL_DIR_RE.search(str(inp.get("file_path", "")))))
                                          or (name == "Bash" and isinstance(inp, dict)
                                              and classify_bash(str(inp.get("command", ""))) == "skill_read"),
                            "bash_kind": classify_bash(str(inp.get("command", ""))) if name == "Bash" and isinstance(inp, dict) else None}
                    calls.append(call)
                    by_id[block.get("id")] = call
        elif t == "user":
            for block in (ev.get("message", {}).get("content") or []):
                if isinstance(block, dict) and block.get("type") == "tool_result":
                    call = by_id.get(block.get("tool_use_id"))
                    text = result_text(block.get("content"))
                    n = len(text.encode())
                    result_total += n
                    if STALE_RE.search(text):
                        stale += 1
                    if call:
                        call["result_is_temp_file"] = bool(re.match(r'\s*\{"ok":true,"data":"/[^"]+"', text))
                        call["result_bytes"] = n
                        call["error"] = is_error_result(block, text)
                        if call["skill_read"]:
                            skill_bytes += n
        elif t == "result":
            final = ev

    # error -> retry pairs: same tool key again within the next 2 calls after an error
    retries = []
    for i, c in enumerate(calls):
        if c["error"]:
            for j in range(i + 1, min(i + 3, len(calls))):
                if calls[j]["name"] == c["name"]:
                    retries.append((c["step"], calls[j]["step"], c["key"]))
                    break
    # validation loops: check_root_node_problems on the same root >= 3 times
    per_root = Counter(c["root"] for c in calls if c["name"] == VALIDATE_TOOL and c["root"])
    loops = {r: n for r, n in per_root.items() if n >= 3}

    # chains
    keys = [c["key"] for c in calls]
    chains = defaultdict(lambda: {"count": 0, "chars": 0, "examples": []})
    for n in (2, 3):
        for i in range(len(keys) - n + 1):
            gram = " -> ".join(keys[i:i + n])
            e = chains[gram]
            e["count"] += 1
            e["chars"] += sum(c["input_chars"] + c["result_bytes"] for c in calls[i:i + n])
            if len(e["examples"]) < 3:
                e["examples"].append(f"{run_id}:{calls[i]['step']}-{calls[i + n - 1]['step']}")

    tool_calls = Counter(c["name"] for c in calls if c["name"].startswith("mps_mcp_"))
    server_ok = sum(1 for s in server if s.get("ok"))
    wall_ms = final.get("duration_ms")
    if wall_ms is None and meta.get("startTs") and meta.get("endTs"):
        from datetime import datetime
        f = "%Y-%m-%dT%H:%M:%SZ"
        wall_ms = int((datetime.strptime(meta["endTs"], f) - datetime.strptime(meta["startTs"], f)).total_seconds() * 1000)

    metrics = {
        "run": run_id, "scenario": meta.get("scenario"), "model": meta.get("model"),
        "pass": meta.get("taskPass"), "exit": meta.get("exitCode"),
        "turns": final.get("num_turns"), "wall_s": round((wall_ms or 0) / 1000),
        "input_tokens": usage.get("input_tokens", 0), "output_tokens": usage.get("output_tokens", 0),
        "cache_read": usage.get("cache_read_input_tokens", 0), "cache_write": usage.get("cache_creation_input_tokens", 0),
        "cost_usd": final.get("total_cost_usd"),
        "tool_calls": len(calls), "mps_calls": sum(tool_calls.values()),
        "authored_input_chars": sum(c["input_chars"] for c in calls),
        "mps_authored_chars": sum(c["input_chars"] for c in calls if c["name"].startswith("mps_mcp_")),
        "tool_result_bytes": result_total, "skill_read_bytes": skill_bytes,
        "skill_reads": sum(1 for c in calls if c["skill_read"]),
        "bash_calls": sum(1 for c in calls if c["name"] == "Bash"),
        "bash_temp_result_reads": sum(1 for c in calls if c["bash_kind"] == "temp_result_read"),
        "bash_blueprint_writes": sum(1 for c in calls if c["bash_kind"] == "blueprint_write"),
        "temp_file_envelopes": sum(1 for c in calls if c["name"].startswith("mps_mcp_") and c["result_is_temp_file"]),
        "errors": sum(1 for c in calls if c["error"]), "retries": len(retries),
        "validation_loops": len(loops), "stale_incidents": stale,
        "server_calls": len(server), "server_errors": len(server) - server_ok,
        "server_ms": sum(s.get("ms", 0) or 0 for s in server),
    }
    return metrics, calls, chains, retries, loops, server


def main(argv=None) -> int:
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("runs", help="directory with *-worker.jsonl / *-server.jsonl / *.meta.json")
    ap.add_argument("--out", help="output directory (default <runs>/analysis)")
    ap.add_argument("--top", type=int, default=25)
    ap.add_argument("--min-occurrences", type=int, default=3)
    args = ap.parse_args(argv)
    runs = Path(args.runs)
    if not runs.is_dir():
        print(json.dumps({"ok": False, "error": f"not a directory: {runs}"}))
        return 2
    out = Path(args.out) if args.out else runs / "analysis"
    out.mkdir(parents=True, exist_ok=True)

    run_ids = sorted(p.name[:-len("-worker.jsonl")] for p in runs.glob("*-worker.jsonl"))
    all_metrics, all_chains, tools, errors = [], defaultdict(lambda: {"count": 0, "chars": 0, "examples": []}), defaultdict(Counter), {}
    tool_chars, tool_bytes = defaultdict(int), defaultdict(int)
    for rid in run_ids:
        m, calls, chains, retries, loops, server = analyse_run(rid, runs)
        all_metrics.append(m)
        for gram, e in chains.items():
            a = all_chains[gram]
            a["count"] += e["count"]; a["chars"] += e["chars"]
            a["examples"] = (a["examples"] + e["examples"])[:6]
        for c in calls:
            tools[c["name"]]["calls"] += 1
            tools[c["name"]]["errors"] += int(c["error"])
            tool_chars[c["name"]] += c["input_chars"]; tool_bytes[c["name"]] += c["result_bytes"]
        for s in server:
            tools[s.get("tool") or "?"]["server_calls"] += 1
            tools[s.get("tool") or "?"]["server_errors"] += int(not s.get("ok"))
            tools[s.get("tool") or "?"]["server_ms"] += int(s.get("ms") or 0)
        errors[rid] = {"retries": retries, "validation_loops": loops}

    with (out / "metrics.csv").open("w", newline="") as fh:
        if all_metrics:
            w = csv.DictWriter(fh, fieldnames=list(all_metrics[0].keys()))
            w.writeheader(); w.writerows(all_metrics)
    tools_out = {t: dict(c, avg_input_chars=round(tool_chars[t] / c["calls"]) if c["calls"] else None,
                         avg_result_bytes=round(tool_bytes[t] / c["calls"]) if c["calls"] else None)
                 for t, c in sorted(tools.items(), key=lambda kv: -kv[1]["calls"])}
    (out / "tools.json").write_text(json.dumps(tools_out, indent=1))
    ranked = sorted(({"chain": g, "count": e["count"], "avg_chars": round(e["chars"] / e["count"]),
                      "score_raw": e["chars"], "examples": e["examples"]}
                     for g, e in all_chains.items() if e["count"] >= args.min_occurrences),
                    key=lambda x: -x["score_raw"])
    (out / "chains.json").write_text(json.dumps(ranked, indent=1))
    (out / "errors.json").write_text(json.dumps(errors, indent=1))
    with (out / "hotspots.md").open("w") as fh:
        fh.write(f"# Hotspot candidates (chains with >= {args.min_occurrences} occurrences, ranked by total chars)\n\n")
        fh.write("Assign determinism (1.0 / 0.5 / 0) per chain by inspecting the examples, then\n"
                 "score = count x avg_chars x determinism x (1 + retry_rate).\n\n")
        fh.write("| # | chain | count | avg chars | examples |\n|---|---|---|---|---|\n")
        for i, r in enumerate(ranked[:args.top], 1):
            fh.write(f"| {i} | `{r['chain']}` | {r['count']} | {r['avg_chars']} | {', '.join(r['examples'][:3])} |\n")
    print(json.dumps({"ok": True, "out": str(out), "runs": len(run_ids), "chains": len(ranked),
                      "tool_calls": sum(m['tool_calls'] for m in all_metrics),
                      "errors": sum(m['errors'] for m in all_metrics),
                      "retries": sum(m['retries'] for m in all_metrics)}))
    return 0


if __name__ == "__main__":
    sys.exit(main())
