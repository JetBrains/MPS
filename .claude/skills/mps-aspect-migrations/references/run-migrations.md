# Running Migrations over MCP

`mps_mcp_run_migrations` runs the engine behind the Migration Assistant wizard and the Ant `migrate` task, without any dialog. Call it with `operation: "CHECK"`, read the answer, then call it with `operation: "APPLY"`.

## Before the run

- The language must be rebuilt and reloaded: a new script is offered only once the *generated* `LanguageRuntime` carries the new version. `mps_mcp_alter_nodes` `MAKE` (`rebuild=true`) on the language module answering `runtimeReady:true` does that, and its answer then carries `migrationsPending` (pending scripts plus project migrations, not version updates; with a `migrationsHint` when it is above 0).
- The Migration Assistant wizard does not open on its own once an agent has called an `mps_mcp_*` tool for the project; MPS posts a sticky "Migration required" balloon instead. If the wizard was already open before that, APPLY answers `MODAL_BLOCKED` without writing anything: ask the user to close it (Cancel postpones, it applies nothing), then call again.

## CHECK

Read-only; one read action.

| field | meaning |
|---|---|
| `pendingModuleMigrations` | `[{script, reference, kind, owner, fromVersion, toVersion, scriptPresent, affectedModules}]` in execution order. `kind` is `language` (a `lang.migration` script; `owner` is the language) or `refactoring` (a refactoring log; `owner` is the refactored module). `scriptPresent:false` means the deployed language has no script for that version: APPLY stops with a "migrations missing" error. |
| `pendingProjectMigrations` | `[{description, cleanup}]`, project-wide MPS migrations. |
| `modulesToUpdateVersions` | Modules whose recorded language/dependency versions are out of date. APPLY rewrites them. |
| `wouldForceSaveModules` | How many project modules APPLY force-saves first (every one, whenever anything is pending; 0 otherwise). |
| `blockers` | Conditions that make APPLY refuse; see below. |
| `runtimeProblems` | Languages used in the checked modules whose scripts cannot be offered yet; see below. Reported, never blocking. |
| `nothingToDo` | `true` when the three lists above are empty. |

`modules` (one name/reference or a JSON array) restricts which modules' language migrations and descriptor versions are checked. Project migrations stay project-wide, and once anything is pending APPLY still force-saves every project module and updates the descriptor versions of every migrateable one; the answer says so in `warnings`.

## Blockers

| blocker | fix |
|---|---|
| `make session active` | Wait until the running make finishes, then call again. |
| `project migrated by a newer MPS` | Open the project with that MPS version; nothing to do here. |
| `another APPLY is running` (APPLY only) | One APPLY runs at a time in the IDE; wait for it, then CHECK again. |

## Runtime problems

Not blockers: the rest of the project can still be migrated, but these languages' scripts are missing from the run.

| entry | fix |
|---|---|
| `languages not deployed: [...]` | A checked module uses a language with no runtime: none of its scripts are collected, and the descriptor version update is skipped. `MAKE` the language. |
| `language runtime stale: <lang> descriptor v=N runtime v=M` | Only the scripts the runtime was built with are offered. `MAKE` the language with `rebuild=true`. |

## APPLY

APPLY runs the wizard's steps: force-save, descriptor version update, cleanup migrations, the missing-script / not-migrated-dependency / pre-check gates, project migrations, language migrations in dependency order, post-check, save. It can take minutes, has no modal timeout of its own, and cannot be cancelled once it has started writing. With nothing pending it returns `status: "NOTHING_TO_DO"` and writes nothing.

| field | meaning |
|---|---|
| `planned` | The CHECK block computed before the run. |
| `status` | `FINISHED`, `FINISHED_WITH_ERRORS` or `NOTHING_TO_DO`. |
| `applied` | `[{module, script, kind, owner, fromVersion, stampBefore, stampAfter}]`, one row per module × script, with the version the module recorded before and after the step. |
| `projectMigrationsRun` | `[{description, cleanup}]`. |
| `versionsUpdated` | Whether the descriptor version update ran; `false` when no module needed it. |
| `remaining` | Pending counts after the run (`pendingModuleMigrations`, `pendingProjectMigrations`, `modulesToUpdateVersions`). Absent, with a warning, when the recount failed; the run itself still happened. |
| `error` | Only with `FINISHED_WITH_ERRORS`: `{shortMessage, message, canIgnore, problemCount, problems:[{message, path, pathKind}]}`; `path` is a persistent node, model or module reference (`pathKind`). |
| `savedRepository` | Always `true`: the repository is saved after the run. |
| `modelsUnloaded` | `true` in the IDE, where every project model is unloaded so the migrated content is re-read. |

`FINISHED_WITH_ERRORS` is still an `ok` answer, and the run has already written by then: its errors come from the gates and migrations, which run after the force-save and the version update. Read `status` and `error` before assuming the migration went through, then CHECK again to see what is left.

`haltOnPrecheckFailure` (default `true`) stops on pre-check problems, `haltOnDependencyError` (default `true`) on a dependency that is not migrated yet; with `false` the problem is only logged and the run continues.

After APPLY, verify with `mps_mcp_check_root_node_problems` on the migrated roots; a migrated module records the new version in its descriptor's `usedLanguages[].version`.
