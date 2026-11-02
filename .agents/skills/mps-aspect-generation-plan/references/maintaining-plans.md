# Maintaining Plans

Edit plans with the generic node tools; the plan language has no special editing tool. After every change: `mps_mcp_check_root_node_problems` on the plan model, `mps_mcp_generation` `PLAN` (`detail: "steps"`) on a governed model, then MAKE with `rebuild: true` (a plan change does not mark models dirty).

## Read before editing

- `mps_mcp_print_node(nodeReference: "<plan root>", deep: true)` gives step node references; `format: "PLAIN TEXT"` shows the plan as the editor does (`transform …`, `checkpoint …`, `fork with …`, `include plan …`).
- `PLAN` shows the effective step list with `IncludePlan` already expanded, so it cannot tell an included plan from copied steps; the plan's own nodes can.

## Recipes

| Change | Call |
|---|---|
| Insert a step at position *i* | `mps_mcp_update_node(operation: "ADD", kind: "CHILD", nodeReference: "<plan>", childRole: "steps", position: i, childJson: <step blueprint>)` |
| Move a step | `mps_mcp_alter_nodes(operation: "MOVE_CHILD", parameters: {"childNodeRef": "<step>", "position": i})` |
| Remove a step | `mps_mcp_update_node(operation: "SET", kind: "CHILD", childNodeRef: "<step>")` with `childJson` omitted |
| Replace a step in place (keeps its index) | `SET` `CHILD` with the new step's blueprint; the old node's id is gone |
| Add a language to an existing step | `ADD` `CHILD` into the `Transform`'s `entries` |
| Change `LanguageEntry.kind` (`Transform`/`TargetAt`/`Extend`) | `SET` `PROPERTY` `[entry, "kind", "TargetAt"]` |
| Rename a plan or a checkpoint | `SET` `PROPERTY` `name` on the `Plan` / the `InPlaceCheckpointSpec` (the checkpoint's `cpSpec` child) or `CheckpointDeclaration` |
| Retarget a fork / include | `SET` `REFERENCE` `[fork, "plan", "<plan ref>"]`; pass an `r:` reference when plan names repeat |
| Add or change a fork condition | `ADD` / `SET` `CHILD` in the fork's `filter` role (`references/fork-selectors.md`) |

## Extract shared steps into a reusable plan

1. Create the new plan in its **own** `@genplan` model (a plan that is first in a model can also be attached by itself).
2. For each plan that had the steps: insert `IncludePlan` (`references/composition-and-fork.md`) at the position of the first extracted step, then remove the old steps — or `SET` `CHILD` the single old step to the `IncludePlan`. Name the target by `r:` reference; a plan in another model works without a model import (the reference adds one).
3. `PLAN` on each governed model must show the same step sequence as before the extraction.

This recreates the extracted steps as new nodes. To keep a step node's identity (rarely needed for plan steps), create the new plan with a placeholder step (`Plan.steps` is `1..n`; `{"concept": "jetbrains.mps.lang.generator.plan.structure.DocumentationStep", "children": [{"role": "comments", "nodes": [{"concept": "jetbrains.mps.lang.generator.plan.structure.TextDocLine", "properties": [{"name": "text", "value": "placeholder"}]}]}]}` will do), `mps_mcp_alter_nodes` `MOVE_NODE_TO_PARENT` the step into it (`role: "steps"`), then delete the placeholder.

## Impact check before renaming or deleting

Plans are referenced in two ways, and only the first is a node reference:

1. **Node references to the `Plan`**: `Fork.plan`, `IncludePlan.plan`, `PlanContribution.plan`. `mps_mcp_query_nodes(operation: "FIND_USAGES", parameters: {"nodeReference": "<plan root>", "scope": "all"})`.
2. **Model references to the plan model**: a `GeneratorTest`'s plan argument is a `ModelPointer` whose `modelId` names the model (see the `mps-tests` skill), and attachments: DevKits (`associatedGenPlan` in `mps_mcp_get_project_structure(moduleKind: "DevKit", includeDependencies: true)`) and solutions with a `generator` facet (`mps_mcp_get_module_facets`); for a single governed model `PLAN`'s `explicitPlanSources` names them.

Then:
- **Rename a plan or checkpoint**: references follow (they are by id), but checkpoint models are named by plan and checkpoint name, so models that resolve cross-model labels against the old checkpoint need a rebuild of the producing models first.
- **Delete a plan root**: retarget or remove every reference from (1); if it is the first root of an attached model, the next `Plan` root becomes the plan, or the model has none: MPS then falls back to the default plan, silently for a facet (PLAN warns) and with a model-check error ("Failed to retrieve generation plan") for a DevKit — CLEAR or re-attach first.
- **Delete a plan model**: CLEAR every attachment from (2) first.
- **Move a root** in the model: root order decides the main plan; check `PLAN` afterwards.
