# S15 fixture: the generator and its injected defect (recipes-misgen.tar.gz)

Built 2026-10-23 by the observer from `fixtures-r12/recipes-full.tar.gz` (the passing S1 project with
3 Ingredients, 3 Recipes and 1 Cookbook), opened in MPS 2026.1 (build 261.25134, `myMPS-fix`
sources) as `~/MPSProjects/mcp-study/proj/fixture-recipes-misgen`, edited only through
`scripts/mcp_call.py` → MPS MCP. Every model change, as sent, is in `DEFECT.log` next to this file;
a rebuild replays it and then re-pins this file and `done_criteria.md`, because new node ids are
minted per call. Tarball: `~/MPSProjects/mcp-study/fixtures/recipes-misgen.tar.gz`, sha256
`ec971bc6005223ae608ae37b30851aabdc2f0eb0710b84a299b3448cc8709199`, `classes_gen` and `source_gen`
included, top directory `recipes-misgen/`.

The generator is authored by the observer, not taken from a worker's S6 pass, so the rule and the
trace shape are known in advance. `recipes-full` already holds an empty generator module (the S1
language was created with one): the template goes into its model
`mcp.study.recipes.generator.templates@generator`, not into a new `template/main@generator`.

## The generator (S6's task, done once)

| element | node | content |
|---|---|---|
| generator module | `48764314-faa5-43ee-b90d-b9d34bf9faff(mcp.study.recipes.generator)` | interpreted: `generator/source_gen/mcp/study/recipes/generator/Generator.java` extends `TemplateModuleInterpreted2` |
| template model | `r:98539ed4-bf63-4715-a114-6d1e7a8ca01d(mcp.study.recipes.generator.templates@generator)` (`<T>`) | two roots: `main`, `RecipeClass` |
| `MappingConfiguration` `main` | `<T>/12157282221657534` | one root mapping rule |
| `Root_MappingRule` (presentation `map Recipe`) | `<T>/4956319657763003572` | `applicableConcept` Recipe, `template` → `RecipeClass`. The concept has no `name` property: the rule is named by its presentation and node id |
| template root `ClassConcept` `RecipeClass` | `<T>/4956319657762963862` | `packageName` `mcp.study.generated`; `RootTemplateAnnotation` (Recipe) `…/4956319657762978634`; `$PROPERTY$` name ← `node.name` `…/4956319657762978635` |
| field `public static final int PORTIONS` | `<T>/4956319657762963864`, initializer `IntegerConstant` `…/4956319657762963866` | `$PROPERTY$` value `…/4956319657762978650` (body `StatementList` `…/4956319657762978652`, `ExpressionStatement` `…/4956319657762978653`) |
| method `public static String[] steps()` | `<T>/4956319657762963868` | `return new String[]{"step"}`; the `StringLiteral` `…/4956319657762963872` carries `$LOOP$` ← `node.steps` `…/4956319657762978665`, then `$PROPERTY$` value ← `node.text` `…/4956319657762978680` (in that order) |

The language also declares `jetbrains.mps.baseLanguage` as a generation target (`DEFECT.log` §5),
so the generator module checks clean; without it every module check carries the warning "'mcp.study.recipes'
must specify the language 'jetbrains.mps.baseLanguage' as a generation target", a distractor this
cell does not measure.

## D1 — the injected defect (active)

The `PORTIONS` macro's query `node.servings` is replaced by `node.steps.size`: one `update_node ADD
CHILD` into role `expression` of `ExpressionStatement` `<T>/4956319657762978653` (single
cardinality, so it replaces the `DotExpression` `…/4956319657762978654`; the new one is
`…/4956319657763249149`). It compiles, checks clean, and is wrong for every recipe whose step count
differs from its `servings`.

The stock samples all have 3 steps, so D1 would print a constant 3 and no recipe would be right. One
sample was changed (`DEFECT.log` §1): Crepes gets a fourth step, so its step count equals its
`servings` and it is right by coincidence, and the wrong values differ by recipe.

Samples model `r:38cfdf05-3b6a-4864-b1ba-70dca7ae70da(mcp.study.kitchen.samples)` (`<S>`):

| root | node | `servings` | steps (in order) | `PORTIONS` with D1 | fixed |
|---|---|---|---|---|---|
| Ingredient `Flour` / `Milk` / `Egg` | `<S>/12157282221949750` / `…751` / `…752` | | | | |
| Recipe `Crepes` | `<S>/12157282221949753` | 4 | Whisk flour, milk and eggs into a smooth batter · Let the batter rest in the fridge · Fry thin pancakes on both sides · Fill with jam and fold into quarters (new, `<S>/4956319657762963861`, 2 min) | 4 (right by coincidence) | 4 |
| Recipe `Pancakes` | `<S>/12157282221949763` | 2 | Mix flour with milk, then fold in the eggs · Ladle the batter onto a hot buttered pan · Flip once bubbles appear on the surface | 3 | 2 |
| Recipe `Omelette` | `<S>/12157282221949772` | 1 | Beat the eggs with a splash of milk · Pour into a buttered pan and cook gently · Fold and slide onto a plate | 3 | 1 |
| Cookbook `Weeknight Basics` | `<S>/12157282221949781` | | | | |

`check_root_node_problems` in the fixture: the samples model (`perRoot`) 0 errors / 0 warnings on all
7 roots; the template model and the modules `mcp.study.recipes`, `mcp.study.recipes.generator` and
`mcp.study.kitchen` no problems (the template's `String` types carry two *info* "It's recommended to
use string type" entries, which are not problems).

## D2 — held back

Not injected. Enable it only if a rehearsal shows D1 fixed without a trace (the generator has one
rule, so the rule is guessable): the `$LOOP$` query `node.steps` becomes `node.steps.skip(1)`, so
every `steps()` loses its first step. A loop output traces to the `LoopMacro` with `role: LOOP` and
`templateRoot` `RecipeClass` (verified on D1's fixture: the `StringLiteral` of Pancakes' first step
in `@2_0` traces to `Loop`/`LOOP`), which a worker can only learn from the trace. With D2 the cell
needs two fixes, and `done_criteria.md` criteria 1–3 must be re-pinned.

## The tool walk the pins come from (2026-10-23, on the fixture before tarring)

The walk ran after D1 (`DEFECT.log` §4) and before the generation-target change (§5). Both
rehearsals then ran on the tarred state (§5 included) and reported the same plan step (index 2,
prefix `2_`), the same step models (`@0`, `@2_0`, `@6_5`, `@6_7`) and the same trace (`map Recipe`,
`RULE`, `main`): `runs-s15/S15-opus-1.eval.md`, `S15-sonnet-1.eval.md`. Every `TRANSIENT_MODELS`
answer, in the walk and in both runs, had `saveTransientModelsSetting: false`.

- `mps_mcp_generation PLAN {model: <S>}` → `planSource: DEFAULT`, six `TRANSFORM` steps; step
  `index` 2, `transientStereotypePrefix` `2_`, holds the one transformation
  `mcp.study.recipes.generator.templates.*` (mapping configuration `main`); step 1 is
  `jetbrains.mps.lang.core.generator.template.main.*`, steps 3–6 are baseLanguage. `usedLanguages`:
  `mcp.study.recipes` with `coverage: IN_PLAN`.
- `alter_nodes MAKE {models: [<S>], saveTransientModels: true}` → `transientModels`: `saved: true`,
  `droppedPrevious: false`, one module `mcp.study.kitchen@transient<n>` with 4 models,
  `traceAvailableFor: ["mcp.study.kitchen.samples"]`.
- `TRANSIENT_MODELS {model: <S>}` → `mcp.study.kitchen.samples@0` (`INITIAL_CLONE`), `@2_0`, `@6_5`
  and `@6_7` (main branch; `@6_7` is the final output, the only one `loaded` with `roots: 7`).
  References have the form `<transient-module-uuid>/i:<hex>(mcp.study.kitchen@transient<n>/mcp.study.kitchen.samples@2_0)`;
  `<n>` and the uuid change per make. `@0` holds the three Recipes; `@2_0` and `@6_7` (the two printed) hold
  the classes `Crepes` / `Pancakes` / `Omelette` instead (the Ingredients and the Cookbook pass
  through), with `PORTIONS` 4 / 3 / 3 already in `@2_0`. The wrong value first appears in `@2_0`.
- `TRACE {nodeReference: <Pancakes' PORTIONS IntegerConstant in @6_7>, direction: BACKWARD,
  compactTemplates: false}` → one step, `@0` → `@2_0`, one change: input Recipe `Pancakes` →
  output `ClassConcept` `Pancakes` (the integer constant has no record of its own and is reported
  through its nearest recorded ancestor), `templates`: one entry, the `Root_MappingRule` `map Recipe`
  `<T>/4956319657763003572`, `role: RULE`, `templateRoot` the `MappingConfiguration` `main`
  `<T>/12157282221657534`, `generatorModule` `mcp.study.recipes.generator`. No `TEMPLATE` entry
  (property macros are never recorded). Without the three options the answer is the same: this
  MPS's tracer defaults are `groupBy: CHANGE`, `compactTemplates: false`, `includeEmptySteps: false`.
  The same query from the node in `@2_0` gives the same change.
- `TRACE BACKWARD` from Recipe `Pancakes` in `<S>` → no steps, with the note to walk FORWARD or
  start from a transient node.
- `update_node SET PROPERTY` on the `@2_0` initializer → `NOT_EDITABLE`. The message says "Edit the
  original model 'mcp.study.kitchen.samples' … instead": for a misgeneration the fix is in the
  generator, so a worker who follows that line literally breaks criterion 4.
- `DROP_TRANSIENT_MODELS {}` → `droppedModels: 4`, `droppedCheckpointModels: 3`; `TRANSIENT_MODELS
  {}` then lists no `originals` and no `checkpoints`. A later language make re-creates three
  checkpoint models (`checkpoints/mcp.study.recipes.{constraints,structure,typesystem}@descriptorclasses`).
- `read_ide_log sinceMinutes minLevel=WARN` over the walk: nothing from the MCP tools.
