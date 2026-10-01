from __future__ import annotations

import importlib.util
import subprocess
import sys
import tempfile
import unittest
from pathlib import Path


SCRIPTS = Path(__file__).resolve().parents[1]
INSTALLER = SCRIPTS / "install_skills.py"
sys.path.insert(0, str(SCRIPTS))
_SPEC = importlib.util.spec_from_file_location("install_skills", INSTALLER)
assert _SPEC is not None and _SPEC.loader is not None
install_skills = importlib.util.module_from_spec(_SPEC)
_SPEC.loader.exec_module(install_skills)


class GuidesSha256Test(unittest.TestCase):
    """Only `guides_sha256` is tested here: the install path needs a live MCP server."""

    def setUp(self) -> None:
        self.temp_dir = tempfile.TemporaryDirectory()
        self.project = Path(self.temp_dir.name)
        (self.project / "AGENTS.md").write_text("# Agents guide\n")
        (self.project / "CLAUDE.md").write_text("Read AGENTS.md.\n")

    def tearDown(self) -> None:
        self.temp_dir.cleanup()

    def test_stable_when_nothing_changes(self) -> None:
        first = install_skills.guides_sha256(self.project)
        self.assertRegex(first, r"^[0-9a-f]{64}$")
        self.assertEqual(first, install_skills.guides_sha256(self.project))

    def test_changes_when_either_guide_changes(self) -> None:
        before = install_skills.guides_sha256(self.project)
        (self.project / "AGENTS.md").write_text("# Agents guide\nQuote your globs.\n")
        after_agents = install_skills.guides_sha256(self.project)
        self.assertNotEqual(before, after_agents)
        (self.project / "CLAUDE.md").write_text("Read AGENTS.md first.\n")
        self.assertNotEqual(after_agents, install_skills.guides_sha256(self.project))

    def test_swapped_contents_change_the_sha(self) -> None:
        before = install_skills.guides_sha256(self.project)
        (self.project / "AGENTS.md").write_text("Read AGENTS.md.\n")
        (self.project / "CLAUDE.md").write_text("# Agents guide\n")
        self.assertNotEqual(before, install_skills.guides_sha256(self.project))

    def test_absent_when_a_guide_is_missing(self) -> None:
        for name in install_skills.GUIDES:
            with self.subTest(missing=name):
                path = self.project / name
                text = path.read_text()
                path.unlink()
                self.assertEqual("absent", install_skills.guides_sha256(self.project))
                path.write_text(text)

    def test_guides_sha_only_flag_prints_the_bare_sha(self) -> None:
        out = subprocess.run(
            [sys.executable, str(INSTALLER), "--guides-sha-only", str(self.project)],
            text=True, capture_output=True, check=True,
        ).stdout
        self.assertEqual(install_skills.guides_sha256(self.project.resolve()) + "\n", out)


if __name__ == "__main__":
    unittest.main()
