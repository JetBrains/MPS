# Mapping labels

Read this when: cross-rule references in the output don't resolve, declaring/wiring a label, choosing `get output` vs `pick output`, or fixing "returns null at reference site".

## What a mapping label is

A **mapping label** is a typed dictionary that records, during generation, "source node X produced output node Y". Any later rule/macro can look Y up by (label, X) — the canonical way to wire cross-references that cannot be expressed as direct children.

## When to use a mapping label

Use one whenever a generated node *somewhere else* in the output must reference a node generated *by some other rule*. Typical examples:

- a generated method call needs to resolve to a generated method;
- a generated variable reference needs to resolve to a generated `LocalVariableDeclaration`;
- a weaving rule needs to find the output parent to weave into;
- a `$REF$` (ReferenceMacro) target must point at a generated class/field/parameter.

If the cross-reference is within the same template (same `TemplateFragment`), you don't need a label — direct MPS references across the fragment are rewired automatically. Labels are for cross-rule, cross-template lookups.

## Three-part pattern

Every mapping-label use has three pieces, usually sitting in the same `main@generator.mps`:

### (a) The declaration

Under the MappingConfiguration's `mappingLabel` child role. Fully qualified concept name is `jetbrains.mps.lang.generator.structure.MappingLabelDeclaration`. A label typically names a `sourceConcept` and a `targetConcept` for type checking:

```json
{
  "concept": "jetbrains.mps.lang.generator.structure.MappingLabelDeclaration",
  "properties": [ { "name": "name", "value": "main-class" } ],
  "references": [
    { "role": "sourceConcept", "target": "<XMLDocument-concept-node-ref>" },
    { "role": "targetConcept", "target": "<ClassConcept-concept-node-ref>" }
  ]
}
```

### (b) The writer side

Whoever produces the output node attaches the label. For a `Root_MappingRule` set the `labelDeclaration` ref. For a `Reduction_MappingRule` or a `TemplateFragment`, use the same ref role. For a macro site, use a `$LABEL$` (`LabelMacro`) as an `smodelAttribute` with a `mappingLabel` ref and an optional `inputNodeQuery` to override the input node under which the output is registered.

```json
{
  "concept": "jetbrains.mps.lang.generator.structure.Root_MappingRule",
  "references": [
    { "role": "applicableConcept",  "target": "<XMLDocument-concept-node-ref>" },
    { "role": "template",           "target": "<map_Document-template-ref>" },
    { "role": "labelDeclaration",   "target": "<main-class-label-ref>" }
  ]
}
```

### (c) The reader side

Inside any macro/query body, call `genContext.get output <label> for (<inputNode>)`. The **canonical reader is a `ReferenceMacro`**: the macro's `referentFunction` calls this accessor to retrieve, from the label, the output node that the reference being generated should point at. (Any other function body — an `IfMacro` condition, a `PropertyMacro` value, a weaving rule's `contextNodeQuery`, etc. — can use the same accessor.) In the generator language this is a DotExpression where the operand is `TemplateFunctionParameter_generationContext` (i.e. `genContext`) and the operation is a node of concept `jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_GetOutputByLabelAndInput`:

```json
{
  "concept": "jetbrains.mps.baseLanguage.structure.DotExpression",
  "children": [
    { "role": "operand", "nodes": [
      { "concept": "jetbrains.mps.lang.generator.structure.TemplateFunctionParameter_generationContext" }
    ]},
    { "role": "operation", "nodes": [
      { "concept": "jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_GetOutputByLabelAndInput",
        "references": [ { "role": "mappingLabel", "target": "<main-class-label-ref>" } ],
        "children": [
          { "role": "inputNode", "nodes": [ /* expression producing the original source node */ ]}
        ]
      }
    ]}
  ]
}
```

Real-world template that combines all three pieces: `samples/generator_demo/languages/demoLang7/.../demoLang3a/generator/template/main@generator.mps` — label `main-class` is declared on the MappingConfiguration, attached to the root rule that generates the `ClassConcept` from an `XMLDocument`, and read by the weaving rule's context-node function.

## Related `genContext` accessors

| Operation | Returns | When to use |
|---|---|---|
| `get output <label> for (<input>)` | single node; error if multiple | One-to-one mapping — the common case |
| `pick output <label> for (<input>)` | single node, picks by reference context | When visibility disambiguates among multiple outputs |
| `get output list <label> for (<input>)` | sequence of nodes | One-to-many mapping |
| `get copied output for (<input>)` | node | Find the output of a plain copy (no explicit label) |
| `get prev input <label>` | node | The input of a prior step (cross-step lookup) |

See `references/generation-context.md` for the full catalog with exact concept names (all in language `jetbrains.mps.lang.generator.generationContext`).
