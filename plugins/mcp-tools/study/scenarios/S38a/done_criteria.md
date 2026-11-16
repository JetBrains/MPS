# S38a done criteria — Compact view: editor hints declared, switched from cells, from the per-editor switch and from code
Status: drafted 2026-11-09 (rev. 3, after scenario-review-1/-2 and O1–O3); walked 2026-11-09 (`walk-2.md`); rehearsal `S38a-opus-1` (opus, 154 calls, letter-FAIL on the Green count only) → rev. 4 (D1–D6: ≥ 5 new tests, `null` or `new String[0]`, second book or flag cleared in code, Staging property print, `workspace.xml` as the primary leak check, Inspector init failure as a red reason); the rehearsal's doc findings (fixture names in the hint docs, `getInspector()` on the EDT, the reflective-hint wording) were fixed in the catalog the same day; sonnet rehearsal `S38a-sonnet-1` (127 calls, intent met) → rev. 5 (the intention helper accepted, hint id case, appending counts, Deprecated scope); frozen 2026-11-09; prompt frozen 2026-11-09. Shared definitions: ../coverage/editor-shared-criteria.md.
Fixture: alerts2 (pins in ../../fixtures/inputs/s31/FIXTURE.md). The worker changes the base language (editor, structure), adds an intentions model and the test solution `mcp.study.alerts.compact.tests`.
Topics forced: ConceptEditorContextHints with showInUI true and false; a hinted ConceptEditorDeclaration with an inspectedCellModel; a fixed ExplicitHintsSpecification on an inspected cell reaching a nested reference; QueryHintsSpecification driven by a property; setInitialEditorHints in tests (no dialog); explicit node hints from an intention through the Updater, toggled without clearExplicitHints; test-first. Knowledge only (O2): the project-wide Settings page.
1. Base changed only where the cell says: print_node of every pinned base root equals the pins except AlertBook_Editor
   (gains an inspected layout and an `addHints` child on the members list; main line unchanged) and structure AlertBook
   (gains boolean `compact`); the six shipped tests untouched (new tests live in `mcp.study.alerts.compact.tests`). New
   editor roots, and no others: ConceptEditorContextHints (one container or two, record) with `compact` (any letter case, record; presentation "Compact", showInUI true) and a second hint with showInUI false (printed absent); a hinted Alert editor; a hinted
   ThresholdRef editor. Closes: the compact look via rendering conditions or editor state in the default editors (pins).
2. Compact editor and per-editor switch: the Alert editor with contextHints {compact} shows one line (the AlertHeader
   component preferred; an equivalent line accepted, record) and has an inspectedCellModel with the condition and the
   channel list. Test: `setInitialEditorHints({"mcp.study.alerts.editor.<container>.compact"})` (or `concept editor
   hint/compact/`) + rebuild → the alert's labels are `alert HighCpu [ high ]` (with the test's own before) with no
   `when`, the channel line unchanged, and a threshold's line unchanged (`threshold cpuLimit = 90`); a compact Threshold
   editor fails item 2; typing a new name (replacing or appending, record) → result tree and caret (the name cell id is shared with the default header,
   so labels, not the caret id, prove the editor); `setInitialEditorHints(null)` or `new String[0]` → today's text
   (record which). Closes: a one-state push test; `invoke action -> PushEditorHints` (a dialog: fails the cell).
3. Detailed reference = a fixed hint in the Inspector: the compact inspected layout's condition cell carries an
   ExplicitHintsSpecification with the second hint; a ThresholdRef editor hinted with it shows `(= <value>)` through a
   read-only accessor; the default ThresholdRef_Editor unchanged. Tests: in the Inspector of a compact alert
   (isInInspector caret or SwitchToInspector) the labels contain `cpuLimit`, `(=` and `90`, and typing in the condition
   changes the result tree; under compact (pushed) `threshold hi = cpuLimit + 5` renders with no `(=` (in scope:
   ThresholdRef's scope is the book's thresholds). Closes: a {compact}-hinted ThresholdRef (second test); an inline
   reference cell or an ancestor condition instead of a hint (pins; the hinted editor must exist); "Details" offered as
   a view (showInUI).
4. Book flag = computed hints: a QueryHintsSpecification on AlertBook_Editor's members list returning the compact id
   when `node.compact` (a fixed ExplicitHintsSpecification fails: the normal-book half of the test); `compact:
   {compact}` in the book's inspected layout; Staging.compact true (sandbox print; Staging has no alerts, so the
   property print is the check). Test: an alert of a book whose flag is set has no condition cell in the main editor
   (`findNodeCell == null` or labels) and an alert of a normal book has one (a second book, or the flag cleared in
   `code`; record which).
5. Explicit node hints from an intention: an IntentionDeclaration for AlertBook in a new intentions model of
   `mcp.study.alerts`; execute toggles with add/removeExplicitEditorHintsForNode on the editor's Updater and refreshes
   (`update()` or `rebuildEditorContent()`); no clearExplicitHints (print); the description function reads the node's
   explicit hints (print); no model write. Observer: `mps_mcp_list_node_intentions` offers "Compact here" on Ops' name
   and on Ops' alert `HighCpu` (read-only; an intention that only the book node offers fails). Tests: `invoke intention` with the caret on the book's name, or the `IntentionsManager` helper of `mps-tests` on the book or a node inside it (record which), → its alerts render compact while result equals before (tree compare); a second
   invocation → today's labels; an explicit compact hint put on one alert in `code` before the two invocations still
   renders that alert compact after them (a clearExplicitHints toggle drops it). Closes: a model flag (the tree differs;
   Clean); clearExplicitHints (last test and print).
6. Clean (language models, sandbox, both test models) / Green (≥ 5 new, one per group of prompt item 6, the normal-book
   case may be the second half of the flagged-book test; + 6 shipped; the observer reruns the new configuration and then
   the shipped one in the same MPS: a leaked project-wide hint reddens T2/T5) / Deprecated (concepts and features in the model; a deprecated Java API call in a test helper is recorded, not failed) / Shipped; no test names
   PushEditorHints or HintsDialog; no project-wide hint left enabled (primary: no `ConceptEditorHintSettings` state in
   the saved `.mps/workspace.xml` after the project is closed; backup: the rerun).

Pass = 1–6. Signals: ET_test_runs ≥ 2 with a red run before the first editor write (= the first hinted editor, override,
addHints or removeHints; the hint container and an intention declaration with an empty execute may precede it; a `No
cell with id …` init failure of an Inspector test counts as the right reason: the missing Inspector cell is the missing
behaviour), M_makes ≥ 2, X_outside_project 0 (deny `/Users/vaclav/work/**` to workers), ET_ide_service_writes 0. Size
140–180 (H1-opus-2 took 105 turns without the details hint and the intention; H3-opus-2 spent ≈ 45 on an intention and
its tests); drop item 5, then item 3. Isolation: alerts2 ids (restart before and after; never next to another alerts2*
copy, nor to the live H1-opus-2 scratch).

Walked 2026-11-09 (`walk-2.md`): 3 — a threshold reference two levels down the Inspector's condition gets the second
hint (not walked: the `90` value accessor; the rehearsal covered it, C3/C4 of S38a-opus-1); 5 — a root's explicit hint
applies; an explicit hint put on another alert in `code` survives both invocations with the model unchanged
(`clearExplicitHints` dropping it is settled from source); `list_node_intentions` on `HighCpu` tells child-node
availability apart (`[]` without it); label joins come from `renderText()`.
