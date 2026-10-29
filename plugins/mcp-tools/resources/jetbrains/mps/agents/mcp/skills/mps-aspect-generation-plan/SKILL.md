---
name: mps-aspect-generation-plan
description: Use when creating, editing, attaching, verifying or detaching an MPS generation plan — explicit ordering of generators (Transform / ApplyGenerators), checkpoints for cross-model reference resolution, forks with ParameterEquals conditions, IncludePlan composition, PlanContribution, InitModelAttributes for targetFacet routing. Covers attaching a @genplan model to models through a DevKit (exports + associated plan) or a Solution's Custom Generation facet with mps_mcp_update_module SET_GENERATION_PLAN, DevKit exports via mps_mcp_module_dependency, verifying with mps_mcp_generation PLAN, and maintaining plans (reorder, rename, extract, retarget) safely.
type: reference
---

# MPS Generation Plans

## Loading companion skills

Companion names in this skill are lazy dependencies: load only those relevant to the current task. If this skill came from an MCP server, use the host's skill loader to resolve the companion's unique discovered entry URI on the same host-assigned originating server. If the host has no server-backed skill loader, stop and report that limitation; do not silently fall back to a filesystem copy. If this skill came from a filesystem catalog, load the named sibling from that same catalog at `<skills-root>/<skill-name>/SKILL.md`, even if remote skill loaders are also available. Do not invent a tool name or server endpoint.

A **generation plan** (`Plan`) is an ordered script of generation steps: which generators run, in what order, where the transient model is persisted (checkpoints), and where generation branches (forks). Without a plan, MPS orders generators by their mutual priorities. A plan states the order once, in one place, so the languages involved need not know about each other.

**Language:** `jetbrains.mps.lang.generator.plan` (id `7ab1a6fa-0a11-4b95-9e48-75f363d6cb00`), plus `jetbrains.mps.lang.smodel` (`LanguageId`) and `jetbrains.mps.lang.modelapi` (`ModulePointer`). Inserting plan nodes adds the languages of the concepts inserted to the model's used languages by itself.

## When to use a generation plan

- Generators of independent languages must run in a fixed order.
- Cross-model generation: one model's mapping labels must be visible while another model generates (needs a shared plan and a `Checkpoint`).
- A model needs a second output from a copy of it (a `Fork`), optionally only under a condition.
- A test or tool must run only some generators (a `GeneratorTest` with an explicit plan; see the `mps-tests` skill).

## Critical Directives

- **A plan is attached as a model, never as a node.** A DevKit's plan and a Solution's Custom Generation facet both hold a *model* reference. MPS runs the model's **first `Plan` root in root order**; other `Plan` roots there serve only as `Fork` / `IncludePlan` targets. Keep one main plan per `@genplan` model; reordering roots changes the plan.
- **Attach with `mps_mcp_update_module` `operation=SET_GENERATION_PLAN`, `planModel=<model>`** on a DevKit (every model that uses it) or a Solution (every model of it). Do not hand-write the facet memento or the `.devkit` file, and do not use console Java for it. `CLEAR_GENERATION_PLAN` detaches. See `references/attaching-plans.md`.
- **A DevKit carries the plan only if it also exports the plan's solution and the languages the plan names**: `mps_mcp_module_dependency` ADD from the DevKit files a Language target into its exported languages, a Solution into its exported solutions, a DevKit into its extended devkits.
- **A facet plan beats every DevKit plan** of the solution's models. Only DevKits a model imports *directly* count; an extended DevKit's plan is not inherited. A model may get at most one main plan; extra DevKits may add `PlanContribution`s only.
- **`ConceptListSelector` is not supported**: building a plan with it throws, so every model under the plan fails to generate. Condition forks with `ParameterEquals` (`references/fork-selectors.md`).
- **An explicit plan runs only what it names.** A used language no step covers is `NOT_IN_PLAN` and stays untransformed; generators the default plan pulls in on its own (e.g. `jetbrains.mps.lang.core`) do not run. Name the target languages' generators too (e.g. a step for `jetbrains.mps.baseLanguage`).
- **Plans and checkpoints are identified by name.** Renaming a plan or a checkpoint renames its persisted checkpoint models; two plans with one name collide.
- **A plan edit does not make models dirty.** After changing or attaching a plan, make with `rebuild=true`.
- **`Plan.steps` is `1..n`**, `LanguageEntry.language` and `GeneratorModulePointer.module` are required.
- **Do not hand-edit serialized `.mps`, `.devkit` or `.msd` files.** Use MPS MCP tools.

## Lifecycle

1. **Author.** Create a `@genplan` model in a solution that holds plans (`mps_mcp_create_model`, `modelName: "<name>@genplan"`) and insert a `Plan` root with its steps; mark the model "Do not generate" if that solution's models get a facet plan. → `references/plan-setup.md`, `references/step-catalog.md`, `references/transform-and-applygenerators.md`.
2. **Compose.** Checkpoints for cross-model references (`references/checkpoints.md`); forks, `IncludePlan`, `PlanContribution` (`references/composition-and-fork.md`); conditions (`references/fork-selectors.md`); branch output routing (`references/model-attributes.md`).
3. **Attach.** DevKit (what a language ships to its users) or Solution (one project's models). → `references/attaching-plans.md`.
4. **Verify.** `mps_mcp_generation` `PLAN` with `detail: "steps"` on a governed model: `planSource: EXPLICIT`, `explicitPlanSources` naming your plan with `applied: true`, the steps in order, no `NOT_IN_PLAN`; `mps_mcp_check_root_node_problems` on the plan model, the DevKit and the governed model; then MAKE with `rebuild: true`. → `references/verification-and-discovery.md`.
5. **Maintain.** Insert, reorder, remove or retarget steps; rename; extract shared steps into an included plan; check who uses a plan before deleting or renaming it. → `references/maintaining-plans.md`.

## Related Skills

- `mps-aspect-generator` — the generator rules and templates a plan orchestrates; debugging what a step produced.
- `mps-aspect-accessories` — DevKit modules, model-level used devkits, module dependencies.
- `mps-tests` — `GeneratorTest` with an explicit plan.
- `mps-node-editing` — JSON blueprints and node edits.

## Reference Index

**Start here**: a new plan attached to models → `references/plan-setup.md`, then `references/attaching-plans.md`; changing an existing plan → `references/maintaining-plans.md`.

- Creating the plan model and the `Plan` root → `references/plan-setup.md`.
- Step concepts, aliases and properties → `references/step-catalog.md`.
- `Transform` / `LanguageEntry.kind` / `ApplyGenerators` with verified blueprints → `references/transform-and-applygenerators.md`.
- Checkpoints, cross-model mapping labels, persisted checkpoint models → `references/checkpoints.md`.
- `IncludePlan`, `Fork`, `PlanContribution`, blueprints → `references/composition-and-fork.md`.
- Fork conditions: `ParameterEquals`, the parameters MPS fills, `gentarget` → `references/fork-selectors.md`.
- `InitModelAttributes` / `targetFacet` → `references/model-attributes.md`.
- Attaching, replacing and detaching plans (DevKit, Solution), precedence, warnings → `references/attaching-plans.md`.
- Editing plans safely, impact checks, re-verification → `references/maintaining-plans.md`.
- Verifying with `PLAN`, finding plans and attachments → `references/verification-and-discovery.md`.
- Concept names and `conceptReference`s → `references/concept-quick-reference.md`.
- Model naming (`@genplan` and other stereotypes) → `references/aspect-model-stereotypes.md`.
- Final scan before finishing → `references/authoring-checklist.md`.
