from __future__ import annotations

import importlib.util
import json
import os
import subprocess
import sys
import tempfile
import unittest
from pathlib import Path


SCRIPTS = Path(__file__).resolve().parents[1]
SCRIPT = SCRIPTS / "list_worker_models.py"

_SPEC = importlib.util.spec_from_file_location("list_worker_models", SCRIPT)
assert _SPEC is not None and _SPEC.loader is not None
lwm = importlib.util.module_from_spec(_SPEC)
_SPEC.loader.exec_module(lwm)

JUNIE_CATALOG = ["claude-opus-5", "claude-sonnet-5", "gpt-5.4", "gemini-2.5-pro"]
CLAUDE_CATALOG = ["opus", "sonnet", "haiku", "fable"]


class ListWorkerModelsTest(unittest.TestCase):
    def setUp(self) -> None:
        self.temp_dir = tempfile.TemporaryDirectory()
        self.home = Path(self.temp_dir.name) / "home"
        self.home.mkdir()

    def tearDown(self) -> None:
        self.temp_dir.cleanup()

    def write_json(self, relative: str, payload: dict) -> Path:
        path = self.home / relative
        path.parent.mkdir(parents=True, exist_ok=True)
        path.write_text(json.dumps(payload), encoding="utf-8")
        return path

    def ids(self, result: dict) -> list[str]:
        return [entry["id"] for entry in result["models"]]

    def isolated_env(self, **extra: str) -> dict[str, str]:
        env = {
            key: value
            for key, value in os.environ.items()
            if not key.startswith("JUNIE_")
            and not key.startswith("CLAUDE_CODE")
            and key != "WORKER_HARNESS"
        }
        env["HOME"] = str(self.home)
        env.update(extra)
        return env

    def run_script(self, args: list[str], **extra: str) -> subprocess.CompletedProcess[str]:
        return subprocess.run(
            [sys.executable, str(SCRIPT), *args],
            env=self.isolated_env(**extra),
            text=True,
            capture_output=True,
            check=False,
        )

    def test_junie_env_returns_config_model_first_and_ignores_model_for_launch(self) -> None:
        self.write_json(".junie/config.json", {"model": "claude-opus-5"})
        self.write_json(".junie/settings.json", {"modelForLaunch": "grok-4.6"})
        result = lwm.list_models(self.home, {"JUNIE_TMPDIR": "/tmp/junie"})
        self.assertEqual("junie", result["harness"])
        self.assertEqual("claude-opus-5", result["orchestratorModel"])
        self.assertEqual(JUNIE_CATALOG, self.ids(result))
        self.assertEqual(
            {"id": "claude-opus-5", "orchestrator": True, "source": "config"},
            result["models"][0],
        )
        self.assertTrue(all(entry["source"] == "catalog" for entry in result["models"][1:]))
        self.assertNotIn("grok-4.6", self.ids(result))
        self.assertNotIn("opus", self.ids(result))

    def test_claude_env_dedups_opus_and_strips_suffix(self) -> None:
        self.write_json(".claude/settings.json", {"model": "opus[1m]"})
        result = lwm.list_models(self.home, {"CLAUDE_CODE": "1"})
        self.assertEqual("claude", result["harness"])
        self.assertEqual("opus", result["orchestratorModel"])
        self.assertEqual(CLAUDE_CATALOG, self.ids(result))
        self.assertEqual({"id": "opus", "orchestrator": True, "source": "config"}, result["models"][0])
        self.assertEqual(1, sum(entry["id"] == "opus" for entry in result["models"]))

    def test_neither_env_defaults_to_claude(self) -> None:
        result = lwm.list_models(self.home, {})
        self.assertEqual("claude", result["harness"])
        self.assertIsNone(result["orchestratorModel"])
        self.assertEqual(CLAUDE_CATALOG, self.ids(result))
        self.assertTrue(all(not entry["orchestrator"] and entry["source"] == "catalog" for entry in result["models"]))

    def test_both_env_without_override_exits_2(self) -> None:
        env = {"JUNIE_TMPDIR": "/tmp/junie", "CLAUDE_CODE_ENTRYPOINT": "cli"}
        with self.assertRaises(lwm.UsageError):
            lwm.list_models(self.home, env)
        completed = self.run_script([], JUNIE_TMPDIR="/tmp/junie", CLAUDE_CODE="1")
        self.assertEqual(2, completed.returncode, completed)
        self.assertIn("both Junie and Claude", completed.stderr)

    def test_harness_flag_overrides_auto_detect(self) -> None:
        self.write_json(".claude/settings.json", {"model": "sonnet"})
        result = lwm.list_models(self.home, {"JUNIE_TMPDIR": "/tmp/junie"}, harness_override="claude")
        self.assertEqual("claude", result["harness"])
        self.assertEqual("sonnet", result["orchestratorModel"])
        self.assertEqual(["sonnet", "opus", "haiku", "fable"], self.ids(result))
        self.assertEqual({"id": "sonnet", "orchestrator": True, "source": "config"}, result["models"][0])

    def test_worker_harness_overrides_both_env(self) -> None:
        self.write_json(".junie/config.json", {"model": "gpt-5.4"})
        completed = self.run_script(
            [],
            JUNIE_TMPDIR="/tmp/junie",
            CLAUDE_CODE="1",
            WORKER_HARNESS="junie",
        )
        self.assertEqual(0, completed.returncode, completed)
        payload = json.loads(completed.stdout)
        self.assertEqual("junie", payload["harness"])
        self.assertEqual("gpt-5.4", payload["orchestratorModel"])
        self.assertEqual("config", payload["models"][0]["source"])

    def test_unknown_harness_exits_2(self) -> None:
        with self.assertRaises(lwm.UsageError):
            lwm.detect_harness({}, "ollama")
        completed = self.run_script([], WORKER_HARNESS="nope")
        self.assertEqual(2, completed.returncode, completed)
        self.assertIn("unknown harness", completed.stderr)

    def test_missing_config_emits_catalog_only(self) -> None:
        self.write_json(".junie/settings.json", {"modelForLaunch": "grok-4.6"})
        result = lwm.list_models(self.home, {"JUNIE_DATA": "/tmp/data"})
        self.assertIsNone(result["orchestratorModel"])
        self.assertEqual(JUNIE_CATALOG, self.ids(result))
        self.assertTrue(all(entry["source"] == "catalog" for entry in result["models"]))

    def test_orchestrator_absent_from_catalog_is_prepended(self) -> None:
        self.write_json(".junie/config.json", {"model": "grok-4.6"})
        result = lwm.list_models(self.home, {"JUNIE_TMPDIR": "/tmp/junie"})
        self.assertEqual(["grok-4.6", *JUNIE_CATALOG], self.ids(result))
        self.assertEqual({"id": "grok-4.6", "orchestrator": True, "source": "config"}, result["models"][0])

    def test_help_exits_0(self) -> None:
        completed = self.run_script(["--help"])
        self.assertEqual(0, completed.returncode, completed)
        self.assertIn("--harness", completed.stdout)


if __name__ == "__main__":
    unittest.main()
