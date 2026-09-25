## JSON blueprint — `ScopeProvider.getScope` method skeleton

Parameters + return type + overriddenMethod:

```json
{
  "concept": "jetbrains.mps.lang.behavior.structure.ConceptMethodDeclaration",
  "properties": [
    { "name": "name", "value": "getScope" }
  ],
  "references": [
    { "role": "overriddenMethod",
      "target": "r:00000000-0000-4000-0000-011c89590282(jetbrains.mps.lang.core.behavior)/5811245382203252452" }
  ],
  "children": [
    { "role": "visibility", "nodes": [
      { "concept": "jetbrains.mps.baseLanguage.structure.PublicVisibility" }
    ]},
    { "role": "returnType", "nodes": [
      { "concept": "jetbrains.mps.baseLanguage.structure.ClassifierType",
        "references": [
          { "role": "classifier", "target": "Scope" }
        ]
      }
    ]},
    { "role": "parameter", "nodes": [
      { "concept": "jetbrains.mps.baseLanguage.structure.ParameterDeclaration",
        "properties": [ { "name": "name", "value": "kind" } ],
        "children": [
          { "role": "type", "nodes": [
            { "concept": "jetbrains.mps.lang.smodel.structure.SConceptType" }
          ]}
        ]
      },
      { "concept": "jetbrains.mps.baseLanguage.structure.ParameterDeclaration",
        "properties": [ { "name": "name", "value": "child" } ],
        "children": [
          { "role": "type", "nodes": [
            { "concept": "jetbrains.mps.lang.smodel.structure.SNodeType" }
          ]}
        ]
      }
    ]},
    { "role": "body", "nodes": [
      { "concept": "jetbrains.mps.baseLanguage.structure.StatementList" }
    ]}
  ]
}
```

## JSON blueprint — `parent scope` return statement (the common default)

```json
{
  "concept": "jetbrains.mps.baseLanguage.structure.ReturnStatement",
  "children": [
    { "role": "expression", "nodes": [
      { "concept": "jetbrains.mps.lang.scopes.structure.ParentScope" }
    ]}
  ]
}
```
