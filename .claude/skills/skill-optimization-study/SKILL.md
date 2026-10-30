---
name: skill-optimization-study
description: Re-runnable measurement loop for agent-driven JetBrains MPS work over mps_mcp_* tools — baseline headless worker runs on fixed scenarios, server call log + transcripts, hotspot ranking, remedy classification (docs / server tool / offline script / online script / template), optional A/B. Use when tool descriptions or mps-* skills changed, before a release, or when agents seem slow or retry-prone on MPS tasks.
---

# Skill optimisation study (MPS MCP)

A repeatable procedure for finding where agents waste turns and tokens when driving MPS through
`mps_mcp_*`, and for choosing the cheapest fix. The study folder is the home of the scripts,
scenarios, fixtures and reports. This file is the observer's entry: roles, the gate questions,
then the runbook. It is not a second copy of the study, and it does not absorb the scripts if
that folder is removed.

The same file is copied to `.claude/skills/skill-optimization-study/SKILL.md`. Keep the two
copies identical. Do not replace either with a symlink.

The 2026-09 documents under `plugins/mcp-tools/docs/` are product history, not this procedure.

## Conventions used below

Agent shells reset the working directory per call, so every command uses absolute paths through
two variables — set them at the start of each Bash call (or export them in a wrapper script):

```
STUDY=<checkout>/plugins/mcp-tools/study
RUNS=$HOME/MPSProjects/mcp-study/runs
```

`$RUNS/inventory.json` is a load-bearing name: `run_worker.sh` records its sha in every run's meta.
Scratch projects go to `$HOME/MPSProjects/mcp-study/workspace/<run-id>/`, one at a time. The map,
including that workspace contract, is `$STUDY/README.md`.

## Roles

- **Observer** (this session, Opus-class): orchestrates, never performs the MPS task, never tells
  workers they are measured, evaluates results read-only, writes the report. Owns the whole
  lifecycle: **synthesizes** empty projects (`scripts/new_study_project.py`), **opens** them via CLI
  (`mps-project-management`), **closes** them with `mps_mcp_close_project`, and **starts, restarts
  and shuts MPS down** with `scripts/mps_control.sh`. Before each swap, tell the user the absolute
  path about to close (if any) and the absolute path about to open — do not ask them to perform the
  swap and do not wait for approval.
- **Workers**: headless CLI processes (`claude -p` or `junie --task`), one per (scenario, model, run),
  launched by `study/scripts/run_worker.sh`. Evidence = their transcript + the server call log.
- **Human**: answers the gate questions, approves pushes, and dismisses MPS dialogs when a call
  returns `MODAL_BLOCKED` or a close/exit hangs on a confirmation. Does **not** open, close or
  create projects and does **not** restart MPS — those are observer actions now.

## Gate questions to ask before starting (use them verbatim)

Before question 2, run `python3 $STUDY/scripts/list_worker_models.py` and present `models` as a
multi-select. The orchestrator model is first and marked; list it first with "(Recommended)" (the
picker cannot preselect). Extra ids the user types are allowed. Ask question 2a after question 2, as
one single-select question per selected model (batch them, at most 4 per AskUserQuestion call). The
recommended level is the one the user-level settings give that model today: its
`settingsEffort.perModel` entry for the full model id, else `settingsEffort.default`. List it first
with "(Recommended)". Fill the other options from `effortLevels`, at most 4 in all: on Claude leave
`max` to "Other", unless `max` is the recommended level, in which case drop `low` instead. With no
settings level (or on Junie) there is no recommendation; the CLI's built-in default is unknown, so
the user picks. Always pin it, because an unpinned worker takes the observer's last `/effort` for
that model, which changes between rounds without a trace (round 19). Ask question 3 only when the
detected harness is Claude; Junie non-interactive has no `bypassPermissions` equivalent (`--brave`
is interactive-only).

1. Instrumentation: server call log first (needs a plugin rebuild; the observer restarts MPS
   itself with `mps_control.sh restart`) or transcript-only?
2. Worker models (run list_worker_models.py; default: the orchestrator model from that list).
2a. Effort level for `<model>` (one per selected model; options from `effortLevels`; recommended:
   the level the user-level settings give that model today, if any). Every run of that model gets
   `EFFORT=<level>`.
3. Permission mode for workers (default: `bypassPermissions` on the developer's machine).
4. Scope of the first pass before gate 1 (default: S1 + S3 on the selected models).
Gate 1 (after the pilot): matrix size. Gate 2 (after the report): which remedies; A/B yes/no.

## Where the rest lives

Read `$STUDY/instructions/runbook.md` and follow it. Do not keep a second copy of that procedure here.

- `instructions/runbook.md` — how to run a round, the harness, and how to add a cell
- `instructions/scenarios.md` — which cell covers which skill; the only catalog
- `instructions/fixtures.md` — how to regenerate each tarball
- `instructions/analysis.md` — metrics and rubric
- `instructions/lessons.md` — rules that came out of earlier rounds
- `instructions/defects.md` — open defects and the recurrence watch
- `reports/index.md` — which round was written up
