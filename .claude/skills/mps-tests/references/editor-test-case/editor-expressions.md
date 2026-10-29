## Editor expressions (in the `code` block)

Inside the `code` block (written as BaseLanguage/Java snippet), five expressions are available as implicit variables. They are exposed by `BaseEditorTestBody` and map to protected methods in the generated test class. Use them when you need programmatic access to the editor state, project, or model — for example, to assert editor UI state, check intention applicability, or query model data beyond the tree comparison.

| Expression | Generated Java call | Return type | When to use |
|---|---|---|---|
| `EditorComponentExpression` (`369mXd`) | `getEditorComponent()` | `jetbrains.mps.nodeEditor.EditorComponent` | Query or assert editor UI state: substitute menus, selection, cell data, context. |
| `IsIntentionApplicableExpression` (`2bRw2S`) | `isIntentionApplicable(String id, SNode node)` | `boolean` | Assert whether an intention is applicable (or not) before invoking it. |
| `IsActionApplicableExpression` (`is action applicable -> X` / `is action applicable by id: …`) | `isActionApplicable(String id)` | `boolean` | Assert whether an action is enabled at the current selection, without invoking it. Takes an `ActionReference` child, as `invoke action` does; there is no node argument. |
| `ProjectExpression` (`1jxXqW`) | `getProject()` | `Project` | Access the test project's model access, repository, platform services. |
| `ModelExpression` (`1jGwE1`) | resolves to the edited node's `SModel` | `SModel` | Query the model containing the node under edit. |

**`EditorComponentExpression`** — Use `getEditorComponent()` to access the active editor component. Common methods:
- `getEditorContext()` — access the `EditorContext` for repository, selection, and node operations.
- `getSelectedNode()` — the currently selected `SNode`.
- `getEditedNode()` — the node being displayed in the editor.
- `getNodeSubstituteChooser()` — access the substitute menu state (e.g., `isVisible()`).
- `getData(String key)` — retrieve platform data keys from the editor context.

Example from `TestEditorMenuTraceCellMenuReplaceNode_Test`:
```java
Assert.assertTrue(getEditorComponent().getNodeSubstituteChooser().isVisible());
SubstituteAction action = (SubstituteAction) getEditorComponent().getData(PlatformDataKeys.SELECTED_ITEM.getName());
```

**`IsIntentionApplicableExpression`** — Use `isIntentionApplicable()` to verify whether an intention can execute. The first argument is the intention's fully qualified ID, the second is the target `SNode` (often `myStart.getNode()` — the node at the caret position marked by the `AnonymousCellAnnotation`).

Example from `TestNotApplicableConvertToTernaryOperatorIntention_Test`:
```java
Assert.assertFalse(isIntentionApplicable("jetbrains.mps.baseLanguage.intentions.ConvertIfConditionToTernaryOperator_Intention", myStart.getNode()));
```

Example from `Test_CreatePropertyPatternIntention_Test` (positive check + invoke):
```java
Assert.assertTrue(isIntentionApplicable("jetbrains.mps.lang.pattern.intentions.CreatePropertyPatternVariable_Intention", myStart.getNode()));
invokeIntention("jetbrains.mps.lang.pattern.intentions.CreatePropertyPatternVariable_Intention", myStart.getNode());
```

**`ProjectExpression`** — Use `getProject()` to access the test project. Typical use is `getProject().getModelAccess().runReadAction(...)` or `.runWriteAction(...)` for model operations.

Example from VCS merge tests:
```java
getProject().getModelAccess().runReadAction(() -> myBaseModel = MergeTemporaryModel.readonlyCloneOf(getTestModel()));
```

**`ModelExpression`** — The `model` expression resolves to the `SModel` of the node under edit. Use it to query model-level properties or roots. Since `getEditorComponent().getEditorContext().getSelectedNode().getModel()` achieves the same result, `model` is a shorthand for accessing the edited node's model.

**`IsActionApplicableExpression`** — With the caret on a node shown in its regular editor (as in `ShowReflectiveEditor`, `bl.test`):
```
assert true is action applicable -> ShowReflectiveEditor ;
assert false is action applicable -> ShowRegularEditor ;
```

Applicability is the action's enabled state, which may not depend on what the test is about: `is action applicable by id: $Paste` is true in any writable editor with a selection, whatever the clipboard holds. To test a paste, paste and compare the tree.

**These expressions in parsed Java.** `mps_mcp_parse_java_and_insert` cannot produce them. Parse the statement with a placeholder where the expression goes (e.g. `EditorComponent ec = null;`), then replace the placeholder with `mps_mcp_update_node` `SET CHILD` and `{"concept": "jetbrains.mps.lang.test.structure.EditorComponentExpression"}`. Typed locals and casts need their stub models imported with `mps_mcp_model_dependency`, by the `@java_stub` name: `jetbrains.mps.nodeEditor@java_stub` (`EditorComponent`), `jetbrains.mps.openapi.editor.cells@java_stub` (`EditorCell_Label`, e.g. `((EditorCell_Label) ec.getSelectedCell()).getText()` to read the label at the caret), `org.junit@java_stub` (`Assert`).

After the `code` runs, MPS first compares the node tree with the `result` section, and then the selection with the `result` annotation (see `references/editor-test-case/root-and-caret.md`). Without a `result` annotation, the selection is not checked.
