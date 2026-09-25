# D51/D52 — next-step hints on concept-assignability errors: implementation task list

Plan: `plugins/mcp-tools/docs/d51-d52-assignability-hints-plan.md` (section numbers below refer to it).
Branch `261/vaclav/MCP2`, worktree `/Users/vaclav/work/MPS/myMPS-fix`, base commit `380fa156d3b3`.
Started 2026-09-25.

Paths: `SRC` = `plugins/mcp-tools/src/jetbrains/mps/agents/mcp/tools`, `TEST` =
`plugins/mcp-tools/test/jetbrains/mps/agents/mcp/tools`, `SKILLS` =
`plugins/mcp-tools/resources/jetbrains/mps/agents/mcp/skills`.

Ground rules: no `.mps` edits (pure Kotlin + docs; the MPS MCP server is not needed); no tool-description
edits (§6); do not reformat whole files with IDEA `reformat_file`; one test suite at a time; commit only
when asked.

## 0. Preconditions

- [x] Working tree clean at `380fa156d3b3`.
- [x] APIs the plan names exist: `ModelDependencyResolver.usedLanguages`,
      `SLanguageHierarchy(registry, langs).getExtendedLangs(ErrorHandler)`,
      `ConceptDescendantsCache.getDescendants`, `ConceptRegistry.getConceptProperties(..).isDeprecated()`.
- [x] Skill docs targeted in §6 exist; note `mps-console/references/mcp-insertion.md` is 12,196 B, just
      under the 12,288 B reference budget, so any addition there must be tiny or go elsewhere.

## 1. Response shape (§3) — `common/AbstractOps.kt`

- [x] Add `class AssignabilityHint(val lines: List<String>, val details: Map<String, Any?>)` next to
      `AssignabilityException`.
- [x] Move `getCardinality` and `structureQualifiedName` into the `AbstractOps` companion (`internal`), so the
      hints object can reuse them; subclass call sites unchanged.
- [x] `AssignabilityException` gains `val hint: AssignabilityHint? = null`; message = unchanged 5-line body
      + each hint line on its own line; `errorDetails = hint?.details ?: emptyMap()`; code stays
      `INVALID_REFERENCE`.

## 2. Plumbing (§3 "Plumbing") — forward `details` through the rewrap sites

- [x] `AbstractNodeOps.instantiationFailed(prefix, e, warnings)`: rethrows cancellation, returns
      `errJson("$prefix: ${e.message}", INVALID_REQUEST, (e as? McpUserException)?.errorDetails, warnings)`.
- [x] Use it at `JetBrainsMPSRootNodeMcpToolset.kt` (~374, insert_root_node_from_json).
- [x] Use it at `AbstractNodeOps.replaceNodeChild` (~674).
- [x] Use it at `AbstractNodeOps.addNodeChild` (~801).
- [x] Use it at `JetBrainsMPSConsoleMcpToolset.kt` (~116); this also starts forwarding its warnings.

## 3. Throw-site factory (§4) — `common/AbstractNodeOps.kt`

- [x] `assignabilityFailure(jsonPath, actual, expected, parentConceptName, role, hint: () -> AssignabilityHint?)`:
      builds the exception; the hint lambda runs best-effort (a failure is logged and dropped, never
      replaces the assignability error; cancellation rethrown).
- [x] Route all five throw sites through it: nested child in `instantiateNode` (~328, wrapper),
      `validateReferenceTarget` (~453, target), top-level child in `updateNodeFromBlueprint` (~533,
      wrapper), `replaceNodeChild` (~679, wrapper), `addNodeChild` (~808, wrapper).
- [x] Wrapper sites pass the target `SModel` and parent concept so the hint can scope by used languages.

## 4. Structure-declaration helpers (§2b.1) — `languages/StructureDeclarations.kt`

- [x] Move `superConceptDeclarations`, `intfcTargets`, `genuineLink` out of
      `java/ConceptBehaviorJavaParseAdapter.kt` into an `internal object StructureDeclarations`.
- [x] `ConceptBehaviorJavaParseAdapter` calls the moved functions; behavior unchanged.

## 5. Wrapper hint (§2a) — `common/AssignabilityHints.kt`

- [x] Pool: `ConceptDescendantsCache.getInstance().getDescendants(E)`.
- [x] Scope: `used ∪ getExtendedLangs(used, silent handler) ∪ {A.language, E.language, parent.language}`.
- [x] Keep `(W, L)`: `W` is a non-abstract `SConcept`; `L ∈ W.containmentLinks`, `L.owner != BaseConcept`,
      `L.targetConcept != BaseConcept`, `A.isSubConceptOf(L.targetConcept)`.
- [x] Deprecation: skip `W` whose `ConceptPresentation.isDeprecated()` (before counting).
- [x] Completeness: every other non-BaseConcept containment link and every reference link of `W` optional;
      per `W` prefer a complete `L`.
- [x] Fallback: no complete wrapper and 1–3 incomplete → emit those with their missing mandatory roles.
- [x] Dedup: drop `(W', L)` when `L.owner != W'` and a kept candidate `(W, L)` has `W' ⊑ W`.
- [x] Rank: canonical name (`L.target.name + E.name`), language ∈ {A, E}, fewest other containment links,
      hierarchy distance `A → L.target`, name.
- [x] Caps: > 25 survivors → no hint; details ≤ 8; text ≤ 3 names, paste shape for the first only.
- [x] Render lines and details exactly as §3 (single, several, fallback); word it "structurally accepts".

## 6. Reference-target hint (§2b) — `common/AssignabilityHints.kt`

- [x] `T` is an `AbstractConceptDeclaration`: BFS over `T` and its super declarations, collect
      `propertyDeclaration`/`linkDeclaration` children that are instances of `E`, skip the BaseConcept
      declaration; own features first, then inherited by BFS level; link lines carry metaclass +
      cardinality (from `genuineLink`).
- [x] Any other `T`: DFS descendants that are `E` (skip `smodelAttribute`, ≤ 2,000 visited, keep 8) + the
      nearest `E` ancestor.
- [x] Caps: ≤ 10 lines in text; above that point at `mps_mcp_get_concept_details` on `T`'s concept.
- [x] Details `targetCandidates: [{name, concept, declaredIn, reference}]` + `targetCandidatesTotal`.

## 7. featureId rejection (§2c) — `common/AbstractNodeOps.kt`

- [x] Recognize `<uuid>/<long>/<long>` at the top of `resolveReferenceTarget` (add an `errorPath` param;
      both callers pass theirs).
- [x] Look the feature up on its concept (property, containment link, reference link); throw
      `McpInvalidReferenceException` naming kind, name, concept and the declaration's `sourceNode`.
- [x] Hollow/unknown concept → generic "this is a featureId; pass the declaration's `sourceNode`".

## 8. Compile and inspect

- [x] `get_file_problems` clean on every touched Kotlin file.
- [x] `build_project` (mcp-tools module) green.

## 9. Unit tests (§5) — `TEST/unit/AbstractOpsPropertyProblemsTest.kt`

- [x] Hint lines appended after the unchanged 5-line body.
- [x] `toolFailure` puts `hint.details` into `details`.
- [x] `instantiationFailed` forwards details and warnings (the console site's only coverage).
- [x] The two existing assignability tests unchanged and passing.

## 10. Integration tests (§5) — new `TEST/integration/AssignabilityHintIntegrationTest.kt`

- [x] Register it in `McpToolsIntegrationTestSuite.java`.
- [x] `McpIntegrationTestBase.createConceptRoot`/`createConceptBehaviorRoot` gain `propertiesJson` (D52 fixture's
      own property).
- [x] T1 D51 via `insert_root_node_from_json`: `INVALID_REQUEST`, 5 facts, `wrapperCandidates[0]` =
      `GenericNewExpression`/`creator`, no `NestedNewExpression`; applying the shape → `ok`.
      `AnonymousClassCreator` and `SNodeCreator`: one candidate each.
- [x] T2 `IntegerConstant` ADD CHILD into `StatementList.statement`: `[0]` = `ExpressionStatement`, no
      `IfStatement`.
- [x] T3 `InstanceMethodCallOperation` into `ReturnStatement.expression`: single `DotExpression` with
      `alsoRequired` = `operand`; `ClassifierType` there: no `details`.
- [x] T4 `PublicVisibility` into `ReturnStatement.expression`: message identical to today, no `details`.
- [x] T5 D52 via ADD CHILD of a behavior method whose `SPropertyAccess.property` targets the concept:
      `…lang.core.structure)/1169194664001` present, `shortDescription` absent, own property first.
- [x] T6 same D52 case via `update_node SET/REFERENCE` (`INVALID_REFERENCE`).
- [x] T7 SET CHILD replacing a `ReturnStatement` whose `expression` is D51's creator: details present.
- [x] T8 `parse_java_and_insert` `class A { void m() { int x = 0; } }`, `VariableReference` → statement:
      candidate is `x`'s `LocalVariableDeclaration`.
- [x] T9 featureId of `INamedConcept.name` as blueprint ref and SET/REFERENCE, dry and non-dry: rejected,
      names `…)/1169194664001`, nothing stored; `INVALID_REQUEST` (blueprint) / `INVALID_REFERENCE` (SET).
- [x] Check no other test JVM (`pgrep -fl '[b]in/java.*JUnitStarter'`), run `McpToolsIntegrationTestSuite`,
      read `testFailed` entries; re-run once before blaming a lone unrelated failure. First run: 1,020 finished,
      0 failed, 0 ignored.

## 11. Docs (§6)

- [x] Blueprint edits: `SKILLS/mps-node-editing/references/troubleshooting.md`,
      `SKILLS/mps-baselanguage/references/troubleshooting.md`,
      `SKILLS/mps-mcp-workflow/references/node-editing-rules.md`,
      `SKILLS/mps-console/references/mcp-insertion.md` (budget! now 12,256 B of 12,288).
- [x] Propagate each changed skill folder to `.agents/skills/` and `.claude/skills/`.
- [x] `python3 plugins/mcp-tools/scripts/validate_skill_catalog.py SKILLS` passes (32 skills, 417 files, 4 scripts).
- [x] `SkillCatalogReplicationTest` / `SkillReferenceLayoutTest` pass (part of the suite run).

## 12. Re-measurement support (§6) — `plugins/mcp-tools/study/scripts/analyze_runs.py`

- [x] Add `assignability_errors`, `assignability_hinted`, `assignability_recovery_calls`.
- [x] Also `assignability_unrecovered`: a rejection fixed through another tool/kind (baseline
      `S1-sonnet-1:79` SET/REFERENCE → SET/CHILD at `:87`) would otherwise read as 0 recovery calls.
- [x] Smoke-run the script on an existing run directory; numbers present, nothing else changed (current
      runs: 0 existing cells changed, no rejections; baseline runs: `S1-sonnet-1` 1 error, 0 hinted, 0 calls,
      1 unrecovered; synthetic window check `(4, 1)`).

## 12b. Review follow-ups (reviewer subagent, 2026-09-25; no correctness bug above low severity)

- [x] A featureId-shaped string whose number overflows a long threw `NumberFormatException` (→ `INTERNAL_ERROR`
      on SET REFERENCE): numbers are now parsed with `toLongOrNull`, failure → the generic featureId message;
      covered in the SET REFERENCE featureId test.
- [x] `targetCandidatesTotal` on the nearby path was capped at 9: the DFS now counts every match within the
      2,000-node bound and prints `… N more`.
- [x] Scope also closes over the extended languages of the concepts involved, not only of the model's.
- [x] Docs: `details.wrapperCandidates` holds up to 8 (`wrapperCandidatesTotal` has the count); the featureId
      error names the `sourceNode` only when the feature's language is built; `Target '…' is …` pattern.
- [x] New tests: `update_root_node_from_json` top-level child (`StaticInitializer.statementList`), staged
      reference target (nearby ancestor) and staged featureId; `… 2 more` past 10 features; link candidate
      `metaclass`/`cardinality`; explicit `extends BaseConcept` so the BaseConcept skip is exercised;
      `test_analyze_runs.py` case for the assignability columns (20/20 pass).
- [x] Minor: test comment 16 → 10 incomplete wrappers in scope, a double blank line, lines over 150 chars.
- [x] Kept: `instantiationFailed` rethrows cancellation, as `toolFailure` and the console site already did.
- [x] Final `McpToolsIntegrationTestSuite` run on the reviewed code: 1,023 finished, 0 failed, 0 ignored (14 in
      `AssignabilityHintIntegrationTest`). A second review of these fixes found nothing to change; its one cosmetic
      note ("… N more" read as more ancestors) became "… N more descendants", compiled after that run.

## 13. Wrap-up

- [x] Plan status line → implemented (date, commit left to the user).
- [x] Report: what was done, what was validated, what was skipped and why.
