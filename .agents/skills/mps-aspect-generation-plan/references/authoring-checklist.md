# Generation Plan Authoring Checklist

Open at the end of an authoring session for a final scan before merging.

1. Identify all languages that participate in the generation and their required order.
2. Create a solution with a `@genplan` model; add used languages `jetbrains.mps.lang.generator.plan` and `jetbrains.mps.lang.smodel`.
3. Create a `Plan` root node with a descriptive name.
4. Add `Transform` steps in order, one per "phase". Group languages that can run in parallel in the same `Transform`. Multiple `LanguageEntry` children within one `Transform` may run together.
5. Insert `Checkpoint` steps wherever downstream generators need to resolve cross-model references.
6. Add `Fork` steps for any output variant that needs its own generation branch (e.g., XML alongside Java).
7. Add a `PlanContribution` root in the same model (or a separate model) if the fork should be conditional and not require modifying the main plan.
8. Associate the plan with models via a DevKit (production) or the Custom generation facet (prototyping).
9. Verify with `mps_mcp_generation` `PLAN`: `planSource` is `EXPLICIT` and no `usedLanguages` entry is `NOT_IN_PLAN`.
10. Run `mps_mcp_check_root_node_problems` to validate the plan node has no errors.
