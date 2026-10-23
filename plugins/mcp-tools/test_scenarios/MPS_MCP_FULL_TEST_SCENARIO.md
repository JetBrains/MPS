# MPS MCP Full Test Scenario — Master Index

> **This is the entry point.** Read this file completely, then execute the numbered part
> files inside the `MPS_MCP_FULL_TEST_SCENARIO/` directory **in ascending order**.
> Do not start executing until you have read this file and `MPS_MCP_FULL_TEST_SCENARIO/00_execution_and_report_rules.md`.

## 1. Purpose

The purpose of this scenario is to test the **JetBrains MPS MCP API** thoroughly and
systematically. By executing every step in order, a test-running agent verifies:

- **Tool availability** — every MPS MCP tool can be invoked.
- **Correct behavior for valid calls** — each tool, with valid parameters, produces the
  documented success envelope and the intended effect on the MPS project.
- **Correct failure behavior for invalid calls** — each tool, with invalid parameters,
  fails in the documented way (right error, right error code).
- **Correct handling of every documented enumeration value** — each enum value of each
  parameter is exercised at least once in a valid context.
- **Correct creation, modification, lookup, deletion, and validation** of MPS project
  artifacts: modules, models, languages, devkits, generators, dependencies, used
  languages, facets, concepts, enumerations, root nodes, child nodes, references,
  editors, run configurations, console commands, and BaseLanguage (Java) nodes.
- **Accuracy and completeness of MCP tool descriptions** — wherever the observed behavior
  contradicts a tool's own description, that is recorded as a finding.

This scenario was prepared by exercising the live MPS MCP API against an empty project and
then deleting all preparation artifacts, so the steps below are **self-contained** and
assume an **empty, freshly initialized** MPS project. See
`MPS_MCP_SCENARIO_PREPARATION_REPORT.md` for how it was prepared and for the list of
known tool-description discrepancies you should expect to re-confirm.

## 2. File manifest — execute in this exact order

| Order | File | What it covers |
|------:|------|----------------|
| — | `MPS_MCP_FULL_TEST_SCENARIO/00_execution_and_report_rules.md` | **Read first.** Execution rules + report-writing rules. |
| 1 | `MPS_MCP_FULL_TEST_SCENARIO/01_environment_validation.md` | Validate assumptions; locate the project; confirm it is empty. |
| 2 | `MPS_MCP_FULL_TEST_SCENARIO/02_initialization.md` | `initialize_project_for_agents` + verification. |
| 3 | `MPS_MCP_FULL_TEST_SCENARIO/03_modules_and_facets.md` | `create_module` (all types + flags), facet tools. |
| 4 | `MPS_MCP_FULL_TEST_SCENARIO/04_models.md` | `create_model` (plain / aspect / stereotype), `update_model`. |
| 5 | `MPS_MCP_FULL_TEST_SCENARIO/05_dependencies_and_used_languages.md` | `module_dependency` (all scopes), `model_dependency`, `model_used_language`. |
| 6 | `MPS_MCP_FULL_TEST_SCENARIO/06_structure_and_concepts.md` | `alter_structure`, `query_structure`, `get_concept_details`, `search_concepts`, `reload_all`, `alter_nodes MAKE`. |
| 7 | `MPS_MCP_FULL_TEST_SCENARIO/07_root_nodes_and_node_editing.md` | `create_root_node`, `insert_root_node_from_json`, `update_node`, `update_root_node_from_json`, `print_node`, `check_root_node_problems`, `alter_nodes` moves/fix. |
| 8 | `MPS_MCP_FULL_TEST_SCENARIO/08_queries_and_navigation.md` | `query_nodes` (all ops), `search_root_node_by_name` (all scopes), `open_node`, `get_current_editor_root_node`. |
| 9 | `MPS_MCP_FULL_TEST_SCENARIO/09_editor_scaffolding.md` | `scaffold_editor` (editor + component). |
| 10 | `MPS_MCP_FULL_TEST_SCENARIO/10_baselanguage_parse_java.md` | `parse_java_and_insert` (all `featureKind` + `insert.mode` values); `query_nodes` GET_TYPE / GET_EXPECTED_TYPE, `query_types` (all operations), `query_dataflow` (all operations), problem `rules` / `uncheckedSubtrees`. |
| 11 | `MPS_MCP_FULL_TEST_SCENARIO/11_run_configurations.md` | `create_run_configuration` + helper IDE tools. |
| 12 | `MPS_MCP_FULL_TEST_SCENARIO/12_console.md` | `insert_console_command_from_json`, `run_console_command`, `get_console_history`, `recall_console_command`. |
| 13 | `MPS_MCP_FULL_TEST_SCENARIO/13_update_and_delete_modules.md` | `update_module` (RENAME / CHANGE_VIRTUAL_FOLDER / DELETE). |
| 14 | `MPS_MCP_FULL_TEST_SCENARIO/14_finalize_report.md` | Finalize the run report. |
| ref | `MPS_MCP_FULL_TEST_SCENARIO/COVERAGE_MATRIX.md` | Tool-by-tool / enum-by-enum coverage matrix (section 7). |

Steps are identified as **`Step PP.NN`** where `PP` is the part number (01–14) and `NN`
is the step number within that part. Global order is: part order, then step order within
the part. **Execute strictly in this order.**

## 3. Tool names and the MCP server prefix (RESOLVE THIS FIRST — `{{SERVER_PREFIX}}`)

Every tool in this scenario is named **without any server prefix** — for example
`mps_mcp_create_model`, `mps_mcp_query_nodes`, and the helper tools `get_run_configurations`,
`get_repositories`, `execute_run_configuration`.

Your MCP client actually exposes each of these under a **server-specific prefix that can
change between runs** (it looks like `mcp__<server-id>__…`). Before executing any step,
resolve that prefix once and prepend it to every tool name:

1. **Look at your list of available tools.**
2. **Find the tool whose name ends with `mps_mcp_list_open_projects`** (any `mps_mcp_*` name
   works). Everything **before** the `mps_mcp_` segment is your prefix. Record it as
   **`{{SERVER_PREFIX}}`**.
   - Example shape: if the exposed tool is `mcp__<server-id>__mps_mcp_list_open_projects`, then
     `{{SERVER_PREFIX}}` = `mcp__<server-id>__`. **Do not assume any particular `<server-id>`** —
     it changes between runs; read the actual value from your own tool list every time.
3. **The MPS helper tools** (`get_run_configurations`, `get_repositories`,
   `execute_run_configuration`) live under the **same** server prefix — prepend
   `{{SERVER_PREFIX}}` to them too.
4. **For every `"tool": "<name>"` shown in this scenario, actually call
   `{{SERVER_PREFIX}}<name>`.** (The scenario writes the bare `<name>`; you add the prefix.)
5. If **more than one** MCP server exposes `mps_mcp_*` tools, pick the prefix whose
   `mps_mcp_list_open_projects` (Step 01.01) returns your current project, and use that prefix
   consistently for the whole run.

**Record the resolved `{{SERVER_PREFIX}}` at the top of the run report.** If you cannot find
any `mps_mcp_*` tool in your tool list, the MPS MCP server is not connected — stop and report
that the "MCP is enabled/available" assumption is unmet.

## 4. Global call conventions (READ CAREFULLY)

0. **Prepend `{{SERVER_PREFIX}}` to every tool name** (section 3).

1. **Always pass `projectPath`.** Every `mps_mcp_*` call in this scenario includes
   `"projectPath": "{{PROJECT_DIR}}"`. Two MPS projects are open in this MPS instance, so
   omitting `projectPath` causes an *ambiguous project* error. `{{PROJECT_DIR}}` is
   resolved in Step 01.01 — substitute the resolved absolute path into **every** call.

2. **`parameters` is a JSON-encoded string.** Tools `mps_mcp_alter_structure`,
   `mps_mcp_query_structure`, `mps_mcp_query_nodes`, `mps_mcp_query_types`, `mps_mcp_query_dataflow`,
   `mps_mcp_alter_nodes`, and `mps_mcp_parse_java_and_insert` take an `operation` (where
   applicable) plus a **`parameters`** argument whose value is a **string containing JSON**.
   In the call blocks below, the `parameters` value is shown already escaped — pass it
   verbatim as a string. (It is a string, not a nested object — except in Step 10.17d, which
   deliberately sends a real JSON object, a form `query_nodes` and `query_types` also accept.)

3. **Large JSON via temp file.** `conceptsJson` / `json` / `childJson` arguments accept
   either inline JSON (≤ 4 KB) **or** an absolute path to a file **inside the system temp
   directory**. Where a step says "write file X then pass its path", create the file with
   the exact content given, then pass its absolute path. `{{TMPDIR}}` is resolved in
   Step 01.01/01.02. Note: for `conceptsJson`/`valuesJson` the tool *intends* to delete the
   temp file after reading it — but it may not (a known quirk), so do not rely on auto-deletion.

4. **Capture-and-reuse placeholders.** Node references are generated by MPS and cannot be
   known in advance. When a step says *"record the `reference` as `{{NAME}}`"*, save that
   exact string and substitute it wherever `{{NAME}}` later appears. Placeholders use
   `{{DOUBLE_BRACES}}`. **Model references** may instead be given by **name** (e.g.
   `mcp.test.sandbox.model`) and **concept references** by **fully-qualified name** (e.g.
   `mcp.test.statechart.structure.StateChart`) — the tools resolve those, so you only need
   to capture *node* references (root nodes and their children) and a few module/editor
   refs. The placeholders that cross part boundaries are listed in section 10.

5. **Reference formats** you will see and reuse:
   - Module ref: `<uuid>(<name>)` (e.g. `52b9...(mcp.test.sandbox)`).
   - Model ref: `r:<uuid>(<modelName>)`.
   - Node ref: `r:<uuid>(<modelName>)/<nodeId>`.
   - Concept ref: `c:<langUuid>/<conceptId>:<fqn>`.
   Never put a `c:` concept ref where an `r:` node ref is expected.

6. **Success vs failure envelope.** Every tool returns `{"ok":true,"data":...}` on success
   or `{"ok":false,"error":"...","code":"..."}` on failure (`code` is optional; common
   values: `NOT_FOUND`, `INVALID_REQUEST`). Read tools return `data` inline when the payload
   is at most `maxInlineBytes` characters (default 20000) and otherwise
   `{"ok":true,"data":"<absolute path to a temp .json file>"}`; that file holds the complete
   `{"ok":…,"data":…}` envelope, so read the payload from its `data` field. Check which form
   you got; do not assume either. The IDE helper tools (`get_run_configurations`, `get_repositories`) return
   their own shape (no `ok` wrapper) and are noted where used.

7. **Never run two mutating calls against the same root node / same model concurrently.**
   Execute steps strictly one at a time and wait for each response. (Concurrent writes to
   one root can time out.)

## 5. Fixed test-data naming conventions (section 6)

Use these **exact** names. Do not substitute, abbreviate, or rename.

| Artifact | Exact name |
|---|---|
| Language | `mcp.test.statechart` |
| Solution | `mcp.test.sandbox` |
| DevKit | `mcp.test.devkit` |
| Model (primary) | `mcp.test.sandbox.model` |
| Model (second, negative tests) | `mcp.test.sandbox.other` |
| State-chart concept | `StateChart`  → FQN `mcp.test.statechart.structure.StateChart` |
| State concept | `State`       → FQN `mcp.test.statechart.structure.State` |
| Transition concept | `Transition` → FQN `mcp.test.statechart.structure.Transition` |
| Event concept | `Event`       → FQN `mcp.test.statechart.structure.Event` |
| Enumeration | `StateKind` (literals `initial`, `normal` [default], `final`) |
| Sample root node | `GearboxStateChart` |
| Negative-test root node | `OtherStateChart` |

Additional fixed names introduced by this scenario (deterministic, collision-resistant):

| Purpose | Exact name |
|---|---|
| Generator (of the language) | `mcp.test.statechart.generator` (auto-derived) |
| Language exercising companion flags | `mcp.test.flags` |
| Throwaway module for `update_module` RENAME→DELETE | `mcp.test.scratch` → renamed to `mcp.test.scratch.renamed` |
| Throwaway model for `update_model` RENAME→DELETE | `mcp.test.sandbox.scratch` → renamed to `mcp.test.sandbox.scratch2` |
| Aspect model created on the language | `mcp.test.statechart.textGen` (TextGen aspect) |
| Stereotyped tests model | `mcp.test.sandbox.cases@tests` |
| BaseLanguage runnable class root | `McpRunnable` (in `mcp.test.sandbox.other`) |
| BaseLanguage type-query host class root | `McpTypeHost` (in `mcp.test.sandbox.other`) |
| BaseLanguage problem-report class root | `McpTypeError` (in `mcp.test.sandbox.other`; Step 10.24 seeds a type error and a commented-out field in it, then deletes both, leaving an empty class) |
| BaseLanguage dataflow-query class root | `McpLedger` (in `mcp.test.sandbox.other`; Step 10.25) |

## 6. Concept model the scenario builds (for reference)

```
StateChart  (rootable, alias "statechart", implements INamedConcept)
  ├─ states : State[0..n]
  └─ events : Event[0..n]
State       (implements INamedConcept)
  ├─ property kind : StateKind
  └─ transitions : Transition[0..n]
Transition
  ├─ ref target : State   (mandatory, cardinality 1)
  └─ ref event  : Event   (optional,  cardinality 0..1)
Event       (implements INamedConcept)
enum StateKind { initial, normal(default), final }
```

## 7. Coverage matrix

The complete tool-by-tool, enum-by-enum coverage matrix (task section 7) is in
`MPS_MCP_FULL_TEST_SCENARIO/COVERAGE_MATRIX.md`. Consult it to confirm every tool and every
enum value is covered, and which step numbers cover each.

## 8. Final-state policy

This scenario **creates** artifacts and **leaves them in place**. Do **not** roll back,
do **not** delete the artifacts created here (except the explicitly throwaway
`mcp.test.scratch*` items whose deletion is itself a test step). When finished, the project
must contain the final state produced by the scenario. The run report
(`MPS_MCP_TEST_RUN_REPORT.md`) is the record of what happened.

## 9. Recommended execution strategy (managing context budget)

This scenario is large (~160 steps across 14 parts). If your context window is limited, run it
as a **sequential pipeline of subagents — one per part file** — with you acting as a thin
orchestrator that holds only compact state. If you have ample context you may instead execute
all parts yourself linearly, but **still flush the run report to disk after each part** so
progress survives a context reset. The choice does not change *what* is executed — only *who*
holds the per-call detail.

> **Sequential, not parallel.** Parts depend on artifacts and captured references produced by
> earlier parts, and concurrent writes to the same root can time out (section 4.7). The win
> from subagents is **per-part context isolation**, not parallelism. Never run two parts at
> once.

### Roles

- **Orchestrator (you).** Resolves the globals, runs the foundational and closing parts
  itself, spawns one subagent per middle part, and merges results. Holds only: the
  **captured-value registry** (section 10), the running pass/fail counts, the resolved
  `{{SERVER_PREFIX}}` / `{{PROJECT_DIR}}` / `{{TMPDIR}}`, and the path to
  `MPS_MCP_TEST_RUN_REPORT.md`.
- **Part subagent.** Executes exactly one part file end-to-end, then hands back a compact
  result. It holds the full request/response detail for *its part only*; that detail is
  discarded when it returns.

### Procedure

1. **Orchestrator runs part 01 and part 02 itself.** These establish the globals
   (`{{SERVER_PREFIX}}`, `{{PROJECT_DIR}}`, `{{TMPDIR}}`) and the empty-project gate. Create
   `MPS_MCP_TEST_RUN_REPORT.md` now (with the resolved globals at the top) and seed the
   registry with the globals.
2. **For each part 03 → 13, in order (sequentially):**
   1. Spawn a subagent. Give it exactly: (a) the part file path, (b) `00_execution_and_report_rules.md`,
      (c) the resolved `{{SERVER_PREFIX}}` / `{{PROJECT_DIR}}` / `{{TMPDIR}}`, and (d) the
      **subset of the registry named in that part's *Inputs* line** (the "Captured-value
      contract" header at the top of each part file).
   2. Instruct it to follow `00_…` and the part file **exactly**, run mutations one at a
      time, and return the **hand-off** below — nothing else.
   3. On return: append the subagent's report fragment to `MPS_MCP_TEST_RUN_REPORT.md`; merge
      its produced captured-values into the registry; add its counts to the running totals.
   4. If the subagent reports a failure that breaks a later part's prerequisites, decide per
      `00_…` §A.11–A.12 whether to continue or stop.
3. **Orchestrator runs part 14 itself**, using the accumulated report + registry.

### Subagent hand-off protocol (what each subagent returns — keep it compact)

1. **Step results** — one line per step: `PP.NN | <tool> | expected:success|failure | PASS|FAIL`.
2. **Failure blocks** — for each FAIL, the full block from `00_…` §B.2 (request, response,
   expected, actual, why, suspected-problem-class).
3. **Captured outputs** — a JSON object mapping the placeholder names in this part's
   *Produces* line to their resolved values, e.g.
   `{ "GEARBOX_REF": "r:...", "GBX_TRANS_REF": "r:..." }`. Omit intra-part placeholders.
4. **Notes / findings** — warnings, discrepancies, anything to re-confirm.
5. **Report fragment** — the per-call records (`00_…` §B.1) for this part. **Write this
   fragment to a file** (e.g. `{{TMPDIR}}report_part_PP.md`) and return only its **path**, so
   the orchestrator appends it by reading the file rather than echoing the whole fragment back
   into its own context.

### Requirements & fallback

- Subagents must be able to call the MPS MCP tools (same server, same `{{SERVER_PREFIX}}`).
  If your harness cannot grant a subagent MCP access, **fall back to linear self-execution**:
  do the parts yourself in order, write each part's per-call records straight to
  `MPS_MCP_TEST_RUN_REPORT.md` on disk, then drop that detail from working memory before the
  next part (keep only the registry + counts).
- Pass the registry **by value** (the small set of strings in section 10), never the full
  prior transcripts.

## 10. Cross-part captured-value registry

Only these placeholders cross part boundaries; the orchestrator carries them between
subagents. **Every other `{{…}}` placeholder is intra-part** (produced and consumed inside one
part) and need not be handed off. Each part file repeats its own *Inputs*/*Produces* contract
at the top.

| Placeholder | Produced in | Consumed in | Meaning |
|---|---|---|---|
| `{{SERVER_PREFIX}}` | resolved up front (§3) | all parts | MCP server prefix to prepend to every tool name |
| `{{PROJECT_DIR}}` | 01.01 | all parts | absolute project path for `projectPath` |
| `{{TMPDIR}}` | 01.02 | 06 | system temp dir for temp-file arguments |
| `{{SANDBOX_MODULE_REF}}` | 03.01 | 08 | `mcp.test.sandbox` module ref (modules-scope queries) |
| `{{SANDBOX_MODEL_REF}}` | 04.01 | 08 | `mcp.test.sandbox.model` ref (models-scope queries) |
| `{{GEARBOX_REF}}` | 07.01 | 07, 08, 11 | `GearboxStateChart` root node |
| `{{GBX_PARKED_REF}}` | 07.11 | 07, 08 | `Parked` state node |
| `{{GBX_DRIVING_REF}}` | 07.12 | 07, 08 | `Driving` state node |
| `{{GBX_TRANS_REF}}` | 07.16 | 07, 08 | transition node under `Parked` |
| `{{JAVA_CLASS_REF}}` | 10.01 | 10, 11 | `McpRunnable` BaseLanguage class root |

(If you execute linearly rather than with subagents, you still simply keep these values
around as you go — the table just documents the minimum that must survive between parts.)
