# Composing and Forking Generation Plans

## `IncludePlan` step

Inserts all steps of another `Plan` at this point (`plan` reference). Use it to share step sequences between plans; the included plan may live in another model (a cross-model `r:` reference adds the import). `PLAN` shows the steps already expanded.

```json
{
  "concept": "jetbrains.mps.lang.generator.plan.structure.IncludePlan",
  "references": [{ "role": "plan", "target": "r:<plan model id>(my.plans.java@genplan)/<plan node id>" }]
}
```

Real use: `LangConstraintsPlan` includes `BaseLanguageWithExtensions` from `r:647e430d-4f1a-4d18-8ace-69f2d9711419(jetbrains.mps.lang.descriptor.aspects@genplan)/2590172375576040653`.

## `Fork` step

Splits generation: the main plan continues with its remaining steps, and the `plan` reference's plan starts from a copy of the model as it is at the fork. Optional `filter` (`references/fork-selectors.md`) and legacy `gentarget` property.

- The branch plan is usually a second `Plan` root next to the main plan, **after** it (MPS uses the model's first `Plan` root as the main plan), or a plan in another model. Inserting both roots in one `mps_mcp_insert_root_node_from_json` array, main plan first, with the fork's `plan` given by the branch's name resolves the reference within the batch.
- `PLAN` lists `FORK {hasCondition, branchInputStereotypePrefix, branch:[steps]}`.
- A branch that generates the same root names into the same module overwrites the main branch's files; route its output or guard it with a condition.

### Real example — "GenPlanWithFork" (generator tests, `r:3da86158-d8e3-46d4-8529-5e1d4bd09279(...)/5681589587221880067`)

```json
{
  "concept": "jetbrains.mps.lang.generator.plan.structure.Plan",
  "properties": [{ "name": "name", "value": "GenPlanWithFork" }],
  "children": [{ "role": "steps", "nodes": [
    { "concept": "jetbrains.mps.lang.generator.plan.structure.ApplyGenerators",
      "children": [{ "role": "generator", "nodes": [
        { "concept": "jetbrains.mps.lang.generator.plan.structure.GeneratorModulePointer",
          "children": [{ "role": "module", "nodes": [
            { "concept": "jetbrains.mps.lang.modelapi.structure.ModulePointer",
              "properties": [
                { "name": "moduleName", "value": "jetbrains.mps.generator.test.crossmodel.entity#5533782486491461718" },
                { "name": "moduleId", "value": "0748f69c-0f19-4fe4-84a5-b51ed82f0548" }] }] }] }] }] },
    { "concept": "jetbrains.mps.lang.generator.plan.structure.Fork",
      "references": [{ "role": "plan", "target": "BranchWithProp2Xml" }] },
    { "concept": "jetbrains.mps.lang.generator.plan.structure.ApplyGenerators",
      "children": [{ "role": "generator", "nodes": [
        { "concept": "jetbrains.mps.lang.generator.plan.structure.GeneratorModulePointer",
          "children": [{ "role": "module", "nodes": [
            { "concept": "jetbrains.mps.lang.modelapi.structure.ModulePointer",
              "properties": [
                { "name": "moduleName", "value": "jetbrains.mps.generator.test.crossmodel.property#5533782486491461721" },
                { "name": "moduleId", "value": "708caccd-8eb1-451b-a7a7-f8ae5e214206" }] }] }] }] }] }
  ] }]
}
```

## `PlanContribution` root

A root (not a step) with a `plan` reference and an optional `filter`: "fork into this plan, under this condition, at the very start of whatever main plan the model has". It does **not** activate by itself. It takes effect only through an attached model:

- in a model attached to a second DevKit next to the DevKit that carries the main plan (the intended use: e.g. `jetbrains.mps.devkit.documentation` contributes `DocumentationPlan` for modules with the `documentation` facet);
- alone (a lone DevKit or a Solution facet), the model gets a plan whose main branch is empty — nothing but the fork.

Rules: MPS reads only the first `PlanContribution` root of a model; a `Plan` plus a contribution to that same plan makes the plan a fork with an empty main branch; a `Plan` plus a contribution to another plan is refused. Contributions fork from the untransformed input, before the main plan's first step.

### Real example — `DocumentationPlan` + `PlanContribution` (`r:d1cf1bdc-d32d-481e-8ec6-73dc1f9dcb76(jetbrains.mps.lang.documentation@genplan)`)

```json
{
  "concept": "jetbrains.mps.lang.generator.plan.structure.PlanContribution",
  "references": [{ "role": "plan", "target": "DocumentationPlan" }],
  "children": [{ "role": "filter", "nodes": [
    { "concept": "jetbrains.mps.lang.generator.plan.structure.ParameterEquals",
      "properties": [{ "name": "value", "value": "documentation" }],
      "children": [{ "role": "parameter", "nodes": [
        { "concept": "jetbrains.mps.lang.generator.plan.structure.ParameterReference",
          "references": [{ "role": "declaration",
            "target": "r:342b977c-a485-4fdb-b891-66244eff644a(jetbrains.mps.generator.extensions.common)/4969086367660211231" }] }] }] }]
}
```
