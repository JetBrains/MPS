# Calling Behavior from Other Aspects / Generated Code

## Generated descriptor invocation

Generated Java calls behavior methods via **behavior descriptors**:

```
ConceptName__BehaviorDescriptor.methodName_idXXXXX.invoke(node, arg1, arg2)
```

The `_idXXXXX` suffix is the method's stable id (visible in the `.mps` XML or the generated descriptor). `invoke` returns `Object`; cast as needed.

## Hand-written aspect code

When writing hand-written code (inside checking rules, typesystem rules, generator templates, intentions) you normally call `node.methodName(...)` — MPS compiles it to the descriptor form automatically.

Call shapes by method kind:

- **Instance methods** (non-virtual or virtual): `someNode.m(...)` — for virtual methods the implementation is chosen by the node's actual concept at runtime; for non-virtual ones by the static node type at the call site.
- **Static methods**: `concept/ConceptName/.m(...)`, a concept receiver and no node: `DotExpression{operand: jetbrains.mps.lang.smodel.structure.ConceptIdRefExpression{conceptDeclaration → ConceptName}, operation: jetbrains.mps.lang.behavior.structure.Node_ConceptMethodCall{baseMethodDeclaration → m, actualArgument*}}`. Do not use the deprecated `ConceptRefExpression` (`conceptNode/X/`) as the receiver.
- **Virtual static methods**: the same `Node_ConceptMethodCall`, invoked on any `concept<X>` value, e.g. `someNode.concept.getPrecedenceLevel()` or `conceptParam.m(...)` (a `concept<Expression>` parameter in baseLanguage's actions calls `expression.getPrecedenceLevel()` this way). Dispatch picks the override for the runtime concept.

This is why extracting logic repeated across several aspects of a concept into one behavior method pays off: every aspect (editor, constraints, typesystem, generator, intentions, textgen) can reach it with the same one-line call.

## Null safety

Calling a behavior method on a `null` node does **not** throw a `NullPointerException`. MPS returns `null` for reference/String return types and the default primitive value (`0`, `false`, etc.) for primitive return types. This means null-guard checks before behavior calls are optional, but callers must still handle a `null` return for reference types.
