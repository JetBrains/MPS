# `mps_mcp_clear_console` — plan

Status: plan, 2026-10-23. No code yet. A follow-up to `console-model-imports-plan.md`. Paths are
relative to `plugins/mcp-tools/` unless they start with `plugins/mps-console/`.

## Problem

No MCP tool can do what the Console toolbar's **Clear** does. The console toolset has insert,
history, recall and run, and nothing else. The gap showed up in the live run of
`test_scenarios/mcp-verification-scenario-console-imports.md`, which needed a human for every Clear.
It also matters beyond tests:

- **History decides what console Java resolves.** Restoring or executing a command derives model
  imports and module dependencies from its resolved references. An agent that wants to know what
  its own code needs, or to drop imports it removed, has to clear the history first: the next
  execute or paste re-derives every import that the history still references (`console-imports.md`).
- **No substitute exists.**
  - `mps_mcp_reload_all` recreates the console model, but it restores the history as it was
    loaded when the project opened, so it can even undo a Clear.
  - `#callAction` would need the console tab in its data context, and it would leave itself in
    the input and the history.
  - Removing history nodes with the node tools is refused: they edit only the current input.
- **No clean way to empty the input.** An agent can replace the input or run it, which moves it
  into history.

The other gaps the live run raised were checked and need no tool:

- **Removing the console module's dependencies.** Not needed: a leftover dependency only makes
  more names resolve, and the UI never removes one either. Documented in `console-imports.md`.
- **Undo for agents.** Not console-specific. No MCP write tool offers undo; they offer explicit
  inverses. An agent-side undo would hit the undo stack the user shares, and could revert the
  user's own edits.

## How Clear works today

`ConsoleClear_Action` (`plugins/mps-console/source_gen/jetbrains/mps/console/actions/`) runs with
`ActionAccess.UNDO_PROJECT`. It is enabled only for a `DialogConsoleTab`, and calls
`DialogConsoleTab.clear()` (`plugins/mps-console/source_gen/jetbrains/mps/console/tool/DialogConsoleTab.java`):

1. It remembers the current input command (`ConsoleRoot.commandHolder.command`).
2. `loadHistory(null)` deletes every root of the console model, creates a new `ConsoleRoot` with an
   empty `History`, a new `CommandHolder` and a new cursor, then calls
   `TemporaryModels.addMissingImports`.
3. It puts the remembered command back into the new holder.
4. `editNode(myRoot)` and `validateImports()` follow. The second clears devkits, used languages and
   model imports, re-adds the built-in devkits and re-derives from what is left, that is, the input.
5. `scrollToBottom()`.

Consequences for the tool:

- The input survives Clear, and so do the imports it references. That is why the live scenario
  asks the human to empty the input first.
- Every node reference into the console except the input command is stale afterwards: the root,
  the holder, every history entry.
- The `TempModule`'s module dependencies stay.
- `clear()` exists only on `DialogConsoleTab`. `ConsoleTool_Tool.getCurrentEditableTab` returns the
  selected tab if it is a dialog tab, otherwise tab 0; tab 0 is the pinned dialog tab, but the
  tool must not rely on it.

## Plan

### Step 1 — the tool

Add `mps_mcp_clear_console` to `JetBrainsMPSConsoleMcpToolset`. Model it on
`mps_mcp_run_console_command`:

- `withModalTimeoutOnEdt`, then `resolveConsoleEditableTab`.
- Refuse any tab that is not a `DialogConsoleTab`, by class name through reflection, as the other
  console helpers do. Error code `INVALID_REQUEST`.
- Run under `mpsProject.modelAccess.executeCommand`, mirroring the action's `UNDO_PROJECT` access.

Parameters:

- `clearInput: Boolean = false`. When true, detach the current input command first:
  `CommandHolder.command` = null, in the same command. Clear then re-derives from nothing, and the
  model keeps only the built-in devkits. When false, Clear behaves exactly like the toolbar button.
- `dryRun: Boolean = false`. Report what would be removed, change nothing.

Response `data`:

- `historyEntriesRemoved`: the number of history `CommandHolder`s before Clear. Count responses
  separately, as `responsesRemoved`, if that is cheap; `get_console_history` already tells them
  apart.
- `inputKept`: true when an input command was present and kept.
- `dryRun` on a dry run.

Warnings, always:

- The console module's module dependencies stay, so names that resolved through them still
  resolve.
- References into the console history are now invalid; only the input command keeps its
  reference.
- A plugin reload (`mps_mcp_reload_all`) restores the history as loaded when the project opened.

The description must say plainly that this **deletes the user's console history**. It names
`get_console_history` as the way to look first, and `dryRun` as the way to check. Phrase it the
way `run_console_command` phrases its side effects.

Open point, decided by the live check (Step 3): whether the user can undo an MCP Clear with Ctrl+Z.
The toolbar action is registered as undoable (`UNDO_PROJECT`). If an MCP Clear is undoable too, say
so in the description. If it is not, say that the history cannot be recovered.

### Step 2 — documentation

- `mps-console/SKILL.md`: one more entry in the "Ways this skill gets used" list.
- `mps-console/references/console-imports.md`, "Lifetime": replace "No MCP tool clears the console:
  ask the user to click Clear in the Console toolbar" with the tool, and recommend
  `clearInput: true` for a clean resolution check.
- `mps-mcp-workflow/references/mcp-tools-index.md`, Console section: one line. The file is at its
  allow-listed byte cap (`SkillReferenceLayoutTest`), so shorten another Console line by the same
  amount.
- `test_scenarios/mcp-verification-scenario-console-imports.md`: replace the HUMAN Clear in V7 with
  the tool. The V6 undo step stays human.
- `test_scenarios/MPS_MCP_FULL_TEST_SCENARIO/12_console.md` and its `COVERAGE_MATRIX.md`: add a
  step and a row.
- Edit the skill blueprints under `resources/jetbrains/mps/agents/mcp/skills/`, then copy each
  changed skill folder to `.agents/skills/` and `.claude/skills/` and run
  `scripts/validate_skill_catalog.py`.

### Step 3 — tests and verification

- **Headless.** `JetBrainsMPSConsoleMcpToolsetIntegrationTest`, already registered in
  `McpWorkspaceToolsTestSuite`. Add the console-unavailable branch (`ok=false`, like the existing
  console tests) and a `callThroughBridge` check that both parameters bind. The fixture has no
  Console tool window, so the happy path is live only.
- **Gate.** `McpWorkspaceToolsTestSuite` + `McpContractAndSkillsTestSuite` (a new tool and new
  `@McpDescription`s), then the umbrella before committing.
- **Live**, a new section in the console-imports scenario:
  1. With history present, `dryRun`: the count matches `get_console_history`, nothing changes.
  2. `clearInput: false`: history empty, input kept, `historyEntriesRemoved` correct.
  3. With an import the history referenced and the input did not:
     `mps_mcp_model_dependency(... "DELETE")` afterwards returns `removed: false`.
  4. `clearInput: true`: input empty. A probe insert of a class that only the history reached
     still resolves through the module dependency, which is expected and documented.
  5. HUMAN: Ctrl+Z a few times, then `get_console_history`. Record whether the history came back
     (the open point in Step 1).
  6. Select an output tab (run `#showGenPlan` or execute a command that opens one), then call the
     tool: it must clear the dialog tab or refuse, never act on the output tab.
  7. `mps_mcp_read_ide_log(minLevel: "WARN")` for the run window.

## Risks

- **Destructive by design.** The user's history is gone unless Ctrl+Z restores it (open point).
  Mitigations: `dryRun`, a separate tool so permission rules can single it out, and a description
  that says so.
- **Stale references.** An agent holding history references from an earlier
  `get_console_history` gets NOT_FOUND afterwards. This is already documented for every console
  interaction; the warning repeats it.
- **The editor is refreshed by `clear()` itself** (`editNode(myRoot)`). Detaching the input first
  for `clearInput` happens before that, in the same command, so the editor shows an empty input.
  Confirm it live: an editor left on a detached node would be a bug.
