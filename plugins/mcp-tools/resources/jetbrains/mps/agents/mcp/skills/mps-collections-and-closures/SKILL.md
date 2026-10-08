---
name: mps-collections-and-closures
description: >-
  Use when writing or editing MPS BaseLanguage code that uses the `collections` and `closures` language extensions — in behavior methods, typesystem and checking rules, generator queries, constraints, intentions, plugin or console code, with or without nodes. Covers collection types (`sequence<T>`, `list<T>`, `set<T>`, `map<K,V>`, sorted variants), creators, sequence operations (`.where`, `.select`, `.translate`, `.any`, `.sortBy`, `.toList`, …), list/set/map mutators, the collections `foreach` vs the BaseLanguage `foreach`, closure literals (`{ it => ... }`, `ClosureLiteral`, `InferredClosureParameterDeclaration`, `FunctionType`), `yield`, `skip`, `stop`, recursion with `invoke`, SAM conversion, and `downcast` to a Java interface. The node receivers (`node.descendants<C>`, `nlist<C>`, `sequence<node<C>>`) come from the companion skill `mps-model-manipulation`; most smodel bodies need both.
type: reference
---

# Writing MPS BaseLanguage with collections / closures

## Loading companion skills

Companion names in this skill are lazy dependencies: load only those relevant to the current task. If this skill came from an MCP server, use the host's skill loader to resolve the companion's unique discovered entry URI on the same host-assigned originating server. If the host has no server-backed skill loader, stop and report that limitation; do not silently fall back to a filesystem copy. If this skill came from a filesystem catalog, load the named sibling from that same catalog at `<skills-root>/<skill-name>/SKILL.md`, even if remote skill loaders are also available. Do not invent a tool name or server endpoint.

Use this skill when a body filters, maps, sorts or iterates a sequence, or passes a closure — to a collection operation, a Java API (SAM conversion), or a variable of function type. A collection operation is a `DotExpression` whose `operation` is a collections `*Operation` concept with a single `ClosureLiteral` in the `closure` role. The `mps_mcp_parse_java_and_insert` parser maps Java lambdas to closures but cannot produce collection types or operations, so these shapes are hand-built from the blueprints here.

## Minimum reading set

`references/` is a lookup catalog. **One file is enough to write the body.**

| Body you are writing | Read only |
|---|---|
| filters or maps a sequence (`.where`, `.any`, `.translate`, `list.add`) | `references/sequence-operation-blueprints.md` |
| a closure that does not type-check | `references/closures-catalog.md` |
| an iteration that fails (`foreach`) | `references/foreach-statements.md` |
| crosses into a Java interface (`Iterable.iterator()`, `Map.computeIfAbsent()`) | `references/downcast-expression.md` |
| an operation whose name or shape you do not know | `references/collections-catalog.md` |

**Stopping rule.** After an error you cannot explain, open `references/golden-rules-and-pitfalls.md` before any catalog.

## Critical Directives

- **Every `InferredClosureParameterDeclaration` needs a `type` child**, even though MPS infers the type. Use `jetbrains.mps.baseLanguage.structure.UndefinedType` as placeholder. Omitting it cascades into misleading "different parameter numbers" / "out of search scope" / "operation is not applicable to null" errors. See `references/closures-catalog.md`.
- **Operations taking a predicate/selector take a single closure argument in the `closure` role** (not `parameter`). See `references/sequence-operation-blueprints.md`.
- **`foreach` has two concepts**: collections `ForEachStatement` for `sequence`/`list`/`set`, BaseLanguage `ForeachStatement` for Java arrays/iterables. Wrong choice → type error. See `references/foreach-statements.md`.
- **A `sequence` is not a `list`**: `list<T>` and `set<T>` are subtypes of `sequence<T>`, and lazy operations return `sequence<T>`; materialize with `.toList` where a `list` is required. See `references/collections-catalog/core-concepts-types-null-semantics.md`.
- **`isEmpty` / `isNotEmpty` have two concepts each**: collections for `sequence`/`list`/`set`/`map`, BaseLanguage for `string`. Pick the FQN by the receiver's type. See `references/collections-catalog/sequence-operations.md`.
- **A closure body uses either `return` or `yield`, never both**; a `yield` closure returns `sequence<T>`. See `references/closures-catalog.md`.
- **`skip` / `stop` only inside enumerating closures** (`selectMany` / `translate` / `forEach` / sequence initializer); elsewhere they are a typesystem error. See `references/collections-catalog/control-flow-in-closures.md`.
- **Runtime solutions**: generated closures code needs `jetbrains.mps.baseLanguage.closures.runtime`, collections code the `collections.runtime` solution. A missing closures runtime shows up as `NoClassDefFoundError` for `_FunctionTypes$...` at load time. See `references/closures-catalog.md`.
- **Ask the running typesystem, not its rules:** use `mps_mcp_query_types` `OPERATION_TYPE` for the result type of an operation or expression, and `IS_SUBTYPE` for assignability (`list<T>` vs `sequence<T>`, a closure against a `FunctionType` or SAM target). See `mps-mcp-workflow/references/analysis-tools/type-queries.md`.

## Common-path workflow

1. **Get the receiver** — a node sequence (`node.children`, `.descendants<C>`) is built from `references/dot-expression-basics.md` in the `mps-model-manipulation` skill root after loading that companion skill from the same origin.
2. **Wrap it in the operation** — the `DotExpression` + `*Operation` + `ClosureLiteral` blueprint from `references/sequence-operation-blueprints.md`.
3. **Declare collection-typed locals and return types explicitly** — the Java parser produces a wrong `ClassifierType` for them. Node-element types are in `references/variable-declarations.md` in the `mps-model-manipulation` skill root after loading that companion skill from the same origin.
4. **Validate** with `mps_mcp_check_root_node_problems(nodeReference, onlyNodesWithProblems=true)`; on a confusing error, open `references/golden-rules-and-pitfalls.md`.

If MPS MCP tools are unavailable, do not hand-edit serialized `.mps` files unless explicitly requested — inspect only and report.

## Related Skills

- `mps-model-manipulation` — the smodel side: the receivers (`node.descendants<C>`, `nlist<C>`, `sequence<node<C>>`), node casts, property/link access and mutation that the closure bodies call. Load it whenever a body touches nodes.
- `mps-baselanguage` — host BaseLanguage statements, expressions, classes, and the Java parser; this skill is the collections/closures overlay.
- `mps-console` — `#instances(C).where { … }` and other `jetbrains.mps.lang.smodel.query` results compose with the operations here.
- `mps-quotations` — node literals that closures and sequence operations often build or consume.

## Reference Index

One line per file, keyed by the symptom that should send you there.

- Open `references/golden-rules-and-pitfalls.md` when a collections or closures error makes no sense — the symptom→cause→fix table (closure `type` child, two `isEmpty` concepts, `sequence` vs `list`, lazy re-evaluation, `yield`/`return`, `skip`/`stop`, missing runtime).
- Open `references/sequence-operation-blueprints.md` when building `.where`, `.any`, `.translate` (with `yield`) or `list.add` — the full `DotExpression` + `ClosureLiteral` JSON.
- Open `references/collections-catalog.md` when you need an operation whose name or shape you are unsure of (`select`, `take`, `sortBy`, `reduceLeft`, `toList`, …), creators, mutators, set/map operations, sorted variants, `iterator` vs `modifying_iterator`, or concept IDs — the hub table names one file per section.
- Open `references/closures-catalog.md` when a closure does not type-check — "different parameter numbers", a parameter whose type stayed null, recursion (`InvokeFunctionOperation` vs `InvokeExpression`), `yield` vs `return`, SAM conversion, result-type inference, the generated-Java form, or the missing closures runtime jar. Holds the `ClosureLiteral` / `InferredClosureParameterDeclaration` / `FunctionType` shapes.
- Open `references/foreach-statements.md` when iterating produces a typesystem error, or the loop variable will not resolve — collections `ForEachStatement` + `ForEachVariable` / `ForEachVariableReference` vs BaseLanguage `ForeachStatement` + `LocalVariableDeclaration` / `VariableReference`.
- Open `references/downcast-expression.md` when a collection-typed value must call a Java interface method (`Iterable.iterator()`, `Map.computeIfAbsent()`) — the `DowncastExpression` (`downcast expr`) blueprint and two verified examples.
