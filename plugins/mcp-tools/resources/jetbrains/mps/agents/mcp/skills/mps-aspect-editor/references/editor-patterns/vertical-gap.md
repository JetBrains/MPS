## Vertical Gap / Visual Separator

To insert a blank line that visually separates one group of cells from another, add an **empty** `CellModel_Constant` (`text=""`) carrying an `IndentLayoutOnNewLineStyleClassItem` with `flag=true`, placed as a `childCellModel` inside a `CellLayout_Indent` collection. The on-new-line style pushes the (empty) constant onto its own line; because it has no text it renders as a blank row, so the cells before it and the cells after it are separated by a vertical gap. The `flag=true` is required — without it the style is inert and no gap appears (see the note in `references/editor-patterns/indented-child-new-line.md`).

```json
{
  "concept": "jetbrains.mps.lang.editor.structure.CellModel_Constant",
  "properties": [{ "name": "text", "value": "" }],
  "children": [
    { "role": "styleItem", "nodes": [
      { "concept": "jetbrains.mps.lang.editor.structure.IndentLayoutOnNewLineStyleClassItem", "properties": [{ "name": "flag", "value": "true" }] }
    ]}
  ]
}
```

Place this node among the `childCellModel`s of the surrounding `CellLayout_Indent` collection, between the cell group above the gap and the group below it. Add a second empty constant with the same style to widen the gap.
