# Action Maps (`CellActionMapDeclaration`)

Action maps override the default behaviour of a standard cell action (`DELETE`, `BACKSPACE`, `SELECT_ALL`, `LEFT_TRANSFORM`, `RIGHT_TRANSFORM`, …) for the cells that reference them: set the `actionMap` reference of the cell the caret is on (or of a collection around it). The root name is free. Which cell's action runs, and how a false `canExecuteFunction` falls through to enclosing cells: `references/landscape.md`.

**Edges.** BACKSPACE at the first position of a node's outermost cell runs on the cell *before* that cell, and DELETE at its last position runs on the cell after it. This applies only at the edge of a node's outermost cell, not of a constant inside the same node. So a BACKSPACE action on an opening `(` is reached from position 0 of the child node that follows it (its first cell), and a DELETE action on `)` from the last position of the child before it. On an editable cell (property, editable constant), Delete/Backspace edit the text first, and the map fires only when there is nothing to delete on that side. A caret cannot sit before a `punctuation-left` cell's text or after a `punctuation-right` one's (`first-/last-position-allowed` override this).

One file per section, each self-contained. Read only the files for your job, and when you need more than one, Read them all in one parallel batch.

| Section | File |
|---|---|
| `CellActionMapDeclaration` Root Fields | `references/action-maps/declaration-and-items.md` |
| Example: Delete on `not` keeps its operand (Kaja `RemoveNot`), DELETE/BACKSPACE default | `references/action-maps/example-delete-not-expression-and-default.md` |
| Example: Keyboard-Deletable Annotation (Attribute) Cells | `references/action-maps/example-keyboard-deletable-annotation.md` |
| Importing Action Maps | `references/action-maps/importing-action-maps.md` |
| `SELECT_ALL` Customisation | `references/action-maps/select-all.md` |
