# The expected model

## What is compared

The test generates the input model with the plan of the assertion (when `transformationPlan` is
empty, the plan make would use: the default one, or the plan a `generator` facet or a devkit attaches
to the input's module) and compares the **last step model** of that generation with the
expected model. It is the model textgen would print, after every generator of the plan has run,
including the generators of the languages your output uses. Your generator's own output is what the
**first** step that runs it writes. They differ whenever your templates use a language with a
generator of its own: `closures`, `collections`, `smodel`, a `DotExpression` to a behavior method, or
another DSL. That later step reduces those constructs to plain BaseLanguage. To compare what your
templates wrote, give the assertion a plan that runs only your generator
(`references/generator-test/matching-and-plans.md`).

To see the steps, ask `mps_mcp_generation PLAN {model: <input model>}`: its `steps` are what the
default plan runs, and a step that changes nothing writes no model.

## Two ways to write it

**From the specification (preferred when the test should encode intended behaviour).** Write the
roots you expect the generator to produce. For Java output, `mps_mcp_parse_java_and_insert` with
`featureKind: "CLASS"` and `insert.mode: "root"` takes several top-level classes in one call; a
`package` line sets every class's `packageName` (the generated package), which must equal the one the
template sets, or the roots differ in that property:

```json
{"code": "package mcp.study.generated;\npublic class Tea {\n  public static final int PORTIONS = 2;\n  public static String[] steps() {\n    return new String[]{\"Boil water\", \"Steep the leaves\"};\n  }\n}\npublic class Toast { … }",
 "featureKind": "CLASS",
 "insert": {"mode": "root", "modelRef": "<expected model ref>"}}
```

Parsed classes and the generator's output can differ in stored properties nobody sees (`isStatic`
on a top-level class, `resolveInfo`, `nestedName`), depending on how the template was written. The
default comparison uses the values as the user sees them, under which such classes match; keep it
(no options node, or `propertyUserValue: true` on one). For a non-Java target language, write the
roots as JSON blueprints (`mps-node-editing`). Two classes in one insert easily pass the 4 KB inline
limit of the insert tools: write the JSON to a file in the system temp directory (`$TMPDIR`, not
`/tmp` on macOS) and pass its path.

**From the actual output (a golden master).** When the output is large, capture it and then check it.
This captures what the input model's **default** plan produces; make never applies an assertion's
`transformationPlan`, so for a plan-restricted assertion write the expected model by hand. Make skips
a "Do not generate" model, so the flag is cleared for one make:
1. `mps_mcp_update_model(modelReference=<input>, operation="SET_DO_NOT_GENERATE", doNotGenerate=false)`.
2. `mps_mcp_alter_nodes MAKE {"models": ["<input model ref>"], "saveTransientModels": true}`.
3. `mps_mcp_generation TRANSIENT_MODELS {model: <input model ref>}` lists the step models
   (`…input@0`, `@2_0`, …, `@6_7` in the recipes example); the last one on `branch` 0 is the compared
   output.
4. `mps_mcp_print_node(nodeReference=<transient root>, deep=true)` per root, then
   `mps_mcp_insert_root_node_from_json(modelReference=<expected model>, json=<the printed file>)`,
   in the order the step model lists the roots.
5. `SET_DO_NOT_GENERATE` again (default `true`), then MAKE the test Solution with `rebuild: true`:
   step 2 wrote the input's Java into the test Solution's `source_gen` and `classes_gen`, and only a
   rebuild removes it.
6. Read every value against the specification. A golden master encodes the generator as it is now,
   bugs included; the test is only as right as that review.

The next make discards the transient models; `DROP_TRANSIENT_MODELS` frees them earlier. A reference
inside a printed transient root that points at another node of the output names that node in the
transient model: after the insert, check `fixReferences.stillBroken` and `mps_mcp_check_root_node_problems`
on the expected model, and repoint such references at the expected model's own nodes.

## Root order

By default, roots are paired by position: the first output root with the first expected root. The
output's order is the order the generator created them (for a root mapping rule, the input roots'
order). The Project view sorts roots by name, so it does not show this order; `mps_mcp_get_project_structure`
with `includeRootNodes` lists the model's real order. Either insert the expected roots in that order,
or let the assertion ignore order (`aggregateIgnoreOrder`, `references/generator-test/matching-and-plans.md`),
which pairs roots — and children — by concept and presentation (the name, for a named node) instead.

## Properties set on one side only

Every property stored on either node is compared, so an explicit default on one side and an unset
property on the other differ (`isFinal = false` vs nothing) unless the comparison uses user values
(the default without an options node, `references/generator-test/matching-and-plans.md`). When a diff
names such a property, write the expected node the way the template writes it.

## References

- **Inside the output** (a variable reference to a local variable, a call of a method of the same
  class): both targets lie in their own model, and the matcher only checks that they have the same
  concept, the same property *names* and the same numbers of references and children. A reference to
  the wrong field or method of the same shape passes. When such a reference matters, make the
  candidates differ in shape, or assert it separately.
- **To anything else** (JDK and library stubs, runtime classes, nodes of other models): the target
  pointer must be identical. Import the same models the template refers to; the Java parser binds JDK
  classes to the `JDK` stub models by itself. The same class reached as a `java:` stub on one side
  and as a source model node on the other is two pointers and fails. A reference difference prints no
  targets (`Different external reference of role <role>. One target is null, while other is null`,
  whatever the targets are): print both nodes (the output from a transient model, see above) and compare their
  `targetReference` values.

## Maintaining the expected model

The test reads the input and expected models when it runs; editing them needs no rebuild. When the generator changes on purpose,
change the expected model to match — from the spec, not by re-capturing blindly — and keep a test
that would have caught the old behaviour.
