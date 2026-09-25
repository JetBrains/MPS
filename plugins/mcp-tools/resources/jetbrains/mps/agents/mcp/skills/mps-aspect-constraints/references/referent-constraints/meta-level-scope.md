### Meta-level scope: offering structure declarations (`LinkDeclaration` referents)

Use when a reference targets a **structure declaration** of another language — e.g. an annotation
concept that names a containment role of its host via a `link : LinkDeclaration` reference (see
`references/attributes-and-annotations.md` in the `mps-aspect-structure-concepts` skill root after loading that companion skill from the same origin §"Choosing the kind").
The scope is built from the *host concept's own declarations*, reached through
`node.conceptNode` and the structure-language behavior methods.

**Verbatim example from `jetbrains.mps.lang.test` `UnorderedChildrenMark_Constraints`, link `link`** —
offer only the host node's multi-valued containment roles:

```
ListScope.forResolvableElements(
    referenceNode.parent.conceptNode.getAggregationLinkDeclarations()
        .where({it => !it.isSingular(); }).toList);
```

Key pieces:
- `referenceNode.parent` — for a node attribute (annotation) the parent **is the host node** being
  attributed; for an ordinary child, it is the containing node.
- `.conceptNode` — smodel operation yielding the node's concept **declaration node** (in the
  language's `structure` model), which is what a `LinkDeclaration`-targeting reference must offer.
- `getAggregationLinkDeclarations()` — behavior method on `AbstractConceptDeclaration`
  (`jetbrains.mps.lang.structure.behavior`) returning all containment `LinkDeclaration`s including
  inherited ones; `getLinkDeclarations()` / `getPropertyDeclarations()` are the analogous calls for
  references and properties. `isSingular()` on `LinkDeclaration` filters cardinality (`0..1`/`1` vs
  `0..n`/`1..n`).
- `ListScope.forResolvableElements(list)` — names elements via their resolve info, which works for
  declarations (whose "name" is the role); see `scope-helpers.md`.
- The model authoring such references must be able to *see* the language under test's structure —
  usually already true because the model imports that language for its regular content.

For a reference to a `PropertyDeclaration`, the analogous body iterates
`getPropertyDeclarations()`. Precedent in the MPS codebase: `jetbrains.mps.lang.smodel`'s
`LinkRefExpression_Constraints` solves the same problem for `link/C : role/` literals.

Verbatim JSON of the scope-factory `body` (`StatementList`), extracted from the live constraint.
All targets below are **stable refs** into MPS's own models and can be used as-is:

```json
{
  "concept": "jetbrains.mps.baseLanguage.structure.StatementList",
  "children": [{ "role": "statement", "nodes": [{
    "concept": "jetbrains.mps.baseLanguage.structure.ExpressionStatement",
    "children": [{ "role": "expression", "nodes": [{
      "concept": "jetbrains.mps.baseLanguage.structure.StaticMethodCall",
      "references": [
        { "role": "classConcept",          "target": "r:314576fc-3aee-4386-a0a5-a38348ac317d(jetbrains.mps.scope)/5455284157994035575" },
        { "role": "baseMethodDeclaration", "target": "r:314576fc-3aee-4386-a0a5-a38348ac317d(jetbrains.mps.scope)/3812912149866273308" }
      ],
      "children": [{ "role": "actualArgument", "nodes": [{
        "concept": "jetbrains.mps.baseLanguage.structure.DotExpression",
        "children": [
          { "role": "operand", "nodes": [{
            "concept": "jetbrains.mps.baseLanguage.structure.DotExpression",
            "children": [
              { "role": "operand", "nodes": [{
                "concept": "jetbrains.mps.baseLanguage.structure.DotExpression",
                "children": [
                  { "role": "operand", "nodes": [{
                    "concept": "jetbrains.mps.baseLanguage.structure.DotExpression",
                    "children": [
                      { "role": "operand", "nodes": [{
                        "concept": "jetbrains.mps.baseLanguage.structure.DotExpression",
                        "children": [
                          { "role": "operand",   "nodes": [{ "concept": "jetbrains.mps.lang.constraints.structure.ConstraintFunctionParameter_referenceNode" }]},
                          { "role": "operation", "nodes": [{ "concept": "jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" }]}
                        ]}]},
                      { "role": "operation", "nodes": [{ "concept": "jetbrains.mps.lang.smodel.structure.Node_GetConceptOperation" }]}
                    ]}]},
                  { "role": "operation", "nodes": [{
                    "concept": "jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall",
                    "references": [{ "role": "baseMethodDeclaration",
                      "target": "r:00000000-0000-4000-0000-011c8959028b(jetbrains.mps.lang.structure.behavior)/1213877394521" }] }]}
                ]}]},
              { "role": "operation", "nodes": [{
                "concept": "jetbrains.mps.baseLanguage.collections.structure.WhereOperation",
                "children": [{ "role": "closure", "nodes": [{
                  "concept": "jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral",
                  "children": [
                    { "role": "parameter", "nodes": [{
                      "concept": "jetbrains.mps.baseLanguage.closures.structure.InferredClosureParameterDeclaration",
                      "properties": [{ "name": "name", "value": "it" }, { "name": "resolveInfo", "value": "it" }],
                      "children": [{ "role": "type", "nodes": [{ "concept": "jetbrains.mps.baseLanguage.structure.UndefinedType" }]}] }]},
                    { "role": "body", "nodes": [{
                      "concept": "jetbrains.mps.baseLanguage.structure.StatementList",
                      "children": [{ "role": "statement", "nodes": [{
                        "concept": "jetbrains.mps.baseLanguage.structure.ExpressionStatement",
                        "children": [{ "role": "expression", "nodes": [{
                          "concept": "jetbrains.mps.baseLanguage.structure.NotExpression",
                          "children": [{ "role": "expression", "nodes": [{
                            "concept": "jetbrains.mps.baseLanguage.structure.DotExpression",
                            "children": [
                              { "role": "operand", "nodes": [{
                                "concept": "jetbrains.mps.baseLanguage.structure.VariableReference",
                                "references": [{ "role": "variableDeclaration", "target": "<it-closure-param-node-ref>" }] }]},
                              { "role": "operation", "nodes": [{
                                "concept": "jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall",
                                "references": [{ "role": "baseMethodDeclaration",
                                  "target": "r:00000000-0000-4000-0000-011c8959028b(jetbrains.mps.lang.structure.behavior)/1213877254557" }] }]}
                            ]}]}]
                        }]}]
                      }]}]
                    }]}
                  ]}]}]
              }]}
            ]}]},
          { "role": "operation", "nodes": [{ "concept": "jetbrains.mps.baseLanguage.collections.structure.ToListOperation" }]}
        ]
      }]}]
    }]}]
  }]}]
}
```

Key FQNs (verified against the live node):

| Surface | Concept / target |
|---|---|
| `.conceptNode` | `jetbrains.mps.lang.smodel.structure.Node_GetConceptOperation` (no children) |
| `.getAggregationLinkDeclarations()` / `.isSingular()` | `jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall` with `baseMethodDeclaration` → the behavior method in `jetbrains.mps.lang.structure.behavior` (stable refs above) |
| `ListScope.forResolvableElements` | class `r:...(jetbrains.mps.scope)/5455284157994035575`, method `r:...(jetbrains.mps.scope)/3812912149866273308` |
| `referenceNode` | `jetbrains.mps.lang.constraints.structure.ConstraintFunctionParameter_referenceNode` |

The closure-literal shape (obligatory `type` → `UndefinedType`, `resolveInfo`) follows
`references/closures-catalog.md` in the `mps-model-manipulation` skill root after loading that companion skill from the same origin.
