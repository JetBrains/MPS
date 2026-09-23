# Choosing a Migration Form

When a language definition changes (concept renamed, moved, split, removed, or member restructured), models created with the old version become invalid. MPS tracks this via a **version integer** on the language module (persisted as the `languageVersion` attribute of the `.mpl`). Each migration step:

1. Adds a `MigrationScript` or `PureMigrationScript` node in a model named `<language>.migration` inside the language solution. Both are root-level nodes tracked by MPS at startup.
2. Sets `fromVersion` on the script to the version it migrates **from** — i.e. the language's version *before* this step.
3. Bumps the language's version by one.

MPS applies all scripts whose `fromVersion` matches the stored version of the user's model, in dependency order, then increments the stored version.

## Reading and writing the language version

**Who performs steps 2 and 3 depends on the form**, and this is the single easiest thing to get wrong:

| Form | `fromVersion` and the version bump |
|---|---|
| `MigrationScript` (`lang.migration`) | **Done for you.** The concept is an `AutoInitDSLClass`, so creating it through any MCP write tool fires a factory that sets `fromVersion` and bumps `languageVersion` by 1. Do not repeat either. |
| `PureMigrationScript` (`lang.migration`) | **Yours.** No factory exists for it — the migration language registers factories only for `ConsequenceFunction` and `ReflectionNodeReference`. Set `fromVersion` in the blueprint and call `SET_VERSION` yourself. |
| Enhancement Script (`lang.script`) | Not version-gated this way; see the bottom of this file. |

| What | How |
|---|---|
| Read the current version | `mps_mcp_get_project_structure(startingPoint = "<language>")` → the `languageVersion` field on the Language module. Emitted without `includeDependencies`. |
| Bump it by one | `mps_mcp_update_module(moduleName = "<language>", operation = "SET_VERSION")`, omitting `newName` — for `PureMigrationScript`, and to repair a mismatch. Nothing to do after creating a `MigrationScript`. |
| Set an exact value (repair) | same call with `newName = "<n>"` (decimal string). Lowering is allowed but returns a warning; it is only correct when a trailing migration script was removed, or when an extra bump has to be undone. |
| Make the bump effective for migration *execution* | `mps_mcp_alter_nodes` `MAKE` with `rebuild=true` on the language module. |

Five traps, in the order agents hit them:

- **Bump the version yourself for `PureMigrationScript`, never for `MigrationScript`.** The `MigrationScript` factory already set `fromVersion` and incremented `languageVersion`; a `SET_VERSION` on top skips a version no script is gated on. `PureMigrationScript` gets neither unless you do it. Both mistakes surface the same way — `MigrationsCheckUtil` failing `max(fromVersion) == languageVersion - 1` — so after either form, re-read `languageVersion` and check that equation rather than trusting the tool's envelope.
- **Do not hand-edit the `.mpl`.** MPS keeps the module descriptor in memory and rewrites the file on the next save, so a text edit is silently lost. `SET_VERSION` mutates the descriptor and saves it in one command.
- **`languageVersion` ≠ `usedLanguages[].version`.** The latter (also called the `languageVersions` / `dependencyVersions` stamps) records which version of some *other* language a client module was last migrated against. `SET_VERSION` deliberately does not touch those — refreshing them would mark the migration you just wrote as already applied everywhere.
- **Ordering is checked, but the quick fix is unreachable — repair it yourself with `SET_VERSION`.** `MigrationsCheckUtil` asserts `max(fromVersion) == languageVersion - 1`. The mismatch is reported through a rule that passes no intention provider, so the `FixLanguageVersion` quick fix is never offered and `check_root_node_problems(autoApplyQuickFixes = true)` will not repair it. That is not a dead end: the IDE's "Correct language version" action is simply `setLanguageVersion(max(fromVersion) + 1)`, which you reproduce exactly with `mps_mcp_update_module(moduleName = "<language>", operation = "SET_VERSION", newName = "<max(fromVersion) + 1>")`.
- **A descriptor-only bump is invisible to the migration executor.** `MigrationScriptCollector` reads the version from the *generated* `LanguageRuntime`, not the descriptor. `SET_VERSION` returns `runtimeStale: true` plus a `runtimeRecoveryAction` whenever the two disagree; until you `MAKE` the language module, the migration will simply never be offered. The factory's own bump has the same property — it writes the descriptor, so the make is still required.

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
