## Example: Delete on `not` keeps its operand

Kaja's `RemoveNot` (only in the MPS source checkout, `samples/robot_Kaja`; concept `jetbrains.mps.samples.Kaja.structure.Not`, child `original`) is referenced from the `actionMap` of the `not` keyword cell, which carries `id` `notKeyword`:

```
action map RemoveNot
applicable concept: Not
  action DELETE
    execute (editorContext, node)->void {
      if (node.approveDelete[in: editorContext, cell: notKeyword]) { return; }
      node.replace with(node.original);
    }
```

```json
{"concept": "jetbrains.mps.lang.editor.structure.CellActionMapDeclaration",
 "properties": [{"name": "name", "value": "RemoveNot"}],
 "references": [{"role": "applicableConcept", "target": "<Not concept ref>"}],
 "children": [{"role": "item", "nodes": [{"concept": "jetbrains.mps.lang.editor.structure.CellActionMapItem",
   "properties": [{"name": "actionId", "value": "delete_action_id"}],
   "children": [{"role": "executeFunction", "nodes": [{"concept": "jetbrains.mps.lang.editor.structure.CellActionMap_ExecuteFunction",
     "children": [{"role": "body", "nodes": [{"concept": "jetbrains.mps.baseLanguage.structure.StatementList",
       "children": [ /* approveDelete if-statement (references/selection-and-deletion.md), then node.replace with(node.original); */ ]}]}]}]}]}]}
```

BL equivalents visible in every project: `_ClassConcept_Final_Actions` (DELETE on `final` clears `isFinal`), `VariableDeclaration_RemoveFinalOnDelete`. An `ExecuteFunction` returns `void`, a `CanExecuteFunction` returns `boolean`.

## DELETE / BACKSPACE default

If a map defines `delete_action_id` but not `backspace_action_id`, the generated `setCellActions` registers the same action for BACKSPACE. Define `backspace_action_id` only for different semantics.
