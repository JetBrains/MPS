# Unified JSON Format

MPS tools use a single JSON blueprint shape for all insertions and updates:

```json
{
  "concept": "fully.qualified.ConceptName",
  "properties": [
    { "name": "propertyName", "value": "propertyValue" }
  ],
  "children": [
    {
      "role": "childRoleName",
      "nodes": [
        { "concept": "fully.qualified.ChildConcept", "properties": [...] }
      ]
    }
  ],
  "references": [
    {
      "role": "referenceRoleName",
      "target": "targetNodeNameOrRef"
    }
  ]
}
```

* **Concept**: always use the fully qualified concept name.
* **Optional sections**: `properties`, `children`, and `references` can be omitted if empty.
* **Reference resolution**: `target` accepts a persistent node reference (`r:...`) or a node **name** for auto-resolution in scope. Auto-resolution is ideal for local references within the same blueprint.
* **Best practices**: avoid deprecated concepts, properties, or roles.
* **Default property values are invisible**: MPS stores nothing for a property that holds its default value — most visibly the *first/default literal* of an enumeration. Dumps (`mps_mcp_print_node`, `mps_mcp_get_project_structure includeNodes`) therefore **omit** such a property, while report-style output prints `"value": ""`. Read absent / `""` as **"holds its default"**, not as "missing", and do not copy a `""` enum value into a blueprint — simply omit the property.

## Object vs. array, and where the file may live

* `mps_mcp_insert_root_node_from_json` (`json`) accepts a **single object or a top-level array** of blueprints; an array is inserted atomically.
* `mps_mcp_update_node` (`childJson`, `ADD`/`SET` × `CHILD`) accepts a **single object only** — a top-level array fails with `Expected JsonObject but was JsonArray`. To add N children, call `ADD`/`CHILD` N times, or nest all N under the parent blueprint's `children[].nodes` and insert the parent once.
* Either parameter may be inline JSON (max 4 KB) **or an absolute file path**, and the file **must be inside the JVM system temp directory**:
  * macOS/Linux — under `$TMPDIR` (on macOS a per-user `/var/folders/...` directory). On macOS, `/tmp` and `/private/tmp` are also accepted (they are aliases).
  * Windows — under `%TEMP%`.
  * A leading `$TMPDIR`, `${TMPDIR}`, `$TEMP`, `$TMP`, `%TEMP%`, `%TMP%`, or `%TMPDIR%` in the path is expanded by the server.
  * Shell example: `f="$TMPDIR/blueprint-$$.json"; cat > "$f" <<'JSON' … JSON` and pass `$f` (or the unexpanded `$TMPDIR/...` form).
  * An agent file-writing tool (e.g. `Write`) is fine too: write under `$TMPDIR`, or `/tmp` on macOS.

## Response Envelope

All blueprint mutation tools return the standard MCP envelope:

```json
{ "ok": true, "data": { ... } }
```

On **dry-run** (`dryRun: true`) the `data` payload is:

```json
{ "dryRun": true, "message": "Dry run successful for ..." }
```

A `"warnings"` array may appear at the top level alongside `data` when the staging phase found something to surface — most commonly an unresolved reference that would become a dynamic ref on the production write:

```json
{
  "ok": true,
  "data": { "dryRun": true, "message": "..." },
  "warnings": ["Dry run at $.references[0]: target 'SomeName' did not resolve; production run would create a dynamic reference, but dry-run skips this step."]
}
```

Treat a non-empty `warnings` list as a signal to either fix the reference target before writing, or accept that the write will create a dynamic (potentially broken) reference. See `references/reference-formats.md` in the `mps-mcp-workflow` skill root after loading that companion skill from the same origin for the full envelope shape.
