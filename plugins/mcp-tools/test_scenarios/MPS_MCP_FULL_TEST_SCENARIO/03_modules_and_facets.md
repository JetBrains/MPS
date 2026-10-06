# 03 — Module Creation and Facets

> **Captured-value contract** — _Inputs:_ `{{SERVER_PREFIX}}`, `{{PROJECT_DIR}}`. _Produces (cross-part):_ `{{SANDBOX_MODULE_REF}}` (+ informational `{{STATECHART_MODULE_REF}}`, `{{DEVKIT_MODULE_REF}}`, `{{GENERATOR_MODULE_REF}}`).

Tools: `mps_mcp_create_module` (enum `type`: `solution`/`language`/`devkit`/`generator`;
booleans `withGenerator`/`withSandbox`/`withRuntime`; `facets`), `mps_mcp_get_project_structure`
(enum `moduleKind`: `Solution`/`Language`/`DevKit`/`Generator`; include-flags),
`mps_mcp_list_facet_types`, `mps_mcp_get_module_facets`, `mps_mcp_update_module_facet`.

> `create_module` success returns `data` = `{ name, reference, readOnly, virtualFolder, kind,
> facets, loadExtensions, present, ... }`. Module `reference` format is `<uuid>(<name>)`.

---

### Step 03.01 — Create solution `mcp.test.sandbox` (`type=solution`) `[CAPTURE]`

Expected result: **success**.

```json
{
  "tool": "mps_mcp_create_module",
  "arguments": {
    "projectPath": "{{PROJECT_DIR}}",
    "type": "solution",
    "name": "mcp.test.sandbox",
    "directory": "{{PROJECT_DIR}}/solutions/mcp.test.sandbox"
  }
}
```

- Response validation: `ok==true`; `data.kind=="Solution"`; `data.name=="mcp.test.sandbox"`;
  `data.facets` includes `"java"`.
- **Capture** `data.reference` as `{{SANDBOX_MODULE_REF}}`.
- Project-state check: deferred to Step 03.08 (`get_project_structure moduleKind=Solution`
  lists `mcp.test.sandbox`).

---

### Step 03.02 — Create language `mcp.test.statechart` (`type=language`) `[CAPTURE]`

Expected result: **success**.

```json
{
  "tool": "mps_mcp_create_module",
  "arguments": {
    "projectPath": "{{PROJECT_DIR}}",
    "type": "language",
    "name": "mcp.test.statechart",
    "directory": "{{PROJECT_DIR}}/languages/mcp.test.statechart"
  }
}
```

- Response validation: `ok==true`; `data.kind=="Language"`; `data.loadExtensions=="Plugin"`.
- **Capture** `data.reference` as `{{STATECHART_MODULE_REF}}`.
- Note: a language auto-creates the aspect models `structure`, `editor`, `constraints`,
  `behavior`, `typesystem` (verified later when their names are used).

---

### Step 03.03 — Create devkit `mcp.test.devkit` (`type=devkit`) `[CAPTURE]`

Expected result: **success**.

```json
{
  "tool": "mps_mcp_create_module",
  "arguments": {
    "projectPath": "{{PROJECT_DIR}}",
    "type": "devkit",
    "name": "mcp.test.devkit",
    "directory": "{{PROJECT_DIR}}/devkits/mcp.test.devkit"
  }
}
```

- Response validation: `ok==true`; `data.kind=="DevKit"`; `data` has arrays
  `extendedDevkits`, `exportedLanguages`, `exportedSolutions`.
- **Capture** `data.reference` as `{{DEVKIT_MODULE_REF}}`.

---

### Step 03.04 — Create generator (`type=generator`, `parentLanguage` required) `[CAPTURE]`

Expected result: **success**. `directory` is omitted (defaults to
`<language-dir>/generator`). `name` is ignored for generators (derived from the language).

```json
{
  "tool": "mps_mcp_create_module",
  "arguments": {
    "projectPath": "{{PROJECT_DIR}}",
    "type": "generator",
    "name": "ignored",
    "parentLanguage": "mcp.test.statechart"
  }
}
```

- Response validation: `ok==true`; `data.kind` indicates a Generator; `data.name` is derived
  (expected `mcp.test.statechart.generator`).
- **Capture** `data.reference` as `{{GENERATOR_MODULE_REF}}`.

> If the language `mcp.test.statechart` was created with a generator already (it was not here),
> this could report the generator already exists — in that case record a note and capture the
> existing reference.

---

### Step 03.05 — Create language `mcp.test.flags` with all companion flags `[SUCCESS]`

Expected result: **success**. Exercises the booleans `withGenerator`, `withSandbox`,
`withRuntime` (all `true`).

```json
{
  "tool": "mps_mcp_create_module",
  "arguments": {
    "projectPath": "{{PROJECT_DIR}}",
    "type": "language",
    "name": "mcp.test.flags",
    "directory": "{{PROJECT_DIR}}/languages/mcp.test.flags",
    "withGenerator": true,
    "withSandbox": true,
    "withRuntime": true
  }
}
```

- Response validation: `ok==true`; `data.kind=="Language"`.
- Project-state check: a later `get_project_structure moduleKind=Solution` (Step 03.08)
  should also reveal the auto-created sandbox/runtime solution companions of `mcp.test.flags`
  (their exact names are MPS-derived — just note they appear; do not assert exact names).

---

### Step 03.06 — Invalid: `facets` on a devkit is rejected `[FAILURE]`

Expected result: **failure** (`facets` is allowed only for `solution`/`language`).

```json
{
  "tool": "mps_mcp_create_module",
  "arguments": {
    "projectPath": "{{PROJECT_DIR}}",
    "type": "devkit",
    "name": "mcp.test.devkit.bad",
    "directory": "{{PROJECT_DIR}}/devkits/mcp.test.devkit.bad",
    "facets": ["tests"]
  }
}
```

- Response validation: `ok==false`; `code` expected `INVALID_REQUEST`; error mentions facets
  not allowed for devkit/generator. No module should be created.
- Project-state check: `mcp.test.devkit.bad` must NOT appear in any later structure dump.

---

### Step 03.07 — Invalid: `type=generator` without `parentLanguage` `[FAILURE]`

Expected result: **failure** (`parentLanguage` is required for generators).

```json
{
  "tool": "mps_mcp_create_module",
  "arguments": {
    "projectPath": "{{PROJECT_DIR}}",
    "type": "generator",
    "name": "mcp.test.orphan.generator"
  }
}
```

- Response validation: `ok==false`; error indicates `parentLanguage` is required.

---

### Step 03.08 — Project structure filtered by `moduleKind=Solution` `[READ-FILE]`

Expected result: **success**.

```json
{
  "tool": "mps_mcp_get_project_structure",
  "arguments": {
    "projectPath": "{{PROJECT_DIR}}",
    "moduleKind": "Solution",
    "includeModels": true,
    "includeRootNodes": true
  }
}
```

- Response validation: `ok==true`; read the file if `data` is a path. `data.modules` includes
  `mcp.test.sandbox`. (Solution companions of `mcp.test.flags` may also appear.)
- Project-state check: confirms Steps 03.01 / 03.05 effects. Exercises `moduleKind=Solution`,
  `includeModels`, `includeRootNodes`.

---

### Step 03.09 — Project structure filtered by `moduleKind=Language` `[READ-FILE]`

Expected result: **success**.

```json
{
  "tool": "mps_mcp_get_project_structure",
  "arguments": {
    "projectPath": "{{PROJECT_DIR}}",
    "moduleKind": "Language",
    "includeModels": true,
    "includeDependencies": true
  }
}
```

- Response validation: `ok==true`; read the file if `data` is a path. `data.modules` includes
  `mcp.test.statechart` and `mcp.test.flags`. Each language lists its aspect models. Exercises
  `moduleKind=Language`, `includeDependencies`.

---

### Step 03.10 — Project structure filtered by `moduleKind=DevKit` `[READ-FILE]`

Expected result: **success**.

```json
{
  "tool": "mps_mcp_get_project_structure",
  "arguments": { "projectPath": "{{PROJECT_DIR}}", "moduleKind": "DevKit" }
}
```

- Response validation: `ok==true`; `data.modules` includes `mcp.test.devkit`. Exercises
  `moduleKind=DevKit`.

---

### Step 03.11 — Project structure filtered by `moduleKind=Generator` `[READ-FILE]`

Expected result: **success**.

```json
{
  "tool": "mps_mcp_get_project_structure",
  "arguments": { "projectPath": "{{PROJECT_DIR}}", "moduleKind": "Generator" }
}
```

- Response validation: `ok==true`; `data.modules` includes the generator created in Step 03.04
  (and the `mcp.test.flags` generator). Exercises `moduleKind=Generator`.

---

### Step 03.12 — Project structure including stub (read-only) modules `[READ-FILE]`

Expected result: **success**. Exercises `includeStubModules`. (This payload is large, so it
normally comes back as a temp-file path rather than inline.)

```json
{
  "tool": "mps_mcp_get_project_structure",
  "arguments": {
    "projectPath": "{{PROJECT_DIR}}",
    "includeStubModules": true,
    "moduleKind": "Language"
  }
}
```

- Response validation: `ok==true`; read the file if `data` is a path. `data.modules` now also includes read-only
  library languages (e.g. `jetbrains.mps.*`) in addition to the editable `mcp.test.*` ones.
  Just confirm at least one read-only module appears; do not enumerate.

> `includeNodes` (full AST) and `includeRootNodes`-with-content are exercised again in part 07
> with a `startingPoint` scoping them to a single small model (so the payload stays small).

---

### Step 03.13 — List all facet types (no module) `[SUCCESS]`

Expected result: **success**.

```json
{
  "tool": "mps_mcp_list_facet_types",
  "arguments": { "projectPath": "{{PROJECT_DIR}}" }
}
```

- Response validation: `ok==true`; `data.facetTypes` includes at least these `type` values:
  `documentation`, `generator`, `java`, `plaintext`, `tests`.

---

### Step 03.14 — List facet types with module applicability `[SUCCESS]`

Expected result: **success**. Exercises the optional `moduleName`.

```json
{
  "tool": "mps_mcp_list_facet_types",
  "arguments": { "projectPath": "{{PROJECT_DIR}}", "moduleName": "mcp.test.sandbox" }
}
```

- Response validation: `ok==true`; entries now carry applicability fields (e.g.
  `applicableToModule` / `recommendedForModule`) for `mcp.test.sandbox`.

---

### Step 03.15 — Get current facets of the solution `[SUCCESS]`

Expected result: **success**.

```json
{
  "tool": "mps_mcp_get_module_facets",
  "arguments": { "projectPath": "{{PROJECT_DIR}}", "moduleName": "mcp.test.sandbox" }
}
```

- Response validation: `ok==true`; `data.activeFacets` contains a `java` facet;
  `data.discrepancies` is an array (expected empty).
- Record whether a `tests` facet is present (it should **not** be yet).

---

### Step 03.16 — Enable the `tests` facet on the solution `[SUCCESS]`

Expected result: **success**. (Needed later for the `@tests` model in part 04.)

```json
{
  "tool": "mps_mcp_update_module_facet",
  "arguments": {
    "projectPath": "{{PROJECT_DIR}}",
    "moduleName": "mcp.test.sandbox",
    "facetType": "tests",
    "enabled": true
  }
}
```

- Response validation: `ok==true`; `data.updated==true`; `data.facetType=="tests"`.

---

### Step 03.17 — Re-check facets (state verification) `[SUCCESS]`

Expected result: **success**, and the `tests` facet is now present.

```json
{
  "tool": "mps_mcp_get_module_facets",
  "arguments": { "projectPath": "{{PROJECT_DIR}}", "moduleName": "mcp.test.sandbox" }
}
```

- Response validation: `ok==true`.
- **Project-state check:** `data.activeFacets` (or `persistedFacets`) now includes a facet of
  type `tests`. This confirms Step 03.16 took effect.

Proceed to `04_models.md`.
