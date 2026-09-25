## Workflow and Best Practices

1.  **Initialize a session**: check `.agents/skills/*-dsl/` for generated project-local DSL skills and read this skill before any MPS work. If the user opens a specific concept/model, also call `mps_mcp_get_current_editor_root_node` to anchor on what they are looking at.
2.  **Navigate with precision**: prefer using `startingPoint` and `reference` (ID) over names to avoid ambiguity.
3.  **Respect the AST**: remember that you are editing a tree. When writing Java (`BaseLanguage`), use `ParenthesizedExpression` if you are unsure about operation priorities in the tree structure.
4.  **Learn from samples**: study existing code to understand how to perform common tasks. Use `mps_mcp_query_nodes` (`FIND_INSTANCES`) to find existing nodes of a given concept.
5.  **Defensive problem checking**: always use `mps_mcp_check_root_node_problems` immediately after inserting or modifying a complex node. A successful insertion `"ok": true` does not guarantee the resulting AST is semantically or structurally valid.
6.  **Validate frequently**: make/rebuild languages with `mps_mcp_alter_nodes` (`MAKE`) after making changes so they can be imported and used, and so you see whether they generate and compile. Pass `MAKE` with a JSON parameters object that names what to build — `{"modules": ["<module-ref>"]}` for one or more modules (e.g. a language plus its generator), `{"models": ["<model-ref>"]}` to make individual models, or `{"wholeProject": true}` to rebuild everything. Combine with `mps_mcp_check_root_node_problems` afterwards to surface generation errors.
7.  **Missed skill adoption**: when an MPS skill is offered that can find models/modules/languages by name, the agent should decide to learn and use it to perform the lookup.
