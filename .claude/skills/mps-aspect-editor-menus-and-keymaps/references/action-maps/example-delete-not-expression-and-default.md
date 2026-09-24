## Example: Replace `Not` Expression with Its Operand on Delete

From `jetbrains.mps.samples.Kaja`:

```json
{
  "concept": "jetbrains.mps.lang.editor.structure.CellActionMapDeclaration",
  "properties": [{ "name": "name", "value": "Not_ActionMap" }],
  "references": [
    { "role": "applicableConcept", "target": "jetbrains.mps.samples.Kaja.Kajak.structure.Not" }
  ],
  "children": [{
    "role": "item",
    "nodes": [{
      "concept": "jetbrains.mps.lang.editor.structure.CellActionMapItem",
      "properties": [
        { "name": "actionId",    "value": "delete_action_id" },
        { "name": "description", "value": "replace Not with its operand" }
      ],
      "children": [{
        "role": "executeFunction",
        "nodes": [{
          "concept": "jetbrains.mps.lang.editor.structure.CellActionMap_ExecuteFunction",
          "children": [{
            "role": "body",
            "nodes": [{ "concept": "jetbrains.mps.baseLanguage.structure.StatementList",
                        "children": [ /* BaseLanguage: node.replace with(node.expression); */ ] }]
          }]
        }]
      }]
    }]
  }]
}
```

Write the function body with `mps-model-manipulation` idioms. Typical body: `node.replace with(node.expression);` or `node.parent.<role>.set(node.expression);`. Return type of an `ExecuteFunction` is `void`; of a `CanExecuteFunction` it is `boolean`.

## DELETE / BACKSPACE Default

If you define (or import) `delete_action_id` but **not** `backspace_action_id`, MPS auto-registers a `BACKSPACE` identical to `DELETE`. You almost never need to define `backspace_action_id` separately unless you want different semantics.
