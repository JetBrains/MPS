# S18 done criteria (observer, read-only, projectPath = run project dir)

**Prompt frozen 2026-10-29** (`promptSha256` `0496892274fb…`) after the observer walk and the
rehearsal in `~/MPSProjects/mcp-study/runs-s18`. `S18-opus-1` (effort `low`, 39 turns, 2 min) and
`S18-sonnet-1` (effort `medium`, 42 turns, 1 min 52 s) both passed criteria 1–4 on the intended path
with no fix cycle (`S18-*.eval.md`): `GT_generator_test_writes` 3, `GT_do_not_generate_calls` 4,
`GT_nodes_test_writes`, `GT_do_not_generate_workarounds` and `GT_runtime_source_reads` 0, one run
configuration, and each worker broke one expected value on purpose before its last run. Written for
the generator-test skill work (`mps-tests` `references/generator-test.md`, `mps_mcp_update_model`
`SET_DO_NOT_GENERATE`, lone `GeneratorTest` roots in `mps_mcp_create_run_configuration`). Rehearsal
catalog `skillsSha256` `0fdf8404c8df…`; the catalog committed with the cell carries the
implementation review's wording fixes on top (option fallback, logged generation errors, the skipped
exit code, quoted diff texts), none on the path either rehearsal took.

Fixture: `recipes-gen.tar.gz` (`../../fixtures/README.md`), sha256
`e9fd62584d0c0358affd82d729662197c1871d6a5a62618d2c421744092a96f3`, top directory `recipes-gen/`:
S15's `recipes-misgen` with D1 reverted, so the generator is right. Node ids are S15's
(`../S15/DEFECT.md`): template model `r:98539ed4-bf63-4715-a114-6d1e7a8ca01d(mcp.study.recipes.generator.templates@generator)`
(`<T>`), template root `RecipeClass` `<T>/4956319657762963862`, `PORTIONS` macro query now
`node.servings` (`<T>/5741524382992129494` in the fixture). Samples model `<S>` =
`r:38cfdf05-3b6a-4864-b1ba-70dca7ae70da(mcp.study.kitchen.samples)` with seven roots (Flour, Milk,
Egg, Crepes, Pancakes, Omelette, Weeknight Basics). Re-derive and re-pin when `recipes-misgen` is
regenerated.

## The gap this cell measures

Before this change the `mps-tests` skill routed generator tests to `NodesTestCase` +
`assertNodesMatch` and a non-existent `GenerationTest.generateAndCompare`, and said "there is no
dedicated GeneratorTestCase concept". MPS has `jetbrains.mps.lang.test.generator` (`GeneratorTest`,
`ModelArgument`, `ModelMatchOptions`, `TransformationMatchAssertion`). No tool could set a model's
"Do not generate" flag, and the run-configuration tool refused a lone `GeneratorTest` root. A
baseline experiment on 2026-10-29 (an opus Agent-tool worker on a fresh `recipes-gen` copy with the
old catalog `406cbbb880fd…`, not a `run_worker.sh` cell, so evidence only and never a round-table
row) passed items 1–6, but found `GeneratorTest` by dumping every language module, set the flag
through reflective console Java (two attempts), and had three arguments left unresolved by name
across roots. A true tool-free baseline needs the pre-change catalog and the pre-change plugin (the
operation lives inside `update_model`, so `DISALLOWED_TOOLS` cannot remove it).

Known confound (D130): the study MPS also has the MPS source project open, so `search_concepts`
drops every MPS language as "owned by another open project" and finds no `GeneratorTest`; a user's
MPS has these languages as libraries. Workers must reach the concept through the skill.

Item 4 forces "Do not generate" on the data models: the walk showed the test Solution's make
generating the input and the expected model into the same `source_gen/mcp/study/generated/Tea.java`.
The prompt names behaviours; its only mechanism word is "explicit generation plan", the MPS
user-level term that S15 uses too.

## Observer walk (done 2026-10-29, `proj/gentest-walk`, before the prompt)

Through MCP on a copy of the same state: a test Solution with input, expected, reordered and
`@genplan` models, two `GeneratorTest` roots, a live MODEL run configuration. Pinned by runs:
1. The parsed expected classes match the generator's output; the template is
   `public class <name> { public static final int PORTIONS = <servings>; public static String[]
   steps() { return new String[]{<texts>}; } }` with `packageName` `mcp.study.generated`.
2. Expected `PORTIONS` 2→3 fails with `Transformation output model doesn't match reference one:` /
   `Node: Tea vs Tea` / `Node: PORTIONS vs PORTIONS` / `Node: integer constant vs integer constant` /
   `Different property: value = 2, expected: 3`.
3. Expected roots Toast, Tea without options fail (`Node: Tea vs Toast` / `Different property: name =
   Tea, expected: Toast`); with a `ModelMatchOptions` `aggregateIgnoreOrder` true they pass.
4. A plan `Plan{Transform{LanguageEntry{LanguageId mcp.study.recipes}}}` as `transformationPlan`
   passes against the same expected model (the output has no BaseLanguage extensions, so step one's
   output equals the final one).
5. An argument whose `modelId` names no model makes every assertion of its root report
   `org.junit.AssumptionViolatedException: Could not find model for parameter '<name>' (<ref>)`
   (exit code 3). That is a skip, not a pass.
6. With the new server: `SET_DO_NOT_GENERATE` on input and expected, then a `rebuild` of the test
   Solution leaves only the test classes in `source_gen`/`test_gen`; `nodeReference` = one
   `GeneratorTest` root registers a one-root NODE configuration that runs green.
7. The baseline worker saw `Excessive node, no counterpart to match to` for an extra expected class.

## Criteria

1. **Structure.** `mps_mcp_get_project_structure` and `mps_mcp_search_root_node_by_name` (scope
   `models`):
   - a solution `mcp.study.recipes.gentests` with the `tests` facet;
   - its model `mcp.study.recipes.gentests@tests`;
   - three `GeneratorTest` roots (concept `jetbrains.mps.lang.test.generator.structure.GeneratorTest`)
     named `RecipeClasses`, `RecipeClassesAnyOrder`, `RecipesGeneratorOnly`.

   Other roots are allowed if they are not test roots. An extra test root fails this criterion
   (record what it tests). A `NodesTestCase` (or any other root) standing in for one of the three
   fails it too; record whether such a run met criteria 2–4 anyway.
2. **Each test tests its check.** `mps_mcp_print_node` PLAIN TEXT of each root, JSON where an id or
   value is needed. For every assertion, follow `inputModel` / `referenceModel` /
   `transformationPlan` / `matchOptions` → `ArgumentReference.arg` → the argument; every
   `ModelPointer.modelId` must name an existing model of the test Solution (`get_project_structure`
   `startingPoint` = `<modelId>`; the `ModelName` may differ only if the id resolves).
   - Input (shared or per root): a model of the test Solution whose roots are exactly Recipe `Tea`
     (servings 2; steps "Boil water", "Steep the leaves", in order) then Recipe `Toast` (servings 1;
     step "Toast the bread"), in that order. No root of `<S>` is used as input.
   - `RecipeClasses`: one `TransformationMatchAssertion` whose reference model holds exactly two
     `ClassConcept` roots, `Tea` then `Toast`, `packageName` `mcp.study.generated`, `PORTIONS`
     initializers 2 and 1, and `steps()` returning the literals above in order. No
     `transformationPlan`. No options node, or one without `aggregateIgnoreOrder` (record it if set).
   - `RecipeClassesAnyOrder`: the reference model holds the same two classes, `Toast` before `Tea`;
     `matchOptions` → a `ModelMatchOptions` with `aggregateIgnoreOrder` true. Either alone fails.
   - `RecipesGeneratorOnly`: as `RecipeClasses`, plus `transformationPlan` → a model of the test
     Solution whose first `Plan` root's transform steps name only `mcp.study.recipes`
     (`Transform`/`LanguageEntry`) or only its generator (`ApplyGenerators`); a `Checkpoint` step is
     harmless. Any other language or generator fails it (record it).
3. **Do not generate.** `get_project_structure` (with `includeModels`) shows `"doNotGenerate": true`
   on the input model and on every reference model of the three tests (equivalently,
   `mps_mcp_generation PLAN` on each warns "not generatable"). The `@genplan` model is not checked.
   Record what the test Solution's `source_gen` holds and whether a make ran before the flag was set
   (from the transcript); neither decides the criterion.

Also record, without gating on it: whether `mcp.study.kitchen` changed (the prompt forbids it;
`get_project_structure(startingPoint=<S>, includeRootNodes=true)` should list the seven fixture
roots).
4. **Green.** A JUnit run configuration for the model, or for the three roots, exists
   (`get_run_configurations`). The observer's re-run (`execute_run_configuration` of the worker's
   configuration) gives three test classes `RecipeClasses`, `RecipeClassesAnyOrder`,
   `RecipesGeneratorOnly`, at least one `testTransformAndMatch<i>` each, no `TEST_FAILURE` block and
   no `AssumptionViolatedException`.

Pass = criteria 1–4 hold.

Checker messages: `check_root_node_problems` on the test models is not a criterion. The expected
classes' `String` types carry *info* "It's recommended to use string type" entries; they are not
problems. Any error is recorded and fails nothing unless criterion 4 fails.

Accepted as equivalent:
- `ArgumentReference.arg` set by name or by `r:` reference;
- one shared input model, or one per root; `RecipeClasses` and `RecipesGeneratorOnly` sharing one
  expected model;
- expected classes written with the Java parser, as JSON, or captured from the transient output;
- a `Transform`/`LanguageEntry` plan or an `ApplyGenerators` plan naming the generator module;
- one run configuration for the model, for the three roots, or one per root (record it);
- extra assertions inside the three roots, if each still passes.

## Process signals

Read them with the `families.py` columns:

| Column | Expected | What it shows |
|---|---|---|
| `GT_generator_test_writes` | ≥ 3 | the skill routed the worker to `GeneratorTest` |
| `GT_nodes_test_writes` | 0 | the old `NodesTestCase` route, attempts counted |
| `GT_match_options_writes` | ≥ 1 | `ModelMatchOptions` |
| `GT_plan_writes` | ≥ 1 | a generation plan authored |
| `GT_do_not_generate_calls` | ≥ 2 | the new `update_model` operation |
| `GT_do_not_generate_workarounds` | 0 | console reflection, `.mps` edits: the pre-tool gap |
| `GT_runtime_source_reads` | 0 | hunting `gentest.rt`, the matcher or MPS's own generator tests because the skill fell short |
| `GT_kitchen_source_reads` | — | reading the samples' generated Java for the class shape (the prompt gives it) |
| `GT_expected_parser_inserts` | — | expected classes written with the Java parser |
| `ET_test_runs` | 1–3 | each run past the first is a fix cycle |
| `ET_run_configs` | 1 | — |
| `M_makes_save_transient`, `GN_transient_models`, `GN_transient_reads` | — | the golden-master route |

Also read `D_skill_reads`, `X_outside_project`, `G_errors` and `GN_template_prints`. Whether the
worker broke an expected value on purpose to see the test fail is read from the transcript (two
writes around a test run), not from a column.
