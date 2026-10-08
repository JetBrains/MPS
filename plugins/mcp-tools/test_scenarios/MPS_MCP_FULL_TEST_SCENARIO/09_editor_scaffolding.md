# 09 — Editor Scaffolding

> **Captured-value contract** — _Inputs:_ `{{SERVER_PREFIX}}`, `{{PROJECT_DIR}}`. _Produces (cross-part):_ none.

Tool: `mps_mcp_scaffold_editor` (enum `type`: `editor` / `component`; bool `detectComponents`;
optional `includeProperties`/`includeChildren`/`includeReferences` lists). Target editor model:
`mcp.test.statechart.editor` (auto-created with the language).

---

### Step 09.01 — Scaffold a concept editor for `StateChart` (`type:"editor"`) `[CAPTURE]`

```json
{
  "tool": "mps_mcp_scaffold_editor",
  "arguments": {
    "projectPath": "{{PROJECT_DIR}}",
    "conceptRef": "mcp.test.statechart.structure.StateChart",
    "modelReference": "mcp.test.statechart.editor",
    "type": "editor"
  }
}
```
- Validation: `ok==true`; `data.editorNodeRef` is an `r:...` ref into
  `mcp.test.statechart.editor`; `data.message` reports the wired properties/children/references
  count (e.g. "1 properties, 0 references, and 2 children").
- **Capture** `data.editorNodeRef` as `{{STATECHART_EDITOR_REF}}`.

---

### Step 09.02 — Scaffold an editor **component** for `State` (`type:"component"`) `[SUCCESS]`

```json
{
  "tool": "mps_mcp_scaffold_editor",
  "arguments": {
    "projectPath": "{{PROJECT_DIR}}",
    "conceptRef": "mcp.test.statechart.structure.State",
    "modelReference": "mcp.test.statechart.editor",
    "type": "component"
  }
}
```
- Validation: `ok==true`; `data.editorNodeRef` present (an `EditorComponentDeclaration`).
  Exercises `type:"component"`.

---

### Step 09.03 — Scaffold for `Transition` with `detectComponents` + include-lists `[SUCCESS]`

Exercises `detectComponents:true` and the `includeProperties` / `includeReferences` filters.
```json
{
  "tool": "mps_mcp_scaffold_editor",
  "arguments": {
    "projectPath": "{{PROJECT_DIR}}",
    "conceptRef": "mcp.test.statechart.structure.Transition",
    "modelReference": "mcp.test.statechart.editor",
    "type": "editor",
    "detectComponents": true,
    "includeProperties": [],
    "includeReferences": ["target", "event"]
  }
}
```
- Validation: `ok==true`; `data.editorNodeRef` present. (With `includeProperties:[]` only the
  named references are wired.)

---

### Step 09.04 — Invalid: scaffold for a non-existent concept `[FAILURE]`

```json
{
  "tool": "mps_mcp_scaffold_editor",
  "arguments": {
    "projectPath": "{{PROJECT_DIR}}",
    "conceptRef": "mcp.test.statechart.structure.NoSuchConcept",
    "modelReference": "mcp.test.statechart.editor"
  }
}
```
- Validation: `ok==false`; error indicates the concept could not be found/resolved.

---

### Step 09.05 — Verify the editor aspect now exists (`LIST_CONCEPT_ASPECTS`) `[SUCCESS]`

Project-state confirmation for 09.01.
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
- Validation: `ok==true`; `data` now includes an **editor** aspect entry whose `rootNodes`
  reference a `ConceptEditorDeclaration` targeting `StateChart` (e.g. `StateChart_Editor`) with
  `relation=="appliesTo"`.
  Compare with the (empty/minimal) result observed in Step 06.20.

Proceed to `10_baselanguage_parse_java.md`.
