## Indented Child on New Line

```json
{
  "concept": "jetbrains.mps.lang.editor.structure.CellModel_RefNode",
  "children": [
    { "role": "relationDeclaration", "target": "<child link>" },
    { "role": "styleItem", "nodes": [
        { "concept": "jetbrains.mps.lang.editor.structure.IndentLayoutOnNewLineStyleClassItem", "properties": [{ "name": "flag", "value": "true" }] },
        { "concept": "jetbrains.mps.lang.editor.structure.IndentLayoutIndentStyleClassItem",   "properties": [{ "name": "flag", "value": "true" }] }
    ]}
  ]
}
```

> Boolean indent-layout style items default to `flag=false` (inert). When creating them from a blueprint you must set `flag=true`, otherwise the line break / indent has no effect. (The MPS UI sets `flag=true` for you; MCP node creation does not.)
