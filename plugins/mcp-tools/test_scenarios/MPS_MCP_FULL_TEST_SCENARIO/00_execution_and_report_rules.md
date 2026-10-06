# 00 — Execution Rules and Report-Writing Rules

Read this file before executing any step. It applies to **every** step in parts 01–14.

> **Execution model.** You may run this scenario yourself linearly, or — to conserve context —
> as a **sequential per-part subagent pipeline**. See **master index §9 ("Recommended execution
> strategy")** and each part file's **Captured-value contract** header. Either way the steps,
> order, and checks are identical; only *who holds the per-call detail* changes.

## A. Execution rules for the scenario runner

1. **Execute steps in the exact order given** (part order, then `Step PP.NN` order).
2. **Do not skip steps.**
3. **Do not invent alternative calls.** Use only the tools and arguments written in the steps.
4. **Do not substitute different names, IDs, enum values, or parameters** than those given,
   except substituting resolved placeholders (`{{PROJECT_DIR}}`, `{{TMPDIR}}`, captured
   `{{NODE_REF}}` values) as instructed.
5. **Prepend `{{SERVER_PREFIX}}` to every tool name**, then use the exact names given. Resolve
   `{{SERVER_PREFIX}}` per master index §3 (find the `mps_mcp_*`-suffixed tool in your tool list).
6. **After every MCP call, record the request and response in the report** (see section B).
7. **For expected-success calls**, verify the response indicates success (`ok:true`, or the
   helper-tool equivalent) **and** that the intended project effect occurred (the step's
   "Project-state check"). Use minimal, meaningful checks — never compare full responses
   byte-for-byte unless a step explicitly says to.
8. **For expected-failure calls**, verify the call failed (`ok:false`) **for the expected
   reason** (the step states the expected error / `code`). Match on the *substance* of the
   error (e.g. "not found", the listed valid operations, the stated `code`), not exact text.
9. **If a call that should succeed fails → record a FAILED MCP test.**
10. **If a call that should fail succeeds → record a FAILED MCP test.**
11. **Continue after a failed MCP test only if the project state is still sufficient** for
    later steps. Many later steps depend on earlier artifacts (the language, the models, the
    concepts, specific captured node refs). If a foundational step (parts 02–06) fails, the
    rest cannot run meaningfully.
12. **Stop if a failure prevents the remaining scenario from being executed meaningfully.**
    Record why you stopped, then finalize the report (part 14).
13. **Do not roll back the project.** Leave every non-throwaway artifact in place.
14. **Leave the project in the final state produced by the scenario.**

### Semantic-check guidance

- "Response indicates success" = `ok` is `true` (for `mps_mcp_*` tools).
- Read tools return their payload **inline** in `data` when it is at most `maxInlineBytes`
  characters (default 20000) and save it to a temp `.json` file above that, returning the
  file's absolute path as `data`. Never assume either form: check what `data` is. When it is
  a path, "success" also requires that the file exists and parses as JSON. The file holds the
  **complete** `{"ok":…,"data":…}` envelope, so read the payload from its `data` field and run
  the step's checks on that payload.
- A non-empty `warnings` array on an `ok:true` response is **not** a failure — record it as a
  note.
- `mps_mcp_check_root_node_problems` returning `data:"no problems found"` means clean; any
  other `data` (the inline problem report, or a temp-file path to it) means problems were
  found — inspect the `problems` arrays.

## B. Report-writing rules for the scenario runner

**Before making the first MCP call**, create a local Markdown report file named:

```
MPS_MCP_TEST_RUN_REPORT.md
```

(Use this filename unless you have a strong reason to choose another.) **Update it
continuously** during execution — do not wait until the end.

**At the top of the report, record the resolved `{{SERVER_PREFIX}}`, `{{PROJECT_DIR}}`, and
`{{TMPDIR}}`** (so every recorded request is reproducible). When running the subagent pipeline
(master index §9), each part subagent writes its own fragment to a file and the orchestrator
appends it here in order.

### B.1 Per-call record (for every MCP call)

Append one entry per call with these fields:

- **Step** — the `PP.NN` id (and a one-line title).
- **Tool** — exact tool name used.
- **Expectation** — `expected: success` or `expected: failure`.
- **Request** — the full `arguments` object you sent (with placeholders resolved).
- **Response** — the full response (for temp-file responses, and for long inline payloads,
  record the path or the size and a short excerpt of the relevant part).
- **Matched?** — `PASS` if actual matched expected, else `FAIL`.
- **Response validation** — the minimal response check you performed (e.g. `ok==true`,
  `data.makeStatus=="success"`, `error contains "not found"`).
- **Project-state validation** — the minimal state check you performed (e.g. "follow-up
  `get_project_structure` lists module `mcp.test.sandbox`", or "`search_root_node_by_name`
  finds `GearboxStateChart`"). If the step lists no separate state check, write "n/a
  (response is the evidence)".
- **Notes** — anything unexpected, any `warnings`, any deviation from the tool's own
  description.

### B.2 Per-failure record (for every FAILED MCP test)

In addition to the per-call record, add a **Failure** block with:

- **Full request.**
- **Full response.**
- **Expected behavior.**
- **Actual behavior.**
- **Why this is a failure.**
- **Suspected problem class** — exactly one of:
  `Tool implementation` | `Tool description` | `Scenario problem` | `MPS behavior` | `Unknown`.

### B.3 Final summary (written in part 14)

At the end, the report must include:

- Total number of MCP calls executed.
- Number of expected-success calls.
- Number of expected-failure calls.
- Number of unexpected failures (success-expected calls that failed).
- Number of unexpected successes (failure-expected calls that succeeded).
- **List of tools fully covered.**
- **List of tools partially covered** (with reason).
- **List of tools not covered** (with reason), if any.
- **List of enumeration values covered** (per the coverage matrix).
- **Final project-state summary** — modules, models, key root nodes present at the end
  (from a final `get_project_structure`).
- **Path to the report file.**

## C. Convention for "expected" markers used in the steps

Each step is tagged with one of:

- **`[SUCCESS]`** — the call must return `ok:true` (or helper-tool success).
- **`[FAILURE]`** — the call must return `ok:false` for the stated reason.
- **`[CAPTURE]`** — a `[SUCCESS]` step whose response contains a value you must save for
  later (the step names the placeholder).
- **`[READ-FILE]`** — a `[SUCCESS]` step whose payload is inspected in detail and may be
  large: it comes back inline or, above `maxInlineBytes`, as a temp-file path you must open
  (see "Semantic-check guidance" above).

Proceed to `01_environment_validation.md`.
