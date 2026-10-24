You are working in the current folder, which contains a JetBrains MPS project with the language
`mcp.study.recipes` and the solution `mcp.study.kitchen` whose model `mcp.study.kitchen.samples`
is broken: it contains dangling references, missing required children and invalid property
values. MPS is running with the MCP server enabled and this project open. Follow CLAUDE.md and the
MPS skills.

Task: make `mcp.study.kitchen.samples` clean.

1. Find every problem in the model.
2. Fix each one with the smallest sensible change: repoint or remove dangling references, add
   missing required children with plausible values, correct invalid property values.
3. Do not delete whole recipes or ingredients unless a root is unrecoverable; say so if you do.
4. Two editorial changes from the cookbook's editor, which the checker cannot see. Move the
   existing nodes — do not delete and re-create them, and do not repoint references to fake the
   order; our review tool tracks them by node id:
   - In cookbook `Weeknight Basics`, `Omelette` should be the first entry — it is the quickest
     dinner.
   - The step "Let the batter rest in the fridge" was entered under `Crepes` by mistake. It
     belongs to `Pancakes`, between mixing the batter and ladling it onto the pan.
5. Done when `mps_mcp_check_root_node_problems` reports no errors on any root in the model, the
   two editorial changes are in place, and you have listed each problem you found and how you
   fixed it.

Do not roll back changes. Do not edit .mps files as text. Stop and explain if blocked.
