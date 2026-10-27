# D119 — a `perRoot` message with `count > 1` names one node

Status: implemented 2026-10-27 (MPS-40338). Review round 1 ("approve with changes", F1–F12) and round 2 (G1–G6) are folded in; see "Review record".

## The defect (from `study/docs-defects.md`)

`mps_mcp_check_root_node_problems` with `perRoot=true` gives each row with problems a `messages` array, `[{severity, message, count, node, hasQuickFixes?}]` (MPS-40338, D83). When a message has `count > 1`, only one sample `node` is listed. To act on every occurrence, for example to find which commands are unreachable, the worker re-checks the root to get the other nodes. `families.py` counts that re-check as `C_after_summary`, so the D83 signature reports it as a D83 recurrence. Filed from round 44 as N1: tier S, frequency "sometimes".

Fix as filed: **S**, when `count > 1`, add `nodes` (up to `messagesPerRow` or 5 refs) and keep `node` as the first. **Analyser**, the D83 signature (`C_after_summary`) excludes a check that follows a `count > 1` message.

## Evidence (re-checked from `~/MPSProjects/mcp-study/runs-r44`, 2026-10-27)

| cell | perRoot call | follow-up | row | what the follow-up returned |
|---|---|---|---|---|
| S16-opus-1 | :16 (`Kaja.sandbox.sandbox`) | :17, root check of `…/915666084355069204` | `{"message":"Error: Unreachable command","count":3,"node":"…/915666084355069206"}` | the same text on **two** distinct nodes: `…206` twice, `…208` once |
| S13-sonnet-1 | :25 | :26, same root | same row | same |

In both cells the next step is `print_node` on the root, then `query_dataflow PRINT_PROGRAM`, then the fix. The re-check only found the nodes.

Three facts shape the design:

1. **`count` counts report items, not nodes.** The checker reported the message twice on `…206`, so `count:3` covers 2 nodes. At module scope `count` also includes model-level items that have no node (`mergeTalliesKeepsRootSampleNodeWhenModelLevelEntryHasNone`: `count:2` from one nodeless item plus one root item). A `nodes` list must be deduplicated, and its length can be smaller than `count`.
2. **`C_after_summary` on round 44 is 1 in three cells.** The two above are D119. The third, `S5-sonnet-1:8`, re-checks root `Curry`, whose row is `count:1, hasQuickFixes:true`. That re-check lists quick fixes, which the docs allow ("re-check a root only to list its `quickFixes`"). It is not D119 and must stay in `C_after_summary`.
3. **`runs-r42` and `runs-r43` come from a server before MPS-40338.** Their rows have no `messages`, and `runs-r43` has the most `C_after_summary` hits (S13-opus 2; S13-sonnet, S16-opus, S16-sonnet and S3-sonnet 1 each). Those counts must not change.

## The code today

- `AbstractOps.ProblemTally(severity, message, count, node: SNodeReference?, hasQuickFix)`: `problemSummary` records each ERROR/WARNING item (and each synthesized soft property error) under the key `(severity, full text)`. The first item sets `node`, and later items only increment `count`.
- `modelProblemSummary`: the same for model-level items. `node` is set only for a `NodeReportItem`, otherwise it is null.
- `mergeTallies`: module `perRoot` rows merge a model's root tallies into its model-level tallies. `node` is filled from `from` only when `into.node == null`. A new key gets a fresh `ProblemTally` (l. 2206).
- `messagesJsonArray(tallies, perRow)` renders `node`. `choosePerRootForm` tries form 1 (5 messages per row), then form 2 (1 per row), then spills form 1 to a temp file. `details.messagesPerRow` reports the form it chose.
- `families.py`: `check_verdict` returns `problem_summary` for any perRoot row with a non-zero count. A node check after that counts as `C_after_summary`, whether or not the rows carry `messages`. A node check with `autoApplyQuickFixes` also counts, then resets `last` (l. 365–372).

## Proposed change (S)

### 1. `ProblemTally` keeps every distinct node

Replace `var node: SNodeReference?` with `val nodes: LinkedHashSet<SNodeReference>`, in first-occurrence (subtree) order. `node` becomes a read-only `nodes.firstOrNull()`, so every existing reader keeps its meaning.

- `problemSummary.record` adds `nodeRef` to the set on every item, so a repeat on the same node adds nothing.
- `modelProblemSummary` adds the `NodeReportItem`'s node when there is one.
- `mergeTallies` does `into.nodes.addAll(t.nodes)`: `into`'s nodes come first, then `from`'s, deduplicated. `node` is still the first non-null sample, which is what `mergeTalliesKeepsRootSampleNodeWhenModelLevelEntryHasNone` pins today. A new key **copies** the set (`LinkedHashSet(t.nodes)`). The model tally and the root tally must never share one mutable set (F7).

The set holds every distinct node, so `moreNodes` is exact. Its size is bounded by the problem map the checker already built.

### 2. Rendering: `nodes` and `moreNodes`

`messagesJsonArray(tallies, perRow, nodesPerMessage)` adds two fields, and only for a tally with **more than one distinct node** (F1, F2):

- `nodes`: the first `min(nodesPerMessage, nodes.size)` refs, as `PersistenceFacade.asString`, the same form as `node`. `nodes[0] == node`. With `nodesPerMessage == 1`, `nodes` is omitted, since it would only repeat `node`.
- `moreNodes`: `nodes.size - nodesPerMessage`, only when cut.

`node` stays exactly as it is. A message with one distinct node, or none, has the same shape as today. That holds whatever its `count`: a repeat on one node, or nodeless model-level items mixed in. So the response never claims that "every occurrence is on that node" when it is not. Readers learn that a server lists nodes from `details.nodesPerMessage`, not from the message shape (§5).

### 3. Keeping the answer inline

Node lists grow the payload by up to 5 messages × 4 extra refs × ~80 bytes, about 1.6 KB per row, on noisy models. That makes form 1 overflow `maxInlineBytes` (20 000) sooner, and the current next step, form 2, drops 4 of the 5 messages. That would trade D119 for D83. So add a step between form 1 and form 2 that cuts node lists before it cuts messages:

| form | messages per row | nodes per message | `details` |
|---|---|---|---|
| 1 | 5 | 5 | `messagesPerRow: 5, nodesPerMessage: 5` |
| 1b (new) | 5 | 1 (no `nodes`; `moreNodes` only) | `messagesPerRow: 5, nodesPerMessage: 1` |
| 2 | 1 | 1 | `messagesPerRow: 1, nodesPerMessage: 1` |
| spill | form 1 to a temp file | | `messagesPerRow: 5, nodesPerMessage: 5` |

Form 1b is today's form 1 plus a `"moreNodes":N` field on each multi-node message, a few bytes each. An answer that fits today therefore reaches form 2 only if those few bytes tip it over the budget.

`PerRootFormChoice` gains `nodesPerMessage: Int?`, null exactly when `messagesPerRow` is null. Render 1b only when some tally has `nodes.size > 1`. Otherwise 1b equals form 1, which already failed the budget, so go straight to form 2 (F5). The test looks at all tallies, not just the rendered top 5 of each row. When a multi-node tally sits beyond a row's message cap, 1b renders the same string as form 1 and fails the same budget. That one render is wasted, which is accepted for simplicity (G6).

`moreNodes` counts the distinct nodes not listed in `node`/`nodes`. So in 1b and form 2, a message with `node` and `moreNodes:4` has 5 distinct nodes (G3).

Introduce `MAX_PROBLEM_NODES_PER_MESSAGE = 5` next to `MAX_PROBLEM_MESSAGES_PER_ROW`. It is a separate constant on purpose: the two caps fall back independently. Form 1b is kept for its ordering (cut nodes before messages), even though the r44 payloads are small (F6).

### 4. Not changed

- Non-`perRoot` model reports (`roots` with `nodes`/`tree`) and node-scope reports already list every node.
- `hasQuickFixes` stays per message and means "at least one occurrence has a fix". The blueprint says so (F12). A re-check to list quick fixes (`S5-sonnet-1:8`) is still the documented route, out of scope here.
- `count` keeps its meaning (report items, model-level ones included).

### 5. Analyser: `families.py`

Add a column pair at the end of `KEYS`, so the existing column order is unchanged (`test_t11`):

- `C_after_node_sample`: node-scope checks that re-check a root or node whose perRoot message gave every text but not every node, with no write in between (D119).
- `C_after_node_sample_batches`: distinct batches among them.

**Node-sampled message** (F3). The server version comes from the container check's `details.nodesPerMessage`:

- Present (a D119 server): a message is node-sampled iff it has `moreNodes`.
- Absent (before D119; MPS-40338 rows carry `messages` but no `nodesPerMessage`): a message is node-sampled iff `count > 1`.

A row is **text-complete** when it has `messages` and no `moreMessages`.

**State.** `last` becomes `(verdict, rows, nodes_per_message)`. The container check sets it, and it resets to `None` exactly where `last` resets today. Both comparisons update: `in CLEAN_VERDICTS` and `== "problem_summary"` (l. 365–368) (F10). `check_verdict` keeps its signature and return values.

**Attribution** (F8), for a node check after a `problem_summary`:

1. Normalise every ref by stripping a leading `<moduleUuid>/`, on both sides: the checked ref, each row's `root`/`model`, and each message's `node`/`nodes` (G2). `check_scope` accepts module-qualified node refs, and rows of console/temp or transient models print with the prefix.
2. Find the row, in this order (G1): first, the checked ref equals a model row's `root`. Then, it equals a message's `node` or one of its `nodes` in any row. Then (module rows), it starts with the row's `model` + `/`. The first match wins. A root that carries its own error (S5's `Salt` row: `root` and both messages' `node` are `…553`) is therefore matched as a row.
3. → `C_after_node_sample` when the row is text-complete and:
   - for a match by `root` or `model`, the row has a node-sampled message;
   - for a match by message ref, that message is node-sampled.
4. Anything else → `C_after_summary`, as today. This covers counts-only rows (pre-MPS-40338), `moreMessages`, complete rows (a quick-fix re-check like `S5-sonnet-1:8`), and a sub-root node that matches no row ref. That last case is conservative and has no whole-result fallback. Neither real D119 cell needs one, since both re-check the root.
5. `autoApplyQuickFixes` (F9): keep the current behaviour. The check counts in whichever column steps 2–4 choose, then resets `last`. Pin this with a test.

`model_level` problems (`modelProblems`, the module-itself warning) keep the verdict at `problem_summary`, as today. Update the column docs and the "Check verdict" and "State" paragraphs of the module docstring.

Expected on `runs-r44`: `S16-opus-1` and `S13-sonnet-1` go from `C_after_summary` 1 to 0 and to `C_after_node_sample` 1. `S5-sonnet-1` stays at `C_after_summary` 1. Diff the full TSV for `runs-r44`, `runs-r43` and `runs-r16` before and after. In r43 and r16 nothing may change; in r44 only those two cells. The `StudyTranscriptsA9Test` pins (baseline, r19, r22 through `AFTER`, test_families.py:515–531) must pass unchanged. Do not add the new columns to `AFTER`.

After the server fix, a `C_after_node_sample` re-check is expected only after `moreNodes` (more than 5 nodes, or form 1b/2). A non-zero value on a fully listed message would mean the fix did not take.

## Implementation sketch

1. `AbstractOps.kt`:
   - `ProblemTally.nodes`, with `node` derived from it.
   - `record`, `modelProblemSummary` and `mergeTallies` (copy on a new key).
   - The `nodesPerMessage` parameter on `messagesJsonArray`, `addMessagesToRow` and `renderPerRootRows`.
   - Form 1b in `choosePerRootForm`, `PerRootFormChoice.nodesPerMessage`, and the constant.
2. `JetBrainsMPSNodeMcpToolset.kt` (F4):
   - `finalizePerRootResult` (~l. 1261) writes `details.nodesPerMessage`.
   - Three description sites state the message shape (G5):
     - l. 832 (model `perRoot` paragraph) becomes `[{severity, message, count, node, nodes?, moreNodes?, hasQuickFixes?}]`; model rows always have a node;
     - l. 833 (module `perRoot` paragraph) becomes `[{severity, message, count, node?, nodes?, moreNodes?, hasQuickFixes?}]`;
     - l. 842 (the `perRoot` parameter's `@McpDescription`) becomes the same as l. 833.
     Each also gets the clause "`nodes` lists the distinct nodes of a message reported on more than one, capped at `details.nodesPerMessage`; `moreNodes` counts the distinct nodes not listed in `node`/`nodes`, so there is no need to re-check a root to find them".
3. `families.py` and `tests/test_families.py` (§5).
4. Docs (below).

`AbstractNodeOps.messagesJsonArray` (editor cell messages) is a different overload. Leave it alone.

## Documentation (D)

- `plugins/mcp-tools/resources/…/skills/mps-mcp-workflow/references/analysis-tools/check-root-node-problems-output.md` (the blueprint), `perRoot` paragraph:
  - the `nodes`/`moreNodes` shape, with `moreNodes` counting the distinct nodes not listed in `node`/`nodes`;
  - "`count` counts reports, model-level ones included, so it can exceed the number of nodes";
  - "`hasQuickFixes` means at least one occurrence has a fix";
  - the 1b step and `details.nodesPerMessage`;
  - "re-check a root only to list its `quickFixes`, never just to read the texts **or find the nodes**".
  The module bullet's "same shape" covers the rest.
- `mps-mcp-workflow/references/bulk-creation.md:18`: "…so no follow-up single-root check is needed to read them **or find their nodes**".
- Propagate both to `.agents/skills/…` and `.claude/skills/…` where the file exists. Run `validate_skill_catalog.py` and `SkillCatalogReplicationTest`.
- `mcp-tools-index.md`: no change.

## Tests

Unit (`AbstractOpsPropertyProblemsTest`, synthetic nodes and items, as the D83 tests):

- U1 `problemSummaryListsEveryDistinctNodeOfARepeatedMessage`: one text on three nodes gives `count:3`, `nodes` = those three in subtree order, `nodes[0] == node`, and no `moreNodes`.
- U2 `problemSummaryDeduplicatesNodesReportingTheSameMessageTwice`: the S16 shape, 2 items on A and 1 on B, gives `count:3` and `nodes:[A,B]`.
- U3 `problemSummaryOmitsNodesForASingleDistinctNode`: `count:1`, and `count:2` on one node, both give no `nodes`/`moreNodes` key.
- U4 `problemSummaryCapsNodesAndReportsMoreNodes`: 7 nodes give 5 refs plus `moreNodes:2`. At `nodesPerMessage=1`: no `nodes`, `moreNodes:6`.
- U6 extend `mergeTalliesKeepsRootSampleNodeWhenModelLevelEntryHasNone`:
  - "shared" (nodeless plus one root item, `count:2`) still has no `nodes`;
  - a text on a model-level `NodeReportItem` and a different root node gets `nodes`, model node first;
  - a node present on both sides appears once;
  - mutating the merged tally does not change the source root tally (copy).
- U7 extend `choosePerRootFormSelectsForm1Form2OrTempFileFallbackByExactLength`:
  - a budget in `[len(1b), len(1))` picks 1b (`5/1`), not form 2;
  - the existing budgets still pick 1, 2 and spill, now with `nodesPerMessage`;
  - with no multi-node tally, a budget below form 1 picks form 2 directly.

Integration (`JetBrainsMPSNodeMcpToolsetExtendedIntegrationTest`) (F11):

- I1, new, next to `…falls back to 1 message per row…`, in the base fixture's per-test structure model (`structureModelRef`, `McpIntegrationTestBase` `@Before`). A root has **two** empty `LinkDeclaration` children. The shared text is not established (G4). The existing fallback test only shows that a cleared `conceptId` plus one empty link gives at least 2 distinct messages, and no test names their texts. So first pin the texts: print each child's problems with a node-scope check while writing the test. Then hard-code the text they share, for example a missing obligatory `target` reference.
  - Preconditions: that text is on both children, not on the root, and the message has `count >= 2` with 2 distinct nodes.
  - Assert: `perRoot` gives `nodes` = both children's refs, `nodes[0] == node`, and `details.nodesPerMessage:5`.
  - If the two links do not share a text, use a property-level soft error (`Empty enumeration property: '<name>'`) on two children instead.
- I2, extend `…falls back to 1 message per row…` (l. 2584–2618). Give its fixture the second `LinkDeclaration` from I1, with I1's preconditions. Compute the form 1b length from the 5-per-row answer by rendering it client-side: drop `nodes`, add `moreNodes`. Or probe with a budget between the two lengths. Budgets and forms:
  - `form1Length - 1` picks 1b: assert `messagesPerRow:5, nodesPerMessage:1`, `moreNodes` present and no `nodes`;
  - a budget below 1b picks form 2 (`1/1`) and keeps today's asserts, `messages.size()==1` and `moreMessages >= 1`;
  - spill keeps `5/5`.

Analyser (`test_families.py`):

- A1, the S16 shape on an MPS-40338 server (no `nodesPerMessage`): a `count:3` row with one `node`, then a root check of that row, gives `C_after_node_sample=1` and `C_after_summary=0`.
- A2, D119 server (`nodesPerMessage:5`): `count:3, nodes:[a,b]`, then a root check, gives `C_after_summary=1` and `C_after_node_sample=0`.
- A3, D119 server, `moreNodes`: gives `C_after_node_sample=1`.
- A3b, D119 server, `count:2` with only `node` (a nodeless mix): gives `C_after_summary=1`, not node-sampled.
- A4, `moreMessages` on the re-checked row: gives `C_after_summary`.
- A5, counts-only rows (pre-MPS-40338): gives `C_after_summary`, unchanged (`test_t5` still passes).
- A6, the S5 shape, `count:1, hasQuickFixes:true`: gives `C_after_summary`.
- A7, row attribution: two rows, one node-sampled and one complete.
  - A check of the complete row's root gives `C_after_summary`.
  - A check of the sampled message's `node` gives `C_after_node_sample`.
  - An unmatched sub-root ref gives `C_after_summary`.
  - Precedence (G1): the sampled row's root also carries an un-sampled message of its own, so `root` equals that message's `node`. A check of the root is matched as a row, giving `C_after_node_sample`.
- A8, module row: a checked node ref under the row's `model` is attributed to that row. A module-qualified `<uuid>/r:…/id` ref matches after normalisation. So does a row whose `root`/`model` carries the prefix (G2).
- A9, a write between the container check and the node check: both columns 0.
- A10, `autoApplyQuickFixes` after a node-sampled summary: counts once in `C_after_node_sample`, and a second node check after it counts nowhere.
- `test_t11`: the header ends with the two new columns.

## Validation

1. `python3 -I -m unittest plugins/mcp-tools/study/scripts/tests/test_families.py`, including `StudyTranscriptsA9Test`. Then the TSV diffs (§5).
2. Compile and run the JVM tests:
   - `build_project`;
   - the unit test class;
   - `McpToolsIntegrationTestSuite`, or a scratch suite with the extended integration test.
   Check that the new test names ran, because stale bytecode is otherwise possible (memory: *MCP suite runs use stale bytecode*). Gate on no other `JUnitStarter` JVM machine-wide.
3. Live, once MPS MCP is reachable (it is down in this session): use the Kaja sandbox from the S16 fixture and run `perRoot=true` on `Kaja.sandbox.sandbox` after introducing the unreachable commands. Expect `count:3, nodes:[…206, …208]`. Grep `idea.log` for the run window.
4. `SkillCatalogReplicationTest` and `validate_skill_catalog.py` after propagating the docs.

## Bookkeeping

- `docs-defects.md`: D119 → fixed. Move it to `docs-defects-archive.md` with the commit hash, and extend line 8's history sentence ("D119 was fixed … re-measure (S13, S16) still outstanding").
- Commit: `mcp-tools MPS-<id> - D119 perRoot messages list every node of a repeated text`, following `.agents/git.md`. Which YouTrack issue? Either a follow-up on MPS-40338 or a new one, for the user to decide.
- Re-measure in the next round: S13 and S16 (the Kaja dataflow cells). `C_after_node_sample` and `C_after_summary` should both be 0 for the unreachable-command step.

## Review record

Round 1 ("approve with changes"):

| id | sev | finding | resolution |
|---|---|---|---|
| F1 | should | `nodes:[node]` on single-node messages and in 1b repeats a ref per message; "fits today still fits" was false | `nodes` only for >1 distinct node; 1b emits `moreNodes` only (§2, §3) |
| F2 | should | a nodeless + node mix rendered `nodes:[root]` as if every occurrence were there | covered by F1; blueprint states that `count` includes model-level items; U3/U6 |
| F3 | should | the analyser conflated "old server" with "nodeless message" | server version via `details.nodesPerMessage` (§5); A3b |
| F4 | should | description sites l. 833 and l. 842 were missing | all three listed; `bulk-creation.md:18` added |
| F5 | nit | the string-compare shortcut saved nothing | replaced by "render 1b only if some tally has >1 node" |
| F6 | nit | is 1b worth it | kept, simplified per F1 |
| F7 | nit | `mergeTallies` could alias node sets | copy on a new key; U6 asserts it |
| F8 | should | the whole-result fallback was too coarse; module-qualified refs | match message `node`/`nodes` refs too, no fallback, normalise the prefix; A7, A8 |
| F9 | nit | `autoApplyQuickFixes` unaddressed | current behaviour kept; A10 |
| F10 | nit | tuple-state comparisons; A9 pins; r43 as a gate | §5 state paragraph; r43 and A9 pins in validation |
| F11 | should | integration fixtures were vague; existing `messagesPerRow==1` assert breaks | I1/I2 name the two-`LinkDeclaration` fixture with preconditions and the new budget ladder |
| F12 | nit | `hasQuickFixes` semantics once `nodes` are listed | blueprint clause (§4) |

Round 2 ("approve with changes"; F1–F12 confirmed resolved, no new design problems):

| id | sev | finding | resolution |
|---|---|---|---|
| G1 | should | no precedence when a ref is both a row `root` and a message `node` (S5 `Salt`) | `root` match first, then message ref, then `model` prefix; A7 precedence case |
| G2 | nit | only the checked ref was normalised | strip the module prefix on all refs; A8 |
| G3 | nit | `moreNodes` without `nodes` undefined | defined as distinct nodes not in `node`/`nodes` (§3, docs, descriptions) |
| G4 | should | the I1 fixture's shared text is unverified; I2's ladder depends on it | pin the texts first, preconditions, keep form-2 asserts, base fixture's structure model |
| G5 | nit | contradictory description-site instruction | target string per site |
| G6 | nit | the 1b guard looks at unrendered tallies | accepted, one wasted render, stated |

## Implementation notes

- I1 and I2 were built differently from the plan. The existing fallback test keeps its one-link fixture and now also asserts `nodesPerMessage` (5, then 1). With no text on two nodes, the one-node form is skipped and the answer goes straight to form 2. The full ladder (form 1 → 5/1 → 1/1) is in a new test with two empty `LinkDeclaration`s. Its precondition is that some message carries `nodes`, so it fails clearly if the two links share no text.
- U5 was folded into U3: `count:2` on one node gives no `nodes`.
