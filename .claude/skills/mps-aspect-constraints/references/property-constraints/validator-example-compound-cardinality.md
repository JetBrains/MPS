## Validator example — `Compound.cardinality` (ChemMastery)

Rejects non-positive cardinalities:

```
propertyValue > 0
```

JSON blueprint — the `body` (`StatementList`) of a `ConstraintFunction_PropertyValidator`:

```json
{
  "concept": "jetbrains.mps.baseLanguage.structure.StatementList",
  "children": [
    { "role": "statement", "nodes": [
      { "concept": "jetbrains.mps.baseLanguage.structure.ExpressionStatement",
        "children": [
          { "role": "expression", "nodes": [
            { "concept": "jetbrains.mps.baseLanguage.structure.GreaterThanExpression",
              "children": [
                { "role": "leftExpression", "nodes": [
                  { "concept": "jetbrains.mps.lang.constraints.structure.ConstraintsFunctionParameter_propertyValue" }
                ]},
                { "role": "rightExpression", "nodes": [
                  { "concept": "jetbrains.mps.baseLanguage.structure.IntegerConstant",
                    "properties": [ { "name": "value", "value": "0" } ]
                  }
                ]}
              ]
            }
          ]}
        ]
      }
    ]}
  ]
}
```

Full constraint skeleton (wrap the validator body above in `NodePropertyConstraint.propertyValidator`):

```json
{
  "concept": "jetbrains.mps.lang.constraints.structure.NodePropertyConstraint",
  "references": [
    { "role": "applicableProperty", "target": "<cardinality-property-declaration-node-ref>" }
  ],
  "children": [
    { "role": "propertyValidator", "nodes": [
      { "concept": "jetbrains.mps.lang.constraints.structure.ConstraintFunction_PropertyValidator",
        "children": [
          { "role": "body", "nodes": [ /* StatementList from above */ ]}
        ]
      }
    ]}
  ]
}
```
