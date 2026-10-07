# 11 — Run Configurations

> **Captured-value contract** — _Inputs:_ `{{SERVER_PREFIX}}`, `{{PROJECT_DIR}}`, `{{JAVA_CLASS_REF}}`, `{{GEARBOX_REF}}`. _Produces (cross-part):_ none. _(`{{RUN_CONFIG_NAME}}` and `{{TEST_CASE_REF}}` are intra-part.)_

Tool: `mps_mcp_create_run_configuration` (`nodeReference`, optional `configurationName`).
Helper IDE tools (not `mps_mcp_*`): `get_run_configurations`, `execute_run_configuration`.

Dispatch paths the tool supports (documented):
- `ClassConcept` with a static `public static void main(String[])` → **Java Application**
  (exercised here: `McpRunnable`, Steps 11.01–11.02, executed in optional Step 11.05). This is
  the "create a Java class with a `main` method and run it via a run configuration" case — it is
  already covered, so the scenario does not build a second one.
- Concept implementing `ITestCase` → **JUnit Tests** (exercised here: Steps 11.06–11.07, using the
  stock `jetbrains.mps.lang.test.structure.NodesTestCase`).
- Concept implementing `IMainClass` → Java Application, named `Node <n>` (a DSL `main`-like root).
  **Not exercised by this scenario**: `IMainClass` lives in `jetbrains.mps.execution.util` and has
  no implementer among stock BaseLanguage concepts — reaching it needs a DSL/demo concept (e.g.
  `jetbrains.mps.execution.demo`) a generic MPS project may not have loaded. This branch is covered
  by the toolset's own unit tests (see COVERAGE_MATRIX.md); the practical "run a Java `main`" goal
  is already met by the `ClassConcept` path above.

The two Java Application paths require the owning module's `compileInMPS=true`; `mcp.test.sandbox`
satisfies this (its `java` facet has `compile=mps`). The JUnit (`ITestCase`) path has no such gate.

Uses `{{JAVA_CLASS_REF}}` (McpRunnable, from Step 10.01) and `{{GEARBOX_REF}}`.

---

### Step 11.01 — Create a run configuration for `McpRunnable` (default name) `[CAPTURE]`

```json
{
  "tool": "mps_mcp_create_run_configuration",
  "arguments": {
    "projectPath": "{{PROJECT_DIR}}",
    "nodeReference": "{{JAVA_CLASS_REF}}"
  }
}
```
- Validation: `ok==true`; `data.type=="Java Application"`; `data.name=="Class McpRunnable"`
  (default name for the ClassConcept path); `data.uniqueId=="Java Application.Class McpRunnable"`.
- **Capture** `data.name` as `{{RUN_CONFIG_NAME}}`.

---

### Step 11.02 — Create a run configuration with an explicit `configurationName` `[SUCCESS]`

Exercises the optional `configurationName`.
```json
{
  "tool": "mps_mcp_create_run_configuration",
  "arguments": {
    "projectPath": "{{PROJECT_DIR}}",
    "nodeReference": "{{JAVA_CLASS_REF}}",
    "configurationName": "McpRunnableNamed"
  }
}
```
- Validation: `ok==true`; `data.name=="McpRunnableNamed"`; `data.type=="Java Application"`.

---

### Step 11.03 — Invalid: run configuration for a non-runnable concept `[FAILURE]`

`GearboxStateChart` (a `StateChart`) is neither `IMainClass`, `ITestCase`, nor a
`ClassConcept` with `main`.
```json
{
  "tool": "mps_mcp_create_run_configuration",
  "arguments": {
    "projectPath": "{{PROJECT_DIR}}",
    "nodeReference": "{{GEARBOX_REF}}"
  }
}
```
- Validation: `ok==false`; error states the node is not runnable through this tool (must be
  `IMainClass`/`ITestCase` or a `ClassConcept` with a static `main`).

---

### Step 11.04 — List run configurations (helper) `[SUCCESS]`

Project-state confirmation for 11.01–11.02. This is an IDE helper tool (its result is **not**
wrapped in `ok`).
```json
{
  "tool": "get_run_configurations",
  "arguments": { "projectPath": "{{PROJECT_DIR}}" }
}
```
- Validation: response has a `configurations` array that includes entries named
  `Class McpRunnable` and `McpRunnableNamed`, both with `description:"Java Application"`.
  (The project may also list unrelated pre-existing configurations from ambient state — ignore
  those.)

---

### Step 11.05 — (OPTIONAL) Execute the run configuration (helper) `[OPTIONAL-SUCCESS]`

This actually **compiles and launches a JVM**; it can be slow. Run it only if your environment
permits process launch; otherwise skip and note "skipped (optional, launches JVM)" in the
report. `McpRunnable.main` has an empty body, so it exits immediately.
```json
{
  "tool": "execute_run_configuration",
  "arguments": {
    "projectPath": "{{PROJECT_DIR}}",
    "configurationName": "{{RUN_CONFIG_NAME}}",
    "waitForExit": true,
    "timeout": 120000
  }
}
```
- Validation (if run): response includes `exitCode` (expected `0`) and possibly empty
  `output` (normal for a no-op `main`). If compilation fails in your environment, record the
  output as a finding (suspected: `MPS behavior`/environment) and continue.

---

### Step 11.06 — Create an `ITestCase` root (`NodesTestCase`) `[CAPTURE]`

Exercises the `ITestCase` → JUnit Tests dispatch (distinct from the `ClassConcept` path above).
`jetbrains.mps.lang.test.structure.NodesTestCase` is a stock, rootable concept that implements
`ITestCase`; `create_root_node` auto-imports its language (`jetbrains.mps.lang.test`) into the
model, so no separate `model_used_language` step is needed.
```json
{
  "tool": "mps_mcp_create_root_node",
  "arguments": {
    "projectPath": "{{PROJECT_DIR}}",
    "modelReference": "mcp.test.sandbox.cases@tests",
    "concept": "jetbrains.mps.lang.test.structure.NodesTestCase",
    "name": "McpNodeTests"
  }
}
```
- Validation: `ok==true`; `data.name=="McpNodeTests"`; `data.isRoot==true`.
- **Capture** `data.reference` as `{{TEST_CASE_REF}}`.

---

### Step 11.07 — Create a JUnit run configuration for the test case (`ITestCase` dispatch) `[SUCCESS]`

```json
{
  "tool": "mps_mcp_create_run_configuration",
  "arguments": {
    "projectPath": "{{PROJECT_DIR}}",
    "nodeReference": "{{TEST_CASE_REF}}"
  }
}
```
- Validation: `ok==true`; `data.type=="JUnit Tests"`; `data.name=="McpNodeTests"` (the JUnit path
  derives the bare node name — no `Class `/`Node ` prefix); `data.uniqueId` starts with
  `JUnit Tests.`. This exercises the `ITestCase` dispatch branch and `configureAsTestCase`. Do
  **not** execute this configuration.

### Step 11.08 — One model, several roots, and a mix `[SUCCESS]`

`nodeReference` may be one root or a JSON array of test roots. `modelReference` may be one model or a JSON array of models. Either or both may be set.

- One `@tests` model and no nodes: `data.runType=="MODEL"`, `data.live==true`, `data.name` is `Tests in '<short name>'`. An empty `NodesTestCase` does not count as a test.
- Several test roots, several models, or a mix: `data.runType=="NODE"`, `data.live==false`. Pass `configurationName`. Repeat the call to refresh a snapshot.
- A model reference passed as `nodeReference` is `INVALID_REQUEST` and names `modelReference`.

The fixture for these cases, including a model with no tests, `compileInMPS=false`, and a cross-project model, is `JetBrainsMPSRunConfigurationMcpToolsetIntegrationTest`. Do not execute the created JUnit configurations here.

Proceed to `12_console.md`.
