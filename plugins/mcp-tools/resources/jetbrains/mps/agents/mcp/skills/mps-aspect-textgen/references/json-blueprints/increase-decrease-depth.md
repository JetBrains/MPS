## `increase depth` / `decrease depth` from `BlockStatement_TextGen`

Body as it appears in baseLanguage:

```
if (node.parent.isInstanceOf(IfStatement)) { append { {} ; }
else                                       { append \n {{} ; }
increase depth ;
if (node.statements.isNotNull)             { append ${node.statements} ; }
decrease depth ;
append \n {}} ;
```

The two depth ops are zero-argument statements:

```json
{ "concept": "jetbrains.mps.lang.textGen.structure.IncreaseDepthOperation" }
```

```json
{ "concept": "jetbrains.mps.lang.textGen.structure.DecreaseDepthOperation" }
```

Placed inside the parent `StatementList` of a `GenerateTextDeclaration.body`:

```json
{
  "concept": "jetbrains.mps.baseLanguage.structure.StatementList",
  "children": [
    { "role": "statement", "nodes": [
      { "concept": "jetbrains.mps.lang.textGen.structure.AppendOperation",
        "children": [
          { "role": "part", "nodes": [
            { "concept": "jetbrains.mps.lang.textGen.structure.NewLineAppendPart" },
            { "concept": "jetbrains.mps.lang.textGen.structure.ConstantStringAppendPart",
              "properties": [{ "name": "value", "value": "{" }] }
          ]}
        ]
      }
    ]},
    { "role": "statement", "nodes": [
      { "concept": "jetbrains.mps.lang.textGen.structure.IncreaseDepthOperation" }
    ]},
    { "role": "statement", "nodes": [
      /* …emit inner statements via an AppendOperation/NodeAppendPart… */
    ]},
    { "role": "statement", "nodes": [
      { "concept": "jetbrains.mps.lang.textGen.structure.DecreaseDepthOperation" }
    ]},
    { "role": "statement", "nodes": [
      { "concept": "jetbrains.mps.lang.textGen.structure.AppendOperation",
        "children": [
          { "role": "part", "nodes": [
            { "concept": "jetbrains.mps.lang.textGen.structure.NewLineAppendPart" },
            { "concept": "jetbrains.mps.lang.textGen.structure.ConstantStringAppendPart",
              "properties": [{ "name": "value", "value": "}" }] }
          ]}
        ]
      }
    ]}
  ]
}
```
