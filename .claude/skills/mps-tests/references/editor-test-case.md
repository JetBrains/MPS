# `EditorTestCase`

An editor test has a `before` node (with a caret annotation), a `code` block that drives the editor, and a `result` node the edited tree and caret are compared with.

One file per section, each self-contained. Read only the files for your job, and when you need more than one, Read them all in one parallel batch.

| Section | File |
|---|---|
| Root layout (`before` / `result` / `code`), the `AnonymousCellAnnotation` caret marker: what `before` sets and what `result` compares | `references/editor-test-case/root-and-caret.md` |
| Cell IDs in generated editors (`property_<name>`, `empty_<role>`, editor components), the BaseLanguage test corpus `bl.test` | `references/editor-test-case/cell-ids.md` |
| Editor-driving statements (`type`, `press`, `invoke action`, `invoke intention`, `invoke quick-fix`); MPS actions (`-> Insert`) vs platform action ids (`by id: $Undo`, `$Redo`, `$Copy`, `$Cut`, `$Paste`) with blueprints; why not `UndoManager` / `DataManager`; clipboard and undo semantics | `references/editor-test-case/statements-and-actions.md` |
| Editor expressions in `code` (`editor component`, `is intention applicable`, `is action applicable`, `project`, `model`) and inserting them into parsed Java | `references/editor-test-case/editor-expressions.md` |
| Intention example, side-transform / completion tests, deletion (two-step) and completion pitfalls | `references/editor-test-case/menus-deletion-completion.md` |
