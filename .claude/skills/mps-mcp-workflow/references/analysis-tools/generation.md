# `mps_mcp_generation` — plans, transient models, traces

`mps_mcp_generation` does what the UI's Show Generation Plan, the Project view's Transient models folder and the Generation Trace tool do. `operation` is one of `PLAN`, `TRANSIENT_MODELS`, `TRACE`, `DROP_TRANSIENT_MODELS`; `parameters` is required, pass `{}` when nothing applies. For the debugging recipe, see `references/debugging-misgeneration.md` in the `mps-aspect-generator` skill root after loading that companion skill from the same origin.

## Operations

| Operation | `parameters` | Answers |
|---|---|---|
| `PLAN` | `model` (reference or full name), `ignoreExternalPlan` (default `false`) | the plan make would use: `planSource` `EXPLICIT`/`DEFAULT`, ordered `steps` (`TRANSFORM` with `transientStereotypePrefix`, `CHECKPOINT`, `FORK` with `branch`), `generators`, `usedLanguages[].coverage` |
| `TRANSIENT_MODELS` | `model` (optional: an original by reference or name, a transient by reference) | per original model: `transientModule`, `traceAvailable`, `models:[{name, reference, stereotype, kind, stereotypePrefix, minor, branch, roots}]`; plus `checkpoints` |
| `TRACE` | `nodeReference`, `direction` `FORWARD`/`BACKWARD`, `groupBy` `CHANGE`/`NODE`, `compactTemplates`, `includeEmptySteps` (these three default to the IDE tracer's settings), `maxChanges` (default 200) | `originalInputNode?`, `changesTotal`, per step `{input, output, inputReference, outputReference, changes}` (`nodes` with `groupBy: NODE`); each change `{input, output, templates:[{reference, concept, presentation, role, templateRoot, templateModel, generatorModule}]}` |
| `DROP_TRANSIENT_MODELS` | `includeCheckpoints` (default `true`) | `droppedModules`, `droppedModels`, `droppedCheckpointModels` |

Only `DROP_TRANSIENT_MODELS` changes anything. `TRANSIENT_MODELS`, `TRACE` and `DROP_TRANSIENT_MODELS` are refused while a make runs.

## Transient models

- **Only a make that keeps them produces them.** `mps_mcp_alter_nodes` `MAKE` with `"saveTransientModels": true` keeps the transient models and the generation trace of that make only; omitted, the IDE setting (`saveTransientModelsSetting` in `TRANSIENT_MODELS`) applies. The MAKE result's `transientModels` block lists the transient `modules` and `traceAvailableFor`.
- **The next make discards them all**, whichever tool, console command, run configuration or user starts it; `droppedPrevious: true` in a MAKE result says it happened. Finish reading before you make again.
- **Naming.** `<model>@0` is the input copy; a step writes `<model>@<transientStereotypePrefix><minor>`, the prefix matching `PLAN`'s step. A step that changes nothing writes no model. `loaded: false` (no `roots`) marks a model swapped out of memory; reading it loads it back. Fork branches reuse later main-branch prefixes: tell their models apart by `reference` and `branch` (0 = main), never by name.
- **Reference only.** Bare-name lookups skip transient models, so pass the `reference` from `TRANSIENT_MODELS` (an `i:` model id). `mps_mcp_print_node`, `mps_mcp_query_nodes` and `mps_mcp_get_project_structure` (`startingPoint` = the reference) read them; write tools refuse them with `NOT_EDITABLE`.
- **Memory.** Kept models are expensive for big models: make only the models you debug, and `DROP_TRANSIENT_MODELS` when done.
- **Checkpoints are shared.** The `checkpoints` module belongs to every open project: `checkpoints` lists any project's checkpoint models, a make keeps them, and `DROP_TRANSIENT_MODELS` drops them for all projects unless `includeCheckpoints: false`.

## Reading a trace

- `role` of a template: `RULE` (the mapping rule that fired), `TEMPLATE_CALL` (template call, weave or call-site macro, or a rule's template reference), `LOOP` (loop macro), `TEMPLATE` (the parent node of a template fragment), `UNKNOWN`. `templateRoot` is the root to open with `mps_mcp_open_node` or print.
- Interpreted generators record `LOOP` and `TEMPLATE`; compiled ones only rules and calls. Property and reference macros are never recorded.
- Walk `BACKWARD` from a node of a transient model; from a node of the original model it finds no steps. `FORWARD` works from either.
- A node with no record of its own is traced through its nearest recorded ancestor, and copied nodes have no records, so a change can name an enclosing node.
- `compactTemplates: true` keeps only the innermost template per template root, which can hide the enclosing rule; pass `false` to see it.
- `truncated: true` means more than `maxChanges` entries; raise it.
