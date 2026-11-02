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

## Deletion and completion tests

- **Deletion depends on a user setting.** Two-step deletion is on by default (`EditorSettings.useTwoStepDeletion`): a `Delete` / `Backspace` that starts from a caret may only mark the node for deletion, and only the next one deletes it. A selection that exactly covers the node's cell deletes at once. Fix the setting for the test by wrapping the action: `EditorTestUtil.runWithTwoStepDeletion({ => invoke action -> Backspace }, false);` (`true` tests the two-step behaviour). It needs the model `jetbrains.mps.lang.test.runtime` imported and the language `jetbrains.mps.baseLanguage.closures`. Parsing `EditorTestUtil.runWithTwoStepDeletion(() -> { int placeholder = 0; }, false);` gives a closure whose body holds one `BlockStatement`; replace that with the `InvokeActionStatement`. The make then warns "Closure generic throws types count doesn't match", which is harmless.
- **Completion:** `invoke action -> Complete` opens the menu, `type "..."` filters it, and `press ENTER` applies the selected item (no action applies a menu item). Blueprint: `{"concept": "jetbrains.mps.lang.test.structure.PressKeyStatement", "children": [{"role": "keyStrokes", "nodes": [{"concept": "jetbrains.mps.lang.plugin.structure.KeyMapKeystroke", "properties": [{"name": "keycode", "value": "VK_ENTER"}]}]}]}`.
- **Typing alone may already substitute.** Typing an exact, unique match (e.g. `int` into an empty BaseLanguage type) replaces the node without the menu, so a "type, then Complete" test passes even if completion is broken. Assert the menu in between (`editor component.getNodeSubstituteChooser().isVisible()`; how to insert `editor component` into parsed Java: `references/editor-test-case/editor-expressions.md`), or check that the test fails without the `Complete` step.
