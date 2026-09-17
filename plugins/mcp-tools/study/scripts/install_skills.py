#!/usr/bin/env python3
"""Install the LIVE bundled MPS skill catalog + AGENTS.md/CLAUDE.md into a study project.

Why this exists: a fixture tarball is a point-in-time copy. If it carries `.claude/skills/`,
every run of every later round measures whatever catalog happened to be bundled when the tarball
was made (study lesson 20, defect D16). So fixtures ship WITHOUT the catalog and without the guide
files, and each run installs the catalog that the RUNNING plugin would write right now, through
`mps_mcp_initialize_project_for_agents` itself -- the same tool a real user would run.

The install is a clean reinstall: every `mps-*` skill folder under `<target>/.agents/skills` and
`<target>/.claude/skills` is removed first (so a dropped or renamed skill cannot linger), together
with `AGENTS.md` / `CLAUDE.md` (the tool never overwrites an existing guide file). Non-`mps-*`
skills -- e.g. a project-local `<dsl>-dsl` skill produced by a scenario -- are left alone.

usage:
  install_skills.py --project <dir> [--target <dir>] [--url URL] [--dry-run]
  install_skills.py --sha-only <dir>          # print the catalog sha256 of an installed tree

`--project` is the framework `projectPath`: an MPS project that is OPEN in the running MPS, at or
inside the project's base directory. `--target` is where files are written (default: --project).

Exit codes: 0 ok, 2 usage, 3 MCP error envelope, 4 server unreachable, 5 post-install check failed.
Stdlib only (Python >= 3.9).
"""
from __future__ import annotations

import argparse
import hashlib
import json
import os
import shutil
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
from tools_inventory import DEFAULT_URL, McpClient, McpError  # noqa: E402

TOOL = "mps_mcp_initialize_project_for_agents"
SKILL_DIRS = (Path(".agents") / "skills", Path(".claude") / "skills")
GUIDES = ("AGENTS.md", "CLAUDE.md")


def catalog_sha256(skills_dir: Path) -> str:
    """Fingerprint the `mps-*` skills under one skills directory.

    Covers relative paths as well as contents, so a renamed or dropped file changes the sha.
    Non-`mps-*` folders are excluded on purpose: a scenario may legitimately create its own skill
    (mps-dsl-memory writes `<dsl>-dsl/`), and that must not make the catalog look stale.
    """
    h = hashlib.sha256()
    if not skills_dir.is_dir():
        return "absent"
    files = sorted(
        (p for d in sorted(skills_dir.glob("mps-*")) if d.is_dir() for p in d.rglob("*") if p.is_file()),
        key=lambda p: str(p.relative_to(skills_dir)),
    )
    for p in files:
        h.update(str(p.relative_to(skills_dir)).encode())
        h.update(b"\0")
        h.update(hashlib.sha256(p.read_bytes()).digest())
    return h.hexdigest() if files else "empty"


def purge(target: Path, dry_run: bool = False) -> list[str]:
    """Remove the bundled catalog and both guide files so the tool can write a fresh tree."""
    removed: list[str] = []
    for rel in SKILL_DIRS:
        skills_dir = target / rel
        if not skills_dir.is_dir():
            continue
        for d in sorted(skills_dir.glob("mps-*")):
            if d.is_dir():
                removed.append(str(d.relative_to(target)))
                if not dry_run:
                    shutil.rmtree(d)
    for name in GUIDES:
        f = target / name
        if f.exists():
            removed.append(name)
            if not dry_run:
                f.unlink()
    return removed


def unwrap(result: dict) -> dict:
    """Turn an MCP tools/call result into the tool's `{ok, data}` envelope.

    Handles the temp-file form (`data` is a path) that several mps_mcp_* tools use for large
    payloads -- `agentsFileText` alone is ~9 KB, so this is not hypothetical.
    """
    texts = [c.get("text", "") for c in result.get("content", []) if c.get("type") == "text"]
    if not texts:
        raise McpError(f"no text content in tool result: {json.dumps(result)[:300]}")
    env = json.loads(texts[0])
    data = env.get("data")
    if isinstance(data, str) and os.path.exists(data):
        with open(data) as fh:
            env["data"] = json.load(fh)
    return env


def main(argv=None) -> int:
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--sha-only", metavar="DIR", help="print the catalog sha256 of DIR/.claude/skills and exit")
    ap.add_argument("--project", help="projectPath: an MPS project open in the running MPS")
    ap.add_argument("--target", help="targetDirectory for the install (default: --project)")
    ap.add_argument("--url", default=os.environ.get("MPS_MCP_URL", DEFAULT_URL))
    ap.add_argument("--dry-run", action="store_true", help="report what would be removed; call nothing")
    args = ap.parse_args(argv)

    if args.sha_only:
        print(catalog_sha256(Path(args.sha_only).resolve() / ".claude" / "skills"))
        return 0
    if not args.project:
        ap.error("--project is required (or use --sha-only)")

    project = Path(args.project).resolve()
    target = Path(args.target).resolve() if args.target else project
    if not project.is_dir():
        print(json.dumps({"ok": False, "error": f"no such project dir: {project}"}))
        return 2
    if not target.is_dir():
        print(json.dumps({"ok": False, "error": f"no such target dir: {target}"}))
        return 2

    if args.dry_run:
        print(json.dumps({"ok": True, "dryRun": True, "wouldRemove": purge(target, dry_run=True),
                          "skillsSha256": catalog_sha256(target / ".claude" / "skills")}))
        return 0

    # Handshake BEFORE purging. Purging first and then finding the server down leaves the project
    # with no catalog at all, which is worse than the stale one it had (hit for real, 2026-09-17).
    client = McpClient(args.url)
    try:
        client.initialize()
    except ConnectionError as e:
        print(json.dumps({"ok": False, "error": str(e), "purged": False,
                          "fix": "start MPS, enable the MCP server, or set MPS_MCP_URL"}))
        return 4
    except McpError as e:
        print(json.dumps({"ok": False, "error": str(e), "purged": False}))
        return 3

    # Same reason: confirm the project is actually open before destroying anything. The platform
    # routes every mps_mcp_* call by resolving projectPath to an OPEN project, so a closed project
    # fails the install — and a rejection here names the projects that are open (defect D18).
    try:
        probe = unwrap(client.call("tools/call", {"name": "mps_mcp_list_open_projects",
                                                  "arguments": {"projectPath": str(project)}}))
        if not probe.get("ok", False):
            raise McpError(json.dumps(probe.get("error", probe))[:400])
    except (ConnectionError, McpError, ValueError) as e:
        print(json.dumps({"ok": False, "purged": False, "error": str(e)[:400],
                          "fix": f"open {project} in MPS before installing skills into it"}))
        return 3

    removed = purge(target)
    try:
        result = client.call("tools/call", {
            "name": TOOL,
            "arguments": {"projectPath": str(project), "targetDirectory": str(target)},
        })
    except ConnectionError as e:
        print(json.dumps({"ok": False, "error": str(e), "purged": True, "removed": removed,
                          "fix": "MPS went away mid-install; re-run this script to restore the catalog"}))
        return 4
    except McpError as e:
        print(json.dumps({"ok": False, "error": str(e), "purged": True, "removed": removed}))
        return 3

    try:
        env = unwrap(result)
    except (McpError, ValueError) as e:
        print(json.dumps({"ok": False, "error": f"unparseable tool result: {e}"}))
        return 3
    if not env.get("ok", False):
        print(json.dumps({"ok": False, "error": env.get("error", env)}))
        return 3

    data = env.get("data") or {}
    written = [Path(p).name for p in data.get("guideFilesWritten", [])]
    present = [Path(p).name for p in data.get("guideFilesAlreadyPresent", [])]
    sha = catalog_sha256(target / ".claude" / "skills")
    out = {"ok": True, "target": str(target), "removed": removed,
           "installedSkillCount": data.get("installedSkillCount"),
           "guideFilesWritten": written, "guideFilesAlreadyPresent": present,
           "skillsSha256": sha}

    # The whole point is a *fresh* tree: a guide reported as already present means purge missed it
    # and the worker would read a stale AGENTS.md.
    problems = []
    if sorted(written) != sorted(GUIDES):
        problems.append(f"guideFilesWritten is {written}, expected {sorted(GUIDES)}")
    if present:
        problems.append(f"guide files left untouched (stale): {present}")
    if not data.get("installedSkillCount"):
        problems.append("installedSkillCount is 0 or absent")
    if sha in ("absent", "empty"):
        problems.append(f"no mps-* skills under {target}/.claude/skills after install")
    if problems:
        out["ok"] = False
        out["problems"] = problems
        print(json.dumps(out))
        return 5

    print(json.dumps(out))
    return 0


if __name__ == "__main__":
    sys.exit(main())
