# Generator test layout

## The models

A generator test needs at least three models, all in one test Solution:

| Model | Stereotype | Holds | Used languages |
|---|---|---|---|
| `<name>@tests` | `tests` | the `GeneratorTest` roots | `jetbrains.mps.lang.test.generator`, `jetbrains.mps.lang.modelapi` |
| input, e.g. `<name>.input` | none | the roots the generator transforms (instances of the language under test) | the language under test |
| expected, e.g. `<name>.expected` | none | the roots the generator should produce (e.g. BaseLanguage `ClassConcept`s) | the target language(s) |
| plan (optional), e.g. `<name>.plans@genplan` | `genplan` | a `Plan` root for a test that runs only some generators | `jetbrains.mps.lang.generator.plan`, `jetbrains.mps.lang.smodel` (for `LanguageId`) |

Use one expected model per distinct expected output: a test that expects the classes in another order,
or the output of another plan, gets a model of its own. Input and expected models are ordinary models
(no stereotype), so the `@tests` model refers to them by model reference, not by import.

The test Solution needs a module dependency for everything the expected model refers to, as any
model does: `JDK` for `java.lang.String` (the Java parser adds it), the runtime Solution of your
language when the output calls it. The MCP write tools add a missing dependency when they add the
import.

The Solution carries the `tests` facet (`mps_mcp_create_module(type="solution", …,
facets="[\"tests\"]")`). Keep the test data in it, not in the language's sandbox: a sandbox is user
material that changes for other reasons.

MCP node writes add used languages and model imports by themselves (`insert_root_node_from_json`,
`parse_java_and_insert`, `update_node`). The test Solution needs no explicit module dependency on the
language or its generator: generation resolves them from the input model's used languages, and the
generated test class gets the runtime of `jetbrains.mps.lang.test.generator` from that language.

## Mark the data models "Do not generate" — before the first make

Make generates every generatable model of a module, so without the flag the test Solution's make also
generates the input model (with the generator under test) and the expected model, writes the results
into its `source_gen` and compiles them. In the recipes example both produced
`source_gen/mcp/study/generated/Tea.java`: one file silently overwrote the other. When the output of
either does not compile in the test Solution, a make of the test Solution fails, though the run
configuration itself makes only the `@tests` model. MPS's own generator-test data models are all "Do not
generate".

```
mps_mcp_update_model(modelReference="<input model ref>", operation="SET_DO_NOT_GENERATE")
mps_mcp_update_model(modelReference="<expected model ref>", operation="SET_DO_NOT_GENERATE")
```

The response carries `"doNotGenerate": true`; `mps_mcp_get_project_structure` marks such a model with
`"doNotGenerate": true` (the field is absent for a model that make generates), and
`mps_mcp_generation PLAN` on it warns "is not generatable". `doNotGenerate=false` clears the flag.
The generator test itself is unaffected: it generates the input model in memory, whatever its flag.
A `@genplan` model created by `mps_mcp_create_model` is generatable too; generating it is harmless,
but you may mark it the same way.

If the data models were already generated, mark them and make the test Solution with `rebuild: true`
so the stale `source_gen` and `classes_gen` output goes away.

## Where the expected model's references must point

External references in the expected model are compared by target pointer, so they must point at the
same nodes as the generator's output: `String` must be `java.lang.String` of the JDK stub
(`6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)/~String`), a runtime class must be the
same stub or model the template refers to. The Java parser resolves JDK classes by itself; for a
class of your runtime Solution, import its model (`mps_mcp_model_dependency`) before parsing. See
`references/generator-test/expected-output.md`.
