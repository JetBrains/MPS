# 12 — MPS Console Tools

> **Captured-value contract** — _Inputs:_ `{{SERVER_PREFIX}}`, `{{PROJECT_DIR}}`. _Produces (cross-part):_ none. _(`{{HISTORY_REF}}` is intra-part.)_

Tools: `mps_mcp_insert_console_command_from_json` (`dryRun` + real),
`mps_mcp_get_current_editor_root_node` (`source:"console"` success form),
`mps_mcp_run_console_command` (`dryRun` + real), `mps_mcp_get_console_history`,
`mps_mcp_recall_console_command`. Requires the MPS Console plugin (available).

The command used is a `BLExpression` wrapping a `StringLiteral` (a harmless value command).
`json` is passed as a string (single-level).

Command blueprint (decoded), referred to below as **CMD-JSON**:
```json
{
  "concept": "jetbrains.mps.console.base.structure.BLExpression",
  "children": [{ "role": "expression", "nodes": [
    { "concept": "jetbrains.mps.baseLanguage.structure.StringLiteral",
      "properties": [{ "name": "value", "value": "hello from MCP test" }] }
  ]}]
}
```

---

### Step 12.01 — `insert_console_command_from_json` with `dryRun:true` `[SUCCESS]`

```json
{
  "tool": "mps_mcp_insert_console_command_from_json",
  "arguments": {
    "projectPath": "{{PROJECT_DIR}}",
    "dryRun": true,
    "json": "<CMD-JSON as a string>"
  }
}
```
- Validation: `ok==true`; `data.dryRun==true`; message indicates a successful dry run
  (console availability + assignability checked, nothing inserted).

---

### Step 12.02 — `insert_console_command_from_json` (real) `[SUCCESS]`

Same as 12.01 without `dryRun`.
- Validation: `ok==true`; `data` is the inserted command's node-info envelope; its
  `reference`/`modelReference` point into a temporary `ConsoleModel_*` model. The Console
  input now holds the command.

---

### Step 12.03 — `get_current_editor_root_node` `source:"console"` (success form) `[SUCCESS]`

```json
{
  "tool": "mps_mcp_get_current_editor_root_node",
  "arguments": { "projectPath": "{{PROJECT_DIR}}", "source": "console" }
}
```
- Validation: `ok==true`; `data` is the current (unexecuted) console command (a `BLExpression`).
  This is the success counterpart to the empty-state failure in Step 01.05.

---

### Step 12.04 — `run_console_command` with `dryRun:true` `[SUCCESS]`

Checks that a command is present without running it.
```json
{
  "tool": "mps_mcp_run_console_command",
  "arguments": { "projectPath": "{{PROJECT_DIR}}", "dryRun": true }
}
```
- Validation: `ok==true` (a command is present in the input).

---

### Step 12.05 — `run_console_command` (real) `[SUCCESS]`

Executes the current console command (equivalent to Ctrl+Enter). The printed result is **not**
returned here — read it via history in 12.06.
```json
{
  "tool": "mps_mcp_run_console_command",
  "arguments": { "projectPath": "{{PROJECT_DIR}}" }
}
```
- Validation: `ok==true`; `data.executed==true`.

---

### Step 12.06 — `get_console_history` with `includeResponses:true` `[CAPTURE]`

```json
{
  "tool": "mps_mcp_get_console_history",
  "arguments": { "projectPath": "{{PROJECT_DIR}}", "includeResponses": true }
}
```
- Validation: `ok==true`; `data` is an array with at least one `kind:"command"` entry
  (preview shows the string literal) and a following `kind:"response"` entry whose `preview` is
  `hello from MCP test` with `previewComplete==true`.
- **Capture** the `reference` of the `kind:"command"` entry (a `CommandHolder`) as
  `{{HISTORY_REF}}`. (These references are valid only until the next console interaction — use
  them promptly in 12.07–12.08; if a later call reports a stale reference, re-run this step to
  refresh `{{HISTORY_REF}}`.)

---

### Step 12.07 — `recall_console_command` with `dryRun:true` `[SUCCESS]`

```json
{
  "tool": "mps_mcp_recall_console_command",
  "arguments": {
    "projectPath": "{{PROJECT_DIR}}",
    "historyNodeReference": "{{HISTORY_REF}}",
    "dryRun": true
  }
}
```
- Validation: `ok==true` (the reference resolves to a recallable history entry; input
  unchanged).

---

### Step 12.08 — `recall_console_command` (real) `[SUCCESS]`

```json
{
  "tool": "mps_mcp_recall_console_command",
  "arguments": {
    "projectPath": "{{PROJECT_DIR}}",
    "historyNodeReference": "{{HISTORY_REF}}"
  }
}
```
- Validation: `ok==true`; `data` is the new input command's node-info envelope (a deep copy of
  the recalled command is now in the Console input).

---

### Step 12.09 — Invalid: insert a bare expression as a console command `[FAILURE]`

A `Make` (`ideCommands.Make`) is a baseLanguage **Expression**, not a `Command` or
`Statement`; passing it bare must fail (the tool tries to wrap a non-`Command` node into a
`Statement` role it is not assignable to). Use `dryRun:true` so nothing changes.
```json
{
  "tool": "mps_mcp_insert_console_command_from_json",
  "arguments": {
    "projectPath": "{{PROJECT_DIR}}",
    "dryRun": true,
    "json": "{\"concept\":\"jetbrains.mps.console.ideCommands.structure.Make\"}"
  }
}
```
- Validation: `ok==false`; the error indicates the `Make` node cannot be used as a console
  command (not assignable to the wrapped `Statement`/`Command` role). Match on substance, not
  the exact text — the assignability cause may be wrapped (e.g. "Failed to instantiate console
  command from JSON: …").

Proceed to `13_update_and_delete_modules.md`.
