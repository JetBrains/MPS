# Editor hints: ad-hoc probe, skill addition, new cells (2026-11-09)

Scope: alternative editors of one concept selected by editor hints — declaring hints, hinted concept editors and
component overrides, editors contributed by an extending language, which editor a node gets, hints inherited down
the cell tree, the Inspector, decorating with `next applicable editor`, switching hints on from cells, from the IDE
and from code, and the `EditorTestCase`s that prove them. Not a numbered round: the exercises were ad hoc and are not
frozen cells. Evidence: `~/MPSProjects/mcp-study/adhoc-hints/` (prompts `scenarios/H1..H3`, `notes/` with the plan,
analyses, walks and every review, transcripts in `runs/` and `runs-rehearsal/`).

## Method

Fixture `alerts2` (pinned). Three exercises, test-first with `EditorTestCase`s: H1 a compact view in the language
itself (hint container, hinted editors with an Inspector layout, a book flag driving computed hints, the per-editor
switch in tests), H2 a review view from an extending language (hinted component override, an abstract-concept editor,
a read-only accessor, the IDE offer rule), H3 highlighting from an intention (explicit node hints, a `next applicable
editor` decorator, hints reaching the decorated node's children). Opus workers at `high`, headless (`run_worker.sh`
with `STUDY`/`RUNS` pointed at the ad-hoc folder and a catalog installed by script), first on the frozen catalog (run 1),
then on the corrected one (run 2). Every run was analysed by an opus analyst; the plan, every doc pass and the scenario
proposals were reviewed by independent opus reviewers until "SETTLED" (`plan-review-1..2`, `doc-review-1..5`,
`scenario-review-1..5`); two live walks verified every blueprint and the cells' open questions (`walk-1`, `walk-2`).

## Results

| Exercise | Run 1 calls / MPS-source reads / min / $ | Run 2 calls / source reads / min / $ |
|---|---|---|
| H1 | 110 / 9 / 10.4 / 5.40 | 100 / 0 / 10.1 / 5.46 |
| H2 | 131 / 12 / 11.2 / 6.14 | 108 / 0 / 9.5 / 5.24 |
| H3 | 128 / 25 / 12.7 / 7.02 | 90 / 0 / 8.7 / 4.49 |

All six runs passed. Run 1 passed only by reading the MPS source checkout ("MPS-source reads": each is a doc-gap
signal, since a worker without a checkout has no answer); steps lost on hint topics fell from about 19 / 34 (H2, H3) to
about 5 / 3, all caused by facts fixed right after the run-2 catalog was frozen.

## What was missing in the catalog (all added)

- Nothing on hints at all. New `mps-aspect-editor/references/editor-hints.md` with `editor-hints/declaring.md`
  (container, the run-time hint string, `showInUI`, hinted editor, hinted override with `conceptDeclaration`, checker
  rules, across languages), `choosing.md` (the selection rule, fallback, a super-concept's hinted editor beating
  sub-concept defaults, ties and their SEVERE log line, cell-tree inheritance, the Inspector, `next applicable editor`
  and when to add `removeHints`) and `switching.md` (fixed and computed `addHints`/`removeHints` with a full JSON body,
  the IDE per-editor switch and its used-language scope, the project setting, explicit node hints from an intention
  without `clearExplicitHints`). A critical directive in `mps-aspect-editor/SKILL.md`; pointers from the cell catalog,
  `editor-components.md`, `mps-language-modularity` `extension.md` and `mps-aspect-intentions` `execute-idioms.md`.
- Tests: new `mps-tests` `editor-test-case/hinted-editors.md` (three routes, pushing hints without the dialog, asserting
  the rendering editor, the Inspector under hints). Also fixed for all editor tests: `invoke intention` /
  `is intention applicable` always target the `before` caret node (an `IntentionsManager` helper for another node);
  `before` needs a caret annotation; component cell-id prefixes are a rule (`TaskHeader` → `TH_property_name`); the
  `javax.swing` stub for EDT helpers.
- The doc examples first reused the fixture's names; the S38a rehearsal showed workers copying them, so every example
  moved to a neutral tasks domain before freezing.

## New cells

S38a (compact view in the base language, `alerts2`) and S38b (review view from an extending language, new fixture
`alerts2-compact` = the audited H1-opus-2 project) were proposed by a fable model from these exercises, reviewed five
rounds by an opus reviewer for domain coverage and bypasses (the observer split one 220–320-call cell into two, and kept
the project-wide hint setting as knowledge only, since a test that writes it can redden shipped tests), walked live,
and rehearsed once each with opus on the final catalog (evidence and `*.eval.md` in `runs-rehearsal/`):

| Cell | Calls / MPS-source reads / min / $ | Verdict |
|---|---|---|
| S38a | 154 / 0 / 15.7 / 8.42 | PASS on rev 4 (letter-FAIL on rev 3: 5 new tests, ≥ 6 required; live check: 5/5 then 6/6 shipped, no hint leak) |
| S38b | 143 / 0 / 12.0 / 6.41 | PASS 1–8 (live check: 9/9 then 10/10 shipped, no hint leak, no tie line); criteria → rev 4 |

Sonnet rehearsal (`medium`, catalog with neutral examples): S38a 127 calls / 0 source reads / 10.8 min / $3.41, intent met, PASS on rev 5 (the `IntentionsManager` helper accepted, hint id case, appending to a name, Deprecated scope; about 30 calls went to the worker's own EDT/read-action helper bugs, so `hinted-editors.md` now ships a `textOf` helper); S38b 121 / 0 / 9.1 / $2.63, PASS 1–8 (rev 5: appending, size band 115–160). Both cells frozen 2026-11-09. Remaining risks: the tie and landing failure modes of S38b
criterion 6 are proven by `walk-2.md`, not by a run; `$TMPDIR` is shared across runs.
