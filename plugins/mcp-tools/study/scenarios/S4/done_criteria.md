# S4 done criteria (observer, read-only, projectPath = run project dir)

Fixture: recipes.tar.gz (passing S1 project).
1. `mps_mcp_get_concept_details(Recipe)`: property `portions` present, `servings` absent; child
   `steps` [0..n]; child `summary` [1] of concept `Summary` (property `text`).
2. Migrations model of `mcp.study.recipes` contains one migration script; language version bumped.
3. Every Recipe root in the samples model has a Summary child (print 3 recipes); `portions` holds
   the former `servings` values.
4. `mps_mcp_check_root_node_problems` on every samples root: 0 errors; descriptors not hollow.
Pass = all four hold.
