## Transparent List (no surrounding syntax, each item on its own line)

```
CellModel_Collection
  cellLayout: CellLayout_Indent
  styleItem: SelectableStyleSheetItem
  styleItem: IndentLayoutNewLineChildrenStyleClassItem  flag=true
  childCellModel: CellModel_RefNodeList  (%items%)
    relationDeclaration → <items link>
    cellLayout: CellLayout_Indent
    styleItem: SelectableStyleSheetItem
    styleItem: IndentLayoutNewLineChildrenStyleClassItem  flag=true
    emptyCellModel: CellModel_Constant  text="<no items>"
```

> The `text="<no items>"` empty cell above is a **non-typeable visual placeholder** — the caret cannot enter it, so the user must click a child or use the list's boundary to start adding. Omit `emptyCellModel` entirely to keep the default *editable* empty cell, or use the `nullText` + `editable` recipe below to make a custom placeholder typeable.
