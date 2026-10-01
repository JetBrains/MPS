#!/usr/bin/env python3
"""Count the hotspot families of skill-optimization study runs, one TSV row per run.

Inputs: one or more runs/ directories; every <id>-worker.jsonl in them (claude stream-json
transcript) except the SMOKE runs. Only the parent session is read: an event with a non-null
`parent_tool_use_id` (a subagent's) is skipped.

Output (stdout, or --out FILE): a TSV with a header line, then `round` (the directory's name),
`run` (the run id) and one column per counter:
  tool_uses                        tool calls
  A_tempfile_env                   mps_mcp_* results whose `data` is a temp-file path
  C_checks                         check_root_node_problems calls
  C_model_checks                   of them, container-scope checks (model, module, or a bare name)
  C_root_checks                    of them, node-scope checks
  C_root_after_clean_model         node-scope checks after a clean container check, no write between
  C_perRoot                        checks with perRoot true
  D_skill_reads                    Read calls on a file under /skills/
  D_skill_bash_fetch               Bash cat/sed/head/tail/grep/awk on a /skills/ path
  Bp_adhoc_python                  Bash calls running inline python (-c, heredoc, stdin)
  Bp_shipped_script                Bash calls running a skill's scripts/*.py
  B_inserts                        insert_root_node_from_json / update_node / update_root_node_from_json
  B_resp_bytes                     result characters of those calls
  F_gcd_calls                      get_concept_details calls
  F_gcd_refine                     of them, calls within 2 steps of the previous one
  G_errors                         results with is_error or an ok:false envelope
  H_toolsearch                     ToolSearch calls
  X_outside_project                Bash searches of / or of the MPS checkout
  C_root_after_clean_model_batches distinct batches among the C_root_after_clean_model calls
  C_after_summary                  node-scope checks after a container check whose perRoot rows
                                   (or model-/module-level counts) are non-zero, no write between (D83)
  C_after_summary_batches          distinct batches among the C_after_summary calls

Check scope (A9): the result's `details.scope` (`model` / `module`) when present; otherwise the
input (`nodeReference`, or a legacy `reference`): a `modelReference` or a `r:…(…)` model ref is a
model, a ref with `)/` after a `r:…(…)` is a node (both also module-qualified, `<uuid>/r:…`),
`<uuid>(name)` is a module, a bare qualified name is a container (the server decides between model
and module), anything else is a node.

Check verdict, for container checks: `clean` is ok:true with nothing left to read, i.e. `data` is
exactly "no problems found" or perRoot rows all at errors 0 / warnings 0, and no `modelProblems`,
`moduleProblems` or "The module itself has" warning. `problem_summary` is perRoot rows with a
non-zero count, or model-level problems (`modelProblems`, the module-itself warning): counts only,
so a later node check reads the text (D83). `problems` is a problem report (object or problem-node
list) or a clean answer with inline `moduleProblems`. `unknown` is anything else: a temp-file path,
a truncated module sweep (`details.truncated`, with or without perRoot rows), ok:false, unparseable.

State: a container check sets the last verdict. A node check counts as C_root_after_clean_model
after `clean` and as C_after_summary after `problem_summary`; with autoApplyQuickFixes it writes,
so it resets the verdict. Any other mps_mcp_* call except print_node, get_project_structure,
query_nodes and list_open_projects resets it too. Batches: calls grouped by `message.id`, as in
analyze_runs.py (A2); a call without an id is its own batch.

Stdlib only, Python >= 3.9.
"""
from __future__ import annotations

import argparse
import collections
import glob
import json
import os
import re
import sys

KEYS = ["tool_uses", "A_tempfile_env", "C_checks", "C_model_checks", "C_root_checks",
        "C_root_after_clean_model", "C_perRoot", "D_skill_reads", "D_skill_bash_fetch",
        "Bp_adhoc_python", "Bp_shipped_script", "B_inserts", "B_resp_bytes", "F_gcd_calls",
        "F_gcd_refine", "G_errors", "H_toolsearch", "X_outside_project",
        "C_root_after_clean_model_batches", "C_after_summary", "C_after_summary_batches"]
READ_ONLY = ("mps_mcp_print_node", "mps_mcp_get_project_structure", "mps_mcp_query_nodes",
             "mps_mcp_list_open_projects")
CLEAN = "no problems found"
MODULE_ITSELF = "The module itself has"
UUID_MODULE = re.compile(r"^[0-9a-f-]{36}\([^)]+\)$")
MODEL_REF = re.compile(r"^([0-9a-f-]{36}/)?r:[^/]+\)$")
NODE_REF = re.compile(r"r:[^()]*\([^)]*\)/")
BARE_NAME = re.compile(r"^[A-Za-z_][\w.\-]*(@[\w.\-]+)?$")


def load(path):
    """Tool calls (each with `_mid`, its message id) and results by tool_use id, parent session only."""
    uses, results = [], {}
    with open(path) as fh:
        lines = fh.readlines()
    for line in lines:
        try:
            e = json.loads(line)
        except ValueError:
            continue
        if not isinstance(e, dict) or e.get("parent_tool_use_id"):
            continue
        if e.get("type") == "assistant":
            for c in e["message"].get("content", []):
                if c.get("type") == "tool_use":
                    c["_mid"] = e["message"].get("id")
                    uses.append(c)
        elif e.get("type") == "user":
            cont = e.get("message", {}).get("content", [])
            if isinstance(cont, list):
                for c in cont:
                    if c.get("type") == "tool_result":
                        r = c.get("content")
                        if isinstance(r, list):
                            r = "".join(x.get("text", "") for x in r if isinstance(x, dict))
                        results[c["tool_use_id"]] = (r or "", c.get("is_error", False))
    return uses, results


def envelope(result):
    """The parsed `{ok, data, details, …}` envelope, or None."""
    try:
        j = json.loads(result)
    except (TypeError, ValueError):
        return None
    return j if isinstance(j, dict) else None


def check_scope(inp, result):
    """"node", "model", "module" or "container" (a bare name: model or module)."""
    env = envelope(result)
    scope = (env.get("details") or {}).get("scope") if env else None
    if scope in ("model", "module"):
        return scope
    if inp.get("modelReference"):
        return "model"
    ref = inp.get("nodeReference") or inp.get("reference") or ""
    if not isinstance(ref, str):
        return "node"
    if MODEL_REF.match(ref):
        return "model"
    if NODE_REF.search(ref):
        return "node"
    if UUID_MODULE.match(ref):
        return "module"
    if BARE_NAME.match(ref):
        return "container"
    return "node"


def check_verdict(result):
    """"clean", "problem_summary", "problems" or "unknown" for a container-scope check result."""
    env = envelope(result)
    if env is None or env.get("ok") is not True:
        return "unknown"
    data, details = env.get("data"), env.get("details") or {}
    warnings = env.get("warnings") or []
    module_problems = bool(details.get("moduleProblems"))
    level_problems = bool(details.get("modelProblems")) or any(
        isinstance(w, str) and MODULE_ITSELF in w for w in warnings)
    if details.get("truncated"):
        return "unknown"
    per_root = isinstance(data, list) and all(
        isinstance(x, dict) and "errors" in x and "warnings" in x for x in data)
    if per_root:
        if level_problems or any(x["errors"] or x["warnings"] for x in data):
            return "problem_summary"
        return "problems" if module_problems else "clean"
    if data == CLEAN:
        if level_problems:
            return "problem_summary"
        return "problems" if module_problems else "clean"
    if isinstance(data, (list, dict)):
        return "problems"
    return "unknown"


def fam(path):
    uses, res = load(path)
    f = collections.Counter()
    last = None
    after_clean, after_summary = set(), set()
    gcd = []
    for i, u in enumerate(uses):
        n = u["name"].split("__")[-1]
        inp = u.get("input", {})
        r, err = res.get(u["id"], ("", False))
        if n == "ToolSearch":
            f["H_toolsearch"] += 1
        if n.startswith("mps_mcp") and re.match(r'\{"ok":\s*true,\s*"data":\s*"/', r.strip()):
            f["A_tempfile_env"] += 1
        if n == "mps_mcp_check_root_node_problems":
            f["C_checks"] += 1
            if check_scope(inp, r) == "node":
                f["C_root_checks"] += 1
                batch = u.get("_mid") or u["id"]
                if last == "clean":
                    f["C_root_after_clean_model"] += 1
                    after_clean.add(batch)
                elif last == "problem_summary":
                    f["C_after_summary"] += 1
                    after_summary.add(batch)
                if inp.get("autoApplyQuickFixes"):
                    last = None
            else:
                f["C_model_checks"] += 1
                last = check_verdict(r)
            if "perRoot" in inp and inp["perRoot"]:
                f["C_perRoot"] += 1
        elif n.startswith("mps_mcp") and n not in READ_ONLY:
            last = None
        if n in ("Read",) and "/skills/" in inp.get("file_path", ""):
            f["D_skill_reads"] += 1
        if n == "Bash":
            cmd = inp.get("command", "")
            if "/skills/" in cmd and re.search(r'\b(cat|sed|head|tail|grep|awk)\b', cmd) \
                    and ".py" not in cmd.split("|")[0]:
                f["D_skill_bash_fetch"] += 1
            if re.search(r"python3?\s+(-c|-\s*<<|<<)", cmd) or re.search(r"python3?\s+-\s", cmd):
                f["Bp_adhoc_python"] += 1
            if re.search(r"skills/[^ ]+/scripts/[^ ]+\.py", cmd):
                f["Bp_shipped_script"] += 1
            if re.search(r"(find|grep -r|rg)\s+/(\s|Users/vaclav/work)", cmd) or "/work/MPS/myMPS" in cmd:
                f["X_outside_project"] += 1
        if n in ("mps_mcp_insert_root_node_from_json", "mps_mcp_update_node", "mps_mcp_update_root_node_from_json"):
            f["B_inserts"] += 1
            f["B_resp_bytes"] += len(r)
        if n == "mps_mcp_get_concept_details":
            gcd.append(i)
        if err or r.strip().startswith('{"ok":false') or r.strip().startswith('{"ok": false'):
            f["G_errors"] += 1
    # discovery refinement: get_concept_details within 2 steps of the previous one
    f["F_gcd_calls"] = len(gcd)
    f["F_gcd_refine"] = sum(1 for a, b in zip(gcd, gcd[1:]) if b - a <= 2)
    f["tool_uses"] = len(uses)
    f["C_root_after_clean_model_batches"] = len(after_clean)
    f["C_after_summary_batches"] = len(after_summary)
    return f


def rows(dirs):
    """(round, run id, counters) for every non-SMOKE worker transcript, directories in order."""
    out = []
    for p in dirs:
        for w in sorted(glob.glob(glob.escape(p) + "/*-worker.jsonl")):
            rid = os.path.basename(w)[:-len("-worker.jsonl")]
            if rid.startswith("SMOKE"):
                continue
            out.append((os.path.basename(os.path.normpath(p)), rid, fam(w)))
    return out


def tsv(dirs):
    lines = ["round\trun\t" + "\t".join(KEYS)]
    for rd, rid, f in rows(dirs):
        lines.append(rd + "\t" + rid + "\t" + "\t".join(str(f.get(k, 0)) for k in KEYS))
    return "\n".join(lines) + "\n"


def main(argv=None):
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("runs", nargs="+", metavar="RUNS_DIR", help="a runs/ directory")
    ap.add_argument("--out", metavar="FILE", help="write the TSV here (default: stdout)")
    args = ap.parse_args(argv)
    text = tsv(args.runs)
    if args.out:
        with open(args.out, "w") as fh:
            fh.write(text)
    else:
        sys.stdout.write(text)
    return 0


if __name__ == "__main__":
    sys.exit(main())
