## Feature access and casts

| Concept | ID | MPS notation |
|---|---|---|
| `SLinkAccess` | `1138056143562` | `node.linkName` (in DotExpression) |
| `SPropertyAccess` | `1138056022639` | `node.propertyName` (in DotExpression) |
| `SNodeTypeCastExpression` | `1140137987495` | `expr as C` / `expr : C` |
| `SemanticDowncastExpression` | `1145404486709` | `expr /` — downcast smodel type (`node<C>`, `model<L>`) to Java API (`SNode`, `SModel`) |
| `SConceptTypeCastExpression` | `1761385620274348152` | cast to `concept<C>` |
| `SConceptTypeLiteral` | `5472444609684539882` | `concept/C/` concept literal |
| `RefConcept_Reference` | `1177026924588` | `<ConceptName>` concept argument wrapper |
| `LinkIdRefExpression` | `2644386474301421077` | `link/C : role/` link literal |
