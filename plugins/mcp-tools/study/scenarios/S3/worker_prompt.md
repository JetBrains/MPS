You are working in the current folder, which contains a JetBrains MPS project with the language
`mcp.study.recipes` (concepts Recipe, Step, Ingredient, Cookbook; enums Difficulty, Unit) and the
solution `mcp.study.kitchen` with the model `mcp.study.kitchen.samples`. MPS is running with the
MCP server enabled and this project open. Follow CLAUDE.md and the MPS skills.

Task: populate the samples model from `recipes.csv` in this folder.

1. Create one `Recipe` root per CSV row (40 rows). Columns: `name`, `servings`, `difficulty`,
   `steps` (pipe-separated `text:minutes` pairs, 3–6 per recipe), `seeAlso` (pipe-separated names of
   other recipes; may be empty).
2. Each recipe gets its steps as `Step` children with `text` and `minutes` set. Each `seeAlso`
   entry becomes a reference to the Recipe root of that name (all targets are in the CSV).
3. Add one `Cookbook` root named `All Recipes` that references all 40 recipes.
4. Done when: the model contains exactly 40 Recipe roots plus the Cookbook, every seeAlso reference
   resolves, `mps_mcp_check_root_node_problems` reports no errors on any root in the model, and
   you have printed the count of roots per concept.

Do not roll back changes. Do not edit .mps files as text. Stop and explain if blocked.
