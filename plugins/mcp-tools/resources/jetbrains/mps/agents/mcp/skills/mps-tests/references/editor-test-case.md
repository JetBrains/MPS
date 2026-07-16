# `EditorTestCase`

Root has:

```
Editor test case <Name>
description: ...
before:  <Test case with sample nodes>      // role 25YQCW (testNodeBefore)
result:  <Test case with expected nodes>    // role 25YQFr (testNodeResult)
code:    <statements that drive the editor> // role LjaKd (code)
```

The `before` and `result` are themselves `TestNode`s wrapping a `NodesTestCase`-shaped block with `nodes` + `test methods`. Caret position is marked by an **`AnonymousCellAnnotation`** (`LIFWc`) on the node where the caret should sit; the inspector lets you fine-tune the exact cell (`cellId`, `useLabelSelection`, `selectionStart/End`, `isLastPosition`). The `result` section typically also carries an `AnonymousCellAnnotation` to verify *where the caret ended up* after the action.

## Cell IDs in auto-generated editors

Cell IDs come from the generated `..._EditorBuilder_a.java`. Common patterns for declarative editor cells:

| Editor cell | Generated cellId |
|---|---|
| `{ name }` property cell for `name` | `property_name` (i.e. `property_<propertyName>`) |
| `%role%` RefNodeList (populated) | `refNodeList_<role>` |
| `%role%` RefNodeList (empty placeholder shown when the list is empty) | `empty_<role>` |
| `(role)` RefNode (single child) | `refNode_<role>` / `empty_<role>` when null |
| Constant cell `"text"` | `Constant_<rand>_<letter><digit>` (auto, e.g. `Constant_qpt50r_a0`) |
| Collection cell wrapping the whole concept | `Collection_<rand>_<letter>` (auto) |

When in doubt, open the generated `<Concept>_EditorBuilder_a.java` and grep for `setCellId(`. The empty-list placeholder (`empty_<role>`) is a *different* cell from the populated `refNodeList_<role>` wrapper — to drive a substitution into an empty list, point the caret at `empty_<role>`.

## Editor-driving statements (in the `code` block)

| Concept | Editor syntax | Effect |
|---|---|---|
| `TypeKeyStatement` (`2TK7Tu`) | `type "abc"` | Type the literal text at the caret |
| `PressKeyStatement` (`yd1bK`) | `press <chord>` | Simulate a key chord (Enter, Tab, Ctrl+Space, Alt+Enter…) |
| `InvokeActionStatement` (`2HxZob`) with `MPSActionReference` (`1iFQzN`) | `invoke action <ActionId>` | Invoke a registered MPS/IDEA action |
| `InvokeIntentionStatement` (`1MFPAf`) | `invoke intention <IntentionName>` | Invoke a specific intention; may have a parameter |
| `ApplyQuickFix` (`1MTqDA`) | `invoke quick-fix [<id>]` | Apply a quick-fix (named or first applicable) |

**Prefer `invoke action` over raw `press` for editor commands.** `PressKeyStatement` simulates a key chord but does not always reach the named-action dispatcher used by the production editor. For Enter-driven insertion, completion, etc., use `InvokeActionStatement` referencing the registered action by its `MPSActionReference`. Common targets live in the `jetbrains.mps.ide.editor.actions` model — e.g. `Insert` (the action behind Enter in list/collection cells). The model reference is `r:9832fb5f-2578-4b58-8014-a5de79da988e(jetbrains.mps.ide.editor.actions)`.

## Editor expressions (in the `code` block)

Inside the `code` block (written as BaseLanguage/Java snippet), four expressions are available as implicit variables. They are exposed by `BaseEditorTestBody` and map to protected methods in the generated test class. Use them when you need programmatic access to the editor state, project, or model — for example, to assert editor UI state, check intention applicability, or query model data beyond the tree comparison.

| Expression | Generated Java call | Return type | When to use |
|---|---|---|---|
| `EditorComponentExpression` (`369mXd`) | `getEditorComponent()` | `jetbrains.mps.nodeEditor.EditorComponent` | Query or assert editor UI state: substitute menus, selection, cell data, context. |
| `IsIntentionApplicableExpression` (`2bRw2S`) | `isIntentionApplicable(String id, SNode node)` | `boolean` | Assert whether an intention is applicable (or not) before invoking it. |
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

After the `code` runs, MPS compares the resulting editor state to the `result` section. Caret/selection must match too.

## Example — intention test on quotation

```
Editor test case ConvertToLightQuotation
before:  (some `<concept Foo>` quotation, caret on `Foo`)
result:  (the same expression rewritten as light quotation)
code:
  invoke intention "Convert to Light Quotation"
```

Source: `testbench/testsolutions/quotation.test/models/editorTest@tests.mps`

## Side-transform / completion tests

`EditorTestCase` is also the right container for side-transform menus, substitute menus, and completion items: type characters with `type "..."` or press `Tab`/`Enter` to commit a completion, and the `result` section verifies the resulting tree.

Examples:
- `testbench/testsolutions/editor.menus.sideTransform.tests/models/tests@tests.mps`
- `testbench/testsolutions/editor.test/selection/jetbrains.mps.lang.editor.completion.test.mps`
- `testbench/testsolutions/editor.test/selection/jetbrains.mps.lang.editor.intentions.test.mps`
