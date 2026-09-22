package jetbrains.mps.agents.mcp.tools

import jetbrains.mps.agents.mcp.tools.common.*

import com.google.gson.Gson
import com.google.gson.JsonArray
import com.google.gson.JsonObject
import com.google.gson.JsonPrimitive
import com.intellij.mcpserver.annotations.McpDescription
import com.intellij.mcpserver.annotations.McpTool
import jetbrains.mps.agents.mcp.tools.logging.McpCallOutcomes
import jetbrains.mps.editor.runtime.HeadlessEditorComponent
import jetbrains.mps.errors.item.ModelReportItem
import jetbrains.mps.errors.item.NodeReportItem
import jetbrains.mps.progress.EmptyProgressMonitor
import jetbrains.mps.project.MPSProject
import jetbrains.mps.smodel.CopyUtil
import jetbrains.mps.project.validation.ModelValidator
import org.jetbrains.mps.openapi.model.EditableSModel
import org.jetbrains.mps.openapi.model.SNode
import org.jetbrains.mps.openapi.persistence.PersistenceFacade


enum class MPSQueryOperation {
    GET_PARENT,
    GET_ROOT,
    GET_MODEL_FOR_NODE,
    NODE_INDEX,
    SIBLINGS,
    GET_CHILD_ROLE,
    FIND_USAGES,
    FIND_INSTANCES,
}

enum class MPSAlterOperation {
    MOVE_CHILD,
    MOVE_NODE_TO_PARENT,
    COPY_NODE,
    MAKE,
    FIX_REFERENCES,
}

enum class NodeUpdateOperation {
    ADD,
    SET
}

enum class NodeUpdateKind {
    CHILD,
    PROPERTY,
    REFERENCE
}

enum class DependencyOperation {
    ADD,
    DELETE
}

private val MAKE_PARAMETER_SCHEMA: Map<String, String> = linkedMapOf(
    "models" to "Optional: array of persistent model references",
    "modules" to "Optional: array of persistent module references",
    "rebuild" to "Optional: boolean, default false",
    "wholeProject" to "Optional: boolean, default false. If true, 'models' and 'modules' must be absent.",
)

private val MAKE_PARAMETER_KEYS: Set<String> = MAKE_PARAMETER_SCHEMA.keys

private val FIND_USAGES_KEYS = ParameterKeys.of(PARAM_NODE_REFERENCE) + SEARCH_SCOPE_KEYS

private val NODE_INFO_KEYS = ParameterKeys.of(PARAM_NODE_REFERENCE)

private val MOVE_CHILD_KEYS = ParameterKeys.of(PARAM_NODE_REFERENCE, "childRole", PARAM_CHILD_NODE_REF, "position")

private val MOVE_NODE_TO_PARENT_KEYS =
    ParameterKeys.of(PARAM_NODE_REFERENCE, PARAM_NEW_PARENT_REF, "role", "position", PARAM_MODEL_REFERENCE)

/** The accepted `parameters` keys of each [MPSQueryOperation]. */
private fun queryNodesParameterKeys(operation: MPSQueryOperation): ParameterKeys = when (operation) {
    MPSQueryOperation.FIND_INSTANCES -> FIND_INSTANCES_KEYS
    MPSQueryOperation.FIND_USAGES -> FIND_USAGES_KEYS
    MPSQueryOperation.GET_PARENT, MPSQueryOperation.GET_ROOT, MPSQueryOperation.GET_MODEL_FOR_NODE,
    MPSQueryOperation.NODE_INDEX, MPSQueryOperation.SIBLINGS, MPSQueryOperation.GET_CHILD_ROLE -> NODE_INFO_KEYS
}

/**
 * The accepted `parameters` keys of each [MPSAlterOperation]. MAKE answers `null`: it keeps its
 * own richer rejection, which additionally carries the `MAKE_INPUT_INVALID` code and the
 * `expectedParameters` schema map its callers read.
 */
private fun alterNodesParameterKeys(operation: MPSAlterOperation): ParameterKeys? = when (operation) {
    MPSAlterOperation.MOVE_CHILD -> MOVE_CHILD_KEYS
    MPSAlterOperation.MOVE_NODE_TO_PARENT -> MOVE_NODE_TO_PARENT_KEYS
    MPSAlterOperation.COPY_NODE, MPSAlterOperation.FIX_REFERENCES -> NODE_INFO_KEYS
    MPSAlterOperation.MAKE -> null
}

// MCP tool methods use snake_case names because they are part of the public MCP protocol
// surface, and they are invoked via reflection by the MCP server framework, so static
// analysis flags them as "never used".
@Suppress("FunctionName", "unused")
class JetBrainsMPSNodeMcpToolset : AbstractNodeOps() {

    @McpTool
    @McpDescription("""
        Read-only node queries. FIND_INSTANCES: find nodes that are instances of a concept (`conceptRef`, or `conceptRefs`
        for several concepts in one scan — a single reference or a JSON array; passing both is rejected; optional `scope`
        all|editable|models|modules|roots with matching `models`/`modules`/`roots` (each a single reference or a JSON array;
        scope `roots` searches within the subtrees of those specified roots), optional `rootsOnly`:true to match only root nodes
        (parent == null), `propertyFilter` {"name","value"}, `exact`, `sampleOnly`:true for one example node). `detail`:"count"
        answers with `[{concept, conceptReference, count}]`, one row per requested concept in input order (count 0 included),
        and builds no node records — use it to count instances instead of one call per concept, each serializing every node it found;
        it cannot be combined with `sampleOnly`. Rows overlap by design: with `exact`:false an instance of a subconcept
        counts for every requested superconcept too, so the rows do not sum to a distinct-node total. `all` and `editable`
        are rooted at the project selected by `projectPath`; explicit `models`/`modules`/`roots` may point to models,
        modules, or roots from another open MPS project and are queried read-only. An explicit selector must be a nonblank
        string or nonempty string array, and every reference must resolve or the whole query returns INVALID_REQUEST. FIND_USAGES: find nodes
        whose references point at the given node — incoming references, not instances (`nodeReference`; optional `scope` as above,
        optional `rootsOnly`:true to match only root source nodes). GET_PARENT, GET_ROOT,
        GET_MODEL_FOR_NODE, NODE_INDEX, SIBLINGS, GET_CHILD_ROLE take `nodeReference`. Returns `{"ok":true,"data":{...}}`
        on success or `{"ok":false,"error":"..."}` on failure. For the list-producing operations (FIND_INSTANCES,
        FIND_USAGES, SIBLINGS) `data` is inline when the serialized result is <= `maxInlineBytes` (default 20000),
        otherwise a temp-file path. See `mps-node-editing` and `mps-mcp-workflow` skills.
    """)
    suspend fun mps_mcp_query_nodes(
        @McpDescription("The operation to perform (FIND_INSTANCES, FIND_USAGES, GET_PARENT, GET_ROOT, GET_MODEL_FOR_NODE, NODE_INDEX, SIBLINGS, GET_CHILD_ROLE)") operation: String,
        @McpDescription("Parameters for the operation, as a JSON object — sent as real JSON or as its string form.") parameters: JsonOrText,
        @McpDescription("Inline results up to this many characters in `data`; larger ones are saved to a temp file whose path is returned instead (default 20000).") maxInlineBytes: Int = DEFAULT_MAX_INLINE_BYTES
    ): String {
        val op = resolveOperationOrNull<MPSQueryOperation>(operation)
            ?: return McpCallOutcomes.record(unknownOperation<MPSQueryOperation>(operation))
        return mps_mcp_query_nodes(op, parameters.text, maxInlineBytes)
    }

    /**
     * Internal enum-typed entry point for [mps_mcp_query_nodes]; the String overload above is the
     * registered `@McpTool`, so an unrecognised `operation` is an INVALID_REQUEST error instead of
     * a crash in the framework's pre-call enum decode (see [resolveOperationOrNull]).
     */
    suspend fun mps_mcp_query_nodes(
        operation: MPSQueryOperation,
        parameters: String,
        maxInlineBytes: Int = DEFAULT_MAX_INLINE_BYTES
    ): String {
        return withMpsProject("Querying MPS nodes: $operation") { mpsProject ->
            val params = try {
                Gson().fromJson(parameters, JsonObject::class.java)
            } catch (e: Exception) {
                return@withMpsProject invalidJson("Invalid JSON parameters: ${e.message}")
            }
            params.rejectUnknownParameterKeys(operation.name, queryNodesParameterKeys(operation))

            when (operation) {
                MPSQueryOperation.GET_PARENT, MPSQueryOperation.GET_ROOT, MPSQueryOperation.GET_MODEL_FOR_NODE,
                MPSQueryOperation.NODE_INDEX, MPSQueryOperation.SIBLINGS, MPSQueryOperation.GET_CHILD_ROLE ->
                    opNodeInfoRead(mpsProject, operation, params, maxInlineBytes)

                MPSQueryOperation.FIND_USAGES -> opFindUsages(mpsProject, params, maxInlineBytes)
                MPSQueryOperation.FIND_INSTANCES -> opFindInstances(mpsProject, params, maxInlineBytes)
            }
        }
    }

    @McpTool
    @McpDescription("""        
        Structural node mutations and code generation: move a child within its role, move a node to a new parent or make it a root, create a deep copy of a node, make/rebuild models/modules/whole project, fix broken references. Parameters are a JSON object (real JSON or its string form). For MOVE_NODE_TO_PARENT, supply a non-null `newParentRef` plus `role` to reparent; omit `newParentRef` and supply `modelReference` to intentionally promote the node to a root. Explicit `newParentRef:null` is rejected. For MOVE_CHILD and MOVE_NODE_TO_PARENT, `position` is 0-based and `-1` moves to the end; a `position` at or beyond the role's child count is clamped to the end (not rejected) and a negative value other than -1 is rejected — the response's `data.index` reports the moved (clamped) node's actual resulting index.
         MAKE parameters: {"modules":[<moduleRef>,...]} | {"models":[<modelRef>,...]} | {"wholeProject":true}, plus optional "rebuild":bool; node references are not accepted — resolve the node's module or model first. Returns `{"ok":true,"data":{...}}` on success or `{"ok":false,"error":"..."}` on failure. See `mps-node-editing` and `mps-mcp-workflow` skills.
         For COPY_NODE, a root node is copied and added as a new root in the same model; a node inside a multi-child collection role (`[0..*]` or `[1..*]`) is copied and inserted as the next sibling; a node in a single-child role (`[0..1]` or `[1]`) returns an error because copying a singleton child makes no structural sense.
         Prefer COPY_NODE over hand-authoring a JSON blueprint when a new node should closely resemble one that already exists — it's fewer calls and guarantees a structurally valid clone; adjust the copy afterward with mps_mcp_update_node.
    """)
    suspend fun mps_mcp_alter_nodes(
        @McpDescription("The operation to perform (MOVE_CHILD, MOVE_NODE_TO_PARENT, COPY_NODE, MAKE, FIX_REFERENCES)") operation: String,
        // Study D29: Kotlin-optional so that MAKE called with its arguments at the top level
        // reaches the body, instead of the platform rejecting the call for the missing required
        // argument without ever saying the arguments belong inside this object. It stays
        // semantically required — the default exists only to buy the body a chance to say so — so
        // the description carries "Required.": dropping out of the published `required` array
        // removes the client's only structural signal, and the rejection itself says
        // "'parameters' is required". See missingAlterNodesParameters.
        @McpDescription("Required. Parameters for the operation, as a JSON object — sent as real JSON or as its string form.") parameters: JsonOrText = JsonOrText.EMPTY
    ): String {
        val op = resolveOperationOrNull<MPSAlterOperation>(operation)
            ?: return McpCallOutcomes.record(unknownOperation<MPSAlterOperation>(operation))
        return mps_mcp_alter_nodes(op, parameters.text)
    }

    /**
     * Internal enum-typed entry point for [mps_mcp_alter_nodes]; the String overload above is the
     * registered `@McpTool` (see [resolveOperationOrNull] for the rationale).
     */
    suspend fun mps_mcp_alter_nodes(operation: MPSAlterOperation, parameters: String): String {
        // Guarded here rather than in the wrapper so neither entry point can reach the Gson parse
        // with no object to parse: blank text and a bare `null` both decode to a null JsonObject.
        // `rejectUnknownParameterKeys` already answers that for the four operations with a key
        // list, but MAKE has none and dereferenced it into an opaque INTERNAL_ERROR. Recorded
        // explicitly because this returns before `withMpsProject`, the only other call site that
        // reports the envelope to the call log (see McpCallOutcomes).
        if (parameters.isBlank()) return McpCallOutcomes.record(missingAlterNodesParameters(operation))
        return withMpsProject("Altering MPS nodes: $operation") { mpsProject ->
            val params = try {
                Gson().fromJson(parameters, JsonObject::class.java)
            } catch (e: Exception) {
                return@withMpsProject invalidJson("Invalid JSON parameters: ${e.message}")
            } ?: return@withMpsProject missingAlterNodesParameters(operation)
            alterNodesParameterKeys(operation)?.let { params.rejectUnknownParameterKeys(operation.name, it) }

            when (operation) {
                MPSAlterOperation.MOVE_CHILD -> opMoveChild(params)
                MPSAlterOperation.MOVE_NODE_TO_PARENT -> opMoveNodeToParent(params)
                MPSAlterOperation.COPY_NODE -> opCopyNode(params)
                MPSAlterOperation.MAKE -> opMake(mpsProject, params)
                MPSAlterOperation.FIX_REFERENCES -> opFixReferences(mpsProject, params)
            }
        }
    }

    /**
     * Handles the read-only "node info" cases (GET_PARENT, GET_ROOT, GET_MODEL_FOR_NODE,
     * NODE_INDEX, SIBLINGS, GET_CHILD_ROLE) — they all share the same boilerplate of
     * resolving a node from the 'nodeReference' parameter under a read action and then dispatching
     * to a small per-case body.
     */
    private suspend fun opNodeInfoRead(
        mpsProject: MPSProject,
        operation: MPSQueryOperation,
        params: JsonObject,
        maxInlineBytes: Int = DEFAULT_MAX_INLINE_BYTES
    ): String {
        val nodeReference = params.paramString(PARAM_NODE_REFERENCE) ?: return errJson("Parameter 'nodeReference' is missing")
        return executeShortReadOnEdt(mpsProject) {
            val repo = mpsProject.repository
            val sNodeRef = resolveNodeReferencePreferringProject(mpsProject, nodeReference)
            val node = sNodeRef?.resolve(repo)
                ?: return@executeShortReadOnEdt errJson("Node '$nodeReference' not found", McpErrorCode.NOT_FOUND)

            when (operation) {
                MPSQueryOperation.GET_PARENT -> {
                    val parent = node.parent
                    if (parent != null) okJson(nodeInfoJson(parent, mpsProject)) else okJson("null")
                }
                MPSQueryOperation.GET_ROOT -> okJson(nodeInfoJson(node.containingRoot, mpsProject))
                MPSQueryOperation.GET_MODEL_FOR_NODE -> {
                    val model = node.model
                    if (model != null) okJson(modelReferenceJsonObject(model.reference, mpsProject))
                    else errJson("Node '$nodeReference' is not in a model")
                }
                MPSQueryOperation.NODE_INDEX -> opNodeIndex(node)
                MPSQueryOperation.SIBLINGS -> opSiblings(node, mpsProject, maxInlineBytes)
                MPSQueryOperation.GET_CHILD_ROLE -> opGetChildRole(node, mpsProject)
                MPSQueryOperation.FIND_USAGES,
                MPSQueryOperation.FIND_INSTANCES -> errJson("Unsupported operation: $operation")
            }
        }
    }

    private fun opNodeIndex(node: SNode): String {
        val parent = node.parent ?: return errJson("Node is a root node")
        val link = node.containmentLink ?: return errJson("Node does not have a containment role")
        if (!link.isMultiple) return errJson("Node is not in a multiple role")
        return okJson(parent.getChildren(link).indexOf(node).toString())
    }

    private fun opSiblings(node: SNode, mpsProject: MPSProject, maxInlineBytes: Int): String {
        val parent = node.parent ?: return errJson("Node is a root node")
        val link = node.containmentLink ?: return errJson("Node does not have a containment role")
        if (!link.isMultiple) return errJson("Node is not in a multiple role")
        val siblings = parent.getChildren(link)
        val cache = ProjectMembershipCache(mpsProject)
        return finalizeResult("[" + siblings.joinToString(",") { nodeInfoJson(it, mpsProject, cache) } + "]", maxInlineBytes)
    }

    private fun opGetChildRole(node: SNode, mpsProject: MPSProject): String {
        val link = node.containmentLink ?: return errJson("Node is a root node or not in a containment role")
        return okJson(containmentLinkInfoJsonObject(link, mpsProject.repository, currentProject = mpsProject))
    }

    private suspend fun opFindUsages(mpsProject: MPSProject, params: JsonObject, maxInlineBytes: Int): String {
        val nodeReference = params.paramString(PARAM_NODE_REFERENCE) ?: return errJson("Parameter 'nodeReference' is missing")
        val scopeParam = params.paramString("scope") ?: "editable"
        val rootsOnly = params.paramBoolean("rootsOnly", default = false)
        val monitor = coroutineProgressMonitor()
        return executeBackgroundRead(mpsProject) {
            val repo = mpsProject.repository
            val sNodeRef = resolveNodeReferencePreferringProject(mpsProject, nodeReference)
            val node = sNodeRef?.resolve(repo)
                ?: return@executeBackgroundRead errJson("Node '$nodeReference' not found", McpErrorCode.NOT_FOUND)

            val (searchScope, rootFilter) = when (val r = buildSearchScope(mpsProject, scopeParam, params)) {
                is SearchScopeResolution.Ok -> r.scope to r.rootFilter
                is SearchScopeResolution.Err -> return@executeBackgroundRead r.errJson
            }

            val results = mutableSetOf<SNode>()
            findUsagesWithFallback(searchScope, setOf(node), monitor) { ref ->
                if (!monitor.isCanceled &&
                    (!rootsOnly || ref.sourceNode.parent == null) &&
                    (rootFilter == null || ref.sourceNode.containingRoot.reference in rootFilter)
                ) {
                    synchronized(results) {
                        results.add(ref.sourceNode)
                    }
                }
            }
            if (monitor.isCanceled) {
                errJson("Operation canceled")
            } else {
                val cache = ProjectMembershipCache(mpsProject)
                finalizeResult("[" + results.joinToString(",") { nodeInfoJson(it, mpsProject, cache) } + "]", maxInlineBytes)
            }
        }
    }

    private suspend fun opMoveChild(params: JsonObject): String {
        val nodeReference = params.paramString(PARAM_NODE_REFERENCE) ?: return errJson("Parameter 'nodeReference' is missing")
        val childRole = params.paramString("childRole") ?: return errJson("Parameter 'childRole' is missing")
        val childNodeRef = params.paramString(PARAM_CHILD_NODE_REF) ?: return errJson("Parameter 'childNodeRef' is missing")
        val position = params.paramInt("position") ?: return errJson("Parameter 'position' is missing")
        return moveNodeChild(nodeReference, childRole, childNodeRef, position)
    }

    private suspend fun opMoveNodeToParent(params: JsonObject): String {
        val nodeReference = params.paramString(PARAM_NODE_REFERENCE) ?: return errJson("Parameter 'nodeReference' is missing")
        if (params.paramIsExplicitNull(PARAM_NEW_PARENT_REF)) {
            return errJson("Parameter 'newParentRef' must not be null", McpErrorCode.INVALID_REQUEST)
        }
        val newParentRef = params.paramString(PARAM_NEW_PARENT_REF)
        val role = params.paramString("role")
        val position = params.paramInt("position")
        val modelReference = params.paramString(PARAM_MODEL_REFERENCE)
        return moveNodeToParent(nodeReference, newParentRef, role, position, modelReference)
    }

    private suspend fun opCopyNode(params: JsonObject): String {
        val nodeReference = params.paramString(PARAM_NODE_REFERENCE) ?: return errJson("Parameter 'nodeReference' is missing")
        return withMpsProject("Copying MPS node") { mpsProject ->
            executeShortCommandOnEdt(mpsProject) {
                val repo = mpsProject.repository
                val sNodeRef = resolveNodeReference(mpsProject, nodeReference) ?: resolveNodeReference(repo, nodeReference)
                val node = sNodeRef?.resolve(repo)
                    ?: return@executeShortCommandOnEdt errJson("Node '$nodeReference' not found", McpErrorCode.NOT_FOUND)

                // Refuse console nodes: the console model is throwaway, copying doesn't make sense.
                val sourceModel = node.model
                if (sourceModel != null && sourceModel !is EditableSModel) {
                    val module = sourceModel.module
                    val isConsole = module != null && !isModuleInProject(repo, sourceModel)
                    return@executeShortCommandOnEdt errJson(
                        if (isConsole) "Cannot copy a node from the MPS Console — console models are transient and do not support copy operations"
                        else "Source model is not editable",
                        McpErrorCode.NOT_EDITABLE
                    )
                }
                if (sourceModel != null && !isModelInSelectedProject(mpsProject, sourceModel)) {
                    return@executeShortCommandOnEdt crossProjectErr("Node '$nodeReference'")
                }

                // Create deep copy
                val copiedNode = CopyUtil.copy(node)

                val parentNode = node.parent
                if (parentNode == null) {
                    // Root node: add copy as a new root in the same model
                    val model = sourceModel
                        ?: return@executeShortCommandOnEdt errJson("Root node is not in an editable model", McpErrorCode.NOT_EDITABLE)
                    model.addRootNode(copiedNode)
                    saveModelAndModule(model)
                    okJson(nodeInfoJson(copiedNode, mpsProject))
                } else {
                    // Child node: check cardinality
                    val link = node.containmentLink
                    if (link == null || !link.isMultiple) {
                        return@executeShortCommandOnEdt errJson(
                            "Cannot copy a node in a single-child role '${link?.name ?: "unknown"}' — " +
                                "COPY_NODE is only supported for nodes in a multi-child collection role (cardinality 0..* or 1..*)",
                            McpErrorCode.INVALID_REQUEST
                        )
                    }
                    // Insert copy immediately after the original
                    parentNode.insertChildAfter(link, copiedNode, node)
                    val model = sourceModel
                        ?: return@executeShortCommandOnEdt errJson("Parent node is not in an editable model", McpErrorCode.NOT_EDITABLE)
                    saveModelAndModule(model)
                    okJson(nodeInfoJsonObjectWithIndex(copiedNode, mpsProject))
                }
            }
        }
    }

    internal sealed class MakeTargetResolution<M, U> {
        data class Ok<M, U>(
            val modelsToMake: Set<M>,
            val modulesToMake: Set<U>,
            val unresolvedModels: List<String>,
            val unresolvedModules: List<String>,
        ) : MakeTargetResolution<M, U>() {
            fun warnings(): List<String> = buildList {
                unresolvedModels.forEach { add("Unresolved model reference: $it") }
                unresolvedModules.forEach { add("Unresolved module reference: $it") }
            }
        }

        data class Invalid<M, U>(
            val message: String,
            val details: Map<String, Any?> = emptyMap(),
        ) : MakeTargetResolution<M, U>()
    }

    internal fun <M, U> resolveMakeTargets(
        requestedModels: List<String>,
        requestedModules: List<String>,
        wholeProject: Boolean,
        allProjectModels: () -> Iterable<M>,
        allProjectModules: () -> Iterable<U>,
        resolveModel: (String) -> M?,
        resolveModule: (String) -> U?,
        moduleOfModel: (M) -> U?,
        modelsOfModule: (U) -> Iterable<M>,
    ): MakeTargetResolution<M, U> {
        if (!wholeProject && requestedModels.isEmpty() && requestedModules.isEmpty()) {
            return MakeTargetResolution.Invalid(
                "No model or module references were provided. " +
                    "Expected one of: 'models' (array of persistent model references), " +
                    "'modules' (array of persistent module references), or 'wholeProject': true.",
                mapOf("expectedParameters" to MAKE_PARAMETER_SCHEMA),
            )
        }

        val modelsToMake = linkedSetOf<M>()
        val modulesToMake = linkedSetOf<U>()
        val unresolvedModels = mutableListOf<String>()
        val unresolvedModules = mutableListOf<String>()

        if (wholeProject) {
            modulesToMake.addAll(allProjectModules())
            modelsToMake.addAll(allProjectModels())
        } else {
            requestedModels.forEach { requestedModel ->
                val model = try {
                    resolveModel(requestedModel)
                } catch (e: Exception) {
                    rethrowIfCancellation(e)
                    null
                }
                if (model == null) {
                    unresolvedModels.add(requestedModel)
                } else {
                    modelsToMake.add(model)
                    moduleOfModel(model)?.let { modulesToMake.add(it) }
                }
            }
            requestedModules.forEach { requestedModule ->
                val module = try {
                    resolveModule(requestedModule)
                } catch (e: Exception) {
                    rethrowIfCancellation(e)
                    null
                }
                if (module == null) {
                    unresolvedModules.add(requestedModule)
                } else {
                    modulesToMake.add(module)
                    modelsToMake.addAll(modelsOfModule(module))
                }
            }
        }

        if (!wholeProject && modelsToMake.isEmpty() && modulesToMake.isEmpty()) {
            return MakeTargetResolution.Invalid(
                "None of the requested models or modules could be resolved",
                mapOf(
                    "unresolvedModels" to unresolvedModels,
                    "unresolvedModules" to unresolvedModules,
                ),
            )
        }

        return MakeTargetResolution.Ok(modelsToMake, modulesToMake, unresolvedModels, unresolvedModules)
    }

    /**
     * Omitted-`parameters` rejection for [mps_mcp_alter_nodes] (study D29). The observed call put
     * MAKE's own arguments at the top level, where the binder drops them, so the message says the
     * arguments belong inside the object and lists that operation's keys. The near-miss spellings
     * are phrased conditionally: the binder cannot report which keys it dropped, so this must stay
     * true for the caller who sent nothing at all.
     */
    private fun missingAlterNodesParameters(operation: MPSAlterOperation): String {
        if (operation == MPSAlterOperation.MAKE) {
            // MAKE_INPUT_INVALID, not INVALID_REQUEST: MAKE input rejections are classified
            // under that code (the contract D14b records), and an `expectedParameters` map rides
            // along as it does on opMake's unknown-key rejection. Using INVALID_REQUEST here would
            // put the most common MAKE input error in a different class from the rest.
            return makeInputInvalid(
                "'parameters' is required for MAKE, and MAKE's own arguments belong inside that " +
                    "object (keys: ${MAKE_PARAMETER_KEYS.joinToString(", ")}). Anything sent at " +
                    "the top level instead is dropped before the call reaches this tool, so a " +
                    "'rebuild' put there never arrives — and 'moduleName' is not a key here at " +
                    "all: a module list is 'modules', inside the object.",
                mapOf("expectedParameters" to MAKE_PARAMETER_SCHEMA),
            )
        }
        // Every non-MAKE operation requires at least 'nodeReference', so the key list is never
        // empty; alterNodesParameterKeys returns null for MAKE alone, handled above.
        val keys = alterNodesParameterKeys(operation)?.canonical.orEmpty()
        return errJson(
            "'parameters' is required for ${operation.name}, and its arguments belong inside that " +
                "object (keys: ${keys.joinToString(", ")}).",
            McpErrorCode.INVALID_REQUEST,
        )
    }

    private suspend fun opMake(mpsProject: MPSProject, params: JsonObject): String {
        val unknownKeys = params.keySet().filter { it !in MAKE_PARAMETER_KEYS && it !in TOLERATED_PARAMETER_KEYS }
        if (unknownKeys.isNotEmpty()) {
            val suggestions = unknownKeys.associateWith { suggestParameterName(it, MAKE_PARAMETER_KEYS) }
            val parts = unknownKeys.map { key ->
                val suggestion = suggestions[key]
                if (suggestion != null) "'$key' (did you mean '$suggestion'?)" else "'$key'"
            }
            return makeInputInvalid(
                "Unknown parameter${if (unknownKeys.size > 1) "s" else ""}: ${parts.joinToString(", ")}. " +
                    "Expected keys: ${MAKE_PARAMETER_KEYS.joinToString(", ") { "'$it'" }}.",
                mapOf(
                    "unknownParameters" to unknownKeys,
                    "suggestions" to suggestions.filterValues { it != null },
                    "expectedParameters" to MAKE_PARAMETER_SCHEMA,
                ),
            )
        }

        // getAsJsonArray casts the member unchecked, so a non-array value (e.g. "models": "foo"
        // instead of ["foo"], or "models": null) throws ClassCastException — surfacing as an opaque
        // internal failure instead of a clean MAKE_INPUT_INVALID. Validate the type explicitly.
        val modelsElem = params.get("models")?.takeIf { !it.isJsonNull }
        val modulesElem = params.get("modules")?.takeIf { !it.isJsonNull }
        if (modelsElem != null && !modelsElem.isJsonArray) {
            return makeInputInvalid("Parameter 'models' must be a JSON array of model references, e.g. {\"models\": [\"<modelRef>\"]}")
        }
        if (modulesElem != null && !modulesElem.isJsonArray) {
            return makeInputInvalid("Parameter 'modules' must be a JSON array of module references, e.g. {\"modules\": [\"<moduleRef>\"]}")
        }
        val modelsArray = modelsElem?.asJsonArray
        val modulesArray = modulesElem?.asJsonArray
        val rebuild = params.paramBoolean("rebuild", default = false)
        val wholeProject = params.paramBoolean("wholeProject", default = false)

        if (wholeProject && (modelsArray != null || modulesArray != null)) {
            return errJson("Parameters 'models' and 'modules' must not be provided when 'wholeProject' is true")
        }
        // The empty-scope case (no wholeProject, no models, no modules) is reported by
        // resolveMakeTargets below as MAKE_INPUT_INVALID — keep the check in one place.

        val requestedModels = modelsArray?.map {
            if (!it.isJsonPrimitive || !it.asJsonPrimitive.isString) {
                return makeInputInvalid("All 'models' entries must be strings")
            }
            it.asString
        } ?: emptyList()
        val requestedModules = modulesArray?.map {
            if (!it.isJsonPrimitive || !it.asJsonPrimitive.isString) {
                return makeInputInvalid("All 'modules' entries must be strings")
            }
            it.asString
        } ?: emptyList()

        val targetResolution = executeBackgroundRead(mpsProject) {
            resolveMakeTargets(
                requestedModels = requestedModels,
                requestedModules = requestedModules,
                wholeProject = wholeProject,
                allProjectModels = { mpsProject.scope.models },
                allProjectModules = { mpsProject.projectModulesWithGenerators },
                resolveModel = { resolveModel(mpsProject, it, projectOnly = true) },
                resolveModule = { resolveModule(mpsProject, it, projectOnly = true) },
                moduleOfModel = { it.module },
                modelsOfModule = { it.models },
            )
        }
        val resolvedTargets = when (targetResolution) {
            is MakeTargetResolution.Invalid -> return makeInputInvalid(targetResolution.message, targetResolution.details)
            is MakeTargetResolution.Ok -> targetResolution
        }

        // Use shared performMake function from AbstractOps
        val makeResult = performMake(
            mpsProject,
            resolvedTargets.modelsToMake.toList(),
            resolvedTargets.modulesToMake.toList(),
            rebuild,
        )
        val result = mutableMapOf<String, Any>()
        result["success"] = makeResult.success
        result["message"] = makeResult.message
        // Distinguishes "build succeeded but language runtime is still stale" from full success
        // so chained calls (scaffold_editor, get_concept_details) can decide to call
        // `mps_mcp_reload_all` or rebuild instead of hitting a hollow descriptor downstream.
        result["runtimeReady"] = makeResult.runtimeReady
        if (makeResult.details.isNotEmpty()) {
            result["details"] = makeResult.details
        }
        val warnings = resolvedTargets.warnings()
        if (warnings.isNotEmpty()) {
            result["warnings"] = warnings
        }
        return finalizeResult(Gson().toJson(result))
    }

    private suspend fun opFixReferences(mpsProject: MPSProject, params: JsonObject): String {
        val nodeReference = params.paramString(PARAM_NODE_REFERENCE) ?: return errJson("Parameter 'nodeReference' is missing")
        return executeShortCommandOnEdt(mpsProject) {
            val (node, model, console) = when (
                val r = resolveEditableNodeAllowingConsole(mpsProject, nodeReference)
            ) {
                is ConsoleAwareResolution.Ok -> Triple(r.node, r.model, r.console)
                is ConsoleAwareResolution.Err -> return@executeShortCommandOnEdt r.errJson
            }
            val result = performFixReferences(mpsProject, node)
            val warn = if (result.fixed > 0 || result.repointed > 0) {
                persistOrRefreshConsole(model, console)
            } else null
            okJson(jsonObject {
                addProperty("fixed", result.fixed)
                addProperty("repointed", result.repointed)
                addProperty("stillBroken", result.stillBroken)
                addProperty("message", result.message)
            }, warnings = listOfNotNull(warn))
        }
    }

    suspend private fun showNodeAppearance(
        nodeReference: String,
        asHtml: Boolean = false,
        maxInlineBytes: Int = DEFAULT_MAX_INLINE_BYTES
    ): String {
        return withMpsProject("Getting MPS node ${if (asHtml) "HTML" else "text"} representation") { mpsProject ->
            executeShortReadOnEdt(mpsProject) {
                val repo = mpsProject.repository
                val sNodeRef = resolveNodeReferencePreferringProject(mpsProject, nodeReference)
                val node = sNodeRef?.resolve(repo)
                    ?: return@executeShortReadOnEdt unresolvedPrintNode(mpsProject, nodeReference, parsedAsNode = sNodeRef != null)

                withHeadlessEditor(repo, node) { ctx ->
                    val component = ctx.editorComponent as HeadlessEditorComponent
                    val text = if (asHtml) {
                        component.rootCell.renderHtml().htmlText
                    } else {
                        component.rootCell.renderText().getText()
                    }
                    finalizeResult(JsonPrimitive(text).toString(), maxInlineBytes)
                }
            }
        }
    }

    @McpTool
    @McpDescription(
        """
        Validates an MPS node (and its descendants) or an MPS model. Accepts an SNodeReference, an SModelReference, or a qualified model name (the same form `mps_mcp_get_project_structure` `startingPoint` accepts). Pass any of these in `nodeReference` — there is no `modelReference` parameter. Returns `data:"no problems found"` when clean, otherwise the problem tree: `data` is inline when the serialized report is <= `maxInlineBytes` (default 20000), and a temp-file path above that.
        A **model reference is exhaustive and is the preferred scope**: it validates the model itself (imports, used languages, devkits) AND runs the full checker stack on every root, so there is no need to follow up with a per-root check. Both the clean and the problem answer carry `details.scope:"model"` and `details.rootsChecked:<N>` stating the coverage; the problem report is the model object plus a `roots` array, one entry per root with problems (`root`, `name`, `concept`, `errors`, `warnings`, and `nodes`/`tree` per `onlyNodesWithProblems`). Pass `perRoot=true` to get `data` as one line per root instead — `[{root, name, concept, errors, warnings}]` for every root, clean ones included — which replaces N single-root calls with one. `onlyNodesWithProblems=true` (default) yields a flat list of nodes with problems; `onlyNodesWithProblems=false` returns the full subtree with `problems` arrays attached to every level. Each problem may carry a `quickFixes` array (`id`, `description`, `autoApplicable`); apply one with `mps_mcp_apply_intention(nodeReference=<the node's reference>, intentionId=<id>)`. Set `autoApplyQuickFixes=true` to run every problem carrying exactly one auto-applicable fix within the given node's subtree (node/root branch only) before returning the final report; applied fixes' descriptions appear in `details.appliedQuickFixes`; fixes that threw during execution appear in `details.failedQuickFixes`. Note: applied fixes may write outside the target model; only the target model is saved automatically. Besides the standard structure/constraints/typesystem checkers, this also decodes the encoded feature ids on attribute nodes — `PropertyAttribute.propertyId` (used by `PropertyMacro`) and `LinkAttribute.linkId` (used by `ReferenceMacro`) — and flags a malformed, blank, or non-resolving id here instead of letting it surface only as an opaque generation-time error. See `mps-mcp-workflow/references/analysis-tools.md` for the output schema.
    """
    )
    suspend fun mps_mcp_check_root_node_problems(
        @McpDescription("Persistent form of SNodeReference or SModelReference, or a qualified model name (the same form mps_mcp_get_project_structure startingPoint accepts). Pass any of these here — there is no modelReference parameter.") nodeReference: String,
        @McpDescription("If true, returns only nodes with problems in a list instead of a full tree (default = true)") onlyNodesWithProblems: Boolean = true,
        @McpDescription("If true, apply every problem carrying exactly one auto-applicable fix within the node's subtree (node/root branch only) before returning the final report (default = false)") autoApplyQuickFixes: Boolean = false,
        @McpDescription("Inline the problem report in `data` when it is at most this many characters; larger reports are saved to a temp file whose path is returned instead (default 20000).") maxInlineBytes: Int = DEFAULT_MAX_INLINE_BYTES,
        @McpDescription("Model references only: if true, `data` is one compact entry per root — `[{root, name, concept, errors, warnings}]` for every root, clean ones included — instead of the problem tree (default = false). Ignored for a node reference.") perRoot: Boolean = false
    ): String {
        return withMpsProject("Checking MPS problems") { mpsProject ->
            // Auto-apply mutates the model, so it needs a write command; the default (report-only)
            // mode keeps the read wrapper to avoid needless write locks.
            if (autoApplyQuickFixes) {
                executeShortCommandOnEdt(mpsProject) { checkRootNodeProblemsBody(mpsProject, nodeReference, onlyNodesWithProblems, applyFixes = true, maxInlineBytes = maxInlineBytes, perRoot = perRoot) }
            } else {
                executeShortReadOnEdt(mpsProject) { checkRootNodeProblemsBody(mpsProject, nodeReference, onlyNodesWithProblems, applyFixes = false, maxInlineBytes = maxInlineBytes, perRoot = perRoot) }
            }
        }
    }

    private fun checkRootNodeProblemsBody(
        mpsProject: MPSProject,
        nodeReference: String,
        onlyNodesWithProblems: Boolean,
        applyFixes: Boolean,
        maxInlineBytes: Int = DEFAULT_MAX_INLINE_BYTES,
        perRoot: Boolean = false,
    ): String {
        val repo = mpsProject.repository
        val host = mpsProject.platform
        val monitor = EmptyProgressMonitor()

        // Try resolving as node reference
        val sNodeRef = try {
            PersistenceFacade.getInstance().createNodeReference(nodeReference)
        } catch (e: Exception) {
            rethrowIfCancellation(e)
            null
        }
        val node = sNodeRef?.resolve(repo)

        if (node != null) {
            val nodeRef = node.reference
            val root = node.containingRoot
            val rootRef = root.reference
            var problems: Map<SNode, List<NodeReportItem>> = runRootCheckers(mpsProject, root, repo)

            // Auto-apply the auto-applicable fixes, then re-check once so the returned report is the
            // final ground truth. The agent is the outer loop: if the fresh report still exposes
            // auto-applicable fixes, it calls again.
            val details: MutableMap<String, Any?> = if (applyFixes) {
                // Auto-apply writes the model, so guard editability + project membership like the
                // other write tools before mutating anything.
                val model = root.model
                if (model !is EditableSModel) {
                    return errJson(
                        "Cannot auto-apply quick fixes: the model containing '$nodeReference' is not editable",
                        McpErrorCode.NOT_EDITABLE,
                    )
                }
                // Detect the console case before the cross-project guard: the console temp model
                // belongs to no project, so isModelInSelectedProject would yield a misleading
                // "belongs to a different project" error.
                val isConsole = when (val r = resolveConsoleEditableTab(mpsProject.project)) {
                    is ConsoleResolution.Ok -> r.consoleModel.reference == model.reference
                    is ConsoleResolution.Err -> false
                }
                if (isConsole) {
                    return errJson(
                        "Auto-apply is not supported for MPS Console content; apply fixes individually with mps_mcp_apply_intention",
                        McpErrorCode.INVALID_REQUEST,
                    )
                }
                if (!isModelInSelectedProject(mpsProject, model)) {
                    return crossProjectErr("Node '$nodeReference'")
                }
                // Scope auto-apply to the requested node's subtree: the checkers run root-wide, but
                // the returned report is scoped to `node`, so applying fixes on sibling/ancestor
                // nodes outside the subtree would mutate and save changes the report never shows.
                val scopedProblems = problems.filterKeys { isSameOrDescendantOf(it, node) }
                val result = autoApplyQuickFixes(scopedProblems.values.flatten(), repo)
                // Flush the applied fixes to the .mps file so the on-disk state matches the report
                // below — executeShortCommandOnEdt only makes the writes undoable, it does not save.
                if (result.applied.isNotEmpty()) {
                    saveModelAndModule(model)
                }
                // Re-resolve node and root after the fixes ran; a fix may have deleted/replaced them.
                val freshNode = nodeRef.resolve(repo)
                val freshRoot = rootRef.resolve(repo)
                if (freshNode == null || freshRoot == null) {
                    val detailsMap = mutableMapOf<String, Any?>("appliedQuickFixes" to result.applied)
                    if (result.failed.isNotEmpty()) detailsMap["failedQuickFixes"] = result.failed
                    return okJson(
                        JsonPrimitive("node no longer exists after applied quick fixes — re-run the check on the containing root"),
                        details = detailsMap,
                    )
                }
                problems = runRootCheckers(mpsProject, freshRoot, repo)
                val detailsMap = mutableMapOf<String, Any?>("appliedQuickFixes" to result.applied)
                if (result.failed.isNotEmpty()) detailsMap["failedQuickFixes"] = result.failed
                detailsMap
            } else {
                mutableMapOf()
            }

            // Re-resolve node in case fixes ran (when applyFixes=false the original instance is fine).
            val reportNode = if (applyFixes) nodeRef.resolve(repo) ?: node else node

            // hasAnyProblems / hasLocalProblems live in AbstractOps so this fast-path
            // and nodeWithProblemsListToJson share the exact same definition of
            // "node has a problem" — preventing drift where one says green and the
            // other still finds something to print.
            return if (!hasAnyProblems(reportNode, problems)) {
                if (details.isEmpty()) okJson("\"no problems found\"")
                else okJson(JsonPrimitive("no problems found"), details = details)
            } else {
                val json = if (onlyNodesWithProblems) {
                    nodeWithProblemsListToJson(reportNode, problems, mpsProject)
                } else {
                    nodeWithProblemsToJson(reportNode, problems, currentProject = mpsProject)
                }
                finalizeResult(json, maxInlineBytes, details)
            }
        } else {
            // Accept a persistent model reference OR a qualified model name — the same
            // forms get_project_structure startingPoint accepts (study defect D33).
            // createModelReference on a bare name succeeds but yields a name-only
            // SModelReference that does not resolve, so name lookup has to go through
            // resolveModelPreferringProject rather than PersistenceFacade alone.
            val model = resolveModelPreferringProject(mpsProject, nodeReference)
            return if (model != null) {
                val modelProblems = mutableListOf<ModelReportItem>()
                ModelValidator(host, model).validate({ modelProblems.add(it) }, monitor)

                // ModelValidator only inspects model-level metadata (imports, used languages, devkits,
                // aspect/generator sanity) — it never looks at the roots. Sweeping every root through
                // the same checkers the node branch runs is what makes the model-scope answer
                // exhaustive, which is what `details.rootsChecked` states and what spares agents the
                // per-root re-check they were doing out of distrust (study hotspot 2, defect D7).
                val roots = model.rootNodes.toList()
                val rootProblems = roots.map { runRootCheckers(mpsProject, it, repo) }

                val warnings = mutableListOf<String>()
                if (applyFixes) {
                    warnings.add("autoApplyQuickFixes applies only to node references; ignored for a model reference")
                }
                val details = mutableMapOf<String, Any?>("scope" to "model", "rootsChecked" to roots.size)

                if (perRoot) {
                    val perRootArray = JsonArray()
                    for ((index, root) in roots.withIndex()) {
                        perRootArray.add(rootProblemSummary(root, rootProblems[index]))
                    }
                    if (modelProblems.isNotEmpty()) {
                        details["modelProblems"] = modelProblems.size
                        warnings.add(
                            "The model itself has ${modelProblems.size} problem(s) (imports / used languages / devkits); " +
                                "re-run with perRoot=false to see them"
                        )
                    }
                    finalizeResult(perRootArray.toString(), maxInlineBytes, details, warnings)
                } else {
                    val problemRoots = JsonArray()
                    for ((index, root) in roots.withIndex()) {
                        val problems = rootProblems[index]
                        if (!hasAnyProblems(root, problems)) continue
                        problemRoots.add(rootProblemSummary(root, problems).apply {
                            if (onlyNodesWithProblems) {
                                add("nodes", nodeWithProblemsListJsonArray(root, problems, mpsProject))
                            } else {
                                add("tree", nodeWithProblemsJsonObject(root, problems, true, mpsProject))
                            }
                        })
                    }
                    if (modelProblems.isEmpty() && problemRoots.isEmpty()) {
                        okJson(JsonPrimitive("no problems found"), warnings = warnings, details = details)
                    } else {
                        val report = modelWithProblemsJsonObject(model, modelProblems, mpsProject)
                        report.add("roots", problemRoots)
                        finalizeResult(report.toString(), maxInlineBytes, details, warnings)
                    }
                }
            } else {
                errJson(
                    "Reference '$nodeReference' resolved to neither a node nor a model. " +
                        "Pass a node reference (r:<uuid>(model)/<node-id>), a model reference (r:<uuid>(model)), " +
                        "or a qualified model name in nodeReference — the same forms mps_mcp_get_project_structure startingPoint accepts. " +
                        "This tool has no modelReference parameter; retry with nodeReference set to the value you passed as modelReference.",
                    McpErrorCode.NOT_FOUND,
                )
            }
        }
    }

    /**
     * [nodeReference] did not resolve as a node. If it is a model (persistent ref or
     * qualified name), say so with a retry line rather than a generic NOT_FOUND — study
     * defect D33: agents reused a model-scope string from the checker against print_node.
     */
    private fun unresolvedPrintNode(mpsProject: MPSProject, nodeReference: String, parsedAsNode: Boolean): String {
        val model = resolveModelPreferringProject(mpsProject, nodeReference)
        if (model != null) {
            val name = model.name.value
            val modelRef = PersistenceFacade.getInstance().asString(model.reference)
            return errJson(
                "'$nodeReference' is a model ($name), not a node. " +
                    "mps_mcp_print_node requires a node reference (r:<uuid>(model)/<node-id>). " +
                    "Retry with mps_mcp_get_project_structure, startingPoint set to '$modelRef', includeNodes=true. " +
                    "mps_mcp_check_root_node_problems accepts this value in nodeReference as a model-scope check.",
                McpErrorCode.INVALID_REQUEST,
            )
        }
        return if (parsedAsNode) {
            errJson("Node '$nodeReference' not found", McpErrorCode.NOT_FOUND)
        } else {
            invalidReference("Invalid or unresolvable node reference: '$nodeReference'")
        }
    }

    /** `{root, name, concept, errors, warnings}` for one root of a model-scope problem check. */
    private fun rootProblemSummary(root: SNode, problems: Map<SNode, List<NodeReportItem>>): JsonObject {
        val counts = problemCounts(root, problems)
        return jsonObject {
            addProperty("root", PersistenceFacade.getInstance().asString(root.reference))
            addProperty("name", root.name ?: root.presentation)
            addProperty("concept", root.concept.name)
            addProperty("errors", counts.errors)
            addProperty("warnings", counts.warnings)
        }
    }

    @McpTool
    @McpDescription(
        """
        Prints the specified node as JSON. `data` is inline when the printout is <= `maxInlineBytes` (default 20000), otherwise a temp-file path. `deep=true` inlines all descendants; `deep=false` (default) lists direct children's refs only. The result (inline `data` or the saved envelope) is consumable by every node-mutation tool (`mps_mcp_update_node`, `mps_mcp_update_root_node_from_json`, etc.). See `mps-mcp-workflow/references/analysis-tools.md` for the output schema and `mps-node-editing/references/json-format.md` for the matching blueprint shape.
        `nodeReference` must be a node reference (`r:<uuid>(model)/<node-id>`). A model reference or qualified model name is rejected with INVALID_REQUEST that names the model and a retry line for `mps_mcp_get_project_structure` (`startingPoint`, `includeNodes=true`); `mps_mcp_check_root_node_problems` accepts those model forms in `nodeReference`.
        Alternatively, if HTML or PLAIN TEXT format is required, it returns the editor-projected representation of the specified node as a string, inline or as a temp-file path under the same `maxInlineBytes` rule.
        If the goal is to duplicate this node rather than merely inspect it, prefer `mps_mcp_alter_nodes` `COPY_NODE` over printing it deep and re-inserting the JSON — it's fewer calls and produces a structurally guaranteed-valid clone.
    """
    )
    suspend fun mps_mcp_print_node(
        @McpDescription("Persistent form of SNodeReference (r:<uuid>(model)/<node-id>). A model reference or qualified model name is rejected with a retry line pointing at mps_mcp_get_project_structure.") nodeReference: String,
        @McpDescription("One of exactly three literals: JSON (default), HTML, PLAIN TEXT.") format: String = "JSON",
        @McpDescription("Whether to perform a deep (true) or shallow (false) printout. Only relevant for JSON format. Defaults to false.") deep: Boolean = false,
        @McpDescription("Inline the printout in `data` when it is at most this many characters; larger printouts are saved to a temp file whose path is returned instead (default 20000).") maxInlineBytes: Int = DEFAULT_MAX_INLINE_BYTES
    ): String {
        val normalizedFormat = format.uppercase().trim()
        if (normalizedFormat == "HTML") return showNodeAppearance(nodeReference, asHtml = true, maxInlineBytes = maxInlineBytes)
        if (normalizedFormat == "PLAIN TEXT") return showNodeAppearance(nodeReference, asHtml = false, maxInlineBytes = maxInlineBytes)
        if (normalizedFormat != "JSON") return McpCallOutcomes.record(
            errJson("Invalid format '$format'. Allowed values: JSON, HTML, PLAIN TEXT", McpErrorCode.INVALID_REQUEST)
        )
        return withMpsProject(if (deep) "Deep printing MPS node" else "Shallow printing MPS node") { mpsProject ->
            executeShortReadOnEdt(mpsProject) {
                val repo = mpsProject.repository
                val sNodeRef = resolveNodeReferencePreferringProject(mpsProject, nodeReference)
                val node = sNodeRef?.resolve(repo)
                    ?: return@executeShortReadOnEdt unresolvedPrintNode(mpsProject, nodeReference, parsedAsNode = sNodeRef != null)
                finalizeResult(nodeHierarchyToJson(node, deep, mpsProject), maxInlineBytes)
            }
        }
    }

    @McpTool
    @McpDescription(
        """
        Unified node-mutation tool. Use this for all child, property, and reference operations on MPS nodes.
        operation × kind combinations and required parameters:
        ADD × CHILD — Add a new child node.
          nodeReference: persistent ref of the parent node.
          childRole: containment role name.
          childJson: JSON blueprint (max 4 KB), sent as real JSON or as its string form, OR an absolute path to a file containing the JSON. For large blueprints prefer the file form to avoid MCP transport truncation. Multi-cardinality roles append by default; pass `position` (0-based) to insert at a specific index. `dryRun=true` validates without mutating.
          position: Multi-cardinality roles append by default; pass `position` (0-based) to insert at a specific index. A `position` at or beyond the current child count is clamped to an append (not rejected); a negative value other than -1 is rejected. Single-cardinality roles accept only null/-1/0.
          Returns the inserted node's info envelope (`data.parentReference` carries the parent ref, `data.index` the actual landing index — useful when an over-range `position` was clamped). `responseDetail="summary"` answers with `{added, nodes:[{name, reference, concept}], fixReferences}` instead (no conceptDoc, no index); `full` is the default because one call adds one child.

        SET × CHILD — Replace an existing child node with a new node described by a JSON blueprint. Deletes the child if `childJson = null`.
          childNodeRef: persistent ref of the child to replace.
          childJson: `null` deletes the child — express that null by OMITTING the parameter (or sending an unquoted JSON null); the 4-character string `"null"` is rejected. Otherwise a JSON blueprint (max 4 KB), sent as real JSON or as its string form, OR an absolute path to a file containing the JSON. For large blueprints use the file form. The original child's position in its role is preserved. `dryRun=true` validates without mutating.
          Returns the inserted node's info envelope or the parent's one, if deletion (`childJson = null`).

        SET × PROPERTY — Set or delete properties on a batch of nodes. The value `propertyValue = null` DELETES the property.
          properties: list of triplets [nodeReference, propertyName, propertyValue]. Returns a JSON array with one result per triplet. Encoded ids carried inside a property value (e.g. a `PropertyMacro.propertyId`) are NOT validated when set — a malformed, blank, or non-resolving id is accepted silently and surfaces only via `mps_mcp_check_root_node_problems`.

        SET × REFERENCE — Set or delete references on a batch of nodes. The value `targetNodeRefOrName = null` DELETES the reference.
          references: list of triplets [nodeReference, referenceRole, targetNodeRefOrName]. `targetNodeRefOrName` accepts a persistent node reference (`r:...`) or a plain name. A plain name is resolved within the reference role's search scope (the same resolution the blueprint-insert tools perform); for a role that declares no custom scope this spans the whole model plus its imports, so a name that matches **no** in-scope node — or **more than one** (an ambiguous name, e.g. two same-named nodes in different roots of one model) — fails with `NOT_FOUND` (the error states which) and the previous reference value is preserved, so it never leaves a dangling reference. Pass a persistent `r:` reference to bind a specific or ambiguous target. When a name required scope resolution, the per-item envelope carries a `fixReferences` summary. Do NOT use MPS XML short IDs copied from `.mps` files. A reference role does not accept a `c:` concept ref; pass the concept declaration's persistent node reference (`r:...`) or plain name instead. Returns a JSON array with one result per triplet. See `mps-mcp-workflow/references/reference-formats.md`.

        ADD × PROPERTY and ADD × REFERENCE are not valid combinations and return an error.

        The child's concept must be assignable to the role's concept; model dependencies and used languages are updated automatically on child operations. For `childJson` larger than ~4 KB pass an absolute file path instead of an inline string. See `mps-node-editing` for blueprint format, file-path semantics, and staged-construction patterns. See `mps-mcp-workflow/references/reference-formats.md` for reference formats.

        On success returns `{"ok":true,"data":{...}}`. On failure returns `{"ok":false,"error":"..."}` with optional `code`, `details`, and `warnings` fields.
    """
    )
    suspend fun mps_mcp_update_node(
        @McpDescription("Required. The operation to perform (ADD or SET)") operation: String = "",
        @McpDescription("Required. The kind of element to operate on (CHILD, PROPERTY, REFERENCE)") kind: String = "",
        @McpDescription("Parent node ref for ADD CHILD") nodeReference: String? = null,
        @McpDescription("Containment role name for ADD CHILD") childRole: String? = null,
        @McpDescription("0-based insert index for ADD CHILD multi-cardinality roles; null/-1 = append. A value at or beyond the current child count is clamped to an append; a negative value other than -1 is rejected. Single-cardinality roles accept only null/-1/0.") position: Int? = null,
        @McpDescription("For ADD CHILD or SET CHILD: JSON blueprint (max 4 KB), sent as real JSON or as its string form, OR an absolute path to a file containing the JSON. Prefer the file form for blueprints larger than ~4 KB to avoid MCP transport truncation. For SET CHILD, a null deletes the child — omit this parameter (or send an unquoted JSON null); the string \"null\" is rejected.") childJson: JsonOrText? = null,
        @McpDescription("Ref of the child to replace or delete (SET CHILD)") childNodeRef: String? = null,
        @McpDescription("If true, validate without mutating (ADD CHILD, SET CHILD only). Default: false.") dryRun: Boolean = false,
        @McpDescription("Batch triplets [nodeRef, propertyName, value] for SET PROPERTY") properties: List<List<String?>>? = null,
        @McpDescription("Batch triplets [nodeRef, referenceRole, targetNodeRefOrName] for SET REFERENCE") references: List<List<String?>>? = null,
        @McpDescription("ADD CHILD only: `summary` for `{added, nodes:[{name, reference, concept}], fixReferences}`, `full` (the default for a single child) for the complete node-info envelope with `index`.") responseDetail: String? = null,
    ): String {
        // Study D28: both selectors default to blank so a call that omits one still reaches this
        // body. As required parameters they were rejected by the platform with "No argument is
        // passed for required parameter 'kind'", which names one wrong key and none of the right
        // ones. Both stay semantically required and say so in their descriptions — leaving the
        // published `required` array costs the client its only structural signal, which the
        // wording has to replace. `operation` is resolved before `kind` is checked so that operation=DELETE gets the
        // deletion recipe (D36) rather than a "kind is required" that is a dead end for it.
        // Every selector rejection is recorded: these return before `withMpsProject`, the only
        // other call site that reports the envelope to the call log, and a rejection that reaches
        // the log as ok:true is exactly the mis-measurement D26 was fixed to remove.
        if (operation.isBlank()) return McpCallOutcomes.record(missingUpdateNodeSelector(operation, kind))
        val op = resolveOperationOrNull<NodeUpdateOperation>(operation)
            ?: return McpCallOutcomes.record(unknownNodeUpdateOperation(operation, kind))
        if (kind.isBlank()) return McpCallOutcomes.record(missingUpdateNodeSelector(operation, kind))
        val k = resolveOperationOrNull<NodeUpdateKind>(kind)
            ?: return McpCallOutcomes.record(unknownOperation<NodeUpdateKind>(kind))
        return mps_mcp_update_node(op, k, nodeReference, childRole, position, childJson?.text, childNodeRef, dryRun, properties, references, responseDetail)
    }

    /**
     * Internal enum-typed entry point for [mps_mcp_update_node]; the String overload above is the
     * registered `@McpTool`. Keep this parameter list in sync with the wrapper. See
     * [resolveOperationOrNull] for why the tool boundary takes String selectors.
     */
    suspend fun mps_mcp_update_node(
        operation: NodeUpdateOperation,
        kind: NodeUpdateKind,
        nodeReference: String? = null,
        childRole: String? = null,
        position: Int? = null,
        childJson: String? = null,
        childNodeRef: String? = null,
        dryRun: Boolean = false,
        properties: List<List<String?>>? = null,
        references: List<List<String?>>? = null,
        responseDetail: String? = null,
    ): String {
        return when (kind) {
            NodeUpdateKind.CHILD -> when (operation) {
                NodeUpdateOperation.ADD -> {
                    // Reported together rather than one per round trip: study D28's incident sent
                    // parentRef/role/target, so all three keys were wrong at once. Kotlin
                    // smart-casts the three parameters past this early return.
                    if (nodeReference == null || childRole == null || childJson == null) {
                        return missingAddChildParameters(nodeReference, childRole, childJson)
                    }
                    update_node_child(nodeReference, childRole, childJson, null, position, dryRun, responseDetail)
                }
                NodeUpdateOperation.SET -> {
                    // 'target' belongs on this near-miss list, not ADD CHILD's: in
                    // mps_mcp_parse_java_and_insert — the tool study D28 names as the source of
                    // the guess — `targetRef` is the node being *replaced* under mode "replace",
                    // whose counterpart here is childNodeRef, not the ADD CHILD parent.
                    val childRef = childNodeRef ?: return missingUpdateNodeParameter(
                        "childNodeRef", "SET CHILD", "the reference of the child to replace or delete",
                        "childNodeReference/nodeReference/target"
                    )
                    update_node_child(null, null, childJson, childRef, null, dryRun)
                }
            }
            NodeUpdateKind.PROPERTY -> when (operation) {
                NodeUpdateOperation.ADD -> McpCallOutcomes.record(
                    errJson("ADD is not a valid operation for PROPERTY", McpErrorCode.INVALID_REQUEST)
                )
                NodeUpdateOperation.SET -> {
                    val triplets = properties ?: return missingUpdateNodeParameter(
                        "properties", "SET PROPERTY",
                        "the triplet array [[nodeRef, propertyName, value], ...]"
                    )
                    val results = mutableListOf<String>()
                    var allSucceeded = true
                    for (triplet in triplets) {
                        val itemResult = if (triplet.size >= 3) {
                            val nodeRef = triplet[0]
                            val propName = triplet[1]
                            when {
                                nodeRef.isNullOrEmpty() -> errJson("nodeReference (triplet[0]) must not be null or empty")
                                propName.isNullOrEmpty() -> errJson("propertyName (triplet[1]) must not be null or empty")
                                else -> update_node_property(nodeRef, propName, triplet[2])
                            }
                        } else {
                            errJson("Invalid property triplet: expected at least 3 elements", McpErrorCode.INVALID_REQUEST)
                        }
                        results.add(itemResult)
                        if (!itemResult.startsWith("{\"ok\":true")) allSucceeded = false
                    }
                    val array = "[" + results.joinToString(",") + "]"
                    // Recorded because the per-item helpers each recorded their own envelope and
                    // McpCallOutcomes is last-write-wins: without this the call log reports the
                    // batch as whatever its final row happened to be, not as the aggregate.
                    McpCallOutcomes.record("{" + "\"ok\":$allSucceeded,\"data\":" + array + "}")
                }
            }
            NodeUpdateKind.REFERENCE -> when (operation) {
                NodeUpdateOperation.ADD -> McpCallOutcomes.record(
                    errJson("ADD is not a valid operation for REFERENCE", McpErrorCode.INVALID_REQUEST)
                )
                NodeUpdateOperation.SET -> {
                    val triplets = references ?: return missingUpdateNodeParameter(
                        "references", "SET REFERENCE",
                        "the triplet array [[nodeRef, referenceRole, targetNodeRefOrName], ...]"
                    )
                    val results = mutableListOf<String>()
                    var allSucceeded = true
                    for (triplet in triplets) {
                        val itemResult = if (triplet.size >= 3) {
                            val nodeRef = triplet[0]
                            val refRole = triplet[1]
                            when {
                                nodeRef.isNullOrEmpty() -> errJson("nodeReference (triplet[0]) must not be null or empty")
                                refRole.isNullOrEmpty() -> errJson("referenceRole (triplet[1]) must not be null or empty")
                                else -> update_node_reference(nodeRef, refRole, triplet[2])
                            }
                        } else {
                            errJson("Invalid reference triplet: expected at least 3 elements", McpErrorCode.INVALID_REQUEST)
                        }
                        results.add(itemResult)
                        if (!itemResult.startsWith("{\"ok\":true")) allSucceeded = false
                    }
                    val array = "[" + results.joinToString(",") + "]"
                    McpCallOutcomes.record("{" + "\"ok\":$allSucceeded,\"data\":" + array + "}")
                }
            }
        }
    }

    /**
     * "Required parameter missing" rejection for [mps_mcp_update_node], in the shape the
     * parameter-name sweep settled on: name the correct key, then end with the literal edit to
     * make and — where the surface really carries a competing spelling for the same idea — the
     * near-miss this tool does *not* accept. No alias parameter is added: a top-level alias is
     * paid for in every turn's published schema, whereas a named rejection costs one retry only
     * to the caller who already guessed wrong.
     *
     * Records its own envelope: every caller returns straight out of [mps_mcp_update_node]'s
     * dispatch without reaching `withMpsProject`, the only other call site that reports to the
     * call log, and a rejection logged as ok:true is the mis-measurement D26 was fixed to remove.
     */
    private suspend fun missingUpdateNodeParameter(
        parameter: String,
        operation: String,
        value: String,
        nearMisses: String? = null,
    ): String = McpCallOutcomes.record(
        errJson(
            "$parameter is required for $operation. Retry with $parameter set to $value." +
                (nearMisses?.let { " This tool spells it '$parameter', not '$it'." } ?: ""),
            McpErrorCode.INVALID_REQUEST,
        )
    )

    /** One required key of [mps_mcp_update_node], with the spelling this tool does *not* accept. */
    private class UpdateNodeParameter(val name: String, val value: String, val nearMisses: String)

    /**
     * ADD CHILD rejection naming *every* missing key at once. Study D28 observed a caller sending
     * `parentRef`/`role`/`target` — all three keys wrong together — so reporting them one at a
     * time costs a round trip per key. A single missing key still goes through
     * [missingUpdateNodeParameter] so the settled singular wording is untouched.
     */
    private suspend fun missingAddChildParameters(
        nodeReference: String?,
        childRole: String?,
        childJson: String?,
    ): String {
        val missing = listOfNotNull(
            UpdateNodeParameter("nodeReference", "the parent node's reference", "parentRef/nodeRef")
                .takeIf { nodeReference == null },
            UpdateNodeParameter("childRole", "the containment role name", "role")
                .takeIf { childRole == null },
            UpdateNodeParameter(
                "childJson", "the child's JSON blueprint, or an absolute path to a file holding it", "json"
            ).takeIf { childJson == null },
        )
        // Exactly one of the three shapes is reachable, and the caller has already established
        // that `missing` is not empty, so there is no empty case to answer here.
        missing.singleOrNull()?.let {
            return missingUpdateNodeParameter(it.name, "ADD CHILD", it.value, it.nearMisses)
        }
        return McpCallOutcomes.record(
            errJson(
                missing.joinToString(", ") { it.name } + " are required for ADD CHILD. Retry with " +
                    missing.joinToString("; ") {
                        "${it.name} set to ${it.value} (not '${it.nearMisses}')"
                    } + ".",
                McpErrorCode.INVALID_REQUEST,
            )
        )
    }

    /**
     * [NodeUpdateOperation] has no DELETE, and study D36 recorded the same DELETE guess three
     * times across two runs because the generic rejection lists the valid operations but never
     * says *how* to delete. Kept local so the operation enums that really do carry a DELETE
     * (root nodes, [DependencyOperation]) keep the generic [unknownOperation] wording.
     */
    private fun unknownNodeUpdateOperation(raw: String, kind: String): String = errJson(
        "Unknown operation '$raw'. Valid operations: " +
            NodeUpdateOperation.entries.joinToString(", ") { it.name } + ". " +
            deletionRecipeFor(kind) + " There is no DELETE operation.",
        McpErrorCode.INVALID_REQUEST,
    )

    /**
     * How to delete, for the `kind` the caller asked about. Deletion is a `SET`, but *which* SET
     * differs: a child is deleted by omitting `childJson`, whereas a property or reference needs
     * an explicit null as the third element of its triplet — a shortened triplet is rejected. A
     * recipe naming only the child form would be wrong advice for two of the three kinds.
     */
    private fun deletionRecipeFor(kind: String): String =
        when (resolveOperationOrNull<NodeUpdateKind>(kind)) {
            NodeUpdateKind.PROPERTY ->
                "Deletion is SET PROPERTY with an explicit null as the triplet's third element."
            NodeUpdateKind.REFERENCE ->
                "Deletion is SET REFERENCE with an explicit null as the triplet's third element."
            NodeUpdateKind.CHILD -> "Deletion is SET CHILD with childJson omitted (or a JSON null)."
            // kind blank or unresolvable: name both forms rather than guess one.
            null -> "Deletion is a SET — SET CHILD with childJson omitted for a child, " +
                "SET PROPERTY / SET REFERENCE with an explicit null triplet value for a property or reference."
        }

    /**
     * Blank-selector rejection for [mps_mcp_update_node] (study D28). Names whichever selector is
     * actually blank — the caller who supplied `operation` must not be told it is missing — then
     * the valid pairs and the ADD CHILD keys, since omitting `kind` went with guessed key names
     * in every observed incident.
     */
    private fun missingUpdateNodeSelector(operation: String, kind: String): String {
        val subject = when {
            operation.isBlank() && kind.isBlank() -> "operation and kind are"
            operation.isBlank() -> "operation is"
            else -> "kind is"
        }
        return errJson(
            "$subject required. Received operation='$operation', kind='$kind'. " +
                "Valid pairs: ADD CHILD, SET CHILD, SET PROPERTY, SET REFERENCE — ADD is not " +
                "valid for PROPERTY or REFERENCE. " +
                "For ADD CHILD also supply nodeReference, childRole and childJson; " +
                "this tool does not accept parentRef/nodeRef/role/target.",
            McpErrorCode.INVALID_REQUEST,
        )
    }

    private suspend fun update_node_child(
        nodeReference: String?,
        childRole: String?,
        childJson: String?,
        childToReplaceOrDeleteRef: String?,
        position: Int?,
        dryRun: Boolean = false,
        responseDetail: String? = null
    ): String = withMpsProject("Updating MPS node child") { mpsProject ->
        val actualJson = readNodeJsonOrFile(childJson, dryRun)
        update_node_child(mpsProject, nodeReference, childRole, actualJson, childToReplaceOrDeleteRef, position, dryRun, responseDetail)
    }

    private suspend fun update_node_reference(
        nodeReference: String,
        referenceRole: String,
        targetNodeRefStr: String?
    ): String = withMpsProject("Updating MPS node reference '$referenceRole'") { mpsProject ->
        update_node_reference(mpsProject, nodeReference, referenceRole, targetNodeRefStr)
    }

    private suspend fun update_node_property(nodeReference: String, propertyName: String, propertyValue: String?): String {
        return withMpsProject("Updating MPS node property '$propertyName'") { mpsProject ->
            executeShortCommandOnEdt(mpsProject) {
                val (node, model, console) = when (val r = resolveEditableNodeAllowingConsole(mpsProject, nodeReference)) {
                    is ConsoleAwareResolution.Ok -> Triple(r.node, r.model, r.console)
                    is ConsoleAwareResolution.Err -> return@executeShortCommandOnEdt r.errJson
                }

                val sProperty = node.concept.properties.find { it.name == propertyName }
                    ?: return@executeShortCommandOnEdt errJson("Property '$propertyName' not found in concept '${node.concept.name}'", McpErrorCode.NOT_FOUND)

                setProperty(node, sProperty, propertyValue)
                val warn = persistOrRefreshConsole(model, console)
                okJson(nodeInfoJsonObject(node, mpsProject), warnings = listOfNotNull(warn))
            }
        }
    }

    private suspend fun moveNodeChild(
        nodeReference: String,
        childRole: String,
        childNodeRef: String,
        position: Int
    ): String {
        return withMpsProject("Moving MPS node child") { mpsProject ->
            executeShortCommandOnEdt(mpsProject) {
                val repo = mpsProject.repository
                val (parent, model, console) = when (
                    val r = resolveEditableNodeAllowingConsole(mpsProject, nodeReference, { "Parent node '$it' not found" })
                ) {
                    is ConsoleAwareResolution.Ok -> Triple(r.node, r.model, r.console)
                    is ConsoleAwareResolution.Err -> return@executeShortCommandOnEdt r.errJson
                }
                val childNode = resolveNodeReferencePreferringProject(mpsProject, childNodeRef)?.resolve(repo)
                    ?: return@executeShortCommandOnEdt errJson("Child node '$childNodeRef' not found", McpErrorCode.NOT_FOUND)
                if (childNode.model?.reference != parent.model?.reference) {
                    return@executeShortCommandOnEdt errJson("Child node '$childNodeRef' is not in the same model as parent '$nodeReference'", McpErrorCode.INVALID_REQUEST)
                }

                if (childNode.parent != parent) {
                    return@executeShortCommandOnEdt errJson("Node '$childNodeRef' is not a child of '$nodeReference'", McpErrorCode.INVALID_REQUEST)
                }

                val role = parent.concept.containmentLinks.find { it.name == childRole }
                    ?: return@executeShortCommandOnEdt errJson("Child role '$childRole' not found in concept '${parent.concept.name}'", McpErrorCode.NOT_FOUND)

                if (childNode.containmentLink != role) {
                    return@executeShortCommandOnEdt errJson("Node '$childNodeRef' is not in role '$childRole'", McpErrorCode.INVALID_REQUEST)
                }

                if (!role.isMultiple) {
                    return@executeShortCommandOnEdt errJson("Role '$childRole' is not a collection (cardinality 0..1 or 1)", McpErrorCode.INVALID_REQUEST)
                }

                val childrenInRole = parent.getChildren(role).toList()
                val count = childrenInRole.size
                val currentIndex = childrenInRole.indexOf(childNode)

                // -1 means "move to the end"; any value at or beyond the last index also clamps to
                // the end, mirroring the append-clamp used by the insert tools
                // (mps_mcp_update_node ADD CHILD, mps_mcp_parse_java_and_insert). A value below -1
                // is meaningless as an index, so reject it. NB: this repositions a node already in
                // the role, so it clamps to `count - 1` and intentionally does NOT use the shared
                // resolveInsertIndex (which inserts a NEW child and clamps to `count`).
                if (position < -1) {
                    return@executeShortCommandOnEdt errJson(
                        "position $position is invalid for role '$childRole'; use -1 to move to the " +
                            "end, or supply a value >= 0",
                        McpErrorCode.INVALID_REQUEST
                    )
                }
                val targetIndex = if (position == -1 || position >= count) count - 1 else position

                if (targetIndex == currentIndex) {
                    // Already at the correct position
                    return@executeShortCommandOnEdt okJson(nodeInfoJsonObjectWithIndex(childNode, mpsProject))
                }

                // Repositioning
                if (targetIndex == count - 1) {
                    // Move to last position
                    parent.removeChild(childNode)
                    parent.addChild(role, childNode)
                } else {
                    // Move before the child currently at targetIndex
                    // If targetIndex > currentIndex, we need to skip one child because childNode is already in the list
                    val anchorIndex = if (targetIndex > currentIndex) targetIndex + 1 else targetIndex
                    val anchor = if (anchorIndex < count) childrenInRole[anchorIndex] else null
                    parent.removeChild(childNode)
                    parent.insertChildBefore(role, childNode, anchor)
                }

                val warn = persistOrRefreshConsole(model, console)
                // Return the moved node with its actual resulting index (consistent with
                // MOVE_NODE_TO_PARENT), so a caller that overshot `position` sees where it landed.
                okJson(nodeInfoJsonObjectWithIndex(childNode, mpsProject), warnings = listOfNotNull(warn))
            }
        }
    }

    private suspend fun moveNodeToParent(
        nodeReference: String,
        newParentRef: String?,
        role: String?,
        position: Int?,
        modelReference: String?
    ): String {
        return withMpsProject("Moving MPS node to parent") { mpsProject ->
            executeShortCommandOnEdt(mpsProject) {
                val repo = mpsProject.repository
                val sNodeRef = resolveNodeReference(mpsProject, nodeReference) ?: resolveNodeReference(repo, nodeReference)
                val node = sNodeRef?.resolve(repo)
                    ?: return@executeShortCommandOnEdt errJson("Node '$nodeReference' not found", McpErrorCode.NOT_FOUND)

                // The node may be a non-root inside an editable model, OR a root
                // node whose model is non-editable but we still want to refuse.
                // We can't reuse resolveEditableNodeAndModel here because a node
                // not currently in any model is also valid (rare but possible).
                val sourceModel = node.model
                if (sourceModel != null && sourceModel !is EditableSModel) {
                    val isConsole = sourceModel.module?.let { !isModuleInProject(repo, sourceModel) } ?: false
                    return@executeShortCommandOnEdt errJson(
                        if (isConsole) "Cannot move a node from the MPS Console — console models are transient and do not support move operations"
                        else "Source model is not editable",
                        McpErrorCode.NOT_EDITABLE
                    )
                }
                if (sourceModel != null && !isModelInSelectedProject(mpsProject, sourceModel)) {
                    return@executeShortCommandOnEdt crossProjectErr("Node '$nodeReference'")
                }

                if (newParentRef != null) {
                    if (role == null) {
                        return@executeShortCommandOnEdt errJson("Parameter 'role' is missing for MOVE_NODE_TO_PARENT with newParentRef", McpErrorCode.INVALID_REQUEST)
                    }
                    val (newParent, targetModel, targetConsole) = when (
                        val r = resolveEditableNodeAllowingConsole(mpsProject, newParentRef,
                            { "New parent node '$it' not found" },
                            "Target model is not editable")
                    ) {
                        is ConsoleAwareResolution.Ok -> Triple(r.node, r.model, r.console)
                        is ConsoleAwareResolution.Err -> return@executeShortCommandOnEdt r.errJson
                    }

                    // Console-boundary guard: a node may be relocated WITHIN the current console command,
                    // or BETWEEN project models, but never across the console boundary. The console model
                    // is a throwaway temp model, so moving project nodes into it (or console nodes out of
                    // it) is meaningless and would try to persist the temp model.
                    if (targetConsole != null) {
                        // Target is inside the console command: require the source to be a node inside the
                        // SAME console's current command (resolved the same way, so history / stale /
                        // external refs are rejected).
                        when (val sr = resolveEditableNodeAllowingConsole(mpsProject, nodeReference)) {
                            is ConsoleAwareResolution.Ok ->
                                if (sr.console?.consoleModel?.reference != targetConsole.consoleModel.reference) {
                                    return@executeShortCommandOnEdt errJson(
                                        "MOVE_NODE_TO_PARENT cannot move a node from outside the MPS Console into the " +
                                            "console input. Build the console command with mps_mcp_parse_java_and_insert " +
                                            "(insert.mode \"console\") or mps_mcp_insert_console_command_from_json.",
                                        McpErrorCode.INVALID_REQUEST
                                    )
                                }
                            is ConsoleAwareResolution.Err -> return@executeShortCommandOnEdt sr.errJson
                        }
                    } else if (sourceModel != null && !isModuleInProject(repo, sourceModel)) {
                        // Target is a project model: refuse a console node, or a node from another open
                        // project, as the source (consistent with the other write tools' project guard).
                        return@executeShortCommandOnEdt crossProjectErr("Source node '$nodeReference'")
                    }

                    val containmentLink = newParent.concept.containmentLinks.find { it.name == role }
                        ?: return@executeShortCommandOnEdt errJson("Child role '$role' not found in concept '${newParent.concept.name}'", McpErrorCode.NOT_FOUND)

                    // Reject an out-of-range index BEFORE detaching so an invalid request leaves the
                    // model untouched. A position past the child count is NOT rejected — the
                    // append/clamp decision is made post-detach by resolveInsertIndex (below),
                    // against the destination role's then-current count, so it never sees an invalid
                    // value here and never returns Invalid. Matches the other insert tools.
                    if (position != null && position < -1) {
                        return@executeShortCommandOnEdt errJson(
                            "position $position is invalid for role '${containmentLink.name}'; use -1 " +
                                "or omit position to append, or supply a value >= 0",
                            McpErrorCode.INVALID_REQUEST
                        )
                    }

                    detachNode(node, sourceModel)

                    // Add to new parent at the resolved index (childrenInRole snapshot is post-detach).
                    val childrenInRole = newParent.getChildren(containmentLink).toList()
                    when (val ix = resolveInsertIndex(containmentLink.name, position, childrenInRole.size)) {
                        is InsertIndex.At -> newParent.insertChildBefore(containmentLink, node, childrenInRole[ix.index])
                        else -> newParent.addChild(containmentLink, node)
                    }
                    // Persist the project target, or refresh imports for a console target (the console
                    // temp model is never saved to disk). For a cross-model project move also persist the
                    // source model; a within-console move keeps source and target in the same model.
                    val warn = persistOrRefreshConsole(targetModel, targetConsole)
                    if (targetConsole == null && sourceModel != null && sourceModel != targetModel) {
                        saveModelAndModule(sourceModel)
                    }
                    // Report the moved node's actual index so a caller that overshot `position`
                    // (now clamped to an append) can see where it landed.
                    okJson(nodeInfoJsonObjectWithIndex(node, mpsProject), warnings = listOfNotNull(warn))

                } else if (modelReference != null) {
                    val targetModel = when (val r = resolveEditableModel(mpsProject, modelReference)) {
                        is EditableModelResolution.Ok -> r.model
                        is EditableModelResolution.Err -> return@executeShortCommandOnEdt r.errJson
                    }
                    // Make-root is a project-model operation: resolveEditableModel already refuses a
                    // non-project (incl. console) target model; also refuse a console node, or a node from
                    // another open project, as the source — the console has a single ConsoleRoot and is
                    // not a place to promote arbitrary roots.
                    if (sourceModel != null && !isModuleInProject(repo, sourceModel)) {
                        return@executeShortCommandOnEdt crossProjectErr("Source node '$nodeReference'")
                    }

                    detachNode(node, sourceModel)

                    // Add as root
                    targetModel.addRootNode(node)
                    saveModelAndModule(targetModel)
                    if (sourceModel != null && sourceModel != targetModel) {
                        saveModelAndModule(sourceModel)
                    }
                    okJson(nodeInfoJson(node, mpsProject))
                } else {
                    errJson("Either 'newParentRef' or 'modelReference' must be provided for MOVE_NODE_TO_PARENT", McpErrorCode.INVALID_REQUEST)
                }
            }
        }
    }

    private fun detachNode(node: SNode, sourceModel: EditableSModel?) {
        val currentParent = node.parent
        if (currentParent != null) {
            currentParent.removeChild(node)
        } else {
            sourceModel?.removeRootNode(node)
        }
    }


}
