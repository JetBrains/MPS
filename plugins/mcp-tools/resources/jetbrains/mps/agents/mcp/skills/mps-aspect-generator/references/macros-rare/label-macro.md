## $LABEL$ / LabelMacro

**What it does.** The macro form of attaching a mapping label to a generator output. Where declaring a label on a rule/fragment tags whatever *that rule* writes, `LabelMacro` tags **whatever the wrapped node produces**, at macro granularity. Use it when the labeled output is a specific site inside a template (e.g. one LocalVariableDeclaration among many generated statements), not the whole rule's output.

Parameters:

- `mappingLabel` (reference, required) — the `MappingLabelDeclaration` on the MappingConfiguration to write into.
- `input1`, `input2` (child queries, optional) — two optional `LabelMacroInputQuery` bodies that compute the *keys* to index the label under. By default the keys are the enclosing rule's input node; override when you want to index the output under a different source, or under a pair of keys (two-key labels).

FQNs:

- `jetbrains.mps.lang.generator.structure.LabelMacro`
- `jetbrains.mps.lang.generator.structure.LabelMacroInputQuery` — body of `input1` / `input2`.

```json
{ "concept": "jetbrains.mps.lang.generator.structure.LabelMacro",
  "references": [
    { "role": "mappingLabel", "target": "<MappingLabelDeclaration-node-ref>" }
  ],
  "children": [
    { "role": "input1", "nodes": [
      { "concept": "jetbrains.mps.lang.generator.structure.LabelMacroInputQuery",
        "children": [
          { "role": "body", "nodes": [ /* StatementList returning node<> — e.g. `node.someChild` */ ]}
        ]
      }
    ]}
  ]
}
```

Omit `input1`/`input2` entirely when you want the default ("key = current input `node`"):

```json
{ "concept": "jetbrains.mps.lang.generator.structure.LabelMacro",
  "references": [ { "role": "mappingLabel", "target": "<LocalVar-label>" } ]
}
```

**Example.** `samples/calculator-tutorial/languages/calculator/generator/template/main@generator.mps` line 778 — a minimal `LabelMacro` with no `input1`/`input2`, attached to a `LocalVariableDeclaration` inside the calculator method template. It registers the generated local under the `LocalVar` label keyed by the current input field, so later references to that field inside the calculator logic can retrieve the local via `genContext.get output "LocalVar" for (<field>)`.
