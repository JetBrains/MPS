# S5 fixture: injected problems (recipes-broken.tar.gz)

Built from `recipes-full.tar.gz` (a passing S1 project with sample Recipe/Cookbook roots kept) by the observer with `mps_mcp_update_node` /
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

## Editorial moves (criterion 4)

Not injections: the fixture is unchanged, and the checker reports nothing here. Prompt item 4
(added 2026-10-22, round 39) asks for two moves that keep node identity; `done_criteria.md`
criterion 4 checks them by id. Ids verified live 2026-10-22 against
`fixtures-r6/recipes-broken.tar.gz`, model
`r:38cfdf05-3b6a-4864-b1ba-70dca7ae70da(mcp.study.kitchen.samples)`. Read with
`mps_mcp_print_node` `format: "JSON"`; each child's `reference` ends in its node id.

| Root | Fixture child (index: node) | Node id | Expected after the moves |
|------|-----------------------------|---------|--------------------------|
| Cookbook `Weeknight Basics` | — | 12157282221949781 | `recipes`: Omelette, Crepes, Pancakes (+ Tortilla unless P3 removed it) |
| | recipes[0]: Crepes entry | 12157282221949782 | kept, after Omelette |
| | recipes[1]: Pancakes entry | 12157282221949783 | kept, after Crepes |
| | recipes[2]: Omelette entry (moved) | 12157282221949784 | recipes[0], still targets Omelette |
| | recipes[3]: Tortilla entry (dangling, P3) | 7418977324270787580 | removed or repointed (P3) |
| Recipe `Crepes` | — | 12157282221949753 | `steps`: Whisk, Fry |
| | steps[0]: Whisk "Whisk flour, milk and eggs into a smooth batter" (uses Flour, Milk, Egg) | 12157282221949755 | steps[0], uses still resolve |
| | steps[1]: Rest "Let the batter rest in the fridge" (30 min, uses nothing; moved) | 12157282221949759 | Pancakes.steps[1], text and minutes unchanged |
| | steps[2]: Fry "Fry thin pancakes on both sides" | 12157282221949760 | steps[1] |
| Recipe `Pancakes` | — | 12157282221949763 | `steps`: Mix, Rest, Ladle, Flip |
| | steps[0]: Mix "Mix flour with milk, then fold in the eggs" (uses Flour, Milk, Egg, Butter-dangling = P2) | 12157282221949765 | steps[0] (P2 repaired in its `uses`) |
| | steps[1]: Ladle "Ladle the batter onto a hot buttered pan" | 12157282221949769 | steps[2] |
| | steps[2]: Flip "Flip once bubbles appear on the surface" | 12157282221949770 | steps[3] |
| Ingredients | Flour / Milk / Egg | 12157282221949750 / 12157282221949751 / 12157282221949752 | unchanged |

Interplay with the injections: P3 changes the cookbook's length, not the moved entry's identity;
P1 is on `Crepes.seeAlso`, not `steps`; P2 is inside the Mix step's `uses`, not its id or
position. The reparent is same-model on purpose: a cross-model move brings the `fixReferences` /
incoming-references caveat, which would fight criterion 1.
