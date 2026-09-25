# Structure MCP Tools Reference

Two tools cover structure operations:

- **`mps_mcp_alter_structure`** — write operations: `CREATE_CONCEPTS`, `CREATE_ENUM`, `UPDATE_CONCEPT_PROPERTY`, `UPDATE_CONCEPT_CHILD`, `UPDATE_CONCEPT_REFERENCE`, `RENAME_CONCEPT_PROPERTY`, `RENAME_CONCEPT_CHILD`, `RENAME_CONCEPT_REFERENCE`.
- **`mps_mcp_query_structure`** — read-only operations: `GET_ENUMERATION_LITERALS`, `IS_SUBCONCEPT_OF`, `GET_SUB_CONCEPTS`, `GET_ASSIGNABLE_CONCEPTS`, `GET_ALL_SUPERCONCEPTS`, `LIST_CONCEPT_ASPECTS`, `GET_ASSIGNABLE_REFERENCES`, `IS_SMART_REFERENCE`. To find nodes that are *instances* of a concept use `mps_mcp_query_nodes` (`FIND_INSTANCES`) — see `references/analysis-tools.md` in the `mps-mcp-workflow` skill root after loading that companion skill from the same origin.

Both return a JSON object with `'ok':true` and `'data':{...}` on success, or `'ok':false` and `'error':"..."` on failure.
Failure responses can also include optional stable metadata fields: `'code'`, `'details'`, and `'warnings'`.
Parameters are passed as a JSON object, sent either as real JSON or as that object written as a
string — both wire shapes decode identically, so a client need not stringify. A key the operation
does not accept is **rejected** with `INVALID_REQUEST` naming it, the closest accepted spelling,
and the whole accepted set; it is never silently dropped. `dryRun` therefore belongs only to
`CREATE_CONCEPTS` and `CREATE_ENUM`, the two operations that honour it — elsewhere it is rejected
rather than ignored, because ignoring it wrote to the model while the caller believed it had only
validated. `projectPath` is tolerated inside `parameters` (it must still be passed as the
top-level tool parameter, which is what actually selects the project). A boolean parameter (`make`, `dryRun`, `multiple`, `optional`, `includeInherited`) takes `true`/`false`, or the same literal quoted in any case (`"true"`, `"TRUE"`); an explicit `null` counts as absent, so the documented default applies. Any other shape — `1`, `"yes"`, `" true "`, an object, an array — is rejected with `'parameters.<name>' must be a boolean` rather than coerced. The same rule applies to booleans *inside* a `conceptsJson` / `interfaceConceptsJson` blueprint (`abstract` and `rootable` on a concept, a link's `multiple` / `optional` in either), where the message names the blueprint path instead — `'conceptsJson[0].rootable' must be a boolean`.

Reference-valued keys accept **both the short and the long suffix**: `conceptRef`/`conceptReference`, `superConceptRef`/`superConceptReference`, `structureModelRef`/`structureModelReference`, `enumerationRef`/`enumerationReference` — and, in `mps_mcp_query_nodes`/`mps_mcp_alter_nodes`, `nodeReference`/`nodeRef`, `childNodeRef`/`childNodeReference`, `newParentRef`/`newParentReference`, `modelReference`/`modelRef`. The short form listed first is the canonical one used throughout these docs; the alias exists only because the tool surface spells the same idea both ways. Sending **both** spellings of one parameter in one `parameters` object is rejected with `INVALID_REQUEST` naming which one to keep, rather than silently picking one.

Direct scalar string fields read by the structure operation dispatcher treat an explicit field-level JSON `null` like an omitted field: an absent required field is rejected with `INVALID_REQUEST` together with every other absent required field of the operation — all named in one message and in `details.missingParameters` — while optional fields use their documented default or alternate form. Other JSON values retain Gson's existing `asString` behavior: numbers and booleans are stringified, singleton arrays (including nested singleton arrays) are unwrapped, and objects, empty or multi-element arrays, `[null]`, and `[{}]` keep their existing failure and `INTERNAL_ERROR` envelope. This compatibility rule does not apply to fields inside `conceptsJson`, `interfaceConceptsJson`, or other schema-checked blueprints, and it does not relax the separately documented nonblank string/array rules for search-scope selectors.
