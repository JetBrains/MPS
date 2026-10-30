from __future__ import annotations

import json
import subprocess
import sys
import tempfile
import unittest
from pathlib import Path

SCRIPTS = Path(__file__).resolve().parents[1]
LAUNCH = SCRIPTS / "mps_launch.py"
sys.path.insert(0, str(SCRIPTS))

import mps_launch  # noqa: E402


def run(*args: str) -> subprocess.CompletedProcess[str]:
    return subprocess.run([sys.executable, str(LAUNCH), *args], capture_output=True, text=True)


class ClassifyTest(unittest.TestCase):
    def test_source_selector_is_never_standalone(self):
        self.assertEqual("sources", mps_launch.kind_of("MPSSRC2026.1", Path("/Applications/MPS.app/Contents/MacOS/mps")))

    def test_selector_without_src_and_a_launcher_is_standalone(self):
        self.assertEqual("standalone", mps_launch.kind_of("MPS2025.3", Path("/opt/mps/bin/mps.sh")))

    def test_missing_launcher_with_a_product_selector_stays_standalone(self):
        self.assertEqual("standalone", mps_launch.kind_of("MPS2025.3", None))

    def test_no_signals_stays_on_the_java_path(self):
        self.assertEqual("sources", mps_launch.kind_of(None, None))


class ResolveTest(unittest.TestCase):
    def test_macos_app_linux_script_and_contents_dir(self):
        with tempfile.TemporaryDirectory() as tmp:
            root = Path(tmp)
            app = root / "MPS 2025.3.app"
            launcher = app / "Contents" / "MacOS" / "mps"
            vm = app / "Contents" / "bin" / "mps.vmoptions"
            launcher.parent.mkdir(parents=True)
            launcher.write_text("", encoding="utf-8")
            vm.parent.mkdir(parents=True)
            vm.write_text("-Xmx2048m\n", encoding="utf-8")
            linux = root / "mps"
            script = linux / "bin" / "mps.sh"
            script.parent.mkdir(parents=True)
            script.write_text("", encoding="utf-8")

            mac = mps_launch.resolve_install(app)
            self.assertEqual(launcher.resolve(), Path(mac["launcher"]))
            self.assertEqual(app.resolve(), Path(mac["install"]))
            self.assertEqual(vm.resolve(), Path(mac["vmoptions"]))

            via_binary = mps_launch.resolve_install(launcher)
            self.assertEqual(mac["install"], via_binary["install"])

            lin = mps_launch.resolve_install(linux)
            self.assertEqual(script.resolve(), Path(lin["launcher"]))
            self.assertEqual(linux.resolve(), Path(lin["install"]))
            self.assertIsNone(lin["vmoptions"])

    def test_a_checkout_is_not_an_install(self):
        with tempfile.TemporaryDirectory() as tmp:
            with self.assertRaises(mps_launch.BadInstall):
                mps_launch.resolve_install(Path(tmp))


class AnnotateTest(unittest.TestCase):
    def test_idea_home_under_contents_selects_the_app_launcher(self):
        with tempfile.TemporaryDirectory() as tmp:
            app = Path(tmp) / "MPS.app"
            launcher = app / "Contents" / "MacOS" / "mps"
            launcher.parent.mkdir(parents=True)
            launcher.write_text("", encoding="utf-8")
            (app / "Contents" / "bin").mkdir()
            (app / "Contents" / "bin" / "mps.vmoptions").write_text("-Xmx2g\n", encoding="utf-8")
            capture = {
                "selector": "MPS2025.3",
                "vmOptions": ["-Didea.home.path=" + str(app / "Contents"),
                              "-Didea.paths.selector=MPS2025.3"],
            }
            annotated = mps_launch.annotate(capture)
            self.assertEqual("standalone", annotated["kind"])
            self.assertEqual(str(launcher), annotated["launcher"])
            self.assertEqual(str(app), annotated["install"])

    def test_source_selector_drops_a_coincidental_parent_binary(self):
        capture = {"selector": "MPSSRC2026.1", "vmOptions": ["-Didea.paths.selector=MPSSRC2026.1"]}
        annotated = mps_launch.annotate(capture, parent_bin="/Applications/MPS.app/Contents/MacOS/mps")
        self.assertEqual("sources", annotated["kind"])
        self.assertNotIn("launcher", annotated)


class VmoptionsTest(unittest.TestCase):
    def test_study_flags_override_the_same_key_and_keep_the_heap(self):
        text = mps_launch.compose_vmoptions(
            "-Xmx2048m\n-Dmps.migration.assistant.auto=true\n-Didea.paths.selector=MPS2025.3\n",
            ["-Dmps.migration.assistant.auto=false", "-Dmps.mcp.calllog=/tmp/calls.jsonl"],
        )
        self.assertIn("-Xmx2048m", text)
        self.assertIn("-Didea.paths.selector=MPS2025.3", text)
        self.assertNotIn("assistant.auto=true", text)
        self.assertIn("-Dmps.migration.assistant.auto=false", text)
        self.assertIn("-Dmps.mcp.calllog=/tmp/calls.jsonl", text)
        self.assertTrue(text.endswith("\n"))

    def test_plan_start_sets_both_env_vars_and_open_sets_neither(self):
        with tempfile.TemporaryDirectory() as tmp:
            root = Path(tmp)
            launcher = root / "MPS.app" / "Contents" / "MacOS" / "mps"
            launcher.parent.mkdir(parents=True)
            launcher.write_text("", encoding="utf-8")
            vm = root / "MPS.app" / "Contents" / "bin" / "mps.vmoptions"
            vm.parent.mkdir()
            vm.write_text("-Xmx2048m\n", encoding="utf-8")
            capture = mps_launch.resolve_install(root / "MPS.app")
            capture["vmOptions"] = ["-Dmps.mcp.calllog=/tmp/calls.jsonl"]
            dest = root / "out.vmoptions"
            started = mps_launch.plan(capture, "/work/proj", "start", "false", dest)
            self.assertTrue(started["ok"])
            self.assertEqual([str(launcher.resolve()), "/work/proj"], started["argv"])
            self.assertEqual(str(dest), started["env"]["MPS_VM_OPTIONS"])
            self.assertEqual(started["env"]["MPS_VM_OPTIONS"], started["env"]["IDEA_VM_OPTIONS"])
            written = dest.read_text(encoding="utf-8")
            self.assertIn("-Xmx2048m", written)
            self.assertIn("-Dmps.mcp.calllog=/tmp/calls.jsonl", written)
            self.assertIn("-Dmps.migration.assistant.auto=false", written)

            opened = mps_launch.plan(capture, "/work/proj", "open", "false", root / "unused.vmoptions")
            self.assertEqual({}, opened["env"])
            self.assertFalse((root / "unused.vmoptions").exists())

    def test_plan_without_a_launcher_fails_closed(self):
        result = mps_launch.plan({"kind": "standalone"}, None, "start")
        self.assertFalse(result["ok"])
        self.assertIn("MPS_INSTALL", result["error"])


class CliTest(unittest.TestCase):
    def test_install_then_kind(self):
        with tempfile.TemporaryDirectory() as tmp:
            root = Path(tmp)
            script = root / "dist" / "bin" / "mps.sh"
            script.parent.mkdir(parents=True)
            script.write_text("", encoding="utf-8")
            out = root / "capture.json"
            proc = run("install", "--path", str(root / "dist"), "--out", str(out))
            self.assertEqual(0, proc.returncode, proc.stderr)
            self.assertEqual("standalone\n", run("kind", "--capture", str(out)).stdout)
            data = json.loads(out.read_text())
            self.assertEqual(script.resolve(), Path(data["launcher"]))


if __name__ == "__main__":
    unittest.main()
