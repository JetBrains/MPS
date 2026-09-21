# S9 done criteria (observer, read-only, projectPath = run project dir)

Fixture: recipes.tar.gz (passing S1 project **with the S1 `Recipe` and `Cookbook` sample roots
deleted**; the 3 `Ingredient` roots remain). Console history and the current input are **session
state** in the still-open MPS — evaluate before the project is closed.

1. Models unchanged: `mps_mcp_get_project_structure(startingPoint=mcp.study.kitchen.samples,
   includeRootNodes=true)` still has exactly 3 Ingredient roots and no Recipe/Cookbook roots;
   `mps_mcp_get_project_structure(includeModels=true)` has no new modules. Print the 3 Ingredient
   names (`mps_mcp_print_node`) — needed for checks 2–3. `mps_mcp_check_root_node_problems` on
   every samples root: 0 errors.

2. `mps_mcp_get_console_history(includeResponses=true)`: at least two `kind:command` entries,
   each followed by a `kind:response`. Print each command via
   `mps_mcp_print_node(effectiveCommandReference, format=PLAIN TEXT)` (do not use the history
   `reference` — that is the `CommandHolder` for recall only).
   - One command is `#instances(Ingredient)` with no `where` (or equivalent
     `InstancesExpression` of `mcp.study.recipes.structure.Ingredient`).
   - Another is that query plus a `where` (or equivalent filter) on the name.
   Wrapping in `#print` or a `{ … }` `BLCommand` is accepted. The unfiltered response is a
   sequence whose printed items include all 3 Ingredient names from check 1. The filtered
   response includes those same names (the prescribed filter is non-empty name). Equivalent
   filters (`isNotEmpty`, `!= ""`, `:ne: null`, `length > 0`) are accepted if the response still
   contains all 3 names.

3. `mps_mcp_get_current_editor_root_node(source=console)` returns a command (not empty).
   `mps_mcp_print_node` on it (`PLAIN TEXT` and `JSON`) is the recalled first query:
   `#instances(Ingredient)` without a `where`. Equivalent: a `BLExpression` / `BLCommand` whose
   expression is `InstancesExpression` of Ingredient.

Pass = all three hold.
