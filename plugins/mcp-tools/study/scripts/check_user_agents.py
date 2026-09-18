#!/usr/bin/env python3
"""Reject user-level Claude agent definitions that can contaminate MPS study runs.

Scans Markdown files below ~/.claude/agents. A definition is MPS-related when its filename
contains "mps" or its body contains "mps_mcp", case-insensitively. Missing and empty catalogs
are clean. An unreadable catalog or definition is not clean because the harness cannot prove
what agents the worker will see.

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


def main() -> int:
    return check_catalog(Path.home() / ".claude" / "agents")


if __name__ == "__main__":
    sys.exit(main())
