# Editor JSON / Pseudo-Code Patterns

## Indented Child on New Line

```json
{
  "concept": "jetbrains.mps.lang.editor.structure.CellModel_RefNode",
  "children": [
    { "role": "relationDeclaration", "target": "<child link>" },
    { "role": "styleItem", "nodes": [
        { "concept": "jetbrains.mps.lang.editor.structure.IndentLayoutOnNewLineStyleClassItem", "properties": [{ "name": "flag", "value": "true" }] },
        { "concept": "jetbrains.mps.lang.editor.structure.IndentLayoutIndentStyleClassItem",   "properties": [{ "name": "flag", "value": "true" }] }
    ]}
  ]
}
```

> Boolean indent-layout style items default to `flag=false` (inert). When creating them from a blueprint you must set `flag=true`, otherwise the line break / indent has no effect. (The MPS UI sets `flag=true` for you; MCP node creation does not.)

## Named Concept with Keyword Header (inline)

```
ConceptEditorDeclaration
  cellModel: CellModel_Collection
    cellLayout: CellLayout_Indent
    childCellModel: CellModel_Constant  text="keyword"
      styleItem: [Keyword style class]
    childCellModel: CellModel_Property
      relationDeclaration → name property
```

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

## Smart-Reference Cell (`CellModel_RefCell`)

```
CellModel_RefCell
  relationDeclaration → <reference link>
  editorComponent: InlineEditorComponent
    cellModel: CellModel_Property
      relationDeclaration → name property
      readOnly: true
      styleItem: [Reference style class]
```

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

## Minimal Editor Blueprint

```json
{
  "concept": "jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration",
  "properties": [{ "name": "name", "value": "MyConcept_Editor" }],
  "references": [{ "role": "conceptDeclaration", "target": "<concept ref>" }],
  "children": [{
    "role": "cellModel",
    "nodes": [{
      "concept": "jetbrains.mps.lang.editor.structure.CellModel_Collection",
      "children": [
        { "role": "cellLayout", "nodes": [{ "concept": "jetbrains.mps.lang.editor.structure.CellLayout_Indent" }] },
        { "role": "childCellModel", "nodes": [
          { "concept": "jetbrains.mps.lang.editor.structure.CellModel_Constant", "properties": [{ "name": "text", "value": "{" }] }
        ]}
      ]
    }]
  }]
}
```

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

Each `nodes` array holds a single root `EditorCellModel` (usually a `CellModel_Collection` with a `CellLayout_Indent`), exactly as in the *Minimal Editor Blueprint* above. Omit the `inspectedCellModel` entry entirely when there is nothing to put in the Inspector.

## Vertical Gap / Visual Separator

To insert a blank line that visually separates one group of cells from another, add an **empty** `CellModel_Constant` (`text=""`) carrying an `IndentLayoutOnNewLineStyleClassItem` with `flag=true`, placed as a `childCellModel` inside a `CellLayout_Indent` collection. The on-new-line style pushes the (empty) constant onto its own line; because it has no text it renders as a blank row, so the cells before it and the cells after it are separated by a vertical gap. The `flag=true` is required — without it the style is inert and no gap appears (see the note under *Indented Child on New Line* above).

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

## Annotation (Node Attribute) Editor

The editor of an **attribute concept** (see `mps-aspect-structure-concepts/references/attributes-and-annotations.md`) *replaces* the host node's cell wherever the attribute is attached. It must therefore contain a `CellModel_AttributedNodeCell` (surface name **`attributed node`**, FQN `jetbrains.mps.lang.editor.structure.CellModel_AttributedNodeCell`) — that cell re-embeds the host node's own editor. Without it the attributed node disappears from the projection.

From `jetbrains.mps.lang.test` (`UnorderedChildrenMark_Editor` — projects as `«unordered child: <role> » <host node>`):

```
ConceptEditorDeclaration  (for the attribute concept)
  cellModel: CellModel_Collection
    cellLayout: CellLayout_Indent
    childCellModel: CellModel_Constant   text="«unordered child:"
      actionMap → DeleteMatchRelaxationMark      // makes the annotation keyboard-deletable
    childCellModel: CellModel_RefCell    (%link% — the feature the attribute grafts on)
      editorComponent: InlineEditorComponent
        cellModel: CellModel_ReferencePresentation
    childCellModel: CellModel_Constant   text="»"
    childCellModel: CellModel_AttributedNodeCell   // "attributed node" — re-embeds the host's editor
```

Conventions that make annotation editors readable and usable:

- **Guillemet labels** (`«…»` constants) visually separate the annotation from the host node's own syntax — the convention used by MPS itself (e.g. anti-quotations, test annotations).
- **`attributed node` placement** decides whether the annotation renders as a prefix (cell last, as above), suffix (cell first), or wrapper (cells on both sides) of the host.
- **Attach a `delete_action_id` action map to the label constant** so `Delete`/`Backspace` on the annotation's label removes the annotation and reselects the host — see `mps-aspect-editor-menus-and-keymaps/references/action-maps.md` §"Keyboard-Deletable Annotation".
- Pair with an intention that attaches the annotation (`mps-aspect-intentions/references/execute-idioms.md`) — annotations have no keyword syntax, so Alt+Enter is how users discover and add them.

Verbatim JSON of the `cellModel` (extracted from the live editor; `CellModel_AttributedNodeCell` and `CellModel_ReferencePresentation` take no properties, references, or children):

```json
{
  "concept": "jetbrains.mps.lang.editor.structure.CellModel_Collection",
  "children": [
    { "role": "cellLayout", "nodes": [{ "concept": "jetbrains.mps.lang.editor.structure.CellLayout_Indent" }] },
    { "role": "childCellModel", "nodes": [
      { "concept": "jetbrains.mps.lang.editor.structure.CellModel_Constant",
        "properties": [{ "name": "text", "value": "«unordered child:" }],
        "references": [{ "role": "actionMap", "target": "<delete-CellActionMapDeclaration-node-ref>" }] },
      { "concept": "jetbrains.mps.lang.editor.structure.CellModel_RefCell",
        "references": [{ "role": "relationDeclaration", "target": "<link reference LinkDeclaration>" }],
        "children": [{ "role": "editorComponent", "nodes": [{
          "concept": "jetbrains.mps.lang.editor.structure.InlineEditorComponent",
          "children": [{ "role": "cellModel", "nodes": [{
            "concept": "jetbrains.mps.lang.editor.structure.CellModel_ReferencePresentation" }]}]
        }]}]},
      { "concept": "jetbrains.mps.lang.editor.structure.CellModel_Constant",
        "properties": [{ "name": "text", "value": "»" }] },
      { "concept": "jetbrains.mps.lang.editor.structure.CellModel_AttributedNodeCell" }
    ]}
  ]
}
```

Here `CellModel_ReferencePresentation` renders the referent using its own presentation (for a `LinkDeclaration` referent that is the role name); a `CellModel_Property` on `name` with `readOnly=true` is the alternative shown under *Smart-Reference Cell* above.
