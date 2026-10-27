package jetbrains.mps.agents.mcp.tools

import jetbrains.mps.agents.mcp.tools.common.*

import com.google.gson.JsonArray
import com.google.gson.JsonElement
import com.google.gson.JsonObject
import com.intellij.mcpserver.annotations.McpDescription
import com.intellij.mcpserver.annotations.McpTool
import com.intellij.openapi.diagnostic.ControlFlowException
import com.intellij.openapi.progress.ProcessCanceledException
import jetbrains.mps.agents.mcp.tools.logging.McpCallOutcomes
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SModelOperations
import jetbrains.mps.lang.typesystem.runtime.SubtypingRule_Runtime
import jetbrains.mps.languageScope.LanguageScopeExecutor
import jetbrains.mps.newTypesystem.SubTypingManagerNew
import jetbrains.mps.newTypesystem.TypesUtil
import jetbrains.mps.newTypesystem.context.TracingTypecheckingContext
import jetbrains.mps.newTypesystem.operation.AbstractOperation
import jetbrains.mps.newTypesystem.operation.AddErrorOperation
import jetbrains.mps.newTypesystem.operation.ApplyRuleOperation
import jetbrains.mps.newTypesystem.operation.AssignTypeOperation
import jetbrains.mps.newTypesystem.operation.CheckSubTypeOperation
import jetbrains.mps.newTypesystem.operation.ProcessReplacementRuleOperation
import jetbrains.mps.newTypesystem.operation.TraceWarningOperation
import jetbrains.mps.newTypesystem.operation.block.AbstractBlockOperation
import jetbrains.mps.newTypesystem.operation.block.AddDependencyOperation
import jetbrains.mps.newTypesystem.operation.block.RemoveDependencyOperation
import jetbrains.mps.newTypesystem.operation.equation.AddEquationOperation
import jetbrains.mps.project.MPSProject
import jetbrains.mps.smodel.SNodePointer
import jetbrains.mps.typechecking.TypecheckingFacade
import jetbrains.mps.typechecking.TypecheckingSession
import jetbrains.mps.typesystem.inference.TypeCheckerHelper
import jetbrains.mps.typesystem.inference.util.StructuralNodeSet
import jetbrains.mps.typesystemEngine.util.TypeSystemUtil
import org.jetbrains.mps.openapi.language.SAbstractConcept
import org.jetbrains.mps.openapi.language.SConcept
import org.jetbrains.mps.openapi.model.SNode
import org.jetbrains.mps.openapi.model.SNodeReference
import org.jetbrains.mps.openapi.model.SNodeUtil
import org.jetbrains.mps.openapi.module.SRepository
import org.jetbrains.mps.openapi.persistence.PersistenceFacade

enum class TypesQueryOperation {
    IS_SUBTYPE,
    SUPERTYPES,
    COMMON_SUPERTYPE,
    COERCE,
    OPERATION_TYPE,
    EXPLAIN_TYPE,
}

private const val DEFAULT_SUPERTYPES_DEPTH = 8
private const val MAX_SUPERTYPES_DEPTH = 32
internal const val DEFAULT_MAX_ROOT_NODES = 10000

/**
 * `parameters.maxRootNodes`, or [DEFAULT_MAX_ROOT_NODES]: the largest root that EXPLAIN_TYPE and
 * `mps_mcp_query_nodes` GET_TYPE and GET_EXPECTED_TYPE type-check as a whole, since the check blocks the UI while it runs.
 */
internal fun JsonObject.maxRootNodesParameter(): Int {
    val maxRootNodes = paramInt("maxRootNodes") ?: return DEFAULT_MAX_ROOT_NODES
    if (maxRootNodes < 1) {
        throw AbstractOps.McpInvalidRequestException("'parameters.maxRootNodes' must be at least 1, got $maxRootNodes")
    }
    return maxRootNodes
}

internal fun rootNodeCount(root: SNode): Int = SNodeUtil.getDescendants(root).count()

/**
 * Whether [node] lies in a subtree marked IDontApplyTypesystemRules (e.g. commented out). A check of the
 * node's root does not type that subtree; a one-node computation, which starts below the marker, still does.
 */
internal fun isSkippedByRootTypecheck(node: SNode): Boolean =
    generateSequence(node) { it.parent }.any { !TypeSystemUtil.shouldApplyTypeSystemRules(it) }

/**
 * A node's type as [rootScopedTypesOf] found it: [value] is what the caller made of the type (null for no
 * type), [scope] is `root` or `node`, and [warning] explains a fallback to the one-node computation;
 * [rootTooLarge] says the fallback was the `maxRootNodes` cap, which the caller can lift.
 */
internal class RootScopedType<T : Any>(
    val value: T?,
    val scope: String,
    val warning: String? = null,
    val rootTooLarge: Boolean = false,
)

private const val UNCHECKED_SUBTREE_FALLBACK =
    "the node lies in a subtree marked IDontApplyTypesystemRules (e.g. commented out), which the root's type check " +
        "does not type; this is the node's one-node type, which misses the constraints the rest of the root would put on it"

private const val NO_ROOT_TYPE_FALLBACK =
    "the root's type check gives the node no type; this is its one-node type, computed from the node's own slice only"

private fun rootTooLargeFallback(rootNodes: Int, maxRootNodes: Int) =
    "the root has $rootNodes nodes, more than maxRootNodes ($maxRootNodes), so it was not type-checked as a whole; " +
        "this is the node's one-node type, which misses the constraints other statements put on it. " +
        "GET_TYPE's maxRootNodes raises the cap, with the UI blocked while the root is checked"

/**
 * The type the typesystem assigns to each of [nodes] — GET_TYPE's answer, and a `nodeReference` type
 * operand's: the one a check of the node's whole root decides, the check the editor and
 * `mps_mcp_check_root_node_problems` run, so the constraints other statements put on the node count. The
 * nodes are grouped by root and each root is checked once, in one isolated session for all its nodes. A
 * one-node computation types only a node's own slice; it answers instead (scope `node`, with a warning)
 * when the root check does not type the node (a commented-out subtree), the root has more than
 * [maxRootNodes] nodes, or the root check gives a non-root node no type the one-node computation does
 * find. Both run in isolated sessions, so the answer does not depend on whether an editor has the root
 * open. [use] maps a type inside its session; the type node stays usable after the session clears its
 * state on exit. A bare type variable is no type. The map keeps the order of [nodes], without duplicates.
 */
internal fun <T : Any> rootScopedTypesOf(nodes: Collection<SNode>, maxRootNodes: Int, use: (SNode) -> T): Map<SNode, RootScopedType<T>> {
    val facade = TypecheckingFacade.getFromContext()
    fun typesIn(flags: TypecheckingSession.Flags, typed: Collection<SNode>): Map<SNode, T?> =
        facade.computeIsolated(flags) { _: TypecheckingSession ->
            typed.associateWith { facade.getTypeOf(it)?.takeUnless(TypesUtil::isVariable)?.let(use) }
        }
    val found = HashMap<SNode, RootScopedType<T>>()
    // A node the root check does not settle, with the warning its one-node type carries.
    val fallbacks = LinkedHashMap<SNode, RootScopedType<T>>()
    for ((root, group) in nodes.distinct().groupBy { it.containingRoot }) {
        val (skipped, checked) = group.partition(::isSkippedByRootTypecheck)
        skipped.forEach { fallbacks[it] = RootScopedType(null, "node", UNCHECKED_SUBTREE_FALLBACK) }
        if (checked.isEmpty()) continue
        val rootNodes = rootNodeCount(root)
        if (rootNodes > maxRootNodes) {
            val warning = rootTooLargeFallback(rootNodes, maxRootNodes)
            checked.forEach { fallbacks[it] = RootScopedType(null, "node", warning, rootTooLarge = true) }
            continue
        }
        for ((node, type) in typesIn(TypecheckingSession.Flags.forRoot(root).incremental(), checked)) {
            when {
                type != null -> found[node] = RootScopedType(type, "root")
                // The root check applied every rule the root's own computation would.
                node == root -> found[node] = RootScopedType(null, "root")
                else -> fallbacks[node] = RootScopedType(null, "node", NO_ROOT_TYPE_FALLBACK)
            }
        }
    }
    if (fallbacks.isNotEmpty()) {
        val nodeTypes = typesIn(TypecheckingSession.Flags.basic(), fallbacks.keys)
        for ((node, fallback) in fallbacks) {
            val type = nodeTypes[node]
            found[node] = if (type == null && fallback.warning == NO_ROOT_TYPE_FALLBACK) RootScopedType(null, "root")
            else RootScopedType(type, "node", fallback.warning, fallback.rootTooLarge)
        }
    }
    return nodes.distinct().associateWith { found.getValue(it) }
}

/** [rootScopedTypesOf] for one node. */
internal fun <T : Any> rootScopedTypeOf(node: SNode, maxRootNodes: Int, use: (SNode) -> T): RootScopedType<T> =
    rootScopedTypesOf(listOf(node), maxRootNodes, use).getValue(node)

private const val OPERAND_EXPECTED =
    "a type operand: an object with exactly one of nodeReference, typeNodeReference, typeConceptRef or blueprint"

private val OPERAND_NODE = BlobKey("nodeReference", "nodeRef")
private val OPERAND_TYPE_NODE = BlobKey("typeNodeReference", "typeNodeRef")
private val OPERAND_TYPE_CONCEPT = BlobKey("typeConceptRef", "typeConceptReference")
private val OPERAND_BLUEPRINT = BlobKey("blueprint")
private val OPERAND_KEYS = listOf(OPERAND_NODE, OPERAND_TYPE_NODE, OPERAND_TYPE_CONCEPT, OPERAND_BLUEPRINT)

/**
 * The other keys of a type object the type tools print. Tolerated beside `blueprint`, so a printed type
 * can be passed back as an operand as is; only its `blueprint` is read.
 */
private val PRINTED_TYPE_KEYS = setOf("concept", "conceptReference", "presentation", "hasTypeVariables")

private val PARAM_OPERATOR_NODE = BlobKey("operatorNode", "operatorNodeRef", "operatorNodeReference")
private val PARAM_OPERATOR_CONCEPT_REF = BlobKey("operatorConceptRef", "operatorConceptReference")

private val IS_SUBTYPE_KEYS = ParameterKeys.of(
    required("sub", "the candidate subtype, $OPERAND_EXPECTED"),
    required("super", "the candidate supertype, $OPERAND_EXPECTED"),
)

private val SUPERTYPES_KEYS = ParameterKeys.of(required("type", OPERAND_EXPECTED), "depth", "weak")

private val COMMON_SUPERTYPE_KEYS =
    ParameterKeys.of(required("types", "a JSON array of at least two type operands, each $OPERAND_EXPECTED"))

private val COERCE_KEYS = ParameterKeys.of(
    required("type", OPERAND_EXPECTED),
    required(PARAM_CONCEPT_REF, "the (non-interface) type concept to view the type as, e.g. ClassifierType"),
    "strong",
)

private val OPERATION_TYPE_KEYS = ParameterKeys.of(
    PARAM_OPERATOR_NODE, PARAM_OPERATOR_CONCEPT_REF,
    requiredOneOf(
        PARAM_OPERATOR_NODE, PARAM_OPERATOR_CONCEPT_REF,
        expected = "the operation: an existing operation node's reference (operatorNode) or its concept (operatorConceptRef)",
    ),
    required("left", "the left operand's type, $OPERAND_EXPECTED"),
    required("right", "the right operand's type, $OPERAND_EXPECTED"),
)

private val EXPLAIN_TYPE_KEYS = ParameterKeys.of(
    required(PARAM_NODE_REFERENCE, "the reference of the node whose type to explain"),
    "includeApplyRule", "maxRootNodes",
)

/** The accepted `parameters` keys of each [TypesQueryOperation]. */
private fun queryTypesParameterKeys(operation: TypesQueryOperation): ParameterKeys = when (operation) {
    TypesQueryOperation.IS_SUBTYPE -> IS_SUBTYPE_KEYS
    TypesQueryOperation.SUPERTYPES -> SUPERTYPES_KEYS
    TypesQueryOperation.COMMON_SUPERTYPE -> COMMON_SUPERTYPE_KEYS
    TypesQueryOperation.COERCE -> COERCE_KEYS
    TypesQueryOperation.OPERATION_TYPE -> OPERATION_TYPE_KEYS
    TypesQueryOperation.EXPLAIN_TYPE -> EXPLAIN_TYPE_KEYS
}

// MCP tool methods use snake_case names because they are part of the public MCP protocol
// surface, and they are invoked via reflection by the MCP server framework, so static
// analysis flags them as "never used".
@Suppress("FunctionName", "unused")
class JetBrainsMPSTypesMcpToolset : AbstractNodeOps() {

    @McpTool
    @McpDescription("""
        Read-only typesystem queries: the engine runs the language's subtyping, replacement, comparison and
        overloaded-operation rules, so the answer is what the type checker itself decides. Each type operand is an
        object with exactly one of `nodeReference` (the type of that node, as `mps_mcp_query_nodes` GET_TYPE computes it from
        the node's root; a one-node fallback adds a `warnings` entry naming the operand),
        `typeNodeReference` (a stored type node used as the type itself, e.g. a field's `type` child), `typeConceptRef`
        (a type concept with no mandatory child or reference, e.g. IntegerType) or `blueprint` (a type's node tree; a
        printed type object is accepted as is). IS_SUBTYPE {sub, super} → {isSubtype, isStrongSubtype, isComparable, sub, super}.
        SUPERTYPES {type, depth (default 8, max 32), weak (default true)} → {type, immediate, transitive:[{type, depth}]},
        `details.truncated`:true when the depth cap stopped the walk. COMMON_SUPERTYPE {types: array of >= 2 operands} →
        {types, result}: the least common supertypes, a list because a lattice can have several. COERCE {type, conceptRef,
        strong (default false)} → {coerced}: the type or its supertype that is an instance of that concept (any
        non-interface concept, e.g. ClassifierType or the abstract PrimitiveType), or null. OPERATION_TYPE {operatorNode or operatorConceptRef, left, right} → {type}: the
        overloaded-operation result type, null when no rule applies. EXPLAIN_TYPE {nodeReference, includeApplyRule (default
        false), maxRootNodes (default 10000)} → {type, trace:[{kind, presentation, source?,
        rule?, error?, consequences?}]}: why the node has its type — the devkit's type-system trace for that node, headless:
        the type assignments, equations and inequalities of its slice, nested as the engine ran them, each with the rule
        statement that added it as {rule, ruleReference, statement}. A subtype check is a `subtype_checked` or
        `subtype_by_replacement` entry with {holds, weak, sub, super, via:[{from, to, rule}]}: `via` re-derives the
        subtyping or replacement rules the check went through (`from`/`to` are presentations), empty when it failed or the types
        match structurally, and empty with a warning when it cannot be rebuilt. It type-checks the node's whole root, so a root of more
        than maxRootNodes nodes is rejected. Every type is printed as {concept, conceptReference,
        presentation, hasTypeVariables?, blueprint} and carries no node reference. `isComparable: true` does not prove a
        `ComparisonRule` fired; `COMMON_SUPERTYPE` may return several types, whose meet the checker may use rather than
        choosing one; confirm a surprising `SUPERTYPES` result with `IS_SUBTYPE`, because the walk can include languages
        that subtyping does not consult. `OPERATION_TYPE` from `operatorConceptRef` sees default operator properties, `null`
        means no rule applied, and equally specific rules are listed in `ruleConflicts`. There is no runtime query to list
        inference rules for a concept, structural `TYPES_MATCH`, generation-mode typing, or type flags on `mps_mcp_print_node`;
        rules in languages extending the concept's language are not included in the aspect sweep. A node's own type and the type its context
        expects of it are `mps_mcp_query_nodes` GET_TYPE and GET_EXPECTED_TYPE. Returns `{"ok":true,"data":{...}}` on
        success or `{"ok":false,"error":"..."}` on failure; `data` is inline up to `maxInlineBytes` (default 20000),
        otherwise a temp-file path. See the `mps-mcp-workflow` skill (`references/analysis-tools/type-queries.md`).
    """)
    suspend fun mps_mcp_query_types(
        @McpDescription("Required. The operation to perform (IS_SUBTYPE, SUPERTYPES, COMMON_SUPERTYPE, COERCE, OPERATION_TYPE, EXPLAIN_TYPE)") operation: String = "",
        @McpDescription("Required. Parameters for the operation, as a JSON object — sent as real JSON or as its string form.") parameters: JsonOrText = JsonOrText.EMPTY,
        @McpDescription("Inline results up to this many characters in `data`; larger ones are saved to a temp file whose path is returned instead (default 20000).") maxInlineBytes: Int = DEFAULT_MAX_INLINE_BYTES
    ): String {
        // D43: see mps_mcp_query_nodes for the order (a supplied but unknown operation wins over a blank blob).
        if (operation.isBlank()) {
            rejectMissingParameters(
                "mps_mcp_query_types",
                requiredOperation<TypesQueryOperation>(operation),
                requiredParametersBlob(parameters.text),
            )?.let { return it }
        }
        val op = resolveOperationOrNull<TypesQueryOperation>(operation)
            ?: return McpCallOutcomes.record(unknownOperation<TypesQueryOperation>(operation))
        rejectMissingParameters(
            "mps_mcp_query_types",
            requiredParametersBlob(parameters.text, op.name, queryTypesParameterKeys(op)),
        )?.let { return it }
        return mps_mcp_query_types(op, parameters.text, maxInlineBytes)
    }

    /**
     * Internal enum-typed entry point for [mps_mcp_query_types]; the String overload above is the
     * registered `@McpTool` (see [resolveOperationOrNull] for the rationale).
     */
    suspend fun mps_mcp_query_types(
        operation: TypesQueryOperation,
        parameters: String,
        maxInlineBytes: Int = DEFAULT_MAX_INLINE_BYTES
    ): String = withMpsProject("Querying MPS types: $operation") { mpsProject ->
        val params = try {
            parseParametersBlob(parameters)
        } catch (e: Exception) {
            rethrowIfCancellation(e)
            return@withMpsProject invalidJson("Invalid JSON parameters: ${e.message}")
        }
        params.rejectUnknownParameterKeys(operation.name, queryTypesParameterKeys(operation))
        params.rejectMissingParameterKeys(operation.name, queryTypesParameterKeys(operation))

        when (operation) {
            TypesQueryOperation.IS_SUBTYPE -> opIsSubtype(mpsProject, params, maxInlineBytes)
            TypesQueryOperation.SUPERTYPES -> opSupertypes(mpsProject, params, maxInlineBytes)
            TypesQueryOperation.COMMON_SUPERTYPE -> opCommonSupertype(mpsProject, params, maxInlineBytes)
            TypesQueryOperation.COERCE -> opCoerce(mpsProject, params, maxInlineBytes)
            TypesQueryOperation.OPERATION_TYPE -> opOperationType(mpsProject, params, maxInlineBytes)
            TypesQueryOperation.EXPLAIN_TYPE -> opExplainType(mpsProject, params, maxInlineBytes)
        }
    }

    /**
     * The engine entry points of one call, fetched on the EDT inside its read action: there the facade hands
     * out the workbench controller, whose on-demand session answers for detached operands too.
     */
    private class Engine(val facade: TypecheckingFacade) {
        val helper: TypeCheckerHelper = facade.getData(TypeCheckerHelper::class.java)

        /** Why a `nodeReference` operand was typed by the one-node computation; the answer's `warnings`. */
        val operandWarnings = mutableListOf<String>()
    }

    private suspend fun readWithEngine(mpsProject: MPSProject, action: (Engine) -> String): String =
        executeShortReadOnEdt(mpsProject) { action(Engine(TypecheckingFacade.getFromContext())) }

    private suspend fun opIsSubtype(mpsProject: MPSProject, params: JsonObject, maxInlineBytes: Int): String =
        readWithEngine(mpsProject) { engine ->
            val (sub, sup) = typeOperands(listOf(params.get("sub") to "parameters.sub", params.get("super") to "parameters.super"), mpsProject, engine)
            val result = JsonObject()
            result.addProperty("isSubtype", engine.facade.isSubtype(sub, sup))
            result.addProperty("isStrongSubtype", engine.facade.isStrongSubtype(sub, sup))
            result.addProperty("isComparable", engine.helper.subtypingManager.isComparable(sub, sup, true))
            result.add("sub", typeJsonObject(sub, mpsProject))
            result.add("super", typeJsonObject(sup, mpsProject))
            finalizeResult(result.toString(), maxInlineBytes, warnings = engine.operandWarnings)
        }

    /**
     * Breadth-first over the immediate supertypes. Visited types are compared structurally, which keeps a
     * cyclic lattice finite; [MAX_SUPERTYPES_DEPTH] bounds the size of the walk.
     */
    private suspend fun opSupertypes(mpsProject: MPSProject, params: JsonObject, maxInlineBytes: Int): String {
        val depth = params.paramInt("depth") ?: DEFAULT_SUPERTYPES_DEPTH
        if (depth !in 1..MAX_SUPERTYPES_DEPTH) {
            return errJson("'parameters.depth' must be between 1 and $MAX_SUPERTYPES_DEPTH, got $depth", McpErrorCode.INVALID_REQUEST)
        }
        val weak = params.paramBoolean("weak", default = true)
        return readWithEngine(mpsProject) { engine ->
            val type = typeOperands(listOf(params.get("type") to "parameters.type"), mpsProject, engine).single()
            val subtyping = engine.helper.subtypingManager
            val visited = StructuralNodeSet<Any>().apply { add(type) }
            val immediate = JsonArray()
            val transitive = JsonArray()
            var frontier = listOf(type)
            var level = 0
            var truncated = false
            while (true) {
                val next = frontier.flatMap { subtyping.collectImmediateSupertypes(it, weak) }.filter(visited::add)
                if (next.isEmpty()) break
                if (level == depth) {
                    truncated = true
                    break
                }
                level++
                for (supertype in next) {
                    val printed = typeJsonObject(supertype, mpsProject)
                    if (level == 1) immediate.add(printed)
                    transitive.add(JsonObject().apply {
                        add("type", printed)
                        addProperty("depth", level)
                    })
                }
                frontier = next
            }
            val result = JsonObject()
            result.add("type", typeJsonObject(type, mpsProject))
            result.add("immediate", immediate)
            result.add("transitive", transitive)
            finalizeResult(
                result.toString(), maxInlineBytes,
                details = if (truncated) mapOf("truncated" to true) else emptyMap(),
                warnings = engine.operandWarnings,
            )
        }
    }

    /**
     * The raw least common supertypes. A `:>=:` solution in the checker may additionally be their meet, and
     * the engine always computes them weakly, so there is no `weak` key.
     */
    private suspend fun opCommonSupertype(mpsProject: MPSProject, params: JsonObject, maxInlineBytes: Int): String {
        val operands = params.get("types")?.takeIf { it.isJsonArray }?.asJsonArray
        if (operands == null || operands.size() < 2) {
            return errJson("'parameters.types' must be a JSON array of at least two type operands", McpErrorCode.INVALID_REQUEST)
        }
        return readWithEngine(mpsProject) { engine ->
            val types = typeOperands(operands.mapIndexed { index, element -> element to "parameters.types[$index]" }, mpsProject, engine)
            // The engine answers a HashSet; sorted so that several results come back in a stable order.
            val lcs = engine.helper.subtypingManager.leastCommonSupertypes(LinkedHashSet(types), true).sortedBy { it.presentation }
            val result = JsonObject()
            result.add("types", JsonArray().apply { types.forEach { add(typeJsonObject(it, mpsProject)) } })
            result.add("result", JsonArray().apply { lcs.forEach { add(typeJsonObject(it, mpsProject)) } })
            finalizeResult(result.toString(), maxInlineBytes, warnings = engine.operandWarnings)
        }
    }

    private suspend fun opCoerce(mpsProject: MPSProject, params: JsonObject, maxInlineBytes: Int): String {
        val conceptRef = params.requiredParamString(PARAM_CONCEPT_REF)
        val strong = params.paramBoolean("strong", default = false)
        return readWithEngine(mpsProject) { engine ->
            val type = typeOperands(listOf(params.get("type") to "parameters.type"), mpsProject, engine).single()
            val concept = resolveConceptPreferringProject(mpsProject, conceptRef) ?: run {
                // The parameter takes a name or a reference alike; conceptHint reads either from conceptReference.
                val hint = conceptHint(mpsProject.repository, mpsProject, concept = null, conceptReference = conceptRef)
                throw McpNotFoundException("Concept '$conceptRef' at parameters.conceptRef not found" + hint.messageSuffix, hint.details)
            }
            ConceptGate(mpsProject).require(concept, "Concept '${structureQualifiedName(concept)}' at parameters.conceptRef", TYPE_OPERAND_NOT_BUILT)
            if (concept !is SConcept) {
                throw McpInvalidRequestException(
                    "Concept '${concept.name}' at parameters.conceptRef is an interface concept; COERCE takes a non-interface type concept"
                )
            }
            val coerced = if (strong) engine.facade.strongCoerceType(type, concept) else engine.facade.coerceType(type, concept)
            val result = JsonObject()
            result.add("coerced", coerced?.let { typeJsonObject(it, mpsProject) })
            finalizeResult(result.toString(), maxInlineBytes, warnings = engine.operandWarnings)
        }
    }

    /**
     * A rule conflict reaches the producer as the `(model, node)` id of each conflicting rule. With
     * `operatorConceptRef` the operation is a fresh detached instance, so a rule reading its properties sees
     * default values; the answer warns about that.
     */
    private suspend fun opOperationType(mpsProject: MPSProject, params: JsonObject, maxInlineBytes: Int): String {
        val operatorNodeRef = params.paramString(PARAM_OPERATOR_NODE)
        val operatorConceptRef = params.paramString(PARAM_OPERATOR_CONCEPT_REF)
        if (operatorNodeRef != null && operatorConceptRef != null) {
            return errJson("Pass either 'operatorNode' or 'operatorConceptRef', not both", McpErrorCode.INVALID_REQUEST)
        }
        return readWithEngine(mpsProject) { engine ->
            val warnings = mutableListOf<String>()
            val operator = if (operatorNodeRef != null) {
                resolveNodeReferencePreferringProject(mpsProject, operatorNodeRef)?.resolve(mpsProject.repository)
                    ?: throw McpNotFoundException("Node '$operatorNodeRef' at parameters.operatorNode not found")
            } else {
                val concept = concreteConcept(checkNotNull(operatorConceptRef), "parameters.operatorConceptRef", mpsProject)
                warnings.add(
                    "operator is a detached instance of '${concept.name}'; rules reading its properties see default values " +
                        "— pass operatorNode for an exact answer"
                )
                SModelOperations.createNewNode(null, null, concept)
            }
            val (left, right) = typeOperands(listOf(params.get("left") to "parameters.left", params.get("right") to "parameters.right"), mpsProject, engine)
            val conflicts = linkedSetOf<Pair<String?, String?>>()
            val type = engine.helper.getOperationType(operator, left, right) { ruleModelId, ruleNodeId ->
                conflicts.add(ruleModelId to ruleNodeId)
            }
            val result = JsonObject()
            result.add("type", type?.let { typeJsonObject(it, mpsProject) })
            if (conflicts.isNotEmpty()) {
                result.add("ruleConflicts", JsonArray().apply { conflicts.forEach { (model, node) -> add(ruleJsonObject(model, node, mpsProject)) } })
                warnings.add(
                    "overloaded-operation rules are equally specific for these operands; the first that answered was used " +
                        "— see data.ruleConflicts"
                )
            }
            finalizeResult(result.toString(), maxInlineBytes, warnings = engine.operandWarnings + warnings)
        }
    }

    /**
     * The devkit's "Type-system Trace" with "trace for selected node", headless: a tracing check of the node's
     * whole root records every operation, and [TypeTrace] keeps those about the node. The type is the one this
     * check arrived at, expanded here: the root check's state expands only a target node, and has none.
     * `type_assigned` presentations show the variables it was solved through.
     */
    private suspend fun opExplainType(mpsProject: MPSProject, params: JsonObject, maxInlineBytes: Int): String {
        val nodeReference = params.requiredParamString(PARAM_NODE_REFERENCE)
        val includeApplyRule = params.paramBoolean("includeApplyRule", default = false)
        val maxRootNodes = params.maxRootNodesParameter()
        return readWithEngine(mpsProject) { engine ->
            val node = resolveNodeReferencePreferringProject(mpsProject, nodeReference)?.resolve(mpsProject.repository)
                ?: throw McpNotFoundException("Node '$nodeReference' at parameters.nodeReference not found")
            val root = node.containingRoot
            val rootNodes = rootNodeCount(root)
            if (rootNodes > maxRootNodes) {
                throw McpInvalidRequestException(
                    "The root of '$nodeReference' has $rootNodes nodes, more than maxRootNodes ($maxRootNodes): EXPLAIN_TYPE " +
                        "type-checks the whole root and records every operation, with the UI blocked meanwhile. Raise " +
                        "maxRootNodes to accept that, or explain a copy of the code in a smaller root"
                )
            }
            val warnings = mutableListOf<String>()
            if (isSkippedByRootTypecheck(node)) {
                warnings.add(
                    "the node lies in a subtree marked IDontApplyTypesystemRules (e.g. commented out), which the typesystem " +
                        "does not check, so its trace is normally empty and its type null here; GET_TYPE may still answer one, " +
                        "since its one-node computation starts below the marker"
                )
            }
            val context = TracingTypecheckingContext(root, engine.helper)
            try {
                context.checkRootInTraceMode(true)
                val trace = TypeTrace(
                    node, includeApplyRule,
                    ruleJson = { statement -> ruleJsonObject(statement, statement.resolve(mpsProject.repository)?.containingRoot) },
                    typeJson = { type -> typeJsonObject(type, mpsProject) },
                    helper = engine.helper,
                    repository = mpsProject.repository,
                )
                // Walked first, so nothing the type lookup does can reach the tree being walked.
                val entries = trace.entries(context.operation)
                warnings.addAll(trace.warnings.distinct())
                val type = context.getTypeDontCheck(node)?.let { context.state.expandFinal(it) }?.takeUnless(TypesUtil::isVariable)
                val result = JsonObject()
                result.add("type", type?.let { typeJsonObject(it, mpsProject) })
                result.add("trace", entries)
                finalizeResult(result.toString(), maxInlineBytes, warnings = warnings)
            } finally {
                context.dispose()
            }
        }
    }

    /**
     * `{rule, ruleReference, statement}`: the ids name a node inside a rule, the rule is its root. Ids a
     * hand-written provider passes may not parse; the statement then keeps them as given.
     */
    private fun ruleJsonObject(ruleModelId: String?, ruleNodeId: String?, mpsProject: MPSProject): JsonObject =
        ruleJsonObject(runCatching { SNodePointer(ruleModelId, ruleNodeId) }.getOrNull(), "$ruleModelId/$ruleNodeId", mpsProject.repository)

    /** A parsed type operand: the type itself, or a node whose type is still to be computed. */
    private sealed class Operand {
        class Type(val type: SNode) : Operand()
        class OfNode(val node: SNode, val ref: String, val label: String) : Operand()
    }

    /**
     * Turns operand objects, each with its JSON path, into type nodes in input order. Every operand is parsed
     * first; the `nodeReference` ones are then typed together by [rootScopedTypesOf], so operands sharing a
     * root cost one root check. A one-node fallback adds a warning naming the operand to the answer.
     */
    private fun typeOperands(operands: List<Pair<JsonElement?, String>>, mpsProject: MPSProject, engine: Engine): List<SNode> {
        val parsed = operands.map { (element, path) -> parseOperand(element, path, mpsProject) }
        val nodeTypes = rootScopedTypesOf(parsed.filterIsInstance<Operand.OfNode>().map { it.node }, DEFAULT_MAX_ROOT_NODES) { it }
        return parsed.map { operand ->
            when (operand) {
                is Operand.Type -> operand.type
                is Operand.OfNode -> {
                    val type = nodeTypes.getValue(operand.node)
                    type.warning?.let { engine.operandWarnings.add("${operand.label}: $it") }
                    type.value ?: throw McpInvalidRequestException(buildString {
                        append("Node '${operand.ref}' at ${operand.label} has no type (GET_TYPE answers null for it)")
                        type.warning?.let { append(": $it") }
                        if (type.rootTooLarge) {
                            append(". Call mps_mcp_query_nodes GET_TYPE on it with a higher maxRootNodes and pass the printed type back as a blueprint operand")
                        }
                        append(". A stored type node is passed as typeNodeReference, a type concept as typeConceptRef")
                    })
                }
            }
        }
    }

    /**
     * Parses one operand object. A node or concept the caller named that does not exist is `NOT_FOUND`; an
     * operand that is malformed or cannot be a type is `INVALID_REQUEST` naming [path].
     */
    private fun parseOperand(element: JsonElement?, path: String, mpsProject: MPSProject): Operand {
        val operand = element?.takeIf { it.isJsonObject }?.asJsonObject
            ?: throw McpInvalidRequestException("'$path' must be $OPERAND_EXPECTED")
        val sent = operand.keySet().filterNot { operand.get(it).isJsonNull }
        val chosen = sent.filter { key -> OPERAND_KEYS.any { key in it.spellings } }
        val unknown = sent.filterNot { key ->
            key in chosen || (key in PRINTED_TYPE_KEYS && chosen.singleOrNull() == OPERAND_BLUEPRINT.canonical)
        }
        if (unknown.isNotEmpty() || chosen.size != 1) {
            throw McpInvalidRequestException(
                "'$path' carries ${sent.joinToString(", ") { "'$it'" }.ifEmpty { "no key" }}; it must be $OPERAND_EXPECTED"
            )
        }
        val key = chosen.single()
        val value = operand.get(key)
        if (key == OPERAND_BLUEPRINT.canonical) {
            val blueprint = value.takeIf { it.isJsonObject }?.asJsonObject
                ?: throw McpInvalidRequestException("'$path.blueprint' must be a JSON object holding a type's node tree")
            val type = typeOperandNode(blueprint, mpsProject, "$path.blueprint")
            // A printed type object repeats its blueprint's concept; a mismatch means it was edited by hand.
            val printedConcept = operand.get("conceptReference")?.takeIf { it.isJsonPrimitive }?.asString
            if (printedConcept != null && resolveConceptPreferringProject(mpsProject, printedConcept) != type.concept) {
                throw McpInvalidRequestException(
                    "'$path.conceptReference' ($printedConcept) disagrees with the concept of '$path.blueprint' (${type.concept.name})"
                )
            }
            return Operand.Type(type)
        }
        val ref = value.takeIf { it.isJsonPrimitive && it.asJsonPrimitive.isString && it.asString.isNotBlank() }?.asString
            ?: throw McpInvalidRequestException("'$path.$key' must be a nonblank string")
        return when (key) {
            in OPERAND_NODE.spellings -> {
                val node = resolveNodeReferencePreferringProject(mpsProject, ref)?.resolve(mpsProject.repository)
                    ?: throw McpNotFoundException("Node '$ref' at $path.$key not found")
                ConceptGate(mpsProject).require(node.concept, "Concept '${structureQualifiedName(node.concept)}' of node '$ref' at $path.$key", TYPE_OPERAND_NOT_BUILT)
                Operand.OfNode(node, ref, "$path.$key")
            }
            in OPERAND_TYPE_NODE.spellings -> Operand.Type(
                resolveNodeReferencePreferringProject(mpsProject, ref)?.resolve(mpsProject.repository)
                    ?: throw McpNotFoundException("Node '$ref' at $path.$key not found")
            )
            else -> {
                val concept = concreteConcept(ref, "$path.$key", mpsProject)
                val mandatory = concept.containmentLinks.filterNot { it.isOptional }.map { it.name } +
                    concept.referenceLinks.filterNot { it.isOptional }.map { it.name }
                if (mandatory.isNotEmpty()) {
                    throw McpInvalidRequestException(
                        "Type concept '${concept.name}' at $path.$key has mandatory ${mandatory.joinToString(", ") { "'$it'" }}, " +
                            "so it cannot be built from the concept alone; pass a blueprint, a typeNodeReference or a nodeReference"
                    )
                }
                Operand.Type(SModelOperations.createNewNode(null, null, concept))
            }
        }
    }

    private fun concreteConcept(conceptRef: String, path: String, mpsProject: MPSProject): SConcept {
        val concept: SAbstractConcept = resolveConceptPreferringProject(mpsProject, conceptRef) ?: run {
            val hint = conceptHint(mpsProject.repository, mpsProject, concept = null, conceptReference = conceptRef, concreteRequired = true)
            throw McpNotFoundException("Concept '$conceptRef' at $path not found" + hint.messageSuffix, hint.details)
        }
        ConceptGate(mpsProject).require(concept, "Concept '${structureQualifiedName(concept)}' at $path", TYPE_OPERAND_NOT_BUILT)
        if (concept !is SConcept || concept.isAbstract) {
            throw McpInvalidRequestException(
                "Concept '${concept.name}' at $path is ${if (concept is SConcept) "abstract" else "an interface concept"}; a concrete concept is required"
            )
        }
        return concept
    }
}

/** The most types [TypeTrace] visits re-deriving one subtyping path; the engine's own walk has no cap. */
private const val MAX_SUBTYPING_PATH_TYPES = 10000

/**
 * [block]'s value, or null when it throws, a rule's `StackOverflowError` or `LinkageError` included; cancellation
 * and control-flow throwables are rethrown, as `runCatching` would not.
 */
private inline fun <T> tryOrNull(block: () -> T): T? = try {
    block()
} catch (e: Throwable) {
    if (e is ProcessCanceledException || e is ControlFlowException || e is java.util.concurrent.CancellationException) throw e
    null
}

/**
 * One node's slice of a recorded type check, as the devkit trace (`TypeSystemTraceTree`) computes it: the node, its
 * descendants, and the type variables equations tie to them. The devkit collects the variables in one chronological
 * pass; here they are collected to a fixpoint, so an equation on a variable recorded before the variable joined the
 * slice is kept too. Variables are kept by name, as the engine's equations identify them: expanding a type copies the
 * variables in it, and a copy stands for the same variable.
 *
 * A subtype check records neither a source nor the lattice rules it walked, so it is shown wherever its parent is
 * kept, and the path is re-derived from [helper]'s rules; [warnings] says where that failed.
 */
private class TypeTrace(
    node: SNode,
    private val includeApplyRule: Boolean,
    private val ruleJson: (SNodeReference) -> JsonObject,
    private val typeJson: (SNode) -> JsonObject,
    private val helper: TypeCheckerHelper,
    private val repository: SRepository,
) {
    private val nodes: Set<SNode> = SNodeUtil.getDescendants(node).toHashSet()
    private val variables = HashSet<String>()
    private val runtimeRules = HashMap<Class<*>, JsonObject>()

    /** What the trace could not tell, for the answer's `warnings`; filled by [entries]. */
    val warnings = mutableListOf<String>()

    /** The trace under [top], the check's top operation, which is not an entry itself. */
    fun entries(top: AbstractOperation): JsonArray {
        do {
            val before = variables.size
            addSliceVariables(top)
        } while (variables.size > before)
        return JsonArray().apply { top.consequences.flatMap(::keptOf).filterNot { it.conditional }.forEach { add(render(it)) } }
    }

    private fun inSlice(node: SNode?): Boolean = when {
        node == null -> false
        TypesUtil.isVariable(node) -> node.name in variables
        else -> node in nodes
    }

    private fun addVariables(type: SNode?) {
        TypesUtil.getVariables(type, null).mapNotNullTo(variables) { it.name }
    }

    private fun addSliceVariables(operation: AbstractOperation) {
        when (operation) {
            is AddEquationOperation -> {
                if (inSlice(operation.child)) addVariables(operation.parent)
                if (inSlice(operation.parent)) addVariables(operation.child)
            }
            is AssignTypeOperation -> if (inSlice(operation.node)) addVariables(operation.type.takeIf(TypesUtil::isVariable))
        }
        operation.consequences.forEach(::addSliceVariables)
    }

    /**
     * An operation [keptOf] keeps, with its kept consequences. A [conditional] one is a subtype check nothing else
     * keeps: it is shown only when its parent entry is.
     */
    private class Kept(val operation: AbstractOperation, val consequences: List<Kept>, val conditional: Boolean)

    /**
     * What [operation] contributes at its parent's level: itself, or, when it is elided, its kept consequences
     * hoisted. Dropping an elided operation's subtree instead would empty the trace, since a rule application is the
     * parent of every equation its rule adds. An operation is kept when it concerns the slice or one of its
     * consequences is kept unconditionally; a subtype check is kept conditionally otherwise, since it has no source
     * to put it in the slice, and a passing one has no consequence that would.
     */
    private fun keptOf(operation: AbstractOperation): List<Kept> {
        val consequences = operation.consequences.flatMap(::keptOf)
        if (isElided(operation)) return consequences
        val kept = consequences.any { !it.conditional } || concernsSlice(operation)
        if (!kept && !isSubtypeCheck(operation)) return emptyList()
        return listOf(Kept(operation, consequences, conditional = !kept))
    }

    private fun render(kept: Kept): JsonObject {
        val operation = kept.operation
        val consequences = kept.consequences.map(::render)
        val entry = JsonObject()
        entry.addProperty("kind", when (operation) {
            is CheckSubTypeOperation -> "subtype_checked"
            is ProcessReplacementRuleOperation -> "subtype_by_replacement"
            else -> operation.presentationKind
        })
        // A presentation renders the rule's terms, which a faulty rule may leave null.
        entry.addProperty("presentation", runCatching { operation.presentation }.getOrElse { operation.javaClass.simpleName })
        operation.source?.takeIf { it.model != null }?.let {
            entry.addProperty("source", PersistenceFacade.getInstance().asString(it.reference))
        }
        operation.rule?.let { entry.add("rule", ruleJson(it)) }
        val failedCheck = when (operation) {
            is CheckSubTypeOperation ->
                !addSubtypeCheck(entry, operation, operation.subType, operation.superType, operation.isWeak, ::subtypingVia)
            is ProcessReplacementRuleOperation ->
                !addSubtypeCheck(entry, operation, operation.subType, operation.superType, operation.isWeak) { sub, sup, _ ->
                    replacementVia(sub, sup)
                }
            else -> false
        }
        // A failed check is an error even when its error node lies outside the slice and the error entry is not kept.
        if (operation is AddErrorOperation || operation is TraceWarningOperation || failedCheck || consequences.any { it.has("error") }) {
            entry.addProperty("error", true)
        }
        if (consequences.isNotEmpty()) entry.add("consequences", JsonArray().apply { consequences.forEach(::add) })
        return entry
    }

    /**
     * `holds`, `weak`, `sub`, `super` and `via` of a subtype check; answers `holds`. [via] re-derives the rules the
     * check went through, or answers null when it cannot; a check that failed went through none, and a structural
     * match went through none either.
     *
     * The check reports its own error inside its action, and a replacement rule's derived inequalities (an array's
     * component types, say) are solved under it, so their errors are the check's too. Errors under an equation a
     * passing match added are not: that equation can make unrelated blocks concrete, which are then solved, and may
     * fail, nested here.
     */
    private fun addSubtypeCheck(
        entry: JsonObject,
        operation: AbstractOperation,
        sub: SNode?,
        sup: SNode?,
        weak: Boolean,
        via: (SNode, SNode, Boolean) -> JsonArray?,
    ): Boolean {
        val holds = !hasOwnError(operation)
        entry.addProperty("holds", holds)
        entry.addProperty("weak", weak)
        entry.add("sub", sub?.let(typeJson))
        entry.add("super", sup?.let(typeJson))
        val path = if (holds && sub != null && sup != null) tryOrNull { via(sub, sup, weak) } else JsonArray()
        if (path == null) {
            warnings.add(
                "subtyping path for ${sub?.presentation} <: ${sup?.presentation} could not be re-derived from the lattice rules " +
                    "(a join/meet, a rule reading its context, or an error reported on a detached node)"
            )
        }
        entry.add("via", path ?: JsonArray())
        return holds
    }

    /** An error below [operation] that is not under an equation it added (see [addSubtypeCheck]). */
    private fun hasOwnError(operation: AbstractOperation): Boolean = operation.consequences.any {
        it is AddErrorOperation || (it !is AddEquationOperation && hasOwnError(it))
    }

    /**
     * The rules a passing [CheckSubTypeOperation] went through: a breadth-first walk up the subtyping rules to the
     * first type that matches [sup], as `SubtypingResolver.searchInSuperTypes` walks. (`InequalityBlock` creates the
     * check only after no replacement rule applied to the pair, so none is consulted here.) Each rule is asked on
     * its own, so every step knows its rule. Empty for a structural match, which no rule took part in; null when no
     * path is found within [MAX_SUBTYPING_PATH_TYPES] types.
     */
    private fun subtypingVia(sub: SNode, sup: SNode, weak: Boolean): JsonArray? {
        if (TypesUtil.match(sub, sup)) return JsonArray()
        // SubTypingManagerNew collects immediate supertypes in the global scope, as the context is unknown.
        val path = LanguageScopeExecutor.execWithGlobalScope({ subtypingPath(sub, sup, weak) }, helper.scopeFactory)
            ?: return null
        return JsonArray().apply {
            path.forEach { step -> add(viaStep(step.from, step.to, runtimeRuleJson(step.rule, "_SubtypingRule", "SubtypingRule"))) }
        }
    }

    private class Step(val from: SNode, val to: SNode, val rule: SubtypingRule_Runtime)

    private class Link(val type: SNode, val step: Step?, val previous: Link?) {
        fun steps(): List<Step> = generateSequence(this) { it.previous }.mapNotNull { it.step }.toList().asReversed()
    }

    private fun subtypingPath(sub: SNode, sup: SNode, weak: Boolean): List<Step>? {
        val visited = StructuralNodeSet<Any>().apply { add(sub) }
        val queue = ArrayDeque<Link>().apply { add(Link(sub, null, null)) }
        while (queue.isNotEmpty()) {
            val current = queue.removeFirst()
            // The engine gives up at a variable as well.
            if (TypesUtil.isVariable(current.type)) return null
            if (current.step != null && TypesUtil.match(current.type, sup)) return current.steps()
            for (applicable in helper.rulesManager.getSubtypingRules(current.type, weak)) {
                val rule = applicable.o1
                val supertypes = tryOrNull { rule.getSubOrSuperTypes(current.type, null, applicable.o2) } ?: continue
                for (supertype in supertypes) {
                    if (supertype == null || !visited.add(supertype)) continue
                    if (visited.size > MAX_SUBTYPING_PATH_TYPES) return null
                    queue.add(Link(supertype, Step(current.type, supertype, rule), current))
                }
            }
        }
        return null
    }

    /** The first applicable replacement rule for the pair, which is the one `InequalityBlock` runs; null for none. */
    private fun replacementVia(sub: SNode, sup: SNode): JsonArray? {
        val rules = LanguageScopeExecutor.execWithMultiLanguageScope(
            SubTypingManagerNew.collectLanguagesRecursively(sub, sup),
            { helper.rulesManager.getReplacementRules(sub, sup) },
            helper.scopeFactory,
        )
        val rule = rules.firstOrNull()?.o1 ?: return null
        return JsonArray().apply {
            add(viaStep(sub, sup, runtimeRuleJson(rule, "_InequationReplacementRule", "InequationReplacementRule")))
        }
    }

    /** One step of `via`; `from` and `to` are presentations, since the full types are the entry's `sub` and `super`. */
    private fun viaStep(from: SNode, to: SNode, rule: JsonObject): JsonObject = JsonObject().apply {
        addProperty("from", from.presentation)
        addProperty("to", to.presentation)
        add("rule", rule)
    }

    /**
     * `{rule, ruleReference}` of the root a generated rule class came from: MPS generates rule `R` of language `L`
     * as `L.typesystem.R<suffix>`. When that names no root of [conceptName], `{rule: null, ruleReference: null,
     * ruleClass}` and a warning.
     */
    private fun runtimeRuleJson(rule: Any, suffix: String, conceptName: String): JsonObject = runtimeRules.getOrPut(rule.javaClass) {
        val ruleClass = rule.javaClass
        val modelName = ruleClass.packageName
        val root = if (ruleClass.simpleName.endsWith(suffix) && modelName.endsWith(".typesystem")) {
            val ruleName = ruleClass.simpleName.removeSuffix(suffix)
            aspectModelRoots(repository, modelName, "typesystem")
                .firstOrNull { it.concept.name == conceptName && it.name == ruleName }
        } else {
            null
        }
        JsonObject().apply {
            addProperty("rule", root?.name)
            addProperty("ruleReference", root?.let { PersistenceFacade.getInstance().asString(it.reference) })
            if (root == null) {
                addProperty("ruleClass", ruleClass.name)
                warnings.add("the rule class ${ruleClass.name} names no $conceptName root in the repository, so its rule is given as ruleClass only")
            }
        }
    }.deepCopy()

    private fun isSubtypeCheck(operation: AbstractOperation): Boolean =
        operation is CheckSubTypeOperation || operation is ProcessReplacementRuleOperation

    private fun isElided(operation: AbstractOperation): Boolean = when (operation) {
        is ApplyRuleOperation -> !includeApplyRule
        is AddDependencyOperation, is RemoveDependencyOperation -> true
        else -> false
    }

    /** The devkit's `showNode`: the operation's source, an equation's side or a block's input is in the slice. */
    private fun concernsSlice(operation: AbstractOperation): Boolean =
        inSlice(operation.source) ||
            (operation is AddEquationOperation && (inSlice(operation.child) || inSlice(operation.parent))) ||
            (operation is AbstractBlockOperation && operation.block.inputs.any(::inSlice))
}
