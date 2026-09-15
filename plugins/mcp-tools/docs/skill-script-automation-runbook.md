# Skill Script Automation Study — Execution Runbook

Status: draft 2026-09-15. Executes the design in `skill-script-automation-study.md` (the
"study"). This file is the ordered task list; tick boxes as work lands and record deviations
in section 9. Section numbers in parentheses refer to the study.

## 0. Roles, fixed decisions, verified facts

**Roles**
- Observer / orchestrator: this session (Opus-class). Runs nothing MPS-related itself except
  read-only `mps_mcp_*` verification of `done` criteria. Never tells workers the study purpose.
- Workers: headless `claude -p` processes. Models: `opus` and `sonnet` (decision 9.3).
- Human (Vaclav): opens/closes projects in the running MPS instance, restarts MPS after the
  plugin change, approves the go/no-go gates (sections 4, 7) and the first push.

**Directory layout (decision)**
- Checked in: `plugins/mcp-tools/study/` with `scenarios/S1..S8/worker_prompt.md` +
  `done_criteria.md`, `scripts/analyze_runs.py`, `scripts/run_worker.sh`,
  `scripts/tools_inventory.py`, `fixtures/` (tarballs + `PROBLEMS.md`), `mcp.study.json`,
  `docs-defects.md`, `HOTSPOT_REPORT.md`.
- Not checked in (large): `~/MPSProjects/mcp-study/runs/` (transcripts, call-log slices,
  manifests) and `~/MPSProjects/mcp-study/proj/<run-id>/` (per-run scratch projects).
  Add `plugins/mcp-tools/study/runs/` to `.gitignore` as a guard.

**Projects in the running MPS instance (verified 2026-09-15 via `mps_mcp_list_open_projects`)**

| Project | Path | Role in the study |
|---|---|---|
| ProjectX | `/Users/vaclav/MPSProjects/ProjectX` | Empty golden template. Never worked in directly; copied per run. |
| Projectxx5 | `/Users/vaclav/MPSProjects/Projectxx5` | Contains `com.example.statechart` (+ sandbox, `.agents`, `.claude`, `CLAUDE.md`). Source of the StateChart fixture for S2/S8. |
| MPS | `/Users/vaclav/work/MPS/myMPS-fix` | Plugin sources. Needed in IDEA, not in MPS during runs; close in MPS during the matrix to reduce cross-project ambiguity and memory. |

**Toolchain (verified)**: `claude` 2.1.272 (`--print`, `--output-format stream-json`,
`--verbose`, `--max-turns`, `--model`, `--permission-mode`, `--mcp-config` available);
`python3` 3.9.6 (matches the ≥3.9 contract in 3.3); `jq`; `junie` present (optional second
runtime, no transcript export assumed). MPS dev instance pid 68515 listening on
`127.0.0.1:64343`; MCP endpoint `http://localhost:64343/stream` (from `.mcp.template.json`).

**Code facts for instrumentation**: 61 `@McpTool` entry points; 58 go through
`AbstractOps.withMpsProject` (`plugins/mcp-tools/src/jetbrains/mps/agents/mcp/tools/AbstractOps.kt:491`);
the rest use `runRootCheckers` (4 sites) or a direct `withContext` (1 site). Integration tests:
`McpIntegrationTestBase.kt` + `McpToolsIntegrationTestSuite` run configuration (quality-gates
line 20: run the whole suite, JDK 25).

**Already-stale claim in the study**: 1.2(4) says `mcp-tools-index.md` omits three tools.
Verified false as of commit `fc28c2636dce`; all three are listed. Logged in `docs-defects.md`
as "already fixed" (task 3.9) so it is not re-litigated.

**Branch**: stay on `261/vaclav/MCP` (continuation of the same MCP work per `.agents/git.md`).
Commit area tag: `MPS-40162` history uses plain descriptive subjects; use `mcp-tools - <summary>`
and the Claude co-author trailer.

---

## 1. Phase 0 — Preflight (mostly done)

- [x] 0.1 Read the study; confirm the refined goal (1.3) and the four-tier remedy rule (3.1).
- [x] 0.2 Verify MPS running with MCP enabled and list open projects (table above).
- [x] 0.3 Verify `claude`, `python3 ≥ 3.9`, `jq`.
- [x] 0.4 Locate hook point for the server-side call log (`withMpsProject`) and the test suite.
- [x] 0.5 Locate fixtures: StateChart exists in Projectxx5; `test_scenarios/StateChartScenario.md`
      is a *builder prompt with reporting requirements* and must not be reused as a worker prompt (6.2).
- [x] 0.6 Create `plugins/mcp-tools/study/` skeleton and `~/MPSProjects/mcp-study/{runs,proj}`;
      add the `.gitignore` guard.
- [x] 0.7 Record the tool inventory: `scripts/tools_inventory.py` performs JSON-RPC
      `initialize` → `notifications/initialized` → `tools/list` against `$MPS_MCP_URL`
      (honouring `Mcp-Session-Id`) and writes `runs/inventory.json` (tool names + parameter
      names + description byte sizes). This doubles as the first cut of the shared client (3.2)
      and gives the schema-load baseline for 1.2(6).
      Result 2026-09-15: 56 tools (38 `mps_mcp_*`), `mps_mcp_*` descriptions 43,175 B, schemas 34,328 B.
- [x] 0.8 Check whether `--strict-mcp-config` exists in `claude --help`. The user-level
      `~/.claude.json` already registers `mps-mcp-ucld2` on the same URL; the worker must see the
      server exactly once (duplicate tool schemas would inflate the token baseline). Write
      `study/mcp.study.json` with only the MPS server, named `mps-mcp-server` (no IDEA, no YouTrack).
      Result: flag exists; workers run with `--mcp-config study/mcp.study.json --strict-mcp-config`.
- [x] 0.9 Snapshot ProjectX as the golden template: `fixtures/empty-project.tar.gz`. Before
      snapshotting, initialise it for agents (`mps_mcp_initialize_project_for_agents`, empty
      `targetDirectory`) so every scratch copy carries `CLAUDE.md`/`AGENTS.md` + skills; copy
      `mcp.study.json` in as `.mcp.json`. Confirm the copy has no `.git` (avoid worktree confusion).
      Result: ProjectX initialised (31 skills, CLAUDE.md/AGENTS.md); `fixtures/empty-project.tar.gz`
      (~0.9 MB, skills included on purpose to freeze the skill version). `.mcp.json` is NOT in the
      template: with `--strict-mcp-config` the worker takes the server from `study/mcp.study.json` only.

## 2. Phase 1 — Instrumentation (4.1)

Source A — server-side call log (Kotlin, `plugins/mcp-tools`):
- [x] 1.1 `McpCallLogListener` (`plugins/mcp-tools/src/.../McpCallLogListener.kt`): implements the
      platform's `com.intellij.mcpserver.ToolCallListener`, registered in `META-INF/plugin.xml` as an
      application listener. When system property `mps.mcp.calllog` names a file it appends one JSON
      line per dispatched call: `ts, tool, callId, op (operation/kind), argsBytes, ms, ok, error,
      project, client, session`. `ok=false`/`error` = the tool threw; error *envelopes* and response
      sizes are not visible to the listener and are taken from the transcript instead. Never logs
      argument content.
- [x] 1.2 Coverage: the platform fires the listener for every dispatched tool (all 56, not just
      `mps_mcp_*`), so no per-tool wrapping is needed. Not covered: calls rejected before dispatch
      (unknown tool, unresolvable `projectPath`) — those appear only in the transcript. Decision
      9.9 records why the earlier in-tool hook was dropped.
- [x] 1.3 (suite green 2026-09-15: 637 tests, 0 failures) Unit test `McpCallLogTest` in
      `McpToolsIntegrationTestSuite` drives the listener with the harness stub call info.
- [x] 1.4 Add `-Dmps.mcp.calllog=/Users/vaclav/MPSProjects/mcp-study/runs/server-calllog.jsonl`
      to the `MPS` run configuration VM options (dev instance). Commit as
      `mcp-tools - add optional per-call JSON log behind mps.mcp.calllog` (quick win, 7).
- [x] 1.5 (restarted 2026-09-15; first log lines verified: `client` = `Air/0` and the study client, `session` and `project` populated) Human: restart the dev MPS instance (`MPS` run configuration now carries the VM option), open the pilot projects, close the MPS sources project in MPS. Observer: call
      `mps_mcp_list_open_projects` once and confirm a log line appeared. Note memory items:
      the dev launch may dirty `.msd` files (revert unrelated churn), and stale IDEA bytecode
      can break MPS make — rebuild the plugin module in IDEA first.

Source B — headless worker harness:
- [x] 1.6 `scripts/run_worker.sh <scenario> <model> <run-no> <project-dir>`:
      writes `runs/<id>.meta.json` (start ts, cwd, model, prompt sha, inventory sha), then runs
      exactly:
      ```
      cd "$PROJECT" && claude -p "$(cat "$STUDY/scenarios/$SCENARIO/worker_prompt.md")" \
        --model "$MODEL" --output-format stream-json --verbose --max-turns 400 \
        --permission-mode bypassPermissions --mcp-config "$STUDY/mcp.study.json" --strict-mcp-config \
        > "$RUNS/$ID-worker.jsonl"
      ```
      then records end ts + exit code and slices `server-calllog.jsonl` by `[start,end]` into
      `runs/<id>-server.jsonl`. Runs detached (`nohup … &`) with the PID in the meta file, since a
      worker run outlives a single agent turn.
- [x] 1.7 (2026-09-15: SMOKE-sonnet-1, 3 turns, 1 MCP server, 56 MCP tools, ~98k context tokens for a one-call task = schema+guide baseline for 1.2(6); harness now runs the child CLI under `env -i` because the parent agent session leaks a host-managed provider URL) Smoke: run the harness with a trivial prompt ("list open MPS projects and stop") on a
      scratch copy of ProjectX; assert the transcript contains `tool_use`, `tool_result`, and
      per-message `usage`, and the server slice has ≥1 line. Fix flags until both hold.

Analysis helper (6.3) — the first study script, dogfooding the 3.3 contract:
- [x] 1.8 `scripts/analyze_runs.py runs/` (stdlib, argparse, `--help`): emits `metrics.csv`
      (per run: tokens in/out/cache, authored-JSON output tokens, tool_result bytes per tool,
      skill-file bytes read via `Read` under `.agents/skills/**` or `.claude/skills/**`, tool
      calls, wall-clock, task pass/fail from the meta file), `chains.json` (bigrams/trigrams of
      `tool+op` with counts and avg tokens), `errors.json` (error→retry pairs within 2 calls,
      `check_root_node_problems` repeats per root, `hollow`/`runtime_stale`/`reload_all`
      incidents), `hotspots.md` (top-N with example `run-id:step-range`). Compact JSON summary
      to stdout, full outputs to files.
- [x] 1.9 Test `analyze_runs.py` on the smoke run; hand-check two numbers against `jq`.

## 3. Phase 2 — Scenario assets and fixtures (5, 6.2)

- [x] 3.1 S1 worker prompt: copy the study's 6.2 text verbatim.
- [x] 3.2 (all eight written 2026-09-15; S3 ships `recipes.csv`) S2–S8 worker prompts in the same voice: short, fixed names, explicit `done`
      criteria, "Do not roll back", "Do not edit .mps/.mpl as text", "Stop and explain if
      blocked". **No reporting requirements.** S3 ships `recipes.csv` (40 rows) next to the prompt.
- [x] 3.3 `done_criteria.md` per scenario: observer-checkable, read-only `mps_mcp_*` steps with
      `projectPath` = the run's project dir (e.g. S1: language module exists, 6 concepts + enum,
      3 Recipe roots, `check_root_node_problems` clean on every root of the samples model).
- [x] 3.4 StateChart fixture (`fixtures/statechart.tar.gz`, concepts StateChart/State/Transition/Event verified): tar Projectxx5 (minus `.git`) → `fixtures/statechart.tar.gz`;
      verify with `search_concepts`/`get_project_structure` that it satisfies S2 (a `StateChart`
      language to extend with `Guard` + an intention) and S8 (enough to document).
- [x] 3.5 (`fixtures/recipes.tar.gz` = S1-opus-1 after PASS, includes `classes_gen` so no rebuild is needed) Recipes fixture for S4: take the first *passing* S1 run's project (from the pilot, 4.2)
      → `fixtures/recipes.tar.gz`.
- [ ] 3.6 Broken-model fixture for S5: copy the recipes fixture, inject 12 problems via
      `mps_mcp_update_node` (dangling refs, missing required children, bad property values), list
      each with the node ref in `fixtures/PROBLEMS.md`, verify `check_root_node_problems` reports
      ≥12 → `fixtures/recipes-broken.tar.gz`.
- [~] 3.7 (see decision 9.10: one scratch project open at a time; pilot S1 projects provisioned 2026-09-15: `~/MPSProjects/mcp-study/proj/S1-opus-1`, `.../S1-sonnet-1`; waiting for the human open step) Per-run project provisioning (decision, see 9.1): copy the right tarball to
      `~/MPSProjects/mcp-study/proj/<run-id>/`, copy `.mcp.json`, human opens it in MPS (batch of
      4 per scenario: 2 models × 2 runs), observer confirms via `mps_mcp_list_open_projects`.
- [ ] 3.8 Dry-run all 8 prompts through the observer's own eyes only for ambiguity (not for
      feasibility); fix wording once, then freeze (record prompt sha in meta).
- [x] 3.9 Start `docs-defects.md` with the "index gap already fixed" entry (section 0) so the
      list exists from day one (8, scope creep).

## 4. Phase 3 — Pilot and gate 1

- [x] 4.1 S1-opus-1 done 2026-09-15 (181 turns, 23 min, 173 tool calls = 90 MCP + 73 Bash + 6 Skill +
      4 ToolSearch; 32 temp-file envelopes, 33 Bash reads of those files, 9 Bash blueprint writes, 22 skill
      reads, 16× check_root_node_problems; 2 error envelopes; server log 90 lines, 0 exceptions).
      S1-sonnet-1 done (148 turns, 22 min, 135 tool calls = 31 Read + 15 ToolSearch + 9 Skill + 6 Write +
      3 Bash + MCP; 5 error envelopes; evaluation pending). S3 projects provisioned from the recipes
      fixture (`proj/S3-opus-1`, `proj/S3-sonnet-1`, `recipes.csv` inside).
      S3-opus-1 done (100 turns, 12 min, 97 tool calls: 50× check_root_node_problems, 25 Bash, 3 bulk
      inserts for 40 recipes; 4 error envelopes; PASS 4/4). S3-sonnet-1 done (28 turns, 4 min, PASS 4/4). Run S1 and S3 × {opus, sonnet} × 1 (4 runs) on fresh ProjectX copies (a passing S1 run is also fixture 3.5).
- [x] 4.2 Evaluate `done` criteria read-only (Opus subagents; reports in `runs/<id>.eval.md`); record pass/fail + evidence in the meta file.
- [x] 4.3 (server_calls == mps_calls for S1-opus-1 90/90, S1-sonnet-1 71/71, S3-opus-1 68/68; S3-sonnet-1 10 vs 11: the one rejected `projectPath`-less call never reached dispatch) Run `analyze_runs.py`; check that server slice and transcript agree on call count
      (±0 expected; if they differ, fix slicing — consider adding the session id to both).
- [x] 4.4 Pilot summary (2026-09-15, 4 runs, all under --max-turns 400):

      | run | pass | turns | min | cost | tool calls (MCP) | temp-file envelopes | errors |
      |---|---|---|---|---|---|---|---|
      | S1-opus-1 | yes | 181 | 23 | $14.96 | 173 (90) | 32 | 2 |
      | S1-sonnet-1 | yes* | 148 | 22 | $5.83 | 135 (71) | 23 | 5 |
      | S3-opus-1 | yes | 100 | 12 | $5.55 | 97 (68) | 25 | 4 |
      | S3-sonnet-1 | yes | 28 | 4 | $1.13 | 26 (11) | 4 | 1 |

      *independence caveat (decision 9.10). Cache-read tokens: 27 M per S1 run, 13.6 M / 4.0 M for S3.
      Extrapolation for the full 32-run matrix: heavy scenarios (S1, S2, S4, S6, S7) ≈ 15–25 min per
      run, light ones (S3, S5, S8) ≈ 4–12 min → ≈ 8 h of worker wall-clock, ≈ 2 h of evaluator time,
      ≈ $200–250, **and 32 human open/close swaps** because of the one-project rule — the swaps, not
      the compute, are the bottleneck. Halving the matrix (1 run per model, 16 runs) halves all four.
- [x] 4.5 **Gate 1 (human, 2026-09-15): stop the matrix here and analyse the 4 pilot runs** (decision 9.11). **Gate 1 (human)**: full matrix (8×2×2), or reduced (e.g. 1 run per model for S6–S8,
      or drop haiku for S6/S7)? Record the decision in section 9.

## 5. Phase 4 — Baseline matrix (4.5) — SKIPPED by gate-1 decision 9.11

Per scenario, in this order: S1, S3, S2, S8 (StateChart fixture), S4, S5 (recipes fixtures), S6, S7.

- [ ] 5.1 Provision the batch of projects (3.7); human opens them; observer confirms list.
- [ ] 5.2 For each run: `run_worker.sh`; wait (poll PID via `ps`, not a foreground sleep);
      evaluate `done`; slice the log; fill the meta file. Never edit the scratch project.
- [ ] 5.3 Human closes the batch's projects; observer archives `proj/<run-id>` as tar if the
      project is needed as a fixture, otherwise leaves it.
- [ ] 5.4 After every scenario: rerun `analyze_runs.py` incrementally and sanity-check that
      nothing is truncated (`--max-turns` hits, worker exit codes ≠ 0, MODAL_BLOCKED time-outs
      from a migration dialog — see memory; if seen, thread-dump and note, do not run the
      migration).
- [ ] 5.5 Matrix complete: 32 (or the gated number) `*-worker.jsonl` + `*-server.jsonl` +
      `*.meta.json` present; `metrics.csv` has one row per run with pass/fail.

## 6. Phase 5 — Analysis and HOTSPOT_REPORT.md (4.2–4.4, 6.1 step 4–5)

- [x] 6.1 Baseline metrics table per scenario × model: tokens (split: authored JSON / tool
      results / skill reads / rest), tool calls, retries, validation loops, stale-runtime
      incidents, wall-clock, pass rate.
- [x] 6.2 Take the top chains from `chains.json` (n-grams with ≥3 occurrences across runs). For
      each of the top 10, open 2–3 concrete instances (`run-id:step-range`) in the transcripts and
      assign determinism ∈ {1.0, 0.5, 0}. Recompute `score = occurrences × avg tokens ×
      determinism × (1 + retry_rate)`; re-rank.
- [x] 6.3 Classify each hotspot with the rubric in order D → S → P-off → P-on → T (4.4). For D,
      quote the tool description / skill line the worker missed and propose the wording change.
      For S, sketch the Kotlin tool signature. For P-off/P-on, define input spec, stdout summary,
      file outputs, tools called. For T, name the skeleton and `# CUSTOMIZE:` points.
- [x] 6.4 Check each hypothesis H1–H8 (2): confirmed / refuted / not observed, with evidence.
- [x] 6.5 Measure the two costs no script fixes (1.2(6)): tool-schema bytes from
      `inventory.json` and skill-read bytes from `metrics.csv`; state expected gains against
      that baseline.
- [x] 6.6 Append documentation defects found in transcripts to `docs-defects.md` (wrong,
      ambiguous, or unused descriptions/skill lines), each with a run citation.
- [x] 6.7 Write `HOTSPOT_REPORT.md`: baseline table; ranked hotspots (evidence, remedy tier,
      owning skill, estimated saving in tokens/calls/retries, drift risk); docs-defects summary;
      for every proposed script: name, location (`<skill>/scripts` or `/assets`), input
      contract, output contract. No remedies implemented in this phase.
- [x] 6.8 (commits e38ccb574c2d, and the report commit that follows) Commit study assets and the report (`mcp-tools - skill script study: baseline runs
      and hotspot report`); runs stay outside the repo.

## 7. Phase 6 — Gate 2 and treatment (3, 7)

- [x] 7.1 (decision 9.12: everything, no A/B) **Gate 2 (human)**: which remedies to build, in report rank order. Docs-only fixes
      (tier D) may proceed immediately in their own commits.
- [x] 7.2 (verified: `resources` is java-resource, build fileset has no includes filter, `copyDirectoryRecursively` copies everything; `SkillScriptsPackagingTest` guards it) Packaging check before the first script (3.5, 7): confirm `resources/**/scripts/*.py`
      and `assets/*` reach the plugin JAR (`mcp-tools.iml` marks `resources` as java-resource;
      verify no `*.md`-only filter) **and** that `mps_mcp_initialize_project_for_agents` copies
      non-`.md` files (inspect the copy code in `JetBrainsMPSInitMcpToolset.kt` /
      `AgentConfigRootResolver.kt`). Add a unit test asserting ≥1 `scripts/` entry in the skills
      resource tree once the first script exists.
- [x] 7.3 (deviation: shipped `mps_dump.py` — result-file library — instead of an HTTP client + blueprint helper, because the pilot showed result post-processing and CSV→blueprint, not online chains, as the need; `tools_inventory.py`'s `McpClient` remains the seed for a client if S4/S5/S8 ever justify P-on) Shared library in `mps-mcp-workflow/scripts/`: `mps_mcp_client.py` (Streamable HTTP
      JSON-RPC, `MPS_MCP_URL`, `--project-path`, `Mcp-Session-Id`, `tools/list` pre-check, exit
      codes 0/2/3/4, `MCP_TOOLS_VERSION_TESTED` warning) and `mps_json.py` (node/ref helpers, FQN
      check, 4 KB size guard, staged split). Promote `tools_inventory.py` logic into the client.
- [~] 7.4 (docs R3/R6/R2-docs 9c8afa9d4db6; scripts R5 66041c7d37f1; server R1/R7/R8a 8c2da291c6f7 — 644 tests green on the implementer's run; server R2/R4/R8b + D11 in progress; batch-1 reference sentences being pasted) Implement the approved remedies in their owning skill (`scripts/` or `assets/`), each
      with a `## Scripts` section + example call in `SKILL.md`, `--help`, stdlib only.
- [~] 7.5 (no new composite tools; the approved S-tier remedies are parameters/envelope fields on existing tools — batch 1 done, batch 2 in progress) Implement approved tier-S composite tools in Kotlin with integration tests.
- [~] 7.6 (`SkillScriptsDriftTest` written, not yet registered/run; `validate_skill_catalog.py` now checks scripts/assets locality, /tmp, argparse, --list-tools and SKILL.md mention; `.agents/conventions.md` carries the same-commit rule) Drift control (3.5): extend `McpIntegrationTestBase`-based suite with a test that runs
      each `scripts/*.py --list-tools` in a subprocess and asserts the tools/parameters exist in
      the live registry; functional smoke feeding each P-off generator's bundled example spec to
      its tool with `dryRun=true`. Extend `plugins/mcp-tools/scripts/validate_skill_catalog.py`
      to cover `scripts/` and `assets/` locality (no cross-skill imports except the shared lib
      path). Add the "update scripts in the same commit" rule to `.agents/conventions.md`.
- [x] 7.7 Windows fallback (8): every `## Scripts` section states what to do without `python3`.
- [ ] 7.8 Re-run `mps_mcp_initialize_project_for_agents` into a fresh ProjectX copy and confirm
      scripts arrive; refresh `fixtures/empty-project.tar.gz` as the treated template.

## 8. Phase 7 — A/B and final report (4.5) — A/B SKIPPED by gate-2 decision 9.12; final report still due

- [ ] 8.1 Re-run the identical matrix (same prompts, same shas, treated template) with the
      same provisioning procedure.
- [ ] 8.2 `analyze_runs.py --compare baseline/ treated/`: per scenario × model deltas in tool
      calls, context tokens, retries, pass rate; attribute deltas per remedy by chain.
- [ ] 8.3 Success check on treated scenarios: ≥30 % fewer tool calls **and** ≥25 % fewer
      context tokens with no drop in task success. Report per remedy.
- [ ] 8.4 Delete remedies that did not pay for themselves (and their drift tests); keep the
      docs fixes regardless.
- [ ] 8.5 Final section in `HOTSPOT_REPORT.md`: A/B table, kept/deleted remedies, open
      questions. Commit; ask before the first push.

## 8a. Phase 8 — Wrap-up: extract a re-runnable optimisation scenario, then roll back the scaffolding

The measurement is a one-off, but the *procedure* is not: skills and tool descriptions will drift
again, and the same baseline → hotspot → remedy → A/B loop should be repeatable on demand.

- [~] 9.1 (drafted 2026-09-15 in `.agents/skills/skill-optimization-study/` + `.claude/skills/…`, 5 files; lessons to be extended after the treatment phase; dry-run 9.2 pending) Extract a project-local skill `skill-optimization-study` (`.agents/skills/` and
      `.claude/skills/`, sibling of the `mps-*` catalog, **not** part of the bundled catalog) that
      makes this runbook re-runnable end to end. Contents:
      - `SKILL.md`: when to use (after a tool-description or skill change, before a release, or
        when agents seem slow), the roles (observer / headless workers / human open-close steps),
        the gate questions (instrumentation, models, permissions, scope), and the procedure
        phases as a checklist with the exact commands.
      - `references/harness.md`: `run_worker.sh` and `analyze_runs.py` usage, the clean-environment
        rule for the child CLI, the `--strict-mcp-config` rule, per-run procedure card (section 10).
      - `references/scenarios.md`: the eight scenario prompts and done criteria as the reusable
        scenario set, plus guidance for adding a scenario for a newly changed skill.
      - `references/analysis.md`: metrics, chain scoring with determinism, the D/S/P-off/P-on/T
        rubric, report template, success thresholds for the A/B.
      - `references/lessons.md`: everything learned the hard way (guard-clause coverage gap that
        led to the listener, host-managed provider leaking into child CLIs, temp-file `data`
        envelopes, stale study claims, MPS project open/close being a human step, …).
      The skill points at `plugins/mcp-tools/study/` for the scripts and prompts; if that directory is
      removed in 9.4, move the scripts into the skill's `scripts/` and the prompts into `assets/`.
- [ ] 9.2 Dry-run the extracted skill: a fresh observer session, given only the skill and an empty
      project, must reach a completed smoke run and a populated `metrics.csv` without consulting
      this runbook or the chat history. Fix the skill until it does.
- [ ] 9.3 Fold conclusions into the study document (`skill-script-automation-study.md`): baseline
      and A/B tables, kept/deleted remedies, updated hypotheses H1–H8, open questions.
- [ ] 9.4 Roll back the study-only scaffolding, each in its own commit or revert:
      - **Revert the VM option** in `.idea/runConfigurations/MPS.xml` (user-specific absolute path in
        a shared run configuration) — `git revert 16ca274cc63f` (commit `mcp-tools - TEMP study-only: …`).
      - **Delete `study/fixtures/*.tar.gz`** (regenerable from ProjectX / Projectxx5) and the `SMOKE`
        scenario; drop the `study/runs/` `.gitignore` line if `study/` goes.
      - **Decide the fate of `study/`** (prompts, done criteria, scripts): keep as the reproducibility
        record, or move into the skill from 9.1 and delete here.
      - **Delete this runbook** once 9.1–9.3 carry its content; keep the study document.
      - **Keep** `McpCallLogListener` + test + `plugin.xml` registration (product feature, off by default).
- [ ] 9.5 Clean up outside the repo: `~/MPSProjects/mcp-study/` (scratch projects, transcripts,
      call log — archive the `runs/` directory first, it is the evidence), `/tmp/mcpserver-classes`,
      per-scratch-project entries in `~/.claude.json`, the workers' auto-memory directories
      `~/.claude/projects/-Users-vaclav-MPSProjects-mcp-study-proj-*/`, and ProjectX's initialisation files
      (`.agents/`, `.claude/`, `CLAUDE.md`, `AGENTS.md`) if ProjectX should return to an empty project.
- [ ] 9.6 Final report to the user: what was measured, what shipped, what was rolled back, and how
      to re-run via the `skill-optimization-study` skill.

## 9. Decisions and deviations log

- 9.1 Provisioning: the study wants a fresh project per run. MPS cannot be told to open a
  project through `mps_mcp_*`, so each batch needs a human open/close step. Alternative
  rejected: reusing one open project with on-disk reset — deleting modules under a live project
  risks a stale module registry and unrepresentative `reload_all` noise.
- 9.2 Second runtime: the study mentions Junie/Copilot. Only `claude` produces a token-level
  transcript here; Junie runs (if any) count as source-A-only data and are out of the baseline.
- 9.3 Worker models (2026-09-15, Vaclav): `opus` + `sonnet`, not the study's Sonnet + weaker model.
- 9.7 Instrumentation (2026-09-15, Vaclav): implement the server-side call log *before* the pilot.
- 9.12 Gate 2 (2026-09-15, Vaclav): build ALL proposed remedies — docs (R3, R6, R2-docs), server-side
  (R1, R2, R4, R7, R8) and scripts (R5); **no A/B re-run** (Phase 7 skipped; remedies ship on baseline
  evidence). Execution: three parallel Opus implementers with disjoint files (skill docs / skill
  scripts + packaging + drift test / server batch 1 = R1, R7, R8-suggestions), then server batch 2
  (R2, R4, R8 create_module + enum flag) sequentially; observer registers new tests in the suite and
  runs `McpToolsIntegrationTestSuite` between batches.
- 9.11 Gate 1 (2026-09-15, Vaclav): no further baseline runs; Phase 5 analysis on the 4 pilot runs
  (S1, S3 × opus, sonnet; all PASS). Phase 4 (5.1–5.5) skipped. Hypotheses tied to S2/S4–S8 (H2
  generator chain, H5/H8 validation and stale runtime, H7 discovery-heavy) stay unmeasured and are
  marked as such in the report. Strictly sequential runs remain the rule if the matrix is resumed.
- 9.10 One scratch project open at a time (2026-09-15, Vaclav's concern): the MCP server shares a
  single module repository across all open projects, so a worker can (a) see and copy a finished
  sibling run — the S1 sonnet worker's `list_open_projects` result listed S1-opus-1 — and (b) have
  plain-name lookups (`mcp.study.recipes`, `mcp.study.kitchen.samples`) resolve into a sibling run
  with identical module names. Rule: before a worker starts, only its own scratch project plus
  projects with disjoint module names (ProjectX, Projectxx5) may be open; the previous run's
  project is closed by the human after its evaluation. Also: all four S3 runs for a scenario are
  therefore *sequential with a close step in between*, not a batch of four open projects
  (supersedes the batching in 3.7 and 5.1).
- 9.9 Call log via `ToolCallListener` (2026-09-15): a first version hooked `AbstractOps.withMpsProject`
  plus hand-wrapped tools; the integration test showed ~16 tools return from argument-validation
  guard clauses before that wrapper, so the hook was replaced by the platform listener, which is
  outermost by construction. Cost: response size and `{ok:false}` envelopes come from the transcript.
- 9.8 Permissions (2026-09-15, Vaclav): workers run with `--permission-mode bypassPermissions`.
- 9.4 Study claim 1.2(4) about `mcp-tools-index.md` is already fixed (fc28c2636dce); retained
  only as a drift-risk illustration.
- 9.5 Pilot scope (2026-09-15, Vaclav): S1 + S3 on both models (4 runs) before gate 1.
- 9.6 (gate 2 outcome — to be filled)

## 10. Per-run procedure card (copy into the meta file)

1. Provision: `tar -xzf fixtures/<fixture>.tar.gz -C ~/MPSProjects/mcp-study/proj/<id>`; copy
   `study/mcp.study.json` → `.mcp.json`. Human opens the project in MPS.
2. Confirm: `mps_mcp_list_open_projects(projectPath=<proj>)` shows it.
3. Note the current byte offset of `server-calllog.jsonl`.
4. `scripts/run_worker.sh <S> <model> <n> <proj>` (detached); poll the PID.
5. Evaluate `done_criteria.md` read-only with `projectPath=<proj>`; write pass/fail + evidence.
6. Slice the call log from the noted offset; store `<id>-server.jsonl`.
7. Human closes the project. Never fix, roll back, or tidy the scratch project.
