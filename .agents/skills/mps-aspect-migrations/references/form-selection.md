# Choosing a Migration Form

When a language definition changes (concept renamed, moved, split, removed, or member restructured), models created with the old version become invalid. MPS tracks this via a **version integer** on the language module (persisted as the `languageVersion` attribute of the `.mpl`). Each migration step:

1. Adds a `MigrationScript` or `PureMigrationScript` node in a model named `<language>.migration` inside the language solution. Both are root-level nodes tracked by MPS at startup.
2. Sets `fromVersion` on the script to the version it migrates **from** — i.e. the language's version *before* this step.
3. Bumps the language's version by one.

MPS applies all scripts whose `fromVersion` matches the stored version of the user's model, in dependency order, then increments the stored version.

## Reading and writing the language version

The language version is **derived, never chosen**: when migration scripts exist, the only value the checker (`MigrationScriptVersions_NonTypesystemRule`) and the migration generator accept is the highest `fromVersion` plus one. `mps_mcp_update_module(moduleName = "<language>", operation = "SYNC_VERSION")` computes and writes exactly that — the headless "Correct Language Version" action. It takes no value, is idempotent, and is safe to repeat.

**Who performs steps 2 and 3 depends on the form and how the script was created**:

| Form | `fromVersion` and the version bump |
|---|---|
| `MigrationScript` (`lang.migration`) | **Done for you.** The concept is an `AutoInitDSLClass`; creating it through a factory-running path fires a factory that sets `fromVersion` to the language's current version and bumps `languageVersion` by 1. Nothing else to do. |
| `PureMigrationScript` (`lang.migration`) | **Also done for you**, the same way. It has a node factory (root `MigrationUnit_factories` in the migration language's `actions` model) that sets `fromVersion` and bumps `languageVersion` by 1, exactly like `MigrationScript`. |
| Enhancement Script (`lang.script`) | Not version-gated this way; see the bottom of this file. |

Both forms only bump through a **factory-running path**: `mps_mcp_insert_root_node_from_json`, `mps_mcp_create_root_node`, the IDE's New root, and `replace with new initialized` in model code. Paths that skip the factory — `dryRun`; copies (`mps_mcp_alter_nodes` `COPY_NODE`, copy/paste, `.copy`); `SNodeBuilder` / quotations / plain `new node<>()` / `add new root`; `update_root_node_from_json` on an existing root — create a script with no `fromVersion` bump. Replacing a versioned migration unit (a `sampleNode`) makes the factory inherit that unit's `fromVersion` instead of bumping. The IDE's rename/move refactorings still create `PureMigrationScript`s with their own single bump, same as before.

| What | How |
|---|---|
| Read the current version | `mps_mcp_get_project_structure(startingPoint = "<language>")` → the `languageVersion` field on the Language module. Emitted without `includeDependencies`. |
| Bring the version in line with the scripts | `SYNC_VERSION` — after editing, deleting, or copying a script, and on any version-mismatch error. |
| Apply the version-mismatch quick fix directly (alternative to `SYNC_VERSION`) | `mps_mcp_apply_intention(<script node>, "jetbrains.mps.lang.migration.typesystem.FixLanguageVersion_QuickFix")` — not auto-applicable, so it must be invoked explicitly. |
| Make the new version effective for migration *execution* | `mps_mcp_alter_nodes` `MAKE` with `rebuild=true` on the language module. |

`SYNC_VERSION` returns `languageVersion`, `previousLanguageVersion`, `changed`, `maxFromVersion`, `migrationUnitCount` and `migrationProblems`. Without a `migration` aspect or without a versioned script it changes nothing and says why in `note`. Deleting the trailing script lowers the version; the response warns and names any module whose recorded used-language version is now above it.

Traps, in the order agents hit them:

- **Any "language version" mismatch → `SYNC_VERSION`.** The checker's mismatch error carries a "Set correct language version" quick fix (`FixLanguageVersion`), attached to the script(s) with the highest `fromVersion` in both directions (raise and lower) — but it is not auto-applicable, so `check_root_node_problems(autoApplyQuickFixes = true)` will not apply it; apply it explicitly with `mps_mcp_apply_intention` if you want that route instead. The generator raises the same mismatch as a generation error. `SYNC_VERSION` repairs both, and is the recommended one-call fix.
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
