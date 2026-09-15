#!/usr/bin/env python3
"""Print a step range of a worker transcript (stream-json) as compact text for human/agent review.

usage: show_steps.py <id-worker.jsonl> <from-step> <to-step> [--input-chars N] [--result-chars N]

Steps are 1-based tool_use ordinals (the numbering used by analyze_runs.py in chains.json examples).
For each step prints: step, tool (server prefix stripped), operation/kind, the tool input (truncated),
and the head of the tool result with an [ERROR] marker for error envelopes / is_error results.
Assistant text between tool calls is printed truncated so the agent's reasoning is visible.
Stdlib only. Exit codes: 0 ok, 2 usage.
"""
from __future__ import annotations

import argparse
import json
import sys


def mcp_name(n: str) -> str:
    return n.split("__", 2)[-1] if n.startswith("mcp__") else n


def text_of(content) -> str:
    if isinstance(content, str):
        return content
    if isinstance(content, list):
        return "".join(p.get("text", "") for p in content if isinstance(p, dict))
    return json.dumps(content) if content is not None else ""


def main(argv=None) -> int:
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("transcript"); ap.add_argument("start", type=int); ap.add_argument("end", type=int)
    ap.add_argument("--input-chars", type=int, default=400); ap.add_argument("--result-chars", type=int, default=300)
    ap.add_argument("--text-chars", type=int, default=300, help="assistant prose per message")
    a = ap.parse_args(argv)
    if a.start < 1 or a.end < a.start:
        print("bad step range", file=sys.stderr); return 2
    step = 0; pending = {}; shown_any = False
    for line in open(a.transcript):
        line = line.strip()
        if not line:
            continue
        try:
            e = json.loads(line)
        except json.JSONDecodeError:
            continue
        if e.get("type") == "assistant":
            for b in e.get("message", {}).get("content", []) or []:
                if not isinstance(b, dict):
                    continue
                if b.get("type") == "text" and a.start <= step + 1 <= a.end + 1 and b.get("text", "").strip():
                    print(f"      [assistant] {b['text'].strip()[:a.text_chars].replace(chr(10), ' ')}")
                if b.get("type") == "tool_use":
                    step += 1
                    if a.start <= step <= a.end:
                        inp = b.get("input"); op = None
                        if isinstance(inp, dict):
                            op = "/".join(str(inp[k]) for k in ("operation", "kind") if inp.get(k))
                        print(f"#{step} {mcp_name(b.get('name','?'))}{(' ['+op+']') if op else ''}")
                        print(f"      in : {json.dumps(inp)[:a.input_chars]}")
                        pending[b.get("id")] = step; shown_any = True
        elif e.get("type") == "user":
            for b in e.get("message", {}).get("content", []) or []:
                if isinstance(b, dict) and b.get("type") == "tool_result" and b.get("tool_use_id") in pending:
                    t = text_of(b.get("content")); err = b.get("is_error") or t.lstrip()[:120].replace(" ", "").startswith('{"ok":false')
                    print(f"      out{' [ERROR]' if err else ''} ({len(t.encode())} B): {t[:a.result_chars].replace(chr(10), ' ')}")
                    del pending[b.get("tool_use_id")]
        if step > a.end and not pending:
            break
    if not shown_any:
        print(f"no steps in range {a.start}-{a.end} (transcript has {step} tool calls)", file=sys.stderr); return 2
    return 0


if __name__ == "__main__":
    sys.exit(main())
