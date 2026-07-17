# Finding Models, Modules, Languages, and Nodes

## Finding Nodes

- To find nodes that are instances of a concept — e.g. an example node to study or copy as a JSON template — use `mps_mcp_query_nodes` (`FIND_INSTANCES`) with `conceptRef`. `sampleOnly: true` returns one random example; `scope: "roots"` searches within given roots; `propertyFilter: {"name", "value"}` matches a property value (e.g. find a literal by its value).
- To find the nodes that reference a given node, use `FIND_USAGES` (`nodeReference`). Usages are incoming references — FIND_USAGES does **not** return instances of a concept.
- To find root nodes by name, use `mps_mcp_search_root_node_by_name`. Aspect roots like `<Concept>_Editor` have no name property and are not findable this way — use `mps_mcp_query_structure` (`LIST_CONCEPT_ASPECTS`) on the concept instead.

## Finding Concepts

- To find a concept by name, alias, or short description, use `mps_mcp_search_concepts` (`searchTexts`; optionally scope to a model's languages via `modelReference`). It also returns each feature's `featureId` and the declaration's `sourceNode` ref.
- There is no "list all concepts" operation: `mps_mcp_query_structure` has no such op. Use `mps_mcp_search_concepts`, or `GET_SUB_CONCEPTS` / `GET_ASSIGNABLE_CONCEPTS` to enumerate the sub/assignable concepts of a given concept.

## Finding Models, Modules, and Languages

- A fully qualified name or a unique persistent reference is needed to unambiguously represent an entity.
- With multiple MPS projects open, same-name lookup prefers the project selected by `projectPath`, then falls back to the shared repository. Use persistent references when you intentionally need a model, module, language, concept, or node from another open project.
- Elements from another open project are read-only from the selected project. Returned JSON marks them with `containingProject: { name, mpsProjectBaseDirectory }` and `editableFromCurrentProject: false`; nested fields use prefixes such as `conceptContainingProject`, `targetContainingProject`, or `typeContainingProject`.
- **Model names include their stereotype.** The `name` a tool reports for a model is its full name with any stereotype attached (e.g. `foo.bar@tests`, `foo.bar@generator`), matching the `@stereotype` form `mps_mcp_create_model` expects. The stereotype is part of the model's identity — when you address a model by name, pass it verbatim (`foo.bar@tests`, not `foo.bar`). Two models can share a long name and differ only by stereotype.
- If given an incomplete or shortened name (e.g. `j.m.l.core`), use `mps_mcp_get_project_structure` with eager filtering to find the full name.
- Single-letter packages usually expand: `j` → `jetbrains`, `m` → `mps`, `l` → `lang`.
- For incomplete names call `mps_mcp_get_project_structure` with eager filtering.
- Newly created languages might not be discoverable by specialized language tools until they are compiled. Use `mps_mcp_get_project_structure` to find them as modules and investigate their `structure` model.
- Use `mps_mcp_get_project_structure` to read the organization of an MPS project and to understand the dependencies of a module or dependencies and used languages of a model.
- Use `includeStubModules=true` when you need read-only libraries/stubs or modules from other open MPS projects in project-structure output.
- `mps_mcp_get_project_structure(startingPoint=<module>)` returns `facets` (e.g. `["java","tests"]`) and `loadExtensions` for each module — use these to check whether a solution is a test container (`"tests"` in `facets`) or whether a module loads plugin extensions.
- When not explicitly pointing to a node, assume the user is referring to the root node currently open in the editor and possibly also a selected node within that root node. Use `mps_mcp_get_current_editor_root_node`.
- WHEN asked for the 'current model' or 'current module/solution/language/generator', it is the model/module of the root node currently open in the editor — use `mps_mcp_get_current_editor_root_node`.

## Reading the User's Current Focus (caret & selection)

`mps_mcp_get_current_editor_root_node(source="editor")` returns the root node (use it for the current model/module/language/generator) plus the editor's caret/selection state. Interpret it as follows (see `reference-formats.md` for the full field list):

- **"These nodes" / an explicit selection:** if `selection.present` is `true` and `selection.kind == "nodes"`, the user has selected whole nodes — prefer `selection.nodes` (each `{ reference, concept, name }`). `nodeCount` is the true total; if `nodesTruncated` is `true` the `nodes` array is capped (default 20), so re-query per node or narrow the scope rather than assuming the array is complete.
- **"This node" at the caret:** if there is no node selection, use the `caret`. When `caret.present` is `true`, `caret.nodeReference` is the node the cursor sits in and `caret.contextualNodeReference` is the node whose projection built the cell (they differ inside a reference cell — the contextual node is the referenced target). `caret.feature` tells you the exact property/reference/child the cursor edits (`kind`, `name`, `value`); `feature.valueNodeReference` is the node the value was read from.
- **`selectedNodeReference` is compatibility-only:** it is present for an ordinary caret too, not just a whole-node selection, so do **not** treat it as "the user selected this whole node". Use `bigCellSelected == true` for a genuine whole-node ("big") selection.
- **Distinguish navigation from editing:** a `feature` with `navigational == true` is a reference the cell only navigates to (e.g. a keyword), not one it edits; a genuinely edited reference cell has `referenceCell == true` and `navigational == false`.
- **Honor the counts:** always read `nodeCount`/`cellCount` for totals and `nodesTruncated`/`cellsTruncated` before relying on the `nodes`/`cells` arrays being exhaustive.
