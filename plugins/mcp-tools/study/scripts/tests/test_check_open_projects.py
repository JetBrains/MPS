from __future__ import annotations

import json
import os
import shutil
import subprocess
import sys
import tempfile
import unittest
from pathlib import Path

SCRIPTS = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(SCRIPTS))

import check_open_projects as cop  # noqa: E402

CHECKER = SCRIPTS / "check_open_projects.py"
RUN_WORKER = SCRIPTS / "run_worker.sh"

EMPTY_MODULES_XML = """<?xml version="1.0" encoding="UTF-8"?>
<project version="4">
  <component name="MPSProject">
    <projectModules />
  </component>
</project>
"""

TWO_MODULES_XML = """<?xml version="1.0" encoding="UTF-8"?>
<project version="4">
  <component name="MPSProject">
    <projectModules>
      <modulePath path="$PROJECT_DIR$/languages/a/a.mpl" folder="" />
      <modulePath path="$PROJECT_DIR$/solutions/b/b.msd" folder="x" />
    </projectModules>
  </component>
</project>
"""


def record(path: Path, has_mps: bool = True) -> dict:
    return {"name": path.name, "hasMpsProject": has_mps, "mpsProjectBaseDirectory": str(path),
            "ideaBasePath": str(path)}


def envelope(*records: dict) -> str:
    return json.dumps({"ok": True, "data": {"projectCount": len(records), "projects": list(records)}})


class DecisionTest(unittest.TestCase):
    """The pure part: descriptor parsing, listing shapes and the verdict per other project."""

    def test_count_modules(self) -> None:
        self.assertEqual(0, cop.count_modules(EMPTY_MODULES_XML))
        self.assertEqual(2, cop.count_modules(TWO_MODULES_XML))
        self.assertIsNone(cop.count_modules("<project><unclosed"))

    def test_parse_listing_accepts_the_envelope_and_the_rejection(self) -> None:
        projects, rejected = cop.parse_listing(envelope(record(Path("/w/run"))))
        self.assertEqual(["/w/run"], [cop.base_dir(p) for p in projects])
        self.assertFalse(rejected)
        text = ('projectPath /w/run is not open. Currently open projects: '
                '{"projects":[{"name":"myMPS-fix","path":"/src/myMPS-fix"}]}')
        projects, rejected = cop.parse_listing(text)
        self.assertEqual(["/src/myMPS-fix"], [cop.base_dir(p) for p in projects])
        self.assertTrue(rejected)
        with self.assertRaises(ValueError):
            cop.parse_listing('{"ok":false,"error":{"code":"INTERNAL"}}')

    def test_only_the_run_project_passes(self) -> None:
        d = cop.decide([record(Path("/w/run"))], "/w/run", lambda p: self.fail("no other project"))
        self.assertTrue(d["ok"])
        self.assertEqual([], d["others"])

    def test_empty_harness_and_non_mps_projects_pass(self) -> None:
        counts = {"/w/harness": 0}
        d = cop.decide([record(Path("/w/run")), record(Path("/w/harness")),
                        record(Path("/w/idea"), has_mps=False)], "/w/run", counts.get)
        self.assertTrue(d["ok"], d)
        self.assertEqual(["empty", "notMps"], [o["verdict"] for o in d["others"]])
        self.assertEqual([], d["offending"])

    def test_a_sibling_with_modules_fails_and_is_named(self) -> None:
        counts = {"/w/harness": 0, "/src/myMPS-fix": 1100}
        d = cop.decide([record(Path("/w/run")), record(Path("/w/harness")),
                        record(Path("/src/myMPS-fix"))], "/w/run", counts.get)
        self.assertFalse(d["ok"])
        self.assertEqual(["/src/myMPS-fix"], d["offending"])
        message = cop.failure_message(d)
        self.assertIn("/src/myMPS-fix (1100 modules)", message)
        self.assertIn("mps_mcp_close_project", message)
        self.assertIn("ALLOW_SIBLING_PROJECTS=1", message)

    def test_an_unreadable_descriptor_fails_closed(self) -> None:
        d = cop.decide([record(Path("/w/run")), record(Path("/w/legacy"))], "/w/run", lambda p: None)
        self.assertFalse(d["ok"])
        self.assertEqual("unknown", d["others"][0]["verdict"])
        self.assertIn("no readable .mps/modules.xml", cop.failure_message(d))

    def test_allow_reports_the_sibling_but_passes(self) -> None:
        d = cop.decide([record(Path("/w/run")), record(Path("/src/x"))], "/w/run", lambda p: 3, allow=True)
        self.assertTrue(d["ok"])
        self.assertTrue(d["allowed"])
        self.assertEqual(["/src/x"], d["offending"])

    def test_a_run_project_that_is_not_open_fails_even_with_allow(self) -> None:
        d = cop.decide([record(Path("/w/other"))], "/w/run", lambda p: 0, allow=True)
        self.assertFalse(d["ok"])
        self.assertIn("run project is not open", cop.failure_message(d))

    def test_run_project_matches_after_realpath(self) -> None:
        with tempfile.TemporaryDirectory() as tmp:
            real = Path(os.path.realpath(tmp)) / "run"
            real.mkdir()
            d = cop.decide([record(real)], str(real) + "/", lambda p: 0)
            self.assertTrue(d["runProjectOpen"])

    def test_modules_on_disk_reads_the_descriptor(self) -> None:
        with tempfile.TemporaryDirectory() as tmp:
            base = Path(tmp)
            self.assertIsNone(cop.modules_on_disk(str(base)))
            (base / ".mps").mkdir()
            (base / ".mps" / "modules.xml").write_text(TWO_MODULES_XML)
            self.assertEqual(2, cop.modules_on_disk(str(base)))


FAKE_TOOLS_INVENTORY = '''
import json, os, sys
from pathlib import Path

class McpError(Exception):
    pass

def env_url():
    return os.environ.get("MPS_MCP_URL", "http://fake/stream")

class McpClient:
    def __init__(self, url, timeout=60):
        pass
    def initialize(self, client_name="x"):
        return {}
    def call(self, method, params=None):
        with open(os.environ["FAKE_CALLS"], "a") as fh:
            fh.write(json.dumps(params) + "\\n")
        return {"content": [{"type": "text", "text": Path(os.environ["FAKE_LISTING"]).read_text()}]}

if __name__ == "__main__":
    sys.exit(0)   # the handshake check passes
'''

FAKE_INSTALL = '''
import json, sys
from pathlib import Path
if "--project" in sys.argv:
    Path(%r).write_text("installer")
    print(json.dumps({"ok": True, "skillsSha256": "s", "guidesSha256": "g"}))
else:
    print("sha")
'''


class RunWorkerGateTest(unittest.TestCase):
    """run_worker.sh with every MCP-facing script stubbed: no MPS is contacted."""

    def setUp(self) -> None:
        self.temp_dir = tempfile.TemporaryDirectory()
        self.root = Path(os.path.realpath(self.temp_dir.name))
        self.study = self.root / "study"
        scripts = self.study / "scripts"
        scripts.mkdir(parents=True)
        shutil.copy2(RUN_WORKER, scripts / "run_worker.sh")
        shutil.copy2(CHECKER, scripts / "check_open_projects.py")
        (scripts / "tools_inventory.py").write_text(FAKE_TOOLS_INVENTORY)
        (scripts / "check_user_agents.py").write_text("raise SystemExit(0)\n")
        (scripts / "project_reuse.py").write_text("raise SystemExit(0)\n")
        (scripts / "worker_mcp_config.py").write_text("print('/dev/null')\n")
        self.installer = self.root / "installer-invoked"
        (scripts / "install_skills.py").write_text(FAKE_INSTALL % str(self.installer))
        for scenario in ("S18", "SMOKE"):
            prompt = self.study / "scenarios" / scenario / "worker_prompt.md"
            prompt.parent.mkdir(parents=True)
            prompt.write_text("stop")
        self.bin = self.root / "bin"
        self.bin.mkdir()
        self.worker = self.root / "worker-invoked"
        claude = self.bin / "claude"
        claude.write_text("#!/bin/sh\nprintf claude > %s\n" % self.worker)
        claude.chmod(0o755)
        self.project = self.mps_project("workspace/S18-sonnet-1", EMPTY_MODULES_XML)
        self.harness = self.mps_project("workspace/harness", EMPTY_MODULES_XML)
        self.source = self.mps_project("src/myMPS-fix", TWO_MODULES_XML)
        self.listing = self.root / "listing.json"
        self.calls = self.root / "calls.jsonl"

    def tearDown(self) -> None:
        self.temp_dir.cleanup()

    def mps_project(self, rel: str, modules_xml: str) -> Path:
        path = self.root / rel
        (path / ".mps").mkdir(parents=True)
        (path / ".mps" / "modules.xml").write_text(modules_xml)
        return path

    def run_worker(self, scenario: str, open_projects: list[Path], runs: str, **env_extra: str):
        self.listing.write_text(envelope(*(record(p) for p in open_projects)))
        for marker in (self.installer, self.worker, self.calls):
            marker.unlink(missing_ok=True)
        env = os.environ.copy()
        for key in ("SKIP_SKILL_INSTALL", "ALLOW_SIBLING_PROJECTS", "MCP_CONFIG", "DISALLOWED_TOOLS"):
            env.pop(key, None)
        env.update({"STUDY": str(self.study), "RUNS": str(self.root / runs), "HOME": str(self.root),
                    "PATH": f"{self.bin}:{env['PATH']}", "MPS_MCP_URL": "http://fake/stream",
                    "WORKER_HARNESS": "claude", "EFFORT": "low",
                    "FAKE_LISTING": str(self.listing), "FAKE_CALLS": str(self.calls)})
        env.update(env_extra)
        result = subprocess.run(
            ["bash", str(self.study / "scripts" / "run_worker.sh"), scenario, "sonnet", "1", str(self.project)],
            env=env, text=True, capture_output=True, check=False,
        )
        return result, self.root / runs

    def meta(self, runs: Path, run_id: str) -> dict:
        return json.loads((runs / f"{run_id}.meta.json").read_text())

    def test_a_sibling_with_modules_stops_the_run_before_any_side_effect(self) -> None:
        for skip in ("0", "1"):
            result, runs = self.run_worker("S18", [self.project, self.harness, self.source],
                                           f"runs-{skip}", SKIP_SKILL_INSTALL=skip)
            self.assertEqual(3, result.returncode, result)
            self.assertIn(str(self.source), result.stderr)
            self.assertIn("mps_mcp_close_project", result.stderr)
            self.assertFalse(runs.exists(), skip)
            self.assertFalse(self.installer.exists(), skip)
            self.assertFalse(self.worker.exists(), skip)

    def test_the_empty_harness_project_passes_and_is_recorded(self) -> None:
        result, runs = self.run_worker("S18", [self.project, self.harness], "runs")
        self.assertEqual(0, result.returncode, result)
        self.assertTrue(self.worker.exists())
        meta = self.meta(runs, "S18-sonnet-1")
        self.assertEqual([{"path": str(self.harness), "modules": 0, "verdict": "empty"}],
                         meta["otherOpenProjects"])
        self.assertFalse(meta["allowSiblingProjects"])

    def test_the_override_lets_a_two_project_run_through_and_records_it(self) -> None:
        result, runs = self.run_worker("S18", [self.project, self.source], "runs",
                                       ALLOW_SIBLING_PROJECTS="1", SKIP_SKILL_INSTALL="1")
        self.assertEqual(0, result.returncode, result)
        meta = self.meta(runs, "S18-sonnet-1")
        self.assertTrue(meta["allowSiblingProjects"])
        self.assertEqual([{"path": str(self.source), "modules": 2, "verdict": "modules"}],
                         meta["otherOpenProjects"])

    def test_smoke_is_not_checked(self) -> None:
        result, runs = self.run_worker("SMOKE", [self.project, self.source], "runs")
        self.assertEqual(0, result.returncode, result)
        self.assertFalse(self.calls.exists())
        meta = self.meta(runs, "SMOKE-sonnet-1")
        self.assertIsNone(meta["otherOpenProjects"])
        self.assertFalse(meta["allowSiblingProjects"])


if __name__ == "__main__":
    unittest.main()
