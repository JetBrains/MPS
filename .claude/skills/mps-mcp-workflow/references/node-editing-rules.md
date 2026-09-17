# Node Editing Rules

- Resolve the target node first (e.g. using `mps_mcp_get_current_editor_root_node` and `mps_mcp_search_root_node_by_name`).
- Each node is an instance of a concept. The allowed values, references and children of a node are defined by its concept. Node's `conceptReference` identifies the node's concept.
- **Unambiguous resolution**: use the `qualifiedName` returned by `mps_mcp_get_concept_details` and `mps_mcp_search_concepts` as the `concept` field in JSON blueprints (e.g. `"concept": "jetbrains.mps.baseLanguage.structure.ClassConcept"`). This fully-qualified form is unambiguous and does not require a `conceptReference` to accompany it. The `conceptReference` field (`c:...` persistence form) is optional — omit it or include it as a hint, but do not guess or construct it manually as incorrect IDs will cause failures.
- Prefer `mps_mcp_get_concept_details` and `mps_mcp_search_concepts` to find and explore concepts. Exploring root concepts of a language's structure model is less efficient.
- When creating new nodes/children, prefer concepts from the model's 'used languages'.
- MPS code is written using JSON blueprints representing the node hierarchy.
- The ids of nodes, concepts, models and modules never change. When used in JSON blueprints, be sure they are 100% accurate.
- Role names (properties, children, references) must match the concept definition exactly.
- When setting a property value on a node, make sure the type of the value matches the expected type of the property defined in the concept.
- When setting a property typed to an enumeration, use `mps_mcp_query_structure` (GET_ENUMERATION_LITERALS) to get the list of allowed values.
- MPS stores the **default** enum member implicitly (as absent in the model). A newly created node that has never had its enum property explicitly set will still resolve to the default value at runtime. Only set an enum property explicitly when you need a non-default value. Do not treat an unset enum property as an error if the enum has a defined default member.
- Concepts extend other concepts and implement interface concepts. These are transitive relationships. Both extended concepts and implemented interfaces have an effect on assignability.
- When setting a reference to a target node, make sure the concept of the target node is assignable to the required concept of the reference role.
- When adding/changing a child node, make sure the node's concept is not abstract and is assignable to the concept of the role.
- Child roles as well as reference roles may be optional or required. Optional roles may be null. Required roles must have a value.
- Child roles may be single-valued or multivalued. Single-valued roles can only have one child node. Multivalued roles can have multiple child nodes.
- You must not create nodes of concept interfaces and abstract concepts.
- Use `mps_mcp_query_structure` (GET_ASSIGNABLE_CONCEPTS) to find which concept types are structurally compatible with a child or reference role. This answers concept-level assignability only — it does not account for scope or visibility. A concept appearing in the result does not guarantee that every node of that concept is a valid or in-scope target for a specific reference role.
- Use `mps_mcp_query_structure` (GET_ASSIGNABLE_REFERENCES) to find existing nodes that are valid targets for a specific reference role on a given node. Unlike GET_ASSIGNABLE_CONCEPTS, the results are drawn from the actual project and reflect scope. `GET_ASSIGNABLE_REFERENCES` can also be used with a `conceptRef` instead of a `nodeReference` to query potential targets for a reference role on a node that has not been created yet (e.g. when building a JSON blueprint).
- Do not add used languages explicitly up front. When a node is added to a model a dependency on the node's concept is added automatically.
- Only add dependencies on models when a problem with a reference being out of scope is reported.
- WHEN selecting a concept for node creation THEN verify it is concrete; avoid interface/abstract.
- User expected the entire JSON file representing MPS nodes to be read and presented without truncation.
- WHEN large file output is truncated THEN read and return the file in sequential chunks.
- **Preserve node IDs**: prefer `mps_mcp_update_root_node_from_json` or surgical edits (`mps_mcp_update_node`, etc.) over delete-and-reinsert. Deleting a root node destroys its persistent ID and breaks any incoming references. Only delete-and-reinsert when the node is brand new, has no incoming references, and the user has not requested ID preservation.
- **Surgical edit tool selection**: when a single child needs to change, prefer `mps_mcp_update_node` (replaces one named child by reference, preserving siblings and the parent's ID) over re-running `mps_mcp_update_root_node_from_json` on the whole root. The latter rewrites every property/child/reference of the root and is wasteful (and risky) when only one subtree changed. Reach for `mps_mcp_update_root_node_from_json` only when the entire root needs to be rewritten.
- **MOVE_NODE_TO_PARENT distinguishes omission from null**: supply a non-null `newParentRef` plus `role` to reparent a node. To intentionally promote it to a root, omit `newParentRef` and supply `modelReference`. An explicit JSON `null` for `newParentRef` is rejected and never falls through to promotion.
- **Validate the model, not every root**: `mps_mcp_check_root_node_problems` accepts a model reference (`r:<uuid>(name)`) as well as a node/root reference. The model form checks **every root of the model in one exhaustive call**, so a clean model-level result (`no problems found`) means every root is clean — do not follow it with a per-root sweep. Pass `autoApplyQuickFixes=true` (node/root references only) to apply single auto-applicable fixes in the same call.
- **Blueprint files live in the system temp directory**: when passing a blueprint as a file path instead of inline JSON, the file must be inside the JVM system temp directory — `$TMPDIR` on macOS/Linux (on macOS a `/var/folders/...` path; `/tmp` is **outside** it and rejected), `%TEMP%` on Windows. Example: `f="$TMPDIR/blueprint-$$.json"`.
- **Reload after compiled-aspect changes**: after inserting or modifying nodes in the **typesystem**, **constraints**, **behavior**, **editor**, or any other compiled aspect of a language, call `mps_mcp_reload_all` (or rebuild the language module via `mps_mcp_alter_nodes` `MAKE`) before validating with `mps_mcp_check_root_node_problems` on a model that uses the language. Without a reload, the cached compiled rules continue to fire — checking will report stale errors or miss new ones, producing misleading feedback loops.

## JSON Format for Nodes

```json
{
  "concept": "fully.qualified.ConceptName",
  "properties": [
    { "name": "propName", "value": "propValue" }
  ],
  "children": [
    {
      "role": "childRole",
      "nodes": [
        { "concept": "...", "properties": [...], ... }
      ]
    }
  ],
  "references": [
    { "role": "refRole", "target": "targetNodeRefOrName" }
  ]
}
```

- **Concept identification**: use the fully qualified concept name in the `concept` field.
- **Automatic reference resolution**: for `target` values that are persistent node references (`r:...` or `i:...`), the tool resolves them directly. For plain names (no prefix), the reference is deferred to MPS's scope system after insertion — this works correctly for local variables, parameters, and other non-root declarations. For root nodes in another model, prefer the `"ModelName.RootName"` dotted format or a full `r:...` reference to avoid ambiguity.
