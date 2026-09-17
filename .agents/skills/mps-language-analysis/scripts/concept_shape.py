#!/usr/bin/env python3
"""Reduce a `mps_mcp_get_concept_details` result file to one line per feature.

  concept_shape.py <conceptDetailsFile> [--concept C] [--all]

prints, per concept, its qualified name and flags plus one line per property, reference and
child role (with type, enum literals, and cardinality) — the shape needed to author a JSON
blueprint, instead of the 10-40 KB details file. The full table is also written to a file
under the system temp directory, whose path is in the trailing JSON summary.

This is the `shape` projection of `mps_dump.py` in the `mps-mcp-workflow` skill, which is
imported from `../../mps-mcp-workflow/scripts` (the installed skills layout). Load that
companion skill from the same origin for the other projections (roots, node, count).

Exit codes: 0 ok, 2 usage, 3 bad input (including a missing `mps-mcp-workflow` install).
"""

from __future__ import annotations

import argparse
import json
import os
import sys

# Plugin build these scripts were last exercised against. The gate is the
# SkillScriptsDriftTest in the mcp-tools plugin, not this constant.
MCP_TOOLS_VERSION_TESTED = "261.25134"

TOOL_DEPENDENCIES = [
    {
        "tool": "mps_mcp_get_concept_details",
        "parameters": ["languageRefs", "conceptRefs"],
    },
]

LIBRARY_DIR = os.path.normpath(
    os.path.join(os.path.dirname(os.path.abspath(__file__)),
                 os.pardir, os.pardir, "mps-mcp-workflow", "scripts")
)


def main(argv=None):
    parser = argparse.ArgumentParser(
        prog="concept_shape.py",
        description=__doc__,
        formatter_class=argparse.RawDescriptionHelpFormatter,
    )
    parser.add_argument("--list-tools", action="store_true",
                        help="print the MPS MCP tools and parameters this script depends on")
    parser.add_argument("file", nargs="?", help="a mps_mcp_get_concept_details result file")
    parser.add_argument("--concept", help="one concept instead of every concept in the file")
    parser.add_argument("--all", action="store_true",
                        help="include the inherited shortDescription/virtualPackage/smodelAttribute features")
    parser.add_argument("--quiet", action="store_true", help="print only the JSON summary")
    parser.add_argument("--max-lines", type=int, default=200,
                        help="stop printing after N lines (the file always has all of them)")
    args = parser.parse_args(argv)

    if args.list_tools:
        print(json.dumps(TOOL_DEPENDENCIES, separators=(",", ":")))
        return 0
    if not args.file:
        parser.print_help()
        return 2

    sys.path.insert(0, LIBRARY_DIR)
    try:
        import mps_dump
    except ImportError:
        print("bad input: mps_dump.py not found in %s — install the mps-mcp-workflow skill "
              "next to this one" % LIBRARY_DIR, file=sys.stderr)
        return 3

    forwarded = ["shape", args.file, "--max-lines", str(args.max_lines)]
    if args.concept:
        forwarded += ["--concept", args.concept]
    if args.all:
        forwarded.append("--all")
    if args.quiet:
        forwarded.append("--quiet")
    return mps_dump.main(forwarded)


if __name__ == "__main__":
    sys.exit(main())
