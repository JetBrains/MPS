#!/usr/bin/env python3
"""Project an MPS MCP result file down to the few lines needed for the next decision.

Library + CLI over the JSON envelopes written by the read-only analysis tools:

  mps_mcp_get_project_structure   project / module / model dumps, any nodeDetail / nodeDepth
  mps_mcp_print_node              deep=true (descendants inlined) and deep=false (child refs)
  mps_mcp_get_concept_details     concept / language details, used for the concept shape

Those tools answer with `{"ok":true,"data":"<path>"}`; pass that path to this script instead
of reading the 10-40 KB file into the conversation.

Library (import from a sibling script, see concept_shape.py):

  load(path)                           the dump, envelope unwrapped, `data`-as-path followed
  roots(dump)                          root nodes of a node / model / module / project dump
  props(node, concept_details=None)    {property: value}, enum defaults filled in
  refs(node)                           [(role, targetReference, targetName)]
  children(node, role=None)            child nodes of one or of every containment role
  find(dump, concept=None, name=None)  matching nodes at any depth
  shape(concept_details, concept=None) one entry per property / reference / child role
  dump_kind(dump)                      concept-details, node, model, module, project, empty, unknown

CLI:

  mps_dump.py roots <file> [--concept C]            name, concept, reference per root
  mps_dump.py node  <file> <nameOrRef>              properties, references, children
  mps_dump.py shape <conceptDetailsFile> [--concept C]
  mps_dump.py count <file>                          roots per concept
  mps_dump.py --list-tools                          MPS MCP tools/parameters relied upon

stdout carries the table (capped by --max-lines) followed by a one-line JSON summary; the
full table is always written to a file under the system temp directory, whose path is in
that summary. Exit codes: 0 ok, 2 usage, 3 bad input. A dump of the wrong kind for the
subcommand (`shape` on a node or model dump, `roots` / `node` / `count` on a concept-details
dump) is bad input, and the message names the subcommand that reads it; a dump of the right
kind with nothing matching still exits 0 with a zero count.

Enum properties: `mps_mcp_print_node` emits the declared literal name. Older dumps printed a
set member as `<enumRef>/LITERAL`; this script still reduces that form to `LITERAL`. A
property left at its enumeration's default stores nothing; `mps_mcp_print_node` reports it
with the default literal as its value plus `"isDefault": true`, and this script marks it as
a default rather than as a set value. For an older dump that omits the property entirely, a
concept-details file fills it from `enumerationDefault` (the declared default member) or,
when the declaration names none, from the first literal; without that file the property can
only be marked `<default>`.
"""

from __future__ import annotations

import argparse
import json
import os
import sys
import tempfile

# Plugin build these scripts were last exercised against. The gate is the
# SkillScriptsDriftTest in the mcp-tools plugin, not this constant.
MCP_TOOLS_VERSION_TESTED = "261.25134"

DEFAULT_MARKER = "<default>"

# Universal features every concept inherits from BaseConcept / INamedConcept / attributes.
# Hidden by `shape` unless --all is given: they are noise in a concept shape, except `name`.
NOISE_FEATURES = ("shortDescription", "virtualPackage", "smodelAttribute")

TOOL_DEPENDENCIES = [
    {
        "tool": "mps_mcp_get_project_structure",
        "parameters": ["startingPoint", "includeModels", "includeRootNodes", "includeNodes", "nodeDetail", "nodeDepth"],
    },
    {
        "tool": "mps_mcp_print_node",
        "parameters": ["nodeReference", "deep"],
    },
    {
        "tool": "mps_mcp_get_concept_details",
        "parameters": ["languageRefs", "conceptRefs"],
    },
]


class BadInput(Exception):
    """The input file is missing, unparsable, or not one of the supported dumps."""


# ── loading ───────────────────────────────────────────────────────────────────────────

def load(path):
    """Returns the payload of an MPS MCP result file.

    Accepts the full envelope (`{"ok":true,"data":...}`) or a bare payload. When `data` is a
    string that names an existing file (an agent that saved the tool response rather than the
    result), that file is loaded instead.
    """
    try:
        with open(path, encoding="utf-8") as handle:
            content = json.load(handle)
    except OSError as e:
        raise BadInput("cannot read %s: %s" % (path, e))
    except ValueError as e:
        raise BadInput("%s is not JSON: %s" % (path, e))
    return _unwrap(content, path)


def _unwrap(content, path):
    if not isinstance(content, dict) or "ok" not in content:
        return content
    if not content.get("ok"):
        raise BadInput("%s holds an error envelope: %s" % (path, content.get("error")))
    data = content.get("data")
    if isinstance(data, str):
        if os.path.isfile(data):
            return load(data)
        raise BadInput(
            "%s holds a tool response whose data is '%s', not a result file. Pass the "
            "path the tool returned." % (path, data)
        )
    return data


def roots(dump):
    """Root nodes of a project, module, model, or single-node dump, in dump order."""
    if isinstance(dump, list):
        return [n for n in dump if _is_node(n)]
    if not isinstance(dump, dict):
        return []
    if "rootNodes" in dump:
        return list(dump["rootNodes"])
    if "models" in dump:
        return [r for m in dump["models"] for r in m.get("rootNodes") or []]
    if "modules" in dump:
        return [
            r
            for mod in dump["modules"]
            for m in mod.get("models") or []
            for r in m.get("rootNodes") or []
        ]
    if _is_node(dump):
        return [dump]
    return []


def _is_node(value):
    return isinstance(value, dict) and "concept" in value


def dump_kind(dump):
    """What `dump` holds: concept-details, node, model, module, project, empty, or unknown."""
    if concept_entries(dump):
        return "concept-details"
    if isinstance(dump, list):
        if not dump:
            return "empty"
        return "node" if any(_is_node(n) for n in dump) else "unknown"
    if isinstance(dump, dict):
        if "rootNodes" in dump or "rootNodesCount" in dump:
            return "model"
        if "models" in dump or "modelsCount" in dump:
            return "module"
        if "modules" in dump:
            return "project"
        if _is_node(dump):
            return "node"
    return "unknown"


_KIND_LABELS = {
    "concept-details": ("a get_concept_details concept dump", "shape"),
    "node": ("a print_node / get_project_structure node dump", "node"),
    "model": ("a get_project_structure model dump", "roots"),
    "module": ("a get_project_structure module dump", "roots"),
    "project": ("a get_project_structure project dump", "roots"),
}


def _require_kind(dump, wanted, command):
    """Raises BadInput when `dump` is a recognised dump of a kind `command` does not read.

    An empty or unrecognised payload passes, so a right-kind dump with nothing in it still
    yields an ordinary zero count.
    """
    kind = dump_kind(dump)
    if kind in wanted or kind not in _KIND_LABELS:
        return
    label, use = _KIND_LABELS[kind]
    what = "concept entries" if command == "shape" else "nodes"
    raise BadInput("no %s for `%s`: this looks like %s; use `%s` instead" % (what, command, label, use))


# ── node projections ──────────────────────────────────────────────────────────────────

def props(node, concept_details=None):
    """Property values of `node` as a dict, with default-valued properties filled in.

    Enum values are the declared literal name; an older dump's `<enumRef>/LITERAL` form is
    reduced to `LITERAL`. A property at its enumeration's default is reported by the printer
    with that literal and an `isDefault` flag; in an older dump it is absent, and is then
    filled from `concept_details` (`enumerationDefault`, else the first literal) or, without
    that file, set to `<default>`.
    """
    return {name: value for name, (value, _) in props_detail(node, concept_details).items()}


def props_detail(node, concept_details=None):
    """Like `props` but maps each name to `(value, source)`, source in set/default/unset."""
    result = {}
    for entry in node.get("properties") or []:
        name = entry.get("name")
        if name is None:
            continue
        value = _plain_value(entry.get("value"))
        if not value:
            result[name] = (DEFAULT_MARKER, "unset")
        elif entry.get("isDefault"):
            result[name] = (value, "default")
        else:
            result[name] = (value, "set")

    for name, entry in _declared_properties(node, concept_details).items():
        default = _declared_default(entry)
        known = result.get(name)
        if default and (known is None or known[1] != "set"):
            result[name] = (default, "default")
    return result


def _declared_default(prop_entry):
    """Default literal of a declared enum property: the declared default member, else the first."""
    declared = prop_entry.get("enumerationDefault")
    if declared:
        return declared
    literals = prop_entry.get("enumerationValues") or []
    return literals[0] if literals else ""


def _plain_value(value):
    if value is None:
        return ""
    value = str(value)
    # Older dumps printed a set enum as `<enumerationRef>/LITERAL`; current dumps already
    # emit the declared identifier, so this is a no-op unless a slash is present.
    return value.rsplit("/", 1)[-1] if "/" in value else value


def _declared_properties(node, concept_details):
    if concept_details is None:
        return {}
    entry = concept_entry(concept_details, node.get("concept"))
    if entry is None:
        return {}
    return {p["name"]: p for p in entry.get("properties") or [] if p.get("name")}


def refs(node):
    """Outgoing references of `node` as `(role, targetReference, targetName)` triples."""
    return [
        (r.get("role"), r.get("targetReference"), r.get("target"))
        for r in node.get("references") or []
    ]


def children(node, role=None):
    """Child nodes of `node`, from one containment role or from all of them.

    Works for deep dumps (`nodes`) and shallow ones (`children`, i.e. `{name, reference}`).
    """
    result = []
    for entry in node.get("children") or []:
        if role is not None and entry.get("role") != role:
            continue
        result.extend(entry.get("nodes") or entry.get("children") or [])
    return result


def child_roles(node):
    """`(role, cardinality, targetConcept, childCount)` per containment role of `node`."""
    out = []
    for entry in node.get("children") or []:
        kids = entry.get("nodes") or entry.get("children") or []
        out.append((entry.get("role"), entry.get("cardinality"), entry.get("type"), len(kids)))
    return out


def find(dump, concept=None, name=None):
    """Every node in `dump` matching `concept` (short or qualified) and/or `name`."""
    found = []
    for root in roots(dump):
        _collect(root, concept, name, found)
    return found


def _collect(node, concept, name, found):
    if not _is_node(node):
        return
    if _matches(node, concept, name):
        found.append(node)
    for kid in children(node):
        _collect(kid, concept, name, found)


def _matches(node, concept, name):
    if concept is not None and not _same_concept(node.get("concept"), concept):
        return False
    if name is not None and node.get("name") != name:
        return False
    return True


def _same_concept(actual, wanted):
    if actual is None:
        return False
    return actual == wanted or actual.split(".")[-1] == wanted.split(".")[-1]


def node_by_key(dump, key):
    """The node whose `reference` or `name` equals `key`, searched at any depth."""
    for candidate in find(dump):
        if candidate.get("reference") == key:
            return candidate
    matches = find(dump, name=key)
    if not matches:
        raise BadInput("no node named or referenced by '%s' in the dump" % key)
    return matches[0]


# ── concept details ───────────────────────────────────────────────────────────────────

def concept_entries(concept_details):
    """The concept entries of a `mps_mcp_get_concept_details` payload."""
    if isinstance(concept_details, list):
        return [c for c in concept_details if isinstance(c, dict) and "qualifiedName" in c]
    if isinstance(concept_details, dict) and "qualifiedName" in concept_details:
        return [concept_details]
    return []


def concept_entry(concept_details, concept):
    """The entry for `concept` (short name or qualified name), or None."""
    if concept is None:
        return None
    for entry in concept_entries(concept_details):
        if concept in (entry.get("qualifiedName"), entry.get("name")):
            return entry
        if _same_concept(entry.get("qualifiedName"), concept):
            return entry
    return None


def shape(concept_details, concept=None, include_noise=False):
    """The concept shape: one entry per property, reference, and child role.

    Returns `[{concept, qualifiedName, abstract, rootable, features: [...]}]`, where every
    feature is `{kind, name, type, cardinality, default}` — `kind` one of prop/ref/child.
    """
    entries = concept_entries(concept_details)
    if concept is not None:
        one = concept_entry(concept_details, concept)
        if one is None:
            raise BadInput(
                "concept '%s' is not in this details file (it holds: %s)"
                % (concept, ", ".join(sorted(e.get("name", "?") for e in entries)) or "nothing")
            )
        entries = [one]
    return [_shape_of(entry, include_noise) for entry in entries]


def _shape_of(entry, include_noise):
    features = []
    for prop in entry.get("properties") or []:
        if not include_noise and prop.get("name") in NOISE_FEATURES:
            continue
        literals = prop.get("enumerationValues") or []
        features.append({
            "kind": "prop",
            "name": prop.get("name"),
            "type": ("enum %s [%s]" % (prop.get("type"), "|".join(literals))) if literals
                    else prop.get("type"),
            "cardinality": "",
            "default": _declared_default(prop),
        })
    for kind, key in (("ref", "references"), ("child", "children")):
        for link in entry.get(key) or []:
            if not include_noise and link.get("name") in NOISE_FEATURES:
                continue
            features.append({
                "kind": kind,
                "name": link.get("name"),
                "type": link.get("targetConcept"),
                "cardinality": link.get("cardinality"),
                "default": "",
            })
    return {
        "concept": entry.get("name"),
        "qualifiedName": entry.get("qualifiedName"),
        "abstract": entry.get("isAbstract"),
        "rootable": entry.get("isRootable"),
        "features": features,
    }


# ── CLI ───────────────────────────────────────────────────────────────────────────────

def _table(rows):
    if not rows:
        return []
    widths = [max(len(str(r[i])) for r in rows) for i in range(len(rows[0]))]
    return ["  ".join(str(cell).ljust(widths[i]) for i, cell in enumerate(row)).rstrip()
            for row in rows]


_NODE_KINDS = ("node", "model", "module", "project")


def _cmd_roots(args):
    dump = load(args.file)
    _require_kind(dump, _NODE_KINDS, "roots")
    selected = [r for r in roots(dump) if args.concept is None
                or _same_concept(r.get("concept"), args.concept)]
    lines = _table([(r.get("name") or "", r.get("concept") or "", r.get("reference") or "")
                    for r in selected])
    return lines, {"roots": len(selected)}


def _cmd_count(args):
    dump = load(args.file)
    _require_kind(dump, _NODE_KINDS, "count")
    counts = {}
    for root in roots(dump):
        counts[root.get("concept")] = counts.get(root.get("concept"), 0) + 1
    lines = _table(sorted(((c, n) for c, n in counts.items()), key=lambda cn: -cn[1]))
    return lines, {"concepts": len(counts), "roots": sum(counts.values()), "perConcept": counts}


def _cmd_node(args):
    dump = load(args.file)
    _require_kind(dump, _NODE_KINDS, "node")
    details = load(args.concept_details) if args.concept_details else None
    node = node_by_key(dump, args.node)
    lines = ["%s : %s" % (node.get("name") or "<unnamed>", node.get("concept")),
             "ref %s" % node.get("reference")]
    detail = props_detail(node, details)
    for name in sorted(detail):
        value, source = detail[name]
        lines.append("prop  %s = %s%s" % (name, value, "  (default)" if source == "default" else ""))
    for role, target_ref, target_name in refs(node):
        lines.append("ref   %s -> %s  %s" % (role, target_name, target_ref))
    for role, cardinality, target_concept, count in child_roles(node):
        lines.append("child %s [%s] %s x%d" % (role, cardinality, target_concept, count))
        for kid in children(node, role):
            lines.append("      - %s  %s" % (kid.get("name") or "<unnamed>", kid.get("reference")))
    summary = {
        "node": node.get("name"),
        "concept": node.get("concept"),
        "reference": node.get("reference"),
        "properties": len(detail),
        "references": len(refs(node)),
        "children": len(children(node)),
    }
    return lines, summary


def _cmd_shape(args):
    details = load(args.file)
    _require_kind(details, ("concept-details",), "shape")
    shapes = shape(details, args.concept, args.all)
    lines = []
    for entry in shapes:
        flags = [k for k, v in (("abstract", entry["abstract"]), ("rootable", entry["rootable"]))
                 if v in (True, "true")]
        lines.append("%s  %s%s" % (entry["concept"], entry["qualifiedName"],
                                   ("  " + " ".join(flags)) if flags else ""))
        lines.extend("  " + line for line in _table(
            [(f["kind"], f["name"], f["type"] or "", f["cardinality"] or "") for f in entry["features"]]
        ))
    return lines, {"concepts": len(shapes),
                   "features": sum(len(e["features"]) for e in shapes)}


def _emit(lines, summary, args, label):
    out_path = os.path.join(tempfile.gettempdir(), "mps_dump-%s-%d.txt" % (label, os.getpid()))
    with open(out_path, "w", encoding="utf-8") as handle:
        handle.write("\n".join(lines) + ("\n" if lines else ""))
    shown = lines if args.max_lines <= 0 or len(lines) <= args.max_lines else lines[:args.max_lines]
    if not args.quiet:
        for line in shown:
            print(line)
    summary = dict(summary)
    summary["lines"] = len(lines)
    summary["truncated"] = len(shown) != len(lines)
    summary["file"] = out_path
    print(json.dumps(summary, separators=(",", ":"), sort_keys=True))


def main(argv=None):
    parser = argparse.ArgumentParser(
        prog="mps_dump.py",
        description=__doc__,
        formatter_class=argparse.RawDescriptionHelpFormatter,
    )
    parser.add_argument("--list-tools", action="store_true",
                        help="print the MPS MCP tools and parameters this script depends on")
    subparsers = parser.add_subparsers(dest="command")

    # Shared output options, on the subcommands so they can be passed after the file arguments.
    common = argparse.ArgumentParser(add_help=False)
    common.add_argument("--quiet", action="store_true", help="print only the JSON summary")
    common.add_argument("--max-lines", type=int, default=200,
                        help="stop printing after N lines (the file always has all of them)")

    p_roots = subparsers.add_parser("roots", parents=[common], help="one line per root node")
    p_roots.add_argument("file")
    p_roots.add_argument("--concept", help="keep only roots of this concept (short or qualified)")
    p_roots.set_defaults(run=_cmd_roots, label="roots")

    p_node = subparsers.add_parser("node", parents=[common], help="properties, references and children of one node")
    p_node.add_argument("file")
    p_node.add_argument("node", help="node name or persistent reference")
    p_node.add_argument("--concept-details", help="get_concept_details file, to fill enum defaults")
    p_node.set_defaults(run=_cmd_node, label="node")

    p_shape = subparsers.add_parser("shape", parents=[common], help="concept shape from a get_concept_details file")
    p_shape.add_argument("file")
    p_shape.add_argument("--concept", help="one concept instead of every concept in the file")
    p_shape.add_argument("--all", action="store_true",
                         help="include the inherited shortDescription/virtualPackage/smodelAttribute features")
    p_shape.set_defaults(run=_cmd_shape, label="shape")

    p_count = subparsers.add_parser("count", parents=[common], help="root count per concept")
    p_count.add_argument("file")
    p_count.set_defaults(run=_cmd_count, label="count")

    args = parser.parse_args(argv)
    if args.list_tools:
        print(json.dumps(TOOL_DEPENDENCIES, separators=(",", ":")))
        return 0
    if args.command is None:
        parser.print_help()
        return 2
    try:
        lines, summary = args.run(args)
    except BadInput as e:
        print("bad input: %s" % e, file=sys.stderr)
        return 3
    _emit(lines, summary, args, args.label)
    return 0


if __name__ == "__main__":
    sys.exit(main())
