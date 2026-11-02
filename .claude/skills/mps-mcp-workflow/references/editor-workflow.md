# MPS Concept Editor Workflow

Designing, scaffolding, and refining MPS concept editors:

1. **Prerequisites**: retrieve concept and model references via `mps_mcp_get_concept_details`.
2. **Compile (Automatic/Self-healing)**: `mps_mcp_scaffold_editor` automatically detects and builds (makes) uncompiled or stale structure models. You can also manually rebuild via the `MAKE` operation in `mps_mcp_alter_nodes` to resolve runtime staleness.
3. **Scaffold**: call `mps_mcp_scaffold_editor` with `detectComponents: true`.
4. **Componentize**: extract reusable parts into `EditorComponentDeclaration`.
5. **Inspect**: verify AST and layout via `mps_mcp_print_node`.
6. **Refine**: customize cells/styles using the `mps-aspect-editor` skill. A scaffold shows one `<role>:` label per feature on its own line; it is a starting point, not a deliverable. Replace the role labels with the DSL's own keywords and symbols and put the alias and name on one row before calling the editor done.
7. **Verify**: check for errors via `mps_mcp_check_root_node_problems`.

## Editor Procedural Guidelines

* **Organization**: use the same virtual packages for editors as their concepts.
* **Coverage**: ensure all non-abstract concepts have a functional editor (direct or inherited).
* **Keywords**: use `CellModel_Constant` for keywords and symbols (e.g. `{`, `}`).
* **Layout**: prefer indent layout; use `indent-layout-new-line` and `indent-layout-indent`.
