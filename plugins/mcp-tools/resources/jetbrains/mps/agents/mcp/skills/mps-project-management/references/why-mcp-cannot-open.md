# Why MCP cannot open a project on the welcome screen

## The two rejection texts

With MPS running and **no project open**, every `mps_mcp_*` call fails in the IntelliJ MCP server *before* the MPS tool body runs.

**No / empty `projectPath`:**

```text
Unable to determine the target project for the current MCP tool call.
Currently open projects: {"projects":[]}
```

**`projectPath` set to a real directory that is not an open project:**

```text
`projectPath`=`/path/to/checkout` doesn't correspond to any open project.
Currently open projects: {"projects":[]}
```

Both include `"projects":[]`. That is the welcome-screen signature. A non-empty list means a project *is* open and you passed a path outside it — pick one of the listed paths instead of using this skill.

`mps_mcp_list_open_projects` is written to return an empty list, but it never runs: the same pre-dispatch gate rejects it.

## What the platform actually requires

All of this lives in the IntelliJ `mcp-server` plugin, not in MPS `mcp-tools`.

1. `McpSessionHandler` resolves a `Project` before `mcpTool.call(...)`. There is no per-tool opt-out.
2. Resolution only walks `ProjectManager.openProjects`. A path that exists on disk but is not open is never imported.
3. Every tool schema gets an implicit `projectPath` argument even when the Kotlin method does not declare it.

So an "open project" MCP tool added in `plugins/mcp-tools` would be **listed** (`tools/list` works with zero projects) and **never executed** on the welcome screen.

## What this skill does instead

Use the IDE's existing single-instance CLI:

- Start (or re-start) MPS with the **same** `idea.paths.selector` / config / system directories.
- Pass the project directory as a **positional argument**.
- The second process hits `DirectoryLock`, forwards cwd+args to the first instance's `CommandLineProcessor`, and exits.
- The first instance runs `ProjectUtil.openOrImportAsync`.

After that, `findMostRelevantProject` can match the path and MCP dispatch succeeds.

## What this skill does not do

- It does not start the MCP server. If `mps_mcp_*` tools are missing entirely, MPS is not running or the MCP plugin is disabled — start MPS (with a project, using this skill) and enable the server.
- It does not replace `projectPath` once a project *is* open. After activation, pass the opened project's base directory on every call.
- Headless `McpServerHeadlessStarter.loadProject()` opens a project *before* the server starts. That is not available as a GUI-instance tool.
