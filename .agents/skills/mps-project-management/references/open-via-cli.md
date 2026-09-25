# CLI protocol: start or activate MPS with a project

MPS does not invent a project-open CLI. `jetbrains.mps.Launcher` forwards `args` to the IntelliJ `Main`; a leftover path is opened via `CommandLineProcessor` → `ProjectUtil.openOrImportAsync`.

Pass the **project directory** (or an `.ipr` / `.mpr` file) as a positional argument. `-p` / `--project` is optional; a bare directory is enough.

## A. MPS is already running (welcome screen) — activate

Goal: a **short-lived** second process that talks to the first over `DirectoryLock` and exits.

1. Classify the process (`detect-source-vs-standalone.md`).
2. Build a command that reuses that instance's selector (and config/system dirs).
3. Append the absolute project path.
4. Run it with a ~90s timeout. Success is **exit 0 in a few seconds**, not a new GUI.
5. Verify with `mps_mcp_list_open_projects`.

### From sources — reconstruct the JVM

Do **not** use `mps.sh` / `open -a` / `mps64.exe`. Reconstruct `java … jetbrains.mps.Launcher <project>`.

Preferred dump: `jcmd <pid> VM.command_line` using the **same JBR** as the process (`jcmd` sits next to `java` in that JBR's `bin/`).

Keep:

- every VM option except the two strips below
- the full classpath as **one** token (it often contains spaces)
- main class: the **first token** of jcmd `java_command` (normally `jetbrains.mps.Launcher`). The field is `"<main-class> [args]"` — if MPS was started with a project path, the rest is that leftover path. Passing the whole field as the main class fails with `Could not find or load main class jetbrains.mps.Launcher …`
- `-Didea.paths.selector=…` and any `-Didea.config.path` / `-Didea.system.path`
- working directory `<checkout>/bin` (the run configuration default)

Strip **only when activating** (the first instance already holds these):

- `-agentlib:jdwp=…` — debug port is already bound
- `-javaagent:…idea_rt.jar[=<port>]` — IntelliJ's run-config agent; splitting its path on spaces was a real failure mode

Tokenize safely:

- `jcmd` `jvm_args` may still break `IntelliJ IDEA.app` into two tokens. Rejoin any token that does **not** start with `-` onto the previous token.
- Take only `java_command.split()[0]` as the main class. Never pass the raw `java_command` field — leftover args (a previous project path) are not part of the class name.
- Never `ps … | tr ' ' '\n'` for the classpath.

If the reconstructed command dies in ~0.1s with `ClassNotFoundException: com.intellij.util.lang.PathClassLoader`, the classpath was split. Fix joining and retry.

### Standalone — relaunch the same install

Invoke the **same binary** you saw in `ps`, plus the project path:

- macOS: `Contents/MacOS/mps` or `open -a` on **that** `.app`
- Linux: `bin/mps.sh`
- Windows: `bin\mps64.exe` (native launcher) or `bin\mps.bat`

Do not substitute a Toolbox sibling or a different version.

## B. MPS is not running — start with the project open

Same positional path, but this process **is** the IDE and should stay up.

- **From sources:** IDEA run configuration `MPS` with Program arguments = project path, **or** the reconstructed JVM command **keeping** jdwp / `idea_rt` if you still want the debugger. Working directory `<checkout>/bin`.
- **Standalone:** `mps.sh` / `mps64.exe` / `MPS.app` with the path. Optional platform flag `dontReopenProjects` if you want *only* that path, not the last session.

Wait until MCP tools appear, then call `mps_mcp_list_open_projects`.

## Success vs failure

| Observation | Meaning |
|-------------|---------|
| Second process exits 0 in ~2–15s; MCP then lists the project | Activation worked |
| Second process stays alive, new window, different `idea.paths.selector` | Started a second IDE — kill it, fix selector |
| Immediate exit, `PathClassLoader` / empty classpath | Split a path that contained spaces |
| Immediate exit, `Could not find or load main class jetbrains.mps.Launcher …` | Passed the whole `java_command` field (it included leftover args). Use the first token only |
| `ACTIVATE_NOT_INITIALIZED` | First instance still bootstrapping — wait and retry |
| MCP still `"projects":[]` after a clean exit | Project open may still be in progress — wait, retry `list_open_projects`; check `log/idea.log` for `Opening project` / scanning |

## What not to do

- Do not add an MCP "open project" tool and expect it to run on the welcome screen.
- Do not pass `--project PATH` as the only form; positional PATH is the documented default.
- Do not use `MPS (2nd inst.)` to talk to `MPS`.
- Do not copy `ps` output into `java` without rejoining spaced tokens.
