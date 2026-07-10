# Available MPS MCP Tools

## Project and Structure

- `mps_mcp_list_open_projects`: lists open IDE projects, marks which have MPS project counterparts, and returns the `mpsProjectBaseDirectory` to use as the host `projectPath` selector when several MPS projects are open.
- `mps_mcp_get_project_structure`: the universal tool to explore the project. Use `startingPoint` and filtering to avoid large responses; pass `includeStubModules=true` to include read-only libraries/stubs and modules from other open MPS projects.
- `mps_mcp_reload_all`: reloads all modules in the MPS project to refresh runtime classes and concept registries after compiled-aspect changes.

## Modules and Models

- `mps_mcp_create_module`, `mps_mcp_update_module` (operations: RENAME, CHANGE_VIRTUAL_FOLDER, DELETE)
- `mps_mcp_create_model`, `mps_mcp_update_model` (operations: RENAME, DELETE). Model names are either arbitrary names or `<lang>.<aspectId>` (language aspects, case-sensitive, no stereotype) or `name@stereotype` (`@generator`, `@genplan`, `@tests`, `@descriptor`) — see [`aspect-model-stereotypes.md`](aspect-model-stereotypes.md).
- `mps_mcp_module_dependency`, `mps_mcp_model_dependency`, `mps_mcp_model_used_language`. Explicit target references may point to another open MPS project; the selected project records the dependency/import, but the foreign target stays read-only.
- `mps_mcp_list_facet_types`, `mps_mcp_get_module_facets`, `mps_mcp_update_module_facet`: inspect and modify module facets (e.g. attach the `tests` facet to a Solution that hosts a `@tests` model). Facet read responses include a `module` context object, with `containingProject` / `editableFromCurrentProject:false` when the inspected module is from another open MPS project. `mps_mcp_create_module` accepts one initial facet type or a JSON-array string in `facets` for `solution`/`language` modules.

## Root Nodes and Nodes

- `mps_mcp_open_node`: opens a node in the editor; non-root references open the containing root and select the target.
- `mps_mcp_get_current_editor_root_node`: identifies the node the user is currently looking at.
- `mps_mcp_create_root_node`, `mps_mcp_update_root_node_from_json`
- `mps_mcp_query_nodes`: read-only node queries — FIND_INSTANCES (find nodes of a concept; `sampleOnly` for one example), FIND_USAGES (nodes referencing a given node), GET_PARENT, GET_ROOT, GET_MODEL_FOR_NODE, NODE_INDEX, SIBLINGS, GET_CHILD_ROLE. Default scopes are selected-project based; explicit model/module/root scopes may target another open project read-only.
- `mps_mcp_alter_nodes`: structural node mutations and code generation — MOVE_CHILD, MOVE_NODE_TO_PARENT, MAKE, FIX_REFERENCES.
- `mps_mcp_print_node`: shows the underlying JSON structure or it shows the "visual" projection of a node.
- `mps_mcp_insert_root_node_from_json`: bulk node creation. Leave the references empty if target nodes do not exist. Remember to set them later with `mps_mcp_update_node` (`SET`/`REFERENCE`).
- `mps_mcp_update_node`: unified node-mutation tool. One call covers add/set/delete on child, property, and reference roles. The node being mutated must belong to the selected project; reference targets may point to another open project if the target is in scope/imported. Selected via `operation` (`ADD`/`SET`/`DELETE`) × `kind` (`CHILD`/`PROPERTY`/`REFERENCE`). Valid combinations:
  - `ADD`/`CHILD` — append a new child described by a JSON blueprint (`childJson`); supports optional `position` and `dryRun`.
  - `SET`/`CHILD` — replace an existing child (`childNodeRef` + `childJson`); supports `dryRun`. Preserves the original child's position in its role.
  - `DELETE`/`CHILD` — delete a child by `childNodeRef`.
  - `SET`/`PROPERTY` — batch-set properties (`properties = [[nodeRef, propertyName, value], …]`).
  - `DELETE`/`PROPERTY` — clear a property (`nodeReference` + `propertyName`).
  - `SET`/`REFERENCE` — batch-set references (`references = [[nodeRef, role, targetRefOrName], …]`).
  - `DELETE`/`REFERENCE` — clear a reference (`nodeReference` + `referenceRole`).
  - `ADD`/`PROPERTY` and `ADD`/`REFERENCE` are not valid combinations and return an error.
  - `childJson` accepts either an inline JSON string (max 4 KB) **or** an absolute path to a file containing the JSON blueprint — use the file form for large blueprints to avoid MCP-transport truncation.
- `mps_mcp_check_root_node_problems`: validation tool. Use this frequently to ensure your changes are correct.

## Console

- `mps_mcp_insert_console_command_from_json`: inserts a console `Command` node or one or more BaseLanguage statements into the current MPS Console input without executing it.
- `mps_mcp_get_current_editor_root_node` with `source="console"`: returns the current unexecuted command in the MPS Console input editor.
- `mps_mcp_get_console_history`: lists executed console commands, optionally interleaved with response/output entries.
- `mps_mcp_recall_console_command`: copies a command from console history back into the input editor without executing it.
- `mps_mcp_run_console_command`: runs the command currently in the Console input editor; it can have side effects and returns only that execution was triggered, so read results from console history or the Console UI.

## Language Definition

- `mps_mcp_get_concept_details`: provides properties, children, and references for one concept/language or a JSON-array string in `conceptRefs` / `languageRefs`. Make/rebuild languages with `mps_mcp_alter_nodes` (`MAKE` with `rebuild=true`) if descriptors are hollow or stale. For the canonical structure-to-aspect editing and compilation prerequisite chain, see the Critical Directives in the `mps-mcp-workflow` skill.
- `mps_mcp_search_concepts`: global search for concepts by name, alias or description using a single search string or a JSON array of search strings.
- `mps_mcp_alter_structure`: write operations on language structure — `CREATE_CONCEPTS`, `CREATE_ENUM`, `UPDATE_CONCEPT_PROPERTY`, `UPDATE_CONCEPT_CHILD`, `UPDATE_CONCEPT_REFERENCE`, `RENAME_CONCEPT_PROPERTY`, `RENAME_CONCEPT_CHILD`, `RENAME_CONCEPT_REFERENCE`. Reports a `makeStatus` where `"runtime_stale"` indicates reload failure, requiring a clean rebuild (`MAKE rebuild=true`).
- `mps_mcp_query_structure`: read-only structure queries — `GET_SUB_CONCEPTS`, `GET_ASSIGNABLE_CONCEPTS`, `GET_ALL_SUPERCONCEPTS`, `IS_SUBCONCEPT_OF`, `GET_ENUMERATION_LITERALS`, `LIST_CONCEPT_ASPECTS`, `GET_ASSIGNABLE_REFERENCES`, `IS_SMART_REFERENCE`.
- `mps_mcp_scaffold_editor`: generates a default `ConceptEditorDeclaration` for a specified concept, automatically wiring relation declarations properties, children, references to default cell models. Its `includeComponents`, `includeProperties`, `includeReferences`, and `includeChildren` selectors each accept one value or a JSON-array string; omit property/reference/child selectors for all, or pass `"[]"` for none. If the target concept is uncompiled or its structure is out of date, this tool automatically attempts to build (make) the structure model (self-healing), failing if compilation fails or runtime remains stale/hollow.
