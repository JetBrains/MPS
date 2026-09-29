from __future__ import annotations

import importlib.util
import json
import subprocess
import sys
import tempfile
import unittest
from pathlib import Path


SCRIPTS = Path(__file__).resolve().parents[1]
SCRIPT = SCRIPTS / "worker_mcp_config.py"

_SPEC = importlib.util.spec_from_file_location("worker_mcp_config", SCRIPT)
assert _SPEC is not None and _SPEC.loader is not None
wmc = importlib.util.module_from_spec(_SPEC)
_SPEC.loader.exec_module(wmc)

URL = "http://localhost:64344/stream"


class WorkerMcpConfigTest(unittest.TestCase):
    def setUp(self) -> None:
        self.tmp = tempfile.TemporaryDirectory()
        self.addCleanup(self.tmp.cleanup)
        self.out = Path(self.tmp.name) / "S1-opus-1-mcp"

    def _run(self, harness: str) -> tuple[subprocess.CompletedProcess, dict]:
        p = subprocess.run([sys.executable, str(SCRIPT), "--harness", harness, "--url", URL,
                            "--out-dir", str(self.out)], capture_output=True, text=True)
        self.assertEqual(p.returncode, 0, p.stderr)
        return p, json.loads((self.out / "mcp.json").read_text())

    def test_claude_shape_prints_file(self) -> None:
        p, cfg = self._run("claude")
        self.assertEqual(cfg, {"mcpServers": {"mps-mcp-server": {"type": "http", "url": URL}}})
        self.assertEqual(p.stdout.strip(), str((self.out / "mcp.json").resolve()))

    def test_junie_shape_prints_directory(self) -> None:
        p, cfg = self._run("junie")
        self.assertEqual(cfg, {"mcpServers": {"mps-mcp-server": {"url": URL}}})
        self.assertEqual(p.stdout.strip(), str(self.out.resolve()))

    def test_compact_separators(self) -> None:
        self._run("claude")
        text = (self.out / "mcp.json").read_text()
        self.assertNotIn(": ", text)
        self.assertNotIn(", ", text)

    def test_unknown_harness_is_usage_error(self) -> None:
        p = subprocess.run([sys.executable, str(SCRIPT), "--harness", "cursor", "--url", URL,
                            "--out-dir", str(self.out)], capture_output=True, text=True)
        self.assertEqual(p.returncode, 2)
        with self.assertRaises(ValueError):
            wmc.config("cursor", URL)


if __name__ == "__main__":
    unittest.main()
