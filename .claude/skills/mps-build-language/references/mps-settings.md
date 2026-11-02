# MPS Settings (`BuildMpsAspect`)

Lives in the `BuildProject` `aspects` role (one per project), not in `parts`. Controls how the MPS generator / Ant tasks behave.

| Property | Default | Meaning |
|---|---|---|
| `bootstrap` | false | Flag to break circular dependencies while building MPS itself. **Leave false** unless building MPS from scratch. |
| `testGeneration` | false | Enables the `gentest` Ant target — runs two tests per module: `%MODULE%.Test.Generating` (fails on generation errors) and `%MODULE%.Test.Diffing` (fails if generated files differ from disk). Output is TeamCity XML. |
| `generationMaxHeapSizeInMb` | (none) | `-Xmx` for the MPS generation task |

```json
{
  "concept": "jetbrains.mps.build.mps.structure.BuildMpsAspect",
  "properties": [
    { "name": "testGeneration",            "value": "true" },
    { "name": "generationMaxHeapSizeInMb", "value": "4096" }
  ]
}
```
