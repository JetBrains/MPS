# S19 done criteria (observer, read-only, projectPath = run project dir)

**Prompt frozen 2026-10-29** (`promptSha256` `70b0cb09b970…`) after the observer walk and the
rehearsal in `~/MPSProjects/mcp-study/runs-s19`: `S19-opus-1` (effort `low`, 39 tool uses, 2 min 21 s)
and `S19-sonnet-1` (effort `medium`, 41 tool uses, 1 min 40 s) both PASS A–D with no fix cycle and
every `GP_*` signal on target (`S19-*.eval.md`). Rehearsal catalog `skillsSha256` `768d83a1d1ac…`.
Written for the
generation-plan work: `mps_mcp_update_module` `SET_GENERATION_PLAN` / `CLEAR_GENERATION_PLAN`, DevKit
routing in `mps_mcp_module_dependency`, `mps_mcp_generation` PLAN `explicitPlanSources` /
`detail:"steps"` / `planError`, `update_module_facet` ignored-settings warnings, and the rewritten
`mps-aspect-generation-plan` skill (`plugins/mcp-tools/docs/generation-plan-attachment-plan.md`,
`plugins/mcp-tools/docs/s19-generation-plans-scenario-plan.md`).

Fixture: `recipes-gen.tar.gz` (`../../fixtures/README.md`), the S18 fixture, sha256
`e9fd62584d0c0358affd82d729662197c1871d6a5a62618d2c421744092a96f3`, top directory `recipes-gen/`.
Ids pinned from it (re-pin whenever `recipes-misgen` is regenerated): language `mcp.study.recipes`
`d723428a-5d9b-4750-9dd9-f09f6644bf03`, generator `mcp.study.recipes.generator`
`48764314-faa5-43ee-b90d-b9d34bf9faff`, samples model `<S>` =
`r:38cfdf05-3b6a-4864-b1ba-70dca7ae70da(mcp.study.kitchen.samples)` (7 roots). Plan parameter
`module-facet` = `r:342b977c-a485-4fdb-b891-66244eff644a(jetbrains.mps.generator.extensions.common)/4969086367660211231`.

## The gap this cell measures

Before this change no tool could write a DevKit's exports or associated plan: `module_dependency`
ADD from a DevKit answered `added:true` and wrote an in-memory `dependencies` entry that a DevKit
never saves. The Custom Generation facet took any key and kept only `planModel`, silently. The skill
said "reference the Plan root node", did not say a plan is attached as a model whose first `Plan`
root runs, recommended `ConceptListSelector` (which makes plan construction throw), claimed
`PlanContribution` activates by itself, and named no fork parameter. Baseline (evidence, not a cell):
an opus Agent-tool worker with the old catalog and plugin (`proj/genplan-base1`, catalog
`f16102752500…`) finished the task in 96 tool uses, setting the DevKit through reflective console
Java (one wrong setter guessed), finding `planModel` by writing five candidate keys at once, and
dumping `jetbrains.mps.generator.extensions.common` for the parameter. With the new plugin and
catalog the same worker type needed 39–41 MCP calls, no errors and no workaround (Agent-tool
experiments `proj/genplan-new1`, `proj/genplan-new2`; the first ran on a catalog whose blueprints
still carried this cell's names, see lesson 19 below).

Known confound (D130): with the MPS source project open, `search_concepts` finds no plan-language
concept; workers reach them through the skill.

## Observer walk (2026-10-29, `proj/genplan-walk`, `proj/genplan-new1`, `proj/genplan-new2`)

1. A `Plan` inserted by `insert_root_node_from_json` checks clean; `Transform recipes` → `Checkpoint`
   → `Transform baseLanguage` generates the same `Pancakes.java` (`PORTIONS = 2`) as the default plan.
2. A make with a persisted checkpoint writes
   `solutions/mcp.study.kitchen/source_gen/mcp/study/kitchen/samples/<plan>-<checkpoint>.mps`
   lower-cased (`kitchenplan-afterrecipes.mps`) and a `checkpoints` index next to it.
3. The fork with `ParameterEquals module-facet == tests` checks clean (the `r:` reference adds the
   `jetbrains.mps.generator.extensions.common` import); `mcp.study.pantry` has no `tests` facet, so
   one `Porridge.java` is generated. PLAN shows `FORK hasCondition:true` with the branch's steps.
4. `SET_GENERATION_PLAN` on the DevKit without a `jetbrains.mps.baseLanguage` export warns
   `DevKit check warning: Associated generation plan needs language jetbrains.mps.baseLanguage which
   is not exposed by the devkit`; both Agent-tool workers exported it to silence the warning.

## Criteria (staged: A authored, B attached, C maintained and run, D made)

**A. Plans.** `get_project_structure(startingPoint=<model>, includeRootNodes=true, nodeDetail="names")`
lists roots in model order; `print_node` (JSON and PLAIN TEXT) for steps.
- Solution `mcp.study.plans` exists; `Plan` roots `KitchenPlan`, `PantryPlan`, `PantryAudit`,
  `JavaPlan` exist in its models.
- `KitchenPlan` and `PantryPlan` are each the **first** `Plan` root of their model, in two different
  models.
- `PantryPlan`'s first step is `ApplyGenerators` with a `GeneratorModulePointer` whose `moduleId` is
  `48764314-…` (or whose pointer resolves to that generator: PLAN step 1 of criterion C lists
  `mcp.study.recipes.generator.templates.*`).
- `PantryPlan`'s fork targets `PantryAudit` and is conditioned on the module having the `tests`
  facet: a `ParameterEquals` (`value` `tests`, parameter → `module-facet`), or, accepted and recorded,
  no filter and `gentarget` `tests`. A `ConceptListSelector` fails A.
- `PantryAudit` has one step that generates `mcp.study.recipes`.
- `check_root_node_problems` on each plan model: no errors (record warnings).

**B. Attachments.** `get_project_structure(startingPoint=<DevKit>, includeDependencies=true)`:
`exportedLanguages` ∋ `mcp.study.recipes`, `exportedSolutions` ∋ `mcp.study.plans`,
`associatedGenPlan` = `KitchenPlan`'s model. `get_project_structure(startingPoint=<S>,
includeDependencies=true)`: the model's `usedDevkits` ∋ `mcp.study.kitchen.devkit`.
`get_module_facets(mcp.study.pantry)`: a `generator` entry with `planModel` = `PantryPlan`'s model in
both `activeFacets` and `persistedFacets`. No `generator` facet on `mcp.study.kitchen` (it would shadow
the DevKit: fails B).

**C. Maintained, and what MPS runs.** `print_node` and `mps_mcp_generation` PLAN with
`detail:"steps"`:
- `KitchenPlan` steps: a step generating `mcp.study.recipes`, a `Checkpoint` named `afterRecipes`
  (in-place or declared), an `IncludePlan` → `JavaPlan`; no BaseLanguage step of its own.
  `PantryPlan` steps: the `ApplyGenerators`, the fork, an `IncludePlan` → `JavaPlan`.
- `JavaPlan`: any step(s) whose PLAN `TRANSFORM` carries BaseLanguage's mapping configurations
  (`Transform` or `TargetAt` entry on `jetbrains.mps.baseLanguage`, or `ApplyGenerators` of its
  generator; extra BaseLanguage-extension entries recorded, not failed).
- PLAN on `<S>`: `planSource` `EXPLICIT`; `explicitPlanSources` has `via: DEVKIT`,
  `by: mcp.study.kitchen.devkit`, `planName: KitchenPlan`, `applied: true`; steps `TRANSFORM`
  (recipes generator), `CHECKPOINT` `afterRecipes` (plan `KitchenPlan`), `TRANSFORM` (BaseLanguage).
- PLAN on `mcp.study.pantry.stock`: `EXPLICIT`, `via: FACET`, `planName: PantryPlan`, `applied: true`;
  steps `TRANSFORM` (recipes generator), `FORK` (`hasCondition: true`, branch one `TRANSFORM` of the
  recipes generator), `TRANSFORM` (BaseLanguage).
- Both: `usedLanguages` `mcp.study.recipes` `IN_PLAN`.

**D. Made.** `solutions/mcp.study.pantry/source_gen/mcp/study/generated/Porridge.java` holds
`PORTIONS = 1` and `"Simmer oats in milk"`, and `solutions/mcp.study.kitchen/source_gen/mcp/study/
kitchen/samples/kitchenplan-afterrecipes.mps` exists (existence only; never read). Intended: a plan
change does not dirty models, so a worker who made before the rename and then made again without
`rebuild` has no `afterRecipes` checkpoint and fails D (the skill's rebuild rule). A stale
`kitchenplan-recipesdone.mps` beside it is recorded, not failed.

Pass = A–D. Record the failing stage.

Accepted as equivalent: a `DeclaredCheckpointSpec` + `CheckpointDeclaration`; deleting the checkpoint
and adding one named `afterRecipes` (identity is the name; `GP_plan_edits` shows which); the DevKit
also exporting `jetbrains.mps.baseLanguage`; `<S>` keeping or dropping its direct `mcp.study.recipes`
import; a dependency `mcp.study.pantry` → `mcp.study.plans`; `PantryAudit` after `PantryPlan` in its
model or in another model; the pantry facet written with `update_module_facet` instead of
`SET_GENERATION_PLAN` (recorded, `GP_plan_facet_writes`).

Fails, decided from the transcript (`GP_attach_workarounds`, `GP_descriptor_reads`): a DevKit or facet
attachment made by console code or a text edit of a `.devkit` / `.msd` file (also a prompt violation;
the failure is the same either way).

Recorded, not gating: after A–D, the observer closes the run project (`mps_mcp_close_project`),
reopens it (`mps_control.sh open <dir>`, nothing else of the fixture open) and repeats B's reads; a
difference is a persistence finding. The integration tests already pin persistence of
`SET_GENERATION_PLAN` and the DevKit exports.

## Process signals

`families.py` columns:

| Column | Expected | What it shows |
|---|---|---|
| `GP_genplan_models` | ≥ 2 | `create_model` of `@genplan` models (one main plan per model) |
| `GT_plan_writes` | ≥ 3 | plan node writes (S18's column; it matches Plan/Transform/LanguageEntry/ApplyGenerators, not IncludePlan or renames) |
| `GP_param_equals_writes` | ≥ 1 | a `ParameterEquals` fork condition written |
| `GP_set_plan_calls` | ≥ 2 | accepted `update_module` `SET_GENERATION_PLAN` |
| `GP_devkit_export_calls` | ≥ 2 | accepted `module_dependency` answers carrying `devkitCollection` |
| `GP_devkit_used_calls` | ≥ 1 | accepted `model_used_language` with `kind: devkit` |
| `GP_plan_facet_writes` | 0 | `update_module_facet` with facet type `generator` (the unchecked route) |
| `GP_attach_workarounds` | 0 | console inputs naming the DevKit / facet API, edits or Bash rewrites of `.devkit` / `.msd` |
| `GP_descriptor_reads` | 0 | Read / Bash reads of `.devkit` / `.msd` files |
| `GP_plan_edits` | ≥ 3 | accepted node edits inside `@genplan` models (rename, the two includes) |
| `GP_plan_root_reinserts` | 0 | plan roots inserted into a `@genplan` model after the fourth, or plan roots deleted |
| `GN_plan` | ≥ 2 | PLAN calls (nudged by step 8, not forced) |
| `GP_plan_steps_detail` | ≥ 1 | PLAN with `detail: "steps"` |
| `GP_rebuild_makes` | ≥ 1 | MAKE with `rebuild: true` |
| `GP_param_model_reads` | ≤ 1 | read-tool calls naming `jetbrains.mps.generator.extensions.common` (dumping it for the parameter) |

Also read `tool_uses`, `G_errors`, `D_skill_reads`, `M_makes`.

## Lesson 19 guard (every round, before the first S19 run)

The worker's catalog must not carry this cell's answers. On the catalog `run_worker.sh` installed:
`grep -rEn 'KitchenPlan|PantryPlan|PantryAudit|JavaPlan|afterRecipes|recipesDone|Porridge|mcp\.study\.(plans|pantry|kitchen\.devkit)' <project>/.agents/skills`
must print nothing. (`mps-tests/references/generator-test/matching-and-plans.md` names
`mcp.study.recipes` and its id — an S18 leftover that gives nothing away here, since every worker
reads the id from `get_project_structure`.)

## Rehearsal (done 2026-10-29)

`run_worker.sh` per model after an `mps_control.sh restart` each, the MPS source project open beside
the run project as in S18 (D130). Both passed on the intended path: three `@genplan` models, the DevKit
exporting `jetbrains.mps.baseLanguage` as well (the DevKit warning asks for it; accepted), the fork
written with `ParameterEquals` on `module-facet`, the BaseLanguage step replaced in place by an
`IncludePlan` (`SET CHILD`), one `rebuild` MAKE of both modules. Both also added a module dependency
`mcp.study.pantry` → `mcp.study.plans` after the attach warning, and the fork condition's `r:` reference
gave `mcp.study.plans` a module dependency on `jetbrains.mps.generator.extensions` (harmless).
