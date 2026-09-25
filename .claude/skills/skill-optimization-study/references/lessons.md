# Lessons from the 2026-09 study (each with the rule it produced)

1. **Guard clauses escape in-tool hooks.** A call log hooked into `withMpsProject` missed ~16 tools
   that return from argument validation before the wrapper. → Use the platform's
   `com.intellij.mcpserver.ToolCallListener` (application message bus): outermost by construction,
   covers all tools. Cost: response size and `{ok:false}` envelopes are only in the transcript.
2. **The shared module repository leaks across open projects.** A worker saw the previous run's
   finished project in `list_open_projects` and got name-resolution suggestions pointing into it.
   → One scratch project open per run; sequential runs; close after evaluation. (Tool defect D4.)
3. **Agent sessions leak provider settings into child CLIs.** Headless workers reported "Not logged
   in" because `ANTHROPIC_BASE_URL`/`CLAUDE_CODE_*` were inherited. → `env -i` with a minimal whitelist.
4. **User-level MCP config duplicates the server.** → `--mcp-config <file> --strict-mcp-config`.
5. **Temp-file envelopes look like data.** `{"ok":true,"data":"/var/…json"}` — evaluators and
   analysers must treat a string `data` as a path. Counting them is itself the #1 hotspot metric.
6. **Enum default literals print as `""`.** Verification scripts report false "missing" values.
7. **Workers verify by re-dumping and writing Python.** Expect ad-hoc scripts in transcripts; they
   are the strongest evidence for shipping offline scripts, and they inflate Bash counts (opus) vs
   Read/Write (sonnet) — classify Bash commands, don't just count them.
8. **Study claims go stale fast.** The design doc's "index omits three tools" was already fixed.
   Verify every claim against the tree before repeating it.
9. **Project open/close was a human step (superseded).** No MCP tool opens a project; plan swaps
   were the bottleneck. → **Superseded 2026-09:** the observer opens via CLI (`mps-project-management`)
   and closes via `mps_mcp_close_project`. Announce the absolute paths before each swap; do not ask
   the user to perform it. Human remains for MPS restart, gate answers, push approval, and dismissing
   `MODAL_BLOCKED` dialogs. Opening is still CLI-only — Welcome-screen MCP cannot help.
   **Superseded again 2026-09-22:** creating an empty project and restarting or shutting MPS down
   are observer actions too (lessons 26-30). The human is left with gate answers, push approval and
   dismissing dialogs.
10. **Polling in an agent harness is bounded.** Foreground waits ≤ ~9 min per call (raise the Bash
    tool timeout); launch workers detached (`nohup sh -c …&`), poll the wrapper pid `$!` in loops;
    the meta file's `pid` is `run_worker.sh` itself, for `kill` only.
11. **Fixture builder prompts ≠ worker prompts.** `test_scenarios/StateChartScenario.md` carries
    reporting requirements; never reuse such files as worker prompts.
12. **Model variance is large on identical tasks** (S3: 28 vs 100 turns). Judge remedies by the
    chains they remove, not by turn deltas between models.
13. **Keep the study-only VM option out of shared config.** `.idea/runConfigurations/MPS.xml` is
    tracked, so the call-log option must be reverted at wrap-up (`git checkout --`), not committed.
    Write it with the IDE's `$USER_HOME$` macro —
    `-Dmps.mcp.calllog=$USER_HOME$/MPSProjects/mcp-study/runs-rN/server-calllog.jsonl` — which
    removes the hard-coded-path objection the original version of this lesson raised; the reason
    not to commit it is that it is study-only, not that it is unportable. Create the target
    directory before starting MPS.
14. **Background implementers die with the observer session.** A server-side implementer was
    stopped mid-task when the session restarted; its edits survived in the working tree and it could
    be resumed from its transcript. → Give implementers disjoint file sets so partial work is
    attributable, check `git status` + `build_project` before resuming, and resume with SendMessage
    rather than restarting from scratch.
15. **Own the shared files yourself.** `McpToolsIntegrationTestSuite.java` and the reference files
    several implementers want to touch are edited only by the observer, after the implementers
    report; implementers put the sentences they want added into their report.
16. **One suite run at a time.** The integration suite compiles into one output directory; two
    concurrent runs corrupt each other. Implementers compile with `build_project`; the observer runs
    the suite once per batch.
17. **Enum defaults are invisible to scripts.** `get_concept_details` did not expose the declared
    default member, so the shipped `mps_dump.py` assumes the first literal. Pair every P-off script
    with the server change that exposes the data it needs (here: a default marker on enum literals).
18. **A skill is only self-sufficient if a fresh session says so.** The first dry-run found 11 gaps
    (unstated cwd, which pid to poll, what "empty project" means, how to tell whether the call log
    is on, the load-bearing inventory filename, an undocumented SMOKE scenario, the re-run guard).
    → Always dry-run an extracted skill with an agent that is forbidden to read the source runbook.

## From round 2 (2026-09-16, the post-treatment A/B)

19. **A shipped remedy asset can become the study's answer key.** R5's
    `mps-node-editing/scripts/examples/recipes.csv` was byte-identical (same sha256) to
    `scenarios/S3/recipes.csv`, shipped alongside a ready-made `recipes.map.json` naming the exact
    concepts S1 invents. → Derive example assets from a domain no scenario uses, and before a round
    diff every scenario input against the shipped skill assets.
20. **The treatment lands in `resources/`, not in the installed copies.** After 2026-09 the
    bundled catalog had the fixes while the checkout's `.agents/skills`, `.claude/skills` and the
    golden project were still pre-treatment (42 differing entries). → Refresh the golden project
    (delete the `mps-*` skill folders, re-run `initialize_project_for_agents`) and assert a treated
    marker (`grep rootsChecked`, `find -name '*.py'`) before building a fixture; otherwise you
    measure the old docs against the new server. **Superseded by the automation in lesson 24 —
    the manual refresh is now the fallback, not the procedure.**
21. **One run can emit several `result` events.** A worker that delegates to a subagent produces one
    per session, and taking the last reported the subagent's 13 turns / 92 s instead of the run's
    115 / 952. → `analyze_runs.py` keeps the event with the most turns; when a transcript has
    `init` or `result` twice, check whether tool counts aggregate two sessions before comparing them
    with a single-session baseline.
22. **A frozen prompt can contradict its own fixture.** S3 demands "exactly 40 Recipe roots plus the
    Cookbook" while the `recipes` fixture already holds 3 (two name-colliding with the CSV) and the
    done criteria expect 43. Baseline sonnet pushed through; round-2 sonnet stopped and asked, twice
    — a task FAIL caused by the asset, not the tools. → Check every scenario prompt against the
    fixture state it actually starts from, and prefer "N new roots in addition to what is there".
23. **When the mechanical round trips are gone, variance moves to prior knowledge.** The largest
    single cost in round 2 (~41 tool calls, a quarter of a run) was one worker not knowing a fact
    its three peers knew for free. → Rank remedies by the variance they remove, not only by the
    chains they shorten; a one-paragraph doc fix can outrank a tool change.

## From round 3 (2026-09-17)

24. **A fixture must not carry the thing under measurement.** Rounds 1 and 2 tarred the agent doc
    surface into the fixture, so each round silently measured whatever catalog was bundled when the
    tarball was made; round 2 needed a manual refresh as a precondition and still shipped a
    contradiction. → Fixtures exclude `.agents/`, `.claude/`, `AGENTS.md`, `CLAUDE.md`, and
    `run_worker.sh` installs the live catalog per run through the product's own
    `mps_mcp_initialize_project_for_agents` (`scripts/install_skills.py`), recording `skillsSha256`
    in the meta. Generalisation: anything a round is supposed to vary belongs *outside* the frozen
    asset, installed at run time from the live source, and fingerprinted into the evidence.
25. **Fix the scenario asset at the end that is not frozen.** S3's prompt ("exactly 40 Recipe roots
    plus the Cookbook") contradicted its fixture (3 pre-existing Recipes) for two rounds. Round 3
    emptied the fixture's samples model instead of rewording the prompt, keeping `promptSha256`
    comparable across all three rounds. → When a prompt and its fixture disagree, prefer changing
    the side that is not the comparison key.

## From the project-lifecycle adoption (2026-09-22)

26. **A user-level MPS agent can absorb calls the parent transcript never shows.** Definitions under
    `~/.claude/agents` that mention MPS shadow nothing visibly, but a worker that delegates to one
    produces server calls with no matching `tool_use` — the `server_call_surplus` audit. → The
    catalog is proven clean by `check_user_agents.py` before any run side effect (exit 3 on a
    `*mps*` filename, an `mps_mcp` body, or an unreadable catalog), and the guard never modifies
    user agents. Built-in `Explore`/`Task` are outside the pin. (`SKILL.md` step 1 cites this as
    lesson 26; it was missing from this file until the lifecycle change.)
27. **Capture the launch command line before shutting MPS down.** After `application.exit()` there
    is no process to `jcmd`, so a shutdown without a stored capture strands the round. →
    `mps_control.sh capture` runs while MPS is alive, `shutdown` refuses without its output, and
    the file lives in `$TMPDIR` — not in `$RUNS`, which wrap-up deletes. With neither, fall back to
    the IDEA `MPS` run configuration rather than reconstructing a command.
28. **Shutdown rides on the last close, and the exit is fire-and-forget.**
    `mps_mcp_close_project(shutdownWithLastProject=true)` exits only when the project being closed
    is the last one open, and never from the Welcome screen; the exit is posted *after* the close
    succeeds. → Never close everything and then try to shut down. A confirm-exit dialog can leave
    the project closed and the app alive at the Welcome screen, where MCP is dead — recover with a
    relaunch, not by retrying the close.
29. **A derived precondition beats a snapshotted one.** The `empty-project` fixture was a tarball of
    a hand-maintained project that still carried `.agents/`, `.claude/` and both guides, with a
    `migration.xml` correct only for the release it was made on. → Synthesize it
    (`new_study_project.py`), deriving the migration baseline from the MPS that will open it. This
    generalises lesson 24 from fixtures to the whole environment: anything a round depends on should
    be produced from the live source at run time, not preserved from an earlier one.
30. **Two open projects means a modal in a default-configured IDE.** With
    `confirmOpenNewProject2 = -1` (the default), opening a project while another is open raises the
    *New Window / This Window* prompt: every `mps_mcp_*` call blocks, and "This Window" closes the
    project under measurement. → A scenario that touches two projects is sequential (close, then
    open — a Welcome-screen MPS opens without prompting), rather than one that mutates the user's
    IDE preferences for the study.
31. **An MPS started with a project path poisons the documented activation recipe.** `jcmd`'s
    `java_command` is `"<main-class> [args]"`. While MPS was only ever launched from the IDEA run
    configuration it held just `jetbrains.mps.Launcher`, so the recipe's
    `[java, *vmOptions, "-classpath", cp, java_command, project]` worked by accident. Once the
    observer starts MPS with a project (`mps_control.sh start <dir>`), every later activation built
    that way dies with `ClassNotFoundException: jetbrains.mps.Launcher .path.to.previous.project`.
    → Take `java_command.split()[0]`; `capture` stores exactly that as `mainClass`, and
    `mps_control.sh open` is why the observer never met it. Raised as defect D39 and **fixed in
    `65bd60680c01`** — all three OS recipes, `open-via-cli.md` (including its failure-symptom
    table) and a Critical Directive in the skill; verified by re-running the corrected recipe
    against an MPS whose `java_command` carried a leftover project path. Generalisation: a new
    automation capability can turn a dormant documentation bug into a per-run cost — re-read the
    recipes it makes reachable.

## From round 8 (2026-09-23, first round on the observer-owned lifecycle)

32. **A preflight assertion with no script is an assertion that does not hold.** Step 1 told the
    observer to check for user-level `mps-*` skills in prose, while the sibling agent check had a
    guard script wired into `run_worker.sh`. Round 8 opened with `mps-api-research` installed in
    both `~/.claude/skills` and `~/.junie/skills` — invisible to every automated gate, and it would
    have shadowed the catalog under measurement in all four cells. → `check_user_agents.py` now
    rejects `mps-*` folders in both skill catalogs too, read-only, with the same exit 3. Anything
    the procedure calls an assertion belongs in the guard the harness already runs; prose checks
    are only reliable on the day someone remembers them.
33. **An instrumentation step must be executable from the state the round actually starts in.**
    Step 2 said "capture preserves the VM options of the live process, so a relaunch keeps the
    call-log option" — true, and useless when MPS is running *without* the option, which is the
    normal state after any ordinary IDE launch. The only documented path back was editing the
    tracked `MPS.xml` run configuration and restarting through the IDE, reintroducing the lesson-13
    revert step the automation was meant to remove. → `mps_control.sh calllog <file>` writes the
    option into the capture; `start`/`restart` pick it up. Write preconditions as "from state X do
    Y", and check the step against the state a fresh round is really in.
34. **A platform error that reads like a rejection may still have been dispatched.**
    `analyze_runs.py` treated `No argument is passed for required parameter 'x'` as a pre-dispatch
    rejection and subtracted it from `expected_server_mps_calls`. The platform binds arguments
    *inside* the dispatch, so `ToolCallListener` fires and the call log carries the entry (as
    `threw`): every round with one such error reported a spurious `server_call_surplus` of +1 and a
    measurement-integrity warning on otherwise perfect evidence. → Only project resolution is
    pre-dispatch; missing parameters are counted separately as `arg_validation_errors`. Before
    trusting a signature-based classifier, verify one instance against the log it predicts.
35. **Turn cost moved from tool results to skill navigation.** With discovery payloads projected
    down (temp-file envelopes 23 → 0 on S1-sonnet), the top eight chains in round 8 were all
    `Bash ↔ Read` over the skill catalog: 45 fetch operations for 189 KB in S1, 34 % of all tool
    calls. The reference files' "Contents / when to read what" blocks were not consumed — the agent
    re-derived them with `grep -n '^## '` and then read a line range. → When a payload hotspot is
    treated, re-rank before assuming the next remedy is also about payload; and a navigation aid
    only pays if the agent reads it instead of rebuilding it.

## From round 15 (2026-09-25, S1+S2+S3 × opus+sonnet against the 2026-09 baseline)

36. **The baseline's evidence is not where `$RUNS` points, and `opus` is not a fixed model.**
    `~/MPSProjects/mcp-study/runs` — the conventional `$RUNS` — holds **round 2** (2026-09-16,
    S1-opus 104 turns), not the 2026-09-15 baseline the report quotes (181 turns). The baseline raw
    runs live in `~/MPSProjects/mcp-study-baseline/runs`, recovered from
    `~/MPSProjects/mcp-study-runs-2026-09-15.tar.gz`. A first comparison table built against `runs/`
    looked plausible and was wrong in every cell. Separately, the `opus` alias moved from
    `claude-opus-5` (baseline, round 2) to `claude-opus-5-5` (round 12 onwards), so an opus delta
    against the baseline mixes a model upgrade with the treatment. → Before comparing, match each
    baseline meta's `startTs` against the report date and each transcript's `init.model` against the
    current worker's. Re-analyse the baseline with today's `analyze_runs.py`: its published token
    columns are pre-M-0 event sums (27.06 M cache read vs 18.31 M result-based for S1-opus). Give
    every round its own `runs-rN`, and treat the same-model cell (sonnet here, or the latest round on
    the current opus) as the clean comparison.

## From round 16 (2026-09-25, S5–S10 × opus+sonnet, compared with the 2026-09 baseline families)

37. **A scenario with no baseline cell is still comparable, by family and by prior cell.** The
    baseline measured only S1 and S3. Round 16 compared S5–S10 two ways: the baseline's chain
    families normalised per 100 tool calls (envelopes 19.5 → 2.2, per-root re-checks 48 → 2), and
    the latest earlier run of each scenario on the same sonnet model with a byte-identical prompt.
    → Check `promptSha256` and `init.model` against the prior cell before quoting a delta. Count
    chains by distinct assistant message, not by `tool_use` pair: a six-call parallel batch is one
    turn, and `chains.json` reports it as five pairs.
38. **A soft note in a skill does not set an order; only a numbered step does.** S10's "close
    first" lived in a "may … can" note under "Step 2: Open". One sonnet run followed it and one
    did not, and the one that did not hit the modal, `MODAL_BLOCKED` and a force close. Likewise, the
    "defaults are omitted from JSON" rule sat in a sub-reference that the run that needed it
    never opened, and the skill it wrote shipped an inverted fact. → When a remedy is a sentence,
    put it where the step or the call happens: in the numbered step list, the tool description or
    the skill section the agent is already in. A note is not enough, and a far-away reference is
    not enough either.
