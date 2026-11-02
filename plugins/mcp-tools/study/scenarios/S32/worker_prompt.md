You are working in the current folder, which contains a JetBrains MPS project with the language
`mcp.study.recipes` (Recipe with name, servings, difficulty and Steps; Step with text, minutes
and a list of ingredient references; Ingredient roots; Cookbook), the solution `mcp.study.kitchen`
with sample recipes and ingredients, and the test solution `mcp.study.recipes.editortests` whose
`@tests` model holds four editor tests. MPS is
running with the MCP server enabled and this project open. Follow CLAUDE.md and the MPS skills.

Task: make the recipe editor quicker to use. Read the editors and the tests first.

1. The difficulty moves out of the document into the Inspector.
2. With the caret right after the closing `)` of a step, typing `then` adds an empty step right
   after it and puts the caret into the new text. Ctrl+Space with that `)` selected (or the caret before it) offers the same item as
   `then`, together with everything Ctrl+Space offers on a selected step (today `step`; whatever
   a step offers later must show up there too). `then` is not offered on the recipe.
3. Ctrl+Space on a recipe's name offers one `scale xN` item for each factor N of a list of scale
   factors that the language defines in one place (today 2, 3 and 4; more will be added);
   choosing one multiplies the servings by N. The items appear only when servings is at least 1.
4. With the caret in a step's minutes, pressing `+` adds 5 minutes and `-` removes 5 (never
   below 0). Elsewhere in the editor `+` and `-` behave as before.
5. Editing the difficulty in the Inspector changes the recipe.
6. Editor tests: `then` typed whole; `the` completed with Ctrl+Space (typing `the` alone applied nothing); Ctrl+Space on `)` lists
   `then` and `step`; `scale x2` with servings 3 (result 6); no scale items with servings 0; `+` after
   minutes 10 (15); the Inspector edit. Completion tests check the offered items before they
   type. Each must fail if its behaviour broke; they must run headless on CI, so they must not need IDE-only services (no CI build to set up). Keep the four existing
   tests passing, updating only what your change legitimately alters.
7. Rebuild, create a run configuration for the test model, and run it. Done when: everything makes without errors, all eleven
   tests pass in one run, and `mps_mcp_check_root_node_problems` reports no errors on the editor
   model and the test model.

Do not roll back changes. Do not edit .mps/.mpl files as text. Stop and explain if blocked.
