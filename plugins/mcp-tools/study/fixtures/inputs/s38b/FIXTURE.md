# `alerts2-compact` fixture (S38b)

**Status: audited, built and tarred 2026-11-09 (walk-2 builder; audit results and filled pins below; sha256 not yet in `pins.md`).** Source: the H1-opus-2 worker scratch
`~/MPSProjects/mcp-study/workspace/H1-opus-2-20261109T184145` (run `H1-opus-2`, catalog-run2; analysis
`adhoc-hints/notes/H1-opus-2-analysis.md`): an extracted `alerts2` on which the worker built the compact view, 10/10 tests green
at the end of the run. Same `mcp.study.alerts` ids as `alerts2`: never open the two together, nor the scratch next to the copy.
Copy the scratch to `~/MPSProjects/mcp-study/build/alerts2-compact`, open it alone, audit through MPS MCP only (read-only except
steps 4–5), log every call to `FIXTURE.log`; record the tarball's sha256 in [`../../pins.md`](../../pins.md). A rebuild of `alerts2`
means a rebuild (replay H1-opus-2's calls or re-audit a new run) and a re-pin here and in `../../../scenarios/S38b/done_criteria.md`.

## Audit before tarring (scenario-review-2 finding 7)

1. **Roots per model** (`list_root_nodes` / PLAIN TEXT prints) against the pins below. Editor model: exactly the 19 `alerts2`
   roots (texts in [`../s31/FIXTURE.md`](../s31/FIXTURE.md); `Threshold_Editor` 6330044388206345217 unchanged — the worker
   COPY_NODE'd it and edited only the copy) plus `AlertHints`, `Alert_compact_Editor`, `Threshold_compact_Editor`: 22 roots, no
   probe or leftover copied root. (The generated `ChannelRef_SubstituteMenu` / `ThresholdRef_SubstituteMenu` classes are
   smart-reference defaults; `alerts2`'s `source_gen` has them too; they are not roots.) Structure: the 24 `alerts2` roots,
   `AlertBook` with the new `compact` property. Constraints / behavior / typesystem: as `alerts2`. Sandbox: `Ops` unchanged,
   `Staging.compact = true`. Test model: the six shipped tests unchanged (s31 pins), `T7`–`T10` and the helper class
   `CompactViewTestUtil`, nothing else. No other model (`modules.xml` lists the three modules only; no intentions model).
2. **Deprecated:** FIND_INSTANCES (editable, exact) of `TransformationMenu_Default`/`_Named`, `SubstituteMenu_Default`/`_Named`,
   `IMenu_Default`/`_Named` → 0 each; no "instance of deprecated concept" from the checker.
3. **Clean:** `check_root_node_problems` 0 errors on the language module (5 models), the sandbox and the test model (the
   `CompactViewTestUtil` "Argument might be null" warning is allowed: Clean counts errors).
4. **MAKE** `rebuild: true` of `mcp.study.alerts`, `mcp.study.alerts.sandbox`, `mcp.study.alerts.tests`: no errors (the
   "Closure generic throws types count" warning is known and harmless); `classes_gen` current.
5. **Tests:** one JUnit `runType: MODEL` configuration over `mcp.study.alerts.tests@tests` (a build aid: the scratch's `T7 only`
   and `alerts editor tests` live in `.mps/workspace.xml`, which the tarball excludes) → 10/10, 0 failures.
6. **Project hint setting:** `.mps/workspace.xml` holds no `ConceptEditorHintSettings` component (verified 2026-11-09 on the
   scratch); the file is excluded anyway.
7. **Doc surface:** drop `.agents/`, `.claude/`, `AGENTS.md`, `CLAUDE.md` (the run's installed catalog; `run_worker.sh` installs
   the live catalog per run). `tar -tzf alerts2-compact.tar.gz | grep -E '(^|/)(\.claude|\.agents|AGENTS\.md|CLAUDE\.md)'` must
   print nothing.
8. Close the project; `tar -czf alerts2-compact.tar.gz "${TAR_EXCLUDES[@]}" -C <parent> alerts2-compact` with `classes_gen`,
   `source_gen` and `test_gen` included; sha256 → `../../pins.md`; row in `../../../instructions/fixtures.md` (below).

## Audit results (2026-11-09, `~/MPSProjects/mcp-study/build/alerts2-compact`, opened alone; calls in [`FIXTURE.log`](FIXTURE.log))

1. Roots: editor 22 (the 19 `alerts2` roots, PLAIN TEXT equal to the s31 texts, `Threshold_Editor` …217 unchanged, plus
   `AlertHints` 8865239763066188322, `Alert_compact_Editor` …199127, `Threshold_compact_Editor` …199141); structure 24
   (`AlertBook` gains `compact : boolean`); constraints 2 (`ThresholdRef_Constraints`, `ChannelRef_Constraints`); behavior 0;
   typesystem 0; sandbox `Ops` (no `compact` property, print = s31), `Staging` (`compact = true`, print `cpuLimit = 95`); tests:
   T1–T6 PLAIN TEXT equal to the s31 pins, plus `CompactViewTestUtil`, T7–T10 (11 roots); `modules.xml` lists the three modules;
   no intentions model. OK.
2. Deprecated: FIND_INSTANCES (editable, exact) of the six menu concepts → 0 each. OK.
3. Clean: language 5 models / 48 roots 0 errors 0 warnings (one BACKSPACE info); sandbox 0/0; test model 0 errors, 1 warning
   (`CompactViewTestUtil`: "This operation can produce 'java.lang.NullPointerException'", allowed). OK.
4. MAKE `rebuild: true` of the three modules: success, only the known "Closure generic throws types count" warning. OK.
5. JUnit `runType: MODEL` over `mcp.study.alerts.tests@tests` (`audit-alerts-tests`, 10 cases): 10 started, 10 finished, 0
   failures, exitCode 0. OK.
6. `.mps/workspace.xml`: no `ConceptEditorHint*` component (grep count 0). OK.
7. Tarball: `tar -tzf … | grep -E '(^|/)(\.claude|\.agents|AGENTS\.md|CLAUDE\.md)'` prints nothing; no `workspace.xml`. OK.
8. Closed with `mps_control.sh shutdown`; `tar -czf ~/MPSProjects/mcp-study/fixtures/alerts2-compact.tar.gz "${TAR_EXCLUDES[@]}"
   -C ~/MPSProjects/mcp-study/build alerts2-compact` (351 entries; `classes_gen`, `source_gen`, `test_gen` included).
   **sha256 `69849f69cd2027b047f0296b5859b1962a47d78563a8e0c0484723dcc424ccdb`** (to be copied into `pins.md` at freeze).
   Hint ids at run time: `mcp.study.alerts.editor.AlertHints.compact` (generated `ConceptEditorHintImpl("compact", "Compact",
   true, …)`). An extension's hint following the same rule, e.g. `mcp.study.alerts.review.editor.ReviewHints.review`.

## Pins (from the run's transcript and `source_gen`; re-print at audit time and fill the blanks)

Modules and models: as `alerts2` ([`../s31/FIXTURE.md`](../s31/FIXTURE.md)). Hint runtime string
`mcp.study.alerts.editor.AlertHints.compact` (generated `EditorAspectDescriptorImpl`: `ConceptEditorHintImpl("compact", "Compact",
true, …)`).

| root | reference / content |
|---|---|
| `AlertHints` (ConceptEditorContextHints) | `r:88efc77b-ce3c-401a-bfc7-ee06ac74f662(mcp.study.alerts.editor)/8865239763066188322`; hint `compact` …188323, presentation "Compact", showInUI true |
| `Alert_compact_Editor` | …199127; `contextHints` {compact}; main layout = `CellModel_Component` → AlertHeader (581195628549735302); hint ref …199128; main layout CellModel_Component …199129; inspected layout (PLAIN TEXT `[- when % condition % notify (- % notify % /empty cell: <default> -) -]`, separatorText `,`, CellLayout_Indent, `notify` on a new line): collection …199130 `Collection_uyl4g6_0`, `when` …199132 `Constant_uyl4g6_0` (Keyword), `%condition%` RefNode …199133 `empty_condition` (no addHints), `notify` …199134 `Constant_uyl4g6_1` (Keyword, on-new-line), `%notify%` RefNodeList …199136 `refNodeList_notify` |
| `Threshold_compact_Editor` | …199141; `contextHints` {compact}; PLAIN TEXT `[- { name } = % value % -]` (COPY_NODE of Threshold_Editor minus the `threshold` constant): hint ref …199154, collection …199142 `Collection_afya1a_a`, `{name}` …199147 `property_name`, `=` …199148 `Constant_afya1a_b0` (no style), `%value%` …199149 `empty_value`; no inspected layout |
| `AlertBook_Editor` | 6330044388206345185 (changed): the members list `refNodeList_members` carries `addHints` = `QueryHintsSpecification` `node.compact ? new arraylist<string>{concept editor hint/compact/} : new arraylist<string>` (QueryHintsSpecification 8865239763066199157; ternary …199160, hint expression …199167); inspected layout `[- compact: { compact } -]`: collection …199181 `Collection_47xh7n_0`, `compact:` …199183 `Constant_47xh7n_0` (Keyword), `{compact}` …199184 `property_compact`; main line unchanged (`Collection_47xh7n_a`, `Constant_47xh7n_a0`, `property_name`, `refNodeList_members`) |
| structure `AlertBook` | 6330044388206341910 gains boolean `compact` `r:283b6142-7913-4c13-b35d-b7a63a338791(mcp.study.alerts.structure)/8865239763065616019` |
| sandbox | `Staging` 6330044388206401755 `compact = true` (print: `cpuLimit = 95` under the flag); `Ops` 6330044388206401724 unchanged |
| tests (`r:95d31e53-f765-4eb5-81e3-749c99592774(mcp.study.alerts.tests@tests)/<id>`) | `T7_CompactBookTypeAlertName` 8865239763066018473 (flagged book, types a name into a compact alert, caret `AH_property_name`); `T8_CompactBookHidesCondition` …018489 (flagged vs normal book: condition cell absent / present); `T9_PushCompactHintOnNormalBook` …018504 (`CompactViewTestUtil.pushHints`: `muted alert HighCpu [ high ]`, `cpuLimit = 95`, channel unchanged); `T10_CompactInspectorEditCondition` …018525 (`isInInspector` caret, types into the condition in the Inspector); helper class `CompactViewTestUtil` …891586 (`COMPACT_HINT` = the hint string, `pushHints` = hinted-editors.md recipe 2, `pushCompact`, `memberLabels`, `isChildShown`, `isEditedChildShown`, `editedNodeName`, `setRootProperty`). T1–T6 as s31 |

Print each new or changed root at audit time (PLAIN TEXT plus the ids of the query-hints node and the inspector cells) into this
section before tarring; S38b criterion 1 compares against these prints.

## Deviations / notes

1. The compact threshold notation (`<name> = <value>`) is the worker's choice; S38b's prompt states it and item 4's both-views
   threshold (`lim = 80 + 5`) depends on it (the same-concept tie, S38b criterion 6).
2. Run configurations are not shipped (`workspace.xml` excluded); the S38b prompt has the worker create its own.
3. `fixtures.md` row: `alerts2-compact` — for S38b: the H1-opus-2 scratch (an `alerts2` copy plus the compact view: `AlertHints`,
   `Alert_compact_Editor`, `Threshold_compact_Editor`, the `compact` flag with query hints, Staging compact, tests T7–T10 with
   `CompactViewTestUtil`), audited per this file and tarred with `classes_gen`; same ids as every `alerts2*` fixture: never open
   it next to one of them or to the live scratch.
