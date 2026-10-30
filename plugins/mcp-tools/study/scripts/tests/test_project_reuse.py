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
CHECKER = SCRIPTS / "project_reuse.py"
RUN_WORKER = SCRIPTS / "run_worker.sh"


class ProjectReuseTest(unittest.TestCase):
    def setUp(self) -> None:
        self.temp_dir = tempfile.TemporaryDirectory()
        self.root = Path(os.path.realpath(self.temp_dir.name))
        self.runs = self.root / "runs"
        self.archive = self.root / "archive" / "runs"
        self.runs.mkdir()
        self.archive.mkdir(parents=True)
        self.project = self.root / "workspace" / "S3-sonnet-1"
        self.project.mkdir(parents=True)

    def tearDown(self) -> None:
        self.temp_dir.cleanup()

    def meta(self, directory: Path, run_id: str, project: str, related=()) -> Path:
        directory.mkdir(parents=True, exist_ok=True)
        path = directory / f"{run_id}.meta.json"
        path.write_text(json.dumps({"id": run_id, "project": project, "relatedProjects": list(related)}))
        return path

    def run_checker(self, *extra: str) -> subprocess.CompletedProcess:
        return subprocess.run(
            [sys.executable, str(CHECKER), str(self.project), str(self.runs), *extra],
            text=True, capture_output=True, check=False,
        )

    def test_unused_path_passes(self) -> None:
        self.meta(self.archive / "r1", "S3-sonnet-1", str(self.root / "workspace" / "S3-sonnet-2"))
        result = self.run_checker(str(self.archive))
        self.assertEqual(0, result.returncode, result)
        self.assertEqual([], json.loads(result.stdout)["reusedBy"])

    def test_path_in_nested_archive_is_reported(self) -> None:
        meta = self.meta(self.archive / "s3-check" / "deep", "S3-sonnet-1", str(self.project))
        result = self.run_checker(str(self.archive))
        self.assertEqual(4, result.returncode, result)
        self.assertEqual([{"id": "S3-sonnet-1", "meta": str(meta)}], json.loads(result.stdout)["reusedBy"])

    def test_path_in_live_runs_is_reported(self) -> None:
        self.meta(self.runs, "S3-opus-1", str(self.project))
        self.assertEqual(4, self.run_checker().returncode)

    def test_related_project_and_spelling_variants_match(self) -> None:
        self.meta(self.archive, "S10-sonnet-1", "/elsewhere", related=[str(self.project) + "/"])
        self.assertEqual(4, self.run_checker(str(self.archive)).returncode)
        link = self.root / "link"
        link.symlink_to(self.root / "workspace")
        self.meta(self.runs, "S1-sonnet-1", str(link / "S3-sonnet-1"))
        result = self.run_checker()
        self.assertEqual(4, result.returncode, result)

    def test_unreadable_meta_is_skipped(self) -> None:
        (self.archive / "broken.meta.json").write_text("{not json")
        result = self.run_checker(str(self.archive))
        self.assertEqual(0, result.returncode, result)
        self.assertIn("skipping unreadable meta", result.stderr)

    def test_missing_dirs_pass(self) -> None:
        shutil.rmtree(self.runs)
        self.assertEqual(0, self.run_checker(str(self.root / "nope")).returncode)

    def test_usage(self) -> None:
        result = subprocess.run([sys.executable, str(CHECKER)], text=True, capture_output=True, check=False)
        self.assertEqual(2, result.returncode)

    def run_worker(self, scenario: str, env_extra: dict | None = None) -> tuple[subprocess.CompletedProcess, Path]:
        study = self.root / "study"
        scripts = study / "scripts"
        scripts.mkdir(parents=True, exist_ok=True)
        shutil.copy2(RUN_WORKER, scripts / "run_worker.sh")
        shutil.copy2(CHECKER, scripts / "project_reuse.py")
        marker = self.root / "invoked"
        # Later gates leave a marker: reaching any of them means the reuse guard let the run through.
        (scripts / "check_user_agents.py").write_text(
            "from pathlib import Path\nPath(%r).write_text('guard')\nraise SystemExit(3)\n" % str(marker)
        )
        prompt = study / "scenarios" / scenario / "worker_prompt.md"
        prompt.parent.mkdir(parents=True, exist_ok=True)
        prompt.write_text("stop")
        env = os.environ.copy()
        env.update({"STUDY": str(study), "RUNS": str(self.runs), "HOME": str(self.root)})
        env.update(env_extra or {})
        result = subprocess.run(
            ["bash", str(scripts / "run_worker.sh"), scenario, "sonnet", "2", str(self.project)],
            env=env, text=True, capture_output=True, check=False,
        )
        return result, marker

    def test_run_worker_refuses_a_reused_path_before_any_side_effect(self) -> None:
        self.meta(self.root / "archive" / "runs" / "s3-check", "S3-sonnet-1", str(self.project))
        result, marker = self.run_worker("S3")
        self.assertEqual(2, result.returncode, result)
        self.assertIn("already used by an earlier run", result.stderr)
        self.assertFalse(marker.exists())
        self.assertEqual([], list(self.runs.iterdir()))

    def test_run_worker_lets_smoke_and_an_explicit_override_through(self) -> None:
        self.meta(self.root / "archive" / "runs" / "s3-check", "S3-sonnet-1", str(self.project))
        for scenario, extra in (("SMOKE", None), ("S3", {"ALLOW_REUSED_PROJECT": "1"})):
            marker = self.root / "invoked"
            marker.unlink(missing_ok=True)
            result, marker = self.run_worker(scenario, extra)
            self.assertEqual(3, result.returncode, result)
            self.assertTrue(marker.exists(), scenario)


if __name__ == "__main__":
    unittest.main()
