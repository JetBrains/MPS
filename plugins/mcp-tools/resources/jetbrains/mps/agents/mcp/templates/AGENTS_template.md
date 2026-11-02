# Agents Guide for This MPS Project

This is a JetBrains MPS language project: its source of truth lives in MPS models, language definitions, and generators. MCP integration with MPS is experimental — expect surprises and report issues to the JetBrains MPS team.

**Load the `mps-mcp-workflow` skill at the start of every MPS session.** If your agent runtime does not explicitly confirm that project skills are auto-loaded, read `.agents/skills/mps-mcp-workflow/SKILL.md` before changing MPS artifacts. It holds the critical directives, the tool workflow, and the index of companion skills.

## ⚠️ WARNING: Never Read Raw MPS Model Files

Do not open, parse, or edit `.mps`, `.mpl`, or other MPS XML files as text: the serialized format is opaque, gives no semantic insight, and hand-edits corrupt models. Use the MPS MCP tools (`mps_mcp_*`) instead. If the MPS MCP server is not connected, ask the user to start MPS and enable it; a connected server whose tools were filtered or deferred is not this case — restore the full toolset as described below.

## ⚠️ Keep the Full MPS MCP Toolset

The `mps_mcp_*` tools are how this project's code is read and edited, not an optional add-on the way MCP tools are for plain-text code. Which of them a session will need cannot be guessed from the opening request — inspection, validation, generation, and editing tools get pulled in as the work unfolds — so a relevance filter that keeps only an opening subset will strand the session.

- Do not reduce, defer, hide, or capability-filter the MPS MCP catalog. Keep every `mps_mcp_*` tool available for the whole session, from the first turn, including tools that do not look relevant yet. Pruning unrelated servers is fine; this rule is only about the MPS MCP server.
- If the host has already filtered that server (Junie: `[partially available]`, `[installed, but unavailable]`, or listed under servers that can be enabled), restore the entire server immediately, before any other work. In Junie, call `enable_mcp` on the MPS MCP server — the one that exposes `mps_mcp_*`, or, if it was fully filtered, the server named like `mps-mcp` rather than an IDE server. If that call is not available, ask the user to enable the full server. Do not guess among unrelated servers.
- A filtered tool is not unavailable. Do not continue on a reduced subset, and do not fall back to file tools or raw `.mps` XML in its place. Only when the server is not connected at all, ask the user to start MPS and enable it.

## Tool Selection

Use MPS MCP tools for everything model-related: modules, models, nodes, every language aspect, navigation, editing, validation, generation, and build. File-based tools (Read, Grep, Glob, or `cat` and `grep` when your runtime has no such tools) are fine for reading generated output, configuration that is not driven by MPS models, and plain-text documentation.

In zsh (the macOS default) an unquoted glob that matches no file is an error. That command does not run and prints only `no matches found: …` (a `for` over such a glob skips the rest of its block), while the rest of a combined command still prints, so the miss is easy to overlook. Quote patterns meant for the command (`grep -rn PATTERN --include='*.md' DIR`, `find DIR -name '*.jar'`), and list files that may not exist with `find`, not with a bare `DIR/*.jar`.

If the MPS MCP server is not connected (not merely filtered or deferred — restore that first) and the task needs model-aware editing, do not hand-edit `.mps` files as plain XML unless the user explicitly asks for that; explain the limitation and ask whether to proceed with a workaround or wait for MPS-aware tooling.

If MCP calls fail session-wide with `java.net.URISyntaxException: Illegal character in path`, an open project's absolute path contains a space — a platform bug in every JetBrains MCP server. Do not retry with an encoded or escaped path; it cannot help. Ask the user to move that project to a space-free path and reopen it; until then, read sources with file tools and ask the user to build and test in the IDE. `.agents/skills/mps-mcp-workflow/references/mcp-server-troubleshooting.md` has the details.

## Generated Code Is Read-Only

`source_gen/`, `source_gen_append/`, and `classes_gen/` are recreated on every Make/Rebuild — never edit them. Reading them is fine to see what a generator produces, to trace a runtime error back to its generator, or to confirm that a model change took effect. Fix problems in the MPS model, language, or generator.

## Rules for MPS Work

- Before editing a language aspect (typesystem, constraints, behavior, editor, generator, structure), also load its `mps-aspect-*` skill; `mps-mcp-workflow` names each one.
- Before creating or editing models in a language that has a project-local DSL skill (`.agents/skills/<dsl-name>-dsl/` or `.claude/skills/<dsl-name>-dsl/`), load it. Refresh it with `mps-dsl-memory` after discovering new concept details, sandbox examples, JSON blueprints, or non-obvious constraints.
- Pass `projectPath` on **every** `mps_mcp_*` call, starting with the first one: the open MPS project's base directory — a path at or inside it, never an ancestor such as the repository root, which matters when the MPS project lives in a subdirectory (e.g. `tools/BigProject`). If you do not know it yet, pass the session's current working directory on the first call; if that is rejected, take the path from the rejection message, which lists the open projects, and reuse it for the session.
- When several MPS projects are open and it is not obvious from the request or the current editor focus which one a query or change targets, ask the user rather than guessing — all open projects share one module repository, so the wrong choice silently returns the wrong nodes or gets a cross-project write refused.

## Skills

Skills live in `.agents/skills/<skill-name>/SKILL.md` or `.claude/skills/<skill-name>/SKILL.md`; start with `mps-mcp-workflow` for the overview and a directory of every other skill. The `mps-*` skills and this guide were installed by the `mps_mcp_initialize_project_for_agents` MCP tool; `.agents/skills/mps-mcp-workflow/references/catalog-install-and-refresh.md` covers re-installing and refreshing them.

Before substantial MPS work, compare the `build` line in `.agents/skills/MPS_MCP_SKILL_VERSION.txt` and `.claude/skills/MPS_MCP_SKILL_VERSION.txt` with top-level `mpsBuild` from `mps_mcp_list_open_projects`. Do not call the initializer to learn the version — it writes files.

- Equal `build` → continue. Mention `version` only when talking to the user.
- Different `build` → say the skills were installed from version/build X and this MPS is version/build Y, then ask before refreshing. Do not refresh silently, and do not block ordinary MPS work.
- Missing file → legacy install. Say so once. Absence is not proven staleness.
- The two stamps disagree, or only one exists → inconsistent. Offer one refresh of both trees.
- `mpsBuild` absent → the running IDE is too old to report its identity. Do not judge staleness.

A refresh needs the user's approval, deletes only `mps-*` skill folders (project-local `*-dsl` and other skills stay), and preserves the Project-Specific Notes below when the new guide text is merged into this file.

---

## Project-Specific Notes

<!-- Replace this comment with details specific to this project, for example:
  - key module and language names
  - entry-point models or root nodes an agent should know about
  - domain or business context useful for understanding the models
  - project conventions (naming, structure, generator pipeline)
  - hand-authored JVM or build code (runtime libraries, Gradle scripts, test harnesses) and which tools to use for it
  - anything else that helps an agent orient itself quickly in this codebase
-->
