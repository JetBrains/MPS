# Reference Formats and Resolution

- Persistent references in MPS follow specific formats:
    - **Node References** (used in `targetReference` or `target` fields): start with `r:` (regular) or `i:` (stub/internal). Format: `r:model-uuid(model-name)#node-id`.
    - **Concept References** (used in `conceptReference` field): start with `c:`. Format: `c:language-uuid(language-name)/concept-id`.
- **CRITICAL**: never use a concept reference (`c:...`) where a node reference (`r:...`) is expected. If you need a reference to point to the **declaration node** of a concept (its definition), you must use its node reference.
- To obtain the node reference (`r:...`) for a concept:
    - Use `mps_mcp_get_concept_details` and check the **`sourceNode`** field in the response.
    - Alternatively, use `mps_mcp_search_concepts` and check the `sourceNode` field for each match.
- The `mps_mcp_insert_root_node_from_json` and `mps_mcp_update_node` tools will reject `c:...` strings in reference roles and will fail if a provided node reference cannot be resolved.
- **Model References**: `r:<model-uuid>(<model-name>)` — a node reference without the `#<node-id>` part.
- Tools that accept a model reference also accept the model's **qualified name** (the `name` field, stereotype included, e.g. `foo.bar@tests`) — the same form `mps_mcp_get_project_structure` `startingPoint` accepts.

### Which tools accept a MODEL reference

A model reference is **not** interchangeable with a node reference; each tool takes one or the other:

| Tool | node/root reference | model reference |
|---|---|---|
| `mps_mcp_check_root_node_problems` | yes | **yes** — also a qualified model name; pass it in `nodeReference` (there is no `modelReference` parameter). Checks every root of the model in one exhaustive call (`autoApplyQuickFixes` is ignored in this mode) |
| `mps_mcp_print_node` | yes | **no** — rejected with INVALID_REQUEST naming the model and a retry line for `mps_mcp_get_project_structure` (`startingPoint`, `includeNodes=true`) |
| `mps_mcp_update_node`, `mps_mcp_open_node`, `mps_mcp_list_node_intentions`, `mps_mcp_apply_intention` | yes | no — their node parameters take a node reference only |
| `mps_mcp_insert_root_node_from_json`, `mps_mcp_create_root_node` | — | yes, as the *target model* parameter |
| `mps_mcp_query_nodes` (`models` scope), `mps_mcp_alter_nodes` (`MAKE` `{"models": […]}`), `mps_mcp_model_dependency`, `mps_mcp_model_used_language`, `mps_mcp_update_model` | — | yes, in the documented model/`models` parameter |

Passing a model reference or qualified model name where a node reference is expected is rejected with INVALID_REQUEST that names the model and the tool to retry with — do not treat it as "the node is gone".

### Passing a list to a top-level parameter

These top-level parameters take one value or a list: `conceptRefs` / `languageRefs`
(`mps_mcp_get_concept_details`), `searchTexts` (`mps_mcp_search_concepts`), `names` / `models` /
`modules` (`mps_mcp_search_root_node_by_name`), `targetModels` (`mps_mcp_model_dependency`),
`facets` (`mps_mcp_create_module`), the four `include*` selectors of `mps_mcp_scaffold_editor`, and
the `json` blueprint of `mps_mcp_insert_root_node_from_json`,
`mps_mcp_update_root_node_from_json` and `mps_mcp_insert_console_command_from_json`.

**Both wire shapes are accepted and equivalent**: a real JSON array (`["A","B"]`) or the array
written as a string (`"[\"A\",\"B\"]"`). A single bare value needs no brackets — a persistent
reference is not valid bare JSON, so a lone `r:...` / `c:...` is always taken as one value. A value
no list can be built from (a JSON object, a number, an array of objects) is passed through as a
single value and comes back as the tool's ordinary unresolved-reference `ok:false` envelope, never
as an exception.

Blob keys *inside* a `parameters` / `conceptsJson` / `valuesJson` payload are different: that
payload is itself one string parameter, so its own arrays are plain JSON inside it.

### Two spellings for one reference key

The surface carries the same idea under a short and a long suffix — blob keys mostly use `…Ref`,
top-level tool parameters `…Reference` — and neither can be renamed without breaking existing call
sites. So **inside a `parameters` blob both spellings are accepted**:

| Canonical blob key | Also accepted | Read by |
|---|---|---|
| `conceptRef` | `conceptReference` | `mps_mcp_query_structure`, `mps_mcp_alter_structure`, `mps_mcp_query_nodes` (`FIND_INSTANCES`) |
| `superConceptRef` | `superConceptReference` | `mps_mcp_query_structure` (`IS_SUBCONCEPT_OF`) |
| `structureModelRef` | `structureModelReference` | `mps_mcp_alter_structure` |
| `enumerationRef` | `enumerationReference` | `mps_mcp_query_structure` (`GET_ENUMERATION_LITERALS`) |
| `nodeReference` | `nodeRef` | `mps_mcp_query_nodes`, `mps_mcp_alter_nodes`, `mps_mcp_query_structure` |
| `childNodeRef` | `childNodeReference` | `mps_mcp_alter_nodes` (`MOVE_CHILD`) |
| `newParentRef` | `newParentReference` | `mps_mcp_alter_nodes` (`MOVE_NODE_TO_PARENT`) |
| `modelReference` | `modelRef` | `mps_mcp_alter_nodes` (`MOVE_NODE_TO_PARENT`) |

Sending **both** spellings of one key in one blob is rejected with `INVALID_REQUEST` naming which
to keep — a caller who sent both could not otherwise tell which one the tool used. A field-level
JSON `null` still counts as absent under either spelling, so `{"enumerationRef": null,
"enumerationReference": "…"}` is one value, not a conflict.

**Top-level tool parameters have no aliases**: the only accepted spelling is the one in the tool's
schema (`conceptRefs`, `searchTexts`, `nodeReference`, `childNodeRef`, `conceptRef` for
`mps_mcp_scaffold_editor`, …). A wrong key is silently ignored and the parameter's default applies,
so the tool answers with its own required-parameter rejection — which names the correct key and
ends with the literal retry to make. Read that line instead of re-fetching the schema.

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
