# S1 done criteria (observer, read-only, projectPath = run project dir)

1. `mps_mcp_get_project_structure(includeModels=true)`: language `mcp.study.recipes` and solution
   `mcp.study.kitchen` with model `mcp.study.kitchen.samples` exist.
2. `mps_mcp_get_project_structure(startingPoint=mcp.study.recipes.structure, includeRootNodes=true)`
   for the inventory, then `mps_mcp_get_concept_details(languageRefs=mcp.study.recipes)` for the
   shapes: concepts Recipe, Step, Ingredient, Cookbook; Recipe has servings:int, difficulty,
   steps [1..n], seeAlso ref [0..n]; Step has text, minutes:int, uses [0..n]. Enums are not concepts
   and cannot be looked up by qualified name — take the `EnumerationDeclaration` roots from the same
   roots dump, then read their literals with `mps_mcp_print_node(deep=true)` or
   `mps_mcp_query_structure GET_ENUMERATION_LITERALS(enumerationRef=<that node reference>)`:
   Difficulty {EASY, MEDIUM, HARD}, Unit {G, ML, PIECE}.
3. `mps_mcp_get_concept_details` for each concept: editor present (not scaffold-only: at least one
   constant/label cell per concept); constraints model has 2 rules; typesystem has 1 checking rule;
   behavior has `totalMinutes`.
4. `mps_mcp_get_project_structure(startingPoint=mcp.study.kitchen.samples, includeRootNodes=true)`:
   3 Ingredient roots, 3 Recipe roots, 1 Cookbook root. Print one Recipe: 2–4 steps, ≥1 seeAlso.
5. `mps_mcp_check_root_node_problems` on every root of the samples model: 0 errors.
6. Language descriptors not hollow (`mps_mcp_get_concept_details` descriptorStatus).
Pass = all six hold. Record which failed with the evidence excerpt.
