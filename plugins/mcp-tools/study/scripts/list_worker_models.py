#!/usr/bin/env python3
"""Print the harness-aware worker-model picker list for the skill-optimisation study.

Detects whether the observer session is Junie or Claude Code, finds the orchestrator model, and
emits the builtin catalog for that harness. On Claude the orchestrator is the model of the running
session: the last assistant message in `~/.claude/projects/*/<CLAUDE_CODE_SESSION_ID>.jsonl`, with a
full id such as `claude-opus-5-5` listed under its catalog alias (`orchestratorSource: "session"`).
The full id stays in `orchestratorModelId` and the entry's `modelId`: an alias can resolve to
another version than the session runs, so pass `modelId` to run_worker.sh when the two must match.
Sidechain (subagent) messages are skipped, and the transcript is read backwards from its end.
Without that transcript it falls back to the `model` setting in `~/.claude/settings.json`, which is
only the configured default: `/model` in the session can differ (`orchestratorSource: "config"`).
Junie reads `~/.junie/config.json`. `configuredModel` always reports the config value. It also lists the
effort levels that harness's `--effort` accepts (`effortLevels`) and, for Claude, the levels the
settings file would apply to an unpinned worker (`settingsEffort`), so the observer can ask for
one effort level per selected model and pass it to run_worker.sh as EFFORT.

Exit codes: 0 ok, 2 usage / ambiguous harness / unknown harness.
Stdlib only (Python >= 3.9).
"""
from __future__ import annotations

import argparse
import json
import os
import re
import sys
from collections.abc import Mapping
from pathlib import Path

# Update when vendors ship new coding models.
CLAUDE_CATALOG = ("opus", "sonnet", "haiku", "fable")
JUNIE_CATALOG = ("claude-opus-5", "claude-sonnet-5", "gpt-5.4", "gemini-2.5-pro")
CATALOGS = {
    "claude": CLAUDE_CATALOG,
    "junie": JUNIE_CATALOG,
}

# Values accepted by each CLI's `--effort` flag, lowest first.
EFFORT_LEVELS = {
    "claude": ("low", "medium", "high", "xhigh", "max"),
    "junie": ("low", "medium", "high"),
}

JUNIE_ENV_VARS = ("JUNIE_TMPDIR", "JUNIE_DATA")
CLAUDE_ENV_VARS = ("CLAUDE_CODE", "CLAUDE_CODE_ENTRYPOINT")
CLAUDE_MODEL_SUFFIX = re.compile(r"\[[^\]]*\]\s*$")
CLAUDE_FAMILY = re.compile(r"^claude-(opus|sonnet|haiku|fable)\b")


class UsageError(Exception):
    pass


def _present(env: Mapping[str, str], names: tuple[str, ...]) -> bool:
    return any((env.get(name) or "").strip() for name in names)


def detect_harness(env: Mapping[str, str], override: str | None = None) -> str:
    if override:
        harness = override.strip()
        if harness not in CATALOGS:
            raise UsageError(f"unknown harness: {override} (expected claude or junie)")
        return harness
    junie = _present(env, JUNIE_ENV_VARS)
    claude = _present(env, CLAUDE_ENV_VARS)
    if junie and claude:
        raise UsageError(
            "both Junie and Claude observer env vars are set; pass --harness or set WORKER_HARNESS"
        )
    if junie:
        return "junie"
    return "claude"


def strip_claude_suffix(model: str) -> str:
    return CLAUDE_MODEL_SUFFIX.sub("", model).strip()


def read_orchestrator_model(home: Path, harness: str) -> str | None:
    if harness == "junie":
        path = home / ".junie" / "config.json"
        strip = False
    else:
        path = home / ".claude" / "settings.json"
        strip = True
    if not path.is_file():
        return None
    try:
        payload = json.loads(path.read_text(encoding="utf-8"))
    except (OSError, UnicodeError, json.JSONDecodeError):
        return None
    if not isinstance(payload, dict):
        return None
    model = payload.get("model")
    if not isinstance(model, str):
        return None
    model = model.strip()
    if strip:
        model = strip_claude_suffix(model)
    return model or None


def tail_lines(path: Path, chunk: int = 1 << 16):
    """Yield the file's lines newest first, reading backwards so a large transcript costs little."""
    with path.open("rb") as handle:
        handle.seek(0, os.SEEK_END)
        position = handle.tell()
        rest = b""
        while position > 0:
            step = min(chunk, position)
            position -= step
            handle.seek(position)
            lines = (handle.read(step) + rest).split(b"\n")
            rest = lines.pop(0)
            for line in reversed(lines):
                yield line.decode("utf-8", errors="replace")
        yield rest.decode("utf-8", errors="replace")


def read_session_model(home: Path, env: Mapping[str, str]) -> str | None:
    """The full model id of the newest main-thread assistant message in the running Claude session."""
    session_id = (env.get("CLAUDE_CODE_SESSION_ID") or "").strip()
    if not session_id or any(ch in session_id for ch in "/\\*?["):
        return None
    candidates = list((home / ".claude" / "projects").glob(f"*/{session_id}.jsonl"))
    for path in sorted(candidates, key=lambda c: c.stat().st_mtime, reverse=True):
        try:
            for line in tail_lines(path):
                if '"assistant"' not in line:
                    continue
                try:
                    event = json.loads(line)
                except ValueError:
                    continue
                if not isinstance(event, dict) or event.get("type") != "assistant" or event.get("isSidechain"):
                    continue
                message = event.get("message")
                model = message.get("model") if isinstance(message, dict) else None
                # Harness-made messages carry "<synthetic>", not a model.
                if isinstance(model, str) and model and not model.startswith("<"):
                    return strip_claude_suffix(model)
        except OSError:
            continue
    return None


def catalog_alias(model: str | None) -> str | None:
    family = CLAUDE_FAMILY.match(model or "")
    return family.group(1) if family else model


def read_settings_effort(home: Path, harness: str) -> dict | None:
    """Claude's saved effort defaults: top-level `effortLevel` and `modelSettings.<id>.effortLevel`.

    An unpinned worker gets its model's entry when one exists and the top-level value otherwise.
    Keys are full model ids (`claude-opus-5-5`), not the aliases the catalog lists, so the
    observer maps them. Junie keeps no such setting, so it gets None.
    """
    if harness != "claude":
        return None
    path = home / ".claude" / "settings.json"
    try:
        payload = json.loads(path.read_text(encoding="utf-8"))
    except (OSError, UnicodeError, json.JSONDecodeError):
        return None
    if not isinstance(payload, dict):
        return None
    default = payload.get("effortLevel")
    per_model = {}
    model_settings = payload.get("modelSettings")
    if isinstance(model_settings, dict):
        for model_id, entry in model_settings.items():
            if isinstance(entry, dict) and isinstance(entry.get("effortLevel"), str):
                per_model[model_id] = entry["effortLevel"]
    return {"default": default if isinstance(default, str) else None, "perModel": per_model}


def list_models(
    home: Path,
    env: Mapping[str, str],
    harness_override: str | None = None,
) -> dict:
    harness = detect_harness(env, harness_override)
    configured = read_orchestrator_model(home, harness)
    session_id = read_session_model(home, env) if harness == "claude" else None
    session = catalog_alias(session_id)
    orchestrator = session or configured
    source = "session" if session else ("config" if configured else None)
    models: list[dict] = []
    seen: set[str] = set()
    if orchestrator:
        entry = {"id": orchestrator, "orchestrator": True, "source": source}
        if session_id and session_id != orchestrator:
            entry["modelId"] = session_id
        models.append(entry)
        seen.add(orchestrator)
    for model_id in CATALOGS[harness]:
        if model_id in seen:
            continue
        models.append({"id": model_id, "orchestrator": False, "source": "catalog"})
        seen.add(model_id)
    return {
        "ok": True,
        "harness": harness,
        "orchestratorModel": orchestrator,
        "orchestratorSource": source,
        "orchestratorModelId": session_id or orchestrator,
        "configuredModel": configured,
        "models": models,
        "effortLevels": list(EFFORT_LEVELS[harness]),
        "settingsEffort": read_settings_effort(home, harness),
    }


def main(argv: list[str] | None = None, env: Mapping[str, str] | None = None, home: Path | None = None) -> int:
    env_map = os.environ if env is None else env
    parser = argparse.ArgumentParser(
        description=__doc__,
        formatter_class=argparse.RawDescriptionHelpFormatter,
    )
    parser.add_argument(
        "--harness",
        choices=sorted(CATALOGS),
        help="observer harness (overrides WORKER_HARNESS and auto-detect)",
    )
    args = parser.parse_args(argv)
    override = args.harness or (env_map.get("WORKER_HARNESS") or "").strip() or None
    resolved_home = Path.home() if home is None else home
    try:
        payload = list_models(resolved_home, env_map, override)
    except UsageError as error:
        print(error, file=sys.stderr)
        return 2
    json.dump(payload, sys.stdout, indent=2)
    print()
    return 0


if __name__ == "__main__":
    sys.exit(main())
