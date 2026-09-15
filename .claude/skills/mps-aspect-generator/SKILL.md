---
name: mps-aspect-generator
description: Use when defining or modifying MPS generators — author a generator module, add or edit root/reduction/weaving/pattern mapping rules, attach template macros ($COPY_SRC, $LOOP, $IF, $PROPERTY, $REF, $SWITCH, $MAP_SRC, $WEAVE, $INSERT, $LABEL, $TRACE, $VAR), wire mapping labels, build template switches, write pre/post mapping scripts, navigate `genContext`, or debug "rule didn't fire", missing references, empty output, infinite reduction loops, and generated-Java compile failures.
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

- **Edit the generator, not `source_gen/`.** If a bug appears in generated Java, the fix almost always belongs in a template, macro body, or concept behavior. Patch generated output only when explicitly told to.
- **`applicableConcept` must be a structure-model node ref** (`r:<modelUUID>(<lang>.structure)/<nodeId>`), never the `c:<langUUID>/<conceptId>` form. Wrong form → silent `Unresolved reference: c:...`. See `references/rule-consequences.md`.
- **A `TemplateDeclaration` used as a reduction target requires at least one `TemplateFragment`** on the produced subtree, or the rule fires and emits nothing.
- **Module dependencies vs. model used-languages are two distinct layers** (see `references/module-structure.md`). Adding a class to the wrong one yields "cannot resolve" in generated Java or unusable concepts in templates.
- **Macros attach via the `smodelAttribute` child role, and co-located macros are chained in child order — order is semantics.** `$IF$` before `$LOOP$` gates the whole loop in the outer context; `$LOOP$` before `$IF$` evaluates the condition per iteration. The `$LOOP$` + `$COPY_SRC$` pair is order-insensitive only because `$COPY_SRC$` is terminal — don't generalize. See `references/macro-catalog.md`.
- **Reductions can self-loop** when they produce their own concept — break out with `DismissTopMappingRule`, a marker subconcept, or `$COPY_SRC$`.
- **Cross-rule/cross-template references go through mapping labels.** Direct references survive only within a single fragment.

## Common-path workflow

1. **Locate or create the generator module.** List languages with `mps_mcp_get_project_structure(moduleKind="Language")` and find yours by `name`: each language entry carries a `generators` array (unconditional — not gated on `includeDependencies`) listing every owned generator's `name` and `reference`. Prefer this over `startingPoint="<language-name>"` — a language and its owned generator share a base name, so a *name* starting point can resolve to the **generator** module instead, and then the `generators` array is never emitted. (If you already hold the language's persistent `reference`, `startingPoint="<reference>"` resolves by id and is also unambiguous.) To go the other direction, each generator entry carries a `sourceLanguage` field (only when `includeDependencies=true`) with the owning language's `name` and `reference`; follow it with `mps_mcp_get_project_structure(startingPoint="<sourceLanguage.reference>", includeModels=true)`. If no generator exists yet: `mps_mcp_create_module(type="generator", parentLanguage="<lang>")`.
2. In `template/main@generator.mps` (the `generator` model stereotype — `name@generator`; see [aspect-model-stereotypes.md](references/aspect-model-stereotypes.md) for all model identifiers), add the used languages you target (`jetbrains.mps.devkit.templates` is the quickest umbrella) and ensure the target language is also a *module* `generate-into` dependency on the language `.mpl` (see `references/module-structure.md`).
3. Create or edit the `MappingConfiguration` root (`mps_mcp_create_root_node` with the FQN in `references/concept-fqns.md`).
4. Add the rule(s):
   - `Root_MappingRule` for whole-root mapping;
   - `Reduction_MappingRule` for in-place rewrites (inline `RuleConsequence` or `TemplateDeclarationReference`);
   - `Weaving_MappingRule` to add content into an already-generated container.
5. Author target-language templates; attach macros as `smodelAttribute` children. Mark the produced subtree with `TemplateFragment` (or `RootTemplateAnnotation` on a target root).
   - **A `RootTemplateAnnotation` alone does NOT register a root mapping.** It only marks a target root as a template; a `Root_MappingRule` (step 4) whose `template` reference points to that annotated root is also required. Without the rule, generation silently produces no output for that root — MAKE still reports success.
6. Declare any mapping labels on the `MappingConfiguration`; tag writers (`labelDeclaration` ref or `$LABEL$` macro); read with `genContext.get/pick output <label> for (<input>)` inside `$REF$` or other queries.
7. Validate with `mps_mcp_check_root_node_problems` on the `MappingConfiguration` and every template (re-run with `onlyNodesWithProblems = false` if siblings look "missing").
8. `mps_mcp_alter_nodes MAKE` over the generator and a sample model; **read the generated text** (see *Reading generator output* below). Use the Generator Tracer / `$TRACE$` macros to bisect misgenerated fragments.

If MPS MCP tools are unavailable, do not hand-edit serialized `.mps` files unless explicitly asked — inspect only and report.

## Reading generator output

After a `MAKE`, generators write Java (and TextGen artifacts like `.xml`, `.scxml`) to the owning module's `source_gen/` directory. **No `mps_mcp_*` tool reads this output** — but the MPS MCP server exposes the same generic IDE file tools, so generated text is readable over MCP *today*. Don't drop to a raw shell `find`/`cat`.

**Path convention.** Output lands at `<module-dir>/source_gen/<model-namespace>/<java-package>/<File>.java`, where the model namespace's dots become directory separators. Example: model `Kaja.sandbox` in solution `Kajak.sandbox` → `samples/robot_Kaja/solutions/Kajak.sandbox/source_gen/Kaja/sandbox/sandbox/Karel.java` (trailing `sandbox/` is the Java package). TextGen artifacts (`.scxml`, etc.) follow the same layout. A module may override its output root, so if `source_gen/` is not beside the module descriptor, check the module's output path.

**Tools.** Use the generic IDE file tools (exposed by the MPS MCP server, also by IDEA's; pass `projectPath` to disambiguate) — not `mps_mcp_*`:
- `find_files_by_glob` — discover what was generated, e.g. project-root-relative `**/Kajak.sandbox/source_gen/**/*.java`. Note this matches only `.java`; use `list_directory_tree` to also see TextGen artifacts (`.scxml`, `trace.info`, …).
- `list_directory_tree` — browse the output directory.
- `read_file` — read a specific generated file (output is line-capped; use its `max_lines`/`start_line` args for large files).

**Staleness.** On-disk `source_gen/` reflects the *last* MAKE. Re-run `MAKE` before reading so the output matches the current model, otherwise you may read stale text.

## Related Skills

- `mps-aspect-generation-plan` — priorities, checkpoints, plan contributions; pair this with priority-ordering questions.
- `mps-aspect-textgen` — converting the final model to plain text (last pipeline stage).
- `mps-aspect-behavior` — put non-trivial per-concept logic in behavior methods called from macros.
- `mps-model-manipulation` — smodel-access idioms (`SPropertyAccess`, `SLinkAccess`, `Node_GetChildrenOperation`) inside query bodies.
- `mps-quotations` — quotation/anti-quotation syntax for building nodes inside `$INSERT$` and `$MAP_SRC$.mapperFunction`.
- `mps-baselanguage` — host language for macro query bodies and `RulesFunctions_*` helpers.

## Reference Index

- Generator module structure (descriptor deps, model used-languages, MappingConfiguration roles): `references/module-structure.md` — read when setting up a generator or fixing "cannot resolve"/missing-concept issues.
- RuleConsequence catalog (`TemplateDeclarationReference`, `Inline*`, `AbandonInput`, `DismissTop`) + the critical `applicableConcept` ref-form gotcha: `references/rule-consequences.md`.
- Macro catalog and JSON blueprints for COPY_SRC/COPY_SRCL/PROPERTY/IF/LOOP/CALL: `references/macro-catalog.md` — read before attaching any macro.
- `$MAP_SRC$` in depth (replace input, mapperFunction, postMapperFunction, label-on-site): `references/macro-map-src.md`.
- `$REF$` / ReferenceMacro in depth (label-based and name-based forms, return types): `references/macro-reference.md`.
- Less-common macros — `$WEAVE$`, `$VAR$`, `$TRACE$`, `$LABEL$`, `$INSERT$`: `references/macros-rare.md`.
- Query-body subconcepts and their implicit parameters (`IfMacro_Condition`, `SourceSubstituteMacro_*`, etc.): `references/query-bodies.md`.
- Mapping labels — declare/write/read pattern, `get` vs `pick` vs `get list`: `references/mapping-labels.md`.
- Weaving rules — `contextNodeQuery`, when to use vs. reductions: `references/weaving-rules.md`.
- Template switches — when to switch, `extends` across generator modules: `references/template-switches.md`.
- Pattern reduction rules — structural-pattern matching with typed holes: `references/pattern-rules.md`.
- Mapping scripts (pre / post) — bulk passes and `modifiesModel`: `references/mapping-scripts.md`.
- Utility models, template functions, fragments — where to place non-trivial generator-time helpers: `references/utility-models.md`.
- `genContext` operations catalog (every `GenerationContextOp_*` with editor alias and purpose): `references/generation-context.md`.
- Generation algorithm — pipeline stages (selection → implicit grouping/ordering → explicit priorities → step-by-step transformation → TextGen), micro-steps, weaving vs. reduction ordering: `references/algorithm.md`.
- Cookbook recipes — multi-root, cross-ref, unique IDs, extensible generators, loop-extraction refactor: `references/cookbook.md`.
- Common failures — symptom-to-cause-to-fix table: `references/common-failures.md`.
- Validated concept FQNs and minimal `MappingConfiguration` blueprint: `references/concept-fqns.md`.
- Calling from/into the generator — behaviors, `RulesFunctions_*`, utility models: `references/calling-into-generator.md`.
