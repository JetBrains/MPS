# Declarative Scope Assertions — `ScopesTest`

`ScopesTest` is the declarative way to test a reference's scope. The test runner generates one JUnit method per `ScopesTest` annotation (named `test_ScopeOf_<NodeConcept>_<referenceRole>_<nodeId>`), so you do **not** need a `SimpleNodeTest` body to invoke it — adding the annotation to the snippet is enough.

## Where it lives

`ScopesTest` extends `AbstractTestNodeAnnotation` and is attached as a `smodelAttribute` child of the **node that holds the reference** being checked (e.g. a `RoutineCall` in Kaja, an `InputFieldReference` in Calculator, etc.). It commonly sits next to a `TestNodeAnnotation` on the same target node — both children of the same `smodelAttribute` slot.

## Children / refs

| Role | Concept | Card. | Purpose |
|---|---|---|---|
| `checkingReference` (ref) | `BaseConcept` | 0..1 | Points at the **resolved target** of the reference whose scope is being checked. The runner uses it to disambiguate when the node has more than one outgoing reference. For a `RoutineCall` (one `routine` ref) you can omit it; setting it to the call's current target makes the intent explicit and the generated test name stable. |
| `nodes` (child) | `ScopesExpectedNode` | 0..n | One entry per **expected** scope member. Semantics is *exact set* — if the actual scope contains anything else, or omits one of these, the test fails. |
| `ScopesExpectedNode.ref` (ref) | `BaseConcept` | 1 | The expected node (must be a persistent `r:` node ref — these are not scope-resolved like routine names). |

## Minimal JSON blueprint

Attach this as a `smodelAttribute` child of the node holding the reference:

```json
{
  "concept": "jetbrains.mps.lang.test.structure.ScopesTest",
  "references": [
    { "role": "checkingReference", "target": "<resolved-target-node-ref>" }
  ],
  "children": [{
    "role": "nodes",
    "nodes": [
      { "concept": "jetbrains.mps.lang.test.structure.ScopesExpectedNode",
        "references": [{ "role": "ref", "target": "<expected-node-ref-1>" }] },
      { "concept": "jetbrains.mps.lang.test.structure.ScopesExpectedNode",
        "references": [{ "role": "ref", "target": "<expected-node-ref-2>" }] }
    ]
  }]
}
```

## Authoring tip — stage construction

`ScopesExpectedNode.ref` is not scope-resolved, so plain names won't auto-resolve. Insert the snippet's structure first (Script, routines, the call with a plain-name `routine` target), then `mps_mcp_print_node` `format: "AGENTIC VIEW"` to harvest the persistent refs of the routines and the call's resolved target, then add the `ScopesTest` annotation as a second-stage `add_node_child` with those refs.

## Why prefer it over imperative assertions

Declarative `ScopesTest` annotations:

- generate a separate JUnit test per scope site (better isolation, clearer failure reporting),
- check the scope **exactly** (catches over-broad scopes that the resolved reference can't detect),
- need no `SimpleNodeTest` body, no `assertTrue`/`:eq:` boilerplate.

Use a `SimpleNodeTest` only when the property under test isn't expressible as "the scope of *this* reference equals *this* set" — e.g. when you need to compute something across multiple snippets.

Inside MPS the same annotation is created via Alt+Enter → *Scope Test Annotation*; list expected items in the inspector panel.
