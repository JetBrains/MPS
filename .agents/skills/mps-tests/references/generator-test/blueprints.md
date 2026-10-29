# The `GeneratorTest` root

## Concepts (`jetbrains.mps.lang.test.generator`)

| Concept | Role in the test | Features |
|---|---|---|
| `GeneratorTest` (root) | one JUnit test class | `name`, `description`; `arguments` 0..n (`TestArgument`), `tests` 0..n (`TestAssertion`) |
| `ModelArgument` | names a model: input, expected or plan | `name`; `param` 1 = `jetbrains.mps.lang.modelapi.structure.ModelPointer` |
| `ModelPointer` (`jetbrains.mps.lang.modelapi`) | the model's identity | `modelId` (`r:<uuid>`, the model reference without the name), child `name` 1 = `ModelName{value}` (the model's full name, stereotype included). The only `ModelIdentity` you can put in `param` |
| `ModelMatchOptions` | how to compare | `name`; `propertyUserValue`, `associationIdenticalTarget`, `aggregateIgnoreOrder` (booleans), `comment`. See `references/generator-test/matching-and-plans.md` |
| `TransformationMatchAssertion` | one JUnit test method: generate one input, match one expected model | `inputModel` 1, `referenceModel` 1, `transformationPlan` 0..1, `matchOptions` 0..1 — each an `ArgumentReference` |
| `TransformationMatchManyAssertion` | the same for a plan that writes several output models (forks) | `inputModel` 1, `referenceModels` 1..n, `transformationPlan` 0..1; no `matchOptions` |
| `ArgumentReference` | points at an argument | reference `arg` → a `ModelArgument` (model slots) or a `ModelMatchOptions` (`matchOptions`); a constraint rejects the wrong kind |

The language has no intentions. Concept refs are in `references/concept-identifiers.md`.

The root becomes a Java test class named after it (in the `@tests` model's package), so its name must
be a Java identifier, unique among the model's test roots. Each `ModelArgument` becomes a field
`myArg_<name>`: argument names must be Java identifiers and unique within the root (a
`ModelMatchOptions` name such as `any-order` is not a field and may contain `-`). Each assertion
becomes a JUnit method `testTransformAndMatch<i>`, `<i>` being its index in `tests`; inserting,
moving or deleting an assertion renumbers the ones after it, so append new assertions. Every argument
is resolved before every method (see the "skipped" trap in
`references/generator-test/running-and-failures.md`).

## The whole root in one call

Create the input and expected models first and take their references from `mps_mcp_create_model`.
Then one `mps_mcp_insert_root_node_from_json` into the `@tests` model builds the root; argument
references may name the argument (`"target": "IN"`), which resolves in the root's scope:

```json
{"concept": "jetbrains.mps.lang.test.generator.structure.GeneratorTest",
 "properties": [{"name": "name", "value": "RecipeClasses"},
                {"name": "description", "value": "one class per recipe"}],
 "children": [
  {"role": "arguments", "nodes": [
    {"concept": "jetbrains.mps.lang.test.generator.structure.ModelArgument",
     "properties": [{"name": "name", "value": "IN"}],
     "children": [{"role": "param", "nodes": [
       {"concept": "jetbrains.mps.lang.modelapi.structure.ModelPointer",
        "properties": [{"name": "modelId", "value": "r:2ea4c797-118e-475d-8320-67084a2a5628"}],
        "children": [{"role": "name", "nodes": [
          {"concept": "jetbrains.mps.lang.modelapi.structure.ModelName",
           "properties": [{"name": "value", "value": "mcp.study.recipes.gentests.input"}]}]}]}]}]},
    {"concept": "jetbrains.mps.lang.test.generator.structure.ModelArgument",
     "properties": [{"name": "name", "value": "OUT"}],
     "children": [{"role": "param", "nodes": [
       {"concept": "jetbrains.mps.lang.modelapi.structure.ModelPointer",
        "properties": [{"name": "modelId", "value": "r:6a765de0-dd43-4a06-955b-67296d590f7b"}],
        "children": [{"role": "name", "nodes": [
          {"concept": "jetbrains.mps.lang.modelapi.structure.ModelName",
           "properties": [{"name": "value", "value": "mcp.study.recipes.gentests.expected"}]}]}]}]}]}]},
  {"role": "tests", "nodes": [
    {"concept": "jetbrains.mps.lang.test.generator.structure.TransformationMatchAssertion",
     "children": [
       {"role": "inputModel", "nodes": [{"concept": "jetbrains.mps.lang.test.generator.structure.ArgumentReference",
                                        "references": [{"role": "arg", "target": "IN"}]}]},
       {"role": "referenceModel", "nodes": [{"concept": "jetbrains.mps.lang.test.generator.structure.ArgumentReference",
                                            "references": [{"role": "arg", "target": "OUT"}]}]}]}]}]}
```

The blueprint above is about 2.5 KB; with more arguments or assertions it passes the 4 KB inline
limit, so write it to a file in the system temp directory (`$TMPDIR`) and pass the path as `json`.
Name-based `arg` targets resolve only while no other root of the model has an argument of the same
name: for a second `GeneratorTest` with `IN`/`OUT` arguments the insert reports
`fixReferences.stillBroken`, and you then set each `arg` with `mps_mcp_update_node SET REFERENCE`
to the argument's `r:` reference. Distinct argument names per root avoid it.

`modelId` is the part of the model reference before the parenthesis (`r:…` of
`r:2ea4c797-…(mcp.study.recipes.gentests.input)`); the name goes into `ModelName.value`. A wrong
`modelId` makes the argument unresolvable at run time, which skips the whole class instead of failing
it: copy it from the reference `mps_mcp_create_model` returned. The insert adds the used
languages `jetbrains.mps.lang.test.generator` and `jetbrains.mps.lang.modelapi`.

`mps_mcp_print_node(format="PLAIN TEXT")` of the root reads like the editor and is the quickest check:

```
generator test RecipeClasses
  Description  one class per recipe
  Arguments
    model / mcp.study.recipes.gentests.input /  as IN
    model / mcp.study.recipes.gentests.expected /  as OUT
  Assertions
    transform model  IN  with plan  <no transformationPlan> and match  OUT
```

## Adding to an existing root

- Another argument: `mps_mcp_update_node(operation="ADD", kind="CHILD", nodeReference=<root>,
  childRole="arguments", childJson=<one ModelArgument or ModelMatchOptions>)`.
- Another assertion: the same with `childRole="tests"`. Inside a child blueprint, prefer the
  arguments' `r:` node references for `arg` over their names: once the model holds two roots with an
  argument of the same name (e.g. after `COPY_NODE`), a name is ambiguous and the write fails or
  binds the wrong one.
- A variant of a whole test: `mps_mcp_alter_nodes COPY_NODE` of the root, then rename it and change
  what differs. The copy's argument references point at the copy's own arguments.
- Several `GeneratorTest` roots or several assertions in one root are both fine; a root is a class,
  an assertion a method. Group assertions that share arguments; give a test its own root when its
  name should show in the run.

Validate with `mps_mcp_check_root_node_problems` on the `@tests` model (`perRoot: true`). It catches
an `arg` of the wrong kind, unresolved references and a malformed `modelId` (a whole `r:…(name)`
reference), not a well-formed `modelId` that names no model.
