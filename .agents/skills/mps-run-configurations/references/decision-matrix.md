# Decision Matrix — Which Path to Use

| Situation | Use |
|---|---|
| Source DSL root implements `IMainClass` (Kaja `Script`, Shapes `Canvas`, …) | `mps_mcp_create_run_configuration` on the DSL root, then `execute_run_configuration` by name |
| MPS test case (`NodesTestCase`, `BTestCase`, `unitTest.TestCase`, …) | Same — the tool yields a JUnit Tests config. For a whole `@tests` model, pass `modelReference` instead of one root |
| Several test roots, several models, or a mix | One call with `nodeReference` and/or `modelReference` arrays. Pass `configurationName`; the result is a snapshot |
| Plain BaseLanguage `ClassConcept` with a qualifying `main` (see `references/runnable-shapes.md` for the exact predicate; visibility is not checked) | Same — the tool yields a `Class <name>` Java Application config, identical to the IDE gutter |
| User already has a working run config (any kind) | `get_run_configurations()`, then `execute_run_configuration` by its existing name — do not duplicate |
| Plain `ClassConcept`, but module has `compileInMPS=false` | Default: use the IDEA MCP file-path path on the generated `.java` (`references/classconcept-and-fallbacks.md`). Only flip the JavaModuleFacet to MPS-compile if you've confirmed that's what the user wants for that module — `Compile.None` is usually intentional |
| `ClassConcept` with no qualifying `main` | Not runnable; nothing to launch — either give it a `main` or run a different root |
| Generated Java in `source_gen` with `main`, module already compiled | IDEA MCP `get_run_configurations(filePath)` → `execute_run_configuration(filePath, line)` |

When in doubt, prefer the source-root path (IMainClass, ClassConcept, or ITestCase). It tracks the user's source of truth, and regenerating the model keeps the config working without edits.
