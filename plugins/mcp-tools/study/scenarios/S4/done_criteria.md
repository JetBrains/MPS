# S4 done criteria (observer, read-only, projectPath = run project dir)

Fixture: recipes-full.tar.gz (passing S1 project with the sample roots kept: 3 Ingredients, 3 Recipes,
1 Cookbook). Fixture `servings`: Crepes 4, Pancakes 2, Omelette 1.
1. `mps_mcp_get_concept_details(Recipe)`: property `portions` present, `servings` absent; child
   `steps` [0..n]; child `summary` [1] of concept `Summary` (property `text`).
2. Migrations model of `mcp.study.recipes` contains one migration script; language version bumped.
3. Every Recipe root in the samples model has a Summary child whose `text` is `TODO` (print 3 recipes); `portions` holds
   the fixture `servings` values above.
4. `mps_mcp_check_root_node_problems` on every samples root: 0 errors; descriptors not hollow.
Pass = all four hold.
