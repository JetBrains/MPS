# Module-Level Dependencies (`.mpl`)

A language module declares:

- **`dependencies`** — modules whose code/classes this module compiles against. Scopes: `Default`, `Design`, `Compile`, `Runtime`, `Generation Target`, `Extends`. On a language, `Generation Target` names a language its generator emits (e.g. `jetbrains.mps.baseLanguage`), so that language's runtime modules reach consumers' compile path; the `.mpl` serializes it as `generate-into`.
- **`usedLanguages`** — languages whose concepts can be used in this module's own models (structure, editor, constraints…). Each entry is a language module.
- **`usedDevKits`** — convenience bundles that wrap sets of languages.
- **`extendedLanguages`** — languages whose concepts this language inherits from and can extend.
- **`runtimeModules`** — solution modules shipped with the language, visible to consumers at runtime (the generator's *stable part*: engines, helpers, plugin APIs). Lives in the **Runtime** tab — serialized as the `.mpl` `<runtime>` block holding `<dependency>` entries (not a `<runtimeModules>` element). **No dedicated MCP tool** (like `accessoryModels`): `withRuntime=true` on `mps_mcp_create_module(type="language")` creates+links one for a new language; otherwise use the MPS UI or hand-edit + rebuild. Distinct from the `Runtime` *dependency scope* below. See `references/runtime-solutions.md`.
- **`generators`** — nested generator modules declared by the language.
- **`accessoryModels`** — see `references/accessory-models.md`.
- **`languageVersions` / `dependencyVersions`** — version stamps that MPS maintains; don't hand-edit.

Helpful MCP tools:
- `mps_mcp_module_dependency`
- `mps_mcp_get_project_structure(startingPoint=<module>)` to inspect existing wiring

## `mps_mcp_module_dependency` — Scope Dispatch

| Scope | Where the entry is persisted |
|---|---|
| `Default`, `Design`, `Compile`, `Runtime`, `Provided`, `Generation Target` | Regular `<dependency>` entry in `<dependencies>` |
| `Extends` (Language → Language) | `LanguageDescriptor.extendedLanguages` (XML: `<extendedLanguages>`) |
| `Extends` (Generator → Generator) | `GeneratorDescriptor.depGenerators` (XML: the generator's `<external-templates>` list) |
| `Extends` on a Solution, or any other source/target combination | **Rejected with `INVALID_REQUEST`** — Solutions do not support extension; cross-kind `Extends` is meaningless |

A **DevKit source** is dispatched by the target's kind, with scope `Default` (or omitted) or `Extends`, as the IDE's DevKit dialog does: a DevKit has no `<dependencies>` at all.

| DevKit → target | Where the entry is persisted | `devkitCollection` in the answer |
|---|---|---|
| Language | `DevkitDescriptor.exportedLanguages` (XML: `<exported-language>` entries) | `exportedLanguages` |
| Solution | `DevkitDescriptor.exportedSolutions` (XML: `<exported-solutions>`) | `exportedSolutions` |
| DevKit | `DevkitDescriptor.extendedDevkits` (XML: `<extendedDevKits>`) | `extendedDevkits` |
| Generator | **Rejected**: export the generator's language instead | — |

Other scopes and `reexport: true` are rejected for a DevKit source. A DevKit that ships a generation plan exports the plan's solution and the plan's languages, then gets the plan with `mps_mcp_update_module` `SET_GENERATION_PLAN`; see `references/attaching-plans.md` in the `mps-aspect-generation-plan` skill root after loading that companion skill from the same origin.

Important: **`Extends` is NOT persisted as `<dependency scope="extend">`** — MPS's own UI and persistence put the extension target in a separate descriptor field (above), not in `<dependencies>`.

### `Extends` typically needs a `Default` companion

Language extension also typically needs a regular `Default` dependency on the same target so the extended language's classes are on the compile classpath. This tool intentionally does NOT add that automatically (it mirrors what the Module Dependencies dialog persists). Call the tool a **second time** with `scope=Default` if you want both. `Extends` also does not replace `Generation Target`: a language whose generator emits the extended language's nodes still declares it as a Generation Target, because `Extends` brings in only that language's own runtime modules, not those of the languages it generates into.

### Return values

- Success: `ok:true`, `data:{ "added":true }` when the dependency was added or updated.
- Success: `ok:true`, `data:{ "added":false, "reason":"providedByDevKit" }` when the dependency is already provided by a used DevKit and no descriptor change was needed.
- DevKit source: `data:{ "added":true|false, "devkitCollection":"exportedLanguages"|"exportedSolutions"|"extendedDevkits", "alreadyPresent"? }` — unlike the upsert below, re-adding an entry the DevKit already lists answers `added:false, alreadyPresent:true`.
- Failure: `ok:false`, `error:"..."`.

### Upsert semantics

ADD is an upsert on a single edge: a module holds at most one dependency per `source→target` pair, so calling ADD again for an existing edge with a different `scope`/`reexport` **overwrites** that edge in place — it does not add a second entry, and the pair keeps only the last scope written. `added:true` is returned for both a fresh insert and an in-place overwrite, so to *change* a scope just ADD again with the new value.

## `mps_mcp_module_dependency (operation = "DELETE")`

Removes a dependency from an MPS module. Also removes the target from the module's `Extends`-side collection if it lives there (`LanguageDescriptor.extendedLanguages`, `GeneratorDescriptor.depGenerators`, `DevkitDescriptor.extendedDevkits`), and for a DevKit from `exportedLanguages` / `exportedSolutions`; a DevKit answer is `{removed:true, devkitCollections:[...]}`, with a warning when the removal leaves the DevKit's generation plan without an export it needs. The regular `<dependencies>` list and the `Extends` collection are both probed, and any removal counts as success.
