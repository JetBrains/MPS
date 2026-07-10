# Test Model Setup

A test model must have:

- **Stereotype**: `tests` (use the `@tests` suffix in the model name, e.g. `mylang.tests@tests`).
- **Languages used**:
  - `jetbrains.mps.lang.test` — provides `NodesTestCase`, `EditorTestCase`, `GeneratorTestCase`, `MigrationTestCase`, `TestNode`, etc.
  - `jetbrains.mps.baseLanguage.unitTest` — provides `BTestCase`, `TestMethod`, assertions, `BeforeTest`.
  - The language(s) under test, so you can write valid sample code in `TestNode` snippets.
  - `jetbrains.mps.baseLanguage`, `jetbrains.mps.baseLanguage.collections`, `jetbrains.mps.lang.smodel`, `jetbrains.mps.lang.text` as needed for assertion code.
- **Containing module**: a Solution carrying the **`tests` facet** so it gets compiled and runs JUnit. Place it under `<lang>/tests/` or `<lang>.test/` next to the language module.
  - Create through MCP: `mps_mcp_create_module(type="solution", name="…", directory="…", facets="[\"tests\"]")`. The response is self-describing:
    ```json
    {"ok": true,
     "data": {"name": "…", "reference": "…", "kind": "Solution",
              "facets": ["java", "tests"], "loadExtensions": "NotAvailable",
              "present": true}}
    ```
    `kind`, `facets`, and `loadExtensions` together confirm "this is a test-container Solution" — no follow-up call needed.
  - Convert an existing Solution: `mps_mcp_update_module_facet(moduleName="…", facetType="tests", enabled=true)`, then read back with `mps_mcp_get_project_structure(startingPoint="…")` (whose `data.facets` array will now include `"tests"`).
- **Module dependency**: depend on the language module and any runtime needed by sample code.
- Optional **`TestInfo` root node**: a single `TestInfo` per model that records the project path. Used by out-of-process test runners. The `mps.test.project.path` system property overrides it.

> If the only goal is plain JUnit on hand-written Java/Kotlin (no MPS-specific assertions), prefer a regular module test source root rather than a `@tests` model — see `mps-distribution-build` for how `BTestCase`-based MPS test modules are packaged.

## Two locations for tests

| Where | When |
|---|---|
| **Test aspect** of the language (`testAspect` model under `<lang>/`) | Quick, language-local checks; cannot run in a fresh MPS instance from outside the language. |
| **Dedicated test Solution** with `@tests` model | Recommended for anything serious. Runs out-of-process; can be wired into the build/CI. |

## Examples in this repo

- `testbench/testsolutions/quotation.test/` — full set: nodes, editor, generator, migration test models.
- `testbench/testsolutions/test.test/` — self-tests of `lang.test`.
- `testbench/testsolutions/bl.test/` — `MigrationTestCase` examples for `baseLanguage`.
- `testbench/testsolutions/jetbrains.mps.baseLanguage.methodReferences.test/` — `NodesTestCase` typesystem tests.
- `testbench/testsolutions/collections_unittest/` — pure `BTestCase` JUnit-style tests.
