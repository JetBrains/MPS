# `NodesTestCase`

The root node has three editable sections:

```
Test case <Name>
nodes
  ( <test snippet 1> )
  ( <test snippet 2> )
test methods
  test <name> { ... statements ... }
  ...
  <beforeTests> / <afterTests>      // optional @BeforeTest / @AfterTest hooks
utility methods
  <helper methods>
```

- **`nodes`** (role `nodesToCheck`, children of type `TestNode`) — wrapper nodes holding *snippets of the language under test*. Each `TestNode` contains one root from the target language (e.g. a `ClassConcept`, a `Module`, etc.). The snippet does not have to be syntactically perfect — the point is to assert structural/semantic properties about it.
- **`test methods`** (role `testMethods`, concrete concept **`SimpleNodeTest`**) — BaseLanguage methods. Each becomes one JUnit test method. Inside they can use `project`, `model`, smodel queries, and assertions to interrogate the nodes above. The role's declared type is `NodesTestMethod`, but that concept is **abstract** — you must instantiate `SimpleNodeTest` (its only concrete subconcept; concept ref `c:8585453e-6bfb-4d80-98de-b16074f1d86c/1225978065297`). Inserting a raw `NodesTestMethod` will fail `check_root_node_problems` with `"Abstract concept instance detected"`.
- **`utility methods`** — non-test helpers, reused across test methods.
- **`accessMode`** property — one of `unset`, `none`, `read`, `command` (default). Controls whether the test body runs in a write command, a read action, or without any wrapping.

> **Label namespace.** `TestNodeAnnotation` makes its target referenceable from test-method bodies as `node<label>`. Labels live **only** in that test-binding namespace — they do **not** participate in the snippet's own reference resolution. When wiring an in-snippet reference (e.g. setting `RoutineCall.routine`), use the target node's own `name` property (resolved through the language's scope) or a persistent `r:` node ref — *not* the annotation label.

## Inline assertion annotations

The most idiomatic way to test typesystem/constraints/scope rules is to annotate nodes inside the snippets with intentions from `lang.test` (for constraints rules, see "Asserting a constraints violation" below):

| Annotation concept | Alias | Asserts |
|---|---|---|
| `NodeErrorCheckOperation` (`1TM$A`) | `has error` | The annotated node has an error (any error, unless `errorRef` names the rule) |
| `NodeConstraintsErrorCheckOperation` | `has constraints error` | An error from the constraints rule that the required `errorRef` names |
| `NodeWarningCheckOperation` | `has warning` | A warning is reported (optional `warningRef`) |
| `NodeConstraintsWarningCheckOperation` | `has constraints warning` | A warning from the constraints rule that the required `warningRef` names |
| `NodeInfoCheckOperation` | `has info` | An info is reported |
| `NodeTypeCheckOperation` (`30Omv`) | `has type` | Annotated node has the inferred type in its single `type` child |
| `NodeExpectedTypeCheckOperation` | `has expected type` | Annotated node has the given *expected* type (context type); same single `type` child |
| `NodeTypeSetCheckOperation` | `has type in` | Inferred type is one of its `type` children (1..n) |
| `NodeTypeSystemErrorCheckOperation` (`2DdRWr`) | `has typesystem error` | A typesystem-rule error is raised; can reference `RuleReference` |
| `CheckNodeForErrorMessagesOperation` (`7OXhh`) | (used implicitly by `check ... for error messages`) | Wraps a subtree to check error messages |
| `TestNodeAnnotation` / `TestNodeReference` (`3xLA65` / `3xONca`) | "Add Test Node Label" | Tag a node with a **label**; reference it from test methods as `node<label>` |

Each is a separate concept; there is no `kind` or `expected` property to switch between them. In MPS, "Add Node Operations Test Annotation" (Alt+Enter) creates them.

**Every check operation sits in a `NodeOperationsContainer`.** The operations are children in its `nodeOperations` role (0..n), and the container goes into the annotated node's `smodelAttribute` role. A bare operation in `smodelAttribute` is rejected. One container per node holds several operations:

```json
{ "role": "smodelAttribute", "nodes": [{
    "concept": "jetbrains.mps.lang.test.structure.NodeOperationsContainer",
    "children": [{ "role": "nodeOperations", "nodes": [
      { "concept": "jetbrains.mps.lang.test.structure.NodeErrorCheckOperation" } ] }] }] }
```

The visual cue in the editor is `<check ... has error IsNotSubtypeOf>` or `<check expression has type int>` wrapping the asserted node.

Before writing a `has type` assertion, build the construct in a scratch sandbox model (recipe: `mps-aspect-typesystem` Common-Path step 9) and run `mps_mcp_query_nodes` `GET_TYPE` on that node to learn the actual inferred type and its `presentation`; it answers the node's own type, not the context's *expected* type that `has expected type` checks — `GET_EXPECTED_TYPE` with `maxRootNodes:1` answers that one (the check bounds the node from its parent's slice, not the whole root), so run it before writing a `has expected type` assertion.

Scope tests use the **`ScopesTest`** annotation — see `references/scopes-test.md`.

### Example — typesystem assertion inside a snippet

```
public Consumer<Integer> testBadReturnContext() {
  return <check ArrayList::set has error IsNotSubtypeOf>;
}
public void testWrongUseOfStaticMethod() {
  AtomicInteger integer = new AtomicInteger();
  Consumer<Integer> consumer = <check integer::new has error StaticMethodReferenced>;
}
```

Source: `testbench/testsolutions/jetbrains.mps.baseLanguage.methodReferences.test/models/jetbrains.mps.baseLanguage.methodReferences.test.typesystem@tests.mps`

### Asserting a constraints violation

A failing property validator, `canBeChild`, `canBeParent`, `canBeAncestor` or `canBeRoot` is an error report. Assert it with `has error`:

1. **Default: `NodeErrorCheckOperation` with no `errorRef`.** It passes when any error is reported on the annotated node. Annotate the node the checker reports on:
   - a property violation goes on the node that owns the property;
   - can-be-child goes on the child;
   - can-be-parent goes on **the parent**;
   - can-be-ancestor goes on **the ancestor**;
   - can-be-root goes on the root.
2. **Vacuity trap.** "Any error" also matches an unrelated one, such as a missing obligatory child or an unresolved reference. Make the snippet otherwise valid, then run `mps_mcp_check_root_node_problems` on the test root before you run the test. The only error on the annotated node must be the intended one.
3. **To be precise, add `expectedMessage`.** This is an `ExpectedMessageContainer` whose `text` property holds the exact message the check printed, e.g. `Property constraint violation for the property "servings"`. An empty `text` matches any message. If the language has a feedback aspect, the text the test run sees can differ from what the IDE check prints: confirm it with a test run, or leave `expectedMessage` out.
4. **Strict and rarely needed: `errorRef`.** Any `has error` with an `errorRef` passes only for an error reported by that rule, and `has constraints error` requires one. The `errorRef` is an `UnknownRuleReference`. Its `declaration` is the constraint **function** node (`propertyValidator`, `canBeChild`, …), not the `NodePropertyConstraint` or `ConceptConstraints` that holds it. Pointing at the container fails with `does not have the expected 'error' message ''`. The function's node id is the `SNodePointer` that the generated `source_gen/…/constraints/<Concept>_Constraints.java` passes to `setBreakingNode`, either directly or through a `…BreakingPoint` field. Use `errorRef` only to tell two rules on one node apart.

A `TestNode` snippet whose `Recipe` breaks a `servings` property validator. It has a valid step, so the validator's error is the only one:

```json
{
  "concept": "jetbrains.mps.lang.test.structure.TestNode",
  "children": [{ "role": "nodeToCheck", "nodes": [{
    "concept": "mcp.study.recipes.structure.Recipe",
    "properties": [{ "name": "name", "value": "ZeroServings" }, { "name": "servings", "value": "0" }],
    "children": [
      { "role": "steps", "nodes": [{ "concept": "mcp.study.recipes.structure.Step",
          "properties": [{ "name": "text", "value": "Mix" }, { "name": "minutes", "value": "5" }] }] },
      { "role": "smodelAttribute", "nodes": [{
          "concept": "jetbrains.mps.lang.test.structure.NodeOperationsContainer",
          "children": [{ "role": "nodeOperations", "nodes": [{
            "concept": "jetbrains.mps.lang.test.structure.NodeErrorCheckOperation",
            "children": [{ "role": "expectedMessage", "nodes": [{
              "concept": "jetbrains.mps.lang.test.structure.ExpectedMessageContainer",
              "properties": [{ "name": "text", "value": "Property constraint violation for the property \"servings\"" }] }] }]
          }] }] }] }
    ]
  }] }]
}
```

The strict variant adds an `errorRef` child to the same operation:

```json
{ "role": "errorRef", "nodes": [{
    "concept": "jetbrains.mps.lang.test.structure.UnknownRuleReference",
    "references": [{ "role": "declaration", "target": "<constraint-function-node-ref>" }] }] }
```

## Labelled-node assertions in test methods

When inline annotations are not enough (e.g. comparing the output of a generator-like operation against an expected tree), label nodes in the snippet and write a BaseLanguage assertion:

```basicLanguage
test compositeConvertDiffTest() {
  node<> input    = node<inputLabel>;
  node<> expected = node<expectedLabel>;
  node<> converted = QuotationConverter.convert(input);
  assertNodesMatch(converted, expected);   // helper from lang.test
}
```

`assertNodesMatch` (`AssertMatch`, `JA50E`) does a structural compare of two nodes, ignoring volatile fields. Apply it via Alt+Enter inside a test method.

### Example — a test method that calls a behavior method on a labelled node

`assert 15 equals node<recipe>.totalMinutes();`, as the `testMethods` child of the `NodesTestCase`. The snippet
root carries `TestNodeAnnotation` `name=recipe` in its `smodelAttribute` role. A JSON write adds the call's language,
`jetbrains.mps.lang.behavior`, to the test model by itself. The call is `jetbrains.mps.lang.behavior.structure.Node_ConceptMethodCall`. It is
neither the obsolete smodel concept of the same name nor a Java `InstanceMethodCallOperation`, which fails with
"not a strong subtype of ?no classifier?".
The general shape is `references/dot-expression-basics.md` in the `mps-model-manipulation` skill root after loading that companion skill from the same origin.

```json
{
  "concept": "jetbrains.mps.lang.test.structure.SimpleNodeTest",
  "properties": [{ "name": "name", "value": "testTotalMinutes" }],
  "children": [
    { "role": "returnType", "nodes": [{ "concept": "jetbrains.mps.baseLanguage.structure.VoidType" }] },
    { "role": "body", "nodes": [{
      "concept": "jetbrains.mps.baseLanguage.structure.StatementList",
      "children": [{ "role": "statement", "nodes": [{
        "concept": "jetbrains.mps.baseLanguage.unitTest.structure.AssertEquals",
        "children": [
          { "role": "expected", "nodes": [{ "concept": "jetbrains.mps.baseLanguage.structure.IntegerConstant",
                                            "properties": [{ "name": "value", "value": "15" }] }] },
          { "role": "actual", "nodes": [{
            "concept": "jetbrains.mps.baseLanguage.structure.DotExpression",
            "children": [
              { "role": "operand", "nodes": [{ "concept": "jetbrains.mps.lang.test.structure.TestNodeReference",
                                               "references": [{ "role": "declaration", "target": "recipe" }] }] },
              { "role": "operation", "nodes": [{
                "concept": "jetbrains.mps.lang.behavior.structure.Node_ConceptMethodCall",
                "references": [{ "role": "baseMethodDeclaration", "target": "<behavior-method-node-ref>" }] }] }
            ]
          }]}
        ]
      }]}]
    }]}
  ]
}
```
