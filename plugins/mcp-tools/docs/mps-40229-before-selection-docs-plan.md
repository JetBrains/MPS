# MPS-40229 — `mps-tests` states a false `before` caret/selection rule

Revision 3. Review round 1 is folded in (0 blockers, 4 should-fix, 8 nits), and round 2 found 2 nits and settled it. Out-of-scope nit 11
(`useLabelSelection` inspector behaviour) was declined.

**Status: implemented** in `81f2af36000a`, plus a review follow-up that covers reversed ranges (T10/T11) and
splits the result-offset sentence. D93 is now archived in `study/docs-defects-archive.md`. Line numbers below,
including `docs-defects.md:50`, are pre-fix locations.

Docs-only fix. Tracked as **D93** in `plugins/mcp-tools/study/docs-defects.md:50`. It corrects the
`before` half of archived D71 (`1921f24ac6d4`).

## What is wrong
D71 says that in an `EditorTestCase` `before` annotation, a caret ≠ 0 with the default 0..0 selection
counts as a text selection, so `type "X"` inserts at offset 0 and Backspace/Delete removes the empty
selection. Live MPS disproves the typing claim (issue tests T2, T5): the text is typed at the caret.
The `result` half of D71 (T1, T3, T4) is confirmed and stays.

## Findings (source checked by two reviewers, plus existing MPS tests)
1. **An empty selection never reaches the editor.**
   - `AnonymousCellAnnotation.setupCaretAndSelection` sets the caret, then raw
     `setSelectionStart`/`setSelectionEnd`. `setupSelection` then calls `changeSelection(cell)`
     (`lang.test/source_gen/.../AnonymousCellAnnotation__BehaviorDescriptor.java:51-52, 68-74`).
   - The new `EditorCellLabelSelection(label)` marks it non-trivial only if start ≠ end
     (`EditorCellLabelSelection.java:68-73`).
   - `SelectionManagerImpl.java:92-94, 209-216` builds the new selection, which records the offsets,
     before the old one is deactivated. So the old one's `deselectAll`
     (`EditorCellLabelSelection.java:107`) cannot wipe a kept range, even when the cell was already
     selected.
   - Activation chain: `EditorCellSelection.activate` → `:106` `setRelativeCaretX` (a selection built
     from a cell keeps `myActivateUsingRelativeCaretX = true`, `:42, :64-69`) → `:200` `setCaretX` →
     `EditorCell_Label.setCaretX:492-495` → `TextLine.setCaretByXCoord:601-603` →
     `setCaretPosition(pos, false)`. That last call resets start and end to the caret
     (`TextLine.java:634-640`). Only a non-trivial selection is re-applied afterwards
     (`EditorCellLabelSelection.java:93-99`). `makePositionValid` (`EditorCell_Label.java:506-518`) can
     shift the caret in cells that restrict caret positions.
   - So with start == end (any value), the caret decides. After the reset,
     `TextLine.hasNonTrivialSelection` (`:571-573`) is false. Backspace and Delete take their caret
     branches (`EditorCell_Label.java:1171-1181`). Delete at the last position goes through
     `processSideDeletes` instead (`EditorCellLabelSelection.java:203-205`).
2. **A non-empty selection survives, and typing replaces it wherever the caret is.**
   - Dispatch chain for `type "…"`: `KeyEventsDispatcher.typeString:27-29` (KEY_TYPED) →
     `EditorComponent.processKeyTyped:2641` → `EditorComponentKeyboardHandler.processKeyTyped:61-104` →
     `EditorCell_Basic.processKeyTyped:442` → `EditorCell_Label.doProcessKeyTyped:532-572` →
     `ModifyTextCommand.doCompute:1291` → `getUpdatedText:693-698`, which replaces start..end.
     `commit:1320-1328` then sets the caret to `start + typed length` and collapses the selection.
   - `processTextChanged` is the one path that drops a non-trivial selection (`:648-650`). It is
     reached only from IME input (`InputMethodListenerImpl.java:41`), and `type` never goes there.
   - An existing MPS test confirms the behaviour: `EditHeaderCell`
     (`jetbrains.mps.lang.editor.table.hierarchycalTable.test@tests`, module
     `jetbrains.mps.lang.editor.table.tests`, in `build/tests/mpsEditor.xml:1254`).
     - `before`: the annotation is on the `h-1` DataCell: `cellId=property_value`,
       `isLastPosition=true` (caret 3), selection 0..3.
     - `type "newHeader"` yields `newHeader`. A caret-only insert would give `h-1newHeader`.
     - The `result` annotation is `isLastPosition` + 9/9, which also confirms the `result` rule.
     - The selection there covers the whole text, so a mid-text range is left to Phase 0, T7.
   - A reversed range is not normalised (`TextLine.java:575-585`): 5..2 would duplicate text. So the
     docs say `selectionStart` < `selectionEnd`, not ≠.
3. **Wrong or misleading text, identical in all three catalogs.** They are the blueprint
   `plugins/mcp-tools/resources/jetbrains/mps/agents/mcp/skills/mps-tests/`,
   `.agents/skills/mps-tests/` and `.claude/skills/mps-tests/`; `diff -r` is clean today.
   - `references/editor-test-case.md:22`: the `before` cell of the `selectionStart`/`selectionEnd` row.
   - `references/editor-test-case.md:27`: the rule says "in both sections", "The two sections fail
     independently", and "In `before`, with only `isLastPosition`… removes the empty selection…".
   - `references/common-failures.md:9`: the parenthetical about "the `before` row".
     `common-failures.md:14`: the whole "typed text appears at the start of the cell" row.
   - `SKILL.md:71`: the routing line advertises "text typed at offset 0". `SKILL.md:67`: "a caret
     needs `selectionStart`/`selectionEnd` too" does not name a section, and is true for `result` only.
   - Study bookkeeping: `study/scenarios.md:124-126` ("The `before` selection must match the caret
     too"), `study/docs-defects.md:50` (the D93 row) and its header, and `study/docs-defects-archive.md:87`
     (the D71 row, which ends "open as **D93**").
   - The example at `editor-test-case.md:29-37` is issue test T1, which passes. Keep it.
   - A grep of all skills, study, docs and tests found no other copy of the claim.
     `HOTSPOT_REPORT_round16.md:151,188` is a historical report. Leave it.

## Plan

### Phase 0 — close the unverified cases live (scratch fixture, deleted afterwards) — DONE 2026-09-30

**Result: T7, T8 and T9 all pass** (tree and `result` annotation), in running MPS 2026.1 EAP
261.25134, in-process JUnit run configurations, scratch solution `d93.probe` outside the checkout.
Two negative controls proved the checks are live:
- T9 with the expected name changed to `Pancakes` failed with `Different property: name = Pakes,
  expected: Pancakes` (`BaseEditorTestBody.java:160`), so Delete really removed 2..5.
- T8 with the expected selection changed to 5/5 failed with `expected:<5> but was:<2>`
  (`CellReference.java:61`), so Backspace really left the caret at `selectionStart`.

The scratch module was deleted with its files, and `.mps/modules.xml` is back to `HEAD`. The three
`d93probe_T7/T8/T9` run configurations stay registered in the running MPS until it is restarted
(`workspace.xml` is gitignored). Phase 1 therefore states the Backspace/Delete and result-offset claims without conditions.

Original design:
Reuse the issue's repro setup:
- a scratch solution with the `tests` facet, **in a normal project subdirectory** (not near `/`, see MPS-40228);
- an `@tests` model using `jetbrains.mps.lang.test` + `jetbrains.mps.baseLanguage`;
- ClassConcept `Pancakes`, cell `property_name`.

Make it and run it in-process through one JUnit run configuration. Backspace/Delete must use
`invoke action` (`jetbrains.mps.ide.editor.actions`), not `press keys`. `PressKeyStatement` sends a
bare KEY_PRESSED (`KeyEventsDispatcher.java:88-116`), and `EditorComponent.getActionType:1811-1862`
maps neither BACK_SPACE nor DELETE. The real path is `Backspace_Action` →
`EditorCellLabelSelection.performDeleteAction:189-199`, which about 300 generated MPS tests use. Every test
needs a `result` node; without one `BaseEditorTestBody` checks nothing (`:119-122, 150-164`).

| Test | `before` annotation | `code` | `result` name | `result` annotation (selection) |
|---|---|---|---|---|
| T7 | `caretPosition=8`, selection 2..5 | `type "X"` | `PaXkes` | 3/3 |
| T8 | `caretPosition=8`, selection 2..5 | `invoke action Backspace` | `Pakes` | 2/2 |
| T9 | `caretPosition=8`, selection 2..5 | `invoke action Delete` | `Pakes` | 2/2 |

T6 is dropped. The empty-selection reset happens on activation, whatever the action, and issue test
T2 already proved it live. The `result` annotations also check the "N = offset after the action"
rule for a replaced selection (`commit:1327`, `deleteSelection:744-756`).

Branch on the outcome:
- T7 fails → document only what `EditHeaderCell` shows: typing replaces a whole-text selection.
- T8 or T9 fails → leave that action out of the docs.
- A tree pass with an annotation failure → keep the tree claim and drop the "N after replacing" sentence.
- If Phase 0 is skipped, say nothing about Backspace/Delete and nothing about the result offset.

Cleanup:
- delete the scratch module;
- revert its `.mps/modules.xml` entry, any `.msd` churn, and any `model_dependency`-leaked module dependency;
- check `git status` for a clean tree apart from the intended edits.

Nothing from Phase 0 is committed.

### Phase 1 — edit the blueprint (`plugins/mcp-tools/resources/.../skills/mps-tests/`)
Phase 0 confirmed every claim below.
1. `references/editor-test-case.md:22`: new `before` cell:
   > applied **after** the caret, default 0. Selecting the cell keeps a non-empty selection
   > (`selectionStart` < `selectionEnd`) and drops an empty one (start = end, the default 0..0
   > included), so for a plain caret the caret decides where typing lands; typed text replaces a
   > kept selection
2. `references/editor-test-case.md:27`: replace the paragraph with:
   > **Rule: in `result`, a caret at offset N is three properties.** Set `isLastPosition: true` (or
   > `caretPosition: N`) and `selectionStart: N` and `selectionEnd: N`. With only `isLastPosition`
   > the check compares the default 0 with the real offset (`CellReference.java:61`). N is the offset
   > after the action. For a caret at the end of the text, that is the full label length, not the
   > length of the typed text. After typing over a selection, N is
   > `selectionStart` + the typed length. After typing, the selection collapses onto the caret, so
   > start and end are equal. A caret at 0 is the only case where the defaults happen to be right.
   > **In `before`, the caret alone places it.** An empty selection, the 0..0 default included, is
   > dropped when the cell is selected, so `type "X"` lands at the caret. Only a non-empty selection
   > (`selectionStart` < `selectionEnd`) is kept. Typing then replaces that range, wherever the caret
   > is. `invoke action Backspace` / `Delete` delete it, leaving the caret at `selectionStart`. Writing all three properties
   > in `before` is harmless. The AddCellAnnotation intention (used in the MPS editor) writes all three
   > from the live caret, and blueprints should match it.
3. `references/common-failures.md:9`: "(the `before` row below is a tree diff, …)" →
   "(the `before`-selection row below is a tree diff, …)".
4. `references/common-failures.md:14`: replace the row with:
   > | tree diff: the typed text replaced part or all of the label instead of being inserted at the
   > caret, or Backspace / Delete removed a range instead of one character | in
   > `before`, `selectionStart` < `selectionEnd`: a non-empty selection is kept and the action applies
   > to it | for a plain caret, set `selectionStart` = `selectionEnd` (the caret offset, or leave both 0) |
5. `SKILL.md:67`: "a caret needs …" → "a `result` caret needs `selectionStart`/`selectionEnd` too".
   `SKILL.md:71`: "text typed at offset 0" → "typed text replacing a non-empty `before` selection".
6. Sweep for leftovers across all three catalogs and `plugins/mcp-tools/study/*.md`:
   `grep -rn "offset 0\|0\.\.0\|both sections\|start of the cell\|inserts at\|empty selection\|not at the caret"`.
   The only hits should be the intended ones: the new `0..0` / "empty selection" wording, the
   historical HOTSPOT report, the archived D71 row, and the new D93 archive row (which quotes the wrong claim).

### Phase 2 — propagate and validate
- Copy the changed `mps-tests` folder over `.agents/skills/mps-tests` and `.claude/skills/mps-tests`
  (per CLAUDE.md; never run the initializer). Then `diff -r` the three trees.
- `python3 plugins/mcp-tools/scripts/validate_skill_catalog.py --self-test plugins/mcp-tools/resources/jetbrains/mps/agents/mcp/skills`.
  Without a catalog path the script exits with `parser.error`.
- Run `SkillCatalogReplicationTest` and `SkillReferenceLayoutTest`
  (`plugins/mcp-tools/test/jetbrains/mps/agents/mcp/tools/unit/`) directly through IDEA. Both are
  plain unit tests, registered in `McpToolsIntegrationTestSuite.java:71-72`.
  - `SkillReferenceLayoutTest` enforces the 12288 B reference budget (`:227`).
  - `editor-test-case.md` is 10557 B today, and the rewrite adds a few hundred bytes. If it ends up
    over budget, shorten the text; do not add an `OVER_BUDGET` entry.

### Phase 3 — study bookkeeping
- `study/docs-defects.md`:
  - remove the D93 row;
  - add D93 to the "moved … on 2026-09-30" list in the header;
  - add "D93 was fixed (docs) and archived on 2026-09-30, re-measure (S7) still outstanding" to the
    narrative sentence, in the style of D71.
- `study/docs-defects-archive.md`:
  - add D93 to the `:3` "Moved out … on 2026-09-30" list and to the `:9` "Fixed / closed" list;
  - repair the stale `:9` parenthetical while there. It reads "D71, D89 and D76 on 2026-09-30" and
    needs D81, D87, D63 and D93 added. Its re-measure list lacks D63, D81 and D93.
  - add a D93 row with:
    - what was wrong;
    - the activation chain and the `type` dispatch chain from Findings 1–2;
    - the evidence: T2/T5, `EditHeaderCell`, and the Phase 0 T7–T9 results;
    - what changed;
    - the re-measure signature: no tree diff caused by a `before` selection, and no source hunt for
      the caret mechanism.
  - end the D71 row (`:87`) with "fixed by D93".
- `study/scenarios.md:124-126`: replace "The `before` selection must match the caret too" with
  "In `before` the caret alone places it unless the selection is non-empty (D93)".

### Phase 4 — commit and YouTrack
- Stay on `261/vaclav/MCP2`. D71 landed there, and this continues it (`.agents/git.md` continuation rule).
- One commit, subject `MPS-40229 - D93 mps-tests before annotation: the caret decides unless the
  selection is non-empty`, then a body and the `Co-Authored-By` trailer.
- On MPS-40229, comment with the commit hash, the Phase 0 results, and the `EditHeaderCell`
  evidence. Move it to Fixed only after the user confirms.

## Validation
- Phase 0 T7–T9 results are recorded in the D93 archive row, or the docs are narrowed as Phase 0 says.
- The three catalogs are identical.
- `validate_skill_catalog.py --self-test <catalog>` is clean.
- `SkillCatalogReplicationTest` and `SkillReferenceLayoutTest` are green.
- The Phase 1 step 6 sweep shows only intended hits.
- The re-measure is deferred to the next S7 study round.

## Risks / open points
- The table-cell editor in `EditHeaderCell` could in principle handle typing specially. T7 on a plain
  property cell removes that doubt.
- Phase 0 mutates the MPS project, so clean up carefully. See the memory notes on `.msd` churn and
  `model_dependency` leaks.
