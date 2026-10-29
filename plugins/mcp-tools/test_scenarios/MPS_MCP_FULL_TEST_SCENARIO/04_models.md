# 04 — Model Creation and Model Updates

> **Captured-value contract** — _Inputs:_ `{{SERVER_PREFIX}}`, `{{PROJECT_DIR}}`. _Produces (cross-part):_ `{{SANDBOX_MODEL_REF}}` (+ informational `{{SANDBOX_OTHER_MODEL_REF}}`).

Tools: `mps_mcp_create_model` (the three `modelName` mechanisms: plain / language-aspect-id /
`name@stereotype`), `mps_mcp_update_model` (enum `operation`: `RENAME`, `DELETE`, `SET_DO_NOT_GENERATE`).

> `create_model` success returns `data` = `{ name, module, reference, readOnly, present }`.
> Model `reference` format is `r:<uuid>(<modelName>)`. You may address a model later by this
> reference **or** by its name.

---

### Step 04.01 — Create primary plain model `mcp.test.sandbox.model` `[CAPTURE]`

Expected result: **success**.

```json
{
  "tool": "mps_mcp_create_model",
  "arguments": {
    "projectPath": "{{PROJECT_DIR}}",
    "moduleName": "mcp.test.sandbox",
    "modelName": "mcp.test.sandbox.model"
  }
}
```

- Response validation: `ok==true`; `data.name=="mcp.test.sandbox.model"`;
  `data.module=="mcp.test.sandbox"`.
- **Capture** `data.reference` as `{{SANDBOX_MODEL_REF}}`.

---

### Step 04.02 — Create second plain model `mcp.test.sandbox.other` `[CAPTURE]`

Expected result: **success**. (Used for negative tests and for `model_dependency`.)

```json
{
  "tool": "mps_mcp_create_model",
  "arguments": {
    "projectPath": "{{PROJECT_DIR}}",
    "moduleName": "mcp.test.sandbox",
    "modelName": "mcp.test.sandbox.other"
  }
}
```

- Response validation: `ok==true`; `data.name=="mcp.test.sandbox.other"`.
- **Capture** `data.reference` as `{{SANDBOX_OTHER_MODEL_REF}}`.

---

### Step 04.03 — Create a language-aspect model (TextGen aspect) `[SUCCESS]`

Expected result: **success**. Exercises the **language-aspect-id** `modelName` mechanism
(`<langModule>.<aspectId>`, case-sensitive, **no** stereotype). `textGen` is an optional
aspect not auto-created with the language.

```json
{
  "tool": "mps_mcp_create_model",
  "arguments": {
    "projectPath": "{{PROJECT_DIR}}",
    "moduleName": "mcp.test.statechart",
    "modelName": "mcp.test.statechart.textGen"
  }
}
```

- Response validation: `ok==true`; `data.name=="mcp.test.statechart.textGen"`.
- Note: aspect-id case matters (`textGen`, not `textgen`). This model becomes the language's
  TextGen aspect.

---

### Step 04.04 — Create a stereotyped model (`@tests`) `[SUCCESS]`

Expected result: **success**. Exercises the **`name@stereotype`** mechanism. The solution
already has the `tests` facet (Step 03.16).

```json
{
  "tool": "mps_mcp_create_model",
  "arguments": {
    "projectPath": "{{PROJECT_DIR}}",
    "moduleName": "mcp.test.sandbox",
    "modelName": "mcp.test.sandbox.cases@tests"
  }
}
```

- Response validation: `ok==true`; `data.name` contains the `@tests` stereotype (observed
  form: `mcp.test.sandbox.cases@tests`).

---

### Step 04.05 — Create a throwaway model for update tests `[CAPTURE]`

Expected result: **success**.

```json
{
  "tool": "mps_mcp_create_model",
  "arguments": {
    "projectPath": "{{PROJECT_DIR}}",
    "moduleName": "mcp.test.sandbox",
    "modelName": "mcp.test.sandbox.scratch"
  }
}
```

- Response validation: `ok==true`.
- **Capture** `data.reference` as `{{SCRATCH_MODEL_REF}}`.

---

### Step 04.06 — Rename the throwaway model (`update_model` RENAME) `[SUCCESS]`

Expected result: **success**. Exercises `operation:"RENAME"`.

```json
{
  "tool": "mps_mcp_update_model",
  "arguments": {
    "projectPath": "{{PROJECT_DIR}}",
    "modelReference": "mcp.test.sandbox.scratch",
    "newModelName": "mcp.test.sandbox.scratch2",
    "operation": "RENAME"
  }
}
```

- Response validation: `ok==true`; `data.name=="mcp.test.sandbox.scratch2"`.
- Project-state check: a later structure dump (or Step 04.08's sibling listing) shows
  `mcp.test.sandbox.scratch2` and no `mcp.test.sandbox.scratch`.

---

### Step 04.07 — Delete the throwaway model (`update_model` DELETE) `[SUCCESS]`

Expected result: **success**. Exercises `operation:"DELETE"`. (This model is throwaway; its
deletion is itself the test — not a rollback of scenario artifacts.)

```json
{
  "tool": "mps_mcp_update_model",
  "arguments": {
    "projectPath": "{{PROJECT_DIR}}",
    "modelReference": "mcp.test.sandbox.scratch2",
    "operation": "DELETE"
  }
}
```

- Response validation: `ok==true`; `data` indicates deletion (observed:
  `{ "name":"mcp.test.sandbox.scratch2", "deleted":true }`).
- **Project-state check:** `mcp.test.sandbox.scratch2` must be absent from a follow-up
  `get_project_structure moduleKind=Solution includeModels=true`.

---

### Step 04.08 — Invalid: create a model in a non-existent module `[FAILURE]`

Expected result: **failure**.

```json
{
  "tool": "mps_mcp_create_model",
  "arguments": {
    "projectPath": "{{PROJECT_DIR}}",
    "moduleName": "no.such.module.zzz",
    "modelName": "no.such.module.zzz.model"
  }
}
```

- Response validation: `ok==false`; `code` expected `NOT_FOUND`; error like
  `Module 'no.such.module.zzz' not found`.

Proceed to `05_dependencies_and_used_languages.md`.
