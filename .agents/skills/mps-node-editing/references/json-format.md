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
