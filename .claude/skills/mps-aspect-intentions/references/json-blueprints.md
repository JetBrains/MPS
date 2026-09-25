# Intention JSON Blueprints and Validated Concept Reference

Use these blueprints with `mps_mcp_insert_root_node_from_json` (root) and `mps_mcp_update_node` (`ADD`/`CHILD` for function blocks). Fill function bodies afterwards via `mps_mcp_update_node` or `mps_mcp_parse_java_and_insert`.

> Verified against MPS via `mps_mcp_get_concept_details`. Re-verify with the MCP before inserting if your MPS version differs.

## `IntentionDeclaration` root

- FQN: `jetbrains.mps.lang.intentions.structure.IntentionDeclaration`
- Concept ref: `c:d7a92d38-f7db-40d0-8431-763b0c3c9f20/1192794744107`
- Language: `jetbrains.mps.lang.intentions`
- Rootable: yes (virtual folder `traditional`)
- Reference `forConcept` → `AbstractConceptDeclaration` (1)
- Children: `descriptionFunction` (`DescriptionBlock`, 1), `executeFunction` (`ExecuteBlock`, 1), `isApplicableFunction` (`IsApplicableBlock`, 0..1), `childFilterFunction` (`ChildFilterFunction`, 0..1)

Minimal JSON blueprint:

```json
{
  "concept": "jetbrains.mps.lang.intentions.structure.IntentionDeclaration",
  "properties": [
    { "name": "name", "value": "MyIntention" },
    { "name": "isAvailableInChildNodes", "value": "false" }
  ],
  "references": [
    { "role": "forConcept", "target": "<concept-node-ref>" }
  ],
  "children": [
    { "role": "descriptionFunction", "nodes": [
      { "concept": "jetbrains.mps.lang.intentions.structure.DescriptionBlock" }
    ]},
    { "role": "executeFunction", "nodes": [
      { "concept": "jetbrains.mps.lang.intentions.structure.ExecuteBlock" }
    ]}
  ]
}
```

## Variants

- `ParameterizedIntentionDeclaration` — concept ref `c:d7a92d38-f7db-40d0-8431-763b0c3c9f20/1240395258925`. See `references/parameterized-intentions.md` for the JSON skeleton.
- `SurroundWithIntentionDeclaration` — concept ref `c:d7a92d38-f7db-40d0-8431-763b0c3c9f20/2522969319638198293`. See `references/surround-and-child-filter.md`.

All three extend `BaseIntentionDeclaration`.

## FQN reference for supporting concepts

| Concept | FQN | Role in examples |
|---|---|---|
| `IntentionParameter` | `jetbrains.mps.lang.intentions.structure.IntentionParameter` | The current parameter value inside parameterized intention bodies. |
| `QueryBlock` | `jetbrains.mps.lang.intentions.structure.QueryBlock` | `queryFunction` body of `ParameterizedIntentionDeclaration`; has children `paramType` (Type) and `body` (StatementList). |
| `DescriptionBlock` | `jetbrains.mps.lang.intentions.structure.DescriptionBlock` | Menu-label function. |
| `IsApplicableBlock` | `jetbrains.mps.lang.intentions.structure.IsApplicableBlock` | Gating predicate. |
| `ExecuteBlock` | `jetbrains.mps.lang.intentions.structure.ExecuteBlock` | Transformation body. |
| `ConceptFunctionParameter_node` | `jetbrains.mps.lang.intentions.structure.ConceptFunctionParameter_node` | Implicit `node` parameter in intention bodies. |
| `ConceptFunctionParameter_editorContext` | `jetbrains.mps.lang.sharedConcepts.structure.ConceptFunctionParameter_editorContext` | Implicit `editorContext` parameter. |
| `Node_InsertPrevSiblingOperation` | `jetbrains.mps.lang.smodel.structure.Node_InsertPrevSiblingOperation` | `node.add prev-sibling(...)`. |
| `Node_IsInstanceOfOperation` | `jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation` | `n.isInstanceOf(C)`. |
| `SNodeTypeCastExpression` | `jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression` | `n as C` when property `asCast = true`. |
| `SelectInEditorOperation` | `jetbrains.mps.lang.editor.structure.SelectInEditorOperation` | Moves caret; children: `editorContext`, `cellSelector`, optional `selectionStart`. |
| `PredefinedSelector` | `jetbrains.mps.lang.editor.structure.PredefinedSelector` | Selects a well-known cell by its `cellId` enum value (`first`, `last`, `editable`, ...). |
| `AddElementOperation` | `jetbrains.mps.baseLanguage.collections.structure.AddElementOperation` | `list.add(x)` on an `SLinkListAccess` chain. |
| `ChildFilterFunction` | `jetbrains.mps.lang.intentions.structure.ChildFilterFunction` | Body filters descendant cursor positions when `isAvailableInChildNodes=true`. |
| `ConceptFunctionParameter_childNode` | `jetbrains.mps.lang.intentions.structure.ConceptFunctionParameter_childNode` | Implicit `childNode` parameter inside `ChildFilterFunction`. |
| `NPEEqualsExpression` | `jetbrains.mps.baseLanguage.structure.NPEEqualsExpression` | Null-safe equality `:eq:` — prefer over `==` when operands may be `null`. |
| `NF_LinkList_AddNewChildOperation` | `jetbrains.mps.lang.actions.structure.NF_LinkList_AddNewChildOperation` | `parent.listRole.add new initialized(C)`/`(<default>)` — runs the concept's NodeFactory. See `mps-model-manipulation` for the full NF_* family. |
| `IsEmptyOperation` (collections) | `jetbrains.mps.baseLanguage.collections.structure.IsEmptyOperation` | `seq.isEmpty` on a containment/role access. Distinct from the baseLanguage (string) `IsEmptyOperation` — see `references/collections-catalog.md` in the `mps-model-manipulation` skill root after loading that companion skill from the same origin. |
