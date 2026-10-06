# Type queries for agents — `mps_mcp_query_types`, `GET_EXPECTED_TYPE`, rule-aware problem reports

Status: plan, 2026-10-05, settled after two Opus review rounds (recorded at the end). Builds on `query-nodes-get-type-plan.md` (GET_TYPE, implemented, uncommitted).

## Motivation

GET_TYPE answers "what is the type of this node". Everything else an agent asks about types still has to be answered by reading the typesystem aspect and simulating the engine by hand. A recorded session against `jetbrains.mps.samples.Expressions` needed two tool rounds and five `SubtypingRule` printouts to decide `Int <: Float`, and was right only because every rule was a plain `SubtypingRule`. An `InequationReplacementRule`, a `ComparisonRule` or an `isApplicable` closure in an `OverloadedOpRulesContainer` cannot be evaluated by reading; the engine must run them.

Live probes against the open MPS (2026.1, build 261.25134) on that sample showed:

- GET_TYPE on `var E = 10` answers `Float`: the solver combined `typeof_SimpleMathVarDeclaration` with the later `E := D`. No rule reading produces that. It also works on a root no editor has open (`Simple`), and on a node under a `BaseCommentAttribute`.
- `mps_mcp_check_root_node_problems` on the sandbox root `TypeError` (`Int anotherInt = 1.3 F`) answers `no problems found` because the wrapper is commented out. An agent using that root to learn whether `Float` fits `Int` gets a false "yes".
- `mps_mcp_query_structure LIST_CONCEPT_ASPECTS` on `SimpleMathIntegerType` lists `typeof_SimpleMathIntegerConstant` and `SimpleMathOperations` with `targetsConcept: SimpleMathIntegerType`. They only *quote* that type. The field is computed by find-usages (`JetBrainsMPSLanguageStructureMcpToolset.kt:1489-1503`), so for typesystem roots it is wrong whenever a type is quoted, which is nearly always.
- A type error's report item is a `TypesystemReportItemAdapter` whose `getRuleId()` (`core/kernel/.../TypesystemReportItemAdapter.java:61-72`) points into the rule that reported it — at the reporting statement, not the rule root: generated rules build `EquationInfo(node, null, "<typesystem model>", "<statement id>", …)` (`typeof_VariableDeclaration_InferenceRule.java:40`) — but `problemJsonObject` (`AbstractOps.kt:1801`) emits only `severity`, `message`, `quickFixes`.

The engine API that answers these questions exists and `mcp-tools` already depends on its modules (`typechecking`, `typesystemEngine` — `mcp-tools.iml:32,34`):

| question | API |
|---|---|
| is A a subtype of B / comparable with B | `TypecheckingFacade.isSubtype`, `isStrongSubtype` (`TypecheckingFacade.java:81-92`); `SubtypingManager.isComparable` (`SubTypingManagerNew.java:149-157`) |
| supertypes of a type | `TypecheckingFacade.getImmediateSupertypes` → `SubtypingManager.collectImmediateSupertypes` (`LegacyTypecheckingProvider.java:192-195`) |
| common supertype of several | `SubtypingManager.leastCommonSupertypes` (`SubTypingManagerNew.java:183-189`) |
| view a type as a given type concept | `TypecheckingFacade.coerceType` / `strongCoerceType` (`:99-122`) |
| result type of an overloaded operation | `TypeCheckerHelper.getOperationType(operation, left, right, warningProducer)` (`TypeCheckerHelper.java:82-84`) |
| what type the context expects of a node | `TypecheckingFacade.getInferredType` → `InequalitySystem.getExpectedType` (`LegacyTypecheckingProvider.java:167-171`, `InequalitySystem.java:130-141`) |
| why a node has its type | `TracingTypecheckingContext(root, helper).checkRootInTraceMode(true); getOperation()` (`TypecheckingContextTracker.java:38-42`, devkit) — the operation tree carries `getPresentation`, `getSource`, `getRule` (an `SNodeReference`), `getConsequences` (`AbstractOperation.java:55-95`) |

## Scope

Six deliverables, A–F, plus docs (G) and tests (H). A and B are the core; C–E are small and independently shippable; F is a bug fix.

### A. New tool `mps_mcp_query_types` (new toolset `JetBrainsMPSTypesMcpToolset : AbstractNodeOps()`)

Registered next to the others in `plugins/mcp-tools/META-INF/plugin.xml:14-26`. Same `operation` + `parameters: JsonOrText` + `maxInlineBytes` shape as `mps_mcp_query_nodes`, with a `TypesQueryOperation` enum and a `ParameterKeys` table per operation (`McpToolInputSchemas.kt:114-121`), so unknown keys are rejected the same way. Every operation runs under `withMpsProject` + `executeShortReadOnEdt` (`AbstractOps.kt:2729`), the executor GET_TYPE uses: the facade hands out the `WorkbenchTypecheckingController` on the EDT (`TypecheckingFacadeComponent.java:57-60`), and the 30 s modal timeout stays.

**Type operands.** A type is a free-floating node (GET_TYPE plan, "no reference"), so an operand is a JSON object with exactly one of:

| key | meaning | how it becomes an `SNode` |
|---|---|---|
| `nodeReference` | the type *of* that node (an expression, a declaration) | `TypecheckingFacade.getTypeOf(node)`; `null` or a bare variable (`TypesUtil.isVariable`) → `INVALID_REQUEST` "node has no type", naming the operand |
| `typeNodeReference` | a stored type node used as the type itself — a field's `type` child, a quotation's type, a `SimpleMathTypedVarDeclaration.type` | resolve and use as is, attached; no copy. Safe because `typeJsonObject` strips node-record `reference`s, so even COERCE handing the same node back emits no reference. Needed because type nodes have no inference rule of their own (BaseLanguage has no `typeof_*Type`), so `nodeReference` on them answers "no type" |
| `typeConceptRef` | a parameterless type | resolve the concept (same resolver as `conceptRef` in `query_structure`), `SModelOperations.createNewNode(null, null, concept)` (a valid free node, `SModelOperations.java:102-117`); rejected with `INVALID_REQUEST` when the concept is abstract, an interface, or declares a child **or a reference** with cardinality `1`/`1..n` — `ClassifierType` has no mandatory child but a mandatory `classifier`, and would otherwise arrive without one and degrade silently. Then a `blueprint` is required. Covers the SimpleMath types and BaseLanguage `PrimitiveType`s |
| `blueprint` | a type with structure (`ClassifierType` with `classifier`, `ArrayType` with `componentType`) | a dedicated, strict `typeOperandNode(blueprint, repository)` builder placed in `AbstractNodeOps` so it can reuse the model-free private helpers there (see below). Not `instantiateNode`: that needs a non-null `SModel` for reference resolution and failure messages (`AbstractNodeOps.kt:425-437, 578-584`) and on its dry-run path a non-resolving target is only a *warning* that leaves the reference unset (`:606, :610`), which is exactly the silent degrade to avoid. The blueprint GET_TYPE emits must round-trip unchanged |

`typeOperandNode(blueprint, repository, jsonPath)`, recursive:

- Reject a `conceptLoaded:false` record (`rejectUnloadedConceptRecord`, `AbstractNodeOps.kt:795`) and any `declared:false` property or role entry (`isMarkedUndeclared`, `:761`); reject `featureId`/XML-style references (`failIfFeatureIdIsUsed` `:651`, `failIfXMLReferenceIsUsed` `:529`).
- Concept: `conceptReference` first, then `concept` name, the resolver `createNode` uses (`:349-360`). Node: `SModelOperations.createNewNode(null, null, concept)`, so behaviour constructors run; the blueprint's roles then replace whatever a constructor put there, as `fillChildren` does (`:476-478`).
- `name`: set only when the concept declares `INamedConcept.name` — GET_TYPE always emits `name` (falling back to the presentation) even for `ClassifierType`, and `createNode` ignores it in that case (`:366-372`).
- Properties: `setProperty` (`:1557`, already `protected`).
- References: only `targetReference` persistent refs, resolved with `resolveReferenceTarget` (`:635`, returns null for a plain name) and checked with `validateReferenceTarget` (`:681`); a plain `target` name, a `JsonNull` target (what `print_node` writes for an unresolved link, `AbstractOps.kt:1957`), or a non-resolving ref → `INVALID_REQUEST` naming the JSON path. A reference *into the type itself* round-trips as `null/<id>` and cannot be rebuilt; the docs name that limit.
- Children: role must exist on the concept and the child concept be assignable to it (plain message, not `childAssignabilityFailure`, which needs a model, `:695`); more than one node in a single-valued role → `INVALID_REQUEST`.

The private helpers named above are widened to `protected` or called from inside `AbstractNodeOps`; none of them takes an `SModel`.

Error-code split, deliberate: an unresolvable `nodeReference`/`typeNodeReference`/`operatorNode` is `NOT_FOUND` (an existing node the agent named does not exist); a malformed or non-resolving *blueprint* is `INVALID_REQUEST` (the agent's input is wrong).

Operand positions: `type` (one), `sub`/`super` (IS_SUBTYPE), `types` (array, COMMON_SUPERTYPE), `left`/`right` (OPERATION_TYPE). A detached operand is safe in the facade: its containing root is itself, no editor session matches, and the on-demand `TargetLegacyTypecheckingQueries` answers (`WorkbenchTypecheckingController.java:72-85`, `DefaultTypecheckingController.java:100-115`).

Subtyping on detached operands is sound: `SubTypingManagerNew.calcIsSubtype` derives its language scope from the operand nodes themselves (`collectLanguagesRecursively`, `:65-70, 190-196`), not from a model. Note the asymmetry: `collectImmediateSupertypes` runs in the *global* language scope (`:131-145`), so SUPERTYPES can list a supertype from a language IS_SUBTYPE does not consult; the docs say so.

**Engine access.** `helper = TypecheckingFacade.getFromContext().getData(TypeCheckerHelper.class)`, fetched once per call: on the EDT it goes `TypecheckingFacadeComponent.java:143-144` → `activeController().getData` → `DefaultTypecheckingController.getDataContainer` (`computeIfAbsent`, `:117-125`), the same path `TypeChecker.getTypeCheckerHelper()` takes, and a helper fetched earlier in the call stays usable even if the on-demand session is re-created (`DataContainer.dispose` only prints a tracer report, `LegacyTypecheckingProvider.java:470-473`). `helper.getSubtypingManager()` and `helper.getOperationType(…)` serve SUPERTYPES, COMMON_SUPERTYPE and OPERATION_TYPE; `TracingTypecheckingContext(root, helper)` serves EXPLAIN_TYPE. `TypeChecker.getInstance()` is not used.

**Shared output.** Every type in an answer is the GET_TYPE object `{concept, conceptReference, presentation, hasTypeVariables?, blueprint}` with node-record `reference`s stripped. Extract `opGetType`'s body into `AbstractNodeOps.typeJsonObject(type, mpsProject)` and have both callers use it.

**Operations.**

| op | keys | `data` |
|---|---|---|
| `IS_SUBTYPE` | `sub`, `super` | `{isSubtype, isStrongSubtype, isComparable, sub:<type>, super:<type>}`. `isSubtype` is the weak check (the one the checker uses for `:<=:`); `isStrongSubtype` the `:<<=:` one (`LegacyTypecheckingProvider.java:181, 187`); `isComparable` is `SubtypingManager.isComparable(sub, super, weak=true)` (`SubTypingManagerNew.java:149-157`), which is true when a `ComparisonRule` says so **or** a replacement rule or plain subtyping holds in either direction — so it is always true when `isSubtype` is, and `isComparable:true` alone is not evidence that a `ComparisonRule` fired; the docs say exactly that. The facade's `convertsTo` is byte-identical to `isSubtype` (`:174-182`) and is not emitted |
| `SUPERTYPES` | `type`, optional `depth` (default 8, max 32), `weak` (default true) | `{type:<type>, immediate:[<type>], transitive:[{type:<type>, depth}]}`. BFS over `getImmediateSupertypes`; a visited set keyed by `TypesUtil.match` (structural) keeps it finite on cyclic lattices; `details.truncated:true` when the depth cap stops it. For the sample: `Int → [Long, Number]`, then `Float`, then `Element` — the whole excerpt in one call. `weak=false` uses `SubtypingManager.collectImmediateSupertypes(type, false)` on `helper.getSubtypingManager()`, since the facade only offers the weak form |
| `COMMON_SUPERTYPE` | `types` (array ≥ 2) | `{types:[<type>], result:[<type>]}` from `helper.getSubtypingManager().leastCommonSupertypes(set, true)`; a set because a lattice can have several. No `weak` key: the implementation ignores the flag and always runs weak (`SubTypingManagerNew.java:183-189`, `SubtypingUtil.java:72-79`). The checker's own `createLeastCommonSupertype` additionally meets the result (`SubtypingUtil.java:81-89`); the raw set is returned and the doc says a `:>=:` solution may be the meet of these |
| `COERCE` | `type`, `conceptRef` (a concrete `SConcept`; an interface concept is `INVALID_REQUEST`), optional `strong` (default false) | `{coerced:<type>|null}` from `coerceType` / `strongCoerceType`. The BaseLanguage use: coerce an expression's type to `ClassifierType` to read `classifier.targetReference`, then list members with `print_node` |
| `OPERATION_TYPE` | `operatorNode` (a node reference) **or** `operatorConceptRef`, plus `left`, `right` (keys named so they cannot be confused with the tool's own `operation` argument) | `{type:<type>|null}` from `TypeCheckerHelper.getOperationType(op, l, r, warningProducer)` (`TypeCheckerHelper.java:82-84`, public, not deprecated; `RulesManager`'s 3- and 4-argument overloads are `@Deprecated(forRemoval)`, `RulesManager.java:218-226`). The helper is `helper` below. A rule conflict reaches the producer as `(modelId, nodeId)` — BaseLanguage's generated providers do call it (`baseLanguage/typesystem/TypesystemDescriptor.java:1533, 1572, 1606`) — and is resolved into the same `{rule, ruleReference, statement}` shape as C under `warnings`. With `operatorConceptRef` the operation is a detached instance, so an `isApplicable` closure that reads the operation's properties (e.g. an `operator` property) sees defaults; the answer carries `warnings: ["operator is a detached instance; rules reading its properties see default values — pass operatorNode for an exact answer"]`. `null` means no rule applied, which is exactly the case where `typeof_ArithmeticSimpleMathExpression` reports "Operator cannot be applied" |
| `EXPLAIN_TYPE` | `nodeReference`, optional `includeApplyRule` (default false), `includeExpansion` (default false), `maxRootNodes` (default 2000) | see D. Node → fact like GET_TYPE, but it has its own keys and a full-root cost, so it lives here; both tool descriptions name the other's type operations so an agent finds `GET_TYPE`/`GET_EXPECTED_TYPE` from this tool and vice versa |

Failures: unresolvable references → `NOT_FOUND`; malformed operands → `INVALID_REQUEST` naming the operand key; a `Throwable` from a user rule → `ok:false` via `withMpsProject` (`AbstractOps.kt:642`), unchanged.

### B. `GET_EXPECTED_TYPE` in `mps_mcp_query_nodes`

Node → fact, so it sits with GET_TYPE: add to `MPSQueryOperation`, `queryNodesParameterKeys` (`NODE_INFO_KEYS`), both dispatch `when`s, `opNodeInfoRead`, the KDoc, the tool description and the `operation` description — the same seven edits the GET_TYPE plan lists. Body: `TypecheckingFacade.getFromContext().getInferredType(node)`, then the same `null`/bare-variable collapse and `typeJsonObject`.

Semantics to document (not obvious from the name). `getInferredType` builds a fresh `HoleTypecheckingContext` on the node's parent (`LegacyTypecheckingProvider.java:167-171`, `TypeCheckerHelper.java:86-91`, `HoleTypechecking.java:43-56`), collects the inequalities the context puts on the node, and answers `InequalitySystem.getExpectedType` (`InequalitySystem.java:130-141`): the least common supertype of the `:<=:` / `:<<=:` upper bounds, or of the comparable bounds when there are none, then met. So: one upper bound → that type; several → their LCS, which a replacement must fit but is not "the" required type; a slot constrained only by `:==:` → `null`, because `myEquals` is not consulted; a root → `null` (`SimpleTypecheckingComponent.java:282-285`). It never reads the editor's incremental session, so there is no open-editor variant to document. On the generator path (`:447-450`) it is a different thing (`getTypeOf_generationMode`); the tool never runs there. It needs an existing node: for an empty slot the agent asks about a sibling or the node it intends to replace. This is what `has expected type` in `NodesTestCase` asserts (`CheckTypesAction.java:68`).

### C. `rules` on every problem of `mps_mcp_check_root_node_problems`, and unchecked subtrees

In `problemJsonObject(item, repo)` (`AbstractOps.kt:1801`): when `item is RuleIdFlavouredItem` and `getRuleId()` is non-empty, add `rules: [{rule, ruleReference, statement}]`, one entry per `TypesystemRuleId.getSourceNode()` that resolves — `statement` is that node (the reporting `error`/inequality statement inside the rule), `ruleReference` its `containingRoot`, `rule` the root's name. `TypesystemReportItemAdapter.java:61-72` also appends `getAdditionalRulesIds()`, the rules an inequality was nested in; keep them, order preserved, first is the reporting rule. `ConstraintsReportItem` and `OutOfScopeReferenceReportItem` implement the same interface, so constraint and scope problems gain the field for free. Key omitted when empty, like `quickFixes`.

Unchecked subtrees: `BaseCommentAttribute` implements `IDontApplyTypesystemRules`, `ISkipConstraintsChecking`, `ISuppressErrors`, `ICommentedOutFromScope` (`languages/core/core/source_gen/jetbrains/mps/lang/core/structure/StructureAspectDescriptor.java:194-197`); the typesystem skips such subtrees in `SimpleTypecheckingComponent.java:219` and `NonTypeSystemComponent.java:313` via `TypeSystemUtil.shouldApplyTypeSystemRules`, the constraints checker in `AbstractNodeCheckerInEditor.java:22-28`. Structure and scope checkers still run. So: count the root's descendants (`SNodeUtil.getDescendants`, which walks attribute children too, `DescendantsTreeIterator.java:72, 106`; Kotlin `count()`, not `size`) whose concept `isSubConceptOf` `IDontApplyTypesystemRules` or `ISkipConstraintsChecking` — only the **outermost** ones, i.e. with no such marker among their ancestors, so a comment nested in a commented-out subtree is one subtree, not two — not instances of `BaseCommentAttribute` specifically (`lang.text`'s `NodeWrapperElement` and the console `History` carry the same markers, hence the "e.g." in the message), and when > 0 add `uncheckedSubtrees: N` to the root summary (`JetBrainsMPSNodeMcpToolset.kt:1163`) and to the per-root rows — `warnings` is already an integer count there (`:1111, :1170`), hence the distinct key — plus, when the verdict is `no problems found`, an envelope `warnings` entry: `"<N> subtree(s) marked IDontApplyTypesystemRules/ISkipConstraintsChecking (e.g. commented out) were not type- or constraint-checked"`. Node/root branch and each root of the model/module branches.

### D. `EXPLAIN_TYPE` — headless typesystem trace for one node

Mirror of the devkit "Type-system Trace" with "trace for selected node" on (`TraceSettings` defaults: `traceForSelectedNode=true`, `showApplyRuleOperations=true`, `showTypesExpansion=false`, `showBlockDependencies=false`).

1. Resolve the node; `root = containingRoot`; reject with `INVALID_REQUEST` when `SNodeUtil.getDescendants(root).count() > maxRootNodes` ("narrow with a smaller root or raise maxRootNodes") — trace mode records every operation of a full root check.
2. `ctx = TracingTypecheckingContext(root, helper)` with the facade's `TypeCheckerHelper`; `ctx.checkRootInTraceMode(true)`; `op = ctx.getOperation()`. All in `core/typesystemEngine` (`newTypesystem/context/TracingTypecheckingContext.java:29-46`), no devkit dependency. Walk the tree **before** `dispose()`: dispose resets the operation tree (`State.java:356-358`).
3. Slice set = the node, its descendants, and the type variables reached as `TypeSystemTraceTree.getSliceVars` does (`TypeSystemTraceTree.java:284-308`: for `AddEquationOperation` whose child/parent is in the set add `TypesUtil.getVariables(other, stateCopy)`; for `AssignTypeOperation` on a node in the set whose type `isVariable` add the type). `stateCopy` is **`null`**: `TypesUtil.getVariables` treats a null state as the identity (`TypesUtil.java:92-94`), which is what the devkit achieves with a fresh, unreplayed `State(ctx, op)` (`State.java:95-108`, `TypecheckingContextTracker.java:37`) minus that copy's name-keyed aliasing of same-named variables (`Equations.getNameRepresentative`, `:76-87`). What must **not** be passed is the solved `ctx.getState()`: there every variable's representative is already a concrete type, so no variable is ever added and the `T :>=: typeof(D)` hop for `E` is lost.
4. Walk the operation tree depth-first; keep an operation when `showNode`'s conditions hold (`:208-232`: `source` in set, or an `AddEquationOperation` whose child or parent is in set, or an `AbstractBlockOperation` whose `Block.getInputs()` meets the set) — or when a kept descendant needs it as context (`showNodeRecursively`). Filtering is **skip-and-hoist**, never drop-the-subtree: `ApplyRuleOperation` is the parent of every equation its rule adds (`State.java:158-162, 300-312`), so unless `includeApplyRule` it is elided and its consequences are hoisted one level; the devkit's `filterNodeType` returns `null` for the whole subtree (`TypeSystemTraceTree.java:149-151, 250-258`) and would leave the trace empty. Same hoisting for `ExpandTypeOperation` unless `includeExpansion`, and for dependency operations always.
5. `data` is `{type: <type>|null, trace: [entry]}` — the final `typeJsonObject` first, because `type_assigned` presentations show variables (`"1 + 2 : a assigned"`, `AssignTypeOperation.java:49-50`). Entry: `{kind: op.getPresentationKind(), presentation: op.getPresentation(), source: <node ref>|null, rule: {rule, ruleReference, statement}|null, error: true?, consequences: [entry]}`. `rule` comes from `op.getRule()`, an `SNodeReference` to a statement inside the rule (same shape as C: resolve, take `containingRoot`); it is `null` on `ApplyRuleOperation`, whose rule name is only in its presentation. `error` when the operation or a consequence is `AddErrorOperation`/`TraceWarningOperation`. `kind` values are `PresentationKind`'s strings (`equation_added`, `type_assigned`, `error_added`, …).
6. `ctx.dispose()` in `finally`. `data` inline up to `maxInlineBytes`, temp file above.

For `E` in the sample this names `typeof_SimpleMathAssignment` as the rule whose `T :>=: typeof(D)` equation made `E` `Float`, which is the question an agent debugging an inference rule actually has.

Threading: `TracingTypecheckingContext` is built and checked under the same `executeShortReadOnEdt` read action; nothing on the path needs the EDT or an editor, and `TypecheckingContextTracker` does the same from the EDT. It is independent of the editor's incremental session, so it does not disturb GET_TYPE's answers.

### E. `LIST_CONCEPT_ASPECTS`: `appliesTo` vs `mentions`, and the `includeInherited` bug

Keep the find-usages sweep (it is how "which rules quote this type" is answered) but label each root entry with `relation`:

- `appliesTo` when the root is an `AbstractRule` whose `applicableNode` child (`ApplicableNodeCondition`, cardinality 1) is a `ConceptReference` whose `concept` reference targets the queried concept (or, with `includeInherited`, one of its superconcepts); for `InequationReplacementRule` also its `supertypeNode`, for `ComparisonRule` also its `anotherNode`; for an `OverloadedOpRulesContainer` when any `rule[].operationConcept[].concept` (a `1..n` list of smodel `ConceptReference`s) targets it. A `PatternCondition` cannot be resolved structurally and is labelled `pattern`. For `constraints` roots: `ConceptConstraints.concept`; for `editor` roots: `AbstractComponent.conceptDeclaration`.
- `mentions` otherwise.

`targetsConcept` keeps its current meaning (the queried or inherited concept the root was found through) so existing consumers do not break; the docs say to read `relation`.

Two limits of the sweep, one a bug: with `includeInherited=true` the queried concept's own aspects are dropped, because `populateSuperConceptsAndInterfaces` seeds only the supers (`JetBrainsMPSLanguageStructureMcpToolset.kt:1472-1476, 1545-1560`) while `list-concept-aspects.md:8` says "include" — fix by seeding the set with the concept itself. And only the concept's own language's aspect models are swept (`:1482-1485`), so a rule in an *extending* language never appears; document that in the `query_structure` reference rather than widening the sweep here.

### F. Not in scope

- Listing applicable rules through the runtime (`RulesManager.getInferenceRules(instance)`): needs a detached instance per concept and gives runtime classes, not declarations; E answers the declared side.
- A structural `TYPES_MATCH` (`TypesUtil.match`) for `has type` authoring: GET_TYPE's `presentation`/`blueprint` is enough; revisit if a study run asks.
- Generation-mode typing, batching several nodes, `print_node` flags.
- Committing: stays uncommitted on this worktree until the user names the issue and branch (`.agents/git.md`).

## G. Docs

Blueprints under `plugins/mcp-tools/resources/jetbrains/mps/agents/mcp/skills/`, copied over `.agents/skills/` and `.claude/skills/` (`SkillCatalogReplicationTest`; `scripts/validate_skill_catalog.py` for cross-skill links). Byte caps: `SkillReferenceLayoutTest` budget 12288 B per reference file, `mcp-tools-index.md` allow-listed at 17408 B and currently 17397 B.

- `mps-mcp-workflow/references/mcp-tools-index.md`: one `mps_mcp_query_types` bullet of **at most 300 B** and `GET_EXPECTED_TYPE` (≈ 40 B) in the `query_nodes` bullet. Headroom is 11 B; the `query_nodes` bullet's closing `detail:"count"` / `mps_dump.py count` sentence (342 B) is deleted outright — its content already stands in `analysis-tools/query-nodes-find-instances.md:5,7` — which leaves ≈ 350 B. No pointer sentence (it would not fit). Do not raise the allow-list.
- New `mps-mcp-workflow/references/analysis-tools/type-queries.md` (< 12288 B): operand forms, each operation's keys and `data`, `GET_TYPE`/`GET_EXPECTED_TYPE` side by side, `EXPLAIN_TYPE` output and the `maxRootNodes` guard, the `rules` field of the problem report, the commented-out warning, and a decision table: "what is X" → GET_TYPE; "what must go here" → GET_EXPECTED_TYPE; "does A fit B" → IS_SUBTYPE; "what can A be widened to" → SUPERTYPES; "what does `a op b` give" → OPERATION_TYPE; "why is X typed so / why this error" → EXPLAIN_TYPE and `rules`; read rule roots only when authoring them. The "Reading a node's type" paragraph in `analysis-tools/overview.md:22` shrinks to two sentences plus a link.
- `mps-language-analysis/SKILL.md` (5707 B): a section "Answering type questions" after "Inspecting Concept Aspects" with the decision table's one-line form and the `relation` field of `LIST_CONCEPT_ASPECTS`.
- `mps-aspect-typesystem/SKILL.md`: workflow step 9 gains `EXPLAIN_TYPE` and the `rules` field; `references/common-failures.md` ("a type stays undefined") points at `EXPLAIN_TYPE` first.
- `mps-tests/references/nodes-test-case.md:43`: add that `GET_EXPECTED_TYPE` is the `has expected type` counterpart.
- `mps-aspect-structure-concepts` (owner of the `query_structure` reference): the `relation` field.

## H. Tests

New `JetBrainsMPSTypesMcpToolsetIntegrationTest` in `McpToolsIntegrationTestSuite` (`McpToolsIntegrationTestSuite.java:36-73`), fixture per the GET_TYPE plan: `createSolution()`, `createModel(solution, "<module>.code")`, one `mps_mcp_parse_java_and_insert` of

```java
class TypeHost { int i = 1 + 2; long l = 2L; String s = ""; Object o = s; java.util.List<String> list = null; }
```

BaseLanguage's lattice is what the assertions lean on: `int_extends_long_SubtypingRule` (`PrimitiveSubtyping_SubtypingRule` applies to `PrimitiveTypeDescriptor`, not `IntegerType`), `subtyping_classifier_SubtypingRule` for `String <: Object` (the `ClassifierType_NOT_subtypeOf_ClassifierType` replacement rule is inapplicable to classes related by inheritance, `:53`), and `typeof_BinaryOperation_InferenceRule` calling `getOverloadedOperationType` (`languages/baseLanguage/.../typeof_BinaryOperation_InferenceRule.java:35`; `int + long` → LCS coerced to `PrimitiveType` → `long`, `TypesystemDescriptor.java:1552-1568`).

1. `IS_SUBTYPE` `{typeConceptRef: IntegerType}` ⊂ `{typeConceptRef: LongType}` → `isSubtype:true`; reversed → `false`.
2. `IS_SUBTYPE` with blueprints: the GET_TYPE blueprint of `s` ⊂ that of `o` → `true` (proves the blueprint builder assigns `classifier`); the same with `typeNodeReference` = the `type` child of `s` and of `o` → `true`; `nodeReference` = the `type` child of `s` → `INVALID_REQUEST` "node has no type" (true for BaseLanguage, which has no rule applicable to `Type`; a failure here after another language is loaded is an environment fact, not a regression).
3. `SUPERTYPES` of `int` contains `long` in `transitive`; `details.truncated` absent.
4. `COMMON_SUPERTYPE` of `int`, `long` → `[long]`.
5. `COERCE` `typeof(list)` to `ClassifierType` → `coerced.blueprint` has a `classifier` reference link targeting `java.util.List` and one `parameter` child.
6. `OPERATION_TYPE` with `operatorNode` = the `PlusExpression`, `left` `int`, `right` `long` → `long`; with `operatorConceptRef` = `PlusExpression` → same type plus the detached-instance warning.
7. `GET_EXPECTED_TYPE` on the `2L` initializer → `long` (bound from `typeof_VariableDeclaration`, `:55, 76`); on the `TypeHost` class root → `data:null`.
8. `EXPLAIN_TYPE` on `1 + 2`: `data.type.concept == "IntegerType"`; with the default `includeApplyRule:false` the trace is non-empty, holds at least one `type_assigned` entry whose `source` is the `PlusExpression`, and one entry whose `rule.ruleReference` resolves to a root in `jetbrains.mps.baseLanguage.typesystem` with `rule.statement` a descendant of it; and no entry whose `presentation` ends in `applied to node …` (the `ApplyRuleOperation` form) — the `type_assigned` entry sits under an `ApplyRuleOperation`, so this guards round 1's R2 skip-and-hoist; with `maxRootNodes:1` → `INVALID_REQUEST`.
9. Problem report: a second class `class Bad { int x = "s"; }` → the `x` problem carries `rules[0].ruleReference` resolving to a `jetbrains.mps.baseLanguage.typesystem` root and `rules[0].statement` inside it. Commented-out: `CommentUtil.commentOut(field)` (`editor/editor-runtime/source_gen/jetbrains/mps/editor/runtime/impl/cellActions/CommentUtil.java:31`, generated from the editor-runtime language; `editor-runtime` is in `mcp-tools.iml:29`) inside a command, then assert `uncheckedSubtrees == 1`, `errors == 0`, and the envelope warning.
10. `LIST_CONCEPT_ASPECTS`: in a fresh language, insert an `InferenceRule` with `applicableNode` → concept A and a body that *references* concept B through a construct with an `SReference` to its declaration (`concept/B/`; a heavy-quotation instance of B is not a reference and the sweep only sees `SReference`s, `AbstractNodeOps.kt:1827-1843`) via `mps_mcp_insert_root_node_from_json` (blueprint from `mps-aspect-typesystem/references/json-blueprints/minimal-inference-rule.md`); assert A's entry `relation:"appliesTo"`, B's `relation:"mentions"`; with a subconcept A2 of A and `includeInherited:true` on A2, the rule appears (the fixed seeding) and so do A2's own aspects. These are the first positive LIST_CONCEPT_ASPECTS tests (`JetBrainsMPSLanguageStructureMcpToolsetIntegrationTest.kt:1459-1540` hold only the empty, error and plural-`conceptRefs` cases); add them to that class.
11. Operation lists: the `MPSQueryOperation.entries == queries.keys` assertion (`JetBrainsMPSNodeMcpToolsetIntegrationTest.kt:1976`) gets `GET_EXPECTED_TYPE`; a sibling assertion for `TypesQueryOperation`. `McpToolParameterOptionalityTest` reads the `plugin.xml` registrations, so the new toolset is covered once registered.

Run `McpToolsIntegrationTestSuite` per `.agents/quality-gates.md` (check `ps aux | grep JUnitStarter` first; compare any single failure with `mcptoolsintegrationtestsuite-single-flaky-failures`).

## Risks and things to verify in implementation

- `typeOperandNode`: a `ClassifierType.classifier` set by `setReference(link, SNodeReference)` on a free node must resolve inside `SubTypingManagerNew.calcIsSubtype` (test 2 is the proof); if a type concept's `getPresentation` behavior needs a model, `typeJsonObject`'s `presentation` falls back to the concept alias.
- Trace cost: `checkRootInTraceMode` on a 2000-node root is a full check with recording; measure on the sample's `Main` and on a BaseLanguage class of that size before fixing the default `maxRootNodes`.
- `OverloadedOpsProvider` applicability on a detached operator node reading properties: the warning covers it; test 6 shows both paths agree for `PlusExpression`.

## Review rounds

### Plan round 1 (Opus reviewer, 2026-10-05) — two blocking, all taken

- **R1 blocking** taken: slicing used the solved `ctx.getState()`, under which `TypesUtil.getVariables` adds nothing; a fresh `State(ctx, op)` copy as in `TypecheckingContextTracker.java:37` (§D step 3).
- **R2 blocking** taken: dropping `ApplyRuleOperation` subtrees empties the trace; skip-and-hoist, and `getRule()` is null on it (§D step 4-5).
- **R3** taken: rule ids point at a statement inside the rule; `rules[]` is now `{rule, ruleReference, statement}`, tests 8-9 and the motivation corrected.
- **R4, R5** taken: `instantiateNode` needs a model and only warns on a dangling target; replaced by a strict `typeOperandNode` builder; `typeConceptRef` also rejects mandatory references (`ClassifierType`).
- **R6** taken: `typeNodeReference` operand for stored type nodes, which have no inference rule.
- **R7** taken: `weak` dropped from COMMON_SUPERTYPE; the meet caveat documented.
- **R8** taken: `getInferredType` semantics rewritten (`:==:` → null, several bounds → LCS, no editor session involved; the open-editor risk removed).
- **R9** taken: skip mechanism located (`IDontApplyTypesystemRules`/`ISkipConstraintsChecking`); count those markers, key `uncheckedSubtrees`, envelope warning on a clean verdict.
- **R10** taken: the index sentence is deleted, not moved; the new bullet is capped at 300 B.
- **R11** taken: rule attributions corrected (`int_extends_long`, `subtyping_classifier`, `typeof_VariableDeclaration`).
- **R12** taken: `includeInherited` seeding bug fixed in E; own-language-only sweep documented; `operationConcept[].concept` path.
- **R13** taken: `CommentUtil.commentOut` in test 9.
- **R14** taken: test 10 references B through `concept/B/`; added as the first positive tests.
- **R15** taken: `convertsTo` dropped (alias of `isSubtype`), `isComparable` added.
- **R16** taken: `operatorNode`/`operatorConceptRef`; `TypeCheckerHelper.getOperationType` with a warning producer.
- **R17** taken: global-vs-operand language scope documented; COERCE rejects interface concepts.
- **R18** taken: EXPLAIN_TYPE `data` leads with the final type.
- **R19** taken: both tool descriptions cross-name the other's type operations; EXPLAIN_TYPE stays in `query_types` for its keys and cost.
- Confirmed by the reviewer: detached operands are safe in the Workbench controller; `instantiateNode(dryRun=true)` does build children (moot after R4); facade anchors and weak/strong mapping; trace API (`getState`, `getOperation`, `dispose`); `PresentationKind`, TraceSettings defaults, `showNode`/`getSliceVars`; lang.typesystem link names; `has expected type` is `getInferredType`; `int + long → long`; plugin.xml, iml, executor and doc anchors.

### Plan round 2 (same reviewer) — nothing blocking, settled

- **R1** taken: `typeOperandNode` spelled out (records to reject, `name` only for `INamedConcept`, `JsonNull` targets, role assignability and cardinality, constructor-then-replace, the self-reference limit) and placed in `AbstractNodeOps` to reuse its model-free helpers.
- **R2** taken: API table no longer lists `convertsTo` or the deprecated `RulesManager` overload; `TypeChecker.getInstance()` is gone everywhere in favour of `helper`; the `NOT_FOUND` / `INVALID_REQUEST` split is stated.
- **R3** confirmed: `getData(TypeCheckerHelper.class)` works on the EDT; the risk bullet retired; conflict warnings carry `{rule, ruleReference, statement}`.
- **R4** taken: outermost markers only, `count()`, the markers are not comment-specific, attribute children are walked.
- **R5** taken: `null` state for `getVariables` instead of a fresh copy; `ctx.getOperation()` and `getState().getOperation()` are the same object.
- **R6** taken: `isComparable` documented as implied by `isSubtype`.
- **R7** taken: test 2's "no type" clause marked environment-dependent.
- **R8** taken: `typeNodeReference` is used attached, no copy, no reference emitted.
- **R9** taken: test 8 asserts no `ApplyRuleOperation` entry under the default.
- Confirmed: all round-1 changes landed as described; §B, §C anchors, §E fix, `operationConcept[].concept`, `CommentUtil.java:31`, `mcp-tools.iml:29`, the §G arithmetic.

## Phase A implementation (2026-10-05) — §A plus its share of §G and §H

Scope taken: `mps_mcp_query_types` with IS_SUBTYPE, SUPERTYPES, COMMON_SUPERTYPE, COERCE, OPERATION_TYPE; `typeJsonObject` and the strict `typeOperandNode` in `AbstractNodeOps` (GET_TYPE now uses `typeJsonObject`); registration in `plugin.xml` and in the explicit toolset lists of `SkillScriptsDriftTest` / `McpJsonOrTextWireShapeTest`; `JetBrainsMPSTypesMcpToolsetIntegrationTest` (H1–H6, H11 plus shape checks and a bridge test) in the suite; docs: new `analysis-tools/type-queries.md` (GET_TYPE moved there from `overview.md`), index bullet (the `detail:"count"` sentence deleted, file 17375 B), `analysis-tools.md` row, `request-conventions.md` aliases, `mps-language-analysis` "Answering Type Questions", one `mps-aspect-typesystem` sentence. EXPLAIN_TYPE (D), GET_EXPECTED_TYPE (B), problem `rules` (C) and LIST_CONCEPT_ASPECTS (E) are not done; the operation enum has no EXPLAIN_TYPE yet.

Deviations from §A:

1. A printed type object is accepted as an operand verbatim: `concept`/`conceptReference`/`presentation`/`hasTypeVariables` are tolerated beside `blueprint`, and `conceptReference` must resolve to the blueprint's concept.
2. `typeOperandNode` also rejects an abstract concept, a mandatory link left empty, a child role without `nodes` (summary printouts) and a property entry without `name`; it does not store the top-level `name` (a presentation fallback) or `isDefault:true` enum entries, because the engine matches types on stored values. `declared:false` is consulted only when the feature is not found, as elsewhere.
3. OPERATION_TYPE rule conflicts go to `data.ruleConflicts: [{rule, ruleReference, statement}]` plus a string warning; envelope `warnings` stay strings.
4. SUPERTYPES uses `helper.subtypingManager.collectImmediateSupertypes(t, weak)` for both values of `weak`. COMMON_SUPERTYPE sorts its result by presentation (the engine answers a `HashSet`).
5. COERCE accepts abstract concepts (BaseLanguage coerces to `PrimitiveType`); only interface concepts are rejected.

### Implementation review round 1 (Opus) — nothing blocking

Three SHOULD (printer-only values stored back; summary roles silently emptied; "concrete" wording for COERCE) and eight NITs (conflict-id parsing inside the callback, `declared:false` convention, LCS order, OPERATION_TYPE global scope and `PrimitiveTypeDescriptor` docs, index wire-shape bullet, alias table, error-code sentence, depth KDoc, variables, printed-object cross-check, test gaps). All taken. Suite run 1: 1150 finished, 1 failed — a test-side read outside a read action in the fixture, fixed.

### Implementation review round 2 — settled

All fixes confirmed; three optional NITs (COERCE rejection message, compare the printed `conceptReference` as a concept rather than a string, `operatorConceptRef` in the NOT_FOUND list) taken. Suite run 2 (before those NITs) and run 3 (final code): 1152 finished, 0 failed, 0 ignored.

Live check: after restarting MPS from sources, GET_TYPE through the extracted `typeJsonObject` answers as before. `mps_mcp_query_types` itself was not called live: a Claude session's MCP tool list is fixed at session start, so the new tool needs a session restart to be callable.

### Live verification (2026-10-06, MPS restarted from sources and a fresh session)

A Sonnet verifier ran §H's `TypeHost` fixture in a scratch solution (deleted afterwards) against the running MPS; the report was reviewed against `log/idea.log`.

- Positive: IS_SUBTYPE through all four operand forms and pasted type objects (`int <: long`, `String <: Object`, and the reverse of each false); SUPERTYPES (`long` in `transitive` of `int`, `details.truncated` on `depth:1`, `weak:false` drops the boxed and `Object` supertypes); COMMON_SUPERTYPE `[int, long] → [long]`, `[String, Object] → [Object]`; COERCE `List<String>` → `ClassifierType` with the `classifier` link and one `parameter`, `int` → `PrimitiveType`, `String` → `PrimitiveType` → `null`; OPERATION_TYPE `int + long → long` from `operatorNode` and from `operatorConceptRef` (with the detached-instance warning). A COERCE result fed back as an operand round-trips. No `reference` key in any blueprint.
- Negative: unknown key, two or no operand keys, `ClassifierType` as `typeConceptRef`, a blueprint missing or misnaming `classifier`, an unresolvable node or concept, a type node passed as `nodeReference`, an interface `conceptRef`, one-element `types`, `depth` 0/33/-1, an unknown operation, malformed JSON, and neither or both operator keys: each is rejected with the documented code and a message naming the JSON path. Malformed JSON answers `INVALID_JSON` (the shared `McpErrorCode` for unparsable input), which `type-queries.md` does not list.
- Observed, as documented: `isComparable` is true in both directions of a subtyping pair; SUPERTYPES of `int` runs in the global language scope (32 entries, among them `samples.complex`'s `complex` and BaseLanguage-math's same-named `complex`); `String + int` answers `StringType` (`string`), the engine's result.
- **Defect found and fixed:** every rejected call logged `SEVERE ActionDispatcher - Action dispatch failed` with a stack trace (12 during the run). Operands are resolved inside the EDT read action, and `executeShortReadOnEdt` lacked the `McpUserException` capture `executeShortCommandOnEdt` has; this toolset is the first to throw user errors inside a read. `executeShortReadOnEdt` (`AbstractOps.kt`) now captures them and rethrows outside the read action, for every toolset. Regression test `a rejected operand is not logged as an action-dispatch failure` (NOT_FOUND and INVALID_REQUEST operands under `captureLogMessages`); with the fix reverted the suite ran 1153 tests and failed only this one; with the fix, 1153 finished, 0 failed, 0 ignored.
- Not covered live: the SimpleMath `Int → [Long, Number] → Float → Element` lattice, because `jetbrains.mps.samples.Expressions` is not in this project.

## Phase B implementation (2026-10-06) — §B plus its share of §G and §H

Scope taken: `GET_EXPECTED_TYPE` in `mps_mcp_query_nodes` (the seven edits: enum, `queryNodesParameterKeys`, both dispatch `when`s, `opNodeInfoRead`, its KDoc, the tool and `operation` descriptions), `TypecheckingFacade.getInferredType` behind the same null/bare-variable collapse as GET_TYPE (shared `typeOrNullJson`); the `mps_mcp_query_types` description names GET_TYPE/GET_EXPECTED_TYPE. Tests: H7 in `JetBrainsMPSTypesMcpToolsetIntegrationTest` (`2L` → `long`, `Object o = s` → `Object` while GET_TYPE says `String`, `byte b = 1` → `int`, the class root and a field's `type` child → `null`; the fixture gained `byte b = 1`), H11's operation list. Docs: `type-queries.md` GET_EXPECTED_TYPE section and decision-table row, index bullet (17390 B, trimmed so later phases have room), `overview.md`, `analysis-tools.md`, `mps-language-analysis`, `mps-tests/references/nodes-test-case.md`, `mps-aspect-typesystem` step 9.

Deviations from §B:

1. A `RuntimeHoleType` answer is collapsed to `null` too, as `HoleTypecheckingComponent` itself discards it.
2. The documented `null` cases are wider than §B states: `getExpectedType` reads only upper and comparable bounds, so a slot bounded only by `:>=:` (an assignment's left side) answers `null`, and so does a bound that depends on the parent's own, uninferred type (only the parent is typed). The docs also note that the parent's rules may inspect the node itself (`byte b = 1` is bounded by `int` through `isValidByteOrShortExpression`), so asking about a node one intends to replace can differ from the answer for its replacement.

### Implementation review round 1 (Opus) — nothing blocking

Engine claims confirmed (no editor session read, no null `InequalitySystem`, root → `null`, threading). Three SHOULD — incomplete `null` cases (lower bounds, parent-dependent bounds), a non-root `null` test, index headroom — and five NITs (meet type, `RuntimeHoleType`, §H7 naming a fixture root that does not exist, `mps-aspect-typesystem` step 9, the `byte` caveat). All taken. Suite run 1 (before the fixes): 1154 finished, 0 failed.

### Implementation review round 2 — settled

All fixes confirmed, including that the `byte` branch's `IntegerType` bound reaches the hole (no `whenConcrete` on that path). Suite run 2 (final code): 1154 finished, 0 failed, 0 ignored.

### Live verification (2026-10-06, MPS restarted from sources by the user)

A scratch solution (deleted afterwards) with the H7 class plus `void m(int p) { long x = 0; x = p; m(3); }` and `long r() { return 'c'; }`:

- As tested: `2L` → `long`; `s` in `Object o = s` → `Object` (GET_TYPE `String`); `byte b = 1` → `int`; the class root and the `long` `type` child → `null`.
- Beyond the tests: `x = p` → `p` expects `long`, the left side `x` answers `null` (lower bound only, as documented); `m(3)` → `3` expects `int`; an operand of `1 + 2` → `null` (the overloaded-operation rule adds no inequality). `return 'c'` in a `long` method → `int`, not `long`: `typeOf_BaseMethodDeclaration` — an ancestor's rule, not the parent's — treats a `CharConstant` as valid for any primitive return type via `isValidByteOrShortExpression` and bounds it by `IntegerType`. The engine is right; `type-queries.md`'s caveat now says "the context's rules" and names this case.
- With the root open in an editor the answers are unchanged (`Object`, `int`), as documented.
- Negative: an unknown node → `NOT_FOUND`; `{}` → `INVALID_REQUEST` naming `nodeReference`; an extra key → `INVALID_REQUEST` listing the accepted set; lower-case `get_expected_type` is accepted; `GET_EXPECTED_TYPES` → `INVALID_REQUEST` listing the operations.
- `log/idea.log` for the window: no `Action dispatch failed` or MCP-tool failure. The only SEVERE/WARN entries are unresolved `classifier` references from parsing into the JDK-less scratch solution and `DynamicReference` warnings from VCS change tracking during the module deletion — neither on GET_EXPECTED_TYPE's path.

## Phase C implementation (2026-10-06) — §C plus its share of §G and §H

Scope taken: `rules: [{rule, ruleReference, statement}]` on every `problemJsonObject(item, repo)` whose item is a `RuleIdFlavouredItem` (typesystem, constraints, scope), order kept, reporting rule first; the `{rule, ruleReference, statement}` builder moved from `JetBrainsMPSTypesMcpToolset` into `AbstractOps.ruleJsonObject(statement, root)`, which OPERATION_TYPE's `ruleConflicts` now uses too. `uncheckedSubtrees` in `JetBrainsMPSNodeMcpToolset`: outermost `IDontApplyTypesystemRules`/`ISkipConstraintsChecking` nodes, attribute children walked, on the node/root branch, per root (root summaries and model `perRoot` rows), per model on module `perRoot` rows, and the envelope warning on every clean verdict (node, model, module, truncated module); the tool description names both. Test H9 in `JetBrainsMPSTypesMcpToolsetIntegrationTest`. Docs: `check-root-node-problems-output.md` (the `rules` field, the unchecked-subtrees paragraph, the shape example), `type-queries.md` (decision-table row, "Which rule reported a problem"), `analysis-tools/overview.md`, `mps-aspect-typesystem` step 9. The index is untouched (17390 B).

Deviations from §C:

1. §C's "Structure and scope checkers still run" is wrong about scope: `RefScopeChecker` and `TargetConceptChecker2` use `SKIP_CONSTRAINTS_CONDITION` too, so only `StructureChecker` checks inside a marked subtree. Code comments, tool description and docs say so.
2. The node branch counts the requested node's subtree, not the root's, since the report is scoped to that node; a node that itself lies in a marked subtree answers 1. The count goes to `details.uncheckedSubtrees` (the node branch has no root summary).
3. Model and module scope also carry `details.uncheckedSubtrees`, the total, so a clean answer (which has no root entries) states the number outside the warning text.
4. `rule` falls back to the root's presentation: constraints and behavior roots store no name (`Foo_Constraints`, `Foo_Behavior` come from a getter). Unresolvable rule ids are dropped, as §C says, and duplicates collapsed — unlike `ruleConflicts`, which keeps an unresolved id with `rule:null`.
5. H9's class is `public class Bad { int x = "s"; int y = "t"; }`: a package-private class draws `check_UnusedPackageClassifier`'s warning, so the clean verdict never comes. Beyond §H9 the test comments out both fields (count 2, warning at node and model scope, `perRoot` rows at model and module scope) and then a nested comment inside one (still 2).

Not covered by tests: a constraints or scope problem carrying `rules` (the BaseLanguage solution fixture produces none deterministically), and the warning on a clean module verdict (a fresh solution's module validation is not guaranteed clean). `assertRulesResolve` checks every `rules` entry the first report has — the type errors and the unused-class warning of suite run 2.

### Implementation review round 1 (Opus) — nothing blocking

Two SHOULD — `rule` is `null` for constraints and scope roots (name fallback), and the docs and §C misstate which checkers skip what (scope and target-concept checkers skip `ISkipConstraintsChecking` too; structure checks run) — and five NITs: this section, test gaps at module scope and for constraints/scope `rules`, a double resolve, "may carry" in the typesystem skill, the console `History` root carrying both markers. All taken except the constraints/scope fixture (reason above). Suite run 1: 1155 finished, 1 failed — H9 itself, the root still had a problem after commenting out (diagnosed in run 2).

### Implementation review round 2 — settled

All fixes confirmed; three optional NITs (`overview.md` wording, the presentation fallback in the docs, a KDoc) taken. Suite run 2: 1155 finished, 1 failed — H9's clean assertion, broken by the unused-class warning (deviation 5). Suite run 3 (final code but for the round-2 doc and KDoc NITs): 1155 finished, 0 failed, 0 ignored, H9 among them.

### Live verification (2026-10-06, MPS restarted from sources by the user at 15:09, after the 15:05 build)

Scratch solutions (deleted afterwards): `public class Bad { public int x = "s"; public boolean y = 1; public java.util.List<String> list = null; }` in a JDK-less solution, and `public class Clean { }` with a `BaseCommentAttribute` wrapping `int z = "q"` added through `mps_mcp_update_node` (no `linkId`; the checkers key on the concept markers only).

- `rules` on every kind of problem: the two type errors → `typeof_VariableDeclaration` (an `InferenceRule`); the out-of-scope `classifier` reference → `ClassifierType_Constraints` (a `ConceptConstraints` root, so a scope problem carries `rules` too — the case H9 cannot produce); "Dynamic reference" → `check_DynamicReference`; an info → `check_StringTypeClassifierType`. `statement` resolves inside `ruleReference`'s root (GET_ROOT) for the inference and constraints rules.
- `uncheckedSubtrees`: the `Clean` root → `"no problems found"`, `details.uncheckedSubtrees:1` and the envelope warning, and the broken `z` inside the comment is not reported; a node *inside* the commented subtree → the same answer (deviation 2). Model `perRoot` → only the `Clean` row carries `uncheckedSubtrees:1`, plus `details.uncheckedSubtrees:1`; module `perRoot` → the model row and `details` carry it. After moving `Clean` into its own solution, the clean model **and the clean module** verdicts carry `details.uncheckedSubtrees:1` and the warning (the module case H9 does not cover). A model without marked subtrees has no `uncheckedSubtrees` key.
- `log/idea.log` for the window: no `Action dispatch failed` or MCP-tool failure; only the unresolved-`classifier` SEVERE from parsing into a JDK-less solution and "Models have not been found" WARNs from creating empty solutions.
