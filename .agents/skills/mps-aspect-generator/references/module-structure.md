# Generator module structure

Read this when: setting up a new generator module, debugging missing/unresolved concepts in templates, fixing "cannot resolve" errors in generated code, or wiring `extends` between generators.

## Layout

```
<language>/generator/
  generator.xml / module descriptor
  template/
    main@generator.mps         — root "MappingConfiguration" + templates
    util.mps                   — helper templates / utility classes
```

A generator module has its own dependencies — it must depend on the target language's runtime (e.g. `jetbrains.mps.baseLanguage`) independently of the source language.

> Two different "runtimes" show up here. (1) The **target language's runtime** (e.g. `jetbrains.mps.baseLanguage`) — a `Default` generator dependency so templates can use the output language. (2) The **source language's own runtime solution** — classes the *generated* code calls (the generator's *stable part*; MPS source or a bundled JAR). If your templates name those classes, add a `Default` generator dependency on that runtime solution too (the Kaja generator depends on `JavaKaja` for exactly this). See `references/runtime-solutions.md` in the `mps-aspect-accessories` skill root after loading that companion skill from the same origin.

## Creating the generator module

Use `mps_mcp_create_module` to add a generator to a language — do **not** hand-edit the language `.mpl` to insert a `<generators>` entry.

```
mps_mcp_create_module(
  type           = "generator",
  name           = "ignored",          # ignored for generators: the name is derived as "<parentLanguage>.generator"
  parentLanguage = "<your.language>",
  # directory is OPTIONAL — omit it to use the conventional "<parent-language-dir>/generator".
  # Pass an explicit absolute path only if you want the generator somewhere else.
)
```

In that single call the tool:
- registers a new generator under the parent language (adds it to the language descriptor's `<generators>`),
- creates the generator's `templates@generator` model with the generator-authoring imports auto-populated (the `jetbrains.mps.devkit.templates` stack), and
- seeds that model with a top-level `MappingConfiguration` named `main`.

So right after creation you can start adding rules to the `main` `MappingConfiguration` (see the role table below) — no manual model or descriptor wiring needed.

Notes:
- A language created with `withGenerator = true` already owns a generator at `<lang>/generator`. Call this tool only to give a generator-less language one, or to add an *additional* generator at a different path.
- `directory` is optional at the protocol level. An existing **empty** directory at the target (common as project scaffolding) is reused; only a **non-empty** directory or a non-directory file is rejected. (Older guidance that `directory` must always be passed — even as `""` — is obsolete.)

### When a model-to-model generator is not the right tool

If the language's final artifact is **plain text** (a source file, config, DDL, XML, a script), there are two genuinely different designs — not fallbacks for one another:
- a **model-to-model generator** (this skill) that reduces your concepts into a target *language* (e.g. `jetbrains.mps.core.xml`), which MPS then serialises via that language's TextGen; or
- a **TextGen aspect** (see `mps-aspect-textgen`) on your own concepts that emits the text directly with a custom file extension — no generator module, no target language.

Reach for TextGen when the mapping to text is direct and you need no intermediate language; reach for a generator when you want to reuse a target language's structure, constraints, type-checks, and its own generator.

## Module dependencies vs. model used-languages

The generator has **two distinct import layers** that often trip up agents.

**(A) Generator module dependencies** (in the `.mpl` / module descriptor, edit with `mps_mcp_module_dependency`). These list *runtime* modules the generator code needs at build/run time:

| Typical module dep | Scope | Why |
|---|---|---|
| JDK | Default | Any `java.lang.*`, collections |
| Annotations (`jetbrains-annotations`) | Default | `@NotNull` etc. |
| MPS.Core | Default | SModel APIs used by generator helpers |
| MPS.OpenAPI | Default | Public SModel APIs |
| `jetbrains.mps.lang.core` | Default | Core language concepts used in templates |
| *the owning language itself* | Default | So templates can reference its concepts |
| *the generator module itself* | Default | Self-reference so template utility classes see each other |

Additionally, the owning language's `.mpl` declares the **target output language** with a `generate-into` scope:

```xml
<dependency reexport="false" scope="generate-into">
  df345b11-b8c7-4213-ac66-48d2a9b75d88(jetbrains.mps.core.xml)
</dependency>
```

This tells MPS: "the generator of this language produces nodes in `jetbrains.mps.core.xml`." Add with `mps_mcp_module_dependency(..., scope="Generation Target")`.

**(B) Generator model used-languages** (inside `template/main@generator.mps`, edit with `mps_mcp_model_used_language`). These govern what concepts the *template bodies* can contain — the target output language plus the generator-authoring toolkit:

| Typical model used-language | Kind | Purpose |
|---|---|---|
| `jetbrains.mps.core.xml` (or whatever target) | language | The output language — template bodies are authored in it |
| `jetbrains.mps.devkit.templates` | devkit | One-line umbrella that pulls the generator authoring stack |
| `jetbrains.mps.lang.generator` | language | Macros, rules, `MappingConfiguration`, `TemplateDeclaration` |
| `jetbrains.mps.lang.generator.generationContext` | language | `genContext.*` expressions inside macro bodies |
| `jetbrains.mps.lang.generator.generationParameters` | language | Access to generation parameters |
| `jetbrains.mps.lang.smodel` | language | `node.ancestor<..>`, `link/C:role/`, `concept/C/` in queries |
| `jetbrains.mps.lang.quotation` | language | Quoted/anti-quoted node construction in queries |
| `jetbrains.mps.baseLanguage` (+ collections/closures/lang) | language | Host language for macro query bodies |

If you add `jetbrains.mps.devkit.templates`, most generator authoring languages come in transitively — prefer it.

**Rule of thumb:** a concept used **in a template body** (output) must be importable by the *model*; a class referenced from a generated Java helper must be reachable via the *module* classpath.

> **Do not add the *source* language as a used-language on the generator's `templates@generator` model.** Source-concept references in macro bodies and `applicableConcept` resolve via the generator's **model dependencies**, not via used-languages. Adding the source language as a used-language causes misleading `Can't find language: <source-lang>` errors as soon as that language becomes unloadable (e.g. during a rebuild or while the language module is being regenerated).

## MappingConfiguration child roles

The **`MappingConfiguration`** is the generator's top-level root. It hosts the rule lists:

| Child role | Rule concept | When to use |
|---|---|---|
| `rootMappingRule` | `Root_MappingRule` | Map a source root node to a fresh target root node |
| `reductionMappingRule` | `Reduction_MappingRule` | Replace any occurrence of a source node pattern with a template |
| `weavingMappingRule` | `Weaving_MappingRule` | Inject generated nodes into an existing target node |
| `patternReductionRule` | `PatternReduction_MappingRule` | Advanced — match by pattern rather than concept |
| `createRootRule` | `CreateRootRule` | Produce a brand-new root in the target model |
| `dropRootRule` | `DropRootRule` | Exclude a source root from the output |
| `dropAttrubuteRule` | `DropAttributeRule` | Remove an attribute in output (note: MPS keeps the historical typo "Attrubute") |
| `referenceReductionRule` | `ReferenceReductionRule` | Rewrite references without rewriting node |
| `preMappingScript` / `postMappingScript` | `MappingScriptReference` | Scripts run before/after the templates |
| `mappingLabel` | `MappingLabelDeclaration` | Declare labels used for cross-referencing generated nodes |

Each rule has an `applicableConcept` (or a pattern) and either:

- a `template` reference pointing to a standalone `TemplateDeclaration`, **or**
- for `Root_MappingRule`, a `template` reference pointing to any target-language root node (e.g. a BaseLanguage `ClassConcept`) decorated with a `RootTemplateAnnotation`, which marks that root as a template, **or**
- for `Reduction_MappingRule`, an inline `ruleConsequence` child of concept `InlineTemplateWithContext_RuleConsequence` (or `InlineTemplate_RuleConsequence`) carrying the replacement subtree directly — no separate `TemplateDeclaration` needed. Prefer the inline form for small, one-off reductions.

> A `RootTemplateAnnotation` only *marks* the root as a template — it does not by itself register a mapping. The annotated root must be referenced by a `Root_MappingRule.template`; otherwise MAKE succeeds but emits nothing for that root.

### `Root_MappingRule.keepSourceRoot`

This property is typed `Options_DefaultTrue` with enum literals `default_`/`true_`, but the type name is misleading: the **default literal is `default_`, which behaves as `false`**. Only the explicit `true_` literal keeps the source root.

- `default_` (i.e. `keepSourceRoot = false`) — the source root is **consumed**: it is excluded from the copy-roots phase and the rule's output **replaces** it. This is what you almost always want for a root-to-root mapping that transforms one document into another (e.g. replacing a `StateChart` root with an `<scxml>` document). Getting this wrong leaves a stray, un-generatable copy of the source root in the output.
- `true_` (`keepSourceRoot = true`) — the source root **persists**: in addition to the rule's output, the source root is copied into the output and may be matched by other rules.

Subtlety: if the rule body dismisses itself via `DismissTopMappingRuleException`, a consumed root is restored by copying, so dismissal does not leave the output short a root.
