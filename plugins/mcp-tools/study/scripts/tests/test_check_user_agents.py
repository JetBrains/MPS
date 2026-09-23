from __future__ import annotations

import os
import shutil
import stat
import subprocess
import sys
import tempfile
import unittest
from pathlib import Path


SCRIPTS = Path(__file__).resolve().parents[1]
CHECKER = SCRIPTS / "check_user_agents.py"
RUN_WORKER = SCRIPTS / "run_worker.sh"


class CheckUserAgentsTest(unittest.TestCase):
    def setUp(self) -> None:
        self.temp_dir = tempfile.TemporaryDirectory()
        self.root = Path(self.temp_dir.name)
        self.home = self.root / "home"
        self.home.mkdir()

    def tearDown(self) -> None:
        for path in self.root.rglob("*"):
            try:
                path.chmod(stat.S_IRWXU)
            except OSError:
                pass
        self.temp_dir.cleanup()

    def run_checker(self) -> subprocess.CompletedProcess[str]:
        env = os.environ.copy()
        env["HOME"] = str(self.home)
        return subprocess.run(
            [sys.executable, str(CHECKER)], env=env, text=True, capture_output=True, check=False,
        )

    def definition(self, relative: str, body: str = "unrelated", *, catalog: str = ".claude") -> Path:
        path = self.home / catalog / "agents" / relative
        path.parent.mkdir(parents=True, exist_ok=True)
        path.write_text(body)
        return path

    def assertRejected(self, result: subprocess.CompletedProcess[str], path: Path, rule: str) -> None:
        self.assertEqual(3, result.returncode, result)
        self.assertIn(str(path), result.stderr)
        self.assertIn(rule, result.stderr)

    def skill(self, name: str, *, catalog: str = ".claude") -> Path:
        path = self.home / catalog / "skills" / name
        path.mkdir(parents=True, exist_ok=True)
        (path / "SKILL.md").write_text("---\nname: %s\n---\nbody\n" % name)
        return path

    def test_user_level_mps_skill_is_rejected_without_modification(self) -> None:
        """Round 8 started with ~/.claude/skills/mps-api-research present: it shadows the
        per-project catalog and install_skills.py cannot purge it."""
        path = self.skill("mps-api-research")
        before = sorted(p.name for p in path.iterdir())
        self.assertRejected(self.run_checker(), path, "shadows the per-project catalog")
        self.assertEqual(before, sorted(p.name for p in path.iterdir()))

    def test_user_level_mps_skill_in_the_junie_catalog_is_rejected(self) -> None:
        path = self.skill("mps-node-editing", catalog=".junie")
        self.assertRejected(self.run_checker(), path, "shadows the per-project catalog")

    def test_unrelated_user_skills_and_stray_files_pass(self) -> None:
        self.skill("local-model-delegate")
        self.skill("context-search", catalog=".junie")
        (self.home / ".claude" / "skills" / ".DS_Store").write_text("")
        (self.home / ".claude" / "skills" / "mps-not-a-folder.md").write_text("a file, not a skill")
        self.assertEqual(0, self.run_checker().returncode, self.run_checker().stderr)

    def test_absent_and_empty_catalogs_pass(self) -> None:
        self.assertEqual(0, self.run_checker().returncode)
        (self.home / ".claude" / "agents").mkdir(parents=True)
        (self.home / ".junie" / "agents").mkdir(parents=True)
        self.assertEqual(0, self.run_checker().returncode)

    def test_unrelated_definition_passes(self) -> None:
        self.definition("babysit-build.md", "Build babysitter")
        self.assertEqual(0, self.run_checker().returncode)

    def test_filename_match_is_rejected_without_modification(self) -> None:
        path = self.definition("My-MPS-helper.MD", "unchanged body")
        before = path.read_bytes()
        self.assertRejected(self.run_checker(), path, "filename matches *mps*")
        self.assertEqual(before, path.read_bytes())

    def test_body_only_match_is_rejected(self) -> None:
        path = self.definition("helper.md", "Call MPS_MCP_print_node")
        self.assertRejected(self.run_checker(), path, "body matches mps_mcp")

    def test_nested_definition_is_rejected(self) -> None:
        path = self.definition("nested/deeper/helper.md", "mps_mcp")
        self.assertRejected(self.run_checker(), path, "body matches mps_mcp")

    def test_symlinked_definition_is_read(self) -> None:
        target = self.root / "target.md"
        target.write_text("mps_mcp")
        path = self.home / ".claude" / "agents" / "linked.md"
        path.parent.mkdir(parents=True)
        path.symlink_to(target)
        self.assertRejected(self.run_checker(), path, "body matches mps_mcp")

    @unittest.skipIf(os.geteuid() == 0, "root can read mode-000 directories")
    def test_unreadable_catalog_is_rejected(self) -> None:
        catalog = self.home / ".claude" / "agents"
        catalog.mkdir(parents=True)
        catalog.chmod(0)
        result = self.run_checker()
        self.assertEqual(3, result.returncode, result)
        self.assertIn("cannot inspect user agent catalog", result.stderr)

    def test_junie_filename_match_is_rejected_when_claude_is_clean(self) -> None:
        self.definition("babysit-build.md", "Build babysitter")
        path = self.definition("foo-mps.md", "unrelated", catalog=".junie")
        self.assertRejected(self.run_checker(), path, "filename matches *mps*")

    def test_junie_body_match_is_rejected_when_claude_is_clean(self) -> None:
        self.definition("babysit-build.md", "Build babysitter")
        path = self.definition("helper.md", "use mps_mcp", catalog=".junie")
        self.assertRejected(self.run_checker(), path, "body matches mps_mcp")

    def test_claude_contamination_still_fails_when_junie_is_clean(self) -> None:
        (self.home / ".junie" / "agents").mkdir(parents=True)
        path = self.definition("helper.md", "use mps_mcp")
        self.assertRejected(self.run_checker(), path, "body matches mps_mcp")

    def test_shell_gate_runs_before_installer_and_worker_even_when_install_is_skipped(self) -> None:
        study = self.root / "study"
        scripts = study / "scripts"
        scripts.mkdir(parents=True)
        shutil.copy2(RUN_WORKER, scripts / "run_worker.sh")
        shutil.copy2(CHECKER, scripts / "check_user_agents.py")
        marker = self.root / "invoked"
        (scripts / "install_skills.py").write_text(
            "from pathlib import Path\nPath(%r).write_text('installer')\n" % str(marker)
        )
        prompt = study / "scenarios" / "SMOKE" / "worker_prompt.md"
        prompt.parent.mkdir(parents=True)
        prompt.write_text("stop")
        project = self.root / "project"
        project.mkdir()
        runs = self.root / "runs"
        stub_bin = self.root / "bin"
        stub_bin.mkdir()
        claude = stub_bin / "claude"
        claude.write_text("#!/bin/sh\nprintf claude > %s\n" % marker)
        claude.chmod(0o755)
        agent = self.definition("nested/helper.md", "use mps_mcp")
        before = agent.read_bytes()

        base_env = os.environ.copy()
        base_env.update({
            "HOME": str(self.home), "STUDY": str(study), "RUNS": str(runs),
            "PATH": f"{stub_bin}:{base_env['PATH']}",
        })
        for skip in (None, "1"):
            env = base_env.copy()
            if skip is not None:
                env["SKIP_SKILL_INSTALL"] = skip
            result = subprocess.run(
                ["bash", str(scripts / "run_worker.sh"), "SMOKE", "sonnet", skip or "1", str(project)],
                env=env, text=True, capture_output=True, check=False,
            )
            self.assertEqual(3, result.returncode, result)
            self.assertFalse(marker.exists())
            self.assertFalse(runs.exists())
            self.assertEqual(before, agent.read_bytes())


if __name__ == "__main__":
    unittest.main()
