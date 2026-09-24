## Example: Keyboard-Deletable Annotation (Attribute) Cells

An annotation (node attribute — see `references/attributes-and-annotations.md` in the `mps-aspect-structure-concepts` skill root after loading that companion skill from the same origin) projects *around* its host node, so the caret usually sits on one of the annotation's own label cells, where the default `Delete` does nothing useful. To let `Delete`/`Backspace` remove the annotation, override `delete_action_id` in an action map and attach it to the annotation editor's label cell via the cell's `actionMap` link.

From `jetbrains.mps.lang.test` (the match-relaxation marks `UnorderedChildrenMark`, `IgnoreNodeMark`, …):

```
action map DeleteMatchRelaxationMark
applicable concept: IMatchRelaxationMark        // marker interface all mark concepts implement

actions:
  action DELETE
    can execute : true
    execute : (editorContext, node)->void {
      node<BaseConcept> attributedNode = node.parent;   // host node — capture BEFORE detaching
      node.detach;                                      // removes the attribute from smodelAttribute
      attributedNode.select[in: editorContext, cell: FIRST];
    }
```

What makes this pattern work:

- **Declare the map against a marker interface** (`IMatchRelaxationMark`) when several annotation concepts share the delete semantics — one map serves them all.
- **An attribute node's `parent` is the host (attributed) node.** Capture it in a local *before* `node.detach`, then select it so the caret lands somewhere sensible instead of vanishing with the deleted cell.
- **`BACKSPACE` comes for free** — defining `delete_action_id` auto-registers an identical `BACKSPACE` (see `references/action-maps/example-delete-not-expression-and-default.md`), so both keys remove the annotation.
- **Wire the map from the cell explicitly** (`actionMap` reference on the annotation editor's leading `CellModel_Constant`) — the caret is on the *annotation's* cells, so a map discovered by naming convention on the host concept would never fire here.
- Two-step deletion is usually skipped for small annotation cells; if you want the highlight-first behaviour, call `node.approveDelete(editorContext)` before mutating (see `selection-and-deletion.md`).
- Pair this with an intention that *attaches* the annotation (see `references/execute-idioms.md` in the `mps-aspect-intentions` skill root after loading that companion skill from the same origin) so users can both add and remove the mark from the keyboard.

Verbatim JSON of the whole root, extracted from the live `DeleteMatchRelaxationMark` node (insert with `mps_mcp_insert_root_node_from_json`, then set the `variableDeclaration` target of the last statement to the freshly inserted local variable):

```json
{
  "concept": "jetbrains.mps.lang.editor.structure.CellActionMapDeclaration",
  "properties": [{ "name": "name", "value": "DeleteMatchRelaxationMark" }],
  "references": [{ "role": "applicableConcept", "target": "<marker interface or attribute concept>" }],
  "children": [{
    "role": "item",
    "nodes": [{
      "concept": "jetbrains.mps.lang.editor.structure.CellActionMapItem",
      "properties": [{ "name": "actionId", "value": "delete_action_id" }],
      "children": [{
        "role": "executeFunction",
        "nodes": [{
          "concept": "jetbrains.mps.lang.editor.structure.CellActionMap_ExecuteFunction",
          "children": [{
            "role": "body",
            "nodes": [{
              "concept": "jetbrains.mps.baseLanguage.structure.StatementList",
              "children": [{
                "role": "statement",
                "nodes": [
                  { "concept": "jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement",
                    "children": [{ "role": "localVariableDeclaration", "nodes": [{
                      "concept": "jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration",
                      "properties": [{ "name": "name", "value": "attributedNode" }],
                      "children": [
                        { "role": "type", "nodes": [{
                          "concept": "jetbrains.mps.lang.smodel.structure.SNodeType",
                          "references": [{ "role": "concept", "target": "jetbrains.mps.lang.core.structure.BaseConcept" }] }]},
                        { "role": "initializer", "nodes": [{
                          "concept": "jetbrains.mps.baseLanguage.structure.DotExpression",
                          "children": [
                            { "role": "operand",   "nodes": [{ "concept": "jetbrains.mps.lang.editor.structure.CellActionMap_FunctionParm_selectedNode" }]},
                            { "role": "operation", "nodes": [{ "concept": "jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" }]}
                          ]}]}
                      ]}]}]},
                  { "concept": "jetbrains.mps.baseLanguage.structure.ExpressionStatement",
                    "children": [{ "role": "expression", "nodes": [{
                      "concept": "jetbrains.mps.baseLanguage.structure.DotExpression",
                      "children": [
                        { "role": "operand",   "nodes": [{ "concept": "jetbrains.mps.lang.editor.structure.CellActionMap_FunctionParm_selectedNode" }]},
                        { "role": "operation", "nodes": [{ "concept": "jetbrains.mps.lang.smodel.structure.Node_DetachOperation" }]}
                      ]}]}]},
                  { "concept": "jetbrains.mps.baseLanguage.structure.ExpressionStatement",
                    "children": [{ "role": "expression", "nodes": [{
                      "concept": "jetbrains.mps.baseLanguage.structure.DotExpression",
                      "children": [
                        { "role": "operand", "nodes": [{
                          "concept": "jetbrains.mps.baseLanguage.structure.VariableReference",
                          "references": [{ "role": "variableDeclaration", "target": "<attributedNode-local-var-node-ref>" }] }]},
                        { "role": "operation", "nodes": [{
                          "concept": "jetbrains.mps.lang.editor.structure.SelectInEditorOperation",
                          "children": [
                            { "role": "editorContext", "nodes": [{ "concept": "jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_editorContext" }]},
                            { "role": "cellSelector",  "nodes": [{ "concept": "jetbrains.mps.lang.editor.structure.PredefinedSelector" }]}
                          ]}]}
                      ]}]}]}
                ]
              }]
            }]
          }]
        }]
      }]
    }]
  }]
}
```

FQN traps in this blueprint (verified against the live node):

- Inside a `CellActionMap_ExecuteFunction` body, the implicit `node` parameter is `jetbrains.mps.lang.editor.structure.CellActionMap_FunctionParm_selectedNode`, and `editorContext` is the **editor language's** `jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_editorContext` — *not* the `jetbrains.mps.lang.sharedConcepts` parameter concept used in intention bodies.
- `node.detach` is `jetbrains.mps.lang.smodel.structure.Node_DetachOperation` (parser-blind — must be blueprinted).
- A `PredefinedSelector` with **no `cellId` property** projects as `FIRST`. Set `cellId` only for other positions (qualified enum-member form, e.g. `1S2pyLby17G/firstEditable`).
- `actionId` prints back in qualified enum form (`g_hAxAO/delete_action_id`); the plain `delete_action_id` auto-resolves on insertion.
