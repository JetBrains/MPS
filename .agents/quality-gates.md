# Quality standards

## Code style

- Minimize comments; prefer self-documenting code.
- Do not add error handling for internal paths that cannot fail under normal operation. Use explicit handling at real boundaries such as I/O, model loading, generated-code integration, external processes, and user-provided data.

## Build verification

- Builds and tests for this project run on JDK 25; before trusting a build or test failure, confirm it ran on JDK 25 rather than another JDK.
- Prefer focused validation first: inspect the affected file or model, then run the smallest relevant build, test, or run configuration.
- Documentation, comment, and other prose-only changes have no build or test gate. Say that explicitly instead of running a suite to have something to report.
- For Java/Kotlin changes, use IDEA diagnostics such as `get_file_problems` and then run the nearest relevant test, run configuration, or `build_project`.
- Use `get_run_configurations` to find existing focused test suites or application configurations before inventing a new way to run code.
- Most run configurations execute locally and headlessly via `execute_run_configuration`, including large MPS-environment JUnit suites that bootstrap their own environment (e.g. `CoreTestSuite`, `CheckProjectStructure`).
- Before starting a suite, check that no other test JVM is already running: `ps aux | grep JUnitStarter`.
- `execute_run_configuration` has an internal timeout (~60s) that may expire before a long-running suite finishes. A "Timed out" error is **not** a test failure — the JVM process keeps running. Use `waitForExit=false`, monitor the process with `ps aux | grep <suite-class-name>`, and after it exits read the `fullOutputPath` log for `testFailed` entries.
- Never run multiple test suites concurrently — they share MPS environments, project locks, and state, and will fail with contention errors.
- Exception: tests based on `jetbrains.mps.ide.ModuleInProjectTest` fail at startup with `myEnv`/`myProject` null when launched this way — they need an MPS `Environment` provided by a different runner. Treat that signature as a launch limitation, not a code defect: report it and have the user run those in a full MPS context.
- The same `myEnv`/`myProject` null signature appears for individual `*McpToolset*IntegrationTest` classes: their environment is created once by the `McpToolsIntegrationTestSuite` run configuration. Never launch an mcp-tools test, class or sub-suite from the editor gutter; the generated configuration lacks the VM parameters and the environment.
- `McpToolsIntegrationTestSuite` is the union of five `Mcp*TestSuite` sub-suites and stays the full gate (and the only TeamCity entry). Register a new test class in exactly one sub-suite, never in the umbrella; `SuiteRegistrationGuardTest` fails otherwise.
- Run a subset in the same environment with `execute_run_configuration(configurationName="McpToolsIntegrationTestSuite", envs={"MCP_TESTS": "..."})`. The value is a comma-separated list of sub-suite simple names, test class simple names, or `ClassSimpleName#methodName` (Kotlin backtick name verbatim, spaces allowed). An unknown name or an empty match fails initialization; TeamCity ignores the variable.

  | Changed | Run |
  |---|---|
  | one toolset class | its test class (`MCP_TESTS=<TestClass>`), then its sub-suite |
  | `common/`, `McpIntegrationTestBase`, the umbrella, `testbench` | umbrella (no `MCP_TESTS`) |
  | a tool name, parameter, or `@McpDescription` | the toolset's sub-suite + `McpContractAndSkillsTestSuite` |
  | skills catalog, scripts, docs | `McpContractAndSkillsTestSuite` |
  | types / `query_nodes` GET_TYPE | `McpNodeToolsTestSuite` + `SkillTypeQueryRoutingTest` |

- A filtered run prints `McpToolsIntegrationTestSuite: MCP_TESTS selection applied, running only: ...` and writes its IDEA test-history entry under the umbrella's name with fewer tests; a verdict lookup in those files must check the test count or that line before treating a run as the full gate.
- A sub-suite run is a suite run: one at a time, machine-wide, gated on no running `JUnitStarter` JVM like the umbrella.
- For MPS model changes, run `mps_mcp_check_root_node_problems` on every root you touched (it also accepts a model or module reference), then rebuild or regenerate only when the downstream generated code may change (`.agents/conventions.md` covers committing the regenerated sources).
- If the MPS MCP tools appear to be missing, check the names you were actually given before concluding anything (`.agents/tools.md`). If they are genuinely unavailable, stop and say so; never fall back to editing a serialized model as text.
- Live MPS verification (a change exercised through a running MPS, e.g. over MCP) must include grepping the IDE log for `WARN` / `ERROR` / `SEVERE` lines in the run window; a clean tool envelope can hide a logged stack trace. `.agents/skills/mps-mcp-workflow/references/ide-log.md` explains how to find the log (`mps_mcp_list_open_projects` `logFile`) and handle rotation.
- For generator changes, validate both the MPS generator result and the affected generated Java/Kotlin compilation path.
- For cross-cutting changes, validate both the MPS side and the JVM side.
- If validation cannot be run because the required IDE, MPS, authentication, or external service is unavailable, say exactly what was skipped and why.
- These local gates always apply. A green local build is not evidence about TeamCity; when a workflow requires remote CI, that is a separate gate (see `.agents/tools.md`).
