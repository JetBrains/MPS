# 01 — Initial Environment Validation

> **Captured-value contract** — _Inputs:_ `{{SERVER_PREFIX}}`. _Produces (cross-part):_ `{{PROJECT_DIR}}`, `{{TMPDIR}}`. _(Run by the orchestrator itself — it sets the globals.)_

Goal: confirm the runtime assumptions, **resolve `{{PROJECT_DIR}}` and `{{TMPDIR}}`**, and
confirm the project is empty enough. If any assumption is unmet, **stop** and finalize the
report explaining which assumption failed.

Assumptions being validated:
- MPS is running and MCP is reachable.
- An MPS project corresponding to the current working folder is open.
- That project is empty (no MPS modules) apart from agent-config files.

> **Note on "reachable" checks.** The MPS MCP API has no dedicated "ping"/"health" tool.
> The closest available check is `mps_mcp_list_open_projects`: if it returns `ok:true`, both
> MCP and MPS are reachable. That is the check used in Step 01.01.

---

### Step 01.01 — List open projects; resolve `{{PROJECT_DIR}}` `[CAPTURE]`

Expected result: **success**.

```json
{
  "tool": "mps_mcp_list_open_projects",
  "arguments": {}
}
```

- Response validation: `ok==true`; `data.projects` is a non-empty array.
- **Resolve `{{PROJECT_DIR}}`:** find the entry with `"isCurrent": true`; its
  `mpsProjectBaseDirectory` is `{{PROJECT_DIR}}`. If no entry is `isCurrent:true`, pick the
  entry whose `mpsProjectBaseDirectory` matches your current working directory.
  Record it. (In the environment this scenario was prepared on, the value is
  `/Users/vaclav/MPSProjects/Projectx7`.)
- If the call fails with an ambiguity/no-project error and you cannot determine the current
  project, **stop** — assumption "a project corresponding to the current folder is open" is
  unmet. Finalize the report.
- Project-state check: n/a.

> From here on, substitute the resolved `{{PROJECT_DIR}}` into the `projectPath` of **every**
> call.

---

### Step 01.02 — Resolve `{{TMPDIR}}` (system temp directory) `[CAPTURE]`

This is **not** an MCP call. Determine your system temp directory (the scenario needs it for
temp-file arguments). On macOS/Linux run a shell command equivalent to `echo "$TMPDIR"` (on
the preparation environment this was `/var/folders/_v/xws71ss1209dv8swl5vvlrmm0000gn/T/`).
Record the absolute path (with a trailing slash) as `{{TMPDIR}}`.

- If you cannot determine a writable system temp directory, you may still run the scenario
  using **inline** JSON for the few temp-file steps; those steps note the inline fallback.

---

### Step 01.03 — Confirm the project is empty (modules) `[READ-FILE]`

Expected result: **success**, and the project must contain **zero MPS modules**.

```json
{
  "tool": "mps_mcp_get_project_structure",
  "arguments": { "projectPath": "{{PROJECT_DIR}}" }
}
```

- Response validation: `ok==true`. `data` is either an inline object or, for a dump above
  `maxInlineBytes` (default 20000 characters), a path to a temp `.json` file (an empty
  project's dump is small, so expect it inline).
- **READ the returned file** (if `data` is a path). The payload's `modules` array must be
  **empty** (`[]`).
- **Project-state check / assumption gate:** if `data.modules` is empty → assumption holds,
  continue. If it contains modules whose names start with `mcp.test.` → a previous run was
  not cleaned; **stop** and finalize the report noting "project not empty (leftover
  `mcp.test.*` modules)". If it contains other, unrelated modules, record a note but you may
  continue **only if** none of them use the names this scenario will create (section 5 of the
  master index).

> The authoritative emptiness signal is the **modules** array. The project may still carry
> ambient IDE state (e.g. a stray run configuration or workspace settings from a prior
> session); such non-module residue does **not** violate the "empty project" assumption and
> must not cause you to stop.

---

### Step 01.04 — Confirm no editor is open yet `[FAILURE]`

Expected result: **failure** (nothing is open in a freshly opened empty project).

```json
{
  "tool": "mps_mcp_get_current_editor_root_node",
  "arguments": { "projectPath": "{{PROJECT_DIR}}", "source": "editor" }
}
```

- Response validation: `ok==false`; `error` indicates no editor is open (observed:
  `"No MPS editor is currently open"`).
- This both exercises the `source:"editor"` value and confirms the empty starting state.
- If this **succeeds** (an editor root is returned), that is not necessarily fatal — record a
  note that an editor was already open — but it weakens the "empty/clean" assumption.

---

### Step 01.05 — Confirm the console input is empty `[FAILURE]`

Expected result: **failure** (no current console command).

```json
{
  "tool": "mps_mcp_get_current_editor_root_node",
  "arguments": { "projectPath": "{{PROJECT_DIR}}", "source": "console" }
}
```

- Response validation: `ok==false`; observed `error` "The MPS Console input editor is empty
  (no current command)." with `code:"NOT_FOUND"`.
- This exercises the `source:"console"` enum value in its empty-state form. (The success form
  of `source:"console"` is exercised in part 12 after a console command is inserted.)

---

### Step 01.06 — Environment helper: list VCS repositories `[SUCCESS]`

Expected result: **success** (IDE helper tool; returns its own shape, no `ok` wrapper).

```json
{
  "tool": "get_repositories",
  "arguments": { "projectPath": "{{PROJECT_DIR}}" }
}
```

- Response validation: response has a `roots` array (may be empty — the preparation
  environment returned `{"roots":[]}` because the project folder is not a VCS checkout).
- Project-state check: n/a. This is an environment probe only.

**Gate:** if Steps 01.01 and 01.03 both passed (project found, zero modules), the
assumptions are met — proceed to `02_initialization.md`. Otherwise stop and finalize.
