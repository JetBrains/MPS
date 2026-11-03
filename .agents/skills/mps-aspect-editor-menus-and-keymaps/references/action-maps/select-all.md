## `SELECT_ALL` Customisation

Override `select_all_action_id`. For the common "select up until a boundary" pattern, use `jetbrains.mps.nodeEditor.selection.SelectUpUtil.executeWhile(...)` inside the execute block. To select a node range, call `editorContext.selectRange(first, last)`. The editor model then imports `jetbrains.mps.openapi.editor@java_stub`, so the language needs a dependency on `MPS.Editor`.
