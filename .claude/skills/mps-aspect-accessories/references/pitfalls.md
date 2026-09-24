# Common Pitfalls — Module / Model Wiring

| Symptom | Cause | Fix |
|---|---|---|
| "Cannot resolve concept X" in a model | Missing used language | `mps_mcp_model_used_language` (ADD) for the concept's language |
| "Cannot resolve class Y" in behavior/rule body | Missing module dependency | `add_module_dependency` with correct scope (`Default` for design-time) |
| Consumer can't reference a shared constant | Model not declared as `accessoryModel` | Add to `accessoryModels` in the `.mpl` |
| Generated code fails at runtime with `ClassNotFoundException` | Runtime solution missing or not declared on the language | Ship the classes in a runtime solution and list it in the language's `<runtime>` block. See `runtime-solutions.md` |
| `module_dependency(scope="Runtime")` didn't make the solution a language runtime | `Runtime` is a *dependency scope*, not the language's `<runtime>` block | Register it in the language's **Runtime** tab; no MCP tool — UI or hand-edit + rebuild. See `runtime-solutions.md` |
| Generator can't find target-language concept | Generator module has its own dependency list | Add the target language to the generator module, not the language |
| Version mismatch warnings on build | Stale *consumer* `languageVersions` / `dependencyVersions` stamps | Use MPS's "Update language/dependency versions" action, or let MCP tools update on save |
| A new migration script is never offered, or the checker / generator reports a language-version mismatch | The **language's own** `languageVersion` does not follow the scripts (a different number from the stamps above) | `mps_mcp_update_module(moduleName, operation="SYNC_VERSION")` — idempotent; fix any `migrationProblems` it lists in the scripts' `fromVersion`, then sync again. Do **not** refresh the consumer stamps instead; that marks the migration as already applied. See `module-info-fields.md` |
| Version synced, checker happy, migration still never runs | The migration executor reads the version from the *generated* `LanguageRuntime`, not the descriptor (`runtimeStale: true` in the `SYNC_VERSION` response) | `mps_mcp_alter_nodes` `MAKE` with `rebuild=true` on the language module |
| Devkit changes not picked up | Consumer uses an older devkit snapshot | Re-import the devkit; rebuild |
