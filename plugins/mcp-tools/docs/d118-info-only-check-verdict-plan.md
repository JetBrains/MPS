# D118 — an `info`-only root makes `mps_mcp_check_root_node_problems` unclean

Status: implemented 2026-10-27, not committed; implementation review settled in two rounds (round 1 "approve with
changes", 0 blocking, 8 non-blocking applied; round 2 "approve", one doc wording applied). `AbstractOpsPropertyProblemsTest`
132/132; the four new `JetBrainsMPSNodeMcpToolsetExtendedIntegrationTest` cases green (fixtures are `public` classes and
members: a package-private class or field adds BaseLanguage "never used" warnings). Live-checked on a restarted MPS via
the console (see the D118 archive entry). Plan draft 3, approved (plan review round 2, 0 blocking); see "Review log".
Deviation: the helper is `addInfoMessages`, and `quickFixId(fix)` delegates to a private `quickFixIdOf(fix, runtime)`.
Remedy **S** (server behaviour) plus the matching tool-description, skill and smoke-scenario lines.

## The defect (from `study/docs-defects.md:49`)

`hasLocalProblems` (`common/AbstractOps.kt:2055`; the defect row's 2081/2131/2184 are stale) treats any checker item
on a node as a problem, `info` (`MessageStatus.OK`) included, whereas `problemSummary` (`:2116`) and `problemCounts`
(`:2170`) ignore `info` items. A root whose only checker items are `info` therefore makes a check unclean: it appears
in `modelReport` with `errors: 0, warnings: 0`, and in `perRoot` with `errors: 0, warnings: 0` and no `messages`.
Filed from the D83 plan §6 with the decision left open: either `info` keeps a node/model clean (as `problemCounts`
already assumes), or it is counted/listed separately.

## What the transcripts show (round 44, `~/MPSProjects/mcp-study/runs-r44/*-worker.jsonl`, 0-based JSONL line)

All four instances are the same BaseLanguage hint, `Info: It's recommended to use string type` on a `ClassifierType`
for `java.lang.String` in a link whose target concept is exactly `Type` (field, parameter, return types). It carries
`jetbrains.mps.baseLanguage.typesystem.ConvertString_QuickFix`, `autoApplicable:false`
(`check_StringTypeClassifierType_NonTypesystemRule`).

| cell | call → result | scope | result | next step |
|---|---|---|---|---|
| `S15-sonnet-1` | `:64 → :65` | node (generator template) | `ok:true`, 2364-char `nodes` list, one `info` item | MAKE (`:66`) — ignored correctly |
| `S15-opus-1` | `:57 → :58` | node | same 2364 chars | `print_node` (`:59`), then "Only pre-existing info hints" (`:61`) — **1 extra call** |
| `S6-opus-1` | `:148 → :149` | model (behavior) | model report, root row `errors:0, warnings:0` + `nodes` | "parsed cleanly (only an info hint)" (`:153`); next blueprint written with `string` — **the hint was useful** |
| `S6-sonnet-1` | `:95 → :96` | model (generator) | model report, `errors:0, warnings:0`, 2833 chars | "Only info-level notes" (`:99`), MAKE |

Cost: ≈ 1 call and 1.5–2.8 KB per instance, plus a "clean or not?" judgement each worker had to make from a report
whose counts say 0/0. The hint itself was acted on once, so dropping `info` silently is not free either.

## Every other surface already ignores `info`

| surface | `info` handling |
|---|---|
| `problemSummary` / `problemCounts` / `modelProblemSummary` (`perRoot` counts and `messages`) | ignored |
| `subtreeProblemsJsonArray` (`:2517`, `parse_java_and_insert` post-insert `problems`) | ignored |
| `countSeverities` (`:2665`, `apply_intention` before/after counts) | ignored |
| module scope (`checkModuleProblems`) | only module-level **errors** make the module unclean |
| `hasLocalProblems` → `hasAnyProblems` → node-scope fast path (`JetBrainsMPSNodeMcpToolset.kt:968`), `isClean` (`:1072`), `modelReport` root filter (`:1080`), `nodeWithProblemsListJsonArray` (`AbstractOps.kt:2363`) | **counted** — the outlier |

`ModelValidator` emits only `ERROR`/`WARNING` (its one `OK` line is commented out,
`core/project-check/source/jetbrains/mps/project/validation/ModelValidator.java:174`).

## Decision

**`info` items never make a node, root, model or module unclean.** The check answers what the checkers *object* to;
an info hint is advice. This matches the KDoc of `problemSummary` and the rest of the toolset, and it makes the
documented promise ("`no problems found` means every root is clean") true for roots that only carry hints.

**But do not drop them silently**: summarize them in `details.infoMessages` on **every** answer of the check (node,
model and module scope; clean, unclean and `perRoot`), grouped as a `perRoot` `messages` entry is, plus the fix ids:
`[{severity:"info", message, count, node, moreNodes?, quickFixIds?}]`, at most 5 entries, `details.moreInfoMessages`
(the number of further distinct texts) when cut. `quickFixIds` lists the distinct checker quick-fix ids **on the
group's first node `node`** (at most 3), so the hint is one `mps_mcp_apply_intention(nodeReference=node,
intentionId=…)` call away — after this change an info-only node is never listed in `data`, and a re-check cannot
surface the id (review finding 1). Ids from later nodes are not unioned in: an id that only another node carries
would make `apply_intention(node, id)` answer NOT_FOUND. `hasQuickFixes` is not emitted (`infoSummary` leaves
`hasQuickFix` false; `quickFixIds` supersedes it). `nodes` is not rendered (`nodesPerMessage = 1`): `node` plus
`moreNodes` plus three ≈ 65-char ids keeps the block at ≈ 5 × 650 chars worst case, and `details` does not count
toward `maxInlineBytes` (`finalizeResult` measures only `data`).

**Overlap rule (unclean answers):** a node listed in `data` because it has an error or warning still prints its own
`info` items in its `problems` array (unchanged), and those items are *also* counted in `details.infoMessages`.
`infoMessages` is therefore the complete info summary of the checked scope, whatever `data` holds; the overlap is
documented, not suppressed — suppressing it would make `infoMessages` depend on `onlyNodesWithProblems`.

Rejected alternatives:
- *Keep `info` unclean, just add `infos: N` to the row.* Leaves the 1–3 KB report and the judgement call in place;
  all four workers concluded "clean" anyway.
- *Drop `info` everywhere with no summary.* Cheapest, but loses the one hint that was acted on.
- *A separate predicate for the list formatter that still lists info-only nodes in an unclean report.* Two
  definitions of "has a problem" is exactly the drift `hasLocalProblems`' KDoc forbids.
- *`infoMessages` only on clean answers.* An unclean `nodes` list would then lose info-only nodes with no summary.

## Changes

### 1. `AbstractOps.kt`

- Add `protected fun isProblemSeverity(severity: MessageStatus) = severity == MessageStatus.ERROR || severity == MessageStatus.WARNING`
  and use it in `hasLocalProblems`, `problemSummary.visit` (`:2147`) and `subtreeProblemsJsonArray` (`:2521`).
  `record`, `modelProblemSummary` and `countSeverities` keep their `when`.
- `hasLocalProblems`: `problems[node]?.any { isProblemSeverity(it.severity) } == true` instead of `isNotEmpty()`.
  KDoc: "a checker-reported error or warning … `info` items are not problems; they are summarized by [infoSummary]".
  `hasAnyProblems` and `nodeWithProblemsListJsonArray` follow automatically. No other caller in `src`.
- `ProblemTally` gains `val quickFixIds: LinkedHashSet<String> = LinkedHashSet()` (empty, so `problemSummary`,
  `modelProblemSummary` and the D83/D119 output are unaffected). `mergeTallies` keeps the **existing** key's ids
  (they are the first node's; see Decision) and, on the new-key branch (`:2220`), copies them with
  `LinkedHashSet(t.quickFixIds)`.
- Extract `protected fun quickFixId(fix: QuickFixBase): String` from `quickFixInfos` (`:2593`; the
  `runtime?.javaClass?.name ?: fix.javaClass.name` logic of `:2596–2611` with its `getFixRuntime()` try/catch) and
  have `quickFixInfos` call it, so the ids match what `tryApplyQuickFix` compares by construction. It needs no `repo`
  and does not call the language-authored `getDescription`, so a module check over hundreds of hints stays cheap.
- New `protected fun infoSummary(node: SNode, problems: Map<SNode, List<NodeReportItem>>): LinkedHashMap<Pair<MessageStatus, String>, ProblemTally>`
  — walks [node]'s subtree in `problemSummary`'s order and tallies `MessageStatus.OK` items; on a group's first item
  it fills `quickFixIds` from `QuickFixReportItem.FLAVOUR_QUICKFIX.getCollection(item).map(::quickFixId)` (and from
  later items on the same first node). Separate from `problemSummary`, so the D83 counts and `messages` cannot pick up
  info by accident.
- `messagesJsonArray` gains `quickFixIdsPerMessage: Int = 0`; when > 0 and the tally's set is non-empty it renders
  `quickFixIds` (first N). An explicit parameter rather than a post-pass, which would have to repeat the private sort.
- New `protected fun infoMessagesDetails(details: MutableMap<String, Any?>, tallies: Collection<ProblemTally>)` —
  no-op when empty; otherwise `details["infoMessages"] = messagesJsonArray(tallies, perRow = 5, nodesPerMessage = 1,
  quickFixIdsPerMessage = 3)` and `details["moreInfoMessages"] = tallies.size - 5` when positive. All entries are
  info, so the stable sort orders them by `count`, then first occurrence.

### 2. `JetBrainsMPSNodeMcpToolset.kt`

- **Node scope** (`:968`): `infoMessagesDetails(details, infoSummary(reportNode, problems).values)` before the
  clean/unclean split. `infoSummary` walks only `reportNode`'s subtree, so the root-wide map needs no filtering. After
  `autoApplyQuickFixes`, `problems` and `reportNode` are already re-computed (`:951`, `:960`). With hints present the
  `details.isEmpty() && warnings.isEmpty()` shortcut falls through to `okJson(JsonPrimitive(cleanVerdict(…)), …)`;
  `data` stays the literal verdict.
- **Model scope**: merge `infoSummary(root, rootProblems[i])` over all roots (`mergeTallies`) and add to `details`
  before the `perRoot` / clean / report split. `isClean` (`:1072`): `check.modelProblems.none { isProblemSeverity(it.severity) }`
  instead of `isEmpty()`, and the `perRoot` "The model itself has N problem(s)" warning (`:1014–1019`) counts only
  problem severities and is added only when that count is > 0 (`details.modelProblems` is still set whenever
  `modelProblems` is non-empty) — no effect today (no `OK` model items), but it makes the decision hold at model level too.
  `details.modelProblems` keeps all severities. An unclean `roots` array no longer includes 0/0 roots.
- **Module scope**: merge over every root of every checked model; add on all branches (incl. truncated and
  `perRoot`).

### 3. Docs and scenarios

Source of truth is `plugins/mcp-tools/resources/jetbrains/mps/agents/mcp/skills/`; copy each changed skill folder
over `.agents/skills/` and `.claude/skills/`, run `validate_skill_catalog.py`, and keep `SkillCatalogReplicationTest`
green.

- Tool description (`JetBrainsMPSNodeMcpToolset.kt:831`), after the clean-verdict sentence: "`info` items (advice such
  as `It's recommended to use string type`) never make an answer unclean: every answer groups them in
  `details.infoMessages` (`[{severity, message, count, node, moreNodes?, quickFixIds?}]`, at most 5,
  `moreInfoMessages` when cut; not counted toward `maxInlineBytes`), including those also printed on nodes the report
  lists. Apply a hint with `mps_mcp_apply_intention(node, one of quickFixIds)`." `:834`: "auto-apply also runs
  auto-applicable fixes attached to `info` items".
- `mps-mcp-workflow/references/analysis-tools/check-root-node-problems-output.md:3` the same sentence; `:7` replace
  "(`info` items omitted)" with "(`info` items are in `details.infoMessages`)".
- `mps-mcp-workflow/references/analysis-tools/intentions-and-quick-fixes.md:41` ("check → read a `quickFixes` id →
  apply"): add "for an `info` hint, read the id from `details.infoMessages[].quickFixIds`".
- `mps-aspect-typesystem/references/non-typesystem-checking.md:12,23` (teaches `info "msg" -> node`): one line — a
  check over a node your `info` rule fires on answers `no problems found`; the message is in `details.infoMessages`.
- `plugins/mcp-tools/test_scenarios/smoke-test-intentions.md:382` (Q-00, last row): the ClassifierType info nodes are
  no longer listed in `data` (the error sits on the `LocalVariableDeclaration`). Rewrite the row to "`details.infoMessages`
  has `It's recommended to use string type` with `quickFixIds` containing `ConvertString_QuickFix`; record its `node`
  as «STR_TYPE»". Q-08 (`:432`) then works unchanged. Grep the rest of `test_scenarios/` for `info` /
  `string type` / `errors: 0` too.
- `study/scenarios/S11/done_criteria.md:49`, `S14/done_criteria.md:9` assert verdict strings: unaffected (the string
  is unchanged), re-read to confirm.

### 4. `study/docs-defects.md`

Move D118 to `study/docs-defects-archive.md` with the decision and commit hash (as the D119 plan did), fixing the
stale line references; add a recurrence-watch row: signature before the fix = a `check_root_node_problems` result
whose only items are `"severity":"info"` but whose `data` is not `no problems found`; after it, `data:"no problems
found"` + `details.infoMessages`, and an `apply_intention` on a `quickFixIds` entry is the expected follow-up when the
worker acts on a hint. Cells: S6, S15.

## Tests

Unit (`test/…/unit/AbstractOpsPropertyProblemsTest.kt`; `stubNodeReportItem(..., quickFixes = …)` at `:2246`;
existing OK-item tests at `:353` and `:499` need no change):
1. `hasLocalProblems` false for a node with only an `OK` item; true with `OK` + `WARNING`.
2. `hasAnyProblems` false for a parent whose child has only `OK` items (new `ForTest` wrapper).
3. `nodeWithProblemsListJsonArray` over a root with an info-only child and an error child lists only the error child,
   and the error child's own `OK` item still appears in its `problems`.
4. `infoSummary` groups identical info texts across nodes (`count`, first node, `moreNodes`), collects distinct
   `quickFixIds`, ignores `ERROR`/`WARNING`; `problemSummary` of the same map still has 0/0 and no tallies.
5. `infoSummary` scoped to one child excludes info on its siblings.
6. `infoMessagesDetails` caps at 5 with `moreInfoMessages`, ≤ 3 `quickFixIds` (four **distinct** stub fix classes,
   e.g. separate `object :` instances — a stub's id is its class name), no `nodes`, no `hasQuickFixes`; leaves
   `details` untouched when empty.
6a. `infoSummary` takes `quickFixIds` from the first node only: the same text with fix A on the first node and fix B
   on the second yields `[A]`; `mergeTallies` of two roots, where the key is new in the target, keeps the source's
   ids (new-key copy), and where it exists keeps the target's.
6b. `quickFixInfos` ids are unchanged by the `quickFixId` extraction (existing report tests stay green).

Integration (`JetBrainsMPSNodeMcpToolsetExtendedIntegrationTest`), on a BaseLanguage class with a
`java.lang.String`-typed field (the rule fires on any `Type`-targeted link):
7. node scope → `data == "no problems found"`, `details.infoMessages[0]` has `string type`, `quickFixIds` contains
   `ConvertString_QuickFix`; `apply_intention` with that id and `node` → `applied:true`.
8. model scope → clean, `details.rootsChecked`, `details.infoMessages`.
9. model scope, `perRoot=true` → row `errors:0, warnings:0`, no `messages`, `details.infoMessages` present.
10. model with one info-only root and one erroring root → `roots` has only the erroring root; `infoMessages` present.
11. node scope, unclean: an error node with an info-only sibling → sibling absent from `data`, present in
    `infoMessages`.
12. spill: the unclean report of 11 with `maxInlineBytes=1` → `data` is a temp-file path, `details.infoMessages`
    still in the envelope.
13. module scope over the module of 8 → `no problems found` + `details.infoMessages`.

Run `AbstractOpsPropertyProblemsTest`, then `McpToolsIntegrationTestSuite` with the suite holding
`JetBrainsMPSNodeMcpToolsetExtendedIntegrationTest`; `build_project` first (stale bytecode otherwise), and gate on no
running `JUnitStarter` JVM machine-wide (shared test system dir). Replay the smoke scenario's Q-00/Q-08 live.

## Live check (after the change)

On a restarted MPS, model check of the study fixture `mcp.study.recipes.behavior` (or
`mcp.study.recipes.generator.templates@generator`), which carries the hint → `data:"no problems found"`,
`details.infoMessages` with the string-type hint and `quickFixIds`; grep `idea.log` for the window.

## Out of scope

- Whether `apply_intention`'s counts or the post-insert `problems` should also surface info hints.
- Severity of module-level warnings (already documented as not unclean).

## Review log

Round 1 (approve with changes): **B1** `hasQuickFixes` gave no one-call route, because the fix id only lives in a
listed node's `quickFixes` → `quickFixIds` per entry. **B2** smoke scenario Q-00 relies on listed info nodes, and the
grep missed `test_scenarios/` → named and rewritten. Non-blocking: auto-apply probe already answered
(`autoApplicable:false`) → dropped; size estimate → `nodesPerMessage = 1`, `maxInlineBytes` note; overlap rule
specified; model-level `isClean` filtered; two more skill docs; tests 5, 11–13 added; archive bookkeeping.

Round 2 (**approve**, 0 blocking; non-blocking folded in as draft 3): `quickFixId(fix)` extracted from
`quickFixInfos` (no repo, no `getDescription`); `mergeTallies` new-key copy; explicit `quickFixIdsPerMessage`
parameter; no `hasQuickFixes` on info entries; ids from the first node only, so `apply_intention(node, id)` cannot
miss; `perRoot` model warning guarded on a positive count; size estimate 5 × 650; tests 6, 6a, 6b.
