You are working in the current folder, which contains a JetBrains MPS project with the language
`com.example.statechart` (concepts StateChart, State, Transition, Event) and the sandbox solution
`com.example.statechart.sandbox`. MPS is running with the MCP server enabled and this project open.
Follow CLAUDE.md and the MPS skills.

Task: extend the language.

1. Add a concept `Guard` (child of Transition, role `guard`, cardinality 0..1) with a string
   property `condition`. Give it an editor so a transition reads `on <event> [condition] -> <target>`.
2. Add a constraint: `Guard.condition` must not be blank.
3. Add an intention "Add guard" on Transition that creates an empty Guard when none is present.
4. Rebuild the language and add a guard with condition `count > 3` to one existing transition in
   the sandbox model.
5. Done when: the language builds cleanly, `mps_mcp_check_root_node_problems` reports no errors
   on the sandbox roots, and you have listed what you changed.

Do not roll back changes. Do not edit .mps/.mpl files as text. Stop and explain if blocked.
