# Concept Quick Reference

Language: `jetbrains.mps.lang.generator.plan` (`7ab1a6fa-0a11-4b95-9e48-75f363d6cb00`)

| Concept | Qualified Name | Rootable | Notes |
|---|---|---|---|
| `Plan` | `...structure.Plan` | yes | Root of a generation plan |
| `Transform` | `...structure.Transform` | no | Step: run generators by language |
| `LanguageEntry` | `...structure.LanguageEntry` | no | Entry in a Transform; has `kind` enum |
| `ApplyGenerators` | `...structure.ApplyGenerators` | no | Step: run specific generator modules |
| `GeneratorModulePointer` | `...structure.GeneratorModulePointer` | no | Generator identity inside ApplyGenerators |
| `Checkpoint` | `...structure.Checkpoint` | no | Step: persist transient model |
| `CheckpointDeclaration` | `...structure.CheckpointDeclaration` | no | Step: declare a shared checkpoint label |
| `CheckpointSynchronization` | `...structure.CheckpointSynchronization` | no | Step: read-only sync with a checkpoint |
| `InPlaceCheckpointSpec` | `...structure.InPlaceCheckpointSpec` | no | cpSpec: new inline checkpoint |
| `DeclaredCheckpointSpec` | `...structure.DeclaredCheckpointSpec` | no | cpSpec: reference to CheckpointDeclaration |
| `InPlaceCheckpointRefSpec` | `...structure.InPlaceCheckpointRefSpec` | no | cpSpec: reference to a Checkpoint step |
| `IncludePlan` | `...structure.IncludePlan` | no | Step: inline another plan |
| `Fork` | `...structure.Fork` | no | Step: split off a branch (`plan`, `filter`, `gentarget`) |
| `PlanContribution` | `...structure.PlanContribution` | yes | Conditional fork without touching the main plan |
| `ParameterDeclaration` | `...structure.ParameterDeclaration` | yes | Declares a fork condition parameter |
| `ParameterReference` | `...structure.ParameterReference` | no | Reference to a ParameterDeclaration |
| `ParameterEquals` | `...structure.ParameterEquals` | no | ForkSelector: parameter == value (the supported filter) |
| `ConceptListSelector` | `...structure.ConceptListSelector` | no | ForkSelector — **not supported**: building a plan with it throws |
| `InitModelAttributes` | `...structure.InitModelAttributes` | no | Child of Plan: set model attributes |
| `ModelAttributeAssignment` | `...structure.ModelAttributeAssignment` | no | Single attribute assignment |
| `ModelAttributeDeclaration` | `...structure.ModelAttributeDeclaration` | yes | Declares an attribute key |
| `ModelAttributes` | `...structure.ModelAttributes` | yes | Groups ModelAttributeDeclarations |
| `StringAttributeValue` | `...structure.StringAttributeValue` | no | String value for a ModelAttributeAssignment |
| `DocumentationStep` | `...structure.DocumentationStep` | no | Non-functional comment step |

Persistent concept references (`c:7ab1a6fa-0a11-4b95-9e48-75f363d6cb00/<id>`) for `FIND_INSTANCES`: `Plan` `1820634577908471803`, `PlanContribution` `2073601368420688889`, `Fork` `3167863533095527371`, `IncludePlan` `3705377275350227759`, `Transform` `1820634577908471810`, `ApplyGenerators` `8296877263936070001`, `Checkpoint` `1820634577908471809`, `ParameterEquals` `3751925928559474178`.
