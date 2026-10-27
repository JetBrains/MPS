#!/usr/bin/env python3
"""Build a deep JSON blueprint in Python instead of hand-counting its closing brackets.

A blueprint nested more than a few node levels deep, typically a BaseLanguage statement or
expression body written as JSON, ends in a long run of `]}` pairs. Miss one pair in that run
and the tool rejects the input with `INVALID_JSON ... unbalanced`, or, when the pair is
missing mid-input, a later role silently lands under the wrong node. Built from nested
`node(...)` calls, the brackets cannot go wrong.

Pass the Python on stdin, with `-` as the only argument. `node` and `emit` are predefined:

  python3 .claude/skills/mps-node-editing/scripts/blueprint.py - <<'EOF'
  BL = "jetbrains.mps.baseLanguage.structure."
  emit(node(BL + "StatementList", children={"statement": [
      node(BL + "ReturnStatement", children={"expression":
          node(BL + "IntegerConstant", props={"value": 1})})]}), single=True)
  EOF
  {"bytes":331,"depth":3,"nodes":3,"path":"/var/folders/.../T/bp-x1y2z3.json"}

Hand the printed path to the tool as the blueprint (`json` or `childJson`); the file is
under the system temp directory, where the tools accept it.

node(concept, props=None, refs=None, children=None)
  concept   fully qualified concept name.
  props     {property name: value}. A bool becomes "true"/"false", a number its decimal
            text, None leaves the property out (so it keeps its default).
  refs      {reference role: target}, a target being an `r:...` node reference or a name.
            None leaves the reference out.
  children  {child role: node or list of nodes}.
  Keys keep the order given. Returns the blueprint dict, so a subtree can be bound to a
  variable and reused or composed into a larger one.

emit(blueprint, stem="bp", single=False)
  Checks the blueprint, writes it to a fresh file `<stem>-*.json` in the system temp
  directory and prints {bytes, depth, nodes, path}; returns the path. `blueprint` is one
  node or a list of nodes (a top-level array, for `mps_mcp_insert_root_node_from_json`).
  Pass single=True for the tools that take one object only: `mps_mcp_update_node`
  `childJson` and `mps_mcp_update_root_node_from_json` `json`. Call it once per file.

The check covers the shape only: every node has a fully qualified `concept`, and roles,
property names and reference targets are non-empty strings. Whether a role or property
exists on the concept is for the tool to say; use `dryRun=true` for that.

Exit codes: 0 ok, 2 usage, 3 bad input (the snippet raised, called emit() zero times, or
built a blueprint that fails the check); the message names the JSON path, e.g.
`$.statement[0].expression[0]: concept 'IntegerConstant' is not fully qualified`.
A path step is `.role[index]` below a node and `[index]` in a top-level array.
"""

from __future__ import annotations

import argparse
import json
import linecache
import os
import sys
import tempfile
import traceback

# Plugin build these scripts were last exercised against. The gate is the
# SkillScriptsDriftTest in the mcp-tools plugin, not this constant.
MCP_TOOLS_VERSION_TESTED = "261.25134"

TOOL_DEPENDENCIES = [
    {
        "tool": "mps_mcp_insert_root_node_from_json",
        "parameters": ["modelReference", "json", "dryRun"],
    },
    {
        "tool": "mps_mcp_update_root_node_from_json",
        "parameters": ["nodeReference", "json", "dryRun"],
    },
    {
        "tool": "mps_mcp_update_node",
        "parameters": ["operation", "kind", "nodeReference", "childRole", "childJson", "dryRun"],
    },
    {
        "tool": "mps_mcp_insert_console_command_from_json",
        "parameters": ["json", "dryRun"],
    },
]

SNIPPET_NAME = "<stdin>"


class BadBlueprint(Exception):
    """The blueprint the snippet built fails the shape check."""


def _text(value):
    if isinstance(value, bool):
        return "true" if value else "false"
    if isinstance(value, (int, float)):
        return str(value)
    return value


def node(concept, props=None, refs=None, children=None):
    """One blueprint node; see the module docstring."""
    result = {"concept": concept}
    if props:
        properties = [{"name": name, "value": _text(value)}
                      for name, value in props.items() if value is not None]
        if properties:
            result["properties"] = properties
    if refs:
        references = [{"role": role, "target": target}
                      for role, target in refs.items() if target is not None]
        if references:
            result["references"] = references
    if children:
        result["children"] = [
            {"role": role, "nodes": list(nodes) if isinstance(nodes, (list, tuple)) else [nodes]}
            for role, nodes in children.items()
        ]
    return result


def _non_empty_string(value):
    return isinstance(value, str) and value.strip() != ""


def _check_node(record, path, depth):
    """Returns (node count, depth) of the subtree at `path`, or raises BadBlueprint."""
    if not isinstance(record, dict):
        raise BadBlueprint("%s: expected a node (dict), got %s" % (path, type(record).__name__))
    concept = record.get("concept")
    if not _non_empty_string(concept):
        raise BadBlueprint("%s: node has no concept" % path)
    if "." not in concept or concept.startswith(".") or concept.endswith("."):
        raise BadBlueprint("%s: concept '%s' is not fully qualified "
                           "(write e.g. jetbrains.mps.baseLanguage.structure.%s)"
                           % (path, concept, concept.strip(".")))
    for prop in record.get("properties", []):
        if not _non_empty_string(prop.get("name")):
            raise BadBlueprint("%s: a property of %s has no name" % (path, concept))
        if not isinstance(prop.get("value"), str):
            raise BadBlueprint("%s: property '%s' has a %s value, expected text"
                               % (path, prop.get("name"), type(prop.get("value")).__name__))
    for ref in record.get("references", []):
        if not _non_empty_string(ref.get("role")):
            raise BadBlueprint("%s: a reference of %s has no role" % (path, concept))
        target = ref.get("target")
        if target is not None and not isinstance(target, str):
            raise BadBlueprint("%s: reference '%s' has a %s target, expected an r:... reference or a name"
                               % (path, ref.get("role"), type(target).__name__))
        if not _non_empty_string(target):
            raise BadBlueprint("%s: reference '%s' has no target" % (path, ref.get("role")))
    count, deepest = 1, depth
    for group in record.get("children", []):
        role = group.get("role")
        if not _non_empty_string(role):
            raise BadBlueprint("%s: a child role of %s is empty" % (path, concept))
        for index, child in enumerate(group.get("nodes", [])):
            sub_count, sub_depth = _check_node(child, "%s.%s[%d]" % (path, role, index), depth + 1)
            count += sub_count
            deepest = max(deepest, sub_depth)
    return count, deepest


def check(blueprint, single=False):
    """Returns (node count, depth) of a node or a top-level list, or raises BadBlueprint."""
    if isinstance(blueprint, (list, tuple)):
        if single:
            raise BadBlueprint("$: a list of %d nodes, but single=True: this tool takes one "
                               "object, so emit each node separately" % len(blueprint))
        if not blueprint:
            raise BadBlueprint("$: the top-level list is empty")
        count, deepest = 0, 0
        for index, record in enumerate(blueprint):
            sub_count, sub_depth = _check_node(record, "$[%d]" % index, 1)
            count += sub_count
            deepest = max(deepest, sub_depth)
        return count, deepest
    return _check_node(blueprint, "$", 1)


_emitted = []


def emit(blueprint, stem="bp", single=False):
    """Checks `blueprint`, writes it under the system temp directory, prints the summary."""
    count, deepest = check(blueprint, single)
    text = json.dumps(list(blueprint) if isinstance(blueprint, tuple) else blueprint,
                      separators=(",", ":"), ensure_ascii=False)
    fd, path = tempfile.mkstemp(prefix="%s-" % stem, suffix=".json", dir=tempfile.gettempdir())
    with os.fdopen(fd, "w", encoding="utf-8") as handle:
        handle.write(text)
        handle.write("\n")
    summary = {"bytes": len(text.encode("utf-8")), "depth": deepest, "nodes": count, "path": path}
    print(json.dumps(summary, separators=(",", ":"), sort_keys=True))
    _emitted.append(path)
    return path


def run_snippet(source):
    """Runs the snippet with `node` and `emit` defined; returns the exit code."""
    # Registered so that a traceback shows the snippet's own lines, not just their numbers.
    linecache.cache[SNIPPET_NAME] = (len(source), None, source.splitlines(True), SNIPPET_NAME)
    namespace = {"__name__": "__blueprint__", "node": node, "emit": emit}
    del _emitted[:]
    try:
        exec(compile(source, SNIPPET_NAME, "exec"), namespace)
    except BadBlueprint as e:
        print("bad blueprint: %s" % e, file=sys.stderr)
        return 3
    except Exception:  # the snippet's own error: show where in the snippet it happened
        kind, error, trace = sys.exc_info()
        frames = [frame for frame in traceback.extract_tb(trace) if frame.filename == SNIPPET_NAME]
        print("the snippet raised:", file=sys.stderr)
        print("".join(traceback.format_list(frames)), end="", file=sys.stderr)
        print("".join(traceback.format_exception_only(kind, error)), end="", file=sys.stderr)
        return 3
    if not _emitted:
        print("bad input: the snippet never called emit(blueprint), so no file was written",
              file=sys.stderr)
        return 3
    return 0


def main(argv=None):
    parser = argparse.ArgumentParser(
        prog="blueprint.py",
        description=__doc__,
        formatter_class=argparse.RawDescriptionHelpFormatter,
    )
    parser.add_argument("--list-tools", action="store_true",
                        help="print the MPS MCP tools and parameters this script depends on")
    parser.add_argument("source", nargs="?",
                        help="`-` to read the Python snippet from stdin (the only form)")
    args = parser.parse_args(argv)

    if args.list_tools:
        print(json.dumps(TOOL_DEPENDENCIES, separators=(",", ":")))
        return 0
    if args.source != "-":
        # Never read stdin without the explicit `-`: a bare call would wait for input forever.
        parser.print_usage(sys.stderr)
        print("blueprint.py: pass `-` and the Python snippet on stdin; see --help", file=sys.stderr)
        return 2
    return run_snippet(sys.stdin.read())


if __name__ == "__main__":
    sys.exit(main())
