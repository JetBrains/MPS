---
name: mps-aspect-accessories
description: Wire MPS module and model dependencies, used languages, used devkits, extended languages, runtime solutions, accessory models, and language/dependency versions. Use when adding/removing module dependencies, importing languages or devkits into a model, declaring runtime solutions, or shipping accessory content visible to consumers without explicit import.
type: reference
---

# MPS Module and Model Dependencies, Accessory Models

## Loading companion skills

Companion names in this skill are lazy dependencies: load only those relevant to the current task. If this skill came from an MCP server, use the host's skill loader to resolve the companion's unique discovered entry URI on the same host-assigned originating server. If the host has no server-backed skill loader, stop and report that limitation; do not silently fall back to a filesystem copy. If this skill came from a filesystem catalog, load the named sibling from that same catalog at `<skills-root>/<skill-name>/SKILL.md`, even if remote skill loaders are also available. Do not invent a tool name or server endpoint.

This skill covers the *wiring* layer of an MPS language — the module descriptor (`.mpl`) and the per-model imports — and the special role of **accessory models** and **runtime solutions**.

**Note**: accessory wiring does not introduce a new aspect model or stereotype; it edits the existing language descriptor and model imports. When you do need to create a new aspect or stereotyped model, see [aspect-model-stereotypes.md](references/aspect-model-stereotypes.md) for the canonical aspect IDs and `@stereotype` values.

## Critical Directives

- **Prefer MCP wiring tools over hand-editing `.mpl` XML.** Hand-editing can silently corrupt the module descriptor. If you must hand-edit (e.g. for `accessoryModels`, which has no dedicated MCP tool), make a backup, edit only the targeted block, and rebuild the module immediately afterwards so MPS re-reads the descriptor.
- **Don't hand-edit `languageVersions` / `dependencyVersions`.** MPS maintains these. Use the MPS "Update language/dependency versions" action.
- **Generator modules have their own dependency list.** Add target-language deps to the generator, not the parent language.
- **Used languages auto-import** when nodes are inserted via `mps_mcp_insert_root_node_from_json`, `mps_mcp_update_node`. Manually add a used language only for hand-written code or implicit dependencies.
- **A runtime solution holds the *stable* part of generation** (code that doesn't vary with the model). Generate thin code that calls it; don't regenerate it. No MCP tool wires the language's `<runtime>` block — see `references/runtime-solutions.md`.

## Rule of Thumb — Dependency vs. Used Language

- If a concept is **used in your language definition** → add a `usedLanguage`.
- If a Java class is **referenced in hand-written code** → add a `dependency` with the right scope.

## MCP Tools Quick Reference

- Module-level: `mps_mcp_module_dependency`, `mps_mcp_get_project_structure`.
- Model-level: `mps_mcp_model_dependency`, `mps_mcp_model_used_language` (kind = `language` or `devkit`).
- Module creation: `mps_mcp_create_module(type="solution", …)` for a runtime solution.

## Common Workflow

1. **Inspect** existing wiring: `mps_mcp_get_project_structure(startingPoint=<module>)` for the module descriptor, `mps_mcp_get_project_structure` for traversal.
2. **Diagnose** the symptom against the pitfalls table (`references/pitfalls.md`).
3. **Apply** the right MCP tool at the right layer (module vs. model vs. accessory).
4. **Rebuild** the module so MPS re-reads the descriptor.

## Related Skills

- **`mps-language-inheritance`** — when you need the difference between `extendedLanguages` and `usedLanguages` in detail.
- **`mps-aspect-generator`** — generator-module dependencies are managed separately from the parent language.
- **`mps-language-aspects-overview`** — to know which aspects exist and where each one lives.

## Reference Index

- Open `references/module-level-deps.md` for the full list of `.mpl` declarations (dependencies, usedLanguages, usedDevKits, extendedLanguages, runtimeModules, generators, accessoryModels, version stamps), their scopes, and the `mps_mcp_module_dependency` scope-dispatch table.
- Open `references/model-level-imports.md` for per-model `dependencies`, used languages, used devkits, and the auto-import behavior of node-insertion tools.
- Open `references/accessory-models.md` when shipping a model that should be available to every consumer of the language without an explicit import — including the `.mpl` `<accessoryModels>` XML shape and the hand-edit caveat.
- Open `references/runtime-solutions.md` for **runtime solutions** — shipping the Java that *generated* programs call at run time (the generator's *stable part*, as MPS source or a prebuilt JAR): the Java-facet settings, the language `<runtime>`-block wiring, jar-as-stubs (`java_classes` model root + facet `<library>`), the no-MCP-tool caveat, and the Kaja/JavaKaja worked example.
- Open `references/extends-vs-uses.md` for the semantic difference between `extendedLanguages` and `usedLanguages` with examples.
- Open `references/pitfalls.md` when you need to diagnose a symptom ("Cannot resolve concept X", "ClassNotFoundException", version mismatch, generator can't find target-language concept, devkit changes not picked up).
- Open `references/module-creation.md` for `mps_mcp_create_module` — supported types, language-only companions (`withGenerator`/`withSandbox`/`withRuntime`), and the `facets` policy.
- Open `references/module-rename.md` for `mps_mcp_update_module` — what the rename cascades into, the "generator modules are not renameable" rule, and the `renameWarnings`/`renameCriticalProblems` semantics.
- Open `references/module-info-fields.md` for the shared info envelope returned by `mps_mcp_get_project_structure(startingPoint=<module>)` / `mps_mcp_create_module` / `mps_mcp_update_module` — `kind`, `facets`, `loadExtensions`, DevKit-only fields.
