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
9. **Project open/close is a human step.** No MCP tool opens a project; plan swaps as the bottleneck.
10. **Polling in an agent harness is bounded.** Foreground waits ≤ ~9 min per call (raise the Bash
    tool timeout); launch workers detached (`nohup sh -c …&`), poll the wrapper pid `$!` in loops;
    the meta file's `pid` is `run_worker.sh` itself, for `kill` only.
11. **Fixture builder prompts ≠ worker prompts.** `test_scenarios/StateChartScenario.md` carries
    reporting requirements; never reuse such files as worker prompts.
12. **Model variance is large on identical tasks** (S3: 28 vs 100 turns). Judge remedies by the
    chains they remove, not by turn deltas between models.
13. **Keep the study-only VM option out of shared config** — it hard-codes a home path; commit it as a
    clearly labelled TEMP commit and `git revert` it at wrap-up.
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

