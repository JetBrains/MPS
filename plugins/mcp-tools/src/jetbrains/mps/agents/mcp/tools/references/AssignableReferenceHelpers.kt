package jetbrains.mps.agents.mcp.tools.references

import jetbrains.mps.agents.mcp.tools.languages.*

import jetbrains.mps.typechecking.TypecheckingFacade
import kotlinx.coroutines.CancellationException
import org.jetbrains.mps.openapi.language.SReferenceLink
import org.jetbrains.mps.openapi.model.SNode
import org.jetbrains.mps.openapi.persistence.PersistenceFacade

/**
 * Project-free helpers extracted from [AssignableReferenceService]. None of these methods touch
 * [jetbrains.mps.project.MPSProject], so they are directly unit-testable without constructing one.
 *
 * The companion concept/link constants are static lookups from [BaseLanguageMeta]; they can be
 * resolved without an open MPS project. [PersistenceFacade.getInstance] is required only by the
 * methods that round-trip node/model/module references through [facade].
 */
internal class AssignableReferenceHelpers(
    internal val facade: PersistenceFacade = PersistenceFacade.getInstance()
) {
    internal val classCreatorConcept = BaseLanguageMeta.classCreatorConcept
    internal val iMethodCallConcept = BaseLanguageMeta.iMethodCallConcept
    internal val baseMethodDeclarationConcept = BaseLanguageMeta.baseMethodDeclarationConcept
    internal val constructorDeclarationConcept = BaseLanguageMeta.constructorDeclarationConcept
    internal val classifierConcept = BaseLanguageMeta.classifierConcept
    internal val instanceMethodDeclarationConcept = BaseLanguageMeta.instanceMethodDeclarationConcept
    internal val staticMethodDeclarationConcept = BaseLanguageMeta.staticMethodDeclarationConcept
    internal val classifierTypeConcept = BaseLanguageMeta.classifierTypeConcept
    internal val privateVisibilityConcept = BaseLanguageMeta.privateVisibilityConcept
    internal val protectedVisibilityConcept = BaseLanguageMeta.protectedVisibilityConcept
    internal val publicVisibilityConcept = BaseLanguageMeta.publicVisibilityConcept

    internal val baseMethodDeclarationLink = BaseLanguageMeta.baseMethodDeclarationLink
    internal val actualArgumentLink = BaseLanguageMeta.actualArgumentLink
    internal val parameterLink = BaseLanguageMeta.parameterLink
    internal val typeLink = BaseLanguageMeta.typeLink
    internal val classifierLink = BaseLanguageMeta.classifierTypeClassifierLink
    internal val visibilityLink = BaseLanguageMeta.visibilityLink

    internal fun errorResponse(message: String?): GetAssignableReferencesResponse =
        GetAssignableReferencesResponse(ok = false, data = emptyList(), error = message)

    internal fun fqnOf(node: SNode): String? {
        val name = node.name ?: return null
        val modelLongName = node.model?.name?.longName ?: return name
        return "$modelLongName.$name"
    }

    internal fun modelRefStr(node: SNode): String? = node.model?.let { facade.asString(it.reference) }

    internal fun moduleRefStr(node: SNode): String? = node.model?.module?.let { facade.asString(it.moduleReference) }

    internal fun classifierOf(typeNode: SNode?): SNode? =
        typeNode?.takeIf { it.concept.isSubConceptOf(classifierTypeConcept) }
            ?.getReferenceTarget(classifierLink)

    internal fun containingRootRefOf(node: SNode): String? {
        if (node.model == null) return null
        // SNode.getContainingRoot() is declared @NotNull, so Kotlin flags this guard as dead.
        // Keep it anyway: the platform's @NotNull is not always honored at runtime for nodes that
        // were partially detached after the model check above (e.g., concurrent removal from the
        // model). A typed null is much friendlier than an NPE crossing the MCP boundary.
        @Suppress("USELESS_ELVIS")
        val root = node.containingRoot ?: return null
        return facade.asString(root.reference)
    }

    internal fun findContainingClassifier(node: SNode): SNode? {
        var current: SNode? = node.parent
        while (current != null) {
            if (current.concept.isSubConceptOf(classifierConcept)) return current
            current = current.parent
        }
        return null
    }

    // FIX #2: Compute accessibility from BaseLanguage visibility concepts. Follows Java visibility
    // rules (simplified for package-private and protected).
    internal fun computeAccessibility(candidateNode: SNode, context: AssignableReferenceService.ReferenceResolutionContext): Boolean {
        if (!candidateNode.concept.isSubConceptOf(baseMethodDeclarationConcept) &&
            !candidateNode.concept.isSubConceptOf(classifierConcept)
        ) {
            return true
        }

        val visibilityNode = candidateNode.getChildren(visibilityLink).firstOrNull()
        return when {
            visibilityNode == null -> {
                // Package-private: accessible from the same model (approximation)
                modelRefStr(candidateNode) == context.containingModelRef
            }
            visibilityNode.concept.isSubConceptOf(publicVisibilityConcept) -> true
            visibilityNode.concept.isSubConceptOf(privateVisibilityConcept) -> {
                // Private: accessible only from within the same classifier. The declaring
                // classifier is the nearest enclosing classifier — for a method/field that
                // is the immediate parent, for a nested classifier the enclosing class.
                // For a top-level classifier there is no enclosing class; fall back to
                // model-scope (BaseLanguage does not have true top-level private).
                val declaringClassifier = findContainingClassifier(candidateNode)
                if (declaringClassifier == null) {
                    modelRefStr(candidateNode) == context.containingModelRef
                } else {
                    context.containingClassifierRef != null &&
                            facade.asString(declaringClassifier.reference) == context.containingClassifierRef
                }
            }
            visibilityNode.concept.isSubConceptOf(protectedVisibilityConcept) -> {
                // Protected (Java rule: same package OR subclass). Approximated as
                // "same model" (the MPS analogue of a package); the subtype branch is
                // not modelled here. Comparing modules — as the previous implementation
                // did — was too coarse (everything in the same module passed) and could
                // under-approximate across split modules.
                modelRefStr(candidateNode) == context.containingModelRef
            }
            else -> true
        }
    }

    // FIX #4: When inferContext couldn't determine the declaring type (e.g., ClassCreator with no
    // existing reference target), peek at the scope to fill it in. The original implementation
    // assumed the scope was constrained to a single class's constructors and read only the first
    // element's parent — which silently produced a wrong declaring type if the scope ever widened
    // to span multiple classes. Verify the assumption explicitly: only fill in when every scope
    // element shares the same classifier parent.
    internal fun enrichContextFromScope(
        context: AssignableReferenceService.ReferenceResolutionContext,
        allAvailable: List<SNode>
    ): AssignableReferenceService.ReferenceResolutionContext {
        if (context.inferredKind != CandidateKind.CONSTRUCTOR ||
            context.expectedDeclaringType != null ||
            allAvailable.isEmpty()
        ) {
            return context
        }
        val firstParent = allAvailable.first().parent ?: return context
        if (!firstParent.concept.isSubConceptOf(classifierConcept)) return context
        if (allAvailable.any { it.parent !== firstParent }) return context
        val declType = fqnOf(firstParent) ?: facade.asString(firstParent.reference)
        return context.copy(
            expectedDeclaringType = declType,
            inferenceNotes = context.inferenceNotes + "Inferred expectedDeclaringType from scope: $declType"
        )
    }

    internal fun inferContext(
        request: GetAssignableReferencesRequest,
        contextNode: SNode,
        refLink: SReferenceLink,
        referenceRole: String
    ): AssignableReferenceService.ReferenceResolutionContext {
        val notes = mutableListOf<String>()
        var inferredKind: CandidateKind? = null
        var expectedDeclaringType: String? = request.expectedDeclaringType
        val receiverType: String? = request.receiverType
        var argumentTypes = request.argumentTypes
        var argumentCount = request.argumentCount ?: -1

        // FIX #10: ClassCreator inference is explicit and does not rely on IMethodCall branch
        if (contextNode.concept.isSubConceptOf(classCreatorConcept) && refLink == baseMethodDeclarationLink) {
            inferredKind = CandidateKind.CONSTRUCTOR
            notes.add("Inferred kind: CONSTRUCTOR for ClassCreator")

            // Try to infer declaring type from the currently set constructor target
            val currentTarget = contextNode.getReferenceTarget(baseMethodDeclarationLink)
            if (currentTarget != null && expectedDeclaringType == null) {
                val classifier = currentTarget.parent
                if (classifier != null && classifier.concept.isSubConceptOf(classifierConcept)) {
                    expectedDeclaringType = fqnOf(classifier) ?: facade.asString(classifier.reference)
                    notes.add("Inferred expectedDeclaringType from current constructor target: $expectedDeclaringType")
                }
            }
            // If still null, enrichContextFromScope will fill it in from the first scope element

            if (argumentCount == -1) {
                val (count, types) = inferArgumentInfo(contextNode, argumentTypes, notes, " (ClassCreator)")
                argumentCount = count
                argumentTypes = types
            }
        } else if (contextNode.concept.isSubConceptOf(iMethodCallConcept) && refLink == baseMethodDeclarationLink) {
            // General IMethodCall (non-ClassCreator) inference
            if (argumentCount == -1) {
                val (count, types) = inferArgumentInfo(contextNode, argumentTypes, notes)
                argumentCount = count
                argumentTypes = types
            }
            inferredKind = CandidateKind.INSTANCE_METHOD
        }

        val containingClassifierRef = findContainingClassifier(contextNode)?.let { facade.asString(it.reference) }

        return AssignableReferenceService.ReferenceResolutionContext(
            contextNodeRef = facade.asString(contextNode.reference),
            referenceRole = referenceRole,
            owningConcept = facade.asString(contextNode.concept),
            // kindFilter intentionally NOT used to seed inferredKind: the filter is a multi-value
            // narrowing applied later in filterCandidate(); picking its first element here would
            // leak filter intent into the ±80/−200 scoring branch.
            inferredKind = inferredKind ?: CandidateKind.UNKNOWN,
            expectedDeclaringType = expectedDeclaringType,
            receiverType = receiverType,
            argumentTypes = argumentTypes,
            argumentCount = argumentCount,
            containingModelRef = modelRefStr(contextNode),
            containingModuleRef = moduleRefStr(contextNode),
            containingClassifierRef = containingClassifierRef,
            containingRootRef = containingRootRefOf(contextNode),
            inferenceNotes = notes
        )
    }

    private fun inferArgumentInfo(
        contextNode: SNode,
        currentArgumentTypes: List<String>?,
        notes: MutableList<String>,
        suffix: String = ""
    ): Pair<Int, List<String>?> {
        val actualArgs = contextNode.getChildren(actualArgumentLink).toList()
        notes.add("Inferred argumentCount: ${actualArgs.size} from actualArgument children$suffix")
        val types = currentArgumentTypes ?: inferArgumentTypes(actualArgs, notes)
        return actualArgs.size to types
    }

    // FIX #5: TypecheckingFacade wrapped in try-catch; returns "unknown" on failure
    private fun inferArgumentTypes(actualArgs: List<SNode>, notes: MutableList<String>): List<String> {
        if (actualArgs.isEmpty()) return emptyList()
        return try {
            val tc = TypecheckingFacade.getFromContext()
            val types = actualArgs.map { arg ->
                try {
                    val type = tc.getTypeOf(arg)
                    type?.let { facade.asString(it.reference) } ?: "unknown"
                } catch (e: Exception) {
                    if (e is CancellationException) throw e
                    "unknown"
                }
            }
            if (types.none { it == "unknown" }) {
                notes.add("Inferred argumentTypes from AST")
            } else {
                notes.add("Partially inferred argumentTypes from AST (some types unknown)")
            }
            types
        } catch (e: Exception) {
            if (e is CancellationException) throw e
            notes.add("Could not infer argument types: typechecking context unavailable")
            actualArgs.map { "unknown" }
        }
    }

    internal fun baseCandidate(node: SNode): AssignableReferenceCandidate =
        AssignableReferenceCandidate(
            // node.name may be a non-null empty string for anonymous classes / lambdas; in
            // that case fall through to the (possibly expensive) presentation instead of
            // returning "".
            name = node.name?.takeIf { it.isNotEmpty() } ?: node.presentation,
            reference = facade.asString(node.reference),
            concept = node.concept.name,
            conceptReference = facade.asString(node.concept),
            moduleReference = moduleRefStr(node),
            modelReference = modelRefStr(node)
        )

    internal fun createCandidate(node: SNode, context: AssignableReferenceService.ReferenceResolutionContext): AssignableReferenceCandidate {
        // FIX #2: Distinguish static from instance methods correctly
        val kind = when {
            node.concept.isSubConceptOf(constructorDeclarationConcept) -> CandidateKind.CONSTRUCTOR
            node.concept.isSubConceptOf(staticMethodDeclarationConcept) -> CandidateKind.STATIC_METHOD
            node.concept.isSubConceptOf(instanceMethodDeclarationConcept) -> CandidateKind.INSTANCE_METHOD
            node.concept.isSubConceptOf(baseMethodDeclarationConcept) -> CandidateKind.INSTANCE_METHOD
            node.concept.isSubConceptOf(classifierConcept) -> CandidateKind.CLASS
            else -> CandidateKind.UNKNOWN
        }

        // node.parent is the model root for top-level classifiers (and anything else not nested
        // under a real classifier), so propagating it verbatim makes expectedDeclaringType
        // filtering meaningless for top-level classes. Use findContainingClassifier so the
        // declaringType field is populated only when there is a real enclosing classifier.
        val declaringTypeNode = if (node.concept.isSubConceptOf(classifierConcept)) {
            findContainingClassifier(node)
        } else {
            node.parent?.takeIf { it.concept.isSubConceptOf(classifierConcept) }
        }
        val declaringType = declaringTypeNode?.name ?: ""
        val declaringTypeRef = declaringTypeNode?.let { facade.asString(it.reference) }

        // node.presentation may be expensive (it walks the editor presentation chain in MPS);
        // for method/constructor candidates the signature replaces it, so only compute the
        // presentation in the non-method branch.
        val isMethod = node.concept.isSubConceptOf(baseMethodDeclarationConcept)
        val signature = if (isMethod) {
            val params = node.getChildren(parameterLink).joinToString(", ") { p ->
                val type = p.getChildren(typeLink).firstOrNull()
                val typeName = type?.presentation ?: "Object"
                "${p.name}: $typeName"
            }
            "${node.name}($params)"
        } else {
            node.presentation
        }

        return baseCandidate(node).copy(
            kind = kind,
            declaringType = declaringType,
            declaringTypeReference = declaringTypeRef,
            signature = signature,
            accessible = computeAccessibility(node, context)
        )
    }

    // Match expectedDeclaringType (FQN, with node-reference fallback) against a candidate's
    // declaring classifier. Returns true iff either form matches. The derivation here mirrors
    // [createCandidate] so the scoring decision agrees with the declaringType field reported
    // to the caller.
    internal fun declaringTypeMatches(candidateNode: SNode, expected: String): Boolean {
        val declaringTypeNode = if (candidateNode.concept.isSubConceptOf(classifierConcept)) {
            findContainingClassifier(candidateNode)
        } else {
            candidateNode.parent?.takeIf { it.concept.isSubConceptOf(classifierConcept) }
        } ?: return false
        val asReference = facade.asString(declaringTypeNode.reference)
        if (asReference == expected) return true
        val asFqn = fqnOf(declaringTypeNode)
        return asFqn != null && asFqn == expected
    }
}
