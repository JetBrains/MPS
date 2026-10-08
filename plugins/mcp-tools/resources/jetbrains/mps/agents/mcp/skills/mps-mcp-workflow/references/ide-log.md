# Reading the MPS IDE log (idea.log)

## Why

Many failures never reach an MCP response envelope. Node factories that catch their own
exceptions, migration scripts, lightweight-DSL (`AutoInitDSLClass`) initializers, behavior
methods called from editor or checking code, and regressions inside the MCP tools themselves are
often swallowed and only logged. When a tool answers `ok: true` but the effect is missing, or a
skill says an error "surfaces only in idea.log", the IDE log is the evidence.

## Locate it

1. Call `mps_mcp_list_open_projects` and read the top-level `logDirectory` (absolute) and
   `logFile` (`<logDirectory>/idea.log`, the live file). They are IDE-wide, not per project, and
   are reported from this build on; they are omitted when the IDE cannot report them.
2. On an older server without those fields, derive the directory from the running MPS JVM's
   command line (prefer `jcmd <pid> VM.command_line` over `ps`):
   - `-Didea.log.path=<dir>` wins: the log is `<dir>/idea.log`. Launching from sources through
     the `MPS` run configuration sets it to `<checkout>/log`, so the log is
     `<checkout>/log/idea.log`.
   - Otherwise take `-Didea.paths.selector=<selector>` (see `references/detect-source-vs-standalone.md` in the `mps-project-management` skill root after loading that companion skill from the same origin)
     and map it to the OS default:

     | OS | Log file |
     |----|----------|
     | macOS | `~/Library/Logs/JetBrains/<selector>/idea.log` |
     | Linux | `~/.cache/JetBrains/<selector>/log/idea.log` |
     | Windows | `%LOCALAPPDATA%\JetBrains\<selector>\log\idea.log` |

## Read it

- The MCP `read_file` tool reads the file only when it lies inside a project, library, or SDK
  root (typical for a from-sources launch, whose `<checkout>/log` is inside the checkout). It has
  no tail mode: page with `offset` / `limit` (at most 5000 lines per call), starting at a large
  `offset` and moving back until you reach the window you need.
- Otherwise, use a host shell. The MPS MCP server has no terminal tool, so this needs the agent
  host's own shell; if you have none, ask the user for the relevant lines.

  ```bash
  tail -n 200 "<logFile>"
  grep -n -E ' (WARN|ERROR|SEVERE) - ' "<logFile>" | tail -n 50
  ```

## Rotation

At 10 MB the log rolls over: `idea.log` is renamed to `idea.1.log` (the newest rotated file),
older ones shift to `idea.2.log`, … `idea.N.log`, all in the same directory. If the window you
need starts before the first line of `idea.log`, continue in `idea.1.log`, then `idea.2.log`.
A bare `tail idea.log` right after a rotation shows almost nothing of the earlier window.

## Verify a write tool call

1. Before the call, note the current time or the last line number of `idea.log`
   (`wc -l < "<logFile>"`).
2. Call the tool.
3. Read only the lines after that mark and look for `WARN`, `ERROR`, or `SEVERE` entries, and for
   the tool name or the concept/model you touched:

   ```bash
   tail -n +<mark+1> "<logFile>" | grep -n -E ' (WARN|ERROR|SEVERE) - |<tool name>'
   ```

   If the line count dropped below the mark, the log rotated: read the tail of `idea.1.log` too.
4. A clean envelope plus a clean log window is the verdict. A `WARN`/`SEVERE` entry in the window
   that names the tool, concept, model, or language you touched means the call did not fully
   succeed, whatever the envelope said; unrelated background noise (indexing, VFS, other
   plugins) is common and can be ignored.

## Line format

```
yyyy-MM-dd HH:mm:ss,SSS [uptime-ms] LEVEL - category - message
```

`uptime-ms` is milliseconds since IDE start; `LEVEL` is right-aligned (`   INFO`, `   WARN`,
` SEVERE`). Errors logged through the platform logger appear as `SEVERE`, with the stack trace
and IDE/JDK details on the following lines. Categories of platform classes are abbreviated
(`#c.i.…` for `com.intellij.…`); MPS loggers usually print the full class name
(`jetbrains.mps.…`), so grep for the MPS package or class you suspect. Example:

```
2026-10-08 06:29:22,397 [ 316236] SEVERE - jetbrains.mps.ide.editor.EditorExtensionRegistryImpl - The editor extension left unregistered: …
```
