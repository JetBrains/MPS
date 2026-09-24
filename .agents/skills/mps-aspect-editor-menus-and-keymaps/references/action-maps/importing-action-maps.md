## Importing Action Maps

Action maps can import entire maps or individual actions via `CellActionMapImport` items in the `imports` role. Each import holds:

- `cellActionMap` (ref, 1) — the map to import from.
- `selector` (child, 1) of one of:
  - `CellActionMapImportSelectorByActionId` — property `actionId`, selects a single action.
  - `CellActionMapImportWildcardSelector` — no fields, imports **every** item.

```json
{
  "concept": "jetbrains.mps.lang.editor.structure.CellActionMapDeclaration",
  "properties": [{ "name": "name", "value": "MyConcept_ActionMap" }],
  "references": [{ "role": "applicableConcept", "target": "my.lang.MyConcept" }],
  "children": [
    {
      "role": "imports",
      "nodes": [
        {
          "concept": "jetbrains.mps.lang.editor.structure.CellActionMapImport",
          "references": [
            { "role": "cellActionMap", "target": "SomeSuper_ActionMap" }
          ],
          "children": [{
            "role": "selector",
            "nodes": [{ "concept": "jetbrains.mps.lang.editor.structure.CellActionMapImportWildcardSelector" }]
          }]
        },
        {
          "concept": "jetbrains.mps.lang.editor.structure.CellActionMapImport",
          "references": [
            { "role": "cellActionMap", "target": "OtherMap_ActionMap" }
          ],
          "children": [{
            "role": "selector",
            "nodes": [{
              "concept": "jetbrains.mps.lang.editor.structure.CellActionMapImportSelectorByActionId",
              "properties": [{ "name": "actionId", "value": "right_transform_action_id" }]
            }]
          }]
        }
      ]
    }
    /* plus "item": [...] */
  ]
}
```

### Import Rules

- **Transitive**: an imported map's imports come along.
- **Winner**: the current map's items win; among imports, the most recently imported wins on conflict.
- **No cycles**: cyclic imports are rejected with an error.
- **Concept compatibility**: the imported map's `applicableConcept` must equal or be a super-concept of the importer's.
- **Cross-language**: imports across languages are allowed.
- **Dynamic resolution**: imports are resolved at runtime, so an importer does not need regeneration when an imported map changes.
