## Annotation (Node Attribute) Editor

The editor of an **attribute concept** (see `references/attributes-and-annotations.md` in the `mps-aspect-structure-concepts` skill root after loading that companion skill from the same origin) *replaces* the host node's cell wherever the attribute is attached. It must therefore contain a `CellModel_AttributedNodeCell` (surface name **`attributed node`**, FQN `jetbrains.mps.lang.editor.structure.CellModel_AttributedNodeCell`) — that cell re-embeds the host node's own editor. Without it the attributed node disappears from the projection.

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
- **Attach a `delete_action_id` action map to the label constant** so `Delete`/`Backspace` on the annotation's label removes the annotation and reselects the host — see `references/action-maps/example-keyboard-deletable-annotation.md` in the `mps-aspect-editor-menus-and-keymaps` skill root after loading that companion skill from the same origin.
- Pair with an intention that attaches the annotation (`references/execute-idioms.md` in the `mps-aspect-intentions` skill root after loading that companion skill from the same origin) — annotations have no keyword syntax, so Alt+Enter is how users discover and add them.

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

Here `CellModel_ReferencePresentation` renders the referent using its own presentation (for a `LinkDeclaration` referent that is the role name); a `CellModel_Property` on `name` with `readOnly=true` is the alternative shown in `references/editor-patterns/smart-reference-cell.md`.
