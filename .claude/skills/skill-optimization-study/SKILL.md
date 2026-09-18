---
name: skill-optimization-study
description: Re-runnable measurement loop for agent-driven JetBrains MPS work over mps_mcp_* tools — baseline headless worker runs on fixed scenarios, server call log + transcripts, hotspot ranking, remedy classification (docs / server tool / offline script / online script / template), optional A/B. Use when tool descriptions or mps-* skills changed, before a release, or when agents seem slow or retry-prone on MPS tasks.
---

# Skill optimisation study (MPS MCP)

A repeatable procedure for finding where agents waste turns and tokens when driving MPS through
`mps_mcp_*`, and for choosing the cheapest fix. This skill is self-sufficient: the 2026-09 study documents
(`plugins/mcp-tools/docs/skill-script-automation-study.md` and its runbook) are history and
evidence, not required reading. Scripts and scenario prompts live in `plugins/mcp-tools/study/`;
if that directory is removed, move `scripts/` here and the prompts into `assets/`.

## Conventions used below

Agent shells reset the working directory per call, so every command uses absolute paths through
two variables — set them at the start of each Bash call (or export them in a wrapper script):

```
STUDY=/Users/vaclav/work/MPS/myMPS-fix/plugins/mcp-tools/study   # adjust to the checkout
RUNS=$HOME/MPSProjects/mcp-study/runs                            # evidence dir, outside the repo
```
`$RUNS/inventory.json` is a load-bearing name: `run_worker.sh` records its sha in every run's meta.

## Roles

- **Observer** (this session, Opus-class): orchestrates, never performs the MPS task, never tells
  workers they are measured, evaluates results read-only, writes the report.
- **Workers**: headless `claude -p` processes, one per (scenario, model, run), launched by
  `study/scripts/run_worker.sh`. Evidence = their stream-json transcript + the server call log.
- **Human**: opens/closes scratch projects in MPS, restarts MPS when the plugin changed, answers the
  gate questions, approves pushes.

## Gate questions to ask before starting (use them verbatim)

1. Instrumentation: server call log first (needs plugin rebuild + MPS restart) or transcript-only?
2. Worker models (default: opus + sonnet).
3. Permission mode for workers (default: `bypassPermissions` on the developer's machine).
4. Scope of the first pass before gate 1 (default: S1 + S3 on both models = 4 runs).
Gate 1 (after the pilot): matrix size. Gate 2 (after the report): which remedies; A/B yes/no.

## Procedure (tick as you go; details in the references)

1. **Preflight** — MPS running with MCP on `http://localhost:64343/stream`. Check the toolchain:
   `claude --version` (≥ 2.1; must accept `--output-format stream-json --strict-mcp-config`),
   `python3 -c 'import sys; assert sys.version_info >= (3, 9)'`, `jq --version`.
   `mps_mcp_list_open_projects(projectPath=<golden>)` must list the golden project — "empty" means
   no modules of its own (`mps_mcp_get_project_structure` returns no modules), e.g.
   `~/MPSProjects/ProjectX`. Other projects may be open only if their module names are disjoint
   from what workers will create. Is the call log on? `grep -c mps.mcp.calllog <MPS>/log/idea.log`
   ≥ 1 and the log file grows after any tool call; if not (gate question 1 = transcript-only),
   expect 0-line `*-server.jsonl` slices and skip the call-log checks below.
   Record the tool inventory: `python3 $STUDY/scripts/tools_inventory.py --out $RUNS/inventory.json`.
   Assert there are no user-level `mps-*` skills (`ls ~/.claude/skills`) — those shadow the
   per-project catalog and would silently replace the thing being measured. Also assert there
   are no MPS-related Markdown definitions anywhere below `~/.claude/agents`: a filename matching
   `*mps*` or a body containing `mps_mcp`, both case-insensitively, is contamination. The mandatory
   `run_worker.sh` guard enforces this before any run side effect and exits 3 on a match or an
   unreadable catalog; it never modifies user agents (lesson 26). Built-in `Explore` and `Task`
   agents are outside this pin and remain enabled.
2. **Instrument** — the plugin logs one JSON line per dispatched call when MPS runs with
   `-Dmps.mcp.calllog=<file>` (`McpCallLogListener`, off by default). Add the option to the `MPS` run
   configuration for the study only and REVERT it afterwards (it hard-codes a home path).
3. **Template** — snapshot the golden project (`tar`) **without any agent doc surface**: exclude
   `.git`, `workspace.xml`, and also `.agents/`, `.claude/`, `AGENTS.md`, `CLAUDE.md`. A tarball is
   a point-in-time copy, so a catalog inside it is what every later round measures no matter how
   far the bundled skills have moved (lesson 20). Instead, `run_worker.sh` installs the **live**
   catalog into each run's project right before launching the worker — `scripts/install_skills.py`
   purges every `mps-*` folder plus both guides and calls `mps_mcp_initialize_project_for_agents`,
   then records `skillsSha256` in the meta. Verify the tarball:
   `tar -tzf <f>.tar.gz | grep -E '(^|/)(\.claude|\.agents|AGENTS\.md|CLAUDE\.md)'` must be empty.
   Do NOT put `.mcp.json` in the template; the worker gets the server from `study/mcp.study.json`
   with `--strict-mcp-config`.
4. **Smoke** — `SMOKE` is a harness check, not a scenario: a read-only prompt that lists open
   projects and stops, so it may run against the golden project itself (no template copy, no
   evaluation, `pass` stays empty). `RUNS=$RUNS MAX_TURNS=6 $STUDY/scripts/run_worker.sh SMOKE sonnet <n>
   <golden>` — bump `<n>` on every re-run (the harness refuses an existing run id). The transcript
   must contain `tool_use`, `tool_result`, per-message `usage`; exactly one MCP server; and, when
   the call log is on, a `SMOKE-…-server.jsonl` slice of ≥ 1 line.
5. **Scenarios** — `study/scenarios/S1..S8/{worker_prompt.md,done_criteria.md}`; add a scenario for
   whatever skill/tool changed. Prompts are developer-voice, fixed names, explicit "done", NO reporting
   requirements. Fixtures: `empty-project`, `statechart` (Projectxx5), `recipes` (a passing S1) —
   regenerated per `study/fixtures/README.md`, not stored in git.
6. **Runs** — ONE scratch project open at a time (see lessons: shared module repository leaks across
   projects). Per run: copy fixture → human opens → confirm with `list_open_projects` → launch
   detached (`run_worker.sh` first rejects MPS-related user agents, then installs the live skills;
   either guard failure aborts with exit 3) →
   poll the PID in bounded loops → evaluate with an Opus subagent using the `done_criteria.md`
   (read-only `mps_mcp_*`, always with `projectPath`) → record pass/evidence in `<id>.meta.json`
   → human closes. Sequential, never two workers against one MPS. Check that every meta's
   `skillsSha256` is the same value before comparing runs; a differing one means the catalog moved
   mid-round.
7. **Analyse** — `python3 $STUDY/scripts/analyze_runs.py $RUNS [--out DIR]` (default `$RUNS/analysis`)
   → `metrics.csv`, `tools.json`, `chains.json`, `errors.json`, `hotspots.md`; `pass` is filled from
   each run's meta after evaluation. Filter chains containing `mps_mcp`, group into families, have an
   Opus reviewer inspect 3 instances per family with `study/scripts/show_steps.py` and assign
   determinism {1.0, 0.5, 0}. Rank by avoidable turns (fixed context ≈ 150 K cache-read tokens per
   turn dominates) as well as by the study formula.
8. **Classify** each hotspot D → S → P-off → P-on → T (first fit). Write `HOTSPOT_REPORT.md`:
   baseline table, ranked hotspots with `run:step` evidence, hypotheses, defects, remedies with
   owner/contract/saving/risk. Keep a separate `docs-defects.md` from day one.
9. **Treat** — parallel Opus implementers with DISJOINT file sets (skill docs / skill scripts +
   packaging + drift test / server batch). Never two agents in the same Kotlin toolset; the observer
   registers new tests in `McpToolsIntegrationTestSuite` and runs the suite between batches.
10. **A/B** (optional) — same runs against the treated tools; success = ≥ 30 % fewer tool calls and
    ≥ 25 % fewer context tokens on treated scenarios, no drop in pass rate; delete remedies that do
    not pay.
11. **Wrap up** — fold conclusions into the study doc; revert the VM option; delete fixture tarballs
    (keep the SMOKE scenario — step 4 needs it); clean `~/MPSProjects/mcp-study/`, `~/.claude.json` project entries, and
    `~/.claude/projects/-…-mcp-study-proj-*/` memory dirs; keep the call-log listener.

## References

- `references/harness.md` — run_worker.sh, analyze_runs.py, show_steps.py, tools_inventory.py usage;
  clean-environment rule; per-run procedure card.
- `references/scenarios.md` — the scenario set, fixtures, done-criteria style, adding a scenario.
- `references/analysis.md` — metrics, chain scoring, rubric, report template, thresholds.
- `references/lessons.md` — what went wrong the first time and the rule that came out of it.
