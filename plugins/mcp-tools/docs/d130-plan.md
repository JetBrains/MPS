# D130 — sibling-project filter hides languages from `search_concepts`: plan

Status 2026-11-16: **P1 (harness) committed** (`957d03b01a58`). **P2 (server) committed**
(`a2b722a040ca`; suite 1570/1570; P3's Kotlin descriptions landed with it). **P3 (skill docs) and the
records** committed after review; live check done (first calls after a restart: `get_concept_details`
miss 0.36 s, `scope:"all"` 0.29 s — no UI freeze, the search stays on `executeShortReadOnEdt`).
Open: the first real study round (P1 item). No YouTrack issue (user decision). The former P3 (provenance) is folded into P2: alone it
had no observable effect, because the current filter admits no foreign candidate to mark. Tick a box
when the item is done *and* verified as stated.

## Problem in one paragraph

`mps_mcp_search_concepts` (both scopes, and the project scope's auto-widen) and the "did you mean"
suggestions consider only languages for which `ProjectMembershipCache.isFromAnotherOpenProject` is
false (`common/ConceptSuggestions.kt:67-73` language list, `:119` per-concept `usable` filter;
`common/AbstractOps.kt:985-1003`; `JetBrainsMPSLanguageMcpToolset.kt:393-395`, `:444`, `:1158`,
`:1185`). With a second project open that owns the languages — the MPS checkout beside a sandbox, or
a language project beside its consumer — every such language vanishes: `[]`, no warning.
`modelReference`-scoped search and explicit refs are not filtered.

The filter exists for D4 (`study/instructions/defects-archive.md:18`), whose contract has two halves:
(a) a plain-name **miss** in project A suggests nothing from project B
(`ProjectResolutionCrossProjectTest` "get concept details suggestions never name a concept from a
sibling project"; `mps-mcp-workflow/references/mcp-tools-index.md:58`), and (b) a plain name that
exists only in B resolves, marked `containingProject` / `editableFromCurrentProject:false`.
This plan replaces half (a): global search and suggestions may include B, but every such candidate is
marked as foreign and A's candidates rank first within the same match-quality tier. Half (b) is
unchanged. D4 was a silent-provenance and relevance defect, not a confidentiality boundary. D4's
second reading and D38 (registry noise in a default search) stay addressed by the narrow default
project scope, which this plan keeps.

## Design principle: the human multi-project model

A person with several projects open in MPS sees:

| Human MPS | MCP equivalent |
|---|---|
| Go to root/concept, project models only | `scope:"project"`: languages A defines or uses |
| Language import dialog (all languages in the shared repository) | `scope:"all"`, auto-widen, suggestions |
| Editor completion (imported languages of the edited model only) | `modelReference` scope (unchanged) |
| Another project's modules: visible, navigable, not editable from A | `containingProject` + `editableFromCurrentProject:false`, plus the existing cross-project write refusal |
| Using another project's language: explicit import (Ctrl+L / quick fix), or pasting a node, which raises the Add-required-imports dialog | explicit `mps_mcp_model_used_language` ADD, or a blueprint insert that reports the import it made (`addedUsedLanguages`) |

Ownership is provenance, never a discovery filter. Every rule below follows from this table; where a
rule would need more than it, simplify the rule.

## Final visibility contract

Let A be the project selected by `projectPath`, B another open project, and L one language identity
(`SLanguage`, compared by id, never by qualified name). "Used by A" is project-wide: at least one
module in A records L in `languageVersions`, obtains L from a used devkit, or a **fully loaded** model
of A currently imports L or a devkit exporting L (see P2 "used set"). A module dependency or model import by itself does not make L
a used language.

"Foreign" is provenance: a result is foreign when its declaration/module is owned by an open project
other than A. Every foreign search hit and concept/language suggestion carries `containingProject`
and `editableFromCurrentProject:false`. Those two fields are the canonical foreign-project marker; do
not introduce a second boolean with overlapping meaning. Library-only elements have no
`containingProject`; absence of the marker never implies editable (existing contract, use
`readOnly`). A module owned by B and also by an `SLibrary` carries B's marker — truthful but
environment-dependent: with the MPS checkout open beside a study project, `baseLanguage` hits are
marked `containingProject: myMPS-fix`; in an installed MPS the same language is library-only and
unmarked. The docs must say the marker means "defined elsewhere, read-only — importing and
instantiating it is still allowed" (P3).

Three states, ignoring `SLibrary` co-ownership (it only affects whether a marker is emitted):

| L's state | Current project scope | Current all/suggestions | Planned project scope | Planned all/suggestions |
|---|---|---|---|---|
| defined by A | visible | visible | visible, origin tier 1 | visible, origin tier 1 |
| used by A, not defined by A (library or B) | visible if library, hidden if B-owned | visible if library, hidden if B-owned | visible, tier 2, marked if B-owned | visible, tier 2, marked if B-owned |
| neither defined nor used by A (library or B) | only after auto-widen, and only if library | visible if library, hidden if B-owned | absent from first pass; visible after auto-widen | visible, tier 3, marked if B-owned |

The project first pass stays narrow. When it has no strict match, the existing auto-widen retries
against the global all scope and warns that the returned matches may come from projects or languages
A does not use. A strict project-scope match prevents that retry.

Entry-point rules:

- `scope:"project"`: only languages A defines or uses. One module using L makes L discoverable
  project-wide; this scope is not relative to the model currently being edited.
- `scope:"all"` and auto-widen: every `Language` module in the shared repository plus every
  `LanguageRegistry` language, deduplicated by `SLanguage` id. That covers libraries and every open
  project's modules, built or not, without enumerating open projects — the same set the human
  import dialog shows. Nothing is removed because another project owns it.
- Concept and language name suggestions use the same global snapshot as all scope.
- `modelReference`: unchanged and unfiltered; searches the languages used by exactly that model,
  including a model in B.
- Explicit concept or language refs/names: unfiltered. A plain name resolves in A first, then may
  resolve in B, and the result is foreign-marked. Today a plain-name `languageRef` to a never-built
  B language does not resolve (`resolveLanguagePreferringProject`, `AbstractOps.kt:3842-3850`, and
  `findProjectLanguageModule` are project-only, `:1352`); P2 extends name resolution to every
  repository Language module, preferring A. An `l:` reference already resolves (`languageForId`,
  `AbstractOps.kt:3822-3825`).
- Same-name languages with different ids are independent. Using one does not expose the other. A
  module with the same id registered in both A and B is treated as A's own (`ownerOf` checks the
  current project first); copied-project handling remains out of scope.

Concept discovery follows the selected language scope; there is no inheritance-based exception.
Superconcept, superinterface and feature target-concept metadata may point into B and are already
foreign-marked (declaration path `JetBrainsMPSLanguageMcpToolset.kt:761`, `:898`, `:906`, `:952`;
runtime path `AbstractOps.kt:3995-4013`) — verify, do not rebuild.

### Result and suggestion ordering

Origin priority (three tiers):

1. languages/concepts defined by A;
2. languages A uses, whoever owns them (library or B);
3. everything else (library or B, not used by A).

Library vs B is not an ordering criterion — the human import dialog does not distinguish them either.
Match quality remains primary so a relevant B result is not buried behind unrelated A results.
Origin tier is a key **inside** the existing comparators and caps, never a post-sort: today the
strict tiers keep the first 50 in scan order (`JetBrainsMPSLanguageMcpToolset.kt:576-578`) and both
fallback heaps replace only on a strictly higher score (`:585`; `ConceptSuggestions.kt:289-293`), so
a later sort could not recover A results the cap already dropped.

- strict search results: collect each strict tier (exact-name, other) uncapped or as a bounded heap
  ordered by (origin tier, qualified name), then truncate to `MAX_STRICT_RESULTS`; exact-name tier
  first;
- fallback search results: heap comparator (score desc, origin tier, qualified name);
- concept suggestions, exact/alias tier (`exactMatches`, `ConceptSuggestions.kt:193-200`): origin tier
  replaces the `isInCurrentProject` key at `:198`; alias, case, implied language, shared segments,
  deprecated and qualified-name keys stay where they are;
- concept suggestions, token tiers (`tokenMatches`): heap comparator (score desc, origin tier), and
  the final order (`:298-300`) gets origin tier after length closeness, before qualified name;
- the existing "last slot goes to the best scoped token match" rule (`:128`) is unchanged;
- **local near-miss slot** (new): when the ref names no language (no `<lang>.structure.` prefix that
  resolves) and no exact/alias hit is from a tier-1 or tier-2 language, also run the token scan over
  the tier-1 and tier-2 languages only. Its best acceptable candidate (token-tier order) is appended
  after the exact hits, or takes the last slot when they fill the limit — the same mechanics as the
  scoped rule at `:128`, which covers the qualified-ref case. Match quality stays primary: B's exact
  hit still ranks first.
- language suggestions: token score descending, then origin tier and qualified name.

Why the local near-miss slot: today `suggest` returns as soon as exact hits exist and runs no token
scan for an unqualified ref (`ConceptSuggestions.kt:122-129`). With B filtered out, a miss on `foo`
in A finds A's `FooBar` through the wide scan; once B's exact `Foo` is admitted, that A candidate would
vanish entirely. MPS's own go-to-by-name shows exact and partial matches side by side, so the rule
keeps A's best near miss visible. The trigger is origin-based (no exact hit from A's languages), not
ownership-based, so it also fires when the exact hits come only from unused library languages. It is
rare: an exact, case-sensitive plain name of a B concept resolves directly (`AbstractOps.kt:3447-3452`,
D4 half (b)) and produces no suggestions, so this path is reached only by a case-only match, a
language-less qualified ref, or a site's `accept` rejecting the exact hit. The extra scan reads only
A's languages, in `namedConcepts`'s runtime-first, loaded-only mode, so it adds no model loading.

### Starting to use a B language

Today, A cannot discover an unused B language through free-form search. It must select B with
`projectPath` or know an explicit language/concept ref. Even after A imports L, the unconditional
sibling filter still hides L from A's free-form search.

Planned flow (the human flow: find it, then import it explicitly):

1. From A, call `search_concepts(..., scope:"all")`. It finds B's concepts, built or not, marked with
   B's project and `editableFromCurrentProject:false`.
2. Inspect the chosen concept or enumerate B's language with `mps_mcp_get_concept_details`.
3. Import that exact language, or a devkit exporting it, into the intended A model with
   `mps_mcp_model_used_language` ADD, passing the `l:` language reference from the hit (plain names
   work once P2 generalizes name resolution; today a plain name fails, `JetBrainsMPSModelMcpToolset.kt:282-291`).
   If B's language is not built, instantiating its concepts in A is refused (`ConceptGate`) until it
   is built; the build runs from B (`projectPath` = B), since MAKE targets are project-only
   (`JetBrainsMPSNodeMcpToolset.kt:746-747`).
4. The language is now in A's project scope and moves from origin tier 3 to tier 2.

Foreign means the definition cannot be mutated from A. It does not prohibit A from importing or
instantiating B's public concepts; that is the intended language-consumer workflow. The import
must be explicit or reported — never a silent side effect of following a suggestion (P2 write audit).

## Evidence already collected (do not redo)

- Transcript scan r3–r51 + `runs-s36`, `runs-s37`: no measured cell was hit; details in the D130 row.
- Live owners probe, MPS 261.25134 from sources, only `myMPS-fix` open: 273 Language modules —
  148 owned by `SLibrary` + project (all real MPS languages; `lang.test*` via the `mps-testing`
  plugin library), 1 library-only, 124 project-only (samples, test fixtures). Output:
  `/tmp/d130scan/owners.txt` (scratch; re-run the console probe if gone).
- Owner bookkeeping: `MPSModuleRepository.getOwners` (`:287`, needs read access), reachable through
  `ProjectRepository.getOwners` (`:158`); a second registration adds an owner link
  (`MPSModuleRepository.java:155-171`, `addLink` at `:170`); `Project` and `SLibrary` both implement
  `MPSModuleOwner`.
- Cost facts (2026-11-16 review): `AbstractModule.getUsedLanguages()` iterates every model and calls
  `importedLanguageIds()`, which in `SModelDescriptorStub:149-151` goes through `getSModel()` and
  therefore loads the model. `ConceptSuggestions.conceptsWithDeclarations` (`:80-92`) resolves
  `sourceNode` for every runtime concept (`:85`; `SNodePointer.resolve` → `SModelBase.getNode` →
  `getModelData()`), so a search already loads the structure model of every built language it
  scans — today for library languages too. The cost is paid once per session (models stay loaded),
  inside `executeShortReadOnEdt` (`JetBrainsMPSLanguageMcpToolset.kt:378`, `:158`): a UI-freeze
  risk on the first `scope:all` call, not a per-call cost. `namedConcepts` (`:150-170`, REJECTION
  mode) reads structure for a built language only when it is already loaded.
- Auto-import sites (2026-11-16 review): blueprint inserts import the concept's language silently
  (`AbstractNodeOps.kt:437-448`: `languageForId` then `model.addLanguage`, no response detail;
  `ConceptGate.require` at `:443` still refuses unbuilt concepts). `MOVE_NODE_TO_PARENT`
  (`UsedLanguages.addMissingFor`, `JetBrainsMPSNodeMcpToolset.kt:2292`, `:2342`) moves between
  models of one project, so it re-imports languages A already used, and already reports them
  (`:2390`). `JavaParseResolver.kt:313`, `:354` import only BaseLanguage-family languages.

## P1 — harness guard and bookkeeping (done, committed `957d03b01a58`)

- [x] `study/scripts/check_open_projects.py`: one `list_open_projects` call, then
      `<modulePath>` count of each other project's `.mps/modules.xml`; fails closed; exit 3.
- [x] `study/scripts/run_worker.sh`: runs it before any run file is written (not for SMOKE, also
      with `SKIP_SKILL_INSTALL=1`); `ALLOW_SIBLING_PROJECTS=1` override; meta gains
      `otherOpenProjects`, `allowSiblingProjects`.
- [x] `study/scripts/tests/test_check_open_projects.py` (14 tests); whole script suite green
      (`cd study/scripts && python3 -m unittest discover -s tests -p 'test_*.py'`: 259 OK, 12 skipped).
- [x] Live check of both server answer shapes (run project open → exit 0; not open → exit 3 naming
      `myMPS-fix`, 702 modules).
- [x] D130 row, runbook, lesson 32, `scenarios.md`, S18/S19/S36/S37 `done_criteria.md` updated.
- [x] User review, then commit (format per `.agents/git.md`; `mcp-tools - study: …`).
- [x] First real round after the commit: confirm `otherOpenProjects` appears in a cell's meta
      (no dedicated run; read it off the next round). Round 52 (2026-11-16): all four cells carry
      `otherOpenProjects: []` and `allowSiblingProjects: false`; the off-metrics S18-opus-2 carries
      `[{myMPS-fix, 702, modules}]` and `true`; SMOKE metas carry `null` as specified.

## P2 — provenance markers, narrow project scope, global all scope (server)

One change, one commit series; markers and scope widening land together so no intermediate state
returns an unmarked foreign result.

### Provenance

- [x] Add one shared helper that marks a language or concept as foreign with `containingProject` and
      `editableFromCurrentProject:false`, built on `ownerOfConcept`/`ownerOfLanguage` (real module
      ownership); origin ranking must not replace ownership metadata.
- [x] Apply it to concept suggestions and language suggestions in `buildUnresolvedDetailsJson`, and
      to `conceptHint` (`AbstractOps.kt:1037-1068`; callers `AbstractOps:1279`,
      `AbstractNodeOps:426`, `:1005`, `JetBrainsMPSTypesMcpToolset:409`, `:623`).
- [x] Verify (do not rebuild) the markers already emitted on search hits (`:917`, `:1080`, `:1106`)
      for summary and full records, runtime-backed and declaration-backed, and on superconcept /
      superinterface / target-concept metadata (`:761`, `:898`, `:906`, `:952`;
      `AbstractOps.kt:3995-4013`).
- [x] Foreign unbuilt-language recovery: `recordMarkers` / `languageBuildDetails`
      (`LanguageReadiness.kt:99-134`) tell the caller to MAKE the language's module, which fails from
      A (MAKE targets are project-only). For a foreign language the advice names B's
      `mpsProjectBaseDirectory` as the `projectPath` to build from.
- [x] Optional, cheap: make `ownerOf(module)` stable when two or more other open projects own one
      module (today `firstOrNull` over `openProjects`, stable within a session): sort by base path.
- [x] No `details.skippedForeignLanguages` / `skippedForeignMatches`: all scope drops nothing, and
      the project-scope auto-widen warning already explains when the global set was consulted.

### Candidate sets

- [x] Build one per-call language snapshot, reused by all scope, project scope, auto-widen, concept
      suggestions and language suggestions: every `Language` module in the repository plus
      `LanguageRegistry.allLanguages`, deduplicated by `SLanguage` id. Per entry record the
      language module (if any), whether A defines it, and whether A uses it. Owner lookup is only
      for markers and runs lazily, under the existing read action.
- [x] Used set: descriptor `languageVersions` and used devkits' exported languages of every module of
      A (as today), plus `importedLanguageIds()` and the exported languages of `importedDevkits()` of
      A's models **that are already fully loaded** (`SModelBase` FULLY_LOADED, `SModelBase.java:328-329`).
      An import added this session lives in a loaded model, so it moves L into project scope
      immediately; unloaded models are never loaded for this. Document that stale
      descriptor stamps can over-approximate the used set (a language removed from every model but
      still stamped) and that this is harmless (tier 2 instead of 3).
- [x] `languagesInProjectScope`: select A-defined or A-used entries from the snapshot. Remove the
      final sibling-project filter (`JetBrainsMPSLanguageMcpToolset.kt:1158`). A used B language is
      visible and stays marked.
- [x] Replace `ConceptSuggestions.languagesInProject()` with the global snapshot for all scope,
      auto-widen and both suggestion kinds, and rename it (it is no longer "in project").
- [x] Remove the per-concept foreign filter from `ConceptSuggestions.suggest` (`usable`,
      `ConceptSuggestions.kt:119`); `accept` alone decides acceptability.
- [x] Remove `isFromAnotherOpenProject` from `ConceptSuggestions.Membership` and every discovery
      path. Rename only the `Membership` methods (the replacement answers origin tier, e.g.
      `originTier(language)`); `ProjectMembershipCache.ownerOf*` keeps its name — it feeds about ten
      marker sites, including the AGENTIC VIEW `!foreign` flag (`AbstractOps.kt:1403-1405`).
- [x] Generalize `ConceptSuggestions.projectLanguageModule` and `findProjectLanguageModule` into a
      read-only language-module lookup over the repository. Prefer A's module when duplicate names
      exist; otherwise select by exact language id. Use the same lookup in
      `resolveLanguagePreferringProject` so a plain-name `languageRef` / `usedLanguage` resolves a
      never-built B language, marked. Keep mutation helpers project-only.
- [x] Declarations: read structure declarations for every Language module in the snapshot (today's
      D112 behavior, extended from A to all). Built languages' structure models are loaded by the
      `sourceNode` resolution anyway (Evidence), so an asymmetric guard would buy nothing. Keep the
      loaded-only guard in `namedConcepts` (REJECTION mode) unchanged.
- [x] First-call cost: measure the first `scope:all` search and the first `get_concept_details` miss
      after a restart with the MPS checkout open (both in `executeShortReadOnEdt`). If either freezes
      the UI noticeably, move the search to `executeBackgroundRead`; record the numbers in the D130 row.
- [x] Implement the ordering contract (three origin tiers inside the comparators and caps, see
      "Result and suggestion ordering") in both `matchConcepts` and `ConceptSuggestions`. Strict
      results move from scan order to (origin tier, qualified name) even with one project open;
      update existing search tests that assert result order, and say so in the commit message.
      Add the local near-miss slot to `ConceptSuggestions.suggest` (exact branch, when
      `implied == null` and no exact hit is tier 1–2).

### Write safety

- [x] Audit write-target enforcement for every `conceptHint` caller and the adoption-flow tools: a
      suggestion never makes a B node/model/module the mutation target.
- [x] Blueprint inserts (`AbstractNodeOps.kt:437-448`) report the languages they import. The import
      itself stays (human analogy: paste raises the Add-required-imports dialog, so the import is
      visible, not silent). Shape: keep `addedUsedLanguages` as today's list of qualified-name strings
      (`JetBrainsMPSNodeMcpToolset.kt:2391`, MOVE) so existing consumers and tests are unaffected, and
      add a sibling `addedUsedLanguageDetails`: one object per language with `qualifiedName`,
      `languageReference`, and the foreign marker when another open project owns it. The import
      happens deep in node creation (`:444-447`), so thread a collecting sink through to the
      `alter_nodes` / `update_node` / insert-root response builders. On a dry run, which skips the
      import, report the would-be imports in the same fields. Add `addedUsedLanguageDetails` to MOVE
      too. Explicit `mps_mcp_model_used_language` ADD of a B language and creating B-language nodes
      in A remain valid consumer operations.

### Contract text in code

- [x] Correct the tool and `scope` `@McpDescription`: project = languages A defines or uses; all =
      every registered language and every language module in the repository, including other open
      projects. All-scope results may be foreign, carry the markers, are read-only definitions that
      can still be imported, and rank after equally relevant A results.
- [x] Rewrite the KDoc that states the old contract (or remove it with the method):
      `ConceptSuggestions.languagesInProject` (renamed), `ProjectMembershipCache.isFromAnotherOpenProject`
      (removed) and `isInCurrentProject` (replaced by `originTier`; keep it only if a non-discovery
      caller remains, e.g. A-first module lookup), the comment at
      `JetBrainsMPSLanguageMcpToolset.kt:383-386`, and `languagesInProjectScope`'s staleness note
      (`:1123-1129`) now that loaded models are consulted.

### Tests (suite two-project harness; no live MPS)

Fixtures: `LanguageProducer` languages have no runtime (`ProjectResolutionCrossProjectTest.kt:554-556`,
`:616-619`), so they cover the unbuilt/declaration cases only. A "foreign runtime" case needs a built
language registered as a module of project B (e.g. a bundled language's module added to B's
fixture). State the fixture in each test. Teardown closes B (in `finally`), so the extra owner link
goes away and later tests in the shared JVM do not see marked `baseLanguage`-family hits.

- [x] Scope split: unused B is absent from the project first pass and present in all; after A imports
      B's exact language id into a loaded model, it is present in project scope with no save. A
      same-named different-id language does not become used accidentally.
- [x] Auto-widen: a project miss finds B in the global pass, carries the widening warning, and marks
      every B result. A project strict hit prevents widening.
- [x] Search ordering: within exact-name matches A precedes used, which precedes other; the same
      holds within other strict matches; fallback score stays primary, origin and qualified name
      break ties.
- [x] Caps: with more than `MAX_STRICT_RESULTS` strict B matches scanned before A's, A's strict match
      is still returned (origin applied before truncation); same for the fallback heaps.
- [x] Suggestion ordering: exact/alias/token tiers stay primary; equal-quality A precedes B; the
      implied-language and deprecated keys still apply. Language suggestions sort by token score,
      origin tier, qualified name.
- [x] Local near-miss slot: A defines `FooBar`, B defines `Foo`; an unqualified miss `foo` (case-only
      match) suggests B's `Foo` first, marked, then A's `FooBar`; with exact B hits filling the
      limit, `FooBar` takes the last slot. Negative cases: an exact hit from A's languages suppresses
      the extra scan; a `<langA>.structure.` ref is served by the scoped rule, not by this one (no
      duplicate candidate).
- [x] Marker coverage: foreign runtime search hit, declaration-backed search hit, concept suggestion,
      language suggestion, rejection `conceptHint`; no marker on A-owned or library-only records.
      Pin the shared helper directly as well.
- [x] Declarations: `scope:"all"` finds a concept in a never-built B language; explicit `languageRefs`
      lists it, by `l:` reference and by plain name; after A imports the language (by plain name via
      `mps_mcp_model_used_language`), project scope finds it. For A, a concept added since the last
      build is included alongside runtime concepts (existing D112 behavior). No B variant: it would
      need editing a bundled language's structure model in the shared test JVM; the code path is the
      same one A's case covers.
- [x] Used-set cost: a project-scope search does not load an unloaded solution model of A. Fixture:
      a model of A that was saved and then `unload()`ed; assert `isLoaded` is false before the call
      (so the test cannot pass vacuously) and still false after.
- [x] Used set via devkit: importing a devkit that exports B's language into a loaded A model puts
      the language in project scope without a save.
- [x] Foreign unbuilt recovery: the build advice for an unbuilt B language names B's project path.
- [x] D4 replacement: a miss may suggest B, but the suggestion is marked; an equally good A
      candidate ranks first; a plain name existing only in B still resolves marked; a shared name
      still resolves A first. Replace in `ProjectResolutionCrossProjectTest`: "get concept details
      suggestions never name a concept from a sibling project", the predicate tests "name-suggestion
      candidates exclude concepts owned by a sibling project" and "search scope predicate separates
      own languages from library and sibling ones" (`:547`, calls `isFromAnotherOpenProject`); keep
      "marks a sibling-project concept reached by plain name". In
      `JetBrainsMPSLanguageMcpToolsetIntegrationTest` `:1479-1505`, the "registry plus own languages"
      bound becomes "registry plus repository Language modules"; fix the comment at `:1517`.
- [x] Write safety: a suggested B concept cannot make a B node/model/module a mutation target; adding
      B's language to an A model and then creating a B-language node in A is accepted; a blueprint
      insert that imports a language lists it in `addedUsedLanguages` and in
      `addedUsedLanguageDetails` (foreign-marked for B), also on a dry run; MOVE's string list is
      unchanged.
- [x] Added in review: a failed blueprint write undoes the language imports it made
      (`ConceptGate.undoImports`), so a refused batch leaves the model's used languages unchanged.
- Not covered: the deprecated suggestion key (no deprecated fixture; the key did not move) and "a
  concept added since the last build of a *built* A language" (needs a built fixture language; the
  D112 tests cover it).

### Validation gates (in this order; see `.agents/quality-gates.md`)

- [x] `get_file_problems` on each changed Kotlin file; `build_project` (whole project if skill
      docs changed — per-file builds leave plugin resources stale).
- [x] Focused run: `execute_run_configuration("McpToolsIntegrationTestSuite",
      envs={"MCP_TESTS": "ProjectResolutionCrossProjectTest,JetBrainsMPSLanguageMcpToolsetIntegrationTest"})`;
      check the new test names appear in the result (stale-bytecode trap). No other JUnit JVM may
      be running machine-wide.
- [x] Full `McpToolsIntegrationTestSuite` once at the end; re-run a single non-reproducing failure
      before blaming the diff.
- [x] **One** live check, after restarting MPS on the new build (`mps_control.sh`, never kill) with
      `myMPS-fix` and one small study project open: from the study project,
      `search_concepts ["GeneratorTest","NodesTestCase"] scope:all` returns hits marked
      `containingProject`; a search for a project-only `jetbrains.mps.samples.*` concept also returns
      a marked hit; an equally matching concept from the study project sorts before either; project
      scope omits the unused sample language but finds it after auto-widen on a miss. Import one B
      language into the study model and verify it then appears in the project first pass. Time the
      first `scope:all` call after the restart (see "First-call cost"). Check that `idea.log` has no
      SEVERE in the window. Use direct MCP calls, not `run_worker.sh`.
- [x] No scenario re-run is needed: guarded cells never have a sibling project, so P2 cannot change
      their measurements. Note this in the round report instead of re-measuring.

## P3 — descriptions, guides and skills

Lands in the same build as P2 (`install_skills` copies plugin resources, so a whole-project build is
needed). Source: documentation audit 2026-11-16 (Sonnet subagent, spot-checked). MUST = states the
old contract or becomes false; SHOULD = guidance the new behavior needs. `KT` =
`plugins/mcp-tools/src/jetbrains/mps/agents/mcp/tools`, `SK` =
`plugins/mcp-tools/resources/jetbrains/mps/agents/mcp/skills` (blueprints).

Every text here repeats one message: a marker means "defined in another open project, read-only
here", **not** "do not use"; importing and instantiating the language is allowed. Say it once per
surface, in the same words.

### Size caps (check before writing; `SkillReferenceLayoutTest`, 12 288 B default)

- `SK/mps-mcp-workflow/references/mcp-tools-index.md`: 18 938 B of an allow-listed 18 944
  (`SkillReferenceLayoutTest.kt:233`) — 6 B headroom. Rewrites there must be length-neutral, or
  raise the allow-list entry with a stated reason.
- `SK/mps-language-analysis/references/concept-details.md`: 11 539 B — about 700 B headroom; replace,
  do not append.
- `SK/mps-language-analysis/references/search-concepts.md` (~4.3 KB headroom) holds the long text
  (ordering, adoption flow); other files get one-line pointers.

### Tool descriptions and user-visible strings (Kotlin)

- [x] MUST `KT/JetBrainsMPSLanguageMcpToolset.kt:288` (`search_concepts` description) and `:295`
      (`scope`): project = languages this project defines or uses (a used language owned by another
      open project included, marked); all = every registered language plus every language module in
      the repository, other open projects' and never-built ones included; foreign hits carry
      `containingProject` + `editableFromCurrentProject:false` and rank after equally good hits from
      this project (defined, used, everything else). Same item as P2 "Contract text in code".
- [x] MUST `KT/JetBrainsMPSLanguageMcpToolset.kt:453-455` (auto-widen warning): "widened to every
      language in the repository, including other open projects'"; entries with `containingProject`
      are read-only there and still importable.
- [x] MUST `KT/JetBrainsMPSModelMcpToolset.kt:239` (`usedLanguage` of `mps_mcp_model_used_language`):
      plain-name resolution of a never-built language looks in this project first, then other open
      projects; such a language can be imported, its concepts instantiated once it is built from its
      own project. SHOULD `:230` (tool description): importing another open project's language is
      allowed; pass the `l:` reference from a `search_concepts scope:"all"` hit.
- [x] SHOULD `KT/JetBrainsMPSLanguageMcpToolset.kt:95` (`get_concept_details`): `details.unresolved`
      suggestions may name other open projects' concepts/languages, marked and ranked after equally
      good local ones; `:100` (`languageRefs`): a plain name also resolves another open project's
      language, this project preferred; the `details.languageBuild` sentence: for a foreign unbuilt
      language the recovery names the owning project's path.
- [x] SHOULD `KT/JetBrainsMPSNodeMcpToolset.kt:288` (`alter_nodes`): name `addedUsedLanguageDetails`
      next to `addedUsedLanguages`; in the MAKE paragraph, targets must belong to the selected
      project, so a foreign language is built with its own `projectPath`. `:1704` (`update_node`)
      and `KT/JetBrainsMPSRootNodeMcpToolset.kt:313`, `:494`/`:510` (insert/update root): the
      automatic language import and its report (also on a dry run). Cover every tool whose response
      goes through the new sink (P2 write safety).
- [x] SHOULD `KT/common/AbstractOps.kt:1037-1068` (`conceptHint` message suffix
      ". Closest concepts: A, B"): append " (project X)" to a foreign candidate's name, so the
      human-readable message carries the provenance the structured `details.suggestions[*]` marker
      already has. Decided in P2: done.
- No change: `search_root_node_by_name` scope, `query_nodes`, project-structure tools,
  `parse_java_and_insert` (BaseLanguage-family imports only), `scope` error text (`:340`, value set
  unchanged), the AGENTIC VIEW `!foreign` flag, existing marker sites.

### Skills (blueprints; re-propagate each changed folder)

- [x] MUST `SK/mps-mcp-workflow/references/mcp-tools-index.md:58` ("Name suggestions for an unresolved
      ref never point into another open project" — the D4 half (a) text) and `:59` (`search_concepts`
      "searches the whole registry") — rewrite both within the 6 B cap (see above).
- [x] MUST `SK/mps-language-analysis/references/search-concepts.md`: `:59-60` scope table ("minus
      those owned by another open MPS project"); `:64` auto-widen ("retried over the whole
      registry"); `:45-46` result-cap text ("registry iteration order" — now origin tier, then
      qualified name, before the cap); `:87-100` schema note that the markers now also appear on
      `scope:"all"`/widened hits and on suggestions.
- [x] MUST `SK/mps-language-analysis/references/concept-details.md:57` ("Candidates owned by another
      open MPS project are never suggested") → may be suggested, marked, ranked after an equally good
      local candidate, and an exact foreign hit never crowds out the project's best near miss; `:54` ("runs project-wide") → runs over every language in the repository.
- [x] MUST `SK/mps-mcp-workflow/SKILL.md:51` (multi-project rules): soften "read targets may come from
      another open project when explicitly named or imported" — discovery now also returns them,
      marked; add the "marker ≠ do not use" sentence.
- [x] MUST `SK/mps-mcp-workflow/references/finding-things.md:13` (default scope and widening) and
      `:19-20` (foreign bullet): marker is provenance, not a filter or a ban; with the MPS checkout
      open even `baseLanguage` hits are marked; plain names also resolve never-built languages of
      other open projects.
- [x] SHOULD adoption flow (find with `scope:"all"` → `get_concept_details` → `model_used_language`
      ADD with the `l:` ref → build from the owner project if unbuilt, `LANGUAGE_NOT_BUILT` until
      then → now in project scope) as a short section in `search-concepts.md`, with one-line pointers
      from `SK/mps-aspect-accessories/references/model-level-imports.md` and `finding-things.md`;
      `SK/mps-language-analysis/SKILL.md:57` pointer mentions origin ranking and importing a marked
      language.
- [x] SHOULD `SK/mps-aspect-accessories/references/model-level-imports.md:30` and
      `SK/mps-aspect-accessories/SKILL.md:23` (automatic imports): the response now lists them in
      `addedUsedLanguages` / `addedUsedLanguageDetails`, foreign ones marked; undo with
      `model_used_language` DELETE. `SK/mps-node-editing/SKILL.md:42` (MOVE paragraph) and its insert
      guidance: same two fields.
- [x] SHOULD `SK/mps-language-analysis/references/language-readiness.md` (`details.languageBuild`) and
      `SK/mps-mcp-workflow/references/reference-formats/response-envelope.md:22-40`
      (`LANGUAGE_NOT_BUILT`): a foreign language's recovery names the owning project; MAKE it there.
- [x] Optional one-liners: `SK/mps-language-inheritance/SKILL.md:48` (base language in another open
      project via `scope:"all"`), `SK/mps-language-modularity/SKILL.md` (cross-project language
      dependency: find, import/extend explicitly, read-only), `SK/mps-dsl-memory/SKILL.md:22` (record a
      language used from another open project; marker is not a blocker),
      `SK/mps-mcp-workflow/references/analysis-tools/print-node-agentic-view.md:37` (`!foreign` is
      provenance).
- No change: `mps-project-management`, the other `mps-aspect-accessories` references,
  `concept-details.md` result tables, and all other skills (grep hits use "sibling"/"widen" in
  other senses).

### Templates, repo guides, test scenarios

- No change: `templates/AGENTS_template.md` (project resolution only, no discovery text);
  `CLAUDE.md`, `AGENTS.md` (`:45` Project Resolution) and `.agents/*.md`; `test_scenarios/**`
  (the only `search_concepts` step, `06_structure_and_concepts.md:326-338`, uses `modelReference`).
- Dropped: `test_scenarios/COVERAGE_MATRIX.md:48` lists only `searchTexts`, `modelReference` for
  `search_concepts`; adding `scope` and `detail` would overclaim, since step 06.14 uses neither.

### Gates for P3

- [x] Whole-project `build_project`; `SkillCatalogReplicationTest`, `SkillReferenceLayoutTest`,
      `validate_skill_catalog.py`; diff the installed catalog against the blueprints.
- [x] Re-propagate each changed skill folder over `.claude/skills` and `.agents/skills`.
- [x] Grep the blueprints and `KT` once more for "never suggested", "never point into another",
      "whole registry", "whole language registry", "minus those owned" — no hits expected.

## Records (with P2/P3)

- [x] D130 row in `defects.md`: rewrite the **S** remedy text (it still proposes "not foreign when an
      SLibrary also owns it or the project uses it" plus a dropped-count warning; both are superseded
      by this design), then → fixed with the live measurement; move it to `defects-archive.md` after
      one clean round.
- [x] D4 row in `defects-archive.md`: add a dated note that half (a) ("a miss yields no suggestion
      from B") is replaced by "marked and ranked after equally good A candidates" (D130), naming the
      replaced tests (the row names both predicate tests). Archive rows are history: append, do not
      rewrite.

## Open decisions for the user

- [x] Product issue in YouTrack for P2/P3, or keep it as study defect D130 only? — D130 only, no YouTrack issue (user, 2026-11-16).

## Out of scope

- Fixture copies sharing module ids: the module is the current project's own in both windows, so
  the selected-project preference treats it as A's own; reconciling divergent copies remains out of
  scope.
- Extending `editableFromCurrentProject:false` to library-only elements (one read-only signal for
  everything A does not own). Would mark every library hit; the existing `readOnly` field covers it.
