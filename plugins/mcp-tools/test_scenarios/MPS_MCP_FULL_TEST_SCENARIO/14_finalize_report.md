# 14 — Finalize the Run Report

> **Captured-value contract** — _Inputs:_ `{{SERVER_PREFIX}}`, `{{PROJECT_DIR}}`, the accumulated run report + captured-value registry. _Produces (cross-part):_ the final summary. _(Run by the orchestrator itself.)_

This part has **one MCP call** (a final structure snapshot) plus the report wrap-up. Do **not**
delete or roll back any scenario artifact here.

---

### Step 14.01 — Final project-state snapshot `[READ-FILE]`

```json
{
  "tool": "mps_mcp_get_project_structure",
  "arguments": {
    "projectPath": "{{PROJECT_DIR}}",
    "includeModels": true,
    "includeRootNodes": true
  }
}
```
- Validation: `ok==true`; read the file if `data` is a path, and use the payload for the
  final-state summary. Expected to
  contain at least: modules `mcp.test.sandbox` (Solution, with models `mcp.test.sandbox.model`,
  `mcp.test.sandbox.other`, `mcp.test.sandbox.cases@tests`), `mcp.test.statechart` (Language,
  with aspect models including `structure`, `editor`, `textGen`), its generator,
  `mcp.test.devkit` (DevKit), and `mcp.test.flags` (Language) plus its companions. Root nodes
  in `mcp.test.sandbox.model` include `GearboxStateChart`, `OtherStateChart`, `ChartA`,
  `ChartB`; `mcp.test.sandbox.other` includes `McpRunnable`, `McpTypeHost`, `McpTypeError` and `McpLedger`. The throwaway
  `mcp.test.scratch*` module and the throwaway scratch model/root must be **absent**.

---

### Step 14.02 — Write the final summary into `MPS_MCP_TEST_RUN_REPORT.md`

Append a **Final Summary** section containing, at minimum:

1. **Total MCP calls executed.**
2. **Expected-success calls** (count).
3. **Expected-failure calls** (count).
4. **Unexpected failures** (success-expected calls that failed) — count + list of step ids.
5. **Unexpected successes** (failure-expected calls that succeeded) — count + list of step ids.
6. **Tools fully covered** — list. Should be every `mps_mcp_*` tool exercised across parts
   01–13 (cross-check against `COVERAGE_MATRIX.md`, which lists all 45).
7. **Tools partially covered** — list with reason (expected: none for the `mps_mcp_*` tools —
   `GET_ASSIGNABLE_REFERENCES` `kindFilter` is now fully exercised by Step 10.12; list any tool
   whose step failed, plus `create_run_configuration`'s `IMainClass` path, which is documented
   as not-exercised in `COVERAGE_MATRIX.md` rather than run).
8. **Tools not covered** — list with reason (expected: `list_node_intentions` and
   `apply_intention`, covered by `smoke-test-intentions.md` instead; `close_project`, which
   would close the project under test; `generation`, `run_migrations` and `read_ide_log`, covered
   elsewhere (`COVERAGE_MATRIX.md`, (○)); the generic IDE file tools; and
   `execute_run_configuration` if you skipped the optional step).
9. **Enumeration values covered** — copy the enum checklist from `COVERAGE_MATRIX.md` and mark
   each value covered / not covered, citing the step id that covered it.
10. **Final project-state summary** — from Step 14.01.
11. **Path to this report file** — the absolute path of `MPS_MCP_TEST_RUN_REPORT.md`.

Also ensure every **failed MCP test** recorded during the run has its full Failure block
(request, response, expected, actual, why, suspected problem class) per
`00_execution_and_report_rules.md` §B.2.

---

### Step 14.03 — Stop conditions recap

- If you reached here normally, state "scenario completed" and that the project was left in its
  final state (no rollback).
- If you stopped early (a foundational step failed), state which step and why, what state the
  project was left in, and finalize the counts for the steps you did run.

**End of scenario.** The MPS project is left in the final state produced by these steps.
