## Editing Strategy

* **New class / method**: use `mps_mcp_parse_java_and_insert` for rapid skeleton / body creation.
* **Targeted changes**: use node-by-node AST editing (e.g. `mps_mcp_update_node`) to preserve surrounding structure.
* **Delete-and-recreate**: use only for roots you just created in the current session that have no incoming references.

## After Insertion

* **Reference resolution**: after insertion, call `mps_mcp_print_node` to verify references resolved correctly.
* **Dependencies**: ensure the containing models and modules of all referenced nodes are imported.
* **Type-system problems (`problems` response field)**: every success envelope (`ok:true`) carries a `problems` array. Each entry has `severity` (`error`/`warning`), `message`, and the offending node's `reference` and `concept`. It lists the problems found *within the inserted nodes' subtrees* using the same checkers as `mps_mcp_check_root_node_problems`. An **empty** array means the insert type-checks; a **non-empty** array means the insert succeeded (and, for normal project models, was persisted) but left problems you must fix (for example, a lambda whose closure type does not match the destination slot). `ok:true` does **not** by itself imply a clean model — always inspect `problems`.
