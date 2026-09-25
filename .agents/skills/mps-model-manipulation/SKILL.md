---
name: mps-model-manipulation
description: >-
  Use when writing or editing MPS BaseLanguage code that lives inside a model — behavior methods, typesystem rules, checking rules, generator queries, constraints, intentions, scope/canBe callbacks, dataflow builders — and combines the `smodel`, `collections`, and `closures` language extensions. Covers querying nodes (`.descendants<C>`, `.ancestor<C>`, `.children`, `.parent`, `containingRoot`), filtering sequences (`.where`, `.select`, `.translate`, `.ofConcept<C>`), building closures (`{ it => ... }`, `yield`, recursion), creating and mutating nodes (`new node<C>()`, `add new(C)`, `set new(C)`, `replace with new(C)`, `.detach`, `.copy`), property and link access (`SPropertyAccess`, `SLinkAccess`, `SLinkListAccess`), reference operations (`.reference/C : role/`, `.target`), null-safe node equality (`:eq:` / `:ne:`), smodel/Java type casts (`node:C`, `node as C`, `/`, `downcast`), foreach choice, the `command` / `read action` lock wrappers, and JSON blueprints for every shape the Java parser cannot produce.
type: reference
---

# Writing MPS BaseLanguage with smodel / collections / closures

## Loading companion skills

Companion names in this skill are lazy dependencies: load only those relevant to the current task. If this skill came from an MCP server, use the host's skill loader to resolve the companion's unique discovered entry URI on the same host-assigned originating server. If the host has no server-backed skill loader, stop and report that limitation; do not silently fall back to a filesystem copy. If this skill came from a filesystem catalog, load the named sibling from that same catalog at `<skills-root>/<skill-name>/SKILL.md`, even if remote skill loaders are also available. Do not invent a tool name or server endpoint.

Use this skill when authoring code inside an MPS model where BaseLanguage is mixed with the `smodel`, `collections`, and `closures` extensions: behavior methods, checking/typesystem/dataflow rules, generator query functions, intentions, constraints, scope/canBe callbacks. The `mps_mcp_parse_java_and_insert` parser understands only plain Java, so most non-trivial code requires hand-built node blueprints — this skill is the catalog.

To enumerate nodes/instances/usages across a **scope** (a whole project, module, model, or repository) rather than navigating from one root, add the `jetbrains.mps.lang.smodel.query` language — it supplies `#instances` / `#usages` / `#nodes` / `#references` / `#models` / `#modules` and a `with (<scope>) { … }` wrapper, the same queries the MPS Console runs. Its results compose with the `smodel`/`collections`/`closures` operations catalogued here. See the `mps-console` skill.

## Minimum reading set

`references/` is a lookup catalog, not a syllabus. **One file is enough to write the body.** The
common failure here is the opposite: five catalogs (~60 KB) read to author one behavior method and one
checking rule.

| Body you are writing | Read only |
|---|---|
| a behavior method | `references/dot-expression-basics.md` |
| a typesystem inference rule or a checking rule | `references/dot-expression-basics.md` |
| a scope or `canBe*` callback | `references/dot-expression-basics.md` |
| a generator query (`$IF$` condition, `$LOOP$` source, `$REF$` target) | `references/dot-expression-basics.md` |

One file serves all four because every smodel/collections operation is a `DotExpression`. That file
carries its own jump table — open the one section matching the expression you are building, not the
whole file.

Add **one** more file, and only when the body actually does this:

- reads or writes a **property** (`node.name`, a `$PROPERTY$` value), or creates / restructures nodes (`add new(C)`, `set new(C)`, `replace with new(C)`, `.detach`, `NF_*`) → `references/property-and-mutation-ops.md`
- declares a local, parameter or return type that is an MPS type (`sequence<node<X>>`, `nlist<C>`, `search scope`) → `references/variable-declarations.md`
- goes through an `SReference` object, siblings, `containingRoot`, or `ofConcept<C>` → `references/references-and-queries.md`
- reads or attaches an attribute / annotation (`.@`) → `references/attribute-access.md`
- is plain Java going in through `mps_mcp_parse_java_and_insert` → `references/java-parser-capabilities.md`
- runs outside a rule or behavior body (IDE action, tool, plugin hook) and touches a model → `references/concurrent-access.md`

**Stopping rule.** Open a further reference only after an error you cannot explain from the one you
have — and then `references/golden-rules-and-pitfalls.md` (4.8 KB) **before** any catalog: its
symptom→cause→fix table settles most first-attempt errors and names the single catalog to open when it
does not. The `See …` pointers in the Critical Directives below, and the Reference Index at the end of
this file, are symptom indexes for that step — not a reading order.

## Critical Directives

- **Node equality uses `:eq:` and `:ne:`**, never `==` or `.equals()`. Use `NPEEqualsExpression` / `NPENotEqualsExpression`. See `references/node-equality.md`.
- **Every `InferredClosureParameterDeclaration` needs a `type` child**, even though MPS infers the type. Use `jetbrains.mps.baseLanguage.structure.UndefinedType` as placeholder. Omitting it cascades into misleading "different parameter numbers" / "out of search scope" / "operation is not applicable to null" errors. See `references/closures-catalog.md`.
- **The Java parser cannot produce smodel/collection types** in method return types, cannot parse `:Concept` casts, `.link` accesses, `.behaviorMethod()` calls, or `MetaAdapterFactory.getContainmentLink` inline. Use `LINKS.xxx`/`CONCEPTS.xxx` constants and replace types post-parse. See `references/java-parser-capabilities.md`.
- **Mutations need `command { … }`, reads from non-UI code need `read action { … }`**. There is no separate "write action". Behavior methods and rule bodies already hold the right lock. See `references/concurrent-access.md`.
- **Pick the right cardinality**: `SLinkAccess` for `0..1` / `1`; `SLinkListAccess` for `0..n` / `1..n`. One pair serves both reference links and containment children (there is no `SChildAccess`/`SChildListAccess`). Wrong choice triggers "out of search scope" / "access to link X is not expected here". See `references/dot-expression-basics.md`.
- **Feature references take the declaration's `sourceNode`**: `SPropertyAccess.property`, `SLinkAccess.link` and `SLinkListAccess.link` target the `sourceNode` of the matching `properties[]` / `children[]` / `references[]` entry from `mps_mcp_get_concept_details` (default `detail: "full"`; `"shape"` and `mps_dump.py shape` omit it). Never use the concept's own `sourceNode`, and never `featureId`. An inherited feature lives in the model of the concept that declares it: `name` (from `INamedConcept`) is always `r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)/1169194664001`. See `references/property-and-mutation-ops.md`.
- **`foreach` has two concepts**: collections `ForEachStatement` for `sequence`/`list`/`set`, BaseLanguage `ForeachStatement` for Java arrays/iterables. Wrong choice → type error. See `references/foreach-statements.md`.
- **Used-language imports**: NF_* operations require `jetbrains.mps.lang.actions` in the model's used languages; without it, `add new initialized(...)` etc. fail. See `references/property-and-mutation-ops.md` and `references/openapi-and-dependencies.md`.
- **Never recommend deprecated operations**: `.role` (use `.containingLink`), `.linkDeclaration` (use `.link`), `.role` on `SReference` (use `.link.name`), `.concept` `Node_GetConceptOperation` (use `node.concept` via typesystem).

## Common-path workflow

1. **Identify the source-of-truth layer**. If the change is to existing logic in a rule/method body, inspect the current node (shallow `mps_mcp_print_node`) before editing.
2. **Prefer `parse_java_and_insert`** for plain Java method bodies, expression replacements, and field declarations on `LINKS`/`CONCEPTS` inner classes. See `references/java-parser-capabilities.md`.
3. **For smodel/collections/closures constructs not parseable as Java**, build the node blueprint by hand — open the single file the "Minimum reading set" above names for your body shape, and stop there.
4. **For variable declarations and method return types** of MPS collection / smodel types, build the type child explicitly — `parse_java_and_insert` produces a wrong `ClassifierType` for these in return-type position. See `references/variable-declarations.md`.
5. **Validate** with `mps_mcp_check_root_node_problems(nodeReference, onlyNodesWithProblems=true)`. Re-read generated `source_gen/...java` only to confirm runtime shape — never to apply fixes. See `references/workflows.md`.
6. **If imports/dependencies break**, add a used language or model dependency via `mps_mcp_model_used_language` / `mps_mcp_model_dependency` / `mps_mcp_module_dependency`. See `references/openapi-and-dependencies.md`.

If MPS MCP tools are unavailable, do not hand-edit serialized `.mps` files unless explicitly requested — inspect only and report.

## Related Skills

- `mps-baselanguage` — host BaseLanguage statements, expressions, classes; this skill is the smodel/collections/closures overlay.
- `mps-quotations` — `<` … `>` quotations and antiquotations for assembling node trees inline; use instead of long blueprint chains where they apply.
- `mps-aspect-behavior` — per-concept method authoring; behavior bodies are the most common host for this skill.
- `mps-aspect-generator` — generator query bodies, `$IF$`/`$MAP_SRC$.mapperFunction`, where this skill provides the smodel idioms.
- `mps-aspect-typesystem` — inference and checking rule bodies; uses the same idioms.
- `mps-aspect-constraints` — `getScope`, `canBe*`, property validators; same idiom set.
- `mps-node-editing` — programmatic node creation and editing from outside model code (the MCP-tool side rather than smodel-language side).
- `mps-console` — the MPS Console and the `jetbrains.mps.lang.smodel.query` language (`with`-statement, `#instances`/`#usages`/`#nodes`/`#models`/`#modules`, scopes); use it to run or generate the smodel code in this skill across a project/repository scope, or to insert console commands via `mps_mcp_insert_console_command_from_json`.

## Reference Index

One line per file, keyed by the symptom that should send you there. This is an index to search, not a
sequence to read: per the Minimum reading set above, expect to open **one** entry — and a second only
after an error the first cannot explain.

- Open `references/golden-rules-and-pitfalls.md` when an error message makes no sense — a cascading `UnknownDotCall`, "out of search scope", "different parameter numbers", `List<SNode>` vs `sequence<node<X>>`. The symptom→cause→fix table; the first file to open after any failure, and frequently the only one.
- Open `references/java-parser-capabilities.md` before calling `mps_mcp_parse_java_and_insert`, or when it inserted something silently mis-typed — what the parser handles and the workarounds (LINKS/CONCEPTS constants instead of inline `MetaAdapterFactory`, post-parse `replace_node_child`, widening a signature to keep smodel casts out of arguments).
- Open `references/workflows.md` when you know what to write but not in what order to call the tools — the two end-to-end recipes (add a helper method to a checking-rule class; replace one expression inside a rule body) and the rules for reading `source_gen/` artifacts.
- Open `references/concept-id-table.md` when a blueprint needs a hex ID or persistent node ref you do not have — `MetaAdapterFactory` IDs for BaseLanguage concepts and links (`ThrowStatement`, `CatchClause`, `TryCatchStatement`, `VariableReference`, …) and node refs for `Type`, `Expression`, `Classifier`, `SequenceType`, `ListType`, `SNodeType`.
- Open `references/smodel-concepts-catalog.md` when you know the MPS surface notation but not the concept behind it (or the reverse) — every smodel concept (`SNodeType`, `SLinkAccess`, `Node_GetAncestorOperation`, `OfConceptOperation`, `Concept_*Operation`, `EnumMember_*`, …) with its ID. Search it for the one name you need; it is not prose.
- Open `references/baselanguage-key-concepts.md` when the host BaseLanguage concept is the piece missing from a blueprint — the short list this skill keeps reaching for (`DotExpression`, `ForeachStatement`, `BlockStatement`, `NPE*Expression`, `UndefinedType`).
- Open `references/concurrent-access.md` when the code runs *outside* a rule or behavior body — an IDE action, tool, plugin hook or migration — and reads or mutates a model: `command`, `read action`, `execute command in EDT`, `undo-transparent command`. Also read it before wrapping a body that already holds the lock in another `command`.
- Open `references/collections-catalog.md` when you need a sequence/list/set/map operation whose name or shape you are unsure of (`where`, `select`, `translate`, `any`, `take`, `sortBy`, `reduceLeft`, `toList`, …), a `sequence` is rejected where a `list` is required, `isEmpty` resolves to the wrong language, or a lazy sequence is evaluated twice — plus the type hierarchy (`sequence` ⊃ `list`/`set`; `map`), creators, mutators, sorted variants, and `iterator` vs `modifying_iterator`.
- Open `references/closures-catalog.md` when a closure does not type-check — "different parameter numbers", a parameter whose type stayed null, recursion (`InvokeFunctionOperation` vs `InvokeExpression`), `yield` vs `return` exclusivity, SAM conversion, the generated-Java form, or the missing closures runtime jar. Holds the `ClosureLiteral` / `InferredClosureParameterDeclaration` / `FunctionType` shapes.
- Open `references/dot-expression-basics.md` for **any** body, as the Minimum reading set says, and whenever a `DotExpression` chain must be built or repaired — cardinality (`SLinkAccess` vs `SLinkListAccess`, one pair for both references and children); an operand that must be cast to a typed `node<X>` via `SNodeTypeCastExpression`; navigation (`.link`, `.parent`, `.children`, `.ancestor<C>`, `.ancestors<C>`, `.descendants<C>`, include-self `+`); `node:C` vs `node as C`; `expr/` (`SemanticDowncastExpression`) and `downcast expr` (`DowncastExpression`) for crossing into Java APIs; `.isInstanceOf` / `.isNotNull` / `.isNull` / `.behaviorMethod(args)`; `where` / `any` / `translate` / `list.add`. Has its own jump table — read one section.
- Open `references/property-and-mutation-ops.md` when the body reads or writes a property, or changes the tree — `SPropertyAccess`, assignment, `Property_RemoveOperation`; `SNodeCreator`, `add new(C)`, `set new(C)`, `replace with new(C)` / `replace with(other)`, `.copy`, `.detach`, sibling inserts; and the `NF_*` factory-initialized variants with their `jetbrains.mps.lang.actions` used-language requirement.
- Open `references/references-and-queries.md` when you are holding an `SReference` rather than a node, or navigating sideways — `Node_GetReferenceOperation` (`.reference/C:role/`), `Node_GetReferencesOperation`, `Reference_GetTargetOperation`; `.siblings`/`.next-sibling`/`.prev-sibling*`, `.containingRoot`/`.containingLink`/`.model`/`.index`, `.isExactly(C)`, `seq.ofConcept<C>`, `seq.ofAspect<a>`, enum-member operations.
- Open `references/attribute-access.md` when an annotation or attribute is in play — a generator macro, a comment, a requirement trace: the `.@` operator (`AttributeAccess` + `NodeAttributeQualifier` / `LinkAttributeQualifier` / `ChildAttributeQualifier` / `PropertyAttributeQualifier` / `AllAttributeQualifier`) to read, attach/replace (assignable l-value) or remove one, the list semantics of `multiple` attributes (`.@role.add(...)`), and chaining into the children/refs/properties it grafts onto a node. Pairs with `references/attributes-and-annotations.md` in the `mps-aspect-structure-concepts` skill root after loading that companion skill from the same origin (the structure side).
- Open `references/link-and-concept-literals.md` when an API wants an `SContainmentLink` / `SReferenceLink` / `SConcept` argument and there is no preceding `node.` operand to hang it on — standalone `link/C : role/` (`LinkIdRefExpression`, two required refs) and `concept/C/` (`ConceptIdRefExpression`), and how both differ from `OperationParm_LinkQualifier` and `RefConcept_Reference`.
- Open `references/foreach-statements.md` when iterating produces a typesystem error, or the loop variable will not resolve — the two `foreach` concepts (collections `ForEachStatement` + `ForEachVariable` / `ForEachVariableReference` vs BaseLanguage `ForeachStatement` + `LocalVariableDeclaration` / `VariableReference`).
- Open `references/node-equality.md` before comparing two nodes — the `NPEEqualsExpression` (`:eq:`) and `NPENotEqualsExpression` (`:ne:`) blueprints, and why `==` / `.equals()` is wrong here.
- Open `references/variable-declarations.md` when a declared type is rejected or came out wrong — type-child choices for locals, parameters and return types (`node<C>`, `nlist<C>`, `node-ptr<C>`, `concept<C>`, `search scope`, `enummember<E>`, `sequence/list/set<node<C>>`, `boolean`); creator blueprints (`new arraylist<node<C>>`, `new hashset<node<C>>`, …); and the post-parse fix-ups for a `returnType` the Java parser produced as `List<SNode>`.
- Open `references/openapi-and-dependencies.md` when you hit "Concept not imported", "cannot resolve", or a class missing at runtime — which layer to fix (module dependency vs model dependency vs used language) and the matching MCP tool, plus the `org.jetbrains.mps.openapi.*` interfaces and threading rules for hand-written Java calling into models.
