package jetbrains.mps.agents.mcp.tools

import jetbrains.mps.lang.typesystem.runtime.HUtil
import jetbrains.mps.languageScope.LanguageScopeExecutor
import jetbrains.mps.newTypesystem.TypesUtil
import jetbrains.mps.newTypesystem.context.HoleTypecheckingContext
import jetbrains.mps.newTypesystem.context.component.HoleTypecheckingComponent
import jetbrains.mps.newTypesystem.context.typechecking.BaseTypechecking
import jetbrains.mps.newTypesystem.context.typechecking.HoleTypechecking
import jetbrains.mps.newTypesystem.state.HoleState
import jetbrains.mps.typechecking.TypecheckingFacade
import jetbrains.mps.typesystem.inference.TypeCheckerHelper
import org.jetbrains.mps.openapi.model.SNode

private const val UNCHECKED_SUBTREE_FALLBACK =
    "the node lies in a subtree marked IDontApplyTypesystemRules (e.g. commented out), which the root's type check " +
        "does not type; this is the bound its parent's slice puts on it, which misses the constraints the rest of the root would add"

private const val NO_ROOT_BOUND_FALLBACK =
    "the root's type check leaves the slot without a bound; this is the bound the parent's slice alone puts on it"

private fun rootTooLargeFallback(rootNodes: Int, maxRootNodes: Int) =
    "the root has $rootNodes nodes, more than maxRootNodes ($maxRootNodes), so it was not type-checked as a whole; " +
        "this is the bound the parent's slice alone puts on the node, which misses the constraints other statements add. " +
        "GET_EXPECTED_TYPE's maxRootNodes raises the cap, with the UI blocked while the root is checked"

/**
 * The type [node]'s context requires of it — GET_EXPECTED_TYPE's answer: the least common supertype of the
 * upper (`:<=:`) bounds put on the node, or else of its comparable bounds, as a hole check of the node's whole
 * root collects them; lower bounds and equations are not consulted, so a slot bounded only by `:==:` or `:>=:`
 * answers no type. The engine's own hole check types only the parent and what its rules ask for, so a bound
 * such as the type of a variable that another statement widens is expanded against incomplete equations.
 * The node is replaced by the hole placeholder, so its own contribution is not counted: a value that widens
 * a variable it is assigned to is bounded as if it did not, which can be narrower than what the root check
 * accepts. The parent-slice check, which `has expected type` and Show Expected Type also run, answers instead
 * (scope `node`, with a warning) for commented-out code, a root of more than [maxRootNodes] nodes, or when the
 * root check leaves the slot without a bound while the slice finds one. A root has no context and answers no
 * type. [use] maps the type before the check is disposed.
 */
internal fun <T : Any> rootScopedExpectedTypeOf(node: SNode, maxRootNodes: Int, use: (SNode) -> T): RootScopedType<T> {
    if (node.parent == null) return RootScopedType(null, "root")
    fun sliceBound(warning: String, rootTooLarge: Boolean = false) =
        RootScopedType(boundOrNull(TypecheckingFacade.getFromContext().getInferredType(node))?.let(use), "node", warning, rootTooLarge)
    if (isSkippedByRootTypecheck(node)) return sliceBound(UNCHECKED_SUBTREE_FALLBACK)
    val root = node.containingRoot
    val rootNodes = rootNodeCount(root)
    if (rootNodes > maxRootNodes) return sliceBound(rootTooLargeFallback(rootNodes, maxRootNodes), rootTooLarge = true)

    val context = RootHoleTypecheckingContext(root, TypecheckingFacade.getFromContext().getData(TypeCheckerHelper::class.java))
    val fromRoot = try {
        context.expectedType(node)?.let(use)
    } finally {
        context.dispose()
    }
    if (fromRoot != null) return RootScopedType(fromRoot, "root")
    val fromSlice = sliceBound(NO_ROOT_BOUND_FALLBACK)
    return if (fromSlice.value == null) RootScopedType(null, "root") else fromSlice
}

/** [type] unless it is no bound: the hole placeholder itself, which the engine's hole check discards too, or a bare type variable. */
private fun boundOrNull(type: SNode?): SNode? = type?.takeUnless { HUtil.isRuntimeHoleType(it) || TypesUtil.isVariable(it) }

/** A [HoleTypecheckingContext] over [root] whose hole check types the whole root, see [rootScopedExpectedTypeOf]. */
private class RootHoleTypecheckingContext(root: SNode, helper: TypeCheckerHelper) : HoleTypecheckingContext(root, helper) {
    override fun createTypechecking(): HoleTypechecking = RootHoleTypechecking(node, state)

    /** The bound on [hole], with the rules in the root model's language scope, as the editor's root check applies them. */
    fun expectedType(hole: SNode): SNode? = LanguageScopeExecutor.execWithModelScope(node.model, {
        (typechecking as RootHoleTypechecking).expectedTypeInRoot(hole)
    }, typeCheckerHelper.scopeFactory)
}

private class RootHoleTypechecking(root: SNode, state: HoleState) : HoleTypechecking(root, state) {
    override fun createTypecheckingComponent(): HoleTypecheckingComponent = RootHoleTypecheckingComponent(state, this)

    /** [HoleTypechecking.computeInequalitiesForHole], with the whole root checked instead of the hole's parent. */
    fun expectedTypeInRoot(hole: SNode): SNode? {
        state.initHole(hole)
        try {
            (typecheckingComponent as RootHoleTypecheckingComponent).checkRootAround(myRootNode, hole)
            val inequalities = state.inequalitySystem
            inequalities.expandAll(state.equations)
            return boundOrNull(inequalities.expectedType)
        } finally {
            state.disposeHole()
        }
    }
}

private class RootHoleTypecheckingComponent(state: HoleState, typechecking: BaseTypechecking<*, *>) :
    HoleTypecheckingComponent(state, typechecking) {

    // The engine's hole check stops as soon as the hole's bounds are free of type variables; a bound that
    // a later statement widens would then be missed, so every node of the root is typed.
    override fun typeCalculated(initialNode: SNode?): SNode? = null

    fun checkRootAround(root: SNode, hole: SNode) {
        computeTypesSpecial(root, true, listOf(hole), false, hole)
    }
}
