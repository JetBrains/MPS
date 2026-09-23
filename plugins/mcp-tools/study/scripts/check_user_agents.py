#!/usr/bin/env python3
"""Reject user-level agent definitions and skills that can contaminate MPS study runs.

Agents: scans Markdown files below ~/.claude/agents and ~/.junie/agents. A definition is
MPS-related when its filename contains "mps" or its body contains "mps_mcp", case-insensitively.

Skills: scans the top level of ~/.claude/skills and ~/.junie/skills for `mps-*` folders. A
user-level MPS skill sits in front of the per-project catalog the round installs, so the worker
may read guidance that is not the thing under measurement — and `install_skills.py` cannot purge
it, because it only owns the project tree. Round 8 started with `mps-api-research` in both
catalogs; the preflight assertion that would have caught it was prose only, so this check exists
to make it mechanical.

Missing and empty catalogs are clean. A contaminated or unreadable catalog is not, because the
harness cannot then prove what the worker will see. Nothing is ever modified (study lesson 26):
move the offending folder out of the skills directory yourself and restore it at wrap-up.

Exit codes: 0 clean, 3 contaminated or unreadable.
Stdlib only (Python >= 3.9).
"""
from __future__ import annotations

import os
import sys
from pathlib import Path


def fail(message: str) -> int:
    print(message, file=sys.stderr)
    return 3


def check_catalog(catalog: Path) -> int:
    if not catalog.exists():
        return 0
    if not catalog.is_dir():
        return fail(f"cannot inspect user agent catalog {catalog}: not a directory")

    walk_errors: list[OSError] = []

    def record_walk_error(error: OSError) -> None:
        walk_errors.append(error)

    definitions: list[Path] = []
    try:
        for directory, _, filenames in os.walk(catalog, onerror=record_walk_error, followlinks=False):
            definitions.extend(
                Path(directory) / filename
                for filename in filenames
                if Path(filename).suffix.lower() == ".md"
            )
    except OSError as error:
        return fail(f"cannot inspect user agent catalog {catalog}: {error}")

    if walk_errors:
        error = walk_errors[0]
        return fail(f"cannot inspect user agent catalog {catalog}: {error}")

    for definition in sorted(definitions):
        try:
            body = definition.read_text(encoding="utf-8")
        except (OSError, UnicodeError) as error:
            return fail(f"cannot read user agent definition {definition}: {error}")
        if "mps" in definition.name.lower():
            return fail(f"MPS-related user agent definition {definition}: filename matches *mps*")
        if "mps_mcp" in body.lower():
            return fail(f"MPS-related user agent definition {definition}: body matches mps_mcp")
    return 0


def check_skill_catalog(catalog: Path) -> int:
    """Top level only: a skill is a folder, and `mps-*` is the namespace the round installs."""
    if not catalog.exists():
        return 0
    if not catalog.is_dir():
        return fail(f"cannot inspect user skill catalog {catalog}: not a directory")
    try:
        entries = sorted(catalog.iterdir())
    except OSError as error:
        return fail(f"cannot inspect user skill catalog {catalog}: {error}")

    for entry in entries:
        if entry.is_dir() and entry.name.lower().startswith("mps-"):
            return fail(
                f"MPS-related user skill {entry}: it shadows the per-project catalog the round "
                f"installs. Move it out of {catalog} for the round and restore it at wrap-up."
            )
    return 0


def main() -> int:
    for catalog in (
        Path.home() / ".claude" / "agents",
        Path.home() / ".junie" / "agents",
    ):
        code = check_catalog(catalog)
        if code != 0:
            return code
    for catalog in (
        Path.home() / ".claude" / "skills",
        Path.home() / ".junie" / "skills",
    ):
        code = check_skill_catalog(catalog)
        if code != 0:
            return code
    return 0


if __name__ == "__main__":
    sys.exit(main())
