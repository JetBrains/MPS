from __future__ import annotations

import collections
import importlib.util
import json
import os
import tempfile
import unittest
from pathlib import Path


FAMILIES = Path(__file__).resolve().parents[1] / "families.py"
_SPEC = importlib.util.spec_from_file_location("families", FAMILIES)
assert _SPEC is not None and _SPEC.loader is not None
families = importlib.util.module_from_spec(_SPEC)
_SPEC.loader.exec_module(families)

# Rounds 18 and 21 (directories runs-r19, runs-r22) and the 2026-09 baseline, outside the
# repository; the tests that pin A9's re-run numbers skip when they are absent.
STUDY_RUNS = Path(os.environ.get("MCP_STUDY_RUNS_ROOT", Path.home() / "MPSProjects" / "mcp-study"))
BASELINE_RUNS = Path(os.environ.get("MCP_STUDY_BASELINE_RUNS",
                                    Path.home() / "MPSProjects" / "mcp-study-baseline" / "runs"))

CHECK = "mcp__mps__mps_mcp_check_root_node_problems"
MODEL = "r:0f1e2d3c-aaaa-bbbb-cccc-000000000001(mcp.study.kitchen)"
NODE = MODEL + "/4711"
MODULE = "6b0c8e9a-1111-2222-3333-444455556666(mcp.study.kitchen)"


def tool(tool_id: str, name: str, inp: dict, *, msg: str | None = None, session: str | None = None) -> dict:
    """One tool_use block as stream-json emits it; `msg` is shared by a batch."""
    event = {"type": "assistant", "message": {"id": msg or f"msg-{tool_id}", "content": [
        {"type": "tool_use", "id": tool_id, "name": name, "input": inp}]}}
    if session is not None:
        event["parent_tool_use_id"] = session
    return event


def result(tool_id: str, payload, *, session: str | None = None) -> dict:
    """A tool_result; a non-string payload is serialised as the tool's JSON envelope."""
    text = payload if isinstance(payload, str) else json.dumps(payload)
    event = {"type": "user", "message": {"content": [
        {"type": "tool_result", "tool_use_id": tool_id, "content": [{"type": "text", "text": text}]}]}}
    if session is not None:
        event["parent_tool_use_id"] = session
    return event


def check(tool_id: str, ref: str, payload, *, msg: str | None = None, **extra) -> list[dict]:
    return [tool(tool_id, CHECK, {"projectPath": "/p", "nodeReference": ref, **extra}, msg=msg),
            result(tool_id, payload)]


def ok(data, **details) -> dict:
    env = {"ok": True, "data": data}
    if details:
        env["details"] = details
    return env


def row(name: str, errors: int = 0, warnings: int = 0) -> dict:
    return {"root": f"{MODEL}/{name}", "name": name, "concept": "C", "errors": errors, "warnings": warnings}


NODE_CLEAN = ok("no problems found")
MODEL_CLEAN = ok("no problems found", scope="model", rootsChecked=3)


class FamiliesTest(unittest.TestCase):
    def setUp(self) -> None:
        self.temp_dir = tempfile.TemporaryDirectory()
        self.runs = Path(self.temp_dir.name) / "runs-test"
        self.runs.mkdir()

    def tearDown(self) -> None:
        self.temp_dir.cleanup()

    def count(self, events: list[dict]) -> collections.Counter:
        path = self.runs / "S1-opus-1-worker.jsonl"
        path.write_text("".join(json.dumps(e) + "\n" for e in events))
        return families.fam(str(path))

    def assertCounts(self, f: collections.Counter, **expected: int) -> None:
        self.assertEqual(expected, {k: f[k] for k in expected})

    def test_t1_baseline_model_check_then_node_checks_in_three_batches(self) -> None:
        f = self.count(check("m", MODEL, ok("no problems found"))
                       + check("a", NODE, NODE_CLEAN) + check("b", NODE, NODE_CLEAN) + check("c", NODE, NODE_CLEAN))
        self.assertCounts(f, C_model_checks=1, C_root_checks=3, C_root_after_clean_model=3,
                          C_root_after_clean_model_batches=3, C_after_summary=0)

    def test_t2_module_check_by_uuid_name_is_container_scope(self) -> None:
        rows = [{"model": MODEL, "name": "kitchen", "rootsChecked": 3, "errors": 0, "warnings": 0}]
        f = self.count(check("m", MODULE, ok(rows, scope="module"), perRoot=True))
        self.assertCounts(f, C_model_checks=1, C_root_checks=0, C_root_after_clean_model=0, C_perRoot=1)
        self.assertEqual("module", families.check_scope({"nodeReference": MODULE}, "not json"))

    def test_t3_bare_name_takes_the_scope_from_details(self) -> None:
        for scope in ("module", "model"):
            with self.subTest(scope=scope):
                answer = json.dumps(ok("no problems found", scope=scope))
                self.assertEqual(scope, families.check_scope({"nodeReference": "mcp.study.recipes"}, answer))
        self.assertEqual("container", families.check_scope({"nodeReference": "mcp.study.recipes@tests"}, ""))

    def test_t4_problem_report_object_with_zero_error_rows_is_not_clean(self) -> None:
        report = {"problems": [{"node": NODE, "message": "unresolved"}],
                  "roots": [{"root": NODE, "errors": 0, "warnings": 0}, {"root": NODE, "errors": 1}]}
        f = self.count(check("m", MODEL, ok(report, scope="model")) + check("a", NODE, NODE_CLEAN))
        self.assertEqual("problems", families.check_verdict(json.dumps(ok(report, scope="model"))))
        self.assertCounts(f, C_root_after_clean_model=0, C_after_summary=0)

    def test_t5_warnings_only_summary_then_one_batch_of_node_checks(self) -> None:
        rows = [row("a", warnings=23), row("b")]
        f = self.count(check("m", MODEL, ok(rows, scope="model"), perRoot=True)
                       + check("a", NODE, NODE_CLEAN, msg="batch") + check("b", NODE, NODE_CLEAN, msg="batch"))
        self.assertCounts(f, C_root_after_clean_model=0, C_after_summary=2, C_after_summary_batches=1)

    def test_t6_first_row_with_an_error_makes_a_summary(self) -> None:
        rows = [row("a", errors=1), row("b"), row("c")]
        self.assertEqual("problem_summary", families.check_verdict(json.dumps(ok(rows, scope="model"))))

    def test_t7_a_write_resets_the_clean_verdict(self) -> None:
        f = self.count(check("m", MODEL, MODEL_CLEAN)
                       + [tool("u", "mcp__mps__mps_mcp_update_node", {}), result("u", ok("updated"))]
                       + check("a", NODE, NODE_CLEAN))
        self.assertCounts(f, C_root_after_clean_model=0)

    def test_t8_a_read_only_call_keeps_the_clean_verdict(self) -> None:
        f = self.count(check("m", MODEL, MODEL_CLEAN)
                       + [tool("p", "mcp__mps__mps_mcp_print_node", {}), result("p", ok("text"))]
                       + check("a", NODE, NODE_CLEAN))
        self.assertCounts(f, C_root_after_clean_model=1)

    def test_t9_temp_file_answer_is_unknown(self) -> None:
        answer = ok("/tmp/mps-node-1.json", scope="model", rootsChecked=40)
        self.assertEqual("unknown", families.check_verdict(json.dumps(answer)))
        f = self.count(check("m", MODEL, answer) + check("a", NODE, NODE_CLEAN))
        self.assertCounts(f, C_root_after_clean_model=0, C_after_summary=0)

    def test_t10_model_level_problems_make_zero_rows_a_summary(self) -> None:
        answer = ok([row("a"), row("b")], scope="model", modelProblems=2)
        self.assertEqual("problem_summary", families.check_verdict(json.dumps(answer)))

    def test_t11_header_keeps_the_old_columns_and_appends_the_new_ones(self) -> None:
        self.count([])
        header = families.tsv([str(self.runs)]).splitlines()[0]
        self.assertEqual("round\trun\ttool_uses\tA_tempfile_env\tC_checks\tC_model_checks\tC_root_checks\t"
                         "C_root_after_clean_model\tC_perRoot\tD_skill_reads\tD_skill_bash_fetch\t"
                         "Bp_adhoc_python\tBp_shipped_script\tB_inserts\tB_resp_bytes\tF_gcd_calls\t"
                         "F_gcd_refine\tG_errors\tH_toolsearch\tX_outside_project\t"
                         "C_root_after_clean_model_batches\tC_after_summary\tC_after_summary_batches", header)

    def test_t12_inline_module_problems_count_nowhere(self) -> None:
        answer = ok("no problems found", scope="module", moduleProblems=["generation target is not set"])
        self.assertEqual("problems", families.check_verdict(json.dumps(answer)))
        f = self.count(check("m", MODULE, answer) + check("a", NODE, NODE_CLEAN))
        self.assertCounts(f, C_root_after_clean_model=0, C_after_summary=0)

    def test_t13_module_qualified_node_ref_is_node_scope(self) -> None:
        ref = "6b0c8e9a-1111-2222-3333-444455556666/" + NODE
        self.assertEqual("node", families.check_scope({"nodeReference": ref}, json.dumps(NODE_CLEAN)))

    def test_t14_empty_per_root_list_is_clean(self) -> None:
        self.assertEqual("clean", families.check_verdict(json.dumps(ok([], scope="model", rootsChecked=0))))

    def test_t15_bare_name_not_found_is_container_and_unknown(self) -> None:
        answer = json.dumps({"ok": False, "error": {"code": "NOT_FOUND", "message": "no such model or module"}})
        self.assertEqual("container", families.check_scope({"nodeReference": "mcp.study.missing"}, answer))
        self.assertEqual("unknown", families.check_verdict(answer))

    def test_t16_auto_apply_quick_fixes_counts_then_resets(self) -> None:
        fixed = ok("no problems found", appliedQuickFixes=1)
        f = self.count(check("m", MODEL, MODEL_CLEAN) + check("a", NODE, fixed, autoApplyQuickFixes=True)
                       + check("b", NODE, NODE_CLEAN))
        self.assertCounts(f, C_root_checks=2, C_root_after_clean_model=1, C_root_after_clean_model_batches=1)

    def test_t17_truncated_module_sweep_is_unknown(self) -> None:
        answer = ok("no problems found in 3 of 5 models", scope="module", truncated=True)
        self.assertEqual("unknown", families.check_verdict(json.dumps(answer)))

    def test_t18_subagent_events_are_ignored(self) -> None:
        f = self.count([tool("s", CHECK, {"nodeReference": NODE}, session="task-1"),
                        result("s", NODE_CLEAN, session="task-1")]
                       + check("m", MODEL, MODEL_CLEAN) + check("a", NODE, NODE_CLEAN))
        self.assertCounts(f, tool_uses=2, C_checks=2, C_root_checks=1, C_root_after_clean_model=1)

    def test_smoke_runs_are_skipped_and_out_writes_the_tsv(self) -> None:
        self.count(check("m", MODEL, MODEL_CLEAN))
        (self.runs / "SMOKE-opus-1-worker.jsonl").write_text("")
        out = Path(self.temp_dir.name) / "families.tsv"
        self.assertEqual(0, families.main([str(self.runs) + "/", "--out", str(out)]))
        lines = out.read_text().splitlines()
        self.assertEqual(2, len(lines))
        self.assertTrue(lines[1].startswith("runs-test\tS1-opus-1\t1\t"), lines[1])


AFTER = ("C_root_after_clean_model", "C_root_after_clean_model_batches", "C_after_summary",
         "C_after_summary_batches")


def per_model(directory: Path) -> dict:
    """model -> the four after-column sums over the directory's runs."""
    sums: dict = collections.defaultdict(lambda: [0] * len(AFTER))
    for _, rid, f in families.rows([str(directory)]):
        model = rid.split("-")[1]
        for i, key in enumerate(AFTER):
            sums[model][i] += f[key]
    return dict(sums)


def checks(directory: Path) -> dict:
    """run id -> (C_model_checks, C_root_checks)."""
    return {rid: (f["C_model_checks"], f["C_root_checks"]) for _, rid, f in families.rows([str(directory)])}


class StudyTranscriptsA9Test(unittest.TestCase):
    """A9's re-run numbers (docs/a9-zsh-globs-and-clean-check-detector-plan.md, Validation)."""

    @unittest.skipUnless(BASELINE_RUNS.is_dir(), "baseline transcripts not found")
    def test_baseline_clean_model_checks_stay_genuine(self) -> None:
        self.assertEqual({"opus": [48, 5, 0, 0], "sonnet": [0, 0, 0, 0]}, per_model(BASELINE_RUNS))

    @unittest.skipUnless((STUDY_RUNS / "runs-r19").is_dir(), "runs-r19 transcripts not found")
    def test_round18_has_only_d83_shapes(self) -> None:
        self.assertEqual({"opus": [0, 0, 1, 1], "sonnet": [0, 0, 1, 1]}, per_model(STUDY_RUNS / "runs-r19"))
        moved = checks(STUDY_RUNS / "runs-r19")
        self.assertEqual({"S2-sonnet-1": (2, 2), "S3-sonnet-1": (1, 1), "S5-opus-1": (2, 0), "S5-sonnet-1": (3, 0)},
                         {rid: moved[rid] for rid in ("S2-sonnet-1", "S3-sonnet-1", "S5-opus-1", "S5-sonnet-1")})

    @unittest.skipUnless((STUDY_RUNS / "runs-r22").is_dir(), "runs-r22 transcripts not found")
    def test_round21_has_no_genuine_c(self) -> None:
        self.assertEqual({"opus": [0, 0, 0, 0], "sonnet": [0, 0, 4, 2]}, per_model(STUDY_RUNS / "runs-r22"))
        expected = {"S1-opus-1": (7, 1), "S1-sonnet-1": (8, 1), "S10-opus-1": (1, 0), "S2-opus-1": (6, 0),
                    "S2-sonnet-1": (2, 3), "S5-opus-1": (3, 0), "S5-sonnet-1": (2, 0), "S6-opus-1": (5, 1),
                    "S6-sonnet-1": (8, 1), "S8-opus-1": (2, 0), "S8-sonnet-1": (2, 0)}
        moved = checks(STUDY_RUNS / "runs-r22")
        self.assertEqual(expected, {rid: moved[rid] for rid in expected})


if __name__ == "__main__":
    unittest.main()
