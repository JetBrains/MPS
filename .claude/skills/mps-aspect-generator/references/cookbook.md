# Cookbook recipes

Read this when: applying a recognized recipe — parsing a Java template and attaching macros to its literals, multiple roots from one input, cross-reference wiring, unique IDs, extensible generators, debugging a failing step, breaking out of a reduction loop, choosing between switch vs. reduction, or extracting an inline LOOP into a standalone reduction.

## Parse a Java template, then attach `$PROPERTY$` macros to its literals

The bridge from a parsed Java skeleton to a working, property-substituting template. Use it whenever the generator targets BaseLanguage (Java) and you want specific literals — a class name, an integer, a string — driven by the source node instead of being hard-coded.

1. **Parse the skeleton in.** `mps_mcp_parse_java_and_insert` (mode `root`) the Java source into the generator's `templates@generator` model. You now hold the template root, but nothing is parameterized yet.
2. **Locate the literal sites.** Run `mps_mcp_query_nodes` `FIND_INSTANCES` with `conceptRef = IntegerConstant` / `StringLiteral` (etc.), `scope = roots`, `roots = [<template root>]`. No external tree-walker is needed. Add a `propertyFilter` such as `{"name": "value", "value": "<the literal>"}` to pinpoint a literal by its value directly — often avoiding the disambiguation pass below. Otherwise, when a query returns several hits, disambiguate with `mps_mcp_print_node` on the handful of candidates to pick the exact literal to parameterize.
3. **Graft the macro.** Add a `PropertyMacro` as an `smodelAttribute` child of the target literal node (`mps_mcp_update_node`, `operation = ADD`, `kind = CHILD`, `childRole = "smodelAttribute"`). If the node already carries a macro, choose the child `position` deliberately — sibling macros chain in attribute-list order and that order is semantics. Set `propertyId` using the harvesting recipe in `macro-catalog.md` (PropertyMacro section); it is an encoded three-segment string, never a node reference.
4. **Validate.** Run `mps_mcp_check_root_node_problems` on the template (it decodes `propertyId` and flags a malformed value), then do a dry generation / MAKE and diff `source_gen/` to confirm the literal is now driven by the source node.

See `macro-catalog.md` for the `PropertyMacro` blueprint, the `propertyId` encoding, and the `smodelAttribute` ordering rule. When dedicated literal-locating or macro-grafting helpers land, prefer them over steps 2–3.

## Emit multiple roots from one input

A template can hold several `TemplateFragment` annotations **as long as they sit under the same parent in the same role**. Wrap the group in a scaffold root and mark each emitted subtree with its own fragment. Typical: one source module producing a class plus a companion interface.

## Cross-reference a generated node (the "R → N" recipe)

If source `R` references source `N`, and you want the generated `G(R)` to reference `G(N)`, the canonical recipe is:

1. Declare a mapping label `node_to_output` on the MappingConfiguration.
2. Tag the rule/fragment that generates `G(N)` with `labelDeclaration` = that label.
3. Inside `G(R)`, wherever the reference lives, attach a `$REF$` (ReferenceMacro). Its body returns `genContext.pick output node_to_output for (node.target)` — using `pick output` (not `get output`) so MPS resolves visibility from the reference site.

## Unique identifiers

Always pass a stable `contextNode` to `unique name from …` — the default (no context) picks unstable anchors that can change between runs. Typical context: the enclosing class/module/compilation unit.

## Extensible generators

To let other generators inject behaviour into yours:

- make the behaviour dispatchable via a `TemplateSwitch`. Extending generators add `Reduction_MappingRule` cases to the same switch (by subclassing with `extends`) or ship a companion mapping configuration with the right priority.
- put the extension point high in priority so extension rules fire before defaults.

## Avoid hand-editing generated Java

If the bug is in `source_gen/`, the fix is almost always upstream — in the template, macro body, or concept behavior. Edit there, regenerate, and re-verify. Only patch generated code when explicitly instructed or when the generator is absent (e.g. you are reading legacy bundled output).

## Debugging a failing step

1. Enable "Save transient models" (Preferences → Build, Execution, Deployment → Generator, or project-level setting).
2. Regenerate. Intermediate models appear under the project; open them via `mps_mcp_open_node` or the Project View.
3. Use the Generator Tracer tool (UI) to walk forward from an input node or backward from an output node and see which rules fired.
4. Validate the MappingConfiguration + templates with `mps_mcp_check_root_node_problems` to catch structure-level errors before runtime.

## When a reduction loops

If a reduction rule keeps matching its own output:

- change the target concept (introduce a marker subconcept in an intermediate language);
- add `DismissTopMappingRule` as the ruleConsequence when the input already looks like the output;
- reach for `$COPY_SRC$` inside the template to pass through untouched instead of re-reducing.

## Choosing: reduction on config vs. switch

- Global, "whenever this concept appears anywhere, rewrite it": put the rule on the MappingConfiguration's `reductionMappingRule`.
- Local, "at this particular template site, choose one of several rewrites": use a `$SWITCH$` macro + `TemplateSwitch`.
- Extensible: prefer switch — it is the documented extension point.

## Choosing: template declaration vs. inline template consequence

- Reused across rules / bigger than a dozen nodes → standalone `TemplateDeclaration` referenced via `TemplateDeclarationReference`.
- One-off, small subtree, local to a single rule → `InlineTemplate_RuleConsequence` or `InlineTemplateWithContext_RuleConsequence`. Keeps the rule self-contained.

## Extract inline LOOP content into a Reduction_MappingRule

When a root template grows unwieldy (everything inlined under one big node tree), pull each looped subtree into its own `TemplateDeclaration` + `Reduction_MappingRule`. The pattern: keep a tiny **delegation placeholder** at the original site, let the reduction supply the real content.

### Steps

1. **Create the standalone `TemplateDeclaration`** (e.g. `reduce_Transition`) in the same generator template model. Set its `applicableConcept` reference to the **structure-model node ref** of the source concept (`r:<structureModelUUID>(<lang>.structure)/<conceptDeclarationNodeId>`) — *not* the `c:` concept ref (see `rule-consequences.md`).
2. **Build the `contentNode`** as the desired output subtree (e.g. an `XmlElement` `<transition>`).
3. **Attach `TemplateFragment`** as an `smodelAttribute` of the produced node. Without it the reduction emits nothing — see the macro-catalog note. Use `mps_mcp_update_node(operation=ADD, kind=CHILD, childRole="smodelAttribute", childJson="{\"concept\":\"jetbrains.mps.lang.generator.structure.TemplateFragment\"}")`.
4. **Add macros inside the fragment** (`PropertyMacro` for attribute values, etc.) exactly as you would inline.
5. **Add a `Reduction_MappingRule`** to the `MappingConfiguration.reductionMappingRule` role. Set `applicableConcept` (structure-model node ref again) and a `ruleConsequence` child of concept `TemplateDeclarationReference` whose `template` ref points at the new declaration.
6. **Replace the inline subtree at the call site** with a delegation placeholder — a target node of the same type (e.g. an empty `XmlElement` with the same `tagName`) carrying two `smodelAttribute` siblings: `LoopMacro` (body: source sequence, e.g. `node.transitions`) and `CopySrcNodeMacro` (no query). The LOOP replicates the placeholder per source element; COPY_SRC copies that element through reductions, so your new rule fires.
7. **Validate then MAKE.** Run `mps_mcp_check_root_node_problems` on the `MappingConfiguration` *and* the new template, then `mps_mcp_alter_nodes MAKE` over the generator + sandbox models. Diff `source_gen/` to confirm the output is identical to before.

### Common refactor pitfalls (in order of frequency I've seen)

- Forgetting `TemplateFragment` on the produced subtree → output silently loses the elements that the inline version produced. Symptom: rule fires, but the slot is empty.
- Using `c:<langUUID>/<conceptId>` for `applicableConcept` → "Unresolved reference: c:..." problem on the rule. Always use the `r:` structure-model node ref.
- Leaving the original inline subtree in place (forgetting step 6) → both inline content *and* the reduction output appear, doubling the elements.
- Adding only `LoopMacro` (without `CopySrcNodeMacro`) on the placeholder → loop replicates the placeholder shape but no reduction fires; output contains empty placeholders.

This refactor scales: repeat per concept (Transition, then State, then …) until each reduction is a small focused template and the root template is just structural scaffolding plus delegation placeholders.

## Architecture ladder: minimal vs. idiomatic

Pick the lowest rung that fits; climb only when the trigger appears.

1. **One root template + `$PROPERTY$` / `$IF$`** — small, fixed-shape output: one source concept → one output skeleton with a few value/branch substitutions. A single `Root_MappingRule` (or one `TemplateDeclaration`); don't decompose. *Climb when:* the concept must be produced in several contexts, or the skeleton sprouts many independent variants.
2. **Reduction rules, one per concept** — when concepts recur or the language will grow. Each `Reduction_MappingRule` owns a small focused template; the `MappingConfiguration` is the dispatch table. The idiomatic default beyond a one-shot mapping (cf. the Kaja generator: one `reduce_*` per command). The LOOP-extraction recipe above is the rung 1 → 2 refactor.
3. **Generation-time specialization vs. generated runtime dispatch** — when output varies by a *closed* set known at generation time (an enum, a boolean property), specialize **at generation time** with `$IF$` / `$SWITCH$` + `TemplateSwitch` so dead branches never reach the output. Emit a runtime `switch`/dispatch **only** when the variability is open or genuinely run-time (config read at run time, user input). *Anti-pattern:* the generator emits all N variants plus a dispatch on a generated constant, where an `$IF$` on that constant would have emitted just one.
4. **Extract the stable part into a runtime solution** — the rung most often missed. Before generating a lot of code, ask *which part never changes with the model.* Engines, base classes, helpers should be **written once in a runtime solution** and merely **called** by generated code — not regenerated per model, not collapsed into a generated artifact that dispatches at run time. Kaja generates only `extends KajaFrame { perform() { …runtime calls… } }`; the robot engine lives in the `JavaKaja` runtime solution. See `references/runtime-solutions.md` in the `mps-aspect-accessories` skill root after loading that companion skill from the same origin.

**Rule of thumb: the less code a generator emits, the better.** Push fixed logic down into a runtime solution (rung 4), close generation-time variability with `$IF$`/switch (rung 3), and reserve generated runtime dispatch for variability that is genuinely open at run time.
