## Testing hinted (alternative) editors

No `lang.test` statement sets editor hints. A test reaches a hinted editor in one of three ways:

1. **The language switches the hint on.** Put the node in `before` inside a container whose editor adds the hint
   (`addHints` on the cell, e.g. a board with its `summarized` flag set). Nothing extra in `code`.
2. **The per-editor IDE switch.** Push the hint as the editor's initial hints, the way the "Push Editor Hints" dialog
   does on OK, and rebuild. Never invoke the Push Editor Hints action in a test: it opens a dialog, and an in-process
   test then blocks MPS (`MODAL_BLOCKED` on every MCP call).
3. **Code of the language** (an intention that adds an explicit node hint): drive it with `invoke intention`, which
   always targets the `before` caret's node; for another node use the `IntentionsManager` helper in
   `references/editor-test-case/statements-and-actions.md`.

Recipe 2, as a static helper in a class of the test model (import `javax.swing@java_stub` and
`jetbrains.mps.nodeEditor@java_stub` first, parse it as a `CLASS` root, call it from `code` with `editor component` as
the first argument):

```java
public static void pushHints(final jetbrains.mps.nodeEditor.EditorComponent ec, final String[] hints) throws Exception {
  SwingUtilities.invokeAndWait(() -> {
    if (ec.getUpdater().setInitialEditorHints(hints)) {
      ec.getEditorContext().getRepository().getModelAccess().runReadAction(() -> ec.rebuildEditorContent());
    }
    ec.getEditorContext().flushEvents();
  });
}
```

- `hints` are the run-time hint strings, `<editor model name>.<container name>.<hint name>` (e.g.
  `org.example.tasks.editor.TaskViews.summary`); `new String[0]` shows the default view whatever the project's "Editor
  hints" setting says; `null` goes back to that setting. Test code may write `concept editor hint/<name>/` instead once
  the test model imports the hint's editor model and uses `jetbrains.mps.lang.editor`. Write `EditorComponent` fully
  qualified: the test model usually sees two classes of that name.

### Asserting which editor rendered a node

Typing and the `result` tree do not show which editor was used; assert the cells. On the EDT under a read action
(`references/editor-test-case/editor-expressions.md`): `ec.findNodeCell(node)` is the node's cell, `null` when the main
editor does not show the node at all (e.g. a child the summary editor hides). Compare `cell.renderText().getText()` (the
drawn text, spacing included: `*P1` vs `* P1`) with the expected line, or collect its `EditorCell_Label` texts with
`jetbrains.mps.openapi.editor.cells.CellTraversalUtil.iterateTree(cell, cell, true)`. A decorator's style sits on its
own collection, which can be a parent of `findNodeCell`'s cell: walk `cell.getParent()` while `getSNode()` is still the
node and read e.g. `Boolean.TRUE.equals(c.getStyle().get(StyleAttributes.DRAW_BORDER))`. A caret `cellId` does not tell
the editors apart: generated ids come from the cell (`property_name`, a component's `TH_property_name`), so the default
and the hinted editor usually share them. Put the caret on such a shared id and assert the shown cells instead.


A helper in the same class that returns the drawn text of a node's cell in the main editor (`null` when not shown);
pass `((jetbrains.mps.nodeEditor.NodeEditorComponent) ec).getInspector()` as `ec` to read the Inspector instead:

```java
public static String textOf(final jetbrains.mps.nodeEditor.EditorComponent ec, final SNode node) throws Exception {
  final String[] result = new String[1];
  SwingUtilities.invokeAndWait(() -> ec.getEditorContext().getRepository().getModelAccess().runReadAction(() -> {
    jetbrains.mps.openapi.editor.cells.EditorCell cell = ec.findNodeCell(node);
    result[0] = cell == null ? null : cell.renderText().getText();
  }));
  return result[0];
}
```

Look `node` up inside the read action too (e.g. among `ec.getEditedNode()`'s descendants): model reads outside it fail.

### The Inspector

Hints pushed on the main editor reach the Inspector, which then shows the hinted editor's `inspectedCellModel`. Keep the
caret in the main editor, push, and read the Inspector through `((jetbrains.mps.nodeEditor.NodeEditorComponent)
ec).getInspector()` (e.g. `getRootCell()`, `findNodeCell`), on the EDT under a read action like every other cell read.
With an `isInInspector` caret or after `SwitchToInspector`, `editor component` is the Inspector, so push before
`SwitchToInspector`.
