# Harness

All scripts: `plugins/mcp-tools/study/scripts/`, Python ≥ 3.9 stdlib, `--help`.

## run_worker.sh `<scenario> <model> <run-no> <project-dir>`
Env: `RUNS` (default `~/MPSProjects/mcp-study/runs`), `CALLLOG` (default `$RUNS/server-calllog.jsonl`),
`MAX_TURNS` (400), `STUDY` (auto), `SKIP_SKILL_INSTALL` (0). Writes `<id>.meta.json`,
`<id>-worker.jsonl`, `<id>-worker.stderr`, `<id>-server.jsonl` (call-log slice by byte offsets),
`<id>-install.json`. Before taking the call-log offsets it runs `install_skills.py --project
<project-dir>`, so the worker always reads the live catalog and the install's own MCP calls stay
out of the run's server slice; a failed install exits 3 and the run does not start. Before that,
`check_user_agents.py` recursively inspects Markdown definitions below `~/.claude/agents` and exits
3 if a filename matches `*mps*`, a body contains `mps_mcp` (case-insensitive), or the catalog cannot
be read. This mandatory, read-only guard also runs with `SKIP_SKILL_INSTALL=1`, before any run side
effect. Missing/empty catalogs and unrelated definitions pass. Built-in `Explore`/`Task` are outside
this pin. The meta gains
`skillsSha256` (catalog fingerprint) and `skillsInstalled`. Launch detached and poll:
```
nohup sh -c "RUNS=$RUNS $STUDY/scripts/run_worker.sh S1 opus 1 $PROJ; echo EXIT_CODE=\$?" \
  > $RUNS/S1-opus-1.harness.log 2>&1 &
WRAPPER=$!            # poll THIS pid: the sh wrapper exits when run_worker.sh (and the worker) exit
for i in $(seq 1 100); do ps -p $WRAPPER >/dev/null || break; sleep 5; done
```
Set the Bash tool's `timeout` to ≥ 540000 ms for polling calls (the default is 2 min); one call
covers ≈ 8–9 min, so repeat the loop in further calls for long runs. The meta file's `pid` is
`run_worker.sh`'s own pid (useful for `kill`), not the `claude` process. Re-running an id is
refused (exit 2) — bump the run number instead. Worker prompts use the cwd as `projectPath`.
The child CLI runs under `env -i HOME PATH USER SHELL LANG TERM TMPDIR` because an agent session
leaks `ANTHROPIC_BASE_URL` / `CLAUDE_CODE_*` (worker reports "Not logged in" otherwise), with
`--permission-mode bypassPermissions --mcp-config study/mcp.study.json --strict-mcp-config
--output-format stream-json --verbose --max-turns $MAX_TURNS < /dev/null`.

## analyze_runs.py `$RUNS [--out DIR (default $RUNS/analysis)] [--min-occurrences 3] [--top 25]`
Outputs: `metrics.csv`, `tools.json` (per-tool calls/errors/avg sizes, transcript + server),
`chains.json`, `errors.json`, `hotspots.md`. `pass` comes from `<id>.meta.json.taskPass` (empty until
the observer evaluates; always empty for SMOKE).
Per run: tokens (input/output/cache read/write), tool calls, MCP calls, Bash/Read/Write, skill-file
reads + bytes (Read and Bash `cat`/`sed` of `*/skills/*`), temp-file envelopes (`data` = path),
Bash reads of those files, Bash blueprint writes, authored tool-input chars (all / MCP), tool-result
bytes, error envelopes (`is_error` or `{"ok":false`), error→retry pairs (same tool within 2 calls),
validation loops (≥ 3 `check_root_node_problems` on one root), stale-runtime text hits, server
calls/ms (slice filtered by the run's project). New audit columns are `pre_dispatch_rejections`,
`expected_server_mps_calls`, `agent_calls`, `server_mps_calls`, and `server_call_surplus`. The
analyser recognizes only known platform rejection signatures, then computes
`expected_server_mps_calls = mps_calls - pre_dispatch_rejections` and
`server_call_surplus = server_mps_calls - expected_server_mps_calls`. A positive surplus produces
one stderr warning and is persisted in `errors.json` and `hotspots.md`; it means server calls are
absent from the parent transcript, with delegation one possible cause (same-project observer
traffic may also be inside a time-window slice). Missing/empty server evidence leaves surplus
unavailable and produces no warning. `agent_calls` counts parent `Agent` tool-use events, not prose
or explicitly child-tagged events. Chains = bigrams/trigrams of `tool[:operation/kind]`.

`--setting-sources project` remains deferred. Adopting it requires a separate SMOKE proving login,
the live project catalog, and skills still work; it is not needed for the user-agent guard.

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
evaluators reach MPS. Pass `projectPath` inside the JSON args — the platform requires it on every
tool. A temp-file envelope is resolved and inlined automatically, including the duplicate-envelope
shape (the file holds a whole `{"ok":…,"data":…}`, not the bare payload — defect D25).
Read-only by convention only: give evaluators the tool list from the scenario's `done_criteria.md`
and tell them not to stray from it. Exit: 0 ok, 2 usage, 3 MCP/tool error, 4 unreachable.

## tools_inventory.py `--out $RUNS/inventory.json`
Use exactly this path: `run_worker.sh` stores its sha256 as `inventorySha256` in every meta file.
Streamable-HTTP `initialize` → `notifications/initialized` → `tools/list`; records names, parameter
names, description/schema bytes. Its `McpClient` class is the seed of an online client if ever needed.

## Per-run procedure card
1. `tar -xzf study/fixtures/<fixture>.tar.gz -C ~/MPSProjects/mcp-study/proj/<id> --strip-components=1`
   (+ scenario inputs such as `recipes.csv`). The extracted tree must have NO `.claude/`, `.agents/`,
   `AGENTS.md` or `CLAUDE.md`. 2. Human opens it; `mps_mcp_list_open_projects` must show it and NO
   other project with the same module names — the install in step 3 needs it open. 3. Launch
   detached; poll. `run_worker.sh` installs the live skills first and writes `<id>-install.json`;
   confirm `skillsSha256` matches the round's other runs. 4. Evaluate via an Opus subagent
   (read-only, `projectPath` on every call, temp-file `data` is a path to read).
5. `meta.taskPass/taskEvidence`; save the report as `<id>.eval.md`. 6. Human closes the project.
