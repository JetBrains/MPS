# Detect source-built vs standalone MPS

Classify the **running** process before choosing a launch command. Guessing the wrong family starts a second IDE that does not own the MCP session.

## 1. Find the process

Look for `jetbrains.mps.Launcher` first. Ignore `fsnotifier`, `grep`, and helper binaries.

- **macOS / Linux:** `ps aux | grep -i '[j]etbrains.mps.Launcher'`
- **Linux extra:** `tr '\0' '\n' < /proc/<pid>/cmdline`
- **Windows (cmd):** `wmic process where "CommandLine like '%jetbrains.mps.Launcher%'" get ProcessId,ExecutablePath,CommandLine`
- **Windows (PowerShell):** `Get-CimInstance Win32_Process | Where-Object { $_.CommandLine -match 'jetbrains.mps.Launcher' }`

If there is no Launcher process, look for a native executable: `MacOS/mps`, `mps64.exe`, `mps.exe`, or a `mps.sh` parent. If nothing matches, MPS is not running — you will **start** it (still classified below), not activate it.

## 2. Read `idea.paths.selector`

From the command line, take `-Didea.paths.selector=...`. Prefer `jcmd <pid> VM.command_line` over `ps` when the process is a JVM (spaces in paths).

| Selector shape | Typical meaning |
|----------------|-----------------|
| `MPSSRC<year>.<minor>` e.g. `MPSSRC2026.2` | MPS **from sources** (IDEA run config `MPS`) |
| `MPSSRC<year>.<minor>.SECOND` e.g. `MPSSRC2026.2.SECOND` | From-sources **second instance** — will **not** activate the first |
| `MPS<year>.<minor>` e.g. `MPS2024.3` | **Standalone** install (matches `product-info.json` `dataDirectoryName`) |

Also note `-Didea.config.path` / `-Didea.system.path` if present. Activation must reuse them.

## 3. Decide from-sources vs standalone

Use several signals; selector alone is the strongest.

**From sources** when most of these hold:

- Executable is `java` / `java.exe`, main class `jetbrains.mps.Launcher`.
- Selector contains `SRC` (`MPSSRC…`).
- Classpath includes a git checkout (`…/lib/platform-loader.jar` next to `languages/`, `startup/`, `.idea/runConfigurations/MPS.xml`).
- Working directory is `<checkout>/bin`.
- Often launched from IntelliJ: `-javaagent:…/idea_rt.jar`, `-agentlib:jdwp=…`.
- There is **no** `MPS.app` / `mps.sh` / `mps64.exe` wrapping that JVM.

**Standalone** when most of these hold:

- Executable is `mps` (macOS `Contents/MacOS/mps`), `mps.sh`, `mps.bat`, or `mps64.exe`.
- Or a `java` child whose `-Didea.home.path` / install root is an extracted distribution (has `product-info.json`, `bin/mps.sh` or `Contents/MacOS/mps`) **without** an MPS git tree (`languages/`, `core/`, `startup/` as sources).
- Selector is `MPS20xx.y` **without** `SRC`.
- `product-info.json` `dataDirectoryName` equals that selector.

If signals conflict, prefer: **native/script executable → standalone**; **`MPSSRC*` selector → from sources**.

An MPS **git checkout** often still contains `product-info.json` with `dataDirectoryName: MPS20xx.y`. That describes a packaged product, not the running process. If `ps`/`jcmd` shows `MPSSRC*`, classify as from sources and ignore that file.

## 4. Identify the OS

Use the agent's environment (`uname`, `$OS`, `[Environment]::OSVersion`). Do not assume the MPS host OS from the checkout layout: a macOS agent talking to a running MPS is still macOS even if the repo has `bin/win/`.

Then open the matching example file:

- macOS → `examples-macos.md`
- Linux → `examples-linux.md`
- Windows → `examples-windows.md`

## 5. Same instance vs a second IDE

Activation only works if the second process uses the **same** config/system directories:

- same `-Didea.paths.selector`
- same `-Didea.config.path` / `-Didea.system.path` when those were overridden
- **not** the `MPS (2nd inst.)` run configuration (`….SECOND` selector)

Toolbox / multiple installed versions: pick the exact binary from `ps`, not a generic `open -a MPS` that might resolve to another build.
