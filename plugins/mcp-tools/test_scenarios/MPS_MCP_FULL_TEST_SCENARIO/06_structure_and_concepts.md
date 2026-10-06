# 06 — Language Structure, Concepts, and Analysis

> **Captured-value contract** — _Inputs:_ `{{SERVER_PREFIX}}`, `{{PROJECT_DIR}}`, `{{TMPDIR}}`. _Produces (cross-part):_ none. _(Builds the language, enum, and the four concepts that later parts reference by fully-qualified name.)_

Tools: `mps_mcp_alter_structure` (ops: `CREATE_ENUM`, `CREATE_CONCEPTS`,
`UPDATE_CONCEPT_PROPERTY`, `RENAME_CONCEPT_PROPERTY`, `UPDATE_CONCEPT_CHILD`,
`RENAME_CONCEPT_CHILD`, `UPDATE_CONCEPT_REFERENCE`, `RENAME_CONCEPT_REFERENCE`),
`mps_mcp_query_structure` (ops: `GET_ENUMERATION_LITERALS`, `IS_SUBCONCEPT_OF`,
`GET_SUB_CONCEPTS`, `GET_ASSIGNABLE_CONCEPTS`, `GET_ALL_SUPERCONCEPTS`,
`LIST_CONCEPT_ASPECTS`, `IS_SMART_REFERENCE`; the remaining op `GET_ASSIGNABLE_REFERENCES`
is in part 08 because it needs an instance node), `mps_mcp_get_concept_details`,
`mps_mcp_search_concepts`, `mps_mcp_reload_all`, `mps_mcp_alter_nodes` (`MAKE`).

> **`parameters` encoding.** For every `alter_structure`/`query_structure` call, the
> `parameters` argument is a **string containing JSON**. Each step shows (a) the **decoded**
> JSON for readability and (b) the exact `arguments` to send with `parameters` as an escaped
> string. Send exactly what is in the `arguments` block.

---

### Step 06.01 — Write the StateKind values temp file (not an MCP call)

Create a file at **`{{TMPDIR}}mcp_test_statekind_values.json`** (`{{TMPDIR}}` already ends
with a slash) with this exact content:

```json
[
  {"enumName": "initial", "enumPresentation": "Initial"},
  {"enumName": "normal",  "enumPresentation": "Normal"},
  {"enumName": "final",   "enumPresentation": "Final"}
]
```

(If you cannot write to the system temp dir, use the inline-escaped `valuesJson` instead — see
the note at the end of this file.)

---

### Step 06.02 — `alter_structure CREATE_ENUM` → `StateKind` `[SUCCESS]`

Decoded `parameters`:
```json
{
  "structureModelRef": "mcp.test.statechart.structure",
  "enumName": "StateKind",
  "valuesJson": "{{TMPDIR}}mcp_test_statekind_values.json",
  "defaultEnumName": "normal"
}
```
Send:
```json
{
  "tool": "mps_mcp_alter_structure",
  "arguments": {
    "projectPath": "{{PROJECT_DIR}}",
    "operation": "CREATE_ENUM",
    "parameters": "{\"structureModelRef\":\"mcp.test.statechart.structure\",\"enumName\":\"StateKind\",\"valuesJson\":\"{{TMPDIR}}mcp_test_statekind_values.json\",\"defaultEnumName\":\"normal\"}"
  }
}
```
- Validation: `ok==true`; `data==true`.

---

### Step 06.03 — Write the concepts temp file (not an MCP call)

Create a file at **`{{TMPDIR}}mcp_test_concepts.json`** with this exact content:

```json
[
  {
    "name": "StateChart",
    "implements": ["jetbrains.mps.lang.core.structure.INamedConcept"],
    "conceptAlias": "statechart",
    "rootable": true,
    "shortDescription": "Root statechart node",
    "children": [
      { "role": "states", "target": "State", "multiple": true, "optional": true },
      { "role": "events", "target": "Event", "multiple": true, "optional": true }
    ]
  },
  {
    "name": "State",
    "implements": ["jetbrains.mps.lang.core.structure.INamedConcept"],
    "shortDescription": "A state in the statechart",
    "properties": [ { "name": "kind", "type": "StateKind" } ],
    "children": [ { "role": "transitions", "target": "Transition", "multiple": true, "optional": true } ]
  },
  {
    "name": "Transition",
    "shortDescription": "A transition between states",
    "references": [
      { "role": "target", "target": "State", "optional": false },
      { "role": "event",  "target": "Event", "optional": true }
    ]
  },
  {
    "name": "Event",
    "implements": ["jetbrains.mps.lang.core.structure.INamedConcept"],
    "shortDescription": "An event that triggers transitions"
  }
]
```

---

### Step 06.04 — `alter_structure CREATE_CONCEPTS` with `make:true` `[SUCCESS]`

Creates all four concepts and clean-builds the language module. On a never-before-deployed
language MPS auto-performs an extra module-scoped rebuild.

Decoded `parameters`:
```json
{
  "structureModelRef": "mcp.test.statechart.structure",
  "make": true,
  "conceptsJson": "{{TMPDIR}}mcp_test_concepts.json"
}
```
Send:
```json
{
  "tool": "mps_mcp_alter_structure",
  "arguments": {
    "projectPath": "{{PROJECT_DIR}}",
    "operation": "CREATE_CONCEPTS",
    "parameters": "{\"structureModelRef\":\"mcp.test.statechart.structure\",\"make\":true,\"conceptsJson\":\"{{TMPDIR}}mcp_test_concepts.json\"}"
  }
}
```
- Validation: `ok==true`. `data.createdReferences` maps `StateChart`/`State`/`Transition`/
  `Event` to `r:...` node refs. **`data.makeStatus` must be `"success"`.**
  `data.recoveryStage` may be `"module-rebuild"` (expected on first deploy — not an error).
- **If `makeStatus` is `"runtime_stale"`** → record a note and run the recovery in Step 06.05a
  before continuing. Otherwise skip 06.05a.
- Optionally capture the four refs as `{{STATECHART_CONCEPT_REF}}` etc., though later steps use
  the fully-qualified names instead.

---

### Step 06.05a — (Conditional) Recover a stale runtime `[SUCCESS]` — run ONLY if 06.04 reported `runtime_stale`

```json
{
  "tool": "mps_mcp_alter_nodes",
  "arguments": {
    "projectPath": "{{PROJECT_DIR}}",
    "operation": "MAKE",
    "parameters": "{\"modules\":[\"mcp.test.statechart\"],\"rebuild\":true}"
  }
}
```
- Validation: `ok==true`; `data.success==true`; `data.runtimeReady==true`.

---

### Step 06.05 — `get_concept_details` by `conceptRefs` (verify not hollow) `[READ-FILE]`

```json
{
  "tool": "mps_mcp_get_concept_details",
  "arguments": {
    "projectPath": "{{PROJECT_DIR}}",
    "conceptRefs": [
      "mcp.test.statechart.structure.StateChart",
      "mcp.test.statechart.structure.Transition"
    ]
  }
}
```
- Validation: `ok==true`; `data` is the concept details inline, or a temp-file path —
  **READ it** if so. Confirm:
  - `StateChart` has `isRootable:true`, `conceptAlias:"statechart"`, `superInterfaces`
    includes `INamedConcept`, and `children` include roles `states` (0..n) and `events`
    (0..n).
  - `Transition` has `references` `target` (cardinality `1`) and `event` (`0..1`).
  - **No entry is `descriptorStatus:"hollow"`** and there are no blocking `warnings`. If any
    concept is hollow, run Step 06.05a then re-run this step.
- Each feature carries `featureId` and `sourceNode`; each concept carries a `sampleNode`
  blueprint — note their presence.

---

### Step 06.06 — `alter_structure UPDATE_CONCEPT_PROPERTY` (add `isFinal:boolean` to State) `[SUCCESS]`

Decoded `parameters`: `{ "conceptRef":"mcp.test.statechart.structure.State", "propertyName":"isFinal", "dataType":"boolean" }`
```json
{
  "tool": "mps_mcp_alter_structure",
  "arguments": {
    "projectPath": "{{PROJECT_DIR}}",
    "operation": "UPDATE_CONCEPT_PROPERTY",
    "parameters": "{\"conceptRef\":\"mcp.test.statechart.structure.State\",\"propertyName\":\"isFinal\",\"dataType\":\"boolean\"}"
  }
}
```
- Validation: `ok==true`; `data==true`. (Property defaults to `false`; no instance breakage.)

---

### Step 06.07 — `alter_structure RENAME_CONCEPT_PROPERTY` (`isFinal` → `terminal`) `[SUCCESS]`

Decoded: `{ "conceptRef":"mcp.test.statechart.structure.State", "oldName":"isFinal", "newName":"terminal" }`
```json
{
  "tool": "mps_mcp_alter_structure",
  "arguments": {
    "projectPath": "{{PROJECT_DIR}}",
    "operation": "RENAME_CONCEPT_PROPERTY",
    "parameters": "{\"conceptRef\":\"mcp.test.statechart.structure.State\",\"oldName\":\"isFinal\",\"newName\":\"terminal\"}"
  }
}
```
- Validation: `ok==true`; `data==true`.

---

### Step 06.08 — `alter_structure UPDATE_CONCEPT_CHILD` (add optional `subStates` to State) `[SUCCESS]`

Decoded: `{ "conceptRef":"mcp.test.statechart.structure.State", "role":"subStates", "targetConcept":"mcp.test.statechart.structure.State", "multiple":true, "optional":true }`
```json
{
  "tool": "mps_mcp_alter_structure",
  "arguments": {
    "projectPath": "{{PROJECT_DIR}}",
    "operation": "UPDATE_CONCEPT_CHILD",
    "parameters": "{\"conceptRef\":\"mcp.test.statechart.structure.State\",\"role\":\"subStates\",\"targetConcept\":\"mcp.test.statechart.structure.State\",\"multiple\":true,\"optional\":true}"
  }
}
```
- Validation: `ok==true`; `data==true`.

---

### Step 06.09 — `alter_structure RENAME_CONCEPT_CHILD` (`subStates` → `nestedStates`) `[SUCCESS]`

Decoded: `{ "conceptRef":"mcp.test.statechart.structure.State", "oldRole":"subStates", "newRole":"nestedStates" }`
```json
{
  "tool": "mps_mcp_alter_structure",
  "arguments": {
    "projectPath": "{{PROJECT_DIR}}",
    "operation": "RENAME_CONCEPT_CHILD",
    "parameters": "{\"conceptRef\":\"mcp.test.statechart.structure.State\",\"oldRole\":\"subStates\",\"newRole\":\"nestedStates\"}"
  }
}
```
- Validation: `ok==true`; `data==true`.

---

### Step 06.10 — `alter_structure UPDATE_CONCEPT_REFERENCE` (add optional `relatedState` to Event) `[SUCCESS]`

Decoded: `{ "conceptRef":"mcp.test.statechart.structure.Event", "role":"relatedState", "targetConcept":"mcp.test.statechart.structure.State", "optional":true }`
```json
{
  "tool": "mps_mcp_alter_structure",
  "arguments": {
    "projectPath": "{{PROJECT_DIR}}",
    "operation": "UPDATE_CONCEPT_REFERENCE",
    "parameters": "{\"conceptRef\":\"mcp.test.statechart.structure.Event\",\"role\":\"relatedState\",\"targetConcept\":\"mcp.test.statechart.structure.State\",\"optional\":true}"
  }
}
```
- Validation: `ok==true`; `data==true`.

---

### Step 06.11 — `alter_structure RENAME_CONCEPT_REFERENCE` (`relatedState` → `relatedTo`) `[SUCCESS]`

Decoded: `{ "conceptRef":"mcp.test.statechart.structure.Event", "oldRole":"relatedState", "newRole":"relatedTo" }`
```json
{
  "tool": "mps_mcp_alter_structure",
  "arguments": {
    "projectPath": "{{PROJECT_DIR}}",
    "operation": "RENAME_CONCEPT_REFERENCE",
    "parameters": "{\"conceptRef\":\"mcp.test.statechart.structure.Event\",\"oldRole\":\"relatedState\",\"newRole\":\"relatedTo\"}"
  }
}
```
- Validation: `ok==true`; `data==true`.

---

### Step 06.12 — Invalid: unknown `alter_structure` operation `[FAILURE]`

```json
{
  "tool": "mps_mcp_alter_structure",
  "arguments": {
    "projectPath": "{{PROJECT_DIR}}",
    "operation": "NOT_A_REAL_OP",
    "parameters": "{}"
  }
}
```
- Validation: `ok==false`; error indicates an unknown/invalid operation.

---

### Step 06.13 — `alter_nodes MAKE` the language module with `rebuild:true` `[SUCCESS]`

Refreshes the runtime descriptors after the `UPDATE_*`/`RENAME_*` structure edits (those do
not auto-make). Exercises `MAKE` with `{"modules":[...]}` and `rebuild:true`.

Decoded: `{ "modules": ["mcp.test.statechart"], "rebuild": true }`
```json
{
  "tool": "mps_mcp_alter_nodes",
  "arguments": {
    "projectPath": "{{PROJECT_DIR}}",
    "operation": "MAKE",
    "parameters": "{\"modules\":[\"mcp.test.statechart\"],\"rebuild\":true}"
  }
}
```
- Validation: `ok==true`; `data.success==true`; `data.runtimeReady==true`.

---

### Step 06.14 — `search_concepts` for the new concepts `[SUCCESS]`

```json
{
  "tool": "mps_mcp_search_concepts",
  "arguments": {
    "projectPath": "{{PROJECT_DIR}}",
    "modelReference": "mcp.test.sandbox.model",
    "searchTexts": ["StateChart", "Transition"]
  }
}
```
- Validation: `ok==true`; results include `qualifiedName` `mcp.test.statechart.structure.StateChart`
  and `...Transition`. (Payload may be inline or a temp-file path; read if a path.)

---

### Step 06.15 — `get_concept_details` by `languageRefs` (all concepts) `[READ-FILE]`

```json
{
  "tool": "mps_mcp_get_concept_details",
  "arguments": {
    "projectPath": "{{PROJECT_DIR}}",
    "languageRefs": ["mcp.test.statechart"]
  }
}
```
- Validation: `ok==true`; read the file if `data` is a path. It lists `StateChart`, `State`, `Transition`,
  `Event`. **Project-state check for the structure edits:** the `State` entry's `properties`
  now include **`terminal`** (renamed from `isFinal` in 06.07) and **not** `isFinal`; its
  `children` include **`nestedStates`** (renamed in 06.09); the `Event` entry's `references`
  include **`relatedTo`** (renamed in 06.11).

---

### Step 06.16 — `query_structure IS_SUBCONCEPT_OF` `[SUCCESS]`

Decoded: `{ "conceptRef":"mcp.test.statechart.structure.StateChart", "superConceptRef":"jetbrains.mps.lang.core.structure.INamedConcept" }`
```json
{
  "tool": "mps_mcp_query_structure",
  "arguments": {
    "projectPath": "{{PROJECT_DIR}}",
    "operation": "IS_SUBCONCEPT_OF",
    "parameters": "{\"conceptRef\":\"mcp.test.statechart.structure.StateChart\",\"superConceptRef\":\"jetbrains.mps.lang.core.structure.INamedConcept\"}"
  }
}
```
- Validation: `ok==true`; `data==true` (StateChart implements INamedConcept).

---

### Step 06.17 — `query_structure GET_ALL_SUPERCONCEPTS` (Transition) `[SUCCESS]`

Decoded: `{ "conceptRef":"mcp.test.statechart.structure.Transition" }`
```json
{
  "tool": "mps_mcp_query_structure",
  "arguments": {
    "projectPath": "{{PROJECT_DIR}}",
    "operation": "GET_ALL_SUPERCONCEPTS",
    "parameters": "{\"conceptRef\":\"mcp.test.statechart.structure.Transition\"}"
  }
}
```
- Validation: `ok==true`; `data` array includes `jetbrains.mps.lang.core.structure.BaseConcept`.

---

### Step 06.18 — `query_structure GET_SUB_CONCEPTS` (INamedConcept in this language) `[SUCCESS]`

Decoded: `{ "conceptRef":"jetbrains.mps.lang.core.structure.INamedConcept", "languageRefs":["mcp.test.statechart"] }`
```json
{
  "tool": "mps_mcp_query_structure",
  "arguments": {
    "projectPath": "{{PROJECT_DIR}}",
    "operation": "GET_SUB_CONCEPTS",
    "parameters": "{\"conceptRef\":\"jetbrains.mps.lang.core.structure.INamedConcept\",\"languageRefs\":[\"mcp.test.statechart\"]}"
  }
}
```
- Validation: `ok==true`; `data` includes `StateChart`, `State`, `Event` (the three that
  implement INamedConcept). `Transition` is **not** present (it does not implement it).

---

### Step 06.19 — `query_structure GET_ASSIGNABLE_CONCEPTS` (State) `[SUCCESS]`

Decoded: `{ "conceptRef":"mcp.test.statechart.structure.State" }`
```json
{
  "tool": "mps_mcp_query_structure",
  "arguments": {
    "projectPath": "{{PROJECT_DIR}}",
    "operation": "GET_ASSIGNABLE_CONCEPTS",
    "parameters": "{\"conceptRef\":\"mcp.test.statechart.structure.State\"}"
  }
}
```
- Validation: `ok==true`; `data` includes `State` (non-abstract, no subconcepts → just itself).

---

### Step 06.20 — `query_structure LIST_CONCEPT_ASPECTS` (StateChart) `[SUCCESS]`

Decoded: `{ "conceptRef":"mcp.test.statechart.structure.StateChart", "includeInherited":false }`
```json
{
  "tool": "mps_mcp_query_structure",
  "arguments": {
    "projectPath": "{{PROJECT_DIR}}",
    "operation": "LIST_CONCEPT_ASPECTS",
    "parameters": "{\"conceptRef\":\"mcp.test.statechart.structure.StateChart\",\"includeInherited\":false}"
  }
}
```
- Validation: `ok==true`; `data` is an array of `{aspectModel, rootNodes}` entries. Before
  part 09 (editor scaffolding) the language has no aspect root for `StateChart` yet, so expect
  `[]`; record what is returned. (After part 09 the editor aspect appears here — Step 09.05.)
  Every listed root carries `relation`, either `"appliesTo"` (the root is *for* the concept:
  its editor, constraints, behavior, a rule applicable to it) or `"mentions"` (it only
  references the concept), and a `targetsConcept` whose `name=="StateChart"`.

### Step 06.20b — `LIST_CONCEPT_ASPECTS` with `includeInherited:true` (`relation`, `targetsConcept`) `[READ-FILE]`

With `includeInherited`, the aspects of every superconcept and interface are listed too.
`StateChart` extends nothing, so its hierarchy reaches `BaseConcept` (as at runtime), whose
behavior root lives in `jetbrains.mps.lang.core`.

Decoded: `{ "conceptRef":"mcp.test.statechart.structure.StateChart", "includeInherited":true }`
```json
{
  "tool": "mps_mcp_query_structure",
  "arguments": {
    "projectPath": "{{PROJECT_DIR}}",
    "operation": "LIST_CONCEPT_ASPECTS",
    "parameters": "{\"conceptRef\":\"mcp.test.statechart.structure.StateChart\",\"includeInherited\":true}"
  }
}
```
- Validation: `ok==true`; `data` (inline, or a temp-file path to read) is a non-empty array.
  - Exactly **one** root across all entries has `concept=="ConceptBehavior"`,
    `relation=="appliesTo"` and `targetsConcept.name=="BaseConcept"`; its entry's
    `aspectModel.module.fullyQualifiedName=="jetbrains.mps.lang.core"`.
  - Every root's `relation` is `"appliesTo"` or `"mentions"`; `pattern`, when present, is `true`.
  - Every root's `targetsConcept.name` is `StateChart` or one of its supers (`BaseConcept`,
    `INamedConcept`, or a superconcept/interface of those; `GET_ALL_SUPERCONCEPTS` on
    `StateChart`, as in Step 06.17, lists them if in doubt).

---

### Step 06.21 — `query_structure IS_SMART_REFERENCE` (Transition) `[SUCCESS]`

Decoded: `{ "conceptRef":"mcp.test.statechart.structure.Transition" }`
```json
{
  "tool": "mps_mcp_query_structure",
  "arguments": {
    "projectPath": "{{PROJECT_DIR}}",
    "operation": "IS_SMART_REFERENCE",
    "parameters": "{\"conceptRef\":\"mcp.test.statechart.structure.Transition\"}"
  }
}
```
- Validation: `ok==true`; `data.isSmartReference==false`. (Transition has a second, optional
  reference `event`, so it does not qualify as an implicit smart reference — the implicit rule
  is stricter than "exactly one *mandatory* reference".)

---

### Step 06.22 — `query_structure GET_ENUMERATION_LITERALS` by enumeration ref `[CAPTURE]` then `[SUCCESS]`

First obtain the `StateKind` enumeration's node reference (it is a root node in the structure
model). Call:
```json
{
  "tool": "mps_mcp_search_root_node_by_name",
  "arguments": { "projectPath": "{{PROJECT_DIR}}", "names": "StateKind", "scope": "editable" }
}
```
- Validation: `ok==true`; result array contains a node named `StateKind`. **Capture** its
  `reference` as `{{STATEKIND_ENUM_REF}}`.

Then query the literals by that ref:
```json
{
  "tool": "mps_mcp_query_structure",
  "arguments": {
    "projectPath": "{{PROJECT_DIR}}",
    "operation": "GET_ENUMERATION_LITERALS",
    "parameters": "{\"enumerationRef\":\"{{STATEKIND_ENUM_REF}}\"}"
  }
}
```
- Validation: `ok==true`; `data` is an array of `{value, presentation, doc}` for `initial`,
  `normal`, `final`. (The by-property form of this op is exercised in part 08.)

---

### Step 06.23 — `reload_all` `[SUCCESS]`

```json
{
  "tool": "mps_mcp_reload_all",
  "arguments": { "projectPath": "{{PROJECT_DIR}}" }
}
```
- Validation: `ok==true`; `data=="All modules reloaded successfully"`.

---

### Step 06.24 — `alter_nodes MAKE` a single model (`{"models":[...]}`) `[SUCCESS]`

Exercises the `MAKE` `models` form. Make the structure model.

Decoded: `{ "models": ["mcp.test.statechart.structure"] }`
```json
{
  "tool": "mps_mcp_alter_nodes",
  "arguments": {
    "projectPath": "{{PROJECT_DIR}}",
    "operation": "MAKE",
    "parameters": "{\"models\":[\"mcp.test.statechart.structure\"]}"
  }
}
```
- Validation: `ok==true`; `data.success==true`.

---

### Step 06.25 — `alter_nodes MAKE` the whole project (`{"wholeProject":true}`) `[SUCCESS]`

Exercises the `MAKE` `wholeProject` form. (May take longer.)

Decoded: `{ "wholeProject": true }`
```json
{
  "tool": "mps_mcp_alter_nodes",
  "arguments": {
    "projectPath": "{{PROJECT_DIR}}",
    "operation": "MAKE",
    "parameters": "{\"wholeProject\":true}"
  }
}
```
- Validation: `ok==true`; `data.success==true`.

---

> **Inline fallback for Steps 06.02 / 06.04** (only if you could not write temp files):
> set `valuesJson` / `conceptsJson` to the JSON **string** directly inside `parameters`
> (double-escaped). Prefer the temp-file form — it avoids deep escaping. Example decoded
> `parameters` for CREATE_ENUM inline:
> `{"structureModelRef":"mcp.test.statechart.structure","enumName":"StateKind","valuesJson":"[{\"enumName\":\"initial\",\"enumPresentation\":\"Initial\"},{\"enumName\":\"normal\",\"enumPresentation\":\"Normal\"},{\"enumName\":\"final\",\"enumPresentation\":\"Final\"}]","defaultEnumName":"normal"}`

Proceed to `07_root_nodes_and_node_editing.md`.
