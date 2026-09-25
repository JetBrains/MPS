# Harness

All scripts: `plugins/mcp-tools/study/scripts/`, Python ≥ 3.9 stdlib, `--help`. Their unit tests
run with the stdlib runner — `cd plugins/mcp-tools/study/scripts && python3 -m unittest discover
-s tests -p 'test_*.py'`; there is no pytest dependency and the system python3 has no pytest.
Run them once at preflight: a harness bug is cheaper to find there than in a round's evidence.

## run_worker.sh `<scenario> <model> <run-no> <project-dir>`
Env: `RUNS` (default `~/MPSProjects/mcp-study/runs`), `CALLLOG` (default `$RUNS/server-calllog.jsonl`),
`MAX_TURNS` (400, Claude only), `STUDY` (auto), `SKIP_SKILL_INSTALL` (0), `ISOLATION` (`per-round`),
`PROJECT_SYNTHESIZED` (0 — set 1 when the project came from `new_study_project.py`),
`RELATED_PROJECTS` (colon-separated; auto-set to `<project>-target` for S10),
`WORKER_HARNESS` (`claude`|`junie`; overrides auto-detect). Auto-detect uses observer `JUNIE_TMPDIR` /
`JUNIE_DATA` vs `CLAUDE_CODE` / `CLAUDE_CODE_ENTRYPOINT`. Default is `claude` when neither env is set,
so `run_worker.sh SMOKE sonnet N` still works; both env vars without an override exit 2. The run id
is `<scenario>-<modelSlug>-<run-no>` (`modelSlug` replaces characters other than `[A-Za-z0-9._-]`
with `-`). Writes `<id>.meta.json` (includes `harness` and `modelSlug`), `<id>-worker.jsonl`,
`<id>-worker.stderr`, `<id>-server.jsonl` (call-log slice by byte offsets), `<id>-install.json`.
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
`skillsSha256` (catalog fingerprint) and `skillsInstalled`, plus the MPS process under measurement
(`mpsPid`, `mpsStartTs`), `isolationLevel`, `projectSynthesized` and `relatedProjects`. `mpsPid`
is what makes "one MPS per round" checkable after the fact instead of argued in prose;
`relatedProjects` is load-bearing for S10 — the analyser filters the server call log by project,
so without it a lifecycle run's whole server slice is discarded. Launch detached and poll:
```
nohup sh -c "RUNS=$RUNS $STUDY/scripts/run_worker.sh S1 \$MODEL 1 $PROJ; echo EXIT_CODE=\$?" \
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
Junie temp dirs). Claude: `--permission-mode bypassPermissions --mcp-config study/mcp.study.json
--strict-mcp-config --output-format stream-json --verbose --max-turns $MAX_TURNS < /dev/null`.
Junie: `junie --task --model -p "$PROJECT" --output-format json-stream --json-output-file
<id>-worker.native.jsonl --skip-update-check --mcp-default-locations=false --mcp-location
$STUDY/mcp-junie` (study MCP URL only, analogue of `--strict-mcp-config`). Junie workers may leave
session files under `~/.junie/sessions`; do not auto-delete them.

## list_worker_models.py
Prints JSON `{ok, harness, orchestratorModel, models[]}` for gate question 2. Same harness
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
Outputs: `metrics.csv`, `phases.csv`, `navigation.json`, `tools.json` (per-tool calls/errors/avg
sizes, transcript + server), `chains.json`, `errors.json`, `hotspots.md`. `pass` comes from `<id>.meta.json.taskPass` (empty until
the observer evaluates; always empty for SMOKE).
The server slice is filtered to `meta.project` plus every path in `meta.relatedProjects`.
Per run: tokens (input/output/cache read/write), tool calls, MCP calls, Bash/Read/Write, skill-file
reads + bytes (Read, Grep, Glob and Bash calls that touch `*/skills/*`), temp-file envelopes (`data` = path),
Bash reads of those files, Bash blueprint writes, authored tool-input chars (all / MCP), tool-result
bytes, error envelopes (`is_error` or `{"ok":false`), error→retry pairs (same tool within 2 calls),
validation loops (≥ 3 `check_root_node_problems` on one root), stale-runtime text hits, server
calls/ms (slice filtered by the run's project). New audit columns are `pre_dispatch_rejections`,
`welcome_rejections` (rejections whose listing is empty — the Welcome screen, where no
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
or explicitly child-tagged events. Chains = bigrams/trigrams of `tool[:operation/kind]`.

**Skill navigation (D50 M-0).** Bash commands are parsed, and the old `SKILL_DIR_RE` match is OR-ed
in so `skill_reads` only grows. The persisted cwd of a `cd` carries into later calls until the
result says `Shell cwd was reset to …`. `VAR=…` and `for f in …; do … "$VAR/$f"; done` are
expanded. Heredoc bodies and comment lines are skipped, and a path with an unknown `$VAR` is
ignored. Every skill access is recorded as one of: read (whole = `Read` without offset/limit, or a
lone `cat`), grep, list, script, or other (e.g. `tee`, `echo`). `.agents/skills/X` and
`.claude/skills/X` count as the same file. Metrics columns:
- `skill_msgs`: distinct assistant messages carrying skill calls. `skill_loads`: `Skill` tool calls.
- `skill_greps_{catalog,skill,file}`: one per grep call, at its widest target. catalog = the skills
  root, a glob over skill names, or a catalog-level file such as `MPS_MCP_SKILL_VERSION.txt`;
  skill = a skill tree or a glob in one; file = named files only (one or several).
- `rereads`: calls that whole-read a file an earlier call of the same session already read whole.
  `rereads_after_compaction`: the ones with an auto-compaction between the two reads.
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
compactions, re-reads, hops, greps, phases, and every skill call with its accesses.

`--setting-sources project` remains deferred. Adopting it requires a separate SMOKE proving login,
the live project catalog, and skills still work; it is not needed for the user-agent guard.

## new_study_project.py `--dir <project-dir> [--mps-home <path>] [--force]`
Synthesizes an empty MPS project: `.mps/modules.xml`, `.mps/.gitignore`, and `.mps/migration.xml`
**derived** from the MPS that will open it (`--mps-home` defaults to this checkout, the from-sources
MPS home) by delegating to the bundled `mps-project-management` script. Replaces the `empty-project`
fixture: a synthesized tree cannot carry an agent doc surface, and its migration file cannot go
stale against a branch bump — a wrong one opens the modal Migration Assistant and blocks the round.
Refuses a non-empty directory without `--force`; writes no `workspace.xml` and no guides (the live
catalog arrives per run from `install_skills.py`). stdout: `{ok, path, mpsHome, baseline,
migrationEntries, files}`. Compare `migrationEntries` semantically, never the raw files: the script
ends the document with a newline, an MPS-written one does not. Exit: 0 ok, 2 usage, 3 bad MPS home,
4 target not empty.

## mps_control.sh `capture|calllog|open|shutdown|start|wait|restart [project-dir]`
MPS process control. Env: `CAPTURE` (default `$TMPDIR/mps-study-cmdline.json`), `SHUTDOWN_WAIT`
(60 s), `READY_WAIT` (300 s), `MPS_MCP_URL`.
- `capture` — records the live launch command line (java binary + cwd from `ps`/`lsof`, VM options
  and classpath from `jcmd VM.command_line`, spaced tokens rejoined, jdwp and `idea_rt.jar`
  stripped). **Must run while MPS is alive**; `shutdown` refuses without it, because after the exit
  there is nothing left to inspect.
- `calllog <file>` — writes `-Dmps.mcp.calllog=<file>` into the **capture** (creating the
  directory), so the next `start`/`restart` brings the call log up; with no argument it clears the
  option. `capture` can only preserve what the live process already carries, so this is how a round
  turns the call log on when MPS was started without it — no tracked run configuration is edited
  and there is no revert step at wrap-up (lesson 33). It does not affect the running MPS.
- `open` — activates the **running** MPS with `[project-dir]`: a short-lived second process that
  exits in about a second. Prefer it over hand-writing the recipe from
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
  `-Dmps.mcp.calllog=…`. The ~90 s foreground timeout in `mps-project-management` applies to
  *activation*, not to a cold start; applying it here would kill MPS.
- `wait` — readiness handshake (`tools_inventory.py`, then the project listed), never `ps`.
- `restart` — capture (if absent) → shutdown → start → wait.
With no capture and MPS down, use the IDEA `MPS` run configuration with the project path as a
program argument instead of reconstructing a command.

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
removed, skillsSha256}`. `--sha-only` prints just the fingerprint of an installed tree — `mps-*`
folders only, paths and contents, so a scenario's own `<dsl>-dsl` skill does not look like drift.
Exit: 0 ok, 2 usage, 3 MCP error, 4 unreachable, 5 post-install check failed. `--project` is the
framework `projectPath` and must be an OPEN project; `--target` defaults to it.
Non-`mps-*` skills are never touched.

## mcp_call.py `<tool> '<json-args>' [--url URL] [--raw] [--max-chars N]`
One MPS MCP tool call from the shell. The observing/evaluating session is normally NOT connected to
the server (only the workers are, via `--mcp-config`), so this is how the observer and the Opus
evaluators reach MPS. If this session already has `mps_mcp_*` tools, call them directly instead.
Pass `projectPath` inside the JSON args — the platform requires it on every tool. A temp-file envelope is resolved and inlined automatically, including the duplicate-envelope
shape (the file holds a whole `{"ok":…,"data":…}`, not the bare payload — defect D25).
Evaluators stay read-only (the tool list in the scenario's `done_criteria.md`). The observer may
mutate with `mps_mcp_close_project` to swap scratch projects. Exit: 0 ok, 2 usage, 3 MCP/tool error, 4 unreachable.

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
   readiness: indexing is still settling when the pid appears.
4. If MPS stays up after the close, read the two states `shutdown` prints before doing anything
   else; only the user dismisses a dialog.

Sequential, never two workers against one MPS. One scratch project open at a time (lesson 2) —
including S10, which closes one project before opening the next rather than holding two open
(lesson 30).

## tools_inventory.py `--out $RUNS/inventory.json`
Use exactly this path: `run_worker.sh` stores its sha256 as `inventorySha256` in every meta file.
Streamable-HTTP `initialize` → `notifications/initialized` → `tools/list`; records names, parameter
names, description/schema bytes. Its `McpClient` class is the seed of an online client if ever needed.

## Per-run procedure card
1. **Synthesize** (`python3 $STUDY/scripts/new_study_project.py --dir
   ~/MPSProjects/mcp-study/proj/<id>`, then launch with `PROJECT_SYNTHESIZED=1`) for an empty
   project, **or extract** a module-bearing fixture:
   `tar -xzf study/fixtures/<fixture>.tar.gz -C ~/MPSProjects/mcp-study/proj/<id> --strip-components=1`
   (+ scenario inputs such as `recipes.csv`). The extracted tree must have NO `.claude/`, `.agents/`,
   `AGENTS.md` or `CLAUDE.md`. 2. Tell the user the path you will close (if a previous scratch is
   still open) and the path you will open; close the previous scratch with `mps_mcp_close_project`
   if needed; open the new copy via CLI (`mps-project-management`). `mps_mcp_list_open_projects`
   must show it and NO other project with the same module names — the install in step 3 needs it
   open. 3. Launch
   detached (`run_worker.sh S1 $MODEL 1 $PROJ`); poll. `run_worker.sh` installs the live skills first and writes `<id>-install.json`;
   confirm `skillsSha256` matches the round's other runs, and `mpsPid` too — a differing pid means
   MPS was restarted mid-round and the runs are not directly comparable. 4. For S10 only: record
   the left-behind `list_open_projects` state **the moment the worker exits** (a Welcome-screen
   rejection counts), then open `<proj>-target` for the checks. 5. Evaluate via an Opus subagent
   (read-only, `projectPath` on every call, temp-file `data` is a path to read).
6. `meta.taskPass/taskEvidence`; save the report as `<id>.eval.md`. 7. Tell the user the path, then
   close with `mps_mcp_close_project` (`force=false`; `MODAL_BLOCKED` → user dismisses the dialog);
   for S10 close and delete `<proj>-target` as well.
