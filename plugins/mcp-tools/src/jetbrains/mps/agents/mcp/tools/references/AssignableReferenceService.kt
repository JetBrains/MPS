package jetbrains.mps.agents.mcp.tools.references


import com.intellij.openapi.diagnostic.Logger
import jetbrains.mps.project.MPSProject
import jetbrains.mps.scope.ErrorScope
import jetbrains.mps.scope.FilteringByConceptScope
import jetbrains.mps.smodel.SNodeUtil
import jetbrains.mps.smodel.adapter.MetaAdapterByDeclaration
import jetbrains.mps.smodel.constraints.ModelConstraints
import jetbrains.mps.typechecking.TypecheckingFacade
import kotlinx.coroutines.CancellationException
import org.jetbrains.mps.openapi.language.SAbstractConcept
import org.jetbrains.mps.openapi.model.SNode
import org.jetbrains.mps.openapi.module.SRepository

class AssignableReferenceService(private val mpsProject: MPSProject) {

    private val logger = Logger.getInstance(AssignableReferenceService::class.java)

    internal val helpers = AssignableReferenceHelpers()

    /**
     * Run [block] and return its result. If it throws [CancellationException] or an [Error]
     * subclass, rethrow so cancellation and JVM-level problems propagate to the caller. For any
     * other [Throwable], invoke [onFailure] and return its value.
     *
     * Centralises the cancellation-safety contract used throughout this service so a future call
     * site cannot accidentally swallow [CancellationException] by writing a bare
     * `catch (_: Exception)` — on the JVM, `CancellationException` extends `IllegalStateException`
     * and would be caught by such a clause.
     */
    private inline fun <T> guardOrdinaryFailure(block: () -> T, onFailure: (Throwable) -> T): T {
        return try {
            block()
        } catch (e: Throwable) {
            if (e is CancellationException) throw e
            if (e is Error) throw e
            onFailure(e)
        }
    }

    /** Specialisation of [guardOrdinaryFailure] for call sites that want a silent null on failure. */
    private inline fun <T : Any> guardOrNull(block: () -> T?): T? =
        guardOrdinaryFailure(block) { null }

    fun getAssignableReferences(request: GetAssignableReferencesRequest): GetAssignableReferencesResponse {
        var response: GetAssignableReferencesResponse? = null
        mpsProject.repository.modelAccess.runReadAction {
            response = guardOrdinaryFailure(
                block = { doGetAssignableReferences(request) },
                onFailure = { e ->
                    // Log at warn so the stack trace is preserved for debugging; the caller only sees
                    // the structured error message, but the IDE/agent log retains the full context.
                    logger.warn(
                        "getAssignableReferences failed for contextNode='${request.contextNode}', referenceRole='${request.referenceRole}'",
                        e
                    )
                    helpers.errorResponse(e.message)
                }
            )
        }
        // The try/catch inside the read action assigns `response` on every path that returns
        // normally from the lambda, and `runReadAction` invokes its lambda synchronously on
        // the calling thread, so `response` is always non-null after a normal completion.
        // The `?:` guard exists only as a safety net for a future-API or platform change that
        // could short-circuit lambda invocation — at which point returning a structured error
        // is preferable to a NullPointerException leaking out of an MCP tool entry point.
        return response ?: helpers.errorResponse("Unknown error")
    }

    private fun doGetAssignableReferences(request: GetAssignableReferencesRequest): GetAssignableReferencesResponse {
        val repository = mpsProject.repository

        val contextNodeRef = request.contextNode ?: return helpers.errorResponse("Parameter 'contextNode' is missing")
        val referenceRole = request.referenceRole ?: return helpers.errorResponse("Parameter 'referenceRole' is missing")

        val contextNode = guardOrNull {
            helpers.facade.createNodeReference(contextNodeRef).resolve(repository)
        } ?: return helpers.errorResponse("Context node '${request.contextNode}' not found")

        val owningConcept = if (request.owningConcept != null) {
            resolveConcept(repository, request.owningConcept) ?: return helpers.errorResponse("Owning concept '${request.owningConcept}' not found")
        } else {
            contextNode.concept
        }

        // Per the ModelConstraints.getReferenceDescriptor(contextNode, containmentLink, position,
        // association, concept) contract: `contextNode` is the PARENT that owns the aggregation
        // slot, while `concept` is the (possibly hypothetical / smart-ref) concept of the CHILD
        // node carrying the reference. The two lookups below are intentionally asymmetric:
        //   - `refLink` lives on the child concept, so it is resolved against `owningConcept`.
        //   - `containmentLink` lives on the parent, so it is resolved against `contextNode.concept`.
        // Overriding `owningConcept` therefore does not change which containment links are valid.
        val refLink = owningConcept.referenceLinks.find { it.name == referenceRole }
            ?: return helpers.errorResponse("Reference role '${referenceRole}' not found in concept '${owningConcept.name}'")

        val containmentLink = if (request.containmentLink != null) {
            contextNode.concept.containmentLinks.find { it.name == request.containmentLink }
                ?: return helpers.errorResponse("Containment link '${request.containmentLink}' not found in concept '${contextNode.concept.name}'")
        } else null

        val descriptor = if (containmentLink != null) {
            ModelConstraints.getReferenceDescriptor(contextNode, containmentLink, request.position ?: -1, refLink, owningConcept)
        } else {
            ModelConstraints.getReferenceDescriptor(contextNode, refLink)
        }

        var scope = descriptor.scope
        if (scope is ErrorScope) {
            return helpers.errorResponse("Scope error: " + scope.message)
        }

        if (request.targetConcept != null) {
            val targetConcept = resolveConcept(repository, request.targetConcept)
                ?: return helpers.errorResponse("Target concept '${request.targetConcept}' not found")
            scope = FilteringByConceptScope(scope, targetConcept)
        }

        // FIX #9: Collect to list once to avoid double-enumerating the scope
        val allAvailable = scope.getAvailableElements(null).toList()

        val isExhaustive = request.mode == ReferenceSearchMode.EXHAUSTIVE

        // Both modes share the same context-inference and filter pipeline. Previously,
        // EXHAUSTIVE mode returned every scope element verbatim, silently dropping
        // kindFilter / includeModules / excludeModules / scopeMode / includeInaccessible
        // and the pagination/meta fields. Filtering and pagination now run in both modes;
        // scoring + relevance sorting remain completion-only.
        val rawContext = helpers.inferContext(request, contextNode, refLink, referenceRole)
        // FIX #4: If declaring type couldn't be inferred from the node (e.g., ClassCreator with no
        // existing target), peek at the first scope element to get the declaring type.
        val context = helpers.enrichContextFromScope(rawContext, allAvailable)

        val filteredCandidates = allAvailable.map { node ->
            ScoredCandidate(node, helpers.createCandidate(node, context))
        }.filter { sc ->
            filterCandidate(sc, context, request)
        }

        // FIX #7: Deterministic sort with stable tiebreakers
        val sortedCandidates = if (isExhaustive) {
            // Exhaustive mode skips relevance scoring; sort by name for a stable order
            // and to keep callers' results deterministic across runs.
            filteredCandidates.sortedWith(
                compareBy<ScoredCandidate> { it.candidate.name }
                    .thenBy { it.candidate.reference }
            )
        } else {
            val scored = filteredCandidates.map { sc ->
                sc.copy(candidate = scoreCandidate(sc.node, sc.candidate, context, request))
            }
            when (request.sortBy) {
                SortMode.RELEVANCE -> scored.sortedWith(
                    compareByDescending<ScoredCandidate> { it.candidate.score }
                        .thenBy { it.candidate.signature ?: it.candidate.name }
                        .thenBy { it.candidate.reference }
                )
                SortMode.NAME -> scored.sortedWith(
                    compareBy<ScoredCandidate> { it.candidate.name }
                        .thenBy { it.candidate.reference }
                )
                SortMode.MODULE -> scored.sortedWith(
                    compareBy<ScoredCandidate> { it.candidate.moduleReference }
                        .thenBy { it.candidate.name }
                        .thenBy { it.candidate.reference }
                )
                SortMode.DISTANCE -> scored.sortedWith(
                    compareBy<ScoredCandidate> { it.candidate.typeDistance ?: Int.MAX_VALUE }
                        .thenBy { it.candidate.name }
                        .thenBy { it.candidate.reference }
                )
            }
        }

        val totalMatches = sortedCandidates.size
        val offset = request.offset ?: 0
        // Exhaustive callers want "give me everything" by default, so the limit is unbounded
        // unless they explicitly request a page; completion callers default to a reasonable
        // page size of 25.
        val limit = request.limit ?: if (isExhaustive) Int.MAX_VALUE else 25
        // Fast path for the common "return everything" case: skip drop()/take() so we don't
        // allocate two intermediate List copies before the final map.
        val pagedCandidates = if (offset == 0 && limit >= totalMatches) {
            sortedCandidates.map { it.candidate }
        } else {
            sortedCandidates.drop(offset).take(limit).map { it.candidate }
        }

        // FIX #3: Set truncated based on whether there are more results beyond the page.
        // Use Long arithmetic — when callers pass limit=Int.MAX_VALUE to mean "no limit",
        // Int addition would silently overflow to a negative number and flip `truncated` to true.
        val truncated = totalMatches.toLong() > offset.toLong() + limit.toLong()

        val meta = AssignableReferencesMeta(
            mode = request.mode,
            scopeMode = request.scopeMode,
            sortBy = request.sortBy,
            totalMatches = totalMatches,
            returnedMatches = pagedCandidates.size,
            suppressedMatches = allAvailable.size - totalMatches,
            truncated = truncated,
            inferenceSummary = context.inferenceNotes
        )

        return GetAssignableReferencesResponse(ok = true, data = pagedCandidates, meta = meta)
    }

    internal fun filterCandidate(scored: ScoredCandidate, context: ReferenceResolutionContext, request: GetAssignableReferencesRequest): Boolean {
        val candidate = scored.candidate
        if (!request.includeInaccessible && !candidate.accessible) return false

        if (!request.kindFilter.isNullOrEmpty()) {
            if (candidate.kind !in request.kindFilter) return false
        }

        if (request.includeModules != null && candidate.moduleReference !in request.includeModules) return false
        if (request.excludeModules != null && candidate.moduleReference in request.excludeModules) return false

        request.scopeMode?.let { mode ->
            when (mode) {
                ScopeMode.LOCAL -> {
                    val candidateRoot = helpers.containingRootRefOf(scored.node) ?: return false
                    if (candidateRoot != context.containingRootRef) return false
                }
                ScopeMode.MODEL -> {
                    if (candidate.modelReference != context.containingModelRef) return false
                }
                ScopeMode.MODULE -> {
                    if (candidate.moduleReference != context.containingModuleRef) return false
                }
                ScopeMode.PROJECT -> {
                    if (!isProjectNode(scored.node)) return false
                }
                ScopeMode.JDK -> {
                    // candidate.moduleReference is a String (not an SModuleReference), so we match
                    // on the module's display/identity name. A blanket substring "JDK" check let
                    // through false positives like "MyJDKTools" and missed lowercase variants
                    // ("jdk", "jdk.compiler"). We accept the canonical platform name "JDK" plus the
                    // common "JDK-<version>" / "JDK.<subsystem>" naming families, case-insensitive.
                    //
                    // Persistent module references use the form "<uuid>(<name>)" — e.g.
                    // "6354ebe7-c22a-4a0f-ac54-50b52ab9b065(JDK)" for the canonical JDK module.
                    // The string-name forms above never match that shape, so we also recognise
                    // any "...(JDK)" suffix in case the candidate carries the persistent form.
                    //
                    // TODO: longer-term the right answer is module-facet detection (walk to the
                    // actual SModule and check kind / isPackaged). That requires threading the
                    // module through the candidate or doing per-filter repo resolution, which is a
                    // bigger refactor than this filter alone justifies.
                    val ref = candidate.moduleReference ?: return false
                    val isJdk = ref.equals("JDK", ignoreCase = true)
                        || ref.startsWith("JDK-", ignoreCase = true)
                        || ref.startsWith("JDK.", ignoreCase = true)
                        || ref.endsWith("(JDK)")
                    if (!isJdk) return false
                }
                ScopeMode.IMPORTS -> { /* not yet implemented; accept all */ }
            }
        }

        return true
    }

    private fun scoreCandidate(
        candidateNode: SNode,
        candidate: AssignableReferenceCandidate,
        context: ReferenceResolutionContext,
        request: GetAssignableReferencesRequest
    ): AssignableReferenceCandidate {
        var score = 0.0
        val reasons = mutableListOf<String>()
        var typeDistance: Int? = null
        // FIX #1: Track matchKind during scoring
        var bestParamMatch = "fallback"

        val repository = mpsProject.repository

        // Kind match
        if (context.inferredKind != CandidateKind.UNKNOWN) {
            if (candidate.kind == context.inferredKind) {
                score += 80.0
                reasons.add("Correct candidate kind for the role (+80)")
            } else {
                score -= 200.0
                reasons.add("Wrong candidate kind (-200)")
            }
        }

        // Declaring type match — accepts FQN or MPS node reference for expectedDeclaringType
        if (context.expectedDeclaringType != null) {
            if (helpers.declaringTypeMatches(candidateNode, context.expectedDeclaringType)) {
                score += 100.0
                reasons.add("Declaring type matches expectedDeclaringType (+100)")
                typeDistance = 0
            } else {
                score -= 100.0
                reasons.add("Mismatched declaring type in completion mode (-100)")
                typeDistance = 1
            }
        }

        // Argument count and type matching for method/constructor candidates
        if (candidateNode.concept.isSubConceptOf(helpers.baseMethodDeclarationConcept)) {
            val candidateParams = candidateNode.getChildren(helpers.parameterLink).toList()

            if (context.argumentCount != -1 && candidateParams.size == context.argumentCount) {
                score += 60.0
                reasons.add("Exact argument-count match (+60)")
                bestParamMatch = "arity"
            }

            if (context.argumentTypes != null) {
                val minSize = minOf(candidateParams.size, context.argumentTypes.size)
                for (i in 0 until minSize) {
                    val paramTypeNode = candidateParams[i].getChildren(helpers.typeLink).firstOrNull()
                    val argTypeRefStr = context.argumentTypes[i]
                    if (argTypeRefStr == "unknown" || paramTypeNode == null) continue

                    val argTypeNode = guardOrNull {
                        helpers.facade.createNodeReference(argTypeRefStr).resolve(repository)
                    } ?: continue

                    // FIX #6: Compare the classifier each type expression references, not the type
                    // expression node references (which differ per instance even for the same type).
                    val paramClassifier = helpers.classifierOf(paramTypeNode)
                    val argClassifier = helpers.classifierOf(argTypeNode)

                    if (paramClassifier != null && argClassifier != null &&
                        helpers.facade.asString(paramClassifier.reference) == helpers.facade.asString(argClassifier.reference)
                    ) {
                        score += 50.0
                        reasons.add("Parameter $i exactly matches argument type (+50)")
                        bestParamMatch = "exact"
                    } else {
                        // FIX #5: Wrap TypecheckingFacade.isSubtype in try-catch
                        val isAssignable = try {
                            TypecheckingFacade.getFromContext().isSubtype(argTypeNode, paramTypeNode)
                        } catch (_: Exception) {
                            false
                        }
                        if (isAssignable) {
                            score += 30.0
                            reasons.add("Parameter $i is assignable from argument type (+30)")
                            if (bestParamMatch != "exact") bestParamMatch = "assignable"
                        }
                    }
                }
            }
        }

        // FIX #1: Determine final matchKind from best observed parameter match
        val matchKind = when (bestParamMatch) {
            "exact" -> "exact"
            "assignable" -> "assignable"
            "arity" -> "arity"
            else -> "fallback"
        }

        // Locality preferences
        if (candidate.modelReference == context.containingModelRef) {
            score += 20.0
            reasons.add("Same model (+20)")
        } else if (candidate.moduleReference == context.containingModuleRef) {
            score += 10.0
            reasons.add("Same module (+10)")
        }

        if (request.preferProjectCode && isProjectNode(candidateNode)) {
            score += 10.0
            reasons.add("Project code (+10)")
        }

        return candidate.copy(
            score = score,
            reason = if (request.includeReason) reasons else null,
            typeDistance = if (request.includeTypeDistance) typeDistance else null,
            matchKind = matchKind  // FIX #1
        )
    }

    private fun isProjectNode(node: SNode): Boolean {
        val module = node.model?.module ?: return false
        return mpsProject.isProjectModule(module)
    }

    private fun resolveConcept(repository: SRepository, conceptRef: String): SAbstractConcept? {
        try {
            return helpers.facade.createConcept(conceptRef)
        } catch (e: Exception) {
            logger.debug("createConcept failed for '$conceptRef'; falling back to structure-model search", e)
        }

        // Fallback: search by name across language structure models
        for (module in repository.modules) {
            if (module !is jetbrains.mps.smodel.Language) continue
            for (model in module.models) {
                if (model.name.longName.endsWith(".structure")) {
                    for (root in model.rootNodes) {
                        if ((root.name == conceptRef || "${model.name.longName}.${root.name}" == conceptRef) && root.concept.isSubConceptOf(SNodeUtil.concept_AbstractConceptDeclaration)) {
                            return MetaAdapterByDeclaration.getConcept(root)
                        }
                    }
                }
            }
        }
        return null
    }

    internal data class ReferenceResolutionContext(
        val contextNodeRef: String,
        val referenceRole: String,
        val owningConcept: String,
        val inferredKind: CandidateKind,
        val expectedDeclaringType: String?,
        val receiverType: String?,
        val argumentTypes: List<String>?,
        val argumentCount: Int,
        val containingModelRef: String?,
        val containingModuleRef: String?,
        val containingClassifierRef: String?,  // FIX #2: for private accessibility checks
        val containingRootRef: String?,
        val inferenceNotes: List<String>
    )

    internal data class ScoredCandidate(val node: SNode, val candidate: AssignableReferenceCandidate)
}
