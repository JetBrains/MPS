# The generation algorithm (why ordering matters)

Read this when: a rule "doesn't fire" or fires in unexpected order, debugging infinite reduction loops, deciding when weaving vs. reduction is correct, or inspecting transient models.

Understanding the algorithm saves hours of debugging rules that "don't fire" or fire in the wrong order.

## Generation pipeline

One generation run has the following stages. Steps 2–4 are planning steps that happen before any model transformation begins; they produce the ordered list of generation steps that step 5 then executes.

1. **Generator selection.** MPS finds every generator required by concepts actually in the input model, then iterates: for every output language a template mentions, pull in *its* generator too, until no new languages appear. You almost never need to configure this by hand.
2. **Implicit grouping.** The mapping configurations of one generator run together; **different generators run in different steps** unless a `same as` priority or a plan step joins them. Two generators that must share a step (an extending switch, a mapping label written by one and read by the other) need an explicit generation plan with one step holding both (`references/template-switches.md`).
3. **Implicit ordering.** A generator runs *no later than* the generators of its target languages (the languages its templates emit): if generator A emits concepts of language B, A runs before or together with B's generator. The ordering comes from target languages, not from language extension. The rule is weak ("before or together"), but MPS makes it strict, so A runs in an earlier step than B's generator; they share a step only when the rules form a cycle (each emits the other's language). For any other order, give the models an explicit generation plan (`mps-aspect-generation-plan`).
4. **Priority ordering.** Mapping priorities declared in a generator module's properties (`strictly before`, `same as`, `before or same` …), if present, refine the implicit ordering from steps 2–3. No MCP tool writes them; use a generation plan instead. One priority group = one **generation step**.
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

- A rule never re-reduces a copy of the input node it reduced, so `$COPY_SRC$` of the input inside its own reduction template is safe. But a template that builds a *fresh* node of the concept its rule matches gets that node reduced again in the next micro-step — an endless loop. Emit another concept, or add a condition that the fresh node fails.
- You cannot read the output model during a rule's query — output is incrementally built and only partially valid until the micro-step completes. Use mapping labels instead of trying to observe output directly.
- Weaving is the exception — it's explicitly allowed to modify existing output.
- When several reductions match a node, the **first applicable one wins**: rules whose `applicableConcept` is the node's exact concept come first (in MappingConfiguration order), then the rules that match it through `applyToConceptInheritors = true`. A rule on an abstract or super concept never fires for subconcepts unless `applyToConceptInheritors` is `true` (default `false`).

## Inspecting a real run

- **The plan.** `mps_mcp_generation` `PLAN` with `{"model": "<model>"}` lists the steps in order: which mapping configurations share a step (`transformations[].label`, e.g. `<generator model>.*`), the `CHECKPOINT`s of an explicit plan, and `conflicts` / `ignoredPriorityRules` when the priorities of a `DEFAULT` plan do not hold. It is computed now and lists every mapping configuration, also those an `isApplicable` condition drops at generation time.
- **Each step's output.** `mps_mcp_alter_nodes` `MAKE` with `"saveTransientModels": true`, then `mps_mcp_generation` `TRANSIENT_MODELS` with `{"model": "<model>"}`: `<model>@0` is the input copy and `<model>@<transientStereotypePrefix><minor>` are the models of the `PLAN` step with that prefix; a step that changed nothing has no model. List a model's roots with `mps_mcp_get_project_structure` (`startingPoint` = its `reference`) and read them with `mps_mcp_print_node`.
- **Which rule made a node.** `TRACE` `BACKWARD` from a node of a step model. See `references/debugging-misgeneration.md`.
