from __future__ import annotations

import csv
import json
import subprocess
import sys
import tempfile
import unittest
from pathlib import Path


ANALYZER = Path(__file__).resolve().parents[1] / "analyze_runs.py"


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


if __name__ == "__main__":
    unittest.main()
