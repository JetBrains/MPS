# Choosing a Migration Form

When a language definition changes (concept renamed, moved, split, removed, or member restructured), models created with the old version become invalid. MPS tracks this via a **version integer** on the language module (persisted as the `languageVersion` attribute of the `.mpl`). Each migration step:

1. Adds a `MigrationScript` or `PureMigrationScript` node in a model named `<language>.migration` inside the language solution. Both are root-level nodes tracked by MPS at startup.
2. Sets `fromVersion` on the script to the version it migrates **from** — i.e. the language's version *before* this step.
3. Bumps the language's version by one.

MPS applies all scripts whose `fromVersion` matches the stored version of the user's model, in dependency order, then increments the stored version.

## Reading and writing the language version

| What | How |
|---|---|
| Read the current version | `mps_mcp_get_project_structure(startingPoint = "<language>")` → the `languageVersion` field on the Language module. Emitted without `includeDependencies`. |
| Bump it by one (the normal migration step) | `mps_mcp_update_module(moduleName = "<language>", operation = "SET_VERSION")` — omit `newName`. |
| Set an exact value | same call with `newName = "<n>"` (decimal string). Lowering is allowed but returns a warning; it is only correct when a trailing migration script was removed. |
| Make the bump effective for migration *execution* | `mps_mcp_alter_nodes` `MAKE` with `rebuild=true` on the language module. |

Four traps, in the order agents hit them:

- **Do not hand-edit the `.mpl`.** MPS keeps the module descriptor in memory and rewrites the file on the next save, so a text edit is silently lost. `SET_VERSION` mutates the descriptor and saves it in one command.
- **`languageVersion` ≠ `usedLanguages[].version`.** The latter (also called the `languageVersions` / `dependencyVersions` stamps) records which version of some *other* language a client module was last migrated against. `SET_VERSION` deliberately does not touch those — refreshing them would mark the migration you just wrote as already applied everywhere.
- **Ordering is checked, but the quick fix is unreachable — repair it yourself with `SET_VERSION`.** `MigrationsCheckUtil` asserts `max(fromVersion) == languageVersion - 1`. The mismatch is reported through a rule that passes no intention provider, so the `FixLanguageVersion` quick fix is never offered and `check_root_node_problems(autoApplyQuickFixes = true)` will not repair it. That is not a dead end: the IDE's "Correct language version" action is simply `setLanguageVersion(max(fromVersion) + 1)`, which you reproduce exactly with `mps_mcp_update_module(moduleName = "<language>", operation = "SET_VERSION", newName = "<max(fromVersion) + 1>")`. Better still, get the order right the first time: read the version, write `fromVersion` = that value, then `SET_VERSION`.
- **A descriptor-only bump is invisible to the migration executor.** `MigrationScriptCollector` reads the version from the *generated* `LanguageRuntime`, not the descriptor. `SET_VERSION` returns `runtimeStale: true` plus a `runtimeRecoveryAction` whenever the two disagree; until you `MAKE` the language module, the migration will simply never be offered.

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
