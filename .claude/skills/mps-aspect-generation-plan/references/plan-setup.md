# Setting Up a Generation Plan Model

## Create the model

1. Create a model inside a **solution** module. Give it the stereotype `genplan` (convention, not enforced):
   - Right-click solution → New model → set stereotype to `genplan`
   - The model file name will look like `MyPlan@genplan.mps`
2. Optionally mark the model "Do not generate": `mps_mcp_update_model(operation="SET_DO_NOT_GENERATE")`. A model created through `mps_mcp_create_model` is generatable whatever its stereotype; generating a plan model is harmless.
3. Add used languages:
   - `jetbrains.mps.lang.generator.plan`
   - `jetbrains.mps.lang.smodel` (for `LanguageId`)
4. Create a root node of concept `jetbrains.mps.lang.generator.plan.structure.Plan`.

## The `Plan` root concept

Has a `name`, an ordered list of `steps` (1..n), and an optional `modelAttributes` (`InitModelAttributes`).

```json
{
  "concept": "jetbrains.mps.lang.generator.plan.structure.Plan",
  "properties": [{ "name": "name", "value": "MyPlan" }],
  "children": [
    { "role": "steps", "nodes": [ /* Step sub-concepts */ ] },
    { "role": "modelAttributes", "nodes": [ /* InitModelAttributes, optional */ ] }
  ]
}
```

## Attaching a plan to models

### Via DevKit (recommended for production)

1. Create a DevKit module.
2. Add the solution containing the genplan model as a dependency.
3. In the DevKit definition, reference the `Plan` root node as the **Generation plan**.
4. Any model that imports this DevKit automatically uses this plan.
5. Do not assign more than one DevKit with a genplan to the same model.

### Via Custom Generation facet (quick/experimental)

1. Open the solution that owns the models to generate.
2. Add the **Custom generation** facet to the solution.
3. Point it to the generation plan root node.
4. All models in the solution will use the referenced plan.
