---
name: mps-language-aspects-overview
description: Entry point for authoring or modifying an MPS language — index of all aspects (structure, editor, constraints, behavior, typesystem, intentions, actions, generator, textgen, accessories, generation plans), the recommended authoring order, cross-aspect call patterns, dependency/rebuild rules, and validation flow. Start here when defining a new language or when you do not know which aspect-specific skill applies.
type: reference
---

# MPS Language Aspects — Overview

## Loading companion skills

Companion names in this skill are lazy dependencies: load only those relevant to the current task. If this skill came from an MCP server, use the host's skill loader to resolve the companion's unique discovered entry URI on the same host-assigned originating server. If the host has no server-backed skill loader, stop and report that limitation; do not silently fall back to a filesystem copy. If this skill came from a filesystem catalog, load the named sibling from that same catalog at `<skills-root>/<skill-name>/SKILL.md`, even if remote skill loaders are also available. Do not invent a tool name or server endpoint.

An MPS language is a collection of **aspects**, each a separate model inside the language module. Together they define syntax, semantics, UI, and output. Edit each aspect through its own language (its DSL). This skill is the router; each aspect names a dedicated companion skill.

## Critical Directives

- **Always prefer MPS MCP tools over hand-editing `.mps` XML.** Hand edits can silently corrupt model files.
- **Keep aspect rules thin and declarative** — push logic into **behavior methods**, then call them from any aspect.
- **When something in a consumer is wrong, re-check the root cause on the language side** (structure / generator / typesystem) before patching generated Java.
- **Choose a modularity strategy before authoring** when this language must relate to others — reference, extend, embed, or adapt them. The kind you pick (referencing / extension / reuse / embedding) changes how you use structure, constraints, typesystem, and generator. See `mps-language-modularity`.

## Aspects and Where to Find Detailed Guidance

| Aspect | Aspect ID / Stereotype | Model file | Language DSL | Detailed skill |
|---|---|---|---|---|
| **Structure** | `structure` | `models/structure.mps` | `jetbrains.mps.lang.structure` | `mps-aspect-structure-concepts` |
| **Editor** | `editor` | `models/editor.mps` | `jetbrains.mps.lang.editor` | `mps-aspect-editor`, `mps-aspect-editor-menus-and-keymaps` |
| **Constraints** | `constraints` | `models/constraints.mps` | `jetbrains.mps.lang.constraints` | `mps-aspect-constraints` |
| **Behavior** | `behavior` | `models/behavior.mps` | `jetbrains.mps.lang.behavior` | `mps-aspect-behavior` |
| **Typesystem & Checking** | `typesystem` | `models/typesystem.mps` | `jetbrains.mps.lang.typesystem` | `mps-aspect-typesystem` |
| **Intentions** | `intentions` | `models/intentions.mps` | `jetbrains.mps.lang.intentions` | `mps-aspect-intentions` |
| **Actions** | `actions` | `models/actions.mps` | `jetbrains.mps.lang.actions` | `mps-aspect-actions` |
| **Generator** | `@generator` (stereotype) | `generator/template/main@generator.mps` | `jetbrains.mps.lang.generator` | `mps-aspect-generator` |
| **TextGen** | `textGen` | `models/textGen.mps` | `jetbrains.mps.lang.textGen` | `mps-aspect-textgen` |
| **Dataflow** | `dataFlow` (camelCase) | `models/dataFlow.mps` | `jetbrains.mps.lang.dataFlow` | `mps-aspect-dataflow` |
| **Migrations** | `migration` | `models/migration.mps` | `jetbrains.mps.lang.migration` | `mps-aspect-migrations` |
| **Enhancement scripts** | `scripts` | `models/scripts.mps` | `jetbrains.mps.lang.script` | `mps-aspect-migrations` |
| **Find Usages** | `findUsages` (camelCase) | `models/findUsages.mps` | `jetbrains.mps.lang.findUsages` | — |
| **Refactorings** | `refactorings` | `models/refactorings.mps` | `jetbrains.mps.lang.refactoring` | — |
| **IDE plugin** | `plugin` | `models/plugin.mps` | `jetbrains.mps.lang.plugin` | `mps-ide-plugin` |
| **Feedback** | `feedback` | `models/feedback.mps` | `jetbrains.mps.lang.feedback` | — |
| **Accessories / Dependencies** | — (no model created) | `.mpl` and per-model | — | `mps-aspect-accessories` |
| **Code inside bodies** | — | any aspect that holds BL | `baseLanguage`, `smodel`, `collections`, `closures` | `mps-model-manipulation` |
| **Inline node literals** | — | any aspect using quotations | `jetbrains.mps.lang.quotation` | `mps-quotations` |

Aspect IDs are **case-sensitive** and create models named `<langModule>.<aspectId>` with **no `@` suffix**. Stereotypes (`@generator`, `@genplan`, `@tests`, `@descriptor`) are a separate mechanism for non-aspect models. Authoritative table with usage notes and pitfalls: [aspect-model-stereotypes.md](references/aspect-model-stereotypes.md).

Additional aspects exist (Find Usages, Refactorings, Scopes Provider, Plugin). They follow the same "per-concept rule root + body" pattern — load an applicable companion skill or consult the MPS user guide when needed.

**Generation Plans** (cross-cutting, not an aspect of a single language) are covered by `mps-aspect-generation-plan`. Use when you need to control generator ordering, enable cross-model reference resolution with checkpoints, fork generation into parallel branches, or conditionally contribute plans via `PlanContribution`.

## Typical Authoring Order

1. **Structure** — concepts, properties, children, references, inheritance.
2. **Editor** — notation, cell layouts, projections; iterate alongside sample models.
3. **Constraints** — property validators, reference scopes, placement rules.
4. **Behavior** — concept methods/constructors; callable from any aspect.
5. **Typesystem & checking** — types, subtyping, semantic errors with quick fixes.
6. **Intentions** — alt-enter refactorings and shortcuts.
7. **Generator** — transform to a target language (often BaseLanguage).
8. **TextGen** — only if the target is plain text the language itself emits.
9. **Accessories / runtime / dependencies** — wire into the `.mpl`, ensure consumers can find everything.

Most iteration is circular: structure ↔ editor ↔ constraints ↔ typesystem.

## Cross-Aspect Calls

- Any aspect body can call **behavior methods** on nodes (`node.m(...)`).
- Typesystem rules call **quick-fix intentions** via `error ... fix { ... }` or by referencing `QuickFix` roots.
- Generator templates call **behavior methods** for nontrivial logic and use **mapping labels** for cross-template references.
- Constraints may call **behavior methods** for reusable checks.
- Editors may call **behavior methods** in query/if/cell-model blocks.

Keep logic in behavior methods; keep aspect rules thin and declarative.

## MCP Tools You'll Use Often

- **Exploration**: `mps_mcp_get_project_structure`, `mps_mcp_search_concepts`, `mps_mcp_get_concept_details`, `mps_mcp_print_node`.
- **Authoring**: `mps_mcp_create_root_node`, `mps_mcp_insert_root_node_from_json`, `mps_mcp_update_node`, `mps_mcp_parse_java_and_insert`.
- **Structure-specific**: `mps_mcp_alter_structure` (CREATE_CONCEPTS, CREATE_ENUM, UPDATE_CONCEPT_*), `mps_mcp_query_structure` (inheritance/aspect queries); example nodes of a concept via `mps_mcp_query_nodes` (FIND_INSTANCES).
- **Modules/models**: `mps_mcp_create_module`, `mps_mcp_create_model`, `mps_mcp_model_dependency`, `mps_mcp_model_used_language`, `mps_mcp_module_dependency`.
- **Validation**: `mps_mcp_check_root_node_problems`, language/module build via IDE MCP.

## Dependencies and Rebuilds

After adding/changing:
- **Concepts (structure)** — downstream aspects' references by concept may break; validate them. Rebuild language.
- **Behavior method signatures** — all callers (generator, typesystem, constraints, intentions, editor queries) must be re-validated. Rebuild language.
- **Generator templates** — rebuild generator module (it's separate from the language module).
- **Runtime solutions** — rebuild the runtime solution; consumers pick up changes on next regeneration or reload.
- After large changes: `mps_mcp_reload_all` to refresh MPS's runtime concept registry.

## Validation Flow

1. `mps_mcp_check_root_node_problems` on edited roots / aspect models — catches concept-level problems.
2. Build the language module (IDE MCP) — catches compile errors in generated descriptors.
3. Regenerate a sample model — catches generator/textgen issues.
4. Inspect sample in MPS UI — catches editor / usability issues.

When something in a consumer is wrong, always re-check the root cause on the language side (structure / generator / typesystem) before patching generated Java.
