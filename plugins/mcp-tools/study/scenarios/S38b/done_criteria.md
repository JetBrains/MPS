# S38b done criteria — Review view from an extension: super-concept decorator, hinted override, opt-out with removeHints, two-hint editors
Status: drafted 2026-11-09 (rev. 3, after scenario-review-1/-2 and the observer decisions O1–O3); walked 2026-11-09 (`walk-2.md`; criteria 4, 6, 7 corrected from it); rehearsal `S38b-opus-1` (opus, 143 calls, PASS 1–8) → rev. 4 (marker in a component equivalent; criterion 7 labels follow the test alert's channels); sonnet rehearsal `S38b-sonnet-1` (sonnet medium, 121 calls, PASS 1–8) → rev. 5 (appending counts, size band); frozen 2026-11-09; prompt frozen 2026-11-09. Shared definitions: ../coverage/editor-shared-criteria.md.
Fixture: alerts2-compact (pins in ../../fixtures/inputs/s38b/FIXTURE.md: alerts2 plus the compact view of the H1-opus-2 run). The worker adds a language and a test solution; the base is read-only except the sandbox model's used languages.
Topics forced: hinted editors for base concepts from an extending language (the default-editor rule as a guard); the IDE offer rule (the sandbox uses the extension); a hinted editor on the abstract super-concept Member beating every member's default editor; CellModel_NextEditor decoration; the next-editor landing rule and removeHints on a sub-concept opt-out; a hinted EditorComponentDeclaration override with conceptDeclaration; cell-tree inheritance (nested parentheses); two-hint editors (AND, most hints wins, the cross-concept and the same-concept tie) with a hint referenced from the base editor model through an import; a next editor in an inspected layout; pushed hints in tests.
1. Fixture untouched: print_node of every pinned root (alerts2 pins plus the s38b compact roots and the ten tests)
   equals the pins; the only base write is the sandbox model's used languages, which must include
   `mcp.study.alerts.review` (else the IDE never offers Review); the used languages and imports of
   `mcp.study.alerts.tests@tests` are unchanged (adding the extension fails: the shipped tests must keep running without
   it). Closes: redrawing base editors; a sandbox never offered the view (H2's trap).
2. Extension: `mcp.study.alerts.review` extends `mcp.study.alerts`; its editor model declares `review` (presentation
   "Review", showInUI true) and imports `mcp.study.alerts.editor`; no hint-less editor for a base concept (the checker
   error "Default editor for the concept cannot be defined…" fails Clean).
3. Marker on the super-concept: one ConceptEditorDeclaration for Member with contextHints {review} whose layout is the `>>` constant (inline, or in a hint-less component bound to Member; record) plus a CellModel_NextEditor; no review-only editor for Alert, Channel, Note or EmptyLine; nothing in it
   names Threshold (a rendering condition on the marker fails). Test (review pushed): the labels of a channel, a note,
   an empty line and an alert each start with `>>`. Closes: per-concept copies ("member kinds added later"); a
   conditional marker.
4. Header override: an EditorComponentDeclaration in the extension with overridenEditorComponent → the base AlertHeader
   (581195628549735302), conceptDeclaration Alert and contextHints {review}, rendering `[ <sev> ] alert <name>` and `(
   muted )` (labels `(`, `muted`, `)`, rendered `( muted )`; one constant `(muted)` is equivalent; record) under a
   rendering condition. Test: both header texts; typing a new name under review (replacing or appending, record) → result tree and caret (the name cell
   id is shared with the base header; labels prove the override). Closes: a copied hinted Alert editor (3); a changed
   base component (pins).
5. Parentheses inherited down the tree: a hinted BinaryExpr editor {review} with `(` … `)` around a CellModel_NextEditor
   or around left/alias/right; no ancestor check naming Threshold anywhere in the extension. Test: a condition with
   nested binary expressions is parenthesised at every binary node. Closes: top-level-only parentheses; H2's
   `ancestor<Threshold>` condition.
6. Opt-out, removeHints and the landing rule: Threshold editors in the extension with contextHints {review} and
   {compact, review} (the second avoids the same-concept tie with the fixture's Threshold_compact_Editor: equal hint
   counts are picked by class name, `mcp.study.alerts.editor` first, with a logged error), each a CellModel_NextEditor
   carrying removeHints {review}, with no copied cells. Tests: `threshold lim = 80 + 5` renders unchanged under Review;
   `lim = 80 + 5` with no `>>` and no parentheses under both views. Closes: no removeHints (Review alone: `>>` and
   parentheses; both: parentheses); a copied layout (rule text); a review-only opt-out alone (ties with
   Threshold_compact under both views: `lim = ( 80 + 5 )`, a SEVERE `Additional editor class …Threshold_…Editor is
   applicable to the current context (…compact, …review). Skipping this editor, using class
   mcp.study.alerts.editor.Threshold_compact_Editor.` in idea.log, and every editor test rendering a threshold under
   both views fails with `UncleanTestExecutionException`, whatever it asserts).
7. Two-hint alert editor: an Alert editor in the extension with contextHints {compact, review} (compact referenced
   through the imported base editor model): `>>`, then the header (the base AlertHeader component, or a
   CellModel_NextEditor, which lands on the compact alert editor; record which), then `notify` and the channel list,
   with no copied header cells; inspectedCellModel = CellModel_NextEditor (a copy fails). Tests, with the test's own
   before: both pushed → one line whose labels are `>>`, `[`, `high`, `]`, `alert`, `HighCpu`, `notify` and the test alert's channels (for two channels `pager`, `,`, `mail`), no `when`; `renderText()` gives `… notify pager, mail` for those two, and `[high]` instead of `[ high ]` when the override
   keeps the base's punctuation styles (record which); and the Inspector shows the condition in parentheses; compact
   alone → no `>>` and no `notify`. Closes: no two-hint editor (under both views the compact editor wins the
   cross-concept tie: no `notify`); a copied compact inspector.
8. Clean (extension models, sandbox, both test models) / Green (≥ 4 new + 10 shipped; the observer reruns the new
   configuration and then the shipped one in the same MPS: a leaked project-wide hint reddens them) / Deprecated /
   Shipped; no test names PushEditorHints or HintsDialog.

Pass = 1–8. Signals: ET_test_runs ≥ 2 with a red run before the first editor write (= the first hinted editor, override,
addHints or removeHints; the hint container may precede it), M_makes ≥ 2, X_outside_project 0, ET_ide_service_writes 0,
base-model writes 0 except the sandbox's used languages. Size 115–160 (H2-opus-2 took 112 turns; plus the marker, two
opt-outs and the AND editor); drop the Compact-alone assertion, then item 4's Inspector sentence; never items 2–3.
Isolation: alerts2 ids (restart before and after; never next to another alerts2* copy, nor to the live H1-opus-2 scratch
the fixture was taken from).

Walked 2026-11-09 (`walk-2.md`): 7 — pushed hints reach the Inspector after `rebuildEditorContent()` and after
`update()`; 6 — the tie and its SEVERE line as above; 3+6 — landing without removeHints gives `>> threshold lim = ( 80 +
5 )` under Review (the next editor lands on the `Member` review editor, an exact match); label joins as in 4 and 7.
