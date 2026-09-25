## Body-level wrapper

MPS stores rule bodies as AST. Since agents can only insert nodes as JSON, here are the core body-level patterns verified against real MPS sources (e.g. `typeOf_TernaryOperator`, `long_extends_float` in `jetbrains.mps.baseLanguage.typesystem`). All equations/inequations live inside a `StatementList` under the rule's `body` role; each rule body is structured as:

```json
{ "role": "body", "nodes": [{
  "concept": "jetbrains.mps.baseLanguage.structure.StatementList",
  "children": [{ "role": "statement", "nodes": [ /* one entry per line below */ ] }]
}]}
```
