---
name: mps-language-analysis
description: Analyze an MPS language by name — discover concepts, properties, references, children, aspects (editor/constraints/behavior), and metadata. Use when investigating an unfamiliar language, exploring concept structure, or finding sample nodes to use as templates for JSON blueprints.
type: reference
---

# MPS Language Analysis

Workflow for inspecting an MPS language from a name (e.g. `jetbrains.mps.lang.core`). Returns concepts, metadata, structural info, and pointers to declarations and sample nodes.

## Critical Directives

- Use the **fully qualified** language name (e.g. `jetbrains.mps.lang.core`) — single-letter shorthand (`j.m.l.core`) requires resolution first via `mps_mcp_get_project_structure`.
- For the `qualifiedName` returned by `mps_mcp_get_concept_details`, use it as the `concept` field in JSON blueprints. It is unambiguous.

## Analyzing a Language by Name

1. **Verify Language**: call `mps_mcp_get_project_structure` with the language name as a filter (`startingPoint: My_Language`). This confirms existence and provides the UUID.
2. **Retrieve Concepts**: use `mps_mcp_get_concept_details` with the language name in `languageRefs`. Both `conceptRefs` and `languageRefs` accept either one value or a JSON-array string; omit the unused selector.
3. **Extract Data**: the response includes:
    * **Name**: concept FQN.
    * **Description**: found in `shortDescription`.
    * **Metadata**: `isRootable`, `isAbstract`, and the `conceptReference` ID.
    * **Structure**: properties, children, and references are detailed here.
4. **Drill Down**:
    * **Declaration**: use the `sourceNode` reference with `mps_mcp_open_node` to open the definition.
    * **Examples**: use `mps_mcp_query_nodes` with `FIND_INSTANCES` (`sampleOnly: true`) to get a sample node. Then use `mps_mcp_print_node` to see its canonical JSON structure for use as a template.
    * **Inheritance**: load the `mps-language-inheritance` skill for deeper hierarchy analysis.

## Inspecting Concept Aspects

Use `mps_mcp_query_structure` with `LIST_CONCEPT_ASPECTS` to find associated definitions (Editor, Constraints, Behavior):

* **Direct Aspects**: returns roots targeting the specific concept.
* **Inherited Aspects**: set `includeInherited: true` to include aspects from ancestors (superconcepts/interfaces).
* **Editor Analysis**:
    * **ConceptEditorDeclaration**: defines the full editor for the `targetsConcept`.
    * **EditorComponentDeclaration**: defines reusable presentation pieces.
    * Check the `editor` model in the response to identify available editors.

## Related Skills

- **`mps-language-inheritance`** — load when you need extended-language / superconcept / subconcept analysis.
- **`mps-aspect-structure-concepts`** — load when defining or modifying concepts (not just reading them).
- **`mps-language-aspects-overview`** — overview of which aspects exist and what each owns.

## Reference Index

- Open `references/search-concepts.md` for the `mps_mcp_search_concepts` matching algorithm — haystack composition, subtoken splitting, fallback ranking, `modelReference` scoping, and the sub-2-char failure mode.
- Open `references/concept-details.md` for the `mps_mcp_get_concept_details` result schema and the unresolved-ref policy (all-failed vs partial-success envelopes and the suggestion heuristic).
