## $INSERT$ / InsertMacro

**What it does.** Lets the template hand off node construction to **imperative code**. The macro wraps a placeholder target, and at generation time its `createNodeQuery` returns a freshly built node (normally assembled with `new node<…>` and imperative assignments); the placeholder is replaced with that returned node. Use this when the subtree can't be expressed with templates and macros alone — computed structure, shape determined by input data, copies with programmatic tweaks, or bridging to non-MPS data.

Parameters:

- `createNodeQuery` (child, required) — `InsertMacro_CreateNodeQuery`; body returns a single `node<>` of the expected concept.
- `mappingLabel` (reference, optional) — if set, the inserted node is registered under that label, keyed by the current input `node` (same semantics as LabelMacro defaults). Handy when other parts of the output must refer to this imperatively built node.

FQNs:

- `jetbrains.mps.lang.generator.structure.InsertMacro`
- `jetbrains.mps.lang.generator.structure.InsertMacro_CreateNodeQuery`

```json
{ "concept": "jetbrains.mps.lang.generator.structure.InsertMacro",
  "references": [
    { "role": "mappingLabel", "target": "<optional-MappingLabelDeclaration-ref>" }
  ],
  "children": [
    { "role": "createNodeQuery", "nodes": [
      { "concept": "jetbrains.mps.lang.generator.structure.InsertMacro_CreateNodeQuery",
        "children": [
          { "role": "body", "nodes": [ /* StatementList returning a single node<> — e.g.
               node<GeneratedImage> rv = genContext.originalInputModel.createNode<GeneratedImage>;
               rv.fileName = resourceId;
               foreach layer in layers { rv.layers.add(new node<IconLayerDescription>() /* …copy fields… */); }
               return rv; */ ]}
        ]
      }
    ]}
  ]
}
```

**Example 1 (bare — no label).** `languages/languageDesign/resources/generator/template/jetbrains/mps/lang/resources/generator/template/main@generator.mps` line 2042 — an `InsertMacro` with only a `createNodeQuery` (no `mappingLabel`), whose body builds a `GeneratedImage` node by (a) creating the node via `genContext.originalInputModel.createNode<GeneratedImage>()`, (b) assigning its `fileName` from the `resourceId` variable, and (c) copying `layers` one by one. The placeholder target it replaces is an empty `ClassifierType` stub in the template.

**Example 2 (with label).** `languages/languageDesign/generator/test/inputLang/generator/outputLang/template/test_ReduceInheritors@generator.mps` line 433 — an `InsertMacro` carrying `mappingLabel → testLabel1`. The `createNodeQuery` body builds an `OutputNode` programmatically, sets its `text` property, and that output is also registered under `testLabel1` so downstream `ReferenceMacro`s / lookups can retrieve it. This is the typical idiom when the imperatively built node must itself be a cross-reference target.
