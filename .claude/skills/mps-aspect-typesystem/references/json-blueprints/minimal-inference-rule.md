## Minimal `InferenceRule` blueprint

```json
{
  "concept": "jetbrains.mps.lang.typesystem.structure.InferenceRule",
  "properties": [
    { "name": "name", "value": "typeof_MyConcept" }
  ]
}
```

Fill in `applicableNode` and `body` children afterwards. Other roots (`SubtypingRule`, `ComparisonRule`, `InequationReplacementRule`, `SubstituteTypeRule`, `NonTypesystemRule`) follow the same pattern — insert empty, then stage the children.
