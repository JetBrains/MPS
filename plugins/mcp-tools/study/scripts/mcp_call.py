#!/usr/bin/env python3
"""Call one MPS MCP tool from the shell and print its envelope.

For observers and evaluators whose Claude session has no `mps_mcp_*` tools wired in (the study
harness points the WORKERS at the server via --mcp-config; the observing session usually is not
connected). Read-only by convention -- nothing here stops a mutating call, so evaluators must
stick to the read-only tools named in the scenario's done_criteria.md.

usage:
  mcp_call.py <tool> '<json-args>' [--url URL] [--raw] [--max-chars N]

`projectPath` is required by the platform on every tool; pass it inside the JSON args.
A temp-file envelope (`data` is a path) is resolved and inlined automatically, so the caller never
needs a second read. `--raw` prints the envelope exactly as returned.

Exit codes: 0 ok, 2 usage, 3 MCP/tool error, 4 server unreachable.
Stdlib only (Python >= 3.9).
"""
from __future__ import annotations

import argparse
import json
import os
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
from tools_inventory import DEFAULT_URL, McpClient, McpError  # noqa: E402


def main(argv=None) -> int:
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("tool", help="tool name, e.g. mps_mcp_print_node")
    ap.add_argument("args", nargs="?", default="{}", help="JSON object of arguments")
    ap.add_argument("--url", default=os.environ.get("MPS_MCP_URL", DEFAULT_URL))
    ap.add_argument("--raw", action="store_true", help="do not resolve a temp-file `data` path")
    ap.add_argument("--max-chars", type=int, default=0, help="truncate stdout to N chars (0 = no limit)")
    a = ap.parse_args(argv)

    try:
        arguments = json.loads(a.args)
    except ValueError as e:
        print(json.dumps({"ok": False, "error": f"args is not valid JSON: {e}"}))
        return 2
    if not isinstance(arguments, dict):
        print(json.dumps({"ok": False, "error": "args must be a JSON object"}))
        return 2

    client = McpClient(a.url)
    try:
        client.initialize()
        result = client.call("tools/call", {"name": a.tool, "arguments": arguments})
    except ConnectionError as e:
        print(json.dumps({"ok": False, "error": str(e)}))
        return 4
    except McpError as e:
        print(json.dumps({"ok": False, "error": str(e)}))
        return 3

    texts = [c.get("text", "") for c in result.get("content", []) if c.get("type") == "text"]
    out = texts[0] if texts else json.dumps(result)
    if not a.raw:
        try:
            env = json.loads(out)
            data = env.get("data")
            if isinstance(data, str) and os.path.exists(data):
                with open(data) as fh:
                    loaded = json.load(fh)
                # The temp file holds a COMPLETE envelope, not the bare payload, so splicing it in
                # as `data` would produce data.data. Collapse the duplicate level.
                if isinstance(loaded, dict) and set(loaded) <= {"ok", "data", "details", "warnings", "error"}:
                    env.update(loaded)
                else:
                    env["data"] = loaded
                env["_inlinedFrom"] = data
                out = json.dumps(env)
        except (ValueError, AttributeError):
            pass
    if a.max_chars and len(out) > a.max_chars:
        out = out[: a.max_chars] + f"\n...[truncated, {len(out)} chars total]"
    print(out)
    try:
        return 0 if json.loads(texts[0]).get("ok", True) else 3
    except (ValueError, IndexError):
        return 0


if __name__ == "__main__":
    sys.exit(main())
