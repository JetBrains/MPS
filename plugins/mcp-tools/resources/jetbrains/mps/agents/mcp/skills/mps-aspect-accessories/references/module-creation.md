# Creating MPS Modules — `mps_mcp_create_module`

Creates a new, empty MPS module of the given type at the specified directory (created if missing).

## Supported types

`solution` | `language` | `devkit` | `generator`.

For `generator`, the `parentLanguage` parameter is required (the fully qualified language name). `directory` may be left empty for `generator`; it then defaults to `<parent-language-dir>/generator`. For every other type `directory` must be non-empty and is created if it doesn't exist.

## `directory` rules

- An explicit `directory` must be an absolute path and must not point to an existing file. Both are rejected upfront with `INVALID_REQUEST`.
- On Unix-like systems a `solution` or `language` folder must sit **at least three levels below `/`**. For example, `/tmp/x` and `/workspace/x` are rejected, while `/tmp/work/x` and `/workspace/proj/x` are fine. MPS core cannot record the module's paths for a shallower folder (MPS-40228). The check runs before anything is created. A `devkit` has no paths to record and is exempt. A `generator` lives under its parent language and is exempt too.
- A module outside the project directory is allowed.

## Failure leaves nothing behind

The producers register a module before they save it. When a producer fails, or attaching the requested `facets` fails after it, the tool un-registers every module the call registered, including a language's generator, runtime and sandbox. The project stops tracking them too, so no stale entry is left behind that MPS keeps reporting until a restart. It also removes only the files and folders the call created. A reused folder keeps whatever it held before the call, including a descriptor the call did not write. Typical producer failures are a language with `withGenerator` whose folder already has `generator/`, or `withRuntime` when `<name>.runtime/models` is not empty. These come back as `INVALID_REQUEST`; an unexpected failure, such as a facet that cannot be attached, comes back as `INTERNAL_ERROR`. Either way the error ends with `No module or file was left behind.` If the rollback could not remove something, the error names it instead. Remove what is left with `mps_mcp_update_module` DELETE `deleteFiles=true`.

## Language-only companions

For `type=language`, three optional flags decide which companion modules are created alongside the language:

- `withGenerator` — also create a generator (default `false`).
- `withSandbox` — also create a sandbox solution (default `false`).
- `withRuntime` — also create a runtime solution (default `false`).

## `facets` policy

`facets` is an optional additional facet type, or a JSON array of facet types (real or written as a string), to attach after the producer has installed its defaults (e.g. `"tests"` or `"[\"tests\"]"` to mark a solution as the container for a `@tests` model). Omit it or pass `"[]"` when no extra facets are needed.

- Allowed only for `type=solution` and `type=language`. Passing `facets` with `type=devkit` or `type=generator` is **rejected upfront** with `INVALID_REQUEST`.
- Each entry must match a registered facet factory. **Unknown facet types fail upfront**, before the module is produced, so no partial state is left behind.
- The `java` facet is created automatically by the producer for `solution`/`language`/`generator` modules and does **not** need to be listed. If `java` (or any other facet already installed by the producer) appears in the list, it is **silently skipped** — that preserves the producer's default settings (notably `JavaModuleFacet.LoadExtensions`). To change those defaults, follow `mps_mcp_create_module` with `mps_mcp_update_module_facet`.

## Other parameters

- `name` — module name (Java-package-style namespace for `language`; solution/devkit name otherwise).
- `virtualFolder` — optional Project View virtual folder to assign.

## Return value

Returns a JSON object with `ok:true` and `data:{ name, moduleRef, virtualFolder?, readOnly, present:true, kind, facets, loadExtensions? }` on success, or `ok:false` and `error:"..."` on failure. The `data` envelope has the same shape as the module object returned by `mps_mcp_get_project_structure(startingPoint=<module>)`; see `module-info-fields.md` for the meaning of `kind`, `facets`, and `loadExtensions`.
