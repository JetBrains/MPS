from __future__ import annotations

import json
import subprocess
import sys
import tempfile
import unittest
from pathlib import Path


SCRIPTS = Path(__file__).resolve().parents[1]
MAKER = SCRIPTS / "new_study_project.py"
CHECKOUT = SCRIPTS.parents[3]

MODULES_XML = """<?xml version="1.0" encoding="UTF-8"?>
<project version="4">
  <component name="MPSProject">
    <projectModules />
  </component>
</project>
"""

GITIGNORE = """# Default ignored files
/shelf/
/workspace.xml
"""

DOC_SURFACE = (".agents", ".claude", "AGENTS.md", "CLAUDE.md")


def run(*args: str) -> subprocess.CompletedProcess:
    return subprocess.run([sys.executable, str(MAKER), *args], capture_output=True, text=True)


class NewStudyProjectTest(unittest.TestCase):
    """The empty-project fixture is derived, not snapshotted (study lesson 24/29)."""

    def test_writes_the_three_descriptors_and_nothing_else(self):
        with tempfile.TemporaryDirectory() as tmp:
            project = Path(tmp) / "proj"
            proc = run("--dir", str(project))
            self.assertEqual(0, proc.returncode, proc.stderr)

            out = json.loads(proc.stdout)
            self.assertTrue(out["ok"])
            self.assertEqual(str(project.resolve()), out["path"])

            self.assertEqual(MODULES_XML, (project / ".mps/modules.xml").read_text())
            self.assertEqual(GITIGNORE, (project / ".mps/.gitignore").read_text())
            self.assertTrue((project / ".mps/migration.xml").is_file())

            written = sorted(p.relative_to(project).as_posix()
                             for p in project.rglob("*") if p.is_file())
            self.assertEqual([".mps/.gitignore", ".mps/migration.xml", ".mps/modules.xml"], written)

    def test_migration_is_derived_from_the_mps_home(self):
        """The entries come from the MPS that will open the project, never from a constant."""
        with tempfile.TemporaryDirectory() as tmp:
            project = Path(tmp) / "proj"
            out = json.loads(run("--dir", str(project)).stdout)

            self.assertEqual(str(CHECKOUT), out["mpsHome"])
            baseline = out["baseline"]
            self.assertRegex(baseline, r"^\d{3}$")
            self.assertEqual(baseline, out["migrationEntries"]["project.baseline.version"])
            # every other entry is a migration marked as already executed
            migrations = {k: v for k, v in out["migrationEntries"].items()
                          if k != "project.baseline.version"}
            self.assertTrue(migrations, "expected at least one executed project migration")
            for key, value in migrations.items():
                self.assertTrue(key.startswith("jetbrains.mps.ide.mpsmigration."), key)
                self.assertEqual("executed", value)
            self.assertIn(baseline, (project / ".mps/migration.xml").read_text())

    def test_never_writes_an_agent_doc_surface(self):
        with tempfile.TemporaryDirectory() as tmp:
            project = Path(tmp) / "proj"
            run("--dir", str(project))
            for name in DOC_SURFACE:
                self.assertFalse((project / name).exists(), name)
            self.assertFalse((project / ".mps/workspace.xml").exists())

    def test_refuses_a_non_empty_directory(self):
        with tempfile.TemporaryDirectory() as tmp:
            project = Path(tmp) / "proj"
            project.mkdir()
            (project / "keep.txt").write_text("mine")

            proc = run("--dir", str(project))
            self.assertEqual(4, proc.returncode, proc.stdout)
            self.assertFalse((project / ".mps").exists())

    def test_force_writes_into_a_non_empty_directory(self):
        with tempfile.TemporaryDirectory() as tmp:
            project = Path(tmp) / "proj"
            project.mkdir()
            (project / "keep.txt").write_text("mine")

            proc = run("--dir", str(project), "--force")
            self.assertEqual(0, proc.returncode, proc.stderr)
            self.assertTrue((project / ".mps/modules.xml").is_file())
            self.assertEqual("mine", (project / "keep.txt").read_text())

    def test_bad_mps_home_fails_without_leaving_a_migration_file(self):
        with tempfile.TemporaryDirectory() as tmp:
            project = Path(tmp) / "proj"
            proc = run("--dir", str(project), "--mps-home", tmp)
            self.assertEqual(3, proc.returncode, proc.stdout)
            self.assertFalse((project / ".mps/migration.xml").exists())

    def test_missing_dir_is_a_usage_error(self):
        self.assertEqual(2, run().returncode)


if __name__ == "__main__":
    unittest.main()
