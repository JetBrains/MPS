# 07 — Root Nodes and Node Editing

> **Captured-value contract** — _Inputs:_ `{{SERVER_PREFIX}}`, `{{PROJECT_DIR}}`. _Produces (cross-part):_ `{{GEARBOX_REF}}`, `{{GBX_PARKED_REF}}`, `{{GBX_DRIVING_REF}}`, `{{GBX_TRANS_REF}}`. _(Also creates many intra-part refs — `{{OTHER_ROOT_REF}}`, `{{GBX_GO_REF}}`, etc. — used only inside this part.)_

Tools: `mps_mcp_create_root_node`, `mps_mcp_insert_root_node_from_json` (single + array +
`dryRun`), `mps_mcp_print_node` (formats `JSON`/`HTML`/`PLAIN TEXT`, `deep` true/false),
`mps_mcp_update_node` (ops×kinds: ADD/CHILD, SET/CHILD, SET/PROPERTY, SET/REFERENCE, plus
deletes via `null`, plus invalid combos), `mps_mcp_check_root_node_problems`
(`onlyNodesWithProblems` true/false; clean + problem), `mps_mcp_update_root_node_from_json`
(UPDATE/DELETE/dryRun), `mps_mcp_alter_nodes` (MOVE_CHILD, MOVE_NODE_TO_PARENT,
FIX_REFERENCES), `mps_mcp_get_project_structure` (`includeRootNodes`/`includeNodes` scoped).

> **For `json` / `childJson` arguments:** pass the shown JSON object **as a string**. These
> are single-level (not nested inside `parameters`), so a normal JSON-string encoding is
> enough. Where convenient you may instead pass an absolute temp-file path.
> **Reminder:** run these mutations strictly one at a time (never two writes to one root
> concurrently).

---

### Step 07.01 — `create_root_node` `GearboxStateChart` `[CAPTURE]`

```json
{
  "tool": "mps_mcp_create_root_node",
  "arguments": {
    "projectPath": "{{PROJECT_DIR}}",
    "modelReference": "mcp.test.sandbox.model",
    "concept": "mcp.test.statechart.structure.StateChart",
    "name": "GearboxStateChart"
  }
}
```
- Validation: `ok==true`; `data.name=="GearboxStateChart"`; `data.isRoot==true`.
- **Capture** `data.reference` as `{{GEARBOX_REF}}`.

---

### Step 07.02 — Invalid: create root with a non-existent concept `[FAILURE]`

```json
{
  "tool": "mps_mcp_create_root_node",
  "arguments": {
    "projectPath": "{{PROJECT_DIR}}",
    "modelReference": "mcp.test.sandbox.model",
    "concept": "mcp.test.statechart.structure.NoSuchConcept",
    "name": "BadNode"
  }
}
```
- Validation: `ok==false`; `code` expected `NOT_FOUND`; error like `Concept not found`.

---

### Step 07.03 — `insert_root_node_from_json` (single, deep) `OtherStateChart` `[CAPTURE]`

Pass this object as the `json` argument (string). It exercises an enum property value
(`kind:"initial"`, a non-default) and **intra-blueprint reference resolution by name**
(the transition's `target` names `Running`, a state declared *after* it; `event` names `tick`
— deliberately **not** `go`, so it stays distinct from the `go` Event added to `GearboxStateChart`
in 07.10 and 07.20's by-name `event → go` resolution stays unambiguous within the model).

`json` (decoded):
```json
{
  "concept": "mcp.test.statechart.structure.StateChart",
  "properties": [{ "name": "name", "value": "OtherStateChart" }],
  "children": [
    { "role": "events", "nodes": [
      { "concept": "mcp.test.statechart.structure.Event", "properties": [{ "name": "name", "value": "tick" }] }
    ]},
    { "role": "states", "nodes": [
      { "concept": "mcp.test.statechart.structure.State",
        "properties": [{ "name": "name", "value": "Idle" }, { "name": "kind", "value": "initial" }],
        "children": [{ "role": "transitions", "nodes": [
          { "concept": "mcp.test.statechart.structure.Transition",
            "references": [{ "role": "target", "target": "Running" }, { "role": "event", "target": "tick" }] }
        ]}]
      },
      { "concept": "mcp.test.statechart.structure.State", "properties": [{ "name": "name", "value": "Running" }] }
    ]}
  ]
}
```
Send:
```json
{
  "tool": "mps_mcp_insert_root_node_from_json",
  "arguments": {
    "projectPath": "{{PROJECT_DIR}}",
    "modelReference": "mcp.test.sandbox.model",
    "json": "<the JSON object above, as a string>"
  }
}
```
- Validation: `ok==true`; `data.name=="OtherStateChart"`; `data.fixReferences.stillBroken==0`
  (all references resolved, including the forward `target → Running`).
- **Capture** `data.reference` as `{{OTHER_ROOT_REF}}`.

---

### Step 07.04 — `insert_root_node_from_json` (array form, atomic batch) `[SUCCESS]`

`json` (decoded) — a top-level array of two roots:
```json
[
  { "concept": "mcp.test.statechart.structure.StateChart", "properties": [{ "name": "name", "value": "ChartA" }] },
  { "concept": "mcp.test.statechart.structure.StateChart", "properties": [{ "name": "name", "value": "ChartB" }] }
]
```
Send the array (as a string) as `json`, same other args as 07.03.
- Validation: `ok==true`; `data` is an **array** of two node-info envelopes named `ChartA`,
  `ChartB`.

---

### Step 07.05 — `insert_root_node_from_json` with `dryRun:true` `[SUCCESS]`

`json` (decoded): `{ "concept":"mcp.test.statechart.structure.StateChart", "properties":[{"name":"name","value":"DryRunChart"}] }`
```json
{
  "tool": "mps_mcp_insert_root_node_from_json",
  "arguments": {
    "projectPath": "{{PROJECT_DIR}}",
    "modelReference": "mcp.test.sandbox.model",
    "dryRun": true,
    "json": "<the DryRunChart object above, as a string>"
  }
}
```
- Validation: `ok==true`; `data.dryRun==true`; message indicates a successful dry run.
- **Project-state check:** a later root listing (Step 07.30) must **not** contain
  `DryRunChart` (dry run creates nothing).

---

### Step 07.06 — `print_node` deep JSON on `OtherStateChart` `[READ-FILE]` `[CAPTURE]`

```json
{
  "tool": "mps_mcp_print_node",
  "arguments": { "projectPath": "{{PROJECT_DIR}}", "nodeReference": "{{OTHER_ROOT_REF}}", "deep": true }
}
```
- Validation: `ok==true`; `data` is a temp-file path; **READ** it. Confirm the tree: a
  `states` role with `Idle` and `Running`; `Idle` has a `transitions` child whose `target`
  resolves to `Running` and `event` to `tick`. Confirm `Idle.kind` prints as
  `"<memberId>/initial"` (non-default enum values carry the member-id prefix).
- **Capture** from the file: the `Idle` State node `reference` as `{{OTHER_IDLE_REF}}`, the
  `Running` State node `reference` as `{{OTHER_RUNNING_REF}}`.

---

### Step 07.07 — `print_node` shallow (`deep:false`) `[READ-FILE]`

```json
{
  "tool": "mps_mcp_print_node",
  "arguments": { "projectPath": "{{PROJECT_DIR}}", "nodeReference": "{{OTHER_ROOT_REF}}", "deep": false }
}
```
- Validation: `ok==true`; temp-file path; the file lists child roles with child references but
  does **not** inline grandchildren. Exercises `deep:false`.

---

### Step 07.08 — `print_node` `format:"PLAIN TEXT"` `[READ-FILE]`

```json
{
  "tool": "mps_mcp_print_node",
  "arguments": { "projectPath": "{{PROJECT_DIR}}", "nodeReference": "{{OTHER_ROOT_REF}}", "format": "PLAIN TEXT" }
}
```
- Validation: `ok==true`; temp-file path; file holds the editor-projected plain-text rendering
  of `OtherStateChart`. Exercises `format:"PLAIN TEXT"`.

---

### Step 07.09 — `print_node` `format:"HTML"` `[READ-FILE]`

```json
{
  "tool": "mps_mcp_print_node",
  "arguments": { "projectPath": "{{PROJECT_DIR}}", "nodeReference": "{{OTHER_ROOT_REF}}", "format": "HTML" }
}
```
- Validation: `ok==true`; temp-file path; file holds an HTML rendering. Exercises
  `format:"HTML"`. (`format:"JSON"` was exercised in 07.06/07.07.)

---

### Step 07.10 — `update_node ADD CHILD` — Event `go` into `GearboxStateChart.events` `[CAPTURE]`

`childJson` (decoded): `{ "concept":"mcp.test.statechart.structure.Event", "properties":[{"name":"name","value":"go"}] }`
```json
{
  "tool": "mps_mcp_update_node",
  "arguments": {
    "projectPath": "{{PROJECT_DIR}}",
    "operation": "ADD", "kind": "CHILD",
    "nodeReference": "{{GEARBOX_REF}}", "childRole": "events",
    "childJson": "<the Event go object above, as a string>"
  }
}
```
- Validation: `ok==true`; `data.name=="go"`. **Capture** `data.reference` as `{{GBX_GO_REF}}`.

---

### Step 07.11 — `update_node ADD CHILD` — State `Parked` `[CAPTURE]`

`childJson`: `{ "concept":"mcp.test.statechart.structure.State", "properties":[{"name":"name","value":"Parked"}] }`, `childRole":"states"`, `nodeReference":"{{GEARBOX_REF}}"`.
- Validation: `ok==true`; **capture** `data.reference` as `{{GBX_PARKED_REF}}`.

### Step 07.12 — `update_node ADD CHILD` — State `Driving` `[CAPTURE]`
Same as 07.11 with name `Driving`. **Capture** `{{GBX_DRIVING_REF}}`.

### Step 07.13 — `update_node ADD CHILD` — State `Temp` `[CAPTURE]`
Same with name `Temp`. **Capture** `{{GBX_TEMP_REF}}`.

### Step 07.14 — `update_node ADD CHILD` — State `Disposable` `[CAPTURE]`
Same with name `Disposable`. **Capture** `{{GBX_DISP_REF}}`.

### Step 07.15 — `update_node ADD CHILD` — State `Mobile` `[CAPTURE]`
Same with name `Mobile`. **Capture** `{{GBX_MOBILE_REF}}`.

---

### Step 07.16 — `update_node ADD CHILD` — Transition into `Parked.transitions` (left incomplete) `[CAPTURE]`

`childJson`: `{ "concept":"mcp.test.statechart.structure.Transition" }` (no references yet).
```json
{
  "tool": "mps_mcp_update_node",
  "arguments": {
    "projectPath": "{{PROJECT_DIR}}",
    "operation": "ADD", "kind": "CHILD",
    "nodeReference": "{{GBX_PARKED_REF}}", "childRole": "transitions",
    "childJson": "{\"concept\":\"mcp.test.statechart.structure.Transition\"}"
  }
}
```
- Validation: `ok==true`. **Capture** `data.reference` as `{{GBX_TRANS_REF}}`.
- Note: this transition currently lacks its mandatory `target` → it is intentionally a
  problem until Step 07.19.

---

### Step 07.17 — `update_node ADD CHILD` with `dryRun:true` `[SUCCESS]`

Validate-only add of a State to Gearbox; nothing is persisted.
```json
{
  "tool": "mps_mcp_update_node",
  "arguments": {
    "projectPath": "{{PROJECT_DIR}}",
    "operation": "ADD", "kind": "CHILD",
    "nodeReference": "{{GEARBOX_REF}}", "childRole": "states",
    "childJson": "{\"concept\":\"mcp.test.statechart.structure.State\",\"properties\":[{\"name\":\"name\",\"value\":\"NeverPersisted\"}]}",
    "dryRun": true
  }
}
```
- Validation: `ok==true`; `data.dryRun==true`. State-check: `NeverPersisted` must not exist
  later.

---

### Step 07.18 — `update_node SET PROPERTY` — set `Parked.kind = "initial"` `[SUCCESS]`

```json
{
  "tool": "mps_mcp_update_node",
  "arguments": {
    "projectPath": "{{PROJECT_DIR}}",
    "operation": "SET", "kind": "PROPERTY",
    "properties": [["{{GBX_PARKED_REF}}", "kind", "initial"]]
  }
}
```
- Validation: `ok==true`; response `data` is an array `[{"ok":true,"data":{...}}]`. (Use the
  enum literal **value** `initial`, not the prefixed printed form.)

---

### Step 07.19 — `update_node SET REFERENCE` — set transition `target → Driving` `[SUCCESS]`

```json
{
  "tool": "mps_mcp_update_node",
  "arguments": {
    "projectPath": "{{PROJECT_DIR}}",
    "operation": "SET", "kind": "REFERENCE",
    "references": [["{{GBX_TRANS_REF}}", "target", "Driving"]]
  }
}
```
- Validation: `ok==true`. (Target given by **plain name** `Driving`, a non-root sibling State;
  SET REFERENCE resolves it in the role's search scope — both states share the `GearboxStateChart`
  root. A name that does not resolve in scope would now return `ok==false` with `NOT_FOUND`.)
- Note: keep the plain name — do **not** substitute the captured persistent `r:` ref
  (`{{GBX_DRIVING_REF}}`). This step guards SET REFERENCE's in-scope by-name resolution.

---

### Step 07.20 — `update_node SET REFERENCE` — set transition `event → go` `[SUCCESS]`

Same shape, `references: [["{{GBX_TRANS_REF}}", "event", "go"]]`.
- Validation: `ok==true`. (Plain name `go`, a non-root Event, resolves in scope **and is unique in
  the model** — the OtherStateChart event from 07.03 is named `tick`, not `go`, so by-name resolution
  is unambiguous. A name shared by two in-scope nodes would fail `ok==false`/`NOT_FOUND` with an
  *ambiguous* error. Keep the plain name rather than `{{GBX_GO_REF}}` — same rationale as 07.19.)

---

### Step 07.21 — `check_root_node_problems` on Gearbox → clean `[SUCCESS]`

```json
{
  "tool": "mps_mcp_check_root_node_problems",
  "arguments": { "projectPath": "{{PROJECT_DIR}}", "nodeReference": "{{GEARBOX_REF}}" }
}
```
- Validation: `ok==true`; `data=="no problems found"` (the mandatory `target` is now set).
- If a problem is reported here, the `target`/`event` references did not take → record FAIL.

---

### Step 07.22 — `update_node SET REFERENCE` delete (event → null) `[SUCCESS]`

```json
{
  "tool": "mps_mcp_update_node",
  "arguments": {
    "projectPath": "{{PROJECT_DIR}}",
    "operation": "SET", "kind": "REFERENCE",
    "references": [["{{GBX_TRANS_REF}}", "event", null]]
  }
}
```
- Validation: `ok==true`. Deletes the optional `event` reference (still valid — `event` is
  `0..1`). Exercises reference deletion via `null`.

---

### Step 07.23 — `update_node SET PROPERTY` delete (`Parked.kind` → null) `[SUCCESS]`

```json
{
  "tool": "mps_mcp_update_node",
  "arguments": {
    "projectPath": "{{PROJECT_DIR}}",
    "operation": "SET", "kind": "PROPERTY",
    "properties": [["{{GBX_PARKED_REF}}", "kind", null]]
  }
}
```
- Validation: `ok==true`. The property reverts to its default (`normal`), which is not stored.
  Exercises property deletion via `null`.

---

### Step 07.24 — `update_node SET CHILD` (replace `Temp` with `Temp2`) `[SUCCESS]`

```json
{
  "tool": "mps_mcp_update_node",
  "arguments": {
    "projectPath": "{{PROJECT_DIR}}",
    "operation": "SET", "kind": "CHILD",
    "childNodeRef": "{{GBX_TEMP_REF}}",
    "childJson": "{\"concept\":\"mcp.test.statechart.structure.State\",\"properties\":[{\"name\":\"name\",\"value\":\"Temp2\"}]}"
  }
}
```
- Validation: `ok==true`. (The response envelope is the parent's; the replacement preserves
  the child's position. `{{GBX_TEMP_REF}}` is now stale.)

---

### Step 07.25 — `update_node SET CHILD` delete (`Disposable` via `childJson:null`) `[SUCCESS]`

```json
{
  "tool": "mps_mcp_update_node",
  "arguments": {
    "projectPath": "{{PROJECT_DIR}}",
    "operation": "SET", "kind": "CHILD",
    "childNodeRef": "{{GBX_DISP_REF}}",
    "childJson": null
  }
}
```
- Validation: `ok==true`. Deletes the `Disposable` child. Exercises child deletion via `null`.

---

### Step 07.26 — Invalid: `update_node ADD PROPERTY` `[FAILURE]`

```json
{
  "tool": "mps_mcp_update_node",
  "arguments": {
    "projectPath": "{{PROJECT_DIR}}",
    "operation": "ADD", "kind": "PROPERTY",
    "properties": [["{{GBX_PARKED_REF}}", "name", "X"]]
  }
}
```
- Validation: `ok==false`; error: `ADD is not a valid operation for PROPERTY`.

---

### Step 07.27 — Invalid: `update_node ADD REFERENCE` `[FAILURE]`

```json
{
  "tool": "mps_mcp_update_node",
  "arguments": {
    "projectPath": "{{PROJECT_DIR}}",
    "operation": "ADD", "kind": "REFERENCE",
    "references": [["{{GBX_TRANS_REF}}", "target", "Driving"]]
  }
}
```
- Validation: `ok==false`; error indicates ADD is not valid for REFERENCE.

---

### Step 07.28 — Invalid: `update_node` with `operation:"DELETE"` `[FAILURE]`

Confirms `DELETE` is **not** a valid `operation` (only `ADD`/`SET`; delete is via `null`).
```json
{
  "tool": "mps_mcp_update_node",
  "arguments": {
    "projectPath": "{{PROJECT_DIR}}",
    "operation": "DELETE", "kind": "CHILD",
    "childNodeRef": "{{GBX_DRIVING_REF}}"
  }
}
```
- Validation: `ok==false`; error starts with `Unknown operation 'DELETE'. Valid operations: ADD, SET.`
  and goes on to name the recipe for the `kind` that was sent — here `kind:"CHILD"`, so
  `Deletion is SET CHILD with childJson omitted (or a JSON null). There is no DELETE operation.`
  (a `PROPERTY` or `REFERENCE` kind instead names the explicit-null-triplet form) — with
  `code:"INVALID_REQUEST"`.

---

### Step 07.29 — Demonstrate a detected problem on `OtherStateChart` `[READ-FILE]`

First add a **broken** Transition (no `target`) into `Idle.transitions`:
```json
{
  "tool": "mps_mcp_update_node",
  "arguments": {
    "projectPath": "{{PROJECT_DIR}}",
    "operation": "ADD", "kind": "CHILD",
    "nodeReference": "{{OTHER_IDLE_REF}}", "childRole": "transitions",
    "childJson": "{\"concept\":\"mcp.test.statechart.structure.Transition\"}"
  }
}
```
- Validation: `ok==true`. **Capture** `data.reference` as `{{OTHER_BROKEN_TRANS_REF}}`.

Then check (default `onlyNodesWithProblems:true`):
```json
{
  "tool": "mps_mcp_check_root_node_problems",
  "arguments": { "projectPath": "{{PROJECT_DIR}}", "nodeReference": "{{OTHER_ROOT_REF}}" }
}
```
- Validation: `ok==true`; `data` is a **temp-file path** (problems found). READ it; it
  contains a `Transition` whose `target` reference has a problem
  `{"severity":"error","message":"No reference in the obligatory role 'target'"}`.

---

### Step 07.30 — `check_root_node_problems` with `onlyNodesWithProblems:false` `[READ-FILE]`

```json
{
  "tool": "mps_mcp_check_root_node_problems",
  "arguments": {
    "projectPath": "{{PROJECT_DIR}}",
    "nodeReference": "{{OTHER_ROOT_REF}}",
    "onlyNodesWithProblems": false
  }
}
```
- Validation: `ok==true`; temp-file path; the file contains the **full subtree** (every node,
  with `problems` arrays attached — most empty, the broken transition's `target` non-empty).
  Exercises `onlyNodesWithProblems:false`.

---

### Step 07.31 — Fix the problem (`SET REFERENCE target → Running`) and re-validate `[SUCCESS]`

```json
{
  "tool": "mps_mcp_update_node",
  "arguments": {
    "projectPath": "{{PROJECT_DIR}}",
    "operation": "SET", "kind": "REFERENCE",
    "references": [["{{OTHER_BROKEN_TRANS_REF}}", "target", "Running"]]
  }
}
```
- Validation: `ok==true`. Then re-run `check_root_node_problems` on `{{OTHER_ROOT_REF}}`
  (as in 07.29's check call) and confirm `data=="no problems found"`.

---

### Step 07.32 — `alter_nodes MOVE_CHILD` (reorder Gearbox states) `[SUCCESS]`

Decoded `parameters`: `{ "nodeReference":"{{GEARBOX_REF}}", "childRole":"states", "childNodeRef":"{{GBX_DRIVING_REF}}", "position":0 }`
```json
{
  "tool": "mps_mcp_alter_nodes",
  "arguments": {
    "projectPath": "{{PROJECT_DIR}}",
    "operation": "MOVE_CHILD",
    "parameters": "{\"nodeReference\":\"{{GEARBOX_REF}}\",\"childRole\":\"states\",\"childNodeRef\":\"{{GBX_DRIVING_REF}}\",\"position\":0}"
  }
}
```
- Validation: `ok==true`; `data.index==0` (Driving moved to the front of `states`).

---

### Step 07.33 — `alter_nodes MOVE_NODE_TO_PARENT` (move `Mobile` to OtherStateChart) `[SUCCESS]`

Decoded `parameters`: `{ "nodeReference":"{{GBX_MOBILE_REF}}", "newParentRef":"{{OTHER_ROOT_REF}}", "role":"states", "position":-1 }`
```json
{
  "tool": "mps_mcp_alter_nodes",
  "arguments": {
    "projectPath": "{{PROJECT_DIR}}",
    "operation": "MOVE_NODE_TO_PARENT",
    "parameters": "{\"nodeReference\":\"{{GBX_MOBILE_REF}}\",\"newParentRef\":\"{{OTHER_ROOT_REF}}\",\"role\":\"states\",\"position\":-1}"
  }
}
```
- Validation: `ok==true`; `data.parentReference=={{OTHER_ROOT_REF}}` (Mobile now under
  OtherStateChart). Note required keys: `newParentRef` (not `parentReference`) and `role`
  (not `childRole`).

---

### Step 07.34 — `alter_nodes FIX_REFERENCES` on Gearbox `[SUCCESS]`

Decoded `parameters`: `{ "nodeReference":"{{GEARBOX_REF}}" }`
```json
{
  "tool": "mps_mcp_alter_nodes",
  "arguments": {
    "projectPath": "{{PROJECT_DIR}}",
    "operation": "FIX_REFERENCES",
    "parameters": "{\"nodeReference\":\"{{GEARBOX_REF}}\"}"
  }
}
```
- Validation: `ok==true`; `data` reports `fixed`/`repointed`/`stillBroken` counts (expected
  `stillBroken:0`; references already resolved).

---

### Step 07.35 — `create_root_node` throwaway `ScratchChart` `[CAPTURE]`

For the `update_root_node_from_json` tests. `concept` = StateChart, `name` = `ScratchChart`,
`modelReference` = `mcp.test.sandbox.model`.
- Validation: `ok==true`; **capture** `data.reference` as `{{SCRATCH_ROOT_REF}}`.

---

### Step 07.36 — `update_root_node_from_json` UPDATE with `dryRun:true` `[SUCCESS]`

`json` (decoded): `{ "concept":"mcp.test.statechart.structure.StateChart", "properties":[{"name":"name","value":"ScratchChartRenamed"}], "children":[{"role":"states","nodes":[{"concept":"mcp.test.statechart.structure.State","properties":[{"name":"name","value":"X"}]}]}] }`
```json
{
  "tool": "mps_mcp_update_root_node_from_json",
  "arguments": {
    "projectPath": "{{PROJECT_DIR}}",
    "operation": "UPDATE",
    "nodeReference": "{{SCRATCH_ROOT_REF}}",
    "dryRun": true,
    "json": "<the JSON object above, as a string>"
  }
}
```
- Validation: `ok==true`; `data.dryRun==true`.

---

### Step 07.37 — `update_root_node_from_json` UPDATE (real) `[SUCCESS]`

Same as 07.36 without `dryRun`.
- Validation: `ok==true`; `data.name=="ScratchChartRenamed"`; the root's `reference` is
  unchanged (`{{SCRATCH_ROOT_REF}}`) — a full-root rewrite preserves the node ID.

---

### Step 07.38 — `update_root_node_from_json` DELETE `[SUCCESS]`

Deletes the throwaway root. `json` is ignored for DELETE.
```json
{
  "tool": "mps_mcp_update_root_node_from_json",
  "arguments": {
    "projectPath": "{{PROJECT_DIR}}",
    "operation": "DELETE",
    "nodeReference": "{{SCRATCH_ROOT_REF}}"
  }
}
```
- Validation: `ok==true`; `data.deleted==true`. State-check: `ScratchChartRenamed` absent from
  the next root listing.

---

### Step 07.39 — Project structure scoped: root nodes of the model `[READ-FILE]`

Exercises `includeRootNodes` with a `startingPoint` (keeps payload small).
```json
{
  "tool": "mps_mcp_get_project_structure",
  "arguments": {
    "projectPath": "{{PROJECT_DIR}}",
    "startingPoint": "mcp.test.sandbox.model",
    "includeRootNodes": true
  }
}
```
- Validation: `ok==true`; read the file; the model's root nodes include `GearboxStateChart`,
  `OtherStateChart`, `ChartA`, `ChartB`. It must **not** include `DryRunChart`,
  `NeverPersisted`, or `ScratchChartRenamed` (those were dry-run / deleted).

---

### Step 07.40 — Project structure scoped: full AST `[READ-FILE]`

Exercises `includeNodes` with a `startingPoint` (one model).
```json
{
  "tool": "mps_mcp_get_project_structure",
  "arguments": {
    "projectPath": "{{PROJECT_DIR}}",
    "startingPoint": "mcp.test.sandbox.model",
    "includeNodes": true
  }
}
```
- Validation: `ok==true`; read the file; it contains the full node trees of the roots
  (states, transitions, events inlined). Exercises `includeNodes`.

Proceed to `08_queries_and_navigation.md`.
