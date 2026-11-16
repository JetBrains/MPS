"""Tests for fixtures/inputs/s39/roots.py (S39 root pins, recipe v2, A20) and mcp_call.resolve_envelope."""
from __future__ import annotations

import copy
import hashlib
import importlib.util
import json
import os
import re
import tempfile
import unittest
from pathlib import Path

STUDY = Path(__file__).resolve().parents[2]
SCRIPTS = STUDY / "scripts"


def _load(name: str, path: Path):
    spec = importlib.util.spec_from_file_location(name, path)
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)
    return module


roots = _load("s39_roots", STUDY / "fixtures" / "inputs" / "s39" / "roots.py")
mcp_call = _load("mcp_call", SCRIPTS / "mcp_call.py")

# The A20 evidence (round-51 S39a-opus-1 evaluator prints and the recipe-v1 pin tables) lives outside the
# repository; the tests that read it skip when it is absent.
A20_REPRO = Path(os.environ.get("MCP_STUDY_RUNS_ROOT", Path.home() / "MPSProjects" / "mcp-study")) \
    / "archive" / "runs" / "r51" / "A20-repro"
EVAL_PRINTS = A20_REPRO / "s39a-opus-1-evalprints"
V1_PINS = A20_REPRO / "v1-pins"

FIX = "r:1111(mcp.study.alerts.editor)"
CORE = "c:3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1/1148687176410:jetbrains.mps.lang.constraints.structure.NodeReferentConstraint"


def node(ref: str, props=(), refs=(), children=(), **extra) -> dict:
    n = {"name": "n", "concept": "C", "doc": "", "deprecated": "false", "conceptReference": CORE, "reference": ref,
         "properties": list(props), "references": list(refs), "children": list(children)}
    n.update(extra)
    return n


def prop(name, value, **extra):
    return dict({"name": name, "type": "string", "doc": "", "deprecated": "false", "value": value}, **extra)


def ref(role, target_ref, **extra):
    return dict({"role": role, "type": "T", "typeReference": CORE, "cardinality": "1", "doc": "", "deprecated": "false",
                 "target": "x", "targetReference": target_ref}, **extra)


def role(name, nodes, **extra):
    return dict({"role": name, "type": "T", "typeReference": CORE, "cardinality": "0..n", "doc": "", "deprecated": "false",
                 "nodes": nodes}, **extra)


MARKER = {"name": "MPS", "mpsProjectBaseDirectory": "/somewhere/else"}


def add_markers(o):
    """Every foreign-project marker form the JSON printer can emit (AbstractOps.addContainingProjectIfForeign)."""
    if isinstance(o, dict):
        if "conceptReference" in o:
            o.update(containingProject=MARKER, editableFromCurrentProject=False,
                     conceptContainingProject=MARKER, conceptEditableFromCurrentProject=False)
        if "typeReference" in o:
            o.update(typeContainingProject=MARKER, typeEditableFromCurrentProject=False)
        if "targetReference" in o:
            o.update(targetContainingProject=MARKER, targetEditableFromCurrentProject=False)
        for v in list(o.values()):
            add_markers(v)
    elif isinstance(o, list):
        for v in o:
            add_markers(v)


class ProjectionTest(unittest.TestCase):
    def sample(self) -> dict:
        return node(f"{FIX}/1", props=[prop("name", "A"), prop("severity", "low", isDefault=True)],
                    refs=[ref("concept", f"{FIX}/9")],
                    children=[role("b", [node(f"{FIX}/3"), node(f"{FIX}/2")]), role("a", [node(f"{FIX}/4")]),
                              role("empty", [], cardinality="1")])

    def test_metadata_and_markers_do_not_change_the_hash(self) -> None:
        base = self.sample()
        marked = copy.deepcopy(base)
        add_markers(marked)
        self.assertEqual(roots.deep_hash(base), roots.deep_hash(marked))
        relabelled = copy.deepcopy(base)
        relabelled["properties"][0]["type"] = "jetbrains.mps.smodel.adapter.structure.types.SConstrainedStringDatatypeAdapter@1f"
        relabelled["doc"] = "new doc"
        relabelled["name"] = "renamed presentation"
        relabelled["references"][0]["target"] = "other name"
        relabelled["references"][0]["declared"] = False
        relabelled["conceptLoaded"] = False
        self.assertEqual(roots.deep_hash(base), roots.deep_hash(relabelled))

    def test_unset_enum_default_is_left_out_and_an_explicit_value_counts(self) -> None:
        base = self.sample()
        explicit = copy.deepcopy(base)
        del explicit["properties"][1]["isDefault"]
        self.assertNotEqual(roots.deep_hash(base), roots.deep_hash(explicit))
        unset = copy.deepcopy(base)
        del unset["properties"][1]
        self.assertEqual(roots.deep_hash(base), roots.deep_hash(unset))

    def test_role_groups_sorted_empty_dropped_child_order_kept(self) -> None:
        base = self.sample()
        reordered_roles = copy.deepcopy(base)
        reordered_roles["children"] = [reordered_roles["children"][1], reordered_roles["children"][0]]
        self.assertEqual(roots.deep_hash(base), roots.deep_hash(reordered_roles))
        swapped_children = copy.deepcopy(base)
        swapped_children["children"][0]["nodes"].reverse()
        self.assertNotEqual(roots.deep_hash(base), roots.deep_hash(swapped_children))

    def test_content_changes_change_the_hash(self) -> None:
        base = self.sample()
        for mutate in (lambda n: n["properties"][0].update(value="B"),
                       lambda n: n["references"][0].update(targetReference=f"{FIX}/8"),
                       lambda n: n["children"][1]["nodes"].append(node(f"{FIX}/5")),
                       lambda n: n.update(conceptReference=CORE + "X")):
            changed = copy.deepcopy(base)
            mutate(changed)
            self.assertNotEqual(roots.deep_hash(base), roots.deep_hash(changed))

    def test_truncated_children_are_rejected(self) -> None:
        shallow = node(f"{FIX}/1", children=[{"role": "a", "children": [{"name": "x", "reference": f"{FIX}/2"}]}])
        with self.assertRaises(roots.PinError):
            roots.deep_hash(shallow)


class TextTest(unittest.TestCase):
    def test_trailing_whitespace_and_blank_lines_ignored_leading_kept(self) -> None:
        self.assertEqual(roots.text_hash("a  \n  b\n"), roots.text_hash("a\n  b"))
        self.assertEqual(roots.text_hash("a\n  b\n\n\n"), roots.text_hash("a\n  b"))
        self.assertEqual(roots.text_hash("a\n\nb"), roots.text_hash("a\n\nb  "))
        self.assertNotEqual(roots.text_hash("a\n  b"), roots.text_hash("a\nb"))
        self.assertNotEqual(roots.text_hash("a\n\nb"), roots.text_hash("a\nb"))


class CompareTest(unittest.TestCase):
    def rows(self):
        R = roots.Root
        return [R("editor", "AlertHints", "C", "1", "d1", "t1"), R("editor", "AlertStyles", "C", "2", "d2", "t2"),
                R("editor", "TriageStyles", "C", "3", "d3", "t3"), R("structure", "Alert", "C", "4", "d4", "t4")]

    def test_equal_diff_missing_new_and_exit_rules(self) -> None:
        R = roots.Root
        pinned = self.rows()
        current = [R("editor", "AlertHints", "C", "1", "d1", "t1"), R("editor", "AlertStyles", "C", "2", "dX", "t2"),
                   R("structure", "Alert", "C", "4", "d4", "tX"), R("editor", "AlertHints", "C", "99", "d9", "t9")]
        res = roots.compare(pinned, current, except_=["AlertStyles"], allow_missing=["TriageStyles"])
        self.assertEqual(res["counts"], {"equal": 1, "deep-diff": 1, "missing": 1, "text-diff": 1, "new": 1})
        self.assertEqual(res["failures"], ["structure/Alert"])
        self.assertIn("new\teditor\tAlertHints\t99", res["lines"])  # same name, other id: new, not a match
        self.assertTrue(roots.compare(pinned, current, except_=["AlertStyles", "Alert"],
                                      allow_missing=["TriageStyles"])["ok"])
        self.assertEqual(roots.compare(pinned, current, except_=["AlertStyles", "Alert"])["failures"], ["editor/TriageStyles"])

    def test_only_and_deep_only(self) -> None:
        R = roots.Root
        current = [R("structure", "Alert", "C", "4", "d4", "tX")]
        res = roots.compare(self.rows(), current, only=["Alert"], deep_only=True)
        self.assertEqual((res["ok"], res["counts"]), (True, {"equal": 1}))
        self.assertFalse(roots.compare(self.rows(), current, only=["Alert"])["ok"])

    def test_unknown_names_are_rejected(self) -> None:
        with self.assertRaises(roots.PinError):
            roots.compare(self.rows(), [], except_=["Nope"])

    def test_tsv_round_trip_skips_comment_lines(self) -> None:
        with tempfile.TemporaryDirectory() as d:
            p = Path(d) / "roots.tsv"
            p.write_text("# recipe v2; x\n" + "".join(r.row() + "\n" for r in self.rows()), encoding="utf-8")
            self.assertEqual([r.key for r in roots.read_tsv(p)], [r.key for r in self.rows()])


class CliFromDirTest(unittest.TestCase):
    """`main()` on a saved-prints directory: pin, check exit codes, flag validation."""

    SANDBOX = "r:272e(mcp.study.alerts.sandbox)"
    EDITOR = "r:88ef(mcp.study.alerts.editor)"
    BEHAVIOR = "r:aaaa(mcp.study.alerts.behavior)"

    def setUp(self) -> None:
        self.tmp = tempfile.TemporaryDirectory()
        self.dir = Path(self.tmp.name) / "prints"
        self.dir.mkdir()
        self.tsv = Path(self.tmp.name) / "roots.tsv"
        self.write("Ops", node(f"{self.SANDBOX}/1", props=[prop("name", "Ops")]), "alert book Ops\n")
        self.write("AlertHints", node(f"{self.EDITOR}/2", props=[prop("name", "AlertHints")]), "hints\n")
        self.write("Behaviour", node(f"{self.BEHAVIOR}/3"), "not pinned\n")  # a model outside MODEL_ORDER

    def tearDown(self) -> None:
        self.tmp.cleanup()

    def write(self, name, data, text):
        (self.dir / f"{name}.json").write_text(json.dumps(dict(data, name=name)), encoding="utf-8")
        (self.dir / f"{name}.txt").write_text(text, encoding="utf-8")

    def run_main(self, *args):
        import contextlib, io
        out = io.StringIO()
        with contextlib.redirect_stdout(out):
            code = roots.main([*args])
        return code, out.getvalue()

    def test_pin_then_check_then_drift(self) -> None:
        code, _ = self.run_main("pin", "--from-dir", str(self.dir), str(self.tsv))
        self.assertEqual(code, 0)
        lines = self.tsv.read_text(encoding="utf-8").splitlines()
        self.assertTrue(lines[0].startswith("# recipe v2;"))
        self.assertEqual([l.split("\t")[:2] for l in lines[1:]], [["sandbox", "Ops"], ["editor", "AlertHints"]])
        self.assertEqual(self.run_main("check", "--from-dir", str(self.dir), str(self.tsv))[0], 0)
        self.write("AlertHints", node(f"{self.EDITOR}/2", props=[prop("name", "AlertHints")]), "hints  \n\n")
        self.assertEqual(self.run_main("check", "--from-dir", str(self.dir), str(self.tsv))[0], 0)  # normalized
        self.write("AlertHints", node(f"{self.EDITOR}/2", props=[prop("name", "AlertHints2")]), "hints\n")
        code, out = self.run_main("check", "--from-dir", str(self.dir), str(self.tsv))
        self.assertEqual(code, 1)
        self.assertIn("deep-diff\teditor\tAlertHints\t2", out)
        self.assertEqual(self.run_main("check", "--from-dir", str(self.dir), str(self.tsv), "--except", "AlertHints")[0], 0)
        self.assertEqual(self.run_main("check", "--from-dir", str(self.dir), str(self.tsv), "--only", "Ops")[0], 0)

    def test_missing_new_and_errors(self) -> None:
        self.run_main("pin", "--from-dir", str(self.dir), str(self.tsv))
        (self.dir / "Ops.json").unlink()
        self.write("Fresh", node(f"{self.SANDBOX}/9"), "fresh\n")
        code, out = self.run_main("check", "--from-dir", str(self.dir), str(self.tsv))
        self.assertEqual(code, 1)
        self.assertIn("missing\tsandbox\tOps\t1", out)
        self.assertIn("new\tsandbox\tFresh\t9", out)
        self.assertEqual(self.run_main("check", "--from-dir", str(self.dir), str(self.tsv), "--allow-missing", "Ops")[0], 0)
        self.assertEqual(self.run_main("pin", "--from-dir", str(self.dir), str(self.tsv), "--only", "Ops")[0], 2)
        self.assertEqual(self.run_main("check", "--from-dir", str(self.dir), str(self.tsv), "--except", "Nope")[0], 2)
        (self.dir / "AlertHints.txt").unlink()
        self.assertEqual(self.run_main("check", "--from-dir", str(self.dir), str(self.tsv))[0], 2)

    def test_model_short_and_empty_hash_rows_under_only(self) -> None:
        self.assertEqual(roots.model_short("r:95d3(mcp.study.alerts.tests@tests)/58"), "tests@tests")
        self.assertEqual(roots.model_short("mcp.study.alerts.editor"), "editor")
        R = roots.Root
        pinned = [R("editor", "AlertHeader", "C", "1", "d1", "t1"), R("editor", "AlertHints", "C", "2", "d2", "t2")]
        # Mps.roots(only_ids=...) lists the other roots with empty hashes; --only must ignore them.
        current = [R("editor", "AlertHeader", "C", "1", "d1", ""), R("editor", "AlertHints", "C", "2", "", ""),
                   R("editor", "Extra", "C", "3", "", "")]
        res = roots.compare(pinned, current, only=["AlertHeader"], deep_only=True)
        self.assertEqual((res["ok"], res["counts"]), (True, {"equal": 1}))


class ResolveEnvelopeTest(unittest.TestCase):
    def test_inlines_bare_payload_and_collapses_a_saved_envelope(self) -> None:
        with tempfile.TemporaryDirectory() as d:
            bare, full, txt = Path(d) / "a.json", Path(d) / "b.json", Path(d) / "c.txt"
            bare.write_text('{"x": 1}')
            full.write_text('{"ok": true, "data": {"y": 2}, "warnings": ["w"]}')
            txt.write_text("plain text")
            env = json.loads(mcp_call.resolve_envelope(json.dumps({"ok": True, "data": str(bare)})))
            self.assertEqual((env["data"], env["_inlinedFrom"]), ({"x": 1}, str(bare)))
            env = json.loads(mcp_call.resolve_envelope(json.dumps({"ok": True, "data": str(full)})))
            self.assertEqual((env["data"], env["warnings"]), ({"y": 2}, ["w"]))
            text_env = json.dumps({"ok": True, "data": str(txt)})
            self.assertEqual(mcp_call.resolve_envelope(text_env), text_env)
            self.assertEqual(mcp_call.resolve_envelope("not json"), "not json")
            inline = json.dumps({"ok": True, "data": "inline text"})
            self.assertEqual(mcp_call.resolve_envelope(inline), inline)


@unittest.skipUnless(EVAL_PRINTS.is_dir() and V1_PINS.is_dir(), "A20 evidence not found")
class A20EvidenceTest(unittest.TestCase):
    """Round-51 evaluator prints (study MPS, cell project alone) against the recipe-v1 pins (dev MPS with the MPS
    source project open)."""

    EDITED = {"AlertHints", "AlertStyles"}  # changed by the S39a worker
    OLD_CONSTRAINED = "jetbrains.mps.smodel.adapter.structure.types.SConstrainedStringDatatypeAdapter"
    BASE = {"name": "MPS", "mpsProjectBaseDirectory": "/Users/vaclav/work/MPS/myMPS-fix"}

    @staticmethod
    def v1(name):
        return {line.split("\t")[1]: line.rstrip("\n").split("\t")
                for line in (V1_PINS / name / "roots.tsv").read_text(encoding="utf-8").splitlines() if line}

    @staticmethod
    def load(name):
        return json.loads((EVAL_PRINTS / f"{name}.json").read_text(encoding="utf-8"))

    def add_foreign(self, o):
        """The markers the pin session printed: everything outside mcp.study.* was owned by the open MPS project."""
        def outside(ref):
            m = re.match(r"r:[^(]*\(([^)]*)\)", ref) or re.search(r"\(([^)]+)/\)", ref)
            return not (m.group(1) if m else ref).startswith("mcp.study.")
        def mark(d, prefix):
            d[prefix + "ContainingProject"] = self.BASE
            d[prefix + "EditableFromCurrentProject"] = False
        if isinstance(o, dict):
            if "conceptReference" in o and not o["conceptReference"].split(":", 2)[-1].startswith("mcp.study."):
                mark(o, "concept")
            if "typeReference" in o and not o["typeReference"].split(":", 2)[-1].startswith("mcp.study."):
                mark(o, "type")
            if o.get("target") is not None and "targetReference" in o and outside(o["targetReference"]):
                mark(o, "target")
            for v in list(o.values()):
                self.add_foreign(v)
        elif isinstance(o, list):
            for v in o:
                self.add_foreign(v)

    def old_types(self, o):
        if isinstance(o, dict):
            for p in o.get("properties") or []:
                if not p.get("type", "").startswith("enum:") and p.get("type") not in ("string", "integer", "boolean"):
                    p["type"] = self.OLD_CONSTRAINED
            for v in o.values():
                self.old_types(v)
        elif isinstance(o, list):
            for v in o:
                self.old_types(v)

    @staticmethod
    def v1_deep(d):
        return hashlib.sha256(json.dumps(d, sort_keys=True).encode()).hexdigest()[:16]

    @staticmethod
    def norm(o, k=None):
        if isinstance(o, dict):
            return {kk: A20EvidenceTest.norm(v, kk) for kk, v in o.items()}
        if isinstance(o, list):
            return [A20EvidenceTest.norm(v, k) for v in o]
        return re.sub(r"@[0-9a-f]+$", "", o) if isinstance(o, str) and k == "type" else o

    def test_projection_is_unchanged_by_the_pin_session_markers(self) -> None:
        for jf in sorted(EVAL_PRINTS.glob("*.json")):
            data = json.loads(jf.read_text(encoding="utf-8"))
            marked = copy.deepcopy(data)
            self.add_foreign(marked)
            if "jetbrains.mps" in json.dumps(data):
                self.assertNotEqual(data, marked, jf.name)  # the markers really were added
            self.assertEqual(roots.deep_hash(data), roots.deep_hash(marked), jf.name)

    def test_v1_hashes_are_rebuilt_from_the_evaluator_prints(self) -> None:
        a3, hard = self.v1("alerts3"), self.v1("alerts3-hard")
        deep = [n for n, r in a3.items() if r[0] != "structure" and n not in self.EDITED]
        hits = 0
        for n in deep:
            d = self.load(n)
            self.add_foreign(d)
            hits += self.v1_deep(d) == a3[n][4]
        self.assertEqual((hits, len(deep)), (36, 36))
        struct = [n for n, r in hard.items() if r[0] == "structure"]
        hits = 0
        for n in struct:
            d = self.load(n)
            self.add_foreign(d)
            self.old_types(d)
            hits += self.v1_deep(self.norm(d)) == hard[n][4]
        self.assertEqual((hits, len(struct)), (24, 24))
        v1_text = lambda t: hashlib.sha256("\n".join(line.rstrip() for line in t.split("\n")).encode()).hexdigest()[:16]
        hits = sum(any(v1_text((EVAL_PRINTS / f"{n}.txt").read_text(encoding="utf-8") + "\n" * k) == r[5] for k in (0, 1))
                   for n, r in a3.items())
        self.assertEqual((hits, len(a3)), (58, 62))


if __name__ == "__main__":
    unittest.main()
