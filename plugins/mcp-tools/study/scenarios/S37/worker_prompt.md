You are working in the current folder, which contains a JetBrains MPS project with the language
`mcp.study.recipes` (Recipe with name, servings, difficulty and a list of Steps with minutes, and a
behavior method `totalMinutes()`) and the solution `mcp.study.kitchen` with the model
`mcp.study.kitchen.samples` holding three recipes, among them `Pancakes`. MPS is running with the
MCP server enabled and this project open. Follow CLAUDE.md and the MPS skills.

Task: guard the Pancakes sample with a test.

1. In a new test solution `mcp.study.kitchen.tests` with the model `mcp.study.kitchen.tests@tests`,
   add a NodesTestCase `PancakesSample` whose test checks the `Pancakes` recipe stored in
   `mcp.study.kitchen.samples`: it serves 2, and its `totalMinutes()` is 13. Test that stored recipe
   itself, not a copy of it inside the test.
2. When someone renames the recipe later, the test must still check it, and Find Usages on the
   recipe must list the test.
3. Done when: the test passes in a run configuration run through the MCP run-configuration tool,
   and the samples model is unchanged.

Do not roll back changes. Do not edit .mps/.mpl files as text. Stop and explain if blocked.
