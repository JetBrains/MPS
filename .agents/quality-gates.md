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
- The same `myEnv`/`myProject` null signature appears for individual `*McpToolset*IntegrationTest` classes: their environment is created once by the `McpToolsIntegrationTestSuite` run configuration, so run that whole suite (or `McpToolsIntegrationTestSuite (1)`) to validate mcp-tools changes, then search its log for the test names you care about.
- For MPS model changes, run `mps_mcp_check_root_node_problems` on every root you touched (it also accepts a model reference), then rebuild or regenerate only when the downstream generated code may change (`.agents/conventions.md` covers committing the regenerated sources).
- If the MPS MCP tools appear to be missing, check the names you were actually given before concluding anything (`.agents/tools.md`). If they are genuinely unavailable, stop and say so; never fall back to editing a serialized model as text.
- For generator changes, validate both the MPS generator result and the affected generated Java/Kotlin compilation path.
- For cross-cutting changes, validate both the MPS side and the JVM side.
- If validation cannot be run because the required IDE, MPS, authentication, or external service is unavailable, say exactly what was skipped and why.
- These local gates always apply. A green local build is not evidence about TeamCity; when a workflow requires remote CI, that is a separate gate (see `.agents/tools.md`).
