package jetbrains.mps.agents.mcp.tools

import jetbrains.mps.agents.mcp.tools.common.*

import com.google.gson.Gson
import com.google.gson.JsonArray
import com.google.gson.JsonElement
import com.google.gson.JsonObject
import com.intellij.mcpserver.annotations.McpDescription
import com.intellij.mcpserver.annotations.McpTool
import jetbrains.mps.agents.mcp.tools.logging.McpCallOutcomes
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SModelOperations
import jetbrains.mps.newTypesystem.TypesUtil
import jetbrains.mps.project.MPSProject
import jetbrains.mps.smodel.SNodePointer
import jetbrains.mps.typechecking.TypecheckingFacade
import jetbrains.mps.typesystem.inference.TypeCheckerHelper
import jetbrains.mps.typesystem.inference.util.StructuralNodeSet
import org.jetbrains.mps.openapi.language.SAbstractConcept
import org.jetbrains.mps.openapi.language.SConcept
import org.jetbrains.mps.openapi.model.SNode
import org.jetbrains.mps.openapi.model.SNodeReference

enum class TypesQueryOperation {
    IS_SUBTYPE,
    SUPERTYPES,
    COMMON_SUPERTYPE,
    COERCE,
    OPERATION_TYPE,
}

private const val DEFAULT_SUPERTYPES_DEPTH = 8
private const val MAX_SUPERTYPES_DEPTH = 32

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

/** The accepted `parameters` keys of each [TypesQueryOperation]. */
private fun queryTypesParameterKeys(operation: TypesQueryOperation): ParameterKeys = when (operation) {
    TypesQueryOperation.IS_SUBTYPE -> IS_SUBTYPE_KEYS
    TypesQueryOperation.SUPERTYPES -> SUPERTYPES_KEYS
    TypesQueryOperation.COMMON_SUPERTYPE -> COMMON_SUPERTYPE_KEYS
    TypesQueryOperation.COERCE -> COERCE_KEYS
    TypesQueryOperation.OPERATION_TYPE -> OPERATION_TYPE_KEYS
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
        object with exactly one of `nodeReference` (the type of that node, as `mps_mcp_query_nodes` GET_TYPE computes it),
        `typeNodeReference` (a stored type node used as the type itself, e.g. a field's `type` child), `typeConceptRef`
        (a type concept with no mandatory child or reference, e.g. IntegerType) or `blueprint` (a type's node tree; a
        printed type object is accepted as is). IS_SUBTYPE {sub, super} → {isSubtype, isStrongSubtype, isComparable, sub, super}.
        SUPERTYPES {type, depth (default 8, max 32), weak (default true)} → {type, immediate, transitive:[{type, depth}]},
        `details.truncated`:true when the depth cap stopped the walk. COMMON_SUPERTYPE {types: array of >= 2 operands} →
        {types, result}: the least common supertypes, a list because a lattice can have several. COERCE {type, conceptRef,
        strong (default false)} → {coerced}: the type or its supertype that is an instance of that concept (any
        non-interface concept, e.g. ClassifierType or the abstract PrimitiveType), or null. OPERATION_TYPE {operatorNode or operatorConceptRef, left, right} → {type}: the
        overloaded-operation result type, null when no rule applies. Every type is printed as {concept, conceptReference,
        presentation, hasTypeVariables?, blueprint} and carries no node reference. A node's own type and the type its context
        expects of it are `mps_mcp_query_nodes` GET_TYPE and GET_EXPECTED_TYPE. Returns `{"ok":true,"data":{...}}` on
        success or `{"ok":false,"error":"..."}` on failure; `data` is inline up to `maxInlineBytes` (default 20000),
        otherwise a temp-file path. See the `mps-mcp-workflow` skill (`references/analysis-tools/type-queries.md`).
    """)
    suspend fun mps_mcp_query_types(
        @McpDescription("Required. The operation to perform (IS_SUBTYPE, SUPERTYPES, COMMON_SUPERTYPE, COERCE, OPERATION_TYPE)") operation: String = "",
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
            Gson().fromJson(parameters, JsonObject::class.java)
        } catch (e: Exception) {
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
        }
    }

    /**
     * The engine entry points of one call, fetched on the EDT inside its read action: there the facade hands
     * out the workbench controller, whose on-demand session answers for detached operands too.
     */
    private class Engine(val facade: TypecheckingFacade) {
        val helper: TypeCheckerHelper = facade.getData(TypeCheckerHelper::class.java)
    }

    private suspend fun readWithEngine(mpsProject: MPSProject, action: (Engine) -> String): String =
        executeShortReadOnEdt(mpsProject) { action(Engine(TypecheckingFacade.getFromContext())) }

    private suspend fun opIsSubtype(mpsProject: MPSProject, params: JsonObject, maxInlineBytes: Int): String =
        readWithEngine(mpsProject) { engine ->
            val sub = typeOperand(params.get("sub"), "parameters.sub", mpsProject, engine)
            val sup = typeOperand(params.get("super"), "parameters.super", mpsProject, engine)
            val result = JsonObject()
            result.addProperty("isSubtype", engine.facade.isSubtype(sub, sup))
            result.addProperty("isStrongSubtype", engine.facade.isStrongSubtype(sub, sup))
            result.addProperty("isComparable", engine.helper.subtypingManager.isComparable(sub, sup, true))
            result.add("sub", typeJsonObject(sub, mpsProject))
            result.add("super", typeJsonObject(sup, mpsProject))
            finalizeResult(result.toString(), maxInlineBytes)
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
            val type = typeOperand(params.get("type"), "parameters.type", mpsProject, engine)
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
            finalizeResult(result.toString(), maxInlineBytes, details = if (truncated) mapOf("truncated" to true) else emptyMap())
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
            val types = operands.mapIndexed { index, element ->
                typeOperand(element, "parameters.types[$index]", mpsProject, engine)
            }
            // The engine answers a HashSet; sorted so that several results come back in a stable order.
            val lcs = engine.helper.subtypingManager.leastCommonSupertypes(LinkedHashSet(types), true).sortedBy { it.presentation }
            val result = JsonObject()
            result.add("types", JsonArray().apply { types.forEach { add(typeJsonObject(it, mpsProject)) } })
            result.add("result", JsonArray().apply { lcs.forEach { add(typeJsonObject(it, mpsProject)) } })
            finalizeResult(result.toString(), maxInlineBytes)
        }
    }

    private suspend fun opCoerce(mpsProject: MPSProject, params: JsonObject, maxInlineBytes: Int): String {
        val conceptRef = params.requiredParamString(PARAM_CONCEPT_REF)
        val strong = params.paramBoolean("strong", default = false)
        return readWithEngine(mpsProject) { engine ->
            val type = typeOperand(params.get("type"), "parameters.type", mpsProject, engine)
            val concept = resolveConceptPreferringProject(mpsProject, conceptRef)
                ?: throw McpNotFoundException("Concept '$conceptRef' at parameters.conceptRef not found")
            if (concept !is SConcept) {
                throw McpInvalidRequestException(
                    "Concept '${concept.name}' at parameters.conceptRef is an interface concept; COERCE takes a non-interface type concept"
                )
            }
            val coerced = if (strong) engine.facade.strongCoerceType(type, concept) else engine.facade.coerceType(type, concept)
            val result = JsonObject()
            result.add("coerced", coerced?.let { typeJsonObject(it, mpsProject) })
            finalizeResult(result.toString(), maxInlineBytes)
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
            val left = typeOperand(params.get("left"), "parameters.left", mpsProject, engine)
            val right = typeOperand(params.get("right"), "parameters.right", mpsProject, engine)
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
            finalizeResult(result.toString(), maxInlineBytes, warnings = warnings)
        }
    }

    /**
     * `{rule, ruleReference, statement}`: the ids name a node inside a rule, the rule is its root. Ids a
     * hand-written provider passes may not parse; the statement then keeps them as given.
     */
    private fun ruleJsonObject(ruleModelId: String?, ruleNodeId: String?, mpsProject: MPSProject): JsonObject {
        val pointer: SNodeReference? = runCatching { SNodePointer(ruleModelId, ruleNodeId) }.getOrNull()
        return pointer?.let { ruleJsonObject(it, it.resolve(mpsProject.repository)?.containingRoot) } ?: JsonObject().apply {
            addProperty("rule", null as String?)
            addProperty("ruleReference", null as String?)
            addProperty("statement", "$ruleModelId/$ruleNodeId")
        }
    }

    /**
     * Turns one operand object into a type node. A node or concept the caller named that does not exist is
     * `NOT_FOUND`; an operand that is malformed or cannot be a type is `INVALID_REQUEST` naming [path].
     */
    private fun typeOperand(element: JsonElement?, path: String, mpsProject: MPSProject, engine: Engine): SNode {
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
            return type
        }
        val ref = value.takeIf { it.isJsonPrimitive && it.asJsonPrimitive.isString && it.asString.isNotBlank() }?.asString
            ?: throw McpInvalidRequestException("'$path.$key' must be a nonblank string")
        return when (key) {
            in OPERAND_NODE.spellings -> {
                val node = resolveNodeReferencePreferringProject(mpsProject, ref)?.resolve(mpsProject.repository)
                    ?: throw McpNotFoundException("Node '$ref' at $path.$key not found")
                engine.facade.getTypeOf(node)?.takeUnless(TypesUtil::isVariable)
                    ?: throw McpInvalidRequestException(
                        "Node '$ref' at $path.$key has no type (GET_TYPE answers null for it). A stored type node is passed " +
                            "as typeNodeReference, a type concept as typeConceptRef"
                    )
            }
            in OPERAND_TYPE_NODE.spellings ->
                resolveNodeReferencePreferringProject(mpsProject, ref)?.resolve(mpsProject.repository)
                    ?: throw McpNotFoundException("Node '$ref' at $path.$key not found")
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
                SModelOperations.createNewNode(null, null, concept)
            }
        }
    }

    private fun concreteConcept(conceptRef: String, path: String, mpsProject: MPSProject): SConcept {
        val concept: SAbstractConcept = resolveConceptPreferringProject(mpsProject, conceptRef)
            ?: throw McpNotFoundException("Concept '$conceptRef' at $path not found")
        if (concept !is SConcept || concept.isAbstract) {
            throw McpInvalidRequestException(
                "Concept '${concept.name}' at $path is ${if (concept is SConcept) "abstract" else "an interface concept"}; a concrete concept is required"
            )
        }
        return concept
    }
}
