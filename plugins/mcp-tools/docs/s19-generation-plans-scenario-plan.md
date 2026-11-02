# S19 — comprehensive generation plans (scenario plan, for review)

Status: draft for review (2026-10-29). Companion to `generation-plan-attachment-plan.md` (the tool
and skill decisions this cell measures).

## Why a new cell, not an S18 extension

S18 (generator tests) froze its prompt today with a sha, a rehearsal and baselines; extending it would
void them, and a one-step plan inside a generator test is not the plan lifecycle. The catalog's
**By skill** table lists `mps-aspect-generation-plan` as "checkpoints, forks, contributions — no
cell", and `mps-aspect-accessories` (DevKit exports) under **No scenario**. S19 closes both.

## What it forces

On the `recipes-gen` fixture (S18's; no new fixture): author two main plans in separate `@genplan`
models with a checkpoint, an `ApplyGenerators` step naming a generator module, a `Fork` into a second
plan conditioned by `ParameterEquals module-facet == tests`; attach one through a DevKit (exports +
associated plan + used devkit on the samples model) and one through a Solution (Custom Generation
facet) on a new solution with one Recipe; then maintain both (rename the checkpoint, extract the
BaseLanguage step into a third plan both include); make both modules.

Tools and docs on the path: `mps_mcp_update_module` `SET_GENERATION_PLAN` (new), DevKit routing
in `mps_mcp_module_dependency` (new), `mps_mcp_generation` `PLAN` `explicitPlanSources` /
`detail:"steps"` (new), `mps_mcp_model_used_language kind=devkit`, the node tools for plan nodes,
`mps-aspect-generation-plan` (all of `attaching-plans.md`, `maintaining-plans.md`,
`fork-selectors.md`, `plan-setup.md`), `mps-aspect-accessories` `module-level-deps.md`.

## Prompt (draft; the experiment prompt, unchanged in substance)

```
You are working in the current folder, which contains a JetBrains MPS project with the language
`mcp.study.recipes` (Recipe with name, servings, difficulty and a list of Steps; Step with text and
minutes), its generator `mcp.study.recipes.generator` (maps every Recipe to a Java class in package
`mcp.study.generated` with `PORTIONS` and `steps()`), and the solution `mcp.study.kitchen` with the
model `mcp.study.kitchen.samples`. MPS is running with the MCP server enabled and this project open.
Follow CLAUDE.md and the MPS skills.

Task: give the recipes models explicit generation plans and maintain them.

1. Create a solution `mcp.study.plans` that holds the plans.
2. Plan `KitchenPlan`: first generate `mcp.study.recipes`, then persist a checkpoint `recipesDone`,
   then run BaseLanguage's generators.
3. Plan `PantryPlan`: apply the generator module `mcp.study.recipes.generator` by name; then fork
   into a plan `PantryAudit` (which only generates `mcp.study.recipes`), but only when the generated
   model's module has the module facet `tests`; then run BaseLanguage's generators.
4. Models of `mcp.study.kitchen.samples` get `KitchenPlan` the way a language designer ships a plan
   to users: through a DevKit `mcp.study.kitchen.devkit` that exports the `mcp.study.recipes`
   language and the plans solution, and that `mcp.study.kitchen.samples` uses.
5. Create a solution `mcp.study.pantry` with a model `mcp.study.pantry.stock` holding one Recipe
   `Porridge` (servings 1; one step "Simmer oats in milk", 10 minutes). Every model of
   `mcp.study.pantry` gets `PantryPlan`, without a DevKit.
6. After both plans are attached, maintain them: rename the checkpoint to `afterRecipes`, and move
   the BaseLanguage step out into a separate reusable plan `JavaPlan` that both `KitchenPlan` and
   `PantryPlan` include in its place.
7. Make `mcp.study.kitchen` and `mcp.study.pantry`.
8. Done when MPS reports that `mcp.study.kitchen.samples` is generated with KitchenPlan from the
   DevKit and `mcp.study.pantry.stock` with PantryPlan, both plans show the steps above in order,
   and both makes succeed with `Porridge.java` generated with `PORTIONS = 1`.

Do not roll back changes. Do not edit .mps, .mpl, .msd or .devkit files as text. Stop and explain if blocked.
```

Prompt design notes: developer voice, fixed names, explicit "done", no reporting requirement. The only
mechanism words are MPS user terms ("DevKit", "exports", "module facet", "include", "fork",
"checkpoint", "generation plan"). It does not say "Custom Generation facet", "first root",
"`planModel`", "`ParameterEquals`", `module-facet`, or `SET_GENERATION_PLAN`: those are what the
skill must supply. The fork condition is false on `mcp.study.pantry` (no `tests` facet), so the
branch never generates a second copy of `Porridge` (review S9 of the decision review).

## Done criteria (observer, read-only, `projectPath` = run project)

1. **Plans.** `get_project_structure(includeModels)`, `search_root_node_by_name` (scope `models`) and
   `print_node` (JSON/PLAIN TEXT):
   - solution `mcp.study.plans`; `Plan` roots `KitchenPlan`, `PantryPlan`, `PantryAudit`, `JavaPlan`;
   - `KitchenPlan` and `PantryPlan` are each the **first** `Plan` root of their model, and the two
     are in different models (else one attachment silently runs the other plan);
   - `KitchenPlan` steps: a step generating `mcp.study.recipes` (`Transform`/`LanguageEntry`, kind
     `Transform`), a `Checkpoint` named `afterRecipes` (in-place or declared), an `IncludePlan` →
     `JavaPlan`; no BaseLanguage step of its own;
   - `PantryPlan` steps: `ApplyGenerators` with a `GeneratorModulePointer` whose `moduleId` is
     `48764314-faa5-43ee-b90d-b9d34bf9faff`; a `Fork` → `PantryAudit` with filter `ParameterEquals`
     (`value` `tests`, parameter → `module-facet`
     `r:342b977c-a485-4fdb-b891-66244eff644a(jetbrains.mps.generator.extensions.common)/4969086367660211231`);
     an `IncludePlan` → `JavaPlan`;
   - `PantryAudit`: one step generating `mcp.study.recipes`; `JavaPlan`: one step covering
     `jetbrains.mps.baseLanguage` (`Transform` or `TargetAt` entry).
   - `check_root_node_problems` on each plan model: no errors.
2. **Attachments.** `get_project_structure(startingPoint = DevKit, includeDependencies)`:
   `exportedLanguages` ∋ `mcp.study.recipes`, `exportedSolutions` ∋ `mcp.study.plans`,
   `associatedGenPlan` = `KitchenPlan`'s model; `mcp.study.kitchen.samples` uses the DevKit.
   `get_module_facets(mcp.study.pantry)`: `generator` facet, `planModel` = `PantryPlan`'s model, in
   both `activeFacets` and `persistedFacets`. Persistence of the DevKit: after the observer closes
   the run project and opens it again (observer lifecycle action), the same
   `get_project_structure` answer.
3. **What MPS runs.** `mps_mcp_generation PLAN` with `detail:"steps"`:
   - `mcp.study.kitchen.samples`: `planSource` `EXPLICIT`; `explicitPlanSources` has the DevKit with
     `planName` `KitchenPlan`, `applied: true`; steps `TRANSFORM` (recipes generator), `CHECKPOINT`
     `afterRecipes` (plan `KitchenPlan`), `TRANSFORM` (BaseLanguage mapping configurations);
   - `mcp.study.pantry.stock`: `EXPLICIT`, a `FACET` source `PantryPlan` applied; steps `TRANSFORM`
     (recipes generator), `FORK` (`hasCondition: true`, branch = one `TRANSFORM` of the recipes
     generator), `TRANSFORM` (BaseLanguage);
   - both: `usedLanguages` `mcp.study.recipes` `IN_PLAN`.
4. **Generated.** `solutions/mcp.study.pantry/source_gen/mcp/study/generated/Porridge.java` holds
   `PORTIONS = 1` and `"Simmer oats in milk"`; `solutions/mcp.study.kitchen/source_gen/mcp/study/
   kitchen/samples/kitchenplan-afterrecipes.mps` exists (existence only; never read). A stale
   `kitchenplan-recipesdone.mps` from a make before the rename is recorded, not failed.

Pass = 1–4. Accepted as equivalent: a `DeclaredCheckpointSpec` with a `CheckpointDeclaration`; the
DevKit also exporting `jetbrains.mps.baseLanguage` (silences a DevKit warning); the samples model
keeping or dropping its direct `mcp.study.recipes` used language; extra dependencies
(`mcp.study.pantry` → `mcp.study.plans`); `PantryAudit` next to `PantryPlan` (after it) or in its own
model; the facet written with `update_module_facet` instead of `SET_GENERATION_PLAN` (recorded).
Fails: a plan attached by console code or a text edit; a `ConceptListSelector`; an extra main plan
that shadows or replaces the one asked for.

## Process signals (`families.py`, new `GP_*` columns)

| Column | Expected | Shows |
|---|---|---|
| `GP_set_plan_calls` | ≥ 2 | `update_module` `SET_GENERATION_PLAN` accepted |
| `GP_devkit_export_calls` | ≥ 2 | `module_dependency` answers carrying `devkitCollection` |
| `GP_plan_facet_writes` | 0 | `update_module_facet` with facetType `generator` (the unchecked route) |
| `GP_attach_workarounds` | 0 | console inputs / file edits naming `DevkitDescriptor`, `setAssociatedPlan`, `associatedGenPlan`, `CustomGenerationModuleFacet`, `planModel`, or `.devkit` |
| `GP_plan_queries` | ≥ 2 | `mps_mcp_generation` `PLAN` calls |
| `GP_plan_steps_detail` | ≥ 1 | `PLAN` with `detail:"steps"` |
| `GP_param_model_reads` | 0 | reads of `jetbrains.mps.generator.extensions.common` (dumping it to find `module-facet`) |
| `GT_plan_writes` | ≥ 4 | plan node writes (reused S18 column) |

Also `tool_uses`, `G_errors`, `D_skill_reads`, `M_makes`. Baseline (evidence, not a cell): the opus
Agent-tool worker on `proj/genplan-base1` with the old catalog and plugin passed 1–8 of the
experiment in 96 tool uses, with console Java for the DevKit, five guessed facet keys, and a dump of
the parameters model.

## Harness changes

- `scenarios/S19/{worker_prompt.md,done_criteria.md}`; `run_worker.sh` usage `S1..S19`.
- `families.py` `GP_*` columns with tests in `scripts/tests/test_families.py`.
- `scenarios.md`: brief list, directory entry (fixture, forces, run-to-verify, hypotheses H1 H2 H7,
  isolation), By skill rows (`mps-aspect-generation-plan` Run S19; `mps-aspect-accessories` Run S19
  for DevKit exports, leaving **No scenario**; `mps_mcp_update_module` `SET_GENERATION_PLAN`;
  `mps_mcp_generation` PLAN Also S19), restart sets `…/S18/S19`.
- study skill `SKILL.md` / `references/scenarios.md` (S1..S19, the recipes restart set),
  `fixtures/README.md` (`recipes-gen` also for S19).
- `docs-defects.md`: D131 `get_project_structure nodeDepth` ignored with `includeNodes`
  (baseline observation); the decision-review findings that stay open (none planned).

## Isolation

`recipes-gen` has the `mcp.study.recipes` ids of S3–S7, S9, S15, S17, S18: restart MPS before S19
when one of those ran in the process, and after it before a cell that rebuilds the language (make
loads the generator, D80). Never open next to another `recipes*` copy (`proj/genplan-*` included).

## Rehearsal

As S18: the observer walk is done (`proj/genplan-walk`, plus the baseline and the post-change
Agent-tool experiment). Before freezing, one `run_worker.sh` rehearsal per model (opus effort low,
sonnet effort medium) under the standard harness (developer project closed, harness project, SMOKE),
then freeze `promptSha256`. Open question for review: is the Agent-tool post-change experiment
enough to freeze, with the `run_worker.sh` rehearsal left to the next study round?

## Review outcome (fable review, 2026-10-29) — what changed

Verdict "approve with changes"; adopted:
- **Lesson 19**: the first post-change experiment ran on blueprints carrying this cell's names
  (`KitchenPlan`, `recipesDone`, the `tests` fork, `kitchenplan-afterrecipes.mps`); the catalog now
  uses neutral examples, a second experiment (`proj/genplan-new2`) re-measured it (41 MCP calls, no
  errors, no workaround), and `done_criteria.md` carries a per-round grep guard.
- **Maintain stage measured**: `GP_plan_edits`, `GP_plan_root_reinserts`, plus `GP_genplan_models`,
  `GP_devkit_used_calls`, `GP_param_equals_writes`, `GP_rebuild_makes`, `GP_descriptor_reads`;
  `GN_plan` reused instead of a duplicate; definitions as precise as the GT_* ones; tests.
- **Prompt**: "apply the generator module … itself (not its language)" instead of "by name"; "The
  model `mcp.study.kitchen.samples` gets …" instead of "Models of …".
- **Criteria**: staged A–D; a resolving generator pointer accepted; `gentarget tests` accepted and
  recorded; any step whose PLAN TRANSFORM carries BaseLanguage's configurations accepted; the
  close/reopen persistence check demoted to a recorded observation; the rebuild requirement of D
  stated as intended; field names cited.
- **Catalog**: study skill and its scenarios reference, D80 watch row, D131 filed, By-skill rows
  (`mps-aspect-accessories` leaves **No scenario** with a scoped row).
- **Rehearsal**: required before freezing (`run_worker.sh`, opus `low`, sonnet `medium`).
