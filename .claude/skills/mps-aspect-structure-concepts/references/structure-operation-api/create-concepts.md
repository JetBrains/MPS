#### `CREATE_CONCEPTS`
Creates concepts with the given names and full specification in the specified structure model.
Returns a JSON object mapping concept names to their persistent node references on success.

When the `make` flag is true, `CREATE_CONCEPTS` performs a **clean** make of the structure model's language module (equivalent to `mps_mcp_alter_nodes MAKE` with `rebuild = true`). An incremental make would often leave the language aspect descriptor classes unchanged on disk, so the post-make `ClassLoaderManager.reload` would re-publish the previously compiled — now stale — `StructureAspectDescriptor` and downstream tools (`mps_mcp_get_concept_details`, `mps_mcp_scaffold_editor`) would read empty properties/references/children. The clean make avoids that whole class of problems.

The response reports:
- `makeStatus`: one of `"success"`, `"runtime_stale"`, `"failed"`, or `"skipped"`, **verified against the live runtime** rather than the build outcome alone. `"success"` means the build succeeded *and* every created concept read back non-hollow, so `mps_mcp_get_concept_details` / `mps_mcp_scaffold_editor` are trustworthy at once. A never-before-deployed language stays hollow after the initial model-scoped make; the tool detects that and automatically runs one module-scoped clean rebuild to materialize the runtime (`recoveryStage: "module-rebuild"`). `"runtime_stale"` means descriptors were *still* hollow after that rebuild (names in `hollowConcepts`); recover by calling `mps_mcp_alter_nodes` `MAKE` with `rebuild = true` on the **language module** — not just the structure model — then retry. `mps_mcp_reload_all` alone is **not** sufficient.
- `recoveryStage`: present only when the first make left descriptors hollow and an extra module-scoped rebuild was performed (value `"module-rebuild"`).
- `hollowConcepts`: present only with `"runtime_stale"` — the names of concepts whose runtime descriptor is still hollow.
- `makeMessage`: human-readable summary of the make outcome.
- `makeDetails`: list of warnings/errors emitted during the build.

Note: the structure response intentionally does **not** include a separate `runtimeReady` boolean — `makeStatus` already encodes the same signal as a single source of truth. The boolean form is reserved for `mps_mcp_alter_nodes MAKE`, whose response uses `success` + `runtimeReady` because the make IS the response there rather than a sub-operation.

Parameters:
```
{
  "structureModelRef": "Structure model: persistent model reference (preferred) or the model's long/short name as a fallback. Names that match more than one model resolve to the first match in repository iteration order.",
  "make": "Optional: boolean, whether to make the structure model after creation (default: false)",
  "dryRun": "Optional: if true, only validate input without mutating the model. Default: false.",
  "conceptsJson": "Optional: the actual JSON array of concepts to create (max 4KB) OR an absolute path to a TEMPORARY file (inside the system temp directory) local temporary file containing it. If a file path is provided, the tool will delete the file after reading it (unless 'dryRun' is true).",
  "interfaceConceptsJson": "Optional: the actual JSON array of interface concepts to create (max 4KB) OR an absolute path to a TEMPORARY file (inside the system temp directory) local temporary file containing it. If a file path is provided, the tool will delete the file after reading it (unless 'dryRun' is true)."
}
```

"Inside the system temp directory" means the **JVM system temp directory** (`java.io.tmpdir`): `$TMPDIR` on macOS/Linux (on macOS a per-user `/var/folders/...` path; `/tmp` is also accepted) and `%TEMP%` on Windows. A leading `$TMPDIR` or `%TEMP%` is expanded by the server. Shell: `f="$TMPDIR/concepts-$$.json"`.

For children and references, the `target` field accepts:
* Simple name of a concept being created in this operation (e.g., `"MyNewConcept"`)
* Fully qualified name of an existing concept (e.g., `"jetbrains.mps.lang.core.structure.BaseConcept"`)
* Persistent reference to a concept (e.g., `"ceab5195-25ea-4f22-9b92-103b95ca8c0c/1133920641626"`)
* Persistent node reference to a concept's root node

The `target` can reference concepts being created in the same operation, including itself for recursive structures.

For properties, the `type` field accepts:
* `"string"`, `"integer"`, or `"boolean"` for primitive types
* Simple name of a data type in the current model or any structure model (e.g., `"MyEnum"` or `"MyConstrainedType"`)
* Persistent node reference to a data type root node (e.g., an `EnumerationDeclaration` or a `ConstrainedDataTypeDeclaration`)

Format of the JSON array for `conceptsJson`:
```json
[
  {
    "name": "Name of the concept",
    "virtualPackage": "Optional: virtual package/folder for the concept",
    "extends": "Optional: reference to the super-concept",
    "implements": ["Optional: list of references to interfaces"],
    "conceptAlias": "Optional: alias for the concept",
    "rootable": "Optional: boolean, default false",
    "abstract": "Optional: boolean, default false",
    "shortDescription": "Optional but RECOMMENDED: brief description of the concept (improves usability)",
    "documentation": "Optional: 1-2 lines of documentation text (creates DocumentedNodeAnnotation)",
    "properties": [
      { "name": "propName", "type": "string|integer|boolean|NodeReference|localDataTypeName" }
    ],
    "references": [
      { "role": "refRole", "target": "targetConceptRef", "optional": true }
    ],
    "children": [
      { "role": "childRole", "target": "targetConceptRef", "multiple": true, "optional": true }
    ]
  }
]
```

Format of the JSON array for `interfaceConceptsJson`:
```json
[
  {
    "name": "Name of the interface concept",
    "virtualPackage": "Optional: virtual package/folder for the interface concept",
    "extendedInterfaces": ["Optional: list of references to interfaces"],
    "shortDescription": "Optional but RECOMMENDED: brief description of the interface (improves usability)",
    "documentation": "Optional: 1-2 lines of documentation text (creates DocumentedNodeAnnotation)",
    "properties": [
      { "name": "propName", "type": "string|integer|boolean|NodeReference|localDataTypeName" }
    ],
    "references": [
      { "role": "refRole", "target": "targetConceptRef", "optional": true }
    ],
    "children": [
      { "role": "childRole", "target": "targetConceptRef", "multiple": true, "optional": true }
    ]
  }
]
```

The same `target` and `type` resolution rules apply to `interfaceConceptsJson`.
