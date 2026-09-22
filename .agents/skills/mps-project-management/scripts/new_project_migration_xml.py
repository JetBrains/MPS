#!/usr/bin/env python3
"""Build the `.mps/migration.xml` of a new, empty MPS project, offline.

  new_project_migration_xml.py <mps-home> [<project-dir>] [--quiet]

<mps-home> is the MPS that will OPEN the project — an install directory, a macOS .app
bundle, or a source checkout. It does not have to be running, and no existing project is
needed. The document goes to stdout; with <project-dir> it is also written to
<project-dir>/.mps/migration.xml. The derivation table goes to stderr (see --quiet).

Both values are read off that MPS: the platform baseline from its `build.txt`, and every
project migration it registers from the sources its migrations module ships (the
`-src.jar` of an install, or `source_gen` in a checkout). A migration counts as already
applied — as it would be on a real File > New Project — when its `baselineVersion` is
`>=` the platform baseline.

This script calls no MPS MCP tools, so `--list-tools` prints an empty list.

Exit codes: 0 ok, 2 usage, 3 bad input (not an MPS home, unreadable migrations).
"""

from __future__ import annotations

import argparse
import json
import re
import sys
import zipfile
from pathlib import Path

# Plugin build these scripts were last exercised against. The gate is the
# SkillScriptsDriftTest in the mcp-tools plugin, not this constant.
MCP_TOOLS_VERSION_TESTED = "261.25134"

TOOL_DEPENDENCIES: list[dict] = []

PACKAGE = re.compile(r"^package\s+([\w.]+)\s*;", re.M)
SUPER = re.compile(r"^\s*super\((.*)\)\s*;\s*$", re.M)
ALWAYS = 2147483647  # Integer.MAX_VALUE: the 1-arg ctor applies to every project

MIGRATIONS = "plugins/mps-project-migrations"
SRC_JAR = MIGRATIONS + "/languages/jetbrains.mps.ide.mpsmigration-src.jar"
SOURCE_GEN = MIGRATIONS + "/solution/source_gen"


class BadInput(Exception):
    """Raised for anything that makes <mps-home> unusable; mapped to exit code 3."""


def mps_root(home: Path) -> Path:
    """The directory holding plugins/ — inside Contents/ for a macOS .app bundle."""
    for candidate in (home, home / "Contents"):
        if (candidate / MIGRATIONS).is_dir():
            return candidate
    raise BadInput(f"no {MIGRATIONS} under {home} — is this an MPS home?")


def baseline_version(root: Path) -> tuple[int, str]:
    """The platform baseline of this MPS, and where it was read from."""
    for candidate in (root / "build.txt", root / "Resources" / "build.txt"):
        if candidate.is_file():
            build = candidate.read_text(encoding="utf-8").strip().splitlines()[0]
            found = re.search(r"\d+", build)  # MPS-253.29346.537 / 261.25134.SNAPSHOT
            if not found:
                raise BadInput(f"no build number in {candidate}: {build!r}")
            return int(found.group()), f"{build} ({candidate})"
    raise BadInput(f"no build.txt under {root}")


def migration_sources(root: Path):
    """(origin, java source) for every class the migrations module ships."""
    jar, gen = root / SRC_JAR, root / SOURCE_GEN
    if jar.is_file():
        with zipfile.ZipFile(jar) as archive:
            for name in sorted(archive.namelist()):
                if name.endswith(".java"):
                    yield name, archive.read(name).decode("utf-8", "replace")
    elif gen.is_dir():
        for path in sorted(gen.rglob("*.java")):
            yield str(path), path.read_text(encoding="utf-8", errors="replace")
    else:
        raise BadInput(f"no migration sources: neither {jar} nor {gen}")


def evaluate_id(expression: str, package: str) -> str | None:
    """The migrationId string the constructor argument evaluates to, or None."""
    parts = []
    for part in expression.split("+"):
        part = part.strip()
        if len(part) > 1 and part.startswith('"') and part.endswith('"'):
            parts.append(part[1:-1])
        elif part.endswith(".class.getName()"):
            parts.append(package + "." + part[: -len(".class.getName()")])
        elif part.endswith(".class.getSimpleName()"):
            parts.append(part[: -len(".class.getSimpleName()")])
        else:
            return None
    return "".join(parts)


def project_migrations(root: Path) -> list[tuple[int, str]]:
    """(baselineVersion, migrationId) of every project migration this MPS registers."""
    found = []
    for origin, source in migration_sources(root):
        if "extends BaseProjectMigration" not in source:
            continue
        package = PACKAGE.search(source)
        call = SUPER.search(source)
        if not package or not call:
            raise BadInput(f"cannot read the BaseProjectMigration constructor of {origin}")
        argument, _, tail = call.group(1).rpartition(",")
        if tail.strip().isdigit():
            version = int(tail.strip())
        else:
            argument, version = call.group(1), ALWAYS
        identifier = evaluate_id(argument, package.group(1))
        if identifier is None:
            raise BadInput(f"cannot evaluate the migrationId of {origin}: super({call.group(1)})")
        found.append((version, identifier))
    if not found:
        raise BadInput(f"no project migrations found under {root}/{MIGRATIONS}")
    return sorted(found)


def render(baseline: int, migrations: list[tuple[int, str]]) -> str:
    entries = [f'    <entry key="{i}" value="executed" />' for v, i in migrations if v >= baseline]
    entries.append(f'    <entry key="project.baseline.version" value="{baseline}" />')
    return "\n".join([
        '<?xml version="1.0" encoding="UTF-8"?>',
        '<project version="4">',
        '  <component name="MigrationProperties">',
        *sorted(entries),
        '  </component>',
        '</project>',
        '',
    ])


def main(argv=None):
    parser = argparse.ArgumentParser(
        prog="new_project_migration_xml.py",
        description=__doc__,
        formatter_class=argparse.RawDescriptionHelpFormatter,
    )
    parser.add_argument("--list-tools", action="store_true",
                        help="print the MPS MCP tools and parameters this script depends on")
    parser.add_argument("mps_home", nargs="?",
                        help="the MPS that will open the project: install dir, macOS .app, or checkout")
    parser.add_argument("project_dir", nargs="?",
                        help="also write <project-dir>/.mps/migration.xml; omit to print only")
    parser.add_argument("--quiet", action="store_true",
                        help="print only the document, without the derivation table on stderr")
    args = parser.parse_args(argv)

    if args.list_tools:
        print(json.dumps(TOOL_DEPENDENCIES, separators=(",", ":")))
        return 0
    if not args.mps_home:
        parser.print_help()
        return 2

    try:
        root = mps_root(Path(args.mps_home).expanduser())
        baseline, origin = baseline_version(root)
        migrations = project_migrations(root)
    except BadInput as bad:
        print(f"bad input: {bad}", file=sys.stderr)
        return 3

    if not args.quiet:
        print(f"baseline {baseline} from {origin}", file=sys.stderr)
        for version, identifier in migrations:
            print(f"  {version:>10} {identifier}"
                  f" {'executed' if version >= baseline else '-'}", file=sys.stderr)

    document = render(baseline, migrations)
    sys.stdout.write(document)

    if args.project_dir:
        target = Path(args.project_dir).expanduser() / ".mps" / "migration.xml"
        target.parent.mkdir(parents=True, exist_ok=True)
        target.write_text(document, encoding="utf-8")
        if not args.quiet:
            print(f"wrote {target}", file=sys.stderr)
    return 0


if __name__ == "__main__":
    sys.exit(main())
