# Conditional Forks

A `Fork` step or a `PlanContribution` root takes an optional `filter` child (`ForkSelector`). Without a filter the branch always runs.

| Filter | Status |
|---|---|
| `ParameterEquals` | **Use this.** The branch runs when the referenced plan parameter has the given value for the model being generated. |
| `ConceptListSelector` | **Not supported.** MPS's plan translator handles no clause for it and building the plan throws: every model under the plan fails to generate and `mps_mcp_generation` `PLAN` answers `planComputed: false` with `planError`. `mps_mcp_update_module` `SET_GENERATION_PLAN` refuses such a plan. |

`Fork.gentarget` (editor: `fork with <plan> as "<id>"`) is the legacy trigger: when the fork has **no** filter, it runs only if the model's module has a facet of type `<id>`, and every branch model gets the `targetFacet` attribute `<id>`. With a filter, the filter decides and `gentarget` only sets the attribute.

## Plan parameters MPS fills

`ParameterDeclaration` roots live in `r:342b977c-a485-4fdb-b891-66244eff644a(jetbrains.mps.generator.extensions.common)` (module `jetbrains.mps.generator.extensions`). Values come from `PlanParameterContributor` extensions; MPS's own contributor fills two of the four declarations:

| Declaration (node id) | Values at generation time |
|---|---|
| `module-facet` (`4969086367660211231`) | one value per facet type of the model's module: `java`, `tests`, `generator`, `documentation`, … |
| `run-mode` (`4537509049643140758`) | `headless` (headless JVM), `teamcity` (on TeamCity), the model's stereotype (e.g. `tests`), and in test mode also `on`, `true`, `regular` or `in-process` |
| `test-mode` (`5191556267613169623`) | never filled — MPS puts the test-mode values under `run-mode` |
| `input-model-stereotype` (`7956775218523223219`) | never filled — the stereotype goes to `run-mode` |

A parameter with several values matches when any of them equals the `ParameterEquals` `value`.

## Blueprint — fork into `CiReportPlan` only when generating on TeamCity

```json
{
  "concept": "jetbrains.mps.lang.generator.plan.structure.Fork",
  "references": [{ "role": "plan", "target": "CiReportPlan" }],
  "children": [{ "role": "filter", "nodes": [
    { "concept": "jetbrains.mps.lang.generator.plan.structure.ParameterEquals",
      "properties": [{ "name": "value", "value": "teamcity" }],
      "children": [{ "role": "parameter", "nodes": [
        { "concept": "jetbrains.mps.lang.generator.plan.structure.ParameterReference",
          "references": [{ "role": "declaration",
            "target": "r:342b977c-a485-4fdb-b891-66244eff644a(jetbrains.mps.generator.extensions.common)/4537509049643140758" }] }] }] }]
}
```

For a module facet condition, reference `module-facet` (`…/4969086367660211231`) and put the facet type in `value` (the `PlanContribution` example in `references/composition-and-fork.md` does this for `documentation`). The `r:` target adds the model import of `jetbrains.mps.generator.extensions.common`.

The condition is not printable: `PLAN` shows the fork as `FORK` with `hasCondition: true` (`conditionPrintable: false`) and the branch's steps, and the PLAIN TEXT print omits the filter, so verify the filter from `mps_mcp_print_node` JSON of the `Fork`. Whether it runs is decided at generation time. A branch generates a second copy of the model, so a branch that produces the same files as the main branch overwrites them: give a branch its own output (e.g. `InitModelAttributes` `targetFacet`, `references/model-attributes.md`) or a condition that is false where it must not run.
