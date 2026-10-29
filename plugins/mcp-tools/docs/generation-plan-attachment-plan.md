# Generation plans: authoring, maintenance and attachment for agents — decisions

Status: draft for review (2026-10-29). Scope: let an agent create, edit and attach MPS generation
plans through MPS MCP, end to end, and measure it in the study (new scenario S19).

## What exists today

- Authoring a `Plan` root works with the generic node tools (`create_model name@genplan`,
  `insert_root_node_from_json`, `update_node`, `alter_nodes`). The used languages are added by the
  insert. Verified in `proj/genplan-walk`: a three-step plan (`Transform recipes`, `Checkpoint`,
  `Transform baseLanguage`), clean check, `mps_mcp_generation PLAN` = `EXPLICIT`/`FACET`, and a real
  make generates the same Java as the default plan and persists the checkpoint as
  `source_gen/<model path>/<plan>-<checkpoint>.mps` (lower-cased).
- Reading: `mps_mcp_generation PLAN` (steps, `planSource`, `explicitPlanOrigin`, diagnostics with
  the plan model reference, coverage); `get_project_structure` shows a DevKit's `associatedGenPlan`,
  `exportedLanguages`, `exportedSolutions`; `get_module_facets` shows the Custom generation facet's
  memento.
- Attaching through the **Custom generation facet** works with the generic
  `mps_mcp_update_module_facet(moduleName, facetType="generator", settingsJson={"planModel":"<model ref>"})`.
  Nothing tells an agent that facet type id or memento key; the skill says "Custom generation
  facet" and "point it to the plan root node", which is wrong (the value is a model reference).
- Attaching through a **DevKit** (the route the MPS docs call primary) is impossible: no tool
  writes `DevkitDescriptor.associatedGenPlan`, `exportedLanguages` or `exportedSolutions`.

## Defect found on the way (bug)

`mps_mcp_module_dependency ADD` with a DevKit source and a Language or Solution target adds a
`Dependency` to `DevkitDescriptor.dependencies` and answers `{"added":true}`. A DevKit descriptor
never persists `<dependencies>` (`DevkitDescriptorPersistence` writes only exported languages,
exported solutions, extended devkits and the generation plan), so the edge exists in memory only,
is shown by `get_project_structure` as a `dependencies` entry until the next reload, and is never
written: verified on `mcp.study.kitchen.devkit` (the `.devkit` file stayed
`<dev-kit name=… uuid=…/>`). An agent following the MPS docs ("add dependencies on the languages
and solutions the DevKit wraps") is told it succeeded.

## Core facts the skill must state (verified in source, `core/generator`)

1. A plan is attached as a **model**, never as a node: `CustomGenerationModuleFacet.planModel` and
   `DevkitDescriptor.associatedGenPlan` are `SModelReference`s. `GenPlanTranslator.fromGenPlanModel`
   takes the **first** `Plan` root of that model; other `Plan` roots there are only fork / include
   targets. A model with a `Plan` and a `PlanContribution` that points at another plan throws
   (`IllegalStateException`, "not supported at the moment"). → one main plan per `@genplan` model.
2. Lookup order (`GenPlanExtractor`): the owning module's Custom generation facet first, then the
   devkits the model imports. With several plan devkits, contributed plans fork off the one main
   plan; two independent main plans are an error in model checking (`ModelValidator`).
3. The facet type id is `generator` (presentation "Custom Generation"), memento key `planModel`;
   `FacetsFacade` declares it applicable to Solutions only (not Languages, DevKits, Generators).
4. A DevKit's plan picker offers models of the solutions the DevKit exports. DevKit validation
   (`ValidationUtil.validateDevkit`) errors on an unresolvable plan model or one without a plan, and
   warns for every language or generator the plan names that the DevKit does not export.
5. `PlanContribution` is not "picked up automatically for any model": it only takes effect through
   an attached model (in practice a second devkit next to one carrying a main plan). Through the
   facet alone it yields a plan whose main branch is empty.
6. `ConceptListSelector` is never evaluated by the plan translator (`feedForkCondition` handles only
   `ParameterEquals`); a fork filtered by it runs unconditionally. `Fork.gentarget` (editor "as")
   is the other trigger: the fork applies when the module has a generation target facet of that id.
7. An explicit plan runs only what it names: a used language missing from every step is
   `NOT_IN_PLAN` and stays untransformed; generators the default plan would engage implicitly (e.g.
   `jetbrains.mps.lang.core`) do not run. One `Transform` of `baseLanguage` puts all its mapping
   configurations in one step (the default plan splits them by priority rules); it still generated
   correctly for plain classes.

## Decisions

### D1 — new `mps_mcp_update_module` operations `SET_GENERATION_PLAN` / `CLEAR_GENERATION_PLAN`

One operation that attaches a plan model to a module the way MPS itself stores it, so the agent
does not need to know the two storage mechanisms:

- `SET_GENERATION_PLAN`, new parameter `planModel` (model reference or name, required):
  - **DevKit** → `DevkitDescriptor.setAssociatedPlan(ref)`, save. Every model that uses the DevKit
    gets the plan.
  - **Solution** → the Custom generation facet (`generator`, `planModel`), created or replaced.
    Every model of the solution gets the plan, ahead of any DevKit plan.
  - **Language / Generator** → `INVALID_REQUEST` naming the two supported kinds (the facet is not
    applicable; MPS has no plan slot for them).
  - Rejected before writing: a plan model that does not resolve; a model with neither a `Plan`
    nor a `PlanContribution` root; the contribution/plan mismatch of fact 1.
  - Result: the module envelope plus `generationPlan` `{model, reference, plan (first Plan root's
    name, or contribution), attachedVia: DEVKIT|FACET, previousModel?}` and `warnings`: more than
    one `Plan` root (names which one is used), and for a DevKit every `ValidationUtil` problem (the
    exact MPS messages: plan solution / languages not exported). The description tells the agent to
    verify on a governed model with `mps_mcp_generation PLAN`.
- `CLEAR_GENERATION_PLAN` removes the DevKit plan or the facet; `changed:false` when none was set.
- Idempotent; RENAME semantics untouched. Why not a new tool: it is a module property, the
  module tool already carries per-kind operations (SYNC_VERSION is Language-only), and one more tool
  costs every session tokens. Why not only document `update_module_facet`: the DevKit route has no
  facet, and the facet route needs two magic strings and does no validation.

### D2 — `mps_mcp_module_dependency` routes a DevKit source to what a DevKit stores

DevKit source: Language target → `exportedLanguages`; Solution target → `exportedSolutions`;
DevKit target → `extendedDevkits` (scope `Default` or `Extends`; today only `Extends` reaches it);
Generator target → `INVALID_REQUEST`. A scope other than `Default`/`Extends` is rejected for a DevKit
source (it has no meaning and would be dropped). The answer adds `devkitCollection`. DELETE also
probes the two export collections. This fixes the silent loss above and is the route an agent
reaches for first (it already did in the walk). No new operation.

### D3 — skill `mps-aspect-generation-plan`: rewrite around the lifecycle

Keep it a router with references ≤ 12 KB each (`SkillReferenceLayoutTest`). Changes:
- SKILL.md: the plan lifecycle (author → attach → verify → maintain → detach), the facts above as
  Critical Directives (attached as a model, first `Plan` root, one main plan per model, facet beats
  devkit, ConceptListSelector inert), corrected "Custom generation facet" wording.
- New `references/attaching-plans.md`: DevKit route (create devkit, export languages + plan
  solution via `module_dependency`, `SET_GENERATION_PLAN`, `model_used_language kind=devkit`),
  Solution route (`SET_GENERATION_PLAN` on the solution), precedence, detaching, validation
  (`check_root_node_problems` on the devkit and the model), the `update_module_facet` equivalent.
- New `references/maintaining-plans.md`: insert / reorder / remove steps (`update_node ADD CHILD
  position`, `alter_nodes MOVE_CHILD`, `SET CHILD` null), rename a checkpoint or plan, change a
  `LanguageEntry.kind`, extract steps into a reusable plan (`IncludePlan`, cross-model `MOVE_NODE_TO_PARENT`
  or copy), retarget forks; impact check before deleting or renaming (incoming `Fork` / `IncludePlan`
  / `PlanContribution` / `GeneratorTest.transformationPlan` references by `FIND_USAGES`; model-level
  attachments by `get_project_structure` / `PLAN`, since those are not node references); the
  "plan is computed now" rule for re-verification; re-make after a plan change.
- Fix `plan-setup.md` (model reference, solution-only facet), `composition-and-fork.md`
  (PlanContribution activation, `gentarget`, first-root rule for branch plans), `fork-selectors.md`
  (ConceptListSelector inert, the five predefined parameters with node ids and the model to import),
  `checkpoints.md` (on-disk location), `verification-and-discovery.md` (find attachments).
- Blueprints re-verified live; `ParameterEquals` fork blueprint added.
- Cross-skill touch points: `mps-aspect-accessories` (DevKit exports now writable), tool index in
  `mps-mcp-workflow`. Propagate to `.agents/skills` and `.claude/skills`.

### D4 — study scenario S19 (new, not an S18 extension)

S18 measures generator tests; a plan there is a one-step side detail. S19 forces the whole plan
lifecycle on the `recipes-gen` fixture (no new fixture): two plans in separate `@genplan` models,
a checkpoint, an explicit generator-module step, a conditional fork into a second plan of the same
model, DevKit attachment (exports + plan) to the samples model, Solution attachment to a new
solution, then maintenance (checkpoint rename, extracting a shared `JavaPlan` included by both),
and makes. Done criteria read `PLAN` on both governed models (`EXPLICIT` with the right origin, the
step sequence) and the persisted DevKit/facet state; process signals via new `GP_*` columns in
`families.py`. The plan for S19 is reviewed by a fable subagent before it is written.

## Validation

- Integration tests in `JetBrainsMPSModuleMcpToolsetIntegrationTest` for D1 (DevKit and Solution
  attach, replace, clear, Language rejection, no-plan model rejection, warnings) and D2 (exports
  persisted after descriptor reload, Generator rejection, DELETE).
- `SkillCatalogReplicationTest`, `SkillReferenceLayoutTest`, `validate_skill_catalog.py`.
- Live: rebuild the plugin, restart MPS, re-run the subagent experiment on a fresh fixture copy.

## Baseline experiment (2026-10-29, opus subagent, old catalog, `proj/genplan-base1`)

The draft S19 task passed in 96 tool calls / ~10 min, but only through workarounds:
DevKit exports and plan written by reflective console Java (first guess `setAssociatedGenPlan`
failed; the setter is `setAssociatedPlan`); `module_dependency ADD` devkit→language answered
`added:true` twice (also with `reexport:true`) and persisted nothing; the facet key guessed as
`plan`, `update_module_facet` answered `updated:true`, the live facet dropped it (only
`discrepancies:["generator"]` hinted), five keys tried at once to find `planModel`; the predefined
fork parameters found by dumping `jetbrains.mps.generator.extensions.common`; one model per plan
"to be safe" because the skill does not say which root is used; PLAN >20 KB for a tiny model, read
through a hand-written Python summarizer.

## Review outcome (opus review, 2026-10-29) — revised decisions

Corrections to the core facts, verified in source by the observer:
- **Fact 6 was wrong.** `ConceptListSelector` crashes plan construction: `feedForkCondition`
  pushes nothing for it, `ConditionBuilder.complete()` then pops an empty deque. DevKit validation
  (`DependencyCollectorPlanBuilder`) does not notice. → never use it; SET rejects a plan model with
  one; PLAN catches plan-construction exceptions.
- Fork parameters that actually get values (`ModuleFacetPlanParameterContributor`): `module-facet`
  (one value per facet type of the model's module) and `run-mode` (`headless`, `teamcity`, the
  model's stereotype, and — through a copy-paste bug — the test-mode values `on`/`true`/`regular`/
  `in-process`). `test-mode` and `input-model-stereotype` never match. `Fork.gentarget` applies
  only when the fork has no filter.
- Several devkit plans: the validator errors on two main plans (and on contributions only), but
  generation composes extra main plans as unconditional forks and crashes on contributions only;
  every contribution forks from the untransformed input. Only directly imported devkits count (an
  extended devkit's plan is not inherited). A facet plan model that does not resolve or is empty
  silently falls back.
- Fact 1 nuances: only the first `PlanContribution` root counts; a contribution to the model's own
  plan makes it a fork with an empty main branch; a legacy `forkAs` child does the same; "first"
  is root order.
- Plan identity is the plan's *name*, checkpoint identity plan name + checkpoint name: renaming
  renames the persisted checkpoint; same-named plans collide. A plan edit does not make models
  dirty: re-make with `rebuild=true`.
- The "plan solution not exported" warning is the IDE picker's rule, not `ValidationUtil`'s; the
  tool emits it itself. `ValidationUtil` checks direct exports only.

Revised decisions:
- **D1** as proposed, plus: validate before mutating; Solution route mutates an existing
  `generator` facet in place (`setPlanModelReference` + `updateFacetDescriptor`) and goes through
  `setModuleDescriptor` only to add/remove it, writing the other live facets back first as
  `ModulePropertiesConfigurable` does; DevKit route `setAssociatedPlan` + `setModuleDescriptor`.
  Reject: unresolved model, no `Plan`/`PlanContribution` root, plan/contribution mismatch,
  `ConceptListSelector`, `newName` with SET/CLEAR, `planModel` with any other operation.
  `changed:false` when nothing changes; `previousModel` on replace. Warnings (own wording): DevKit —
  plan model's module not among the DevKit's exported solutions, `ValidationUtil` warnings,
  contribution-only plan (main branch empty unless another devkit supplies a main plan);
  Solution — plan module neither the solution nor a dependency, plan model inside the solution and
  generatable (the facet then governs the plan model itself; set "Do not generate"), models of
  the solution importing devkits with plans (shadowed), contribution-only plan; informational —
  several `Plan` roots, naming the one used and any not referenced by a `Fork`/`IncludePlan`.
- **D2** as proposed, plus: `Default` and `Extends` both accepted for all three target kinds;
  `reexport=true` rejected; DELETE probes exports and extended devkits, removes ghost
  `dependencies` entries, falls back to name matching in the export sets, warns when it un-exports
  the plan's solution or a language the plan needs.
- **D5 (new)** `update_module_facet`: pre-flight the settings on a scratch facet instance
  (`load` then `save`) before touching the descriptor; reject a settings object the facet cannot
  load; warn with `ignoredSettings`/`keptSettings` for supplied keys or child types the facet does
  not keep (no full memento comparison — the Java facet normalizes); reject DevKit targets (a
  DevKit persists no facets); warn when the facet is not applicable to the module kind; for the
  `generator` facet point at `SET_GENERATION_PLAN`.
- **D6 (new)** `mps_mcp_generation PLAN`: `explicitPlanSources` — every attached plan in lookup
  order `{via FACET|DEVKIT, by (module or devkit), planModel, planModelReference, planName,
  contribution, applied}` (the facet path otherwise names no plan); plan-construction exceptions
  become `planComputed:false` + `planError`; new `detail:"steps"` drops `engagedGeneratorTrace`,
  `generators`, per-transformation `mappingConfigurations` and references, and conflict lists
  (counts kept). The default shape is unchanged (S15 reads it).
- **D3** adds the corrected facts, the parameter table with runtime truth, and the identity/rebuild
  rules. **D4**: fork in S19 uses `ParameterEquals module-facet` (false on the pantry solution),
  makes use `rebuild=true`, criteria never read `.devkit`/`.msd`/checkpoint contents, isolation as
  for S18; consider staged criteria.
- Out of scope, filed separately: `get_project_structure nodeDepth` ignored with `includeNodes`
  (seen once in the baseline).
