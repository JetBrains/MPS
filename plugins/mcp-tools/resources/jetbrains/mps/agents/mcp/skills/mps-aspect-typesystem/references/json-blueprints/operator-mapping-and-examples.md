## Operator → concept mapping

| Syntax | Concept |
|---|---|
| `typeof(x) :==: expr` | `CreateEquationStatement` |
| `infer typeof(x) :<=: expr` | `CreateLessThanInequationStatement` |
| `infer typeof(x) :>=: expr` | `CreateGreaterThanInequationStatement` |
| `typeof(x) :<<=: expr` (strong) | `CreateStrongLessThanInequationStatement` |
| `typeof(x) :>>=: expr` (strong) | `CreateStrongGreaterThanInequationStatement` |

Both `leftExpression` and `rightExpression` are `TypeClause` slots — always wrap the real Expression in a `NormalTypeClause` (`normalType` child holds the actual Expression). Do **not** put the Expression directly under `leftExpression`/`rightExpression`.

## (a) Hard equation `typeof(nodeToCheck) :==: <string>`

Assigns a literal type:

```json
{
  "concept": "jetbrains.mps.lang.typesystem.structure.CreateEquationStatement",
  "children": [
    { "role": "leftExpression", "nodes": [{
      "concept": "jetbrains.mps.lang.typesystem.structure.NormalTypeClause",
      "children": [{ "role": "normalType", "nodes": [{
        "concept": "jetbrains.mps.lang.typesystem.structure.TypeOfExpression",
        "children": [{ "role": "term", "nodes": [{
          "concept": "jetbrains.mps.lang.typesystem.structure.ApplicableNodeReference",
          "references": [{ "role": "applicableNode", "target": "<ref-to-rule's-ConceptReference>" }]
        }]}]
      }]}]
    }]},
    { "role": "rightExpression", "nodes": [{
      "concept": "jetbrains.mps.lang.typesystem.structure.NormalTypeClause",
      "children": [{ "role": "normalType", "nodes": [{
        "concept": "jetbrains.mps.lang.quotation.structure.Quotation",
        "children": [{ "role": "quotedNode", "nodes": [{
          "concept": "jetbrains.mps.baseLanguage.structure.StringType"
        }]}]
      }]}]
    }]}
  ]
}
```

## (b) Soft inequation `infer typeof(toe.condition) :<=: <boolean>`

`typeof` of a child, literal-type RHS:

```json
{
  "concept": "jetbrains.mps.lang.typesystem.structure.CreateLessThanInequationStatement",
  "children": [
    { "role": "leftExpression", "nodes": [{
      "concept": "jetbrains.mps.lang.typesystem.structure.NormalTypeClause",
      "children": [{ "role": "normalType", "nodes": [{
        "concept": "jetbrains.mps.lang.typesystem.structure.TypeOfExpression",
        "children": [{ "role": "term", "nodes": [{
          "concept": "jetbrains.mps.baseLanguage.structure.DotExpression",
          "children": [
            { "role": "operand", "nodes": [{
              "concept": "jetbrains.mps.lang.typesystem.structure.ApplicableNodeReference",
              "references": [{ "role": "applicableNode", "target": "<ref-to-rule's-ConceptReference>" }]
            }]},
            { "role": "operation", "nodes": [{
              "concept": "jetbrains.mps.lang.smodel.structure.SLinkAccess",
              "references": [{ "role": "link", "target": "<ref-to-LinkDeclaration-condition>" }]
            }]}
          ]
        }]}]
      }]}]
    }]},
    { "role": "rightExpression", "nodes": [{
      "concept": "jetbrains.mps.lang.typesystem.structure.NormalTypeClause",
      "children": [{ "role": "normalType", "nodes": [{
        "concept": "jetbrains.mps.lang.quotation.structure.Quotation",
        "children": [{ "role": "quotedNode", "nodes": [{
          "concept": "jetbrains.mps.baseLanguage.structure.BooleanType"
        }]}]
      }]}]
    }]}
  ]
}
```

## (c) `typeof(a) :>=: typeof(b)`

Both sides `TypeOfExpression`: same shape as (b) but the `rightExpression`'s `normalType` is another `TypeOfExpression` (not a `Quotation`). Use `CreateGreaterThanInequationStatement` as the root.

## (d) Subtype rule body `return <float>;`

The `SubtypingRule` body's single statement is a BaseLanguage `ReturnStatement` whose `expression` is a `Quotation`:

```json
{
  "concept": "jetbrains.mps.baseLanguage.structure.ReturnStatement",
  "children": [{ "role": "expression", "nodes": [{
    "concept": "jetbrains.mps.lang.quotation.structure.Quotation",
    "children": [{ "role": "quotedNode", "nodes": [{
      "concept": "jetbrains.mps.baseLanguage.structure.FloatType"
    }]}]
  }]}]
}
```

## (e) Statements that emit a message

Used inside `InferenceRule`/`NonTypesystemRule`/`InequationReplacementRule` bodies:

```json
{
  "concept": "jetbrains.mps.lang.typesystem.structure.ReportErrorStatement",
  "children": [
    { "role": "errorString", "nodes": [{
      "concept": "jetbrains.mps.baseLanguage.structure.StringLiteral",
      "properties": [{ "name": "value", "value": "expected message here" }]
    }]},
    { "role": "nodeToReport", "nodes": [{
      "concept": "jetbrains.mps.lang.typesystem.structure.ApplicableNodeReference",
      "references": [{ "role": "applicableNode", "target": "<ref-to-rule's-ConceptReference>" }]
    }]}
  ]
}
```

Replace `ReportErrorStatement` with `WarningStatement` (slot `warningText` instead of `errorString`) or `InfoStatement` (slot `infoString`) as needed. A statement can additionally carry `helginsIntention` (quick-fix; see `quick-fixes.md`) and `messageTarget` (see `messages-and-helpers.md`) children.

## (f) Anti-quotation `%(expr)%`

Inside a `Quotation`, an `Antiquotation` splices a BaseLanguage Expression into the quoted node. Verify the exact concept via `mps_mcp_search_concepts` (language `jetbrains.mps.lang.quotation`) before inserting, as there are property/node/reference-antiquotation variants. See the `mps-quotations` skill for the full antiquotation catalog.
