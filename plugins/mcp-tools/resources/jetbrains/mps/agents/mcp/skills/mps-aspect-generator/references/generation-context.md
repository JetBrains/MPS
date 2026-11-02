# genContext and the generation environment

Read this when: building a `genContext.*` expression, looking up the right concept for a label/output/name accessor, generating unique identifiers, or emitting messages from a generator.

## Implicit variables

Inside every macro/query body the following are implicit:

- `node` — the matched source node (or the element inside a `$LOOP$`), typed to the enclosing rule/macro `applicableConcept`. AST concept: `jetbrains.mps.lang.generator.structure.TemplateFunctionParameter_sourceNode`.
- `genContext` — the generator context. AST concept: `jetbrains.mps.lang.generator.generationContext.structure.TemplateFunctionParameter_generationContext`.
- `operationContext` — rarely needed; access to the IDE/project API. Concept: `TemplateFunctionParameter_operationContext`.
- In `$MAP_SRC$`: `parentOutputNode` in `mapperFunction` (the output parent the mapped node is added to), `outputNode` in `postMapperFunction` (the produced node). In a `$REF$` referent: `outputNode` (the output node that owns the reference).
- In a template with `parameter`s: each parameter is read as `genContext.<name>` — a `DotExpression` over `genContext` whose operation is `GenerationContextOp_ParameterRef` (ref `parameter` → the `TemplateParameterDeclaration`).
- Inside a `$LOOP$`: `LOOP.index` (0-based) and `LOOP.inputNode` are the standalone expression `jetbrains.mps.lang.generator.structure.LoopMacroNamespaceAccessor` with property `variable` = `index` / `inputNode`.
- Inside a `$VAR$`: `genContext.<var>` — operation `GenerationContextOp_VarRef2` (ref `vardecl`).
- In `MappingScript` and `CreateRootRule_Condition`: `model` and `genContext`, but no `node`.

## genContext operations catalog

All accessors listed here are concepts in language `jetbrains.mps.lang.generator.generationContext` (simple name `GenerationContextOp_*`). The "Concept" column gives the exact simple name — use it verbatim as the concept name when building node blueprints.

| Editor alias | Concept | Purpose |
|---|---|---|
| `get output by label and input` | `GenerationContextOp_GetOutputByLabelAndInput` | Find the single output node for a label/input pair. Error if the pair produced several outputs. |
| `get output list by label and input` | `GenerationContextOp_GetOutputListByLabelAndInput` | Same, but returns all outputs (sequence). |
| `pick output by label and input using ref.scope` | `GenerationContextOp_GetOutputByLabelAndInputAndReferenceScope` | Same, but disambiguates by reference visibility — use inside `ReferenceMacro` bodies. |
| `get output by label` | `GenerationContextOp_GetOutputByLabel` | Look up a label-only output (no input key). |
| `get copied output by input` | `GenerationContextOp_GetCopiedOutputByInput` | Output of a plain copy (no explicit label). Useful when the writer used `$COPY_SRC$` rather than a labelled rule. |
| `get original copied input by output` | `GenerationContextOp_GetOriginalCopiedInputByOutput` | Reverse lookup: given an output node produced by copy, return the original input. |
| `get prev input by label` | `GenerationContextOp_GetPrevInputByLabel` | Look up the input in the previous generation step. |
| `label` | `GenerationContextOp_RegisterLabel` | Imperatively register an output node under a mapping label (alternative to `LabelMacro`). |
| `unique name` | `GenerationContextOp_CreateUniqueName` | Clash-free name stable across regenerations. Always pass a context node so the name is deterministic. |
| `name` (indexed) | `GenerationContextOp_CreateIndexedName` | Name with optional sequential suffix — for when you want `foo`, `foo1`, `foo2` … |
| `unique valid identifier` | `GenerationContextOp_UniqueValidId` | Unique valid identifier derived from an `INamedConcept`, close to its name. |
| `copy with trace` | `GenerationContextOp_CopyWithTrace` | `$TRACE$` analog for use inside mapping scripts. |
| `inputModel` | `GenerationContextOp_GetInputModel` | Current input model. |
| `outputModel` | `GenerationContextOp_GetOutputModel` | Current output model. |
| `originalModel` | `GenerationContextOp_GetOriginalInputModel` | Original (pre-step) input model. |
| `session object [<key>]` | `GenerationContextOp_SessionObjectAccess` | Per-session scratch storage. Survives across all steps of one generation session. |
| `step object [<key>]` | `GenerationContextOp_StepObjectAccess` | Per-step scratch storage. Use for data collected by a pre-script and consumed by templates in the same step. |
| `transient object [<key>]` | `GenerationContextOp_TransientObjectAccess` | Per-(transient)-model scratch storage. |
| `show info` / `show warning` / `show error` | `GenerationContextOp_ShowInfoMessage` / `…_ShowWarningMessage` / `…_ShowErrorMessage` | Emit a message in the generator's Messages view, optionally pointing at a node. |

> Note: `templateNode` is **not** a `GenerationContextOp`. It's accessed via `TemplateFunctionParameter_templateNode` (along with `TemplateFunctionParameter_sourceNode`, `…_generationContext`, `…_outputNode`, `…_parentOutputNode`, `…_mainContextNode`, `…_templatePropertyValue`, `…_templateReferent`) from language `jetbrains.mps.lang.generator`.

## Example — generating a unique class name

```json
{
  "concept": "jetbrains.mps.baseLanguage.structure.DotExpression",
  "children": [
    { "role": "operand", "nodes": [
      { "concept": "jetbrains.mps.lang.generator.generationContext.structure.TemplateFunctionParameter_generationContext" }
    ]},
    { "role": "operation", "nodes": [
      { "concept": "jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_CreateUniqueName",
        "children": [
          { "role": "baseName",    "nodes": [ /* expression: e.g. node.name + "_impl" */ ]},
          { "role": "contextNode", "nodes": [ /* expression: e.g. node.ancestor<Module> */ ]}
        ]
      }
    ]}
  ]
}
```

Heavy logic still lives in concept behavior methods and in a `RulesFunctions_*` class beside the generator. Queries should be small and declarative — call out to methods for anything non-trivial.
