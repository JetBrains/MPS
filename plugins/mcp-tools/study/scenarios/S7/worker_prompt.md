You are working in the current folder, which contains a JetBrains MPS project with the language
`mcp.study.recipes` (Recipe with servings ≥ 1 constraint, no self-reference in seeAlso, a warning
for Steps with 0 minutes, and a behavior method totalMinutes()) and the solution
`mcp.study.kitchen`. MPS is running with the MCP server enabled and this project open. Follow
CLAUDE.md and the MPS skills.

Task: add tests for the language and run them.

1. Create a `@tests` model `mcp.study.recipes.tests` (in the language's sandbox/test solution
   `mcp.study.recipes.tests`) with three NodesTestCases: (a) a Recipe with servings 0 has the
   constraint error, (b) a Step with 0 minutes has the warning, (c) totalMinutes() of a recipe
   with steps 5 + 10 minutes returns 15.
2. Add one EditorTestCase that types a step text into a new Recipe and checks the result.
3. Create a run configuration for the test model and run it via the MCP run-configuration tool.
4. Done when all four tests pass and you have reported the run configuration name and results.

Do not roll back changes. Do not edit .mps/.mpl files as text. Stop and explain if blocked.
