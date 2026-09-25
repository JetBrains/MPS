# S5 done criteria (observer, read-only, projectPath = run project dir)

Fixture: recipes-broken.tar.gz (recipes-full with the 12 injected problems in fixtures/PROBLEMS.md).
1. `mps_mcp_check_root_node_problems` on every root of the samples model: 0 errors.
2. Root count unchanged versus the fixture unless the transcript states a root was unrecoverable.
3. For each entry in PROBLEMS.md, confirm the node still exists (or its removal is justified) and
   the problem is gone (`mps_mcp_print_node` on the node).
Pass = all three hold.
