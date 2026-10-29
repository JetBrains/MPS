# Setting Up a Generation Plan Model

## Where the plan lives

- Put plans in a **solution** (often one solution for all plans of a language family). A DevKit that ships the plan must export that solution, so do not put the plan into the solution whose models it governs unless you also mark the plan model "Do not generate" (a facet plan governs every model of its solution, the plan model included, and does not cover the plan language).
- One `@genplan` model per main plan. MPS uses the model's **first** `Plan` root; extra `Plan` roots in the same model are only fork / include targets (a branch plan next to its main plan is fine). Never pair a `Plan` with a `PlanContribution` that points at another plan in one model: MPS refuses it.

## Create the model and the plan

1. `mps_mcp_create_model(moduleName: "<plans solution>", modelName: "<name>@genplan")`. The `genplan` stereotype is a convention MPS does not enforce; keep it, it is how plans are recognized. Optional: `mps_mcp_update_model(operation: "SET_DO_NOT_GENERATE")` so make skips the model (harmless either way unless a facet plan governs it, see above).
2. `mps_mcp_insert_root_node_from_json` with a `Plan` root. The insert adds the languages of the concepts it creates (`jetbrains.mps.lang.generator.plan`, `jetbrains.mps.lang.smodel` for `LanguageId`, `jetbrains.mps.lang.modelapi` for `ModulePointer`) to the model's used languages itself.
3. `mps_mcp_check_root_node_problems(nodeReference: "<plan model>")` must be clean.

## The `Plan` root concept

`name` (the plan's identity: checkpoint models and diagnostics use it, so keep it unique), ordered `steps` (`1..n`), optional `modelAttributes` (`InitModelAttributes`, see `references/model-attributes.md`), and a deprecated `forkAs` child (do not use; `PlanContribution` replaced it).

Skeleton (a full, real three-step example — transform a DSL, checkpoint, transform BaseLanguage — is "the plan" in `references/transform-and-applygenerators.md`):

```json
{
  "concept": "jetbrains.mps.lang.generator.plan.structure.Plan",
  "properties": [{ "name": "name", "value": "<PlanName>" }],
  "children": [{ "role": "steps", "nodes": [ /* Transform, ApplyGenerators, Checkpoint, Fork, IncludePlan ... */ ] }]
}
```

A `LanguageId` needs the language's `namespace` and `languageId` (uuid): `mps_mcp_get_project_structure` gives a Language module's reference as `<uuid>(<name>)`. Remember the target languages: a plan that transforms a DSL into BaseLanguage needs a later step for `jetbrains.mps.baseLanguage` (`PLAN` then shows BaseLanguage's mapping configurations in that one step); without it the BaseLanguage extensions stay untransformed.

## Next

Attach the plan: `references/attaching-plans.md`. Verify: `references/verification-and-discovery.md`.
