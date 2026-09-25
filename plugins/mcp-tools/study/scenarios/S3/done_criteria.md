# S3 done criteria (observer, read-only, projectPath = run project dir)

Fixture: recipes.tar.gz (a passing S1 project **with the S1 `Recipe` and `Cookbook` sample roots
deleted**, so the prompt's "exactly 40 Recipe roots plus the Cookbook" is literally satisfiable —
round-2 §5.2; the 3 `Ingredient` roots remain) + `recipes.csv` copied into the project dir.
1. `mps_mcp_get_project_structure(startingPoint=mcp.study.kitchen.samples, includeRootNodes=true)`:
   exactly 40 Recipe roots and one Cookbook named `All Recipes` (plus the 3 fixture Ingredients).
2. Sample 5 recipes against the CSV (`mps_mcp_print_node`): name, servings, difficulty, step count,
   step minutes, seeAlso targets by name.
3. Cookbook references all 40 CSV recipes.
4. `mps_mcp_check_root_node_problems` on every root: 0 errors (dangling refs count as failure).
Pass = all four hold.
