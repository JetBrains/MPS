# D83 — `perRoot` rows carry counts but no message text

Status: draft 3, 2026-09-30, final. Nothing implemented. Two reviewer rounds, each "approve with changes" (F1–F10, then G1–G5), are folded in below and listed under "Review record". The reviewer asked for no further draft.

## The defect (from `study/docs-defects.md`)

`mps_mcp_check_root_node_problems` with `perRoot=true` returns one row per root, `{root, name, concept, errors, warnings}`. A row gives no text, so a worker that sees `warnings: 1` makes a second, single-root check only to read what the warning says. Filed from round 17 as N4, frequency "always" for the cells that exercise it.

## Evidence (re-checked from the transcripts, 2026-09-30)

Every S3 cell that made a `perRoot=true` check, over six evidence dirs, is listed below. Step numbers count tool uses in `*-worker.jsonl`, the same numbering the docs-defects entry uses. The round is the evidence dir's number minus one.

| round (evidence dir) | cell | perRoot call | follow-up single-root call | worker's reason (text before the follow-up) |
|---|---|---|---|---|
| 10 (`runs-r11`) | S3-sonnet-1 | :26 | :27 | |
| 12 (`runs-r13`) | S3-opus-1 | :16 | none: read the texts from a `get_project_structure` dump instead | "The 23 warnings are exactly the 23 zero-minute steps" |
| 12 (`runs-r13`) | S3-sonnet-1 | :26 | :27 | |
| 13 (`runs-r14`) | S3-opus-1 | :14 | :15 | |
| 13 (`runs-r14`) | S3-sonnet-1 | :29 | :31 | |
| 15 (`runs-r16`) | S3-opus-1 | :13 | :15 | "Some roots have warnings, so I'll check what those are" |
| 15 (`runs-r16`) | S3-sonnet-1 | :19 | :20 | "some recipes have warnings. Let me check what those are, for completeness" |
| 17 (`runs-r18`) | S3-opus-1 | :14 | :18 | "Checking what the warnings are" |
| 17 (`runs-r18`) | S3-sonnet-1 | :21 | :22 | "worth confirming they're benign, not disguised reference issues" |
| 18 (`runs-r19`) | S3-opus-1 | :13 | :17 | "some recipes have warnings. I'll look at those" |
| 18 (`runs-r19`) | S3-sonnet-1 | :9 | :11 | (the text before :9 is repeated) |

That is 10 of 11 cells. The 11th skipped the check and paid for a dump instead. The reviewer found the rounds 10, 12 and 13 cells. The step numbers of all 11 were re-extracted from the transcripts.

The rounds 15–18 perRoot answers are identical: 44 rows, 7,057 chars, 0 errors and **23** warnings over 15 `Recipe` roots (8 roots with 1, 6 with 2, 1 with 3). The round-13 answers are 7,016 chars. The follow-up is always the same 1,931–1,934 chars: three `Step` nodes, each with the typesystem warning `Warning: Step takes no time - is the duration missing?` on `minutes`. That this is the only warning text in the model is inferred: the round-12 opus worker says so ("exactly the 23 zero-minute steps"), and the count matches. No transcript lists every message.

After reading the text, no worker acted on the warned node. All judged it benign (round 17 sonnet: "legitimate source data, not errors").

Why the workers use `perRoot` at all: `mps-mcp-workflow/references/bulk-creation.md:18` recommends it after a bulk insert. A model-scope report without it (15 roots with their problem nodes) would be larger and harder to skim.

## The code today

- Model scope, `perRoot=true`: `JetBrainsMPSNodeMcpToolset.kt:901-913`. Each row is `rootProblemSummary(root, problems)` (`:1120-1129`), which calls `problemCounts` (`common/AbstractOps.kt:2029-2052`).
- `problemCounts` walks the root's subtree. It counts checker items by severity (`ERROR`, `WARNING`; `info`/`OK` are ignored) plus the two "soft" problems that the formatter synthesizes: an empty enumeration property (error) and an invalid property value (error). Its KDoc says it counts exactly what the report for that root would print. **That is not quite true (F5).** The invalid-value error is suppressed on different conditions. The counter suppresses it when *any* message on the node contains "invalid" (`nodeProblems.none { … }`, `:2045`). The formatter suppresses it only when a message *on that property* does (`propProblems.none { … }`, `:1923`). So a node-level message containing "invalid" hides from the count a soft error that the report still prints.
- Model-level problems (`ModelValidator`: imports, used languages, devkits) are not in any row. The perRoot branch puts only their count into `details.modelProblems` and adds the warning "The model itself has N problem(s) … re-run with perRoot=false to see them". That is the same "second call to read the text" pattern, one level up. No skill, test, or study script reads `details.modelProblems` (grep over `src`, `test`, `resources`, and every non-jsonl file under `~/MPSProjects/mcp-study`).
- Module scope, `perRoot=true`: `:1053-1076`. One row per model, `{model, name, rootsChecked, errors, warnings}`. Its counts add the model-level errors and warnings to every root's `problemCounts`. Module-level problems already come back as the full list in `details.moduleProblems` (the D63 plan cites "the D83 lesson" for that choice).
- The non-perRoot model report (`modelReport`, `:962-976`) also starts each `roots` entry from `rootProblemSummary`, then adds `nodes` or `tree`.

## Proposed change (S)

### 1. A `messages` array on each perRoot row that has problems

A row with `errors + warnings > 0` gets `messages`: the distinct problem texts of that root's subtree, each with how often it occurs and the first node that reports it. A clean row has no `messages` key, the same "omit when empty" rule `quickFixes` follows.

```json
{"root":"r:38cf…(mcp.study.kitchen.samples)/1999961993951449946","name":"Garlic Bread","concept":"Recipe","errors":0,"warnings":1,
 "messages":[{"severity":"warning","message":"Warning: Step takes no time - is the duration missing?","count":1,"node":"r:38cf…(mcp.study.kitchen.samples)/1999961993951449950"}]}
```

- **Grouping key:** `(severity, full message text)`, with no normalization. Texts that embed a node name stay distinct. Grouping happens on the full text, and truncation is applied only when rendering (see Caps). So two long texts that share their first 300 characters remain two entries.
- **What is counted:** exactly what `problemCounts` counts, and after the F5 fix that is exactly what the report prints (§4). `info` items are left out, as they are of the counts. So the `count`s of a row add up to its `errors` + `warnings` whenever the row has no `moreMessages`. Text truncation does not affect counts.
- **Soft problems** get a text that names the property, because a row has no property nesting to show where they are. The report's own text stays as the prefix, so a substring search for it still matches: `Empty enumeration property: 'unit'`, `Property value is invalid: 'minutes'`. The full report keeps its current texts under the property.
- **`node`:** the persistent reference of the first node, in subtree order, that reports the message. For an error, that node is where the fix goes, so a text without it would still cost the second call. For `count > 1` it is a sample, as the docs say. It is on every entry, warnings included: in S3 no worker used it on a warning (see Evidence), but one shape for every entry is simpler for workers, for parsers, and for D78 to reuse. §3 deals with the size.
- **`hasQuickFixes: true`:** set on an entry when any item in its group carries a quick fix; otherwise the key is omitted. That tells the worker whether the single-root call, which lists the fixes, is worth making.
  - The name is not `quickFixes`, because this tool already prints `quickFixes` as an array `[{id, description, autoApplicable}]` on each problem (`AbstractOps.kt:1800-1808`).
  - The test is `QuickFixReportItem.FLAVOUR_QUICKFIX.getCollection(item).isNotEmpty()`. That is the collection `quickFixInfos` (`:2303`) starts from, and `quickFixesJsonArray` does not filter it, so the answer is the same without resolving each fix's runtime and description.
  - Only `NodeReportItem`s can set it. A model-level item can carry a fix (`MissingImportedLanguageError` has one), but `modelWithProblemsJsonObject` prints only severity, message and node for model-level items, so no answer of this tool lists that fix. A flag would send the worker to a re-check that cannot show it.
- **Order:** errors first, then warnings. Within one severity, the higher `count` comes first, then the first occurrence. The order is deterministic, so tests and diffs stay stable.
- **Caps:** at most 5 distinct messages per row. When there are more, the row gets `moreMessages: <number of distinct messages left out>`. A message longer than 300 characters is cut at a code-point boundary to 300 and ends in `…`. Across the 263 error/warning messages in every study transcript, the longest is 146 characters. No whole check answer had more than 10 distinct texts.

In the S3 case, 15 rows gain about 200 chars each, so the answer grows from 7,057 to about 10,000 chars. That is under the 20,000 default and far under the 100,000 that S3 cells actually pass. One answer that needs no follow-up is also smaller than the two calls it replaces (7,057 + 1,934), and it covers all 15 roots instead of one.

### 2. The same `messages` on the module perRoot rows

Each per-model row of a module check gets `messages` built the same way, over the model-level problems and every root of that model: tallies merged by key, with the same order and caps. For a model-level problem that is a `NodeReportItem`, `node` is its node, which `modelWithProblemsJsonObject` already prints. Otherwise `node` is omitted. Only error and warning items go in, so a row's `count`s add up to its `errors` + `warnings`, as for a root row.

### 3. Keeping the answer inline (F4)

Messages that embed a target name make each row's texts distinct. After a bad bulk insert (`Unresolved reference: Butter`, `…: Tortilla`, round 10 and 16 S5; `The reference  Gratin (recipe) is out of search scope`, round 16 S5), every row can fill all 5 slots and add 1–2 KB. That is exactly when `bulk-creation.md:18` sends a worker to `perRoot`, and an answer that spills into a temp file costs a Read. So both perRoot branches build `data` in a fixed order and stop at the first form that fits `maxInlineBytes`:

1. The rows with the caps above.
2. The rows with at most 1 message each, plus `moreMessages`.
3. If form 2 does not fit either, the temp file (today's path), holding form 1, so that one Read gets every text.

There is no form without `messages` (reviewer's G1). Leaving the texts out to stay inline would send the worker back to one single-root check per broken root, the D7 pattern; the temp file costs one Read.

- **What is measured:** the same thing `finalizeResult` measures, `json.length` of the `data` string (`AbstractOps.kt:1205`), not the envelope. The helper serializes form 1, compares its length with `maxInlineBytes`, serializes form 2 only if form 1 is too long, and hands `finalizeResult` form 2 if that fits, else form 1. So form 3 is not a separate code path: it is `finalizeResult` receiving form 1, finding it too long, and saving it.
- **Cost:** serializing twice is cheap next to running the checkers.
- **`details.messagesPerRow`:** `5` for form 1 and for the temp-file answer (which holds form 1), `1` for form 2. It is omitted when no row has `messages`, so an all-clean perRoot answer looks as it does today.

### 4. The shared visitor fixes the F5 drift

The visitor that counts and lists (see "Implementation sketch") suppresses the invalid-value soft error only when a message *on that property* contains "invalid", the formatter's condition (`:1923`). Counts, messages and the printed report then agree. This can raise an `errors` count in one edge case: a node with an invalid property value plus an unrelated node-level message that mentions "invalid". The new count is the one the report already printed.

### 5. `details.modelProblems` becomes the list (model perRoot)

In the model perRoot branch, `details.modelProblems` changes from a count to the list `[{severity, message, node?}]`. That is the shape `modelWithProblemsJsonObject` prints under `problems`, and it has **every severity**, as the full report does. The warning's "N problem(s)" becomes the size of that list, and the warning now reads "The model itself has N problem(s) (imports / used languages / devkits); see details.modelProblems". This mirrors `details.moduleProblems`. Nothing reads the field, so changing its type is safe.

The asymmetry is deliberate, and the docs state it. At **model** scope, model-level problems go to `details.modelProblems`, because no row belongs to the model itself. At **module** scope, they go into their model's row (`messages`, error and warning only), because every row is a model.

### 6. Not changed

- The non-perRoot model and module reports. Their `roots` entries already list every problem under `nodes` / `tree`, so `messages` there would only repeat them (reviewer's answer to draft-1 Q3). `rootProblemSummary` gets a flag so that only perRoot rows add `messages`.
- The node branch (a single node or root). D78, which asks to collapse identical messages in that full report, stays a separate entry. It can reuse the tally helper and should reuse the entry shape `{severity, message, count, node}`. There is one overlap: a worker who checks the D78 sandbox model with `perRoot=true` would already get the 27 identical "Language … can't be loaded" items as one entry with `count: 27`.
- **Out of scope, to be filed as its own entry:** `hasLocalProblems` (`AbstractOps.kt:2000`) treats any checker item as a problem, `info` included, although `problemCounts`' KDoc says info is ignored. So a root whose only items are `info` makes the model unclean and appears in `modelReport` as `errors: 0, warnings: 0`. Under this plan such a row gets no `messages`, because `errors + warnings` is 0. Whether info should make a model unclean is a separate decision.

## Implementation sketch

In `common/AbstractOps.kt`:

- `protected class ProblemTally(val severity: MessageStatus, val message: String, var count: Int, val node: SNodeReference?, var hasQuickFix: Boolean)`.
- One visitor, `problemSummary(node, problems, repo): ProblemSummary`, produces `errors`, `warnings` and the tallies in first-occurrence order (a `LinkedHashMap<Pair<MessageStatus, String>, ProblemTally>`), using the property-scoped suppression from §4. `problemCounts` becomes a thin wrapper that returns `ProblemCounts(errors, warnings)`, so its current callers and the unit test keep their shape. Counting and listing in one visitor keeps the "counts add up" invariant from drifting.
- `mergeTallies(…)` for the per-model rows, and `messagesJsonArray(tallies, perRow)`, which sorts, applies the caps and truncation, and adds `moreMessages`.

In `JetBrainsMPSNodeMcpToolset.kt`: a small helper takes the rows' summaries, picks form 1 or 2 by the length of the serialized `data` string (§3), and returns `finalizeResult(chosen, maxInlineBytes, details, warnings)`. Both perRoot branches call it. The choice of form is a pure function of the rows and `maxInlineBytes`, so the unit tests can call it directly. The model branch fills `details.modelProblems` with the list and rewords its warning.

## Documentation (D)

The worker reads the tool text, so the rule goes there first, and the skill docs follow.

- **Tool description, `JetBrainsMPSNodeMcpToolset.kt:730`:** the perRoot sentence becomes "… `[{root, name, concept, errors, warnings}]` for every root, clean ones included. A row with problems adds `messages`, its distinct problem texts `[{severity, message, count, node, hasQuickFixes?}]`, so there is no need to re-check a root to read them. Re-check one only to list its quick fixes." The same goes into `:731` for the per-model rows, plus the §5 asymmetry in one clause. The `perRoot` parameter description (`:740`) names `messages`.
- **`mps-mcp-workflow/references/analysis-tools/check-root-node-problems-output.md`:**
  - the model perRoot text (`:7`) and the module perRoot bullet (`:13`) describe `messages`: the keys, `node` as the first occurrence, the caps and `moreMessages`, and that the counts add up when there is no `moreMessages`;
  - the same place covers the inline fallback (form 2 at 1 message per row, then the temp file) and `details.messagesPerRow`, `hasQuickFixes` (node-level problems only), and `details.modelProblems` and the model/module asymmetry.
- **`mps-mcp-workflow/references/mcp-tools-index.md:37`:** "`perRoot=true` gives one compact entry per root, with the problem texts on rows that have problems".
- **`mps-mcp-workflow/references/bulk-creation.md:18`:** after "(optionally `perRoot=true`)", add that rows with warnings carry their texts.
- **Catalog copies:** edit the blueprint catalog first, then copy the files over `.agents/skills/` and `.claude/skills/` (`SkillCatalogReplicationTest` checks the copies). The reviewer grepped the skills and `test_scenarios`: these are the only places that mention `perRoot`.
- **Commit hygiene:** the working tree already holds another session's uncommitted `mps-node-editing` edits in all three catalogs. D83 touches only `mps-mcp-workflow` files, so the commit stages those paths only.

## Tests

**Unit** (`unit/AbstractOpsPropertyProblemsTest.kt`, which `McpToolsIntegrationTestSuite` runs), through a `problemSummaryForTest` hook next to `problemCountsForTest`:

- identical texts on two nodes → one entry, `count: 2`, and `node` is the first node;
- the same text with two severities → two entries, errors listed before warnings;
- `info`/`OK` items → no entry;
- the soft empty-enum error → `Empty enumeration property: '<name>'`. The existing `contains("Empty enumeration property")` assertions keep passing;
- 7 distinct texts → 5 entries and `moreMessages: 2`, in the stated order;
- a 400-character message → 300 characters ending in `…`, and a text with a surrogate pair at the cut is not split;
- two 400-character texts that share their first 300 characters → two entries;
- **F5:** an invalid property value plus an unrelated node-level message containing "invalid" → the soft error is counted and listed, matching `nodeWithProblemsJsonObject`'s output for the same node;
- uncapped: the sum of `count` by severity equals `problemCounts` for the same input;
- `hasQuickFixes` is set on a group in which one item carries a fix and omitted otherwise;
- **choice of form (G4):** synthetic rows, one of them with 3 distinct texts, and limits set exactly at and one below each form's length:
  - at form 1's length: form 1;
  - one below it: form 2 with `moreMessages: 2`;
  - one below form 2's length: form 1 handed on for the temp file;
  - rows that are all clean: no `messagesPerRow`.

**Integration** (`JetBrainsMPSNodeMcpToolsetExtendedIntegrationTest.kt`):

- `perRoot lists every root of the model including clean ones` (`:1709`):
  - the key-set assertion becomes "exactly `{root, name, concept, errors, warnings}` on a clean row, plus `messages` on a row with problems";
  - the broken root (cleared `conceptId`) has `messages` with at least one error entry;
  - its counts add up to its `errors` + `warnings`;
  - `node` resolves to a node under that root.
- `perRoot on a module gives one row per model` (`:1806`): the same key-set change, and the structure model's row has `messages`.
- **New, model-level problem:** inside a command, add a ghost `SLanguage` (built with `MetaAdapterFactory`) to a model's used languages. This is the same ghost-reference idea as the D63 test, which puts a ghost module into a module descriptor's `runtimeModules`; here the ghost goes into a model.
  - `ModelValidator` checks unloaded models too (`mySkipUnlessLoaded=false`, `ModelValidator.java:62`). For a language the `LanguageRegistry` does not know, it reports `MissingImportedLanguageError` (`:204-210`), an ERROR with the text "Can't find language: <qualified name>". It is a `ModelReportItemBase`, not a `NodeReportItem`, which is the no-`node` path the test is for.
  - `perRoot=true` on the model returns `details.modelProblems` as a list with that message, and the warning names `details.modelProblems`.
  - `perRoot=true` on the module gives that model's row a `messages` entry for the problem, with no `node` and no `hasQuickFixes` (although the item carries a fix, see §1), and the counts add up.
- **New, inline fallback smoke test:** it takes its limit from a first call that has no limit, so it never has to predict JSON sizes.
  - Precondition, asserted first: some row of that answer has at least 2 distinct `messages`. Otherwise forms 1 and 2 are the same length and the test would pass for the wrong reason. If the cleared-`conceptId` fixture yields only one text, a second error is added to the same root.
  - A second call with `maxInlineBytes` set to form 1's `data` length minus 1 gets `messagesPerRow: 1`, still inline.

## Validation

- `McpToolsIntegrationTestSuite` for the unit and integration tests above. The suite has had single flaky failures, so a failure outside these tests is re-run before it is blamed on the change.
- `SkillCatalogReplicationTest` and `validate_skill_catalog.py` for the docs.
- A live check, if the MPS MCP server is connected at implementation time: `perRoot=true` on an S3 end state (`~/MPSProjects/mcp-study/proj-r19/S3-opus-1`, model `mcp.study.kitchen.samples`). Expect 15 rows with the `Step takes no time` entry, counts adding up to 23 warnings, and `messagesPerRow: 5`. This is also the first message listing that confirms the "only warning text" inference in Evidence.

## Bookkeeping

Once implemented:

- D83 moves to `docs-defects-archive.md` as fixed. Its re-measure (S3): no single-root `check_root_node_problems` after a `perRoot` check whose rows carried `messages`.
- The recurrence-watch row for D83 gets that signature and stays until the defect has been absent for one round.
- D78's entry gets a note that the tally helper and the entry shape exist.
- The info-severity question from §6 is filed as a new entry.

## Review record

Round 1 (draft 1 → draft 2), reviewer verdict "approve with changes":

- **F1:** the warning total is 23, not 24. Fixed.
- **F2:** S3 also ran with perRoot in rounds 10, 12 and 13, so the count is 10 of 11 cells over 6 dirs. The "only warning text" claim is marked as an inference. Fixed.
- **F3:** no worker acted on a warned node. Added to Evidence.
- **F4:** the size fallback is adopted (§3). The premise was partly wrong. The reviewer read `runs-r16/S3-opus-1:13` as `maxInlineBytes=10000`, but the call passed `100000` (the `1000` is on the next call, `get_project_structure`), so the S3 cell would not have regressed. The failure-heavy case (texts that embed target names) still justifies the fallback.
- **F5:** the invalid-value suppression drift is fixed in the shared visitor (§4), with a unit test. The info side note is recorded as out of scope (§6).
- **F6:** group on the full text, truncate on render at a code-point boundary; "nothing cut" means no `moreMessages`. Adopted.
- **F7:** the soft-problem texts keep the report's text as a prefix. Adopted.
- **F8:** `details.modelProblems` holds every severity, and the model/module asymmetry is documented (§5). Adopted.
- **F9:** a quick-fix flag on each entry. Adopted (named `hasQuickFixes` in round 2).
- **F10:** tests for the fallback, a module row with a model-level problem, F5, and the ghost used-language fixture. Adopted.
- **Draft-1 questions (answered in round 1):**
  - Q1: keep `node` on every entry;
  - Q2: the caps stand;
  - Q3: no `messages` on the non-perRoot report.

Round 2 (draft 2 → draft 3), reviewer verdict "approve with changes", no further draft needed:

- **G1:** the reviewer confirmed that S3 passes `maxInlineBytes: 100000`. Form 3 (bare rows plus a warning) is dropped, as recommended. The order is caps → 1 per row → temp file, and `messagesPerRow` is 5 or 1.
- **G2:** the flag is renamed `hasQuickFixes`, so it does not clash with the `quickFixes` array. It is computed from `FLAVOUR_QUICKFIX.getCollection(item)` without resolving fixes, and it is set only for `NodeReportItem`s (§1).
- **G3:** the fallback measures the `data` string, as `finalizeResult` does, and passes the chosen form to it. `messagesPerRow` is 5 on a temp-file answer and is omitted when no row has messages (§3).
- **G4:** the choice of form is unit-tested with synthetic rows and exact limits. The integration smoke test asserts that some row has 2 or more distinct texts, and takes its limit from a first uncapped call.
- **G5:** the model-level fixture is confirmed (`MissingImportedLanguageError`, no `node`). The wording now says the ghost `SLanguage` goes into the model's used languages, unlike D63's ghost runtime module.
