# `Transform` and `ApplyGenerators` Steps

## `Transform`

Runs generators for one or more languages. Each language is listed as a `LanguageEntry` child.

```json
{
  "concept": "jetbrains.mps.lang.generator.plan.structure.Transform",
  "properties": [],
  "children": [
    {
      "role": "entries",
      "nodes": [
        {
          "concept": "jetbrains.mps.lang.generator.plan.structure.LanguageEntry",
          "properties": [
            { "name": "kind", "value": "Transform" }
          ],
          "children": [
            {
              "role": "language",
              "nodes": [
                {
                  "concept": "jetbrains.mps.lang.smodel.structure.LanguageId",
                  "properties": [
                    { "name": "namespace", "value": "jetbrains.mps.samples.Entities" },
                    { "name": "languageId", "value": "7917ee54-129c-42c6-8b53-ba6a5e718e32" }
                  ]
                }
              ]
            }
          ]
        }
      ]
    }
  ]
}
```

### `LanguageEntry.kind` — three modes (enum `TransformKind`)

| Value | Meaning |
|---|---|
| `Transform` (default) | Generate the named language directly |
| `TargetAt` | Run all generators whose *target language* is the named language |
| `Extend` | Run all generators whose *extended language* is the named language |

The `Transform` step also accepts the boolean property `individualStepPerGenerator` (default false). When `true`, each generator for the listed languages runs as its own step instead of in one batch.

## Real example — "the plan" (from `samples/crossModelGeneration`)

`r:2542d544-47da-47e7-ad01-9046425af2f3(Plan.generation_plan@genplan)/4053600266038343212`:

```json
{
  "concept": "jetbrains.mps.lang.generator.plan.structure.Plan",
  "properties": [{ "name": "name", "value": "the plan" }],
  "children": [
    {
      "role": "steps",
      "nodes": [
        {
          "concept": "jetbrains.mps.lang.generator.plan.structure.Transform",
          "children": [
            {
              "role": "entries",
              "nodes": [
                {
                  "concept": "jetbrains.mps.lang.generator.plan.structure.LanguageEntry",
                  "children": [
                    {
                      "role": "language",
                      "nodes": [
                        {
                          "concept": "jetbrains.mps.lang.smodel.structure.LanguageId",
                          "properties": [
                            { "name": "namespace", "value": "jetbrains.mps.samples.Entities" },
                            { "name": "languageId", "value": "7917ee54-129c-42c6-8b53-ba6a5e718e32" }
                          ]
                        }
                      ]
                    }
                  ]
                }
              ]
            }
          ]
        },
        {
          "concept": "jetbrains.mps.lang.generator.plan.structure.Checkpoint",
          "children": [
            {
              "role": "cpSpec",
              "nodes": [
                {
                  "concept": "jetbrains.mps.lang.generator.plan.structure.InPlaceCheckpointSpec",
                  "properties": [{ "name": "name", "value": "after_entities" }]
                }
              ]
            }
          ]
        },
        {
          "concept": "jetbrains.mps.lang.generator.plan.structure.Transform",
          "children": [
            {
              "role": "entries",
              "nodes": [
                {
                  "concept": "jetbrains.mps.lang.generator.plan.structure.LanguageEntry",
                  "children": [
                    {
                      "role": "language",
                      "nodes": [
                        {
                          "concept": "jetbrains.mps.lang.smodel.structure.LanguageId",
                          "properties": [
                            { "name": "namespace", "value": "jetbrains.mps.baseLanguageInternal" },
                            { "name": "languageId", "value": "df345b11-b8c7-4213-ac66-48d2a9b75d88" }
                          ]
                        }
                      ]
                    }
                  ]
                },
                {
                  "concept": "jetbrains.mps.lang.generator.plan.structure.LanguageEntry",
                  "children": [
                    {
                      "role": "language",
                      "nodes": [
                        {
                          "concept": "jetbrains.mps.lang.smodel.structure.LanguageId",
                          "properties": [
                            { "name": "namespace", "value": "jetbrains.mps.baseLanguage" },
                            { "name": "languageId", "value": "f3061a53-9226-4cc5-a443-f952ceaf5816" }
                          ]
                        }
                      ]
                    }
                  ]
                }
              ]
            }
          ]
        }
      ]
    }
  ]
}
```

## `ApplyGenerators`

Explicitly names one or more generator *modules* to apply, rather than specifying languages. Use when you need to apply a specific generator regardless of what languages are in scope.

Each generator is identified by a `jetbrains.mps.lang.generator.plan.structure.GeneratorModulePointer` child, which wraps a `ModulePointer` (from `jetbrains.mps.lang.modelapi`) carrying `moduleName` and `moduleId` (the generator module's name and uuid from `mps_mcp_get_project_structure(moduleKind: "Generator")`). Do not use `jetbrains.mps.lang.smodel.structure.GeneratorModulePointer`: it is deprecated since 2025.3. `PLAN` shows an `ApplyGenerators` step as one `TRANSFORM` with that generator's mapping configurations.

Optional boolean properties on `ApplyGenerators`:
- `withExtended` — also apply all generators that extend the listed generators
- `withPriorityRules` — break the step down further using the generators' own priority rules

### Real example — "WithCompiledGenerator"

`r:4404dc5e-45b4-40f4-88e1-d3616ae20c14(...)/2676503840832083121`:

```json
{
  "concept": "jetbrains.mps.lang.generator.plan.structure.Plan",
  "properties": [{ "name": "name", "value": "WithCompiledGenerator" }],
  "children": [
    {
      "role": "steps",
      "nodes": [
        {
          "concept": "jetbrains.mps.lang.generator.plan.structure.ApplyGenerators",
          "children": [
            {
              "role": "generator",
              "nodes": [
                {
                  "concept": "jetbrains.mps.lang.generator.plan.structure.GeneratorModulePointer",
                  "children": [
                    {
                      "role": "module",
                      "nodes": [
                        {
                          "concept": "jetbrains.mps.lang.modelapi.structure.ModulePointer",
                          "properties": [
                            { "name": "moduleName", "value": "jetbrains.mps.transformation.test.inputLang.generator02" },
                            { "name": "moduleId", "value": "0ff14688-a597-408c-970a-7bb088d60d4a" }
                          ]
                        }
                      ]
                    }
                  ]
                }
              ]
            }
          ]
        }
      ]
    }
  ]
}
```
