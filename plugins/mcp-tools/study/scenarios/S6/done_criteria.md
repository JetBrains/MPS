# S6 done criteria (observer)

Fixture: recipes.tar.gz (passing S1 project).
1. Generator module `mcp.study.recipes#...` exists with a root mapping rule for Recipe.
2. `<project>/mcp.study.kitchen/source_gen/mcp/study/generated/*.java`: one file per Recipe root,
   each containing `PORTIONS` and `steps()` (grep).
3. Behavior model: `describe` and `describe2` methods on Recipe; check_root_node_problems: 0 errors.
4. `mps_mcp_check_root_node_problems` on the samples model roots: 0 errors.
Pass = all four hold.
