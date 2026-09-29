#!/usr/bin/env python3
"""Detect the MCP URL of the running MPS from the live process (study defect A3).

The port belongs to the IDE selector (`options/mcpServer.xml`), not to the study: the 261
from-sources MPS (`MPSSRC2026.1`) listens on 64343, the 262 one (`MPSSRC2026.2`) on 64344. So the
URL is read off the process instead of pinned in a file:

1. the launcher pids (`pgrep -f jetbrains.mps.Launcher`; the first with a confirmed port wins);
2. its listening TCP ports (`lsof -nP -a -p <pid> -iTCP -sTCP:LISTEN`); each
   `http://localhost:<port>/stream` gets an MCP `initialize` with a short timeout, and the first
   whose `serverInfo.name` contains "MPS" wins (`source: lsof, confirmed: true`). HTTP 200 alone
   proves nothing: IDEA's own MCP server answers on 64342 too, and one MPS port accepts a
   connection and never answers. Well-known ports are never probed;
3. otherwise (no `lsof`, or nothing answered yet) the selector's `mcpServer.xml`, located from
   `-Didea.paths.selector=` / `-Didea.config.path=` in the process args
   (`source: mcpServer.xml, confirmed: false`). A missing `mcpServerPort` option means the
   platform default, `McpServerSettings.DEFAULT_MCP_PORT`.

A found-but-silent port is still printed with exit 0: `mps_control.sh wait` runs exactly while MCP
is not up yet, and re-detects on every iteration until `confirmed` is true.

usage:
  mps_mcp_url.py [--json] [--timeout SECONDS] [--pid PID]

stdout: the bare URL (shell-substitutable), or with --json
`{ok, url, port, source, confirmed, pid, launchers, selector, candidates}`. With several
launchers the first confirmed one is used (else the first), and stderr names them all.

Exit codes: 0 ok (also when unconfirmed), 2 usage, 3 MPS not running.
Stdlib only (Python >= 3.9).
"""
from __future__ import annotations

import argparse
import json
import os
import re
import subprocess
import sys
import xml.etree.ElementTree as ET
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
from tools_inventory import DEFAULT_URL, McpClient  # noqa: E402

# McpServerSettings.kt (intellij-community, plugins/mcp-server/.../settings/McpServerSettings.kt):
# DEFAULT_MCP_PORT = BASE_MCP_PORT (64342) + a per-product offset; MPS's platform prefix is not in
# the offset table, so it gets offset 0. That is also IDEA's port, which is why the MPS selectors
# on this machine pin 64343/64344 explicitly; with the option absent the result stays unconfirmed.
PLATFORM_DEFAULT_PORT = 64342

LAUNCHER_PATTERN = r"[j]etbrains\.mps\.Launcher"
LISTEN_RE = re.compile(r":(\d+)\s+\(LISTEN\)")
SELECTOR_RE = re.compile(r"(?:^|\s)-Didea\.paths\.selector=(\S+)")
# The config path may contain spaces ("Application Support"): it runs up to the next option.
CONFIG_PATH_RE = re.compile(r"(?:^|\s)-Didea\.config\.path=(.*?)(?=\s+-\S|\s*$)")


def url_for(port: int) -> str:
    return f"http://localhost:{port}/stream"


def parse_lsof(text: str) -> list[int]:
    """Listening ports from `lsof -nP -iTCP -sTCP:LISTEN` output, in order, without duplicates
    (IPv4 and IPv6 sockets on one port are listed twice)."""
    ports: list[int] = []
    for line in text.splitlines():
        m = LISTEN_RE.search(line)
        if m:
            port = int(m.group(1))
            if port not in ports:
                ports.append(port)
    return ports


def parse_process_args(args: str) -> dict:
    """`{selector, configPath}` from a `ps -o args=` line; either is None when absent."""
    sel = SELECTOR_RE.search(args)
    cfg = CONFIG_PATH_RE.search(args)
    return {"selector": sel.group(1) if sel else None,
            "configPath": cfg.group(1).strip() if cfg and cfg.group(1).strip() else None}


def parse_mcp_server_xml(text: str) -> int | None:
    """`mcpServerPort` from an `options/mcpServer.xml`. None when the option is ABSENT (the platform
    then uses its default); ValueError when the file is malformed or the value is not a port, so a
    broken file (or a port outside 1..65535) never passes for the default."""
    try:
        root = ET.fromstring(text)
    except ET.ParseError as e:
        raise ValueError(f"malformed mcpServer.xml: {e}") from e
    for opt in root.iter("option"):
        if opt.get("name") == "mcpServerPort":
            try:
                port = int(opt.get("value", ""))
            except ValueError as e:
                raise ValueError(f"mcpServerPort is not a number: {opt.get('value')!r}") from e
            if not 1 <= port <= 65535:
                raise ValueError(f"mcpServerPort out of range: {port}")
            return port
    return None


def is_mps_server(initialize_result) -> bool:
    """True when an MCP `initialize` result comes from MPS ("JetBrains MPS MCP Server"), not from
    IDEA ("IntelliJ IDEA MCP Server") or anything else that answers HTTP 200."""
    if not isinstance(initialize_result, dict):
        return False
    info = initialize_result.get("serverInfo")
    return isinstance(info, dict) and "MPS" in str(info.get("name") or "")


def existing_prefix(raw: str) -> Path:
    """`raw` as a path, minus trailing space-separated words until it exists: when the config path
    is the last VM option, `parse_process_args` also swallows the main class after it."""
    words = raw.split(" ")
    for n in range(len(words), 0, -1):
        cand = Path(os.path.expanduser(" ".join(words[:n])))
        if cand.exists():
            return cand
    return Path(os.path.expanduser(raw))


def config_dir(selector: str | None, config_path: str | None,
               platform: str = sys.platform, home: Path | None = None) -> Path | None:
    """The IDE config directory: `-Didea.config.path` when given, else `<root>/<selector>`."""
    if config_path:
        return existing_prefix(config_path)
    if not selector:
        return None
    home = home or Path.home()
    root = (home / "Library" / "Application Support" / "JetBrains" if platform == "darwin"
            else home / ".config" / "JetBrains")
    return root / selector


def _run(cmd: list[str]) -> str | None:
    try:
        p = subprocess.run(cmd, capture_output=True, text=True, timeout=15)
    except (OSError, subprocess.TimeoutExpired):
        return None
    return p.stdout if p.returncode == 0 else None


def launcher_pids() -> list[int]:
    out = _run(["pgrep", "-f", LAUNCHER_PATTERN]) or ""
    return [int(line.strip()) for line in out.splitlines() if line.strip().isdigit()]


def launcher_pid() -> int | None:
    pids = launcher_pids()
    return pids[0] if pids else None


def probe(url: str, timeout: float) -> bool:
    try:
        return is_mps_server(McpClient(url, timeout=timeout).initialize())
    except Exception:  # unreachable, timeout, not MCP, not JSON: all mean "not confirmed"
        return False


def detect(pid: int | None = None, timeout: float = 5.0) -> dict | None:
    """The MCP endpoint of the MPS launcher `pid`, else of the launchers `pgrep` finds: the first
    one with a confirmed port wins, otherwise the first one's unconfirmed guess (a short-lived
    activation process is also a launcher, and it listens on nothing). None when none runs."""
    launchers = [pid] if pid else launcher_pids()
    if not launchers:
        return None
    results = []
    for p in launchers:
        results.append(_detect_one(p, timeout, launchers))
        if results[-1]["confirmed"]:
            break
    chosen = next((r for r in results if r["confirmed"]), results[0])
    if len(launchers) > 1:
        print(f"mps_mcp_url: {len(launchers)} MPS launchers running ({', '.join(map(str, launchers))});"
              f" using pid {chosen['pid']} — set MPS_MCP_URL to pick another", file=sys.stderr)
    if chosen["source"] == "default":
        print(f"mps_mcp_url: no MPS MCP port found for pid {chosen['pid']}; using {DEFAULT_URL}",
              file=sys.stderr)
    return chosen


def _detect_one(pid: int, timeout: float, launchers: list[int]) -> dict:
    proc = parse_process_args(_run(["ps", "-ww", "-p", str(pid), "-o", "args="]) or "")
    xml_port = None
    cdir = config_dir(proc["selector"], proc["configPath"])
    xml_file = cdir / "options" / "mcpServer.xml" if cdir else None
    if xml_file is not None and xml_file.is_file():
        try:
            xml_port = parse_mcp_server_xml(xml_file.read_text(encoding="utf-8", errors="replace"))
            if xml_port is None:          # option absent: the platform default applies
                xml_port = PLATFORM_DEFAULT_PORT
        except (OSError, ValueError) as e:  # unreadable or malformed: no xml port at all
            print(f"mps_mcp_url: ignoring {xml_file}: {e}", file=sys.stderr)
            xml_port = None

    lsof = _run(["lsof", "-nP", "-a", "-p", str(pid), "-iTCP", "-sTCP:LISTEN"])
    candidates = parse_lsof(lsof or "")
    # The configured port first: it is the likely answer, and every silent port costs `timeout`.
    if xml_port in candidates:
        candidates.remove(xml_port)
        candidates.insert(0, xml_port)
    base = {"pid": pid, "launchers": launchers, "selector": proc["selector"], "candidates": candidates}
    for port in candidates:
        if probe(url_for(port), timeout):
            return {"url": url_for(port), "port": port, "source": "lsof", "confirmed": True, **base}
    if xml_port is not None:
        return {"url": url_for(xml_port), "port": xml_port, "source": "mcpServer.xml",
                "confirmed": False, **base}
    port = int(re.search(r":(\d+)/", DEFAULT_URL).group(1))
    return {"url": DEFAULT_URL, "port": port, "source": "default", "confirmed": False, **base}


def main(argv=None) -> int:
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--json", action="store_true", help="print the whole detection result")
    ap.add_argument("--timeout", type=float, default=5.0, help="per-port initialize timeout (s)")
    ap.add_argument("--pid", type=int, help="launcher pid (default: pgrep jetbrains.mps.Launcher)")
    a = ap.parse_args(argv)
    if a.timeout <= 0:
        ap.error("--timeout must be positive")

    found = detect(a.pid, a.timeout)
    if found is None:
        msg = "MPS is not running: no jetbrains.mps.Launcher process"
        if a.json:
            print(json.dumps({"ok": False, "error": msg}))
        print(msg, file=sys.stderr)
        return 3
    print(json.dumps({"ok": True, **found}) if a.json else found["url"])
    return 0


if __name__ == "__main__":
    sys.exit(main())
