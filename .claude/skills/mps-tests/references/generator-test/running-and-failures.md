# Running generator tests and reading failures

## Running

`mps_mcp_create_run_configuration(modelReference="<the @tests model ref>")` registers one live JUnit
configuration for every test root of the model, `GeneratorTest`s included; `nodeReference` with one
`GeneratorTest` root (or an array of roots) registers a snapshot for those. A lone `GeneratorTest`
without assertions is refused (it would run nothing); in an array or a model it just contributes no
test. Run it with
`execute_run_configuration(configurationName=<the returned name>, waitForExit=true, timeout=300000)`.

- Before launch the run makes the models that hold the test roots — the `@tests` model, nothing
  else. A new or changed `GeneratorTest` needs no MAKE of yours; a changed generator does: MAKE the
  language and its generator (`mps-aspect-generator`) before running.
- The configuration runs in the MPS process (in-process) and resolves the input and expected models
  in the live repository, so a change to them needs no rebuild. An out-of-process run and CI read the
  saved files; the MCP write tools save the model they change.
- Generator tests use no editor and no IDE services, so they run the same way headless. On CI they
  run only when the test Solution is listed in the build script's test modules (`module-tests`, see
  `mps-build-language`).

The output lists one `<START_TEST>` / `<FINISH_TEST>` pair per assertion
(`testTransformAndMatch0`, `1`, …) under one `<START_RUN_TEST>` per root. `exitCode` 0 means every
test passed.

## Reading a mismatch

```
java.lang.AssertionError: Transformation output model doesn't match reference one:
Node: Tea vs Tea
  Node: PORTIONS vs PORTIONS
    Node: integer constant vs integer constant
      Different property: value = 2, expected: 3
```

Each `Node: <actual> vs <expected>` line descends one level; the innermost line names the difference.
The first value is the generator's output, the `expected` one the expected model's. Two root-level
differences such as `Node: Tea vs Toast` / `Different property: name = Tea, expected: Toast` and
`Node: Toast vs Tea` mean the roots are in a different order, not that the values are wrong.

## When generation itself fails

When generation throws (a failing template query, a `GenerationFailureException`), the output model
is missing and the diff shows only `Node: null vs <expected root>` lines. Errors the generator only
reports do not fail the test at all: the output it still wrote is compared as usual, so a test can
pass while the generator logs errors. Read the IDE log after a green run too, when the generator is
new or changed. The generation messages go to the IDE log
(`mps_mcp_read_ide_log` with `sinceMinutes` covering the run and `minLevel: "WARN"`); clearing the
input's "Do not generate" flag for one MAKE of the input model (as in the golden-master recipe of
`references/generator-test/expected-output.md`) shows them in the make result too.

## Skipped is not passed

Before each test method every `ModelArgument` is resolved. One that names no model (wrong `modelId`,
deleted or renamed model) raises `org.junit.AssumptionViolatedException: Could not find model for
parameter '<name>' (<model ref>)` for **every** assertion of that root. The MCP run shows it inside a
`<TEST_FAILURE_BEGIN>` block, but JUnit and CI report the tests as skipped, and a skipped test does not
fail a build. Treat any `AssumptionViolatedException` as a failure: fix the argument
(`mps_mcp_print_node` PLAIN TEXT shows each argument's model name; compare the `modelId` with the
model's reference) and re-run. `mps_mcp_check_root_node_problems` reports a malformed `modelId` (a
whole `r:…(name)` reference instead of the `r:…` part, as "Property constraint violation for the
property \"modelId\""), not a well-formed id that names no model.

## Proving a test is not vacuous

A generator test that passes proves nothing until you have seen it fail for the right reason. Once,
after the first green run:
1. Change one value in the expected model that the generator computes (an `IntegerConstant.value`, a
   `StringLiteral.value`) with `mps_mcp_update_node SET PROPERTY`.
2. Run; the assertion must fail with a `Different property` line for that value.
3. Restore the value and run again: green.

For an any-order test, check that the expected model's root order differs from the output's;
otherwise it does not exercise the option. An empty expected model matches an empty or failed
output, so a test whose expected model has no roots passes whatever the generator does.

## Symptom → fix

| Symptom | Cause | Fix |
|---|---|---|
| `AssumptionViolatedException: Could not find model for parameter …` | a `ModelArgument` does not resolve | correct `modelId` / `ModelName` (`references/generator-test/blueprints.md`) |
| `Node: A vs B` with `Different property: name` at root level | roots in a different order | reorder the expected roots, or use `aggregateIgnoreOrder` (`references/generator-test/matching-and-plans.md`) |
| `Different property: packageName = x, expected: null` (or the reverse) | the expected class lacks the package the template sets | parse with a `package x;` line, or `SET PROPERTY packageName` |
| differences in properties the user never sees (`resolveInfo`, `nestedName`, `isStatic`) | the expected model was written another way than the template (JSON vs the Java parser), and an options node switched to stored-value comparison | set `propertyUserValue: true` on the options node, or write the expected node the way the template was written |
| `Excessive node, no counterpart to match to` under `Node: X vs null` (or `null vs X`) | the generator produced more or fewer nodes than expected, or a later generator reduced a construct you expected unreduced (`TransformationMatchManyAssertion` says `Different children count in role: …` instead) | check the step models (`references/generator-test/expected-output.md`); use an explicit plan to stop after your generator |
| a reference difference on a JDK or runtime class | the expected model points at another stub or model than the output | import the model the template uses; re-parse |
| `Node: null vs <root>` for every expected root | generation failed, or the plan ran no generator for the input | read the IDE log (above); check the plan |
| test passes, but a deliberate change to the expected model does not fail it | the assertion compares another expected model, or the input produces nothing and the expected model is empty | check `referenceModel` in PLAIN TEXT; make sure the expected model has roots |
| `Different external reference of role <role>. One target is null, while other is null` | the two references point at different nodes; the message never names the targets | print both nodes and compare `targetReference` (`references/generator-test/expected-output.md`, References) |
| make of the test Solution fails, or `source_gen` of the test Solution holds the generated classes | input or expected model is generatable | `mps_mcp_update_model SET_DO_NOT_GENERATE` on both (`references/generator-test/layout.md`), then MAKE with `rebuild: true` |
| `Concept 'GeneratorTest' is not runnable through this tool` | an MPS MCP server older than this skill | use `modelReference` for the `@tests` model |
