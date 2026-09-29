#!/usr/bin/env python3
"""Record the MPS MCP server tool inventory (names, parameter names, description sizes).

Performs the Streamable HTTP handshake (initialize -> notifications/initialized -> tools/list)
against --url, else $MPS_MCP_URL, honouring Mcp-Session-Id. mps_control.sh and run_worker.sh
detect the URL from the live MPS (mps_mcp_url.py) and export it, so the port the IDE selector
configured reaches every child script. Only with neither set does it fall back to DEFAULT_URL
(http://localhost:64343/stream, right for the 261 selector), and then says so on stderr.
Writes the full tools/list payload to --out and prints a compact JSON summary to stdout.

`McpClient` is shared by mcp_call.py, install_skills.py and mps_mcp_url.py (which probes with a
short `timeout`).

Exit codes: 0 ok, 2 usage, 3 MCP error envelope, 4 server unreachable.
Stdlib only (Python >= 3.9).
"""
from __future__ import annotations

import argparse
import json
import os
import sys
import urllib.error
import urllib.request

DEFAULT_URL = "http://localhost:64343/stream"


def env_url() -> str:
    """$MPS_MCP_URL, else DEFAULT_URL with a stderr line: the constant is never used silently
    (an empty variable counts as unset)."""
    url = os.environ.get("MPS_MCP_URL")
    if url:
        return url
    print(f"MPS_MCP_URL unset; using {DEFAULT_URL}", file=sys.stderr)
    return DEFAULT_URL


class McpError(Exception):
    pass


class McpClient:
    def __init__(self, url: str, timeout: float = 60):
        self.url = url
        self.timeout = timeout
        self.session_id: str | None = None
        self._id = 0

    def _post(self, payload: dict, expect_response: bool = True):
        data = json.dumps(payload).encode()
        req = urllib.request.Request(self.url, data=data, method="POST")
        req.add_header("Content-Type", "application/json")
        req.add_header("Accept", "application/json, text/event-stream")
        if self.session_id:
            req.add_header("Mcp-Session-Id", self.session_id)
        try:
            with urllib.request.urlopen(req, timeout=self.timeout) as resp:
                sid = resp.headers.get("Mcp-Session-Id")
                if sid:
                    self.session_id = sid
                body = resp.read().decode("utf-8", "replace")
                ctype = resp.headers.get("Content-Type", "")
        except urllib.error.URLError as e:
            raise ConnectionError(f"MPS MCP server unreachable at {self.url}: {e}") from e
        if not expect_response:
            return None
        return self._parse(body, ctype)

    @staticmethod
    def _parse(body: str, ctype: str):
        if "text/event-stream" in ctype:
            msgs = []
            for line in body.splitlines():
                if line.startswith("data:"):
                    chunk = line[5:].strip()
                    if chunk:
                        msgs.append(json.loads(chunk))
            for m in msgs:
                if "result" in m or "error" in m:
                    return m
            raise McpError(f"no JSON-RPC response in SSE body: {body[:300]}")
        return json.loads(body) if body.strip() else None

    def call(self, method: str, params: dict | None = None):
        self._id += 1
        msg = {"jsonrpc": "2.0", "id": self._id, "method": method, "params": params or {}}
        resp = self._post(msg)
        if resp is None:
            raise McpError(f"empty response to {method}")
        if "error" in resp:
            raise McpError(json.dumps(resp["error"]))
        return resp["result"]

    def notify(self, method: str, params: dict | None = None):
        self._post({"jsonrpc": "2.0", "method": method, "params": params or {}}, expect_response=False)

    def initialize(self):
        result = self.call("initialize", {
            "protocolVersion": "2025-03-26",
            "capabilities": {},
            "clientInfo": {"name": "mps-study-tools-inventory", "version": "0.1"},
        })
        self.notify("notifications/initialized")
        return result


def main(argv=None) -> int:
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--url", help="MCP endpoint (default: $MPS_MCP_URL, else DEFAULT_URL)")
    ap.add_argument("--out", required=True, help="file for the full tools/list payload (JSON)")
    ap.add_argument("--prefix", default="mps_mcp_", help="only count tools with this prefix in the summary")
    args = ap.parse_args(argv)

    client = McpClient(args.url or env_url())
    try:
        init = client.initialize()
        tools = []
        cursor = None
        while True:
            res = client.call("tools/list", {"cursor": cursor} if cursor else {})
            tools.extend(res.get("tools", []))
            cursor = res.get("nextCursor")
            if not cursor:
                break
    except ConnectionError as e:
        print(json.dumps({"ok": False, "error": str(e), "fix": "start MPS, enable the MCP server, or set MPS_MCP_URL"}))
        return 4
    except McpError as e:
        print(json.dumps({"ok": False, "error": str(e)}))
        return 3

    inventory = []
    for t in tools:
        schema = t.get("inputSchema", {})
        inventory.append({
            "name": t["name"],
            "params": sorted((schema.get("properties") or {}).keys()),
            "required": sorted(schema.get("required") or []),
            "descriptionBytes": len(t.get("description", "").encode()),
            "schemaBytes": len(json.dumps(schema).encode()),
        })
    payload = {"serverInfo": init.get("serverInfo"), "protocolVersion": init.get("protocolVersion"),
               "toolCount": len(tools), "tools": inventory, "raw": tools}
    with open(args.out, "w") as fh:
        json.dump(payload, fh, indent=1)
    mine = [t for t in inventory if t["name"].startswith(args.prefix)]
    print(json.dumps({
        "ok": True, "out": args.out, "serverInfo": init.get("serverInfo"),
        "toolCount": len(tools), "prefixedToolCount": len(mine),
        "prefixedDescriptionBytes": sum(t["descriptionBytes"] for t in mine),
        "prefixedSchemaBytes": sum(t["schemaBytes"] for t in mine),
    }))
    return 0


if __name__ == "__main__":
    sys.exit(main())
