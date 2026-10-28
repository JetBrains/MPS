# D112 change: a review tour

49 files, ~1160 insertions / ~540 deletions in the working tree. The stops below are ordered so each one
builds on the previous; the stops marked **review** carry the design decisions and the logic a reader
should verify by hand. Everything else is mechanical consequence (call-site threading, tests, docs).
Line numbers are those of the working tree at the time of writing.

## Stop 1 — the classifier (review)

`plugins/mcp-tools/src/jetbrains/mps/agents/mcp/tools/common/LanguageReadiness.kt` (new, ~150 lines)

- `ConceptReadiness` (:21–47): `Ready`, `Undeclared`, `NotBuilt.{NoRuntime, ConceptNotInRuntime, Stale}`.
  `NotBuilt` carries `languageName` and the `Language` module to rebuild (nullable: a library concept).
- `classify` (:65): check **order** is the thing to verify. `!isValid && declaration == null` →
  `Undeclared` first; then the module and the runtime language are derived from the *declaration's*
  module when present (moved concepts keep their old `languageId`); `LanguageRegistry.getLanguage == null`
  → `NoRuntime`; `!isValid` → `ConceptNotInRuntime`; `checkStale` false → `Ready` (the writer path, no
  `generationRequired` cost); else `generationRequired(structure model)` → `Stale` / `Ready`.
- `ofLanguage` (:86) classifies a module as a whole (used by `CREATE_CONCEPTS`).
- `languageBuildDetails` (:99), `recordMarkers` (:128), `recoverySentence`, `describe`, `notBuilt` (:140):
  the single vocabulary every surface emits. If you want to change any user-visible wording, it is here
  and nowhere else.

## Stop 2 — reading a concept off its declaration (review)

`.../languages/ConceptDeclarationView.kt` (new) and `.../languages/StructureDeclarations.kt`,
`.../languages/StructureLanguageMeta.kt` (extended with the structure-language feature ids the view needs).

- The view is constructed only through `of(node)` (:107), which returns null unless the node is a
  `ConceptDeclaration` / `InterfaceConceptDeclaration` and `MetaAdapterByDeclaration.getConcept` yields a
  concept.
- `superConceptDeclaration` (:38): `extends` target, else BaseConcept, except for an interface and for
  BaseConcept itself (parity with the runtime).
- `properties` (:50) and `links` (:54): inherited features come from the super chain returned by
  `jetbrains.mps.lang.structure`'s `getAllSuperConcepts(includeSelf)` behavior
  (`StructureDeclarations.allSuperConceptDeclarations`, invoked through `BHReflection` with the method id
  in `StructureLanguageMeta.getAllSuperConceptsId`). **Specialized links**: the view keeps the *genuine*
  link of a specialization chain (role, id, cardinality, target) and drops the specializing one, which is
  what the compiled descriptor exposes; the first implementation did the opposite and the parity test
  caught it. `declaredFeature` (`StructureDeclarations.kt:23`) applies the same rule, which is what keeps
  a built `lang.behavior` concept from getting a false `stale` refusal.
- Cardinality and metaclass come from the `sourceCardinality` / `metaClass` enum members
  (`StructureLanguageMeta.CARDINALITY_*`, `LINK_METACLASS_AGGREGATION`); `featureId` from
  `MetaIdByDeclaration.getPropId / getLinkId / getRefRoleId`.
- The guarantee that this is right is `LanguageReadinessTest.the declaration view agrees with the built
  runtime…`: field-by-field parity over every concept of `lang.structure`, `lang.core` and `lang.behavior`.

## Stop 3 — `AbstractOps`: shared helpers and what was deleted (review)

`.../common/AbstractOps.kt`

- `McpErrorCode.LANGUAGE_NOT_BUILT` (:107) and `McpLanguageNotBuiltException` (:139): a `McpUserException`,
  so the existing boundary turns it into a classified envelope with `details`.
- `readinessOf(concept, project)` (:3153): resolves the declaration (runtime `sourceNode`, or the
  structure-model lookup **only for an invalid concept**) and delegates to the classifier.
- `addHollowDescriptorMarker` (:3722) now takes the project and uses the classifier; `isHollowDescriptor`
  (the old heuristic that conflated "no runtime" with "stale descriptor") is **deleted**.
- `hollowRuntimeConcepts` (:3749): the post-make read-back for `CREATE_CONCEPTS`, now a readiness check.
- `checkScaffoldingStaleness` (:3800): thin wrapper mapping readiness to the scaffold's `Stale/Fresh`
  result; the old three-branch body is gone. `Undeclared` reads "unknown to the runtime and not declared in
  any structure model".
- `ensureLanguageRuntime` (:4128): the staged recovery shared by `scaffold_editor` and `CREATE_CONCEPTS`
  (module rebuild at once for `NoRuntime`; model make → verify → module rebuild otherwise).
- `nodeInfoJsonObject` (:1438): `conceptLoaded = n.concept.isValid`; an unloaded concept's node reports its
  stored `name` property and `conceptLoaded:false` instead of `"<Concept> (concept is not found)"`.
- `conceptInfoJsonObject` gained `markReadiness` so callers that already classified do not pay twice.

## Stop 4 — the read tools (review)

`.../JetBrainsMPSLanguageMcpToolset.kt`

- `mps_mcp_get_concept_details` body (:170–300): the `conceptRefs` loop records each concept's declaration;
  the `languageRefs` loop builds the **union** of `runtime.concepts` and the structure model's concept roots
  (:223) and no longer reports an unbuilt project language as unresolved; the record loop (:237) classifies
  each concept and chooses `declarationRecordJsonObject` for `NoRuntime`/`ConceptNotInRuntime`, the runtime
  record otherwise; markers, one warning per affected language (`Stale` excluded) and
  `details.languageBuild` / `languageBuilds` are assembled at the end. `undeployedLanguageDiagnostic` and
  the `undeployed` branch of `buildUnresolvedDetailsJson` are deleted (D35's "or pass FQN conceptRefs"
  advice was the trap).
- Declaration record builders (:836–1035): `declarationRecordJsonObject`, `declarationShapeJsonObject`,
  `declarationFullJsonObject` = `declarationInfoJsonObject` + feature blocks + sample node. Field names
  mirror the runtime builders exactly; compare side by side with `conceptInfoJsonObject`,
  `conceptPropertiesJsonArray`, `conceptLinkJsonArray`, `conceptSampleJsonObject`.
- `search_concepts`: `languagesInProjectScope` / `languagesInProject` add the project's own `Language`
  modules (:1270) so an unbuilt language is searchable; `conceptsWithDeclarations` (:1313) is the union per
  language, restricted to languages in the current project; `conceptMatchText` reads alias/description
  off the declaration; `searchResultJsonObject` (:1156) classifies the hit and uses the declaration summary
  / info record when unserved. The `"self-reveals"` comment and the shape projection's missing marker are gone.
- The `@McpTool` description: two sentences replaced (`languageRefs` union; declaration-read records).

## Stop 5 — the writer gate (review)

`.../common/AbstractNodeOps.kt`

- `ConceptGate` (:147–195): one instance per tool call; `declarationOf` caches the declaration (structure
  lookup only for invalid concepts); `require` (:160) throws for `NoRuntime`/`ConceptNotInRuntime` via
  `ofIgnoringStaleness`; `staleFeature` (:169) is the Stale feature-miss handler described in Stop 1.
- Gate sites: `createNode` (:429, before the language import and before the dry-run branch, so a dry run
  refuses identically and a refused write leaves no import), the root rewrite (:1121), `typeOperandNode`
  (:994, used by `query_types`), `addNodeChild` (:1348), `replaceNodeChild` (:1457), `update_node_reference`
  (:1562). Feature-miss sites: properties (:496, :1141), reference roles (:529, :1209), child roles
  (:588, :1176), plus the role lookups at :1459 and :1564.
- `instantiationFailed` (:849) keeps `LANGUAGE_NOT_BUILT` instead of flattening every failure to
  `INVALID_REQUEST`. `createNode` still skips a `name` silently for a concept without one (a per-node warning
  flooded `print_node` round-trips); `create_root_node` warns.

Other toolsets are call-site threading of the same gate: `JetBrainsMPSRootNodeMcpToolset.kt` (:361 batch
insert shares one gate; :455 `create_root_node`; the root-name search matches an unloaded root by its
stored name), `JetBrainsMPSNodeMcpToolset.kt` (:1614 SET PROPERTY, :1704 MOVE_CHILD, :1878
MOVE_NODE_TO_PARENT), `JetBrainsMPSJavaMcpToolset.kt` (:499 parent role), `JetBrainsMPSTypesMcpToolset.kt`
(:409 COERCE, :596 node operand, :621 concept operand), `JetBrainsMPSConsoleMcpToolset.kt` (passes the
project so console blueprints are gated), `references/AssignableReferenceService.kt` (:58, with a
`declarationOf` lambda supplied by the structure toolset at :322 because the service cannot reach the
resolver itself).

## Stop 6 — the tools that build

`.../JetBrainsMPSLanguageStructureMcpToolset.kt` (:774–815): `CREATE_CONCEPTS make:true` classifies the
module (`ofLanguage`) and calls `ensureLanguageRuntime` with the created concepts as the verification;
`makeStatus`, `recoveryStage`, `hollowConcepts` keep their names.
`.../JetBrainsMPSEditorMcpToolset.kt` (:184–220): `scaffold_editor`'s pre-make plan is the classifier; the
self-heal was model-scoped only and now uses the staged helper (a never-built language needed the module
rebuild).

## Stop 7 — tests (what pins the behaviour)

- `LanguageReadinessTest` (new, registered in `McpLanguageToolsTestSuite`): classifier states on the
  never-built fixture language, `Ready`/`Undeclared` on bundled concepts, the parity test, the `query_types`
  refusal, and SET PROPERTY refusal + `conceptLoaded:false` for a node created through the SNode API.
- `JetBrainsMPSLanguageMcpToolsetIntegrationTest`: the D20 test now asserts declared *content* and markers
  for `full` and `shape`; the two D35 `languageRefs` tests now expect declaration records instead of
  `NOT_FOUND`; a new search-union test; the project-scope subset test admits the project's own languages.
- Writers: `JetBrainsMPSRootNodeMcpToolsetIntegrationTest` (:713, :730, :748, :788),
  `JetBrainsMPSNodeMcpToolsetIntegrationTest` (:44), `ProjectResolutionCrossProjectTest` (two tests now
  expect the refusal naming the intended project's language, which still pins the resolution they test),
  `McpIntegrationTestBase.expectLanguageNotBuilt` (:309). `JetBrainsMPSLanguageStructureMcpToolsetIntegrationTest`'s
  `AspectFixture` adds its quoted node through the SNode API, because a blueprint of an unbuilt concept is
  now refused — a behaviour change worth knowing when authoring typesystem rules of a fresh language.
- `ScaffoldEditorStalenessTest` and `JetBrainsMPSEditorMcpToolsetIntegrationTest`: wording updates.

Gate results on 2026-10-27: the final full `McpToolsIntegrationTestSuite` run on the finished tree is
1374 started / 1374 finished / 0 failed (earlier rounds: 1371 with 5 failures, 1374 with 3, then the
`MCP_TESTS` subsets 559/559 and 5/5 while the last fixes landed).

## Stop 8 — docs and skills

Blueprint tree `plugins/mcp-tools/resources/jetbrains/mps/agents/mcp/skills/`, byte-identical copies in
`.agents/skills` and `.claude/skills`:
- new `mps-language-analysis/references/language-readiness.md` (the text moved out of
  `concept-details.md`, which was over its byte budget; `SKILL.md` links it);
- `mps-mcp-workflow/references/reference-formats/response-envelope.md` (`LANGUAGE_NOT_BUILT`, writer list,
  `languageBuilds`), `mps-mcp-workflow/SKILL.md` and `references/mcp-tools-index.md`,
  `mps-dsl-memory/SKILL.md`, `mps-node-editing/references/troubleshooting.md`,
  `mps-aspect-structure-concepts/.../create-concepts.md`.
- `study/docs-defects.md` D112 row marked fixed; `docs/d112-language-readiness-plan.md` status updated.

## What is deliberately not in this change

Auto-building inside a writer call (design §4.7), declaration-based validation of dry runs (follow-up B),
and the S8/S1/S2 re-measure.
