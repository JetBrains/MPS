## IfMacro

Gates the owning target subtree. Body returns `boolean`:

```json
{
  "concept": "jetbrains.mps.lang.generator.structure.IfMacro",
  "children": [
    { "role": "conditionFunction", "nodes": [
      { "concept": "jetbrains.mps.lang.generator.structure.IfMacro_Condition",
        "children": [
          { "role": "body", "nodes": [ /* StatementList — e.g. `node.states.isNotEmpty` */ ]}
        ]
      }
    ]}
  ]
}
```

**Do not duplicate an `IfMacro` with a negated condition as a sibling** — use the `alternativeConsequence` child instead. It holds the else-branch as a `RuleConsequence` (typically an `InlineTemplateWithContext_RuleConsequence` carrying a target subtree, or a `TemplateDeclarationReference`). This keeps the condition single-sourced and lets the else-branch reuse macros/fragments:

```json
{
  "concept": "jetbrains.mps.lang.generator.structure.IfMacro",
  "children": [
    { "role": "conditionFunction", "nodes": [
      { "concept": "jetbrains.mps.lang.generator.structure.IfMacro_Condition",
        "children": [ { "role": "body", "nodes": [ /* boolean StatementList */ ]} ]
      }
    ]},
    { "role": "alternativeConsequence", "nodes": [
      { "concept": "jetbrains.mps.lang.generator.structure.InlineTemplateWithContext_RuleConsequence",
        "children": [
          { "role": "templateNode", "nodes": [ /* else-branch target subtree */ ]},
          { "role": "contextNode",  "nodes": [ /* optional context */ ]}
        ]
      }
    ]}
  ]
}
```
