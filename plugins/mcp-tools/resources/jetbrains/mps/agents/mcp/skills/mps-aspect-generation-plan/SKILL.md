---
name: mps-aspect-generation-plan
description: Use when defining or modifying an MPS generation plan — explicit ordering of generators, checkpoints for cross-model reference resolution, forks for parallel branches, IncludePlan composition, conditional PlanContribution activation, ParameterEquals/ConceptListSelector fork selectors, and InitModelAttributes for targetFacet routing. Apply when working with @genplan models, the jetbrains.mps.lang.generator.plan language, attaching plans via DevKits or the Custom generation facet, or debugging cross-model mapping label resolution.
type: reference
---

# MPS Generation Plans

## Loading companion skills

Companion names in this skill are lazy dependencies: load only those relevant to the current task. If this skill came from an MCP server, use the host's skill loader to resolve the companion's unique discovered entry URI on the same host-assigned originating server. If the host has no server-backed skill loader, stop and report that limitation; do not silently fall back to a filesystem copy. If this skill came from a filesystem catalog, load the named sibling from that same catalog at `<skills-root>/<skill-name>/SKILL.md`, even if remote skill loaders are also available. Do not invent a tool name or server endpoint.

A **generation plan** (`Plan`) is an ordered script that controls which generators run, in what sequence, and with what synchronization points. Without a plan, MPS determines order from mutual generator priorities and dependencies. A plan lets language designers specify that ordering once, in a single place, without requiring all involved languages to know about each other.

**Language:** `jetbrains.mps.lang.generator.plan` (id `7ab1a6fa-0a11-4b95-9e48-75f363d6cb00`, version 3)
**Also requires:** `jetbrains.mps.lang.smodel` (for `LanguageId` / `LanguageIdentity` nodes)

## When to use a generation plan

- You need a guaranteed ordering of generators across languages that must not depend on each other.
- You are doing **cross-model generation** and need mapping labels from one model to be available when generating another (requires checkpoints).
- You want to **fork** the generation of certain models into a separate branch (e.g., generate both `.java` files and XML descriptors from the same input).
- You want a **conditional contribution** added to a base plan without modifying it (`PlanContribution`).

## Critical Directives

- **Genplan models use the `genplan` stereotype.** File name pattern: `<name>@genplan.mps`. Pass `modelName: "<name>@genplan"` to `mps_mcp_create_model`. See [aspect-model-stereotypes.md](references/aspect-model-stereotypes.md) for all model identifiers. Set `doNotGenerate=true` (MPS adds this automatically).
- **Only one DevKit per model may carry a genplan.** Assigning multiple genplan-bearing DevKits to the same model is unsupported.
- **`Plan.steps` is `1..n`.** A plan with no steps is invalid.
- **`LanguageEntry.language` (`LanguageId`) and `GeneratorModulePointer.module` (`ModulePointer`) are each cardinality 1** — missing them is a validation error.
- **Checkpoints persist transient state.** Cross-phase reference resolution works only when phases share a plan AND a `Checkpoint` sits between them.
- **Do not hand-edit serialized `.mps` genplan files.** Use MPS MCP node tools.

## Common-Path Workflow

1. Create a solution; add a model with stereotype `genplan` (file like `MyPlan@genplan.mps`).
2. Add used languages `jetbrains.mps.lang.generator.plan` and `jetbrains.mps.lang.smodel`.
3. Create a `Plan` root node with a descriptive `name`.
4. Add `Transform` steps in order (one per phase); group parallel-safe languages in one `Transform` with multiple `LanguageEntry` children.
5. Insert `Checkpoint` steps wherever downstream generators must resolve cross-model references.
6. Add `Fork` steps for any output variant requiring its own branch (e.g. XML alongside Java); or add a separate `PlanContribution` root for conditional activation.
7. Attach the plan to models via a DevKit (production) or the Custom generation facet (prototyping).
8. Verify with MPS UI **Show generation plan** and `mps_mcp_check_root_node_problems`.

## Related Skills

- `mps-aspect-generator` — for the generator rules and templates that the plan orchestrates.
- `mps-aspect-textgen` — for the text serialization that consumes generated models.
- `mps-aspect-accessories` — for DevKit setup, used languages, and runtime solutions that ship with a plan.
- `mps-node-editing` — generic JSON-blueprint node creation workflow.

## Reference Index

- Plan setup and DevKit attachment — open when creating a new genplan model, wiring it into a DevKit, or switching between DevKit and Custom generation facet attachment. See [references/plan-setup.md](references/plan-setup.md).
- Step concept catalog — open when you need exact concept names, properties, cardinalities, and the meanings of `Transform`, `ApplyGenerators`, `Checkpoint`, `IncludePlan`, `Fork`, `CheckpointDeclaration`, `CheckpointSynchronization`, `DocumentationStep`. See [references/step-catalog.md](references/step-catalog.md).
- `Transform` and `ApplyGenerators` — open when wiring languages by identity (`LanguageEntry.kind` = Transform / TargetAt / Extend) or naming specific generator modules. Includes the verified "the plan" and "WithCompiledGenerator" JSON examples. See [references/transform-and-applygenerators.md](references/transform-and-applygenerators.md).
- Checkpoints and cross-model resolution — open when phases need to share mapping labels, when a downstream plan must read another plan's checkpoint, or when picking among `InPlaceCheckpointSpec`, `DeclaredCheckpointSpec`, `InPlaceCheckpointRefSpec`. See [references/checkpoints.md](references/checkpoints.md).
- `IncludePlan`, `Fork`, and `PlanContribution` — open when composing plans from smaller pieces, splitting branches, or activating a conditional contribution without modifying the base plan. Includes "GenPlanWithFork", "LangConstraintsPlan", and "DocumentationPlan" JSON examples. See [references/composition-and-fork.md](references/composition-and-fork.md).
- Fork selectors and parameters — open when conditionally activating forks via `ParameterEquals` or `ConceptListSelector`, or defining a `ParameterDeclaration`. See [references/fork-selectors.md](references/fork-selectors.md).
- Model attributes (`InitModelAttributes`, `targetFacet`) — open when routing the output of a branch to a specific facet such as documentation generation. Includes the verified `ModelAttributeAssignment` blueprint. See [references/model-attributes.md](references/model-attributes.md).
- Concept quick reference — open when assembling JSON that requires `conceptReference` strings or qualified concept names. See [references/concept-quick-reference.md](references/concept-quick-reference.md).
- Verification and discovery — open to find existing plans (`FIND_INSTANCES`, search by name) or to validate a plan using MPS UI and MCP tools. See [references/verification-and-discovery.md](references/verification-and-discovery.md).
- Authoring checklist — open at the end of an authoring session for a final scan before merging. See [references/authoring-checklist.md](references/authoring-checklist.md).
