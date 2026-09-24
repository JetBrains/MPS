---
name: mps-aspect-structure-concepts
description: Define concepts, interface concepts, enumerations, and constrained data types in an MPS language's `structure` aspect. Covers smart-reference detection, alias rules, cardinality, INamedConcept usage, bulk creation, and the full `mps_mcp_alter_structure` / `mps_mcp_query_structure` reference. Use when authoring or modifying a language's structure model.
type: reference
---

# MPS Structure Aspect — Concepts

## Loading companion skills

Companion names in this skill are lazy dependencies: load only those relevant to the current task. If this skill came from an MCP server, use the host's skill loader to resolve the companion's unique discovered entry URI on the same host-assigned originating server. If the host has no server-backed skill loader, stop and report that limitation; do not silently fall back to a filesystem copy. If this skill came from a filesystem catalog, load the named sibling from that same catalog at `<skills-root>/<skill-name>/SKILL.md`, even if remote skill loaders are also available. Do not invent a tool name or server endpoint.

Concepts (`ConceptDeclaration`), interface concepts (`InterfaceConceptDeclaration`), enumerations (`EnumerationDeclaration`), and constrained data types (`ConstrainedDataTypeDeclaration`) are root nodes in a language's `structure` model. They use the language `jetbrains.mps.lang.structure`.

## Critical Directives

- **Implement `INamedConcept` instead of declaring `name` directly.** A `name` property declared directly on a concept is an antipattern in MPS — implement `jetbrains.mps.lang.core.structure.INamedConcept` instead.
- **Smart reference check (CRITICAL)**: before setting a `conceptAlias`, determine whether the concept is an "Implicit Smart Reference". If it has exactly one mandatory reference and no properties or children of its own, **do NOT set a `conceptAlias`** — the concept should be transparent in the editor and completion menu so the user types the target's name directly. Examples: variable references, method calls, routine calls.
- **Leave alias empty on transparent collections too** (e.g. `StatementList`).
- **Set alias on concepts that can be root** — that's how the user reaches them through the new-root menu.
- **Always rebuild the language** with `mps_mcp_alter_nodes MAKE` and `rebuild="true"` after structural changes, so the new concepts are discoverable by runtime tools.

## Section index — one row, one read

Each row names the file(s) for one operation. Read them — two files in one parallel batch — and nothing else in `references/`.

| Job | Read |
|---|---|
| parameter wire shape, rejected keys, booleans, `…Ref`/`…Reference` suffixes, nulls | `references/structure-operation-api/tool-conventions.md` |
| create concepts (greenfield) | `references/structure-operation-api/create-concepts.md` — on the first `CREATE_CONCEPTS` call also `references/structure-operation-api/tool-conventions.md` |
| create an enumeration | `references/structure-operation-api/create-enum.md` |
| add/change/delete a property | `references/structure-operation-api/update-concept-property.md` |
| add/change/delete a child | `references/structure-operation-api/update-concept-child.md` |
| add/change/delete a reference | `references/structure-operation-api/update-concept-reference.md` |
| rename a property / child / reference | `references/structure-operation-api/rename-concept-feature.md` |
| enum literals | `references/structure-operation-api/get-enumeration-literals.md` |
| is-subconcept / subconcepts / assignable concepts / superconcepts | `references/structure-operation-api/concept-hierarchy-queries.md` |
| completion/scope candidates for a reference | `references/structure-operation-api/get-assignable-references.md` |
| find aspect roots for a concept | `references/structure-operation-api/list-concept-aspects.md` |
| smart-reference check | `references/structure-operation-api/is-smart-reference.md` |

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
    * **Reference links are always single-valued** — `0..1` or `1`. There is no `0..n` reference in MPS, and no `multiple` parameter for references. Model a `[0..n]` reference as a `0..n` *child* role holding smart-reference wrapper concepts; see "Multi-valued references" below.
10. **Bulk operations**: use `mps_mcp_alter_structure` for creating multiple concepts or enums efficiently.
    * Local references within the same JSON blueprint can use names for resolution.
11. **Reload runtime**: always rebuild the language (via `mps_mcp_alter_nodes` with `MAKE` and `rebuild="true"`) after structural changes to make concepts discoverable.

## Multi-valued references (`[0..n]`)

An MPS reference link is always single-valued: `0..1` (optional) or `1` (mandatory). Cardinality on
references does not exist, so `multiple: true` is rejected on both write paths —
`UPDATE_CONCEPT_REFERENCE` and a `references` entry of a `CREATE_CONCEPTS` blueprint. Only a
`children` entry takes `multiple`.

Model a `[0..n]` reference as a thin **smart-reference wrapper concept** held in a `0..n` *child*
role on the owner. The wrapper is a non-rootable `BaseConcept` subconcept with exactly one mandatory
reference, no alias, and no own properties or children — so the editor shows it transparently and the
user just types the target's name. This is what MPS itself does: `ConceptDeclaration.implements` is a
`0..n` child list of `InterfaceConceptReference`, each holding one `intfc` reference.

```json
[
  {
    "name": "CourseRef",
    "shortDescription": "Reference to a Course",
    "references": [
      { "role": "course", "target": "Course", "optional": false }
    ]
  },
  {
    "name": "Curriculum",
    "rootable": true,
    "conceptAlias": "curriculum",
    "implements": ["jetbrains.mps.lang.core.structure.INamedConcept"],
    "children": [
      { "role": "courses", "target": "CourseRef", "multiple": true, "optional": true }
    ]
  }
]
```

Keep the wrapper bare: give it an own property, an own containment link, or a plain `conceptAlias`
and it stops qualifying *implicitly*, so the user has to instantiate it explicitly instead of typing
the target's name. Two things do still make a non-bare concept smart, but neither is worth the
trouble here: an explicit `SmartReferenceAttribute`, which short-circuits every structural check, and
a *smart alias* of the form `pre<{role}>post`, which MPS's editor honours (though
`IS_SMART_REFERENCE` reports it as not smart). Confirm with `mps_mcp_query_structure`
`IS_SMART_REFERENCE` on the wrapper: expect `isSmartReference: true` and
`characteristicReferenceName` naming its single reference role.

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

**Start here — most common case**: creating or changing concepts, enumerations, or data types → read the file(s) in the matching Section index row above. Attributes/annotations → only `references/attributes-and-annotations.md`.

- Open the Section index row (files under `references/structure-operation-api/`, listed in the index at `references/structure-operation-api.md`) for the exact `mps_mcp_alter_structure` or `mps_mcp_query_structure` operation you are about to call — JSON parameter formats, structure blueprint schemas, `make` flag handling, and `makeStatus` semantics.
- Open `references/attributes-and-annotations.md` for attributes/annotations: the four attribute kinds (`NodeAttribute` / `PropertyAttribute` / `ChildAttribute` / `LinkAttribute`), how to choose between them (feature-pinned kinds need a visible feature cell — whole-role markers should be a `NodeAttribute` + `LinkDeclaration` reference, converted at runtime via `MetaAdapterByDeclaration`), the `AttributeInfo` extension-point spec (`role`, `attributed`, `multiple`), the two-step MCP creation flow, the `smodelAttribute` slot, and worked examples (`RequirementTrace`, generator macros, doc/comment annotations).
