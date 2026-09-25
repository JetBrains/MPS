#!/usr/bin/env python3
"""Synthesize an empty MPS project for a study run, offline.

  new_study_project.py --dir <project-dir> [--mps-home <path>] [--force]

Writes the three descriptor files of a directory-based MPS project — `.mps/modules.xml`,
`.mps/.gitignore` and `.mps/migration.xml` — and nothing else. The result replaces the
`empty-project` fixture: a synthesized project cannot carry an agent doc surface
(`.agents/`, `.claude/`, `AGENTS.md`, `CLAUDE.md`), which a tarball of a real project always
risks (study lesson 24/29). The live skill catalog arrives per run from `install_skills.py`.

`migration.xml` is NOT written here. It is release-specific, and the wrong file opens the modal
Migration Assistant on first open, which blocks every `mps_mcp_*` call for the rest of a round.
It is derived by the bundled `mps-project-management` script from the MPS that will open the
project (`--mps-home`, default: this checkout, which is the from-sources MPS home).

Open the result with the CLI activation protocol in `mps-project-management`; there is still no
MCP tool that opens a project.

stdout: one JSON object {ok, path, mpsHome, baseline, migrationEntries, files}. `migrationEntries`
is the parsed key -> value map, not a hash: consumers compare these documents semantically, never
byte-wise (the derivation ends with a newline, a real New Project's file does not).

Exit codes: 0 ok, 2 usage, 3 bad MPS home / migration derivation failed, 4 target not empty.
"""

from __future__ import annotations

import argparse
import json
import subprocess
import sys
import xml.etree.ElementTree as ET
from pathlib import Path

CHECKOUT = Path(__file__).resolve().parents[4]
DERIVE = (CHECKOUT / "plugins/mcp-tools/resources/jetbrains/mps/agents/mcp/skills"
                     "/mps-project-management/scripts/new_project_migration_xml.py")

MODULES_XML = """<?xml version="1.0" encoding="UTF-8"?>
<project version="4">
  <component name="MPSProject">
    <projectModules />
  </component>
</project>
"""

GITIGNORE = """# Default ignored files
/shelf/
/workspace.xml
"""


def parse_migration(path: Path) -> dict:
    """Return the MigrationProperties entries as a key -> value map."""
    root = ET.fromstring(path.read_text(encoding="utf-8"))
    return {e.attrib["key"]: e.attrib.get("value", "")
            for e in root.iter("entry") if "key" in e.attrib}


def main(argv=None) -> int:
    parser = argparse.ArgumentParser(
        prog="new_study_project.py",
        description="Synthesize an empty MPS project (descriptor files only).",
        formatter_class=argparse.RawDescriptionHelpFormatter,
        epilog="Exit codes: 0 ok, 2 usage, 3 bad MPS home, 4 target not empty.",
    )
    parser.add_argument("--dir", required=True, metavar="PROJECT_DIR",
                        help="project directory to create (must be empty or absent)")
    parser.add_argument("--mps-home", metavar="PATH", default=str(CHECKOUT),
                        help="the MPS that will open it: install dir, macOS .app, or source "
                             "checkout (default: this checkout)")
    parser.add_argument("--force", action="store_true",
                        help="write into a non-empty directory instead of refusing")
    args = parser.parse_args(argv)

    project = Path(args.dir).expanduser().resolve()
    mps_home = Path(args.mps_home).expanduser().resolve()

    if project.exists() and not project.is_dir():
        print(f"not a directory: {project}", file=sys.stderr)
        return 2
    if project.is_dir() and any(project.iterdir()) and not args.force:
        print(f"directory is not empty: {project} (pass --force to write anyway)", file=sys.stderr)
        return 4
    if not DERIVE.is_file():
        print(f"missing bundled migration script: {DERIVE}", file=sys.stderr)
        return 3

    (project / ".mps").mkdir(parents=True, exist_ok=True)
    (project / ".mps/modules.xml").write_text(MODULES_XML, encoding="utf-8")
    (project / ".mps/.gitignore").write_text(GITIGNORE, encoding="utf-8")

    derived = subprocess.run([sys.executable, str(DERIVE), str(mps_home), str(project), "--quiet"],
                             capture_output=True, text=True)
    migration = project / ".mps/migration.xml"
    if derived.returncode != 0 or not migration.is_file():
        print(f"migration derivation failed for {mps_home} "
              f"(exit {derived.returncode}): {derived.stderr.strip()}", file=sys.stderr)
        return 3

    entries = parse_migration(migration)
    json.dump({"ok": True, "path": str(project), "mpsHome": str(mps_home),
               "baseline": entries.get("project.baseline.version"),
               "migrationEntries": entries,
               "files": [".mps/modules.xml", ".mps/.gitignore", ".mps/migration.xml"]},
              sys.stdout, indent=1)
    print()
    return 0


if __name__ == "__main__":
    sys.exit(main())
