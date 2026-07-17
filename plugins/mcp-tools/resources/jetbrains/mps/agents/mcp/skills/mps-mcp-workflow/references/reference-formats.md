# Reference Formats and Resolution

- Persistent references in MPS follow specific formats:
    - **Node References** (used in `targetReference` or `target` fields): start with `r:` (regular) or `i:` (stub/internal). Format: `r:model-uuid(model-name)#node-id`.
    - **Concept References** (used in `conceptReference` field): start with `c:`. Format: `c:language-uuid(language-name)/concept-id`.
- **CRITICAL**: never use a concept reference (`c:...`) where a node reference (`r:...`) is expected. If you need a reference to point to the **declaration node** of a concept (its definition), you must use its node reference.
- To obtain the node reference (`r:...`) for a concept:
    - Use `mps_mcp_get_concept_details` and check the **`sourceNode`** field in the response.
    - Alternatively, use `mps_mcp_search_concepts` and check the `sourceNode` field for each match.
- The `mps_mcp_insert_root_node_from_json` and `mps_mcp_update_node` tools will reject `c:...` strings in reference roles and will fail if a provided node reference cannot be resolved.

## MCP Response Envelope

Every MPS MCP tool returns a JSON envelope at the top level:

```
{
  "ok": true | false,
  "data": <payload>,         // present on ok:true; type depends on the tool
  "warnings": ["..."],       // optional; present only when non-empty
  "details": { ... },        // optional; present only when non-empty
  "error": "...",            // present on ok:false
  "code": "ERROR_CODE"       // present on ok:false when a structured error code is available
}
```

**`warnings`** appear in the envelope on a **successful response** (`ok:true`) when the tool completed but found something worth surfacing without treating it as an error. Current producers:

- **`mps_mcp_get_concept_details` partial success**: one warning per unresolved ref, alongside `details.unresolved` with suggestions.
- **Dry-run validation of node blueprints** (`mps_mcp_update_node`, `mps_mcp_insert_root_node_from_json`, `mps_mcp_update_root_node_from_json`): a warning is added when a reference target did not resolve during staging and the production write *would* create a dynamic (unresolved) reference. The dry-run itself succeeds, but the warning signals that the subsequent write may produce a broken reference.

**Dry-run response** specifically:

```json
{
  "ok": true,
  "data": { "dryRun": true, "message": "Dry run successful for ..." },
  "warnings": ["Dry run at $.references[0]: target 'X' did not resolve; production run would create a dynamic reference, but dry-run skips this step."]
}
```

Always inspect `warnings` after a dry-run response — an empty `warnings` list means staging was clean; a non-empty list means the production write will produce dynamic references for the listed targets.

## Node Info Envelope

Tools that return a node (e.g. `mps_mcp_get_current_editor_root_node`, `mps_mcp_create_root_node`, `mps_mcp_search_root_node_by_name`, the success path of node-mutation tools) return a common JSON envelope. Standard fields:

- `name` — node name (when the concept implements `INamedConcept`).
- `concept` — fully qualified concept name; use this as the `concept` field in JSON blueprints.
- `conceptReference` — persistent concept reference (`c:...`); informational.
- `reference` — persistent node reference (`r:...`).
- `parentReference` — persistent reference to the parent node (absent or null for roots).
- `rootReference` — persistent reference to the containing root node.
- `modelReference` — persistent reference to the containing model.
- `moduleReference` — persistent reference to the containing module.
- `virtualFolder` — Project View virtual folder, when set.
- `isRoot` — true for root nodes.
- `present` — `true` for a successful envelope.

Tool-specific additions:

- `mps_mcp_get_current_editor_root_node` (with `source='editor'`) additionally carries the editor's caret/selection state:
    - `selectedNodeReference` — the currently selected cell's node. NOTE: this is **not** specifically a whole-node ("big") selection — it is present for an ordinary caret too (e.g. a caret inside a property cell), because `EditorComponent.getSelectedNode()` returns the selected cell's node with no `isBig()` check. Use `bigCellSelected` to tell whether the whole node is selected.
    - `bigCellSelected` — `true` when the current top-level selection is a genuine whole-node ("big") cell selection (e.g. the whole node selected via Escape), `false` for a caret / text selection inside a leaf cell.
    - `caret` — the cursor's editor cell, **always present** as a skeleton so emptiness is explicit. It is a **cell descriptor** (see below) plus `present` (`false` when the cursor is outside any node or holds no cell; also `false` while a multi-node range is selected — the region is then reported under `selection`).
    - `selection` — the selected region, **always present** as a skeleton. Fields: `present` (true only for a genuine region: a non-trivial character range inside one label cell, or one/more whole cells/nodes selected), `kind` (`"text"` | `"nodes"` | `""`), `direction` (`"LEFT"` | `"RIGHT"` | `"NONE"`; `""` when no region), `nodeCount` (the **true total** of nodes in the region), `nodesReturned` (size of the `nodes` array), `nodesTruncated` (`true` when the array was capped), `nodes` (array of `{ reference, concept, name }`, capped at 20; `[]` when none), `cellCount` (the true total of cells), `cellsReturned`, `cellsTruncated`, `cells` (array of cell descriptors, capped at 20; `[]` when none), and `text` (selected characters for a character range; `""` otherwise). The arrays are bounded so a large selection cannot blow the inline-result budget — read `nodeCount`/`cellCount` for the totals and the `*Truncated` flags to know whether the arrays are complete.
    - **Cell descriptor** (used by `caret` and by each entry of `selection.cells`): `cellId`; `cellType` (the cell's runtime class, e.g. `EditorCell_Property` / `EditorCell_Constant` / `EditorCell_Collection`); the cell's **semantic** node — used for selection and editor actions — (`nodeReference`, `nodeConcept`, `nodeName`, plus the unambiguous `nodeConceptQualifiedName` and the persistent `nodeConceptReference`); the cell's **contextual** node — the node whose projection built the cell (`contextualNodeReference`, `contextualNodeConcept`, `contextualNodeName`, plus `contextualNodeConceptQualifiedName` / `contextualNodeConceptReference`); `cellText` (projected text of a label cell); the label offsets `caretPosition` / `selectionStart` / `selectionEnd` (`-1` for a non-label cell); the flags `isBig` (a whole-node cell), `editable` (an editable label), `referenceCell` (a genuine reference cell), `errorState`; the interaction flags `selectable` (the cell can be selected) and `selected` (the cell is currently selected — no `readOnly` flag is emitted, as the openapi cell exposes no stable read-only accessor); `feature`; and `messages` (a compact array of the editor messages attached to the cell — each `{ status ("error" | "warning" | "info"), message, priority }`, capped per cell; `[]` when the cell has none). Unavailable string fields are `""`. The semantic and contextual nodes differ inside a reference cell: the semantic node is the referencing node (what selection anchors on), the contextual node is the referenced target (what the cell was built from).
    - **`feature`** — the concept feature the cell projects: `{ kind ("property" | "reference" | "child" | ""), name, declaredIn (declaring concept simple name), declaredInQualifiedName, declaredInConceptReference (persistent concept ref), value, valueNodeReference, targetReference, targetConcept, targetConceptQualifiedName, targetConceptReference, navigational }`. The `value` is read from the node whose concept actually declares the feature — the contextual (target) node inside a reference presentation, otherwise the semantic node — and `valueNodeReference` is that node's persistent reference. For a property cell `value` is the property's display value (an enum value is resolved to its literal name, matching `mps_mcp_print_node`). For a reference role `value` is the target node's presentation, `targetReference` is the target's persistent node reference (`r:...`, or the raw target reference when unresolved) and the `targetConcept*` fields are the target's concept; all target/value fields are `""` for a child cell or when no feature applies. **`navigational`** is `true` when the role is a reference the cell only *navigates to* but does **not** edit (MPS's `EditorCell.getSRole()` returns the `NAVIGATABLE_SREFERENCE` style — a Ctrl+click target such as the constructor a `this(` keyword points at — before the edited role); a genuine, editable reference cell instead has `referenceCell=true` and `navigational=false`.
- `mps_mcp_update_node` carries `parentReference` of the freshly inserted child.
