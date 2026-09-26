# Deriving `.mps/migration.xml` for a new project

Read this when the MPS that will open the new project is **not** a 2026.2 build: `references/create-empty-project.md` carries a ready-made file for those, and this is how to produce one for any other release. Nothing here needs a running MPS or an existing project to copy from.

## Why the file must exist

Only the New Project dialog fires `projectCreated` → `ProjectMigrationsRegistry.applyMigrationsToNewProject`, which is what seeds migration state. Opening a directory from disk never does. With no `migration.xml`, `project.baseline.version` defaults to **211** (MPS 2021.1), so MPS selects every project migration introduced since then and opens the **modal** Migration Assistant on first open — which blocks every `mps_mcp_*` call until a human dismisses it.

## What the file must contain

Exactly what `applyMigrationsToNewProject` would have written:

| entry | value |
| --- | --- |
| `project.baseline.version` | platform baseline of the MPS that will open this project: the first component of its build number (`261.25134.SNAPSHOT` → `261`, `MPS-253.29346.537` → `253`) |
| one entry per project migration whose `baselineVersion >= baseline` | `executed` |

Equal versions still count (`>=`, for preview/RC builds), so a migration introduced in the *current* release must be marked too. The entry key is the migration's `migrationId` — the **first argument of its `BaseProjectMigration` constructor**, not necessarily the class FQN: pre-2020 migrations pass a hand-written string (class `...v_2017_1.RemoveHistoryFiles` registers as `jetbrains.mps.ide.mpsmigration.v35.RemoveHistoryFiles`). Read the constructor instead of guessing from the class name.

Do **not** author `project.migrated.version`; MPS writes it after an assistant run.

## Generate it from the MPS that will open the project

Both values are on disk in that MPS — an install directory, a macOS `.app` bundle, or a source checkout — and it does not have to be running. If it is running, take its home from the process command line: `references/detect-source-vs-standalone.md`, then `references/examples-macos.md`, `references/examples-linux.md`, or `references/examples-windows.md`.

| `<mps-home>` | typical location | note |
| --- | --- | --- |
| macOS install | e.g. `/Applications/MPS 2025.3.app` — the bundle name varies, so locate it (`ls -d /Applications/*MPS*.app`) | pass the bundle; the script looks inside `Contents/` |
| Linux install | the extracted tarball, e.g. `/opt/mps-2025.3` | holds `bin/mps.sh` and `build.txt` |
| Windows install | e.g. `C:\Program Files\JetBrains\MPS 2025.3` | holds `bin\mps64.exe` and `build.txt` |
| source checkout (any OS) | the repository root | holds `build.txt` and `plugins/mps-project-migrations/solution/source_gen` |

The generator ships with this skill as `scripts/new_project_migration_xml.py`, one tested Python 3 implementation for all three platforms. Run it from the skill directory, passing the MPS home and the project directory you are creating:

```bash
python3 scripts/new_project_migration_xml.py "/Applications/MPS 2025.3.app" /path/to/new/project
python3 scripts/new_project_migration_xml.py /opt/mps-2025.3 /home/you/work/new-project
```

```powershell
py -3 scripts\new_project_migration_xml.py "C:\Program Files\JetBrains\MPS 2025.3" C:\work\new-project
```

It writes `<project-dir>/.mps/migration.xml` and prints the document on stdout; drop the project directory to print without writing, and add `--quiet` to suppress the derivation table. That table is the audit trail — every project migration the MPS ships, its baseline, and whether it was marked executed:

```text
baseline 253 from MPS-253.29346.537 (/Applications/MPS 2025.3.app/Contents/Resources/build.txt)
         171 jetbrains.mps.ide.mpsmigration.v35.EditorGeneratorRefactoring -
         ...
         243 jetbrains.mps.ide.mpsmigration.v_2024_3.LangResourceImport4Migration -
```

Exit codes: 0 ok, 2 usage, 3 not an MPS home / unreadable migrations.

The script reads two files from the MPS home and nothing else:

- **`build.txt`** — at the home root in a source checkout and in a Linux/Windows install, at `Contents/Resources/build.txt` in a macOS `.app`. Prefer it over `product-info.json`, whose `version` is the marketing version and whose `buildNumber` can be stale in a checkout (`243` while `build.txt` says `261.25134.SNAPSHOT`). A checkout states the same number in `workbench/mps-workbench/source/idea/MPSApplicationInfo.xml` (`<build number="261.25134"/>`) — that is what `ApplicationInfo.getBuild().getBaselineVersion()` reports at runtime.
- **the project-migration sources** — `plugins/mps-project-migrations/languages/jetbrains.mps.ide.mpsmigration-src.jar` in an install, `plugins/mps-project-migrations/solution/source_gen` in a checkout. Both ship the Java source of every project migration MPS registers, so the ids and baselines are exact rather than inferred. Python reads the jar directly; no `unzip` needed.

Three verified results, showing why the entry list must never be hardcoded:

```text
MPS 2025.3 install (MPS-253.29346.537): newest migration is 243 → no executed entries at all
  <entry key="project.baseline.version" value="253" />

same 2025.3 files in a Linux/Windows install layout (build.txt at the root, no bundle,
spaces in the path) → byte-identical output

MPS 2026.1 source checkout (261.25134.SNAPSHOT): one migration has baseline 261
  <entry key="jetbrains.mps.ide.mpsmigration.v_2026_1.UpdateConceptMethodCall" value="executed" />
  <entry key="project.baseline.version" value="261" />
```

## Fallbacks

- **Distribution without `-src.jar`.** List the class names in `<home>/plugins/mps-project-migrations/languages/jetbrains.mps.ide.mpsmigration.jar` instead — any zip lister will do (`unzip -l`, `python3 -m zipfile -l`, `Expand-Archive`). Package `v_YYYY_N` encodes the baseline as `(YYYY - 2000) * 10 + N` (`v_2026_1` → 261, `v_2024_3` → 243), and the key is the class FQN. That shortcut is safe for every migration that can still be selected — the ones with legacy ids all predate 2020 and sit far below any current baseline.
- **A donor project migrated by this same MPS.** Copy its `.mps/migration.xml`, keep every `executed` entry, and set `project.baseline.version` to the donor's `project.migrated.version`. Never keep a long-lived donor's own `project.baseline.version` (e.g. `223`): that re-selects older migrations.

## Pitfalls

- **Never set a baseline higher than the MPS that opens the project.** `checkMigratedToNewerVersion` compares it against the running platform and reports *"Actual platform version …, project migrated to version …"*. So a file written for a 2026.1 checkout must not be reused for a project opened in 2025.3 — regenerate per MPS home.
- **A migration built with the one-argument `BaseProjectMigration(id)` constructor** has baseline `Integer.MAX_VALUE` and therefore applies to every project, including brand-new ones. The script marks those executed; a manual list must too.
- **Only MPS's own migrations are scanned.** A custom RCP or third-party plugin can register more. If the assistant still appears, its wizard names what it wants to run — add those ids and reopen.
