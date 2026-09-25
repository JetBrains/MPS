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
| `empty-project` | **not a tarball** — synthesized per run: `python3 ../scripts/new_study_project.py --dir ~/MPSProjects/mcp-study/proj/<run-id>`. Descriptor files only (`.mps/modules.xml`, `.mps/.gitignore`, `.mps/migration.xml`), the last derived from the MPS that will open it. No `initialize_project_for_agents` step — the catalog is installed per run |
| `statechart` | `~/MPSProjects/Projectxx5` (language `com.example.statechart`, sandbox), same tar command (also exclude `classes_gen`, `source_gen*`) |
| `recipes` | the project of a **passing** S1 run, tarred with `classes_gen` included so no rebuild is needed, **and with the S1 sample `Recipe` and `Cookbook` roots deleted** from `mcp.study.kitchen.samples` (delete them through MPS MCP, never by editing `.mps` as text). **This deletion is for S3 only**: S3's prompt asks for "exactly 40 Recipe roots plus the Cookbook"; leaving the S1 samples in place makes that literally unsatisfiable (round-2 §5.2). Keep the 3 `Ingredient` roots — the CSV has no ingredient data, so they are inert |
| `recipes-full` | the same passing-S1 project **with the S1 sample Recipe and Cookbook roots kept** (3 Ingredients, 3 Recipes, 1 Cookbook). Required for S5 and S6: both need Recipe roots to exist — S6's criterion 2 is "one Java file per Recipe root", which the stripped `recipes` fixture would make vacuous |
| `recipes-broken` | `recipes-full` + the 12 injections listed in `../scenarios/S5/PROBLEMS.md` |

Verify before use: `tar -tzf <fixture>.tar.gz | grep -E '(^|/)(\.claude|\.agents|AGENTS\.md|CLAUDE\.md)'`
must print nothing. The check applies to the module-bearing tarballs only: a synthesized
`empty-project` writes three descriptor files and cannot carry a doc surface at all.

**A round that compares S1 against the 2026-09 baseline must say which form of `empty-project` it
used.** Rounds 1-2 ran S1 on a tarball of `~/MPSProjects/ProjectX`; the synthesized tree is that
project minus the doc surface the fixture was already required to exclude, and changing it is the
non-frozen side of the scenario (study lesson 25), but it is still a changed input.
If synthesis fails, an existing empty MPS project may be substituted — nothing in the study depends
on one existing.

Scratch copies go to `~/MPSProjects/mcp-study/proj/<run-id>/` (`tar -xzf … --strip-components=1`).
The study observer opens that copy via CLI (`mps-project-management`) and closes it with
`mps_mcp_close_project` — announce the absolute paths to the user; do not ask them to open or close.
