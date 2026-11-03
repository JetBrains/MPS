## Named Concept with Keyword Header (inline)

```
ConceptEditorDeclaration
  cellModel: CellModel_Collection
    cellLayout: CellLayout_Indent
    childCellModel: CellModel_Constant  text="keyword"
      parentStyleClass → KeyWord   (or styleItem: ApplyStyleClass { target: StyleReference { style → KeyWord } })
    childCellModel: CellModel_Property
      relationDeclaration → name property
```
