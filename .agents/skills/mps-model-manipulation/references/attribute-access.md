# Attribute access — the `.@` operator

Attributes (annotations) graft extra children / references / property data onto nodes of a concept
without that concept declaring them; the instance is stored in the host node's universal
`smodelAttribute` child slot. (For the structure side — declaring an attribute concept, the four
`NodeAttribute` / `PropertyAttribute` / `ChildAttribute` / `LinkAttribute` kinds, and the
`AttributeInfo` extension-point spec — see `mps-aspect-structure-concepts/references/attributes-and-annotations.md`.)

In smodel code you reach an attached attribute through the **`.@` operator**, then read/write the
attribute node with ordinary smodel operations. `.@` is a smodel extension the Java parser cannot
produce, so it always needs a JSON blueprint.

## Concepts

`jetbrains.mps.lang.smodel.structure.AttributeAccess` (alias `@`, ID `6407023681583031218`) is an
`SNodeOperation` in the **`operation`** role of a `DotExpression`. It implements `ILinkAccess`, so —
like a single-link `SLinkAccess` — it is an **assignable l-value**: read it for the attribute node,
or put it on the left of an assignment to attach / replace / remove the attribute.

Its mandatory **`qualifier`** child (concept `AttributeQualifier`, `6407023681583036843`) names which
attribute is meant:

| Qualifier (in `qualifier` role) | ID | Picks out | Extra slots |
|---|---|---|---|
| `NodeAttributeQualifier` | `6407023681583036853` | a whole-node attribute by concept | ref `attributeConcept` (1) → `ConceptDeclaration` |
| `LinkAttributeQualifier` | `6407023681583036855` | an attribute on one **reference** link | ref `attributeConcept` (1) + child `linkQualifier` (1) → `ILinkQualifier` |
| `ChildAttributeQualifier` | `709746936026631771` | an attribute on one **child** link | ref `attributeConcept` (1) + child `linkQualifier` (1) → `ILinkQualifier` |
| `PropertyAttributeQualifier` | `6407023681583040953` | an attribute on one **property** | ref `attributeConcept` (1) + child `propertyQualifier` (1) → `IPropertyQualifier` |
| `AllAttributeQualifier` | `6407023681583040688` | **all** attributes (alias `<all>`) | — (returns a sequence) |

The feature-pinning children for the link/child/property forms:
- `linkQualifier` → `LinkQualifier` (`2788452359612124332`, ref `link` (1) → `LinkDeclaration`) or
  `PoundExpression` (`# <expr>`, ID `1204834851141`) for a dynamic link.
- `propertyQualifier` → `PropertyQualifier` (`2788452359612124333`, ref `property` (1) →
  `PropertyDeclaration`) or `PoundExpression` for a dynamic property.

Companion node operations (also `operation` of a `DotExpression`):
- `Node_IsAttributeOperation` (`1205861725686`, alias `isAttribute`) — `node.isAttribute` test.
- `Node_GetChildrenAndChildAttributesOperation` (`7835263205327057228`, alias
  `childrenAndChildAttributes`) — children of a role joined with that role's child attributes.

## Read a node attribute — `node.@RequirementTrace`

Returns `node<RequirementTrace>` (or null when the node carries no such attribute).

```json
{
  "concept": "jetbrains.mps.baseLanguage.structure.DotExpression",
  "children": [
    { "role": "operand",   "nodes": [{ "...": "<node-expression typed node<...>>" }] },
    { "role": "operation", "nodes": [{
      "concept": "jetbrains.mps.lang.smodel.structure.AttributeAccess",
      "children": [
        { "role": "qualifier", "nodes": [{
          "concept": "jetbrains.mps.lang.smodel.structure.NodeAttributeQualifier",
          "references": [{ "role": "attributeConcept", "target": "<RequirementTrace concept noderef or name>" }]
        }]}
      ]
    }]}
  ]
}
```

`attributeConcept` targets the attribute's `ConceptDeclaration` — pass its persistent node ref or its
name for in-scope auto-resolution.

## Read the grafted features

Once you hold the attribute node, its added children/references/properties are plain smodel access.
`RequirementTrace` adds `mentions : RequirementEntryReference[0..n]`, so the whole chain
`node.@RequirementTrace.mentions` is a `DotExpression` whose operand is the read blueprint above and
whose operation is an `SLinkListAccess` on the `mentions` link (see `dot-expression-basics.md` for
the link-access blueprints and the singular-vs-list cardinality rule).

## Attach / replace / remove — `node.@RequirementTrace = …`

`.@` is assignable: wrap the read blueprint as the `lValue` of a BaseLanguage `AssignmentExpression`.
Assign a `new node<RequirementTrace>()` (see `SNodeCreator` in `smodel-concepts-catalog.md`) to
attach or replace; assign `null` to remove.

```json
{
  "concept": "jetbrains.mps.baseLanguage.structure.AssignmentExpression",
  "children": [
    { "role": "lValue", "nodes": [{
      "concept": "jetbrains.mps.baseLanguage.structure.DotExpression",
      "children": [
        { "role": "operand",   "nodes": [{ "...": "<node-expression>" }] },
        { "role": "operation", "nodes": [{
          "concept": "jetbrains.mps.lang.smodel.structure.AttributeAccess",
          "children": [{ "role": "qualifier", "nodes": [{
            "concept": "jetbrains.mps.lang.smodel.structure.NodeAttributeQualifier",
            "references": [{ "role": "attributeConcept", "target": "<RequirementTrace concept>" }]
          }]}]
        }]}
      ]
    }]},
    { "role": "rValue", "nodes": [{ "...": "<new node<RequirementTrace>() | null>" }] }
  ]
}
```

## `multiple` attributes — `.@` is a list

The read/assign semantics above describe an attribute whose `AttributeInfo` has `multiple = false`
(at most one instance per node). When the attribute is declared **`multiple`**, `node.@<...>`
yields the **sequence** of attached instances instead of a single node:

- append with `.add(...)` (collections `AddElementOperation`), as in an attach-intention body:
  `node.@unorderedChildren.add(m);` (see
  `mps-aspect-intentions/references/execute-idioms.md` §"Attach an Annotation");
- remove one instance with `.detach` / `.delete` on the specific attribute node (assigning `null`
  replaces/removes a *single* attribute — it is not how you drop one element of a multiple);
- iterate/filter with the usual collection operations.

The JSON shape of the access is unchanged (`AttributeAccess` + qualifier) — only the result type
and the operations you chain on it differ.

## Property / child / reference attribute access

Same shape, but the qualifier also pins the feature. For a `PropertyAttribute` on property `p`, use
`PropertyAttributeQualifier` with both `attributeConcept` and a `propertyQualifier`:

```json
{
  "concept": "jetbrains.mps.lang.smodel.structure.AttributeAccess",
  "children": [
    { "role": "qualifier", "nodes": [{
      "concept": "jetbrains.mps.lang.smodel.structure.PropertyAttributeQualifier",
      "references": [{ "role": "attributeConcept", "target": "<MyPropertyAttribute concept>" }],
      "children": [{ "role": "propertyQualifier", "nodes": [{
        "concept": "jetbrains.mps.lang.smodel.structure.PropertyQualifier",
        "references": [{ "role": "property", "target": "<PropertyDeclaration of p>" }]
      }]}]
    }]}
  ]
}
```

For `ChildAttributeQualifier` / `LinkAttributeQualifier`, swap in a `linkQualifier` child holding a
`LinkQualifier` whose `link` references the targeted child/reference `LinkDeclaration`.

## `node.@<all>` — every attribute

`AllAttributeQualifier` (no references) yields the sequence of all attributes on the node — useful
for generic traversal:

```json
{
  "concept": "jetbrains.mps.lang.smodel.structure.AttributeAccess",
  "children": [{ "role": "qualifier", "nodes": [{
    "concept": "jetbrains.mps.lang.smodel.structure.AllAttributeQualifier"
  }]}]
}
```

## Gotchas

- **Parser blind spot** — `.@` (and the qualifiers) cannot be produced by `mps_mcp_parse_java_and_insert`;
  always blueprint it.
- **Operand typing** — like every feature access, the `operand` must be a typed `node<…>`; cast an
  untyped operand with `SNodeTypeCastExpression` (see `dot-expression-basics.md`).
- **`smodel` is enough** — `AttributeAccess` lives in `jetbrains.mps.lang.smodel`, present in every
  code-bearing model; no extra used-language import is needed for `.@` itself. The model must still
  see the attribute's own language to resolve `attributeConcept`.
- **null when absent** — reading a node attribute that is not attached returns null; guard with
  `.isNotNull` or `node.isAttribute` before chaining into grafted features.
