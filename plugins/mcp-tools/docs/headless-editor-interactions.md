# Headless editor interactions for MCP tools

## Summary

MPS's `HeadlessEditorComponent` is sufficient to implement a virtual, stateless
editor-interaction API for the MCP tools. It retains the normal editor cell tree,
selection manager, action handler, typechecking session, side-transform logic,
and substitution/completion machinery while omitting the visible Swing editor
shell.

It cannot, however, change the selection or caret in the editor the user
currently has open, nor can it display a real completion popup. Those operations
must use the active UI editor component instead.

## Feasibility

| Capability | Headless support | Notes |
|---|---|---|
| Character selection | Yes | Selection offsets are relative to a single `EditorCell_Label`; they are not global document offsets. |
| Node-range selection | Yes | The first and last nodes must be siblings in the same containment role. |
| Caret positioning and movement | Yes | The caret can be positioned directly, or moved through editor actions such as `LEFT`, `RIGHT`, `HOME`, and `END`. Viewport-dependent actions need dedicated tests. |
| Side transformations | Yes | Invoke `LEFT_TRANSFORM` or `RIGHT_TRANSFORM`, then work with the resulting side-transform hint and its substitute information. |
| Substitution | Yes | Obtain `SubstituteAction` instances from the selected cell's `SubstituteInfo` and execute the chosen action inside a model command. |
| Completion item calculation | Yes | Completion actions and the logical chooser work without a visible window. |
| Selecting a completion item | Yes | The action can be chosen and executed programmatically while the same headless component and `EditorContext` are alive. |
| Visible completion popup | No | Without a showing editor window, MPS deliberately uses `DummySubstituteChooserUi`. |

## Evidence in the codebase

`HeadlessEditorComponent` extends the regular editor component and constructs it
with `withUI(false)`. Its documentation explicitly lists calling editor-specific
actions such as substitution as a supported use case:

- [`editor/editor-runtime/source_gen/jetbrains/mps/editor/runtime/HeadlessEditorComponent.java`](../../../editor/editor-runtime/source_gen/jetbrains/mps/editor/runtime/HeadlessEditorComponent.java)

The normal editor component owns a `SelectionManagerImpl`, an action handler, a
completion helper, and a `NodeSubstituteChooser` regardless of whether the UI
shell is created:

- [`editor/editor-runtime/source/jetbrains/mps/nodeEditor/EditorComponent.java`](../../../editor/editor-runtime/source/jetbrains/mps/nodeEditor/EditorComponent.java)
- [`editor/editor-runtime/source/jetbrains/mps/nodeEditor/EditorComponentActions.java`](../../../editor/editor-runtime/source/jetbrains/mps/nodeEditor/EditorComponentActions.java)

The public selection API supports selecting cells and nodes, placing the caret,
selecting a character interval inside a label, and creating a node range:

- [`editor/editor-api/source/jetbrains/mps/openapi/editor/selection/SelectionManager.java`](../../../editor/editor-api/source/jetbrains/mps/openapi/editor/selection/SelectionManager.java)
- [`editor/editor-api/source/jetbrains/mps/openapi/editor/cells/EditorCell_Label.java`](../../../editor/editor-api/source/jetbrains/mps/openapi/editor/cells/EditorCell_Label.java)
- [`editor/editor-runtime/source/jetbrains/mps/nodeEditor/selection/NodeRangeSelection.java`](../../../editor/editor-runtime/source/jetbrains/mps/nodeEditor/selection/NodeRangeSelection.java)

Side transforms are ordinary editor actions. They add side-transform information,
flush editor events, locate the generated hint cell, and select it:

- [`editor/editor-runtime/source/jetbrains/mps/nodeEditor/cellActions/CellAction_SideTransform.java`](../../../editor/editor-runtime/source/jetbrains/mps/nodeEditor/cellActions/CellAction_SideTransform.java)
- [`editor/editor-runtime/source/jetbrains/mps/nodeEditor/cellActions/SideTransformSubstituteInfo.java`](../../../editor/editor-runtime/source/jetbrains/mps/nodeEditor/cellActions/SideTransformSubstituteInfo.java)

Substitution is exposed through public editor APIs. `SubstituteInfo` calculates
matching actions, and `SubstituteAction` exposes their presentation and a
`substitute` operation. Its javadoc documents that it must always run inside a
model command; this is a documented contract, not something the interface
enforces at compile time or runtime, so callers are responsible for the
wrapping command themselves:

- [`editor/editor-api/source/jetbrains/mps/openapi/editor/cells/SubstituteInfo.java`](../../../editor/editor-api/source/jetbrains/mps/openapi/editor/cells/SubstituteInfo.java)
- [`editor/editor-api/source/jetbrains/mps/openapi/editor/cells/SubstituteAction.java`](../../../editor/editor-api/source/jetbrains/mps/openapi/editor/cells/SubstituteAction.java)

The completion chooser retains its model and selected action in headless/test
operation. When no real editor window is showing, only its visual implementation
is replaced with a dummy:

- [`editor/editor-runtime/source/jetbrains/mps/nodeEditor/cellMenu/NodeSubstituteChooser.java`](../../../editor/editor-runtime/source/jetbrains/mps/nodeEditor/cellMenu/NodeSubstituteChooser.java)
- [`editor/editor-runtime/source/jetbrains/mps/nodeEditor/cellMenu/DummySubstituteChooserUi.java`](../../../editor/editor-runtime/source/jetbrains/mps/nodeEditor/cellMenu/DummySubstituteChooserUi.java)
- [`editor/editor-runtime/source/jetbrains/mps/nodeEditor/cellMenu/CompletionHelper.java`](../../../editor/editor-runtime/source/jetbrains/mps/nodeEditor/cellMenu/CompletionHelper.java)

The mcp-tools plugin already depends on `editor-api` and `editor-runtime`, and it
already uses a headless editor for node rendering and intentions:

- [`plugins/mcp-tools/mcp-tools.iml`](../mcp-tools.iml)
- [`plugins/mcp-tools/src/jetbrains/mps/agents/mcp/tools/AbstractOps.kt`](../src/jetbrains/mps/agents/mcp/tools/AbstractOps.kt)
- [`plugins/mcp-tools/src/jetbrains/mps/agents/mcp/tools/JetBrainsMPSIntentionsMcpToolset.kt`](../src/jetbrains/mps/agents/mcp/tools/JetBrainsMPSIntentionsMcpToolset.kt)

## Selection model

MPS is projectional and does not expose a canonical linear document with one
global character offset. A useful selection descriptor must identify the editor
cell as well as the model node. A proposed external representation is:

```json
{
  "rootNodeReference": "r:...",
  "selectedNodeReference": "r:...",
  "cellId": "...",
  "caret": 4,
  "selectionStart": 1,
  "selectionEnd": 4
}
```

`cellId` may be replaced or supplemented by another cell locator when an editor
uses missing or repeated IDs. Candidates include MPS `CellInfo` data or a cell
path relative to the selected node's big cell.

There are two distinct kinds of range:

1. A character range inside one label cell.
2. A node range covering consecutive sibling nodes in one containment role.

They should be represented as different selection variants rather than forced
into one pair of text offsets.

## Lifecycle constraint

The existing `withHeadlessEditor` helper creates a component, calls `editNode`,
runs a block, and disposes the component in `finally`. Consequently, selection,
caret, completion chooser, and side-transform hint state exist only during that
block.

A headless `set_selection` or `move_caret` MCP call that only mutates the
temporary component would have no lasting effect after it returns. The API
should therefore be stateless:

1. Accept the initial selection descriptor with every interaction request.
2. Recreate that selection on a fresh headless component.
3. Perform the requested operation while the component remains alive.
4. Return the resulting selection descriptor and any model changes.

An alternative is a server-side editor session with a token and expiry, but that
introduces disposal, concurrency, stale-model, and class-reload concerns. A
stateless protocol is preferable unless multi-step fidelity proves impossible.

## Suggested MCP surface

### Inspect a projected editor

An inspection operation should return the selectable/editable cells needed to
construct a locator, including node reference, cell ID, cell kind, text, and
current caret/selection information.

### Perform an editor action

An action operation could accept:

- root node reference;
- selection descriptor;
- action such as `LEFT`, `RIGHT`, `HOME`, `END`, `LEFT_TRANSFORM`, or
  `RIGHT_TRANSFORM`;
- optional action-specific input.

It should return whether the action was applicable, the resulting selection,
and references to nodes created, replaced, or removed when determinable.

### List completion items

The request should include the root, cell locator, selection/caret, pattern, and
whether regular, smart, left-side, or right-side completion is requested. Each
result should contain at least:

- visible matching text;
- matching text;
- description;
- source/action-type node references where available;
- an opaque fingerprint used to identify the item on a later apply request.

An index alone is unsafe because completion order can change after model edits.

### Apply a completion item

The apply operation should recreate the same projected context, recalculate the
items, and match the supplied fingerprint. It should reject missing or ambiguous
matches rather than silently applying a different action. The chosen
`SubstituteAction` must be executed inside a model command, followed by the same
model persistence or Console refresh used by the existing mutating MCP tools.

## Completion implementation caveat

`NodeSubstituteChooser` publicly exposes the number of actions and the current
action, but its complete action list is package-private. Directly querying
`SubstituteInfo` is enough to obtain candidates, but reproducing the exact popup
visibility, customization, and ordering rules requires the logic in
`CompletionHelper` and `NodeSubstituteChooser`.

Options are:

1. Add a small read-only snapshot API to the editor runtime.
2. Drive the chooser's public current-item and keyboard-processing API.
3. Reproduce the completion filtering/sorting pipeline in mcp-tools.

The first option is the cleanest and least likely to drift.

## Side-transform cleanup

Executing a side-transform action installs a `SideTransformInfo` node attribute
before rebuilding the editor and creating the hint cell. Successful
side-transform substitute actions remove this attribute. A list-only or canceled
headless operation must remove it explicitly in `finally`; otherwise inspection
could leave the model dirty even though no transformation was applied.

For list-only requests, directly constructing `SideTransformSubstituteInfo` from
the anchor cell and side may avoid installing the hint entirely, provided tests
confirm that all transformation-menu contexts behave identically.

## Active UI editor alternative

If the intended operation is to move the user's visible caret, change their
actual selection, or show a real popup, use the active editor component instead
of a headless component. `mps_mcp_get_current_editor_root_node` already locates
the active `MPSFileNodeEditor` and its current editor component:

- [`plugins/mcp-tools/src/jetbrains/mps/agents/mcp/tools/JetBrainsMPSRootNodeMcpToolset.kt`](../src/jetbrains/mps/agents/mcp/tools/JetBrainsMPSRootNodeMcpToolset.kt)

This should be a distinct, explicitly UI-mutating tool surface. Headless tools
should remain deterministic and independent of which editor tab happens to be
focused.

## Testing recommendations

Add integration tests that instantiate `HeadlessEditorComponent` directly and
cover:

- setting and reading a label selection and caret;
- recreating a returned selection descriptor in a new component;
- left/right/home/end movement across cells;
- valid and invalid sibling node ranges;
- listing and applying normal and smart substitutions;
- listing and applying left and right side transforms;
- cleanup when a side transform is listed or canceled without application;
- completion customization and ordering;
- duplicate completion presentations and stale fingerprints;
- the single-action immediate-substitution case;
- persistence after a model-changing action.

Tests that only use a full `MPSFileNodeEditor` demonstrate editor behavior, but
they do not prove that the same path remains UI-independent. The new coverage
should exercise the actual headless component used by mcp-tools.
