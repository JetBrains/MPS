# Generation Plan Checklist

Open at the end of a session that created, changed or attached a plan.

1. Each main plan is the **first** `Plan` root of its own `@genplan` model; branch / included plans come after it or live in other models. No model pairs a `Plan` with a `PlanContribution` of another plan.
2. Every language the governed models use is covered by a step (`NOT_IN_PLAN` is empty), including target languages such as `jetbrains.mps.baseLanguage`.
3. A `Checkpoint` sits between every pair of phases that share mapping labels across models.
4. Fork conditions use `ParameterEquals` on a parameter MPS fills (`module-facet`, `run-mode`); no `ConceptListSelector`. A branch does not overwrite the main branch's output.
5. Attached through `mps_mcp_update_module` `SET_GENERATION_PLAN`: a DevKit exports the plan's solution and the plan's languages, and the governed models import the DevKit directly; or a Solution has the facet and its plan model (if in the same solution) is "Do not generate". No `warnings` left unexplained.
6. `mps_mcp_generation` `PLAN` (`detail: "steps"`) on each governed model: `planSource: EXPLICIT`, your plan `applied: true` in `explicitPlanSources`, steps in the intended order.
7. `mps_mcp_check_root_node_problems` is clean on the plan models, the DevKit and the governed models.
8. MAKE of the governed modules with `rebuild: true` succeeds.
9. Before a rename or delete: `FIND_USAGES` on the plan root and the attachments listed (`references/maintaining-plans.md`).
