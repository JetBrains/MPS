# Verification and Discovery

## Verifying a generation plan

Call `mps_mcp_generation` `PLAN` with `parameters` `{"model": "<model reference or full name>"}` on a model the plan should govern. It answers what the UI's **Show generation plan** prints (and the console's `#showGenPlan`):

- `planSource`: `EXPLICIT` when the plan is attached, `DEFAULT` when MPS fell back to the priority-based plan. `EXPLICIT` also carries `explicitPlanOrigin`: `FACET` (the module's Custom generation facet) or `DEVKIT` (an imported devkit's plan). `DEFAULT` on a model you attached a plan to means the attachment did not take.
- `planDiagnostics`: the lookup's own messages, e.g. `Devkit <devkit> has associated plan <model>@genplan`, with a `reference` to the plan model.
- `steps`, in order: `TRANSFORM` `{index, transientStereotypePrefix, transformations:[{label, templateModel, generatorModule, sourceLanguage, mappingConfigurations}]}`, `CHECKPOINT` `{name, plan, persisted, checkpointModelName?}`, `FORK` `{hasCondition, branchInputStereotypePrefix, branch:[steps]}`. Check that each `Transform` landed in the step you meant and that every `Checkpoint` sits between the phases that share labels.
- `usedLanguages[].coverage`: `IN_PLAN`, `NOT_IN_PLAN` (the plan does not cover a language the model uses — add it to a `Transform`) or `NO_GENERATORS`.
- `ignoreExternalPlan: true` shows the legacy priority-based plan instead (the UI's **Alt**-click); `externalPlanIgnored` confirms it.

The plan is computed now, from the generators deployed now, not retained from the last make. `planComputed: false` with `notDeployedLanguages` means a used language is not deployed. Fork conditions are not printable (`hasCondition` only), and mapping configurations with an `isApplicable` condition are all listed, because both are decided at generation time.

To see what a step actually produced, make the model with `saveTransientModels: true` and list its models with `TRANSIENT_MODELS`: a step's models are named `<model>@<transientStereotypePrefix><minor>`. See `references/debugging-misgeneration.md` in the `mps-aspect-generator` skill root after loading that companion skill from the same origin.

## Finding existing plans

Use `mps_mcp_query_nodes` (FIND_INSTANCES) with `"conceptRef": "c:7ab1a6fa-0a11-4b95-9e48-75f363d6cb00/1820634577908471803"` to list all `Plan` root nodes in the project.

Use `mps_mcp_search_root_node_by_name` with the plan name when you know it.

Generation plan models in this project follow the naming pattern `<name>@genplan.mps` and use the `genplan` model stereotype.
