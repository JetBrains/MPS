# S6 done criteria (observer)

Fixture: recipes-full.tar.gz (passing S1 project with sample Recipe/Cookbook roots kept).
1. Generator module `mcp.study.recipes#...` exists with a root mapping rule for Recipe.
2. `<project>/solutions/mcp.study.kitchen/source_gen/mcp/study/generated/*.java` (the
   `recipes-full` layout; the language is under `<project>/languages/mcp.study.recipes/`): one file
   per Recipe root, each containing `PORTIONS` and `steps()` (grep).
3. Behavior model: `describe` and `describe2` methods on Recipe; check_root_node_problems: 0 errors.
4. `mps_mcp_check_root_node_problems` on the samples model roots: 0 errors.
Pass = all four hold.
