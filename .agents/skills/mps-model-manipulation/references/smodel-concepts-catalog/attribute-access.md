## Attribute access (`.@`)

The `.@` operator reads/sets attributes (annotations) attached to a node's universal `smodelAttribute`
slot. `AttributeAccess` goes in the `operation` role of a `DotExpression`; its mandatory `qualifier`
child names the attribute. It implements `ILinkAccess`, so it is an assignable l-value (read, or set
via `AssignmentExpression`). Full blueprints and the read/set/remove patterns are in `attribute-access.md`.

| Concept | ID | MPS notation |
|---|---|---|
| `AttributeAccess` | `6407023681583031218` | `node.@…` (alias `@`; child `qualifier`: AttributeQualifier 1) |
| `NodeAttributeQualifier` | `6407023681583036853` | `@<NodeAttribute concept>` (ref `attributeConcept` 1 → ConceptDeclaration) |
| `LinkAttributeQualifier` | `6407023681583036855` | attribute on a reference link (ref `attributeConcept` + child `linkQualifier` 1 → ILinkQualifier) |
| `ChildAttributeQualifier` | `709746936026631771` | attribute on a child link (ref `attributeConcept` + child `linkQualifier` 1) |
| `PropertyAttributeQualifier` | `6407023681583040953` | attribute on a property (ref `attributeConcept` + child `propertyQualifier` 1 → IPropertyQualifier) |
| `AllAttributeQualifier` | `6407023681583040688` | `@<all>` — sequence of all attributes |
| `LinkQualifier` | `2788452359612124332` | link-qualifier (ref `link` 1 → LinkDeclaration); or `PoundExpression` `# <expr>` (`1204834851141`) |
| `PropertyQualifier` | `2788452359612124333` | property-qualifier (ref `property` 1 → PropertyDeclaration); or `PoundExpression` |
| `Node_IsAttributeOperation` | `1205861725686` | `.isAttribute` |
| `Node_GetChildrenAndChildAttributesOperation` | `7835263205327057228` | `.childrenAndChildAttributes` |
