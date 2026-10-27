# Route every caller-supplied JSON parse through the bracket-scan diagnosis

Status: plan settled after 3 review rounds and implemented; the implementation was reviewed in round 4 ("settled"). See "Implementation notes" for where the code departs from the plan. It builds on commit 1b5b102 ("D88 better json input parser error reporting"), which added `JsonBracketScan` + `AbstractOps.describeJsonSyntaxError`. Review rounds 1 (R1–R9) and 2 (S1–S5) were "needs changes" and round 3 was "settled" (T1–T2 nits); all of them are folded in; see "Review record".

## Problem

The new diagnosis runs only inside `AbstractOps.parseJson(String, Type)`. It reports:
- unbalanced, mismatched or extra closers
- an unterminated string
- trailing content
- plus an excerpt with a caret

Five call sites use it today:
- `JetBrainsMPSRootNodeMcpToolset.kt:331` and `:526`
- `JetBrainsMPSConsoleMcpToolset.kt:67`
- `AbstractNodeOps.kt:1247` and `:1381` (reached from `JetBrainsMPSNodeMcpToolset.kt:1591`)

Every other parse of caller-supplied JSON still reports Gson's bare first-line message.

## Survey

Scope: every `JsonParser`, `.fromJson(`, `parseReader`, `parseToJsonElement` and `parseJson*` in `plugins/mcp-tools/src`. The reviewer re-ran the search independently and found nothing missing. `JsonOrText` (kotlinx) only decodes tool arguments in the framework.

### A. `parameters` object of the operation tools: repoint (seven sites through a dedicated helper, `GET_ASSIGNABLE_REFERENCES` through `parseJson`)

Each site is `Gson().fromJson(parameters, JsonObject::class.java)` inside `catch (e: Exception) { invalidJson("Invalid JSON parameters: ${e.message}") }`.

| Site | Tool |
|---|---|
| `JetBrainsMPSNodeMcpToolset.kt:245` | `mps_mcp_query_nodes` |
| `JetBrainsMPSNodeMcpToolset.kt:312` | `mps_mcp_alter_nodes` |
| `JetBrainsMPSLanguageStructureMcpToolset.kt:218` | `mps_mcp_query_structure` |
| `JetBrainsMPSLanguageStructureMcpToolset.kt:400` | `mps_mcp_alter_structure` (see A-nested) |
| `JetBrainsMPSLanguageStructureMcpToolset.kt:308` | `GET_ASSIGNABLE_REFERENCES`, a second parse of the same text into `GetAssignableReferencesRequest`. `:218` has already validated the syntax, so a syntax error cannot reach this site. Repointed for consistency only, with no test |
| `JetBrainsMPSGenerationMcpToolset.kt:134` | `mps_mcp_generation` |
| `JetBrainsMPSDataflowMcpToolset.kt:149` | `mps_mcp_query_dataflow` |
| `JetBrainsMPSTypesMcpToolset.kt:290` | `mps_mcp_query_types` |

**Not `parseJson` (R1).** `parseJson` throws on blank input and on a bare `null`. Today blank input reaches `JsonObject?.rejectUnknownParameterKeys` (`McpToolInputSchemas.kt:178-185`) as a null `params` (a bare `null` does not; see "Implementation notes"). That function deliberately answers INVALID_REQUEST with "'parameters' must be a JSON object carrying the keys for X, not empty or null. Accepted: …" (unit test `anAbsentParametersBlobIsRejectedNamingTheAcceptedKeys`, `McpToolInputSchemasTest.kt:1679`). At `alter_nodes`, the answer is `missingAlterNodesParameters`. The in-process enum overloads skip `rejectMissingParameters`, so for them a blank value also arrives at the parse.

Add one helper in `AbstractOps` instead:

```kotlin
/** Parses an operation tool's `parameters` object; a blank blob stays null for the key checks to answer (a literal `null` is a syntax error). */
protected fun parseParametersBlob(parameters: String, nestedFileKeys: List<String> = emptyList()): JsonObject? =
    try {
        GSON.fromJson(parameters, JsonObject::class.java)
    } catch (e: JsonSyntaxException) {
        throw McpInvalidRequestException(JsonSyntaxErrors.describe(parameters, e.message ?: "Invalid JSON syntax", JsonInputGuidance.inlineOnly(nestedFileKeys)))
    }
```

The sites keep their `catch` and their `Invalid JSON parameters: ` prefix, and swap only the parse expression. Null and blank behavior, error codes and the `alter_nodes` fallback stay exactly as they are, so no per-tool null tests are needed. `GET_ASSIGNABLE_REFERENCES` deserializes into a data class, so it does not use the helper. It calls `parseJson<GetAssignableReferencesRequest>(parameters, GetAssignableReferencesRequest::class.java, JsonInputGuidance.INLINE)`. The explicit type argument is required (S2): `T` cannot be inferred from a `Type`, and `val request = try { … }` supplies no expected type. Its blank/null throws cannot be reached, because `:218` has already rejected a null blob.

**A-cancel.** Add `rethrowIfCancellation(e)` to each repointed `catch (e: Exception)` block. The parse is synchronous, so this is hygiene rather than a fix. It makes these blocks consistent with the console and root-node sites.

**A-nested (R4).** CREATE_CONCEPTS and CREATE_ENUM accept `conceptsJson`, `interfaceConceptsJson` and `valuesJson` inline inside the `alter_structure` blob (`readStringOrInlineJsonParam`, `AbstractOps.kt:4032`; `JetBrainsMPSLanguageStructureMcpToolset.kt:410-413, 427`). That makes this blob the `parameters` input most likely to be truncated. Its remedy is to move those values to a temp file and pass the file's path. The other six operations (`:49-57`) have no such key, so `alter_structure` picks the keys from `operation` (S1):
- CREATE_CONCEPTS: `conceptsJson`, `interfaceConceptsJson`
- CREATE_ENUM: `valuesJson`
- every other operation: `emptyList()`

For the two create operations, `inlineOnly(nestedFileKeys)` builds the sentence from exactly the keys it is given (`keys.joinToString(" / ")`). For CREATE_CONCEPTS it reads "`parameters` itself must be inline; move conceptsJson / interfaceConceptsJson into a temp file and pass its absolute path instead." CREATE_ENUM names only `valuesJson` (T1).

### B. `McpToolInputSchemas.kt:659` `parseElement()`: repoint (highest value)

This function serves:
- the `parse_java_and_insert` `parameters` (`parseJavaParseInsertRequest`, `JetBrainsMPSJavaMcpToolset.kt:922`)
- `conceptsJson` and `interfaceConceptsJson` (`JetBrainsMPSLanguageStructureMcpToolset.kt:494`, `:506`)
- `valuesJson` (`:1124`)

The JSON comes from the caller and these inputs are large. Guidance is fixed in the two private funnels rather than passed down from the four public entry points (R6):
- `parseArray` (`:638`): used only by the file-capable spec parsers, so it gets `FILE`.
- `parseParametersObject` (`:646`): gets `INLINE`.

`parseElement` keeps its `JsonParseException` catch (which also covers `JsonIOException`) and its `Invalid JSON for $sourceName: ` prefix. That prefix is asserted with `startsWith` at `McpToolInputSchemasTest.kt:108/587/715/1243`. Gson's second-line troubleshooting URL drops out of the message, and no test asserts on it.

### C. `JetBrainsMPSModuleMcpToolset.kt:1606` `jsonToMemento`: repoint (low value)

`settingsJson` is caller-supplied, small and inline-only (`:1271`). It switches to `JsonSyntaxErrors.describe(…, INLINE)` while keeping its `settingsJson is not valid JSON: ` prefix and `mementoError` envelope.

### D. Not repointed

- **A parse failure means a plain value:**
  - `JetBrainsMPSModelMcpToolset.kt:67` (`targetModels`)
  - `AbstractOps.kt:519` `parseStringOrJsonArray`
  - `JetBrainsMPSRunConfigurationMcpToolset.kt:466` `parseRefInput`
- **Server-built JSON:**
  - `AbstractOps.kt:345`, `:357` (`withWarnings` / `withDetails`)
  - `AbstractOps.kt:1261` `finalizeResult`
  - `AbstractOps.kt:4003` in `saveToTempFile` (R9)
  - `logging/McpCallOutcomes.kt:49`
  - `JetBrainsMPSRunConfigurationMcpToolset.kt:535`
- **`AbstractNodeOps.kt:144` `unwrapNodeJsonEnvelope`:** a probe. Malformed input falls through to `parseJson*`, which reports it.
- **`JetBrainsMPSLanguageStructureMcpToolset.kt:418`:** converts an element that is already parsed.

Line numbers were re-verified on 2026-10-26 against 1b5b102, before implementation. In `AbstractOps.kt`, the code to move is `parseJson(String, Type)` at `:1346-1356`, `JsonSyntaxDiagnosis` at `:1358`, `describeJsonSyntaxError` at `:1365-1399`, `gsonStoppedBeforeScan` at `:1402`, `diagnoseJsonScan` at `:1413` and `getJsonExcerpt` at `:1450`; the constants are at `:141-143`. `GET_ASSIGNABLE_REFERENCES` keeps its own prefix, `Invalid parameters for GET_ASSIGNABLE_REFERENCES: ` (`JetBrainsMPSLanguageStructureMcpToolset.kt:310`).

## Refactor

1. **Move the code (R5).** Move `JsonSyntaxDiagnosis`, `describeJsonSyntaxError`, `diagnoseJsonScan`, `gsonStoppedBeforeScan` and `getJsonExcerpt` out of `AbstractOps` into `common/JsonBracketScan.kt`, as `internal object JsonSyntaxErrors` with `fun describe(json: String, gsonMessage: String, guidance: JsonInputGuidance): String`. Move them verbatim, so that the `FILE` output stays byte-identical to today's. The constants go with them:
   - `EXCERPT_RADIUS` and `MAX_LISTED_CLOSERS` move into the object.
   - `MAX_INLINE_JSON_CHARS` becomes an `internal const` in `JsonBracketScan.kt`. `AbstractOps` refers to it from `:4061`, `:4065` and `:4098`, which keeps a single source.
2. **`JsonInputGuidance` is public (R2).** `AbstractOps` and its public `parseJson(String, Type)` would expose an internal type and fail to compile. It is a small public class with three shapes:
   - `FILE`: today's text. It is used by the `parseJson` callers that go through `readJsonOrFile` and by `parseArray`.
   - `INLINE`: only "See mps-node-editing/references/troubleshooting.md." There is no temp-file advice and no inline-limit figure. It is used by the `parameters` blobs and by `settingsJson`.
   - `inlineOnly(nestedFileKeys)`: `INLINE` plus the A-nested sentence when the list is not empty.
3. **`parseJson` signature.** `AbstractOps.parseJson(String, Type)` gains `guidance: JsonInputGuidance = JsonInputGuidance.FILE`. Existing callers are unchanged.
4. **Wording of `FILE` (R8).** "(see the mps-node-editing skill)" is wrong for `conceptsJson` and `valuesJson`, whose owning skill is `mps-aspect-structure-concepts`. Drop the parenthesis and keep "Pass an absolute temp-file path instead of inline JSON." The troubleshooting pointer already sends readers to the details. This is the one deliberate change to today's `FILE` text, and the existing tests do not assert on it (re-check `AbstractOpsPropertyProblemsTest` at implementation time).

## Skill docs (R3)

`mps-node-editing/references/troubleshooting.md` frames this error as "the blueprint is not valid JSON". Its **Fix** bullet says to write the blueprint to `$TMPDIR` and pass the path. `INLINE` messages point to this file, so the doc would tell those callers to do something the tool cannot accept. Edit the blueprint (`plugins/mcp-tools/resources/jetbrains/mps/agents/mcp/skills/…`) and copy it over `.agents/skills/` and `.claude/skills/`:
- The intro says the error comes from any JSON input: blueprints, `conceptsJson`, `interfaceConceptsJson`, `valuesJson`, a `parameters` object, or `settingsJson`.
- The **Fix** bullet (`troubleshooting.md:9`) scopes the temp-file advice to the file-capable inputs. It says that a `parameters` object or `settingsJson` must be fixed inline, and that for `alter_structure` the nested `conceptsJson` / `interfaceConceptsJson` / `valuesJson` values can be moved to a file (T2).
- Rename the "`Parser location` line" (`troubleshooting.md:3`) to match the code, which now prints `Parser: …` (`AbstractOps.kt:1382-1383`). Mention the `Further on:` variant as well.
- Key the entry on the message text, not on the code alone (S3): `settingsJson` errors go through `mementoError` and carry INVALID_REQUEST (`JetBrainsMPSModuleMcpToolset.kt:1676-1677`). The heading becomes "`INVALID_JSON` (or `INVALID_REQUEST` for `settingsJson`) with `unbalanced: …` …".
- In `mps-node-editing/SKILL.md:158`, widen the pointer from "when an insert call fails with `INVALID_JSON`" to any JSON input of any tool (S4).

## Tests (R7)

- **`McpToolInputSchemasTest`:**
  - An unbalanced `conceptsJson` reports `unbalanced: 1 closer(s) missing` and the temp-file advice.
  - An unbalanced `parse_java_and_insert` `parameters` reports the diagnosis without `temp-file`.
  - The existing `startsWith` and `anAbsentParametersBlobIsRejectedNamingTheAcceptedKeys` tests still hold.
- **`AbstractOpsPropertyProblemsTest`:**
  - The existing diagnosis tests pass. Adjust any test that asserts on the dropped "(see the mps-node-editing skill)".
  - Add `INLINE` and `inlineOnly(listOf("conceptsJson"))` cases for `JsonSyntaxErrors.describe`, plus `inlineOnly(listOf("valuesJson"))`, asserting that the message names `valuesJson` and does not name `conceptsJson`.
- **`JetBrainsMPSNodeMcpToolsetExtendedIntegrationTest`:**
  - `query_nodes` with `"{ \"nodeReference\": \"x\""` reports the closer diagnosis and still contains `"Invalid JSON parameters"` (`:611`).
  - `query_nodes` with a blank (`" "`) blob still answers INVALID_REQUEST naming the accepted keys. This is the regression guard for R1. It replaces the planned `alter_nodes` MAKE `"null"` case; see "Implementation notes".
- **`JetBrainsMPSLanguageStructureMcpToolsetIntegrationTest`:**
  - A truncated CREATE_CONCEPTS blob names `conceptsJson` in its guidance.
  - A truncated UPDATE_CONCEPT_PROPERTY blob reports the diagnosis with no nested-key sentence (S1).
- **`JetBrainsMPSModuleMcpToolsetIntegrationTest`:** extend the `"{"` row (`:2355`) to assert `unbalanced` and the absence of `temp-file`.

## Validation

- `build_project` on the mcp-tools module, because `execute_run_configuration` does not compile.
- Run these unit tests: `McpToolInputSchemasTest` and `AbstractOpsPropertyProblemsTest`.
- Run these integration tests: `JetBrainsMPSNodeMcpToolsetExtendedIntegrationTest`, the LanguageStructure integration tests and `JetBrainsMPSModuleMcpToolsetIntegrationTest`, then the mcp-tools integration suite. Confirm that the new test names ran.
- Run `SkillCatalogReplicationTest` for the troubleshooting edit across the three catalogs.

## Not done here

- When the JSON was itself read from a file, the `FILE` guidance still suggests passing a temp-file path. Fixing this needs `readJsonOrFile` to report its source.
- The D-category "parse failure means plain value" sites keep their silent fallback on purpose.

## Implementation notes

- **Contract on `rejectUnknownParameterKeys`.** `parseParametersBlob` returns `JsonObject?`. The sites used to see Gson's platform type `JsonObject!`, so the nullable result stopped them compiling past the key check. `JsonObject?.rejectUnknownParameterKeys` (`McpToolInputSchemas.kt`) now declares `contract { returns() implies (this != null) }`. That holds, because it throws on a null receiver before any normal return. Each site keeps a one-expression swap.
- **A bare `null` never decoded to null.** `Gson().fromJson("null", JsonObject::class.java)` throws `Expected a com.google.gson.JsonObject but was com.google.gson.JsonNull; at path $`. So R1's "bare `null`" case was already INVALID_JSON before this change, and it still is: the scan finds nothing, so `describe` returns Gson's line unchanged. Only blank text decodes to null. On the wire a JSON null becomes `""`, which is blank. R1's regression guard is therefore `query_nodes` with `" "` (INVALID_REQUEST, "must be a JSON object carrying the keys for GET_PARENT"), not `alter_nodes` MAKE with `"null"`. `alter_nodes` returns `missingAlterNodesParameters` for blank text before it parses anything.
- **`describe` parameter name.** The raw Gson message is `rawMessage`, as in the code before the move. `gsonMessage` is the cleaned local.
- **`inlineOnly` wording** (round 4 nit). With one key it reads "move valuesJson into a temp file and pass its absolute path instead". With several it reads "move each of conceptsJson / interfaceConceptsJson into its own temp file and pass that file's absolute path instead".

## Review record

Round 1 (general-purpose subagent, verdict "needs changes", 4 should-fix and 5 nits; all accepted):
- **R1:** A-null was a regression. Replaced by `parseParametersBlob`, which keeps null and blank behavior as it is.
- **R2:** an internal enum on a public signature does not compile. Made `JsonInputGuidance` public.
- **R3:** the troubleshooting doc contradicted the `INLINE` guidance. Replaced the "check whether" step with a firm edit to all three catalogs and a `SkillCatalogReplicationTest` run. Also fixed the label to `Parser:`.
- **R4:** `alter_structure` lost its useful file advice. Added `inlineOnly(nestedFileKeys)`.
- **R5:** `gsonStoppedBeforeScan` was missing from the move list. Added; `MAX_INLINE_JSON_CHARS` ownership is settled.
- **R6:** guidance is now fixed in the two private funnels.
- **R7:** added the `settingsJson`, `alter_structure` and suite runs to the test plan.
- **R8:** dropped the wrong skill name from the `FILE` text.
- **R9:** corrected the `saveToTempFile` line number.

Round 2 (same reviewer, verdict "needs changes", 1 should-fix and 4 nits; all accepted). The reviewer confirmed that `parseParametersBlob` keeps every null/blank/error-code path at the seven sites, including the in-process enum overloads, that the R8 wording breaks no test, and that R1–R9 are resolved:
- **S1:** the nested-file sentence appeared on every `alter_structure` operation. The keys are now chosen per operation, and a negative test was added.
- **S2:** `parseJson` needs an explicit type argument at `GET_ASSIGNABLE_REFERENCES`.
- **S3:** `settingsJson` errors are INVALID_REQUEST. The troubleshooting heading now covers that.
- **S4:** the `SKILL.md:158` pointer is widened beyond insert calls.
- **S5:** the section A header now says which path `GET_ASSIGNABLE_REFERENCES` takes.

Round 3 (same reviewer, verdict "settled", 2 nits; both accepted):
- **T1:** the sample nested-key sentence listed all three keys. It is now built from the per-operation list, with a `valuesJson`-only unit case.
- **T2:** the planned Fix bullet now also names `interfaceConceptsJson`.

Round 4 (implementation review, fresh general-purpose subagent, verdict "settled", 4 nits; all accepted):
- the `SKILL.md` pointer now names `interfaceConceptsJson`;
- the troubleshooting "unexpected content" bullet says "top-level value", not "blueprint";
- the two-key `inlineOnly` sentence no longer says "its";
- the new structure tests have their own section header.

The reviewer confirmed that null and blank paths, error codes and prefixes are unchanged, that the contract is truthful and every site checks before it dereferences, that the moved code is equivalent apart from the planned FILE text, that the survey is complete, and that the three catalogs are identical. The `"null"` premise above came to light only when the integration test ran, not in review.

Round 5 (same reviewer, on the post-review delta, verdict "settled", 2 should-fix comment/doc items and 1 nit; all accepted):
- three comments and the `parseParametersBlob` KDoc no longer claim that a literal `null` decodes to null;
- the blank-blob test now also asserts `Accepted: 'nodeReference'`.

The reviewer confirmed that the blank test is a real guard (with `parseJson` it would answer INVALID_JSON) and that the `"null"` correction leaves every earlier conclusion standing.
