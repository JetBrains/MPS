# Coverage matrix — editor cells S30–S35 (revision 3, reviewed 2026-11-01)

Revision 4 (2026-11-01, after rehearsal 1 of S30 and S32 and a pre-rehearsal audit of S31, S33–S35): an F idiom is
forced by the prompt's visible behaviour; where another correct mechanism meets the prompt, the row is F\*.

Legend: **F** = forced and gated by a done criterion; **F\*** = behaviour gated, mechanism may vary
(recorded); **r** = recorded only; **X** = in the fixture (the worker reads/keeps/edits it); **GP** =
gap probe: forced, but undocumented in the catalog today (the observer decides whether to document
it before freezing; until then the row scores a doc gap); blank = not touched. Existing cells S1, S2
and S17 for context. Shared criteria (Clean, Green, Deprecated, Same-root, Shipped, completion and
prefix tests): [`editor-shared-criteria.md`](editor-shared-criteria.md).

| Topic (concept / role / behaviour) | S1 | S2 | S17 | S30 survey | S31 alerts | S32 recipes | S33 oncall | S34 traps | S35 Kaja |
|---|---|---|---|---|---|---|---|---|---|
| `CellModel_Constant` / `_Property` / `_Collection` + `CellLayout_Indent`, `_RefNode`, `_RefNodeList`, `_RefCell` + `InlineEditorComponent` | F | F | X | F | X | X | F | X | X |
| `CellModel_ModelAccess` (getter/setter/validator); `CellModel_ReadOnlyModelAccessor` | | | | F accessor | F* GP access | | | | |
| `EditorComponentDeclaration` + `CellModel_Component`; override (`overridenEditorComponent`) | | | | F header | F interface-bound | r | X; F GP override | X | X |
| Concept-alias cell (lang.core `alias`) | | | | F | X | | F | | X |
| **Ctrl+Space on a leaf cell needs a `transformationMenu` on that cell (substitute info)** | | | | F (3b) | | F (`)`) | X (fixture) → F (item 3) | X→F (E) | X (item 1), F (item 2) |
| `inspectedCellModel` + `SwitchToInspector` test; `StyleSheet` / `StyleClass` applied | | | | F sheet | F reuse | F inspector | F reuse | | X |
| Query-driven styling (GP); `PunctuationLeft/Right`; `MatchingLabelStyleClassItem` (GP) | | | | | F*; F; F | | | | F* query; X |
| `renderingCondition`; `emptyCellModel` + `nullText` + `EditableStyleClassItem`; `separatorText` | | F | | F; F; F GP | X | X (sep. already in the fixture; dropped, rehearsal 1) | F | X | |
| `EditorCellId` planned for tests (B7); `select[in:, cell:]` after mutation | | | | F | F | F | F | F | F |
| Default `TransformationMenu`; named `TransformationMenu` on a cell | | | | F default | F named | F both | X | X (planted named) | X default (extended); F named |
| Named cell menu keeps the node's items (`include menu` → `_Default`, or ≡ `superconcepts menu` where no explicit default exists) | | | | | | F (`)`, rev 4) | | X→F (planted) | F* |
| `TransformationMenuPart_Super` per location (A3); completion on an existing node (M1) | | | | r (Super optional; rehearsal 1) | F M1 | F | F M1 | X→F (planted) | F M1 |
| Side transform RIGHT / LEFT; items in Ctrl+Space (`location`, M2) | | | | F RIGHT | | F RIGHT, M2 | | X RIGHT | F LEFT, M2 |
| Strict match vs prefix (B2; tests: prefix via `Complete`); `TransformationMenuPart_WrapSubstituteMenu` | | | | F (prefix via `Complete`); F wrap | F | F (prefix via `Complete`) | | X→F | F; X |
| `TransformationMenuPart_IncludeSubstituteMenu` → named `SubstituteMenu`; `SubstituteMenuPart_IncludeMenu` | | | | | | | r | | r; r (0 of 2 rehearsals) |
| `TransformationMenuPart_Parameterized`; `_Group` / `canExecute`; context assistant (location + cell + test API) | | | | | | F; F* | | | X; F (cell X) |
| `TransformationMenuContribution` / `SubstituteMenu_Contribution`; used-language rule | | | | | | | F; r GP | | X (KajaAndOr) |
| Default `SubstituteMenu` + `_AddConcept` / `_Subconcepts` | | | | F* | | | X | X→F (planted) | X |
| `SubstituteMenuPart_Action` + `_MatchingText` / `_CanSubstitute` (`strictly`) / `_Selection` / `_DescriptionText`; `_ReferenceScope` | | | | F fixed text | F* `pattern`, `!strictly`; F | | | | X scope |
| Empty default `SubstituteMenu` hides a concept | | | | | | | | | X (`CommandList`); S26 |
| `NodeFactory` with `sampleNode`; `index` on Enter, `-1` from completion | | | | F same hierarchy; F* index + `-1` case (Enter and completion; an Enter action map fails, sonnet rehearsal 1; a substitute Action label recorded) | | | r cross-concept (hand copy passes; rehearsal 1) | | X |
| `PasteWrapper`; `PastePostProcessor` (needs the target context); `CopyPreProcessor` r | | | | F wrapper | F* post | | | X→F (planted on an abstract concept) | |
| Action map DELETE/BACKSPACE; two-step `approveDelete[cell:]`; `canExecute` fall-through; `select_all_action_id` | | | | | F select-all (R6) | | | X→F (early return; fall-through planted) | X (`RemoveNot`) |
| `CellKeyMapDeclaration`: free chord, exact `modifiers`, cell attachment, `isApplicableFunction`, `everyModel`, `caretPolicy` | | | | | F* | F* policy | F* everyModel | X→F (attached to the wrong cell, hidden) | |
| Legacy `CellMenuPart_PropertyPostfixHints` (GP); implicit-parameter concepts (B8); editing corpus menus | | | | F B8 | F*; F | F B8 | F B8 | F B8 | F B8; F corpus |
| Tests: typing + `result` caret; `Complete` items before typing; `press ENTER` (`change`); `editor component` reads | | | F | F | F | F | F | F | F |
| Tests: `Insert`; `$Copy`/`$Paste` same root; `$Undo` with assertion; `is action applicable` (S17 only) | | | F | F; F | F paste | X | F Undo | | |
| Tests: `runWithTwoStepDeletion` true / false; `nodeRangeSelectionStart/End` | | | F false | | F range (R6) | | | F both | |
| Tests: red run before the fix; shipped tests kept green; Same-root paste; Deprecated anywhere → FAIL | | | | F | F shipped | F shipped | F shipped | F red | F |

## Out of scope or recorded only, with the reason

- `CellModel_Alternation` (indistinguishable from two conditions, undocumented); `CopyPreProcessor`
  (every visible effect is a post-processor's too; recorded); `CellLayout_Horizontal/_Vertical/_Flow/
  _Table/_VerticalGrid/_Superscript`, braces, folding, editor hints (not observable headless);
  `CellModel_JComponent/_Image/_Error/_Block/_Indent/_NextEditor/_Custom/_TransactionalProperty/_URL`
  (niche); `CellModel_AttributedNodeCell` (needs an attributes cell); `TransformationLocation_ContextActionsTool`;
  `TransformationMenuPart_SubMenu/_PropertyMenu/_ReferenceMenu`, menu adapters, `SubstituteMenuPart_Group/
  _Concepts/_Parameterized/_Wrapper`, `_DefaultWithFunction` (variants; `_SubMenu`/`_Wrapper` X in Kaja);
  `CompletionStyling`; other legacy parts; reference-presentation cells; `left_/right_transform_action_id`,
  `localize_action_id`, `CellActionMapImport`, `FocusPolicy`, `Padding*`, `showInPopup`, `invoke intention`: recorded.
- The production path "type a prefix, the menu pops up, Enter" (B2): completion never auto-pops in tests,
  so the cells test a prefix through `Complete`.

## Fixtures, isolation, sizes

| Cell | Fixture | Build |
|---|---|---|
| S30 | `empty-project` | synthesized |
| S31, S33 | `alerts2` | recipe in [`../../fixtures/inputs/s31/FIXTURE.md`](../../fixtures/inputs/s31/FIXTURE.md) (base `alerts`, same file) |
| S34 | `alerts2-broken` | recipe in [`../../fixtures/inputs/s34/FIXTURE.md`](../../fixtures/inputs/s34/FIXTURE.md) |
| S32 | `recipes-editor` | recipe in [`../../fixtures/inputs/s32/FIXTURE.md`](../../fixtures/inputs/s32/FIXTURE.md) |
| S35 | `kaja-editor` | recipe in [`../../fixtures/inputs/s35/FIXTURE.md`](../../fixtures/inputs/s35/FIXTURE.md) |

Every recipe runs through MPS MCP only, is logged to `fixtures/inputs/s3x/FIXTURE.log`, pins ids in
`FIXTURE.md`, excludes the doc surface and `.mps/workspace.xml`, includes `classes_gen`, records the
sha256 in `../../fixtures/pins.md`. Isolation: `alerts2*` share the `mcp.study.alerts` ids (restart
between S31/S33/S34, one copy open); `recipes-editor` joins `recipes*`; `kaja-editor` shares the Kaja ids
of `kaja-dataflow*` (restart before and after S35). Sizes (opus min, E1 = 21): S30 45–60, S31 40–55,
S32 30–40, S33 35–45, S34 30–40, S35 30–45.

Chords: `Ctrl+Alt+Shift+K/G/Y` (S31/S33/S34), `modifiers` exactly `ctrl+alt+shift`. Rechecked 2026-11-01
over `lib/app.jar!keymaps/$default.xml`, every action XML in `lib/*.jar` and `plugins/*/lib/*.jar`
(`MPSEditorActions.xml` included; 1929 keystrokes in 494 jars), the 33 MPS `*KeymapChanges*.java` and the
generated cell keymaps. Bound and therefore not used: J (`SelectAllOccurrences`, platform `$default`),
M (`GoToModel_Action`, MPS `Default_KeymapChanges.java`), D (`Console.TableResult.CloneColumn`, `$default`,
spelled `ctrl alt shift d` in `intellij.grid.impl.xml` and `MPSPlugin.xml`). Free: A, G, K, O, P, Q, X, Y, Z
(K appears only in the `macOS System Shortcuts` reference keymap). The walk presses each chord once live.

## Analysis columns and open risks (settled: R4/R5 inspector and assistant, R15 re-include ≡ Super)

- Planned `families.py` additions — **not yet implemented in `scripts/families.py`**: rehearsals count them by hand
  (observer-counted); implementing them is a follow-up, not a gate. `ED_deprecated_menu_writes`, `ED_menu_prints_before_write`, `ED_cell_id_writes`,
  `ED_default_reinclude_writes`, `ET_two_step_true_writes`, `ET_chooser_asserts`, `ET_assistant_asserts`,
  `ET_cross_model_paste` (must be 0). Extractors must count across the whole `@tests` model, helper class roots
  included (S35-opus-1 kept every assert in a helper root). Existing columns: `ET_*`, `D_skill_reads`, `X_outside_project`, `G_errors`.
- **R2** UI effects: structural gates + text tests. **R3** `ModelAccess` commits per keystroke (walk).
  **R6** node range never driven through MCP. **R7** `everyModel` node vs ancestor (both accepted); chords
  K/G/Y unbound in every source scanned above, one live press each. **R8** contributions need `oncall` as a
  used language; implicit-menu contribution unverified. **R9** Enter passes the 0-based index (GP).
  **R11** prefix vacuity. **R12** no transform at the end of a string property; `LAST_POSITION` needs the
  last leaf. **R13** built-in behaviours (separator insert, element delete, Ctrl+D) gated nowhere.
  **R16** S31 is the fullest cell. **R17** a deprecated `presentation` is a feature: confirm the checker's
  wording. **R18** a post-processor stops recursion into its subtree (document in `paste-and-copy.md`).
- **GP rows to document before freezing** (else they score doc gaps): `CellModel_ModelAccess`,
  `MatchingLabelStyleClassItem`, `separatorText`, query-driven styling, `overridenEditorComponent`,
  postfix hints, the used-language rule for contributions, Enter in the factory trigger table.

## Observer walk before freezing

S30 3a/3b/3d; S31 items 1, 4 (live chord), 5, 7; S32 items 2–4; S33 item 3 + `$Undo`, item 4 live chord and
`everyModel` from a channel; S34 each defect reddens exactly its test, D-E checker-silent, G-on's approved
cell differs between D-F and the fix; S35 items 1–3 and the alias-cell LEFT hint.
