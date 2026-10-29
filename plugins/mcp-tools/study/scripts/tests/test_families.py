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
UNCHECKED = ("no problems found in checked nodes (1 subtree(s) unchecked: one or more typesystem, constraints, "
             "scope or target-concept checks were skipped)")
PRINT = "mcp__mps__mps_mcp_print_node"

MODEL_CLEAN = ok("no problems found", scope="model", rootsChecked=3)


def printed(tool_id: str, concept: str) -> list[dict]:
    """A print_node call whose inline JSON printout is a node of `concept`."""
    return [tool(tool_id, PRINT, {"projectPath": "/p", "nodeReference": NODE}),
            result(tool_id, ok({"name": "n", "concept": concept, "properties": [], "children": []}))]


SAMPLES = "r:38cfdf05-3b6a-4864-b1ba-70dca7ae70da(mcp.study.kitchen.samples)"
TEMPLATES = "r:98539ed4-bf63-4715-a114-6d1e7a8ca01d(mcp.study.recipes.generator.templates@generator)"
TEMPLATE_NODE = TEMPLATES + "/4956319657762978653"  # S15: the ExpressionStatement of the PORTIONS macro
TRANSIENT_MODEL = "b0e169d0-d6c6-4e35-82bf-9dedc21ca58f/i:10000002(mcp.study.kitchen@transient6/mcp.study.kitchen.samples@2_0)"
TRANSIENT_NODE = TRANSIENT_MODEL + "/4956319657763309881"
CHECKPOINT_MODEL = "00000000-0000-4000-5f02-5beb5f025beb/i:f9a6a79(checkpoints/mcp.study.recipes.structure@descriptorclasses)"
DESCRIPTOR_MODEL = "d723428a-5d9b-4750-9dd9-f09f6644bf03/i:f010101(mcp.study.recipes/mcp.study.recipes@descriptor)"
BACKWARD = {"nodeReference": TRANSIENT_NODE, "direction": "BACKWARD"}
# What TRACE BACKWARD answered from the PORTIONS initializer in the S15 fixture walk, trimmed.
FOUND = ok({"steps": [{"input": "mcp.study.kitchen.samples@0", "output": "mcp.study.kitchen.samples@2_0", "changes": [
    {"templates": [{"concept": "Root_MappingRule", "presentation": "map Recipe", "role": "RULE"}]}]}]})
NO_STEPS = ok({"steps": [], "changesTotal": 0})
NOT_FOUND = {"ok": False, "error": "not found", "code": "NOT_FOUND"}
REJECTED = {"ok": False, "error": "MAKE_INPUT_INVALID"}


def call(tool_id: str, name: str, operation: str, parameters, payload=None) -> list[dict]:
    """An `operation` + `parameters` call (parameters as an object or its string form) and its result."""
    return [tool(tool_id, "mcp__mps__" + name, {"projectPath": "/p", "operation": operation, "parameters": parameters}),
            result(tool_id, ok({"success": True}) if payload is None else payload)]


def gen(tool_id: str, operation: str, parameters, payload=None) -> list[dict]:
    """A mps_mcp_generation call and its result; a TRACE answers FOUND unless told otherwise."""
    return call(tool_id, "mps_mcp_generation", operation, parameters, FOUND if payload is None else payload)


def template_print(tool_id: str) -> list[dict]:
    """A print_node call on a node of the generator's template model."""
    return [tool(tool_id, PRINT, {"projectPath": "/p", "nodeReference": TEMPLATES + "/4956319657762963862"}),
            result(tool_id, ok({"name": "RecipeClass", "concept": "ClassConcept"}))]


def write(tool_id: str, name: str, inp: dict, payload=None) -> list[dict]:
    return [tool(tool_id, "mcp__mps__" + name, {"projectPath": "/p", **inp}),
            result(tool_id, ok("done") if payload is None else payload)]



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
        f = self.count(check("c", MODEL, MODEL_CLEAN) + check("m", MODULE, ok(rows, scope="module"), perRoot=True))
        self.assertCounts(f, C_model_checks=2, C_root_checks=0, C_root_after_clean_model=0, C_perRoot=1)
        self.assertEqual("module", families.check_scope({"nodeReference": MODULE}, "not json"))

    def test_t2_clean_module_rows_count_a_following_node_check(self) -> None:
        rows = [{"model": MODEL, "name": "kitchen", "rootsChecked": 3, "errors": 0, "warnings": 0}]
        f = self.count(check("m", MODULE, ok(rows, scope="module"), perRoot=True) + check("a", NODE, NODE_CLEAN))
        self.assertCounts(f, C_model_checks=1, C_root_checks=1, C_root_after_clean_model=1)

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
                         "C_root_after_clean_model_batches\tC_after_summary\tC_after_summary_batches\t"
                         "T_rule_prints\tT_type_queries\tT_type_queries_before_make\tM_makes\tM_reload_all\t"
                         "M_makes_save_transient\tGN_plan\tGN_transient_models\tGN_trace\tGN_trace_backward\t"
                         "GN_drop\tGN_trace_before_fix\tGN_transient_reads\tGN_template_prints\t"
                         "GN_template_prints_before_trace\tDF_builder_prints\tDF_console_runs\tDF_queries\t"
                         "DF_program_prints\tDF_reaching_queries\tC_after_node_sample\tC_after_node_sample_batches\t"
                         "ET_test_runs\tET_run_configs\tET_platform_id_writes\tET_applicability_writes\t"
                         "ET_ide_service_writes\tET_runtime_source_reads\tGT_generator_test_writes\t"
                         "GT_nodes_test_writes\tGT_match_options_writes\tGT_plan_writes\tGT_do_not_generate_calls\t"
                         "GT_do_not_generate_workarounds\tGT_runtime_source_reads\tGT_kitchen_source_reads\t"
                         "GT_expected_parser_inserts\tGP_genplan_models\tGP_param_equals_writes\tGP_set_plan_calls\t"
                         "GP_devkit_export_calls\tGP_devkit_used_calls\tGP_plan_facet_writes\tGP_attach_workarounds\t"
                         "GP_descriptor_reads\tGP_plan_edits\tGP_plan_root_reinserts\tGP_plan_steps_detail\t"
                         "GP_rebuild_makes\tGP_param_model_reads", header)

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
        answer = json.dumps({"ok": False, "error": "No model or module named 'mcp.study.missing'", "code": "NOT_FOUND"})
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

    def test_t17_truncated_per_root_sweep_with_zero_rows_is_unknown(self) -> None:
        rows = [{"model": MODEL, "name": "kitchen", "rootsChecked": 3, "errors": 0, "warnings": 0}]
        answer = ok(rows, scope="module", truncated=True, modelsNotChecked=["mcp.study.other"])
        self.assertEqual("unknown", families.check_verdict(json.dumps(answer)))
        f = self.count(check("m", MODULE, answer, perRoot=True) + check("a", NODE, NODE_CLEAN))
        self.assertCounts(f, C_root_after_clean_model=0, C_after_summary=0)

    def test_module_itself_warning_makes_zero_rows_a_summary(self) -> None:
        rows = [{"model": MODEL, "name": "kitchen", "rootsChecked": 3, "errors": 0, "warnings": 0}]
        answer = {**ok(rows, scope="module"), "warnings": ["The module itself has 1 error(s)"]}
        self.assertEqual("problem_summary", families.check_verdict(json.dumps(answer)))

    def test_clean_string_with_level_problems_is_a_summary(self) -> None:
        self.assertEqual("problem_summary", families.check_verdict(json.dumps(
            ok("no problems found", scope="model", modelProblems=1))))
        self.assertEqual("problem_summary", families.check_verdict(json.dumps(
            {**ok("no problems found", scope="module"), "warnings": ["The module itself has 2 error(s)"]})))

    def test_scope_falls_back_to_legacy_reference_and_qualified_model_refs(self) -> None:
        self.assertEqual("model", families.check_scope({"reference": MODEL}, ""))
        qualified = "6b0c8e9a-1111-2222-3333-444455556666/" + MODEL
        self.assertEqual("model", families.check_scope({"nodeReference": qualified}, '{"ok":false}'))

    def test_t18_subagent_events_are_ignored(self) -> None:
        f = self.count([tool("s", CHECK, {"nodeReference": NODE}, session="task-1"),
                        result("s", NODE_CLEAN, session="task-1")]
                       + check("m", MODEL, MODEL_CLEAN) + check("a", NODE, NODE_CLEAN))
        self.assertCounts(f, tool_uses=2, C_checks=2, C_root_checks=1, C_root_after_clean_model=1)

    def test_t19_unchecked_subtrees_verdict_is_clean_unchecked(self) -> None:
        self.assertEqual("clean_unchecked", families.check_verdict(json.dumps(
            ok(UNCHECKED, scope="model", rootsChecked=3, uncheckedSubtrees=1))))
        rows = [row("a"), {**row("b"), "uncheckedSubtrees": 1}]
        self.assertEqual("clean_unchecked", families.check_verdict(json.dumps(
            ok(rows, scope="model", uncheckedSubtrees=1))))
        self.assertEqual("problem_summary", families.check_verdict(json.dumps(
            ok(UNCHECKED, scope="model", modelProblems=1))))
        self.assertEqual("problems", families.check_verdict(json.dumps(
            ok(UNCHECKED, scope="module", moduleProblems=["generation target is not set"]))))

    def test_t19_node_check_after_clean_unchecked_model_counts(self) -> None:
        f = self.count(check("m", MODEL, ok(UNCHECKED, scope="model", rootsChecked=3, uncheckedSubtrees=1))
                       + check("a", NODE, ok(UNCHECKED, uncheckedSubtrees=1)))
        self.assertCounts(f, C_model_checks=1, C_root_checks=1, C_root_after_clean_model=1,
                          C_root_after_clean_model_batches=1, C_after_summary=0)

    def test_t20_rule_root_prints_count_short_and_qualified_concepts(self) -> None:
        f = self.count(printed("a", "jetbrains.mps.lang.typesystem.structure.InferenceRule")
                       + printed("b", "SubtypingRule")
                       + printed("c", "com.example.courses.structure.Curriculum")
                       + printed("d", "ClassConcept")
                       + [tool("e", PRINT, {"nodeReference": NODE}), result("e", ok("/tmp/mps-node-1.json"))]
                       + [tool("g", PRINT, {"nodeReference": NODE, "format": "PLAIN TEXT"}),
                          result("g", ok("subtyping rule supertypeOf_Int"))])
        self.assertCounts(f, T_rule_prints=2, tool_uses=6)

    def test_t20_rule_root_prints_without_an_inline_concept_count_by_the_typesystem_model(self) -> None:
        rule = "r:9e78ab00-457d-4aa2-aec8-f0f0bf086985(jetbrains.mps.samples.Expressions.typesystem)/20735"
        f = self.count([tool("t", PRINT, {"nodeReference": rule, "format": "PLAIN TEXT"}),
                        result("t", ok("rule typeof_ArithmeticSimpleMathExpression { … }")),
                        tool("d", PRINT, {"nodeReference": rule, "deep": True}),
                        result("d", ok("/tmp/mps-node-2.json")),
                        tool("s", PRINT, {"nodeReference": rule + "1"}),
                        result("s", ok({"name": "s", "concept": "TypeOfExpression"}))])
        self.assertCounts(f, T_rule_prints=2)

    def test_t21_type_queries_count_query_types_and_node_type_operations(self) -> None:
        events = []
        for i, (name, operation) in enumerate([
                ("mcp__mps__mps_mcp_query_types", "IS_SUBTYPE"), ("mcp__mps__mps_mcp_query_types", "EXPLAIN_TYPE"),
                ("mcp__mps__mps_mcp_query_nodes", "GET_TYPE"), ("mcp__mps__mps_mcp_query_nodes", "GET_EXPECTED_TYPE"),
                ("mcp__mps__mps_mcp_query_nodes", " get_expected_type "),
                ("mcp__mps__mps_mcp_query_nodes", "FIND_INSTANCES"), ("mcp__mps__mps_mcp_query_nodes", "GET_PARENT")]):
            events += [tool(f"q{i}", name, {"operation": operation, "parameters": {"nodeReference": NODE}}),
                       result(f"q{i}", ok({"isSubtype": True}))]
        self.assertCounts(self.count(events), T_type_queries=5, T_rule_prints=0)

    def test_t22_type_queries_keep_the_clean_verdict(self) -> None:
        f = self.count(check("m", MODEL, MODEL_CLEAN)
                       + [tool("q", "mcp__mps__mps_mcp_query_nodes", {"operation": "GET_TYPE"}), result("q", ok(None))]
                       + check("a", NODE, NODE_CLEAN))
        self.assertCounts(f, C_root_after_clean_model=1, T_type_queries=1)

    def test_t23_type_queries_before_the_first_make_and_the_make_and_reload_counts(self) -> None:
        def call(tool_id: str, name: str, operation: str | None = None) -> list[dict]:
            inp = {"projectPath": "/p", "parameters": {}}
            if operation is not None:
                inp["operation"] = operation
            return [tool(tool_id, "mcp__mps__" + name, inp), result(tool_id, ok(None))]
        f = self.count(call("a", "mps_mcp_query_types", "EXPLAIN_TYPE") + call("b", "mps_mcp_query_nodes", "GET_TYPE")
                       + call("c", "mps_mcp_alter_nodes", "COPY_NODE") + call("d", "mps_mcp_alter_nodes", " make ")
                       + call("e", "mps_mcp_query_types", "IS_SUBTYPE") + call("f", "mps_mcp_reload_all")
                       + call("g", "mps_mcp_alter_nodes", "MAKE") + call("h", "mps_mcp_query_nodes", "GET_TYPE"))
        self.assertCounts(f, T_type_queries=4, T_type_queries_before_make=2, M_makes=2, M_reload_all=1)
        without_make = self.count(call("a", "mps_mcp_query_types", "IS_SUBTYPE"))
        self.assertCounts(without_make, T_type_queries=1, T_type_queries_before_make=1, M_makes=0)

    def test_t23_a_failed_make_closes_no_window_and_a_batch_counts_in_order(self) -> None:
        def call(tool_id: str, name: str, operation: str, payload, msg: str | None = None) -> list[dict]:
            return [tool(tool_id, "mcp__mps__" + name, {"operation": operation, "parameters": {}}, msg=msg),
                    result(tool_id, payload)]
        rejected = {"ok": False, "error": "MAKE_INPUT_INVALID"}
        f = self.count(call("a", "mps_mcp_alter_nodes", "MAKE", rejected)
                       + call("b", "mps_mcp_query_types", "IS_SUBTYPE", ok(None))
                       + call("c", "mps_mcp_query_types", "EXPLAIN_TYPE", ok(None), msg="batch")
                       + call("d", "mps_mcp_alter_nodes", "MAKE", ok({"success": True}), msg="batch")
                       + call("e", "mps_mcp_query_types", "IS_SUBTYPE", ok(None), msg="batch"))
        self.assertCounts(f, T_type_queries=3, T_type_queries_before_make=2, M_makes=2, G_errors=1)
        # A build that ran and failed (S12's sandbox make) is not rejected by the envelope: it closes the window.
        built_and_failed = self.count(call("a", "mps_mcp_alter_nodes", "MAKE", ok({"success": False}))
                                      + call("b", "mps_mcp_query_types", "IS_SUBTYPE", ok(None)))
        self.assertCounts(built_and_failed, T_type_queries=1, T_type_queries_before_make=0, M_makes=1, G_errors=0)

    def test_gn_generation_operations_counted(self) -> None:
        events = []
        for i, (operation, extra) in enumerate([
                ("PLAN", {"model": SAMPLES}), ("TRANSIENT_MODELS", {"model": SAMPLES}),
                (" transient_models ", {}), ("TRACE", BACKWARD),
                ("trace", {"nodeReference": SAMPLES + "/12157282221949763", "direction": " forward "}),
                ("TRACE", {"nodeReference": TRANSIENT_NODE, "direction": "backward"}),
                ("DROP_TRANSIENT_MODELS", {}), ("NO_SUCH_OPERATION", {})]):
            events += gen(f"g{i}", operation, extra)
        self.assertCounts(self.count(events), GN_plan=1, GN_transient_models=2, GN_trace=3, GN_trace_backward=2,
                          GN_drop=1, GN_trace_before_fix=3, tool_uses=8)

    def test_m_makes_save_transient_string_and_object_parameters(self) -> None:
        events = []
        for i, (parameters, payload) in enumerate([
                ({"models": [SAMPLES], "saveTransientModels": True}, None),
                (json.dumps({"models": [SAMPLES], "saveTransientModels": True}), None),
                ({"models": [SAMPLES], "saveTransientModels": "TRUE"}, None),  # the server accepts the string form
                ({"models": [SAMPLES], "saveTransientModels": "yes"}, None),   # the server rejects it
                ({"models": [SAMPLES], "saveTransientModels": False}, None),
                ({"models": [SAMPLES]}, None), ("not json", None),
                ({"models": [SAMPLES + "/12157282221949763"], "saveTransientModels": True}, REJECTED)]):
            events += call(f"m{i}", "mps_mcp_alter_nodes", "MAKE", parameters, payload)
        self.assertCounts(self.count(events), M_makes=8, M_makes_save_transient=3, G_errors=1)
        self.assertEqual({}, families.params({"parameters": "[1, 2]"}))

    def test_gn_trace_before_fix_window_closes_on_an_accepted_generator_write(self) -> None:
        f = self.count(gen("a", "TRACE", BACKWARD)
                       + write("s", "mps_mcp_update_node", {"operation": "SET", "kind": "PROPERTY", "properties": [
                           [SAMPLES + "/12157282221949763", "servings", "3"]]})
                       + call("k", "mps_mcp_alter_nodes", "MAKE", {"modules": [TEMPLATES]})
                       + write("r", "mps_mcp_update_node", {"operation": "SET", "kind": "CHILD",
                                                            "childNodeRef": TEMPLATE_NODE}, {"ok": False, "error": "bad"})
                       + gen("b", "TRACE", BACKWARD)
                       + gen("x", "TRACE", BACKWARD, NOT_FOUND)
                       + write("p", "mps_mcp_parse_java_and_insert", {"parameters": json.dumps(
                           {"code": "x", "insert": {"mode": "replace", "targetRef": TEMPLATE_NODE}})})
                       + gen("c", "TRACE", BACKWARD))
        self.assertCounts(f, GN_trace=4, GN_trace_backward=4, GN_trace_before_fix=2, G_errors=2)
        for name, inp in [("mps_mcp_update_node", {"nodeReference": TEMPLATE_NODE}),
                          ("mps_mcp_insert_root_node_from_json",
                           {"modelReference": "mcp.study.recipes.generator.templates@generator"}),
                          ("mps_mcp_create_root_node", {"modelReference": TEMPLATES}),
                          ("mps_mcp_update_root_node_from_json", {"nodeReference": TEMPLATES + "/4956319657762963862"}),
                          ("mps_mcp_apply_intention", {"nodeReference": TEMPLATE_NODE}),
                          ("mps_mcp_alter_nodes", {"operation": "MOVE_CHILD", "parameters": {"nodeReference": TEMPLATE_NODE}})]:
            with self.subTest(tool=name):
                f = self.count(write("w", name, inp) + gen("t", "TRACE", BACKWARD))
                self.assertCounts(f, GN_trace=1, GN_trace_before_fix=0)

    def test_gn_a_trace_without_steps_is_not_tracing(self) -> None:
        f = self.count(gen("o", "TRACE", {"nodeReference": SAMPLES + "/12157282221949763", "direction": "BACKWARD"},
                           NO_STEPS)
                       + template_print("a") + gen("p", "TRACE", BACKWARD, ok("/tmp/mps-node-1.json"))
                       + template_print("b"))
        self.assertCounts(f, GN_trace=2, GN_trace_backward=2, GN_trace_before_fix=1, GN_template_prints=2,
                          GN_template_prints_before_trace=1)
        self.assertFalse(families.trace_found(json.dumps(FOUND), True))
        empty_steps = ok({"steps": [{"input": "mcp.study.kitchen.samples@0", "changes": []}]})
        self.assertFalse(families.trace_found(json.dumps(empty_steps), False))
        self.assertTrue(families.trace_found(json.dumps(ok({"steps": [{"nodes": [{"reference": "x"}]}]})), False))
        self.assertFalse(families.trace_found(json.dumps(ok("no trace")), False))

    def test_gn_template_prints_before_trace(self) -> None:
        f = self.count(template_print("a") + template_print("b")
                       + [tool("s", PRINT, {"nodeReference": SAMPLES + "/12157282221949763"}),
                          result("s", ok({"concept": "Recipe"}))]
                       + gen("n", "TRACE", BACKWARD, NOT_FOUND)
                       + template_print("c") + gen("t", "TRACE", BACKWARD) + template_print("d"))
        self.assertCounts(f, GN_template_prints=4, GN_template_prints_before_trace=3, GN_trace=2,
                          GN_trace_before_fix=1)
        never_traced = self.count(template_print("a"))
        self.assertCounts(never_traced, GN_template_prints=1, GN_template_prints_before_trace=1)

    def test_gn_transient_reads_match_transient_step_models_only(self) -> None:
        events = []
        for i, (name, inp) in enumerate([
                ("mps_mcp_print_node", {"nodeReference": TRANSIENT_NODE}),
                ("mps_mcp_get_project_structure", {"startingPoint": TRANSIENT_MODEL, "includeRootNodes": True}),
                ("mps_mcp_query_nodes", {"operation": "FIND_INSTANCES", "parameters": {
                    "conceptRef": "jetbrains.mps.baseLanguage.structure.IntegerConstant", "scope": "models",
                    "models": [TRANSIENT_MODEL]}}),
                ("mps_mcp_query_nodes", {"operation": "FIND_INSTANCES", "parameters": json.dumps({
                    "conceptRef": "jetbrains.mps.baseLanguage.structure.StringLiteral", "scope": "roots",
                    "roots": [TRANSIENT_MODEL + "/4956319657763309877"]})}),
                ("mps_mcp_check_root_node_problems", {"nodeReference": TRANSIENT_MODEL}),
                ("mps_mcp_print_node", {"nodeReference": "i:10000009(mcp.study.kitchen@transient12/mcp.study.kitchen.samples@6_7)/9"}),
                ("mps_mcp_get_project_structure", {"startingPoint": CHECKPOINT_MODEL}),
                ("mps_mcp_get_project_structure", {"startingPoint": DESCRIPTOR_MODEL}),
                ("mps_mcp_print_node", {"nodeReference": SAMPLES + "/12157282221949763"}),
                ("mps_mcp_get_project_structure", {"startingPoint": "mcp.study.kitchen.samples@2_0"}),
                ("mps_mcp_query_nodes", {"operation": "FIND_INSTANCES", "parameters": {"scope": "models", "models": [SAMPLES]}}),
                ("mps_mcp_update_node", {"nodeReference": TRANSIENT_NODE})]):
            events += [tool(f"r{i}", "mcp__mps__" + name, inp), result(f"r{i}", ok("x"))]
        self.assertCounts(self.count(events), GN_transient_reads=6)

    def test_generation_is_read_only_for_check_verdict(self) -> None:
        f = self.count(check("m", MODEL, MODEL_CLEAN) + gen("t", "TRACE", BACKWARD)
                       + gen("d", "DROP_TRANSIENT_MODELS", {}) + check("a", NODE, NODE_CLEAN))
        self.assertCounts(f, C_root_after_clean_model=1, GN_trace=1, GN_drop=1)

    def test_t24_builder_prints_count_by_concept_else_by_the_dataflow_model(self) -> None:
        builder = "r:5784598d-868b-437e-9c58-15fb07e7f373(jetbrains.mps.samples.Kaja.dataFlow)/6630310702469676828"
        f = self.count(printed("a", "DataFlowBuilderDeclaration")
                       + printed("b", "jetbrains.mps.lang.dataFlow.structure.DataFlowBuilderDeclaration")
                       + printed("c", "SubtypingRule")
                       + [tool("t", PRINT, {"nodeReference": builder, "format": "PLAIN TEXT"}),
                          result("t", ok("data flow builder for IfStatement { … }")),
                          tool("s", PRINT, {"nodeReference": builder + "1"}),
                          result("s", ok({"name": "s", "concept": "EmitJumpStatement"}))])
        self.assertCounts(f, DF_builder_prints=3, T_rule_prints=1, tool_uses=5)

    def test_t25_console_runs_count_and_reset_the_clean_verdict(self) -> None:
        f = self.count(check("m", MODEL, MODEL_CLEAN)
                       + [tool("r", "mcp__mps__mps_mcp_run_console_command", {}), result("r", ok({"executed": True}))]
                       + check("a", NODE, NODE_CLEAN))
        self.assertCounts(f, DF_console_runs=1, C_root_after_clean_model=0)

    def test_t26_dataflow_queries_count_by_operation_and_keep_the_clean_verdict(self) -> None:
        def query(tool_id: str, operation: str, payload) -> list[dict]:
            return [tool(tool_id, "mcp__mps__mps_mcp_query_dataflow", {"operation": operation, "parameters": {"nodeReference": NODE}}),
                    result(tool_id, payload)]
        rejected = {"ok": False, "code": "INVALID_REQUEST", "error": "Unknown operation"}
        f = self.count(check("m", MODEL, MODEL_CLEAN)
                       + query("p", "PRINT_PROGRAM", ok({"instructions": []}))
                       + query("q", " print_program ", ok({"instructions": []}))
                       + query("w", "REACHING_WRITES", ok({"reads": []}))
                       + query("r", "reaching_reads", ok({"writes": []}))
                       + query("x", "REACHING_DEFINITIONS", rejected)
                       + check("a", NODE, NODE_CLEAN))
        self.assertCounts(f, DF_queries=5, DF_program_prints=2, DF_reaching_queries=2, G_errors=1,
                          C_root_after_clean_model=1, DF_builder_prints=0, DF_console_runs=0)

    def test_t27_editor_test_runs_and_run_configurations_count_by_bare_name(self) -> None:
        f = self.count([tool("c", "mcp__mps__mps_mcp_create_run_configuration", {"modelReference": MODEL}),
                        result("c", ok({"name": "tests"})),
                        tool("r1", "mcp__mps__execute_run_configuration", {"configurationName": "tests"}),
                        result("r1", {"exitCode": 1}),
                        tool("r2", "mcp__mps__execute_run_configuration", {"configurationName": "tests"}),
                        result("r2", {"exitCode": 0})])
        self.assertCounts(f, ET_test_runs=2, ET_run_configs=1)

    def test_t28_platform_ids_and_applicability_count_accepted_writes_only(self) -> None:
        bootstrap = {"concept": "jetbrains.mps.lang.test.structure.InvokeActionStatement", "children": [
            {"role": "actionReference", "nodes": [{"concept": "jetbrains.mps.lang.test.structure.BootstrapActionReference",
                                                   "properties": [{"name": "actionId", "value": "$Undo"}]}]}]}
        applicable = {"concept": "jetbrains.mps.lang.test.structure.IsActionApplicableExpression"}
        f = self.count(write("a", "mps_mcp_update_node", {"operation": "ADD", "kind": "CHILD", "childJson": bootstrap})
                       + write("b", "mps_mcp_update_node", {"operation": "SET", "kind": "PROPERTY",
                                                            "properties": [[NODE, "actionId", "$Paste"]]})
                       + write("c", "mps_mcp_update_node", {"operation": "ADD", "kind": "CHILD",
                                                            "childJson": json.dumps(applicable)})
                       + write("d", "mps_mcp_update_node", {"operation": "ADD", "kind": "CHILD", "childJson": bootstrap},
                               REJECTED)
                       + write("e", "mps_mcp_update_node", {"operation": "SET", "kind": "PROPERTY",
                                                            "properties": [[NODE, "name", "$CopyThisDown"]]})
                       + call("m", "mps_mcp_alter_nodes", "MAKE", {"models": [MODEL], "note": "$Undo"}))
        self.assertCounts(f, ET_platform_id_writes=2, ET_applicability_writes=1, ET_ide_service_writes=0)

    def test_t29_ide_service_writes_count_attempts_too(self) -> None:
        java = "UndoManager.getInstance(project).undo(FileEditorManager.getInstance(project).getSelectedEditor());"
        f = self.count(write("p", "mps_mcp_parse_java_and_insert", {"parameters": {"code": java}})
                       + write("q", "mps_mcp_parse_java_and_insert",
                               {"parameters": json.dumps({"code": "DataManager.getInstance().getDataContext(c);"})},
                               REJECTED)
                       + write("r", "mps_mcp_update_node", {"operation": "ADD", "kind": "CHILD",
                                                            "childJson": {"concept": "x.EditorComponentExpression"}}))
        self.assertCounts(f, ET_ide_service_writes=2, ET_platform_id_writes=0)

    def test_t30_runtime_source_reads_skip_the_run_project_and_the_language_editor(self) -> None:
        hunts = [("Read", {"file_path": "/m/plugins/mps-testing/languages/lang.test/solutions/jetbrains.mps.lang.test.runtime/"
                                       "source_gen/jetbrains/mps/lang/test/runtime/BaseEditorTestBody.java"}),
                 ("Grep", {"pattern": "invokeAction", "path": "/m/testbench/testsolutions/bl.test/test_gen"}),
                 ("Bash", {"command": "grep -rn pasteWithRemove /m/editor/editor-runtime/source/jetbrains/mps/nodeEditor/"}),
                 ("Glob", {"pattern": "**/EditorTestUtil.java"}),
                 ("mcp__mps__read_file", {"path": "/m/editor/x/CellAction_PasteNode.java"})]
        routes = [("Read", {"file_path": "/p/solutions/mcp.study.recipes.editortests/test_gen/mcp/study/recipes/"
                                        "editortests/UndoStepText_Test.java"}),
                  ("Bash", {"command": "grep -n setCellId /p/languages/mcp.study.recipes/source_gen/mcp/study/recipes/"
                                       "editor/Step_EditorBuilder_a.java"}),
                  ("Read", {"file_path": "/p/.claude/skills/mps-tests/references/editor-test-case/statements-and-actions.md"})]
        events = []
        for i, (name, inp) in enumerate(hunts + routes):
            events += [tool(f"s{i}", name, inp), result(f"s{i}", "text")]
        self.assertCounts(self.count(events), ET_runtime_source_reads=len(hunts))

    def test_t31_temp_file_blueprints_are_read_from_the_earlier_write_or_the_disk(self) -> None:
        written = "/tmp/bp-undo.json"
        on_disk = Path(self.temp_dir.name) / "bp-applicable.json"
        on_disk.write_text(json.dumps({"concept": "jetbrains.mps.lang.test.structure.IsActionApplicableExpression"}))
        undo = json.dumps({"concept": "jetbrains.mps.lang.test.structure.BootstrapActionReference",
                           "properties": [{"name": "actionId", "value": "$Undo"}]})
        f = self.count([tool("w", "Write", {"file_path": written, "content": undo}), result("w", "ok")]
                       + write("a", "mps_mcp_update_node", {"operation": "ADD", "kind": "CHILD", "childJson": written})
                       + write("b", "mps_mcp_update_root_node_from_json", {"operation": "UPDATE", "json": str(on_disk)})
                       + write("c", "mps_mcp_update_node", {"operation": "ADD", "kind": "CHILD",
                                                            "childJson": "/tmp/gone-since.json"}))
        self.assertCounts(f, ET_platform_id_writes=1, ET_applicability_writes=1)

    def test_t32_runtime_source_reads_ignore_code_and_patterns_that_are_not_paths(self) -> None:
        heredoc = "cat > /tmp/t.java <<'EOF'\nEditorTestUtil.runWithTwoStepDeletion(() -> { }, false);\nEOF"
        calls = [("Bash", {"command": heredoc}),
                 ("Bash", {"command": "grep -rn EditorTestUtil /p/solutions/mcp.study.recipes.editortests/test_gen"}),
                 ("Grep", {"pattern": "BaseEditorTestBody", "path": "/p/.claude/skills"}),
                 ("Bash", {"command": "cat /m/plugins/mps-testing/x/lang/test/runtime/BaseEditorTestBody.java"})]
        events = []
        for i, (name, inp) in enumerate(calls):
            events += [tool(f"s{i}", name, inp), result(f"s{i}", "text")]
        self.assertCounts(self.count(events), ET_runtime_source_reads=1)

    def test_t33_generator_test_writes_options_plans_and_the_nodes_test_route(self) -> None:
        gentest = {"concept": "jetbrains.mps.lang.test.generator.structure.GeneratorTest", "children": [
            {"role": "arguments", "nodes": [{"concept": "jetbrains.mps.lang.test.generator.structure.ModelMatchOptions"}]}]}
        plan = {"concept": "jetbrains.mps.lang.generator.plan.structure.Plan", "children": [
            {"role": "steps", "nodes": [{"concept": "jetbrains.mps.lang.generator.plan.structure.Transform"}]}]}
        assertion = {"concept": "jetbrains.mps.lang.test.generator.structure.TransformationMatchAssertion"}
        f = self.count(write("a", "mps_mcp_insert_root_node_from_json", {"json": gentest})
                       + write("b", "mps_mcp_update_node", {"operation": "ADD", "kind": "CHILD",
                                                            "childJson": json.dumps(assertion)})
                       + write("c", "mps_mcp_insert_root_node_from_json", {"json": plan})
                       + write("d", "mps_mcp_insert_root_node_from_json", {"json": gentest}, REJECTED)
                       + write("e", "mps_mcp_create_root_node", {"concept": "jetbrains.mps.lang.test.structure.NodesTestCase"},
                               REJECTED)
                       + write("f", "mps_mcp_parse_java_and_insert",
                               {"parameters": {"code": "new GenerationFacade(repo, opts).process(m, model);"}})
                       + write("g", "mps_mcp_insert_root_node_from_json",
                               {"json": {"concept": "x.GeneratorTestSuite"}}))
        self.assertCounts(f, GT_generator_test_writes=2, GT_match_options_writes=1, GT_plan_writes=1,
                          GT_nodes_test_writes=2)

    def test_t33_concept_refs_count_like_names(self) -> None:
        f = self.count(write("a", "mps_mcp_create_root_node",
                             {"conceptReference": "c:68015e26-cc4d-49db-8715-b643faea1769/554465258093187774"})
                       + write("b", "mps_mcp_update_node", {"operation": "ADD", "kind": "CHILD", "childJson": {
                           "concept": "c:68015e26-cc4d-49db-8715-b643faea1769/8945822034016668031"}})
                       + write("c", "mps_mcp_create_root_node",
                               {"conceptReference": "c:7ab1a6fa-0a11-4b95-9e48-75f363d6cb00/1820634577908471803"})
                       + write("d", "mps_mcp_create_root_node",
                               {"conceptReference": "c:8585453e-6bfb-4d80-98de-b16074f1d86c/1216913645126"}, REJECTED)
                       + write("e", "mps_mcp_create_root_node",
                               {"conceptReference": "c:68015e26-cc4d-49db-8715-b643faea1769/5544652580931877740"}))
        self.assertCounts(f, GT_generator_test_writes=1, GT_match_options_writes=1, GT_plan_writes=1,
                          GT_nodes_test_writes=1)

    def test_t34_do_not_generate_tool_calls_and_workarounds(self) -> None:
        console = "((GeneratableSModel) m).setDoNotGenerate(true);"
        calls = [("mcp__mps__mps_mcp_update_model", {"modelReference": MODEL, "operation": "SET_DO_NOT_GENERATE"}, ok({})),
                 ("mcp__mps__mps_mcp_update_model", {"modelReference": MODEL, "operation": "set_do_not_generate"},
                  {"ok": False, "error": "x"}),
                 ("mcp__mps__mps_mcp_update_model", {"modelReference": MODEL, "operation": "RENAME"}, ok({})),
                 ("mcp__mps__mps_mcp_parse_java_and_insert",
                  {"parameters": {"code": console, "featureKind": "STATEMENTS", "insert": {"mode": "console"}}}, ok({})),
                 ("mcp__mps__mps_mcp_run_console_command", {"command": console}, ok({})),
                 ("Edit", {"file_path": "/p/solutions/x/models/x.input.mps", "old_string": "<model",
                           "new_string": "<model doNotGenerate=\"true\""}, "ok"),
                 ("Bash", {"command": "sed -i '' 's/<model /<model doNotGenerate=\"true\" /' /p/models/x.mps"}, "ok"),
                 ("Bash", {"command": "grep -rn doNotGenerate /p/.claude/skills/mps-tests"}, "ok"),
                 ("Bash", {"command": "python3 -c \"print('doNotGenerate' in open('/p/models/x.mps').read())\""}, "ok"),
                 ("mcp__mps__apply_patch", {"patch": "--- a/p/models/x.mps\n+<model doNotGenerate=\"true\""}, "ok"),
                 ("Edit", {"file_path": "/p/notes.md", "old_string": "a", "new_string": "doNotGenerate"}, "ok")]
        events = []
        for i, (name, inp, res) in enumerate(calls):
            events += [tool(f"d{i}", name, inp), result(f"d{i}", res)]
        self.assertCounts(self.count(events), GT_do_not_generate_calls=1, GT_do_not_generate_workarounds=5)

    def test_t35_generator_runtime_kitchen_reads_and_parser_inserts(self) -> None:
        hunts = [("Read", {"file_path": "/m/plugins/mps-testing/languages/gentest.rt/source_gen/jetbrains/mps/lang/test/"
                                       "generator/rt/ModelMatcher.java"}),
                 ("Grep", {"pattern": "assertMatch", "path": "/m/testbench/testsolutions/generator-tests/smodel"}),
                 ("Bash", {"command": "cat /m/core/kernel/source/jetbrains/mps/smodel/SNodeMatcher.java"})]
        kitchen = [("Read", {"file_path": "/p/solutions/mcp.study.kitchen/source_gen/mcp/study/generated/Crepes.java"})]
        routes = [("Read", {"file_path": "/p/solutions/mcp.study.recipes.gentests/test_gen/mcp/study/recipes/gentests/"
                                        "RecipeClasses.java"}),
                  ("Bash", {"command": "ls /p/languages/mcp.study.recipes/generator/source_gen"})]
        events = []
        for i, (name, inp) in enumerate(hunts + kitchen + routes):
            events += [tool(f"s{i}", name, inp), result(f"s{i}", "text")]
        expected = {"code": "package mcp.study.generated; public class Tea {}", "featureKind": "CLASS",
                    "insert": {"mode": "root", "modelRef": "r:1(mcp.study.recipes.gentests.expected)"}}
        into_tests = {"code": "int x;", "featureKind": "STATEMENTS",
                      "insert": {"mode": "child", "modelRef": "r:2(mcp.study.recipes.gentests@tests)"}}
        events += (write("p1", "mps_mcp_parse_java_and_insert", {"parameters": expected})
                   + write("p2", "mps_mcp_parse_java_and_insert", {"parameters": json.dumps(expected)}, REJECTED)
                   + write("p3", "mps_mcp_parse_java_and_insert", {"parameters": into_tests}))
        self.assertCounts(self.count(events), GT_runtime_source_reads=len(hunts), GT_kitchen_source_reads=1,
                          GT_expected_parser_inserts=1, ET_runtime_source_reads=1)

    def test_t36_generation_plan_attachment_maintenance_and_workarounds(self) -> None:
        plans = "r:5f00(mcp.study.plans.kitchen@genplan)"
        plan = {"concept": "jetbrains.mps.lang.generator.plan.structure.Plan",
                "properties": [{"name": "name", "value": "P"}]}
        fork = {"concept": "jetbrains.mps.lang.generator.plan.structure.Fork", "children": [{"role": "filter", "nodes": [
            {"concept": "jetbrains.mps.lang.generator.plan.structure.ParameterEquals"}]}]}
        events = (write("g1", "mps_mcp_create_model", {"moduleName": "mcp.study.plans", "modelName": "a@genplan"})
                  + write("g2", "mps_mcp_create_model", {"moduleName": "mcp.study.plans", "modelName": "a.tests@tests"})
                  # four plan roots, one of them through a temp-file blueprint holding two
                  + write("r1", "mps_mcp_insert_root_node_from_json", {"modelReference": plans, "json": plan})
                  + [tool("w1", "Write", {"file_path": "/tmp/two.json", "content": json.dumps([plan, plan])}), result("w1", "ok")]
                  + write("r2", "mps_mcp_insert_root_node_from_json", {"modelReference": plans, "json": "/tmp/two.json"})
                  + write("r3", "mps_mcp_insert_root_node_from_json", {"modelReference": plans, "json": json.dumps(plan)})
                  # a fifth plan root re-authors instead of editing
                  + write("r4", "mps_mcp_insert_root_node_from_json", {"modelReference": plans, "json": plan})
                  + write("r5", "mps_mcp_insert_root_node_from_json", {"modelReference": MODEL, "json": plan})
                  + write("u1", "mps_mcp_update_node", {"operation": "ADD", "kind": "CHILD", "nodeReference": plans + "/1",
                                                        "childRole": "steps", "childJson": fork})
                  + write("u2", "mps_mcp_update_node", {"operation": "SET", "kind": "PROPERTY",
                                                        "properties": [[plans + "/2", "name", "afterRecipes"]]})
                  + write("u3", "mps_mcp_update_node", {"operation": "SET", "kind": "PROPERTY",
                                                        "properties": [[NODE, "name", "x"]]})
                  + call("m1", "mps_mcp_alter_nodes", "MOVE_CHILD", {"childNodeRef": plans + "/3", "position": 0})
                  + call("m2", "mps_mcp_alter_nodes", "MAKE", {"modules": ["mcp.study.kitchen"], "rebuild": True})
                  + call("m3", "mps_mcp_alter_nodes", "MAKE", '{"modules": ["mcp.study.pantry"], "rebuild": "true"}', REJECTED)
                  + call("m4", "mps_mcp_alter_nodes", "MAKE", {"modules": ["mcp.study.pantry"]})
                  + write("s1", "mps_mcp_update_module", {"moduleName": "dk", "operation": "SET_GENERATION_PLAN",
                                                          "planModel": plans})
                  + write("s2", "mps_mcp_update_module", {"moduleName": "mcp.study.recipes", "operation": "SET_GENERATION_PLAN",
                                                          "planModel": plans}, {"ok": False, "error": "Language"})
                  + write("e1", "mps_mcp_module_dependency", {"moduleName": "dk", "targetModule": "mcp.study.plans",
                                                              "operation": "ADD"}, ok({"added": True, "devkitCollection": "exportedSolutions"}))
                  + write("e2", "mps_mcp_module_dependency", {"moduleName": "dk", "targetModule": "mcp.study.plans",
                                                              "operation": "DELETE"}, ok({"removed": True, "devkitCollections": ["exportedSolutions"]}))
                  + write("e3", "mps_mcp_module_dependency", {"moduleName": "s", "targetModule": "t", "operation": "ADD"},
                          ok({"added": True}))
                  + write("k1", "mps_mcp_model_used_language", {"modelReference": SAMPLES, "kind": "devkit",
                                                                "usedLanguage": "dk", "operation": "ADD"})
                  + write("k2", "mps_mcp_model_used_language", {"modelReference": SAMPLES, "kind": "language",
                                                                "usedLanguage": "x", "operation": "ADD"})
                  + write("f1", "mps_mcp_update_module_facet", {"moduleName": "mcp.study.pantry", "facetType": "generator",
                                                                "settingsJson": {"plan": plans}}, {"ok": False, "error": "x"})
                  + write("f2", "mps_mcp_update_module_facet", {"moduleName": "s", "facetType": "tests", "enabled": True})
                  + gen("p1", "PLAN", {"model": SAMPLES, "detail": "steps"}, ok({}))
                  + gen("p2", "PLAN", '{"model": "x", "detail": "STEPS"}', ok({}))
                  + gen("p3", "PLAN", {"model": SAMPLES}, ok({}))
                  + write("q1", "mps_mcp_get_project_structure",
                          {"startingPoint": "r:342b977c-a485-4fdb-b891-66244eff644a(jetbrains.mps.generator.extensions.common)"}))
        hacks = [("mcp__mps__mps_mcp_run_console_command", {"command": "dk.getModuleDescriptor().setAssociatedPlan(ref);"}),
                 ("mcp__mps__mps_mcp_parse_java_and_insert",
                  {"parameters": {"code": "((DevkitDescriptor) d).getExportedSolutions().add(r);",
                                  "insert": {"mode": "console"}}}),
                 ("mcp__mps__mps_mcp_run_console_command", {"command": "println(model.name);"}),
                 ("Edit", {"file_path": "/p/devkits/dk/dk.devkit", "old_string": "/>", "new_string": "><generation-plan/>"}),
                 ("Bash", {"command": "sed -i '' 's/x/y/' /p/solutions/s/s.msd"}),
                 ("Bash", {"command": "cat /p/devkits/dk/dk.devkit"}),
                 ("Bash", {"command": "cd /p; find . -name '*.msd' -o -name '*.devkit' | grep -v '/\\.claude'; ls"}),
                 ("Read", {"file_path": "/p/solutions/mcp.study.pantry/mcp.study.pantry.msd"}),
                 ("Read", {"file_path": "/p/solutions/mcp.study.pantry/source_gen/mcp/study/generated/Porridge.java"})]
        for i, (name, inp) in enumerate(hacks):
            events += [tool(f"h{i}", name, inp), result(f"h{i}", "ok")]
        self.assertCounts(self.count(events), GP_genplan_models=1, GP_param_equals_writes=1, GP_set_plan_calls=1,
                          GP_devkit_export_calls=1, GP_devkit_used_calls=1, GP_plan_facet_writes=1,
                          GP_attach_workarounds=4, GP_descriptor_reads=2, GP_plan_edits=3, GP_plan_root_reinserts=1,
                          GP_plan_steps_detail=2, GP_rebuild_makes=1, GP_param_model_reads=1, GN_plan=3)

    def test_a16_adhoc_python_counts_inline_code_after_switches(self) -> None:
        inline = ["python3 -c 'print(1)'", "python3 -I -c 'import json'", "python3 -I - <<'PY'\nprint(1)\nPY",
                  "cat r.json | python3 -I -", "python3 -IS -c 'x'", "python3 -Ic 'x'", "python -u -X utf8 -c 'x'",
                  "python3.12 -I -c 'x'", "python3 <<'PY'\nprint(1)\nPY", "python3 -I <<'PY'\nprint(1)\nPY",
                  "python3 - <<EOF\nEOF", "python3 -I -<<EOF\nEOF", "/usr/bin/python3 -I -c 'x'"]
        scripts = ["python3 scripts/check.py -c x", "python3 -I scripts/check.py", "python3 -m json.tool r.json",
                   "python3 -I -m json.tool", "python3 --version", "ipython -c x"]
        events = []
        for i, cmd in enumerate(inline + scripts):
            events += [tool(f"b{i}", "Bash", {"command": cmd}), result(f"b{i}", "ok")]
        self.assertCounts(self.count(events), Bp_adhoc_python=len(inline))

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


def message(text: str, count: int = 1, node: str | None = None, **extra) -> dict:
    return {"severity": "error", "message": text, "count": count, "node": node or f"{MODEL}/n-{text}", **extra}


def sampled_row(name: str, *messages: dict, **extra) -> dict:
    """A perRoot row with problems whose `messages` are given."""
    return {**row(name, errors=sum(m["count"] for m in messages)), "messages": list(messages), **extra}


ROOT_A, ROOT_B = f"{MODEL}/a", f"{MODEL}/b"
UNREACHABLE = message("Error: Unreachable command", count=3, node=f"{MODEL}/a1")  # round 44, S16-opus-1:16


class NodeSampleTest(unittest.TestCase):
    """D119: a node check after a perRoot row that named every text but not every node."""

    def setUp(self) -> None:
        self._tmp = tempfile.TemporaryDirectory()
        self.runs = Path(self._tmp.name) / "runs"
        self.runs.mkdir()

    def tearDown(self) -> None:
        self._tmp.cleanup()

    def count(self, events: list[dict]) -> collections.Counter:
        (self.runs / "S16-opus-1-worker.jsonl").write_text("\n".join(json.dumps(e) for e in events) + "\n")
        return families.rows([str(self.runs)])[0][2]

    def columns(self, answer: dict, ref: str, **extra) -> tuple[int, int]:
        """(C_after_summary, C_after_node_sample) for one perRoot check answered `answer`, then a check of `ref`."""
        f = self.count(check("m", MODEL, answer, perRoot=True) + check("a", ref, NODE_CLEAN, **extra))
        return f["C_after_summary"], f["C_after_node_sample"]

    def test_a1_mps40338_count_above_one_is_sampled(self) -> None:
        f = self.count(check("m", MODEL, ok([sampled_row("a", UNREACHABLE), row("b")], scope="model"), perRoot=True)
                       + check("a", ROOT_A, NODE_CLEAN))
        self.assertEqual((0, 1, 1), (f["C_after_summary"], f["C_after_node_sample"], f["C_after_node_sample_batches"]))

    def test_a2_listed_nodes_are_not_sampled(self) -> None:
        listed = {**UNREACHABLE, "nodes": [f"{MODEL}/a1", f"{MODEL}/a2"]}
        self.assertEqual((1, 0), self.columns(ok([sampled_row("a", listed)], scope="model", nodesPerMessage=5), ROOT_A))

    def test_a3_more_nodes_is_sampled(self) -> None:
        cut = {**UNREACHABLE, "count": 7, "nodes": [f"{MODEL}/a{i}" for i in range(5)], "moreNodes": 2}
        self.assertEqual((0, 1), self.columns(ok([sampled_row("a", cut)], scope="model", nodesPerMessage=5), ROOT_A))

    def test_a3b_count_above_one_without_more_nodes_is_not_sampled_on_a_listing_server(self) -> None:
        # one node, or nodeless model-level items mixed in: the server gives only `node`
        self.assertEqual((1, 0), self.columns(ok([sampled_row("a", UNREACHABLE)], scope="model", nodesPerMessage=5), ROOT_A))

    def test_a4_cut_texts_stay_a_summary(self) -> None:
        answer = ok([sampled_row("a", UNREACHABLE, moreMessages=2)], scope="model", messagesPerRow=1)
        self.assertEqual((1, 0), self.columns(answer, ROOT_A))

    def test_a5_counts_only_rows_stay_a_summary(self) -> None:
        self.assertEqual((1, 0), self.columns(ok([row("a", errors=3)], scope="model"), ROOT_A))

    def test_a6_quick_fix_recheck_stays_a_summary(self) -> None:
        # round 44, S5-sonnet-1:3 -> :8
        fixable = message("The reference  Saffron (ingredient) is out of search scope", hasQuickFixes=True)
        self.assertEqual((1, 0), self.columns(ok([sampled_row("a", fixable)], scope="model"), ROOT_A))

    def test_a7_the_check_is_attributed_to_its_row(self) -> None:
        answer = ok([sampled_row("a", UNREACHABLE), sampled_row("b", message("once"))], scope="model")
        self.assertEqual((1, 0), self.columns(answer, ROOT_B))
        self.assertEqual((0, 1), self.columns(answer, f"{MODEL}/a1"))
        self.assertEqual((1, 0), self.columns(answer, f"{MODEL}/n-once"))
        self.assertEqual((1, 0), self.columns(answer, f"{MODEL}/unlisted"))

    def test_a7_a_root_match_wins_over_its_own_message(self) -> None:
        # the root carries an unsampled message of its own (S5's Salt row), and the row has a sampled one
        answer = ok([sampled_row("a", message("own", node=ROOT_A), UNREACHABLE)], scope="model")
        self.assertEqual((0, 1), self.columns(answer, ROOT_A))

    def test_a8_module_rows_match_by_model_and_ignore_the_module_prefix(self) -> None:
        model_row = {"model": MODEL, "name": "m", "rootsChecked": 2, "errors": 3, "warnings": 0, "messages": [UNREACHABLE]}
        answer = ok([model_row], scope="module")
        self.assertEqual((0, 1), self.columns(answer, f"{MODEL}/deep"))
        self.assertEqual((0, 1), self.columns(answer, "6b0c8e9a-1111-2222-3333-444455556666/" + f"{MODEL}/deep"))
        prefixed = {**model_row, "model": "6b0c8e9a-1111-2222-3333-444455556666/" + MODEL}
        self.assertEqual((0, 1), self.columns(ok([prefixed], scope="module"), f"{MODEL}/deep"))

    def test_a9_a_write_between_resets_the_summary(self) -> None:
        f = self.count(check("m", MODEL, ok([sampled_row("a", UNREACHABLE)], scope="model"), perRoot=True)
                       + [tool("u", "mcp__mps__mps_mcp_update_node", {}), result("u", ok("updated"))]
                       + check("a", ROOT_A, NODE_CLEAN))
        self.assertEqual((0, 0), (f["C_after_summary"], f["C_after_node_sample"]))

    def test_a10_auto_apply_counts_once_then_resets(self) -> None:
        f = self.count(check("m", MODEL, ok([sampled_row("a", UNREACHABLE)], scope="model"), perRoot=True)
                       + check("a", ROOT_A, NODE_CLEAN, autoApplyQuickFixes=True) + check("b", ROOT_A, NODE_CLEAN))
        self.assertEqual((0, 1), (f["C_after_summary"], f["C_after_node_sample"]))


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
