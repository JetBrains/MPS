# S3 done criteria (observer, read-only, projectPath = run project dir)

Fixture: recipes.tar.gz (a passing S1 project **with the S1 `Recipe` and `Cookbook` sample roots
deleted**, so the prompt's "exactly 40 Recipe roots plus the Cookbook" is literally satisfiable —
round-2 §5.2; the 3 `Ingredient` roots remain) + `recipes.csv` copied into the project dir. How to
read nodes and references: [`../../instructions/analysis.md`](../../instructions/analysis.md), "Evaluating a run".
1. `mps_mcp_get_project_structure(startingPoint=mcp.study.kitchen.samples, includeRootNodes=true)`:
   exactly 40 Recipe roots and one Cookbook named `All Recipes` (plus the 3 fixture Ingredients).
2. Check the CSV rows for Tomato Soup, Chili, Greek Salad, Brownies and Tiramisu (data rows 1, 10,
   20, 30, 40) against their roots: name, servings, difficulty, step count, each step's text and
   minutes in order, and the seeAlso targets as a set (the prompt fixes no order). Identify a target
   by the root its reference's `targetReference` resolves to, not by the wrapper's displayed name.
3. Cookbook references all 40 CSV recipes: 40 distinct `targetReference` roots whose names equal the
   CSV's name set.
4. `mps_mcp_check_root_node_problems` on every root: 0 errors (dangling refs count as failure). A
   model-scope check lists only roots that have problems, warnings included. The fixture's
   typesystem warns on a 0-minute Step (`Step takes no time - is the duration missing?`), and the
   CSV has 23 such steps in 15 recipes, so expect those 15 roots listed. Pass = every listed root has
   0 errors; a different warning count does not fail criterion 4 (minutes are judged under 2).
The criteria judge the model, not the route: a hand-written converter or a skipped `--verify` does
not fail a run; record either as an observation.
Pass = all four hold.
