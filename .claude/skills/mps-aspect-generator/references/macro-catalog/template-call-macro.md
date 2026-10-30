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

**Parameters.** A `TemplateDeclaration` declares parameters as `parameter` children (`TemplateParameterDeclaration`: property `name`, child `type`, e.g. `StringType`); the caller passes one `actualArgument` expression per parameter, in order — a literal, or a `TemplateArgumentQueryExpression` whose `query` (`TemplateArgumentQuery`) computes the value from `node`. Inside the template, a macro query reads a parameter as `genContext.<name>` (`references/generation-context.md`). `TemplateDeclarationReference` (a rule consequence) and `$SWITCH$` take `actualArgument` the same way.
