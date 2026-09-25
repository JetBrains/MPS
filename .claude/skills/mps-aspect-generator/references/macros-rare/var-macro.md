## $VAR$ / VarMacro2

**What it does.** Declares one or more named read-only values in the generator context for the duration of the wrapped subtree. Inside that subtree, queries can read the variable back through a `genContext.<var>` accessor — so it's a scoped, per-site alternative to putting a value on a mapping label or carrying it as an extra property through every intermediate rule. Typical uses: pre-compute a node (e.g. the already-looked-up XML root) once and read it from several later macros/queries; stash a helper BaseLanguage value for use by nested templates.

Each variable is a `VarDeclaration` with a `name` (string), an optional `type` (BaseLanguage type — defaults to the inferred type of `value`), and a required `value` function returning the stored value.

FQNs:

- `jetbrains.mps.lang.generator.structure.VarMacro2` — the macro (attached via `smodelAttribute`), child role `variables` (1..n).
- `jetbrains.mps.lang.generator.structure.VarDeclaration` — each variable; property `name`, optional child `type`, required child `value`.
- `jetbrains.mps.lang.generator.structure.VarMacro_ValueQuery` — body of the `value` function.

```json
{ "concept": "jetbrains.mps.lang.generator.structure.VarMacro2",
  "children": [
    { "role": "variables", "nodes": [
      { "concept": "jetbrains.mps.lang.generator.structure.VarDeclaration",
        "properties": [ { "name": "name", "value": "myNode" } ],
        "children": [
          { "role": "type", "nodes": [
            { "concept": "jetbrains.mps.baseLanguage.structure.ClassifierType",
              "references": [ { "role": "classifier", "target": "<XmlElement-concept-decl>" } ] }
          ]},
          { "role": "value", "nodes": [
            { "concept": "jetbrains.mps.lang.generator.structure.VarMacro_ValueQuery",
              "children": [
                { "role": "body", "nodes": [ /* StatementList — e.g. just `node` */ ]}
              ]
            }
          ]}
        ]
      }
    ]}
  ]
}
```

Readers inside the wrapped subtree use a `VarMacro_VariableReference` (or `1psM6Z` reader) hanging off `genContext` — e.g. `genContext.myNode` — whose ref `variable` points back at the `VarDeclaration`.

**Example.** `samples/xmlLiterals/languages/xmlLiterals/generator/template/main@generator.mps` line 491 — a `VarMacro2` with a single `VarDeclaration` named `myNode`, typed `XmlElement`, whose `value` body returns the current input `node`. Later in the same template the stored value is read as `genContext.myNode` and fed to `genContext.get output "contentToVariable" for (…)`.
