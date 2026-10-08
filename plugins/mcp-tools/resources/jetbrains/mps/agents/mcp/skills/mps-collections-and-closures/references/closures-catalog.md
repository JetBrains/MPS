# Closures — Full Catalog

The closures language (`jetbrains.mps.baseLanguage.closures`) is an extension of BaseLanguage. Most concepts are easy to find with `mps_mcp_search_concepts`; this catalog captures the non-obvious semantics and patterns that are expensive to reverse-engineer.

## Concepts

| Concept | Full `conceptReference` | MPS notation |
|---|---|---|
| `ClosureLiteral` | `c:fd392034-7849-419d-9071-12563d152375/1199569711397` | `{ param => body }` |
| `InferredClosureParameterDeclaration` | `c:fd392034-7849-419d-9071-12563d152375/2524418899405758586` | `it` / named inferred param. Inherits a **required** `type` child — fill it with `UndefinedType`. |
| `YieldStatement` | `c:fd392034-7849-419d-9071-12563d152375/1200830824066` | `yield expr;` — emit one element from a generator-style closure (typically used inside `.translate { ... }`) |
| `FunctionType` | `c:fd392034-7849-419d-9071-12563d152375/1199542442495` | `{T1, T2 => R}` |
| `ClosureLiteralType` | `c:fd392034-7849-419d-9071-12563d152375/1046929382682558545` | inferred type of a `ClosureLiteral` |
| `InvokeFunctionOperation` | `c:fd392034-7849-419d-9071-12563d152375/1225797177491` | `closure.invoke(args)` / `closure(args)` |
| `InvokeExpression` | `c:fd392034-7849-419d-9071-12563d152375/1199711271002` | bare `invoke(args)` — recursive self-invoke |

## Function types

Written `{T1, T2 => R}`. Represented by `FunctionType`:
- role `parameterType`: `Type` (0..n) — parameter types
- role `resultType`: `Type` (1) — result type; use `VoidType` for no result

Subtyping rule: function types are **covariant in the result type** and **contravariant in parameter types** (same as Java 8+ function types). A parameterless function returning `node<C>` is written `{=> node<C>}`.

`ClosureLiteralType` is the *inferred* type of a `ClosureLiteral` node — not something you typically declare. Declared types use `FunctionType`.

### Result-type inference

When a `ClosureLiteral` has no explicitly declared result type, MPS infers it from the body:

- a body whose last statement is an expression statement → inferred result = that expression's type
- a body with explicit `return expr;` statements → inferred result = common supertype of the returned expressions
- a body with `yield expr;` statements → inferred result = `sequence<T>` where `T` is the common supertype of yielded expressions (overrides whatever the declared result would have been — see "Yield vs return" below)
- a body that falls through with no return/yield → inferred result = `void`

This matters when authoring code: a closure passed to `.select{..}` needs to produce the element type, and `.where{..}` needs `boolean`; a stray `void` last statement breaks SAM conversion without an obvious error location.

## Invoking a closure

There are **two distinct concepts** for closure invocation — pick based on whether there is an explicit receiver:

**With receiver** — `closure.invoke(args)` or `closure(args)` on any function-typed expression:

```
DotExpression
  operand:   <closure-typed expression>
  operation: InvokeFunctionOperation        // role: parameter (Expression, 0..n)
```

**Without receiver** — bare `invoke(args)` inside a closure body recurses into the **enclosing closure itself**:

```
InvokeExpression                           // standalone Expression, NOT a DotExpression op
  parameter: <arg expressions, 0..n>
```

`InvokeExpression` (concept alias `invoke`) is its own `Expression` subconcept — do not wrap it in a `DotExpression`. It is the standard way to write recursive closures. It also implements `IIncompatibleWithJavaLambda`, which is one reason a closure using recursion is generated as an anonymous inner class rather than a lambda (see "Compilation form" below).

## Yield vs return (mutual exclusion)

A closure body may use **either** `return` **or** `yield`, never both. A closure that uses `yield` returns `sequence<T>` regardless of its declared result type shape.

- `YieldStatement` (child role `expression`, 1) emits one element into the resulting sequence.
- Yielded closures are lazily evaluated — side effects fire only on sequence consumption.
- Typical generator form:
  ```
  new sequence<node<T>>({ => ... yield expr; ... })
  ```
  `GenericNewExpression` whose `creator` is a `SequenceCreator` with a single `ClosureLiteral` argument. (There is no `new` on closure literals themselves — only on collection types wrapping them.)

## SAM auto-conversion

A `ClosureLiteral` is automatically convertible to any interface or abstract class that has **exactly one abstract method** whose signature matches. No explicit cast is needed where the target SAM type is known. This is why idiomatic MPS code passes raw `{ x => ... }` literals to Java APIs expecting `Runnable`, `Comparator`, `Function`, listener interfaces, etc.

## Compilation form

The generator emits a **Java lambda** by default. It falls back to an **anonymous inner class** when any of the following holds:
- the closure uses `yield` (generator form)
- the target SAM is an abstract class (not an interface)
- the target type has annotations that require an explicit class
- captured local variables have names that conflict with lambda-desugaring rules

Agents rarely need to intervene here, but when debugging generated Java, expect either form.

## Runtime dependency

Generated code using closures depends on `jetbrains.mps.baseLanguage.closures.runtime.jar` (classes `_FunctionTypes`, `YieldingIterator`, etc.). When adding a module that first introduces closures, ensure this runtime is on its classpath — a missing runtime manifests as `NoClassDefFoundError` for `_FunctionTypes$...` at load time, not at compile time.

## Closure literal blueprint (reusable building block)

`ClosureLiteral` (`{ p1, p2 => body }`) is the actual argument for `.where`, `.translate`, `.any`, `.forEach`, `.foldLeft`, scope/canBe/factory-style callbacks, and SAM-conversion sites. It always has the same two children: a `parameter` list (cardinality `0..n`) and a single `body` (a `StatementList`).

```json
{
  "concept": "jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral",
  "children": [
    { "role": "parameter", "nodes": [{
      "concept": "jetbrains.mps.baseLanguage.closures.structure.InferredClosureParameterDeclaration",
      "properties": [{ "name": "name", "value": "it" }, { "name": "resolveInfo", "value": "it" }],
      "children": [{
        "role": "type",
        "nodes": [{ "concept": "jetbrains.mps.baseLanguage.structure.UndefinedType" }]
      }]
    }]},
    { "role": "body", "nodes": [{
      "concept": "jetbrains.mps.baseLanguage.structure.StatementList",
      "children": [{ "role": "statement", "nodes": [ /* statements */ ] }]
    }]}
  ]
}
```

### Closure parameter notes

- `InferredClosureParameterDeclaration` lets the type be inferred from context — almost always what you want inside collection operations. Always set both `name` and `resolveInfo` to the same value so other code can resolve `VariableReference`s back to the parameter.

- **`type` child is structurally required.** `InferredClosureParameterDeclaration` inherits a required `type` child (cardinality `1`) from `ParameterDeclaration` → `LocalVariableDeclaration`. Even though the value is intended to be inferred from context at type-check time, the AST slot itself must be filled. Use `jetbrains.mps.baseLanguage.structure.UndefinedType` as the placeholder — this is the canonical shape produced by hand-written MPS code (e.g. instances inside `jetbrains.mps.lang.core.util`). Omitting the `type` child triggers a cascade of misleading errors:
    - `"No child in the obligatory role 'type'"` on the parameter (the direct cause).
    - `"Error: different parameter numbers"` on the enclosing `ClosureLiteral` — closure-signature inference fails because the lone parameter is untypable.
    - `"operation is not applicable to null"` / `"out of search scope"` on any `SPropertyAccess` / `SLinkAccess` that uses the parameter — the operand's type is null, so member lookup fails.

    These all clear with a single `type: UndefinedType` child on the parameter.

- For multi-parameter closures (`{a, b => ...}`), repeat `parameter` children — the role has cardinality `0..n`.

- To reference the parameter from inside the body, use `jetbrains.mps.baseLanguage.structure.VariableReference` with a `variableDeclaration` reference targeting the `InferredClosureParameterDeclaration`. Do not insert a fresh declaration each time you reference it.

- **Forward references by plain name within the same blueprint**: when authoring a JSON blueprint that both *declares* a parameter (e.g. `ParameterDeclaration` / `InferredClosureParameterDeclaration` with `name: "it"`) and *references* it elsewhere in the same tree, you may set the `VariableReference`'s `variableDeclaration` `target` to the plain string `"it"` — the unified-JSON-format auto-resolver matches it to the parameter declared elsewhere in the same `add_node_child` / `insert_root_node_from_json` call. Confirmed working for closure parameters used inside `where`/`select` predicates. No need to perform the insert in two stages just to capture a persistent ref for the parameter.

- The body is a `StatementList`, not a bare expression. The "last expression is the result" rule means: wrap the value in an `ExpressionStatement` and place it last (or use a `ReturnStatement` if the closure has an explicit return type).
