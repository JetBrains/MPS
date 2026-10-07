# Type queries — `GET_TYPE`, `GET_EXPECTED_TYPE` and `mps_mcp_query_types`

Ask the typesystem engine rather than read rule roots and simulate the solver: it runs every rule kind — `SubtypingRule`, `InequationReplacementRule`, `ComparisonRule`, and `OverloadedOpRulesContainer` with `isApplicable` closures — that reading cannot evaluate. Read the typesystem aspect only to author or change rules.

| question | call |
|---|---|
| what is the type of this node | `mps_mcp_query_nodes` `GET_TYPE` `{nodeReference}` |
| what type must this node have here | `mps_mcp_query_nodes` `GET_EXPECTED_TYPE` `{nodeReference}` |
| does type A fit where B is required | `mps_mcp_query_types` `IS_SUBTYPE` `{sub, super}` |
| what can A be widened to | `SUPERTYPES` `{type}` |
| what do A and B have in common | `COMMON_SUPERTYPE` `{types:[A, B]}` |
| view A as a given type concept (e.g. read a `ClassifierType`'s classifier) | `COERCE` `{type, conceptRef}` |
| what does `a op b` give | `OPERATION_TYPE` `{operatorNode or operatorConceptRef, left, right}` |
| why does this node have its type, how did this type error arise | `EXPLAIN_TYPE` `{nodeReference}` |
| which rule reported this type error | the problem's `rules` in `mps_mcp_check_root_node_problems` |

## Printed types

Each answer's type is `{concept, conceptReference, presentation, hasTypeVariables?, blueprint}`. `presentation` is short text (`int`, `List<String>`); `blueprint` is the full node tree, whose reference links (`targetReference`, e.g. `ClassifierType`'s `classifier`) identify it exactly. `hasTypeVariables:true` marks a not-fully-instantiated type; otherwise the key is absent. Types and their blueprint node records carry no `reference`: computed types are free-floating copies, even when a rule equates one with a stored `type` child; a root's or stored operand's type may be a stored node.

## GET_TYPE

`mps_mcp_query_nodes` `GET_TYPE` `{nodeReference, maxRootNodes?}` returns the printed type or `data: null`, as the check of the node's whole root decides it (the one `mps_mcp_check_root_node_problems` runs), so other statements' constraints count: in the Expressions sample, after `var x = 1; x := 2.5`, `x` has the wider type. `details.scope` is `"root"`, or `"node"` plus a warning when a one-node computation (the node's slice) answered: in commented-out code, in a root over `maxRootNodes` nodes (default 10000), or when the root check leaves the node untyped. A partially inferred type has `hasTypeVariables:true`; `null` means no type (a bare type variable, a non-expression, no inference rule for its concept), an unloaded language runtime, or, in scope `node`, a type the slice alone cannot infer. It is not the context's expected type (`GET_EXPECTED_TYPE`); neither reads an open editor.

## GET_EXPECTED_TYPE

`mps_mcp_query_nodes` `GET_EXPECTED_TYPE` `{nodeReference, maxRootNodes?}` returns the printed type or `data: null` that the node's context requires (`Object o = s`: GET_TYPE(`s`) is `String`, expected `Object`). It checks the whole root with the node as a hole: the least common supertype of the hole's upper bounds (`:<=:`, `:<<=:`), else of its comparable bounds, from any statement. `details.scope` and fallbacks are as for GET_TYPE; scope `node` is the parent's slice, which `has expected type` checks (`maxRootNodes:1` gives it). With several upper bounds, fitting the answer does not prove fitting each. The node's own value is left out: in `var E = 10; E := 2.6 F; E := 10` (Expressions) the last `10` is expected `Float`, but `2.6 F` is expected `Int`, narrower than the root accepts; `mps_mcp_check_root_node_problems` decides. `null`: a root; a slot bounded only by `:==:` or `:>=:` (lower bounds and equations are ignored); an unconstrained slot; in scope `node`, one the slice leaves open. For an empty slot, query the intended replacement: rules may inspect it (`byte b = 1` is bounded by `int`).

## Type operands

Each operand of `mps_mcp_query_types` is a JSON object with **exactly one** of:

| key | the type is |
|---|---|
| `nodeReference` | the type *of* that node, as GET_TYPE computes it (a one-node fallback adds a `warnings` entry naming the operand). A node without one (GET_TYPE `null`) is `INVALID_REQUEST` "has no type" |
| `typeNodeReference` | a stored type node itself — a field's or parameter's `type` child, a `typeof` quotation. Type nodes usually have no type of their own (BaseLanguage has no rule for `Type`), so `nodeReference` on them fails |
| `typeConceptRef` | a fresh instance of a type concept that has no mandatory child or reference: `IntegerType`, `BooleanType`, a DSL's own parameterless types. `ClassifierType` is rejected (mandatory `classifier`) — use one of the other forms |
| `blueprint` | a type built from its node tree, normally the `blueprint` of a printed type. A whole printed type object is accepted as the operand too, so a type from one answer can be passed back verbatim (its `conceptReference` must match the blueprint's) |

A blueprint must name the type exactly or it is rejected: every reference needs a persistent `targetReference` that resolves (a plain `target` name, a `target: null` from an unresolved printout, or a `null/<id>` reference into the type itself cannot be rebuilt — pass the node the type came from as `nodeReference` instead), every role and property must exist on the concept, every child role must carry its `nodes` (a depth-limited `print_node` printout with child summaries is rejected), and no mandatory link may be left empty. The printer's additions (the top-level `name`, enum entries marked `isDefault:true`) are not stored back. Type variables do not survive the trip: a type printed with `hasTypeVariables:true` comes back with fresh, unrelated variables, and a bare variable is a subtype of nothing.

Error codes: `NOT_FOUND` means a node or concept you named in `nodeReference`, `typeNodeReference`, `typeConceptRef`, `conceptRef`, `operatorNode` or `operatorConceptRef` does not exist; `INVALID_REQUEST` means the operand is malformed or cannot be a type — including a blueprint whose concept or reference target does not resolve; `INVALID_JSON` means the `parameters` value is not valid JSON; an MPS XML short id or a `featureId` given as a reference target is `INVALID_REFERENCE`. Each message names the JSON path (`parameters.types[1].blueprint.references[0]`).

## Operations

- **`IS_SUBTYPE`** `{sub, super}` → `{isSubtype, isStrongSubtype, isComparable, sub, super}`. `isSubtype` is the weak check, the one `:<=:` uses; `isStrongSubtype` is `:<<=:`. `isComparable` is true when a `ComparisonRule` says so **or** a replacement rule or subtyping holds either way, so `isComparable:true` alone is no evidence that a `ComparisonRule` fired.
- **`SUPERTYPES`** `{type, depth?, weak?}` → `{type, immediate:[type], transitive:[{type, depth}]}`. A breadth-first walk over the subtyping rules' immediate supertypes, `depth` levels deep (default 8, at most 32); `transitive` includes the depth-1 types. Structurally equal types are listed once. `details.truncated:true`: the depth cap stopped the walk. `weak` (default `true`) selects weak or strong subtyping rules. The walk runs in the global language scope, so it can list a supertype from a language `IS_SUBTYPE` does not consult here — confirm a surprising one with `IS_SUBTYPE`. For BaseLanguage primitives it also lists `PrimitiveTypeDescriptor` nodes, internal to the primitive subtyping rules and not declarable.
- **`COMMON_SUPERTYPE`** `{types:[≥ 2 operands]}` → `{types, result:[type]}`: the least common supertypes, a list because a lattice can have several. Always computed weakly. The checker's own solution for a `:>=:` system may be the *meet* of these types rather than one of them.
- **`COERCE`** `{type, conceptRef, strong?}` → `{coerced: type | null}`: the type or its supertype that is an instance of `conceptRef` — any non-interface concept, abstract ones such as `PrimitiveType` included (an interface concept is rejected); `strong:true` uses strong subtyping. The BaseLanguage use: coerce an expression's type to `ClassifierType`, read `classifier.targetReference` from the blueprint, then list the classifier's members with `mps_mcp_print_node`.
- **`OPERATION_TYPE`** `{operatorNode | operatorConceptRef, left, right}` → `{type: type | null}`: the result type the overloaded-operation rules give `left op right`; `null` means no rule applies, where an inference rule typically reports "operator cannot be applied". `operatorNode` is an existing operation node (e.g. a `PlusExpression` in a sandbox) and is exact. `operatorConceptRef` builds a detached instance of the operation's concept, so a rule's `isApplicable` that reads the operation's properties sees default values; the answer then carries a `warnings` entry saying so. Its rules are looked up in the global language scope. When two rules are equally specific, `data.ruleConflicts` lists them as `{rule, ruleReference, statement}` plus a warning; the first rule that answered was used.

All queries are read-only, run on the UI thread, and use the usual 30 s timeout. `data` is inline through `maxInlineBytes` (default 20000); above it, `data` is a temp-file path.

## Not available

These queries cannot list runtime inference rules applicable to a concept (`RulesManager` returns classes, not declarations), structurally compare types (`TYPES_MATCH`), type in generation mode, or add type flags to `mps_mcp_print_node`. The aspect sweep also misses rules declared in languages extending the concept's language.

## EXPLAIN_TYPE

`EXPLAIN_TYPE` `{nodeReference, includeApplyRule?, maxRootNodes?}` → `{type, trace:[entry]}`: the devkit's Type-system Trace for one node, headless. The engine type-checks the node's whole root afresh, recording every operation, and the trace keeps those about the node's slice — the node, its descendants and the type variables equations tie to them — nested as the engine ran them. `type` is the type this check arrived at (`null` as for GET_TYPE). An entry is `{kind, presentation, source?, rule?, error?, consequences?}`:

- `kind`: `type_assigned`, `equation_added`, `relation_added` (an inequality), `when_concrete_added`, `error_added`, …
- `presentation`: the operation as the engine prints it, with type variables (`+ : a assigned` for `1 + 2`, later `a = int   added`) — follow a variable through the entries.
- `source`: the node the operation is about; `rule`: `{rule, ruleReference, statement}`, the statement inside the rule that added it. For "which rule gives this type", cite the `rule` of the entry that equates the node's type variable with the concrete type (`i = Float   added`), not of its `type_assigned` entry, which only names the rule that introduced the variable. Print `ruleReference` only to change the rule.
- `error:true`: an `error_added` entry, and every entry above one.

Rule applications (`<rule> applied to node "…"`, which carry no `rule`) are left out and their consequences moved up one level, unless `includeApplyRule:true` — which also lists the rules applied to the node. A root of more than `maxRootNodes` nodes (default 10000) is rejected, since the check blocks the UI while it runs (well under a second for a 7400-node BaseLanguage class). A node inside commented-out code gets a warning; its trace is normally empty and `type` null, though GET_TYPE types it with `details.scope:"node"` (its one-node computation starts below the comment).

## Which rule reported a problem

A typesystem, constraints or scope problem of `mps_mcp_check_root_node_problems` carries `rules: [{rule, ruleReference, statement}]`, the reporting rule first; its name answers "which rule reported it" — print `ruleReference` only to change the rule. `EXPLAIN_TYPE` on the problem's node shows the equations and inequalities that led to it. Commented-out code is not type-checked: the check counts it as `uncheckedSubtrees` and warns on a clean verdict, so ask `IS_SUBTYPE` rather than trusting a commented-out sample.

## After changing typesystem rules

Rebuild the language and reload before trusting any answer — see "Reload after compiled-aspect changes" in `SKILL.md`. The engine runs the compiled rules, not the rule roots you edited.
