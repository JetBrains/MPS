# 08 — Node Queries, Navigation, Search, Editor Focus

> **Captured-value contract** — _Inputs:_ `{{SERVER_PREFIX}}`, `{{PROJECT_DIR}}`, `{{SANDBOX_MODULE_REF}}`, `{{SANDBOX_MODEL_REF}}`, `{{GEARBOX_REF}}`, `{{GBX_PARKED_REF}}`, `{{GBX_DRIVING_REF}}`, `{{GBX_TRANS_REF}}`. _Produces (cross-part):_ none.

Tools: `mps_mcp_query_nodes` (all 8 ops; `scope` values `editable`/`all`/`models`/`modules`/
`roots`; `propertyFilter`, `exact`, `sampleOnly`), `mps_mcp_search_root_node_by_name`
(`scope` values `all`/`editable`/`models`/`modules`), `mps_mcp_open_node`,
`mps_mcp_get_current_editor_root_node` (`source:"editor"` success form), and the two
instance-dependent `query_structure` ops (`GET_ENUMERATION_LITERALS` by-property,
`GET_ASSIGNABLE_REFERENCES`).

Uses captured refs from part 07: `{{GEARBOX_REF}}`, `{{GBX_DRIVING_REF}}`,
`{{GBX_PARKED_REF}}`, `{{GBX_TRANS_REF}}`, and the module/model refs
`{{SANDBOX_MODULE_REF}}`, `{{SANDBOX_MODEL_REF}}`.

> `query_nodes`/`query_structure` `parameters` is again a JSON-encoded **string**.

---

### Step 08.01 — `query_nodes FIND_INSTANCES` State, `scope:"editable"` `[SUCCESS]`
```json
{ "tool": "mps_mcp_query_nodes",
  "arguments": { "projectPath": "{{PROJECT_DIR}}", "operation": "FIND_INSTANCES",
    "parameters": "{\"conceptRef\":\"mcp.test.statechart.structure.State\",\"scope\":\"editable\"}" } }
```
- Validation: `ok==true`; `data` is an array of State instances (Parked, Driving, Temp2,
  Idle, Running, Mobile, plus any others). Inline or temp-file (read if a path).

### Step 08.02 — `FIND_INSTANCES` State, `scope:"all"` `[SUCCESS]`
Same with `\"scope\":\"all\"`. Validation: `ok==true`; superset of 08.01 (also searches the
visible read-only dependency closure).

### Step 08.03 — `FIND_INSTANCES` State, `scope:"models"` `[SUCCESS]`
`parameters`: `{"conceptRef":"mcp.test.statechart.structure.State","scope":"models","models":["{{SANDBOX_MODEL_REF}}"]}`
- Validation: `ok==true`; only instances inside `mcp.test.sandbox.model`.

### Step 08.04 — `FIND_INSTANCES` State, `scope:"modules"` `[SUCCESS]`
`parameters`: `{"conceptRef":"mcp.test.statechart.structure.State","scope":"modules","modules":["{{SANDBOX_MODULE_REF}}"]}`
- Validation: `ok==true`; only instances inside the `mcp.test.sandbox` module.

### Step 08.05 — `FIND_INSTANCES` State, `scope:"roots"` `[SUCCESS]`
`parameters`: `{"conceptRef":"mcp.test.statechart.structure.State","scope":"roots","roots":["{{GEARBOX_REF}}"]}`
- Validation: `ok==true`; only States inside `GearboxStateChart` (Parked, Driving, Temp2).

### Step 08.06 — `FIND_INSTANCES` State, `sampleOnly:true` `[SUCCESS]`
`parameters`: `{"conceptRef":"mcp.test.statechart.structure.State","sampleOnly":true}`
- Validation: `ok==true`; `data` is a single sample State (one element / one object).

### Step 08.07 — `FIND_INSTANCES` Event with `propertyFilter` + `exact:true` `[SUCCESS]`
`parameters`: `{"conceptRef":"mcp.test.statechart.structure.Event","propertyFilter":{"name":"name","value":"go"},"exact":true}`
- Validation: `ok==true`; returns the single Event named `go` (in `GearboxStateChart`; the
  OtherStateChart event is `tick`). Exercises `propertyFilter` + `exact`.

---

### Step 08.08 — `query_nodes FIND_USAGES` on `Driving` `[SUCCESS]`
`parameters`: `{"nodeReference":"{{GBX_DRIVING_REF}}","scope":"editable"}`
- Validation: `ok==true`; `data` includes the Transition whose `target` points at `Driving`
  (i.e. `{{GBX_TRANS_REF}}`). Confirms incoming-reference search.

### Step 08.09 — `query_nodes GET_PARENT` `[SUCCESS]`
`parameters`: `{"nodeReference":"{{GBX_TRANS_REF}}"}`
- Validation: `ok==true`; `data` is the parent `State` (Parked).

### Step 08.10 — `query_nodes GET_ROOT` `[SUCCESS]`
`parameters`: `{"nodeReference":"{{GBX_TRANS_REF}}"}`
- Validation: `ok==true`; `data` is `GearboxStateChart` (`reference == {{GEARBOX_REF}}`).

### Step 08.11 — `query_nodes GET_MODEL_FOR_NODE` `[SUCCESS]`
`parameters`: `{"nodeReference":"{{GBX_TRANS_REF}}"}`
- Validation: `ok==true`; `data.name=="mcp.test.sandbox.model"`.

### Step 08.12 — `query_nodes NODE_INDEX` `[SUCCESS]`
`parameters`: `{"nodeReference":"{{GBX_DRIVING_REF}}"}`
- Validation: `ok==true`; `data` is an integer index (Driving was moved to index 0 in 07.32,
  so expect `0`).

### Step 08.13 — `query_nodes SIBLINGS` `[SUCCESS]`
`parameters`: `{"nodeReference":"{{GBX_DRIVING_REF}}"}`
- Validation: `ok==true`; `data` is an array of the sibling states in `GearboxStateChart.states`
  (includes Driving itself).

### Step 08.14 — `query_nodes GET_CHILD_ROLE` `[SUCCESS]`
`parameters`: `{"nodeReference":"{{GBX_DRIVING_REF}}"}`
- Validation: `ok==true`; `data.role=="states"`.

### Step 08.15 — Invalid: unknown `query_nodes` operation `[FAILURE]`
```json
{ "tool": "mps_mcp_query_nodes",
  "arguments": { "projectPath": "{{PROJECT_DIR}}", "operation": "NOPE", "parameters": "{}" } }
```
- Validation: `ok==false`; error names the valid operations.

---

### Step 08.16 — `search_root_node_by_name`, `scope:"editable"` `[SUCCESS]`
```json
{ "tool": "mps_mcp_search_root_node_by_name",
  "arguments": { "projectPath": "{{PROJECT_DIR}}",
    "names": "[\"GearboxStateChart\",\"OtherStateChart\"]", "scope": "editable" } }
```
- Validation: `ok==true`; finds both roots. (`names` accepts a single name or a JSON-array
  string.)

### Step 08.17 — `search_root_node_by_name`, `scope:"all"` `[SUCCESS]`
`names`: `"GearboxStateChart"`, `scope`: `"all"`. Validation: `ok==true`; finds `GearboxStateChart`.

### Step 08.18 — `search_root_node_by_name`, `scope:"models"` `[SUCCESS]`
`names`: `"GearboxStateChart"`, `scope`: `"models"`, `models`: `"{{SANDBOX_MODEL_REF}}"`.
- Validation: `ok==true`; finds it within the given model.

### Step 08.19 — `search_root_node_by_name`, `scope:"modules"` `[SUCCESS]`
`names`: `"GearboxStateChart"`, `scope`: `"modules"`, `modules`: `"{{SANDBOX_MODULE_REF}}"`.
- Validation: `ok==true`; finds it within the given module.

---

### Step 08.20 — `open_node` `GearboxStateChart` `[SUCCESS]`
```json
{ "tool": "mps_mcp_open_node",
  "arguments": { "projectPath": "{{PROJECT_DIR}}", "nodeReference": "{{GEARBOX_REF}}" } }
```
- Validation: `ok==true`; `data.present==true`.

### Step 08.21 — `get_current_editor_root_node` `source:"editor"` (success form) `[SUCCESS]`
```json
{ "tool": "mps_mcp_get_current_editor_root_node",
  "arguments": { "projectPath": "{{PROJECT_DIR}}", "source": "editor" } }
```
- Validation: `ok==true`; `data.name=="GearboxStateChart"` (the node opened in 08.20). This is
  the success counterpart to the empty-state failure in Step 01.04.
- Also assert the always-present caret/selection skeletons. `data.caret` is an always-present
  cell descriptor: a boolean `present`, `cellId`, `cellType`, the cell's **semantic** node
  (`nodeReference`/`nodeConcept`/`nodeName`, plus `nodeConceptQualifiedName`/`nodeConceptReference`),
  its **contextual** node (`contextualNodeReference`/`contextualNodeConcept`/`contextualNodeName`,
  plus `contextualNodeConceptQualifiedName`/`contextualNodeConceptReference`), `cellText`,
  `caretPosition`/`selectionStart`/`selectionEnd`, the flags `isBig`/`editable`/`referenceCell`/
  `errorState`, the interaction flags `selectable`/`selected`, a `feature` object (`kind`, `name`,
  `declaredIn`, `declaredInQualifiedName`, `declaredInConceptReference`, `value`, `valueNodeReference`,
  `targetReference`, `targetConcept`, `targetConceptQualifiedName`, `targetConceptReference`,
  `navigational`) naming the property/reference/child under the cursor, and a `messages` array (each
  entry `{status, message, priority}`, capped per cell; `[]` when the cell has no editor messages).
  `data.selection` is an object with `present`, `kind`,
  `direction`, `nodeCount`, `nodesReturned`, `nodesTruncated`, a `nodes` array, `cellCount`,
  `cellsReturned`, `cellsTruncated`, a `cells` array (each a cell descriptor), and `text` — the
  arrays are capped (default 20) while the counts stay the true totals. The envelope also carries
  `data.selectedNodeReference` (the currently selected cell's node — present for an ordinary
  caret too) and `data.bigCellSelected` (whether a whole node is selected). With only a freshly
  opened root and no manual selection, expect `data.selection.present==false`,
  `data.selection.nodes==[]`, `data.selection.cells==[]`, and both `*Truncated` flags `false`.

### Step 08.21a — deterministic caret / text / node selection `[MANUAL]`
This step needs real UI interaction (the headless bench cannot place a caret), so run it by hand
in the MPS instance, re-issuing the 08.21 call after each action:
1. Click into the `GearboxStateChart` **name** label to place a caret there, then re-run 08.21:
   expect `data.caret.present==true`, `data.caret.feature.kind=="property"`,
   `data.caret.feature.name=="name"`, `data.caret.editable==true`, `data.caret.selectable==true`,
   `data.caret.messages==[]` (unless the node has an editor message), and
   `data.caret.caretPosition>=0`; `data.selection.present==false`.
2. Select part of the name text (drag across a few characters), then re-run: expect
   `data.selection.present==true`, `data.selection.kind=="text"`, `data.selection.text` equal to
   the highlighted characters, and `data.selection.direction` one of `LEFT`/`RIGHT`/`NONE`.
3. Press Escape to select the whole node, then re-run: expect `data.bigCellSelected==true`,
   `data.selection.present==true`, `data.selection.kind=="nodes"`, `data.selection.nodeCount>=1`,
   and one entry in `data.selection.cells` with `isBig==true` and `selected==true`.
4. (Optional) A cell that only *navigates* a reference (e.g. a keyword whose Ctrl+click jumps to
   another node) reports `data.caret.feature.kind=="reference"` with
   `data.caret.feature.navigational==true` and `data.caret.referenceCell==false`, distinct from a
   genuine editable reference cell (`referenceCell==true`, `navigational==false`).

> The deterministic, automated counterpart of 08.21a — property/reference/navigation cells, text
> ranges, node ranges, and the empty skeletons — is covered by
> `EditorCaretSelectionSerializerTest` (run via `McpToolsIntegrationTestSuite`), which drives a
> `HeadlessEditorComponent` directly.

---

### Step 08.22 — `query_structure GET_ENUMERATION_LITERALS` by host node + property `[SUCCESS]`
The by-enumeration-ref form was covered in 06.22; this covers the **`nodeReference`+`propertyName`** form.
```json
{ "tool": "mps_mcp_query_structure",
  "arguments": { "projectPath": "{{PROJECT_DIR}}", "operation": "GET_ENUMERATION_LITERALS",
    "parameters": "{\"nodeReference\":\"{{GBX_PARKED_REF}}\",\"propertyName\":\"kind\"}" } }
```
- Validation: `ok==true`; `data` lists `initial`, `normal`, `final` (value/presentation/doc).

---

### Step 08.23 — `query_structure GET_ASSIGNABLE_REFERENCES`, `mode:"exhaustive"` `[SUCCESS]`
```json
{ "tool": "mps_mcp_query_structure",
  "arguments": { "projectPath": "{{PROJECT_DIR}}", "operation": "GET_ASSIGNABLE_REFERENCES",
    "parameters": "{\"contextNode\":\"{{GBX_TRANS_REF}}\",\"referenceRole\":\"target\",\"mode\":\"exhaustive\"}" } }
```
- Validation: `ok==true`; `data` is the list of valid `target` candidates — the State nodes in
  scope (Parked, Driving, Temp2, …); `meta.mode=="exhaustive"`.

### Step 08.24 — `GET_ASSIGNABLE_REFERENCES`, `mode:"completion"` + `sortBy`/`scopeMode` coverage `[SUCCESS]`

Run the following **six** calls (same tool, `operation:"GET_ASSIGNABLE_REFERENCES"`), each
varying only the `parameters` string. All target the real `target` reference role on
`{{GBX_TRANS_REF}}`, so each is a valid usage context. Expected for **each**: `ok==true`
(the call is accepted; `data` is a — possibly re-ranked or scope-narrowed — candidate list,
which may be empty for narrow scopes such as `jdk`/`imports` in this DSL). Record each
`meta` block.

- 08.24a `{"contextNode":"{{GBX_TRANS_REF}}","referenceRole":"target","mode":"completion","sortBy":"relevance","scopeMode":"local"}`
- 08.24b `{"contextNode":"{{GBX_TRANS_REF}}","referenceRole":"target","mode":"completion","sortBy":"name","scopeMode":"model"}`
- 08.24c `{"contextNode":"{{GBX_TRANS_REF}}","referenceRole":"target","mode":"completion","sortBy":"module","scopeMode":"module"}`
- 08.24d `{"contextNode":"{{GBX_TRANS_REF}}","referenceRole":"target","mode":"completion","sortBy":"distance","scopeMode":"project"}`
- 08.24e `{"contextNode":"{{GBX_TRANS_REF}}","referenceRole":"target","mode":"completion","scopeMode":"imports"}`
- 08.24f `{"contextNode":"{{GBX_TRANS_REF}}","referenceRole":"target","mode":"completion","scopeMode":"jdk"}`

Covers `mode` value `completion`; `sortBy` values `relevance`/`name`/`module`/`distance`;
`scopeMode` values `local`/`model`/`module`/`project`/`imports`/`jdk`.

> The `kindFilter` enum values (`constructors`/`instanceMethods`/`staticMethods`/`classes`)
> are BaseLanguage-completion-oriented and only bite on a call/type reference role
> (`baseMethodDeclaration` on an `IMethodCall`, or `classifier` on a `ClassifierType`) — not on
> the DSL `target` role used here. They are exercised in **Step 10.12** against the `McpRunnable`
> Java class, where such candidates exist.

Proceed to `09_editor_scaffolding.md`.
