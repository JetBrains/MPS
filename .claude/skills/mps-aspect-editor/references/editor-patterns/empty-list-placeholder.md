## Editable Empty-List Placeholder with a Disappearing Hint

**First, know the default:** a `CellModel_RefNodeList` with *no* `emptyCellModel` already synthesizes an editable empty cell — the caret lands on it when the list is empty and the user can type / press `Ctrl+Space` to insert the first child immediately. You get instant-typing for free and need none of this pattern.

Reach for a custom `emptyCellModel` **only when you want to customize the empty cell's text or behavior** (a hint like `<no rules>`, a specific style, an action). The catch: a plain `CellModel_Constant` in that role is read-only static text, so overriding the empty cell this naive way *loses* the instant-typing the default gave you — the caret can no longer enter it and completion is not offered. The two ingredients below restore that behavior while keeping your custom text.

This is the polished editor experience for a freshly created container node (e.g. `NodeMatchingRules` in `jetbrains.mps.lang.test`, whose editor reads `default matching, except:` then an indented, editable `<no rules>` line).

Two ingredients on the custom `emptyCellModel` (a `CellModel_Constant`) make it work:

1. **Put the placeholder in `nullText`, not `text`.** A `CellModel_Constant`'s `text` renders literally and *is* the cell's content (the caret sits after it and you must delete it before typing). Its `nullText` is a **hint shown only while the cell is empty** — it generates as `setDefaultText(...)`, renders greyed-out, and vanishes the instant a key is pressed. So `nullText="<no rules>"` shows the hint but leaves the cell logically empty, so typing / completion fires immediately.
2. **Add an `EditableStyleClassItem` (alias `editable`) with `flag=true`.** This sets `StyleAttributes.EDITABLE=true`, turning the otherwise read-only constant into a cell the caret can enter and type into. Without it the empty-list cell is not a text-entry point and completion is not offered there.

```
CellModel_RefNodeList  (%rules%)
  relationDeclaration → <rules child link>
  cellLayout: CellLayout_Indent
  emptyCellModel: CellModel_Constant
    nullText = "<no rules>"          // hint only; the cell stays empty → typeable
    styleItem: EditableStyleClassItem  flag=true   // StyleAttributes.EDITABLE
```

Verbatim JSON of the `emptyCellModel` (extracted from the live `NodeMatchingRules_Editor`):

```json
{
  "concept": "jetbrains.mps.lang.editor.structure.CellModel_Constant",
  "properties": [{ "name": "nullText", "value": "<no rules>" }],
  "children": [
    { "role": "styleItem", "nodes": [
      { "concept": "jetbrains.mps.lang.editor.structure.EditableStyleClassItem",
        "properties": [{ "name": "flag", "value": "true" }] }
    ]}
  ]
}
```

Notes:

- `nullText` vs `text` is the crux: a placeholder set via `text` must be deleted before typing; the same string in `nullText` disappears on the first keystroke and never blocks completion.
- `flag=true` is required on the style item — like the indent-layout style items, an `EditableStyleClassItem` with the default `flag=false` is inert (see the note under *Indented Child on New Line*).
- This composes with the list's own `cellLayout`/`styleItem`s (indent, new-line-children) exactly as in `references/editor-patterns/transparent-list.md`.
