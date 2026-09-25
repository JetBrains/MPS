You are working in the current folder, which contains a JetBrains MPS project with the language
`mcp.study.recipes` (concepts Recipe, Step, Ingredient, Cookbook; enums Difficulty, Unit) and the
solution `mcp.study.kitchen` with model `mcp.study.kitchen.samples` containing Ingredient roots.
MPS is running with the MCP server enabled and this project open. Follow CLAUDE.md and the MPS
skills.

Task: run two read-only instance queries from the MPS Console via the Console MCP tools.

1. Insert into the Console input, then run: `#instances(Ingredient)`.
2. Insert into the Console input, then run:
   `#instances(Ingredient).where({~it => it.name.length > 0}).select({~it => it.name})`.
3. Read the Console history including the printed responses, and report what each query printed.
4. Recall the first command from history back into the Console input; leave it unexecuted.
5. Print the current Console command as PLAIN TEXT and as JSON.

Done when: the Console history contains both executed queries with their responses, and the
Console input holds the recalled first command.

Do not modify any MPS model. Do not edit .mps/.mpl files as text. Stop and explain if blocked.
