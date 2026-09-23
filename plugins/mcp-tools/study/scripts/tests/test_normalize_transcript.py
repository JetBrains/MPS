from __future__ import annotations

import importlib.util
import json
import subprocess
import sys
import tempfile
import unittest
from pathlib import Path


SCRIPTS = Path(__file__).resolve().parents[1]
SCRIPT = SCRIPTS / "normalize_transcript.py"
FIXTURE = Path(__file__).resolve().parent / "fixtures" / "junie-json-stream.jsonl"
ANALYZER = SCRIPTS / "analyze_runs.py"

_SPEC = importlib.util.spec_from_file_location("normalize_transcript", SCRIPT)
assert _SPEC is not None and _SPEC.loader is not None
norm = importlib.util.module_from_spec(_SPEC)
_SPEC.loader.exec_module(norm)


class NormalizeTranscriptTest(unittest.TestCase):
    def setUp(self) -> None:
        self.temp_dir = tempfile.TemporaryDirectory()
        self.root = Path(self.temp_dir.name)

    def tearDown(self) -> None:
        self.temp_dir.cleanup()

    def load_fixture(self) -> list[dict]:
        return [json.loads(line) for line in FIXTURE.read_text().splitlines() if line.strip()]

    def test_fixture_emits_tool_pair_and_usage(self) -> None:
        events, skipped = norm.normalize_events(self.load_fixture())
        self.assertEqual(3, skipped)  # session, mystery, TASK RESULT
        kinds = [event["type"] for event in events]
        self.assertEqual(["assistant", "user", "assistant", "result"], kinds)
        tool = events[0]["message"]["content"][0]
        self.assertEqual("tool_use", tool["type"])
        self.assertEqual("Opened file", tool["name"])
        self.assertEqual("junie-step-1", tool["id"])
        result = events[1]["message"]["content"][0]
        self.assertEqual("tool_result", result["type"])
        self.assertEqual(tool["id"], result["tool_use_id"])
        self.assertIn("ping.txt", result["content"])
        usage = events[2]["message"]["usage"]
        self.assertEqual(4, usage["input_tokens"])
        self.assertEqual(20, usage["output_tokens"])
        self.assertEqual(100, usage["cache_read_input_tokens"])
        self.assertEqual(200, usage["cache_creation_input_tokens"])
        self.assertEqual(0.05, events[3]["total_cost_usd"])

    def test_unknown_event_does_not_drop_tool_pairs(self) -> None:
        events, skipped = norm.normalize_events(self.load_fixture())
        self.assertGreaterEqual(skipped, 1)
        pairs = [
            (events[i]["message"]["content"][0]["id"], events[i + 1]["message"]["content"][0]["tool_use_id"])
            for i, event in enumerate(events[:-1])
            if event.get("type") == "assistant"
            and event["message"]["content"]
            and event["message"]["content"][0].get("type") == "tool_use"
        ]
        self.assertEqual([("junie-step-1", "junie-step-1")], pairs)

    def test_claude_shaped_input_is_a_noop(self) -> None:
        claude = [
            {
                "type": "assistant",
                "message": {"content": [{"type": "tool_use", "id": "a", "name": "Read", "input": {}}]},
            },
            {
                "type": "user",
                "message": {"content": [{"type": "tool_result", "tool_use_id": "a", "content": "ok"}]},
            },
            {"type": "result", "num_turns": 1, "total_cost_usd": 0.1},
        ]
        events, skipped = norm.normalize_events(claude)
        self.assertEqual(0, skipped)
        self.assertEqual(claude, events)

    def test_analyser_scores_normalized_fixture(self) -> None:
        native = self.root / "SMOKE-sonnet-1-worker.native.jsonl"
        worker = self.root / "SMOKE-sonnet-1-worker.jsonl"
        native.write_text(FIXTURE.read_text())
        completed = subprocess.run(
            [sys.executable, str(SCRIPT), str(native), str(worker)],
            text=True, capture_output=True, check=False,
        )
        self.assertEqual(0, completed.returncode, completed)
        self.assertIn("skipped", completed.stderr)
        (self.root / "SMOKE-sonnet-1.meta.json").write_text(json.dumps({
            "id": "SMOKE-sonnet-1", "scenario": "SMOKE", "model": "sonnet",
            "project": "/tmp/proj", "taskPass": None, "exitCode": 0,
        }))
        (self.root / "SMOKE-sonnet-1-server.jsonl").write_text("")
        out = self.root / "analysis"
        analyzed = subprocess.run(
            [sys.executable, str(ANALYZER), str(self.root), "--out", str(out)],
            text=True, capture_output=True, check=False,
        )
        self.assertEqual(0, analyzed.returncode, analyzed)
        summary = json.loads(analyzed.stdout)
        self.assertGreaterEqual(summary["tool_calls"], 1)

    def test_help_exits_0(self) -> None:
        completed = subprocess.run(
            [sys.executable, str(SCRIPT), "--help"],
            text=True, capture_output=True, check=False,
        )
        self.assertEqual(0, completed.returncode, completed)
        self.assertIn("json-output-file", completed.stdout)


if __name__ == "__main__":
    unittest.main()
