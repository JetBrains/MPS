# Fixtures (regenerate on demand; tarballs are not kept in git)

| fixture | how to regenerate |
|---|---|
| `empty-project` | an empty MPS project (e.g. `~/MPSProjects/ProjectX`) after `mps_mcp_initialize_project_for_agents`; `tar --exclude=.git --exclude='*/.mps/workspace.xml' -czf empty-project.tar.gz <dir>` |
| `statechart` | `~/MPSProjects/Projectxx5` (language `com.example.statechart`, sandbox), same tar command (exclude `classes_gen`, `source_gen*`) |
| `recipes` | the project of a **passing** S1 run, tarred with `classes_gen` included so no rebuild is needed |
| `recipes-broken` | `recipes` + the 12 injections listed in `../scenarios/S5/PROBLEMS.md` |

Scratch copies go to `~/MPSProjects/mcp-study/proj/<run-id>/` (`tar -xzf … --strip-components=1`).
