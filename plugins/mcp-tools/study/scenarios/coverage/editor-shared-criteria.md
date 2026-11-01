# Shared criteria for the editor cells S30–S35

Every `done_criteria.md` of S30–S35 links this file and names the items it applies (Clean, Green with
its test count, Deprecated, Same-root, Shipped). Observer, read-only, `projectPath` = run project dir.

- **Clean**: 0 errors from `check_root_node_problems` on the language's editor, actions and
  structure models and on every test model (`press` sets `change`; T1 live: empty slots are fine,
  an unresolved reference needs `has error` or a `code` assertion). **Green**: the observer's rerun
  of the worker's run configuration shows N tests, 0 failures, 0 skipped; no test `code` names
  `UndoManager`, `DataManager`, `FileEditor*`, `CopyPasteManager`.
- **Deprecated**: the cell fails if the check reports "instance of deprecated concept" or a
  deprecated feature (e.g. a reference-constraint `presentation`) anywhere in the run's languages
  and test models, or FIND_INSTANCES of `TransformationMenu_Default`, `_Named`,
  `SubstituteMenu_Default`, `_Named`, `IMenu_Default`, `_Named` in the run project is non-empty.
- **Same-root**: a test copies and pastes inside its own `before` root, or from an extra non-test
  root of the same `@tests` model via `editorContext.getClipboard()`; copying from another model fails
  the cell even if it passed (E4: the import dialog blocks MPS in-process).
- **Shipped**: a fixture's shipped tests stay (pinned ids and PLAIN TEXT), change only where the cell
  says the editor text legitimately changes; deletion fails the cell. **Completion tests** assert the
  offered items (`getNodeSubstituteChooser()` / `getSubstituteInfo().getMatchingActions`) **before**
  typing (completion never auto-pops in tests). The completion **pattern** is the cell text left of the
  caret: on a constant or keyword, the full list needs the caret at 0 or the whole cell selected (at the
  right end of `)` the pattern is `)`). `Complete` with one match applies at once only for a non-empty
  pattern; with an empty pattern it opens the list, so the test presses ENTER or types to filter. A **prefix
  test** types the prefix, then `Complete` (it applies the single match; `press ENTER` only if a menu is
  open); its result is the new node. The production path "prefix, the menu pops up, Enter" is not testable.
