# The generation algorithm (why ordering matters)

Read this when: a rule "doesn't fire" or fires in unexpected order, debugging infinite reduction loops, deciding when weaving vs. reduction is correct, or inspecting transient models.

Understanding the algorithm saves hours of debugging rules that "don't fire" or fire in the wrong order.

## Generation pipeline

One generation run has the following stages. Steps 2–4 are planning steps that happen before any model transformation begins; they produce the ordered list of generation steps that step 5 then executes.

1. **Generator selection.** MPS finds every generator required by concepts actually in the input model, then iterates: for every output language a template mentions, pull in *its* generator too, until no new languages appear. You almost never need to configure this by hand.
2. **Implicit grouping.** Mapping configurations without explicit ordering constraints between them are assigned to the same generation step by default.
3. **Implicit ordering.** The language-extension hierarchy creates implicit ordering constraints: a generator for an extending language is scheduled before the generator for the extended language, with no declarations needed. Consequence: you almost never need explicit `<mapping priorities>` constraints between a language and the language it extends.
4. **Priority ordering.** Explicit `<mapping priorities>` constraints (`strictly before`, `same as`, `before or same` …), if present, refine or override the implicit ordering from steps 2–3. One priority group = one **generation step**.
5. **Step-by-step transformation.** Each step transforms `input → transient output`, then the output becomes the next step's input. A step runs: pre-scripts → templates → post-scripts.
6. **TextGen.** Once the final model is in text-generator-aware languages, MPS produces text files (one file per root).
7. **Post-processing.** External tool hooks etc.

## A single step, in detail

A step is not one pass but several **micro-steps**, each a single traversal of the current model:

1. **First micro-step only**: fire `CreateRootRule` / conditional root rules. They inject brand-new roots independent of any input.
2. **Root mapping**: for each input root, try `Root_MappingRule`s; first match wins. If none matches and no `DropRootRule` matches, the root is carried forward unchanged.
3. **Copy unmapped input roots** into the output.
4. **Reductions and pattern reductions apply inline** while copying — they are not a separate stage. Every time a node is copied, MPS checks whether any reduction/pattern rule matches; if so, it replaces the node by the template's output. Reductions keep applying until a fixed point (watch for infinite loops).
5. **Weaving rules** run after copy/produce — they see the already-populated output and inject extra children.
6. **Delayed mappings** (e.g. `$MAP_SRC$` with post-execution semantics) run.
7. **Reference revalidation** — cross-references in the output are resolved now that all nodes exist.

The step repeats micro-steps until a fixed point (no new transformations).

## Consequences for rule authors

- A reduction that produces a node of the *same* concept will match itself — infinite loop. Either change concept or use `dismiss top mapping rule` / `abandon input` consequences.
- You cannot read the output model during a rule's query — output is incrementally built and only partially valid until the micro-step completes. Use mapping labels instead of trying to observe output directly.
- Weaving is the exception — it's explicitly allowed to modify existing output.
- If two independent reductions match the same node, MPS errors out. Disambiguate via `applicableConcept` subtyping or `conditionFunction`.
- `priority` constraints are coarse: they partition rules into *priority groups*, not a total order. Within a priority group all mappings run together. Add a dedicated intermediate language if you need a strict hand-off.

## Inspecting a real run

- **The plan.** `mps_mcp_generation` `PLAN` with `{"model": "<model>"}` lists the steps in order: which mapping configurations share a step (`transformations[].label`, e.g. `<generator model>.*`), the `CHECKPOINT`s of an explicit plan, and `conflicts` / `ignoredPriorityRules` when the priorities of a `DEFAULT` plan do not hold. It is computed now and lists every mapping configuration, also those an `isApplicable` condition drops at generation time.
- **Each step's output.** `mps_mcp_alter_nodes` `MAKE` with `"saveTransientModels": true`, then `mps_mcp_generation` `TRANSIENT_MODELS` with `{"model": "<model>"}`: `<model>@0` is the input copy and `<model>@<transientStereotypePrefix><minor>` are the models of the `PLAN` step with that prefix; a step that changed nothing has no model. List a model's roots with `mps_mcp_get_project_structure` (`startingPoint` = its `reference`) and read them with `mps_mcp_print_node`.
- **Which rule made a node.** `TRACE` `BACKWARD` from a node of a step model. See `references/debugging-misgeneration.md`.
