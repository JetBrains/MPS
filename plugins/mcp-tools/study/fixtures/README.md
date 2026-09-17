# Fixtures (regenerate on demand; tarballs are not kept in git)

**A fixture must not contain the agent doc surface.** No `.agents/skills/`, no `.claude/skills/`,
no `AGENTS.md`, no `CLAUDE.md`. A tarball is a point-in-time copy, so anything it carries is what
every later round would measure, however far the bundled catalog has moved since (study lesson 20,
defect D16). `run_worker.sh` installs the live catalog into each run's project immediately before
launching the worker, via `scripts/install_skills.py` → `mps_mcp_initialize_project_for_agents`,
and records the resulting `skillsSha256` in the run meta.

Standard exclusions for every `tar` below:

```bash
TAR_EXCLUDES=(--exclude=.git --exclude='*/.mps/workspace.xml'
              --exclude=.agents --exclude=.claude --exclude=AGENTS.md --exclude=CLAUDE.md)
```

| fixture | how to regenerate |
|---|---|
| `empty-project` | an empty MPS project (e.g. `~/MPSProjects/ProjectX`); `tar "${TAR_EXCLUDES[@]}" -czf empty-project.tar.gz <dir>`. No `initialize_project_for_agents` step — the catalog is installed per run |
| `statechart` | `~/MPSProjects/Projectxx5` (language `com.example.statechart`, sandbox), same tar command (also exclude `classes_gen`, `source_gen*`) |
| `recipes` | the project of a **passing** S1 run, tarred with `classes_gen` included so no rebuild is needed, **and with the S1 sample `Recipe` and `Cookbook` roots deleted** from `mcp.study.kitchen.samples` (delete them through MPS MCP, never by editing `.mps` as text). S3's prompt asks for "exactly 40 Recipe roots plus the Cookbook"; leaving the S1 samples in place makes that literally unsatisfiable and blocks the run (round-2 §5.2). Keep the 3 `Ingredient` roots — the CSV has no ingredient data, so they are inert |
| `recipes-broken` | `recipes` + the 12 injections listed in `../scenarios/S5/PROBLEMS.md` |

Verify before use: `tar -tzf <fixture>.tar.gz | grep -E '(^|/)(\.claude|\.agents|AGENTS\.md|CLAUDE\.md)'`
must print nothing.

Scratch copies go to `~/MPSProjects/mcp-study/proj/<run-id>/` (`tar -xzf … --strip-components=1`).
