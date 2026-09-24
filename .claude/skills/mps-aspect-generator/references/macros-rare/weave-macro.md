## $WEAVE$ / WeaveMacro

**What it does.** Inlines a weaving rule into a specific site in a template. The macro wraps a target node (or a sequence supplied by `nodesToWeaveQuery`); at generation time the referenced template is applied to each node in that sequence and the resulting output is merged in at the current position — the same merge semantics as a top-level weaving rule, but scoped to one template spot. Use this when weaving must be local (e.g. only woven into *this* helper's body, not into every method), or when the set of nodes to weave into is computed from the template context.

FQNs:

- `jetbrains.mps.lang.generator.structure.WeaveMacro` — the macro itself (attached via `smodelAttribute`).
- `jetbrains.mps.lang.generator.structure.SourceSubstituteMacro_SourceNodesQuery` — body of the `nodesToWeaveQuery` function, returning `sequence<node<>>`.
- `jetbrains.mps.lang.generator.structure.TemplateDeclarationReference` — the `ruleConsequence` child carrying the `template` reference.

```json
{ "concept": "jetbrains.mps.lang.generator.structure.WeaveMacro",
  "children": [
    { "role": "ruleConsequence", "nodes": [
      { "concept": "jetbrains.mps.lang.generator.structure.TemplateDeclarationReference",
        "references": [
          { "role": "template", "target": "<weave_InputRoot-template-ref>" }
        ]
      }
    ]},
    { "role": "nodesToWeaveQuery", "nodes": [
      { "concept": "jetbrains.mps.lang.generator.structure.SourceSubstituteMacro_SourceNodesQuery",
        "children": [
          { "role": "body", "nodes": [ /* StatementList returning sequence<node<>> — e.g.
               genContext.originalInputModel.nodesIncludingImported().ofConcept<InputRoot>().inputChild */ ]}
        ]
      }
    ]}
  ]
}
```

**Example.** `languages/languageDesign/generator/test/inputLang/generator/outputLang/template/test_ReduceInheritors@generator.mps` line 406 — a `WeaveMacro` attached to a helper target whose `ruleConsequence` points at template `weave_InputRoot` and whose `nodesToWeaveQuery` walks the original input model for `InputRoot.inputChild` nodes. (The same template also carries an `InsertMacro` on its neighbor — a useful real-world pairing, see `references/macros-rare/insert-macro.md`.)
