# Choosing a Migration Form

When a language definition changes (concept renamed, moved, split, removed, or member restructured), models created with the old version become invalid. MPS tracks this via a **version integer** on the language module (persisted as the `languageVersion` attribute of the `.mpl`). Each migration step:

1. Adds a `MigrationScript` or `PureMigrationScript` node in a model named `<language>.migration` inside the language solution. Both are root-level nodes tracked by MPS at startup.
2. Sets `fromVersion` on the script to the version it migrates **from** — i.e. the language's version *before* this step.
3. Bumps the language's version by one.

MPS applies all scripts whose `fromVersion` matches the stored version of the user's model, in dependency order, then increments the stored version.

## Reading and writing the language version

The language version is **derived, never chosen**: when migration scripts exist, the only value the checker (`MigrationScriptVersions_NonTypesystemRule`) and the migration generator accept is the highest `fromVersion` plus one. `mps_mcp_update_module(moduleName = "<language>", operation = "SYNC_VERSION")` computes and writes exactly that — the headless "Correct Language Version" action. It takes no value, is idempotent, and is safe to repeat.

**Who performs steps 2 and 3 depends on the form**:

| Form | `fromVersion` and the version bump |
|---|---|
| `MigrationScript` (`lang.migration`) | **Done for you.** The concept is an `AutoInitDSLClass`, so creating it through any MCP write tool fires a factory that sets `fromVersion` and bumps `languageVersion` by 1. Nothing else to do. |
| `PureMigrationScript` (`lang.migration`) | No factory exists for it — the migration language registers factories only for `ConsequenceFunction` and `ReflectionNodeReference`. Call `SYNC_VERSION`, use the `languageVersion` it returns as the blueprint's `fromVersion`, insert, then `SYNC_VERSION` again. |
| Enhancement Script (`lang.script`) | Not version-gated this way; see the bottom of this file. |

| What | How |
|---|---|
| Read the current version | `mps_mcp_get_project_structure(startingPoint = "<language>")` → the `languageVersion` field on the Language module. Emitted without `includeDependencies`. |
| Bring the version in line with the scripts | `SYNC_VERSION` — after a `PureMigrationScript`, after editing or deleting a script, and on any version-mismatch error. |
| Make the new version effective for migration *execution* | `mps_mcp_alter_nodes` `MAKE` with `rebuild=true` on the language module. |

`SYNC_VERSION` returns `languageVersion`, `previousLanguageVersion`, `changed`, `maxFromVersion`, `migrationUnitCount` and `migrationProblems`. Without a `migration` aspect or without a versioned script it changes nothing and says why in `note`. Deleting the trailing script lowers the version; the response warns and names any module whose recorded used-language version is now above it.

Traps, in the order agents hit them:

- **Any "language version" mismatch → `SYNC_VERSION`.** The checker's mismatch is reported through a rule that passes no intention provider, so the `FixLanguageVersion` quick fix is never offered and `check_root_node_problems(autoApplyQuickFixes = true)` will not repair it; the generator raises the same mismatch as a generation error. `SYNC_VERSION` repairs both.
- **Duplicate and missing versions are yours to fix.** `migrationProblems` lists scripts without a `fromVersion`, several scripts for one version, and a gap in the sequence, each with the script's name and node reference. Syncing does not change scripts: correct the offending `fromVersion` (or delete the duplicate), then sync again.
- **Do not hand-edit the `.mpl`.** MPS keeps the module descriptor in memory and rewrites the file on the next save, so a text edit is silently lost. `SYNC_VERSION` mutates the descriptor and saves it in one command.
- **`languageVersion` ≠ `usedLanguages[].version`.** The latter (also called the `languageVersions` / `dependencyVersions` stamps) records which version of some *other* language a client module was last migrated against. `SYNC_VERSION` deliberately does not touch those — refreshing them would mark the migration you just wrote as already applied everywhere.
- **A descriptor-only change is invisible to the migration executor.** `MigrationScriptCollector` reads the version from the *generated* `LanguageRuntime`, not the descriptor. `SYNC_VERSION` returns `runtimeStale: true` plus a `runtimeRecoveryAction` whenever the two disagree; until you `MAKE` the language module, the migration will simply never be offered. The factory's own bump has the same property — it writes the descriptor, so the make is still required.

Enhancement scripts (`lang.script`) live in models named `<language>.scripts` and are run separately, not version-gated in the same way — they can be applied on demand or as migration steps.

## When to use which form

| Use case | Recommended form |
|---|---|
| Concept completely removed (no replacement) | `PureMigrationScript` with no `part` children |
| Concept renamed/moved to another language | `PureMigrationScript` + `MoveNodeMigrationPart` + `MoveConcept` specialization |
| Child/reference/property renamed | `PureMigrationScript` + `MoveNodeMigrationPart` + `MoveContainmentLink`/`MoveReferenceLink`/`MoveProperty` specialization |
| Composition of multiple migrations | `PureMigrationScript` + `IncludeMigrationPart` children |
| Complex programmatic transformation (compute new values, conditional logic) | `MigrationScript` with BL `execute()` body |
| Data must flow between scripts (one computes, another uses) | `MigrationScript` with `ProducedAnnotationDataDeclaration`/`AnnotationDataDependency` + `putData`/`getData` |
| Instance-level update of properties/children/references on existing nodes | `lang.script` Enhancement Script with `MigrationScriptPart_Instance` |
| Extract a new interface from a classifier | `lang.script` Enhancement Script with `ExtractInterfaceMigration` |

## Model naming and location

- Migration models for `lang.migration` scripts: model named `<language.fqn>.migration` inside the language solution. Example: `jetbrains.mps.lang.smodel.migration`.
- Script models for `lang.script` scripts: model named `<language.fqn>.scripts`. Example: `jetbrains.mps.lang.smodel.scripts`.

## Required model dependencies

For a `.migration` model, add as used languages:
- `jetbrains.mps.lang.migration`
- `jetbrains.mps.lang.core`
- `jetbrains.mps.baseLanguage` (for `MigrationScript` which extends ClassConcept)

For a `.scripts` model:
- `jetbrains.mps.lang.script`
- `jetbrains.mps.lang.core`
- `jetbrains.mps.baseLanguage`

## Ordering migrations

In `PureMigrationScript`: add `OrderDependency` children under `executeAfter`, each with `script` reference → another `IMigrationUnit`.

In `MigrationScript`: add an `ExecuteAfterDeclaration` member under `member` role, with `OrderDependency` children in its `dependencies` role.
