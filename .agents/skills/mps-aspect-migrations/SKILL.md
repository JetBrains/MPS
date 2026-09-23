---
name: mps-aspect-migrations
description: Use when authoring or debugging MPS migration scripts that upgrade user models after a language definition changes — covers jetbrains.mps.lang.migration (MigrationScript class-based, PureMigrationScript declarative, MoveConcept/MoveContainmentLink/MoveReferenceLink/MoveProperty, ordering via OrderDependency, data exchange via putData/getData, RefactoringLog, ConceptMigrationReference) and jetbrains.mps.lang.script Enhancement Scripts (MigrationScript with MigrationScriptPart_Instance, ExtractInterfaceMigration, FactoryMigrationScriptPart, CommentMigrationScriptPart) — when a model needs version-gated upgrade, concept rename or removal, link or property rename, instance-level transformation, or composition of migration steps.
type: reference
---

# MPS Migrations Aspect

## Loading companion skills

Companion names in this skill are lazy dependencies: load only those relevant to the current task. If this skill came from an MCP server, use the host's skill loader to resolve the companion's unique discovered entry URI on the same host-assigned originating server. If the host has no server-backed skill loader, stop and report that limitation; do not silently fall back to a filesystem copy. If this skill came from a filesystem catalog, load the named sibling from that same catalog at `<skills-root>/<skill-name>/SKILL.md`, even if remote skill loaders are also available. Do not invent a tool name or server endpoint.

Two complementary languages upgrade user models when language definitions change:

- **`jetbrains.mps.lang.migration`** (`l:90746344-04fd-4286-97d5-b46ae6a81709`) — core migration language with `MigrationScript` (class-based, programmatic) and `PureMigrationScript` (declarative, structural).
- **`jetbrains.mps.lang.script`** (`l:0eddeefa-c2d6-4437-bc2c-de50fd4ce470`) — Enhancement Scripts that apply concept-instance transformations, used for richer per-node updates.

These address the same problem at different abstraction levels: `lang.migration` handles structural language refactorings (concept moves/renames, removed concepts); `lang.script` handles content transformations (modifying properties, children, references of existing instances).

## Critical Directives

- **Do not confuse the two `MigrationScript` concepts.** One is in `lang.migration` (BL ClassConcept, version-gated). The other (alias "Enhancement Script") is in `lang.script` (instance-level transformer). Always disambiguate by language ref.
- **`fromVersion` is the version migrated FROM**, not to — and **who sets it depends on the form**. A `MigrationScript` is an `AutoInitDSLClass`: creating one through any MCP write tool (`mps_mcp_create_root_node`, `mps_mcp_insert_root_node_from_json`, `mps_mcp_update_node`) fires the concept's node factory, which sets `fromVersion` to the language's *current* version and bumps that version by 1 for you, so adding a `SET_VERSION` on top double-bumps and leaves a gap no migration is gated on. A **`PureMigrationScript` has no factory** — there you must set `fromVersion` in the blueprint and call `mps_mcp_update_module(moduleName = "<language>", operation = "SET_VERSION")` yourself. After either form, re-read the `languageVersion` field that `mps_mcp_get_project_structure` reports on every Language module and confirm `max(fromVersion) == languageVersion - 1`. Do **not** hand-edit the `.mpl`: MPS holds the descriptor in memory and would overwrite the edit.
- **A version bump is not effective for migration execution until the language module is rebuilt.** The checker compares against the descriptor, but the migration executor reads the version off the *generated* `LanguageRuntime`, so a bumped-but-unbuilt language silently never offers the migration. `SET_VERSION` reports this as `runtimeStale: true` with a `runtimeRecoveryAction`; clear it with `mps_mcp_alter_nodes` `MAKE` (`rebuild=true`) on the language module.
- **The language's own version is not the `languageVersions` stamp.** `usedLanguages[].version` / `dependencyVersions` in a module descriptor record which version of *another* language that module was last migrated against. `SET_VERSION` deliberately leaves them alone — refreshing them marks pending migrations as already applied.
- **Model naming is convention-driven and load-bearing.** `lang.migration` scripts live in `<language.fqn>.migration`. `lang.script` Enhancement Scripts live in `<language.fqn>.scripts`. MPS discovers them by these names at startup.
- **Migration scripts run in dependency order**, determined by `OrderDependency` / `ExecuteAfterDeclaration`. Always declare ordering when the result of one script feeds the next.
- **Do not hand-edit serialized `.mps` migration files.** Use MPS MCP node tools.

## Workflow

1. Decide form: `PureMigrationScript` for structural moves/renames/removals; `MigrationScript` for programmatic transforms; Enhancement Script for instance-level updates. See [references/form-selection.md](references/form-selection.md).
2. Create or locate the migration model with `mps_mcp_create_model`: `<language.fqn>.migration` for `lang.migration` (aspect ID `migration`); `<language.fqn>.scripts` for Enhancement Scripts (aspect ID `scripts`). Both aspect IDs are case-sensitive and carry no `@` suffix — see [aspect-model-stereotypes.md](references/aspect-model-stereotypes.md). Add the used languages required for that form.
3. Read the language's current version (`languageVersion` in `mps_mcp_get_project_structure`) and note it. For a **`MigrationScript`**, creating it (step 4) sets `fromVersion` to that value and bumps `languageVersion` by 1 via the concept's node factory — leave both alone. For a **`PureMigrationScript`**, which has no factory, put that value in the blueprint's `fromVersion` and bump the language yourself with `mps_mcp_update_module(operation = "SET_VERSION")` (omit `newName` to bump by 1). Either way, afterwards re-read `languageVersion` and confirm `max(fromVersion) == languageVersion - 1`, which is what `MigrationsCheckUtil` asserts. If it does not hold, repair it with `mps_mcp_update_module(operation = "SET_VERSION", newName = "<max(fromVersion) + 1>")` — the checker reports this mismatch with **no working quick fix**, so `check_root_node_problems(autoApplyQuickFixes = true)` will not repair it.
4. Build the script body (declarative parts, BL `execute()` method, or `MigrationScriptPart_Instance` updater) using the JSON blueprints in [references/json-blueprints.md](references/json-blueprints.md).
5. Wire ordering (`OrderDependency` / `ExecuteAfterDeclaration`) and data flow (`putData` / `getData`) if needed.
6. Validate via `mps_mcp_check_root_node_problems`, then `MAKE` the language module (`rebuild=true`) so the generated `LanguageRuntime` carries the new version, then run the migration on a test model. Skipping the make leaves `runtimeStale: true` and the migration is never offered.

## Related Skills

- `mps-aspect-typesystem`, `mps-aspect-constraints` — when a migration depends on or alters typesystem rules.
- `mps-aspect-generator` — when version changes also touch generator templates.
- `mps-quotations` — for `QuotationConsequence` consequence bodies inside `MigrationScript.execute()`.
- `mps-model-manipulation` — BL + smodel constructs used inside `MigrationScript.execute()` and Enhancement Script updaters; for the rewrite itself open only `references/property-and-mutation-ops.md` in the `mps-model-manipulation` skill root after loading that companion skill from the same origin.

## Reference Index

**Start here — most common case**: if the form is not decided yet, read only `references/form-selection.md` — it routes you to the single file for the chosen form (declarative rename/move → `references/pure-migration-parts.md`; programmatic body → `references/migration-script-body.md`; instance sweep → `references/enhancement-scripts.md`), plus `references/json-blueprints.md` when inserting through MCP.

- Form selection guide — open before authoring to pick between `PureMigrationScript`, `MigrationScript`, and Enhancement Script for the change at hand. Covers ordering, data flow, and model setup. See [references/form-selection.md](references/form-selection.md).
- `lang.migration` concept reference — open when you need exact members, cardinalities, properties, or concept IDs for `MigrationScript`, `PureMigrationScript`, `IMigrationUnit`, ordering and data-exchange concepts, and `RefactoringLog`. See [references/lang-migration-reference.md](references/lang-migration-reference.md).
- `PureMigrationPart`, node references, and move specializations — open when defining concept/link/property renames or composing migration units via `IncludeMigrationPart`. See [references/pure-migration-parts.md](references/pure-migration-parts.md).
- `MigrationScript` execute-body constructs — open when writing the BL body of a programmatic `MigrationScript`: pattern variable references, `ConsequenceFunction` vs `QuotationConsequence`, `ConceptMigrationReference`. See [references/migration-script-body.md](references/migration-script-body.md).
- `lang.script` Enhancement Scripts — open when iterating over concept instances to update properties/children/references, or when wiring `ExtractInterfaceMigration`, `FactoryMigrationScriptPart`, or `CommentMigrationScriptPart`. See [references/enhancement-scripts.md](references/enhancement-scripts.md).
- Verified JSON blueprints — open when constructing a real migration as JSON for MCP tools. Includes `MigrateReferences`, `SNodeTypeCastExpression_completelyRemoved`, and `Migrate_ParametrizedIntentions`. See [references/json-blueprints.md](references/json-blueprints.md).
- Concept ID quick reference — open when assembling JSON that requires `conceptReference` strings for `lang.migration` and `lang.script`. See [references/concept-ids.md](references/concept-ids.md).
- `FIND_INSTANCES` recipes — open to enumerate existing migration scripts or enhancement scripts in the project. See [references/find-instances.md](references/find-instances.md).
