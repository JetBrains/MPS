# Documentation defects found during the skill-script automation study

Kept separately from the hotspot work (study section 8) so fixes are not blocked on scripting.
Each entry: where, what is wrong, evidence (run id + step, or commit), status.

Closed, fixed, rejected, and out-of-scope entries were moved to [`docs-defects-archive.md`](docs-defects-archive.md) on 2026-09-22. This file holds only issues still to be handled.

| id | where | what is wrong | evidence | status |
|---|-------|--------------|----------|--------|
| D39 | `mps-project-management/references/examples-macos.md` (and the Linux/Windows siblings, which share the recipe) | The activation recipe passes the whole `java_command` field from `jcmd VM.command_line` as the main class: `cmd = [java, *filtered, "-classpath", classpath, java_command, project]`. That field is `"<main-class> [args]"`, so an MPS that was itself **started with a project path** reports `jetbrains.mps.Launcher /path/to/previous/project` and the reconstruction dies with `Could not find or load main class jetbrains.mps.Launcher .Users.vaclav…` / `ClassNotFoundException`. The fix is one token: `java_command.split()[0]`. This defect was dormant while MPS was only ever started from the IDEA run configuration without arguments; the study's own lifecycle automation (`mps_control.sh start <project>`, and the skill's own "MPS is not running — start with the project open") makes it reachable on every subsequent activation. | rehearsal 2026-09-22: `S10-sonnet-1:18` fails, `:19` succeeds after the worker changes it to `java_command_full.split()[0]` — one wasted turn, self-recovered | **open** — the fix belongs to the blueprint skill (`plugins/mcp-tools/resources/…/mps-project-management`, then re-propagated to both agent catalogs), which was a declared non-goal of the lifecycle plan. The study's own `mps_control.sh` is already immune: `capture` stores only the first token as `mainClass`, and the new `open` subcommand uses it |

D34 (the previous live row) was archived on 2026-09-22 as the silent-discard half of P8, fixed by `e00c57599c2e`.
