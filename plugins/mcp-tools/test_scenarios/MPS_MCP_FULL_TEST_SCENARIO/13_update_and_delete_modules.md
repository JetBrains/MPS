# 13 — Module Update / Rename / Delete

> **Captured-value contract** — _Inputs:_ `{{SERVER_PREFIX}}`, `{{PROJECT_DIR}}`. _Produces (cross-part):_ none. _(`{{SCRATCH_MODULE_REF}}` is intra-part.)_

Tool: `mps_mcp_update_module` (enum `operation`: `RENAME`, `CHANGE_VIRTUAL_FOLDER`, `DELETE`;
bool `deleteFiles`). All operations here target a **throwaway** module `mcp.test.scratch`, so
its eventual deletion is a test step, **not** a rollback of scenario artifacts.

---

### Step 13.01 — Create throwaway solution `mcp.test.scratch` `[CAPTURE]`

```json
{
  "tool": "mps_mcp_create_module",
  "arguments": {
    "projectPath": "{{PROJECT_DIR}}",
    "type": "solution",
    "name": "mcp.test.scratch",
    "directory": "{{PROJECT_DIR}}/solutions/mcp.test.scratch"
  }
}
```
- Validation: `ok==true`; `data.kind=="Solution"`. **Capture** `data.reference` as
  `{{SCRATCH_MODULE_REF}}`.

---

### Step 13.02 — `update_module` RENAME `[SUCCESS]`

Exercises `operation:"RENAME"`. `newName` must be a valid qualified name.
```json
{
  "tool": "mps_mcp_update_module",
  "arguments": {
    "projectPath": "{{PROJECT_DIR}}",
    "moduleName": "mcp.test.scratch",
    "newName": "mcp.test.scratch.renamed",
    "operation": "RENAME"
  }
}
```
- Validation: `ok==true`; `data.name=="mcp.test.scratch.renamed"`. (May include
  `renameWarnings`/`renameCriticalProblems` arrays — record if present.)

---

### Step 13.03 — `update_module` CHANGE_VIRTUAL_FOLDER `[SUCCESS]`

Exercises `operation:"CHANGE_VIRTUAL_FOLDER"`. `newName` is the Project-View folder path.
```json
{
  "tool": "mps_mcp_update_module",
  "arguments": {
    "projectPath": "{{PROJECT_DIR}}",
    "moduleName": "mcp.test.scratch.renamed",
    "newName": "TestGroup",
    "operation": "CHANGE_VIRTUAL_FOLDER"
  }
}
```
- Validation: `ok==true`; `data.virtualFolder=="TestGroup"`.

---

### Step 13.04 — `update_module` DELETE with `deleteFiles:true` `[SUCCESS]`

Exercises `operation:"DELETE"` and `deleteFiles:true`.
```json
{
  "tool": "mps_mcp_update_module",
  "arguments": {
    "projectPath": "{{PROJECT_DIR}}",
    "moduleName": "mcp.test.scratch.renamed",
    "operation": "DELETE",
    "deleteFiles": true
  }
}
```
- Validation: `ok==true`; `data.deleted==true`.
- **Known behavior:** the `data` may also include a `fileDeletionWarning` string (an IDE
  write-thread warning). The module is still unregistered from the project even when this
  warning appears, but the on-disk directory `{{PROJECT_DIR}}/solutions/mcp.test.scratch`
  **may remain**. This is expected; record the warning as a note. You do not need to remove the
  leftover directory (it is a throwaway module's residue, not a scenario artifact).

---

### Step 13.05 — Invalid: update a non-existent module `[FAILURE]`

```json
{
  "tool": "mps_mcp_update_module",
  "arguments": {
    "projectPath": "{{PROJECT_DIR}}",
    "moduleName": "no.such.module.zzz",
    "newName": "whatever",
    "operation": "RENAME"
  }
}
```
- Validation: `ok==false`; error indicates the module was not found.

---

### Step 13.06 — Verify the throwaway module is gone `[READ-FILE]`

```json
{
  "tool": "mps_mcp_get_project_structure",
  "arguments": { "projectPath": "{{PROJECT_DIR}}", "moduleKind": "Solution", "includeModels": true }
}
```
- Validation: `ok==true`; read the file if `data` is a path. `data.modules` includes `mcp.test.sandbox` but
  **not** `mcp.test.scratch` or `mcp.test.scratch.renamed`. Confirms 13.04.

Proceed to `14_finalize_report.md`.
