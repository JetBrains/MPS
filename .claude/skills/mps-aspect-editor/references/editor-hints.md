# Editor Hints — Alternative Editors for One Concept

A concept can have several editors: one **default** editor (no hints) and any number of **hinted** editors, each
applicable when its editor hints are active. Hints are declared once in an editor model, assigned to editors and editor
components, and switched on per editor, per node or per cell subtree. Use them for alternative notations (summary /
tabular / diagram views) and for decorating a node's editor without copying it.

One file per section, each self-contained. Read only the files for your job, and when you need more than one, Read them
all in one parallel batch.

| Section | File |
|---|---|
| Declaring hints (`ConceptEditorContextHints`, the hint ID string, `showInUI`), a hinted `ConceptEditorDeclaration`, a hinted component override, the checker rules, an extending language's editors for base concepts | `references/editor-hints/declaring.md` |
| Which editor is chosen for a node, the fallback to the default editor, super-concepts, hints inherited down the cell tree, the Inspector, decorating with `next applicable editor` | `references/editor-hints/choosing.md` |
| Switching hints on: `addHints`/`removeHints` on a cell (fixed or computed), the IDE's per-editor switch and its language scope, the project-wide setting, explicit hints for one node from code (an intention) | `references/editor-hints/switching.md` |

Editor tests of hinted editors (pushing a hint the way the IDE does, without a dialog): `references/editor-test-case/hinted-editors.md` in the `mps-tests` skill root after loading that companion skill from the same origin.
