#!/usr/bin/env python3
"""Build the editor-dynamics fixture `alerts` (language mcp.study.alerts) through MPS MCP.

usage: build_alerts.py <log-file> <pins-json>
Assumes <BUILD>/alerts is synthesized and open in MPS. Structure, scaffolded editors and samples only;
the readable static editors are refined afterwards (FIXTURE.md step 2).
"""
import json, sys
from pathlib import Path
sys.path.insert(0, str(Path.home() / "MPSProjects/mcp-study/build"))
from build_fixture import Logged, n, BUILD, NAMED  # noqa: E402

LANG = "mcp.study.alerts"
C = lambda x: f"{LANG}.structure.{x}"  # noqa: E731
CONCEPTS = [
    {"name": "AlertBook", "rootable": True, "conceptAlias": "alert book", "implements": [NAMED],
     "children": [{"role": "members", "target": "Member", "multiple": True, "optional": True}]},
    {"name": "Member", "abstract": True},
    {"name": "Channel", "extends": "Member", "conceptAlias": "channel", "implements": [NAMED],
     "properties": [{"name": "address", "type": "string"}]},
    {"name": "Threshold", "extends": "Member", "conceptAlias": "threshold", "implements": [NAMED],
     "children": [{"role": "value", "target": "Expr", "multiple": False, "optional": False}]},
    {"name": "Alert", "extends": "Member", "conceptAlias": "alert", "implements": [NAMED],
     "properties": [{"name": "muted", "type": "boolean"}, {"name": "severity", "type": "Severity"}],
     "children": [{"role": "condition", "target": "Expr", "multiple": False, "optional": False},
                  {"role": "notify", "target": "ChannelRef", "multiple": True, "optional": True}]},
    {"name": "Note", "extends": "Member", "conceptAlias": "#", "properties": [{"name": "text", "type": "string"}]},
    {"name": "EmptyLine", "extends": "Member"},
    {"name": "ChannelRef", "references": [{"role": "channel", "target": "Channel", "optional": False}]},
    {"name": "Expr", "abstract": True},
    {"name": "NumberLit", "extends": "Expr", "properties": [{"name": "value", "type": "integer"}]},
    {"name": "Metric", "extends": "Expr", "properties": [{"name": "name", "type": "string"}],
     "children": [{"role": "window", "target": "Window", "multiple": False, "optional": True}]},
    {"name": "Window", "conceptAlias": "over", "properties": [{"name": "minutes", "type": "integer"}]},
    {"name": "ThresholdRef", "extends": "Expr", "references": [{"role": "threshold", "target": "Threshold", "optional": False}]},
    {"name": "BinaryExpr", "extends": "Expr", "abstract": True,
     "children": [{"role": "left", "target": "Expr", "multiple": False, "optional": False},
                  {"role": "right", "target": "Expr", "multiple": False, "optional": False}]},
    {"name": "Comparison", "extends": "BinaryExpr", "abstract": True},
    {"name": "Greater", "extends": "Comparison", "conceptAlias": ">"},
    {"name": "Less", "extends": "Comparison", "conceptAlias": "<"},
    {"name": "Logical", "extends": "BinaryExpr", "abstract": True},
    {"name": "And", "extends": "Logical", "conceptAlias": "and"},
    {"name": "Or", "extends": "Logical", "conceptAlias": "or"},
    {"name": "Plus", "extends": "BinaryExpr", "conceptAlias": "+"},
    {"name": "Not", "extends": "Expr", "conceptAlias": "not",
     "children": [{"role": "operand", "target": "Expr", "multiple": False, "optional": False}]},
    {"name": "Paren", "extends": "Expr", "conceptAlias": "(",
     "children": [{"role": "inner", "target": "Expr", "multiple": False, "optional": False}]},
]
EDITORS = ["AlertBook", "Channel", "Threshold", "Alert", "Note", "EmptyLine", "ChannelRef", "NumberLit",
           "Metric", "Window", "ThresholdRef", "BinaryExpr", "Not", "Paren"]


def samples():
    num = lambda v: n(C("NumberLit"), {"value": v})  # noqa: E731
    met = lambda nm, win=None: n(C("Metric"), {"name": nm}, None,  # noqa: E731
                                 {"window": [n(C("Window"), {"minutes": win})] if win else None})
    bin_ = lambda c, l, r: n(C(c), None, None, {"left": [l], "right": [r]})  # noqa: E731
    tref = lambda t: n(C("ThresholdRef"), None, {"threshold": t})  # noqa: E731
    cref = lambda ch: n(C("ChannelRef"), None, {"channel": ch})  # noqa: E731
    alert = lambda nm, sev, cond, chans, muted=None: n(  # noqa: E731
        C("Alert"), {"name": nm, "severity": sev, "muted": muted}, None,
        {"condition": [cond], "notify": [cref(c) for c in chans]})
    ops = n(C("AlertBook"), {"name": "Ops"}, None, {"members": [
        n(C("Note"), {"text": "production alerts"}),
        n(C("Channel"), {"name": "pager", "address": "pager://ops"}),
        n(C("Channel"), {"name": "mail", "address": "ops@example.com"}),
        n(C("Threshold"), {"name": "cpuLimit"}, None, {"value": [num(90)]}),
        n(C("EmptyLine")),
        alert("HighCpu", "high", bin_("Greater", met("cpu", 5), tref("cpuLimit")), ["pager"]),
        alert("LowDisk", "low", bin_("And", bin_("Less", met("disk"), num(10)),
                                     n(C("Not"), None, None, {"operand": [n(C("Paren"), None, None, {"inner": [
                                         bin_("Greater", met("memory"), bin_("Plus", tref("cpuLimit"), num(5)))]})]})),
              ["mail", "pager"]),
        alert("Heartbeat", "low", bin_("Less", met("uptime"), num(1)), [], "true"),
    ]})
    staging = n(C("AlertBook"), {"name": "Staging"}, None, {"members": [
        n(C("Channel"), {"name": "chat", "address": "chat://staging"}),
        n(C("Threshold"), {"name": "cpuLimit"}, None, {"value": [num(95)]}),
    ]})
    return [ops, staging]


def main():
    log, pins_out = sys.argv[1], sys.argv[2]
    if len(sys.argv) > 3 and sys.argv[3] == "--samples-only":
        return insert_samples(Logged(log, BUILD / "alerts"), pins_out, {}, None)
    proj = BUILD / "alerts"
    call = Logged(log, proj)
    mod = call("mps_mcp_create_module", {"type": "language", "name": LANG,
                                         "directory": str(proj / "languages" / LANG), "withSandbox": True})
    structure = next(m["reference"] for m in mod["data"]["models"] if m["aspect"] == "structure")
    editor = next(m["reference"] for m in mod["data"]["models"] if m["aspect"] == "editor")
    call("mps_mcp_alter_structure", {"operation": "CREATE_ENUM", "parameters": json.dumps({
        "structureModelRef": structure, "enumName": "Severity", "defaultEnumName": "low",
        "valuesJson": json.dumps([{"enumName": "low", "enumPresentation": "low"},
                                  {"enumName": "high", "enumPresentation": "high"},
                                  {"enumName": "critical", "enumPresentation": "critical"}])})})
    created = call("mps_mcp_alter_structure", {"operation": "CREATE_CONCEPTS", "parameters": json.dumps(
        {"structureModelRef": structure, "make": True, "conceptsJson": CONCEPTS})})
    if created["data"].get("makeStatus") != "success":
        raise SystemExit(f"make: {created}")
    for r in ["ChannelRef", "ThresholdRef"]:
        sr = call("mps_mcp_query_structure", {"operation": "IS_SMART_REFERENCE",
                                              "parameters": json.dumps({"conceptRef": C(r)})})
        print(r, json.dumps(sr["data"])[:200])
    editors = {}
    for e in EDITORS:
        ed = call("mps_mcp_scaffold_editor", {"conceptRef": C(e), "modelReference": editor})
        editors[e] = ed["data"]["editorNodeRef"]
    call("mps_mcp_alter_nodes", {"operation": "MAKE", "parameters": json.dumps({"modules": [LANG], "rebuild": True})})
    insert_samples(call, pins_out, editors, (mod, structure, editor))


def insert_samples(call, pins_out, editors, ctx):
    sandbox = f"{LANG}.sandbox"
    import os, tempfile
    tmp = Path(tempfile.gettempdir()) / "alerts-samples.json"
    tmp.write_text(json.dumps(samples()))
    ins = call("mps_mcp_insert_root_node_from_json", {"modelReference": sandbox, "json": str(tmp),
                                                      "responseDetail": "summary"})
    fr = ins["data"].get("fixReferences", {})
    if fr.get("stillBroken"):
        raise SystemExit(f"broken refs: {ins}")
    roots = ins["data"]["roots"]
    pins = {"language": LANG, "sandboxModel": sandbox, "editors": editors,
            "roots": {r["name"]: r["reference"] for r in roots}, "fixReferences": fr}
    Path(pins_out).write_text(json.dumps(pins, indent=1))
    print(json.dumps({"ok": True, "roots": len(roots), "editors": editors}))


if __name__ == "__main__":
    main()
