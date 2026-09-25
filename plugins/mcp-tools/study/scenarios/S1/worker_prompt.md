You are working in the current folder, which contains an empty JetBrains MPS project. MPS is
running with the MCP server enabled and this project open. Follow CLAUDE.md and the MPS skills.

Task: create a small DSL for cooking recipes and use it.

1. Language `mcp.study.recipes` with concepts: Recipe (root; name, servings:int,
   difficulty:Difficulty, steps: Step[1..n], seeAlso: Recipe[0..n] ref), Step (text, minutes:int,
   uses: Ingredient[0..n]), Ingredient (root; name, unit:Unit), enums Difficulty {EASY, MEDIUM,
   HARD} and Unit {G, ML, PIECE}, plus a Cookbook root that contains Recipe references.
2. Editors for all concepts (readable, not just scaffolds); a constraint that Recipe.servings
   is ≥ 1; a constraint that a Recipe cannot reference itself in seeAlso; a typesystem check
   that a Step with 0 minutes reports a warning; a behavior method Recipe.totalMinutes().
3. Solution `mcp.study.kitchen`, model `mcp.study.kitchen.samples` using the language, with
   3 Ingredients, 3 Recipes (each 2–4 steps, cross-referenced via seeAlso) and 1 Cookbook.
4. Done when: the language module builds cleanly, `mps_mcp_check_root_node_problems` reports
   no errors on any root in the samples model, and you have listed the created modules/models.

Do not roll back changes. Do not edit .mps/.mpl files as text. Stop and explain if blocked.
