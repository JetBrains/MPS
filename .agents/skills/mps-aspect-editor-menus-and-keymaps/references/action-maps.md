# Action Maps (`CellActionMapDeclaration`)

Action maps override the default behaviour of a standard cell action (`DELETE`, `BACKSPACE`, `SELECT_ALL`, `LEFT_TRANSFORM`, `RIGHT_TRANSFORM`, …) for a given concept. They attach to a cell via the cell's `actionMap` link, or apply automatically when named `<Concept>_ActionMap` and the editor is for that concept.

## `CellActionMapDeclaration` Root Fields

- `applicableConcept` (ref, 1) — the concept this map attaches to.
- `everyModel` *(does not exist on action maps — only on keymaps)*.
- `imports` (child, 0..n) — imports of other action maps.
- `item` (child, 0..n) — the action items.

## `CellActionMapItem`

- `actionId` (property, type `CellActionId`) — one of MPS's predefined action IDs (`delete_action_id`, `backspace_action_id`, `select_all_action_id`, `left_transform_action_id`, `right_transform_action_id`, `localize_action_id`).
- `description` (property, string) — human-readable, surfaced in the action editor.
- `executeFunction` (child, 1) of concept `CellActionMap_ExecuteFunction` — the function that runs when the action fires.
- `canExecuteFunction` (child, 0..1) of concept `CellActionMap_CanExecuteFunction` — optional guard that returns a boolean.

Implicit parameters in function bodies:

- `node` — typed as `applicableConcept`.
- `editorContext` — the `EditorContext` (from `jetbrains.mps.lang.sharedConcepts`).

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

## Example: Keyboard-Deletable Annotation (Attribute) Cells

An annotation (node attribute — see `mps-aspect-structure-concepts/references/attributes-and-annotations.md`) projects *around* its host node, so the caret usually sits on one of the annotation's own label cells, where the default `Delete` does nothing useful. To let `Delete`/`Backspace` remove the annotation, override `delete_action_id` in an action map and attach it to the annotation editor's label cell via the cell's `actionMap` link.

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
- **`BACKSPACE` comes for free** — defining `delete_action_id` auto-registers an identical `BACKSPACE` (see above), so both keys remove the annotation.
- **Wire the map from the cell explicitly** (`actionMap` reference on the annotation editor's leading `CellModel_Constant`) — the caret is on the *annotation's* cells, so a map discovered by naming convention on the host concept would never fire here.
- Two-step deletion is usually skipped for small annotation cells; if you want the highlight-first behaviour, call `node.approveDelete(editorContext)` before mutating (see `selection-and-deletion.md`).
- Pair this with an intention that *attaches* the annotation (see `mps-aspect-intentions/references/execute-idioms.md`) so users can both add and remove the mark from the keyboard.

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

## Importing Action Maps

Action maps can import entire maps or individual actions via `CellActionMapImport` items in the `imports` role. Each import holds:

- `cellActionMap` (ref, 1) — the map to import from.
- `selector` (child, 1) of one of:
  - `CellActionMapImportSelectorByActionId` — property `actionId`, selects a single action.
  - `CellActionMapImportWildcardSelector` — no fields, imports **every** item.

```json
{
  "concept": "jetbrains.mps.lang.editor.structure.CellActionMapDeclaration",
  "properties": [{ "name": "name", "value": "MyConcept_ActionMap" }],
  "references": [{ "role": "applicableConcept", "target": "my.lang.MyConcept" }],
  "children": [
    {
      "role": "imports",
      "nodes": [
        {
          "concept": "jetbrains.mps.lang.editor.structure.CellActionMapImport",
          "references": [
            { "role": "cellActionMap", "target": "SomeSuper_ActionMap" }
          ],
          "children": [{
            "role": "selector",
            "nodes": [{ "concept": "jetbrains.mps.lang.editor.structure.CellActionMapImportWildcardSelector" }]
          }]
        },
        {
          "concept": "jetbrains.mps.lang.editor.structure.CellActionMapImport",
          "references": [
            { "role": "cellActionMap", "target": "OtherMap_ActionMap" }
          ],
          "children": [{
            "role": "selector",
            "nodes": [{
              "concept": "jetbrains.mps.lang.editor.structure.CellActionMapImportSelectorByActionId",
              "properties": [{ "name": "actionId", "value": "right_transform_action_id" }]
            }]
          }]
        }
      ]
    }
    /* plus "item": [...] */
  ]
}
```

### Import Rules

- **Transitive**: an imported map's imports come along.
- **Winner**: the current map's items win; among imports, the most recently imported wins on conflict.
- **No cycles**: cyclic imports are rejected with an error.
- **Concept compatibility**: the imported map's `applicableConcept` must equal or be a super-concept of the importer's.
- **Cross-language**: imports across languages are allowed.
- **Dynamic resolution**: imports are resolved at runtime, so an importer does not need regeneration when an imported map changes.

## `SELECT_ALL` Customisation

Override `select_all_action_id`. For the common "select up until a boundary" pattern, use `jetbrains.mps.nodeEditor.selection.SelectUpUtil.executeWhile(...)` inside the execute block.
