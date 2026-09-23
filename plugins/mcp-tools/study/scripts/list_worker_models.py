#!/usr/bin/env python3
"""Print the harness-aware worker-model picker list for the skill-optimisation study.

Detects whether the observer session is Junie or Claude Code, reads the orchestrator
model from that CLI's config, and emits the builtin catalog for that harness.

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

JUNIE_ENV_VARS = ("JUNIE_TMPDIR", "JUNIE_DATA")
CLAUDE_ENV_VARS = ("CLAUDE_CODE", "CLAUDE_CODE_ENTRYPOINT")
CLAUDE_MODEL_SUFFIX = re.compile(r"\[[^\]]*\]\s*$")


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


def list_models(
    home: Path,
    env: Mapping[str, str],
    harness_override: str | None = None,
) -> dict:
    harness = detect_harness(env, harness_override)
    orchestrator = read_orchestrator_model(home, harness)
    models: list[dict] = []
    seen: set[str] = set()
    if orchestrator:
        models.append({"id": orchestrator, "orchestrator": True, "source": "config"})
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
        "models": models,
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
