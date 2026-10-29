# Generation Plan Step Concepts

All steps extend the abstract `jetbrains.mps.lang.generator.plan.structure.Step` and live as `Plan.steps` children.

| Concept | Alias | Purpose |
|---|---|---|
| `Transform` | transform | Run generators for a set of languages (`entries`: `LanguageEntry`; the legacy `languages` children apply generators even when the language is absent from the model) |
| `ApplyGenerators` | apply generators | Run specific generator modules explicitly |
| `Checkpoint` | persist/synchronize checkpoint | Persist the transient model state for cross-model reference resolution |
| `CheckpointDeclaration` | declare a checkpoint | Declare a shared checkpoint label (no persistence, for others to reference) |
| `CheckpointSynchronization` | synchronize with checkpoint | Read-only access to a previously persisted checkpoint |
| `IncludePlan` | include plan | Inline all steps of another `Plan` at this point |
| `Fork` | fork with | Split off a branch: another `Plan` runs on a copy of the model (`plan` reference, optional `filter`, legacy `gentarget`) |
| `DocumentationStep` | document the plan | Non-functional: human-readable comment in the plan |

`Plan` also has a deprecated `forkAs` child (`ForkAs`, replaced by the `PlanContribution` root); a plan with it behaves as a contribution. Do not add one.
