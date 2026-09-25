#!/usr/bin/env python3
"""Turn a CSV (or JSON rows) plus a small mapping spec into a bulk-insert blueprint.

Writes the top-level JSON array that `mps_mcp_insert_root_node_from_json` accepts — one root
node per row, atomically inserted — to a file under the system temp directory (file input is
required for anything over 4 KB) and prints the path plus the counts:

  table_to_bulk_insert.py examples/courses.csv examples/courses.map.json
  {"children":183,"path":"/var/.../bulk_insert-....json","references":65,"roots":40}

`children` counts the child nodes built from `childLists`, `references` the reference-wrapper
children built from `referenceLists`. Hand the printed path to the tool:

  mps_mcp_insert_root_node_from_json(modelReference="<model>", json="<path>")

Reference targets are emitted as plain names, which the tool resolves after all roots exist
(see the bulk-creation reference), so a row may point at a row further down the table. An
ambiguous name (two roots with the same name) stays ambiguous — wire those few with an
explicit node ref afterwards. Check `fixReferences.stillBroken` in the response (per root
below 10 roots): it counts the references that stayed unresolved, and --verify (below) names
them.

A `dryRun=true` call first is optional. It catches a wrong concept, role or property without
writing, but it cannot resolve a name that only the same batch defines: those roots do not
exist yet, so it warns "did not resolve" once per such reference, and the real insert
resolves them. Ignore the warnings that name a row of the table.

Mapping spec (JSON). Every section except `concept` is optional; an empty cell is skipped, so
the property keeps its MPS default instead of being written as an empty value:

  {
    "concept": "my.lang.structure.Course",       // root concept, fully qualified
    "nameColumn": "name",                        // column holding the INamedConcept name
    "properties": {                              // column -> property
      "credits": {"property": "credits", "type": "int"},
      "level":   {"property": "level", "type": "enum",
                  "values": ["INTRO", "CORE", "ADVANCED"]},
      "note":    "shortDescription"              // shorthand for a string property
    },
    "childLists": {                              // column -> child nodes in one role
      "lessons": {
        "concept": "my.lang.structure.Lesson",
        "role": "lessons",
        "splitter": "|",                         // between children
        "fieldSplitter": ":",                    // between a child's own columns
        "fields": [{"property": "title"}, {"property": "minutes", "type": "int"}]
      }
    },
    "referenceLists": {                          // column -> wrapper children holding a ref
      "prerequisites": {
        "concept": "my.lang.structure.CourseRef",
        "role": "prerequisites",
        "referenceRole": "course",
        "targetConcept": "my.lang.structure.Course",
        "splitter": "|"
      }
    }
  }

`targetConcept` is documentation for the reader; targets are written as names unless
`"targetByName": false`, in which case the cell must already hold `r:...` node references.

Verify mode checks an inserted model against the same table and spec, instead of a
hand-written comparison script. Dump the model once, one level below the roots:

  mps_mcp_get_project_structure(startingPoint="<model>", includeNodes=true, nodeDepth=1)

and pass the result file (the tool's temp-file path, or a saved envelope) with --verify:

  table_to_bulk_insert.py courses.csv courses.map.json --verify <dumpFile>
  row 7 (Conducting): lessons[2].minutes: expected '10', got '12'
  {"differences":1,"extraRoots":0,"matched":39,"mismatched":1,"missing":0,"rows":40}

Each row is paired with the root of the spec's concept that has the row's name (so the spec
needs `nameColumn`); rows sharing a name pair with same-named roots in dump order. For every
property, child and reference the spec produces, the dump must hold the same value. Integer
fields also match an absent value when the cell is 0, and a reference matches when it
resolves to a node of the expected name (or, with `targetByName: false`, the expected `r:`
ref). What the spec does not produce is not checked: other properties, other child roles,
and children a node factory added. `extraRoots` counts roots of the spec's concept that no
row claims. At most --max-lines differences are printed; when there are more, the full list
is written to a file under the system temp directory, named by `file` in the summary. This
mode reads the dump with `mps_dump.py` from `../../mps-mcp-workflow/scripts` (the installed
skills layout).

Exit codes: 0 ok (with --verify: every row matched), 1 --verify found a difference, 2 usage,
3 bad input (unreadable table/spec/dump, unknown column, bad int or enum literal, missing
required field, a dump too shallow for the spec) — the message names the row and the column.
"""

from __future__ import annotations

import argparse
import csv
import json
import os
import sys
import tempfile

# Plugin build these scripts were last exercised against. The gate is the
# SkillScriptsDriftTest in the mcp-tools plugin, not this constant.
MCP_TOOLS_VERSION_TESTED = "261.25134"

TOOL_DEPENDENCIES = [
    {
        "tool": "mps_mcp_insert_root_node_from_json",
        "parameters": ["modelReference", "json", "dryRun"],
    },
    {
        "tool": "mps_mcp_get_project_structure",
        "parameters": ["startingPoint", "includeNodes", "nodeDepth"],
    },
]

LIBRARY_DIR = os.path.normpath(
    os.path.join(os.path.dirname(os.path.abspath(__file__)),
                 os.pardir, os.pardir, "mps-mcp-workflow", "scripts")
)


class BadInput(Exception):
    """The table or the mapping spec cannot be turned into a blueprint."""


def read_rows(path, fmt=None):
    """Rows of the table as dicts, from CSV (default) or a JSON array of objects."""
    fmt = fmt or ("json" if path.lower().endswith(".json") else "csv")
    try:
        with open(path, newline="", encoding="utf-8") as handle:
            if fmt == "json":
                payload = json.load(handle)
                if not isinstance(payload, list) or not all(isinstance(r, dict) for r in payload):
                    raise BadInput("%s must hold a JSON array of row objects" % path)
                return payload
            return list(csv.DictReader(handle))
    except OSError as e:
        raise BadInput("cannot read %s: %s" % (path, e))
    except ValueError as e:
        raise BadInput("%s is not valid JSON: %s" % (path, e))


def load_spec(path):
    try:
        with open(path, encoding="utf-8") as handle:
            spec = json.load(handle)
    except OSError as e:
        raise BadInput("cannot read mapping spec %s: %s" % (path, e))
    except ValueError as e:
        raise BadInput("mapping spec %s is not valid JSON: %s" % (path, e))
    if not isinstance(spec, dict) or not spec.get("concept"):
        raise BadInput("mapping spec %s must be an object with a 'concept' field" % path)
    return spec


def _cell(row, column, where):
    if column not in row:
        raise BadInput("%s: no column '%s' in the table (columns: %s)"
                       % (where, column, ", ".join(sorted(row)) or "none"))
    value = row[column]
    return "" if value is None else str(value).strip()


def _property_entry(name, value, spec, where):
    kind = spec.get("type", "string") if isinstance(spec, dict) else "string"
    if kind == "int":
        try:
            value = str(int(value))
        except ValueError:
            raise BadInput("%s: '%s' is not an integer for property '%s'" % (where, value, name))
    elif kind == "enum":
        literals = spec.get("values") or []
        if literals and value not in literals:
            if value.upper() in literals:
                value = value.upper()
            else:
                raise BadInput("%s: '%s' is not a literal of enum property '%s' (%s)"
                               % (where, value, name, "|".join(literals)))
    return {"name": name, "value": value}


def _properties(row, spec, where):
    entries = []
    name_column = spec.get("nameColumn")
    if name_column:
        name = _cell(row, name_column, where)
        if not name:
            raise BadInput("%s: column '%s' is the name column and must not be empty"
                           % (where, name_column))
        entries.append({"name": "name", "value": name})
    for column, mapping in (spec.get("properties") or {}).items():
        value = _cell(row, column, where)
        if not value:
            continue
        property_name = mapping if isinstance(mapping, str) else mapping.get("property", column)
        entries.append(_property_entry(property_name, value, mapping, where))
    return entries


def _child_lists(row, spec, where):
    roles = []
    children = 0
    for column, mapping in (spec.get("childLists") or {}).items():
        cell = _cell(row, column, where)
        if not cell:
            continue
        splitter = mapping.get("splitter", "|")
        field_splitter = mapping.get("fieldSplitter")
        fields = mapping.get("fields") or []
        nodes = []
        for item in cell.split(splitter):
            item = item.strip()
            if not item:
                continue
            values = item.split(field_splitter) if field_splitter else [item]
            if len(values) != len(fields):
                raise BadInput(
                    "%s: '%s' in column '%s' splits into %d field(s) on '%s' but the spec "
                    "declares %d" % (where, item, column, len(values), field_splitter, len(fields))
                )
            properties = []
            for field, value in zip(fields, values):
                value = value.strip()
                if not value:
                    continue
                properties.append(_property_entry(field["property"], value, field, where))
            nodes.append({"concept": mapping["concept"], "properties": properties})
        if nodes:
            children += len(nodes)
            roles.append({"role": mapping["role"], "nodes": nodes})
    return roles, children


def _reference_lists(row, spec, where):
    roles = []
    references = 0
    for column, mapping in (spec.get("referenceLists") or {}).items():
        cell = _cell(row, column, where)
        if not cell:
            continue
        nodes = []
        for target in cell.split(mapping.get("splitter", "|")):
            target = target.strip()
            if not target:
                continue
            if not mapping.get("targetByName", True) and not target.startswith("r:"):
                raise BadInput("%s: '%s' in column '%s' is not a node reference and "
                               "targetByName is false" % (where, target, column))
            nodes.append({
                "concept": mapping["concept"],
                "references": [{"role": mapping["referenceRole"], "target": target}],
            })
        if nodes:
            references += len(nodes)
            roles.append({"role": mapping["role"], "nodes": nodes})
    return roles, references


def build(rows, spec):
    """The top-level blueprint array plus the `{roots, children, references}` counts."""
    blueprint = []
    children_total = 0
    references_total = 0
    for index, row in enumerate(rows, start=1):
        where = "row %d" % index
        node = {"concept": spec["concept"]}
        properties = _properties(row, spec, where)
        if properties:
            node["properties"] = properties
        child_roles, children = _child_lists(row, spec, where)
        reference_roles, references = _reference_lists(row, spec, where)
        if child_roles or reference_roles:
            node["children"] = child_roles + reference_roles
        children_total += children
        references_total += references
        blueprint.append(node)
    return blueprint, {"roots": len(blueprint), "children": children_total,
                       "references": references_total}


# ── verify mode ───────────────────────────────────────────────────────────────────────

def _short(concept):
    return (concept or "").rsplit(".", 1)[-1]


def _field_types(spec):
    """`{(short concept, property): type}` for the typed properties the spec writes."""
    types = {}
    root = _short(spec["concept"])
    for column, mapping in (spec.get("properties") or {}).items():
        if isinstance(mapping, dict):
            types[(root, mapping.get("property", column))] = mapping.get("type", "string")
    for mapping in (spec.get("childLists") or {}).values():
        for field in mapping.get("fields") or []:
            types[(_short(mapping["concept"]), field["property"])] = field.get("type", "string")
    return types


def _dump_value(node, name, kind):
    for entry in node.get("properties") or []:
        if entry.get("name") == name:
            value = "" if entry.get("value") is None else str(entry["value"])
            # Older dumps printed a set enum member as `<enumerationId>/LITERAL`.
            return value.rsplit("/", 1)[-1] if kind == "enum" else value
    return None


def _at(path, feature, separator="."):
    return path + separator + feature if path else feature


def _compare(expected, actual, path, types, differences):
    """Appends to `differences` every value of `expected` (a blueprint node) that `actual` lacks.

    `path` locates `actual` below the row's root (empty for the root itself).
    """
    concept = _short(expected["concept"])
    if _short(actual.get("concept")) != concept:
        differences.append("%s: expected a %s, got a %s" % (path, concept, _short(actual.get("concept"))))
        return
    for entry in expected.get("properties") or []:
        name, want = entry["name"], entry["value"]
        kind = types.get((concept, name), "string")
        got = _dump_value(actual, name, kind)
        if got is None and name == "name":
            got = actual.get("name")
        if got == want or (got is None and kind == "int" and int(want) == 0):
            continue
        differences.append("%s: expected %r, got %s"
                           % (_at(path, name), want, "no value" if got is None else repr(got)))
    for entry in expected.get("references") or []:
        role, want = entry["role"], entry["target"]
        found = [r for r in actual.get("references") or [] if r.get("role") == role]
        if not found:
            differences.append("%s: expected a reference to %r, got none" % (_at(path, role, "/"), want))
            continue
        target, target_ref = found[0].get("target"), found[0].get("targetReference")
        if target is None:
            differences.append("%s: expected %r, got an unresolved reference (%s)"
                               % (_at(path, role, "/"), want, target_ref))
        elif want != (target_ref if want.startswith("r:") else target):
            differences.append("%s: expected %r, got %r" % (_at(path, role, "/"), want, target))
    for entry in expected.get("children") or []:
        role, wanted = entry["role"], entry["nodes"]
        found = [c for c in actual.get("children") or [] if c.get("role") == role]
        if found and (found[0].get("childrenTruncated") or "nodes" not in found[0]):
            raise BadInput("role '%s' is not inlined in the dump; dump the model again with "
                           "includeNodes=true and a nodeDepth of at least %d"
                           % (_at(path, role), path.count("[") + 1))
        nodes = found[0]["nodes"] if found else []
        if len(nodes) != len(wanted):
            differences.append("%s: expected %d child(ren), got %d"
                               % (_at(path, role), len(wanted), len(nodes)))
        for index, (want, got) in enumerate(zip(wanted, nodes)):
            _compare(want, got, "%s[%d]" % (_at(path, role), index), types, differences)


def verify(rows, spec, dump_path):
    """`(summary, differences)` of the model dump at `dump_path` against the table rows."""
    name_column = spec.get("nameColumn")
    if not name_column:
        raise BadInput("--verify pairs rows with roots by name, so the mapping spec needs "
                       "a 'nameColumn'")
    sys.path.insert(0, LIBRARY_DIR)
    try:
        import mps_dump
    except ImportError:
        raise BadInput("--verify needs mps_dump.py, which is not in %s — install the "
                       "mps-mcp-workflow skill next to this one" % LIBRARY_DIR)
    try:
        dump = mps_dump.load(dump_path)
    except mps_dump.BadInput as e:
        raise BadInput(str(e))
    if mps_dump.dump_kind(dump) == "concept-details":
        raise BadInput("%s is a get_concept_details dump; --verify reads a "
                       "get_project_structure dump of the model" % dump_path)
    dump_roots = mps_dump.roots(dump)

    concept = _short(spec["concept"])
    by_name = {}
    candidates = [r for r in dump_roots if _short(r.get("concept")) == concept]
    for root in candidates:
        by_name.setdefault(root.get("name"), []).append(root)

    expected, _ = build(rows, spec)
    types = _field_types(spec)
    differences = []
    matched = mismatched = missing = 0
    for index, (row, node) in enumerate(zip(rows, expected), start=1):
        name = _cell(row, name_column, "row %d" % index)
        where = "row %d (%s)" % (index, name)
        same_name = by_name.get(name) or []
        if not same_name:
            missing += 1
            differences.append("%s: no %s root with that name in the dump" % (where, concept))
            continue
        found = []
        try:
            _compare(node, same_name.pop(0), "", types, found)
        except BadInput as e:
            raise BadInput("%s: %s" % (where, e))
        differences.extend("%s: %s" % (where, line) for line in found)
        if found:
            mismatched += 1
        else:
            matched += 1
    summary = {
        "rows": len(rows),
        "matched": matched,
        "mismatched": mismatched,
        "missing": missing,
        "differences": len(differences),
        "extraRoots": sum(len(left) for left in by_name.values()),
    }
    return summary, differences


def _print_verification(summary, differences, max_lines):
    for line in differences[:max_lines]:
        print(line)
    if len(differences) > max_lines:
        fd, path = tempfile.mkstemp(prefix="bulk_verify-", suffix=".txt")
        with os.fdopen(fd, "w", encoding="utf-8") as handle:
            handle.write("\n".join(differences) + "\n")
        summary["file"] = path
    print(json.dumps(summary, separators=(",", ":"), sort_keys=True))
    return 1 if differences else 0


def main(argv=None):
    parser = argparse.ArgumentParser(
        prog="table_to_bulk_insert.py",
        description=__doc__,
        formatter_class=argparse.RawDescriptionHelpFormatter,
    )
    parser.add_argument("--list-tools", action="store_true",
                        help="print the MPS MCP tools and parameters this script depends on")
    parser.add_argument("table", nargs="?", help="CSV file, or JSON array of row objects")
    parser.add_argument("mapping", nargs="?", help="mapping spec (JSON), see --help")
    parser.add_argument("--format", choices=("csv", "json"),
                        help="table format; default is by file extension")
    parser.add_argument("--limit", type=int, help="convert only the first N rows")
    parser.add_argument("--out", help="output file, which must stay inside the system temp "
                                      "directory for the tool to accept it; default is a "
                                      "fresh file there")
    parser.add_argument("--verify", metavar="DUMP",
                        help="instead of writing a blueprint, check a model dump "
                             "(get_project_structure, includeNodes=true, nodeDepth=1) "
                             "against the table")
    parser.add_argument("--max-lines", type=int, default=20,
                        help="with --verify, print at most N differences (default 20)")
    args = parser.parse_args(argv)

    if args.list_tools:
        print(json.dumps(TOOL_DEPENDENCIES, separators=(",", ":")))
        return 0
    if not args.table or not args.mapping:
        parser.print_help()
        return 2

    try:
        rows = read_rows(args.table, args.format)
        if args.limit is not None:
            rows = rows[:args.limit]
        if not rows:
            raise BadInput("%s has no data rows" % args.table)
        spec = load_spec(args.mapping)
        if args.verify:
            return _print_verification(*verify(rows, spec, args.verify), max_lines=args.max_lines)
        blueprint, counts = build(rows, spec)
    except BadInput as e:
        print("bad input: %s" % e, file=sys.stderr)
        return 3

    out_path = args.out or os.path.join(
        tempfile.gettempdir(), "bulk_insert-%s-%d.json" % (
            os.path.splitext(os.path.basename(args.table))[0], os.getpid())
    )
    with open(out_path, "w", encoding="utf-8") as handle:
        json.dump(blueprint, handle, indent=2)
        handle.write("\n")

    counts["path"] = out_path
    print(json.dumps(counts, separators=(",", ":"), sort_keys=True))
    return 0


if __name__ == "__main__":
    sys.exit(main())
