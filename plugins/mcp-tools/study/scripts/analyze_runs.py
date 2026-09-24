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
# Rejected by the platform BEFORE the call is dispatched, so `ToolCallListener` never fires and the
# call is absent from the server call log. Only project resolution behaves this way.
PRE_DISPATCH_REJECTION_RES = (
    re.compile(r"Unable to determine the target project for the current MCP tool call\."),
)
# A missing required parameter LOOKS pre-dispatch but is not: the platform binds arguments inside
# the dispatch, so the listener fires and the call log carries the entry (as `threw`, with
# "IllegalStateException: No argument is passed for required parameter '<x>'"). Counting these as
# pre-dispatch rejections under-states `expected_server_mps_calls` and fabricates a
# `server_call_surplus` of +1 per occurrence — round 8 hit exactly that on S1:109 and S2:75.
# Since D43 no published parameter is required in the Kotlin signature, so the tool body rejects a
# missing one itself, with an INVALID_REQUEST envelope listing `details.missingParameters`. Both
# shapes are the same failure mode (the parameter-name guessing hotspot), so both count here and
# the column stays comparable across the change.
ARG_VALIDATION_ERROR_RE = re.compile(
    r"MCP tool call has been failed: No argument is passed for required parameter\s+['‘][^'’]+['’]"
    r'|"missingParameters"\s*:'
)
# A rejection whose listing is empty means the Welcome screen: no project is open at all, so no
# projectPath could have helped. Lifecycle scenarios pass through this state deliberately.
WELCOME_REJECTION_RE = re.compile(r'Currently open projects:\s*\{\s*"projects"\s*:\s*\[\s*\]')
MODAL_BLOCKED_RE = re.compile(r"MODAL_BLOCKED")
# Scenarios that drive the project lifecycle themselves: they close and open projects, so their
# server slice spans several project paths and their surplus is not interpretable.
LIFECYCLE_SCENARIO_RE = re.compile(r"^S10\b")


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


def is_pre_dispatch_rejection(error: bool, text: str) -> bool:
    return error and any(pattern.search(text) for pattern in PRE_DISPATCH_REJECTION_RES)


def is_arg_validation_error(error: bool, text: str) -> bool:
    """A required parameter the caller omitted. Dispatched, so it IS in the server call log."""
    return error and bool(ARG_VALIDATION_ERROR_RE.search(text))


def is_child_event(event: dict) -> bool:
    return event.get("parent_tool_use_id") is not None or event.get("parentToolUseId") is not None


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
    server_path = runs / f"{run_id}-server.jsonl"
    server = load_jsonl(server_path)
    # The server slice is cut by time window; drop lines from other projects (e.g. the observer
    # evaluating a previous run while this one was running). A lifecycle run legitimately drives a
    # second project, so `relatedProjects` from the meta counts as this run's traffic too —
    # without it S10's whole server evidence would be filtered away.
    own_projects = {p.rstrip("/") for p in
                    [meta.get("project"), *(meta.get("relatedProjects") or [])] if p}
    if own_projects:
        server = [s for s in server if not s.get("project") or s["project"].rstrip("/") in own_projects]

    server_evidence_available = bool(server)
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
                            "pre_dispatch_rejection": False, "arg_validation_error": False,
                            "welcome_rejection": False, "modal_blocked": False,
                            "parent_event": not is_child_event(ev),
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
                        call["pre_dispatch_rejection"] = is_pre_dispatch_rejection(call["error"], text)
                        call["arg_validation_error"] = is_arg_validation_error(call["error"], text)
                        call["welcome_rejection"] = (call["pre_dispatch_rejection"]
                                                     and bool(WELCOME_REJECTION_RE.search(text)))
                        call["modal_blocked"] = bool(MODAL_BLOCKED_RE.search(text))
                        if call["skill_read"]:
                            skill_bytes += n
        elif t == "result":
            # A run that delegates to a subagent emits one result event per session; keep the
            # main one (most turns) so turns/wall_s are not those of the subagent.
            if final is None or (ev.get("num_turns") or 0) >= (final.get("num_turns") or 0):
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
    mps_calls = sum(tool_calls.values())
    pre_dispatch_rejections = sum(
        1 for c in calls if c["name"].startswith("mps_mcp_") and c["pre_dispatch_rejection"]
    )
    expected_server_mps_calls = mps_calls - pre_dispatch_rejections
    server_mps_calls = sum(1 for s in server if mcp_name(s.get("tool") or "").startswith("mps_mcp_"))
    server_call_surplus = server_mps_calls - expected_server_mps_calls if server_evidence_available else None
    # NOTE: logs from rounds 1-4 carry the old call-log semantics, where `ok` just meant
    # "the tool call didn't throw" and there was no `threw`/`errorCode` field. Later logs'
    # `ok` also reflects the tool's own returned envelope (see McpCallLogListener.kt), so
    # server_ok/server_errors computed here are not directly comparable across that boundary.
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
        "tool_calls": len(calls), "mps_calls": mps_calls,
        "pre_dispatch_rejections": pre_dispatch_rejections,
        "arg_validation_errors": sum(
            1 for c in calls if c["name"].startswith("mps_mcp_") and c["arg_validation_error"]
        ),
        "welcome_rejections": sum(1 for c in calls if c["welcome_rejection"]),
        "close_project_calls": tool_calls.get("mps_mcp_close_project", 0),
        "modal_blocked": sum(1 for c in calls if c["modal_blocked"]),
        "expected_server_mps_calls": expected_server_mps_calls,
        "agent_calls": sum(1 for c in calls if c["name"] == "Agent" and c["parent_event"]),
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
        "server_calls": len(server), "server_mps_calls": server_mps_calls,
        "server_call_surplus": server_call_surplus,
        "server_errors": len(server) - server_ok,
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
            # See the rounds-1-4 `ok`-semantics note in analyse_run() above.
            tools[s.get("tool") or "?"]["server_errors"] += int(not s.get("ok"))
            tools[s.get("tool") or "?"]["server_ms"] += int(s.get("ms") or 0)
        warning = None
        lifecycle = bool(LIFECYCLE_SCENARIO_RE.match(str(m["scenario"] or "")))
        surplus = m["server_call_surplus"]
        if surplus is not None and surplus != 0 and not lifecycle:
            head = (f"{rid}: {m['server_mps_calls']} server MPS calls - "
                    f"({m['mps_calls']} transcript MPS calls - {m['pre_dispatch_rejections']} pre-dispatch rejections) "
                    f"= {surplus} ")
            if surplus > 0:
                warning = (head + "server calls absent from the parent transcript; "
                           f"parent Agent calls={m['agent_calls']}. Delegation is one possible cause; the time-window "
                           "slice can also include observer traffic from the same project.")
            else:
                # Fewer server lines than the transcript accounts for: the slice is incomplete —
                # a project path outside `relatedProjects`, a restarted MPS, or a call log that
                # was off for part of the run. Treat it as an evidence gap, not as a clean run.
                warning = (head + "server calls MISSING from the slice; the server evidence is "
                           "incomplete (unlisted project path, MPS restart mid-run, or the call log "
                           "was off). Check the run's relatedProjects and mpsPid before comparing it.")
            print(f"WARNING: {warning}", file=sys.stderr)
        errors[rid] = {"retries": retries, "validation_loops": loops,
                       "server_call_surplus_warning": warning}

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
        surplus_warnings = [e["server_call_surplus_warning"] for e in errors.values()
                            if e["server_call_surplus_warning"]]
        if surplus_warnings:
            fh.write("## Measurement-integrity warnings\n\n")
            for warning in surplus_warnings:
                fh.write(f"- {warning}\n")
            fh.write("\n")
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
