# Harness

All scripts: `plugins/mcp-tools/study/scripts/`, Python ≥ 3.9 stdlib, `--help`.

## run_worker.sh `<scenario> <model> <run-no> <project-dir>`
Env: `RUNS` (default `~/MPSProjects/mcp-study/runs`), `CALLLOG` (default `$RUNS/server-calllog.jsonl`),
`MAX_TURNS` (400), `STUDY` (auto). Writes `<id>.meta.json`, `<id>-worker.jsonl`, `<id>-worker.stderr`,
`<id>-server.jsonl` (call-log slice by byte offsets). Launch detached and poll:
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
calls/ms (slice filtered by the run's project). Chains = bigrams/trigrams of `tool[:operation/kind]`.
Cross-check: `server_calls == mps_calls` unless a call was rejected before dispatch (no projectPath).

## show_steps.py `<worker.jsonl> <from> <to> [--input-chars N --result-chars N]`
Compact view of a step range (1-based tool_use ordinals as in `chains.json` examples) with inputs,
result heads, `[ERROR]` markers and assistant prose. Give reviewers this instead of the transcript.

## tools_inventory.py `--out $RUNS/inventory.json`
Use exactly this path: `run_worker.sh` stores its sha256 as `inventorySha256` in every meta file.
Streamable-HTTP `initialize` → `notifications/initialized` → `tools/list`; records names, parameter
names, description/schema bytes. Its `McpClient` class is the seed of an online client if ever needed.

## Per-run procedure card
1. `tar -xzf study/fixtures/<fixture>.tar.gz -C ~/MPSProjects/mcp-study/proj/<id> --strip-components=1`
   (+ scenario inputs such as `recipes.csv`). 2. Human opens it; `mps_mcp_list_open_projects` must show
   it and NO other project with the same module names. 3. Launch detached; poll. 4. Evaluate via an
   Opus subagent (read-only, `projectPath` on every call, temp-file `data` is a path to read).
5. `meta.taskPass/taskEvidence`; save the report as `<id>.eval.md`. 6. Human closes the project.
