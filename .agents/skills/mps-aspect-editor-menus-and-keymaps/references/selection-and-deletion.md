# Editor Selection API and Two-Step Deletion

## `select`

`SelectInEditorOperation` (`jetbrains.mps.lang.editor`) puts the caret on a node from an execute body:

```
node.select[in: editorContext, cell: classKeyword, selectionStart: 0];
node.type.select[in: editorContext, cell: FIRST_EDITABLE, selectionStart: 0];
createdNode.select[in: editorContext, cell: MOST_RELEVANT, selectionStart: -1];
```

Roles: `editorContext` (1), `cellSelector`, `selectionStart` / `selectionEnd` (`-1` = end). Selectors: `CellIdReferenceSelector` (reference `id` → an `EditorCellId` of the node's editor, including one declared in an editor component it uses; printed as the bare id), `PredefinedSelector` (property `cellId`: `first` (default), `last`, `firstEditable`, `lastEditable`, `firstError`, `lastError`, `focusPolicy`, `mostRelevant`; printed `FIRST_EDITABLE` etc.), or `IdSelector{cellId}`, a string id (`cell: "finalModifier"`, as BL writes it). Select after mutating: the old cell may be gone. The Java helper `SelectionUtil.selectLabelCellAnSetCaret(editorContext, node, cellId, pos)` (BL `constants`) needs the model imports `jetbrains.mps.editor.runtime.selection@java_stub` and, for the `SelectionManager.*` constants, `jetbrains.mps.openapi.editor.selection@java_stub`.

## Two-step deletion

User setting (on by default): the first Delete/Backspace marks the cell, the second deletes, Escape cancels. A custom DELETE action opts in with `ApproveDelete_Operation`. The idiom, from BL `_ClassConcept_Final_Actions`:

```
action DELETE
  execute (editorContext, node)->void {
    if (node.approveDelete[in: editorContext, cell: finalKeyword]) { return; }
    node.isFinal.set(false);
    node.select[in: editorContext, cell: classKeyword, selectionStart: 0];
  }
```

- `approveDelete` marks the cell and returns true on the first press. It returns false when the cell is already approved, when the selection already covers exactly that cell (one-step delete), or when two-step deletion is off. So the early `return` is required.
- `cell:` (child `cellSelector`) names the cell to highlight: `CellIdReferenceSelector{id}` (also for an id declared in a used component) or `IdSelector{cellId}` (BL `VariableDeclaration_RemoveFinalOnDelete`: `"finalModifier"`). If no cell has that id, `approveDelete` returns false and the first press deletes. Without `cell:` the whole node is marked. The keyword cell must have an `id` child `EditorCellId{name: finalKeyword}`, and its `actionMap` must reference the map.
- Generated form: `DeletionApproverUtil.approve(editorContext, node, "finalKeyword")` (stub `jetbrains.mps.editor.runtime.deletionApprover`). Author the DSL form: it checks the cell id.

Blueprint of the `if` condition (operand is the action-map `node`):

```json
{"concept": "jetbrains.mps.baseLanguage.structure.DotExpression", "children": [
  {"role": "operand", "nodes": [{"concept": "jetbrains.mps.lang.editor.structure.CellActionMap_FunctionParm_selectedNode"}]},
  {"role": "operation", "nodes": [{"concept": "jetbrains.mps.lang.editor.structure.ApproveDelete_Operation", "children": [
    {"role": "editorContext", "nodes": [{"concept": "jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_editorContext"}]},
    {"role": "cellSelector", "nodes": [{"concept": "jetbrains.mps.lang.editor.structure.CellIdReferenceSelector",
      "references": [{"role": "id", "target": "<EditorCellId node ref>"}]}]}]}]}]}
```

The `ifTrue` block is a `StatementList` with one `ReturnStatement`.
