You are working in the current folder, which contains a JetBrains MPS project with the language
`mcp.study.recipes` (concepts Recipe, Step, Ingredient, Cookbook; enums Difficulty, Unit) and the
solution `mcp.study.kitchen` whose model `mcp.study.kitchen.samples` contains recipes, ingredients and
a cookbook. MPS is running with the MCP server enabled and this project open. Follow CLAUDE.md and
the MPS skills.

Task: refactor the language and migrate the existing models.

1. Rename the property `Recipe.servings` to `portions`.
2. Change `Recipe.steps` from `[1..n]` to `[0..n]` and add a new required child `Recipe.summary`
   (concept `Summary` with a string property `text`, cardinality `[1]`).
3. Write a migration script for the language that gives every existing Recipe a Summary whose
   text is `TODO` — and bump the language version so the migration applies.
4. Run the migration on the project (or apply the equivalent change) so every existing Recipe
   has a Summary, all references still resolve, and the editors still show the recipes.
5. Done when: the language builds cleanly, `mps_mcp_check_root_node_problems` reports no errors
   on any root in `mcp.study.kitchen.samples`, and you have listed what changed.

Do not roll back changes. Do not edit .mps/.mpl files as text. Stop and explain if blocked.
