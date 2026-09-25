# S8 done criteria (observer)

Fixture: statechart.tar.gz (Projectxx5 snapshot).
1. `.agents/skills/statechart-dsl/SKILL.md` exists with frontmatter and references files per the
   `mps-dsl-memory` skill layout.
2. The skill names all four concepts (StateChart, State, Transition, Event) with their
   properties/children/references correctly (spot-check against `mps_mcp_get_concept_details`).
3. At least one sample node reference and one JSON blueprint are present and refer to real nodes /
   valid concept FQNs (spot-check one reference with `mps_mcp_print_node`).
4. No MPS model was modified: `mps_mcp_check_root_node_problems` and a `git status`-style
   comparison of the project dir against the fixture show only the new skill files.
Pass = all four hold.
