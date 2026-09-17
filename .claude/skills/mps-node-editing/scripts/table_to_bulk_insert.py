#!/usr/bin/env python3
"""Turn a CSV (or JSON rows) plus a small mapping spec into a bulk-insert blueprint.

Writes the top-level JSON array that `mps_mcp_insert_root_node_from_json` accepts — one root
node per row, atomically inserted — to a file under the system temp directory (file input is
required for anything over 4 KB) and prints the path plus the counts:

  table_to_bulk_insert.py examples/courses.csv examples/courses.map.json
  {"children":183,"path":"/var/.../bulk_insert-....json","references":65,"roots":40}

`children` counts the child nodes built from `childLists`, `references` the reference-wrapper
children built from `referenceLists`. Hand the printed path to the tool:

  mps_mcp_insert_root_node_from_json(modelReference="<model>", json="<path>", dryRun=true)

then the same call with dryRun=false to write. Reference targets are emitted as plain names,
which the tool resolves after all roots exist (see the bulk-creation reference), so a row may
point at a row further down the table. An ambiguous name (two roots with the same name) stays
ambiguous — wire those few with an explicit node ref afterwards.

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

Exit codes: 0 ok, 2 usage, 3 bad input (unreadable table/spec, unknown column, bad int or
enum literal, missing required field) — the message names the row and the column.
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
]


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
        blueprint, counts = build(rows, load_spec(args.mapping))
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
