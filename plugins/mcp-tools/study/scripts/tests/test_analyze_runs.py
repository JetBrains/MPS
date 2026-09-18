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

    def write_run(self, run_id: str, events: list[dict], server: list[dict] | None) -> None:
        (self.runs / f"{run_id}-worker.jsonl").write_text("".join(json.dumps(e) + "\n" for e in events))
        (self.runs / f"{run_id}.meta.json").write_text(json.dumps({"project": "/project"}))
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
        self.assertEqual("2", row["pre_dispatch_rejections"])
        self.assertEqual("3", row["expected_server_mps_calls"])
        self.assertEqual("4", row["server_mps_calls"])
        self.assertEqual("1", row["server_call_surplus"])
        self.assertEqual("1", row["agent_calls"])
        self.assertEqual(1, completed.stderr.count("WARNING:"), completed.stderr)
        self.assertIn("4 server MPS calls - (5 transcript MPS calls - 2 pre-dispatch rejections) = 1", completed.stderr)
        errors = json.loads((self.out / "errors.json").read_text())
        self.assertIn("server calls absent from the parent transcript", errors["positive"]["server_call_surplus_warning"])
        self.assertIn("## Measurement-integrity warnings", (self.out / "hotspots.md").read_text())

    def test_zero_negative_and_missing_server_evidence_do_not_warn(self) -> None:
        events = [assistant("a", "mcp__server__mps_mcp_one"), result("a", "ok")]
        self.write_run("zero", events, [{"tool": "mps_mcp_one", "ok": True, "project": "/project"}])
        self.write_run("negative", events, [{"tool": "read_file", "ok": True, "project": "/project"}])
        self.write_run("missing", events, None)
        self.write_run("empty", events, [])

        completed = self.run_analyzer()

        self.assertEqual(0, completed.returncode, completed)
        self.assertEqual("", completed.stderr)
        with (self.out / "metrics.csv").open(newline="") as stream:
            rows = {row["run"]: row for row in csv.DictReader(stream)}
        self.assertEqual("0", rows["zero"]["server_call_surplus"])
        self.assertEqual("-1", rows["negative"]["server_call_surplus"])
        self.assertEqual("", rows["missing"]["server_call_surplus"])
        self.assertEqual("", rows["empty"]["server_call_surplus"])
        errors = json.loads((self.out / "errors.json").read_text())
        self.assertTrue(all(entry["server_call_surplus_warning"] is None for entry in errors.values()))


if __name__ == "__main__":
    unittest.main()
