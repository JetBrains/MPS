# S37 done criteria (observer, read-only, projectPath = run project dir)

**Prompt frozen 2026-11-02** (`promptSha256` `fb95672523f6…`). Written the same day for MPS-40408 after the
observer walk below, then rehearsed on that prompt (catalog `skillsSha256` `6b48b1f7…`, effort `medium`,
one MPS process, no call log, `~/MPSProjects/mcp-study/runs-s37`). `S37-opus-1` (27 tool calls, 1 min
44 s) PASSED on the intended route: one `node-ptr/Pancakes/` local resolved through
`project.getRepository()`, the samples imported before the insert, a make of the test solution, one
green run; it reached `link-and-concept-literals.md` straight from the `mps-tests` pointer, without
loading `mps-model-manipulation`. `S37-sonnet-1` (24 tool calls, 53 s) PASSED on the intended route
with one `node-ptr/Pancakes/` inline in each of its two assertions, no make, one green run; it took 2
and 13 from the prompt without reading the stored values. Neither ran the test red (not asked). The
rehearsals sharpened the criteria (every pointer, the read columns, the temp-file caveat) but changed
no verdict.

Written for the `node-ptr` guidance added for MPS-40408: `mps-model-manipulation` Critical
Directive "A node known at design time is `node-ptr/<name>/.resolve(repo)`" and
`references/link-and-concept-literals.md` (section "A node or model known at design time"), the
pointer in `mps-tests` SKILL.md ("A test that checks a stored node"), and the Java-parser row in
`references/java-parser-capabilities/unsupported-and-workarounds.md`. No earlier cell needs a node
that exists at design time: S24's by-name anchor is a generator output node, and S7/S17/S34 reach
their nodes through `node<label>` on copies inside the test. Two earlier workers hand-built
`new jetbrains.mps.smodel.SNodePointer("r:…", "<id>").resolve(repo)` through the Java parser (the
editor pilot `E4-opus-1`, a console probe in `S14-opus-1`); nothing measured that route.

Fixture: `recipes-full` (`../../instructions/fixtures.md`; sha256 in `../../fixtures/pins.md`),
unchanged. `<S>` = `r:38cfdf05-3b6a-4864-b1ba-70dca7ae70da(mcp.study.kitchen.samples)`, seven roots:
Flour `<S>/12157282221949750`, Milk `…751`, Egg `…752`, Crepes `…753` (serves 4; 5 + 30 + 15 min),
**Pancakes `<S>/12157282221949763`** (serves 2; 6 + 4 + 3 = 13 min), Omelette `…772` (serves 1;
2 + 4 + 1 min), Weeknight Basics `…781` (Cookbook). `totalMinutes()` is
`r:3182e5cd-c01e-4854-b574-b19b0d5a568f(mcp.study.recipes.behavior)/12157282221710371`.

## The gap this cell measures

Whether a worker that must test one stored node, and keep the test tied to it through renames and
Find Usages, reaches it with the `node-ptr/Pancakes/` literal (a `NodePointerExpression` holding a
`NamedNodeReference`) resolved through `project.getRepository()`, imports the samples model so the
name is in scope, and runs the test green. The prompt states the requirements a lookup by name
cannot meet (rename, Find Usages) without naming the construct, so the cell measures whether the
skills lead there. The rest of the task (a tests solution, a `SimpleNodeTest`, two `assert equals`,
a behavior call, a run configuration) is S7's and should cost little.

## Observer walk (2026-11-02, opus observer, MPS 261 from sources)

On a scratch `recipes-full` copy, through MPS MCP only:
1. `create_module` solution `mcp.study.kitchen.tests` with `facets: ["tests"]`; `create_model`
   `mcp.study.kitchen.tests@tests`.
2. `insert_root_node_from_json`: `NodesTestCase PancakesSample`, one `SimpleNodeTest`
   `totalsOfTheStoredRecipe` with
   `node<Recipe> pancakes = node-ptr/Pancakes/.resolve(project.getRepository());`, `assert
   pancakes.servings equals 2;`, `assert pancakes.totalMinutes() equals 13;` (the behavior call is
   `jetbrains.mps.lang.behavior.structure.Node_ConceptMethodCall`). Before the import the insert
   answered `fixReferences.stillBroken: 1` and the check "Unresolved reference: Pancakes".
3. `model_dependency ADD` of `<S>` into the test model (it also added the module dependency on
   `mcp.study.kitchen`); a rewrite of the root then resolved the name (`stillBroken: 0`). The insert
   tools had added `jetbrains.mps.lang.smodel`, `lang.modelapi`, `lang.test`, `baseLanguage.unitTest`
   and `lang.behavior` as used languages themselves. `check_root_node_problems` on the test model:
   no problems. PLAIN TEXT shows `node-ptr/Pancakes/.resolve(project.getRepository())`.
4. MAKE of the test solution: `test_gen/mcp/study/kitchen/tests/PancakesSample_Test.java` holds
   `SPointerOperations.resolveNode(new SNodePointer("r:38cfdf05-3b6a-4864-b1ba-70dca7ae70da(mcp.study.kitchen.samples)", "12157282221949763"), myProject.getRepository())`.
5. `create_run_configuration` (model) and `execute_run_configuration`: green, exit 0, in process.
6. `query_nodes FIND_USAGES` of Pancakes (scope editable) lists the test's `NamedNodeReference`
   next to the three `RecipeRef`s of the samples.
7. Probes, all reverted: renaming Pancakes to `PancakesX` made the test print
   `node-ptr/PancakesX/` and stay clean; setting Pancakes' servings to 3 made the next run fail with
   `expected:<2> but was:<3>` without a make (the test reads the stored node at run time).

## Criteria

1. **Test exists.** `get_project_structure` (`includeModels`): a Solution `mcp.study.kitchen.tests`
   with the `tests` facet holding `mcp.study.kitchen.tests@tests`, which has a `NodesTestCase`
   `PancakesSample` (another name for the root is recorded, fails nothing) with at least one test
   method. PLAIN TEXT of the root shows checks of servings = 2 and `totalMinutes()` = 13 (any
   assertion form: `assert … equals …`, `assertEquals`, `assert true … == …`; one method or two).
2. **The stored Pancakes, through a reference MPS tracks** (the directive). `print_node` JSON
   `deep: true` of the root:
   - **intended:** the recipe is obtained from a `NodePointerExpression` whose `ref` is a
     `NamedNodeReference` with `target` = `<S>/12157282221949763` (`targetReference`), resolved with
     `NodePointer_ResolveOperation` (any repository argument: `project.getRepository()`, the model's
     repository, …), and the checked node is that result (directly or through a local variable).
     When the test model holds several pointers (one per assertion is fine), **every** one targets
     Pancakes: a test that checks one property on Pancakes and another on a different recipe fails.
     The generated `test_gen/…/PancakesSample_Test.java` (written by the worker's make or, without
     one, by a test run; check it after the observer's criterion-5 run) holds `new SNodePointer("r:38cfdf05-…(mcp.study.kitchen.samples)", "12157282221949763")`
     inside `resolveNode`.
   - **PASS (other reference), recorded:** the recipe is reached through another reference whose
     target is `<S>/12157282221949763` and that Find Usages lists (e.g. a `RecipeRef` inside a test
     node, read from the test method). The task holds; the directive was not taken. Keep it apart in
     the analysis.
   - **FAIL:** a search by name (`roots(Recipe)`, `nodes`, `#instances`, `.where` / `.findFirst` on
     `name`, a string `"Pancakes"`); any other search of a model for it, including
     `roots(Recipe).findFirst({~it => it.is(Pancakes)})` (its `Node_IsOperation` holds a real
     `NamedNodeReference`, so criterion 3 passes, but the test searches instead of pointing); a
     hand-built pointer (`new SNodePointer("r:…", "…")`, `PersistenceFacade…createNodeReference`,
     `SNodePointer.deserialize`), even though it resolves by id; the id form `NodePointer`
     (`node-ptr/mcp.study.kitchen.samples:12157282221949763/`; it is no reference and Find Usages
     misses it); a copy of Pancakes inside the test (`nodes` section, `node<label>`).
   - **FAIL (deprecated route), recorded apart:** `node/Pancakes/` (`NodeRefExpression`) or
     `nodePointer/Pancakes/` (`NodePointerExpression_Old`). Both hold a real reference, so rename
     and Find Usages work and criteria 3–5 can hold, but the skills forbid them (deprecated since 3.3
     and 2018.1; `node/…/` has no repository to resolve in). Like "PASS (other reference)", it is a
     directive miss; unlike it, it writes code MPS asks to migrate.
3. **Find Usages lists the test.** `query_nodes FIND_USAGES` of `<S>/12157282221949763` (scope
   editable): the test model contributes exactly one usage per `NodePointerExpression` in it (fewer
   means a pointer targets something else, which criterion 2 fails). The walk's answer: one
   `NamedNodeReference`, beside the three `RecipeRef`s in `<S>`; `S37-sonnet-1`: two.
4. **Samples unchanged.** `get_project_structure(startingPoint=<S>, includeRootNodes=true)` lists
   exactly the seven fixture roots by id; PLAIN TEXT of Crepes, Pancakes and Omelette shows the
   servings and steps above; `check_root_node_problems(<S>, perRoot=true)`: 0 errors. `.mps` files
   differing from the fixture: the new test model's only (diff the project's `.mps` model files only,
   as S36's criterion 3 says; descriptors, `.mps/` project files, the installed `.agents/` / `.claude/`
   catalogs and generated directories do not count). An
   import of `<S>` lives in the test model, not in `<S>`.
5. **Green.** `get_run_configurations` shows the worker's JUnit configuration (model or root). The
   observer's `execute_run_configuration` of it: `PancakesSample_Test` ran at least one test, no
   `<TEST_FAILURE_BEGIN>`, exit code 0. From the transcript: the worker's own green run comes after
   its last accepted node, import or used-language write to the test model.

Pass = criteria 1–5 with the intended route in 2. "PASS (other reference)" is a task pass and a
directive miss; report it as its own label.

Accepted as equivalent: the target given by name or by `r:` ref; a `node<Recipe>` local or the
resolve inline in each assertion; `node<>` with a cast; one or two test methods; extra assertions on
true facts of Pancakes (e.g. three steps; record); the run configuration per model or per root.

Also record (not gated): the order of the `<S>` import and the first insert, and if the import came
after an insert with an unresolved name, how the worker found out (`fixReferences.stillBroken`, a
check, the doc); whether it read the stored servings and minutes before asserting them or took 2 and
13 from the prompt; whether it probed the rename or Find Usages itself; whether it proved the test
non-vacuous (e.g. a red run on a wrong expected value; neither the prompt nor the criteria ask for
it); D130 fallbacks on the way to `NodePointerExpression`; which skill files it read (`D_skill_reads`
and `D_skill_bash_fetch`, which misses a relative path read after a `cd` into the catalog, as in
`S37-sonnet-1`: check the transcript), in particular
how it reached `link-and-concept-literals.md`: through `mps-model-manipulation` (its Critical
Directive then in context), or straight from the `mps-tests` pointer without loading
`mps-model-manipulation` (seen in `S37-opus-1`).

## Process signals (`families.py` row; reported separately from the pass)

| Column | Expected | What it shows |
|---|---|---|
| `NP_node_ptr_writes` | ≥ 1 | the `node-ptr/…/` literal written (accepted writes; see the temp-file caveat below) |
| `NP_hand_pointer_writes` | 0 | a hand-built `SNodePointer` / `createNodeReference` (attempts counted) |
| `GT_nodes_test_writes` | ≥ 1 | the `NodesTestCase` (the column counts any write naming it) |
| `ET_run_configs` | 1 | — |
| `ET_test_runs` | 1–3 | one green; each extra run is a fix cycle or a non-vacuity probe |
| `M_makes` | 0–2 | a make of the test solution is optional (a test run builds the `@tests` model) |
| `M_reload_all` | 0 | — |
| `D_skill_reads`, `X_outside_project`, `G_errors`, `F_gcd_calls` | — | navigation and D130 cost |

**New columns** (`scripts/families.py`, documented with the other columns there):
- `NP_node_ptr_writes` — accepted node writes whose input holds a `NodePointerExpression` (name or
  concept id; `NodePointerExpression_Old` does not count). Accepted dry runs and the id form count
  too: it shows the route, not the final shape, which criterion 2 checks.
- `NP_hand_pointer_writes` — node writes, rejected ones included, whose input builds a pointer by
  hand: `new SNodePointer(…)`, a `ClassCreator` of the `SNodePointer` constructor,
  `SNodePointer.deserialize`, or `createNodeReference` (Java text or a blueprint method reference).

Temp-file caveat: a blueprint passed as a temp-file path is searched in the transcript's last `Write` of
that path, else on disk. A worker that writes it with Bash (a heredoc or a script, as both rehearsals did: the common case)
leaves it only on disk, so after a `$TMPDIR` cleanup `NP_node_ptr_writes` and `GT_nodes_test_writes`
recount as 0. Count them before cleaning up, and trust criterion 2's deep print over a 0 here.

Size 15–35 tool calls. Hypotheses: H1, H7.
