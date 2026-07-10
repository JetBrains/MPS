# Creating MPS Modules — `mps_mcp_create_module`

Creates a new, empty MPS module of the given type at the specified directory (created if missing).

## Supported types

`solution` | `language` | `devkit` | `generator`.

For `generator`, the `parentLanguage` parameter is required (the fully qualified language name). `directory` may be left empty for `generator`; it then defaults to `<parent-language-dir>/generator`. For every other type `directory` must be non-empty and is created if it doesn't exist.

## Language-only companions

For `type=language`, three optional flags decide which companion modules are created alongside the language:

- `withGenerator` — also create a generator (default `false`).
- `withSandbox` — also create a sandbox solution (default `false`).
- `withRuntime` — also create a runtime solution (default `false`).

## `facets` policy

`facets` is an optional additional facet type, or a JSON-array string of facet types, to attach after the producer has installed its defaults (e.g. `"tests"` or `"[\"tests\"]"` to mark a solution as the container for a `@tests` model). Omit it or pass `"[]"` when no extra facets are needed.

- Allowed only for `type=solution` and `type=language`. Passing `facets` with `type=devkit` or `type=generator` is **rejected upfront** with `INVALID_REQUEST`.
- Each entry must match a registered facet factory. **Unknown facet types fail upfront**, before the module is produced, so no partial state is left behind.
- The `java` facet is created automatically by the producer for `solution`/`language`/`generator` modules and does **not** need to be listed. If `java` (or any other facet already installed by the producer) appears in the list, it is **silently skipped** — that preserves the producer's default settings (notably `JavaModuleFacet.LoadExtensions`). To change those defaults, follow `mps_mcp_create_module` with `mps_mcp_update_module_facet`.

## Other parameters

- `name` — module name (Java-package-style namespace for `language`; solution/devkit name otherwise).
- `virtualFolder` — optional Project View virtual folder to assign.

## Return value

Returns a JSON object with `ok:true` and `data:{ name, moduleRef, virtualFolder?, readOnly, present:true, kind, facets, loadExtensions? }` on success, or `ok:false` and `error:"..."` on failure. The `data` envelope has the same shape as the module object returned by `mps_mcp_get_project_structure(startingPoint=<module>)`; see `module-info-fields.md` for the meaning of `kind`, `facets`, and `loadExtensions`.
