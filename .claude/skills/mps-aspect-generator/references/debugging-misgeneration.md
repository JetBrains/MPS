# Debugging misgeneration

Read this when: generated output is wrong and you need the rule, macro or template that produced a node, or the state of the model after a given generation step. Replaces the UI's Save Transient Models toggle and Generation Trace tool.

1. **Make with transients kept.** `mps_mcp_alter_nodes` `MAKE` with `{"models": ["<sample model>"], "saveTransientModels": true}`. Make only the models you debug: kept models cost memory. Check `transientModels.traceAvailableFor` names the model. `droppedPrevious: true` means earlier transient references are gone.
2. **List the step models.** `mps_mcp_generation` `TRANSIENT_MODELS` with `{"model": "<sample model>"}`. `<model>@0` is the input copy; `<model>@<prefix><minor>` belong to the `PLAN` step whose `transientStereotypePrefix` is `<prefix>` (`mps_mcp_generation` `PLAN` lists the steps); fork branches reuse later main-branch prefixes, so tell their models apart by `branch`. On the main branch (`branch: 0`) the highest `minor` is the final output. Steps that changed nothing have no model, and a step can write several (one per pre-script, mapping pass and post-script). `loaded: false` (no `roots`) is a model swapped out of memory; reading it loads it back.
3. **Find the wrong node.** `mps_mcp_get_project_structure` with `startingPoint` = the step model's `reference`, `includeRootNodes: true`, `nodeDetail: "names"`; then `mps_mcp_print_node` on a root (`format: "PLAIN TEXT"` to read it as code, JSON for child references). Walk back through earlier step models to find the first one where the node is wrong.
4. **Trace it back.** `mps_mcp_generation` `TRACE` with `{"nodeReference": "<transient node reference>", "direction": "BACKWARD", "compactTemplates": false}` (`groupBy`, `compactTemplates` and `includeEmptySteps` default to the IDE tracer's settings). Each step lists `changes` with the `input` node, the `output` node and the `templates` that did it: `role` `RULE` is the mapping rule that fired, `LOOP` a `$LOOP$` macro, `TEMPLATE_CALL` a template call or weave, `TEMPLATE` the parent node of a template fragment. `originalInputNode`, when present, is the node of your model it came from. Only the steps that created or changed the node appear; steps that copied it have no record.
5. **Open the rule.** `mps_mcp_print_node` on the template's `reference`, or on `templateRoot.reference` for the whole `MappingConfiguration` or template root (a rule's `template` reference names its template). `mps_mcp_open_node` shows it to the user. Fix the rule or template, never the transient model: write tools refuse it with `NOT_EDITABLE`.
6. **Re-make and compare.** Repeat from step 1. `DROP_TRANSIENT_MODELS` with `{}` frees the models when you are done.

`TRACE` `FORWARD` from a node of the original model shows what it became, step by step; `BACKWARD` from it finds nothing. `groupBy: "NODE"` gives one entry per node on the far side of the walk; `compactTemplates: true` keeps only the innermost template per template root and can hide the rule.

## Lifecycle rules

- **The next make drops everything but checkpoints.** Every make, from any tool, the console's `#make`, a run configuration or the user, first discards all transient models and traces. Their references stop resolving (`NOT_FOUND`), and `TRACE` from a node of the original model answers `NOT_FOUND` with the line to re-make. Finish reading first.
- **Reference only.** Address transient models and nodes by the `reference` from `TRANSIENT_MODELS` or `TRACE`; bare-name lookups skip them, also for full names like `<model>@1_1`.
- **`DROP_TRANSIENT_MODELS` frees memory.** It defaults to `includeCheckpoints: true`.
- **The `checkpoints` module is shared** by every open project. A make keeps its models (`<model>@<checkpoint name>`, under `checkpoints` in `TRANSIENT_MODELS`); `DROP_TRANSIENT_MODELS` drops them for all projects unless you pass `includeCheckpoints: false`.

Before generation even starts, `mps_mcp_check_root_node_problems` on the `MappingConfiguration` and templates catches structure-level errors.
