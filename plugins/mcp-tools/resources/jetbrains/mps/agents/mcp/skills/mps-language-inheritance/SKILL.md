---
name: mps-language-inheritance
description: Investigate inheritance between MPS languages and between concepts — extended languages, superconcepts, implemented interfaces, sub-/assignable concepts, and cross-language specialization. Use when tracing language hierarchies, finding extension points, or checking concept assignability.
type: reference
---

# MPS Language and Concept Inheritance

## Loading companion skills

Companion names in this skill are lazy dependencies: load only those relevant to the current task. If this skill came from an MCP server, use the host's skill loader to resolve the companion's unique discovered entry URI on the same host-assigned originating server. If the host has no server-backed skill loader, stop and report that limitation; do not silently fall back to a filesystem copy. If this skill came from a filesystem catalog, load the named sibling from that same catalog at `<skills-root>/<skill-name>/SKILL.md`, even if remote skill loaders are also available. Do not invent a tool name or server endpoint.

Two layers of inheritance matter in MPS: module-level (one language `extends` another) and concept-level (concepts inherit superconcepts and implement interface concepts).

## Critical Directives

- **Concept-level inheritance is realized through module-level extension** — different `languageReference` on a concept and its `superConcept` indicates a cross-language specialization, which usually requires the consumer's language to extend the parent.
- **`GET_ALL_SUPERCONCEPTS`** gives the full transitive closure in a single call — prefer it over recursive walking of `superConcept` / `superInterfaces`.
- **`IS_SUBCONCEPT_OF`** is the fastest way to verify a single assignability question; do not enumerate `GET_SUB_CONCEPTS` and search by hand.

## Module-Level Inheritance (Language Extension)

One language can inherit the structure and functionality of another via an "extends" relationship.

1. **Tool**: `mps_mcp_get_project_structure` (with `includeDependencies: true`).
2. **Workflow**: check the `extendedLanguages` field in the response for the target language. This lists direct parent languages.
3. **Hierarchy tracing**: recursively call this tool for each parent to build the full inheritance tree.

## Concept-Level Inheritance

### Upward Hierarchy (Ancestors)

* **Direct ancestors**: use `mps_mcp_get_concept_details`. The response includes:
    * `superConcept`: immediate parent concept.
    * `superInterfaces`: immediate implemented interface concepts.
    * `superConceptContainingProject` and `superInterfaceDetails[*].containingProject` when an ancestor comes from another open MPS project and is read-only from the selected project.
* **Full closure**: use `mps_mcp_query_structure` with `GET_ALL_SUPERCONCEPTS` to get the complete chain of ancestors and interfaces in one call.

### Downward Hierarchy (Descendants)

* **Specializations**: use `mps_mcp_query_structure` with `GET_SUB_CONCEPTS` to find all concepts (direct and indirect) inheriting from a base.
* **Implementations**: use `GET_ASSIGNABLE_CONCEPTS` to retrieve only non-abstract subconcepts that can be instantiated.

## Strategic Analysis

* **Verification**: use `mps_mcp_query_structure` with `IS_SUBCONCEPT_OF` to check if concept A inherits from concept B.
* **Cross-language extension**: compare the `languageReference` of a concept with that of its `superConcept`. Different references indicate a language boundary specialization; foreign-project ancestors are marked explicitly with the containing-project fields.
* **Discovery**: use `mps_mcp_search_concepts` to find base concepts (e.g. "Statement") for extension.
* **Implicit dependencies**: if a model uses a language without an explicit import, check if its used languages extend the missing language via `mps_mcp_get_project_structure`.

## Best Practice

Identify extension points by first checking high-level `extendedLanguages` via `mps_mcp_get_project_structure`, then use `mps_mcp_get_concept_details` to pinpoint cross-language concept specializations.

## Related Skills

- **`mps-language-analysis`** — start here when you need general language inspection, not just inheritance.
- **`mps-aspect-structure-concepts`** — when you intend to define new concepts (with their own super/interface lists).
- **`mps-aspect-accessories`** — for `extendedLanguages` vs `usedLanguages` semantics at module level.
