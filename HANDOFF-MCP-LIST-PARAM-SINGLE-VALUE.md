# HANDOFF — Tolerate a single value for list-typed MCP parameters

## TL;DR

Several MPS MCP tools declare list-typed parameters (`List<String>` / `List<String>?`).
A client that sends a **single scalar** (e.g. `"Foo"`) instead of an array (`["Foo"]`) may
crash inside the platform's reflective bridge (`com.intellij.mcpserver.impl.util.CallableBridge`)
**before the tool body runs**, the same way an omitted parameter does. This task makes those
parameters accept **either a single value or an array**, mirroring the fix already shipped for
`mps_mcp_search_concepts`.

**Do not start coding.** Step 0 below is a mandatory empirical check against a live MPS MCP
server. Its result decides whether this work is needed at all, and for which parameters.

---

## Background — why this exists

- The MCP framework maps the incoming JSON arguments object onto the Kotlin function parameters
  via reflection (`CallableBridge`). For a required parameter it throws
  `IllegalStateException: No argument is passed for required parameter '<name>'` when the key is
  absent — this surfaces as a raw stack trace, not the tool's usual `{"ok":false,...}` envelope.
- A parallel hazard exists for **shape**: a client sending a JSON *string* where the schema (and
  the Kotlin type) says *array*. Whether this is coerced or rejected is a property of the
  framework's decoder — **that is exactly what Step 0 measures.**
- The house pattern for "single value OR array" already exists in this codebase:
  parameters `names` / `models` / `modules` on `mps_mcp_search_root_node_by_name` are typed
  `String`, documented as "either a single string or a JSON array", and parsed in the body with
  a tolerant helper.

---

## Reference implementation (already merged) — use for inspiration

The just-completed `mps_mcp_search_concepts` change is the template. Read these before starting:

1. `plugins/mcp-tools/src/jetbrains/mps/agents/mcp/tools/AbstractOps.kt`
   — `protected fun parseStringOrJsonArray(raw: String): List<String>`
   (accepts a JSON array, a JSON-encoded primitive string, or a bare string; never throws on
   malformed JSON — falls back to a one-element list).

2. `plugins/mcp-tools/src/jetbrains/mps/agents/mcp/tools/JetBrainsMPSLanguageMcpToolset.kt`
   — the `mps_mcp_search_concepts` pair:
   - a registered `@McpTool` wrapper typed `searchTexts: String = ""` that parses + delegates;
   - an **internal, unannotated** `List<String>` overload that keeps the real body, so existing
     tests (which pass `List<String>`) still compile.

3. `plugins/mcp-tools/test/jetbrains/mps/agents/mcp/tools/JetBrainsMPSLanguageMcpToolsetIntegrationTest.kt`
   — the three tests added for it: single-string, JSON-array-string, and the error path.

### ⚠️ Critical caveat — the reference param was REQUIRED, these are OPTIONAL

`searchTexts` was a **required** parameter (no Kotlin default), so its wrapper had two jobs:
1. accept single-or-array, **and**
2. add presence validation (`terms.all { it.isBlank() }` → `INVALID_REQUEST`) because an omitted
   required arg used to crash the framework.

**The parameters in this task are already optional** (`= emptyList()` or `?= null`). They do
**NOT** have the missing-argument crash, so:

- **Do NOT add presence validation.** An empty/absent value is legal and must keep its current
  meaning.
- **Preserve the existing null-vs-empty semantics exactly** (this differs per tool — see below).
- The only behavior you are adding is **scalar tolerance**.

---

## Step 0 — MANDATORY: measure live MCP behavior first (decision gate)

Do this before touching any code. Goal: determine whether the framework **already coerces** a
scalar into a single-element list for a Kotlin `List<String>` parameter, or **rejects** it.

Preconditions: a running MPS instance with the MPS MCP server enabled (see the project
`CLAUDE.md` / `mps-mcp-workflow` skill), with at least one language project open. Confirm the
server is live (`mps_mcp_list_open_projects`).

**Empirical probe (required).** Exercise a current `List<String>` tool with a **single scalar**
value rather than an array. The clearest target is `mps_mcp_get_concept_details`, because its
body simply iterates the list:

- Call `mps_mcp_get_concept_details` with `conceptRefs` set to the **bare string**
  `"jetbrains.mps.lang.structure.structure.ConceptDeclaration"` (NOT wrapped in an array).
- Also call it the normal way with `conceptRefs` = the one-element **array** of the same value,
  as a control.

For each call record: the returned envelope, AND any exception written to `log/idea.log`
(grep for `CallableBridge`, `IllegalStateException`, `JsonSyntaxException`, or a Kotlin
type-mismatch around the tool name). If you cannot force a true scalar through your MCP client
(some clients silently wrap), fall back to the authoritative check below.

**Authoritative corroboration (recommended).** With the IntelliJ *platform* sources open in an
IDEA instance (see the "Platform sources" section of `CLAUDE.md`), inspect
`com.intellij.mcpserver.impl.util.CallableBridge` (around `call(...)`, `CallableBridge.kt:50`)
and the JSON→Kotlin argument decoding it uses. Determine precisely how a JSON primitive is
mapped onto a `List`/`List?` parameter type. Do **not** modify platform code.

**Decision gate:**
- If the framework **coerces** a scalar to a one-element list (or otherwise handles it cleanly)
  → **STOP.** No code change is needed. Record the finding (log excerpt / source reference) in
  this file and close the task. Optionally tighten only the `@McpDescription` text to state that
  a single value is accepted.
- If the framework **rejects/crashes** on a scalar → proceed to the implementation steps. Note
  in this file which behavior you observed and where (log line / source), so the change is
  justified by evidence, not assumption.

---

## Scope — parameters to convert (only if Step 0 says so)

| Tool (file) | Param(s) | Current type | Null/empty meaning to PRESERVE |
|---|---|---|---|
| `mps_mcp_get_concept_details` (`JetBrainsMPSLanguageMcpToolset.kt:70`) | `conceptRefs`, `languageRefs` | `List<String> = emptyList()` | Each may be empty; **both empty → existing `errJson("No concepts nor languages have been provided")`** (keep it). |
| `mps_mcp_create_module` (`JetBrainsMPSModuleMcpToolset.kt:246`) | `facets` | `List<String>? = null` | `null` or empty → no extra facets attached. |
| `mps_mcp_scaffold_editor` (`JetBrainsMPSEditorMcpToolset.kt:100`) | `includeComponents`, `includeProperties`, `includeReferences`, `includeChildren` | `List<String>? = null` | **`null` = "include ALL"; empty list = "include NONE".** This distinction is load-bearing (see `includeElement(...)` and the `== null` checks in the body). Must be preserved bit-for-bit. |

**Explicitly OUT of scope:**
`mps_mcp_update_node` `properties` / `references` are `List<List<String?>>?` (name/value pairs).
Single-scalar wrapping is not meaningful for a list of pairs; leave them unchanged.

---

## Implementation pattern

For each tool that needs converting, apply the **String-wrapper + internal typed-overload**
pattern from the reference. Keep the internal overload's signature identical to today's so all
existing tests and in-process callers compile unchanged.

### 1. Add a null-preserving helper to `AbstractOps`

`parseStringOrJsonArray` returns an empty list for blank input, which is wrong for the params
whose `null` means "include all". Add a sibling that preserves `null`:

```kotlin
/**
 * Nullable variant of [parseStringOrJsonArray] for optional list parameters whose absence
 * (null/blank) is semantically distinct from an empty list. Returns null when [raw] is null or
 * blank, otherwise the parsed values (which may be an empty list for an explicit "[]").
 */
protected fun parseNullableStringOrJsonArray(raw: String?): List<String>? {
    if (raw == null || raw.isBlank()) return null
    return parseStringOrJsonArray(raw)
}
```

(Compare `parseScopeRefArray` in `JetBrainsMPSRootNodeMcpToolset.kt`, which does the same for
the `JsonArray` shape.)

### 2. `mps_mcp_get_concept_details` — both params default to empty

- Registered `@McpTool` wrapper: change `conceptRefs` / `languageRefs` to `String = ""`.
  Parse each with `parseStringOrJsonArray(...)`. **No presence validation** — just delegate; the
  internal overload already returns the correct "both empty" error.
- Internal overload: keep `conceptRefs: List<String> = emptyList(), languageRefs: List<String> = emptyList()`
  and the existing body verbatim.

### 3. `mps_mcp_create_module` — `facets` nullable, null==empty semantics

- Wrapper: `facets: String? = null`, parse with `parseNullableStringOrJsonArray(...)`, delegate.
- Internal overload: keep `facets: List<String>? = null` and the whole body.
- Watch the many other `create_module` params — only `facets` changes; leave the rest alone. The
  internal overload must keep the full current parameter list.

### 4. `mps_mcp_scaffold_editor` — four nullable params, null≠empty

- Wrapper: change the four `include*` params to `String? = null`, parse each with
  `parseNullableStringOrJsonArray(...)` so `null` stays `null` (include all) and `"[]"` stays an
  empty list (include none). Delegate.
- Internal overload: keep the four `List<String>?` params and the body.
- This tool already has an internal helper overload (`scaffold_editor` at
  `JetBrainsMPSEditorMcpToolset.kt:139` takes the `List<String>?` forms). Confirm whether the
  registered `@McpTool` and that helper are the same function or two; adjust so exactly one
  `@McpTool`-annotated String wrapper delegates into the list-typed logic, without creating an
  overload-resolution ambiguity.

### Overload-resolution sanity

Two same-named functions (String wrapper + List overload) coexist fine — the enum-operation
tools (`mps_mcp_query_structure`, etc.) already do this. Ensure:
- only the **wrapper** carries `@McpTool` (+ `@McpDescription`); the typed overload is unannotated;
- the delegating call passes a `List<...>`, so it binds to the typed overload unambiguously;
- you do not give both overloads all-defaulted first params (would make a no-arg call ambiguous).

### `@McpDescription` text

Update each converted param's description to the "single value or JSON array" wording, matching
`names` on `mps_mcp_search_root_node_by_name` and the new `searchTexts` text. Keep the semantic
notes (e.g. for `scaffold_editor`: "omit for all; `[]` for none").

---

## Tests

Add integration tests mirroring the three added for `search_concepts`
(`JetBrainsMPSLanguageMcpToolsetIntegrationTest.kt`, the `search-concepts accepts a single …`
block). For each converted tool, cover at minimum:

- **single bare value** produces the same result as the one-element array;
- **JSON-array string** parses correctly;
- for `scaffold_editor`: an **omitted** param still means "include all" and an explicit **`"[]"`**
  means "include none" (the null-vs-empty distinction) — this is the highest-risk regression.

Existing tests call the `List<String>` overloads directly and must keep compiling untouched; do
not rewrite them.

---

## Build & validation

- Build only the touched files first, then the module:
  `mcp__idea-mcp__build_project` with `filesToRebuild = [<changed .kt files>]`, `projectPath`
  = the repo root (`/Users/vaclav/work/MPS/myMPS-fix`). Expect `{"isSuccess":true,"problems":[]}`.
- **Known environment flake:** the idea-mcp build/inspection tools fail session-wide with
  `Illegal character in path at index 40 … agent-workbench-chat-frame` when a co-opened project
  has a space in its path. If you hit it, ask the user to restart/rescope IDEA and retry; it is
  not a code problem.
- **Tests cannot be run headless by the agent:** the integration test base extends
  `ModuleInProjectTest`, which fails with `myEnv null` outside a full IDE test run. Ask the user
  to run `JetBrainsMPSLanguageMcpToolsetIntegrationTest` (and any other touched test class), or
  run it via the appropriate suite in IDEA.
- After the change, re-run the Step 0 empirical probe against the live server to confirm the
  scalar case now returns a normal envelope instead of crashing.

---

## Done criteria

- Step 0 finding is recorded in this file (behavior observed + evidence).
- If a change was warranted: each in-scope param accepts a single value and an array; null-vs-empty
  semantics preserved (especially `scaffold_editor`); descriptions updated; new tests added;
  module builds clean; existing tests untouched and (per the user) green.
- If no change was warranted: this file documents why, and the task is closed.

## Notes / open questions for the implementer

- Confirm empirically (Step 0) rather than assuming — the maintainers already migrated the scope
  params off `List<String>`, which *suggests* scalars are rejected, but verify on the running
  server before investing.
- Keep each tool's internal typed overload signature byte-for-byte compatible with today's to
  avoid churn in tests and in-process callers.
