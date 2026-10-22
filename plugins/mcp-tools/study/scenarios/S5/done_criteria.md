# S5 done criteria (observer, read-only, projectPath = run project dir)

Fixture: recipes-broken.tar.gz (recipes-full with the 12 injected problems in fixtures/PROBLEMS.md).
1. `mps_mcp_check_root_node_problems` on every root of the samples model: 0 errors.
2. Root count unchanged versus the fixture unless the transcript states a root was unrecoverable.
3. For each injected problem P1–P12 in PROBLEMS.md, confirm the node still exists (or its removal
   is justified) and the problem is gone (`mps_mcp_print_node` on the node).
4. Editorial moves (node identity; ids from the "Editorial moves (criterion 4)" table in
   PROBLEMS.md, repeated here). Read with `mps_mcp_print_node` `format: "JSON"` on the roots
   `Weeknight Basics` (12157282221949781), `Pancakes` (12157282221949763) and `Crepes`
   (12157282221949753); each child's `reference` ends in its node id.
   a. `Weeknight Basics.recipes[0]` is node 12157282221949784 (the fixture's recipes[2]) and
      targets Omelette; the Crepes entry 12157282221949782 and the Pancakes entry
      12157282221949783 are still present, in that relative order, after it. P3's Tortilla entry
      7418977324270787580 may be gone or repointed; the Omelette entry ends at index 0 whether
      P3 was repaired before or after the move. A RecipeRef whose target was swapped instead of
      moved fails 4a.
   b. `Pancakes.steps` has 4 children, in order: Mix 12157282221949765, then the rest step
      12157282221949759 (the fixture's `Crepes.steps[1]`, text "Let the batter rest in the
      fridge" and 30 min unchanged), then Ladle 12157282221949769, then Flip 12157282221949770.
      `Crepes.steps` has 2 children, Whisk 12157282221949755 then Fry 12157282221949760 (Whisk's
      Flour/Milk/Egg uses still resolve), and no longer contains 12157282221949759.
Pass = all four hold.

Process signal (record, not part of pass), from the call log and transcript: which
`alter_nodes` operation did each move (MOVE_CHILD, a same-parent MOVE_NODE_TO_PARENT, or
something else); the number of rejected or retried move calls; whether the worker printed the
roots before moving; whether it relied on `details.inferredParameters`.
