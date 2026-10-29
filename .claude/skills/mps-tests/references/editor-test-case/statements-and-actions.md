## Editor-driving statements (in the `code` block)

| Concept | Editor syntax | Effect |
|---|---|---|
| `TypeKeyStatement` (`2TK7Tu`) | `type "abc"` | Type the literal text at the caret |
| `PressKeyStatement` (`yd1bK`) | `press <chord>` | Simulate a key chord (Enter, Tab, Ctrl+Space, Alt+Enter…). Each `KeyMapKeystroke` reports "Empty enumeration property: 'change'" in the checker; MPS's own tests carry it too, so ignore it |
| `InvokeActionStatement` (`2HxZob`) with `MPSActionReference` (`1iFQzN`) | `invoke action -> <Name>` | Invoke an MPS action (`ActionDeclaration`) |
| `InvokeActionStatement` with `BootstrapActionReference` | `invoke action by id: <actionId>` | Invoke an action by its id string, e.g. the platform's `$Undo` |
| `InvokeIntentionStatement` (`1MFPAf`) | `invoke intention <IntentionName>` | Invoke a specific intention; may have a parameter |
| `ApplyQuickFix` (`1MTqDA`) | `invoke quick-fix [<id>]` | Apply a quick-fix (named or first applicable) |

Also available, rarely needed: `InvokeSurroundWithIntentionStatement` (a surround-with intention), `SwitchToInspector` (later statements drive the inspector), `PressMouseStatement` / `DragMouseStatement` (mouse events at x, y). Concept refs are in `references/concept-identifiers.md`.

## Invoking actions: MPS actions and platform action ids

`InvokeActionStatement.actionReference` (and `IsActionApplicableExpression.actionReference`) takes one of the two subconcepts of the abstract `ActionReference`:

| Reference | Editor | Holds | Generated call |
|---|---|---|---|
| `MPSActionReference` | `invoke action -> Insert` | `action` → an `ActionDeclaration` node | `invokeAction("jetbrains.mps.ide.editor.actions.Insert_Action")` (the action's `ID` property when set, otherwise `<model>.<Name>_Action`) |
| `BootstrapActionReference` | `invoke action by id: $Undo` | `actionId` property, used verbatim | `invokeAction("$Undo")` |

**Undo, Redo, Copy, Cut and Paste are IntelliJ platform actions, not MPS actions**, so they are not in `jetbrains.mps.ide.editor.actions`. Use `invoke action by id:` with `$Undo`, `$Redo`, `$Copy`, `$Cut` or `$Paste` (the `$` is part of the id). Everything else an editor test usually needs is an MPS action reached by `MPSActionReference`: `Insert` (Enter in a list), `InsertBefore`, `Delete`, `Backspace`, `Complete`, `CompleteSmart`, `Home`, `End`, `MoveLeft`/`MoveRight`/`MoveUp`/`MoveDown`, `SelectUp`, `SelectAll`, `Comment`. They are roots of `r:9832fb5f-2578-4b58-8014-a5de79da988e(jetbrains.mps.ide.editor.actions)` (module `jetbrains.mps.ide.editor`). Resolve their node refs in one call, `mps_mcp_search_root_node_by_name(names=["Insert","Complete"], scope="models", models="r:9832fb5f-2578-4b58-8014-a5de79da988e(jetbrains.mps.ide.editor.actions)")`; do not guess them. An MCP write that sets the reference adds the model import and the module dependency.

**Prefer `invoke action` over raw `press` for editor commands.** `PressKeyStatement` simulates a key chord but does not always reach the named-action dispatcher used by the production editor, so for a new list element use `invoke action -> Insert`, not `press ENTER`. The exception is an open completion menu: Enter applies the selected item and no action does that, so there `press ENTER` is right (see `references/editor-test-case/menus-deletion-completion.md`).

Example from `SimpleUndoTest` (`bl.test`): `before` and `result` hold the same `int i;`, and the code is

```
code:
  type "="
  invoke action by id: $Undo
```

Blueprint of that statement, for the `code` `StatementList`:

```json
{"concept": "jetbrains.mps.lang.test.structure.InvokeActionStatement",
 "children": [{"role": "actionReference", "nodes": [
   {"concept": "jetbrains.mps.lang.test.structure.BootstrapActionReference",
    "properties": [{"name": "actionId", "value": "$Undo"}]}]}]}
```

MPS's own test stops there and passes even if typing did nothing; add an intermediate assertion (see the undo bullet below). For an MPS action, the child is `{"concept": "jetbrains.mps.lang.test.structure.MPSActionReference", "references": [{"role": "action", "target": "<ActionDeclaration node ref>"}]}`.

**Do not reach `UndoManager`, `FileEditor`, `FileEditorManager`, `CopyPasteManager` or `DataManager.getInstance()` from a test's `code`.** Such a test can pass in a running MPS and fail in a test JVM (CI). In a test run outside the IDE, `DataManager.getInstance()` is the platform's `HeadlessDataManager`, which ignores the component it is given, so its data context has no editor and no file editor (a real failure: "The native editor test must expose its actual file editor"). `invoke action` avoids this: the runtime builds the event's data context over the test's editor component with its own `DataManagerImpl`, and points the IDE undo manager at the test's file editor while the action runs.

How `invoke action` behaves:
- The id is looked up in the `ActionManager`. An unknown id (a typo, a missing `$`, a short name such as `by id: Insert`) fails with `RuntimeException: Failure during editor test execution`, caused by `NullPointerException: … because "action" is null`. `is action applicable` fails the same way.
- The action is performed without its update check, so an action that is not applicable still runs. If the test depends on applicability, assert it first with `is action applicable`. An exception inside an MPS action is logged, not thrown: the test fails only at the end, with `UncleanTestExecutionException`.

Clipboard and undo semantics that decide the `result`:
- Copy and Cut act on the selection. A `before` annotation on the node's own collection cell (e.g. `Collection_…`, `caretPosition` 0) selects the whole node; from a label caret, repeat `invoke action -> SelectUp` until the node's collection cell is selected (first the word, then the whole label, then the node; MPS's own tests use two). `$Copy` on a selected label text copies the text, not the node.
- Paste onto a whole-node selection, or a completely selected label, **replaces** that node. With the caret at the start of a node it inserts before it; otherwise it pastes at the caret cell, usually after. To paste a copy after the original: `$Copy`, `invoke action -> End`, `$Paste`.
- An undo test whose `result` equals `before` also passes when the edit did nothing. Assert the intermediate state between the edit and `$Undo`, e.g. the selected label's text through `editor component` (how to insert it into parsed Java: `references/editor-test-case/editor-expressions.md`). Do the same between `$Undo` and `$Redo` in a redo test.
