#!/usr/bin/env python3
"""Analyse skill-script-automation study runs (study section 4.2-4.3, 6.3).

Inputs: a runs/ directory holding, per run id, <id>-worker.jsonl (claude stream-json transcript),
<id>-server.jsonl (MPS MCP call-log slice) and <id>.meta.json (harness metadata).

Outputs (written into --out, default <runs>/analysis):
  metrics.csv   one row per run: tokens (in/out/cache), authored tool-input chars, tool-result bytes,
                skill-file bytes read, tool calls, errors, retries, validation loops, wall-clock, pass,
                skill navigation (messages, greps by scope, re-reads, index hops), auto-compactions
  phases.csv    one row per run and aspect phase: skill navigation cost of that phase
  navigation.json per run: compactions, re-reads, index hops, greps, phases, every skill-touching call
  tools.json    per-tool call counts, error counts, avg input chars, avg result bytes (transcript + server)
  chains.json   bigrams/trigrams of tool+op with counts and avg input chars per occurrence
  errors.json   error->retry pairs, check_root_node_problems repeats per root, stale-runtime incidents
  hotspots.md   top-N chains (>= --min-occurrences) with example run-id:step ranges
A compact JSON summary is printed to stdout. Stdlib only, Python >= 3.9.
Exit codes: 0 ok, 2 usage.
"""
from __future__ import annotations

import argparse
import csv
import json
import os
import posixpath
import re
import shlex
import sys
from collections import Counter, defaultdict
from pathlib import Path

SKILL_DIR_RE = re.compile(r"(?:\.agents|\.claude)/skills/|\bmps-[a-z0-9-]+/(?:SKILL\.md|references/)")
TEMP_RESULT_RE = re.compile(r"mps-node-\d+\.json|/T/mps-[a-z-]*\d+|mps-mcp-result")
BLUEPRINT_WRITE_RE = re.compile(r"cat\s*>|tee\s|open\([^)]*['\"]w['\"]|json\.dump\(|>\s*\S+\.json")
# Rejected by the platform BEFORE the call is dispatched, so `ToolCallListener` never fires and the
# call is absent from the server call log. Only project resolution behaves this way.
PRE_DISPATCH_REJECTION_RES = (
    re.compile(r"Unable to determine the target project for the current MCP tool call\."),
)
# A missing required parameter LOOKS pre-dispatch but is not: the platform binds arguments inside
# the dispatch, so the listener fires and the call log carries the entry (as `threw`, with
# "IllegalStateException: No argument is passed for required parameter '<x>'"). Counting these as
# pre-dispatch rejections under-states `expected_server_mps_calls` and fabricates a
# `server_call_surplus` of +1 per occurrence — round 8 hit exactly that on S1:109 and S2:75.
# Since D43 no published parameter is required in the Kotlin signature, so the tool body rejects a
# missing one itself, with an INVALID_REQUEST envelope listing `details.missingParameters`. Both
# shapes are the same failure mode (the parameter-name guessing hotspot), so both count here and
# the column stays comparable across the change.
ARG_VALIDATION_ERROR_RE = re.compile(
    r"MCP tool call has been failed: No argument is passed for required parameter\s+['‘][^'’]+['’]"
    r'|"missingParameters"\s*:'
)
# A rejection whose listing is empty means the Welcome screen: no project is open at all, so no
# projectPath could have helped. Lifecycle scenarios pass through this state deliberately.
WELCOME_REJECTION_RE = re.compile(r'Currently open projects:\s*\{\s*"projects"\s*:\s*\[\s*\]')
MODAL_BLOCKED_RE = re.compile(r"MODAL_BLOCKED")
# Scenarios that drive the project lifecycle themselves: they close and open projects, so their
# server slice spans several project paths and their surplus is not interpretable.
LIFECYCLE_SCENARIO_RE = re.compile(r"^S10\b")


def classify_bash(command: str) -> str:
    """skill_read | temp_result_read | blueprint_write | other — what a Bash call is used for."""
    if SKILL_DIR_RE.search(command):
        return "skill_read"
    if BLUEPRINT_WRITE_RE.search(command):
        return "blueprint_write"
    if TEMP_RESULT_RE.search(command):
        return "temp_result_read"
    return "other"
STALE_RE = re.compile(r"descriptorStatus\W+hollow|runtime_stale|RUNTIME_STALE", re.I)
VALIDATE_TOOL = "mps_mcp_check_root_node_problems"
# metrics.csv token column -> usage field
TOKEN_USAGE_KEYS = {"input_tokens": "input_tokens", "output_tokens": "output_tokens",
                    "cache_read": "cache_read_input_tokens", "cache_write": "cache_creation_input_tokens"}

# --- Skill navigation (D50 M-0) -------------------------------------------------------------
# A Bash `cd` into a skills directory persists into later calls, whose relative paths then never
# match SKILL_DIR_RE (opus in round 13: 16 counted, 20 real). The harness resets the persisted cwd
# when a command leaves the project, and says so in the result.
CWD_RESET_RE = re.compile(r"Shell cwd was reset to (\S+)")
SKILLS_ROOT_PATH_RE = re.compile(r"(?:^|/)(?:\.agents|\.claude)/skills(?:/(.*))?$")
SKILL_RELATIVE_PATH_RE = re.compile(r"(?:^|/)(mps-[a-z0-9-]+/(?:SKILL\.md|references(?:/.*)?|scripts/.*))$")
PATH_LIKE_RE = re.compile(r"/|\.(?:md|txt|py|json|sh)$|^\.\.?$")
NOT_A_PATH_RE = re.compile(r"[\s()'\"=;{}]")      # inline code or an expression, not a path
HEREDOC_RE = re.compile(r"(?<!<)<<-?(?!<)\s*(['\"]?)([A-Za-z_]\w*)\1")
GLOB_CHARS_RE = re.compile(r"[*?\[]")
VAR_REF_RE = re.compile(r"\$\{(\w+)\}|\$(\w+)")
ASSIGNMENT_RE = re.compile(r"^([A-Za-z_]\w*)=(.*)$", re.S)
SHELL_KEYWORDS = {"do", "then", "else", "if", "while", "until", "!", "{", "}", "fi", "esac"}
SHELL_OPERATOR_CHARS = ";&|()<>\n"
GREP_COMMANDS = {"grep", "egrep", "fgrep", "rg", "ag"}
LIST_COMMANDS = {"ls", "find", "tree"}
SCRIPT_COMMANDS = {"python", "python3", "bash", "sh", "zsh", "node"}
PART_READ_COMMANDS = {"sed", "head", "tail", "awk", "wc", "less", "more", "nl", "cut", "sort", "uniq", "jq"}
# Options whose value is a separate word, so the value is not mistaken for a path operand.
_GREP_OPTIONS_WITH_VALUE = {"-e", "-f", "-A", "-B", "-C", "-m", "-g", "-t",
                            "--include", "--exclude", "--exclude-dir", "--glob", "--type"}
OPTIONS_WITH_VALUE = {**{cmd: _GREP_OPTIONS_WITH_VALUE for cmd in GREP_COMMANDS},
                      **{cmd: {"-c", "-m"} for cmd in SCRIPT_COMMANDS},
                      "head": {"-n", "-c"}, "tail": {"-n", "-c"}, "sed": {"-e", "-f"}}
ASPECT_SKILL_PREFIX = "mps-aspect-"
PHASE_COLUMNS = ["phase", "span_start", "span_end", "skill_calls", "skill_loads", "msgs", "skill_bytes",
                 "grep_catalog", "grep_skill", "grep_file", "rereads", "rereads_after_compaction",
                 "index_hops", "files"]
PRE_PHASE = "(pre)"


def skill_relative(path: str) -> str | None:
    """`<skill>/<rest>` below the skills root ("" for the root itself), or None outside it."""
    m = SKILLS_ROOT_PATH_RE.search(path.rstrip("/"))
    if m:
        return (m.group(1) or "").rstrip("/")
    m = SKILL_RELATIVE_PATH_RE.search(path.rstrip("/"))
    return m.group(1) if m else None


def skill_of(rel: str) -> str | None:
    """The skill a skill-relative path is in; None for the root and catalog-level files."""
    head = rel.split("/", 1)[0]
    return head if head and "." not in head and not GLOB_CHARS_RE.search(head) else None


def resolve(cwd: str | None, token: str) -> str:
    token = os.path.expanduser(token)
    if token.startswith("/") or not cwd:
        return posixpath.normpath(token)
    return posixpath.normpath(posixpath.join(cwd, token))


def strip_heredocs(command: str) -> str:
    """Drop heredoc bodies: they are data (a blueprint, a script), not commands or paths. Also
    join `\`-continued lines and drop comment lines, which shlex is not told about."""
    lines, out, i = command.replace("\\\n", " ").split("\n"), [], 0
    while i < len(lines):
        if lines[i].lstrip().startswith("#"):
            i += 1
            continue
        out.append(lines[i])
        delimiters = [m.group(2) for m in HEREDOC_RE.finditer(lines[i])]
        i += 1
        for delimiter in delimiters:
            while i < len(lines) and lines[i].strip() != delimiter:
                i += 1
            i += 1
    return "\n".join(out)


def shell_words(command: str) -> list[str] | None:
    lexer = shlex.shlex(strip_heredocs(command), posix=True, punctuation_chars=SHELL_OPERATOR_CHARS)
    lexer.whitespace, lexer.commenters, lexer.whitespace_split = " \t\r", "", True
    try:
        return list(lexer)
    except ValueError:
        return None


def is_operator(word: str) -> bool:
    return bool(word) and all(ch in SHELL_OPERATOR_CHARS for ch in word)


def path_operands(cmd: str, args: list[str]) -> list[str]:
    """The operands of one command that name files or directories, in order."""
    operands, program_taken, skip = [], False, False
    explicit_program = any(a in ("-e", "-f") or a.startswith("--regexp") for a in args)
    for a in args:
        if skip:
            skip = False
            continue
        if a.startswith("-") and a != "-":
            if cmd == "find":
                break           # find: only the leading operands are paths
            skip = a in OPTIONS_WITH_VALUE.get(cmd, ())
            continue
        if cmd in GREP_COMMANDS | {"sed", "awk"} and not program_taken and not explicit_program:
            program_taken = True    # the pattern / script, never a path
            continue
        if PATH_LIKE_RE.search(a) and not NOT_A_PATH_RE.search(a):
            operands.append(a)
    return operands


def is_recursive_grep(cmd: str, args: list[str]) -> bool:
    """A recursive grep without a path operand searches the cwd."""
    return cmd in ("rg", "ag") or any(
        a.startswith("-") and not a.startswith("--") and ("r" in a or "R" in a) for a in args)


def expand(word: str, variables: dict[str, list[str]]) -> list[str]:
    """`$NAME` / `${NAME}` substituted from `variables`; a for-loop variable yields one word per
    value. Unknown variables stay literal."""
    out, pending, budget = [], [word], 64
    while pending:
        w = pending.pop()
        m = next((m for m in VAR_REF_RE.finditer(w) if (m.group(1) or m.group(2)) in variables), None)
        if m is None or budget <= 0:
            out.append(w)
            continue
        budget -= 1
        for value in reversed(variables[m.group(1) or m.group(2)]):
            pending.append(w[:m.start()] + value + w[m.end():])
    return out


def bash_accesses(command: str, cwd: str | None) -> tuple[list[tuple[str, str, bool]], str | None]:
    """Skill-directory accesses of one Bash command as (kind, skill-relative path, whole), and the
    cwd the command leaves behind. kind: read | grep | list | script | other. Workers write
    `BASE=<skill dir>; for f in a.md b.md; do cat "$BASE/$f"; done`, so plain variables and for
    loops are expanded."""
    words = shell_words(command)
    if words is None:
        return [], cwd
    accesses, cwd_stack = [], []
    variables: dict[str, list[str]] = {}
    loops: list[str] = []
    segment: list[list[str]] = [[]]      # pipeline stages of the current `;` / `&&` segment

    def flush() -> None:
        nonlocal cwd
        stages = [s for s in segment if s]
        for index, stage in enumerate(stages):
            while stage and stage[0] in SHELL_KEYWORDS:
                stage = stage[1:]
            if stage and stage[0] == "done":
                if loops:
                    variables.pop(loops.pop(), None)
                stage = stage[1:]
            if len(stage) >= 3 and stage[0] == "for" and stage[2] == "in":
                variables[stage[1]] = [x for w in stage[3:] for x in expand(w, variables)]
                loops.append(stage[1])
                continue
            while stage and ASSIGNMENT_RE.match(stage[0]):
                name, value = ASSIGNMENT_RE.match(stage[0]).groups()
                variables[name] = expand(value, variables)[:1]
                stage = stage[1:]
            if not stage:
                continue
            stage = [x for w in stage for x in expand(w, variables)]
            cmd, args = posixpath.basename(stage[0]), stage[1:]
            if cmd == "cd":
                target = next((a for a in args if not a.startswith("-")), "~")
                cwd = None if "$" in target else resolve(cwd, target)
                continue
            operands = path_operands(cmd, args)
            if not operands and (cmd in LIST_COMMANDS or (cmd in GREP_COMMANDS and is_recursive_grep(cmd, args))):
                operands = ["."]
            for position, operand in enumerate(operands):
                if "$" in operand:
                    continue            # an unknown variable, e.g. $TMPDIR: not resolvable against the cwd
                rel = skill_relative(resolve(cwd, operand))
                if rel is None:
                    continue
                if cmd in GREP_COMMANDS:
                    accesses.append(("grep", rel, False))
                elif cmd in LIST_COMMANDS:
                    accesses.append(("list", rel, False))
                elif cmd in SCRIPT_COMMANDS:
                    accesses.append(("script" if position == 0 else "other", rel, False))
                elif cmd == "cat":
                    accesses.append(("read", rel, len(stages) == 1))
                elif cmd in PART_READ_COMMANDS or (index > 0 and cmd != "tee"):
                    accesses.append(("read", rel, False))
                else:
                    accesses.append(("other", rel, False))
        segment[:] = [[]]

    redirect = False
    for word in words:
        if is_operator(word):
            if "<" in word or ">" in word:
                redirect = True
                continue
            if "|" in word and "||" not in word:
                segment.append([])
                continue
            flush()
            for ch in word:
                if ch == "(":
                    cwd_stack.append(cwd)
                elif ch == ")" and cwd_stack:
                    cwd = cwd_stack.pop()      # a subshell's cd does not persist
            continue
        if redirect:
            redirect = False
            continue
        segment[-1].append(word)
    flush()
    return accesses, cwd


def tool_accesses(name: str, inp: dict) -> list[tuple[str, str, bool]]:
    """Skill-directory accesses of a Read / Grep / Glob call (absolute paths only)."""
    if name == "Read":
        rel = skill_relative(str(inp.get("file_path", "")))
        whole = inp.get("offset") is None and inp.get("limit") is None
        return [("read", rel, whole)] if rel is not None else []
    if name in ("Grep", "Glob"):
        rel = skill_relative(str(inp.get("path") or ""))
        if name == "Glob" and rel is None:
            rel = skill_relative(str(inp.get("pattern") or ""))
        return [("grep" if name == "Grep" else "list", rel, False)] if rel is not None else []
    return []


def grep_scope(targets: list[str]) -> str:
    """catalog = the skills root, a glob over skill names or a catalog-level file; skill = a skill
    directory or a tree / glob in one; file = named files only."""
    for rel in targets:
        head = rel.split("/", 1)[0]
        if rel == "" or GLOB_CHARS_RE.search(head) or ("/" not in rel and "." in rel):
            return "catalog"
    named_files = all("." in rel.rsplit("/", 1)[-1] and not GLOB_CHARS_RE.search(rel) for rel in targets)
    return "file" if named_files else "skill"


def analyse_navigation(calls: list[dict], compactions: list[dict], init_cwd: str | None) -> dict:
    """Skill navigation per D50: which calls touch the skills catalog, in how many messages, with
    which greps, re-reads and index hops, and in which aspect phase. Runs after all results are in,
    because the persisted cwd of a call depends on the previous call's result."""
    cwd_by_session: dict = {}
    nav, loads = [], []
    for c in calls:
        inp = c.get("input") if isinstance(c.get("input"), dict) else {}
        session = c.get("session")
        if c["name"] == "Skill":
            skill = str(inp.get("skill") or "").rsplit(":", 1)[-1]
            loads.append({"step": c["step"], "skill": skill, "session": session})
            continue
        if c["name"] == "Bash":
            cwd = cwd_by_session.get(session, init_cwd)
            accesses, after = bash_accesses(str(inp.get("command", "")), cwd)
            reset = c.get("cwd_reset")
            cwd_by_session[session] = reset if reset else after
        elif c["name"] in ("Read", "Grep", "Glob"):
            accesses = tool_accesses(c["name"], inp)
        else:
            continue
        if accesses or c["skill_read"]:
            c["skill_read"] = True
            nav.append({"step": c["step"], "msg": c.get("msg") or f"step-{c['step']}", "tool": c["name"],
                        "session": session, "accesses": accesses, "bytes": c["result_bytes"]})

    # Whole-file re-reads, and whether an auto-compaction lies between the two reads.
    compaction_steps = [k["step"] for k in compactions]
    last_whole: dict = {}
    rereads = []
    for n in nav:
        seen = last_whole.setdefault(n["session"], {})
        whole = sorted({rel for kind, rel, w in n["accesses"] if kind == "read" and w})
        again = {rel: seen[rel] for rel in whole if rel in seen}
        if again:
            after = any(prev <= k < n["step"] for prev in again.values() for k in compaction_steps)
            rereads.append({"step": n["step"], "files": sorted(again), "previous_steps": sorted(set(again.values())),
                            "after_compaction": after})
            n["reread"], n["reread_after_compaction"] = True, after
        for rel in whole:
            seen[rel] = n["step"]

    # Index hops: a split directory's index `X.md`, then a section `X/…` in a later call of the
    # same message or of the next skill-reading message. One call reading both is not a hop.
    msg_order = []
    for n in nav:
        if n["msg"] not in msg_order:
            msg_order.append(n["msg"])
    hops = []
    for i, n in enumerate(nav):
        for kind, rel, _ in n["accesses"]:
            if kind != "read" or not rel.endswith(".md"):
                continue
            window = {n["msg"]}
            position = msg_order.index(n["msg"])
            if position + 1 < len(msg_order):
                window.add(msg_order[position + 1])
            prefix = rel[:-3] + "/"
            sections = [m["step"] for m in nav[i + 1:] if m["msg"] in window and m["session"] == n["session"]
                        and any(k == "read" and r.startswith(prefix) for k, r, _ in m["accesses"])]
            if sections:
                hops.append({"index_step": n["step"], "index": rel, "section_steps": sections})
                n["index_hops"] = n.get("index_hops", 0) + 1

    greps = []
    for n in nav:
        targets = [rel for kind, rel, _ in n["accesses"] if kind == "grep"]
        if targets:
            n["grep"] = grep_scope(targets)
            greps.append({"step": n["step"], "scope": n["grep"], "targets": targets})

    # Phases: an aspect skill's phase starts at its first access and ends before the next new
    # aspect's first access. A call touching an aspect skill counts for that aspect; any other
    # call (a companion skill such as mps-model-manipulation) counts for the phase it falls in.
    events = sorted([("load", load) for load in loads] + [("nav", n) for n in nav], key=lambda e: e[1]["step"])
    phases: dict = {}
    current = PRE_PHASE

    def open_phase(name: str, start: int) -> None:
        phases[name] = {"phase": name, "span_start": start, "span_end": None, "skill_calls": 0,
                        "skill_loads": 0, "msgs": set(), "skill_bytes": 0, "grep_catalog": 0,
                        "grep_skill": 0, "grep_file": 0, "rereads": 0, "rereads_after_compaction": 0,
                        "index_hops": 0, "files": set()}

    for kind, e in events:
        skills = [e["skill"]] if kind == "load" else [skill_of(rel) for _, rel, _ in e["accesses"]]
        aspect = next((s for s in skills if s and s.startswith(ASPECT_SKILL_PREFIX)), None)
        if aspect and aspect not in phases:
            if current in phases:
                phases[current]["span_end"] = e["step"] - 1
            open_phase(aspect, e["step"])
            current = aspect
        name = aspect or current
        if name not in phases:
            open_phase(name, 1)          # PRE_PHASE: everything before the first aspect skill
        p = phases[name]
        e["phase"] = name
        if kind == "load":
            p["skill_loads"] += 1
            continue
        p["skill_calls"] += 1
        p["msgs"].add(e["msg"])
        p["skill_bytes"] += e["bytes"]
        if e.get("grep"):
            p["grep_" + e["grep"]] += 1
        p["rereads"] += int(bool(e.get("reread")))
        p["rereads_after_compaction"] += int(bool(e.get("reread_after_compaction")))
        p["index_hops"] += e.get("index_hops", 0)
        p["files"].update(rel for k, rel, _ in e["accesses"] if k == "read")
    if current in phases:
        phases[current]["span_end"] = calls[-1]["step"] if calls else None
    phase_rows = []
    for p in phases.values():
        phase_rows.append(dict(p, msgs=len(p["msgs"]), files=len(p["files"])))

    return {
        "compactions": compactions,
        "rereads": rereads,
        "index_hops": hops,
        "greps": greps,
        "phases": phase_rows,
        "calls": [{"step": n["step"], "msg": n["msg"], "tool": n["tool"], "phase": n.get("phase"),
                   "bytes": n["bytes"], "accesses": [{"kind": k, "path": r, "whole": w} for k, r, w in n["accesses"]]}
                  for n in nav],
        "skill_msgs": len({n["msg"] for n in nav}),
        "skill_loads": len(loads),
    }


def mcp_name(name: str) -> str:
    """mcp__<server>__mps_mcp_x -> mps_mcp_x ; other tools unchanged."""
    if name.startswith("mcp__"):
        return name.split("__", 2)[-1]
    return name


def op_of(inp) -> str | None:
    if not isinstance(inp, dict):
        return None
    parts = [str(inp[k]).strip() for k in ("operation", "kind") if inp.get(k) not in (None, "")]
    return "/".join(parts) if parts else None


def key_of(name: str, inp) -> str:
    op = op_of(inp)
    return f"{name}:{op}" if op else name


def result_text(content) -> str:
    if isinstance(content, str):
        return content
    if isinstance(content, list):
        return "".join(part.get("text", "") for part in content if isinstance(part, dict))
    return json.dumps(content) if content is not None else ""


def is_error_result(block, text: str) -> bool:
    if block.get("is_error"):
        return True
    head = text.lstrip()[:200]
    return head.startswith("{") and '"ok":false' in head.replace(" ", "")


def is_pre_dispatch_rejection(error: bool, text: str) -> bool:
    return error and any(pattern.search(text) for pattern in PRE_DISPATCH_REJECTION_RES)


def is_arg_validation_error(error: bool, text: str) -> bool:
    """A required parameter the caller omitted. Dispatched, so it IS in the server call log."""
    return error and bool(ARG_VALIDATION_ERROR_RE.search(text))


def is_child_event(event: dict) -> bool:
    return event.get("parent_tool_use_id") is not None or event.get("parentToolUseId") is not None


def root_ref_of(inp) -> str | None:
    if not isinstance(inp, dict):
        return None
    for k, v in inp.items():
        if isinstance(v, str) and ("ref" in k.lower() or "node" in k.lower()):
            return v
    return None


def load_jsonl(path: Path):
    if not path.exists():
        return []
    out = []
    with path.open() as fh:
        for line in fh:
            line = line.strip()
            if not line:
                continue
            try:
                out.append(json.loads(line))
            except json.JSONDecodeError:
                continue
    return out


def analyse_run(run_id: str, runs: Path):
    events = load_jsonl(runs / f"{run_id}-worker.jsonl")
    meta = json.loads((runs / f"{run_id}.meta.json").read_text()) if (runs / f"{run_id}.meta.json").exists() else {}
    server_path = runs / f"{run_id}-server.jsonl"
    server = load_jsonl(server_path)
    # The server slice is cut by time window; drop lines from other projects (e.g. the observer
    # evaluating a previous run while this one was running). A lifecycle run legitimately drives a
    # second project, so `relatedProjects` from the meta counts as this run's traffic too —
    # without it S10's whole server evidence would be filtered away.
    own_projects = {p.rstrip("/") for p in
                    [meta.get("project"), *(meta.get("relatedProjects") or [])] if p}
    if own_projects:
        server = [s for s in server if not s.get("project") or s["project"].rstrip("/") in own_projects]

    server_evidence_available = bool(server)
    calls = []            # ordered tool_use steps: dict(step, name, key, input_chars, result_bytes, error, root)
    by_id = {}
    usage = Counter()
    # Stream-json repeats a message's usage on each of its content blocks, so `usage` (summed per
    # event) over-counts (D50 E6). A `result` event carries the query's true usage, for the main
    # session only; a resumed run has one per query. Subagent messages are counted once per id.
    usage_by_message, child_usage_by_message = {}, {}
    result_usages = []
    compactions = []
    init_cwd = None
    step = 0
    result_total = 0
    stale = 0
    final = {}
    for ev in events:
        t = ev.get("type")
        if t == "system" and ev.get("subtype") == "init" and init_cwd is None:
            init_cwd = ev.get("cwd")
        elif t == "system" and ev.get("subtype") == "compact_boundary" and not is_child_event(ev):
            meta_c = ev.get("compact_metadata") or {}
            compactions.append({"step": step, "trigger": meta_c.get("trigger"),
                                "pre_tokens": meta_c.get("pre_tokens"),
                                "seconds": round((meta_c.get("duration_ms") or 0) / 1000)})
        if t == "assistant":
            msg = ev.get("message", {})
            for k, v in (msg.get("usage") or {}).items():
                if isinstance(v, (int, float)):
                    usage[k] += v
            key = msg.get("id") or f"event-{len(usage_by_message) + len(child_usage_by_message)}"
            (child_usage_by_message if is_child_event(ev) else usage_by_message)[key] = msg.get("usage") or {}
            for block in msg.get("content") or []:
                if isinstance(block, dict) and block.get("type") == "tool_use":
                    step += 1
                    name = mcp_name(block.get("name", "?"))
                    inp = block.get("input")
                    call = {"step": step, "name": name, "key": key_of(name, inp), "input": inp,
                            "msg": msg.get("id"), "session": ev.get("parent_tool_use_id") or ev.get("parentToolUseId"),
                            "cwd_reset": None,
                            "input_chars": len(json.dumps(inp)) if inp is not None else 0,
                            "result_bytes": 0, "error": False, "root": root_ref_of(inp), "result_is_temp_file": False,
                            "pre_dispatch_rejection": False, "arg_validation_error": False,
                            "welcome_rejection": False, "modal_blocked": False,
                            "parent_event": not is_child_event(ev),
                            "skill_read": (name == "Read" and isinstance(inp, dict)
                                           and bool(SKILL_DIR_RE.search(str(inp.get("file_path", "")))))
                                          or (name == "Bash" and isinstance(inp, dict)
                                              and classify_bash(str(inp.get("command", ""))) == "skill_read"),
                            "bash_kind": classify_bash(str(inp.get("command", ""))) if name == "Bash" and isinstance(inp, dict) else None}
                    calls.append(call)
                    by_id[block.get("id")] = call
        elif t == "user":
            for block in (ev.get("message", {}).get("content") or []):
                if isinstance(block, dict) and block.get("type") == "tool_result":
                    call = by_id.get(block.get("tool_use_id"))
                    text = result_text(block.get("content"))
                    n = len(text.encode())
                    result_total += n
                    if STALE_RE.search(text):
                        stale += 1
                    if call:
                        call["result_is_temp_file"] = bool(re.match(r'\s*\{"ok":true,"data":"/[^"]+"', text))
                        call["result_bytes"] = n
                        call["error"] = is_error_result(block, text)
                        call["pre_dispatch_rejection"] = is_pre_dispatch_rejection(call["error"], text)
                        call["arg_validation_error"] = is_arg_validation_error(call["error"], text)
                        call["welcome_rejection"] = (call["pre_dispatch_rejection"]
                                                     and bool(WELCOME_REJECTION_RE.search(text)))
                        call["modal_blocked"] = bool(MODAL_BLOCKED_RE.search(text))
                        reset = CWD_RESET_RE.search(text) if call["name"] == "Bash" else None
                        call["cwd_reset"] = reset.group(1) if reset else None
        elif t == "result":
            if isinstance(ev.get("usage"), dict):
                result_usages.append(ev["usage"])
            # A run that delegates to a subagent emits one result event per session; keep the
            # main one (most turns) so turns/wall_s are not those of the subagent.
            if final is None or (ev.get("num_turns") or 0) >= (final.get("num_turns") or 0):
                final = ev

    navigation = analyse_navigation(calls, compactions, init_cwd or meta.get("project"))
    # Without result usage (killed run, Junie) the per-message sum is the closest quantity; it can
    # differ from the result's figure by a few percent (r11 S5: 1.50 M vs 1.57 M). A message's
    # `output_tokens` is a streaming placeholder (r13 S1-opus: 1,501 over all messages vs 33,707
    # in the result), so that column is exact only where a result event covers it.
    tokens = {}
    for key in TOKEN_USAGE_KEYS.values():
        main = [u[key] or 0 for u in result_usages if key in u]
        tokens[key] = (sum(main) if main else sum(u.get(key, 0) or 0 for u in usage_by_message.values())) \
            + sum(u.get(key, 0) or 0 for u in child_usage_by_message.values())

    # error -> retry pairs: same tool key again within the next 2 calls after an error
    retries = []
    for i, c in enumerate(calls):
        if c["error"]:
            for j in range(i + 1, min(i + 3, len(calls))):
                if calls[j]["name"] == c["name"]:
                    retries.append((c["step"], calls[j]["step"], c["key"]))
                    break
    # validation loops: check_root_node_problems on the same root >= 3 times
    per_root = Counter(c["root"] for c in calls if c["name"] == VALIDATE_TOOL and c["root"])
    loops = {r: n for r, n in per_root.items() if n >= 3}

    # chains
    keys = [c["key"] for c in calls]
    chains = defaultdict(lambda: {"count": 0, "chars": 0, "examples": []})
    for n in (2, 3):
        for i in range(len(keys) - n + 1):
            gram = " -> ".join(keys[i:i + n])
            e = chains[gram]
            e["count"] += 1
            e["chars"] += sum(c["input_chars"] + c["result_bytes"] for c in calls[i:i + n])
            if len(e["examples"]) < 3:
                e["examples"].append(f"{run_id}:{calls[i]['step']}-{calls[i + n - 1]['step']}")

    tool_calls = Counter(c["name"] for c in calls if c["name"].startswith("mps_mcp_"))
    mps_calls = sum(tool_calls.values())
    pre_dispatch_rejections = sum(
        1 for c in calls if c["name"].startswith("mps_mcp_") and c["pre_dispatch_rejection"]
    )
    expected_server_mps_calls = mps_calls - pre_dispatch_rejections
    server_mps_calls = sum(1 for s in server if mcp_name(s.get("tool") or "").startswith("mps_mcp_"))
    server_call_surplus = server_mps_calls - expected_server_mps_calls if server_evidence_available else None
    # NOTE: logs from rounds 1-4 carry the old call-log semantics, where `ok` just meant
    # "the tool call didn't throw" and there was no `threw`/`errorCode` field. Later logs'
    # `ok` also reflects the tool's own returned envelope (see McpCallLogListener.kt), so
    # server_ok/server_errors computed here are not directly comparable across that boundary.
    server_ok = sum(1 for s in server if s.get("ok"))
    wall_ms = final.get("duration_ms")
    if wall_ms is None and meta.get("startTs") and meta.get("endTs"):
        from datetime import datetime
        f = "%Y-%m-%dT%H:%M:%SZ"
        wall_ms = int((datetime.strptime(meta["endTs"], f) - datetime.strptime(meta["startTs"], f)).total_seconds() * 1000)

    metrics = {
        "run": run_id, "scenario": meta.get("scenario"), "model": meta.get("model"),
        "pass": meta.get("taskPass"), "exit": meta.get("exitCode"),
        "turns": final.get("num_turns"), "wall_s": round((wall_ms or 0) / 1000),
        **{column: tokens[key] for column, key in TOKEN_USAGE_KEYS.items()},
        # The pre-D50 per-event sums, kept so that earlier round reports can be compared.
        **{f"{column}_events": usage.get(key, 0) for column, key in TOKEN_USAGE_KEYS.items()},
        "cost_usd": final.get("total_cost_usd"),
        "tool_calls": len(calls), "mps_calls": mps_calls,
        "pre_dispatch_rejections": pre_dispatch_rejections,
        "arg_validation_errors": sum(
            1 for c in calls if c["name"].startswith("mps_mcp_") and c["arg_validation_error"]
        ),
        "welcome_rejections": sum(1 for c in calls if c["welcome_rejection"]),
        "close_project_calls": tool_calls.get("mps_mcp_close_project", 0),
        "modal_blocked": sum(1 for c in calls if c["modal_blocked"]),
        "expected_server_mps_calls": expected_server_mps_calls,
        "agent_calls": sum(1 for c in calls if c["name"] == "Agent" and c["parent_event"]),
        "authored_input_chars": sum(c["input_chars"] for c in calls),
        "mps_authored_chars": sum(c["input_chars"] for c in calls if c["name"].startswith("mps_mcp_")),
        "tool_result_bytes": result_total,
        "skill_read_bytes": sum(c["result_bytes"] for c in calls if c["skill_read"]),
        "skill_reads": sum(1 for c in calls if c["skill_read"]),
        "skill_msgs": navigation["skill_msgs"], "skill_loads": navigation["skill_loads"],
        "skill_greps_catalog": sum(1 for g in navigation["greps"] if g["scope"] == "catalog"),
        "skill_greps_skill": sum(1 for g in navigation["greps"] if g["scope"] == "skill"),
        "skill_greps_file": sum(1 for g in navigation["greps"] if g["scope"] == "file"),
        "rereads": len(navigation["rereads"]),
        "rereads_after_compaction": sum(1 for r in navigation["rereads"] if r["after_compaction"]),
        "index_hops": len(navigation["index_hops"]),
        "compactions": len(compactions), "compaction_s": sum(k["seconds"] for k in compactions),
        "first_compaction_step": compactions[0]["step"] if compactions else None,
        "bash_calls": sum(1 for c in calls if c["name"] == "Bash"),
        "bash_temp_result_reads": sum(1 for c in calls if c["bash_kind"] == "temp_result_read"),
        "bash_blueprint_writes": sum(1 for c in calls if c["bash_kind"] == "blueprint_write"),
        "temp_file_envelopes": sum(1 for c in calls if c["name"].startswith("mps_mcp_") and c["result_is_temp_file"]),
        "errors": sum(1 for c in calls if c["error"]), "retries": len(retries),
        "validation_loops": len(loops), "stale_incidents": stale,
        "server_calls": len(server), "server_mps_calls": server_mps_calls,
        "server_call_surplus": server_call_surplus,
        "server_errors": len(server) - server_ok,
        "server_ms": sum(s.get("ms", 0) or 0 for s in server),
    }
    return metrics, calls, chains, retries, loops, server, navigation


def main(argv=None) -> int:
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("runs", help="directory with *-worker.jsonl / *-server.jsonl / *.meta.json")
    ap.add_argument("--out", help="output directory (default <runs>/analysis)")
    ap.add_argument("--top", type=int, default=25)
    ap.add_argument("--min-occurrences", type=int, default=3)
    args = ap.parse_args(argv)
    runs = Path(args.runs)
    if not runs.is_dir():
        print(json.dumps({"ok": False, "error": f"not a directory: {runs}"}))
        return 2
    out = Path(args.out) if args.out else runs / "analysis"
    out.mkdir(parents=True, exist_ok=True)

    run_ids = sorted(p.name[:-len("-worker.jsonl")] for p in runs.glob("*-worker.jsonl"))
    all_metrics, all_chains, tools, errors = [], defaultdict(lambda: {"count": 0, "chars": 0, "examples": []}), defaultdict(Counter), {}
    tool_chars, tool_bytes = defaultdict(int), defaultdict(int)
    navigations = {}
    for rid in run_ids:
        m, calls, chains, retries, loops, server, navigation = analyse_run(rid, runs)
        all_metrics.append(m)
        navigations[rid] = navigation
        for gram, e in chains.items():
            a = all_chains[gram]
            a["count"] += e["count"]; a["chars"] += e["chars"]
            a["examples"] = (a["examples"] + e["examples"])[:6]
        for c in calls:
            tools[c["name"]]["calls"] += 1
            tools[c["name"]]["errors"] += int(c["error"])
            tool_chars[c["name"]] += c["input_chars"]; tool_bytes[c["name"]] += c["result_bytes"]
        for s in server:
            tools[s.get("tool") or "?"]["server_calls"] += 1
            # See the rounds-1-4 `ok`-semantics note in analyse_run() above.
            tools[s.get("tool") or "?"]["server_errors"] += int(not s.get("ok"))
            tools[s.get("tool") or "?"]["server_ms"] += int(s.get("ms") or 0)
        warning = None
        lifecycle = bool(LIFECYCLE_SCENARIO_RE.match(str(m["scenario"] or "")))
        surplus = m["server_call_surplus"]
        if surplus is not None and surplus != 0 and not lifecycle:
            head = (f"{rid}: {m['server_mps_calls']} server MPS calls - "
                    f"({m['mps_calls']} transcript MPS calls - {m['pre_dispatch_rejections']} pre-dispatch rejections) "
                    f"= {surplus} ")
            if surplus > 0:
                warning = (head + "server calls absent from the parent transcript; "
                           f"parent Agent calls={m['agent_calls']}. Delegation is one possible cause; the time-window "
                           "slice can also include observer traffic from the same project.")
            else:
                # Fewer server lines than the transcript accounts for: the slice is incomplete —
                # a project path outside `relatedProjects`, a restarted MPS, or a call log that
                # was off for part of the run. Treat it as an evidence gap, not as a clean run.
                warning = (head + "server calls MISSING from the slice; the server evidence is "
                           "incomplete (unlisted project path, MPS restart mid-run, or the call log "
                           "was off). Check the run's relatedProjects and mpsPid before comparing it.")
            print(f"WARNING: {warning}", file=sys.stderr)
        errors[rid] = {"retries": retries, "validation_loops": loops,
                       "server_call_surplus_warning": warning}

    with (out / "metrics.csv").open("w", newline="") as fh:
        if all_metrics:
            w = csv.DictWriter(fh, fieldnames=list(all_metrics[0].keys()))
            w.writeheader(); w.writerows(all_metrics)
    with (out / "phases.csv").open("w", newline="") as fh:
        w = csv.DictWriter(fh, fieldnames=["run", *PHASE_COLUMNS])
        w.writeheader()
        for rid, navigation in navigations.items():
            for row in navigation["phases"]:
                w.writerow({"run": rid, **{k: row[k] for k in PHASE_COLUMNS}})
    (out / "navigation.json").write_text(json.dumps(navigations, indent=1))
    tools_out = {t: dict(c, avg_input_chars=round(tool_chars[t] / c["calls"]) if c["calls"] else None,
                         avg_result_bytes=round(tool_bytes[t] / c["calls"]) if c["calls"] else None)
                 for t, c in sorted(tools.items(), key=lambda kv: -kv[1]["calls"])}
    (out / "tools.json").write_text(json.dumps(tools_out, indent=1))
    ranked = sorted(({"chain": g, "count": e["count"], "avg_chars": round(e["chars"] / e["count"]),
                      "score_raw": e["chars"], "examples": e["examples"]}
                     for g, e in all_chains.items() if e["count"] >= args.min_occurrences),
                    key=lambda x: -x["score_raw"])
    (out / "chains.json").write_text(json.dumps(ranked, indent=1))
    (out / "errors.json").write_text(json.dumps(errors, indent=1))
    with (out / "hotspots.md").open("w") as fh:
        fh.write(f"# Hotspot candidates (chains with >= {args.min_occurrences} occurrences, ranked by total chars)\n\n")
        fh.write("Assign determinism (1.0 / 0.5 / 0) per chain by inspecting the examples, then\n"
                 "score = count x avg_chars x determinism x (1 + retry_rate).\n\n")
        surplus_warnings = [e["server_call_surplus_warning"] for e in errors.values()
                            if e["server_call_surplus_warning"]]
        if surplus_warnings:
            fh.write("## Measurement-integrity warnings\n\n")
            for warning in surplus_warnings:
                fh.write(f"- {warning}\n")
            fh.write("\n")
        fh.write("| # | chain | count | avg chars | examples |\n|---|---|---|---|---|\n")
        for i, r in enumerate(ranked[:args.top], 1):
            fh.write(f"| {i} | `{r['chain']}` | {r['count']} | {r['avg_chars']} | {', '.join(r['examples'][:3])} |\n")
    print(json.dumps({"ok": True, "out": str(out), "runs": len(run_ids), "chains": len(ranked),
                      "tool_calls": sum(m['tool_calls'] for m in all_metrics),
                      "errors": sum(m['errors'] for m in all_metrics),
                      "retries": sum(m['retries'] for m in all_metrics)}))
    return 0


if __name__ == "__main__":
    sys.exit(main())
