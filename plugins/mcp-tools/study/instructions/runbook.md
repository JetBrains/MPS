# How to run a round

This is the observer's procedure. The cell catalog is [`scenarios.md`](scenarios.md). Fixture regeneration is [`fixtures.md`](fixtures.md). Tarball hashes are [`../fixtures/pins.md`](../fixtures/pins.md). Metrics are [`analysis.md`](analysis.md). Lessons are [`lessons.md`](lessons.md). Open defects are [`defects.md`](defects.md). Reports are [`../reports/index.md`](../reports/index.md).

## Conventions

```
STUDY=<checkout>/plugins/mcp-tools/study
RUNS=$HOME/MPSProjects/mcp-study/runs
```

`$RUNS/inventory.json` is load-bearing: `run_worker.sh` records its sha in every run's meta. Scratch projects are `$HOME/MPSProjects/mcp-study/workspace/<run-id>`, one at a time. Current tarballs are `$HOME/MPSProjects/mcp-study/fixtures/`. An empty project is synthesized by `new_study_project.py`, never unpacked.

## Procedure (tick as you go; details in the references)

1. **Preflight** — MPS running with the MCP server enabled. The port belongs to the IDE selector
   (64343 on the 261 from-sources MPS, 64344 on 262); `mps_control.sh` and `run_worker.sh` detect
   it from the live launcher themselves (`mps_control.sh url --json` shows what they find). **Do
   not export `MPS_MCP_URL` during preflight**: MPS may not be up yet, and an exported unconfirmed
   value pins the whole round to the wrong port. Set it by hand only to override detection (e.g.
   several MPS processes), or after `mps_control.sh wait` has reported `confirmed: true`. SMOKE
   targets the harness project, never a developer checkout. Check the toolchain:
   `claude --version` (≥ 2.1; must accept `--output-format stream-json --strict-mcp-config`)
   when the detected harness is Claude, or `junie --version` when it is Junie,
   `python3 -c 'import sys; assert sys.version_info >= (3, 9)'`, `jq --version`.
   Preflight is self-healing, and every step of it is yours:
   - MPS not running → `mps_control.sh start`, then `mps_control.sh wait`. With no capture on
     file, a from-sources MPS still uses the IDEA `MPS` run configuration. A standalone install
     does not: `MPS_INSTALL="/path/to/MPS.app" mps_control.sh install` once (or the install root,
     or `bin/mps.sh`), then `start`. Do not reconstruct that install's JVM command.
   - A capture from another MPS → `restart` keeps an existing capture: it shuts down the live MPS
     and starts the captured one, so the two can be different MPS builds (`start` refuses while
     any MPS runs). Compare `jq '{selector, cwd}' "${CAPTURE:-$TMPDIR/mps-study-cmdline.json}"`
     (an `install` capture has `launcher` and `install` instead) with
     `$STUDY/scripts/mps_control.sh url --json | jq .selector`. When they differ, decide which MPS
     the round measures. To keep the live one, run `capture` again, then repeat `calllog` and
     `idelog`, because a new capture brings back the checkout's log path. To keep the captured
     one, `shutdown` the live MPS, then `start`. A per-checkout `CAPTURE` file avoids the clash
     on the next round.
   - `$RUNS` left over from a closed round → a round starts on an empty `$RUNS`. If it holds any
     `*.meta.json` of a round that is already written up (or abandoned), move the whole directory
     to `~/MPSProjects/mcp-study/archive/runs/<round>/` and create an empty `$RUNS`. Old
     `*.meta.json` and `*-worker.jsonl` make `run_worker.sh` refuse reused run ids and make
     `analyze_runs.py` mix the rounds, and a stale `inventory.json` puts the wrong
     `inventorySha256` in new metas. Moving stragglers out of the active round's `runs/` is the
     separate step in [`cleanup.md`](cleanup.md), not this one.
   - Welcome screen → **synthesize** a *harness project* and open it:
     `python3 $STUDY/scripts/new_study_project.py --dir ~/MPSProjects/mcp-study/workspace/harness`
     writes the three descriptor files (`migration.xml` derived from this MPS, so no Migration
     Assistant), then open it via CLI (`mps-project-management`). Announce the path first. Do not
     retry MCP until that open has landed — Welcome-screen calls are rejected before dispatch.
   - `mps_mcp_list_open_projects(projectPath=<harness>)` must then list it. A synthesized project is
     empty by construction (`mps_mcp_get_project_structure` returns no modules); nothing in the study
     depends on a hand-maintained one, though an existing empty project may be substituted if
     synthesis fails. **Every other project must be closed first** — including the developer's own
     checkout, the common case when MPS was started from the IDEA run configuration. Disjoint
     module names are not enough: with `confirmOpenNewProject2 = -1` (the default) the second open
     raises the modal New Window / This Window prompt and blocks the round (lesson 30). Announce
     the path you close; it is an observer action, not one to ask for.
   - Is the call log on? Ask the process, not the log:
   `ps -ww -p $(pgrep -f '[j]etbrains\.mps\.Launcher') -o args= | tr ' ' '\n' | grep calllog`
   must print the option, and the file must grow after a tool call. If it is off and gate question
   1 said call-log, step 2 turns it on; if gate 1 said transcript-only,
   expect 0-line `*-server.jsonl` slices and skip the call-log checks below.
   Record the tool inventory: `MPS_MCP_URL=$($STUDY/scripts/mps_control.sh url) python3
   $STUDY/scripts/tools_inventory.py --out $RUNS/inventory.json` (it does not detect the port itself).
   Run the harness's own unit tests once (`cd $STUDY/scripts && python3 -m unittest discover -s
   tests -p 'test_*.py'`) — a broken script is cheaper to find here than in the evidence.
   Then run the contamination guard yourself: `python3 $STUDY/scripts/check_user_agents.py`
   (exit 0 clean, 3 contaminated). It rejects MPS-related Markdown definitions below
   `~/.claude/agents` / `~/.junie/agents` — a filename matching `*mps*` or a body containing
   `mps_mcp`, both case-insensitively — **and** any `mps-*` folder in `~/.claude/skills` or
   `~/.junie/skills`, which would shadow the per-project catalog and silently replace the thing
   being measured (lessons 26, 32). `run_worker.sh` runs the same guard before any run side effect.
   The guard never modifies anything: move an offending user skill out of the skills directory
   for the round and restore it at wrap-up. Built-in `Explore` and `Task`
   agents are outside this pin and remain enabled.
2. **Instrument** — the plugin logs one JSON line per dispatched call when MPS runs with
   `-Dmps.mcp.calllog=<file>` (`McpCallLogListener`, off by default). Turn it on without a human and
   without touching a tracked file: `mps_control.sh capture` **while MPS is still alive**, then
   `mps_control.sh calllog $RUNS/server-calllog.jsonl` (writes the option into the capture) and
   `mps_control.sh idelog` (drops the checkout's `-Didea.log.path`, so `list_open_projects` reports
   the selector's default log directory instead of the MPS source checkout — A17), then
   `shutdown` (the close of the last project carries the exit), `start <project>`, `wait`, and one
   SMOKE run as the readiness gate. `capture` only preserves VM options the live process already
   carries, which is why `calllog` exists — adding the option to the `MPS` run configuration works
   too but is study-only and must be reverted at wrap-up (lesson 13), so prefer the capture route.
   Confirm the relaunched process actually carries it (`ps -ww -p <pid> -o args= | tr ' ' '\n' |
   grep calllog`) and that the file grows, and that `list_open_projects` reports a `logDirectory`
   outside the MPS checkout. Re-running `capture` against a developer-launched MPS (also
   `restart` with no capture) takes the checkout's log path back, so repeat `idelog` after it.
3. **Template** — the empty fixture is **synthesized, not snapshotted**
   (`scripts/new_study_project.py`): three descriptor files, no doc surface possible, and a
   `migration.xml` derived from the MPS that will open it. Module-bearing fixtures (`statechart`,
   `recipes*`) are still tarballs, snapshotted **without any agent doc surface**: exclude
   `.git`, `workspace.xml`, and also `.agents/`, `.claude/`, `AGENTS.md`, `CLAUDE.md`. A tarball is
   a point-in-time copy, so a catalog inside it is what every later round measures no matter how
   far the bundled skills have moved (lesson 20). Instead, `run_worker.sh` installs the **live**
   catalog into each run's project right before launching the worker — `scripts/install_skills.py`
   purges every `mps-*` folder plus both guides and calls `mps_mcp_initialize_project_for_agents`,
   then records `skillsSha256` in the meta. Verify every tarball:
   `tar -tzf <f>.tar.gz | grep -E '(^|/)(\.claude|\.agents|AGENTS\.md|CLAUDE\.md)'` must be empty
   (a synthesized project has nothing to verify).
   Do NOT put `.mcp.json` in the template; `run_worker.sh` generates the worker's MCP config per
   run into `$RUNS/<id>-mcp/` from the detected URL and passes it with `--strict-mcp-config`.
4. **Smoke** — `SMOKE` is a harness check, not a scenario: a read-only prompt that lists open
   projects and stops, so it runs against the harness project itself (no template copy, no
   evaluation, `pass` stays empty). It is also the **readiness gate after every MPS start or
   restart** — a live process is not readiness. If the harness project is not open, announce its
   path, synthesize it if needed and open it via CLI; do not close it afterwards unless the next
   run needs a different project.
   `RUNS=$RUNS EFFORT=<level for $MODEL> MAX_TURNS=6 PROJECT_SYNTHESIZED=1 $STUDY/scripts/run_worker.sh SMOKE $MODEL <n>
   <harness-project>` — bump `<n>` on every re-run (the harness refuses an existing run id);
   drop `PROJECT_SYNTHESIZED=1` if the harness project was not synthesized. The transcript
   must contain `tool_use`, `tool_result`, per-message `usage`; exactly one MCP server; and, when
   the call log is on, a `SMOKE-…-server.jsonl` slice of ≥ 1 line.
5. **Scenarios** — `scenarios/S1..S24/{worker_prompt.md,done_criteria.md}`. Which cells a
   changed skill actually forces is [`scenarios.md`](scenarios.md) (brief list, then the directory). Look
   that up before picking the matrix; the gate-4 default (S1 + S3) is a pilot default, not that
   lookup. Add a scenario for whatever skill/tool the directory does not cover. **S10 (project
   lifecycle) runs last in a round**: it is the only
   scenario whose worker closes and opens projects, and a mistake in it can leave a modal dialog
   that blocks every later `mps_mcp_*` call. Prompts are developer-voice, fixed names, explicit "done", NO reporting
   requirements. Fixtures: `empty-project` (synthesized per run, not a tarball),
   `statechart` (Projectxx5), `recipes` (a passing S1), `recipes-misgen` (S15), `recipes-gen` (S18, S19, S22), `flows-gen` (S23, S24), `expressions`
   (`samples/expressions`, S11, S12), `kaja-dataflow` (`samples/robot_Kaja` with injected builder
   bugs, S13), `kaja-dataflow-2` (S16), `flow-java` (one BaseLanguage class, S14) — regenerated per
   [`fixtures.md`](fixtures.md), not stored in git.
6. **Runs** — ONE scratch project open at a time (see lessons: shared module repository leaks across
   projects; S10 honours this by being sequential — it closes one project before opening the next).
   Restart MPS before a cell whose fixture language an earlier cell already loaded in the current
   process — any two of S3/S4/S5/S6/S7/S9/S15/S17/S18/S19/S22 on `recipes*`, S23/S24 on `flows-gen`, S2/S8 on `statechart` — and always before S11, S12,
   S13 and S16 (`shutdown` → `start` harness → `wait` → SMOKE; launch with `ISOLATION=per-shared-fixture-restart`, recorded per run
   beside `mpsPid`; lessons 40, 42). A read-only cell (S9) may precede a language-changing one in the
   same process; synthesized cells (S1, S10) need no restart.
   Per run: **synthesize** the empty project or copy the fixture tarball (`PROJECT_SYNTHESIZED=1`
   when synthesized) → announce the scratch path (and any path you will close first)
   → close a previous scratch with `mps_mcp_close_project` if one is still open → open the new copy
   via CLI (`mps-project-management`) → confirm with `list_open_projects` → launch
   detached (`run_worker.sh` first rejects MPS-related user agents, then installs the live skills;
   either guard failure aborts with exit 3) →
   poll the PID in bounded loops → evaluate with an Opus subagent using the `done_criteria.md`
   (read-only `mps_mcp_*`, always with `projectPath`) → set `taskPass` (true/false) and
   `taskEvidence` (the `<id>.eval.md` name) in `<id>.meta.json` — `analyze_runs.py` reads only
   `taskPass` into the `pass` column
   → announce the path and close with `mps_mcp_close_project` (`force=false`; on `MODAL_BLOCKED`
   ask the user only to dismiss the dialog). Sequential, never two workers against one MPS. Pass the
   model's gate-2a level as `EFFORT` on every launch. Check that every meta's `effort` is that
   level and that every meta's
   `skillsSha256` and `guidesSha256` are each the same value before comparing runs; a differing one
   means the catalog or the installed `AGENTS.md` / `CLAUDE.md` moved mid-round. Open/close details: the harness section of this runbook.
7. **Analyse** — `python3 $STUDY/scripts/analyze_runs.py $RUNS [--out DIR]` (default `$RUNS/analysis`)
   → `metrics.csv`, `tools.json`, `chains.json`, `errors.json`, `hotspots.md`; `pass` is filled from
   each run's meta after evaluation. Then
   `python3 $STUDY/scripts/families.py <baseline runs> <previous round> $RUNS > $RUNS/analysis/families.tsv`
   (per-run family counters, [`analysis.md`](analysis.md)). Filter chains containing `mps_mcp`, group into families, have an
   Opus reviewer inspect 3 instances per family with `study/scripts/show_steps.py` and assign
   determinism {1.0, 0.5, 0}. Rank by avoidable turns (fixed context ≈ 150 K cache-read tokens per
   turn dominates) as well as by the study formula.
8. **Classify** each hotspot D → S → P-off → P-on → T (first fit). Write the round file under `reports/hotspot/` (see [`../reports/index.md`](../reports/index.md)):
   baseline table, ranked hotspots with `run:step` evidence, hypotheses, defects, remedies with
   owner/contract/saving/risk. Keep open defects in [`defects.md`](defects.md) from day one.
9. **Treat** — parallel Opus implementers with DISJOINT file sets (skill docs / skill scripts +
   packaging + drift test / server batch). Never two agents in the same Kotlin toolset; the observer
   registers new tests in the matching `Mcp*TestSuite` sub-suite (the umbrella
   `McpToolsIntegrationTestSuite` lists only the sub-suites) and runs the umbrella between batches,
   or a subset with `MCP_TESTS` (`.agents/quality-gates.md`). A server-side change needs the plugin
   rebuilt and MPS restarted: `mps_control.sh restart` + SMOKE, no human step.
10. **A/B** (optional) — restart MPS onto the treated plugin (`mps_control.sh restart`, then
    SMOKE), then the same runs against the treated tools; success = ≥ 30 % fewer tool calls and
    ≥ 25 % fewer context tokens on treated scenarios, no drop in pass rate; delete remedies that do
    not pay.
11. **Wrap up** — fold conclusions into the study doc; revert the VM option; leave the current tarballs in `~/MPSProjects/mcp-study/fixtures/` (archive a round under `archive/` rather than deleting those tarballs)
    (keep the SMOKE scenario — step 4 needs it); once the report is written, move `$RUNS` to
    `~/MPSProjects/mcp-study/archive/runs/<round>/` so the next round starts empty; announce and close any remaining scratch with
    `mps_mcp_close_project`, **closing the last one with `shutdownWithLastProject=true`** if MPS
    should go down — the shutdown rides on that last close, because a Welcome-screen MPS cannot be
    stopped over MCP; delete any `<proj>-target` directory an S10 run left; clean
    `~/MPSProjects/mcp-study/workspace/`, `~/.claude.json` project entries, and
    `~/.claude/projects/-…-mcp-study-workspace-*/` memory dirs (also any older `mcp-study-proj-` prefix); Junie workers may leave
    `~/.junie/sessions` — do not auto-delete them; keep the call-log listener. The capture
    file lives in `$TMPDIR`, outside that cleanup, so a later round can still relaunch.


## Project create / open / close (orchestrator, every scenario)

The observer creates, opens and closes the scratch project for S1–S24 and, when needed, the harness
project for SMOKE, and it starts, restarts and shuts MPS down. Do not ask the user to File→Open,
Close Project or restart the IDE. Before each action, tell the user the absolute path that will
close (if any) and the absolute path that will open. Synthesize an empty project with
`$STUDY/scripts/new_study_project.py`; open via the CLI protocol in `mps-project-management` (there is
still no MCP open tool); close with `mps_mcp_close_project` (`projectPath` = the scratch dir,
`force=false`). Details: the harness section below.

Workers already assume "MPS is running … and this project open" — do **not** add open/close
instructions to `worker_prompt.md` (prompts are frozen, sha in meta). Do **not** put swap steps in
`done_criteria.md` either: evaluators are read-only and must not close the project mid-check.
SMOKE may use the harness project in place; still announce if you open or close it.

**S10 is the single exception to both worker rules above**, because the project lifecycle *is* what
it measures: its prompt tells the worker to create a project, close the current one, open the new
one and close it again. The `done_criteria.md` half of the rule still holds — the evaluator stays
read-only, and the observer performs every swap that surrounds the run, including the reopen needed
to check the result. Two hard constraints come with it:
- **Sequential, never two projects open.** With the platform default
  (`confirmOpenNewProject2 = -1`) opening a project while another is open raises the modal
  *New Window / This Window* prompt, which blocks every `mps_mcp_*` call and whose "This Window"
  answer closes the project being measured. A Welcome-screen MPS opens without prompting, so the
  worker closes first and opens second. Do not "improve" this into a two-project scenario, and do
  not change the IDE preference for the study.
- **Record the left-behind state first.** The observer calls `list_open_projects` the moment the
  worker exits — a Welcome-screen rejection is a valid answer — and only then reopens anything.
  After a reopen that evidence is gone.

**Modal recovery (S10, and any round that hits a dialog).** A wrong `migration.xml` opens the modal
Migration Assistant, which blocks every `mps_mcp_*` call for the rest of the **round**, not just
that run. Ask the user to dismiss the dialog — never run the migration — then
`mps_control.sh restart` if MCP does not recover. Record it as a task FAIL with the dialog as
evidence: that is exactly the hotspot S10 exists to find. Wrap-up closes and deletes every
`<proj>-target` directory.

## Writing a prompt
Developer voice, short, fixed names, numbered steps, explicit "Done when …", closing lines
"Do not roll back changes. Do not edit .mps/.mpl files as text. Stop and explain if blocked."
NO reporting/notes requirements (they change behaviour and cost tokens). Freeze the prompt (sha in meta).
A prompt that touches the project lifecycle adds **"Do not shut MPS down."**: a worker passing
`shutdownWithLastProject=true` ends the round, not just its run. Freeze such a prompt only after a
rehearsal run has shown the worker's MCP session surviving the zero-project window — S10's did on
2026-09-22 (`S10-sonnet-1`: close at step 16, CLI activation at 17-19, `list_open_projects` answers
normally at 20 on the same session), so its prompt is now **frozen**.

## Writing done criteria
Observer-checkable with read-only tools only (the one exception: an observer MAKE between two
evaluator passes, when a check needs a built language — S8 criterion 3, A8); list the exact tool
per check; accept equivalent modelling explicitly (e.g. 0..n references as smart-reference
wrapper concepts); say which checker messages count as errors vs warnings. Known quirk: enum
default literal prints as `""`.
Where the artefact *is* a file (project descriptors, for instance), an on-disk check is fine — but
compare generated XML by its parsed content, never byte-wise: `new_project_migration_xml.py` ends
its document with a newline and an MPS-written file does not. Any reopening a check needs is the
observer's job, after the left-behind state has been recorded.

## Adding a scenario for a changed skill/tool
Pick the smallest task that forces the changed path (e.g. a new tool parameter), reuse a fixture,
write done criteria first, run once per selected model, compare its chains with the baseline `chains.json`.
The observer opens and closes the reused fixture the same way as S1–S9 and S11–S24 (announce paths; CLI open;
`mps_mcp_close_project` close). Do not make the worker or the evaluator perform the swap — unless
the swap itself is the changed surface, which is S10's declared exception above and should stay the
only one. A lifecycle scenario also needs `relatedProjects` in its run meta (`run_worker.sh` derives
`<project>-target` for `S10*`), or the analyser filters its server evidence away.

## Harness

All scripts: `plugins/mcp-tools/study/scripts/`, Python ≥ 3.9 stdlib, `--help`. Their unit tests
run with the stdlib runner — `cd plugins/mcp-tools/study/scripts && python3 -m unittest discover
-s tests -p 'test_*.py'`; there is no pytest dependency and the system python3 has no pytest.
Run them once at preflight: a harness bug is cheaper to find there than in a round's evidence.

## run_worker.sh `<scenario> <model> <run-no> <project-dir>`
Env: `RUNS` (default `~/MPSProjects/mcp-study/runs`), `CALLLOG` (default `$RUNS/server-calllog.jsonl`),
`MAX_TURNS` (400, Claude only), `STUDY` (auto), `SKIP_SKILL_INSTALL` (0), `ISOLATION` (`per-round`),
`PROJECT_SYNTHESIZED` (0 — set 1 when the project came from `new_study_project.py`),
`EFFORT` (unset — the gate-2a level for this model, passed as `--effort`; Claude accepts
`low|medium|high|xhigh|max`, Junie `low|medium|high`, anything else exits 2 before any side
effect; recorded as `effort` in the meta and as the `effort` column of `metrics.csv`, empty when
unpinned, and an unset `EFFORT` prints a warning on stderr. Unpinned Claude workers read
`~/.claude/settings.json`: `modelSettings.<full-id>.effortLevel`, else the top-level `effortLevel`,
both of which the observer's `/effort` rewrites; a project `.claude/settings*.json` may override them),
`RELATED_PROJECTS` (colon-separated; auto-set to `<project>-target` for S10),
`MPS_MCP_URL` (unset — detected from the live MPS by `mps_mcp_url.py` and required to be
confirmed; a non-empty value is used as given), `MCP_CONFIG` (unset — the worker's MCP config is generated per run; set it to use an
explicit one: a **file** for Claude, a **directory** holding `mcp.json` for Junie, anything else
exits 2),
`WORKER_HARNESS` (`claude`|`junie`; overrides auto-detect). Auto-detect uses observer `JUNIE_TMPDIR` /
`JUNIE_DATA` vs `CLAUDE_CODE` / `CLAUDE_CODE_ENTRYPOINT`. Default is `claude` when neither env is set,
so `run_worker.sh SMOKE sonnet N` still works; both env vars without an override exit 2. The run id
is `<scenario>-<modelSlug>-<run-no>` (`modelSlug` replaces characters other than `[A-Za-z0-9._-]`
with `-`). Writes `<id>.meta.json` (includes `harness` and `modelSlug`), `<id>-worker.jsonl`,
`<id>-worker.stderr`, `<id>-server.jsonl` (call-log slice by byte offsets), `<id>-install.json`,
`<id>-mcp/mcp.json` (the worker's MCP config, unless `MCP_CONFIG` is set).
The MCP URL is resolved once, before anything talks to MPS. A non-empty `MPS_MCP_URL` is used as
given and must answer the MCP handshake (`tools_inventory.py --out /dev/null`). Otherwise
`mps_mcp_url.py --json` detects it and the result must be `confirmed: true` (the server answered as
MPS); an unconfirmed guess — the selector's `mcpServer.xml` or the 64343 default — exits 3 with
"MPS MCP not confirmed at <url> (source <s>)": run `mps_control.sh wait` first, or set
`MPS_MCP_URL`. Either failure exits 3 before any run file is written. The URL is exported
before `install_skills.py`, is forwarded to the worker, and is written by
`worker_mcp_config.py` into `$RUNS/<id>-mcp/`, so both harnesses leave the config they ran with as
evidence. No tracked file pins the port any more (defect A3: the port belongs to the IDE selector —
64343 on the 261 from-sources selector, 64344 on 262).
A Junie worker also writes `<id>-worker.native.jsonl` (from `--json-output-file`, never stdout —
Junie prints a non-JSON startup banner) and `<id>-worker.stdout` as a debug sidecar. Before taking
the call-log offsets it runs `install_skills.py --project
<project-dir>`, so the worker always reads the live catalog and the install's own MCP calls stay
out of the run's server slice; a failed install exits 3 and the run does not start. Before that,
`check_user_agents.py` recursively inspects Markdown definitions below `~/.claude/agents` **and**
`~/.junie/agents` and exits
3 if a filename matches `*mps*`, a body contains `mps_mcp` (case-insensitive), or either catalog cannot
be read; it then rejects any `mps-*` folder at the top level of `~/.claude/skills` or
`~/.junie/skills` for the same reason — a user-level MPS skill shadows the per-project catalog the
round installs, and `install_skills.py` cannot purge it (lesson 32). This mandatory, read-only
guard also runs with `SKIP_SKILL_INSTALL=1`, before any run side
effect. Missing/empty catalogs, unrelated definitions and unrelated skills pass. Built-in
`Explore`/`Task` are outside this pin. Do not pass `--skill-default-locations=false` until a Junie SMOKE proves project
`.agents/skills` still load without it; user-skill isolation for the first Junie matrix is the
preflight `~/.junie/skills` check. The meta gains
`skillsSha256` (catalog fingerprint), `guidesSha256` (fingerprint of the installed `AGENTS.md` +
`CLAUDE.md`, `absent` when either is missing) and `skillsInstalled`, plus the MPS process under measurement
(`mpsPid`, `mpsStartTs`), `isolationLevel`, `projectSynthesized`, `relatedProjects`, and the MCP
endpoint: `mpsMcpUrl`, `mpsMcpUrlSource` (`env`, or the detection source: `lsof`, in practice the
only one that passes the confirmation check), `mcpConfigSource` (`env` for `MCP_CONFIG`, else
`generated`) and `mcpConfigPath`. `mpsPid` is the launcher whose port was detected (with a
user-set `MPS_MCP_URL`, pgrep's first match); it
is what makes "one MPS per round" checkable after the fact instead of argued in prose;
`relatedProjects` is load-bearing for S10 — the analyser filters the server call log by project,
so without it a lifecycle run's whole server slice is discarded. Launch detached and poll:
```
nohup sh -c "RUNS=$RUNS EFFORT=<level> $STUDY/scripts/run_worker.sh S1 \$MODEL 1 $PROJ; echo EXIT_CODE=\$?" \
  > $RUNS/S1-$MODEL-1.harness.log 2>&1 &
WRAPPER=$!            # poll THIS pid: the sh wrapper exits when run_worker.sh (and the worker) exit
for i in $(seq 1 100); do ps -p $WRAPPER >/dev/null || break; sleep 5; done
```
Set the Bash tool's `timeout` to ≥ 540000 ms for polling calls (the default is 2 min); one call
covers ≈ 8–9 min, so repeat the loop in further calls for long runs. That poll loop is the only run
bound for Junie: Junie 3452.1 has no `--max-turns` (and no `--verbose` / `--permission-mode`;
`--brave` is interactive-only). The meta file's `pid` is
`run_worker.sh`'s own pid (useful for `kill`), not the worker CLI process. Re-running an id is
refused (exit 2) — bump the run number instead. Worker prompts use the cwd as `projectPath`.
The child CLI runs under `env -i HOME PATH USER SHELL LANG TERM TMPDIR` because an agent session
leaks `ANTHROPIC_BASE_URL` / `CLAUDE_CODE_*` / `JUNIE_TMPDIR` / `JUNIE_DATA` (do not pass observer
Junie temp dirs); `MPS_MCP_URL` is forwarded. Claude: `--permission-mode bypassPermissions
--mcp-config $RUNS/<id>-mcp/mcp.json --strict-mcp-config --output-format stream-json --verbose
--max-turns $MAX_TURNS < /dev/null`.
Junie: `junie --task --model -p "$PROJECT" --output-format json-stream --json-output-file
<id>-worker.native.jsonl --skip-update-check --mcp-default-locations=false --mcp-location
$RUNS/<id>-mcp` (study MCP URL only, analogue of `--strict-mcp-config`). With `MCP_CONFIG` set, its
absolute path replaces the generated file or directory. Junie workers may leave
session files under `~/.junie/sessions`; do not auto-delete them.

## list_worker_models.py
Prints JSON `{ok, harness, orchestratorModel, models[], effortLevels, settingsEffort}` for gate
questions 2 and 2a. `effortLevels` is what that harness's `--effort` accepts, lowest first.
`settingsEffort` (Claude only, else null) is `{default, perModel}` from `~/.claude/settings.json`:
the user-level default an unpinned worker starts from (a project `.claude/settings*.json` in the
worker's cwd could still override it). `perModel` is keyed by full model id (`claude-opus-5-5`),
not by the catalog alias, so map the alias yourself. Same harness
detection as `run_worker.sh` (`--harness` / `WORKER_HARNESS` override). Orchestrator model comes
from `~/.junie/config.json` `model` or `~/.claude/settings.json` `model` (trailing `[…]` stripped);
`~/.junie/settings.json` `modelForLaunch` is ignored.

## normalize_transcript.py `<native.jsonl> <worker.jsonl>`
Junie `--json-output-file` dumps JSONL `session` / `step` / `result` events (not Claude
`assistant`+`tool_use`). `run_worker.sh` keeps the native file and writes analyser input via this
script: each non-final `step` becomes a `tool_use` / `tool_result` pair; `result.errorCode` is
mapped onto `message.usage`. Claude-shaped input is a no-op. Unknown event types are counted on
stderr and do not drop tool pairs.

## analyze_runs.py `$RUNS [--out DIR (default $RUNS/analysis)] [--min-occurrences 3] [--top 25]`
Outputs: `metrics.csv`, `phases.csv`, `navigation.json`, `tools.json` (per-tool calls/errors/`unloaded_calls`/avg
sizes, transcript + server), `chains.json`, `errors.json`, `hotspots.md`. `pass` comes from `<id>.meta.json.taskPass` (empty until
the observer evaluates; always empty for SMOKE).
The server slice is filtered to `meta.project` plus every path in `meta.relatedProjects`.
Per run: tokens (input/output/cache read/write), tool calls, MCP calls, Bash/Read/Write, skill-file
reads + bytes (Read, Grep, Glob and Bash calls that touch `*/skills/*`), temp-file envelopes (`data` = path),
Bash reads of those files, Bash blueprint writes, authored tool-input chars (all / MCP), tool-result
bytes, error envelopes (`is_error` or `{"ok":false`), error→retry pairs (per session and parallel
batch: one per tool with an error in a batch that is called again in one of the session's next two
batches; before A2 it was "same tool within 2 calls", which counted a batch of five rejections as five),
validation loops (≥ 3 `check_root_node_problems` on one root), stale-runtime text hits, server
calls/ms (slice filtered by the run's project), API retries (A5: `api_retries` = every
`system/api_retry` event, which carries no timestamp and no session; `api_retry_delay_s` =
`round(sum(retry_delay_ms) / 1000)`; `api_stall_s` = `round(sum of cluster stalls)`, a cluster
being consecutive retries with no assistant or user event between them and its stall the first
timestamp after it minus the last before it, 0 when either side has none, e.g. Junie; `round()` is
Python's, half to even; `errors.json` lists `api_retry_clusters: [{before_step, retries, stall_s,
statuses}]`, `before_step` = the step of the first tool call after the cluster). New audit
columns are `pre_dispatch_rejections`, `welcome_rejections` (rejections whose listing is empty — the Welcome screen, where no
`projectPath` could have helped; 0 is the good value everywhere, S10 included — a worker that reads
the skill closes and re-opens without probing blind, as the first S10 run did. One is the
acceptable cost of discovering the state that way; more than one is waste), `close_project_calls`, `modal_blocked`,
`expected_server_mps_calls`, `agent_calls`, `server_mps_calls`, and `server_call_surplus`. The
analyser recognizes only known platform rejection signatures — **project resolution alone**
(`Unable to determine the target project…`). A missing required parameter
(`No argument is passed for required parameter 'x'`) reads like a rejection but is bound inside
the dispatch, so the listener fires and the call *is* in the log; it is counted separately as
`arg_validation_errors` and never subtracted (lesson 34). Then it computes
`expected_server_mps_calls = mps_calls - pre_dispatch_rejections` and
`server_call_surplus = server_mps_calls - expected_server_mps_calls`. A **non-zero** surplus produces one
stderr warning and is persisted in `errors.json` and `hotspots.md`. Positive means server calls are
absent from the parent transcript, with delegation one possible cause (same-project observer
traffic may also be inside a time-window slice). Negative means the slice is missing calls the
transcript shows — an unlisted project path, an MPS restart mid-run, or a call log that was off for
part of it — so the evidence is incomplete rather than clean. Missing/empty server evidence leaves
surplus unavailable and produces no warning, and lifecycle scenarios (`S10*`) are exempt in both
directions because they legitimately span several projects. `agent_calls` counts parent `Agent` tool-use events, not prose
or explicitly child-tagged events. Chains = bigrams/trigrams of `tool[:operation/kind]`, per session
over the batch-collapsed sequence.

**Batches (A2).** A parallel batch is several `assistant` events sharing one `message.id`; calls are
grouped by (session, message id), so a child batch interleaved with parent calls stays one batch, and
a call without an id (Junie) is its own batch. Chains, retries and temp-file re-reads are computed per
session (parent and each subagent), then summed. In the collapsed sequence each batch contributes its
distinct keys in first-occurrence order (`[a,a,a]` → `a`, `[a,b,a]` → `a,b`), with the chars of all its
raw calls of that key. A chain occurrence counts (`count`, `avg_chars`, `examples` = first and last raw
step) only when its n items come from n different batches; n-grams inside one batch are tallied as
`parallel` (`chains.json` field, `hotspots.md` column after `count`). Ranking uses `count`
(score = count-based chars); a chain is listed when `count` or `parallel` reaches `--min-occurrences`,
so a parallel-only chain sorts to the bottom instead of vanishing. `count + parallel` is not the
pre-A2 count (see `analysis.md`). Without message ids
every rule reduces to the per-call behaviour.

**Unloaded schemas (A7).** `unloaded_schema_calls` counts `mps_mcp_*` calls on a tool whose schema
the session had not loaded at that call's batch; `unloaded_schema_errors` counts those that failed.
The loaded set is per session: the `tool_name` of every `tool_reference` block in a `ToolSearch`
result, plus the names of a `select:a,b,c` query (the fallback when a host returns an empty result),
all normalised to the bare `mps_mcp_x` so the prefixed and bare spellings match. A schema counts as
loaded from the session's **next** batch on; a call in the same batch as the `ToolSearch` that selects
it was written before the schema arrived and counts as unloaded. A compaction does not unload, and a
subagent starts with an empty set. Both columns are **empty** when the run has no `ToolSearch` call
at all (a heuristic: the transcript does not say whether schemas are deferred, and a host that does
not defer them, or Junie, would otherwise count every call). `tools.json` carries `unloaded_calls`
per tool, summed over the runs whose column is non-empty (a run without `ToolSearch` adds 0). (`runs-r19/S8-sonnet-1`: 26 of 26 MPS calls; round 18's sonnet cells sum to 71.)

**Skill navigation (D50 M-0).** Bash commands are parsed, and the old `SKILL_DIR_RE` match is OR-ed
in so `skill_reads` only grows. The persisted cwd of a `cd` carries into later calls until the
result says `Shell cwd was reset to …`. `VAR=…` and `for f in …; do … "$VAR/$f"; done` are
expanded. Heredoc bodies and comment lines are skipped, and a path with an unknown `$VAR` is
ignored. Every skill access is recorded as one of: read (whole = `Read` without offset/limit, or a
lone `cat`), grep, list, script, or other (e.g. `tee`, `echo`). `.agents/skills/X` and
`.claude/skills/X` count as the same file. Metrics columns:
- `skill_msgs`: distinct assistant messages carrying skill calls. `skill_loads`: `Skill` tool calls.
- `skill_tool_bytes` (A7): the skill bodies the `Skill` tool injected. Its `tool_result` is only
  "Launching skill: …"; the body is the first user event of the same session before its next
  assistant event that carries `isSynthetic: true` **and** a text block starting
  `Base directory for this skill:` (both: `isSynthetic` alone also marks compaction summaries).
  The column sums the UTF-8 length of that text, 0 for a load without one; `navigation.json` lists
  `loads: [{step, skill, session, bytes}]`. `skill_read_bytes` and `phases.csv` still count only
  Read/Bash/Grep/Glob skill reads, so earlier rounds stay comparable; report both.
  (`runs-r19/S5-sonnet-1`: `skill_read_bytes` 0, `skill_tool_bytes` 22,092.)
- `skill_greps_{catalog,skill,file}`: one per grep call, at its widest target. catalog = the skills
  root, a glob over skill names, or a catalog-level file such as `MPS_MCP_SKILL_VERSION.txt`;
  skill = a skill tree or a glob in one; file = named files only (one or several).
- `rereads`: calls that whole-read a file an earlier call of the same session already read whole.
  `rereads_after_compaction`: the ones with an auto-compaction between the two reads. Both count
  skill files only, as in rounds 10–20.
- `temp_rereads_after_compaction`: calls that touch, after a compaction, a temp result file
  (`mps-node-<n>.json`, keyed by basename) that their session first touched before it — a `Read`
  whose `file_path` names it, or a Bash call naming it anywhere in the raw command text, heredoc
  bodies and `python3 -c` one-liners included. `temp_reread_bytes_after_compaction`: the sum of those
  calls' result bytes. `navigation.json` lists them as `temp_rereads: [{step, paths, previous_steps,
  bytes}]`. (`runs-r17/S8-sonnet-1`: 11 calls, 143,761 bytes, where `rereads_after_compaction` is 0.)
- `index_hops`: reads of a split directory's index `X.md` followed by a section `X/…` in a later
  call of the same message or of the next skill message. The same-message case (a parallel batch)
  counts, as D50's hand counts did.
- `compactions`, `compaction_s`, `first_compaction_step`: from `compact_boundary` events. A step is
  the last `tool_use` ordinal before the compaction.
- Token columns (`input_tokens`, `output_tokens`, `cache_read`, `cache_write`) are the sum over
  the `result` events (a resumed run has one per query), plus subagent messages counted once per
  message id. Without result usage (killed run, Junie), the per-message sum is used instead.
  - Each also has an `*_events` column: the old per-event sum, kept for comparison with pre-D50
    reports. `cache_read_events` is 1.5–3.4× too large (D50 E6).
  - A message's `output_tokens` is a streaming placeholder (r13 S1-opus: 1,501 vs 33,707 in the
    result). So `output_tokens` is exact only where a result event covers it; its subagent and
    fallback parts are lower bounds.

`phases.csv` has one row per run and aspect phase. A phase runs from the first access of an
`mps-aspect-*` skill to the step before the next new aspect's first access. A `Skill` load counts as
an access, so a worker that loads several aspects in one batch gets near-empty early phases (r8
S2). A call that touches an aspect skill counts for that aspect; other calls count for the phase
they fall in; `(pre)` is everything before the first aspect. Columns: span, skill calls, loads, messages, bytes, greps by
scope, re-reads, index hops, distinct files read. `navigation.json` holds the per-run detail:
compactions, re-reads, hops, greps, phases, `Skill` loads with their bytes, and every skill call with its accesses.

`--setting-sources project` remains deferred. Adopting it requires a separate SMOKE proving login,
the live project catalog, and skills still work; it is not needed for the user-agent guard.

## new_study_project.py `--dir <project-dir> [--mps-home <path>] [--force]`
Synthesizes an empty MPS project: `.mps/modules.xml`, `.mps/.gitignore`, and `.mps/migration.xml`
**derived** from the MPS that will open it (`--mps-home` defaults to `$MPS_INSTALL` when that is
set, otherwise this checkout) by delegating to the bundled `mps-project-management` script. A
standalone round must pass the install, or export `MPS_INSTALL` first; a checkout migration file
opened by an installed MPS raises the Migration Assistant. Replaces the `empty-project`
fixture: a synthesized tree cannot carry an agent doc surface, and its migration file cannot go
stale against a branch bump — a wrong one opens the modal Migration Assistant and blocks the round.
Refuses a non-empty directory without `--force`; writes no `workspace.xml` and no guides (the live
catalog arrives per run from `install_skills.py`). stdout: `{ok, path, mpsHome, baseline,
migrationEntries, files}`. Compare `migrationEntries` semantically, never the raw files: the script
ends the document with a newline, an MPS-written one does not. Exit: 0 ok, 2 usage, 3 bad MPS home,
4 target not empty.

## mps_control.sh `capture|calllog|idelog|install|open|shutdown|start|wait|restart` / `url [--json] [--timeout S]`
MPS process control, for a from-sources MPS and for a standalone install. Env: `CAPTURE` (default `$TMPDIR/mps-study-cmdline.json`), `MPS_INSTALL` (standalone .app, install root, or launcher; used by `start` when no capture exists), `SHUTDOWN_WAIT`
(60 s), `READY_WAIT` (300 s), `MPS_MCP_URL` (a non-empty value at script start is used as given and
skips detection; `MPS_MCP_URL= mps_control.sh wait` counts as unset). Otherwise `open`, `shutdown`,
`wait` and `restart` detect the URL with `mps_mcp_url.py` and **export** it, so the `mcp_call.py`
and `tools_inventory.py` they call use the selector's port; if no launcher is found they fall back
to `http://localhost:64343/stream` with one stderr warning per script run — also when detection
itself ends at that default (`source: default`). With several launchers running they print one
warning naming them, the pid the URL came from, and pgrep's first match, which `capture` and
`shutdown` act on. `wait` and `open`
report `url` and `confirmed` in their JSON.
- `url` — prints the detected URL (bare, shell-substitutable); `--json` prints the whole detection
  result (`mps_mcp_url.py`, below). It always detects, whatever `MPS_MCP_URL` says.
- `capture` — records the live launch command line (java binary + cwd from `ps`/`lsof`, VM options
  and classpath from `jcmd VM.command_line`, spaced tokens rejoined, jdwp and `idea_rt.jar`
  stripped), then classifies it. A selector containing `SRC` is from sources and later `start`/`open`
  replay java. Any other selector whose `idea.home.path` (or parent process) is an `.app` / `mps.sh`
  launcher is standalone: later `start`/`open` invoke that launcher and do not replay java.
  **Must run while MPS is alive**; `shutdown` refuses without it, because after the exit
  there is nothing left to inspect. A capture taken before this classification has no `kind` and
  stays on the java path until you capture again.
- `install <path>` — records a standalone launcher without MPS running. `<path>` is the `.app`,
  the install root (`bin/mps.sh` or `bin/mps64.exe` inside it), or the launcher file itself.
  It does not start MPS. `MPS_INSTALL` is the same path, and `start` calls `install` when no
  capture exists and that variable is set.
- `calllog <file>` — writes `-Dmps.mcp.calllog=<file>` into the **capture** (creating the
  directory), so the next `start`/`restart` brings the call log up; with no argument it clears the
  option. `capture` can only preserve what the live process already carries, so this is how a round
  turns the call log on when MPS was started without it — no tracked run configuration is edited
  and there is no revert step at wrap-up (lesson 33). It does not affect the running MPS.
- `idelog [dir]` — rewrites `-Didea.log.path` in the **capture** for the next `start`/`restart`.
  With no argument it drops the option, and the platform default for the selector applies
  (`~/Library/Logs/JetBrains/<selector>` on macOS, where a standalone install logs too); with a
  directory (created) the log goes there. A from-sources MPS otherwise logs into the checkout's
  `log/`, and `list_open_projects` hands that `logDirectory` — the MPS source path — to every
  worker (A17). Do not point it into `$RUNS`: workers would see the other cells' transcripts next
  to the log. `capture` reports the current option as `logPathOption`; a new `capture` of a
  developer-launched MPS (also `restart` with no capture) brings the checkout path back.
- `start` — relaunches from the capture. From sources, that is the captured java command (no
  debugger, migration assistant off unless `MIGRATION_ASSISTANT_AUTO=true`). Standalone, that is
  the recorded launcher plus the project path. Study `-D` flags (call log, migration assistant,
  idea log) are appended to a copy of the install's `mps.vmoptions` and passed as
  `MPS_VM_OPTIONS` and `IDEA_VM_OPTIONS` for that process only, so the install's heap settings
  stay. This replaces the user vmoptions file for that launch; do not point it at a different
  install than the one you captured.
- `open` — activates the **running** MPS with `[project-dir]`: a short-lived second process that
  exits in about a second. From sources it replays the captured java command; standalone it
  invokes the same launcher and does **not** set `MPS_VM_OPTIONS`, so the second process shares
  the running selector. Prefer it over hand-writing the recipe from
  `mps-project-management/examples-macos.md`: it reuses the capture, and it confirms the project is
  listed afterwards, which the recipe does not — a clean exit means only that the request was handed
  over. Open from the Welcome screen unless you know `confirmOpenNewProject2` is not "ask"
  (lesson 30).
- `shutdown` — needs exactly one open project and closes it with `shutdownWithLastProject=true`.
  Discovering that project survives the pre-dispatch gate: a `list_open_projects` call with no
  `projectPath` is rejected, and the rejection carries the `Currently open projects: {…}` listing,
  which the script parses. That listing is **plain text, not JSON** (`mcp_call.py` even exits 0 for
  it) and names each directory `path`, not `mpsProjectBaseDirectory` — both shapes are handled. `mcp_call.py` exit 4 (unreachable) is the *expected* success signal.
  If the process outlives `SHUTDOWN_WAIT` it reports the two known states — a confirm-exit dialog
  (the user dismisses it), or the project closed with the app still up at the Welcome screen, where
  MCP is dead and only `start` recovers.
- `start` — relaunches **detached** from the capture, optionally opening `[project-dir]`, keeping
  `-Dmps.mcp.calllog=…` and `-Didea.log.path=…` as the capture has them. The ~90 s foreground
  timeout in `mps-project-management` applies to *activation*, not to a cold start; applying it
  here would kill MPS.
- `wait` — readiness handshake (`tools_inventory.py`, then the project listed), never `ps`. It
  re-detects the URL on every iteration (probe timeout 2 s) until `confirmed` is true — right after
  a start MCP does not listen yet, and a URL fixed on the first iteration would poll the wrong port
  for `READY_WAIT` — and it measures `READY_WAIT` as wall time, because a port that accepts and
  never answers costs a full probe timeout per iteration.
- `restart` — capture (if absent) → shutdown → start → wait.
With no capture and MPS down, use the IDEA `MPS` run configuration with the project path as a
program argument instead of reconstructing a command.

## mps_mcp_url.py `[--json] [--timeout SECONDS] [--pid PID]`
Detects the MCP URL of the running MPS. Starts from the launcher pids (`pgrep -f
jetbrains.mps.Launcher`; the first one with a confirmed port wins, since a short-lived activation
process is a launcher too — with several real MPS processes, set `MPS_MCP_URL` by hand) and their
own listening TCP ports (`lsof -nP -a -p <pid> -iTCP -sTCP:LISTEN`); each
`http://localhost:<port>/stream` gets an MCP `initialize` (`--timeout`, default 5 s) and the first
whose `serverInfo.name` contains `MPS` wins (`source: lsof, confirmed: true`). HTTP 200 proves
nothing — IDEA's MCP server answers too, as "IntelliJ IDEA MCP Server" — and well-known ports are
never probed. Without `lsof`, or when nothing answers yet, it reads `mcpServerPort` from the
selector's `options/mcpServer.xml` (selector and `-Didea.config.path` from the process args; macOS
`~/Library/Application Support/JetBrains/<selector>`, Linux `~/.config/JetBrains/<selector>`), or
the platform default 64342 when the option is absent (`source: mcpServer.xml, confirmed: false`).
A malformed or unreadable `mcpServer.xml` is ignored (stderr line), never read as the default;
with neither a confirmed port nor a readable file the result is the 64343 constant
(`source: default`, with a stderr line). With several launchers stderr names them all and the one
chosen. stdout: the bare URL, or with `--json` `{ok, url, port, source, confirmed, pid, launchers,
selector, candidates}`. Exit: 0 ok — **also when unconfirmed**, since `wait` runs exactly while MCP is not up —,
2 usage, 3 no launcher process.

## worker_mcp_config.py `--harness claude|junie --url URL --out-dir DIR`
Writes `DIR/mcp.json` (compact JSON) and prints what the harness flag takes: the file for Claude
(`{"mcpServers":{"mps-mcp-server":{"type":"http","url":URL}}}`), the directory for Junie (same
without `type`). `run_worker.sh` calls it with `--out-dir $RUNS/<id>-mcp`.

## show_steps.py `<worker.jsonl> <from> <to> [--input-chars N --result-chars N]`
Compact view of a step range (1-based tool_use ordinals as in `chains.json` examples) with inputs,
result heads, `[ERROR]` markers and assistant prose. Give reviewers this instead of the transcript.

## install_skills.py `--project <dir> [--target <dir>] [--url URL] [--dry-run]` / `--sha-only <dir>`
Clean reinstall of the LIVE bundled catalog + `AGENTS.md`/`CLAUDE.md` into a study project: purges
every `mps-*` folder under `<target>/.agents/skills` and `<target>/.claude/skills` plus both guides
(the tool refuses to overwrite either), then calls `mps_mcp_initialize_project_for_agents` over
streamable HTTP (reuses `tools_inventory.McpClient`; unwraps the temp-file `data` form). Verifies
that both guides were *written* (a guide reported as already present means the purge missed it and
the worker would read stale guidance) and prints `{ok, installedSkillCount, guideFilesWritten,
removed, skillsSha256, guidesSha256}`. `--sha-only` prints just the fingerprint of an installed
tree — `mps-*` folders only, paths and contents, so a scenario's own `<dsl>-dsl` skill does not
look like drift.
`--guides-sha-only DIR` prints just `guidesSha256` (the `SKIP_SKILL_INSTALL=1` branch uses it);
`skillsSha256` does not cover the guides, so a template change moves only this one.
Exit: 0 ok, 2 usage, 3 MCP error, 4 unreachable, 5 post-install check failed. `--project` is the
framework `projectPath` and must be an OPEN project; `--target` defaults to it.
Non-`mps-*` skills are never touched.

## mcp_call.py `<tool> '<json-args>' [--url URL] [--raw] [--max-chars N]`
One MPS MCP tool call from the shell. The observing/evaluating session is normally NOT connected to
the server (only the workers are, via `--mcp-config`), so this is how the observer and the Opus
evaluators reach MPS. It does not detect the URL: `--url`, else `MPS_MCP_URL`, else the 64343
constant with a stderr line — prefix a direct call with `MPS_MCP_URL=$(mps_control.sh url)` on a
selector that uses another port. If this session already has `mps_mcp_*` tools, call them directly instead.
Pass `projectPath` inside the JSON args — the platform requires it on every tool. A temp-file envelope is resolved and inlined automatically, including the duplicate-envelope
shape (the file holds a whole `{"ok":…,"data":…}`, not the bare payload — defect D25).
Evaluators stay read-only (the tool list in the scenario's `done_criteria.md`). The observer may
mutate with `mps_mcp_close_project` to swap scratch projects, and — the one exception — with the
S8 `mps_mcp_alter_nodes MAKE` between the two evaluator passes (procedure card step 5; A8).
Exit: 0 ok, 2 usage, 3 MCP/tool error, 4 unreachable.

## Project and MPS lifecycle (observer)

The observer performs every project swap **and** every MPS start, restart and shutdown. Load the
sibling `mps-project-management` skill from this catalog and follow it; do not ask the user to
File→Open, Close Project or restart the IDE. **Always tell the user the absolute path about to close
(if any) and the absolute path about to open before acting** — present the information, do not wait
for approval.

**Create** (an empty project, for the harness project and the `empty-project` fixture):
1. `python3 $STUDY/scripts/new_study_project.py --dir <path>` — three descriptor files, the
   migration baseline derived from the running MPS.
2. Open it as below. Do not hand-write `migration.xml` and do not copy one from another release:
   the wrong file raises the modal Migration Assistant on first open and blocks the round.

**Open** (still no MCP tool — Welcome-screen MCP is rejected before dispatch):
1. Announce the paths.
2. If another study scratch is open, close it first (below). Golden/SMOKE may stay open only when
   this run is SMOKE against that same golden directory.
3. `mps_control.sh open <dir>` — a short-lived second process activates the running MPS with the
   scratch directory as a positional argument, then confirms it is listed. It implements
   `mps-project-management` (`references/open-via-cli.md` + the OS examples); the skill's own recipe
   is equivalent since `65bd60680c01` and remains the fallback when the script is unavailable.
4. Confirm with `mps_mcp_list_open_projects` (or `mcp_call.py mps_mcp_list_open_projects '{"projectPath":"<dir>"}'`).
   The new project must be listed; no other open project may share module names with what the worker
   will create. `install_skills.py` needs it open.

**Close:**
1. Announce the absolute path.
2. `mps_mcp_close_project` with `projectPath` = that directory and `force=false`
   (`mcp_call.py mps_mcp_close_project '{"projectPath":"<dir>"}'` when this session has no MPS MCP).
3. On `{ok:true, data.closed:true}`, stop. Closing the last project leaves the Welcome screen — the
   next open is CLI again.
4. On `MODAL_BLOCKED` or a cancelled close: ask the user only to dismiss the MPS dialog, then retry.
   Use `force=true` only after a timed-out or cancelled close.

**Shutdown + relaunch** (a plugin rebuild, or any round that wants a cold MPS):
1. `mps_control.sh capture` **first**, while MPS still runs (lesson 27).
2. Close every project but one, then `mps_control.sh shutdown` — the exit rides on the close of the
   last open project, and a Welcome-screen MPS cannot be stopped over MCP at all (lesson 28).
3. `mps_control.sh start <project>`, then `wait`, then one SMOKE run. A live process is not
   readiness: indexing is still settling when the pid appears. `wait` also re-detects the MCP URL
   (the port belongs to the IDE selector) and reports it with `confirmed`; the scripts pass it on
   themselves, so do not export an older value across the restart.
4. If MPS stays up after the close, read the two states `shutdown` prints before doing anything
   else; only the user dismisses a dialog.

Sequential, never two workers against one MPS. One scratch project open at a time (lesson 2) —
including S10, which closes one project before opening the next rather than holding two open
(lesson 30).

## tools_inventory.py `--out $RUNS/inventory.json`
Use exactly this path: `run_worker.sh` stores its sha256 as `inventorySha256` in every meta file.
Streamable-HTTP `initialize` → `notifications/initialized` → `tools/list`; records names, parameter
names, description/schema bytes. Its `McpClient` class (optional `timeout`, default 60 s) is shared
by `mcp_call.py`, `install_skills.py` and `mps_mcp_url.py`, and is the seed of an online client if
ever needed. URL: `--url`, else `MPS_MCP_URL`, else `http://localhost:64343/stream` with a stderr
line; it does not detect the port itself.

## Per-run procedure card
1. **Synthesize** (`python3 $STUDY/scripts/new_study_project.py --dir
   ~/MPSProjects/mcp-study/workspace/<id>`, then launch with `PROJECT_SYNTHESIZED=1`) for an empty
   project, **or extract** a module-bearing fixture:
   `tar -xzf ~/MPSProjects/mcp-study/fixtures/<fixture>.tar.gz -C ~/MPSProjects/mcp-study/workspace/<id> --strip-components=1`
   (+ scenario inputs from `$STUDY/fixtures/inputs/`, such as `recipes.csv`, copied into the project before launch).
   Next to the project, not inside it, write `~/MPSProjects/mcp-study/workspace/<id>.fixture.json`
   with `fixture`, `sha256` (from [`../fixtures/pins.md`](../fixtures/pins.md)), or
   `{"synthesized": true}` for an empty project. Cleanup refuses a scratch that has no such stamp.
   The extracted tree must have NO `.claude/`, `.agents/`,
   `AGENTS.md` or `CLAUDE.md`. 2. Tell the user the path you will close (if a previous scratch is
   still open) and the path you will open; close the previous scratch with `mps_mcp_close_project`
   if needed; open the new copy via CLI (`mps-project-management`). `mps_mcp_list_open_projects`
   must show it and NO other project with the same module names — the install in step 3 needs it
   open. 3. Launch
   detached (`EFFORT=<gate-2a level> run_worker.sh S1 $MODEL 1 $PROJ`); poll. `run_worker.sh` installs the live skills first and writes `<id>-install.json`;
   confirm `skillsSha256` and `guidesSha256` match the round's other runs, and `mpsPid` too — a differing pid means
   MPS was restarted mid-round and the runs are not directly comparable. 4. For S10 only: record
   the left-behind `list_open_projects` state **the moment the worker exits** (a Welcome-screen
   rejection counts), then open `<proj>-target` for the checks. 5. Evaluate via an Opus subagent
   (read-only — `dryRun: true` calls included —, `projectPath` on every call, temp-file `data` is a
   path to read). **S8 is evaluated
   in two passes** (its criterion 3 dry-runs blueprints, which the hollow fixture language rejects;
   A8): the evaluator checks criteria 1, 2 and 4 and returns; the observer runs `mps_mcp_alter_nodes
   MAKE` on the language module and records the result; then the **same** evaluator is resumed
   (SendMessage to its id, so it keeps its context) for criterion 3 and the verdict. It first
   confirms `get_concept_details` no longer says `descriptorStatus: hollow`; still hollow →
   criterion 3 not evaluable, not a FAIL. If the runtime cannot resume a finished subagent,
   relaunch the evaluator with its first-pass report in the prompt.
6. `meta.taskPass/taskEvidence`; save the report as `<id>.eval.md`. 7. Tell the user the path, then
   close with `mps_mcp_close_project` (`force=false`; `MODAL_BLOCKED` → user dismisses the dialog);
   for S10 close and delete `<proj>-target` as well.
