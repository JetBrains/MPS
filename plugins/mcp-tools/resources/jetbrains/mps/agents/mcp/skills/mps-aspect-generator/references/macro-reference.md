# $REF$ / ReferenceMacro

Read this when: wiring a generated reference to a cross-template / cross-rule target, choosing between `node<>`/`SNodeReference`/`string` returns, or fixing a `genContext.get output … for (X)` that returns null.

## What it does

`$REF$` is the macro that **computes the target of a reference in the output model**. It attaches to a template node that already carries a placeholder reference (e.g. a `MethodCall.baseMethodDeclaration` pointing at some local stub, or a `VariableReference.variableDeclaration` pointing at a local parameter). At generation time the macro's function body returns the real target, and MPS rewires the output reference to it. This is the canonical way to hook up **cross-rule, cross-template references** — method calls to generated methods, variable references to generated declarations, constructor calls to generated classes, and so on.

## Fully qualified concept names

- `jetbrains.mps.lang.generator.structure.ReferenceMacro` — the macro itself, attached via the standard `smodelAttribute` role on the template reference-holder node. Properties: `linkRole` (string — the role name of the reference being rewired, e.g. `"baseMethodDeclaration"`) and `linkDeclaration` (string — the stable id of the link declaration in `concept-id/declaring-concept-id/link-id` form).
- `jetbrains.mps.lang.generator.structure.ReferenceMacro_GetReferent` — the function body, child of `ReferenceMacro` under role `referentFunction`.

## When it runs

Normally at the **end of a generation micro-step**, once the output sub-tree is already built, so that the function body can look outputs up via `genContext`. It can also run **earlier**, on demand, if user code tries to obtain the target of the reference sooner (e.g. a subsequent typesystem or constraint check). In either case ordering with `$MAP_SRC$` is strict: every `$MAP_SRC$` in the step fires before any `$REF$` does.

## Supported return types

The function's return type depends on the reference link declaration:

| Return type | Meaning |
|---|---|
| `node<>` (typed per link declaration) | Direct pointer to the target node — the common case for "re-target this reference at *that* generated node". |
| `SNodeReference` | Symbolic pointer; useful when the template has no handle on the target's model at application time (lazy/unresolved references). |
| `string` | Name-based identifier of the target — MPS resolves by name in the expected scope. Use when the referent is easier to name than to look up (e.g. method parameters resolved by name). |

**Implicit parameters** in the body: the standard set (`node`, `genContext`) **plus `outputNode`** — the already-placed node in the output model that owns the reference link being computed. Use `outputNode` when the target must be resolved relative to the output tree rather than the input.

## Example 1 — with a mapping label (Kaja `reduce_RoutineCall`)

From `samples/robot_Kaja/languages/Kajak/generator/template/Kajak/generator/template/main@generator.mps`. The generator declares a `routines` label at the MappingConfiguration. The root rule that expands each Kajak routine into a BaseLanguage method is the **writer** (attaches `routines` to its output method). Inside the template body, a method call is used as a placeholder (here `bar()`), and a `$REF$` on that `MethodCall` **reads** the label to point the call at the method that will be generated for `node.definition`:

```json
{ "concept": "jetbrains.mps.baseLanguage.structure.MethodCall",
  "references": [
    { "role": "baseMethodDeclaration", "target": "<placeholder-method-in-template>" }
  ],
  "children": [
    { "role": "smodelAttribute", "nodes": [
      { "concept": "jetbrains.mps.lang.generator.structure.ReferenceMacro",
        "properties": [
          { "name": "linkRole",        "value": "baseMethodDeclaration" },
          { "name": "linkDeclaration", "value": "f3061a53-9226-4cc5-a443-f952ceaf5816/1204053956946/1068499141037" }
        ],
        "children": [
          { "role": "referentFunction", "nodes": [
            { "concept": "jetbrains.mps.lang.generator.structure.ReferenceMacro_GetReferent",
              "children": [ { "role": "body", "nodes": [ /* StatementList equivalent to:
                   genContext.get output "routines" for (node.definition) */ ]} ]
            }
          ]}
        ]
      }
    ]}
  ]
}
```

Inside the `referentFunction` body the relevant expression is:

```
genContext  →  get output <routines-label-ref> for (node.definition)
```

…encoded as a `DotExpression` whose operand is `TemplateFunctionParameter_generationContext` and whose operation is a `GenerationContextOp_GetOutputByLabelAndInput` with a `mappingLabel` ref and an `inputNode` child expression (see `references/mapping-labels.md`). The placeholder target (`bar`) is irrelevant at runtime — the reference macro overrides it.

## Example 2 — without a mapping label (lambda-calculus name lookup)

From `samples/lambda/languages/lambdaCalculus/generator/template/main@generator.mps` (around the `VariableReference` reduction). The template emits a `VariableReference` to some local placeholder, but the real target is a method parameter generated earlier whose name matches the Lambda variable. The referent function simply returns **a `String`** — the variable's name — and MPS resolves it by name against the enclosing scope in the output model:

```json
{ "concept": "jetbrains.mps.baseLanguage.structure.VariableReference",
  "references": [
    { "role": "variableDeclaration", "target": "<placeholder-local-declaration>" }
  ],
  "children": [
    { "role": "smodelAttribute", "nodes": [
      { "concept": "jetbrains.mps.lang.generator.structure.ReferenceMacro",
        "properties": [
          { "name": "linkRole",        "value": "variableDeclaration" },
          { "name": "linkDeclaration", "value": "f3061a53-9226-4cc5-a443-f952ceaf5816/1068498886296/1068581517664" }
        ],
        "children": [
          { "role": "referentFunction", "nodes": [
            { "concept": "jetbrains.mps.lang.generator.structure.ReferenceMacro_GetReferent",
              "children": [ { "role": "body", "nodes": [ /* StatementList equivalent to:
                   node.variable.name         // returns String; resolved by name */ ]} ]
            }
          ]}
        ]
      }
    ]}
  ]
}
```

Use this form when you don't need (or don't have) a mapping label: the scope in the output model already contains a unique node with that name (e.g. a parameter, a local variable).

## Choosing a form

| Situation | Return from `referentFunction` |
|---|---|
| Target was produced by another rule and tagged with a label | `node<>` via `genContext.get output <label> for (<input>)` |
| Target is a generated node you can locate without a label (same scope, unique name) | `string` (name) or `node<>` |
| Template doesn't yet have access to the target's model | `SNodeReference` |
