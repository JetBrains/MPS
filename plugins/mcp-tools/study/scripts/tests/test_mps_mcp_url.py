from __future__ import annotations

import importlib.util
import json
import subprocess
import sys
import tempfile
import unittest
from pathlib import Path
from unittest import mock


SCRIPTS = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(SCRIPTS))

_SPEC = importlib.util.spec_from_file_location("mps_mcp_url", SCRIPTS / "mps_mcp_url.py")
assert _SPEC is not None and _SPEC.loader is not None
mmu = importlib.util.module_from_spec(_SPEC)
_SPEC.loader.exec_module(mmu)

# Shape of `lsof -nP -a -p <pid> -iTCP -sTCP:LISTEN` for the live 261 MPS (F2 of the A3 plan).
LSOF = """\
COMMAND   PID   USER   FD   TYPE             DEVICE SIZE/OFF NODE NAME
java    83235 vaclav  396u  IPv6 0x950f6a5691e35415      0t0  TCP 127.0.0.1:63343 (LISTEN)
java    83235 vaclav  413u  IPv6 0xe37a1f9aed2a1a13      0t0  TCP 127.0.0.1:59020 (LISTEN)
java    83235 vaclav  456u  IPv6 0x547e2cb65f72d8a0      0t0  TCP 127.0.0.1:64343 (LISTEN)
java    83235 vaclav  457u  IPv4 0x547e2cb65f72d8a1      0t0  TCP *:64343 (LISTEN)
java    83235 vaclav  458u  IPv6 0x547e2cb65f72d8a2      0t0  TCP [::1]:6000 (LISTEN)
"""

ARGS = ("/Users/me/jbr/Contents/Home/bin/java -Xmx4g -Didea.paths.selector=MPSSRC2026.2 "
        "-Didea.config.path=/Users/me/Library/Application Support/JetBrains/custom "
        "-Dmps.mcp.calllog=/tmp/log.jsonl -classpath a.jar:b.jar jetbrains.mps.Launcher")

XML = """<application>
  <component name="McpServerSettings">
    <option name="enableBraveMode" value="true" />
    <option name="enableMcpServer" value="true" />
    <option name="mcpServerPort" value="64344" />
  </component>
</application>"""


class ParserTest(unittest.TestCase):
    def test_parse_lsof_keeps_order_and_dedups(self) -> None:
        self.assertEqual(mmu.parse_lsof(LSOF), [63343, 59020, 64343, 6000])

    def test_parse_lsof_empty(self) -> None:
        self.assertEqual(mmu.parse_lsof(""), [])
        self.assertEqual(mmu.parse_lsof("COMMAND PID USER FD TYPE DEVICE SIZE/OFF NODE NAME\n"), [])

    def test_parse_process_args_selector_and_spaced_config_path(self) -> None:
        self.assertEqual(mmu.parse_process_args(ARGS), {
            "selector": "MPSSRC2026.2",
            "configPath": "/Users/me/Library/Application Support/JetBrains/custom"})

    def test_parse_process_args_config_path_last(self) -> None:
        got = mmu.parse_process_args("java -Didea.config.path=/opt/My Config")
        self.assertEqual(got, {"selector": None, "configPath": "/opt/My Config"})

    def test_parse_process_args_absent(self) -> None:
        self.assertEqual(mmu.parse_process_args("java -Xmx1g jetbrains.mps.Launcher"),
                         {"selector": None, "configPath": None})

    def test_parse_mcp_server_xml(self) -> None:
        self.assertEqual(mmu.parse_mcp_server_xml(XML), 64344)

    def test_parse_mcp_server_xml_without_port_option(self) -> None:
        xml = XML.replace('    <option name="mcpServerPort" value="64344" />\n', "")
        self.assertIsNone(mmu.parse_mcp_server_xml(xml))

    def test_parse_mcp_server_xml_malformed_raises(self) -> None:
        with self.assertRaises(ValueError):
            mmu.parse_mcp_server_xml("<application><component")
        with self.assertRaises(ValueError):
            mmu.parse_mcp_server_xml(XML.replace('"64344"', '"x"'))

    def test_parse_mcp_server_xml_port_out_of_range_raises(self) -> None:
        for bad in ("0", "-1", "65536", "99999"):
            with self.subTest(port=bad), self.assertRaises(ValueError):
                mmu.parse_mcp_server_xml(XML.replace('"64344"', f'"{bad}"'))
        self.assertEqual(mmu.parse_mcp_server_xml(XML.replace('"64344"', '"65535"')), 65535)

    def test_is_mps_server(self) -> None:
        self.assertTrue(mmu.is_mps_server({"serverInfo": {"name": "JetBrains MPS MCP Server"}}))
        self.assertFalse(mmu.is_mps_server({"serverInfo": {"name": "IntelliJ IDEA MCP Server"}}))
        self.assertFalse(mmu.is_mps_server({"serverInfo": {}}))
        self.assertFalse(mmu.is_mps_server({}))
        self.assertFalse(mmu.is_mps_server(None))
        self.assertFalse(mmu.is_mps_server({"serverInfo": "JetBrains MPS MCP Server"}))

    def test_config_dir(self) -> None:
        home = Path("/home/u")
        self.assertEqual(mmu.config_dir("MPSSRC2026.2", None, "darwin", home),
                         home / "Library" / "Application Support" / "JetBrains" / "MPSSRC2026.2")
        self.assertEqual(mmu.config_dir("MPSSRC2026.2", None, "linux", home),
                         home / ".config" / "JetBrains" / "MPSSRC2026.2")
        self.assertEqual(mmu.config_dir("MPSSRC2026.2", "/opt/cfg", "darwin", home), Path("/opt/cfg"))
        self.assertIsNone(mmu.config_dir(None, None, "darwin", home))


class DetectTest(unittest.TestCase):
    """detect() with the process table, lsof and the probe faked."""

    def setUp(self) -> None:
        self.tmp = tempfile.TemporaryDirectory()
        self.addCleanup(self.tmp.cleanup)
        self.cfg = Path(self.tmp.name) / "cfg"
        (self.cfg / "options").mkdir(parents=True)

    def _detect(self, lsof: str | None, answering: set[int], xml: str | None = XML):
        if xml is not None:
            (self.cfg / "options" / "mcpServer.xml").write_text(xml)
        args = f"java -Didea.paths.selector=MPSSRC2026.2 -Didea.config.path={self.cfg} x.Launcher"
        probed: list[int] = []

        def run(cmd):
            return {"ps": args, "lsof": lsof}[cmd[0]]

        def probe(url, timeout):
            port = int(url.split(":")[2].split("/")[0])
            probed.append(port)
            return port in answering

        with mock.patch.object(mmu, "_run", side_effect=run), mock.patch.object(mmu, "probe", side_effect=probe):
            return mmu.detect(pid=4242, timeout=1), probed

    def test_confirmed_via_lsof_probes_configured_port_first(self) -> None:
        got, probed = self._detect(LSOF.replace("64343", "64344"), {64344})
        self.assertEqual(got["url"], "http://localhost:64344/stream")
        self.assertEqual((got["source"], got["confirmed"], got["pid"], got["selector"]),
                         ("lsof", True, 4242, "MPSSRC2026.2"))
        self.assertEqual(probed, [64344])

    def test_nothing_answers_falls_back_to_xml_unconfirmed(self) -> None:
        got, probed = self._detect(LSOF, set())
        self.assertEqual((got["port"], got["source"], got["confirmed"]), (64344, "mcpServer.xml", False))
        self.assertEqual(probed, [63343, 59020, 64343, 6000])

    def test_no_lsof_uses_xml(self) -> None:
        got, probed = self._detect(None, set())
        self.assertEqual((got["port"], got["source"], got["confirmed"]), (64344, "mcpServer.xml", False))
        self.assertEqual(probed, [])

    def test_xml_without_port_uses_platform_default(self) -> None:
        xml = XML.replace('    <option name="mcpServerPort" value="64344" />\n', "")
        got, _ = self._detect(None, set(), xml)
        self.assertEqual((got["port"], got["source"]), (mmu.PLATFORM_DEFAULT_PORT, "mcpServer.xml"))

    def test_malformed_xml_is_not_the_platform_default(self) -> None:
        with mock.patch("sys.stderr"):
            got, _ = self._detect(LSOF, set(), xml="<application><component")
        self.assertEqual((got["url"], got["source"], got["confirmed"]),
                         (mmu.DEFAULT_URL, "default", False))

    def test_several_launchers_take_the_first_and_say_so(self) -> None:
        with mock.patch.object(mmu, "launcher_pids", return_value=[11, 22]), \
                mock.patch.object(mmu, "_run", return_value=None), \
                mock.patch("sys.stderr") as err:
            got = mmu.detect(timeout=1)
        self.assertEqual((got["pid"], got["launchers"]), (11, [11, 22]))
        warned = "".join(c.args[0] for c in err.write.call_args_list)
        self.assertIn("11, 22", warned)
        self.assertIn("using pid 11", warned)

    def test_several_launchers_prefer_the_confirmed_one(self) -> None:
        # pid 11 is a short-lived activation process: no listening ports.
        def run(cmd):
            if cmd[0] == "lsof":
                return LSOF if cmd[4] == "22" else ""
            return "java jetbrains.mps.Launcher"
        with mock.patch.object(mmu, "launcher_pids", return_value=[11, 22]), \
                mock.patch.object(mmu, "_run", side_effect=run), \
                mock.patch.object(mmu, "probe", side_effect=lambda url, t: ":64343/" in url), \
                mock.patch("sys.stderr") as err:
            got = mmu.detect(timeout=1)
        self.assertEqual((got["pid"], got["port"], got["confirmed"]), (22, 64343, True))
        self.assertIn("using pid 22", "".join(c.args[0] for c in err.write.call_args_list))

    def test_no_xml_and_no_answer_uses_constant(self) -> None:
        with mock.patch("sys.stderr"):
            got, _ = self._detect(LSOF, set(), xml=None)
        self.assertEqual((got["url"], got["source"], got["confirmed"]),
                         (mmu.DEFAULT_URL, "default", False))

    def test_no_launcher_is_none(self) -> None:
        with mock.patch.object(mmu, "launcher_pids", return_value=[]):
            self.assertIsNone(mmu.detect())

    def test_main_exit_3_without_launcher(self) -> None:
        with mock.patch.object(mmu, "launcher_pids", return_value=[]), \
                mock.patch("sys.stdout") as out, mock.patch("sys.stderr"):
            self.assertEqual(mmu.main(["--json"]), 3)
        printed = "".join(c.args[0] for c in out.write.call_args_list)
        self.assertFalse(json.loads(printed)["ok"])

    def test_help_exits_zero(self) -> None:
        p = subprocess.run([sys.executable, str(SCRIPTS / "mps_mcp_url.py"), "--help"],
                           capture_output=True, text=True)
        self.assertEqual(p.returncode, 0)
        self.assertIn("--timeout", p.stdout)


if __name__ == "__main__":
    unittest.main()
