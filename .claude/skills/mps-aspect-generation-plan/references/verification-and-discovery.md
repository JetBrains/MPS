# Verification and Discovery

## Verifying a generation plan

Call `mps_mcp_generation` `PLAN` with `parameters` `{"model": "<model reference or full name>", "detail": "steps"}` on a model the plan should govern. It answers what the UI's **Show generation plan** prints (and the console's `#showGenPlan`). `detail: "steps"` drops the bulky sections (engaged-generator trace, generator list, mapping configurations, notes) and is enough to check an authored plan; the default `full` answer of even a small model is over 20 KB.

- `planSource`: `EXPLICIT` when an attached plan applies, `DEFAULT` when MPS fell back to the priority-based plan. `DEFAULT` on a model you attached a plan to means the attachment did not take. `explicitPlanOrigin` is `FACET` or `DEVKIT`.
- `explicitPlanSources`: every plan attached to the model, in lookup order — `[{via: FACET|DEVKIT, by: <module or devkit>, planModel, planModelReference, planName, contribution?, problem?, resolved?, applied}]`. Check that **your** plan is there with `applied: true`: a facet plan shadows DevKit plans (`applied: false`), a plan model without a `Plan`/`PlanContribution` root is skipped (`applied: false`), `ignoreExternalPlan: true` makes every entry `applied: false`, and only DevKits the model imports directly appear. `problem` repeats why MPS could not use a plan model.
- `planDiagnostics`: the lookup's own messages, e.g. `Devkit <devkit> has associated plan <model>`, `Interpreted plan "<name>"`.
- `steps`, in order: `TRANSFORM {index, transientStereotypePrefix, transformations:[{label, templateModel, generatorModule, sourceLanguage}]}`, `CHECKPOINT {name, plan, persisted, checkpointModelName?}`, `FORK {hasCondition, branchInputStereotypePrefix, branch:[steps]}`. `IncludePlan` is already expanded. Check each `Transform` landed where you meant, every `Checkpoint` sits between the phases that share labels, and each fork's branch.
- `usedLanguages[].coverage`: `IN_PLAN`, `NOT_IN_PLAN` (no step covers a language the model uses — add it) or `NO_GENERATORS`.
- `planComputed: false` + `planError`: MPS cannot build the attached plan (a `ConceptListSelector`, a `Plan` with a contribution to another plan, DevKits that carry only contributions, a plan that forks into or includes itself); make fails the same way. `ignoreExternalPlan: true` then shows the default plan, still with `planError`. `planComputed: false` + `notDeployedLanguages`: a used language is not built.
- `ignoreExternalPlan: true` shows the priority-based plan instead (the UI's **Alt**-click).

The plan is computed now, from the plan models and generators as they are now, not taken from the last make; fork conditions are decided at generation time (`hasCondition` only).

Then:
1. `mps_mcp_check_root_node_problems` on the plan model (structure), on the DevKit (`details.moduleProblems`: unresolved plan, plan languages not exported) and on the governed model (two DevKits with main plans, an unresolvable plan model).
2. `mps_mcp_alter_nodes` `MAKE` of the governed module with `rebuild: true`. A persisted checkpoint leaves `source_gen/<model path>/<plan>-<checkpoint>.mps` (`references/checkpoints.md`).

To see what a step produced, make with `saveTransientModels: true` and list the models with `TRANSIENT_MODELS`: a step's models are named `<model>@<transientStereotypePrefix><minor>`. See `references/debugging-misgeneration.md` in the `mps-aspect-generator` skill root after loading that companion skill from the same origin.

## Finding plans and attachments

- All `Plan` roots: `mps_mcp_query_nodes` `FIND_INSTANCES` with `"conceptRef": "c:7ab1a6fa-0a11-4b95-9e48-75f363d6cb00/1820634577908471803"`; `PlanContribution`: `.../2073601368420688889`. A plan by name: `mps_mcp_search_root_node_by_name`.
- Which plan governs one model: `PLAN` → `explicitPlanSources`.
- Which modules carry plans: `mps_mcp_get_project_structure(moduleKind: "DevKit", includeDependencies: true)` (`associatedGenPlan`, `exportedLanguages`, `exportedSolutions`); solutions with a `generator` entry in `mps_mcp_get_module_facets` (`planModel`).
- Who references a plan node (forks, includes, contributions): `mps_mcp_query_nodes` `FIND_USAGES` on the `Plan` root.

Plan models are `<name>@genplan` by convention (`genplan` stereotype).
