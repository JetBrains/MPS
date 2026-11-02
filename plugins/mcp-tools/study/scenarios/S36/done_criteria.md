# S36 done criteria (observer, read-only, projectPath = run project dir)

**Not frozen** (written 2026-11-02). Rehearsal `S36-opus-1` (opus, effort `medium`, 44 tool calls,
2 min 37 s, `~/MPSProjects/mcp-study/runs-s36`, `promptSha256` `27408274…`, `skillsSha256` `7ad51ce9…`) PASSED
criteria 1–6 on the intended order: the red run (step 29) before the first template write (step 30), its
text exactly the walk's, `GT_red_runs_before_fix` 1, `GT_runs_after_generator_write` 1, `ET_test_runs` 2,
`M_makes` 2, `G_errors` 0. It had diagnosed both defects from the template at step 11, before writing the
test, so the red confirmed a diagnosis rather than finding one: criterion 2 cannot tell the two apart and
is not meant to (the directive is about order and evidence). It did not show the expected roots as PLAIN
TEXT nor name the open choices (recorded items), and did not keep transient models. Rehearsal
`S36-sonnet-1` (sonnet, effort `medium`, 35 tool calls, 1 min 48 s, same prompt and catalog) is **FAIL
(directive miss, generator fixed)**: criteria 1 and 3–6 pass, criterion 2 fails. It diagnosed both
defects from the template at step 11 ("Found two bugs … then fix both"), wrote the template at steps
16–17, and only then built the test; its one run (step 33) was green, and its report says it did not run
the test before the fix. It had loaded `mps-aspect-generator` with Critical Directive 1 at step 3 and
`mps-tests` with the generator-test references before the first write (not `running-and-failures.md`),
so the miss is a skill wording finding, not a prompt problem: the directive reads as "write a test when
asked" rather than "write and run it before the change". Do not harden the prompt; fix the skill and
re-run. Freeze after the observer walk in
[`../../fixtures/inputs/s36/FIXTURE.md`](../../fixtures/inputs/s36/FIXTURE.md) and a rehearsal, re-pinning the quoted
mismatch lines). Written for the first Critical Directive of `mps-aspect-generator` (commit
141f4a1d09ac: write a `GeneratorTest` first when the user asks for one or describes the output
informally and asks or allows formalizing it; it must fail before the change with a mismatch naming
the change) and the matching fail-first rule in `mps-tests`. No cell made that directive fire: S6 and
S20–S24 give no test permission, S18 asks for tests on a correct generator. 

Fixture: `recipes-gen-broken` (`../../instructions/fixtures.md`, derivation and pins in
[`../../fixtures/inputs/s36/FIXTURE.md`](../../fixtures/inputs/s36/FIXTURE.md)): `recipes-gen` plus
defect A (the `PORTIONS` `$PROPERTY$` deleted, literal `1`) and defect B (the `$LOOP$` query
`node.steps.skip(1)`). `<T>` = `r:98539ed4-bf63-4715-a114-6d1e7a8ca01d(mcp.study.recipes.generator.templates@generator)`,
template root `RecipeClass` `<T>/4956319657762963862`, `PORTIONS` initializer `<T>/4956319657762963866`,
step literal `<T>/4956319657762963872` with `$LOOP$` `…/4956319657762978665` and `$PROPERTY$`
`…/4956319657762978680`. `<S>` = `r:38cfdf05-3b6a-4864-b1ba-70dca7ae70da(mcp.study.kitchen.samples)`,
seven roots as in S15 (Flour, Milk, Egg, Crepes 4/4 steps, Pancakes 2/3, Omelette 1/3, Weeknight Basics).

## The gap this cell measures

Whether a worker given an informal output description and a plain ask for a test (a) formalizes it as a
`GeneratorTest` before touching the generator, (b) runs it and reads a red that names both defects,
(c) fixes the template, makes, and confirms green, (d) also checks the samples' Java. The fix itself is
easy once the template is read (a missing macro, a `skip(1)`); the cell is about the order of work
and the evidence, not diagnosis depth. The skill's own example
(`mps-tests` `references/generator-test/running-and-failures.md`) shows defect A's mismatch shape and
`expected-output.md` this generator's class shape for other recipes (lesson 19): a quick A diagnosis
or a cheap expected model is not credit to this cell. It is also the first cell where the red run has to be
distinguished from "no generator ran" (`Node: null vs <root>`) and from a test bug.

## The test is asked for; the order is not

The prompt asks for the test plainly ("Correct the generator, and capture this description as a
generator test …") and puts its green run into Done, so criteria 1 and 6 follow the
prompt: no test, or no green, is a task FAIL. What the prompt never states is the order: the
directive says to write the test from the description and run it **before** the change, and that
it must fail naming the change. Criterion 2 measures that order. A run that fixes the template
first (a worker that reads the template, sees the missing macro and the `skip(1)`, and fixes them
before formalizing anything) and then writes and runs the test green passes 1 and 3–6 and fails
only 2: record it as **FAIL (directive miss, generator fixed)**, distinct from a FAIL on the fix or
on the test. Do not harden the prompt to "write the test first" if that label is frequent: it would
turn the cell into prompt compliance and stop measuring the directive (`instructions/scenarios.md`, S36).

## Criteria

1. **Test exists and encodes the description.** `mps_mcp_get_project_structure` (with
   `includeModels`) and `mps_mcp_query_nodes FIND_INSTANCES` of
   `jetbrains.mps.lang.test.generator.structure.GeneratorTest` with no `scope` (the project; an
   explicit `"scope": "project"` is rejected):
   - a new Solution with the `tests` facet (any name), not `mcp.study.kitchen`, holding a `@tests`
     model with at least one `GeneratorTest` root; a `NodesTestCase` or any other root standing in
     fails this criterion (record what it tests).
   - `mps_mcp_print_node` PLAIN TEXT of the root; every assertion's `inputModel` / `referenceModel`
     (`ArgumentReference.arg` → argument → `ModelPointer.modelId`) names an existing model of the
     test Solution (`get_project_structure startingPoint=` the full model reference `r:<uuid>(<name>)`; the bare
     `modelId` answers `NOT_FOUND`). No root of `<S>` is the input.
   - input: exactly Recipe `Porridge` (servings 3; steps "Bring the milk to a simmer", "Stir in the
     oats", "Cook for five minutes", in order) and Recipe `Lemonade` (servings 1; step "Squeeze the
     lemons"); extra recipes fail it (record). Any difficulty value is fine (record which; the
     report should name it as a choice).
   - expected: exactly two `ClassConcept` roots `Porridge` and `Lemonade`, `packageName`
     `mcp.study.generated`, `PORTIONS` initializers 3 and 1, `steps()` returning the literals above
     in order. Written with the Java parser, as JSON, or captured and corrected from an output
     model — all accepted (`GT_expected_parser_inserts` records the first).
   - `"doNotGenerate": true` on the input model and on every reference model; the test
     Solution's `source_gen` holds no `Porridge.java` / `Lemonade.java` (record what it holds).
   - a `transformationPlan` or `matchOptions` is allowed; record it (an `aggregateIgnoreOrder` that
     makes a wrong root order pass is recorded, fails nothing).
2. **Red before the fix, for the right reasons** (the directive's gate; from the worker transcript
   and the server-log slice, as S15's P2 and S34's criterion 2):
   - at least one `execute_run_configuration` of the worker's configuration occurs **before the
     first accepted write to `<T>`** (any `update_node` / `insert_root_node_from_json` / `create_root_node` /
     `parse_java_and_insert` / `apply_intention` / `update_root_node_from_json` / a non-MAKE
     `alter_nodes` whose input names
     the `@generator` model and whose envelope is not `ok:false`; a MAKE is not a write; a rejected
     write does not count — the same ordering `families.py` uses for `GN_trace_before_fix`);
   - the **last** such run before that write ends with a failure (`<TEST_FAILURE_BEGIN>`, exit code 1) of the `GeneratorTest`
     whose `Transformation output model doesn't match reference one:` text names **both** defects,
     one per root. The matcher (`ModelAssert` over `SNodeMatcher`) stops at the first difference in
     each root, so: under `Node: Porridge vs Porridge`, `Node: PORTIONS vs PORTIONS` → `Different
     property: value = 1, expected: 3` (A; `steps()` is never compared in that root); under `Node:
     Lemonade vs Lemonade`, whose `PORTIONS` is right by coincidence, below `Node: steps():String[] vs
     steps():String[]` … `Node: array with initializer vs array with initializer`, a nested `Node: null
     vs StringLiteral='Squeeze the lemons'` → `Excessive node, no counterpart to match to`
     (B: the dropped step). The Lemonade coincidence is load-bearing: no single root shows both
     defects. The verbatim red of the observer walk is in `FIXTURE.md`. Because the
     matcher is fail-fast, a test-side bug further down in Porridge (e.g. wrong step texts) stays
     hidden behind A in this run; it surfaces after A is fixed and is a test repair, not a defect. An
     older run that failed on a test bug (package name, a typo, `isStatic`) and was then repaired
     is fine, but the last pre-fix run must show A and B; a test-caused difference shown under
     Porridge or Lemonade hides that root's defect and fails this criterion (record it);
   - not `Node: null vs Porridge` / `Node: null vs Lemonade` at root level (no generator ran /
     generation failed; a nested `null vs StringLiteral=…` is B, not this), not an
     `AssumptionViolatedException` (a skip: an argument that names no model), not a run of an empty
     or assertion-less root.
   A worker that writes the test only after the generator write, or runs it only green, fails
   here and only here: **FAIL (directive miss, generator fixed)** when 1 and 3–6 hold. Record
   whether it then broke an expected value on purpose (S18-style non-vacuity): that is the fallback
   the skill allows for tests not written first, it does not rescue the criterion. Also record a
   run whose test result contains `Node: null vs Porridge` (no generator ran / generation failed)
   and what the worker did next.
3. **Fix in the template, nothing else.** `mps_mcp_print_node` JSON `deep: true` of `RecipeClass`
   `<T>/4956319657762963862`:
   - the `PORTIONS` initializer carries a `$PROPERTY$` whose query's value is the recipe's
     `servings` (`node.servings`; a behavior method or variable with that value is equivalent);
   - the step `StringLiteral` carries a `$LOOP$` whose query yields **all** steps in order
     (`node.steps`; `.toList`, `.asSequence` or an equivalent are fine; any `skip`, `where`, `take`
     or reorder fails) and still the `$PROPERTY$` `node.text`;
   - a fix that re-creates the template or the rule passes when 4 and 5 hold and one root mapping
     rule for Recipe remains (record it). `check_root_node_problems` on `<T>`: 0 errors.
     `generator/source_gen/.../Generator.java` still extends `TemplateModuleInterpreted2` (a flip
     to compiled is recorded, fails nothing).
   - `.mps` files differing from the fixture: `<T>`'s file and the files of the new test Solution
     only. Diff `.mps` model files only (`find … -name '*.mps' -type f`: the project's
     `.mps/` directory matches the name too). Descriptors (`.mpl`, `.msd`, the new solution's), `.mps/` project files, and
     `source_gen*` / `classes_gen` / `test_gen` do not count.
4. **Samples unchanged.** `get_project_structure(startingPoint=<S>, includeRootNodes=true)` lists
   exactly the seven fixture roots by id; PLAIN TEXT of the three Recipes shows the S15 table's
   servings and steps; `check_root_node_problems(<S>, perRoot=true)`: 0 errors, 0 warnings.
5. **Generated Java right.** `solutions/mcp.study.kitchen/source_gen/mcp/study/generated/` holds
   exactly `Crepes.java`, `Pancakes.java`, `Omelette.java` with `PORTIONS = 4`, `= 2`, `= 1` and
   `steps()` returning all four / three / three step texts in the fixture's order (the fixture
   ships `1 / 1 / 1` with the first step missing, so a stale `source_gen` fails). The worker's
   last make is what is measured; the observer does not MAKE.
6. **Green after the fix.** `get_run_configurations` shows the worker's JUnit configuration (model
   or root). The observer's `execute_run_configuration` of it: the `GeneratorTest` class, at least
   one `testTransformAndMatch<i>`, no `<TEST_FAILURE_BEGIN>` block, no `AssumptionViolatedException`. From the
   transcript: the worker's own green run comes **after** its last accepted write to `<T>`. A
   test run makes only the `@tests` model, not the language or the generator
   (`mps-tests/references/generator-test/running-and-failures.md`, "Running"), so a green run
   after the template fix implies the generator was redeployed: the expected path has a MAKE of
   `mcp.study.recipes` and its generator between the last `<T>` write and that run (`M_makes`).
   Accept the green run as the proof: the interpreted generator reads template structure live
   but runs its macro queries from compiled classes, so a green run without that MAKE is
   implausible; if the transcript shows none, look for the MAKE elsewhere (e.g. a make of `<S>`
   that also built the language), record it, and do not fail on it. A green run that precedes the last `<T>` write (the worker edited again afterwards and
   never re-ran) fails here.

Pass = criteria 1–6 hold. 1 and 2 together are the directive; 3–6 are the task.

Accepted as equivalent: argument references by name or `r:` ref; one or several assertions in
one root; several roots (each must pass); one shared input model or one per root; a run
configuration per model or per root (record); the expected classes with or without an explicit
`package` line as long as `packageName` matches; a sandbox observation of `<S>` with transient
models kept (the second directive) is welcome and not required.

Checker messages: `check_root_node_problems` on the test models is not a criterion; the expected
classes' `String` types carry *info* entries. Any error is recorded and fails nothing unless 6 fails.

Also record (not gated): whether the expected model's roots were shown as PLAIN TEXT before the
first run (the directive's "show its roots as PLAIN TEXT"); whether the worker read the nested
`null vs StringLiteral='Squeeze the lemons'` under Lemonade as a missing step (right) or as a failed generation
(wrong); whether the report names the choices
the description left open (difficulty of the test recipes, `isStatic` / modifiers); whether the
worker made `<S>` and read the Java before the test (orientation) or only after the fix; D130
fallbacks (`search_concepts` → `[]` → module dumps) on the way to `GeneratorTest`.

## Process signals (`families.py` row; reported separately from the pass)

| Column | Expected | What it shows |
|---|---|---|
| `GT_generator_test_writes` | ≥ 1 | the `GeneratorTest` route |
| `GT_nodes_test_writes` | 0 | the old `NodesTestCase` route (attempts counted) |
| `GT_do_not_generate_calls` | ≥ 2 | input and expected flagged through the tool |
| `GT_do_not_generate_workarounds` | 0 | console reflection / `.mps` edits |
| `GT_runtime_source_reads` | 0 | hunting the matcher or MPS's own generator tests |
| `GT_expected_parser_inserts` | — | expected classes via the Java parser (JSON is fine too) |
| `GT_kitchen_source_reads` | — | reading the samples' wrong Java as orientation (allowed; the prompt points there for the final check) |
| `ET_run_configs` | 1 | — |
| `ET_test_runs` | ≥ 2 (2–4) | one red, one green; each extra run is a test-fix or fix cycle |
| `M_makes` | 2–3 | language+generator after the fix, `<S>`; a test-solution make or an orientation make of `<S>` is one more |
| `M_reload_all` | 0 | — |
| `GN_template_prints` | ≥ 1 | the template was read to find the defects (expected; the trace is not forced here) |
| `M_makes_save_transient`, `GN_transient_models`, `GN_transient_reads`, `GN_trace*` | — | the *Observe generation* directive taken on `<S>` (not on the test input: a "Do not generate" model is skipped by make) |
| `D_skill_reads`, `X_outside_project`, `G_errors`, `F_gcd_calls` | — | navigation and D130 cost |

**New columns** (`scripts/families.py`, documented with the other `GT_*` columns there):
- `GT_red_runs_before_fix` — `execute_run_configuration` calls before the first accepted write to
  a `@generator` model whose result contains `doesn't match reference one` and a root-level
  `Node:` line that is not `Node: null vs` (a nested `null vs "<step>"` still counts): criterion 2's
  gate as a number (≥ 1 expected).
- `GT_runs_after_generator_write` — `execute_run_configuration` calls after that write (≥ 1
  expected: the green run). With `ET_test_runs` this separates "test first" (red before, green
  after) from "test after" (every run after) without reading the transcript.
A run whose result has root-level `Node: null vs <root>` lines is not a column but a record line
of the evaluation (no generator ran / generation failed, the trap the fail-first rule names).
