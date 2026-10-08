# Reading the MPS IDE log (idea.log)

## Why

Many failures never reach an MCP response envelope. Node factories that catch their own
exceptions, migration scripts, lightweight-DSL (`AutoInitDSLClass`) initializers, behavior
methods called from editor or checking code, and regressions inside the MCP tools themselves are
often swallowed and only logged. When a tool answers `ok: true` but the effect is missing, or a
skill says an error "surfaces only in idea.log", the IDE log is the evidence.

## Read it with `mps_mcp_read_ide_log`

One call, no path needed. It reads the IDE's own log even for a standalone MPS whose log lies
outside every project root, follows rotation, and is read-only. It returns parsed records
(`{ts, level, category, message, stackTrace?}`, in file order, which is chronological up to a
few milliseconds of thread skew) plus `levelCounts`, `filesRead`,
`truncatedByTail`, and the log's `logFile` / `logDirectory`.

- `sinceMinutes` (>= 1; omit for no bound) / `since`: time bound (the later wins); `since` takes ISO-8601
  (`2026-10-08T14:05:00`) or the log's own `2026-10-08 14:05:00[,SSS]`.
- `minLevel`: `INFO` (default), `WARN`, `ERROR`/`SEVERE` (same rank), or `TRACE`/`DEBUG`/`FINE`.
- `grep`: Java regex, matched against the first line and every stack-trace line.
- `tailLines`: records (not physical lines) to return after filtering, 1..5000, default 200.
- `includeStackTraces=false` drops `stackTrace`; `maxInlineBytes` moves a large result to a temp
  file whose path is in `data`, with the summary repeated in `details`.

### Verify a write tool call

1. Call the write tool.
2. Right after it, read the call window:

   ```json
   {"tool": "mps_mcp_read_ide_log", "sinceMinutes": 2, "minLevel": "WARN"}
   {"tool": "mps_mcp_read_ide_log", "sinceMinutes": 2, "minLevel": "WARN", "grep": "MyConcept|my\\.model"}
   ```

3. A clean envelope plus empty `records` (or `levelCounts` without `WARN`/`SEVERE`) is the verdict.
   A `WARN`/`SEVERE` record that names the tool, concept, model, or language you touched means
   the call did not fully succeed, whatever the envelope said; unrelated background noise
   (indexing, VFS, other plugins) is common and can be ignored.

## Fallback for older servers without the tool

### Locate it

1. Call `mps_mcp_list_open_projects` and read the top-level `logDirectory` (absolute) and
   `logFile` (`<logDirectory>/idea.log`, the live file). They are IDE-wide, not per project, and
   are omitted when the IDE cannot report them.
2. On a server without those fields either, derive the directory from the running MPS JVM's
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

### Read the file

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

### Rotation

At 10 MB the log rolls over: `idea.log` is renamed to `idea.1.log` (the newest rotated file),
older ones shift to `idea.2.log`, … `idea.N.log`, all in the same directory. If the window you
need starts before the first line of `idea.log`, continue in `idea.1.log`, then `idea.2.log`.
A bare `tail idea.log` right after a rotation shows almost nothing of the earlier window.
`mps_mcp_read_ide_log` does this walk itself.

`idea.log` is not truncated when the IDE starts: until the next rotation it also holds the end
of the previous session. The uptime column (`[ms]`) resets to a small number at the new start,
and a `sinceMinutes` / `since` bound keeps the previous session out of the window.

### Verify a write tool call by hand

1. Before the call, note the current time or the last line number of `idea.log`
   (`wc -l < "<logFile>"`).
2. Call the tool.
3. Read only the lines after that mark and look for `WARN`, `ERROR`, or `SEVERE` entries, and for
   the tool name or the concept/model you touched:

   ```bash
   tail -n +<mark+1> "<logFile>" | grep -n -E ' (WARN|ERROR|SEVERE) - |<tool name>'
   ```

   If the line count dropped below the mark, the log rotated: read the tail of `idea.1.log` too.
4. Judge the window as in the tool recipe above.

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
