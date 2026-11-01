## `CellActionMapDeclaration` Root Fields

- `applicableConcept` (ref, 0..1) — the concept this map attaches to.
- `everyModel` *(does not exist on action maps — only on keymaps)*.
- `imports` (child, 0..n) — imports of other action maps.
- `item` (child, 0..n) — the action items.

## `CellActionMapItem`

- `actionId` (property, type `CellActionId`) — e.g. `delete_action_id`, `backspace_action_id`, `select_all_action_id`, `left_transform_action_id`, `right_transform_action_id`, `complete_action_id`; full list: `mps_mcp_get_concept_details` on `CellActionMapItem`.
- `description` (property, string) — human-readable, surfaced in the action editor.
- `executeFunction` (child, 1) of concept `CellActionMap_ExecuteFunction` — the function that runs when the action fires.
- `canExecuteFunction` (child, 0..1) of concept `CellActionMap_CanExecuteFunction` — optional guard that returns a boolean.

Implicit parameters in function bodies:

- `node` — typed as `applicableConcept`; concept `jetbrains.mps.lang.editor.structure.CellActionMap_FunctionParm_selectedNode`.
- `editorContext` — concept `jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_editorContext` (not the `lang.sharedConcepts` one).

A `canExecuteFunction` that returns false lets the action fall through to the enclosing cells, so it is how you make an item conditional.
