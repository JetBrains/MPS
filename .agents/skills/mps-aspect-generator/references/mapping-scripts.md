# Pre/post mapping scripts

Read this when: bulk-mutating the input or output model in one pass, indexing data for later rules, or cleaning up generated output — and rules alone aren't a fit. Also for setting `modifiesModel` correctly.

## What it does

A `MappingScript` is a block of BaseLanguage code that runs **once per step**, either before (pre) or after (post) the template-based transformation within that step. Unlike rules, it sees the whole model at once and can do bulk passes.

## When to use

- **Pre-processing**: collect information the rules will need (e.g. index nodes by some key). Set `modifiesModel = true` if you intend to mutate the input model itself (MPS will clone it so other generators see the original); leave it false for read-only analysis.
- **Post-processing**: cleanup/validation of the generated model — e.g. drop empty containers, rewrite idiomatically, merge duplicates.

Most generators do not need scripts — prefer rules when possible. Scripts are an escape hatch.

## Anatomy

- `name` (property)
- `scriptKind` property — enum `MappingScriptKind`, literals `pre_processing` / `post_processing`; **the default is `post_processing`**, so a pre-processing script must set it explicitly
- `modifiesModel` (property, boolean) — pre-processing only: set it `true` when the script changes the input model, so MPS works on a transient copy instead of the original and later phases see the changes
- `codeBlock` (role) — `MappingScript_CodeBlock`, body is a `StatementList` with implicit params `model` (the `SModel`; concept `jetbrains.mps.lang.sharedConcepts.structure.ConceptFunctionParameter_model`) and `genContext`

## JSON blueprint

```json
{
  "concept": "jetbrains.mps.lang.generator.structure.MappingScript",
  "properties": [
    { "name": "name",         "value": "refine_text" },
    { "name": "scriptKind",   "value": "post_processing" },
    { "name": "modifiesModel","value": "false" }
  ],
  "children": [
    { "role": "codeBlock", "nodes": [
      { "concept": "jetbrains.mps.lang.generator.structure.MappingScript_CodeBlock",
        "children": [ { "role": "body", "nodes": [ /* StatementList, uses `model` and `genContext` */ ]} ]
      }
    ]}
  ]
}
```

Hook a script into a MappingConfiguration under `preMappingScript` or `postMappingScript` (via a `MappingScriptReference` child that points at the declared `MappingScript`).

Live example: `samples/generator_demo/languages/demoLang5/.../main@generator.mps` declares both `fix_text` (pre) and `refine_text` (post) and wires them in.
