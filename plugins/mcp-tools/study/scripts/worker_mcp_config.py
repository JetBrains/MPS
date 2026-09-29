#!/usr/bin/env python3
"""Write the worker's MCP config for one run (study defect A3).

The config used to be two tracked files (`study/mcp.study.json`, `study/mcp-junie/mcp.json`) that
pinned port 64343, while the port belongs to the IDE selector. run_worker.sh now generates it from
the resolved $MPS_MCP_URL into `$RUNS/<id>-mcp/`, so the run carries the config it was measured
with as evidence, and both harnesses leave the same file.

usage:
  worker_mcp_config.py --harness claude|junie --url URL --out-dir DIR

Writes DIR/mcp.json with the harness's shape and prints what the harness flag takes: the FILE for
Claude (`--mcp-config FILE --strict-mcp-config`), the DIRECTORY for Junie (`--mcp-location DIR`).
  claude: {"mcpServers":{"mps-mcp-server":{"type":"http","url":URL}}}
  junie:  {"mcpServers":{"mps-mcp-server":{"url":URL}}}

Exit codes: 0 ok, 2 usage.
Stdlib only (Python >= 3.9).
"""
from __future__ import annotations

import argparse
import json
import sys
from pathlib import Path

SERVER_NAME = "mps-mcp-server"
HARNESSES = ("claude", "junie")


def config(harness: str, url: str) -> dict:
    if harness not in HARNESSES:
        raise ValueError(f"unknown harness: {harness}")
    server = {"type": "http", "url": url} if harness == "claude" else {"url": url}
    return {"mcpServers": {SERVER_NAME: server}}


def write(harness: str, url: str, out_dir: Path) -> Path:
    """Write out_dir/mcp.json; return the path the harness flag takes."""
    out_dir.mkdir(parents=True, exist_ok=True)
    path = out_dir / "mcp.json"
    path.write_text(json.dumps(config(harness, url), separators=(",", ":")) + "\n", encoding="utf-8")
    return path if harness == "claude" else out_dir


def main(argv=None) -> int:
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--harness", required=True, choices=HARNESSES)
    ap.add_argument("--url", required=True, help="the MPS MCP endpoint, e.g. http://localhost:64343/stream")
    ap.add_argument("--out-dir", required=True, help="directory for mcp.json (created if missing)")
    a = ap.parse_args(argv)
    if not a.url.strip():
        ap.error("--url must not be empty")
    print(write(a.harness, a.url, Path(a.out_dir).expanduser().resolve()))
    return 0


if __name__ == "__main__":
    sys.exit(main())
