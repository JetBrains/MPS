# Installing and refreshing the MPS skill catalog

## What installs it

The `mps-*` skills and the project's `AGENTS.md`/`CLAUDE.md` are installed by the
`mps_mcp_initialize_project_for_agents` MCP tool. It installs into a `targetDirectory` — normally
the **repository / workspace root** (the folder containing `.git`), which may be an *ancestor* of
the MPS project directory when the project sits in a subdirectory (e.g. `tools/BigProject`).

- Leave `targetDirectory` empty: the tool derives the root from the open project's enclosing VCS
  folder.
- Still pass the project's base directory as `projectPath`, like every other `mps_mcp_*` call.
  `targetDirectory` and `projectPath` are different arguments — an ancestor is valid for the first
  and rejected for the second.
- Existing `AGENTS.md`/`CLAUDE.md` are never overwritten; the tool reports them in
  `guideFilesAlreadyPresent` and returns the current template as `agentsFileText`.
- The tool aborts, installing nothing, when an incoming skill name already exists under either
  skills directory.

## Version stamps

A successful install writes the same `MPS_MCP_SKILL_VERSION.txt` (`version`, `build`, `eap`) into
both `.agents/skills/` and `.claude/skills/`. Compare its `build` with top-level `mpsBuild` from
`mps_mcp_list_open_projects`; never call the initializer to learn the version — it writes files,
and a run that aborts on colliding skill folders does not move the stamps. The installed
`AGENTS.md` states the staleness rules.

## Refreshing (only with the user's approval)

1. Delete every `mps-*` skill folder from both `.agents/skills/` and `.claude/skills/`, so dropped
   or renamed skills do not linger. Keep repository-local skills, such as `bugfix-workflow` and
   project-local `*-dsl` skills.
2. Re-run `mps_mcp_initialize_project_for_agents`. With the collisions gone it succeeds and
   overwrites both stamps.
3. Merge the returned `agentsFileText` into `AGENTS.md`/`CLAUDE.md` by hand: refresh the MPS
   guidance sections to match the template, and preserve project-specific content (the
   "Project-Specific Notes" section and any hand-authored details). Do not overwrite the whole
   file.

The tool's description is the full refresh contract.
