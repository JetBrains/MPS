## Child on a New Indented Line Below the Header

```
ConceptEditorDeclaration
  cellModel: CellModel_Collection
    cellLayout: CellLayout_Indent
    childCellModel: CellModel_Constant  text="keyword"
    childCellModel: CellModel_Property  (name)
    childCellModel: CellModel_RefNode   (%body%)
      styleItem: IndentLayoutOnNewLineStyleClassItem  flag=true
      styleItem: IndentLayoutIndentStyleClassItem     flag=true
      relationDeclaration → body link
```
