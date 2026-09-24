## $TRACE$ / TraceMacro

**What it does.** Purely *tracing metadata* — has **no effect on the generated output**. It records an association between a chosen source node and the wrapped output node so that, for every source position, MPS can answer "which output text did this input produce?" and vice-versa. The mapping lands in the generator's `trace.info` file and powers "go to generated" / "go to source" navigation as well as debugger line mapping. The only parameter is the `sourceNodeQuery` function returning the source node to remember; omit/implicit means the current input `node`.

FQNs:

- `jetbrains.mps.lang.generator.structure.TraceMacro` — the macro (attached via `smodelAttribute`).
- `jetbrains.mps.lang.generator.structure.SourceSubstituteMacro_SourceNodeQuery` — body of `sourceNodeQuery`.

```json
{ "concept": "jetbrains.mps.lang.generator.structure.TraceMacro",
  "children": [
    { "role": "sourceNodeQuery", "nodes": [
      { "concept": "jetbrains.mps.lang.generator.structure.SourceSubstituteMacro_SourceNodeQuery",
        "children": [
          { "role": "body", "nodes": [ /* StatementList returning a single node<> — e.g. `node.variable` */ ]}
        ]
      }
    ]}
  ]
}
```

**Example.** `languages/languageDesign/traceinfo/traceMacro.testlang/generator/template/jetbrains/mps/traceable/inputmacro/testlang/generator/template/main@generator.mps` line 199 — a `TraceMacro` attached to an output identifier expression; the `sourceNodeQuery` body returns `node.variable`, so every reference produced from this site is traced back to the original variable rather than to the enclosing `ForEachVariableReference`.

> **Debugging recommendation (agents).** When diagnosing a misgenerated fragment — wrong value, missing statement, a method that shouldn't have been emitted — sprinkle `$TRACE$` macros on the suspect output nodes with a `sourceNodeQuery` that returns the specific input node you think should be responsible. After generation, open the target module's `trace.info` (or use *Navigate → Related Symbol → Source/Generated*) and confirm that the problematic output line is traced to the expected input. If the trace points somewhere unexpected, the offending rule or macro is in *that* node's reduction path, not where the output appears. TraceMacro is the cheapest way to convert a vague "wrong output" into a concrete "this input node went through the wrong rule" bisection, because it requires no change to the output content and no log reading.
