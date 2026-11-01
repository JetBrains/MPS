# Editor dynamics: ad-hoc probe, skill correction, new cells (2026-11-01)

Scope: the dynamic side of MPS editors (transformation and substitute menus, side transforms, action maps,
keymaps, two-step deletion, node factories, paste wrappers, copy-paste handlers) and the editor tests that show
it. Not a numbered round: the exercises were ad hoc and are not frozen cells. Evidence is archived under
`~/MPSProjects/mcp-study/adhoc-study/` (prompts `scenarios/E1..E4`, analyses and reviews in `notes/`,
transcripts in `~/MPSProjects/mcp-study/runs-adhoc/`).

## Method

Fixture `alerts` (language `mcp.study.alerts`, readable static editors, no dynamic behaviour; pinned in
`../../fixtures/pins.md`). Four exercises, each 4–6 behaviours to be shown test-first with `EditorTestCase`s:
E1 flag keyword + notify list + paste wrapper, E2 expression side transforms + operand-keeping replacement +
unwrap, E3 empty lines + hidden members + free-name metric + keymap, E4 copy/paste handlers + property
completion + context assistant. Opus workers at `high` effort, headless (`run_worker.sh`), first on the frozen
catalog (run 1), then on the corrected one (run 2). Every run was analysed by an opus analyst from the
transcript; every doc decision and every doc pass was reviewed by an independent opus reviewer until it
returned "SETTLED" (`plan-review-1`, `doc-review-1..4`).

## Results

| Exercise | Run 1 calls / MPS-source reads / min / $ | Run 2 calls / source reads / min / $ |
|---|---|---|
| E1 | 214 / 22 / 21.4 / 13.95 | 161 / 9 / 17.9 / 9.98 |
| E2 | 170 / 26 / 18.9 / 10.98 | 132 / 0 / 13.4 / 7.79 |
| E3 | 175 / 37 / 20.6 / 13.65 | 121 / 2 / 12.4 / 7.63 |
| E4 | 155 / 5 / 22.2 / 10.51 — stalled on a modal (see T2) | 277 / 23 / 29.4 / 19.62 — finished |

All runs except E4 run 1 passed. "MPS-source reads" counts Read/Grep/Bash calls into the MPS checkout outside
the skill catalog: a worker with no source checkout would have had no answer, so each is a doc-gap signal. The
analysts counted more (35–65 per run 1) because they include reads the regex misses.

## What was wrong in the catalog (all fixed)

- Deprecated `TransformationMenu_Default/_Named` (and the substitute counterparts) were the recommended
  concepts; the corpus uses `TransformationMenu`/`SubstituteMenu` + `type` (515/0).
- "Named by convention for automatic discovery" was false for action maps, keymaps and menus.
- Missing: a default menu replaces inherited items per location (`superconcepts menu`); which cells have node
  completion at all (a plain keyword constant has none); side transforms consult the cell's own node; a cell's
  menu overrides the default per location; strict-match typing and `strictly`; the real
  `SubstituteMenuPart_Action` shape; `if (approveDelete[...]) return;`; paste order and exact-concept lookup;
  keymap `modifiers` values (`ctrl+alt`, not `ctrl alt`); IDE shortcuts beat editor keymaps; the editor-test
  facts (no auto-popup in tests, clipboard drain, in-process paste dialog, context-assistant API, suppression).
- Static side: applying a style class, punctuation, concept-alias cell, editor `node` parameter concept, model
  access, alternation vs show-if, separators, matching braces, component override.

## Tool defects

- **T1 (fixed):** `mps_mcp_check_root_node_problems` ignored `ISuppressErrors`, so an `EditorTestCase` result
  with an empty mandatory child never checked clean (E1–E3 lost 12–14 steps each). `AbstractOps.runRootCheckers`
  now filters with `ErrorReportHelper.shouldReportError`; integration test in
  `JetBrainsMPSNodeMcpToolsetExtendedIntegrationTest`. E2 run 2 used `<no right>` results that check clean.
- **T2 (open):** an in-process editor test that pastes a node referencing another model opens
  `AddRequiredImportsDialog`; MPS hangs and every MCP call returns `MODAL_BLOCKED`. No tool lists or dismisses a
  modal. Documented in `mps-tests`; the new cells forbid cross-model paste (`../../scenarios/coverage/editor-shared-criteria.md`).

## New cells

S30–S35 (`../../instructions/scenarios.md`, matrix `../../scenarios/coverage/editor.md`) were proposed by a fable model
from these exercises, reviewed three rounds by an opus reviewer for coverage and feasibility, and differ from
E1–E4 by combining topics across fixtures (greenfield survey DSL, edits of `alerts2`, recipes, an extending
language, planted-defect detection, Kaja corpus menus). Fixtures `alerts2`, `alerts2-broken`, `recipes-editor`,
`kaja-editor` were built by opus builders through MCP, with each shipped test shown to fail when its behaviour is
removed (recipes and pins in `../../fixtures/inputs/s31,s32,s34,s35/FIXTURE.md`, hashes in `../../fixtures/pins.md`).

Rehearsal (opus, `high`, harness install of the built catalog; evidence and per-run `*.eval.md` in
`~/MPSProjects/mcp-study/runs-editor-rehearsal/`; the server call log was off, so no call-level families):

| Cell | Run | Calls / MPS-source reads / min / $ | Verdict |
|---|---|---|---|
| S30 | 1 | 159 / 0 / 17.6 / 10.85 | FAIL 3d only: per-kind actions met the prompt; criterion wanted the wrap → prompt now asks for kinds an extension adds (rev 4) |
| S30 | 2 | 162 / 0 / 16.7 / 11.00 | PASS on rev 4 |
| S31 | 1 | 232 / 8 / 24.3 / 14.79 | PASS |
| S32 | 1 | 118 / 12 / 12.3 / 6.56 | FAIL 2, 3: same pattern (re-include, Parameterized not forced) → rev 4 |
| S32 | 2 | 131 / 2 / 13.1 / 7.16 | PASS on rev 4 |
| S33 | 1 | 172 / 1 / 15.7 / 9.10 | FAIL on criterion 6's letter (start cell over-specified) → rev 5 |
| S33 | 2 | 148 / 1 / 13.2 / 7.21 | PASS on rev 5 |
| S34 | 1 | 131 / 0 / 12.2 / 6.99 | PASS (red run first, six defects fixed, nothing else) |
| S35 | 1 | 130 / 2 / 13.9 / 8.10 | PASS (corpus menus intact) |

Lesson for writing cells: a criterion may only gate an idiom that the prompt forces through observable behaviour
(extensibility, "still offers what it offers today", a list that may grow); otherwise accept every equivalent
implementation and record which. The pre-rehearsal audit applied this to every cell.

A code review of T1 found that lang.test's `has error` container is itself an `ISuppressErrors`; the check now
ignores test-annotation suppressors (as lang.test's `TestsErrorsChecker` does) and keeps problems in stub models
and on detached nodes (as `SuppressErrorsChecker` does). Gate: `McpToolsIntegrationTestSuite` 1447 passed plus the
skills suite re-run green after propagation.

## Test-first decision rule (follow-up)

An analysis of all runs (`~/MPSProjects/mcp-study/adhoc-study/notes/editor-test-usage.md`) found that workers used
editor tests as validation only when the prompt demanded test-first work; unprompted (E2N-1) they wrote tests after
the implementation that never ran red, and the archived S1/S2 runs wrote none. The menus skill now opens with a
decision directive (test-first when the behaviour is non-trivial or loosely described; skip for trivial changes or
when the project or the user forbids editor tests, then check otherwise and say so). Confirmation: as a workflow
step it was read but ignored twice (E2N-2, E2N-3: tests after the code, still catching bugs); as the first Critical
Directive the worker stated "write EditorTestCases first — the behaviours are non-trivial", ran 12 tests red for
the right reason, then implemented (E2N-4, 129 calls, $7.72). A trivial wording change (TRIV-1) wrote no tests.

## Sonnet rehearsal of S30–S35 (follow-up)

Sonnet at `high`, harness install of the built catalog, one cell at a time, each scored by an opus evaluator
(`~/MPSProjects/mcp-study/runs-editor-rehearsal/S3*-sonnet-*.eval.md`). Failed cells were rerun after the docs,
prompts and criteria were fixed and reviewed (three opus review rounds,
`~/MPSProjects/mcp-study/adhoc-study/notes/sonnet-rehearsal-review-*.md`).

| Cell | Run | Calls / MPS-source reads / min / $ | Verdict |
|---|---|---|---|
| S30 | 1 | 156 / 0 / 15.9 / 5.64 | FAIL 3c: Enter action map instead of a factory (the factory's `index` was -1 from code); 3b/3d on the letter (named Subconcepts menu) |
| S30 | 2 | 165 / 0 / 18.7 / 6.01 | PASS on rev 6 (prompt forces creation by completion too) |
| S31 | 1 | 274 / 0 / 24.8 / 9.06 | FAIL C6: no channel-name negative test (the prompt did not ask) |
| S31 | 2 | 258 / 8 / 24.6 / 9.27 | FAIL C6: no apply step (the prompt did not ask) |
| S31 | 3 | 171 / 0 / 19.8 / 6.04 | PASS on rev 7; item 3 untested to fit "sixteen" → rev 8 lists eleven new tests |
| S31 | 4 | 168 / 0 / 18.0 / 5.91 | PASS on rev 8 (17/17, each new test maps to a prompt item) |
| S32 | 1 | 104 / 0 / 9.9 / 3.09 | FAIL 2: no check between `the` and Complete; `)` items read with an empty pattern |
| S32 | 2 | 142 / 0 / 11.0 / 3.55 | PASS on rev 6 |
| S33 | 1 | 160 / 0 / 12.2 / 4.19 | PASS |
| S34 | 1 | 164 / 1 / 14.4 / 4.10 | FAIL 1 (B-on without the muted check between keys), 2 on the letter |
| S34 | 2 | 111 / 0 / 10.5 / 2.79 | PASS on rev 7 (G-on with Backspace, which reaches the DELETE action) |
| S35 | 1 | 189 / 0 / 15.2 / 5.34 | PASS |

Sonnet built correct editors in every run; it failed on test rigour (missing in-between and negative checks, a
pattern-less item read) and on criteria that gated what the prompt did not ask. Doc fixes, each checked against the
MPS sources: the factory `index` (insert position only for Enter/Insert, the replaced node's position for a
replacement, otherwise -1), one-character keymap keycodes (typed, layout-independent, not with ctrl/alt), the
completion pattern for item reads, what to assert between two-step keys, `include menu` for a hidden default, the
chooser's stub, `MPSColors.red`, postfix hints on the property cell with `editedNode`, prefixed component cell ids,
the blueprint.py pointer and `$TMPDIR` for helper scripts, the abstract placeholder example, and string-keyed
`getProperty`. A claimed gap (a menu on an unset smart reference's cell is never consulted) contradicted the sources
and was not documented.

Test-first decision line: sonnet printed it once in twelve runs (S34-2, `Test-first: yes — …` before every edit), 0
of 6 while the rule said "state it", 1 of 6 after it asked for the literal line. The decision itself was usually made
in hidden reasoning: test-first in S32-1, S32-2, S35-1 (and S34, which forces it), implementation-first ("skipping
test-first") in S30-2, S31-2, S31-3, S31-4. Opus followed the line in its one probe (E2N-4). The rule's choice works; its
visible statement does not reliably reach sonnet.
