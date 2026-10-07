# Type queries — `GET_TYPE`, `GET_EXPECTED_TYPE` and `mps_mcp_query_types`

Ask the typesystem engine instead of reading rule roots and simulating the solver by hand. The engine runs every kind of rule — `SubtypingRule`, `InequationReplacementRule`, `ComparisonRule`, `OverloadedOpRulesContainer` with its `isApplicable` closures — which reading cannot evaluate. Read the typesystem aspect only when you are authoring or changing rules.

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

Every type in an answer is `{concept, conceptReference, presentation, hasTypeVariables?, blueprint}`. `presentation` is the type's short text (`int`, `List<String>`); `blueprint` is its full node tree, whose reference links (`targetReference`, e.g. the `classifier` of a `ClassifierType`) identify it exactly. `hasTypeVariables:true` marks a type that is not fully instantiated; the key is absent otherwise. No `reference` to a type is offered, and the blueprint's node records carry none: a computed type is a free-floating copy — even when the inference rule equates it to a stored node such as a declaration's `type` child — and for a root or a stored operand it may be a stored node.

## GET_TYPE

`mps_mcp_query_nodes` `GET_TYPE` with `{"nodeReference": ...}` answers the printed type, or `data: null`. `null` has three meanings the tool cannot tell apart: the node has no type (it is not an expression, or its concept has no inference rule), the language's runtime is not loaded, or the type could not be fully inferred without more context (generics, lambdas). Where the answer comes from decides that last case: when the node's root is open in an editor, the editor's incremental type-check session answers, and a partially inferred type comes back flagged `hasTypeVariables:true` instead of `null`; otherwise a one-node computation answers, and the same case is `null` (only a root's type can then carry the flag). A type that is only a bare type variable also answers `null`. It is the node's own type, not the type its context expects — that is GET_EXPECTED_TYPE.

## GET_EXPECTED_TYPE

`mps_mcp_query_nodes` `GET_EXPECTED_TYPE` with `{"nodeReference": ...}` answers, as a printed type or `data: null`, the type the node's context requires of it — what `has expected type` in a `NodesTestCase` checks. For `Object o = s` GET_TYPE on `s` answers `String`, GET_EXPECTED_TYPE `Object`. The engine types the node's parent afresh, collects the inequalities the rules applied on the way put on the node, and answers the least common supertype of its upper bounds (`:<=:` and `:<<=:`), or of its comparable bounds when there are none. So one upper bound answers that type; several answer their common supertype (a meet type when they have several), which a replacement must fit, though fitting it does not guarantee fitting each bound. `null` means no upper or comparable bound is known: a root, a slot bounded only by `:==:` or `:>=:` (equations and lower bounds are not consulted — the left side of an assignment is one), an unconstrained slot, or a bound that depends on the parent's own type, which this computation does not infer. The computation never reads the editor's type-check session, so an open editor does not change the answer. It needs an existing node: for an empty slot, ask about the node you intend to replace — the context's rules may inspect it (`byte b = 1` is bounded by `int`, not `byte`, because the rule checks the literal; so is `return 'c'` in a `long` method, by the method's rule), so the answer for its replacement can differ.

## Type operands

Each operand of `mps_mcp_query_types` is a JSON object with **exactly one** of:

| key | the type is |
|---|---|
| `nodeReference` | the type *of* that node, as GET_TYPE computes it. A node without one (GET_TYPE `null`) is `INVALID_REQUEST` "has no type" |
| `typeNodeReference` | a stored type node itself — a field's or parameter's `type` child, a `typeof` quotation. Type nodes usually have no type of their own (BaseLanguage has no rule for `Type`), so `nodeReference` on them fails |
| `typeConceptRef` | a fresh instance of a type concept that has no mandatory child or reference: `IntegerType`, `BooleanType`, a DSL's own parameterless types. `ClassifierType` is rejected (mandatory `classifier`) — use one of the other forms |
| `blueprint` | a type built from its node tree, normally the `blueprint` of a printed type. A whole printed type object is accepted as the operand too, so a type from one answer can be passed back verbatim (its `conceptReference` must match the blueprint's) |

A blueprint must name the type exactly or it is rejected: every reference needs a persistent `targetReference` that resolves (a plain `target` name, a `target: null` from an unresolved printout, or a `null/<id>` reference into the type itself cannot be rebuilt — pass the node the type came from as `nodeReference` instead), every role and property must exist on the concept, every child role must carry its `nodes` (a depth-limited `print_node` printout with child summaries is rejected), and no mandatory link may be left empty. What the printer adds beyond the stored node is not stored back: the top-level `name` and enum entries marked `isDefault:true`. Type variables do not survive the trip: a type printed with `hasTypeVariables:true` comes back with fresh, unrelated variables, and a bare variable is a subtype of nothing.

Error codes: `NOT_FOUND` means a node or concept you named in `nodeReference`, `typeNodeReference`, `typeConceptRef`, `conceptRef`, `operatorNode` or `operatorConceptRef` does not exist; `INVALID_REQUEST` means the operand is malformed or cannot be a type — including a blueprint whose concept or reference target does not resolve; `INVALID_JSON` means the `parameters` value is not valid JSON; an MPS XML short id or a `featureId` given as a reference target is `INVALID_REFERENCE`. Each message names the JSON path (`parameters.types[1].blueprint.references[0]`).

## Operations

- **`IS_SUBTYPE`** `{sub, super}` → `{isSubtype, isStrongSubtype, isComparable, sub, super}`. `isSubtype` is the weak check, the one `:<=:` uses; `isStrongSubtype` is `:<<=:`. `isComparable` is true when a `ComparisonRule` says so **or** a replacement rule or plain subtyping holds in either direction, so it is always true when `isSubtype` is: `isComparable:true` alone is no evidence that a `ComparisonRule` fired.
- **`SUPERTYPES`** `{type, depth?, weak?}` → `{type, immediate:[type], transitive:[{type, depth}]}`. A breadth-first walk over the subtyping rules' immediate supertypes, `depth` levels deep (default 8, at most 32); `transitive` includes the depth-1 types. Types already seen (compared structurally) are not repeated. `details.truncated:true` says the depth cap stopped the walk before it ended. `weak` (default `true`) selects weak or strong subtyping rules. The walk runs in the global language scope, so it can list a supertype from a language `IS_SUBTYPE` does not consult for these operands — confirm a surprising one with `IS_SUBTYPE`. For BaseLanguage primitives it also lists `PrimitiveTypeDescriptor` nodes, which the primitive subtyping rules use internally and which are not types you can declare.
- **`COMMON_SUPERTYPE`** `{types:[≥ 2 operands]}` → `{types, result:[type]}`: the least common supertypes, a list because a lattice can have several. Always computed weakly. The checker's own solution for a `:>=:` system may be the *meet* of these types rather than one of them.
- **`COERCE`** `{type, conceptRef, strong?}` → `{coerced: type | null}`: the type itself or the supertype of it that is an instance of the concept `conceptRef` — any non-interface concept, abstract ones such as `PrimitiveType` included (an interface concept is rejected); `strong:true` uses strong subtyping. The BaseLanguage use: coerce an expression's type to `ClassifierType`, read `classifier.targetReference` from the blueprint, then list the classifier's members with `mps_mcp_print_node`.
- **`OPERATION_TYPE`** `{operatorNode | operatorConceptRef, left, right}` → `{type: type | null}`: the result type the overloaded-operation rules give `left op right`. `null` means no rule applies — the case where an inference rule typically reports "operator cannot be applied". `operatorNode` is an existing operation node (e.g. a `PlusExpression` in a sandbox) and is exact. `operatorConceptRef` builds a detached instance of the operation's concept, so a rule's `isApplicable` that reads the operation's properties sees default values; the answer then carries a `warnings` entry saying so. Its rules are looked up in the global language scope. When two rules are equally specific, `data.ruleConflicts` lists them as `{rule, ruleReference, statement}` (the rule root's name and reference, and the reference of the node inside it) plus a warning; the first rule that answered was used.

All operations are read-only and run on the UI thread under the usual 30 s timeout; `data` is inline up to `maxInlineBytes` (default 20000), a temp-file path above it.

## Not available

These queries do not list the runtime inference rules applicable to a concept (`RulesManager` returns classes, not declarations), structurally compare types with `TYPES_MATCH`, type in generation mode, or add type flags to `mps_mcp_print_node`. The aspect sweep also does not list rules declared in a language that extends the concept's language.

## EXPLAIN_TYPE

`EXPLAIN_TYPE` `{nodeReference, includeApplyRule?, maxRootNodes?}` → `{type, trace:[entry]}`: the devkit's Type-system Trace for one node, headless. The engine type-checks the node's whole root afresh, recording every operation, and the trace keeps those about the node's slice — the node, its descendants and the type variables equations tie to them — nested as the engine ran them. `type` is the type this check arrived at (`null` as for GET_TYPE). An entry is `{kind, presentation, source?, rule?, error?, consequences?}`:

- `kind`: `type_assigned`, `equation_added`, `relation_added` (an inequality), `when_concrete_added`, `error_added`, …
- `presentation`: the operation as the engine prints it, with type variables (`+ : a assigned` for `1 + 2`, later `a = int   added`) — follow a variable through the entries.
- `source`: the node the operation is about; `rule`: `{rule, ruleReference, statement}`, the statement inside the rule that added it — print `ruleReference` to read the rule.
- `error:true`: an `error_added` entry, and every entry above one.

Rule applications (`<rule> applied to node "…"`, which carry no `rule`) are left out and their consequences moved up one level, unless `includeApplyRule:true` — which also lists the rules applied to the node. A root of more than `maxRootNodes` nodes (default 10000) is rejected, since the check blocks the UI while it runs (well under a second for a 7400-node BaseLanguage class). A node inside commented-out code gets a warning; its trace is normally empty and `type` null, though GET_TYPE may still type it (its one-node computation starts below the comment).

## Which rule reported a problem

A typesystem, constraints or scope problem of `mps_mcp_check_root_node_problems` carries `rules: [{rule, ruleReference, statement}]`, the reporting rule first; print `ruleReference` to read it. `EXPLAIN_TYPE` on the problem's node shows the equations and inequalities that led to it. Commented-out code is not type-checked: the check counts it as `uncheckedSubtrees` and warns on a clean verdict, so ask `IS_SUBTYPE` rather than trusting a commented-out sample.

## After changing typesystem rules

Rebuild the language and reload before trusting any answer — see "Reload after compiled-aspect changes" in `SKILL.md`. The engine runs the compiled rules, not the rule roots you edited.
