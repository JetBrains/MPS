#!/usr/bin/env python3
"""Refuse a scratch project path that an earlier run already used.

The IDE keeps a persisted file cache keyed by absolute path, and it survives an MPS restart. When
a scratch directory is archived and a new fixture is extracted at the same path, MPS can serve the
old project's model content right after the open, until a file-system refresh catches up. On
2026-10-30 a re-created `workspace/S3-sonnet-1` listed the 7 roots of the fixture the path had
held earlier that day, while the file on disk had 3; about a second later it listed 3. A worker
launched in that window reads, and can overwrite, the wrong model.

The check reads every `*.meta.json` directly in RUNS and anywhere below ARCHIVE, and reports the
run ids whose `project` or `relatedProjects` names the same path (compared after
`os.path.realpath`). A meta that cannot be parsed is skipped with a stderr line: it cannot name
a path, and refusing the run over it would block every later round.

Usage: project_reuse.py <project-dir> <runs-dir> [<archive-runs-dir>]
stdout: JSON {ok, project, reusedBy: [{id, meta}]}.
Exit codes: 0 path not used before, 4 used before, 2 usage.
Stdlib only (Python >= 3.9).
"""
from __future__ import annotations

import json
import os
import sys
from pathlib import Path


def norm(path: str) -> str:
    return os.path.realpath(os.path.expanduser(path))


def meta_files(runs: Path, archive: Path | None):
    if runs.is_dir():
        yield from sorted(runs.glob("*.meta.json"))
    if archive is not None and archive.is_dir():
        yield from sorted(archive.rglob("*.meta.json"))


def find_reuse(project: str, runs: Path, archive: Path | None) -> list[dict]:
    want = norm(project)
    hits = []
    for meta in meta_files(runs, archive):
        try:
            data = json.loads(meta.read_text(encoding="utf-8"))
        except (OSError, ValueError) as e:
            print(f"skipping unreadable meta {meta}: {e}", file=sys.stderr)
            continue
        if not isinstance(data, dict):
            continue
        paths = [data.get("project")] + list(data.get("relatedProjects") or [])
        if any(isinstance(p, str) and p and norm(p) == want for p in paths):
            hits.append({"id": data.get("id") or meta.name[: -len(".meta.json")], "meta": str(meta)})
    return hits


def main(argv: list[str]) -> int:
    if len(argv) not in (3, 4) or argv[1] in ("-h", "--help"):
        print(__doc__, file=sys.stderr)
        return 2
    archive = Path(argv[3]) if len(argv) == 4 else None
    hits = find_reuse(argv[1], Path(argv[2]), archive)
    print(json.dumps({"ok": not hits, "project": norm(argv[1]), "reusedBy": hits}))
    return 4 if hits else 0


if __name__ == "__main__":
    sys.exit(main(sys.argv))
