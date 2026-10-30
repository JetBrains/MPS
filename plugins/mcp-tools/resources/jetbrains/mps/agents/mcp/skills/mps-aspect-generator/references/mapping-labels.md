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

Under the MappingConfiguration's `mappingLabel` child role. Fully qualified concept name is `jetbrains.mps.lang.generator.structure.MappingLabelDeclaration`. `sourceConcept` and `targetConcept` are optional and only type the readers (`get output` then returns `node<targetConcept>`, and its input must be a `node<sourceConcept>` — cast an untyped `node.parent` with `: <Concept>`); `sourceConcept2` declares the second key of a two-key label:

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

Whoever produces the output node attaches the label, keyed by the input node of that site:

| Writer | Label role |
|---|---|
| `Root_MappingRule`, `Reduction_MappingRule`, `Weaving_MappingRule`, `PatternReduction_MappingRule` | ref `labelDeclaration` |
| `CreateRootRule` (conditional root rule; no input — read it with `get output <label>` without an input) | ref `label` |
| `TemplateFragment` (e.g. the woven method of a weaving template) | ref `labelDeclaration` |
| any node macro (`$LOOP$`, `$COPY_SRC$`, `$MAP_SRC$`, `$SWITCH$`, `$CALL$`, `$INSERT$`, …) | ref `mappingLabel`: labels what that macro outputs, keyed by the macro's input |
| `$LABEL$` (`LabelMacro`) on a plain template node | ref `mappingLabel`; optional key queries `input1` / `input2` (`LabelMacroInputQuery`), default key = the current input `node` |

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

A `$LOOP$` with `mappingLabel` registers each iteration's output under that iteration's element — the usual way to label generated method parameters, fields or array elements one per source node.

### (c) The reader side

Inside any macro/query body, call `genContext.get output <label> for (<inputNode>)`. The **canonical reader is a `ReferenceMacro`**: the macro's `referentFunction` calls this accessor to retrieve, from the label, the output node that the reference being generated should point at. (Any other function body — an `IfMacro` condition, a `PropertyMacro` value, a weaving rule's `contextNodeQuery`, etc. — can use the same accessor.) In the generator language this is a DotExpression where the operand is `TemplateFunctionParameter_generationContext` (i.e. `genContext`) and the operation is a node of concept `jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_GetOutputByLabelAndInput`. Every label operation references the label through role **`label`**:

```json
{
  "concept": "jetbrains.mps.baseLanguage.structure.DotExpression",
  "children": [
    { "role": "operand", "nodes": [
      { "concept": "jetbrains.mps.lang.generator.generationContext.structure.TemplateFunctionParameter_generationContext" }
    ]},
    { "role": "operation", "nodes": [
      { "concept": "jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_GetOutputByLabelAndInput",
        "references": [ { "role": "label", "target": "<main-class-label-ref>" } ],
        "children": [
          { "role": "inputNode", "nodes": [ /* expression producing the original source node */ ]}
        ]
      }
    ]}
  ]
}
```

The second key of a two-key label goes into child `input2` of `get output` / `get output list`.

Real-world template that combines all three pieces: `jetbrains.mps.samples.generator_demo.demoLang7` — label `main-class` is written by the root rule that generates the `ClassConcept` from an `XMLDocument` and read by the weaving rules' context-node functions; label `createComponentMethods` is written by a `$LABEL$` in the weaving templates and read by a `$REF$`.

## Related `genContext` accessors

| Operation | Concept | Returns | When to use |
|---|---|---|---|
| `get output <label> for (<input>)` | `GenerationContextOp_GetOutputByLabelAndInput` | single node; error if multiple | One-to-one mapping — the common case |
| `pick output <label> for (<input>)` | `GenerationContextOp_GetOutputByLabelAndInputAndReferenceScope` | the output visible from the reference | Only in a `$REF$` referent function, when one input has several outputs |
| `get output list <label> for (<input>)` | `GenerationContextOp_GetOutputListByLabelAndInput` | sequence of nodes | One-to-many mapping |
| `get output <label>` (optional `forModel`) | `GenerationContextOp_GetOutputByLabel` | single node | Output of a labelled conditional root rule (`CreateRootRule`) |
| `get copied output for (<input>)` | `GenerationContextOp_GetCopiedOutputByInput` | node | Output of a plain copy (no label) |
| `get prev input <label>` | `GenerationContextOp_GetPrevInputByLabel` | node | The input of a prior step (cross-step lookup) |

A label lookup only sees outputs registered **in the current generation step**: a reader in a later step than its writer finds nothing. See `references/generation-context.md` for the full catalog (all in language `jetbrains.mps.lang.generator.generationContext`).
