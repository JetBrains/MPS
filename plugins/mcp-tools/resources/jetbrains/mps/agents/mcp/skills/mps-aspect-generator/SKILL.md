---
name: mps-aspect-generator
description: Use when defining or modifying MPS generators — author a generator module, add or edit root/reduction/weaving/pattern mapping rules, attach template macros ($COPY_SRC, $LOOP, $IF, $PROPERTY, $REF, $SWITCH, $MAP_SRC, $WEAVE, $INSERT, $LABEL, $TRACE, $VAR), wire mapping labels, build template switches, write pre/post mapping scripts, navigate `genContext`, formalize the expected output as a `GeneratorTest`, inspect transient step models and trace nodes forward or back to see what a generator does, or debug "rule didn't fire", missing references, empty output, infinite reduction loops, and generated-Java compile failures.
type: reference
---

# MPS Generator Aspect

## Loading companion skills

Companion names in this skill are lazy dependencies: load only those relevant to the current task. If this skill came from an MCP server, use the host's skill loader to resolve the companion's unique discovered entry URI on the same host-assigned originating server. If the host has no server-backed skill loader, stop and report that limitation; do not silently fall back to a filesystem copy. If this skill came from a filesystem catalog, load the named sibling from that same catalog at `<skills-root>/<skill-name>/SKILL.md`, even if remote skill loaders are also available. Do not invent a tool name or server endpoint.

A **generator** transforms models written in the source language into models of one or more *target* languages (usually BaseLanguage or another DSL). It is a separate MPS module — a *generator module* — owned by the language and driven by **templates**: target-language code snippets annotated with **macros**.

## Generator architecture (read first)

A generator translates from the problem domain (source language) toward the implementation domain, often as a **cascade**: each generator lowers the abstraction level by producing its target language, which becomes the next generator's input, until a base language (usually BaseLanguage) is reached and TextGen emits plain text.

A generator definition has a **stable part** and a **variable part**:
- the **stable part** does not change with the model being generated — engines, base classes, helpers. Provide it **once in a runtime solution** (an MPS `Solution` the language declares as a runtime module — as MPS-authored source or a bundled JAR), not as a template.
- the **variable part** *is* the templates + macros, which react to the input model and choose different output.

Idiomatic generators keep the stable part **out** of the templates and emit thin code that **calls into** the runtime solution. Before adding rules, decide how much is stable: see the **architecture ladder** in `references/cookbook.md` and the stable-vs-variable split + wiring in `references/runtime-solutions.md` in the `mps-aspect-accessories` skill root after loading that companion skill from the same origin (worked example: the `Kaja` language + its `JavaKaja` runtime).

## Critical Directives

- **Test first, then change the generator: when a `GeneratorTest` is wanted, see it fail before your first generator edit, even if reading the templates has already shown you the bug.** It is wanted when the user asks for generator tests, or describes the output informally (prose, a sketch of the wanted Java) and asks or allows you to formalize it; otherwise write none and offer one in your report (`references/generator-test.md` in the `mps-tests` skill root after loading that companion skill from the same origin). The order:
  1. Write the expected model from the description, not from the templates; show its roots as PLAIN TEXT and name the choices an ambiguous description left you.
  2. Run it on the unchanged generator (a new generator needs its `MappingConfiguration` and a MAKE of the language first; the red is then the unchanged input root): it must fail with a mismatch naming what you will change. `Node: null vs <root>` is not that red: no generator ran, or generation failed.
  3. Only then edit the generator, MAKE it, and run the test green.

  A test written after the fix has never failed, so it proves nothing: if you already edited the generator, revert the edit or break the expected model on purpose (*Proving a test is not vacuous* in `references/generator-test/running-and-failures.md` in the `mps-tests` skill root after loading that companion skill from the same origin), see the red, then restore. Run existing `GeneratorTest`s after the change, once you have read the transient models: the run's make drops them.
- **Observe generation instead of inferring it from templates.** After making the language and its generator, MAKE a small sandbox model (not a test input: make skips those "Do not generate" models) with `saveTransientModels: true`, read the model of the step your generator runs in (`mps_mcp_generation` `PLAN` gives its prefix; the highest minor under it is the step's final output), and `TRACE` a node `FORWARD` (what it became) or `BACKWARD` (which rule made it). `source_gen/` can differ from what your templates wrote, because later generators reduce it. Do this whenever you change a rule you did not write, the output surprises you, or a first fix failed; it is the standard way to see a generator work, not a last resort: `references/debugging-misgeneration.md`.
- **Edit the generator, not `source_gen/`.** If a bug appears in generated Java, the fix almost always belongs in a template, macro body, or concept behavior. Patch generated output only when explicitly told to.
- **`applicableConcept` must be a structure-model node ref** (`r:<modelUUID>(<lang>.structure)/<nodeId>`), never the `c:<langUUID>/<conceptId>` form. Wrong form → silent `Unresolved reference: c:...`. See `references/rule-consequences.md`.
- **A `TemplateDeclaration` used as a reduction target requires at least one `TemplateFragment`** on the produced subtree, or the rule fires and emits nothing.
- **Module dependencies vs. model used-languages are two distinct layers** (see `references/module-structure.md`). Adding a class to the wrong one yields "cannot resolve" in generated Java or unusable concepts in templates.
- **Macros attach via the `smodelAttribute` child role, and co-located macros are chained in child order — order is semantics.** `$IF$` before `$LOOP$` gates the whole loop in the outer context; `$LOOP$` before `$IF$` evaluates the condition per iteration. The `$LOOP$` + `$COPY_SRC$` pair is order-insensitive only because `$COPY_SRC$` is terminal — don't generalize. See `references/macro-catalog.md`.
- **Reductions can self-loop** when they produce their own concept — break out with `DismissTopMappingRule`, a marker subconcept, or `$COPY_SRC$`.
- **Cross-rule/cross-template references go through mapping labels** (read by a `$REF$`). A plain template reference is redirected to the output of its target when the same template application produced it; otherwise, if the target has a name, MPS resolves it by that name through the output reference's scope — enough for a name visible there (a local of the method the fragment lands in); anything else needs a label.

## Common-path workflow

When a `GeneratorTest` is wanted (first Critical Directive), write it and see it fail after step 3 (MAKE first if the generator is new) and before step 4 adds or changes a rule or template; step 9 then runs it green.

1. **Locate or create the generator module.** List languages with `mps_mcp_get_project_structure(moduleKind="Language")` and find yours by `name`: each language entry carries a `generators` array (unconditional — not gated on `includeDependencies`) listing every owned generator's `name` and `reference`. Prefer this over `startingPoint="<language-name>"` — a language and its owned generator share a base name, so a *name* starting point can resolve to the **generator** module instead, and then the `generators` array is never emitted. (If you already hold the language's persistent `reference`, `startingPoint="<reference>"` resolves by id and is also unambiguous.) To go the other direction, each generator entry carries a `sourceLanguage` field (only when `includeDependencies=true`) with the owning language's `name` and `reference`; follow it with `mps_mcp_get_project_structure(startingPoint="<sourceLanguage.reference>", includeModels=true)`. If no generator exists yet: `mps_mcp_create_module(type="generator", parentLanguage="<lang>")`.
2. In `template/main@generator.mps` (the `generator` model stereotype — `name@generator`; see [aspect-model-stereotypes.md](references/aspect-model-stereotypes.md) for all model identifiers), add the used languages you target (`jetbrains.mps.devkit.templates` is the quickest umbrella). The module-level side, the language's Generation Target, is step 8.
3. Create or edit the `MappingConfiguration` root (`mps_mcp_create_root_node` with the FQN in `references/concept-fqns.md`).
4. Add the rule(s):
   - `Root_MappingRule` for whole-root mapping;
   - `Reduction_MappingRule` for in-place rewrites (inline `RuleConsequence` or `TemplateDeclarationReference`);
   - `Weaving_MappingRule` to add content into an already-generated container.
5. Author target-language templates; attach macros as `smodelAttribute` children. Mark the produced subtree with `TemplateFragment` (or `RootTemplateAnnotation` on a target root).
   - **A `RootTemplateAnnotation` alone does NOT register a root mapping.** It only marks a target root as a template; a `Root_MappingRule` (step 4) whose `template` reference points to that annotated root is also required. Without the rule, generation silently produces no output for that root — MAKE still reports success.
6. Declare any mapping labels on the `MappingConfiguration`; tag writers (`labelDeclaration` ref or `$LABEL$` macro); read with `genContext.get/pick output <label> for (<input>)` inside `$REF$` or other queries.
7. Validate with `mps_mcp_check_root_node_problems` on the `MappingConfiguration` and every template (re-run with `onlyNodesWithProblems = false` if siblings look "missing").
8. **Declare each output language as a Generation Target of the *language* (not the generator) before the MAKE.** For Java output: `mps_mcp_module_dependency(operation="ADD", moduleName="<language>", targetModule="jetbrains.mps.baseLanguage", scope="Generation Target")`; add one more per BaseLanguage extension or other language whose nodes the templates emit directly (e.g. `jetbrains.mps.baseLanguage.collections`), not for languages used only in macro queries. The `.mpl` serializes it as `scope="generate-into"`.

   Without it MAKE still succeeds, but consumers of the language miss the target's runtime modules, and the module check warns on the generator: "'<language>' must specify the language '…' as a generation target to include its runtime modules into compilation". A check before the language's first MAKE shows this warning even when the target is declared — ignore it until then. See `references/module-structure.md`.
9. `mps_mcp_alter_nodes MAKE` over the language and its generator, then observe a sandbox sample model (Critical Directive *Observe generation*): read your step's model and **the generated text** (see *Reading generator output* below), and `TRACE` whatever differs from what you expect (`references/debugging-misgeneration.md`). Then run the `GeneratorTest`s, if any exist.

If MPS MCP tools are unavailable, do not hand-edit serialized `.mps` files unless explicitly asked — inspect only and report.

## Reading generator output

After a `MAKE`, generators write Java (and TextGen artifacts like `.xml`, `.scxml`) to the owning module's `source_gen/` directory. **No `mps_mcp_*` tool reads this output** — but the MPS MCP server exposes the same generic IDE file tools, so generated text is readable over MCP *today*. Don't drop to a raw shell `find`/`cat`.

**Path convention.** A generated Java class lands at `<output root>/<package path>/<Class>.java`: the output root is `<module-dir>/source_gen/` unless the module overrides it (if `source_gen/` is not beside the module descriptor, check the module's output path), and the package path is the class's package with dots turned into directories. The package is the generated root class's `Classifier.packageName` when that is set, otherwise the name of the model being generated — the input model, not the generator's template model. To choose the package, set `packageName` on the template's root class (a constant, or a `$PROPERTY$` macro); then remake the input model with `rebuild: true`. `virtualPackage` only places a root in a project-tree folder: it is copied from the input root and changes neither the package nor the path. Example: model `Kaja.sandbox.sandbox` in solution `Kajak.sandbox`, template root `map_Script` without `packageName` → `samples/robot_Kaja/solutions/Kajak.sandbox/source_gen/Kaja/sandbox/sandbox/Karel.java`, `package Kaja.sandbox.sandbox;`; with `packageName` `d73.tpl` the same class lands at `source_gen/d73/tpl/Karel.java`. TextGen artifacts (`.scxml`, …) land under the model's path unless their TextGen declares another.

**Tools.** Use the generic IDE file tools (exposed by the MPS MCP server, also by IDEA's; pass `projectPath` to disambiguate) — not `mps_mcp_*`:
- `find_files_by_glob` — discover what was generated, e.g. project-root-relative `**/Kajak.sandbox/source_gen/**/*.java`. Note this matches only `.java`; use `list_directory_tree` to also see TextGen artifacts (`.scxml`, `trace.info`, …).
- `list_directory_tree` — browse the output directory.
- `read_file` — read a specific generated file (output is line-capped; use its `max_lines`/`start_line` args for large files).

**Staleness.** On-disk `source_gen/` reflects the *last* MAKE. Re-run `MAKE` before reading so the output matches the current model, otherwise you may read stale text.

## Testing a generator

A `GeneratorTest` root (`jetbrains.mps.lang.test.generator`) in a `@tests` model generates an input model and matches the output against an expected model: it states the intended output formally and then guards it. When to write one is the first Critical Directive. Open `references/generator-test.md` in the `mps-tests` skill root after loading that companion skill from the same origin. Not a `NodesTestCase`.

## Related Skills

- `mps-tests` — generator tests (`GeneratorTest`), see *Testing a generator* above.
- `mps-aspect-generation-plan` — explicit step order, two generators in one step, checkpoints, plan contributions; use it whenever generators must run in a given order or together.
- `mps-aspect-textgen` — converting the final model to plain text (last pipeline stage).
- `mps-aspect-behavior` — put non-trivial per-concept logic in behavior methods called from macros.
- `mps-model-manipulation` — smodel-access idioms (`SPropertyAccess`, `SLinkAccess`, `Node_GetChildrenOperation`) inside query bodies; for a macro query body open only `references/dot-expression-basics.md` in the `mps-model-manipulation` skill root after loading that companion skill from the same origin.
- `mps-quotations` — quotation/anti-quotation syntax for building nodes inside `$INSERT$` and `$MAP_SRC$.mapperFunction`.
- `mps-baselanguage` — host language for macro query bodies and `RulesFunctions_*` helpers.

## Reference Index

**Start here — most common case**: one reduction rule with template macros → read only `references/macro-catalog.md`, plus `references/concept-fqns.md` for the blueprint shape; a brand-new generator module → only `references/module-structure.md`; a rule that did not fire or generated code that will not compile → only `references/common-failures.md`.

- Generator module structure (descriptor deps, model used-languages, MappingConfiguration roles): `references/module-structure.md` — read when setting up a generator or fixing "cannot resolve"/missing-concept issues.
- RuleConsequence catalog (`TemplateDeclarationReference`, `Inline*`, `AbandonInput`, `DismissTop`) + the critical `applicableConcept` ref-form gotcha: `references/rule-consequences.md`.
- Macro catalog and JSON blueprints for COPY_SRC/COPY_SRCL/PROPERTY/IF/LOOP/CALL: `references/macro-catalog.md` — read before attaching any macro.
- `$MAP_SRC$` in depth (replace input, mapperFunction, postMapperFunction, label-on-site): `references/macro-map-src.md`.
- `$REF$` / ReferenceMacro in depth (label-based and name-based forms, return types): `references/macro-reference.md`.
- Less-common macros — `$WEAVE$`, `$VAR$`, `$TRACE$`, `$LABEL$`, `$INSERT$`: `references/macros-rare.md`.
- Query-body subconcepts and their implicit parameters (`IfMacro_Condition`, `SourceSubstituteMacro_*`, etc.): `references/query-bodies.md`.
- Mapping labels — declare/write/read pattern, `get` vs `pick` vs `get list`: `references/mapping-labels.md`.
- Weaving rules — `contextNodeQuery`, when to use vs. reductions: `references/weaving-rules.md`.
- Template switches — roles, error default, overriding a case from another generator: `references/template-switches.md`.
- Pattern reduction rules — structural-pattern matching with typed holes: `references/pattern-rules.md`.
- Mapping scripts (pre / post) — bulk passes and `modifiesModel`: `references/mapping-scripts.md`.
- Utility models, template functions, fragments — where to place non-trivial generator-time helpers: `references/utility-models.md`.
- `genContext` operations catalog (every `GenerationContextOp_*` with editor alias and purpose): `references/generation-context.md`.
- Generation algorithm — pipeline stages (selection → implicit grouping/ordering → step-by-step transformation → TextGen), micro-steps, which rule wins, weaving vs. reduction ordering: `references/algorithm.md`.
- Cookbook recipes — multi-root, cross-ref, unique IDs, extensible generators, loop-extraction refactor: `references/cookbook.md`.
- Observing and debugging generation — keep transient models, read a step's output, trace a node forward to what it became or back to the rule that produced it, learn an unfamiliar generator (`mps_mcp_generation`): `references/debugging-misgeneration.md`.
- Common failures — symptom-to-cause-to-fix table: `references/common-failures.md`.
- Validated concept FQNs and minimal `MappingConfiguration` blueprint: `references/concept-fqns.md`.
- Calling from/into the generator — behaviors, `RulesFunctions_*`, utility models: `references/calling-into-generator.md`.
