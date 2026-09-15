# S3 done criteria (observer, read-only, projectPath = run project dir)

Fixture: recipes.tar.gz (a passing S1 project) + `recipes.csv` copied into the project dir.
1. `mps_mcp_get_project_structure(startingPoint=mcp.study.kitchen.samples, includeRootNodes=true)`:
   exactly 40 new Recipe roots (43 with the S1 samples) and one Cookbook named `All Recipes`.
2. Sample 5 recipes against the CSV (`mps_mcp_print_node`): name, servings, difficulty, step count,
   step minutes, seeAlso targets by name.
3. Cookbook references all 40 CSV recipes.
4. `mps_mcp_check_root_node_problems` on every root: 0 errors (dangling refs count as failure).
Pass = all four hold.
