#!/usr/bin/env python3
"""Rewrite a Junie --json-output-file dump into Claude-like worker.jsonl.

Junie json-stream (confirmed on 3452.1 via --json-output-file) is JSONL of
`session` / `step` / `result` events, not Claude `assistant`+`tool_use` blocks.
Each non-final `step` becomes a tool_use / tool_result pair; `result.errorCode`
holds per-model token usage (the field name is Junie's). Claude-shaped input is
copied through unchanged. Unknown event types are skipped and counted on stderr.

usage: normalize_transcript.py <native.jsonl> <worker.jsonl>

Exit codes: 0 ok, 2 usage / unreadable input.
Stdlib only (Python >= 3.9).
"""
from __future__ import annotations

import argparse
import json
import sys
from pathlib import Path

TASK_RESULT_NAMES = {"task result"}


def load_events(text: str) -> list:
    stripped = text.strip()
    if not stripped:
        return []
    if stripped[0] == "[":
        payload = json.loads(stripped)
        if isinstance(payload, list):
            return payload
        raise ValueError("JSON array expected")
    if stripped[0] == "{":
        try:
            payload = json.loads(stripped)
        except json.JSONDecodeError:
            payload = None
        if isinstance(payload, dict):
            if "type" in payload:
                return [payload]
            for key in ("events", "items", "messages"):
                if isinstance(payload.get(key), list):
                    return payload[key]
            return [payload]
    events = []
    for line_no, line in enumerate(text.splitlines(), 1):
        line = line.strip()
        if not line:
            continue
        try:
            events.append(json.loads(line))
        except json.JSONDecodeError as error:
            raise ValueError(f"line {line_no}: {error}") from error
    return events


def is_junie_result(event: dict) -> bool:
    return event.get("type") == "result" and (
        isinstance(event.get("errorCode"), list) or "changes" in event
    )


def usage_from_error_code(entries) -> tuple[dict, float, int]:
    usage = {
        "input_tokens": 0,
        "output_tokens": 0,
        "cache_read_input_tokens": 0,
        "cache_creation_input_tokens": 0,
    }
    cost = 0.0
    calls = 0
    if not isinstance(entries, list):
        return usage, cost, calls
    for entry in entries:
        if not isinstance(entry, dict):
            continue
        usage["input_tokens"] += int(entry.get("inputTokens") or 0)
        usage["output_tokens"] += int(entry.get("outputTokens") or 0)
        usage["cache_read_input_tokens"] += int(entry.get("cacheInputTokens") or 0)
        usage["cache_creation_input_tokens"] += int(entry.get("cacheCreateTokens") or 0)
        try:
            cost += float(entry.get("cost") or 0)
        except (TypeError, ValueError):
            pass
        try:
            calls += int(entry.get("calls") or 0)
        except (TypeError, ValueError):
            pass
    return usage, cost, calls


def assistant_text(text: str, usage: dict | None = None) -> dict:
    event = {
        "type": "assistant",
        "message": {"content": [{"type": "text", "text": text}]},
    }
    if usage:
        event["message"]["usage"] = usage
    return event


def tool_pair(tool_id: str, name: str, details: str) -> tuple[dict, dict]:
    assistant = {
        "type": "assistant",
        "message": {
            "content": [{
                "type": "tool_use",
                "id": tool_id,
                "name": name,
                "input": {"details": details},
            }],
        },
    }
    user = {
        "type": "user",
        "message": {
            "content": [{
                "type": "tool_result",
                "tool_use_id": tool_id,
                "content": details,
            }],
        },
    }
    return assistant, user


def normalize_events(events: list) -> tuple[list[dict], int]:
    out: list[dict] = []
    skipped = 0
    step_index = 0
    for event in events:
        if not isinstance(event, dict):
            skipped += 1
            continue
        kind = event.get("type")
        if kind in {"assistant", "user", "system"}:
            out.append(event)
            continue
        if kind == "result" and not is_junie_result(event):
            out.append(event)
            continue
        if kind == "session":
            skipped += 1
            continue
        if kind == "step":
            name = str(event.get("name") or "step")
            if name.strip().lower() in TASK_RESULT_NAMES:
                skipped += 1
                continue
            step_index += 1
            details = event.get("details")
            details_text = details if isinstance(details, str) else json.dumps(details)
            assistant, user = tool_pair(f"junie-step-{step_index}", name, details_text)
            out.extend((assistant, user))
            continue
        if is_junie_result(event):
            usage, cost, calls = usage_from_error_code(event.get("errorCode"))
            text = event.get("result")
            text = text if isinstance(text, str) else json.dumps(event.get("result"))
            out.append(assistant_text(text or "", usage))
            result_event = {"type": "result", "total_cost_usd": cost, "num_turns": calls}
            if event.get("timestamp") is not None:
                result_event["timestamp"] = event["timestamp"]
            out.append(result_event)
            continue
        skipped += 1
    return out, skipped


def main(argv: list[str] | None = None) -> int:
    parser = argparse.ArgumentParser(
        description=__doc__,
        formatter_class=argparse.RawDescriptionHelpFormatter,
    )
    parser.add_argument("native", help="Junie --json-output-file dump (jsonl or JSON)")
    parser.add_argument("worker", help="Claude-like worker.jsonl to write")
    args = parser.parse_args(argv)
    native = Path(args.native)
    worker = Path(args.worker)
    try:
        text = native.read_text(encoding="utf-8")
        events = load_events(text)
    except (OSError, UnicodeError, ValueError, json.JSONDecodeError) as error:
        print(f"cannot read {native}: {error}", file=sys.stderr)
        return 2
    normalized, skipped = normalize_events(events)
    worker.parent.mkdir(parents=True, exist_ok=True)
    worker.write_text("".join(json.dumps(event) + "\n" for event in normalized), encoding="utf-8")
    if skipped:
        print(f"skipped {skipped} event(s)", file=sys.stderr)
    return 0


if __name__ == "__main__":
    sys.exit(main())
