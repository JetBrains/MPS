You are working in the current folder, which is an empty JetBrains MPS project. MPS is running
with the MCP server enabled and this project open. Follow CLAUDE.md and the MPS skills.

Task: set up a second MPS project from scratch, put one solution in it, and leave it closed.

1. Create a new, empty MPS project in a directory next to this one, named this project's folder
   name plus the suffix `-target`. It must open without any migration prompt.
2. Close this project. MPS ending up on the Welcome screen is expected.
3. Open the new project so that MPS MCP tools can reach it.
4. In the new project create solution `mcp.study.lifecycle`, model `mcp.study.lifecycle.notes`,
   and one BaseLanguage class root `Note` in that model.
5. Close the new project.

Done when: the `-target` project holds solution `mcp.study.lifecycle` with model
`mcp.study.lifecycle.notes` and the root `Note`, the project is closed, and MPS is still running.

Do not shut MPS down. Do not roll back changes. Do not edit .mps/.mpl files as text. Stop and
explain if blocked.
