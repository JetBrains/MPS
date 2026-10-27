# D112 — concepts of an unbuilt language: analysis and design

Status: implemented 2026-10-27 on `261/vaclav/MCP2` (design v2; v1 and the implementation were each reviewed by an opus reviewer the same day). Implementation notes that refine §4: the declaration view exposes the *genuine* link of a specialization chain (role, id, cardinality) and narrows only its target, as the compiled descriptor does; a concept with neither descriptor nor declaration is `Undeclared` everywhere; `Stale` appears in `details.languageBuild` only, never in `warnings`; `createNode` keeps skipping a `name` for a concept without one silently (a warning per node flooded `print_node` round-trips), `create_root_node` warns; the `query_types` gate covers the `concept`, `conceptRef` and node operands. The reference text moved to `mps-language-analysis/references/language-readiness.md`. Defect: `study/docs-defects.md` D112 (round 43, S8). Related, all
"fixed" and archived before D112 was filed again: D20 (FQN `conceptRefs` resolve), D35
(`languageRefs` on an undeployed project language), D57 (`descriptorStatus` is emitted only when
hollow), the `descriptorStatus:"hollow"` marker, the `CREATE_CONCEPTS make:true` module rebuild, the
`scaffold_editor` staleness gate, study asset A8 (S8 is evaluated around an observer MAKE).

## 1. What happens today (live reproduction, 2026-10-27, MPS 261.25134)

A throwaway language `d112.probe` was created in the open project, two concepts were added with
`CREATE_CONCEPTS make:false` (`Chart`: rootable, implements `INamedConcept`, property `initial`,
child `states: State[0..n]`; `State`: implements `INamedConcept`, property `final`), and every
surface was exercised before and after one `MAKE rebuild=true` on the language module. The module
was deleted afterwards; the IDE log holds only `WARN` lines for the probe.

| Surface | Before the build | After `MAKE modules:[d112.probe] rebuild:true` |
|---|---|---|
| `get_concept_details conceptRefs=<FQN> detail=shape` | `ok:true`; `isAbstract:true`, `properties/references/children: []`; **no** `descriptorStatus`, **no** warning | correct: 4 properties incl. `name`, `states 0..n`, `isAbstract:false` |
| `get_concept_details conceptRefs=<FQN> detail=full` | `ok:true`; `descriptorStatus:"hollow"` **present**, but every other field is wrong: `superInterfaces:[]` (INamedConcept missing), `superConcept` always BaseConcept (`SConceptAdapter.getSuperConcept` fallback), `shortDescription:""`, `sourceNode:""`, `isAbstract:true`, empty features, empty `sampleNode` | correct |
| `get_concept_details languageRefs=d112.probe` | `NOT_FOUND`, "runtime is not deployed; run MAKE … **or address concepts by fully qualified name via conceptRefs**" | correct |
| `insert_root_node_from_json dryRun` with `properties:[initial]` | `INVALID_REQUEST` "Unknown property 'initial' … concept 'Chart' has no such property" — names neither the language nor MAKE | dry run passes |
| `insert_root_node_from_json dryRun`, blueprint with only `name` | **`ok:true`** | passes |
| `insert_root_node_from_json` (real write), blueprint with only `name` | **`ok:true`**: a nameless `Chart` root is written; the only tell is `data.name = "Chart (concept is not found)"` (the fail-safe label from `jetbrains.mps.smodel.SNode.getPresentation`) | correct |

So the defect is wider than round 43 recorded: besides the silent `shape` record and the
uninformative rejection, a write can succeed against an unbuilt language and silently drop
properties. The `languageRefs` error points callers into the `conceptRefs` trap.

## 2. The current mechanism

### 2.1 How a fully qualified `conceptRef` is resolved

`resolveConceptPreferringProject` → `resolveConceptNodeInModules` finds the `ConceptDeclaration`
node in `<language>.structure` (this is the part of "resolves via the structure model" that is
true) → `MetaAdapterByDeclaration.getConcept(node)` →
`MetaAdapterFactory.getConcept(MetaIdByDeclaration.getConceptId(node), name)`.

The result is an `SConceptAdapterById(id, fqName)`. **It does not carry the declaration node.**
Every feature query on it goes to the runtime:

```
SConceptAdapterById.getConceptDescriptor()
  → ConceptRegistryUtil.getConceptDescriptor(id)
  → ConceptRegistry.getConceptDescriptor(id)       // StructureRegistry, fed by LanguageRegistry
  → IllegalConceptDescriptor when no runtime knows the id
  → ConceptRegistryUtil maps IllegalConceptDescriptor to null
```

With a null descriptor the adapter is "fail-safe" by design (`SAbstractConceptAdapter` KDoc):
`isValid()==false`, `isAbstract()==true` (`d == null || …`), `getSourceNode()==null`,
`getSuperConcept()==BaseConcept`, `getProperties()/getContainmentLinks()/getReferenceLinks()` and
`getSuperInterfaces()` empty, `conceptAlias`/`shortDescription` `""`, `isSubConceptOf(x)` false.
Nothing throws. Every consumer that iterates features gets a plausible-looking empty answer. That
is the root of every surface in §1.

### 2.2 The not-ready states, and who detects which

A generated `StructureAspectDescriptor` gives every concept descriptor an `origin(...)`, and
`SNamedElementAdapter.getSourceNode()` is null only when the descriptor itself is null. So the
"hollow descriptor" the code and docs talk about (descriptor present, no origin, no features)
does not occur; every case observed so far is a **missing** descriptor, in one of two forms:

| State | Definition | Detected today by |
|---|---|---|
| **no runtime** | `LanguageRegistry.getLanguage(lang) == null`: the module exists in the project but was never made or its `classes_gen` is gone (`LanguageRegistry.createRuntime` returns null on `ClassNotFoundException`, the module lands in `myLanguagesNoRuntime`). Every concept of the language is invalid. | `findProjectLanguageModule` (D35, `languageRefs` only); `checkScaffoldingStaleness` step 1 (`scaffold_editor` only); `hollowRuntimeConcepts` (`CREATE_CONCEPTS` only) |
| **concept not in runtime** | the runtime is loaded but does not know this concept id: a concept created after the last build. The normal authoring state, and what `CREATE_CONCEPTS` sees before its make. | `isHollowDescriptor` (`sourceNode==null && no features`) — reported as "hollow" with the incremental-make explanation; it also fires for *no runtime*, conflating the two |
| **stale** | descriptor present, but the structure model was edited since the last generation (`ModelGenerationStatusManager.generationRequired`): e.g. a property added to a built concept. The descriptor is valid and simply lacks the new feature. | `checkScaffoldingStaleness` step 3 (`scaffold_editor` only) |

`isHollowDescriptor` is applied in `conceptInfoJsonObject` (the `full` record) and in the
`search_concepts` summary. `conceptShapeJsonObject` **deliberately omits it** — the code comment
argues "a hollow descriptor self-reveals there as all-empty features". It does not: an agent
cannot tell `StateChart` with `isAbstract:true` and no features from a legitimately featureless
abstract marker concept, and the round-43 S8 cells are the proof.

Enumeration has the same blind spot: `languageRefs` iterates `runtime.concepts`, and
`search_concepts` (`matchConcepts`, `rankConceptSuggestions`) skips every language without a
runtime. Concepts added since the last build are invisible to both even for a deployed language,
so a marker on the search record cannot help there.

### 2.3 Recovery knowledge lives in one place

The recipe that works for a language with no runtime — a **module-scoped clean rebuild**
(`performMake(modules=[language], rebuild=true)`), verified by reading the descriptors back — is
implemented only inside `CREATE_CONCEPTS make:true` (`recoveryStage:"module-rebuild"`), staged
after a cheaper model-scoped clean make that suffices for the *concept not in runtime* case.
`scaffold_editor`'s "self-healing" build is model-scoped only, and no blueprint reader builds or
checks anything. Today's probe confirms the recipe: one module-scoped rebuild fixed every row of §1.

### 2.4 The writers

`AbstractNodeOps.createNode` (and the `update_root_node_from_json` rewrite path, `create_root_node`,
`update_node` ADD/SET CHILD and SET PROPERTY, `parse_java_and_insert`'s parent-role lookup, the
assignable-reference service and the `query_types` type-operand reader) resolve the concept
through the same adapter and then:

- `name`: `if (sConcept.properties.contains(nameProperty)) setProperty(...)` — silently skipped when
  the descriptor is null, hence the nameless root that was written in §1 (the write itself
  succeeds because `languageForId` falls back to the module);
- `properties[]`: `sConcept.properties.find { it.name == propName } ?: throw "Unknown property …"`
  — phrased as a blueprint authoring error; child and reference roles are looked up the same way
  (`NOT_FOUND "Child role not found"`), and `isSubConceptOf` on an invalid concept returns false,
  so a child of an unbuilt concept in a built role fails as a misleading assignability error.

The only readiness-related gate in the readers is `rejectUnloadedConceptRecord`, which reacts to
a `conceptLoaded:false` flag that `print_node` wrote (D89), not to the live state of the language.

## 3. Why it keeps coming back

1. **No single predicate.** "Is this concept's runtime usable?" is answered by four different
   checks in four places (`isHollowDescriptor`, `checkScaffoldingStaleness`, `hollowRuntimeConcepts`,
   `findProjectLanguageModule`), none of them in the writers, and the central one conflating two
   states with different explanations and recoveries.
2. **Each fix patched the surface it was filed against.** D20 fixed FQN *resolution* and its test
   asserts only that the detail blocks *exist*, not that they have content; D35 fixed the
   `languageRefs` text and sent callers to the FQN route; D57 fixed a study criterion; the hollow
   marker was added to `full` and `search` records and consciously left out of `shape`; the
   module rebuild was added to `CREATE_CONCEPTS` only; A8 taught the *evaluator* to MAKE first.
3. **The documentation states a half-truth.** "FQN `conceptRefs` resolve via the structure model"
   (`concept-details.md:28`, the tool description, the D35 error text) is true for resolution and
   false for everything the caller actually wants (features, supers, abstractness, docs).
4. **The platform API hides the failure.** The id-based adapter never throws; it returns empty
   collections and `isAbstract:true`. Any new consumer written against `SAbstractConcept` inherits
   the defect unless it consults a shared predicate — which is why the class of bug reappears
   with every new tool.
5. **Agents are told not to modify models**, and MAKE looks like a modification. S8-opus declined
   to build on exactly that reading; no error text or skill says that a MAKE writes only generated
   output.

## 4. Design (v2)

Principle: **one classifier, one recovery, every surface.** Read tools answer from the declaration
tree and say so; write tools never act on a fail-safe adapter — they refuse with the cause and the
exact build call. No new tool parameter (every parameter costs schema bytes on every turn — the R7
lesson). No tool builds a language implicitly (§4.7 explains why v1's auto-build was dropped).

### 4.1 `LanguageReadiness` (new, `common/LanguageReadiness.kt`)

```kotlin
sealed class ConceptReadiness {
    object Ready : ConceptReadiness()
    /** LanguageRegistry has no runtime for the declaring language (never made / classes_gen missing). */
    data class NoRuntime(val module: Language) : ConceptReadiness()
    /** Runtime present, but it does not know this concept id (concept created since the last build). */
    data class ConceptNotInRuntime(val module: Language) : ConceptReadiness()
    /** Descriptor present; the structure model was edited since the last generation. */
    data class Stale(val module: Language, val structureModel: SModel) : ConceptReadiness()
}
fun readinessOf(concept: SAbstractConcept, declaration: SNode?, project: MPSProject): ConceptReadiness
fun readinessOf(language: Language, project: MPSProject): ConceptReadiness    // NoRuntime / Stale / Ready
```

The module comes from the **declaration node's** module when a declaration resolves (a moved
concept keeps its old `languageId`, so `concept.language` can name the wrong module), and from
`concept.language` otherwise. Check order, cheap first and without iterating features:
`LanguageRegistry.getLanguage(moduleLanguage) == null` → NoRuntime; `!adapter.isValid` →
ConceptNotInRuntime; `generationRequired(structure model)` → Stale; else Ready. A concept with
neither a descriptor nor a declaration is not a readiness state at all: `readinessOf` returns
`Undeclared`, which no tool maps to `LANGUAGE_NOT_BUILT`; it stays an invented reference
(`NOT_FOUND`, as the existing reject-invented-language-uuids test demands), and the
`scaffold_editor` wrapper reports it as "concept unknown to the runtime and not declared in any
structure model". The writer gate skips the `generationRequired` step (Stale is the feature-miss
handler's job) and caches its verdict per call and per concept.

`isHollowDescriptor`, the inner verdict of `hollowRuntimeConcepts`, the `c.isValid &&
c.sourceNode != null && !generationRequired` gate in `scaffold_editor` and
`checkScaffoldingStaleness` all become callers of `readinessOf` (`checkScaffoldingStaleness` stays
as a thin wrapper returning its sealed result, so `ScaffoldEditorStalenessTest` keeps its entry
point; its "hollow runtime descriptor" wording changes to the new vocabulary).

One recovery, machine-readable and human-readable, emitted by every surface:

```json
"details": { "languageBuild": {
  "language": "d112.probe", "module": "42afa821-…(d112.probe)",
  "status": "no_runtime" | "concept_not_in_runtime" | "stale",
  "recovery": { "tool": "mps_mcp_alter_nodes", "operation": "MAKE",
                "parameters": { "modules": ["42afa821-…(d112.probe)"], "rebuild": true } },
  "note": "A MAKE writes only generated output (source_gen/classes_gen) and changes no model, so it is allowed where model edits are not."
} }
```

`rebuild:true` on the module is the one recipe that covers all three states; the cheaper
model-scoped make stays an internal optimisation of the tools that build (§4.4), not something
the caller has to choose.

Per-record markers keep the existing contract: `descriptorStatus:"hollow"` (it describes the
runtime descriptor the record would otherwise have come from; consumers and S1 criterion 6 test
`== "hollow"`), `descriptorRecoveryAction` (reworded, since the record itself is now correct),
plus `runtimeStatus` with the same enum as `languageBuild.status`, `languageModule`, and
`source:"declaration"` when the record was read from the declaration tree.

### 4.2 Read tools: answer from the declaration tree, and tell

A `ConceptDeclarationView` reads everything the record needs off the `AbstractConceptDeclaration`
node. Where `jetbrains.mps.lang.structure`'s own behavior already does the work, call it through
`BHReflection` as `JetBrainsMPSLanguageStructureMcpToolset` already does
(`AbstractConceptDeclaration__BehaviorDescriptor.getPropertyDeclarations`, `getLinkDeclarations`
— it drops links overridden via `specializedLink` —, `getAllSuperConcepts(includeSelf)` — it
adds BaseConcept —, `isSubconceptOf`). Everything else is read by hand, extending
`StructureLanguageMeta` with the metas it lacks: `dataType`, `target`, `abstract`, `rootable`,
`conceptAlias`, `conceptShortDescription`, the doc annotation, enum `members` / `defaultMember`
/ `presentation`. `featureId` comes from `MetaIdByDeclaration.getPropId/getLinkId`, the feature's
`sourceNode` is the declaration itself, `conceptReference` from `MetaAdapterByDeclaration`; the record keeps the
`addContainingProjectIfForeign` marker, since a sibling-project concept now takes this path. The
whole super chain is walked uniformly through declarations (built super-languages included), so
BaseConcept and specialized links are never double-counted.

`get_concept_details` (both detail levels) and `search_concepts`:

- When `readinessOf` is NoRuntime or ConceptNotInRuntime and the declaration resolves, the record
  is built from the view and marked as in §4.1; the envelope carries a `warnings` entry and
  `details.languageBuild` (one block per affected module). Stale is reported only in
  `details.languageBuild` — the runtime record is correct, just possibly behind.
- `conceptShapeJsonObject` carries the marker too; the "self-reveals" omission goes.
- `languageRefs` naming a project language: the concept set is the **union** of `runtime.concepts`
  (when a runtime exists) and the structure model's concept roots, so concepts added since the
  last build appear; with no runtime the whole answer comes from declarations instead of
  `NOT_FOUND`. The D35 text stops presenting FQN `conceptRefs` as a way around the build.
- `search_concepts`: `matchConcepts` and `rankConceptSuggestions` take the same union for
  project languages (the match text — name, alias, short description, doc — is all on the
  declaration).
- `query_types` (`IS_SUBTYPE`, `EXPLAIN_TYPE`, the type-operand reader at `TypesMcpToolset`)
  cannot be computed without the runtime: gate with `readinessOf` and refuse with
  `LANGUAGE_NOT_BUILT` + `details.languageBuild` rather than answer from the fail-safe adapter.
- `print_node`'s `unloadedConcepts` warning (D89) and `rejectUnloadedConceptRecord` take their
  wording and `details.languageBuild` from the same helper.

Parity test (§4.6) pins the view against the runtime for bundled built concepts.

### 4.3 Writers: never act on a fail-safe adapter

Applies to every place that looks a feature up on a possibly unbuilt concept:
`insert_root_node_from_json`, `update_root_node_from_json`, `update_node` ADD/SET CHILD (the
blueprint and the parent role lookup), SET PROPERTY, MOVE_CHILD/MOVE_NODE_TO_PARENT role lookups,
`create_root_node` (name skip, compulsory references), `parse_java_and_insert`'s parent role,
`AssignableReferenceService`, `insert_console_command_from_json`.

Two shared helpers in `AbstractNodeOps`:

1. **Concept gate** at concept resolution: `readinessOf(concept, declaration)`; NoRuntime or
   ConceptNotInRuntime → throw `McpLanguageNotBuiltException` → envelope `ok:false`, new code
   `LANGUAGE_NOT_BUILT`, message "Concept 'd112.probe.structure.Chart' belongs to language
   'd112.probe', whose runtime does not know it (status …); the blueprint cannot be validated or
   written until the language is built. <recovery sentence>", `details.languageBuild`. Dry runs
   refuse the same way: a dry run exists to validate against the runtime (factories, constraints,
   assignability), and without one it would have to invent a verdict.
2. **Feature-miss handler** for Stale: when a property / child role / reference role lookup on a
   *valid* concept misses, consult the declaration view before answering. Declared there →
   `LANGUAGE_NOT_BUILT` with `status:"stale"` ("property 'x' is declared in the structure model
   but the built runtime does not have it yet"); not declared → the existing "Unknown property" /
   "Child role not found" rejection, unchanged. `generationRequired` alone never triggers a
   refusal (it is true for any unsaved edit); only a declared-but-missing feature does.

The gate runs inside the existing command/read action at the point where the concept is
resolved; no hoisting out of `executeShortCommandOnEdt` is needed because nothing builds.

Closed by the same gate, and worth their own warnings for built concepts too: `name` is skipped
without a word when the concept has no `name` property (becomes a `warnings` entry), and the
`"<Concept> (concept is not found)"` presentation must never appear in a success envelope (the
node-info builder reports it as `LANGUAGE_NOT_BUILT` if it ever does).

### 4.4 `scaffold_editor` and `CREATE_CONCEPTS`: one staged recovery

A shared `ensureLanguageRuntime(module, readiness)` in `AbstractOps`: NoRuntime → module-scoped
clean rebuild at once (the model-scoped make is known not to materialise a runtime);
ConceptNotInRuntime / Stale → model-scoped clean make of the structure model, verify with
`readinessOf`, fall back to the module rebuild. `CREATE_CONCEPTS make:true` keeps its
ground-truth read-back and `recoveryStage`, and `scaffold_editor` replaces its model-scoped-only
self-heal with the same helper, so the common Stale case stays cheap and a never-built language
gets the rebuild it needs.

### 4.5 Documentation (blueprint tree, then both catalog copies)

- `mps-language-analysis/references/concept-details.md` and the `get_concept_details` tool
  description: replace "conceptRefs … resolve via the structure model" with: resolution uses the
  structure model; for an unbuilt language or a concept built since, the record is read from the
  concept declarations and marked `source:"declaration"` / `descriptorStatus:"hollow"` /
  `runtimeStatus`, and the envelope names the build under `details.languageBuild`. Document the
  union semantics of `languageRefs`.
- `undeployedLanguageDiagnostic` and `details.unresolved[].route`: drop "or address concepts by
  fully qualified name via conceptRefs" as an alternative to the build.
- `mps-mcp-workflow/SKILL.md` Critical Directives, `mps-dsl-memory/SKILL.md` step 8,
  `mps-node-editing/references/troubleshooting.md`, `response-envelope.md`: the
  `LANGUAGE_NOT_BUILT` code and `languageBuild` block; one sentence that a MAKE writes only
  generated output, changes no model, and is allowed in a task that forbids model edits. The
  "if every blueprint is rejected with Unknown property …" heuristic in `mps-dsl-memory` stays
  until S8 is re-measured.
- Study: `analyze_runs.py`'s error-code mapping learns `LANGUAGE_NOT_BUILT`.
- Propagate the changed skill folders to both catalogs; `SkillCatalogReplicationTest` guards it.

### 4.6 Tests

- `LanguageReadinessTest` (unit, `createConceptRoot` fixture, never built): a declared concept
  of the fixture language → `NoRuntime`; a bundled concept → `Ready`; an invented id in a
  bundled language → no readiness state (`NOT_FOUND` path).
- `ConceptDeclarationViewParityTest`: for bundled built concepts (`ClassConcept`, `INamedConcept`,
  a concept with an enum property and a specialized link), the declaration record equals the
  runtime record field by field (properties, types, enum literals and default, links, targets,
  cardinalities, featureIds, supers, abstract/rootable/alias/description). Runs in the harness
  without any build.
- `JetBrainsMPSLanguageMcpToolsetIntegrationTest`: strengthen the D20 test from "blocks exist" to
  declaration content + markers + `details.languageBuild`, for `full`, `shape` and `languageRefs`;
  the existing hollow-marker test keeps passing (`descriptorStatus:"hollow"` retained).
- Writers: `insert_root_node_from_json` (dry and real), `update_node ADD CHILD`, `create_root_node`
  against a fixture concept answer `LANGUAGE_NOT_BUILT` with `details.languageBuild`, never
  "Unknown property", and the model has no new root afterwards. Stale branch: a bundled built
  concept plus a blueprint property that exists on no declaration → unchanged "Unknown property"
  (the declared-but-unbuilt branch needs a build and is verified live).
- Tests the design touches: `ScaffoldEditorStalenessTest` (wording; its bogus id has no
  declaration, so the verdict is the `Undeclared` reason above, not `ConceptNotInRuntime`);
  `ProjectResolutionCrossProjectTest` "accepts explicit sibling project concept reference" and
  "insert root from JSON resolves same-named concept in selected project" (both insert a
  never-built concept with a real write and expect `ok`; the correct expectation is now the
  refusal, with `details.languageBuild.module` naming the intended project's language and no
  root created, which still pins the resolution each test is for).
- `McpCallLogTest`: `LANGUAGE_NOT_BUILT` is recorded as a server error, not arg validation.
- No new parameter, so `McpToolParameterOptionalityTest` and `inventorySha256` move only through
  description text.

### 4.7 Why v1's auto-build was dropped

`performMake` is not side-effect free: it discards all previous transient models (destroying an
earlier MAKE's `TRACE`/`TRANSIENT_MODELS` evidence), forces a `ClassLoaderManager.reload`, expands
the module to its generators (a broken generator then blocks a blueprint into a structurally fine
language), and writes `source_gen`/`classes_gen`, which are VCS diffs where they are checked in.
Only one make session can run, and agents send dry runs in parallel batches (`mps-dsl-memory`
step 8 dry-runs every blueprint), so one call would build and its siblings would be refused. And
the `dryRun` contract promises "only validate … without mutating". The refusal with the exact
MAKE call costs one agent turn per language per session and keeps every tool's contract honest.

Two follow-ups stay possible on top of this design, each measurable separately: (B) validate dry
runs against the declaration view when the language is not built (warning that factories and
constraints did not run), and (C) build on real writes only, single-flight per module. Neither
is needed for D112's acceptance (§4.8).

### 4.8 Study follow-up and acceptance

Re-measure S8 (both models), S1 and S2 in the next round. Expected: no `isAbstract:true` record
without a marker; no "Unknown property" rejection on a never-built language; S8-opus gets correct
concept records without a build and, if it dry-runs, a refusal whose note says a MAKE changes no
model. A8's observer MAKE in `S8/done_criteria.md` can then be reconsidered.

### 4.9 Risks and non-goals

- Languages of other open projects or libraries are classified and refused the same way; never
  built from here.
- Read tools stay side-effect free.
- Cross-model staleness (editing language Y does not dirty X's structure model) remains out of
  scope, as noted on `checkScaffoldingStaleness`.
- `IllegalConceptDescriptor.reportWarn` logs once per concept name per JVM and is never reached
  through the adapter (the util maps it to null); classifying before iterating features keeps it
  that way for the `ConceptRegistry` calls the tools make directly.
