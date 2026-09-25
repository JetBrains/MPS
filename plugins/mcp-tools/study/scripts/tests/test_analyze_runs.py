from __future__ import annotations

import csv
import importlib.util
import json
import os
import subprocess
import sys
import tempfile
import unittest
from pathlib import Path


ANALYZER = Path(__file__).resolve().parents[1] / "analyze_runs.py"
_SPEC = importlib.util.spec_from_file_location("analyze_runs", ANALYZER)
assert _SPEC is not None and _SPEC.loader is not None
analyzer = importlib.util.module_from_spec(_SPEC)
_SPEC.loader.exec_module(analyzer)

SKILLS = "/project/.claude/skills"
# Round 13's transcripts (directory `runs-r14`, see docs/d50-skill-navigation-plan.md), outside the
# repository; the test that checks D50's hand-measured numbers skips when they are absent.
ROUND13_RUNS = Path(os.environ.get("MCP_STUDY_ROUND13_RUNS",
                                   Path.home() / "MPSProjects" / "mcp-study" / "runs-r14"))


def assistant(tool_id: str, name: str, *, child: bool = False) -> dict:
    event = {
        "type": "assistant",
        "message": {"content": [{"type": "tool_use", "id": tool_id, "name": name, "input": {}}]},
    }
    if child:
        event["parent_tool_use_id"] = "parent-agent"
    return event


def result(tool_id: str, text: str, *, error: bool = False) -> dict:
    return {
        "type": "user",
        "message": {"content": [{"type": "tool_result", "tool_use_id": tool_id,
                                   "content": text, "is_error": error}]},
    }


def tool(tool_id: str, name: str, inp: dict, *, msg: str | None = None, usage: dict | None = None) -> dict:
    """One tool_use block as stream-json emits it: one event per block, `msg` shared by a batch."""
    message = {"id": msg or f"msg-{tool_id}", "content": [{"type": "tool_use", "id": tool_id, "name": name,
                                                           "input": inp}]}
    if usage is not None:
        message["usage"] = usage
    return {"type": "assistant", "message": message}


def call(tool_id: str, name: str, inp: dict, text: str = "x" * 10, **kwargs) -> list[dict]:
    return [tool(tool_id, name, inp, **kwargs), result(tool_id, text)]


def bash(tool_id: str, command: str, text: str = "x" * 10, **kwargs) -> list[dict]:
    return call(tool_id, "Bash", {"command": command}, text, **kwargs)


def read(tool_id: str, path: str, text: str = "x" * 10, **kwargs) -> list[dict]:
    return call(tool_id, "Read", {"file_path": path}, text, **kwargs)


def compaction(pre_tokens: int, duration_ms: int) -> dict:
    return {"type": "system", "subtype": "compact_boundary",
            "compact_metadata": {"trigger": "auto", "pre_tokens": pre_tokens, "duration_ms": duration_ms}}


INIT = {"type": "system", "subtype": "init", "cwd": "/project"}


class AnalyzeRunsTest(unittest.TestCase):
    def setUp(self) -> None:
        self.temp_dir = tempfile.TemporaryDirectory()
        self.runs = Path(self.temp_dir.name) / "runs"
        self.runs.mkdir()
        self.out = Path(self.temp_dir.name) / "out"

    def tearDown(self) -> None:
        self.temp_dir.cleanup()

    def write_run(self, run_id: str, events: list[dict], server: list[dict] | None,
                  meta: dict | None = None) -> None:
        (self.runs / f"{run_id}-worker.jsonl").write_text("".join(json.dumps(e) + "\n" for e in events))
        (self.runs / f"{run_id}.meta.json").write_text(json.dumps({"project": "/project", **(meta or {})}))
        if server is not None:
            (self.runs / f"{run_id}-server.jsonl").write_text(
                "".join(json.dumps(e) + "\n" for e in server)
            )

    def run_analyzer(self) -> subprocess.CompletedProcess[str]:
        return subprocess.run(
            [sys.executable, str(ANALYZER), str(self.runs), "--out", str(self.out)],
            text=True, capture_output=True, check=False,
        )

    def metrics(self) -> dict[str, str]:
        with (self.out / "metrics.csv").open(newline="") as stream:
            return next(csv.DictReader(stream))

    def test_rejections_surplus_delegation_and_persisted_warning(self) -> None:
        missing_project = "Unable to determine the target project for the current MCP tool call."
        missing_argument = "MCP tool call has been failed: No argument is passed for required parameter '…'"
        dispatched = '{"ok":false,"code":"INVALID_JSON","error":"bad"}'
        unknown = "MCP tool call has been failed: a different platform failure"
        events = [
            assistant("a", "mcp__server__mps_mcp_one"), result("a", "ok"),
            assistant("b", "mcp__server__mps_mcp_two"), result("b", missing_project, error=True),
            assistant("c", "mcp__server__mps_mcp_three"), result("c", missing_argument, error=True),
            assistant("d", "mcp__server__mps_mcp_four"), result("d", dispatched),
            assistant("e", "mcp__server__mps_mcp_five"), result("e", unknown, error=True),
            assistant("agent", "Agent"), result("agent", "mentions Agent in prose"),
            assistant("child-agent", "Agent", child=True), result("child-agent", "done"),
            assistant("bash", "Bash"), result("bash", "Agent Agent Agent"),
        ]
        server = [
            {"tool": "mps_mcp_one", "ok": True, "project": "/project"},
            # mps_mcp_three is the missing-argument call: the platform binds arguments inside the
            # dispatch, so the listener fires and the call IS logged.
            {"tool": "mps_mcp_three", "ok": False, "project": "/project"},
            {"tool": "mps_mcp_four", "ok": False, "project": "/project"},
            {"tool": "mps_mcp_five", "ok": False, "project": "/project"},
            {"tool": "mps_mcp_hidden", "ok": True, "project": "/project"},
            {"tool": "read_file", "ok": True, "project": "/project"},
        ]
        self.write_run("positive", events, server)

        completed = self.run_analyzer()

        self.assertEqual(0, completed.returncode, completed)
        self.assertTrue(json.loads(completed.stdout)["ok"])
        row = self.metrics()
        self.assertEqual("5", row["mps_calls"])
        self.assertEqual("1", row["pre_dispatch_rejections"])   # only the project-resolution one
        self.assertEqual("1", row["arg_validation_errors"])     # dispatched, so not subtracted
        self.assertEqual("4", row["expected_server_mps_calls"])
        self.assertEqual("5", row["server_mps_calls"])
        self.assertEqual("1", row["server_call_surplus"])       # mps_mcp_hidden, the delegated call
        self.assertEqual("1", row["agent_calls"])
        self.assertEqual(1, completed.stderr.count("WARNING:"), completed.stderr)
        self.assertIn("5 server MPS calls - (5 transcript MPS calls - 1 pre-dispatch rejections) = 1", completed.stderr)
        errors = json.loads((self.out / "errors.json").read_text())
        self.assertIn("server calls absent from the parent transcript", errors["positive"]["server_call_surplus_warning"])
        self.assertIn("## Measurement-integrity warnings", (self.out / "hotspots.md").read_text())

    def test_zero_and_missing_server_evidence_do_not_warn_but_negative_does(self) -> None:
        """A negative surplus means the slice is missing calls the transcript shows: an evidence
        gap, warned about since the lifecycle change. Zero and absent evidence stay silent."""
        events = [assistant("a", "mcp__server__mps_mcp_one"), result("a", "ok")]
        self.write_run("zero", events, [{"tool": "mps_mcp_one", "ok": True, "project": "/project"}])
        self.write_run("negative", events, [{"tool": "read_file", "ok": True, "project": "/project"}])
        self.write_run("missing", events, None)
        self.write_run("empty", events, [])

        completed = self.run_analyzer()

        self.assertEqual(0, completed.returncode, completed)
        self.assertEqual(1, completed.stderr.count("WARNING:"), completed.stderr)
        self.assertIn("MISSING from the slice", completed.stderr)
        with (self.out / "metrics.csv").open(newline="") as stream:
            rows = {row["run"]: row for row in csv.DictReader(stream)}
        self.assertEqual("0", rows["zero"]["server_call_surplus"])
        self.assertEqual("-1", rows["negative"]["server_call_surplus"])
        self.assertEqual("", rows["missing"]["server_call_surplus"])
        self.assertEqual("", rows["empty"]["server_call_surplus"])
        errors = json.loads((self.out / "errors.json").read_text())
        self.assertIsNotNone(errors["negative"]["server_call_surplus_warning"])
        self.assertTrue(all(errors[rid]["server_call_surplus_warning"] is None
                            for rid in ("zero", "missing", "empty")))


    def test_a_tool_authored_missing_parameter_rejection_counts_as_arg_validation(self) -> None:
        """D43 moved the rejection from the platform binder into the tool body. The column must
        count the new envelope, or round 10 would show the hotspot vanishing by relabelling."""
        rejection = ('{"ok":false,"error":"moduleName is required. Retry with moduleName set to …",'
                     '"code":"INVALID_REQUEST","details":{"missingParameters":["moduleName"]}}')
        events = [
            assistant("a", "mcp__server__mps_mcp_create_model"), result("a", rejection),
            assistant("b", "mcp__server__mps_mcp_create_model"), result("b", '{"ok":true}'),
        ]
        server = [
            {"tool": "mps_mcp_create_model", "ok": False, "code": "INVALID_REQUEST", "project": "/project"},
            {"tool": "mps_mcp_create_model", "ok": True, "project": "/project"},
        ]
        self.write_run("S2-sonnet-1", events, server, meta={"scenario": "S2"})

        completed = self.run_analyzer()

        self.assertEqual(0, completed.returncode, completed)
        row = self.metrics()
        self.assertEqual("1", row["arg_validation_errors"])
        self.assertEqual("0", row["pre_dispatch_rejections"])
        self.assertEqual("0", row["server_call_surplus"])

    def test_a_missing_required_parameter_is_dispatched_and_does_not_fabricate_a_surplus(self) -> None:
        """Round 8's false positive: one omitted required parameter per run (S1:109 modelReference,
        S2:75 moduleName) was counted as a pre-dispatch rejection, so `expected_server_mps_calls`
        came out one short of a complete, correct server slice and every run warned."""
        missing_argument = ("MCP tool call has been failed: "
                            "No argument is passed for required parameter 'modelReference'")
        events = [
            assistant("a", "mcp__server__mps_mcp_insert_root_node_from_json"),
            result("a", missing_argument, error=True),
            assistant("b", "mcp__server__mps_mcp_insert_root_node_from_json"), result("b", '{"ok":true}'),
        ]
        server = [
            {"tool": "mps_mcp_insert_root_node_from_json", "ok": False, "threw": True,
             "error": "IllegalStateException: No argument is passed for required parameter "
                      "'modelReference'", "project": "/project"},
            {"tool": "mps_mcp_insert_root_node_from_json", "ok": True, "project": "/project"},
        ]
        self.write_run("S1-sonnet-1", events, server, meta={"scenario": "S1"})

        completed = self.run_analyzer()

        self.assertEqual(0, completed.returncode, completed)
        row = self.metrics()
        self.assertEqual("0", row["pre_dispatch_rejections"])
        self.assertEqual("1", row["arg_validation_errors"])
        self.assertEqual("2", row["expected_server_mps_calls"])
        self.assertEqual("0", row["server_call_surplus"])
        self.assertEqual("", completed.stderr)

    def test_lifecycle_columns_count_welcome_rejections_closes_and_modals(self) -> None:
        welcome = ('Unable to determine the target project for the current MCP tool call.\n'
                   '  | Currently open projects: {"projects":[]}')
        listed = ('Unable to determine the target project for the current MCP tool call.\n'
                  '  | Currently open projects: {"projects":[{"basePath":"/project"}]}')
        blocked = '{"ok":false,"code":"MODAL_BLOCKED","error":"a modal dialog is open"}'
        events = [
            assistant("a", "mcp__server__mps_mcp_close_project"), result("a", '{"ok":true}'),
            assistant("b", "mcp__server__mps_mcp_list_open_projects"), result("b", welcome, error=True),
            assistant("c", "mcp__server__mps_mcp_list_open_projects"), result("c", listed, error=True),
            assistant("d", "mcp__server__mps_mcp_close_project"), result("d", blocked, error=True),
        ]
        self.write_run("S10-opus-1", events, None, meta={"scenario": "S10"})

        self.assertEqual(0, self.run_analyzer().returncode)
        row = self.metrics()
        self.assertEqual("1", row["welcome_rejections"])   # only the empty listing counts
        self.assertEqual("2", row["pre_dispatch_rejections"])
        self.assertEqual("2", row["close_project_calls"])
        self.assertEqual("1", row["modal_blocked"])

    def test_related_projects_keep_the_target_projects_server_lines(self) -> None:
        """A lifecycle run drives `<project>-target`; without relatedProjects the project filter
        would discard its whole server slice."""
        events = [assistant("a", "mcp__server__mps_mcp_one"), result("a", "ok"),
                  assistant("b", "mcp__server__mps_mcp_two"), result("b", "ok")]
        server = [{"tool": "mps_mcp_one", "ok": True, "project": "/project"},
                  {"tool": "mps_mcp_two", "ok": True, "project": "/project-target"},
                  {"tool": "mps_mcp_elsewhere", "ok": True, "project": "/other"}]
        self.write_run("S10-opus-2", events, server,
                       meta={"scenario": "S10", "relatedProjects": ["/project-target"]})
        self.write_run("S1-opus-1", events, server, meta={"scenario": "S1"})

        self.assertEqual(0, self.run_analyzer().returncode)
        with (self.out / "metrics.csv").open(newline="") as stream:
            rows = {row["run"]: row for row in csv.DictReader(stream)}
        self.assertEqual("2", rows["S10-opus-2"]["server_mps_calls"])
        self.assertEqual("1", rows["S1-opus-1"]["server_mps_calls"])

    def test_lifecycle_runs_are_exempt_from_the_surplus_warning_in_both_directions(self) -> None:
        events = [assistant("a", "mcp__server__mps_mcp_one"), result("a", "ok"),
                  assistant("b", "mcp__server__mps_mcp_two"), result("b", "ok")]
        self.write_run("S10-opus-3", events,
                       [{"tool": "read_file", "ok": True, "project": "/project"}],
                       meta={"scenario": "S10"})                      # surplus -2
        self.write_run("S10-opus-4", events,
                       [{"tool": "mps_mcp_one", "ok": True, "project": "/project"},
                        {"tool": "mps_mcp_two", "ok": True, "project": "/project"},
                        {"tool": "mps_mcp_three", "ok": True, "project": "/project"}],
                       meta={"scenario": "S10"})                      # surplus +1

        completed = self.run_analyzer()

        self.assertEqual(0, completed.returncode, completed)
        self.assertEqual("", completed.stderr)
        errors = json.loads((self.out / "errors.json").read_text())
        self.assertTrue(all(entry["server_call_surplus_warning"] is None for entry in errors.values()))

    def test_a_persisted_cd_counts_relative_skill_reads_until_the_harness_resets_the_cwd(self) -> None:
        """Opus in round 13: `cd <skills>/…/references && cat a.md`, then `cat b.md` in a later call.
        SKILL_DIR_RE alone saw 16 of 20 navigation calls."""
        refs = f"{SKILLS}/mps-aspect-constraints/references"
        events = [INIT,
                  *bash("a", f"cd {refs} && cat concept-roots.md", "a" * 100),
                  *bash("b", "cat scope-helpers.md; grep -n -i ListScope -r . | head", "b" * 50),
                  *bash("c", "python3 -c \"print(open('/tmp/mps-node-1.json').read())\""),
                  *bash("d", "mkdir -p /tmp/r && cd /tmp/r && cat > gen.py <<'EOF'\ncat scope-helpers.md\nEOF",
                        "written\nShell cwd was reset to /project"),
                  *bash("e", "cat scope-helpers.md"),
                  *bash("f", f"(cd {refs} && ls) ; cat notes.md")]
        self.write_run("S1-opus-1", events, None)

        self.assertEqual(0, self.run_analyzer().returncode)
        row = self.metrics()
        self.assertEqual("3", row["skill_reads"])            # a, b, f; not c (no skill path), d, e (reset)
        self.assertEqual("160", row["skill_read_bytes"])     # a + b + f
        self.assertEqual("1", row["skill_greps_skill"])      # `grep -r .` inside references/
        navigation = json.loads((self.out / "navigation.json").read_text())["S1-opus-1"]
        self.assertEqual([1, 2, 6], [c["step"] for c in navigation["calls"]])
        self.assertEqual([{"kind": "read", "path": "mps-aspect-constraints/references/scope-helpers.md", "whole": True},
                          {"kind": "grep", "path": "mps-aspect-constraints/references", "whole": False}],
                         navigation["calls"][1]["accesses"])

    def test_cache_read_comes_from_the_result_event_and_keeps_the_event_sum_for_continuity(self) -> None:
        """Stream-json repeats one message's usage on each of its content blocks (D50 E6)."""
        usage = {"cache_read_input_tokens": 100}
        events = [tool("a", "Bash", {"command": "true"}, msg="m1", usage=usage), result("a", "ok"),
                  tool("b", "Bash", {"command": "true"}, msg="m1", usage=usage), result("b", "ok"),
                  tool("c", "Bash", {"command": "true"}, msg="m2", usage=usage), result("c", "ok")]
        self.write_run("with-result", [*events, {"type": "result", "num_turns": 2,
                                                  "usage": {"cache_read_input_tokens": 200}}], None)
        self.write_run("killed", events, None)
        # A resumed run has one result per query; result usage leaves out subagent messages.
        child = tool("d", "Read", {"file_path": "/tmp/x"}, msg="m3", usage={"cache_read_input_tokens": 50})
        child["parent_tool_use_id"] = "agent"
        self.write_run("resumed-with-subagent", [*events, child, child, result("d", "ok"),
                                                 {"type": "result", "num_turns": 2,
                                                  "usage": {"cache_read_input_tokens": 200}},
                                                 {"type": "result", "num_turns": 1,
                                                  "usage": {"cache_read_input_tokens": 70}}], None)

        self.assertEqual(0, self.run_analyzer().returncode)
        with (self.out / "metrics.csv").open(newline="") as stream:
            rows = {row["run"]: row for row in csv.DictReader(stream)}
        self.assertEqual(("200", "300"), (rows["with-result"]["cache_read"], rows["with-result"]["cache_read_events"]))
        self.assertEqual(("200", "300"), (rows["killed"]["cache_read"], rows["killed"]["cache_read_events"]))
        self.assertEqual(("320", "400"), (rows["resumed-with-subagent"]["cache_read"],
                                          rows["resumed-with-subagent"]["cache_read_events"]))

    def test_every_token_column_comes_from_the_result_events_and_keeps_its_event_sum(self) -> None:
        usage = {"input_tokens": 3, "output_tokens": 2, "cache_read_input_tokens": 100,
                 "cache_creation_input_tokens": 40}
        events = [tool("a", "Bash", {"command": "true"}, msg="m1", usage=usage), result("a", "ok"),
                  tool("b", "Bash", {"command": "true"}, msg="m1", usage=usage), result("b", "ok"),
                  {"type": "result", "num_turns": 1,
                   "usage": {"input_tokens": 3, "output_tokens": 70, "cache_read_input_tokens": 100,
                             "cache_creation_input_tokens": 40}}]
        self.write_run("S1-opus-1", events, None)

        self.assertEqual(0, self.run_analyzer().returncode)
        row = self.metrics()
        self.assertEqual(("3", "70", "100", "40"),
                         tuple(row[k] for k in ("input_tokens", "output_tokens", "cache_read", "cache_write")))
        self.assertEqual(("6", "4", "200", "80"), tuple(row[f"{k}_events"] for k in
                                                        ("input_tokens", "output_tokens", "cache_read", "cache_write")))

    def test_rereads_are_whole_file_and_flag_the_ones_that_straddle_a_compaction(self) -> None:
        refs = f"{SKILLS}/mps-aspect-constraints/references"
        events = [INIT,
                  *read("a", f"{refs}/concept-roots.md"),
                  *call("b", "Read", {"file_path": f"{refs}/scope-helpers.md", "offset": 1, "limit": 20}),
                  *read("c", f"{refs}/inherited-scope.md"),
                  *read("d", f"{refs}/inherited-scope.md"),                      # re-read, no compaction
                  compaction(167108, 167177),
                  *bash("e", f'cat "{refs}/concept-roots.md"'),                 # re-read across the compaction
                  *read("f", f"{refs}/scope-helpers.md"),                        # first whole read
                  *bash("g", f'sed -n 1,40p "{refs}/concept-roots.md"'),        # partial: not a re-read
                  compaction(168397, 131272)]
        self.write_run("S1-sonnet-1", events, None)

        self.assertEqual(0, self.run_analyzer().returncode)
        row = self.metrics()
        self.assertEqual(("2", "1"), (row["rereads"], row["rereads_after_compaction"]))
        self.assertEqual(("2", "298", "4"), (row["compactions"], row["compaction_s"], row["first_compaction_step"]))
        navigation = json.loads((self.out / "navigation.json").read_text())["S1-sonnet-1"]
        self.assertEqual([{"step": 4, "trigger": "auto", "pre_tokens": 167108, "seconds": 167},
                          {"step": 7, "trigger": "auto", "pre_tokens": 168397, "seconds": 131}],
                         navigation["compactions"])
        self.assertEqual([(4, [3], False), (5, [1], True)],
                         [(r["step"], r["previous_steps"], r["after_compaction"]) for r in navigation["rereads"]])

    def test_index_hops_and_grep_scopes(self) -> None:
        ts = f"{SKILLS}/mps-aspect-typesystem/references"
        events = [INIT,
                  *read("a", f"{ts}/json-blueprints.md", msg="m1"),
                  *read("b", f"{ts}/json-blueprints/body-level-wrapper.md", msg="m2"),    # hop
                  *bash("c", f"cd {ts} && cat messages.md messages/one.md"),               # one call: no hop
                  *read("d", f"{ts}/checking.md", msg="m4"),
                  *read("e", f"{ts}/other.md", msg="m5"),
                  *read("f", f"{ts}/checking/rule.md", msg="m6"),                          # two messages later
                  *bash("g", f'grep -rn "ancestor<" "{SKILLS}/" 2>/dev/null | head -30'),
                  *bash("h", f'grep -rln forNamedElements "{SKILLS}/mps-aspect-constraints/references/"'),
                  *bash("i", f"grep -rl anchor {SKILLS}/mps-mcp-workflow/references/ {SKILLS}/mps-node-editing/"),
                  *bash("j", f'grep -n -A15 anchor "{SKILLS}/mps-node-editing/references/json-format.md"'),
                  *bash("k", f"grep -rn x {SKILLS}/*/references/**/*.md"),
                  *call("l", "Grep", {"pattern": "x", "path": f"{SKILLS}/mps-aspect-editor"}),
                  *bash("m", f"sed -n 1,20p {ts}/checking.md | grep -v '^$'")]           # a filter, not a search
        self.write_run("S1-sonnet-1", events, None)

        self.assertEqual(0, self.run_analyzer().returncode)
        row = self.metrics()
        self.assertEqual("1", row["index_hops"])
        self.assertEqual(("2", "3", "1"),
                         (row["skill_greps_catalog"], row["skill_greps_skill"], row["skill_greps_file"]))
        navigation = json.loads((self.out / "navigation.json").read_text())["S1-sonnet-1"]
        self.assertEqual([{"index_step": 1, "index": "mps-aspect-typesystem/references/json-blueprints.md",
                           "section_steps": [2]}], navigation["index_hops"])

    def test_phases_start_at_an_aspects_first_access_and_attribute_companion_reads_by_time(self) -> None:
        c = f"{SKILLS}/mps-aspect-constraints/references"
        events = [INIT,
                  *call("a", "Skill", {"skill": "mps-mcp-workflow"}),
                  *bash("b", f"cat {SKILLS}/MPS_MCP_SKILL_VERSION.txt"),
                  *call("c", "Skill", {"skill": "mps-aspect-constraints"}),
                  *read("d", f"{c}/concept-roots.md", "d" * 1000, msg="m1"),
                  *read("e", f"{c}/scope-helpers.md", "e" * 500, msg="m1"),
                  *call("f", "mcp__server__mps_mcp_get_concept_details", {}),
                  *read("g", f"{SKILLS}/mps-model-manipulation/references/node-equality.md", "g" * 100),
                  *call("h", "Skill", {"skill": "mps-aspect-typesystem"}),
                  *read("i", f"{SKILLS}/mps-aspect-typesystem/references/checking.md"),
                  *read("j", f"{c}/concept-roots.md"),              # revisit: still a constraints call
                  *read("k", f"{SKILLS}/mps-model-manipulation/references/closures.md"),
                  *bash("l", f"find {SKILLS}/mps-aspect-behavior -type f | sort")]    # a bare skill dir opens a phase
        self.write_run("S1-sonnet-1", events, None)

        self.assertEqual(0, self.run_analyzer().returncode)
        with (self.out / "phases.csv").open(newline="") as stream:
            phases = {row["phase"]: row for row in csv.DictReader(stream)}
        pick = ("span_start", "span_end", "skill_calls", "skill_loads", "msgs", "skill_bytes", "rereads", "files")
        self.assertEqual(["(pre)", "mps-aspect-constraints", "mps-aspect-typesystem", "mps-aspect-behavior"],
                         list(phases))
        self.assertEqual(("1", "2", "1", "1", "1", "10", "0", "1"), tuple(phases["(pre)"][k] for k in pick))
        self.assertEqual(("3", "7", "4", "1", "3", "1610", "1", "3"),
                         tuple(phases["mps-aspect-constraints"][k] for k in pick))
        self.assertEqual(("8", "11", "2", "1", "2", "20", "0", "2"),
                         tuple(phases["mps-aspect-typesystem"][k] for k in pick))
        self.assertEqual(("12", "12", "1", "0"), tuple(phases["mps-aspect-behavior"][k] for k in pick[:4]))
        row = self.metrics()
        self.assertEqual(("8", "7", "3"), (row["skill_reads"], row["skill_msgs"], row["skill_loads"]))


class BashAccessesTest(unittest.TestCase):
    def test_shell_variables_and_for_loops_are_expanded(self) -> None:
        """Round 11 S6: `BASE=…; for f in …; do cat "$BASE/$f"; done` read four files per call."""
        command = (f'BASE="{SKILLS}/mps-aspect-generator/references"; '
                   'for f in concept-fqns.md macro-catalog.md; do echo "=== $f ==="; cat "$BASE/$f"; echo; done; '
                   'grep -rn "namespace" "$BASE"/*.md | head -50')
        accesses, cwd = analyzer.bash_accesses(command, "/project")
        self.assertEqual([("read", "mps-aspect-generator/references/concept-fqns.md", True),
                          ("read", "mps-aspect-generator/references/macro-catalog.md", True),
                          ("grep", "mps-aspect-generator/references/*.md", False)], accesses)
        self.assertEqual("/project", cwd)

    def test_pipelines_redirections_heredocs_and_scripts(self) -> None:
        skill = f"{SKILLS}/mps-aspect-editor"
        self.assertEqual(
            ([("read", "mps-aspect-editor/references/stylesheet-values.md", False)], skill),
            analyzer.bash_accesses("cat references/stylesheet-values.md | head -80 2>/dev/null", skill))
        self.assertEqual(([], "/tmp"), analyzer.bash_accesses(
            "cd /tmp && cat > x.json <<'EOF'\n{\"p\": \"references/a.md\"}\nEOF", skill))
        self.assertEqual(([("script", "mps-mcp-workflow/scripts/mps_dump.py", False)], "/project"),
                         analyzer.bash_accesses(f'python3 "{SKILLS}/mps-mcp-workflow/scripts/mps_dump.py" '
                                                'shape /tmp/mps-node-1.json | head -100', "/project"))
        self.assertEqual(([("list", "", False), ("list", "", False)], "/project"),
                         analyzer.bash_accesses("ls .claude/skills .agents/skills", "/project"))

    def test_unknown_variables_comments_continuations_and_here_strings(self) -> None:
        refs = f"{SKILLS}/mps-aspect-constraints/references"
        # Round 2 opus: a blueprint path under an unknown $TMPDIR, written while cwd is in the skills.
        self.assertEqual(([], refs), analyzer.bash_accesses(
            'f="$TMPDIR/x.json"; cat > "$f" <<\'JSON\'\n{}\nJSON\necho "$f"; head -3 "$f"', refs))
        self.assertEqual(([("grep", "mps-aspect-constraints/references", False)], "/project"),
                         analyzer.bash_accesses(f"# it's the index\ngrep -rn x \\\n  {refs}", "/project"))
        self.assertEqual(([("read", "mps-aspect-constraints/references/a.md", True)], "/project"),
                         analyzer.bash_accesses(f"python3 - <<< 'print(1 << 2)'; cat {refs}/a.md", "/project"))
        self.assertEqual(([("other", "mps-aspect-constraints/references/a.md", False)], "/project"),
                         analyzer.bash_accesses(f"echo x | tee {refs}/a.md", "/project"))


@unittest.skipUnless((ROUND13_RUNS / "S1-sonnet-1-worker.jsonl").exists(),
                     f"round-13 transcripts not found at {ROUND13_RUNS} (set MCP_STUDY_ROUND13_RUNS)")
class Round13TranscriptsTest(unittest.TestCase):
    """The numbers D50 measured by hand from round 13 (docs/d50-skill-navigation-plan.md, M-0 verify)."""

    @classmethod
    def setUpClass(cls) -> None:
        cls.temp_dir = tempfile.TemporaryDirectory()
        out = Path(cls.temp_dir.name)
        completed = subprocess.run([sys.executable, str(ANALYZER), str(ROUND13_RUNS), "--out", str(out)],
                                   text=True, capture_output=True, check=False)
        assert completed.returncode == 0, completed
        with (out / "metrics.csv").open(newline="") as stream:
            cls.rows = {row["run"]: row for row in csv.DictReader(stream)}
        with (out / "phases.csv").open(newline="") as stream:
            cls.phases = {(row["run"], row["phase"]): row for row in csv.DictReader(stream)}
        cls.navigation = json.loads((out / "navigation.json").read_text())

    @classmethod
    def tearDownClass(cls) -> None:
        cls.temp_dir.cleanup()

    def test_opus_reads_through_a_persisted_cd_are_counted(self) -> None:
        self.assertEqual("20", self.rows["S1-opus-1"]["skill_reads"])
        self.assertEqual(("0", "3", "3"), tuple(self.rows["S1-opus-1"][f"skill_greps_{s}"]
                                                for s in ("catalog", "skill", "file")))

    def test_sonnet_compactions_rereads_and_cache_read(self) -> None:
        row, navigation = self.rows["S1-sonnet-1"], self.navigation["S1-sonnet-1"]
        self.assertEqual([59, 118], [k["step"] for k in navigation["compactions"]])
        self.assertEqual("298", row["compaction_s"])
        self.assertEqual([63, 65, 69, 70], [r["step"] for r in navigation["rereads"]])
        self.assertEqual("4", row["rereads_after_compaction"])
        self.assertEqual("13529835", row["cache_read"])
        self.assertEqual(("246", "70854", "388686"), (row["input_tokens"], row["output_tokens"], row["cache_write"]))
        self.assertEqual(("36", "30", "8"), (row["skill_reads"], row["skill_msgs"], row["skill_loads"]))

    def test_constraints_phase_matches_table_e2(self) -> None:
        pick = ("span_start", "span_end", "skill_calls", "skill_loads", "msgs", "skill_bytes",
                "grep_catalog", "grep_skill", "grep_file", "rereads", "files")
        self.assertEqual(("32", "81", "22", "2", "17", "118009", "1", "3", "1", "4", "14"),
                         tuple(self.phases[("S1-sonnet-1", "mps-aspect-constraints")][k] for k in pick))
        self.assertEqual(("45", "63", "7", "0", "7", "58017", "0", "2", "1", "0", "14"),
                         tuple(self.phases[("S1-opus-1", "mps-aspect-constraints")][k] for k in pick))


if __name__ == "__main__":
    unittest.main()
