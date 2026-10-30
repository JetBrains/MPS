# S3 done criteria (observer, read-only, projectPath = run project dir)

Fixture: recipes.tar.gz (a passing S1 project **with the S1 `Recipe` and `Cookbook` sample roots
deleted**, so the prompt's "exactly 40 Recipe roots plus the Cookbook" is literally satisfiable —
round-2 §5.2; the 3 `Ingredient` roots remain) + `recipes.csv` copied into the project dir. How to
read nodes and references: [`../../instructions/analysis.md`](../../instructions/analysis.md), "Evaluating a run".
1. `mps_mcp_get_project_structure(startingPoint=mcp.study.kitchen.samples, includeRootNodes=true)`:
   exactly 40 Recipe roots and one Cookbook named `All Recipes` (plus the 3 fixture Ingredients).
2. Check CSV data rows 1, 10, 20, 30 and 40 (header excluded) against their roots
   (`mps_mcp_print_node`): name, servings, difficulty, step count, each step's text and minutes in order, and the seeAlso targets. Identify a target by the root its
   reference's `targetReference` resolves to, not by the wrapper's displayed name.
3. Cookbook references all 40 CSV recipes: 40 distinct `targetReference` roots whose names equal the
   CSV's name set.
4. `mps_mcp_check_root_node_problems` on every root: 0 errors (dangling refs count as failure). A
   model-scope check lists only roots that have problems, so "no roots listed" with 0 errors passes.
The criteria judge the model, not the route: a hand-written converter or a skipped `--verify` does
not fail a run; record either as an observation.
Pass = all four hold.
