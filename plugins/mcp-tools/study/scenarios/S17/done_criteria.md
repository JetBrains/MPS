# S17 done criteria (observer, read-only, projectPath = run project dir)

**Draft, not frozen.** Written 2026-10-29 for MPS-40320. The prompt is frozen only after the
observer walk and the rehearsal below. Until then a result is a rehearsal, not a measurement.

Fixture: `recipes.tar.gz`, as S7 (`../../fixtures/README.md`): a passing S1 project, with the sample
Recipe and Cookbook roots deleted and `classes_gen` included. The current tarball (2026-09-16) still
carries a doc surface (`.agents/`, `.claude/`, `AGENTS.md`, `CLAUDE.md`). `run_worker.sh` purges it
and installs the live catalog per run (`install_skills.py`), so this is not a measured input. Re-tar
the fixture without it the next time it is regenerated.

The fixture's editors (read from `languages/mcp.study.recipes/source_gen/mcp/study/recipes/editor/`;
re-read them for a regenerated fixture):
- Recipe: `recipe {name} serves {servings}, difficulty {difficulty}`, then `steps:` with
  `refNodeList_steps`, a vertical list of Steps.
- Step: `- {text} ({minutes} min, uses: %uses%)`. The whole Step is `Collection_t290g_a`, the text
  cell is `property_text`, and the closing `)` is `Constant_t290g_g0`.
- The Recipe name cell is `property_name`.
- The language has no intentions, so no intention test is asked for.

The gap this cell measures: S7's one editor test only types text. No cell asks for Undo, Redo or the
clipboard, which are platform actions (`invoke action by id: $Undo`, `$Redo`, `$Copy`, `$Paste`). No
cell asks for `is action applicable`, for a deletion that depends on the two-step-deletion setting,
or for non-vacuous undo and clipboard tests. Before MPS-40320 the `mps-tests` skill named none of
these. Two baseline opus experiments on BaseLanguage (2026-10-29) found the ids only by searching
MPS's own tests. The prompt names behaviours, not mechanisms. "The tests also run headless on CI" is
the real-world reason that tests coded against IDE services fail (MPS-extensions PR #1942). That
line makes criterion 3 a fair requirement.

## Observer walk before freezing (pending)

On a fresh copy of the fixture, write and run the six tests through MCP. Then pin:
1. The cell ids above.
2. That one `Backspace` in the empty `property_text` of the second Step removes that Step when
   two-step deletion is off, and only marks it when it is on. Also check that
   `EditorTestUtil.runWithTwoStepDeletion({ => … }, false)` makes the test pass either way. If
   Backspace in an empty text does not route to the Step's delete action, reword item e before
   freezing.
3. That `$Copy`, `invoke action -> End`, `$Paste` on the only Step gives two Steps.
4. That on a Step, `is action applicable -> ShowReflectiveEditor` is true and `-> ShowRegularEditor`
   is false.

Then run one opus and one sonnet rehearsal with the MPS checkout project closed, and freeze the
prompt here with its `promptSha256`.

## Criteria

1. **Structure.** Check with `mps_mcp_get_project_structure` and `mps_mcp_search_root_node_by_name`
   (scope `models`):
   - a solution `mcp.study.recipes.editortests` with the `tests` facet;
   - its model `mcp.study.recipes.editortests@tests`;
   - the six `EditorTestCase` roots `TypeRecipeName`, `UndoStepText`, `RedoStepText`,
     `CopyPasteStep`, `DeleteEmptyStep` and `ReflectiveEditorApplicability`.

   Other roots are allowed if they are not test cases (e.g. a `TestInfo`). An extra test root
   fails this criterion (record what it tests).
2. **Each test tests its behaviour.** Use `mps_mcp_print_node` (PLAIN TEXT) of each root, and JSON
   where a property value is needed. An assertion counts in any form that fails the test: `assert`,
   `Assert.*` or `if … throw`, over a value read through `editor component` or from the model.
   - TypeRecipeName:
     - the `before` Recipe has an empty or absent `name`;
     - the `result` Recipe has `name` `Pancakes`;
     - the `result` has an `AnonymousCellAnnotation` on the Recipe with `cellId` `property_name` and
       `selectionStart` = `selectionEnd` = `8`, the properties the runtime compares
       (`caretPosition` and `isLastPosition` may be anything).

     A `result` without a cell annotation does not test the caret and fails.
   - UndoStepText:
     - the code types into a Step's text;
     - an assertion between the typing and the undo fails if the typing did nothing;
     - the test then checks the original state: a `result` equal to `before` (same Step texts and
       minutes), or an assertion of the original text after the undo. Neither → fail.
   - RedoStepText:
     - the code types, undoes and redoes;
     - an assertion between the undo and the redo checks the original text, so a no-op undo plus a
       no-op redo fails;
     - the `result` holds the typed text.
   - CopyPasteStep:
     - the `before` Recipe has exactly one Step;
     - the `result` has two Steps with equal `text`, `minutes` and `uses`, equal to the `before`'s Step.
   - DeleteEmptyStep:
     - the `before` has two Steps, the second with an empty or absent `text`;
     - the `result` has one Step whose text equals the `before`'s first Step;
     - the code fixes the two-step-deletion setting for the deletion: `EditorTestUtil.runWithTwoStepDeletion({ … }, <bool>)`,
       or a set-and-restore of `EditorSettings.useTwoStepDeletion`. A deletion that works for only
       one value of the setting fails.

     Starting from a whole-node selection of the Step does not satisfy the prompt ("a single
     Backspace in that empty text"), because such a selection deletes at once under any setting.
   - ReflectiveEditorApplicability:
     - one assertion that `ShowReflectiveEditor` is enabled;
     - one assertion that `ShowRegularEditor` is not enabled;
     - neither action is invoked;
     - the `before` caret is on a Step.

     Evaluating the expressions without asserting them fails.
3. **Headless-safe.** No test's `code` (PLAIN TEXT print) mentions `UndoManager`, `DataManager`,
   `FileEditor`, `FileEditorManager` or `CopyPasteManager`. For ambiguous text, run
   `mps_mcp_query_nodes` `FIND_USAGES` of those classifiers, scoped to the model.
4. **Green.** A JUnit run configuration for the model, or for all six roots, exists
   (`get_run_configurations`). The observer's re-run gives 6 tests and 0 failures.

Pass = criteria 1–4 hold.

Checker messages: `check_root_node_problems` on the test model is not a criterion. Expected
messages there include "No child in obligatory role" on a deliberately empty `before` node and, for
every `press`, the `KeyMapKeystroke` error "Empty enumeration property: 'change'"; MPS's own tests
carry both. Any other error is recorded, and fails nothing unless criterion 4 fails.

Accepted as equivalent:
- `press` chords instead of `invoke action` for Backspace;
- the Step selected for Copy by a `before` annotation on its collection cell, or by `SelectUp`;
- one run configuration per root (record it; D53 is fixed, so one live model config is expected).

Equivalent modelling does not change a criterion, but `press` Ctrl+Z / Ctrl+C never reaches the
platform action in the test runtime. A test that tries that fails criterion 4.

## Process signals

Read them with the `families.py` columns:

| Column | Expected | What it shows |
|---|---|---|
| `ET_platform_id_writes` | ≥ 1 | the skill routed the worker to `by id: $Undo` and friends |
| `ET_applicability_writes` | ≥ 1 | it routed the worker to `is action applicable` |
| `ET_ide_service_writes` | 0 | the MPS-40320 failure path, counted on attempts too |
| `ET_runtime_source_reads` | 0 | hunting the test runtime or MPS's own tests because the skill fell short; the run project's own `test_gen/` and the fixture language's editor `source_gen` do not count |
| `ET_test_runs` | 2–4 | each run beyond the first is one fix cycle; cell ids and caret offsets usually cost one each |
| `ET_run_configs` | 1 | — |

Also read `D_skill_reads`, `X_outside_project` and `G_errors`.

Clipboard state is shared by the tests of one JVM. If CopyPasteStep's pasted text is another test's
Step text, a no-op `$Copy` pasted a stale payload; record it.
