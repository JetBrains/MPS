# Plan: teach the skill-optimisation study the MPS project lifecycle tools

Status: **implemented and rehearsed live 2026-09-22** (W1-W8), after two review passes. The
§Validation rehearsal ran end to end against a real MPS and passed, including one S10 worker run;
the S10 prompt is now frozen. See §Implementation log and §Rehearsal for results and the three
defects the rehearsal found.
Origin: `mps-project-management` gained three capabilities the study never adopted —
`mps_mcp_close_project(shutdownWithLastProject=true)` (commit `dedbfab189fa`), headless creation of
an empty MPS project (commit `41bffdd8bbd1`), and a custom working directory when activating MPS on
macOS (commit `8b827dce0503`), all MPS-40175.
Affected assets: `plugins/mcp-tools/study/` and the checkout-local `skill-optimization-study` skill
in both agent catalogs.

## Problem and value

The study's harness predates those capabilities. Three costs follow:

1. **An external precondition.** Preflight asserts that a hand-maintained empty project
   (`~/MPSProjects/ProjectX`) exists and is open, and the `empty-project` fixture is a tarball of
   it (`skill-optimization-study/SKILL.md:51-55`, `study/fixtures/README.md:19`). That project still
   carries `.agents/`, `.claude/`, `AGENTS.md` and `CLAUDE.md`, i.e. the very surface lesson 24 says
   a fixture must not carry, and its `.mps/migration.xml` is correct only for the release it was
   made on. The tarball is therefore a silent-staleness risk on the next branch bump.
2. **A human in the measurement loop.** `SKILL.md:34-36` still assigns MPS restarts to the human,
   so instrumenting the call log (step 2) and every treat/A-B cycle (steps 9-10) stalls on a person.
3. **An unmeasured surface.** Step 5 requires a scenario for whatever skill or tool changed.
   `mps-project-management` changed substantially and no scenario exercises it.

Value: the study becomes runnable end to end by the observer alone, its cheapest fixture becomes
derived rather than snapshotted, and the lifecycle documentation is measured like every other skill.

### Verified basis

- `python3 .agents/skills/mps-project-management/scripts/new_project_migration_xml.py <checkout>`
  resolves this from-sources MPS (`baseline 261 from 261.25134.SNAPSHOT`) and emits the same
  migration entry set and baseline as `~/MPSProjects/ProjectX/.mps/migration.xml`. **The two files
  are not byte-identical**: the script terminates with a newline, the golden file does not
  (`diff` reports `\ No newline at end of file`, and nothing else). A synthesized project is
  therefore a semantic stand-in for the golden project, minus the doc surface — never compare these
  documents byte-wise.
- `mps_mcp_close_project` shuts the application down only when the project being closed is the last
  non-disposed one open, and never from the Welcome screen
  (`JetBrainsMPSProjectMcpToolset.kt:662-673`). The exit itself is fire-and-forget
  (`kt:756-759`, `invokeLater { application.exit() }`) *after* the project is already closed, so a
  confirm-exit dialog leaves MPS at the Welcome screen with MCP unusable.
- There is still no MCP tool that opens a project; Welcome-screen calls are rejected before
  dispatch. Every open remains a CLI activation.
- `~/Library/Application Support/JetBrains/MPSSRC2026.1/options/ide.general.xml` currently has
  `confirmOpenNewProject2 = -1` ("ask"), so opening a project **while another is open** raises the
  modal *New Window / This Window* prompt (`create-empty-project.md:150`). That prompt blocks every
  `mps_mcp_*` call, and "This Window" closes the project the study is measuring. This is why S10 is
  designed to never have two projects open (§W5).

## Decisions and boundaries

1. **Isolation level: per round.** One MPS process serves a whole round, as today, and each run's
   meta records the constant `isolationLevel: "per-round"` plus the pid, so a round can prove it.
   No per-run knob and no new gate question: `mps_control.sh restart` (W2) is available if a future
   round wants a cold MPS between runs, and that is all the affordance needed.
2. **S10 lands in this change**, scheduled last in a round, and is **strictly sequential**: at most
   one project is open at any moment (§W5). It therefore bends no existing rule except "the worker
   never closes a project", which is declared, not silent.
3. **`~/MPSProjects/ProjectX` is kept as a fallback, and nothing may depend on it.** Preflight
   synthesizes its own harness project; the docs mention ProjectX only as "if creation fails, an
   existing empty project may be used instead". No script path, fixture recipe or done criterion
   names it. `lessons.md:66-72` (lesson 20) keeps its golden-project wording: it is history.
4. **Capture before shutdown.** The relaunch command line is captured while MPS is alive, into
   `$TMPDIR/mps-study-cmdline.json` (`mps-project-management/SKILL.md:21` restricts helper dumps to
   `$TMPDIR`; `$RUNS` is also wrong here because wrap-up deletes it). `capture` is idempotent and
   re-runnable while MPS lives; `shutdown` refuses without a stored capture. If MPS is down and no
   capture exists, the documented recovery is the IDEA `MPS` run configuration with the project path
   as a program argument (`open-via-cli.md:57`), not a reconstructed command.
5. **Shutdown ordering.** MPS is shut down *by* the close of the last open project, never after the
   last close. A Welcome-screen MPS cannot be stopped over MCP, and this change does not try.
6. **Readiness is proven by a handshake, not by a process.** After any start or restart:
   `tools_inventory.py` → `list_open_projects` → one SMOKE run. `ps | grep mps` is not accepted as
   readiness (it matches the IDE itself and says nothing about indexing).
7. **Frozen assets stay frozen.** No existing `worker_prompt.md` is touched, so `promptSha256`
   stays comparable across rounds 1-6. Workers are never taught to open, close or shut down MPS
   except inside S10, whose closing lines forbid shutdown.
8. **Both agent catalogs move together.** `skill-optimization-study` is checkout-local, so
   `SkillCatalogReplicationTest.kt:51-70` requires `.agents/skills/…` and `.claude/skills/…` to stay
   byte-identical. It has no `resources/` blueprint; do not create one.

Non-goals: two concurrent workers against two MPS instances (the frozen `study/mcp.study.json` pins
`http://localhost:64343/stream`, so a second selector would need per-run MCP configs); replacing the
module-bearing fixtures (`statechart`, `recipes`, `recipes-full`, `recipes-broken`) with synthesized
projects; changing `mps-project-management` itself; changing any IDE preference (S10 is designed so
that `confirmOpenNewProject2` never matters); re-running past rounds.

## W1 — `new_study_project.py`: synthesize an empty MPS project

New: `plugins/mcp-tools/study/scripts/new_study_project.py`, Python 3.9 stdlib, `--help`.

```
new_study_project.py --dir <project-dir> [--mps-home <path>] [--force]
```

- Writes `.mps/modules.xml` and `.mps/.gitignore` verbatim from
  `mps-project-management/references/create-empty-project.md:23-42`, UTF-8 without BOM.
- Delegates `.mps/migration.xml` to the bundled
  `resources/jetbrains/mps/agents/mcp/skills/mps-project-management/scripts/new_project_migration_xml.py`
  (resolved relative to the checkout; `--mps-home` defaults to the checkout root, which is this
  from-sources MPS home). Never hardcodes migration ids — that is the point of delegating.
- Refuses a non-empty `--dir` unless `--force`; never writes `workspace.xml`; never writes any
  agent doc surface (`.agents/`, `.claude/`, `AGENTS.md`, `CLAUDE.md`) — those arrive per run from
  `install_skills.py`.
- stdout: one JSON object `{ok, path, mpsHome, baseline, migrationEntries, files}`.
  `migrationEntries` is the parsed key→value map, not a hash: the comparison consumers need
  (W5 criterion 1) is semantic, per the trailing-newline finding above.
- Exit codes: 0 ok, 2 usage, 3 bad MPS home / migration derivation failed, 4 target not empty.

Test: `scripts/tests/test_new_study_project.py` — offline. Asserts the three files and their
content, absence of the doc surface, non-empty-dir refusal, `--force` override, and exit 3 on a
bogus `--mps-home`. (`MigrationXmlExampleTest` gates only the verbatim doc block at
`create-empty-project.md:52-62`, not arbitrary derivations, so this test must cover the delegation.)

## W2 — `mps_control.sh`: capture, shutdown, start, wait, restart

New: `plugins/mcp-tools/study/scripts/mps_control.sh`. Writes only under `$TMPDIR`.

| subcommand | behaviour |
|---|---|
| `capture` | finds the running `jetbrains.mps.Launcher`; takes the java binary and working directory the way `examples-macos.md:11-13,16` prescribes (`ps -o args=` first token, `lsof -d cwd`) and the VM options/classpath from `jcmd <pid> VM.command_line` (which reports the classpath separately as `java_class_path (initial)` (`examples-macos.md:47-49`) and never reports the binary); rejoins tokens that do not start with `-`; **deliberately strips** `-agentlib:jdwp` and the `idea_rt.jar` javaagent even though `open-via-cli.md:57` allows a cold start to keep them — the study wants no debugger port and no run-config agent. Stores `{pid, javaBin, vmOptions[], classpath, mainClass, cwd, selector, callLogOption}` in `$TMPDIR/mps-study-cmdline.json` |
| `shutdown` | requires a stored capture and **exactly one** open project (refuses on 0 or ≥ 2, naming them); calls `mcp_call.py mps_mcp_close_project '{"projectPath":"<that project>","shutdownWithLastProject":true}'`; then polls the pid for a bounded period. `mcp_call.py` exit 4 (unreachable) is the **expected success signal**, not a failure. If the pid survives the bound, reports the two known states and stops: a confirm-exit dialog (human dismisses it) or MPS sitting at the Welcome screen with the project already closed — in which case MCP is dead and only `start` can recover it |
| `start` | relaunches from the stored capture, **detached** (`nohup … &` / `start_new_session`, never a foreground `subprocess.run` — the 90 s timeout in `examples-macos.md:64` is for *activation*, and applying it to a cold start kills MPS), with an optional project path appended; keeps `-Dmps.mcp.calllog=…` because it came from the live process |
| `wait` | readiness handshake per decision 6; bounded; prints the tool count |
| `restart` | `capture` (if absent) → `shutdown` → `start` → `wait` |

No unit test (it drives a live IDE); it is exercised by the rehearsal in §Validation.

## W3 — harness metadata and analysis

`scripts/run_worker.sh`
- Records `mpsPid`, `mpsStartTs` (from the capture file or a live probe), the constant
  `isolationLevel: "per-round"`, and `projectSynthesized` in `<id>.meta.json`. This turns round 6's
  prose argument about process identity (`HOTSPOT_REPORT_round6.md` §0) into evidence.
- Header (`run_worker.sh:5`) updated from `S1..S9` to `S1..S10`.
- Guard order unchanged: `check_user_agents.py` (`:44`) then `install_skills.py` (`:57`) then the
  call-log offsets.

`scripts/analyze_runs.py`
- **The server-slice project filter must learn about the target project — without this, S10 has no
  server evidence at all.** `analyze_runs.py:122-123` keeps only call-log lines whose `project`
  equals `meta["project"]`. In S10 almost every worker call targets `<proj>-target`, so
  `server_mps_calls` would collapse to ~0, S10 would vanish from `tools.json`, and
  `server_call_surplus` would go strongly negative. Fix: `run_worker.sh` records
  `relatedProjects: ["<project>-target"]` for S10, and the filter accepts `meta["project"]` plus
  every path in `relatedProjects`.
- New `metrics.csv` columns: `close_project_calls`, `modal_blocked`, `welcome_rejections`.
- `welcome_rejections` counts the empty-`projects` pre-dispatch rejection specifically, separate
  from the existing `pre_dispatch_rejections` total. **For S10 the baseline-good value is 1**: the
  worker closes the project, discovers the Welcome screen and CLI-opens the target, and one
  rejection on that path is the documented route, not waste. Only the excess above one is a hotspot
  signal. For every other scenario the good value is 0.
- Lifecycle scenarios (id starting `S10`) are exempt from the `server_call_surplus` warning in
  **both** directions (`analyze_runs.py:288` currently fires only on `> 0`) and from counting
  post-close rejections as errors: after the worker closes a project, further calls against it are
  expected to be rejected. Independently of S10, a *negative* surplus becomes a warning too — it
  means the slice is missing calls the transcript shows, which is an evidence gap worth a line on
  stderr rather than silence.
- `scripts/tests/test_analyze_runs.py` gains cases for the three columns, the `relatedProjects`
  filter and the two-sided S10 exemption.

## W4 — fixtures: `empty-project` becomes derived

`study/fixtures/README.md`
- Replace the `empty-project` row (`:19`): no tarball, no source directory. Regeneration is
  `python3 ../scripts/new_study_project.py --dir ~/MPSProjects/mcp-study/proj/<run-id>`.
- State that the doc-surface `tar -tzf | grep` check does not apply to it (a synthesized project
  cannot carry one) and keep the check for the module-bearing fixtures.
- Add one line: an existing empty project may be substituted if creation fails (decision 3).
- **Comparability note**, next to the frozen-prompt argument: this swaps a non-frozen side of S1,
  a scenario already measured in rounds 1-2. Lesson 25 endorses changing the non-frozen side, and
  the synthesized tree is semantically the ProjectX tarball minus the doc surface the fixture was
  already required to exclude — but a round that compares S1 against the 2026-09 baseline must say
  which fixture form it used.

## W5 — S10, the project-lifecycle scenario (sequential by design)

New: `study/scenarios/S10/worker_prompt.md` and `done_criteria.md`. Fixture: a synthesized empty
project (W1), as S1. Hypotheses: H4 discovery, H7 skills.

**Why sequential.** An earlier draft had the worker open the target project while the study project
stayed open. With `confirmOpenNewProject2 = -1` that raises the modal *New Window / This Window*
prompt, which blocks all MCP and whose "This Window" answer closes the study project. Rather than
mutate a global IDE preference for the study, S10 never holds two projects open, and the modal
cannot occur: `create-empty-project.md:150` states that a Welcome-screen MPS opens immediately
without prompting. As a bonus this is the more valuable measurement — it forces the worker through
the single most documented failure mode in `mps-project-management` (MCP is dead at the Welcome
screen; only CLI activation gets out).

Prompt (developer voice, frozen once written; exact text drafted at implementation time):

1. Create a new empty MPS project in a directory next to this one, named this project's folder name
   plus the suffix `-target`. (Deriving the path from the cwd keeps the frozen prompt portable and
   gives every run its own target directory, inside `~/MPSProjects/mcp-study/proj/`, which wrap-up
   already cleans.)
2. Close this project. It is expected that MPS ends up on the Welcome screen.
3. Open the new project so MCP tools can reach it.
4. In it, create solution `mcp.study.lifecycle`, model `mcp.study.lifecycle.notes`, and one
   BaseLanguage class root `Note`.
5. Close the new project.

Closing lines: the standard three (`Do not roll back changes. Do not edit .mps/.mpl files as text.
Stop and explain if blocked.`) plus **`Do not shut MPS down.`** — a worker passing
`shutdownWithLastProject=true` would end the round.

**Gate before the prompt is frozen.** S10 assumes the worker's already-initialized streamable-HTTP
MCP session (opened by `run_worker.sh:87` via `--mcp-config`) keeps working across the zero-project
window: all projects closed, then a different one opened. Nothing in `mps-project-management`
establishes that, and if the session needs re-initialization the prompt must say so — which after
freezing would cost the `promptSha256` series (decision 7). So the rehearsal in §Validation runs
S10 **before** the prompt is declared frozen, and the freeze is the last step of W5.

**Evaluation order** (pinned, because criteria 3-4 would otherwise be unfalsifiable): the moment the
worker exits, the observer records `mps_mcp_list_open_projects` (or its rejection) into
`<id>.eval.md` as the *left-behind state*. Only then does it CLI-open the target project for the
model checks, and it closes the target again afterwards.

Done criteria:
1. `<proj>-target/.mps/modules.xml` exists and registers the solution;
   `<proj>-target/.mps/migration.xml` has the **same entry set and baseline** as
   `new_project_migration_xml.py <checkout>` derives — compared as parsed entries, never as bytes
   (trailing-newline finding). This criterion is what proves the worker did not risk the Migration
   Assistant.
2. After the observer opens the target, `mps_mcp_get_project_structure` shows solution
   `mcp.study.lifecycle` with model `…notes` and root `Note`, and
   `mps_mcp_check_root_node_problems` reports no errors on it.
3. The left-behind state snapshot shows the target project closed, and MPS answering MCP after the
   observer's CLI open — i.e. no modal was left behind and MPS is still alive.
4. The study project's own directory is intact on disk (the worker closed it, it did not delete or
   damage it).

Declared exception, to be written into `references/scenarios.md` beside **both** rules it bends:
`scenarios.md:34-36` ("do **not** add open/close instructions to `worker_prompt.md`") and
`scenarios.md:49-53` ("Do not make the worker or the evaluator perform the swap"). S10 is the single
exception to each: the worker closes and opens projects *because that is the measured skill*. The
`done_criteria.md` half of the `:34-36` rule stands unchanged — the evaluator remains read-only, and
the observer still performs every swap that surrounds the run.

Recovery protocol, stated in the scenario file:
- Schedule S10 last in a round. A wrong `migration.xml` opens the *modal* Migration Assistant, which
  blocks every `mps_mcp_*` call for the rest of the round, not just for that run.
- If a modal appears (Migration Assistant, or a *New Window / This Window* prompt should a worker
  find a way to open a second project): ask the user to dismiss it — never run the migration — then
  `mps_control.sh restart` if MCP does not recover. Record it as a task FAIL with the dialog as
  evidence; that is exactly the hotspot S10 exists to find.
- Wrap-up closes and deletes the `<proj>-target` directories.

## W6 — skill: `SKILL.md`

Edits, in file order (line spans verified against the current file):

- **Roles (`:25-36`).** Observer gains: synthesizes harness and scratch projects, restarts MPS via
  `mps_control.sh`, shuts MPS down at wrap-up. Human keeps gate answers, push approval and modal
  dismissal only; "restarts MPS when the plugin changed" is removed.
- **Gate questions (`:38-44`).** Q1 drops the "needs a human restart" framing (it is an observer
  action now). No new question (decision 1).
- **Step 1 Preflight (`:48-66`).** Self-healing: MPS not running → `mps_control.sh start`;
  Welcome screen → synthesize a harness project (W1) and CLI-open it; then the existing handshake
  and call-log checks. The golden-project sentences (`:51`, `:53`, `:55`) are replaced by the
  synthesized *harness project*, ProjectX named only as a fallback. The user-agent and user-skill
  contamination assertions (`:60-66`) stay verbatim.
- **Step 2 Instrument (`:67-69`).** Adds the observer-driven restart sequence
  (`capture` → `shutdown` → `start` → `wait` → SMOKE) and keeps lesson 13's revert obligation.
- **Step 3 Template (`:70-79`).** The empty project is synthesized, not tarred; the doc-surface
  verification applies to module-bearing fixtures only.
- **Step 4 SMOKE (`:80-87`).** SMOKE runs against the synthesized harness project (`:81-82`, `:85`)
  and is the readiness gate after any MPS start or restart.
- **Step 5 Scenarios (`:88-91`).** `S1..S10`; note S10 runs last; fixture list (`:90`) updated.
- **Step 6 Runs (`:92-104`).** Per-run loop gains "synthesize or extract, then open"; records
  `isolationLevel`/`mpsPid`; keeps "ONE scratch project open at a time" and cross-references S10's
  sequential design as compliant with it, not an exception to it.
- **Steps 9-10 (`:114-119`).** Plugin rebuild → `mps_control.sh restart` → SMOKE, no human step.
- **Step 11 Wrap-up (`:120-123`).** Shutdown ordering (decision 5): close the *last* scratch with
  `shutdownWithLastProject=true`; delete `<proj>-target` dirs; the capture file lives in `$TMPDIR`
  and is not part of the `~/MPSProjects/mcp-study/` cleanup (decision 4).

## W7 — skill references

`references/harness.md`
- New script entries for `new_study_project.py` and `mps_control.sh`, in the existing style (usage
  line, env, outputs, exit codes), including "`mcp_call.py` exit 4 is the expected outcome of a
  successful shutdown" (`harness.md:80` currently reads it as an error).
- "Opening and closing scratch projects (observer)" (`:82-108`) becomes **"Project and MPS lifecycle
  (observer)"** with four protocols: **create** (W1), **open** (unchanged CLI activation — still no
  MCP open tool), **close** (unchanged), **shutdown + relaunch** (capture-first, ordering, bounded
  poll, Welcome-screen escape, readiness handshake). The golden wording at `:92` becomes the harness
  project.
- Per-run procedure card (`:115-127`): step 1 becomes "synthesize (empty) or extract (fixture)";
  add S10's left-behind snapshot / reopen / close steps; add the `mpsPid` continuity check beside
  the existing `skillsSha256` check.

`references/scenarios.md`
- Fixture paragraph (`:1-7`) and the S1 row (`:11`): `empty-project` is synthesized.
- Table: add the S10 row; SMOKE row (`:21`) now says harness project.
- "Project open / close (orchestrator, every scenario)" (`:25-37`): rename to cover create and
  shutdown; golden wording at `:27` and `:37` becomes the harness project.
- "Adding a scenario for a changed skill/tool" (`:49-53`): add S10's declared exception (§W5).
- "Writing a prompt" (`:38-42`): lifecycle prompts end with "Do not shut MPS down."
- "Writing done criteria" (`:44-48`): on-disk descriptor checks are allowed where the artifact *is*
  a file; comparisons of generated XML are semantic, never byte-wise; the observer, not the
  evaluator, performs any reopen, and records the left-behind state first.

`references/analysis.md`
- Metrics list (`:3-9`): the three new columns and the S10 exemption.

`references/lessons.md`
- **Write the missing lesson 26 first.** `SKILL.md:65` already cites "(lesson 26)" for the
  user-agent guard, but the file ends at lesson 25 (`:98-102`) — a dangling reference. Lesson 26 is
  that guard: user-level MPS agents can absorb calls that never appear in the parent transcript
  (the `server_call_surplus` audit), so the catalog is proven clean before any run side effect and
  is never modified.
- Then the new ones: (27) capture the relaunch command line before shutting MPS down — after
  `exit()` there is nothing left to inspect, and the capture lives in `$TMPDIR`, not in the
  directory wrap-up deletes; (28) shutdown rides on the last close, and a fire-and-forget exit can
  still leave MPS at the Welcome screen with MCP dead; (29) a derived precondition beats a
  snapshotted one — generalising lesson 24 from fixtures to the whole environment; (30) two open
  projects means a modal in a default-configured IDE (`confirmOpenNewProject2 = -1`), so a scenario
  that touches two projects is sequential or it is blocked.
- Lesson 9's supersession note gains: MPS restart is an observer action now.
- Lesson 20 (`:66-72`) keeps its golden-project wording — it is history, not instruction.

## W8 — propagation and repo hygiene

- Apply every skill edit to `.agents/skills/skill-optimization-study/` and
  `.claude/skills/skill-optimization-study/` identically; `diff -r` must print nothing.
- `plugins/mcp-tools/study/` is not a skill catalog and needs no propagation.
- Do not run `mps_mcp_initialize_project_for_agents` in this checkout.

## Phasing

- **A** W1 + W4 + the W6/W7 edits that depend only on creation. Unblocks a round with no golden
  project.
- **B** W2 + the restart wording in W6 steps 2/9/10/11.
- **C** W3 metadata and analyser columns.
- **D** W5 (S10) plus its scenario-file edits.

A and B are independent. D's pass/fail verdict needs neither; C only sharpens D's evidence
(`welcome_rejections`, the surplus exemption), so C before D is preference, not a dependency.

## Validation

1. `python3 -m unittest discover -s plugins/mcp-tools/study/scripts/tests` — the two existing
   suites plus the new one.
2. `SkillCatalogReplicationTest` (registered in `McpToolsIntegrationTestSuite`) for the two-catalog
   invariant, plus a literal `diff -r` of the two study-skill copies.
3. Live rehearsal, in this order, before any measured round: synthesize a project → CLI-open →
   SMOKE → `mps_control.sh restart` → SMOKE again → one S10 run on one model → left-behind
   snapshot → evaluate → close target → close scratch with `shutdownWithLastProject=true`.
   The S10 leg answers the open question named in W5: did the worker's MCP session survive the
   zero-project window? Freeze the prompt only after it does.
4. Lesson 18 gate: a fresh agent, forbidden to read this plan or the transcripts, follows the
   rewritten lifecycle sections and reports gaps.

## Risks

| risk | mitigation |
|---|---|
| Shutdown with no usable capture leaves the round dead | `shutdown` refuses without the capture; cold start falls back to the IDEA `MPS` run configuration (decision 4) |
| Classpath split on relaunch (`PathClassLoader` crash) | token rejoin rule (`open-via-cli.md:38`) plus the binary/cwd recipe from `examples-macos.md:11-16,47-57`, encoded in `capture` |
| `start` killed by a foreground timeout | `start` is detached; the 90 s timeout pattern belongs to activation only |
| Confirm-exit dialog: project closed, app alive, MCP dead | bounded poll, then the two documented states and the `start` escape (decision 5, lesson 28) |
| Restart loses the call-log VM option | the option is captured from the live process; the IDEA-run-config path is the documented fallback with lesson 13's caveat |
| S10 pops the Migration Assistant and blocks the round | S10 last; documented recovery; criterion 1 makes the failure legible |
| A second open project pops *New Window / This Window* | S10 is sequential by design; no IDE preference is touched (lesson 30) |
| S10 measured from the transcript only, its server slice filtered away | `relatedProjects` in the meta plus the widened filter in W3; the two-sided surplus warning makes a broken slice loud |
| The worker's MCP session does not survive the zero-project window | the rehearsal runs S10 before the prompt is frozen (W5 gate) |
| A round silently mixes two MPS processes | `mpsPid`/`mpsStartTs` in every meta; the per-run card checks continuity |
| Restart returns before indexing finishes | readiness handshake + SMOKE, never `ps` |

## Implementation log (2026-09-22)

Landed:

- **W1** `study/scripts/new_study_project.py` + `scripts/tests/test_new_study_project.py` (7 cases).
  Verified against this checkout: baseline `261`, entries identical to `~/MPSProjects/ProjectX`.
- **W2** `study/scripts/mps_control.sh` (`capture|shutdown|start|wait|restart`). Guard paths
  exercised with MPS down: refuses to capture with no process, refuses to shut down or start with
  no capture, `wait` times out cleanly. The live paths are untested — see below.
- **W3** `run_worker.sh` meta (`mpsPid`, `mpsStartTs`, `isolationLevel`, `projectSynthesized`,
  `relatedProjects`, S10 auto-derivation) verified under real bash expansion;
  `analyze_runs.py` gains the project-filter widening, `welcome_rejections`,
  `close_project_calls`, `modal_blocked`, and the two-sided surplus warning with the `S10*`
  exemption; 3 new analyser tests. Suite: 20 tests green.
- **W4** `fixtures/README.md`: `empty-project` is synthesized; doc-surface check scoped to
  tarballs; comparability note for S1.
- **W5** `scenarios/S10/{worker_prompt.md,done_criteria.md}`, sequential design.
- **W6/W7** the skill and all four references, propagated byte-identically to both catalogs
  (`diff -r` clean; the three-tree invariant of `SkillCatalogReplicationTest` re-checked by its
  shell equivalent across every blueprint and checkout-local skill).

## Rehearsal (2026-09-22, live MPS from sources, pid 4104 → 6073)

Run in the §Validation order. Everything passed; three defects surfaced, all fixed except D39.

| step | result |
|---|---|
| `capture` | from-sources, selector `MPSSRC2026.1`, cwd `<checkout>/bin`, 82 VM options, 27,106-char classpath kept as one token, jdwp/`idea_rt` stripped |
| synthesize + open | descriptors written, activation exit 0 in 2.5 s, **no Migration Assistant** — the derived `migration.xml` is right for this build |
| SMOKE #1 | exit 0, 11 events, live catalog installed, `mpsPid` 4104 recorded |
| `restart` | **13.9 s total**: close → process gone in 2 s (no exit dialog) → detached relaunch (pid 6073) → 48 tools and the project loaded after 10 s |
| SMOKE #2 | exit 0; the pid continuity check correctly flags 4104 ≠ 6073 |
| S10 (sonnet) | **PASS on all five criteria.** 29 turns, 116 s, 26 tool calls, 8 MCP calls, `close_project_calls` 2, `welcome_rejections` 0, `modal_blocked` 0, 1 self-recovered error. The worker followed the sequential design exactly: descriptors → close host → CLI activation → verify → solution/model/`Note` → validate → close |
| left-behind state | `{"projects":[]}` (Welcome), MPS alive — criteria 3 and 4 hold |
| criterion 1 | target `migration.xml` entries identical to the derivation (raw bytes matched too, but the criterion does not depend on that) |
| criterion 2 | solution `mcp.study.lifecycle`, model `…notes`, root `Note`; `check_root_node_problems` → `no problems found` |

Defects the rehearsal found, all three invisible offline:

1. **The pre-dispatch rejection is plain text, not JSON, and names each project `path`.**
   `mcp_call.py` even exits 0 for it. `mps_control.sh`'s discovery parsed JSON first and gave up,
   so `shutdown` would have reported "found 0 open projects" with one open. Fixed: the parser now
   handles the envelope, the text listing, and all three directory key names.
2. **`ps -o etimes=` is Linux-only**, and `-o lstart=` prints a locale-dependent string
   (`út 22 zář 19:26:31 2026`) that cannot be compared between runs. Fixed: the meta now carries
   `mpsStartEpoch`, derived from the portable `etime`.
3. **Defect D39 (open, in another skill).** The documented activation recipe passes the whole
   `java_command` field as the main class. An MPS started *with* a project path — which
   `mps_control.sh start <dir>` now does routinely — reports
   `jetbrains.mps.Launcher /path/to/previous/project`, so the reconstruction dies with
   `ClassNotFoundException`. The S10 worker hit it at `:18` and recovered at `:19` with
   `.split()[0]`, costing one turn. The study is immune (`capture` stores only the first token),
   and a new `mps_control.sh open` subcommand keeps the observer off the broken recipe entirely,
   but the fix belongs to `mps-project-management` in three trees — a declared non-goal here, so it
   is recorded in `study/docs-defects.md` as **D39, open**.

One scope addition from the rehearsal: `mps_control.sh` gained **`open`** (activate a running MPS
with a project, then confirm it is listed). The observer performs that activation on every run and
was otherwise expected to hand-write a recipe that is currently wrong.

Deviations and open items:

1. **A behaviour change beyond the original scope.** `test_zero_negative_and_missing_server_evidence_do_not_warn`
   asserted that a *negative* `server_call_surplus` stays silent. It now warns, and the test was
   renamed and rewritten to say so. Rationale: with a non-empty slice, a negative surplus means the
   log is missing calls the transcript shows — an evidence gap, not a clean run. Zero, missing and
   empty evidence stay silent as before. Revert this one hunk if the original silence was deliberate
   for a reason not recorded in the tree.
2. **The live rehearsal has run** (see §Rehearsal). The prediction that the rejection parser
   would be the first thing to break was correct.
3. **The S10 prompt is frozen.** The gate is satisfied: the worker's MCP session kept working
   across the zero-project window (`S10-sonnet-1`, close at step 16 → `list_open_projects` at
   step 20 on the same session).
4. **Lesson 18 dry-run outstanding.** A fresh agent should follow the rewritten lifecycle sections
   before the next measured round.
5. **D39 is open** and belongs to `mps-project-management` (blueprint + both catalogs, three OS
   example files). One-line fix, out of this plan's scope by decision.
