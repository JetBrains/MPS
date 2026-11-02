# Matching and generation plans

## How a model is matched

Every root of the output is matched with a root of the expected model, recursively:

- the concept must be the same;
- **every property set on either node** must be equal: a property set only on one side is a
  difference;
- every reference must point at the same target (see `references/generator-test/expected-output.md`,
  References);
- children are matched role by role, in order by default; **attribute children** (`smodelAttribute`:
  comments, annotations) are matched too;
- an output root with no expected counterpart, or the reverse, is a difference (`Excessive node, no
  counterpart to match to`), so the root count is checked.

Matching stops at the first difference inside a root, so a run reports at most one difference per
root: fixing an expected model can take several runs.

## `ModelMatchOptions`

An assertion without `matchOptions` compares user-visible property values, children and roots in
order, and references by target pointer. `matchOptions` points at a `ModelMatchOptions` argument of
the same root:

| Property | `true` | `false` or unset |
|---|---|---|
| `propertyUserValue` | compare values as the user sees them (after data-type conversion and property getters) | compare the stored strings (see below) |
| `associationIdenticalTarget` | compare resolved target nodes | compare target pointers |
| `aggregateIgnoreOrder` | pair roots and children by concept and presentation, ignoring order | pair them by position |

The generated test passes only the flags that are `true`. **As soon as one flag is `true`, an unset
`propertyUserValue` means stored strings**, although without an options node (or with every flag
`false`) the test compares user values. So an options node written only for `aggregateIgnoreOrder`
silently also moves the test to stored-string comparison. Always set `propertyUserValue` explicitly:

```json
{"concept": "jetbrains.mps.lang.test.generator.structure.ModelMatchOptions",
 "properties": [{"name": "name", "value": "anyOrder"},
                {"name": "propertyUserValue", "value": "true"},
                {"name": "aggregateIgnoreOrder", "value": "true"}]}
```

and in the assertion `{"role": "matchOptions", "nodes": [{"concept":
"jetbrains.mps.lang.test.generator.structure.ArgumentReference", "references": [{"role": "arg",
"target": "<the options argument's r: ref>"}]}]}`.

`aggregateIgnoreOrder` applies to **every** level, not only to roots: statements in a method body,
members of a class and list children are paired by concept and presentation too, so a generator that
emits statements in the wrong order still passes. Nodes with equal presentations (two `return`
statements, overloaded methods) pair arbitrarily. Use it when only the root order may vary, and keep
an assertion without it on an expected model in output order when the order inside matters.
`associationIdenticalTarget: true` crashes with a `NullPointerException` instead of reporting a
difference when an output reference does not resolve; leave it unset.

## Running only some generators: an explicit plan

`transformationPlan` points at a `ModelArgument` whose model holds a generation plan; the test then
uses that plan instead of the input model's default one. The test takes the **first** `Plan` root of
that model, so keep one plan per `@genplan` model. The plan lives in a `@genplan` model of the test Solution:

```
mps_mcp_create_model(moduleName="<test solution>", modelName="<name>.plans@genplan")
```

A plan that runs only the generator(s) of one language, as `mps_mcp_insert_root_node_from_json`:

```json
{"concept": "jetbrains.mps.lang.generator.plan.structure.Plan",
 "properties": [{"name": "name", "value": "RecipesOnly"}],
 "children": [{"role": "steps", "nodes": [
   {"concept": "jetbrains.mps.lang.generator.plan.structure.Transform",
    "children": [{"role": "entries", "nodes": [
      {"concept": "jetbrains.mps.lang.generator.plan.structure.LanguageEntry",
       "children": [{"role": "language", "nodes": [
         {"concept": "jetbrains.mps.lang.smodel.structure.LanguageId",
          "properties": [{"name": "namespace", "value": "mcp.study.recipes"},
                         {"name": "languageId", "value": "d723428a-5d9b-4750-9dd9-f09f6644bf03"}]}]}]}]}]}]}]}
```

An `ApplyGenerators` step that names the generator module instead of a `Transform` works too
(`mps-aspect-generation-plan`). `languageId` is the UUID of the language under test (from `mps_mcp_get_project_structure` or the `l:`
reference in its used-language entry). The output of such a plan is what your templates wrote: the
`closures`, `collections` or `smodel` constructs they produce stay unreduced and must be in the
expected model as such. MPS's own `BasicTest1` (`jetbrains.mps.test.smodel@tests`) compares one input
twice: with the default plan against fully reduced output, and with a plan of only the
`closures` generator against a partially reduced one. Add one `ModelArgument` for the plan model and set the assertion's
`transformationPlan` to it, like `inputModel`. For checkpoints, forks and plan composition see the
`mps-aspect-generation-plan` skill.

## Several output models

A plan with a `Fork` writes several output models. `TransformationMatchManyAssertion` takes
`referenceModels` (1..n), asserts that the generation wrote exactly that many output models
(`Number of output models`), and compares them in the order of the plan's outputs with the older
`NodesMatcher`. It has no `matchOptions` and differs from the matching above: order is always
significant, every difference is reported, and an external reference must resolve to the same node. MPS's `GenPlanForkTest` (`transform model EM1 with plan ForkPlan and match RM1, RM2`)
is the example.
