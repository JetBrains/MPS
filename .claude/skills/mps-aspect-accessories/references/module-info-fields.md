# Module Info Envelope Fields

`mps_mcp_get_project_structure(startingPoint=<module>)`, `mps_mcp_create_module`, and `mps_mcp_update_module` all return a JSON envelope of roughly the same shape. This file documents the fields shared across those responses so the tool descriptions can stay short.

## Common fields

- `name` — module name.
- `reference` (or `moduleRef`, depending on the tool) — persistent module reference.
- `virtualFolder?` — Project View virtual folder, when set.
- `readOnly` — `true` for stub/library modules and other read-only modules; `false` for project modules the agent can mutate.
- `containingProject?` — present when the module comes from another open MPS project. Contains `{ "name", "mpsProjectBaseDirectory" }`, the latter being the path to pass as that project's `projectPath`.
- `editableFromCurrentProject?` — present with value `false` when `containingProject` is present. Treat the module like a read-only library from the current project; do not attempt write tools against it unless you intentionally switch `projectPath` to its containing project.
- `present` — always `true` when the response is a success envelope. Sentinel value to make presence checks idiomatic.

## `kind`

One of `"Solution"` | `"Language"` | `"Generator"` | `"DevKit"`.

The four standard MPS module types cover every module produced by `mps_mcp_create_module` and every module typically present in a project. The sentinel `"Unknown"` is reserved for third-party `SModule` implementations that don't extend any of those four classes (e.g. custom modules injected by external plugins or test scaffolding). **Treat `"Unknown"` as a signal to investigate, not a normal value.**

## `facets`

List of active facet type identifiers on the module (e.g. `["java", "tests"]` for a test-container Solution). The **order of entries is unspecified** — callers must match on set membership, not position.

## `loadExtensions`

Present whenever the module has a `JavaModuleFacet`.

- The default for every module type (solutions, languages, generators) is `"NotAvailable"`.
- `"Plugin"` is reported only when the descriptor explicitly persists `loadExtensions = yes` (plugin/contributor modules).
- A freshly created Language will therefore surface `"NotAvailable"`, not `"Plugin"`.

## Language-only fields

### `languageVersion`

Present on Language modules only (absent — not `0` — for Solutions, Generators and DevKits). This is the **language's own version integer**: the number a migration script's `fromVersion` gates on, persisted as the `languageVersion` attribute of the `.mpl`. With migration scripts present it must equal the highest `fromVersion` plus one.

- **Read it** here, or from `mps_mcp_get_project_structure` (emitted on every Language module without `includeDependencies`).
- **Sync it** with `mps_mcp_update_module(moduleName, operation = "SYNC_VERSION")`, which derives the value from the `migration` aspect's scripts; there is no way to set an arbitrary value, and `newName` is rejected. Idempotent. Never hand-edit the `.mpl`: MPS holds the descriptor in memory and rewrites the file on the next save.
- **Do not confuse it** with `usedLanguages[].version` (the `languageVersions` / `dependencyVersions` stamps), which record which version of some *other* language this module was last migrated against. They are unrelated numbers that happen to share a word. `SYNC_VERSION` never touches the stamps.

`SYNC_VERSION` responses additionally carry:

- `previousLanguageVersion` and `changed` — `changed: false` when the version already matched (no save performed).
- `maxFromVersion?` (absent when no script has a version) and `migrationUnitCount`.
- `migrationProblems` — `[{unit, reference, concept, problem}]` for scripts without a `fromVersion`, several scripts for one version, and a missing version in the sequence. Syncing does not fix these; correct the script's `fromVersion`, then sync again.
- `note?` — why nothing was derived (no `migration` aspect, or no versioned script); the version is then left unchanged, never reset to 0.
- `runtimeLanguageVersion?`, `runtimeStale`, `runtimeRecoveryAction?` — the version reported by the *compiled* `LanguageRuntime`. Migration execution reads that one, not the descriptor, so `runtimeStale: true` means the new version is recorded but not yet effective; rebuild the language module (`mps_mcp_alter_nodes` `MAKE`, `rebuild=true`). No make is performed by `SYNC_VERSION` itself.
- `warnings` on the envelope when the version was lowered (a trailing script was deleted), naming any module whose recorded used-language version is now above the language's, and when `migrationProblems` is not empty.

## DevKit-only fields

When the module is a DevKit, the response also includes:

- `extendedDevkits` — list of devkits this devkit extends.
- `exportedLanguages` — languages re-exported by the devkit.
- `exportedSolutions` — solutions re-exported by the devkit.
- `associatedGenPlan?` — generation plan, when associated.

Dependency and export entries can also carry prefixed foreign-project markers such as `containingProject` / `editableFromCurrentProject` on module references and `targetContainingProject` / `targetEditableFromCurrentProject` on nested targets.
