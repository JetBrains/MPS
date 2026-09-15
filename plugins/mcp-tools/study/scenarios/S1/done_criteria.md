# S1 done criteria (observer, read-only, projectPath = run project dir)

1. `mps_mcp_get_project_structure(includeModels=true)`: language `mcp.study.recipes` and solution
   `mcp.study.kitchen` with model `mcp.study.kitchen.samples` exist.
2. `mps_mcp_query_structure` / `mps_mcp_search_concepts` on `mcp.study.recipes`: concepts Recipe,
   Step, Ingredient, Cookbook; enums Difficulty {EASY, MEDIUM, HARD}, Unit {G, ML, PIECE}; Recipe has
   servings:int, difficulty, steps [1..n], seeAlso ref [0..n]; Step has text, minutes:int, uses [0..n].
3. `mps_mcp_get_concept_details` for each concept: editor present (not scaffold-only: at least one
   constant/label cell per concept); constraints model has 2 rules; typesystem has 1 checking rule;
   behavior has `totalMinutes`.
4. `mps_mcp_get_project_structure(startingPoint=mcp.study.kitchen.samples, includeRootNodes=true)`:
   3 Ingredient roots, 3 Recipe roots, 1 Cookbook root. Print one Recipe: 2–4 steps, ≥1 seeAlso.
5. `mps_mcp_check_root_node_problems` on every root of the samples model: 0 errors.
6. Language descriptors not hollow (`mps_mcp_get_concept_details` descriptorStatus).
Pass = all six hold. Record which failed with the evidence excerpt.
