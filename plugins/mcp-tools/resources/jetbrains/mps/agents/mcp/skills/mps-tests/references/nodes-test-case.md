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

The most idiomatic way to test typesystem/constraints/scope rules is to annotate nodes inside the snippets with intentions from `lang.test`:

| Annotation concept | Intention name | Asserts |
|---|---|---|
| `NodeErrorCheckOperation` (`1TM$A`) | "Add Node Operations Test Annotation" → `has error` | The annotated node has the given checking error/quick-fix |
| `NodeErrorCheckOperation` with `kind=warning` | `has warning` | Warning is reported |
| `NodeErrorCheckOperation` with `kind=info` | `has info` | Info is reported |
| `NodeTypeCheckOperation` (`30Omv`) | `has type` | Annotated node has the given inferred type |
| `NodeTypeCheckOperation` with `expected=true` | `has expected type` | Annotated node has the given *expected* type (context type) |
| `NodeTypeCheckOperation` with `kind=typeIn` | `has type in` | Inferred type is one of several |
| `NodeTypeSystemErrorCheckOperation` (`2DdRWr`) | `has typesystem error` | A typesystem-rule error is raised; can reference `RuleReference` |
| `CheckNodeForErrorMessagesOperation` (`7OXhh`) | (used implicitly by `check ... for error messages`) | Wraps a subtree to check error messages |
| `TestNodeAnnotation` / `TestNodeReference` (`3xLA65` / `3xONca`) | "Add Test Node Label" | Tag a node with a **label**; reference it from test methods as `node<label>` |

The visual cue in the editor is `<check ... has error IsNotSubtypeOf>` or `<check expression has type int>` wrapping the asserted node.

Before writing a `has type` assertion, run `mps_mcp_query_nodes` `GET_TYPE` on the sandbox node to learn the actual inferred type and its `presentation`; it answers the node's own type, not the context's *expected* type that `has expected type` checks — `GET_EXPECTED_TYPE` answers that one, so run it before writing a `has expected type` assertion.

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
