---
name: mps-aspect-structure-concepts
description: Define concepts, interface concepts, enumerations, and constrained data types in an MPS language's `structure` aspect. Covers smart-reference detection, alias rules, cardinality, INamedConcept usage, bulk creation, and the full `mps_mcp_alter_structure` / `mps_mcp_query_structure` reference. Use when authoring or modifying a language's structure model.
type: reference
---

# MPS Structure Aspect — Concepts

Concepts (`ConceptDeclaration`), interface concepts (`InterfaceConceptDeclaration`), enumerations (`EnumerationDeclaration`), and constrained data types (`ConstrainedDataTypeDeclaration`) are root nodes in a language's `structure` model. They use the language `jetbrains.mps.lang.structure`.

## Critical Directives

- **Implement `INamedConcept` instead of declaring `name` directly.** A `name` property declared directly on a concept is an antipattern in MPS — implement `jetbrains.mps.lang.core.structure.INamedConcept` instead.
- **Smart reference check (CRITICAL)**: before setting a `conceptAlias`, determine whether the concept is an "Implicit Smart Reference". If it has exactly one mandatory reference and no properties or children of its own, **do NOT set a `conceptAlias`** — the concept should be transparent in the editor and completion menu so the user types the target's name directly. Examples: variable references, method calls, routine calls.
- **Leave alias empty on transparent collections too** (e.g. `StatementList`).
- **Set alias on concepts that can be root** — that's how the user reaches them through the new-root menu.
- **Always rebuild the language** with `mps_mcp_alter_nodes MAKE` and `rebuild="true"` after structural changes, so the new concepts are discoverable by runtime tools.

## Prerequisites

* Requires the target language and its `structure` model.
* Uses the `jetbrains.mps.lang.structure` language.
* Concepts, interface concepts, and enums are root nodes in the `structure` model.

## Workflow

1. **Locate language**: use `mps_mcp_get_project_structure` to find the language and its `structure` model.
2. **Module creation**: if needed, create the module via `mps_mcp_create_module` using an absolute path.
3. **Define elements**:
    * **ConceptDeclaration**: core entities.
    * **InterfaceConceptDeclaration**: orthogonal functionality.
    * **EnumerationDeclaration**: fixed values.
    * **ConstrainedDataTypeDeclaration**: regex-restricted properties.
    * **Attributes (annotations)**: concepts extending `NodeAttribute` / `PropertyAttribute` / `ChildAttribute` / `LinkAttribute` that graft extra children/data onto *other* concepts without editing them — see Attributes section below.
4. **Inheritance & interfaces**:
    * Use inheritance and abstract concepts for shared logic.
    * Implement `jetbrains.mps.lang.core.structure.INamedConcept` if the concept needs a `name` property.
5. **Smart reference assessment**: see directives above.
6. **Set alias on concepts that can be root**: helps the user instantiate the concept through a menu.
7. **Leave alias empty on smart references and transparent collections**: e.g. `StatementList`.
8. **Property definition**:
    * For enum properties: create the `EnumerationDeclaration` first, then set the property `dataType` to reference it.
9. **Proper cardinality**: make sure intended child collections have the cardinality of `0..n` or `1..n`.
10. **Bulk operations**: use `mps_mcp_alter_structure` for creating multiple concepts or enums efficiently.
    * Local references within the same JSON blueprint can use names for resolution.
11. **Reload runtime**: always rebuild the language (via `mps_mcp_alter_nodes` with `MAKE` and `rebuild="true"`) after structural changes to make concepts discoverable.

## Attributes (Annotations)

Attributes let one language attach extra children, references, or property data to nodes of a concept it does **not** own — without editing or subclassing that concept. The host carries a universal `smodelAttribute` child slot (`0..n`, every `BaseConcept` has it); the attribute's own declaration says where it may attach. Used heavily for cross-cutting concerns: generator macros (`NodeMacro`/`PropertyMacro`/`ReferenceMacro`), documentation/description comments, requirement traces, error suppression.

- Declare an attribute = a `ConceptDeclaration` that **extends** one of `NodeAttribute` (whole node), `PropertyAttribute` (one property), `ChildAttribute` (one child link), or `LinkAttribute` (one reference link), **plus** an `AttributeInfo` (alias `@attribute info`) in its `smodelAttribute` role specifying the extension point: `role` (the attach key), `attributed` (which concept(s) may receive it — `BaseConcept` = any), and `multiple` (one vs. many per node).
- `CREATE_CONCEPTS` cannot express the `AttributeInfo` — create the concept extending the base attribute, then add the `AttributeInfo` with `mps_mcp_update_node`. Full walkthrough, concept reference, and the canonical `RequirementTrace` blueprint live in `references/attributes-and-annotations.md`.

## Related Skills

- **`mps-aspect-editor-menus-and-keymaps`** — once concepts exist, define their editors (often the next step).
- **`mps-aspect-constraints`** — property validators, scopes, and `canBe*` rules layered on top of structure.
- **`mps-aspect-behavior`** — virtual methods per concept.
- **`mps-aspect-actions`** — node factories for newly created concepts.
- **`mps-language-inheritance`** — for `extendedLanguages` and concept super/interface relationships.

## Reference Index

- Open `references/structure-operation-api.md` for exact `mps_mcp_alter_structure` and `mps_mcp_query_structure` operation names, JSON parameter formats, structure blueprint schemas, `make` flag handling, and `makeStatus` semantics (success / runtime_stale / failed / skipped).
- Open `references/attributes-and-annotations.md` for attributes/annotations: the four attribute kinds (`NodeAttribute` / `PropertyAttribute` / `ChildAttribute` / `LinkAttribute`), how to choose between them (feature-pinned kinds need a visible feature cell — whole-role markers should be a `NodeAttribute` + `LinkDeclaration` reference, converted at runtime via `MetaAdapterByDeclaration`), the `AttributeInfo` extension-point spec (`role`, `attributed`, `multiple`), the two-step MCP creation flow, the `smodelAttribute` slot, and worked examples (`RequirementTrace`, generator macros, doc/comment annotations).
