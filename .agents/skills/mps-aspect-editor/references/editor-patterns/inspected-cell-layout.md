## Concept Editor with an Inspected Cell Layout

A `ConceptEditorDeclaration` can carry a second editor section, `inspectedCellModel`, shown in the **Inspector** tool window when the caret is on the node. Use it for less-important / rarely-edited properties. Build it like any other cell layout; the role names are the only difference from a single-section editor.

```json
{
  "concept": "jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration",
  "properties": [{ "name": "name", "value": "MyConcept_Editor" }],
  "references": [{ "role": "conceptDeclaration", "target": "<concept ref>" }],
  "children": [
    { "role": "cellModel",          "nodes": [ /* node cell layout — the main inline editor */ ] },
    { "role": "inspectedCellModel", "nodes": [ /* inspected cell layout — shown in the Inspector tool window */ ] }
  ]
}
```

Each `nodes` array holds a single root `EditorCellModel` (usually a `CellModel_Collection` with a `CellLayout_Indent`), exactly as in `references/editor-patterns/minimal-editor.md`. Omit the `inspectedCellModel` entry entirely when there is nothing to put in the Inspector.
