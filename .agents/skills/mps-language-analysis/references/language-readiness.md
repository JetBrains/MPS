# Concepts of a language that is not built

`mps_mcp_get_concept_details` and `mps_mcp_search_concepts` answer for a concept whose language has no built runtime, or that was created after the last build; the writers refuse such a concept with `LANGUAGE_NOT_BUILT`. The mechanism and the fields are described here.

A fully qualified `conceptRefs` entry resolves through the structure model, so a concept of a never-built language, or one created after the last build, still resolves. Its features, supertypes and abstractness live in the language *runtime*, which only a build produces; when the runtime cannot answer, the record is read from the concept declaration instead, and says so:

- `source: "declaration"` — the record was read from the declaration, not from the runtime.
- `descriptorStatus: "hollow"` — kept for compatibility; it marks the runtime descriptor the record would otherwise have come from.
- `runtimeStatus` — one of `no_runtime` (the language has no built runtime), `concept_not_in_runtime` (the runtime is loaded but does not know this concept: it was created after the last build) or `stale` (the runtime knows the concept but is behind the structure model).
- `languageModule` — the module reference of the declaring language.
- `descriptorRecoveryAction` — the build to run.

The envelope then carries a `warnings` entry and `details.languageBuild`:

```
"details": { "languageBuild": {
  "language": "<language name>", "module": "<module ref>",
  "status": "no_runtime" | "concept_not_in_runtime" | "stale",
  "recovery": { "tool": "mps_mcp_alter_nodes", "operation": "MAKE",
                "parameters": { "modules": ["<module ref>"], "rebuild": true } },
  "note": "A MAKE writes only generated output (source_gen/classes_gen) and changes no model, so it is allowed where model edits are not."
} }
```

`recovery` is the exact call to make. A declaration-read record is correct for the structure as declared, but tools that need the runtime (the writers, `mps_mcp_query_types`) answer `LANGUAGE_NOT_BUILT` until the MAKE has run. `stale` appears in `details.languageBuild` only; the runtime record is returned as is. With several affected languages, `details.languageBuilds` lists them all.

`languageRefs` naming a project language returns the union of the runtime's concepts and the structure model's declarations, so concepts added since the last build appear, and a never-built language is answered from declarations instead of `NOT_FOUND`. `mps_mcp_search_concepts` takes the same union for project languages.


## Why the record is marked `descriptorStatus: "hollow"`

A runtime adapter with no descriptor behind it reports `sourceNode == null`, no properties, no references, no children and `isAbstract: true`: the language was never built, or the concept was created after the last build.

The tool then reads the record from the concept declaration and marks it as described under "Languages without a built runtime"; the features are trustworthy for the structure as declared, and the writers still refuse with `LANGUAGE_NOT_BUILT` until the MAKE has run.

Recovery: the `details.languageBuild.recovery` call (`MAKE`, `rebuild = true`, the **language module**). `mps_mcp_reload_all` alone is **not** sufficient: the descriptor classes on disk are what is missing.

Note that `CREATE_CONCEPTS` with `make: true` already clean-rebuilds *and* verifies each created descriptor against the live runtime — auto-recovering a never-deployed language with one module-scoped rebuild — so it returns `makeStatus: "runtime_stale"` only when descriptors are genuinely still hollow. A hollow descriptor after a `"success"` from that path indicates a deeper problem (build failure, language module not in the project scope, …) — inspect `makeStatus`, `hollowConcepts`, and `makeDetails` on the create response first.
