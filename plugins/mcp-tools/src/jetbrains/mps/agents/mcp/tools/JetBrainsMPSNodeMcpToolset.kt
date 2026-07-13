package jetbrains.mps.agents.mcp.tools

import com.google.gson.Gson
import com.google.gson.JsonObject
import com.google.gson.JsonPrimitive
import com.intellij.mcpserver.annotations.McpDescription
import com.intellij.mcpserver.annotations.McpTool
import jetbrains.mps.editor.runtime.HeadlessEditorComponent
import jetbrains.mps.errors.item.ModelReportItem
import jetbrains.mps.errors.item.NodeReportItem
import jetbrains.mps.progress.EmptyProgressMonitor
import jetbrains.mps.project.MPSProject
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

/**
 * Returns the closest match from [candidates] for [input] if one is reasonably similar,
 * or null otherwise. "Reasonably similar" means edit distance ≤ max(2, length/3) — large
 * enough to catch typos like 'target' → 'modules', strict enough that random keys do not
 * get a misleading suggestion.
 */
internal fun suggestParameterName(input: String, candidates: Iterable<String>): String? {
    val threshold = maxOf(2, input.length / 3)
    return candidates
        .map { it to editDistance(input.lowercase(), it.lowercase()) }
        .filter { it.second <= threshold }
        .minByOrNull { it.second }
        ?.first
}

private fun editDistance(a: String, b: String): Int {
    if (a == b) return 0
    if (a.isEmpty()) return b.length
    if (b.isEmpty()) return a.length
    var prev = IntArray(b.length + 1) { it }
    var curr = IntArray(b.length + 1)
    for (i in 1..a.length) {
        curr[0] = i
        for (j in 1..b.length) {
            val cost = if (a[i - 1] == b[j - 1]) 0 else 1
            curr[j] = minOf(curr[j - 1] + 1, prev[j] + 1, prev[j - 1] + cost)
        }
        val tmp = prev; prev = curr; curr = tmp
    }
    return prev[b.length]
}

// MCP tool methods use snake_case names because they are part of the public MCP protocol
// surface, and they are invoked via reflection by the MCP server framework, so static
// analysis flags them as "never used".
@Suppress("FunctionName", "unused")
class JetBrainsMPSNodeMcpToolset : AbstractNodeOps() {

    @McpTool
    @McpDescription("""
        Read-only node queries. FIND_INSTANCES: find nodes that are instances of a concept (`conceptRef`; optional `scope`
        all|editable|models|modules|roots with matching `models`/`modules`/`roots` (each a single reference or a JSON array),
        `propertyFilter` {"name","value"}, `exact`, `sampleOnly`:true for one example node). `all` and `editable` are rooted
        at the project selected by `projectPath`; explicit `models`/`modules`/`roots` may point to models, modules, or roots
        from another open MPS project and are queried read-only. FIND_USAGES: find nodes whose references point at the given
        node — incoming references, not instances (`nodeReference`; optional `scope` as above). GET_PARENT, GET_ROOT,
        GET_MODEL_FOR_NODE, NODE_INDEX, SIBLINGS, GET_CHILD_ROLE take `nodeReference`. Returns `{"ok":true,"data":{...}}`
        on success or `{"ok":false,"error":"..."}` on failure. See `mps-node-editing` and `mps-mcp-workflow` skills.
    """)
    suspend fun mps_mcp_query_nodes(
        @McpDescription("The operation to perform (FIND_INSTANCES, FIND_USAGES, GET_PARENT, GET_ROOT, GET_MODEL_FOR_NODE, NODE_INDEX, SIBLINGS, GET_CHILD_ROLE)") operation: String,
        @McpDescription("JSON string representing the parameters for the operation") parameters: String
    ): String {
        val op = resolveOperationOrNull<MPSQueryOperation>(operation)
            ?: return unknownOperation<MPSQueryOperation>(operation)
        return mps_mcp_query_nodes(op, parameters)
    }

    /**
     * Internal enum-typed entry point for [mps_mcp_query_nodes]; the String overload above is the
     * registered `@McpTool`, so an unrecognised `operation` is an INVALID_REQUEST error instead of
     * a crash in the framework's pre-call enum decode (see [resolveOperationOrNull]).
     */
    suspend fun mps_mcp_query_nodes(operation: MPSQueryOperation, parameters: String): String {
        return withMpsProject("Querying MPS nodes: $operation") { mpsProject ->
            val params = try {
                Gson().fromJson(parameters, JsonObject::class.java)
            } catch (e: Exception) {
                return@withMpsProject invalidJson("Invalid JSON parameters: ${e.message}")
            }

            when (operation) {
                MPSQueryOperation.GET_PARENT, MPSQueryOperation.GET_ROOT, MPSQueryOperation.GET_MODEL_FOR_NODE,
                MPSQueryOperation.NODE_INDEX, MPSQueryOperation.SIBLINGS, MPSQueryOperation.GET_CHILD_ROLE ->
                    opNodeInfoRead(mpsProject, operation, params)

                MPSQueryOperation.FIND_USAGES -> opFindUsages(mpsProject, params)
                MPSQueryOperation.FIND_INSTANCES -> opFindInstances(mpsProject, params)
            }
        }
    }

    @McpTool
    @McpDescription("""
        Structural node mutations and code generation: move a child within its role, move a node to a new parent or make it a root, make/rebuild models/modules/whole project, fix broken references. Parameters are a JSON object string. For MOVE_CHILD and MOVE_NODE_TO_PARENT, `position` is 0-based and `-1` moves to the end; a `position` at or beyond the role's child count is clamped to the end (not rejected) and a negative value other than -1 is rejected — the response's `data.index` reports the moved node's actual resulting index. MAKE parameters: {"modules":[<moduleRef>,...]} | {"models":[<modelRef>,...]} | {"wholeProject":true}, plus optional "rebuild":bool; node references are not accepted — resolve the node's module or model first. Returns `{"ok":true,"data":{...}}` on success or `{"ok":false,"error":"..."}` on failure. See `mps-node-editing` and `mps-mcp-workflow` skills.
    """)
    suspend fun mps_mcp_alter_nodes(
        @McpDescription("The operation to perform (MOVE_CHILD, MOVE_NODE_TO_PARENT, MAKE, FIX_REFERENCES)") operation: String,
        @McpDescription("JSON string representing the parameters for the operation") parameters: String
    ): String {
        val op = resolveOperationOrNull<MPSAlterOperation>(operation)
            ?: return unknownOperation<MPSAlterOperation>(operation)
        return mps_mcp_alter_nodes(op, parameters)
    }

    /**
     * Internal enum-typed entry point for [mps_mcp_alter_nodes]; the String overload above is the
     * registered `@McpTool` (see [resolveOperationOrNull] for the rationale).
     */
    suspend fun mps_mcp_alter_nodes(operation: MPSAlterOperation, parameters: String): String {
        return withMpsProject("Altering MPS nodes: $operation") { mpsProject ->
            val params = try {
                Gson().fromJson(parameters, JsonObject::class.java)
            } catch (e: Exception) {
                return@withMpsProject invalidJson("Invalid JSON parameters: ${e.message}")
            }

            when (operation) {
                MPSAlterOperation.MOVE_CHILD -> opMoveChild(params)
                MPSAlterOperation.MOVE_NODE_TO_PARENT -> opMoveNodeToParent(params)
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
        params: JsonObject
    ): String {
        val nodeReference = params.get("nodeReference")?.asString ?: return errJson("Parameter 'nodeReference' is missing")
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
                MPSQueryOperation.SIBLINGS -> opSiblings(node, mpsProject)
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

    private fun opSiblings(node: SNode, mpsProject: MPSProject): String {
        val parent = node.parent ?: return errJson("Node is a root node")
        val link = node.containmentLink ?: return errJson("Node does not have a containment role")
        if (!link.isMultiple) return errJson("Node is not in a multiple role")
        val siblings = parent.getChildren(link)
        val cache = ProjectMembershipCache(mpsProject)
        return finalizeResult("[" + siblings.joinToString(",") { nodeInfoJson(it, mpsProject, cache) } + "]")
    }

    private fun opGetChildRole(node: SNode, mpsProject: MPSProject): String {
        val link = node.containmentLink ?: return errJson("Node is a root node or not in a containment role")
        return okJson(containmentLinkInfoJsonObject(link, mpsProject.repository, currentProject = mpsProject))
    }

    private suspend fun opFindUsages(mpsProject: MPSProject, params: JsonObject): String {
        val nodeReference = params.get("nodeReference")?.asString ?: return errJson("Parameter 'nodeReference' is missing")
        val scopeParam = params.get("scope")?.asString ?: "editable"
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
                finalizeResult("[" + results.joinToString(",") { nodeInfoJson(it, mpsProject, cache) } + "]")
            }
        }
    }

    private suspend fun opMoveChild(params: JsonObject): String {
        val nodeReference = params.get("nodeReference")?.asString ?: return errJson("Parameter 'nodeReference' is missing")
        val childRole = params.get("childRole")?.asString ?: return errJson("Parameter 'childRole' is missing")
        val childNodeRef = params.get("childNodeRef")?.asString ?: return errJson("Parameter 'childNodeRef' is missing")
        val position = params.get("position")?.asInt ?: return errJson("Parameter 'position' is missing")
        return moveNodeChild(nodeReference, childRole, childNodeRef, position)
    }

    private suspend fun opMoveNodeToParent(params: JsonObject): String {
        val nodeReference = params.get("nodeReference")?.asString ?: return errJson("Parameter 'nodeReference' is missing")
        val newParentRef = params.get("newParentRef")?.asString
        val role = params.get("role")?.asString
        val position = if (params.has("position")) params.get("position").asInt else null
        val modelReference = params.get("modelReference")?.asString
        return moveNodeToParent(nodeReference, newParentRef, role, position, modelReference)
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

    private suspend fun opMake(mpsProject: MPSProject, params: JsonObject): String {
        val unknownKeys = params.keySet().filter { it !in MAKE_PARAMETER_KEYS }
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
        val rebuild = params.get("rebuild")?.asBoolean ?: false
        val wholeProject = params.get("wholeProject")?.asBoolean ?: false

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
        val nodeReference = params.get("nodeReference")?.asString ?: return errJson("Parameter 'nodeReference' is missing")
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

    suspend private fun showNodeAppearance(nodeReference: String, asHtml: Boolean = false
    ): String {
        return withMpsProject("Getting MPS node ${if (asHtml) "HTML" else "text"} representation") { mpsProject ->
            executeShortReadOnEdt(mpsProject) {
                val repo = mpsProject.repository
                val sNodeRef = resolveNodeReferencePreferringProject(mpsProject, nodeReference)
                val node = sNodeRef?.resolve(repo)
                    ?: return@executeShortReadOnEdt errJson("Node '$nodeReference' not found", McpErrorCode.NOT_FOUND)

                withHeadlessEditor(repo, node) { ctx ->
                    val component = ctx.editorComponent as HeadlessEditorComponent
                    val text = if (asHtml) {
                        component.rootCell.renderHtml().htmlText
                    } else {
                        component.rootCell.renderText().getText()
                    }
                    saveToTempFileResult(JsonPrimitive(text).toString())
                }
            }
        }
    }

    @McpTool
    @McpDescription(
        """
        Validates an MPS node (and its descendants) or an MPS model. Accepts either an SNodeReference or SModelReference. Returns `data:"no problems found"` when clean, or a path to a temp file containing the problem tree. `onlyNodesWithProblems=true` (default) yields a flat list of nodes with problems; `onlyNodesWithProblems=false` returns the full subtree with `problems` arrays attached to every level. Each problem may carry a `quickFixes` array (`id`, `description`, `autoApplicable`); apply one with `mps_mcp_apply_intention(nodeReference=<the node's reference>, intentionId=<id>)`. Set `autoApplyQuickFixes=true` to run every problem carrying exactly one auto-applicable fix within the given node's subtree (node/root branch only) before returning the final report; applied fixes' descriptions appear in `details.appliedQuickFixes`; fixes that threw during execution appear in `details.failedQuickFixes`. Note: applied fixes may write outside the target model; only the target model is saved automatically. Besides the standard structure/constraints/typesystem checkers, this also decodes the encoded feature ids on attribute nodes — `PropertyAttribute.propertyId` (used by `PropertyMacro`) and `LinkAttribute.linkId` (used by `ReferenceMacro`) — and flags a malformed, blank, or non-resolving id here instead of letting it surface only as an opaque generation-time error. See `mps-mcp-workflow/references/analysis-tools.md` for the output schema.
    """
    )
    suspend fun mps_mcp_check_root_node_problems(
        @McpDescription("Persistent form of SNodeReference or SModelReference") nodeReference: String,
        @McpDescription("If true, returns only nodes with problems in a list instead of a full tree (default = true)") onlyNodesWithProblems: Boolean = true,
        @McpDescription("If true, apply every problem carrying exactly one auto-applicable fix within the node's subtree (node/root branch only) before returning the final report (default = false)") autoApplyQuickFixes: Boolean = false
    ): String {
        return withMpsProject("Checking MPS problems") { mpsProject ->
            // Auto-apply mutates the model, so it needs a write command; the default (report-only)
            // mode keeps the read wrapper to avoid needless write locks.
            if (autoApplyQuickFixes) {
                executeShortCommandOnEdt(mpsProject) { checkRootNodeProblemsBody(mpsProject, nodeReference, onlyNodesWithProblems, applyFixes = true) }
            } else {
                executeShortReadOnEdt(mpsProject) { checkRootNodeProblemsBody(mpsProject, nodeReference, onlyNodesWithProblems, applyFixes = false) }
            }
        }
    }

    private fun checkRootNodeProblemsBody(
        mpsProject: MPSProject,
        nodeReference: String,
        onlyNodesWithProblems: Boolean,
        applyFixes: Boolean,
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
                saveToTempFileResult(json, details)
            }
        } else {
            // Try resolving as model reference
            val sModelRef = try {
                PersistenceFacade.getInstance().createModelReference(nodeReference)
            } catch (e: Exception) {
                rethrowIfCancellation(e)
                null
            }
            val model = sModelRef?.resolve(repo)
            return if (model != null) {
                val problems = mutableListOf<ModelReportItem>()
                ModelValidator(host, model).validate({ problems.add(it) }, monitor)

                val modelBranchWarnings = if (applyFixes) {
                    listOf("autoApplyQuickFixes applies only to node references; ignored for a model reference")
                } else {
                    emptyList()
                }
                if (problems.isEmpty()) {
                    okJson(JsonPrimitive("no problems found"), warnings = modelBranchWarnings)
                } else {
                    if (applyFixes) {
                        saveToTempFileResult(modelWithProblemsToJson(model, problems, mpsProject),
                            details = mapOf("warning" to modelBranchWarnings.first()))
                    } else {
                        saveToTempFileResult(modelWithProblemsToJson(model, problems, mpsProject))
                    }
                }
            } else {
                errJson("Reference '$nodeReference' resolved to neither node nor model", McpErrorCode.NOT_FOUND)
            }
        }
    }

    @McpTool
    @McpDescription(
        """
        Saves a JSON printout of the specified node to a temp file (path returned in `data`). `deep=true` inlines all descendants; `deep=false` (default) lists direct children's refs only. The saved envelope is consumable by every node-mutation tool (`mps_mcp_update_node`, `mps_mcp_update_root_node_from_json`, etc.). See `mps-mcp-workflow/references/analysis-tools.md` for the output schema and `mps-node-editing/references/json-format.md` for the matching blueprint shape.
        Alternatively, if HTML or PLAIN TEXT format is required, it saves the editor-projected representation of the specified node to a temp file (path returned in `data`).
    """
    )
    suspend fun mps_mcp_print_node(
        @McpDescription("Persistent form of SNodeReference") nodeReference: String,
        @McpDescription("Whether to return a JSON blueprint(default), HTML or PLAIN TEXT. Defaults to JSON.") format: String = "JSON",
        @McpDescription("Whether to perform a deep (true) or shallow (false) printout. Only relevant for JSON format. Defaults to false.") deep: Boolean = false
    ): String {
        val normalizedFormat = format.uppercase().trim()
        if (normalizedFormat == "HTML") return showNodeAppearance(nodeReference, asHtml = true)
        if (normalizedFormat == "PLAIN TEXT") return showNodeAppearance(nodeReference, asHtml = false)
        if (normalizedFormat != "JSON") return errJson("Invalid format '$format'. Allowed values: JSON, HTML, PLAIN TEXT", McpErrorCode.INVALID_REQUEST)
        return withMpsProject(if (deep) "Deep printing MPS node" else "Shallow printing MPS node") { mpsProject ->
            executeShortReadOnEdt(mpsProject) {
                val repo = mpsProject.repository
                val sNodeRef = resolveNodeReferencePreferringProject(mpsProject, nodeReference)
                    ?: return@executeShortReadOnEdt invalidReference("Invalid or unresolvable node reference: '$nodeReference'")
                val node = sNodeRef.resolve(repo)
                    ?: return@executeShortReadOnEdt errJson("Node '$nodeReference' not found", McpErrorCode.NOT_FOUND)
                saveToTempFileResult(nodeHierarchyToJson(node, deep, mpsProject))
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
          childJson: JSON blueprint as an inline string (max 4 KB) OR an absolute path to a file containing the JSON. For large blueprints prefer the file form to avoid MCP transport truncation. Multi-cardinality roles append by default; pass `position` (0-based) to insert at a specific index. `dryRun=true` validates without mutating.
          position: Multi-cardinality roles append by default; pass `position` (0-based) to insert at a specific index. A `position` at or beyond the current child count is clamped to an append (not rejected); a negative value other than -1 is rejected. Single-cardinality roles accept only null/-1/0.
          Returns the inserted node's info envelope (`data.parentReference` carries the parent ref, `data.index` the actual landing index — useful when an over-range `position` was clamped).

        SET × CHILD — Replace an existing child node with a new node described by a JSON blueprint. Deletes the child if `childJson = null`.
          childNodeRef: persistent ref of the child to replace.
          childJson: `null` deletes the child. JSON blueprint as an inline string (max 4 KB) OR an absolute path to a file containing the JSON. For large blueprints use the file form. The original child's position in its role is preserved. `dryRun=true` validates without mutating.
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
        @McpDescription("The operation to perform (ADD or SET)") operation: String,
        @McpDescription("The kind of element to operate on (CHILD, PROPERTY, REFERENCE)") kind: String,
        @McpDescription("Parent node ref for ADD CHILD") nodeReference: String? = null,
        @McpDescription("Containment role name for ADD CHILD") childRole: String? = null,
        @McpDescription("0-based insert index for ADD CHILD multi-cardinality roles; null/-1 = append. A value at or beyond the current child count is clamped to an append; a negative value other than -1 is rejected. Single-cardinality roles accept only null/-1/0.") position: Int? = null,
        @McpDescription("For ADD CHILD or SET CHILD: JSON blueprint as an inline string (max 4 KB) OR an absolute path to a file containing the JSON. Prefer the file form for blueprints larger than ~4 KB to avoid MCP transport truncation.") childJson: String? = null,
        @McpDescription("Ref of the child to replace or delete (SET CHILD)") childNodeRef: String? = null,
        @McpDescription("If true, validate without mutating (ADD CHILD, SET CHILD only). Default: false.") dryRun: Boolean = false,
        @McpDescription("Batch triplets [nodeRef, propertyName, value] for SET PROPERTY") properties: List<List<String?>>? = null,
        @McpDescription("Batch triplets [nodeRef, referenceRole, targetNodeRefOrName] for SET REFERENCE") references: List<List<String?>>? = null,
    ): String {
        val op = resolveOperationOrNull<NodeUpdateOperation>(operation)
            ?: return unknownOperation<NodeUpdateOperation>(operation)
        val k = resolveOperationOrNull<NodeUpdateKind>(kind)
            ?: return unknownOperation<NodeUpdateKind>(kind)
        return mps_mcp_update_node(op, k, nodeReference, childRole, position, childJson, childNodeRef, dryRun, properties, references)
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
    ): String {
        return when (kind) {
            NodeUpdateKind.CHILD -> when (operation) {
                NodeUpdateOperation.ADD -> {
                    val parentRef = nodeReference ?: return errJson("nodeReference is required for ADD CHILD")
                    val role = childRole ?: return errJson("childRole is required for ADD CHILD")
                    val json = childJson ?: return errJson("childJson is required for ADD CHILD")
                    update_node_child(parentRef, role, json, null, position, dryRun)
                }
                NodeUpdateOperation.SET -> {
                    val childRef = childNodeRef ?: return errJson("childNodeRef is required for SET CHILD")
                    update_node_child(null, null, childJson, childRef, null, dryRun)
                }
            }
            NodeUpdateKind.PROPERTY -> when (operation) {
                NodeUpdateOperation.ADD -> errJson("ADD is not a valid operation for PROPERTY")
                NodeUpdateOperation.SET -> {
                    val triplets = properties ?: return errJson("properties is required for SET PROPERTY")
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
                            errJson("Invalid property triplet: expected at least 3 elements")
                        }
                        results.add(itemResult)
                        if (!itemResult.startsWith("{\"ok\":true")) allSucceeded = false
                    }
                    val array = "[" + results.joinToString(",") + "]"
                    "{" + "\"ok\":$allSucceeded,\"data\":" + array + "}"
                }
            }
            NodeUpdateKind.REFERENCE -> when (operation) {
                NodeUpdateOperation.ADD -> errJson("ADD is not a valid operation for REFERENCE")
                NodeUpdateOperation.SET -> {
                    val triplets = references ?: return errJson("references is required for SET REFERENCE")
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
                            errJson("Invalid reference triplet: expected at least 3 elements")
                        }
                        results.add(itemResult)
                        if (!itemResult.startsWith("{\"ok\":true")) allSucceeded = false
                    }
                    val array = "[" + results.joinToString(",") + "]"
                    "{" + "\"ok\":$allSucceeded,\"data\":" + array + "}"
                }
            }
        }
    }

    private suspend fun update_node_child(
        nodeReference: String?,
        childRole: String?,
        childJson: String?,
        childToReplaceOrDeleteRef: String?,
        position: Int?,
        dryRun: Boolean = false
    ): String = withMpsProject("Updating MPS node child") { mpsProject ->
        val actualJson = readNodeJsonOrFile(childJson, dryRun)
        update_node_child(mpsProject, nodeReference, childRole, actualJson, childToReplaceOrDeleteRef, position, dryRun)
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
                    return@executeShortCommandOnEdt errJson("Source model is not editable", McpErrorCode.NOT_EDITABLE)
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
