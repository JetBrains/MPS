## TemplateCallMacro

Invokes another `TemplateDeclaration` with the current `node` (or an explicit source) as argument. The `template` reference is required; `sourceNodeQuery` is optional and re-binds `node` for the callee:

```json
{
  "concept": "jetbrains.mps.lang.generator.structure.TemplateCallMacro",
  "references": [
    { "role": "template", "target": "<TemplateDeclaration-node-ref>" }
  ],
  "children": [
    { "role": "sourceNodeQuery", "nodes": [
      { "concept": "jetbrains.mps.lang.generator.structure.SourceSubstituteMacro_SourceNodeQuery",
        "children": [
          { "role": "body", "nodes": [ /* e.g. `node.onEntry` */ ]}
        ]
      }
    ]}
  ]
}
```
