#!/usr/bin/env python3
"""Refuse a run while another MPS project with modules is open beside the run project.

Why this exists (study defect D130): with another project open, `mps_mcp_search_concepts` and the
"did you mean" suggestions answer from that project's languages too, marked foreign — with the MPS
source checkout open, every MPS language (until 2026-11-16 they were dropped instead). Either way
the worker measures a search that a single-project user never sees. The
runbook has required closing every other project since round 8, but only in prose, and a preflight
assertion with no script does not hold (lesson 32).

The check lists the open projects with `mps_mcp_list_open_projects` (one small call, `projectPath`
= the run project) and decides for every OTHER project from its descriptor on disk: the number of
`<modulePath>` entries in `<base>/.mps/modules.xml`. An MCP module listing would cost a large
payload for the source checkout; the descriptor is a local file of about 100 KB at worst, and it is
the file S10's criteria check on disk too. The project's in-memory state can be ahead of the file
(a module added and not yet saved); an observer does not leave such a project open beside a run.

  - 0 entries (the synthesized harness project): allowed.
  - an IDE project without an MPS project (`hasMpsProject: false`): allowed, it owns no MPS module.
  - 1 or more entries, or no readable descriptor (a missing or unparseable `modules.xml`, a
    file-based `.mpr` project): offending. Unknown fails closed.

The run project itself must be in the listing; when the platform rejects the call because it is
not open, the rejection's own listing is used to say so.

usage:
  check_open_projects.py --project <dir> [--url URL] [--allow]

`--allow` (run_worker.sh: `ALLOW_SIBLING_PROJECTS=1`) reports the offending projects and exits 0,
for a deliberate two-project experiment; the run's meta then records it.

stdout: JSON {ok, project, allowed, others: [{path, modules, verdict}], offending: [path]}, where
`modules` is the entry count (null when unknown) and `verdict` one of empty, notMps, modules,
unknown. A failure also prints one line on stderr naming each offending path and the remedy.
Exit codes: 0 ok (or offending with --allow), 2 usage, 3 offending / run project not open /
MCP error, 4 server unreachable.
Stdlib only (Python >= 3.9).
"""
from __future__ import annotations

import argparse
import json
import os
import re
import sys
import xml.etree.ElementTree as ET
from pathlib import Path
from typing import Callable

sys.path.insert(0, str(Path(__file__).resolve().parent))
from tools_inventory import McpClient, McpError, env_url  # noqa: E402

OFFENDING = ("modules", "unknown")


def norm(path: str) -> str:
    return os.path.realpath(os.path.expanduser(path))


def count_modules(modules_xml: str) -> int | None:
    """Number of `<modulePath>` entries in a `.mps/modules.xml` document, None if unparseable."""
    try:
        root = ET.fromstring(modules_xml)
    except ET.ParseError:
        return None
    return sum(1 for _ in root.iter("modulePath"))


def modules_on_disk(base_dir: str) -> int | None:
    """`count_modules` of `<base_dir>/.mps/modules.xml`, None when the file cannot be read."""
    try:
        text = (Path(base_dir) / ".mps" / "modules.xml").read_text(encoding="utf-8")
    except (OSError, UnicodeError):
        return None
    return count_modules(text)


def parse_listing(text: str) -> tuple[list[dict], bool]:
    """The project records of a `list_open_projects` answer, and whether it was a rejection.

    A success envelope carries `data.projects` (`mpsProjectBaseDirectory`); a pre-dispatch
    rejection is plain text ending in `Currently open projects: {...}` whose records use `path`
    (the shapes mps_control.sh's `open_projects` accepts). Raises ValueError on anything else.
    """
    try:
        env = json.loads(text)
    except ValueError:
        env = None
    if isinstance(env, dict) and isinstance(env.get("data"), dict) and env.get("ok", True):
        return list(env["data"].get("projects") or []), False
    m = re.search(r"Currently open projects:\s*(\{.*\})", text, re.S)
    if m:
        listing = json.loads(m.group(1))
        return list(listing.get("projects") or []), True
    raise ValueError(f"not a list_open_projects answer: {text[:300]}")


def base_dir(record: dict) -> str | None:
    d = record.get("mpsProjectBaseDirectory") or record.get("path") or record.get("ideaBasePath")
    return d if isinstance(d, str) and d else None


def decide(projects: list[dict], run_project: str,
           module_count: Callable[[str], int | None], allow: bool = False) -> dict:
    """Pure decision over the listed project records; `module_count(base_dir)` supplies the
    descriptor's entry count (None = unknown)."""
    want = norm(run_project)
    run_open = False
    others = []
    for record in projects:
        path = base_dir(record)
        if path is None:
            others.append({"path": None, "modules": None, "verdict": "unknown"})
            continue
        if norm(path) == want:
            run_open = True
            continue
        if record.get("hasMpsProject") is False:
            others.append({"path": path, "modules": None, "verdict": "notMps"})
            continue
        n = module_count(path)
        verdict = "unknown" if n is None else ("empty" if n == 0 else "modules")
        others.append({"path": path, "modules": n, "verdict": verdict})
    offending = [o["path"] or "<a project with no base directory>" for o in others if o["verdict"] in OFFENDING]
    ok = run_open and (allow or not offending)
    return {"ok": ok, "project": want, "runProjectOpen": run_open, "allowed": allow,
            "others": others, "offending": offending}


def failure_message(result: dict) -> str:
    if not result["runProjectOpen"]:
        return f"run project is not open in MPS: {result['project']} — open it first (mps-project-management)"
    lines = []
    for o in result["others"]:
        if o["verdict"] in OFFENDING:
            what = f"{o['modules']} modules" if o["modules"] is not None else "no readable .mps/modules.xml"
            lines.append(f"  {o['path']} ({what})")
    return ("another MPS project with modules is open beside the run project (D130: it changes what "
            "search_concepts returns):\n" + "\n".join(lines) +
            "\nClose it with mps_mcp_close_project (force=false) and announce the path, or set "
            "ALLOW_SIBLING_PROJECTS=1 for a deliberate two-project run.")


def main(argv=None) -> int:
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--project", required=True, help="the run project (must be open in MPS)")
    ap.add_argument("--url", help="MCP endpoint (default: $MPS_MCP_URL, else tools_inventory.DEFAULT_URL)")
    ap.add_argument("--allow", action="store_true", help="report offending projects, exit 0")
    args = ap.parse_args(argv)

    client = McpClient(args.url or env_url())
    try:
        client.initialize()
        result = client.call("tools/call", {"name": "mps_mcp_list_open_projects",
                                            "arguments": {"projectPath": norm(args.project)}})
    except ConnectionError as e:
        print(json.dumps({"ok": False, "error": str(e)}))
        print(f"cannot list open projects: {e}", file=sys.stderr)
        return 4
    except McpError as e:
        print(json.dumps({"ok": False, "error": str(e)[:400]}))
        print(f"cannot list open projects: {str(e)[:400]}", file=sys.stderr)
        return 3

    texts = [c.get("text", "") for c in result.get("content", []) if c.get("type") == "text"]
    try:
        projects, _ = parse_listing(texts[0] if texts else "")
    except ValueError as e:
        print(json.dumps({"ok": False, "error": str(e)[:400]}))
        print(f"cannot list open projects: {str(e)[:400]}", file=sys.stderr)
        return 3

    decision = decide(projects, args.project, modules_on_disk, allow=args.allow)
    print(json.dumps(decision))
    if not decision["ok"]:
        print(failure_message(decision), file=sys.stderr)
        return 3
    if decision["offending"]:
        print("ALLOW_SIBLING_PROJECTS: running beside " + ", ".join(decision["offending"]), file=sys.stderr)
    return 0


if __name__ == "__main__":
    sys.exit(main())
