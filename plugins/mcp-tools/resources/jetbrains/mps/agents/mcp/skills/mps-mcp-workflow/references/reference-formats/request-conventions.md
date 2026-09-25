# Reference Formats and Resolution

- Persistent references in MPS follow specific formats:
    - **Node References** (used in `targetReference` or `target` fields): start with `r:` (regular) or `i:` (stub/internal). Format: `r:model-uuid(model-name)#node-id`.
    - **Concept References** (used in `conceptReference` field): start with `c:`. Format: `c:language-uuid(language-name)/concept-id`.
- **CRITICAL**: never use a concept reference (`c:...`) where a node reference (`r:...`) is expected. If you need a reference to point to the **declaration node** of a concept (its definition), you must use its node reference.
- To obtain the node reference (`r:...`) for a concept:
    - Use `mps_mcp_get_concept_details` and check the **`sourceNode`** field in the response.
    - Alternatively, use `mps_mcp_search_concepts` with `detail: "full"` and check the `sourceNode` field for each match — the default `"summary"` record does not carry it.
- The `mps_mcp_insert_root_node_from_json` and `mps_mcp_update_node` tools will reject `c:...` strings in reference roles and will fail if a provided node reference cannot be resolved.
- **Model References**: `r:<model-uuid>(<model-name>)` — a node reference without the `#<node-id>` part.
- Tools that accept a model reference also accept the model's **qualified name** (the `name` field, stereotype included, e.g. `foo.bar@tests`) — the same form `mps_mcp_get_project_structure` `startingPoint` accepts.

### Which tools accept a MODEL reference

A model reference is **not** interchangeable with a node reference; each tool takes one or the other:

| Tool | node/root reference | model reference |
|---|---|---|
| `mps_mcp_check_root_node_problems` | yes | **yes** — also a qualified model name; pass it in `nodeReference` (there is no `modelReference` parameter). Checks every root of the model in one exhaustive call (`autoApplyQuickFixes` is ignored in this mode) |
| `mps_mcp_print_node` | yes | **no** — rejected with INVALID_REQUEST naming the model and a retry line for `mps_mcp_get_project_structure` (`startingPoint`, `includeNodes=true`) |
| `mps_mcp_update_node`, `mps_mcp_open_node`, `mps_mcp_list_node_intentions`, `mps_mcp_apply_intention` | yes | no — their node parameters take a node reference only |
| `mps_mcp_insert_root_node_from_json`, `mps_mcp_create_root_node` | — | yes, as the *target model* parameter |
| `mps_mcp_query_nodes` (`models` scope), `mps_mcp_alter_nodes` (`MAKE` `{"models": […]}`), `mps_mcp_model_dependency`, `mps_mcp_model_used_language`, `mps_mcp_update_model` | — | yes, in the documented model/`models` parameter |

Passing a model reference or qualified model name where a node reference is expected is rejected with INVALID_REQUEST that names the model and the tool to retry with — do not treat it as "the node is gone".

### Passing a list to a top-level parameter

These top-level parameters take one value or a list: `conceptRefs` / `languageRefs`
(`mps_mcp_get_concept_details`), `searchTexts` (`mps_mcp_search_concepts`), `names` / `models` /
`modules` (`mps_mcp_search_root_node_by_name`), `targetModels` (`mps_mcp_model_dependency`),
`facets` (`mps_mcp_create_module`), the four `include*` selectors of `mps_mcp_scaffold_editor`, and
the `json` blueprint of `mps_mcp_insert_root_node_from_json`,
`mps_mcp_update_root_node_from_json` and `mps_mcp_insert_console_command_from_json`.

**Both wire shapes are accepted and equivalent**: a real JSON array (`["A","B"]`) or the array
written as a string (`"[\"A\",\"B\"]"`). A single bare value needs no brackets — a persistent
reference is not valid bare JSON, so a lone `r:...` / `c:...` is always taken as one value. A value
no list can be built from (a JSON object, a number, an array of objects) is passed through as a
single value and comes back as the tool's ordinary unresolved-reference `ok:false` envelope, never
as an exception.

Blob keys *inside* a `parameters` / `conceptsJson` / `valuesJson` payload are different: that
payload is itself one string parameter, so its own arrays are plain JSON inside it.

### Two spellings for one reference key

The surface carries the same idea under a short and a long suffix — blob keys mostly use `…Ref`,
top-level tool parameters `…Reference` — and neither can be renamed without breaking existing call
sites. So **inside a `parameters` blob both spellings are accepted**:

| Canonical blob key | Also accepted | Read by |
|---|---|---|
| `conceptRef` | `conceptReference` | `mps_mcp_query_structure`, `mps_mcp_alter_structure`, `mps_mcp_query_nodes` (`FIND_INSTANCES`) |
| `superConceptRef` | `superConceptReference` | `mps_mcp_query_structure` (`IS_SUBCONCEPT_OF`) |
| `structureModelRef` | `structureModelReference` | `mps_mcp_alter_structure` |
| `enumerationRef` | `enumerationReference` | `mps_mcp_query_structure` (`GET_ENUMERATION_LITERALS`) |
| `nodeReference` | `nodeRef` | `mps_mcp_query_nodes`, `mps_mcp_alter_nodes`, `mps_mcp_query_structure` |
| `childNodeRef` | `childNodeReference` | `mps_mcp_alter_nodes` (`MOVE_CHILD`) |
| `newParentRef` | `newParentReference` | `mps_mcp_alter_nodes` (`MOVE_NODE_TO_PARENT`) |
| `modelReference` | `modelRef` | `mps_mcp_alter_nodes` (`MOVE_NODE_TO_PARENT`) |

Sending **both** spellings of one key in one blob is rejected with `INVALID_REQUEST` naming which
to keep — a caller who sent both could not otherwise tell which one the tool used. A field-level
JSON `null` still counts as absent under either spelling, so `{"enumerationRef": null,
"enumerationReference": "…"}` is one value, not a conflict.

**Top-level tool parameters have no aliases**: the only accepted spelling is the one in the tool's
schema (`conceptRefs`, `searchTexts`, `nodeReference`, `childNodeRef`, `conceptRef` for
`mps_mcp_scaffold_editor`, …). Every parameter is optional in the published schema, so its
`required` array is empty and tells you nothing; a required parameter says "Required." at the start
of its description. A wrong key is silently ignored and the parameter's default applies, but a
required parameter left blank is caught by the tool itself: the rejection names the key, the literal
retry (`<key> set to …`), and the spellings that never reached it, and repeats the missing keys in
`details.missingParameters`. Read that line instead of re-fetching the schema.

#### Top-level naming conventions

| Parameter | Accepts | Used by |
|---|---|---|
| `moduleName` | module name or module reference | module tools, `mps_mcp_create_model` |
| `modelReference` | model reference, or the model's long or short name | model-targeting tools (e.g. `mps_mcp_scaffold_editor`, `mps_mcp_update_model`) |
| `nodeReference` | persistent node reference | node-targeting tools |
| `conceptRef` (singular) | one concept reference or qualified name | `mps_mcp_scaffold_editor` |
| `conceptRefs` / `languageRefs` (plural) | one value or a JSON array of them | `mps_mcp_get_concept_details` |

Blob keys nested inside a `parameters` payload follow the separate table above (e.g.
`enumerationRef`), not this one.

### Every other blob key is rejected, not dropped

A key a `parameters` blob does not recognise is answered with `INVALID_REQUEST` naming the key you
sent, the closest accepted spelling when there is one, and the whole accepted set for that
operation — it is never read past. Before this, an unrecognised key was silently dropped, so a
misspelling surfaced either as `Parameter 'X' is missing` for a value you *did* pass or, on a write,
as a mutation performed under the defaults you thought you had overridden.

Two consequences worth knowing:

- **`dryRun` is accepted only where it is honoured** — `mps_mcp_alter_structure` `CREATE_CONCEPTS`
  and `CREATE_ENUM`, and the top-level `dryRun` parameter of `mps_mcp_update_node`. On any other
  `alter_structure` operation it is rejected rather than ignored, because ignoring it wrote to the
  model while the caller believed it had only validated. `mps_mcp_parse_java_and_insert` rejects it
  the same way.
- **`projectPath` is tolerated inside `parameters`.** It is the platform's own *top-level* tool
  parameter and must still be passed there — the platform resolves the project before the tool runs
  — but repeating it inside the blob is accepted rather than failed, because the value it carries
  has already been applied.

A field-level JSON `null` counts as absent for this check too: `{"cardinality": null}` carries no
value, so it is not reported.

### Every missing required blob key is reported at once

In `mps_mcp_query_nodes`, `mps_mcp_alter_nodes`, `mps_mcp_query_structure` and
`mps_mcp_alter_structure`, once no unknown key is left, the operation checks the keys it requires
and answers **every absent one in a single `INVALID_REQUEST`** — `nodeReference and childRole are
required in 'parameters' for MOVE_CHILD. Retry with nodeReference set to …; childRole set to ….` —
repeating them in `details.missingParameters`, as a top-level rejection does. A key is absent when
no accepted spelling carries a non-null value; an empty string or a value of the wrong type counts
as present and gets the operation's own error instead.

Alternative forms are part of the same check:

- A choice between keys is named `one of a/b`: `one of conceptRef/conceptRefs` for FIND_INSTANCES,
  `one of conceptsJson/interfaceConceptsJson/conceptNames` for CREATE_CONCEPTS, and
  `one of newParentRef/modelReference` for MOVE_NODE_TO_PARENT.
- MOVE_NODE_TO_PARENT requires `role` only together with `newParentRef`.
- GET_ENUMERATION_LITERALS requires `nodeReference` and `propertyName` only without `enumerationRef`.

Two operations keep their own rejections: MAKE answers `MAKE_INPUT_INVALID` with an
`expectedParameters` map, and `mps_mcp_parse_java_and_insert` validates its object as a blueprint,
reporting `Missing 'parameters.<key>'` for one key per call.
