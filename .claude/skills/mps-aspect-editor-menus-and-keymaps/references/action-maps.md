# Action Maps (`CellActionMapDeclaration`)

Action maps override the default behaviour of a standard cell action (`DELETE`, `BACKSPACE`, `SELECT_ALL`, `LEFT_TRANSFORM`, `RIGHT_TRANSFORM`, …) for a given concept. They attach to a cell via the cell's `actionMap` link, or apply automatically when named `<Concept>_ActionMap` and the editor is for that concept.

One file per section, each self-contained. Read only the files for your job, and when you need more than one, Read them all in one parallel batch.

| Section | File |
|---|---|
| `CellActionMapDeclaration` Root Fields | `references/action-maps/declaration-and-items.md` |
| Example: Replace `Not` Expression with Its Operand on Delete | `references/action-maps/example-delete-not-expression-and-default.md` |
| Example: Keyboard-Deletable Annotation (Attribute) Cells | `references/action-maps/example-keyboard-deletable-annotation.md` |
| Importing Action Maps | `references/action-maps/importing-action-maps.md` |
| `SELECT_ALL` Customisation | `references/action-maps/select-all.md` |
