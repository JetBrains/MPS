# Model-Level Imports

Each model in the language (structure, editor, behavior, …) has:

- **Model imports (`dependencies`)** — models this model references by node
- **Used languages** — which DSLs the model uses to author its nodes
- **Used devkits** — same idea, bundled

MCP tools:
- `mps_mcp_model_dependency`
- `mps_mcp_model_used_language` (kind = `language` or `devkit`)

## Check devkit coverage before adding a used language

A used devkit pulls a whole bundle of languages into the model's scope, so a language you want may already be available without importing it directly. This is most common in **language-aspect models**, where the aspect's default devkit already supplies languages like e.g. `jetbrains.mps.lang.editor` and friends.

**Before adding a used language, inspect the model's devkit coverage:**

```
mps_mcp_get_project_structure(startingPoint=<model>, includeDependencies=true)
```

Each model's `usedLanguages` array lists directly-used languages and used devkits. Every devkit entry (`kind: "devkit"`) carries a **`providedLanguages`** array enumerating the languages that devkit brings into scope **transitively** (including languages exported by extended devkits). If the language you were about to add already appears under some devkit's `providedLanguages`, **do not add it** — it is already usable.

`mps_mcp_model_used_language` (ADD) also guards against this: adding a language that a used devkit already exports is a **no-op**, returning `{ "added": false, "providedByDevKit": true, "devKit": "<name>" }` rather than an error or a redundant import. A genuinely new language returns `{ "added": true, "providedByDevKit": false }`. For `kind = "devkit"`, ADD returns `{ "added": true|false, "alreadyPresent": false|true }`. The guard makes a redundant ADD harmless, but checking `providedLanguages` first avoids the wasted call entirely.

`mps_mcp_model_used_language` (ADD and DELETE) accepts either a persistent `l:UUID:name` reference or a bare qualified name (e.g. `demo.mps.Jumps`). For DELETE, bare names are resolved against the model's own used-language / used-devkit list — so a typo that doesn't match any imported language is reported as an error rather than silently ignored.

`mps_mcp_model_used_language` with `operation=DELETE` returns `{ "removed": true|false }`: `true` when the language/devkit was present and got dropped, `false` when it was already absent. This matches `mps_mcp_model_dependency` (DELETE) and lets callers detect typos vs. genuine no-ops.

Error vs. `removed: false` — the two input forms diverge intentionally: a persistent `l:UUID:name` reference that parses but isn't imported returns `{ "removed": false }` (no error, treat as idempotent no-op), while a bare qualified name that doesn't match any imported language/devkit returns an error envelope. Pass a persistent reference when "absent" is a normal case; pass a bare name when you want a typo to surface as a failure.

These imports are updated automatically when using `mps_mcp_create_root_node` (when given a qualified concept name or `c:` `conceptReference`), `mps_mcp_insert_root_node_from_json`, `mps_mcp_update_root_node_from_json`, and `mps_mcp_update_node` because those tools auto-import the languages of the concepts they create or insert. The response lists them in `details.addedUsedLanguages` / `details.addedUsedLanguageDetails` (foreign ones marked; undo with `mps_mcp_model_used_language` DELETE). Manual adjustment is usually only needed for used languages of hand-written code or implicit dependencies. To import another open project's language, see "Foreign results" in `references/search-concepts.md` in the `mps-language-analysis` skill root after loading that companion skill from the same origin.
