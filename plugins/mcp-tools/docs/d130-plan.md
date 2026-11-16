# D130 — sibling-project filter hides languages from `search_concepts`: plan

Status 2026-11-15: **P1 (harness) implemented, uncommitted.** P3 (provenance) and P2′ (server fix)
not started. Tick a box when the item is done *and* verified as stated.

## Problem in one paragraph

`mps_mcp_search_concepts` (both scopes, and the project scope's auto-widen) and the "did you mean"
suggestions consider only languages for which `ProjectMembershipCache.isFromAnotherOpenProject` is
false (`common/ConceptSuggestions.kt:67`, `:117-119`; `common/AbstractOps.kt:985-1003`;
`JetBrainsMPSLanguageMcpToolset.kt:393-395`, `:444`, `:1158`, `:1185`). With a second project open
that owns the languages — the MPS checkout beside a sandbox, or a language project beside its
consumer — every such language vanishes: `[]`, no warning. `modelReference`-scoped search and
explicit refs are not filtered.

The filter exists for D4 (`study/instructions/defects-archive.md:18`), whose contract has two halves:
(a) a plain-name **miss** in project A suggests nothing from project B
(`ProjectResolutionCrossProjectTest` "get concept details suggestions never name a concept from a
sibling project"; `mps-mcp-workflow/references/mcp-tools-index.md:58`), and (b) a plain name that
exists only in B resolves, marked `containingProject` / `editableFromCurrentProject:false`.
This plan replaces half (a): global search and suggestions may include B, but every such candidate is
marked as foreign and A's candidates rank first within the same match-quality tier. Half (b) is
unchanged. D4 was a silent-provenance and relevance defect, not a confidentiality boundary.

## Final visibility contract

Let A be the project selected by `projectPath`, B another open project, and L one language identity
(`SLanguage`, compared by id, never by qualified name). "Used by A" is project-wide: at least one
module in A records L in `languageVersions`, obtains L from a used devkit, or currently imports L in
one of its models. A module dependency or model import by itself does not make L a used language.

"Foreign" is provenance, not a discovery filter: a result is foreign when its declaration/module is
owned by an open project other than A. Every foreign search hit and concept/language suggestion
carries `containingProject` and `editableFromCurrentProject:false`. Those two fields are the
canonical foreign-project marker; do not introduce a second boolean with overlapping meaning.
Library-only elements have no `containingProject`. A module owned by B and also by an `SLibrary`
still carries B's marker when its declaration resolves to B.

| L's state | Current project scope | Current all/suggestions | Planned project scope | Planned all/suggestions |
|---|---|---|---|---|
| defined by A | visible | visible | visible, first | visible, first |
| library-only, used by A | visible | visible | visible after A-owned | visible after A-owned |
| library-only, unused | only after project auto-widen | visible | only after global auto-widen | visible |
| defined only by B, unused | hidden | hidden | hidden in first pass; visible after global auto-widen | visible, foreign-marked, last origin tier |
| defined only by B, used by A | hidden | hidden | visible, foreign-marked, after A-owned | visible, foreign-marked, used tier |
| defined by B and also `SLibrary`, unused | hidden | hidden | only after global auto-widen | visible, foreign-marked, library tier |
| defined by B and also `SLibrary`, used by A | hidden | hidden | visible, foreign-marked, after A-owned | visible, foreign-marked, used tier |

The project first pass stays narrow. When it has no strict match, the existing auto-widen retries
against the genuinely global all scope and warns that the returned matches may come from projects or
languages A does not use. A strict project-scope match prevents that retry.

Entry-point rules:

- `scope:"project"`: only languages A defines or uses. One module using L makes L discoverable
  project-wide; this scope is not relative to the model currently being edited. An unused B
  language is absent from the first pass even though all scope can see it.
- `scope:"all"` and auto-widen: every registered language plus every language module owned by every
  open project. Never-built languages and concepts added since the last build come from their
  structure declarations. Nothing is removed merely because another project owns it.
- Concept and language name suggestions use the same global candidate snapshot as all scope.
- `modelReference`: unchanged and unfiltered; it searches the languages used by exactly that model,
  including a model in B.
- Explicit concept or language refs/names: unchanged and unfiltered. A plain name resolves in A
  first, then may resolve in B, and the result is foreign-marked.
- Same-name languages with different ids are independent. Using one does not expose the other. A
  module with the same id registered in both A and B is treated as A's own; copied-project handling
  remains out of scope.

Concept discovery follows the selected language scope; there is no separate inheritance-based
exception. Superconcepts and feature target concepts may point into B when returned as metadata.
Those references are foreign-marked.

### Result and suggestion ordering

Origin priority is:

1. languages/concepts defined by A;
2. languages A uses, regardless of whether they are library-owned or B-owned;
3. unused library-only or library-co-owned languages;
4. unused languages owned only by other open projects.

Match quality remains primary so a relevant B result is not buried behind unrelated A results:

- strict search results: exact-name matches first, ordered by origin; then other strict matches,
  ordered by origin and stable qualified name;
- fallback search results: match score descending, then origin, then stable qualified name;
- concept suggestions: existing match tier (exact name, exact alias, scoped token match, fallback)
  first, then origin and stable qualified name; if any acceptable A candidate exists, retain at
  least one slot for it even when foreign exact matches fill the limit;
- language suggestions: token score descending, then origin and qualified name.

### Starting to use a B language

Today, A cannot discover an unused B language through free-form search. It must select B with
`projectPath` or know an explicit language/concept ref. Even after A imports L, the unconditional
sibling filter still hides L from A's free-form search.

Planned flow:

1. From A, call `search_concepts(..., scope:"all")`. It can discover built or unbuilt concepts in B,
   marked with B's project and `editableFromCurrentProject:false`.
2. Inspect the chosen concept or enumerate B's language explicitly with
   `mps_mcp_get_concept_details`.
3. Add that exact language id, or a devkit exporting it, to the intended model in A.
4. The language now belongs to A's narrow project scope and moves from origin tier 4/3 to tier 2.

Foreign means the definition cannot be mutated from A. It does not prohibit A from explicitly
importing or instantiating B's public concepts; that is the intended language-consumer workflow.

## Evidence already collected (do not redo)

- Transcript scan r3–r51 + `runs-s36`, `runs-s37`: no measured cell was hit; details in the D130 row.
- Live owners probe, MPS 261.25134 from sources, only `myMPS-fix` open: 273 Language modules —
  148 owned by `SLibrary` + project (all real MPS languages; `lang.test*` via the `mps-testing`
  plugin library), 1 library-only, 124 project-only (samples, test fixtures). Output:
  `/tmp/d130scan/owners.txt` (scratch; re-run the console probe if gone).
- Owner bookkeeping: `MPSModuleRepository.getOwners` (`:287`, needs read access), reachable through
  `ProjectRepository.getOwners` (`:158`); a second registration adds an owner link (`:158-171`);
  `Project` and `SLibrary` both implement `MPSModuleOwner`.

## P1 — harness guard and bookkeeping (done, uncommitted)

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
- [ ] First real round after the commit: confirm `otherOpenProjects` appears in a cell's meta
      (no dedicated run; read it off the next round).

## P3 — make foreign provenance visible (server, small; do first)

P3 changes result metadata, not candidate visibility. It prepares the schema so P2′ can admit every
open project without recreating D4's silent cross-project result.

- [ ] Add one shared helper that marks a language or concept as foreign with `containingProject` and
      `editableFromCurrentProject:false`. Keep `ownerOfConcept`/module ownership for this marker;
      origin ranking must not replace real ownership metadata.
- [ ] Apply it to concept suggestions in `buildUnresolvedDetailsJson`, language suggestions in the
      same method, and `conceptHint` (`AbstractOps.kt:1056-1064`; callers `AbstractOps:1279`,
      `AbstractNodeOps:426`, `:1005`, `JetBrainsMPSTypesMcpToolset:409`, `:623`). Search hits already
      carry the marker; verify both summary/full runtime records and declaration-backed records.
- [ ] Do not add `details.skippedForeignLanguages` or `skippedForeignMatches`: after P2′, all scope
      drops no open-project language. Project scope is intentionally narrow and its existing
      auto-widen warning explains when the global set was consulted.
- [ ] Pin the shared marker helper directly in the two-project fixture. The end-to-end foreign
      concept/language suggestion assertions live with P2′ below, because the current filter admits
      no project-only B suggestion for P3 alone to decorate. Also assert that A-owned and
      library-only records receive no marker.

## P2′ — narrow project scope, genuinely global all scope

- [ ] Build one per-call language snapshot and reuse it for all scope, project scope, auto-widen,
      concept suggestions, and language suggestions. It contains `LanguageRegistry.allLanguages`
      plus every `Language` module of every open MPS project, deduplicated by `SLanguage` id. Record
      the language module, project owner, `SLibrary` ownership, whether A owns it, and whether A uses
      it. Repository owner access and open-project module access run under the existing read action.
- [ ] Compute A's used set from descriptor `languageVersions`, used devkits' exported languages, and
      `AbstractModule.getUsedLanguages()` for current model imports not yet reflected in descriptor
      stamps. Compare by `SLanguage` id. Measure the model walk, but optimize/cache rather than
      weakening the contract: an import added this session must immediately move L into project
      scope. Document any unavoidable conservative over-approximation from stale version stamps.
- [ ] `languagesInProjectScope`: select only A-owned or A-used languages from the shared snapshot.
      Remove the final sibling-project filter. A used B language is therefore visible here and
      remains foreign-marked.
- [ ] Replace `ConceptSuggestions.languagesInProject()` with the global snapshot for all scope and
      suggestions. Do not call it "in project" after this change. `scope:"all"` and auto-widen scan
      every snapshot language; no project-ownership exclusion remains.
- [ ] Generalize `ConceptSuggestions.projectLanguageModule` and `findProjectLanguageModule` into a
      read-only language-module lookup. Prefer A when duplicate names exist; otherwise select by
      exact language id. Search and `languageRefs` union runtime concepts with the selected module's
      structure declarations, so never-built B languages and concepts added since B's last build
      are visible. Keep mutation helpers project-only.
- [ ] Implement the ordering contract above in both `matchConcepts` and `ConceptSuggestions`.
      Preserve exact-name/match-score tiers, then apply origin priority and a stable qualified-name
      tie-break. The suggestion limit must retain one acceptable A candidate when one exists.
- [ ] Replace D4 half (a)'s exclusion contract in `mcp-tools-index.md` and the tests: foreign
      candidates are allowed but never unmarked or preferred over an equally good A candidate.
      Keep D4 half (b), plain-name resolution preferring A and marking a B-only resolution.
- [ ] Audit write-target enforcement for every `conceptHint` caller and for the tools used in the
      adoption flow. A foreign module/model/node cannot become the mutation target through a
      suggestion. Explicitly importing B's language into an A model and creating B-language nodes
      in A remain valid consumer operations.
- [ ] Correct the tool and `scope` `@McpDescription`: project = A-owned or A-used; all = every
      registered language and every language module in every open project. State that all results
      may be foreign, carry markers, and are ordered after equally relevant A results.
- [ ] Update `mps-language-analysis/references/search-concepts.md` and
      `mps-mcp-workflow/references/mcp-tools-index.md`; re-propagate each changed skill folder to
      `.claude/skills` and `.agents/skills` (`SkillCatalogReplicationTest`, 12 KB reference cap,
      `validate_skill_catalog.py`).
- [ ] D130 row → fixed, with the live measurement below; move it to `defects-archive.md` after one
      clean round.

### Tests for P2′ (suite two-project harness; no live MPS)

- [ ] Scope split: unused B is absent from the project first pass and present in all; after A imports
      B's exact language id, it is present in project scope. A same-named different-id language does
      not become used accidentally.
- [ ] Auto-widen: a project miss finds B in the global pass, carries the normal widening warning,
      and marks every B result. A project strict hit prevents widening.
- [ ] Search ordering: within exact-name matches A precedes used B, library, then unused B; the same
      origin order holds within other equal-quality strict matches. Fallback score remains primary,
      with origin and qualified name breaking ties.
- [ ] Suggestion ordering: concept exact/alias/token tiers remain primary; equal-quality A precedes
      B, and one acceptable A near miss survives when foreign exact hits fill the cap. Language
      suggestions sort by token score, origin, then qualified name.
- [ ] Marker coverage: foreign runtime search hit, declaration-backed search hit, concept
      suggestion, language suggestion, and rejection `conceptHint`; no marker on A-owned or
      library-only records.
- [ ] Declaration coverage: `scope:"all"` finds a concept in a never-built B language; explicit
      `languageRefs` lists it; after A imports the language, project scope finds it. A concept added
      since B's last build is included alongside runtime concepts.
- [ ] D4 replacement: a miss may suggest B, but the suggestion is marked; an equally good A
      candidate ranks first; a plain name existing only in B still resolves marked; a shared name
      still resolves A first.
- [ ] Write safety: a suggested B concept cannot make a B node/model/module a mutation target, while
      adding B's language to an A model and then creating a B-language node in A remains accepted.

### Validation gates (in this order; see `.agents/quality-gates.md`)

- [ ] `get_file_problems` on each changed Kotlin file; `build_project` (whole project if skill
      docs changed — per-file builds leave plugin resources stale).
- [ ] Focused run: `execute_run_configuration("McpToolsIntegrationTestSuite",
      envs={"MCP_TESTS": "ProjectResolutionCrossProjectTest,JetBrainsMPSLanguageMcpToolsetIntegrationTest"})`;
      check the new test names appear in the result (stale-bytecode trap). No other JUnit JVM may
      be running machine-wide.
- [ ] Full `McpToolsIntegrationTestSuite` once at the end; re-run a single non-reproducing failure
      before blaming the diff.
- [ ] Skill docs: `SkillCatalogReplicationTest`, `SkillReferenceLayoutTest`, `validate_skill_catalog.py`.
- [ ] **One** live check, after restarting MPS on the new build (`mps_control.sh`, never kill) with
      `myMPS-fix` and one small study project open: from the study project,
      `search_concepts ["GeneratorTest","NodesTestCase"] scope:all` returns hits marked
      `containingProject`; a search for a project-only `jetbrains.mps.samples.*` concept also returns
      a marked hit; an equally matching concept from the study project sorts before either; project
      scope omits the unused sample language but finds it after auto-widen on a miss. Import one B
      language into the study model and verify it then appears in the project first pass. Check that
      `idea.log` has no SEVERE in the window. Needs `ALLOW_SIBLING_PROJECTS` only if done through
      `run_worker.sh` — use direct MCP calls instead.
- [ ] No scenario re-run is needed: guarded cells never have a sibling project, so P2′/P3 cannot
      change their measurements. Note this in the round report instead of re-measuring.

## Open decisions for the user

- [ ] Product issue in YouTrack for P2′/P3, or keep it as study defect D130 only?

## Out of scope

- Fixture copies sharing module ids: the module is the current project's own in both windows, so
  the selected-project preference treats it as A's own; reconciling divergent copies remains out of
  scope.
