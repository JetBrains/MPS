---
name: mps-model-manipulation
description: >-
  Use when writing or editing MPS BaseLanguage code that lives inside a model — behavior methods, typesystem rules, checking rules, generator queries, constraints, intentions, scope/canBe callbacks, dataflow builders — and combines the `smodel`, `collections`, and `closures` language extensions. Covers querying nodes (`.descendants<C>`, `.ancestor<C>`, `.children`, `.parent`, `containingRoot`), filtering sequences (`.where`, `.select`, `.translate`, `.ofConcept<C>`), building closures (`{ it => ... }`, `yield`, recursion), creating and mutating nodes (`new node<C>()`, `add new(C)`, `set new(C)`, `replace with new(C)`, `.detach`, `.copy`), property and link access (`SPropertyAccess`, `SLinkAccess`, `SLinkListAccess`), reference operations (`.reference/C : role/`, `.target`), null-safe node equality (`:eq:` / `:ne:`), smodel/Java type casts (`node:C`, `node as C`, `/`, `downcast`), foreach choice, the `command` / `read action` lock wrappers, and JSON blueprints for every shape the Java parser cannot produce.
type: reference
---

# Writing MPS BaseLanguage with smodel / collections / closures

Use this skill when authoring code inside an MPS model where BaseLanguage is mixed with the `smodel`, `collections`, and `closures` extensions: behavior methods, checking/typesystem/dataflow rules, generator query functions, intentions, constraints, scope/canBe callbacks. The `mps_mcp_parse_java_and_insert` parser understands only plain Java, so most non-trivial code requires hand-built node blueprints — this skill is the catalog.

To enumerate nodes/instances/usages across a **scope** (a whole project, module, model, or repository) rather than navigating from one root, add the `jetbrains.mps.lang.smodel.query` language — it supplies `#instances` / `#usages` / `#nodes` / `#references` / `#models` / `#modules` and a `with (<scope>) { … }` wrapper, the same queries the MPS Console runs. Its results compose with the `smodel`/`collections`/`closures` operations catalogued here. See the `mps-console` skill.

## Critical Directives

- **Node equality uses `:eq:` and `:ne:`**, never `==` or `.equals()`. Use `NPEEqualsExpression` / `NPENotEqualsExpression`. See `references/node-equality.md`.
- **Every `InferredClosureParameterDeclaration` needs a `type` child**, even though MPS infers the type. Use `jetbrains.mps.baseLanguage.structure.UndefinedType` as placeholder. Omitting it cascades into misleading "different parameter numbers" / "out of search scope" / "operation is not applicable to null" errors. See `references/closures-catalog.md`.
- **The Java parser cannot produce smodel/collection types** in method return types, cannot parse `:Concept` casts, `.link` accesses, `.behaviorMethod()` calls, or `MetaAdapterFactory.getContainmentLink` inline. Use `LINKS.xxx`/`CONCEPTS.xxx` constants and replace types post-parse. See `references/java-parser-capabilities.md`.
- **Mutations need `command { … }`, reads from non-UI code need `read action { … }`**. There is no separate "write action". Behavior methods and rule bodies already hold the right lock. See `references/concurrent-access.md`.
- **Pick the right cardinality**: `SLinkAccess` for `0..1` / `1`; `SLinkListAccess` for `0..n` / `1..n`. One pair serves both reference links and containment children (there is no `SChildAccess`/`SChildListAccess`). Wrong choice triggers "out of search scope" / "access to link X is not expected here". See `references/dot-expression-basics.md`.
- **`foreach` has two concepts**: collections `ForEachStatement` for `sequence`/`list`/`set`, BaseLanguage `ForeachStatement` for Java arrays/iterables. Wrong choice → type error. See `references/foreach-statements.md`.
- **Used-language imports**: NF_* operations require `jetbrains.mps.lang.actions` in the model's used languages; without it, `add new initialized(...)` etc. fail. See `references/property-and-mutation-ops.md` and `references/openapi-and-dependencies.md`.
- **Never recommend deprecated operations**: `.role` (use `.containingLink`), `.linkDeclaration` (use `.link`), `.role` on `SReference` (use `.link.name`), `.concept` `Node_GetConceptOperation` (use `node.concept` via typesystem).

## Common-path workflow

1. **Identify the source-of-truth layer**. If the change is to existing logic in a rule/method body, inspect the current node (shallow `mps_mcp_print_node`) before editing.
2. **Prefer `parse_java_and_insert`** for plain Java method bodies, expression replacements, and field declarations on `LINKS`/`CONCEPTS` inner classes. See `references/java-parser-capabilities.md`.
3. **For smodel/collections/closures constructs not parseable as Java**, build the node blueprint by hand. See:
   - `references/dot-expression-basics.md` — the universal `DotExpression(operand, operation)` chaining pattern, closure literal blueprint, type-cast wrapping rules.
   - `references/property-and-mutation-ops.md` — property reads/writes, `add new(C)`, `replace with new(C)`, sibling inserts.
   - `references/references-and-queries.md` — `.ancestor<C>`, `.descendants<C>`, `.reference/C:role/`, `.target`, `.isInstanceOf`, sibling queries.
   - `references/attribute-access.md` — the `.@` operator: read/set/remove an attribute (annotation) attached to a node and reach the children/refs/properties it grafts on (generator macros, comments, requirement traces).
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

- `references/golden-rules-and-pitfalls.md` — read first when an error looks weird (cascade `UnknownDotCall`, "out of search scope", "different parameter numbers", `List<SNode>` vs `sequence<node<X>>`); collected symptom→cause→fix table.
- `references/java-parser-capabilities.md` — open before calling `mps_mcp_parse_java_and_insert`. Lists what the parser handles, what it silently mis-types, and the canonical workarounds (LINKS/CONCEPTS pattern, post-parse `replace_node_child`, signature widening to avoid smodel casts in arguments).
- `references/workflows.md` — step-by-step recipes: adding a new helper method to a checking-rule class, replacing an expression inside a rule body, interacting with `source_gen/` artifacts.
- `references/concept-id-table.md` — `MetaAdapterFactory` hex IDs for BaseLanguage concepts and links (`ThrowStatement`, `CatchClause`, `TryCatchStatement`, `VariableReference`, etc.) plus persistent node refs for `Type`, `Expression`, `Classifier`, `SequenceType`, `ListType`, `SNodeType`.
- `references/smodel-concepts-catalog.md` — every smodel concept (`SNodeType`, `SLinkAccess`, `Node_GetAncestorOperation`, `OfConceptOperation`, `Concept_*Operation`, `EnumMember_*`, …) with its ID and MPS surface notation. Open when you need to pick a concept and don't remember which one.
- `references/baselanguage-key-concepts.md` — the small set of BaseLanguage concepts that this skill keeps reaching for (`DotExpression`, `ForeachStatement`, `BlockStatement`, `NPE*Expression`, `UndefinedType`).
- `references/concurrent-access.md` — `command`, `read action`, `execute command in EDT`, `undo-transparent command`. Open when writing code that reads/mutates models outside a rule or behavior body.
- `references/collections-catalog.md` — every `*Operation` from `jetbrains.mps.baseLanguage.collections` (`where`/`select`/`translate`/`any`/`take`/`sortBy`/`reduceLeft`/`toList`/…), the type hierarchy (`sequence` ⊃ `list`/`set`; `map`), creator concepts, list/set/map mutators, `iterator` vs `modifying_iterator`, sorted variants, lazy-vs-eager rule, and the `isEmpty`/`isNotEmpty` collections-vs-baselanguage ambiguity.
- `references/closures-catalog.md` — `ClosureLiteral` parameters/body shape, `InferredClosureParameterDeclaration` requirements, `FunctionType`, `InvokeFunctionOperation` vs `InvokeExpression` (recursion), `YieldStatement`, SAM conversion, generated-Java compilation form, runtime jar dependency.
- `references/dot-expression-basics.md` — the universal `DotExpression(operand, operation)` chaining pattern; closure-literal blueprint (the reusable building block); cardinality cheat-sheet (`SLinkAccess` vs `SLinkListAccess`, one pair for both references and children); when to wrap an operand in `SNodeTypeCastExpression`; navigation blueprints (`.link`, `.parent`, `.children`, `.ancestor<C>`, `.ancestors<C>`, `.descendants<C>` including `+` include-self form); `node:C` vs `node as C`; `expr/` (`SemanticDowncastExpression`) and `downcast expr` (`DowncastExpression`) for crossing into Java APIs; `.isInstanceOf` / `.isNotNull` / `.isNull` / `.behaviorMethod(args)`; `where` / `any` / `translate` / `list.add` blueprints.
- `references/property-and-mutation-ops.md` — read for property reads/writes (`SPropertyAccess`, assignment, `Property_RemoveOperation`) and tree mutations (`SNodeCreator`, `add new(C)`, `set new(C)`, `replace with new(C)` / `replace with(other)`, `.copy`, `.detach`, sibling inserts), including all `NF_*` factory-initialized variants and the required `jetbrains.mps.lang.actions` used-language import.
- `references/references-and-queries.md` — `Node_GetReferenceOperation` (`.reference/C:role/`), `Node_GetReferencesOperation`, `Reference_GetTargetOperation` etc.; plus query operations `.siblings`/`.next-sibling`/`.prev-sibling*`, `.containingRoot`/`.containingLink`/`.model`/`.index`, `.isExactly(C)`, `seq.ofConcept<C>`, `seq.ofAspect<a>`, enum-member operations.
- `references/attribute-access.md` — the `.@` operator (`AttributeAccess` + `NodeAttributeQualifier` / `LinkAttributeQualifier` / `ChildAttributeQualifier` / `PropertyAttributeQualifier` / `AllAttributeQualifier`): read, attach/replace (assignable l-value), or remove an attribute, list semantics of `multiple` attributes (`.@role.add(...)`), and chain into the children/refs/properties it grafts onto a node. Pairs with `mps-aspect-structure-concepts/references/attributes-and-annotations.md` (the structure side).
- `references/link-and-concept-literals.md` — standalone `link/C : role/` (`LinkIdRefExpression`, two required refs) and `concept/C/` (`ConceptIdRefExpression`). Open when an API needs an `SContainmentLink`/`SReferenceLink`/`SConcept` argument with no preceding `node.` operand; covers the distinction from `OperationParm_LinkQualifier` and `RefConcept_Reference`.
- `references/foreach-statements.md` — the two `foreach` concepts (collections `ForEachStatement` + `ForEachVariable` / `ForEachVariableReference` vs BaseLanguage `ForeachStatement` + `LocalVariableDeclaration` / `VariableReference`). Open when iterating produces a typesystem error or when you need to reference the loop variable.
- `references/node-equality.md` — `NPEEqualsExpression` (`:eq:`) and `NPENotEqualsExpression` (`:ne:`) blueprints and when to use them.
- `references/variable-declarations.md` — type-child choices for locals and return types (`node<C>`, `nlist<C>`, `node-ptr<C>`, `concept<C>`, `search scope`, `enummember<E>`, `sequence/list/set<node<C>>`, `boolean`); creator blueprints for `new arraylist<node<C>>` / `new hashset<node<C>>` / etc.; the parse-time return-type fix-up blueprints for `sequence<node<Type>>` and `list<node<Type>>`.
- `references/openapi-and-dependencies.md` — `org.jetbrains.mps.openapi.*` interfaces and threading rules (when hand-written Java calls into models); module dependencies vs model dependencies vs used languages, with failure modes ("Concept not imported", "cannot resolve", "Class not found at runtime") and the matching MCP tool to call.
