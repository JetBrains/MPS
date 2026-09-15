# S5 fixture: injected problems (recipes-broken.tar.gz)

Built from `recipes.tar.gz` (a passing S1 project) by the observer with `mps_mcp_update_node` /
`mps_mcp_alter_nodes`. Twelve problems across the three checker families the study names
(dangling references, missing required children, invalid property values). Fill the node column
after injection; verify with `mps_mcp_check_root_node_problems` that the model reports ≥ 12 errors.

| # | Family | Injection | Node (reference) | Expected checker message |
|---|--------|-----------|------------------|--------------------------|
| P1 | dangling ref | Recipe A `seeAlso` → deleted Recipe root | | unresolved reference |
| P2 | dangling ref | Step `uses` → deleted Ingredient | | unresolved reference |
| P3 | dangling ref | Cookbook entry → deleted Recipe | | unresolved reference |
| P4 | dangling ref | Recipe B `seeAlso` → itself | | NOTE: in the recipes fixture the self-reference rule is a referent *scope* (filters completion), not a validator — a self-reference set via MCP may produce **no** error. Verify; if silent, replace P4 with a Step `uses` → Recipe (wrong target concept) which the reference-target checker does flag. |
| P5 | missing child | Recipe C with zero `steps` (cardinality 1..n) | | missing required child |
| P6 | missing child | Cookbook with no recipes (if editor/constraint requires ≥1; else replace by P12b) | | |
| P7 | bad property | Recipe D `servings = 0` | | NOTE: in both S1 builds `servings >= 1` is a property *validator* only; a value set via MCP may not be reported by `check_root_node_problems`. Verify; if silent, keep P7 as a *warning-level* worker-report item and add a wrong-enum / non-integer property injection that the structure checker does flag. |
| P8 | bad property | Recipe E `servings = -3` | | constraint: servings ≥ 1 |
| P9 | bad property | Step with `minutes = 0` | | typesystem warning (not an error: counts toward the worker's report, not the 0-error criterion) |
| P10 | bad property | Ingredient with empty `name` | | INamedConcept blank name (if checked) |
| P11 | bad property | Recipe F with empty `name` | | blank name |
| P12 | dangling ref | Step `uses` → Ingredient in a *different* model that is not imported | | unresolved / scope |

Rules: do not touch more than one thing per node; keep at least one fully valid Recipe, Ingredient
and Cookbook so the worker has a correct example to look at; record the exact tool calls used for
injection in `PROBLEMS.log` next to this file so the fixture can be rebuilt.
