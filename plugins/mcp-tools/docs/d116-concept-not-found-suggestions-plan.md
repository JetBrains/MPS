# D116 — "Concept 'X' not found" rejections give no candidates

Status: plan draft 5, approved (round 4), live-probed 2026-10-27 (see "Live probes"), implemented 2026-10-27 (see
"Implementation notes"; implementation review: 2 rounds, approved). Review rounds 1–3 ("approve with changes"; 2, 2 and 1
blocking) are folded in. Remedy **S**
(server message + `details`), plus docs lines. See "Review log".

## The defect (from `study/docs-defects.md:48`)

A blueprint whose `concept` does not resolve is rejected with `Concept 'X' not found at $…` and nothing else. Filed
remedy: append up to 3 closest `qualifiedName`s from the same language (token match, as `search_concepts` does).

## What the transcripts show (1-based JSONL line of the tool result)

| run | line | input | the real concept | recovery |
|---|---|---|---|---|
| `runs-r43/S6-sonnet-1` | `145` | `…baseLanguage.collections.structure.SizeOperation` (update_node child) | `…collections.structure.GetSizeOperation` | `search_concepts` + rewrite (≈ 3 calls) |
| `runs-r43/S1-sonnet-1` | `138` | `…baseLanguage.collections.structure.SumOperation` (new child) | none exists | search, grep, rewrite as a foreach (≈ 5 calls) |
| `runs-r44/S1-sonnet-1` | `150` | `jetbrains.mps.baseLanguage.structure.ForeachVariable` (insert_root) | `jetbrains.mps.baseLanguage.collections.structure.ForEachVariable` — other language, other case | search + sed |
| `runs-r44/S1-sonnet-1` | `159` | `jetbrains.mps.lang.smodel.structure.ThisNodeExpression` (insert_root) | `jetbrains.mps.lang.behavior.structure.ThisNodeExpression` — other language | guessed fix |
| `runs-r44/S11-sonnet-1` | `20` | `query_types IS_SUBTYPE`, `typeConceptRef:"Int"` → `Concept 'Int' at parameters.sub.typeConceptRef not found` (`NOT_FOUND`) | `jetbrains.mps.samples.Expressions.structure.SimpleMathIntegerType`, alias `Int` (`samples/expressions/source_gen/…/ConceptPresentationAspectImpl.java:140`) | `languageRefs` dump + Python (2 calls) |

Two consequences for the design:

1. "From the same language" is not enough: two of five inputs name the **wrong language** with the exact simple
   name of a real concept. An exact simple-name match in any language must win over token matches in the named
   language.
2. A worker names a concept by what the editor shows, i.e. the alias (`Int`, `Float`). An exact alias match is the
   second-best signal.

Checked against the generated sources (review round 1): `ForEachVariable` is the only case-insensitive
`ForeachVariable`; only `lang.behavior` defines `ThisNodeExpression`; no `SizeOperation` exists and the only
concepts with `Size` in the name are `collections.GetSizeOperation`, `lang.editor.FontSizeStyleClassItem` and
`editor.diagram.testLanguage.NodeWithSize`; alias `int` is also carried by `baseLanguage.IntegerType` and a
`lang.editor.editorTest` concept. `SumOperation` has no right answer, and the design must then say nothing rather
than list noise.

## Live probes (2026-10-27, MPS 2026.1 build 261.25134, current code, project = this checkout; dry runs only)

| input | today's result |
|---|---|
| console blueprint, `…collections.structure.SizeOperation` / `SumOperation` | `INVALID_REQUEST`, `Concept '…' not found at $…`, no candidates |
| console blueprint, `jetbrains.mps.baseLanguage.structure.ForeachVariable` | same |
| console blueprint, `jetbrains.mps.lang.smodel.structure.ThisNodeExpression` | same |
| `query_types IS_SUBTYPE`, `typeConceptRef:"Int"` | `NOT_FOUND`, `Concept 'Int' at parameters.sub.typeConceptRef not found` |
| console blueprint, `jetbrains.mps.lang.core.structure.INamedConcept` | `Concept '…INamedConcept' not found` — **the interface-concept bug of §2 is real** |
| `get_concept_details`, `jetbrains.mps.lang.constraints.structure.ConceptFunctionParameter_node` | suggestions `ConstraintFunctionParameter_childConcept`, `…_linkTargetNode` only — not the real `ConstraintsFunctionParameter_node` (test 8's baseline; today's registry-order strict matches) |

The targets all resolve: `collections.GetSizeOperation`, `collections.ForEachVariable`,
`lang.behavior.ThisNodeExpression`, `lang.constraints.ConstraintsFunctionParameter_node`,
`baseLanguage.IntegerType` (alias `int`), `baseLanguage.Type` (`isAbstract: true`) and
`samples.Expressions.SimpleMathIntegerType` (alias `Int`; `SimpleMathFloatType` alias `Float`). The editorTest
`SmartCompletionTypedChild_Integer` also has alias `int`, so test 4 asserts containment. In this checkout the
Expressions sample is loaded and every language is project-owned, so for `Int` only the case-sensitive key separates
`SimpleMathIntegerType` from `IntegerType`. `idea.log` showed no SEVERE/ERROR in the probe window.

## What already exists

`mps_mcp_get_concept_details` has "did you mean" suggestions for unresolved `conceptRefs`
(`JetBrainsMPSLanguageMcpToolset.kt`):

- `suggestForUnresolvedConceptRef(ref, registry, repository, cache)` (`:1115`): FQN-shaped input → rank inside the
  implied language; only when that is **empty**, rank over `languagesInProject`.
- `rankConceptSuggestions(simpleName, languages, …, limit)` (`:1052`): subtoken match (`subtokensOf` `:107`,
  `TOKEN_BOUNDARY`) over name + alias + short description + doc + language tail; strict matches (all subtokens
  hit) returned **in registry iteration order** with an early return at `limit`, else a name-weighted score heap
  (`:1086-1097`).
- Helpers: `languagesInProject` (`:1296`), `conceptsWithDeclarations` (`:1313`), `conceptMatchText` (`:1332`),
  `ProjectMembershipCache` (`AbstractOps.kt:921`, `protected class`, no outer-instance state, used in 7 files),
  `getDoc` (`AbstractOps.kt:2841`, depends on `protected` lazies at `:2798`, `:2837`).
- `details.unresolved[].suggestions` (`buildUnresolvedDetailsJson`, `:1417`), capped at
  `MAX_SUGGESTIONS_PER_UNRESOLVED = 5`.

All of it is `private` to the language toolset. The rejection sites:

| site | tools | current text |
|---|---|---|
| `AbstractNodeOps.createNode` (`AbstractNodeOps.kt:400-421`) | `insert_root_node_from_json`, `update_root_node_from_json`, `update_node` child blueprints, `insert_console_command_from_json`; every caller wraps it via `instantiationFailed` (`:849`), which forwards `McpUserException.errorDetails` | `Concept 'X' not found at $path` (+ two `conceptReference` variants) |
| `JetBrainsMPSTypesMcpToolset.concreteConcept` (`:617-626`) | `query_types` `typeConceptRef` operands | `Concept 'X' at $path not found` |
| `JetBrainsMPSTypesMcpToolset.opCoerce` (`:406-413`) | `query_types COERCE` | `Concept 'X' at parameters.conceptRef not found` |

Not in scope (no study evidence; each can adopt the helper later): `JetBrainsMPSEditorMcpToolset.kt:256, :279`,
`JetBrainsMPSLanguageStructureMcpToolset.kt:265, :278, :338, :357, :1425`, `AbstractOps.kt:834, :1146, :1193`,
`AbstractNodeOps.kt:2272`, `AssignableReferenceService`.

## Changes

### 1. New `common/ConceptSuggestions.kt` — the ranker, moved and extended

Move `suggestForUnresolvedConceptRef`, `rankConceptSuggestions`, `languagesInProject`, `conceptsWithDeclarations`,
`conceptMatchText`, `subtokensOf`, `TOKEN_BOUNDARY` and `MIN_SUBTOKEN_LENGTH` into an `internal` class
`ConceptSuggestions(repository, cache, docOf: (SNode?) -> String)`. `AbstractOps` passes `::getDoc`;
`ProjectMembershipCache` becomes `internal class` in place (`AbstractOps.kt:921`, no move, no churn in the other
6 files). `mps_mcp_search_concepts` uses `subtokensOf` / `TOKEN_BOUNDARY` from the new home.
`MAX_SUGGESTIONS_PER_UNRESOLVED` stays in the toolset companion (tests reference it there). The move alone changes
no behaviour.

`suggest(ref, limit, mode)` with `mode` = `DETAILS` (`get_concept_details`, limit 5) or `REJECTION` (the rejection
sites, limit 3). Let *implied* be the language an FQN-shaped input names (`<lang>.structure.<Name>`) when it
resolves, else none.

1. **Exact simple name**, case-insensitive, over `languagesInProject` — any language, not only the named one.
2. **Exact alias**, case-insensitive.
3. **Token match** (subtokens of the simple name):
   - when *implied* exists: strict matches (in `REJECTION`, also n − 1 name-hit matches, see below) in *implied*
     only, **always run** (one language, cheap). If tiers 1–2
     already fill `limit`, the last slot is kept for the best tier-3 match when there is one, so a near miss in the
     named language is never hidden behind same-named concepts of other languages (review round 2 finding 1:
     `ConceptFunctionParameter_node` exists in 6 languages);
   - when *implied* is absent or tier 3 in it is empty: project-wide, **only when tiers 1–2 found nothing**
     (`DETAILS`: as today; `REJECTION`: only for input that is not FQN-shaped, see below).
   - `DETAILS` matches name + alias + short description + doc + language tail (as today) and keeps the scored
     fallback heap; `REJECTION` matches **name + alias + short description only** — no docs, no `sourceNode`, no
     model loads, and no `contains`-in-prose noise (`Sum` in "assume", "checksum"; the heap's "any `…Operation`").
     `REJECTION` is strict for n ≤ 2 subtokens and accepts **name hits ≥ n − 1** for n ≥ 3 (round 3 finding 1:
     `ConceptFunctionParameter_node` → the constraints concept is `ConstraintsFunctionParameter_node`, whose name,
     alias `node` and description lack `Concept`). An FQN-shaped rejection input never goes project-wide in
     tier 3: `SumOperation` (collections has no `sum` in any name, alias or short description) ends with no
     suggestions.
   - The reserved slot takes a strict (or, in `REJECTION`, an n − 1) match only, never a `DETAILS` fallback-heap
     entry, so an unrelated name cannot push out an exact hit. With k < `limit` exact hits, tier 3 fills the
     remaining `limit − k` slots. Tier-3 candidates already returned by tiers 1–2 are skipped, the reserved slot
     included (`…collections.structure.Foreachvariable` must not list `ForEachVariable` twice).

Reading cost (round 1 finding 3: `conceptsWithDeclarations` and `isFromAnotherOpenProject` resolve every
`sourceNode`, loading every structure model, inside the blueprint sites' EDT write command with its 30 s modal
timeout): tiers 1–2 and `REJECTION` tier 3 read runtime `concept.name` / `conceptAlias` / `shortDescription` for
every language, plus, for every language with `isInCurrentProject`, the structure-model roots (the D112 union of
`conceptsWithDeclarations` `:1322-1326` — the project's own models, already loaded). `isFromAnotherOpenProject`, the
site's `accept` and the deprecation lookup (which needs the declaration's `sourceNode`) run only on matched
candidates.

Ordering:

- Tiers 1–2: case-sensitive exact match first; then the concept is in *implied*; then the longest shared namespace
  prefix with *implied*; then the language is owned by the current project; then non-deprecated; then qualified
  name. For `Int` this puts `SimpleMathIntegerType` (alias `Int`) ahead of `IntegerType` (`int`) whether or not
  the Expressions language is project-owned.
- Tier 3 matches: drop the early return at `limit`, collect, sort by more name hits, then smaller
  `|name.length - simpleName.length|`, then qualified name. `SizeOperation` → `GetSizeOperation` (2 name hits)
  first; `ConstraintsFunctionParameter_node` (3 hits, Δ4) beats `ConstraintFunctionParameter_childNode` (3, Δ8)
  and `ConceptParameter_…enclosingNode` (3, Δ20). The existing `get_concept_details` tests do not assert an order
  (`JetBrainsMPSLanguageMcpToolsetIntegrationTest.kt:582, :671`), and their "every suggestion from the implied
  language" asserts (`:611-616`, `:691-697`) still hold: no exact-name concept exists elsewhere for those inputs.

### 2. The rejection sites

`createNode` (`AbstractNodeOps.kt:400-412`) casts both lookups `as? SConcept`, so a name that resolves to an
**interface** concept is reported as "not found", and tier 1 would then suggest X itself. Resolve both inputs raw;
`chosen` = the first `SConcept` in the order (byRef, byName), as today. The existing "conceptReference … was
ignored" warning is computed from the cast values as today (its text stays true when the reference names an
interface). Only when `chosen == null` and a raw result is an `SInterfaceConcept`, reject with
`Concept 'X' at $path (concept|conceptReference) is an interface concept; a node needs a concrete concept`, no
suggestions. `createNode` has no abstract check (only the type-blueprint path at `:995` has one), so abstract
concepts stay accepted there.

A shared helper `conceptHint(concept, conceptReference, site): ConceptHint` on `AbstractOps`, returning
`ConceptHint(messageSuffix: String, details: Map<String, Any?>)` (both empty when there is nothing to suggest).
Each site keeps building its own message and throwing its own exception type —
`throw McpNotFoundException(msg + hint.messageSuffix, hint.details)` — as the code does everywhere else. The
helper:

- lookup name: `concept` if present; else the name of a `conceptReference` only when it matches
  `^c:[0-9a-fA-F-]+/-?\d+:(.+)$` or ends in `(fqn)` (D115 form); otherwise no suggestions (a bare
  `c:<uuid>/<id>` would split into noise subtokens);
- calls `suggest(name, limit = 3, REJECTION)`;
- drops interface candidates at every site (none of them accepts one); at the two sites that need a concrete
  concept (`concreteConcept` and the type-operand blueprint, `site` = `CONCRETE`), an abstract candidate is
  **kept and marked** (COERCE accepts an abstract type concept and the node blueprint site creates one, so there
  it is shown unmarked): ` (abstract)` after its name in the message and
  `isAbstract: true` in `details`, so `…baseLanguage.structure.type` → `Type (abstract)` tells the worker to name a
  concrete subconcept instead of silently showing nothing;
- appends `. Closest concepts: A, B, C` (qualified names) when non-empty, nothing otherwise;
- sets `details.suggestions = [{qualifiedName, conceptReference, alias, isAbstract?}]`, the field names of a
  `search_concepts` summary, so `qualifiedName` pastes into `concept`.

Apply at:

| site | message kept | code |
|---|---|---|
| `AbstractNodeOps.kt:415-421` blueprint (when `mpsProject == null`: `model.repository`, a cache with no current project) | `Concept 'X' not found at $path` | `NOT_FOUND`, which `instantiationFailed` turns into `INVALID_REQUEST` as today |
| `AbstractNodeOps.kt:988-992` type-operand blueprint (`query_types` blueprint operands) | `Concept 'X' at $path is not a loaded concrete concept` | `INVALID_REQUEST` as today |
| `JetBrainsMPSTypesMcpToolset.kt:620` `concreteConcept` | as today | `NOT_FOUND` |
| `JetBrainsMPSTypesMcpToolset.kt:408` COERCE | as today | `NOT_FOUND` |

### 3. Docs

Edit the blueprints in `plugins/mcp-tools/resources/jetbrains/mps/agents/mcp/skills/`, then re-propagate to
`.agents/skills/` and `.claude/skills/` (`SkillCatalogReplicationTest`):

- `mps-language-analysis/references/concept-details.md` §"Suggestion heuristic" (`:52-60`): exact-name and
  exact-alias matches come first, those in the language you named first among them, and may be in another
  language; the token search is scoped to the named language, with one slot kept for it; keep "a candidate set,
  not a ranked answer" but add "an exact-name match is almost always the concept you meant".
- `mps-node-editing/references/troubleshooting.md` and `mps-mcp-workflow/references/analysis-tools/type-queries.md`:
  one line each — a `Concept 'X' not found` rejection names the closest concepts in the message and
  `details.suggestions`; no closest concept means the name has no near match, so search by intent
  (`search_concepts`) rather than retrying spellings. An interface concept is reported as such.
- `study/docs-defects.md`: archive D116 with the fix summary; re-measure S1, S6, S11.

## Tests

All touched classes are already registered (`McpNodeToolsTestSuite.java:31-39`, `McpLanguageToolsTestSuite.java:27`).
The fixture languages (`baseLanguage`, `collections`, `lang.behavior`, `lang.core`) are loaded in the suite
environment (`AssignabilityHintIntegrationTest.kt:294`, `JetBrainsMPSGenerationTransientModelsIntegrationTest.kt:477`);
the Expressions sample is not.

1. `JetBrainsMPSRootNodeMcpToolsetIntegrationTest`: a child `jetbrains.mps.baseLanguage.structure.ForeachVariable`
   → `ok:false`, message contains `Closest concepts: jetbrains.mps.baseLanguage.collections.structure.ForEachVariable`,
   `details.suggestions[0].qualifiedName` equals it.
2. Same, `jetbrains.mps.lang.smodel.structure.ThisNodeExpression` → first suggestion
   `jetbrains.mps.lang.behavior.structure.ThisNodeExpression`.
3. `JetBrainsMPSNodeMcpToolsetIntegrationTest` (update_node child): `…collections.structure.SizeOperation` → first
   suggestion `GetSizeOperation`.
4. `JetBrainsMPSTypesMcpToolsetIntegrationTest`: `IS_SUBTYPE`, `typeConceptRef:"int"` → `NOT_FOUND`, suggestions
   **contain** `jetbrains.mps.baseLanguage.structure.IntegerType` (not position 0: the editorTest `int` concept may
   be registered).
5. `…collections.structure.SumOperation` → message has no `Closest concepts`, no `details.suggestions`.
6. `conceptReference` `c:<random uuid>/123` alone → message unchanged, no suggestions.
7. A blueprint with `jetbrains.mps.lang.core.structure.INamedConcept` → the interface-concept message, no
   suggestions. With `conceptReference` an interface and `concept` a concrete concept → `ok:true` plus the
   existing "was ignored" warning.
8. `jetbrains.mps.lang.constraints.structure.ConceptFunctionParameter_node` (exists in 6 other languages) → 3
   suggestions, the last `jetbrains.mps.lang.constraints.structure.ConstraintsFunctionParameter_node`.
9. `concreteConcept` with `jetbrains.mps.baseLanguage.structure.type` → suggestions contain `Type` with
   `isAbstract: true`, the message says `(abstract)`.
10. Existing `get_concept_details` suggestion tests still pass (`:582`, `:671`, `:714`); add one for the exact-name
   tier through `get_concept_details` (`jetbrains.mps.baseLanguage.structure.ForeachVariable`).

Validation: `build_project` for `mcp-tools`, then `McpNodeToolsTestSuite` and `McpLanguageToolsTestSuite`; check
the new test names ran (stale bytecode otherwise). Live, once MPS MCP is reachable: replay the five transcript
inputs, confirm the first suggestion and the message length, grep `idea.log` for the window.

## Implementation notes (2026-10-27)

Deviations from the plan, each from the implementation or its review:

- `ConceptSuggestions` is a public class taking a public `ConceptSuggestions.Membership` interface, which
  `ProjectMembershipCache` implements, instead of an `internal` class over an `internal` cache: dozens of `protected`
  signatures take the cache, and Kotlin rejects a `protected` member exposing an `internal` type.
  `AbstractOps.conceptSuggestions(repository, cache)` builds it with `getDoc` / `getDeprecationInfo`.
- The helper is `conceptHint(repository, currentProject, concept, conceptReference, concreteRequired, accept)`;
  `concreteRequired` replaces the plan's `site`. Besides a `c:` reference with a name, it reads a
  `conceptReference` that is not a `c:` reference as a name, because the two `query_types` sites pass their single
  `conceptRef` / `typeConceptRef` value that way.
- A fifth site: an unknown **root** concept of `insert_root_node_from_json` is rejected by
  `resolveRootableConcept` → `rootableConceptNotFound` before `createNode` runs (`Concept not found: concept='X',
  conceptReference='…'`). It now carries the hint too, restricted to rootable concepts (`accept`). The plan's
  blueprint tests were rewritten to put the bad concept in a child (as in `r44 S1-sonnet-1`).
- `namedConcepts` (tiers 1–2 and `REJECTION` tier 3) reads a project language's structure roots only when the
  language has no runtime or the model is already loaded: in this checkout every language is project-owned, and
  reading all roots would load every structure model inside the EDT command. The cost is a missed candidate for a
  concept added since the last build to a model nobody has loaded; it still resolves normally.
- Other-project and site filters (`usable`) run during the token scan, as the old ranker did, so a filtered strict
  match cannot switch off the `DETAILS` fallback.

## Review log

- **Round 1** (approve with changes, 2 blocking): (B1) an interface concept was reported "not found" and would
  have been suggested as its own fix → interface rejection + per-site `accept`, open item closed; (B2) tier 3
  wording contradicted the existing implied-language-only tests and the sort keys contradicted each other → tier 3
  scope unchanged, ownership key only in tiers 1–2; (3) cost inside the EDT command → tiers 1–2 read runtime
  names only, filters on matches only, tier 3 skipped after a hit; (4) deterministic tie-break; (5) rejections use
  strict matches only; (6) `conceptReference` name extraction by regex; (7) visibility decided (`internal`
  `ProjectMembershipCache`, `docOf` parameter); (8) exact doc targets; (9) line numbers and the transcript line
  convention fixed; (10) test fixtures confirmed, test 4 asserts containment, tests 5 and 7 added.
- **Round 2** (approve with changes, 2 blocking): (B1) skipping tier 3 after an exact hit let same-named concepts
  of other languages fill every slot → implied-language and namespace-prefix sort keys back in tiers 1–2, scoped
  tier 3 always runs with a reserved slot, test 8; (B2) `SumOperation` fell through to a project-wide doc scan →
  `REJECTION` mode: name/alias/short description only, never project-wide for FQN-shaped input; (3) exact
  two-input rule for the interface check, test added; (4) abstract claim corrected — blueprints keep abstract
  concepts, type sites mark them `(abstract)`, test 9; (5) tiers 1–2 read declarations of every project language,
  deprecation resolved for matches only; (6) the type-operand blueprint site `:988-992` added; (7) docs wording.
- **Round 3** (approve with changes, 1 blocking): (B1) test 8 could not pass — the constraints concept is
  `ConstraintsFunctionParameter_node` and lacks `Concept` in name, alias and description → `REJECTION` tier 3
  accepts n − 1 name hits for n ≥ 3, test 8 names the real concept; (2) the reserved slot takes strict / n − 1
  matches only; (3) `(abstract)` marking limited to the two concrete-only sites, not COERCE; (4) the helper
  returns a `ConceptHint` and each site throws its own exception.
- **Round 4** (approve): two wording fixes folded in — tier-3 de-duplication against tiers 1–2, and the first
  tier-3 bullet names the n − 1 rule.
