# Plan: P6 measurement integrity and P7 incomplete-JSON diagnostics

Status: implementation plan, 2026-09-18. Based on the corrected P6/P7 contracts in
[`HOTSPOT_REPORT_round4.md`](../study/HOTSPOT_REPORT_round4.md). No implementation or study
run is part of preparing this plan.

## Verified starting point

- `study/scripts/run_worker.sh` validates its arguments, installs skills, records call-log
  offsets, then launches Claude. It has no user-agent guard. Skill-install failure exits 3.
- `study/scripts/analyze_runs.py` joins tool uses/results by ID and records transcript and server
  counts, but does not classify pre-dispatch rejections, count delegation separately, or warn
  about a server surplus. Server slices are filtered by project.
- `.claude/skills/skill-optimization-study/SKILL.md` includes the agents preflight (lesson 26);
  `.agents/skills/skill-optimization-study/SKILL.md` only mentions skills.
- `AbstractOps.parseJson` already adds an excerpt, brace-imbalance wording and a temp-file hint
  for Gson's `End of input` / `Unterminated` messages. `readJsonOrFile` rejects inline input
  longer than 4096 characters before parsing.
- Root insert/update use `JsonParser.parseString` directly and lose those diagnostics. Insert
  accepts an object or an array; update accepts an object **or a one-object array**. Both return
  `INVALID_JSON` for syntax failures. The shared parser throws `McpInvalidRequestException`,
  so replacing the calls without translating that exception would change the error code.

Read-only inspection of `/Users/vaclav/MPSProjects/mcp-study/runs-r4/` confirms:

| Cell | Parent MCP calls | Pre-dispatch rejections | Server calls | Surplus | Parent `Agent` events |
|---|---:|---:|---:|---:|---:|
| S1-sonnet-1 | 102 | 9 | 100 | 7 | 3 |
| S3-sonnet-1 | 14 | 0 | 14 | 0 | 0 |
| SMOKE-sonnet-1 | 1 | 0 | 1 | 0 | 0 |

The three S1 `Agent` events are **one** `mps-constraints-agent` invocation and two `Explore`
invocations. This differs from the investigation/report's claim of three constraints-agent
invocations; use the actual parent events as the analyser oracle. The seven missing MCP calls
remain the measurement defect. The failed insert at S1 step 52 contains **1245 characters**;
Gson reports column 1246 at `$.children[1]`.

## P6 — harness guard and auditable metrics

### 1. Reject contaminated worker environments before side effects

Files: `study/scripts/run_worker.sh` and a small new stdlib helper
`study/scripts/check_user_agents.py`.

- Call the helper after argument/run-ID checks and before `install_skills.py`, call-log offsets,
  metadata creation, or worker launch. Run it even with `SKIP_SKILL_INSTALL=1`.
- Inspect Markdown agent definitions beneath the invoking user's `~/.claude/agents`, including
  definitions in subdirectories. Match filename `*mps*` or body `mps_mcp` case-insensitively.
  Resolve file symlinks when reading definitions; do not silently skip unreadable definitions.
- Missing/empty directory and unrelated definitions pass. A match exits **3** and prints the
  offending path and matching rule to stderr. An unreadable catalog also exits 3 with the I/O
  reason: the harness cannot assert a clean environment. Do not print agent bodies.
- Keep checks read-only: no deletion, moves, edits, or bypass flag. Do not add `--agents '{}'`,
  `--agent`, or `--setting-sources project` to the worker command.

Acceptance: a matching definition prevents both installation and Claude launch, leaves agent
files byte-identical, and returns 3. An unrelated `babysit-build.md` passes if its body does not
match. Skill-install and duplicate-run behavior remain intact.

### 2. Compare dispatched-call expectations with server evidence

File: `study/scripts/analyze_runs.py`.

- Add a per-call `pre_dispatch_rejection` flag while joining `tool_result` to its MCP `tool_use`.
  Require an error result and a recognized platform rejection signature. Initially recognize
  the two signatures present in round 4:
  - `Unable to determine the target project for the current MCP tool call.`
  - `MCP tool call has been failed: No argument is passed for required parameter '…'`
- Match the result text itself, using the existing `result_text` normalization. Count each call
  once. Do not classify arbitrary `INVALID_REQUEST`, `INVALID_JSON`, or tool error envelopes
  as pre-dispatch: dispatched failures still appear in the server log. Do not derive rejection
  counts from the difference being measured. Unrecognized errors remain unsubtracted.
- Add metrics columns `pre_dispatch_rejections`, `expected_server_mps_calls`, `agent_calls`,
  `server_mps_calls`, and `server_call_surplus`. Count parent `Agent` tool-use events, not mentions
  of agents in result prose; exclude explicitly child-tagged events if present. Preserve the
  existing transcript totals and chain step numbering.
- Retain `server_calls` as the existing total. The listener also logs platform tools, so derive
  `server_mps_calls` from `mps_mcp_*` entries in the same project-filtered slice to compare equal
  populations. For round 4 this equals `server_calls` (all 100 S1 entries are MPS calls).
- Calculate `expected_server_mps_calls = mps_calls - pre_dispatch_rejections` and signed
  `server_call_surplus = server_mps_calls - expected_server_mps_calls`. A positive value is the
  warning condition. Missing/empty server evidence leaves the surplus blank/unavailable rather
  than certifying a zero-surplus run; do not warn about hidden calls in transcript-only mode.
- Print one warning per affected run to **stderr**, including the run ID, arithmetic, and parent
  Agent count. Keep the stdout JSON summary machine-readable and the analyser exit code 0.
  Persist the warning in `errors.json` beside retries/validation loops and surface it in
  `hotspots.md`, so analysis artifacts retain it after terminal output is lost.
- Describe surplus as server calls absent from the parent transcript, with delegation a possible
  cause. A time-window slice can include observer traffic from the same project; do not claim
  the count alone proves a particular agent caused it. Do not invent missing turns or tokens.

Acceptance: S1 reports `pre_dispatch_rejections=9`, `expected_server_mps_calls=93`,
`server_mps_calls=100`, `server_call_surplus=7`, and `agent_calls=3`, with one warning.
S3 and SMOKE report zero surplus and no warning. Existing historical metrics stay unchanged.

### 3. Synchronize the study instructions

Files: both `.agents/skills/skill-optimization-study/` and
`.claude/skills/skill-optimization-study/`, specifically `SKILL.md` and `references/harness.md`.

- Make both preflight assertions name skills and agents, the filename/body detection rules,
  and the mandatory exit-3 guard.
- Document the new columns and warning equation; replace the current simplified
  `server_calls == mps_calls` cross-check with the dispatched-MPS comparison above.
- State that built-in Explore/Task are outside this pin. Do not disable them unless subsequent
  evidence shows a remaining surplus after user agents are absent.
- Keep `--setting-sources project` deferred. Adopting it later needs a separate SMOKE showing
  login, live project skills and the catalog still work. It is not a prerequisite for this guard.
- Correct the report's D31 and validity invocation counts to one constraints Agent event plus
  two Explore events, citing the raw transcript. Preserve historical metrics and the seven-call
  attribution. Record P6 as implemented only after its checks pass.

### 4. Focused P6 verification

Add stdlib `unittest` coverage in `study/scripts/tests/test_check_user_agents.py` and
`study/scripts/tests/test_analyze_runs.py`.

- Guard fixtures: absent/empty catalog; unrelated agent; filename match; body-only match;
  nested definition; symlinked definition; unreadable catalog. Verify exit 3 and no modifications.
- Exercise the actual shell launch gate with an isolated fixture environment and stub installer/
  Claude executables. Verify the guard runs before either stub and cannot be bypassed by
  `SKIP_SKILL_INSTALL=1`. Never alter the developer's real agents for a test.
- Analyser fixtures: matched calls; both pre-dispatch signatures; dispatched error envelope;
  unknown error; positive surplus; zero/negative surplus; missing/empty server log; mixed
  platform/MPS server calls; parent delegation with child-tagged events; Agent mentions in prose.
  Verify CSV fields, stderr warning, persisted warning and valid stdout JSON.
- Run `bash -n plugins/mcp-tools/study/scripts/run_worker.sh` and
  `python3 -m unittest discover -s plugins/mcp-tools/study/scripts/tests -p 'test_*.py'`.
- Reanalyse the existing round-4 evidence with `--out` set to a new temporary directory. Confirm
  the table above and compare all pre-existing metrics columns with the original analysis.
  Do not overwrite historical evidence or run another S1 measurement.

## P7 — share parse diagnostics without changing the root-tool contract

### 5. Extend the existing parser and route both root tools through it

Files under `src/jetbrains/mps/agents/mcp/tools/`:
`AbstractOps.kt` and `JetBrainsMPSRootNodeMcpToolset.kt`.

- Add `parseJsonElement(String): JsonElement`, delegating to the existing generic
  `parseJson(jsonString, JsonElement::class.java)`. Keep all excerpt/hint formatting in the
  existing shared parser; retain the object-returning overload for current callers.
- In the EOF/unterminated branch, retain the original Gson message/location, excerpt,
  brace-imbalance wording and large-blueprint temp-file hint. Add
  `received ${jsonString.length} chars (inline limit 4096)`. The length measures the text passed
  to the parser, including file contents when applicable; the label must not imply that the
  inline cap applies to files. Do not claim that EOF establishes transport truncation.
- Use one named 4096-character constant for the actual inline guard and this diagnostic, so they
  cannot drift. Preserve the guard's existing threshold (`> 4096`) and early rejection.
- Replace both direct root-tool parse calls with `parseJsonElement`. Catch the parser's
  `McpInvalidRequestException` at the parse boundary and return `invalidJson(e.message)` so root
  syntax failures retain `INVALID_JSON`; leave shared-parser callers' error codes unchanged.
- Preserve the insert object/array routing, update single-object/single-object-array routing,
  invalid-shape errors, editable-root checks, dry-run semantics, batch rollback and file cleanup.
  Do not move update parsing ahead of node resolution as part of this change.
- Leave `AbstractNodeOps` envelope unwrapping alone: malformed input falls through to the main
  parser already. No tool signature, input schema, generated model or skill-limit rewrite is
  required.

### 6. Regression tests that reach the affected paths

Files under `test/jetbrains/mps/agents/mcp/tools/`:
`AbstractOpsPropertyProblemsTest.kt` and `JetBrainsMPSRootNodeMcpToolsetIntegrationTest.kt`.

- Beside `parseJsonOnTruncatedInputAppendsBraceImbalanceHint`, assert actual received length,
  the 4096 limit, and the retained hint. Add real Gson malformed nested-child and array inputs
  through `parseJsonElement`, plus a non-EOF syntax error that must not get the EOF hint.
- Add integration tests invoking **both public root-tool entry points** with malformed JSON
  below 4096 characters, including a nested child cut mid-string near the observed 1245-character
  size. Use a valid model/root so the test reaches parsing. Assert `ok:false`, `INVALID_JSON`,
  the actual received length, location and brace/temp-file hint, with no claim that the cap fired.
- Assert no inserted roots or update mutations after either parse failure. Include malformed
  top-level-array input, and retain positive coverage for insert arrays and update one-object
  arrays. Add the latter explicitly if existing tests do not cover it.
- Cover the boundary distinction: valid padded inline JSON at 4096 reaches parsing; 4097 is
  rejected by the existing size guard; a permitted temp file containing valid JSON over 4096
  still works. Incomplete JSON in a file gets the same syntax diagnosis, not a size rejection.
- Both test classes are already registered in `McpToolsIntegrationTestSuite`; no suite or shared
  fixture changes should be needed.

## Delivery sequence and completion checks

1. Implement and verify P6's guard, metrics and synchronized instructions.
2. Implement P7's parser reuse and diagnostics, then its unit/integration regression coverage.
3. Use IDEA diagnostics on changed Kotlin files. Run the existing `AbstractOpsPropertyProblemsTest`
   configuration first, then `McpToolsIntegrationTestSuite` on **JDK 25**. The latter is necessary
   for root-tool fixtures; do not launch that integration class alone. Confirm no other JUnit
   process is running, run sequentially, and inspect completion logs if the IDE call times out.
4. Review changes against the acceptance table and run `git diff --check`. Compare the two edited
   study-skill copies. Update P6/P7 status and D31 notes with actual validation results.

P6 has no dependency on the ongoing P1 implementation or its call-log `ok` semantics: it counts
dispatches, including failures. Preserve all existing P1 edits, especially `McpIntegrationTestBase`
and the report. P7 may overlap a future P1 edit to `AbstractOps.kt`; keep the parser change local.

A live worker run is not needed to prove the guard or reproduce the surplus: stubs and recorded
evidence cover those contracts. If a live SMOKE is later requested, a remaining MPS user agent
must produce the intended exit-3 failure; do not relocate it automatically to make SMOKE pass.
No full measurement round, built-in-subagent restriction, setting-source change, developer-agent
cleanup, commit or push is included in this plan. Success means reliable measurement for P6 and
actionable syntax feedback for P7, whose estimated saving remains approximately one retry.
