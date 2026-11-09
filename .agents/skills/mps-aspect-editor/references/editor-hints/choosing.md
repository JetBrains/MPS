## Which editor a node gets

### The rule

For each node MPS has a set of **active hints** (`references/editor-hints/switching.md`) and walks the node's concept,
then its super-concepts and interfaces breadth-first. At each concept it considers the editors whose hints are all
active (the default editor always qualifies) and takes the one with the most hints:

- an editor whose hints cover every active hint (an exact match) is used at once;
- otherwise, after the walk, the candidate with the most hints wins (on a tie, the nearest concept).

Consequences:

- **Fallback, never an error.** A concept with no editor for the active hint keeps its default editor. Give hinted
  editors only to the concepts that look different; the others need nothing.
- **A hinted editor on a super-concept beats a sub-concept's default editor** while that hint is active, because it
  matches more active hints, however near the default editor is. One hinted editor on an abstract concept therefore
  replaces the editors of all its sub-concepts under the hint; give a sub-concept its own hinted editor to keep it
  different.
- Editors of every deployed extending language count, whether or not the model uses that language.
- Two editors of one concept with equally many active hints are ambiguous: MPS logs a SEVERE "Additional editor class …
  is applicable to the current context (…). Skipping this editor, using …" and takes the one whose generated class name
  sorts first, and every editor test that renders such a node fails with `UncleanTestExecutionException`. Give the
  concept an editor with all those hints (e.g. `{summary, audit}`).

### Hints are inherited down the cell tree

Active hints apply to the whole subtree: a child node's editor sees the hints its parent cell had. A hint switched on
for a board reaches its tasks, their fields and everything inside them. Only `removeHints` on a cell
(`references/editor-hints/switching.md`) stops a hint for that cell's subtree.

### The Inspector

The Inspector shows the node at the caret with the hints its cell has in the main editor, so a node displayed by a
hinted editor gets that editor's `inspectedCellModel`. A hinted editor without an inspected layout leaves the Inspector
only a read-only label with the node's debug text (`[<role>] <Concept> "<name>"[<id>] in <model>`), so put the details
the alternative layout hides in its `inspectedCellModel`.

### Decorating an editor: `next applicable editor`

To wrap a node's normal editor (a border, a marker, a comment prefix) without copying its cells, write a hinted editor
whose layout contains `CellModel_NextEditor` (shown as `next applicable editor`). It renders the node with the editor
that would be chosen if the current one did not exist, so later changes to that editor show through.

```json
{
  "concept": "jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration",
  "references": [{ "role": "conceptDeclaration", "target": "Task" }],
  "children": [
    { "role": "contextHints", "nodes": [
      { "concept": "jetbrains.mps.lang.editor.structure.ConceptEditorHintDeclarationReference",
        "references": [{ "role": "hint", "target": "<hint node reference>" }] } ] },
    { "role": "cellModel", "nodes": [{
      "concept": "jetbrains.mps.lang.editor.structure.CellModel_Collection",
      "children": [
        { "role": "cellLayout", "nodes": [{ "concept": "jetbrains.mps.lang.editor.structure.CellLayout_Horizontal" }] },
        { "role": "childCellModel", "nodes": [
          { "concept": "jetbrains.mps.lang.editor.structure.CellModel_Constant", "properties": [{ "name": "text", "value": "*" }] },
          { "concept": "jetbrains.mps.lang.editor.structure.CellModel_NextEditor" }
        ]},
        { "role": "styleItem", "nodes": [{ "concept": "jetbrains.mps.lang.editor.structure.DrawBorderStyleClassItem",
          "properties": [{ "name": "flag", "value": "true" }] }] }
      ]
    }]},
    { "role": "inspectedCellModel", "nodes": [{ "concept": "jetbrains.mps.lang.editor.structure.CellModel_NextEditor" }] }
  ]
}
```

- Only the current editor is excluded, and only for this node: the hint stays active, so the node's children still see
  it (their hinted editors apply).
- Add `removeHints` with the hint on the `CellModel_NextEditor` when the children must **not** see it any more, or when
  another editor hinted for the same hint on a super-concept would otherwise be chosen as the next one (BaseLanguage
  `Statement_comment_Editor` removes `comment` for both reasons).
- Without an `inspectedCellModel`, the decorated node's Inspector shows only that label; a second `CellModel_NextEditor`
  there shows the normal editor's inspector.
