---
name: mps-project-management
description: Open an MPS project in a running or freshly started MPS instance when MCP tools fail because no project is open (welcome screen), or close an open project with `mps_mcp_close_project`. Covers MPS built from sources vs a standalone install, detecting which case you are in, macOS/Linux/Windows CLI activation, and close timeout / force-close recovery. Use when `mps_mcp_*` is rejected with empty `Currently open projects`, when MPS shows the welcome screen, when an agent must open a project via the command line, or when closing a project.
type: reference
---

# Opening and closing an MPS project for MCP

## Loading companion skills

Companion names in this skill are lazy dependencies: load only those relevant to the current task. If this skill came from an MCP server, use the host's skill loader to resolve the companion's unique discovered entry URI on the same host-assigned originating server. If the host has no server-backed skill loader, stop and report that limitation; do not silently fall back to a filesystem copy. If this skill came from a filesystem catalog, load the named sibling from that same catalog at `<skills-root>/<skill-name>/SKILL.md`, even if remote skill loaders are also available. Do not invent a tool name or server endpoint.

There is **no MCP tool that can open a project**. The IntelliJ MCP server rejects every tool call — including `mps_mcp_list_open_projects` — *before dispatch* unless some already-open IDE `Project` matches `projectPath`. On the welcome screen that set is empty, so MCP cannot help. The workaround is the platform CLI: pass the project directory to a second MPS process that shares the first instance's config/system directories. `DirectoryLock` activates the running IDE; the second process should exit in a few seconds.

## Critical Directives

- **Empty `Currently open projects: {"projects":[]}` means the welcome screen, not a bad path.** Do not retry MCP with a guessed `projectPath`. Open the project via CLI first.
- **Detect source-vs-standalone before choosing a command.** `open -a MPS.app` will not talk to an MPS started as `jetbrains.mps.Launcher` from a checkout. Reconstructing a JVM command is the wrong move for a standalone `.app` / `mps.sh` / `mps64.exe`.
- **Match `idea.paths.selector` (and any explicit config/system dirs).** `MPS (2nd inst.)` uses a different selector and starts a real second IDE. See `references/detect-source-vs-standalone.md`.
- **Do not split process command lines on spaces.** Classpaths often contain `IntelliJ IDEA.app` or `Program Files`. Prefer `jcmd PID VM.command_line` (or `/proc/PID/cmdline` on Linux). When activating an already-running instance, strip `-agentlib:jdwp` and the IntelliJ `idea_rt.jar` javaagent.
- **Do not write helper scripts or `jcmd` dumps into the checkout.** Use `$TMPDIR` / `%TEMP%` only.
- **A `MODAL_BLOCKED` close is not a closed project.** Ask the user to dismiss the MPS dialog, then retry `mps_mcp_close_project`. Use `force=true` only after a timed-out or cancelled close.

## Workflow

1. Confirm the rejection is the empty-project gate — open `references/why-mcp-cannot-open.md` if the error text is unfamiliar.
2. Find the running MPS process and classify it (**from sources** vs **standalone**). Open `references/detect-source-vs-standalone.md`. If nothing is running, start MPS with the project path instead of activating.
3. Open the project with the matching recipe in `references/open-via-cli.md`, then the OS file: `references/examples-macos.md`, `references/examples-linux.md`, or `references/examples-windows.md`.
4. The second process must **exit**. A few seconds is normal; if it stays up, you started a new IDE — stop and re-check the selector.
5. Retry `mps_mcp_list_open_projects` with `projectPath` set to the directory you opened. Then use that path on every later `mps_mcp_*` call.

## Closing a project

Use `mps_mcp_close_project` to close the project selected by the host's `projectPath`. Opening still has no MCP tool — after the last project closes, MPS typically returns to the Welcome screen and you must reopen via CLI (the workflow above).

- **Select the target project.** The path must be at or inside that open project, never an ancestor such as the repository root. When several projects are open, call `mps_mcp_list_open_projects` first and pass the intended project's `mpsProjectBaseDirectory` as `projectPath`.
- **A normal close may show dialogs.** It saves documents and runs can-close checks. Save / confirmation dialogs block the call until they are dismissed.
- **Do not wait past 20 seconds.** If the tool returns `ok:false` with `code: MODAL_BLOCKED`, a modal dialog is likely open in MPS (Save, confirmation, Find Usages, Search, etc.). Ask the user to close that dialog manually, then retry. Do not assume the project closed.
- **Prefer `force=false`.** Pass `force=true` only after a previous close timed out or was cancelled on a confirmation dialog. Force-close skips the save/can-close dialogs this close would show (unsaved editor changes are discarded) and does not wait for an already-open unrelated modal.

1. If several projects are open, list them and pass the intended `mpsProjectBaseDirectory` as `projectPath`.
2. Call `mps_mcp_close_project` with the default `force=false`.
3. On `{ok:true, data.closed:true}`, stop. Closing the last project is expected to leave the Welcome screen.
4. If the close was cancelled (the project remains open): ask the user to complete the dialog, or retry with `force=true`.
5. If `code: MODAL_BLOCKED`: ask the user to close the blocking dialog, then retry. Use `force=true` only to skip save/confirmation dialogs that this close itself would show.

## Related Skills

- `mps-mcp-workflow` — once a project is open, this is the entry point for model and language work.
- `mps-run-configurations` — running DSL roots *inside* an already-open project, not launching MPS itself.

## Reference Index

- Open `references/why-mcp-cannot-open.md` when diagnosing welcome-screen MCP rejections.
- Open `references/detect-source-vs-standalone.md` to classify the running process.
- Open `references/open-via-cli.md` for the activation protocol (what to keep, what to strip, success criteria).
- Open `references/examples-macos.md`, `references/examples-linux.md`, or `references/examples-windows.md` for copy-paste commands.
