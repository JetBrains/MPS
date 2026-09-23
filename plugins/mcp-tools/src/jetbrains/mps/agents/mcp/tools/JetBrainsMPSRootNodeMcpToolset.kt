package jetbrains.mps.agents.mcp.tools

import jetbrains.mps.agents.mcp.tools.common.*
import jetbrains.mps.agents.mcp.tools.logging.*

import com.google.gson.JsonArray
import com.google.gson.JsonObject
import com.intellij.mcpserver.annotations.McpDescription
import com.intellij.mcpserver.annotations.McpTool
import com.intellij.mcpserver.project
import com.intellij.mcpserver.reportToolActivity
import com.intellij.openapi.fileEditor.FileEditorManager
import com.intellij.openapi.project.Project
import jetbrains.mps.ide.editor.MPSEditorUtil
import jetbrains.mps.ide.editor.MPSFileNodeEditor
import jetbrains.mps.ide.project.ProjectHelper
import jetbrains.mps.nodeEditor.InspectorTool
import jetbrains.mps.nodefs.MPSNodeVirtualFile
import jetbrains.mps.openapi.navigation.EditorNavigator
import jetbrains.mps.smodel.SNodeUtil
import jetbrains.mps.smodel.action.SNodeFactoryOperations
import jetbrains.mps.smodel.constraints.ModelConstraints
import kotlinx.coroutines.currentCoroutineContext

// MCP tool methods use snake_case names because they are part of the public MCP protocol
// surface, and they are invoked via reflection by the MCP server framework, so static
// analysis flags them as "never used".
@Suppress("FunctionName", "unused")
class JetBrainsMPSRootNodeMcpToolset : AbstractNodeOps() {

    @McpTool
    @McpDescription("""
        Opens the specified node in the MPS editor. If the reference points to a non-root node, MPS opens the editor of its containing root and selects/focuses the target node.
        Returns a JSON object with 'ok':true and 'data':{"present":true} on success, or 'ok':false and 'error':"..." on failure.
    """)
    suspend fun mps_mcp_open_node(
        @McpDescription("Persistent form of SNodeReference; may point to any node — non-root references open the containing root and focus the target.") nodeReference: String
    ): String = withMpsProject("Opening MPS node in editor") { mpsProject ->
        // resolveNodeReferencePreferringProject resolves the reference against the model
        // (SNodeReference.resolve), so it must run inside a read action — otherwise MPS throws
        // IllegalModelAccessError ("You can read model only inside read actions"). It handles
        // invalid persistent refs gracefully (null instead of IllegalArgumentException) and
        // additionally accepts the "ModelName.RootName" form.
        val sNodeRef = executeShortReadOnEdt(mpsProject) {
            resolveNodeReferencePreferringProject(mpsProject, nodeReference)
        } ?: return@withMpsProject invalidReference("Invalid or unresolvable node reference: '$nodeReference'")
        // EditorNavigator.open() dispatches to the EDT internally via runReadInEDT, so calling
        // it from a worker thread is safe; the builder setters are pure.
        EditorNavigator(mpsProject).shallFocus(true).shallSelect(true).open(sNodeRef)
        okJson(jsonObject {
            addProperty("present", true)
        })
    }

    @McpTool
    @McpDescription("""
        Returns a node currently focused in the MPS UI as a node info envelope (see `mps-mcp-workflow/references/reference-formats.md`). `source` selects the editor: `editor` (default) returns the root node open in the active MPS file editor; `console` returns the current (unexecuted) command node in the MPS Console input editor (requires the Console plugin; errors if the input is empty); `inspector` returns the node currently being inspected in the Inspector tool window (errors if the Inspector is not open or has no node). Use this to anchor on the user's focus before editing. The returned `reference` can be passed to `mps_mcp_print_node` to obtain the node's JSON blueprint or its notational (PLAIN TEXT / HTML) printout — but a console command's reference is only valid until the next console interaction (execute / clear / history navigation), so print it promptly and do not cache it.
        For `source='editor'` and `source='inspector'` the envelope additionally carries the caret and selection state, always as skeleton objects so their emptiness is explicit. `selectedNodeReference` is the currently selected cell's node (present for an ordinary caret too, NOT only a whole-node selection); `bigCellSelected` (boolean) tells whether the current selection is a genuine whole-node ("big") cell. `caret` = the cursor's cell as a cell descriptor: `{present, cellId, cellType, nodeReference, nodeConcept, nodeName, nodeConceptQualifiedName, nodeConceptReference, contextualNodeReference, contextualNodeConcept, contextualNodeName, contextualNodeConceptQualifiedName, contextualNodeConceptReference, cellText, caretPosition, selectionStart, selectionEnd, isBig, editable, referenceCell, errorState, selectable, selected, feature, messages}` (empty strings / -1 / false / present=false when the cursor is outside any node or holds no cell). The `node*` fields describe the cell's semantic node (used for selection); the `contextualNode*` fields describe the node whose projection built the cell — they differ inside a reference cell, where the semantic node is the referencing node and the contextual node is the referenced target. `feature` = the concept feature the cell projects: `{kind (property|reference|child|""), name, declaredIn, declaredInQualifiedName, declaredInConceptReference, value, valueNodeReference, targetReference, targetConcept, targetConceptQualifiedName, targetConceptReference, navigational}` — for a property cell `value` is the property's display value (enums resolved to the literal name); for a reference role `value` is the target's presentation, `targetReference` its persistent reference (or the raw target reference when unresolved) and `targetConcept*` its concept; `valueNodeReference` is the node the value was read from (the contextual target inside a reference cell); `navigational=true` marks a reference the cell only navigates to but does NOT edit (e.g. a keyword like `this` — distinguished from a genuine reference cell, which has `referenceCell=true`). `selectable`/`selected` are the cell's interaction flags (whether it can be and currently is selected); `messages` is a compact array of the editor messages on the cell, each `{status (error|warning|info), message, priority}`, capped per cell and `[]` when none. `selection` = the selected region — `{present, kind (nodes|text|""), direction (LEFT|RIGHT|NONE|""), nodeCount, nodesReturned, nodesTruncated, nodes[{reference, concept, name}], cellCount, cellsReturned, cellsTruncated, cells[<cell descriptor>], text}` (present=true only for a genuine region: a character range inside one label cell, or one/more whole cells/nodes selected; otherwise empty with nodes=[]/cells=[]). `nodeCount`/`cellCount` are the true totals; the `nodes`/`cells` arrays are capped (default 20) with `nodesReturned`/`cellsReturned` the array sizes and `nodesTruncated`/`cellsTruncated` set when the arrays were capped.
    """)
    suspend fun mps_mcp_get_current_editor_root_node(
        @McpDescription("Which editor to read: 'editor' (default) for the active MPS file editor's root node, 'console' for the current command in the MPS Console input editor, or 'inspector' for the node currently inspected in the Inspector tool window.") source: String = "editor"
    ): String {
        val normalizedSource = source.trim().lowercase()
        val activity = when (normalizedSource) {
            "console" -> "Getting current MPS console command"
            "inspector" -> "Getting current Inspector node"
            else -> "Getting current editor root node"
        }
        currentCoroutineContext().reportToolActivity(activity)
        val project = currentCoroutineContext().project

        return McpCallOutcomes.record(
            try {
                when (normalizedSource) {
                    "editor" -> currentFileEditorRootNode(project)
                    "console" -> currentConsoleCommandNode(project)
                    "inspector" -> currentInspectorNode(project)
                    else -> errJson(
                        "Invalid source '$source'. Allowed values: 'editor' (default), 'console', 'inspector'.",
                        McpErrorCode.INVALID_REQUEST
                    )
                }
            } catch (e: Exception) {
                toolFailure(activity, e)
            }
        )
    }

    /**
     * The node currently being inspected in the Inspector tool window, as a node info envelope.
     * Carries the same caret/selection state as `source='editor'`. Errors when the Inspector
     * tool window has never been opened, or when the inspector is open but has no node selected.
     * Reads Inspector state from the EDT under a model read action.
     */
    private suspend fun currentInspectorNode(project: Project): String {
        var reply: String = errJson(
            "Getting current Inspector node did not complete",
            McpErrorCode.INTERNAL_ERROR
        )
        withModalTimeoutOnEdt {
            val mpsProject = ProjectHelper.fromIdeaProject(project) ?: run {
                reply = errJson("No MPS project available")
                return@withModalTimeoutOnEdt
            }
            val inspectorTool = InspectorTool.getInstance(mpsProject) ?: run {
                reply = errJson("The Inspector tool window is not currently available")
                return@withModalTimeoutOnEdt
            }
            mpsProject.repository.modelAccess.runReadAction {
                val editorComponent = inspectorTool.getInspector()
                val node = editorComponent?.editedNode
                if (node == null) {
                    reply = errJson("No node is currently being inspected")
                } else {
                    val info = nodeInfoJsonObject(node, mpsProject)
                    addEditorState(info, editorComponent)
                    reply = okJson(info.toString())
                }
            }
        }
        return reply
    }

    /**
     * The root node open in the active MPS file editor. In addition to the standard node info it carries the
     * editor's caret/selection state: `selectedNodeReference` (the currently selected cell's node — present
     * for an ordinary caret too, not only a whole-node selection), `bigCellSelected` (whether the current
     * top-level selection is a genuine whole-node/"big" cell), and the always-present `caret` and `selection`
     * skeleton objects (see [caretInfoJsonObject] / [selectionInfoJsonObject]) so an agent can read the
     * cursor's node (both the semantic and the contextual node, with qualified/persistent concept identity),
     * the property/reference it edits, the cell's `selectable`/`selected` interaction flags and any editor
     * `messages` on the cell, plus the (bounded, count-reported) nodes/cells in a selection region, and
     * detect emptiness explicitly.
     */
    private suspend fun currentFileEditorRootNode(project: Project): String {
        // Default sentinel: if the EDT block exits abnormally without assigning `reply`,
        // the caller still gets a structured error instead of a NullPointerException.
        var reply: String = errJson(
            "Getting current editor root node did not complete",
            McpErrorCode.INTERNAL_ERROR
        )
        // withModalTimeoutOnEdt: reading the active editor/model must not run under an arbitrary
        // modal dialog, and a modal-blocked dispatch must surface as a clear McpModalBlockedException
        // asking the user to close the dialog, instead of silently hanging until the outer MCP
        // transport timeout fires with a generic, unhelpful message.
        withModalTimeoutOnEdt {
            val editorManager = FileEditorManager.getInstance(project)
            val selectedEditors = editorManager.selectedEditors
            val mpsEditor = selectedEditors.filterIsInstance<MPSFileNodeEditor>().firstOrNull()
            if (mpsEditor == null) {
                reply = errJson("No MPS editor is currently open")
                return@withModalTimeoutOnEdt
            }

            val nvf = mpsEditor.file as? MPSNodeVirtualFile
            if (nvf == null) {
                reply = errJson("Could not detect the current root node")
                return@withModalTimeoutOnEdt
            }

            val mpsProject = ProjectHelper.fromIdeaProject(project) ?: run {
                reply = errJson("No MPS project available")
                return@withModalTimeoutOnEdt
            }

            mpsProject.repository.modelAccess.runReadAction {
                var node = MPSEditorUtil.getCurrentEditedNodeFromTabbedEditor(project, nvf)
                if (node == null) {
                    node = nvf.node
                }

                if (node == null) {
                    reply = errJson("Could not detect the current root node")
                } else {
                    // Build the standard node-info envelope and augment it with the editor's caret/selection
                    // state via the shared, testable addEditorState helper (also exercised headlessly by the
                    // integration-test probe), then wrap it inline.
                    val info = nodeInfoJsonObject(node, mpsProject)
                    val editorComponent = mpsEditor.nodeEditor?.currentEditorComponent
                    addEditorState(info, editorComponent)
                    reply = okJson(info.toString())
                }
            }
        }
        return reply
    }

    /**
     * The current (unexecuted) command node in the MPS Console input editor — `ConsoleRoot.commandHolder.command`
     * — as a node info envelope. Its `reference` resolves through the project repository (the console's temporary
     * model is registered there), so callers can feed it to `mps_mcp_print_node`; the reference is only valid until
     * the next console interaction, though. Errors when the Console plugin is unavailable, no editable tab exists,
     * or the input is empty. Reads Swing tab state, so it runs on the EDT under a model read action.
     */
    private suspend fun currentConsoleCommandNode(project: Project): String {
        var reply: String = errJson(
            "Getting current MPS console command did not complete",
            McpErrorCode.INTERNAL_ERROR
        )
        // withModalTimeoutOnEdt: see currentFileEditorRootNode above for the rationale — a
        // modal-blocked dispatch surfaces as a clear McpModalBlockedException instead of a silent
        // hang until the outer MCP transport timeout.
        withModalTimeoutOnEdt {
            val consoleModel = when (val r = resolveConsoleEditableTab(project)) {
                is ConsoleResolution.Ok -> r.consoleModel
                is ConsoleResolution.Err -> {
                    reply = r.errJson
                    return@withModalTimeoutOnEdt
                }
            }
            val mpsProject = ProjectHelper.fromIdeaProject(project) ?: run {
                reply = errJson("No MPS project available", McpErrorCode.NOT_FOUND)
                return@withModalTimeoutOnEdt
            }
            mpsProject.repository.modelAccess.runReadAction {
                val command = currentConsoleCommand(consoleModel)
                reply = if (command == null) {
                    errJson("The MPS Console input editor is empty (no current command).", McpErrorCode.NOT_FOUND)
                } else {
                    okJson(nodeInfoJsonObject(command, mpsProject))
                }
            }
        }
        return reply
    }

    @McpTool
    @McpDescription("""
        Searches project models for root nodes whose name matches any of the given names. Finds roots by name only — to find nodes by concept use `mps_mcp_query_nodes` FIND_INSTANCES. `names` accepts a single name or a JSON array of names. `scope` (default `editable`): `editable` searches this project's own editable modules; `all` additionally includes the read-only/library and imported modules in the project's visible dependency closure, including imported modules from other open MPS projects; `models` restricts the search to the references in `models`; `modules` restricts it to the references in `modules`. Explicit `models`/`modules` references may point to another open MPS project and are queried read-only. Each accepts one bare reference or a JSON array (a real array or the array written as a string); the decoded list must be nonempty and every reference must resolve, otherwise the whole search returns INVALID_REQUEST. The `roots` scope of FIND_USAGES/FIND_INSTANCES is not supported here. Returns a JSON array of node info inline, or a path to a temp file when the payload is large.
    """)
    suspend fun mps_mcp_search_root_node_by_name(
        @McpDescription("The name(s) of the root node(s) to search for. Either a single name string or a JSON array: [\"Name1\", \"Name2\"] (a real array or the array written as a string)") names: JsonOrText,
        @McpDescription("Search scope: 'editable' (default) for this project's editable modules, 'all' for this project's visible dependencies, 'models' (requires 'models'), or 'modules' (requires 'modules'). Explicit model/module references may point to another open MPS project and are queried read-only. 'roots' is not supported here.") scope: String = "editable",
        @McpDescription("Model references, required when scope is 'models'. One bare reference or a nonempty JSON array (a real array or the array written as a string); every reference must resolve.") models: JsonOrText? = null,
        @McpDescription("Module references, required when scope is 'modules'. One bare reference or a nonempty JSON array (a real array or the array written as a string); every reference must resolve.") modules: JsonOrText? = null
    ): String {
        return withMpsProject("Searching for MPS root node by name") { mpsProject ->
            // Guard before the shared resolver: buildSearchScope does support 'roots', but this
            // tool exposes no 'roots' parameter, so letting it through would fail with the
            // misleading "Parameter 'roots' is missing" instead of the documented contract.
            if (scope == "roots") {
                return@withMpsProject errJson(
                    "Scope 'roots' is not supported by mps_mcp_search_root_node_by_name; " +
                            "use 'all', 'editable', 'models', or 'modules'. To search within specific " +
                            "roots, use mps_mcp_query_nodes (FIND_INSTANCES/FIND_USAGES) with scope 'roots'.",
                    McpErrorCode.INVALID_REQUEST,
                )
            }
            // A blank `names` used to answer `ok:true` with an empty array, which reads as "no such
            // root" rather than "you did not say what to look for" — the same silent-drop the
            // `searchTexts` guard of mps_mcp_search_concepts removes. Named rejection instead, with
            // the retry line; no alias parameter is added (a top-level alias costs schema bytes on
            // every turn).
            val nameSet: Set<String> = parseStringOrJsonArray(names).filter { it.isNotBlank() }.toSet()
            if (nameSet.isEmpty()) {
                return@withMpsProject errJson(
                    "names is required: provide a single root-node name or a JSON array of names. " +
                            "Retry with names set to the value you passed as name/q/searchTexts.",
                    McpErrorCode.INVALID_REQUEST,
                )
            }

            // Reuse the exact scope-resolution code that backs FIND_USAGES so the two tools agree
            // on what 'editable'/'all'/'models'/'modules' mean. 'models'/'modules' are passed
            // through a JsonObject because that is the shape buildSearchScope consumes.
            val scopeParams = JsonObject().apply {
                parseScopeRefArray(models)?.let { add("models", it) }
                parseScopeRefArray(modules)?.let { add("modules", it) }
            }

            // Walk on a background dispatcher: the scope may span the whole repository, and
            // iterating every model × root on the EDT would freeze the UI for seconds on
            // realistically-sized projects.
            executeBackgroundRead(mpsProject) {
                val searchScope = when (val r = buildSearchScope(mpsProject, scope, scopeParams)) {
                    is SearchScopeResolution.Ok -> r.scope
                    is SearchScopeResolution.Err -> return@executeBackgroundRead r.errJson
                }
                val results = mutableListOf<String>()
                val cache = ProjectMembershipCache(mpsProject)
                for (model in searchScope.models) {
                    for (root in model.rootNodes) {
                        if (root.name in nameSet) {
                            results.add(nodeInfoJson(root, mpsProject, cache))
                        }
                    }
                }
                finalizeResult("[" + results.joinToString(",") + "]")
            }
        }
    }

    // Parses a 'models'/'modules' scope parameter into the JsonArray shape buildSearchScope
    // expects. Accepts a JSON array, a JSON-encoded string, or a bare reference string (the
    // latter is common because persistent module/model references are not valid bare JSON).
    private fun parseScopeRefArray(raw: JsonOrText?): JsonArray? {
        val values = parseNullableStringOrJsonArray(raw) ?: return null
        return JsonArray().apply { values.forEach { add(it) } }
    }

    @McpTool
    @McpDescription("""
        Bulk-creates one or more MPS root nodes from a JSON blueprint (a single object or a top-level array; arrays attach atomically — a failure inserts no roots at all. Node-factory side effects are the exception: a concept's factory runs while its node is being built, so anything it wrote to the model or module — a used language, a model import, a module dependency, a language-version bump — persists even when the batch then fails. Re-read that state rather than assuming a failed call changed nothing). Returns the new node's info envelope, or an array of envelopes when the input was an array (`responseDetail="full"`). From 10 roots up the response defaults to `responseDetail="summary"` — `{inserted:N, roots:[{name, reference, concept}], fixReferences:{fixed, repointed, stillBroken}}`, without the per-root `conceptDoc`/`conceptReference`/model/module fields — because the full form grew larger than the blueprint it answers; pass `responseDetail="full"` to force the envelopes, or `"summary"` to get the compact form for a smaller insert. Two blueprint values fail silently rather than erroring: a reference role given a `c:` concept ref (instead of an `r:` node ref or a plain name) yields an unresolved reference, and an encoded id inside a property value (e.g. a `PropertyMacro.propertyId`) is not validated — both surface only via `mps_mcp_check_root_node_problems`. See `mps-node-editing` SKILL (File-Path Semantics, `references/json-format.md`) and `mps-mcp-workflow/references/bulk-creation.md` for the array contract and large-input strategies.
    """)
    suspend fun mps_mcp_insert_root_node_from_json(
        @McpDescription("Target model: a persistent model reference (preferred), or the model's long/short name resolved in the project selected by projectPath.") modelReference: String,
        @McpDescription("JSON blueprint, single object or top-level array (max 4KB), sent either as real JSON or as its string form, OR an absolute path to a TEMPORARY file (inside the system temp directory) containing it. See `mps-node-editing` for the format and file-input semantics.") json: JsonOrText,
        @McpDescription("Optional: if true, only validate JSON and concept-role assignability without mutating the model. Standard validation warnings (such as dynamic-reference creation details) are returned in the envelope's 'warnings' slot. Default: false.") dryRun: Boolean = false,
        @McpDescription("Optional: `summary` for `{inserted, roots:[{name, reference, concept}], fixReferences}`, `full` for one complete node-info envelope per inserted root. Defaults to `summary` from 10 roots up and to `full` below that.") responseDetail: String? = null
    ): String {
        return withMpsProject("Inserting MPS root node from JSON") { mpsProject ->
            val actualJson = readNodeJsonOrFile(json.text, dryRun)
                ?: return@withMpsProject invalidJson("JSON input is null or empty")

            val jsonElement = try {
                parseJsonElement(actualJson)
            } catch (e: McpInvalidRequestException) {
                return@withMpsProject invalidJson(e.message)
            }
            val jsonObjects: List<JsonObject> = when {
                jsonElement.isJsonArray -> jsonElement.asJsonArray.mapIndexed { i, elem ->
                    if (!elem.isJsonObject) return@withMpsProject errJson("Array element [$i] is not a JSON object", McpErrorCode.INVALID_JSON)
                    elem.asJsonObject
                }
                jsonElement.isJsonObject -> listOf(jsonElement.asJsonObject)
                else -> return@withMpsProject errJson("Expected a JSON object or array, got ${jsonElement.javaClass.simpleName}", McpErrorCode.INVALID_JSON)
            }
            val summarize = when (val r = resolveResponseDetail(responseDetail, jsonObjects.size)) {
                is ResponseDetailResolution.Ok -> r.summary
                is ResponseDetailResolution.Err -> return@withMpsProject r.errJson
            }

            executeShortCommandOnEdt(mpsProject) {
                val model = when (val r = resolveEditableModel(mpsProject, modelReference)) {
                    is EditableModelResolution.Ok -> r.model
                    is EditableModelResolution.Err -> return@executeShortCommandOnEdt r.errJson
                }

                // Two-pass: validate-then-attach, so a late failure can't leave earlier roots committed.
                val preparedNodes = mutableListOf<org.jetbrains.mps.openapi.model.SNode>()
                // Collected on both paths: a real insert is exactly where a node-factory failure
                // matters, since the half-initialized node is the one that gets committed.
                val batchWarnings = mutableListOf<String>()
                for ((index, jsonObject) in jsonObjects.withIndex()) {
                    val indexLabel = if (jsonObjects.size > 1) " [$index]" else ""
                    when (val r = resolveRootableConcept(
                        mpsProject,
                        conceptName = jsonObject.get("concept")?.asString,
                        conceptReference = jsonObject.get("conceptReference")?.asString,
                        label = indexLabel
                    )) {
                        is RootableConceptResolution.Ok -> {} // validated
                        is RootableConceptResolution.Err -> return@executeShortCommandOnEdt r.errJson
                    }

                    val newNode = try {
                        instantiateNode(jsonObject, model, dryRun, warnings = batchWarnings, mpsProject = mpsProject)
                    } catch (e: Exception) {
                        return@executeShortCommandOnEdt errJson("Failed to instantiate node$indexLabel from JSON: ${e.message}", McpErrorCode.INVALID_REQUEST, warnings = batchWarnings)
                    }
                    if (newNode == null) {
                        return@executeShortCommandOnEdt errJson("Failed to instantiate node$indexLabel from JSON", McpErrorCode.INVALID_REQUEST, warnings = batchWarnings)
                    }
                    preparedNodes.add(newNode)
                }

                val nodeInfos = mutableListOf<JsonObject>()
                val fixResults = mutableListOf<FixReferencesResult>()
                if (!dryRun) {
                    // Two-pass for batched inserts: attach every root first, then run
                    // performFixReferences. The fix-references step uses ScopeResolver, which
                    // only sees roots already present in the model. Running it per root inside
                    // the attach loop reports "stillBroken" for forward references between
                    // siblings in the same batch, even though the references themselves resolve
                    // lazily once the target root lands. The two-pass ordering makes the counts
                    // match the observable post-batch state.
                    for (newNode in preparedNodes) {
                        model.addRootNode(newNode)
                    }
                    for (newNode in preparedNodes) {
                        val fixResult = performFixReferences(mpsProject, newNode)
                        fixResults.add(fixResult)
                        if (!summarize) {
                            nodeInfos.add(withFixReferencesInfo(nodeInfoJsonObject(newNode, mpsProject), fixResult))
                        }
                    }
                }

                if (dryRun) {
                    okJson(jsonObject {
                        addProperty("dryRun", true)
                        addProperty("message", "Dry run successful for root node insertion")
                    }, warnings = batchWarnings)
                } else {
                    saveModelAndModule(model)
                    when {
                        summarize -> okJson(jsonObject {
                            addProperty("inserted", preparedNodes.size)
                            add("roots", JsonArray().apply { preparedNodes.forEach { add(createdNodeSummaryJsonObject(it)) } })
                            add("fixReferences", aggregateFixReferencesJsonObject(fixResults))
                        }, warnings = batchWarnings)
                        jsonObjects.size == 1 -> okJson(nodeInfos.first(), warnings = batchWarnings)
                        else -> okJson(JsonArray().apply { nodeInfos.forEach { add(it) } }, warnings = batchWarnings)
                    }
                }
            }
        }
    }

    @McpTool
    @McpDescription("""
        Creates a new root node in the specified model.
        Returns a JSON object with 'ok':true and 'data':{ name, concept, conceptReference, reference, parentReference, rootReference, modelReference, moduleReference, virtualFolder, isRoot, present:true } on success, or 'ok':false and 'error':"..." on failure.
    """)
    suspend fun mps_mcp_create_root_node(
        @McpDescription("Target model: a persistent model reference (preferred), or the model's long/short name resolved in the project selected by projectPath.") modelReference: String,
        @McpDescription("Fully qualified concept name or name") concept: String,
        @McpDescription("Optional: Persistent form of SConcept (c:...) or fully qualified concept name") conceptReference: String? = null,
        @McpDescription("Name for the new root node") name: String
    ): String {
        return withMpsProject("Creating MPS root node") { mpsProject ->
            executeShortCommandOnEdt(mpsProject) {
                val model = when (val r = resolveEditableModel(mpsProject, modelReference)) {
                    is EditableModelResolution.Ok -> r.model
                    is EditableModelResolution.Err -> return@executeShortCommandOnEdt r.errJson
                }
                val sConcept = when (val r = resolveRootableConcept(
                    mpsProject,
                    conceptName = concept,
                    conceptReference = conceptReference
                )) {
                    is RootableConceptResolution.Ok -> r.concept
                    is RootableConceptResolution.Err -> return@executeShortCommandOnEdt r.errJson
                }
                val newNode = SNodeFactoryOperations.createNewRootNode(model, sConcept, null)
                val nameProperty = SNodeUtil.property_INamedConcept_name
                if (newNode.concept.properties.contains(nameProperty)) {
                    newNode.setProperty(nameProperty, name)
                }
                // Initialize compulsory references with the first scope-available candidate
                // as a placeholder. We deliberately do NOT call performFixReferences here:
                // it would run ScopeResolver over every reference and re-resolve by name,
                // which can overwrite the placeholder with a different node whenever the
                // name is ambiguous in scope or when getAvailableElements() and
                // Scope.resolve(name) disagree on ordering. Callers that want fully resolved
                // references should use mps_mcp_insert_root_node_from_json / set_node_references
                // / update_root_node_from_json, all of which feed real targets through
                // applyReferenceUpdate and run performFixReferences appropriately.
                val compulsoryRefs = sConcept.referenceLinks.filter { !it.isOptional }
                if (compulsoryRefs.isNotEmpty()) {
                    for (link in compulsoryRefs) {
                        val scope = ModelConstraints.getReferenceDescriptor(newNode, link).scope
                        val first = scope.getAvailableElements(null).firstOrNull()
                        if (first != null) {
                            newNode.setReferenceTarget(link, first)
                        }
                    }
                }

                saveModelAndModule(model)
                okJson(nodeInfoJson(newNode, mpsProject))
            }
        }
    }

    @McpTool
    @McpDescription("""
        Updates or deletes an MPS root node from a JSON blueprint. The root node's persistent ID is preserved; its properties, references, and children are re-set to match the blueprint. The `name` property is included in the rewrite, so a different `name` in the blueprint renames the root (the ID is unchanged); omit `name` to keep the current one. This is a **full-root rewrite** — for partial updates prefer surgical tools if `mps_mcp_update_node`. See `mps-node-editing` SKILL (File-Path Semantics, `references/json-format.md`).
    """)
    suspend fun mps_mcp_update_root_node_from_json(
        @McpDescription("Persistent form of SNodeReference") nodeReference: String,
        @McpDescription("JSON blueprint of the root (max 4KB), sent either as real JSON or as its string form, OR an absolute path to a TEMPORARY file (inside the system temp directory) file containing it. Ignored for DELETE. See `mps-node-editing` for the format and file-input semantics.") json: JsonOrText = JsonOrText.EMPTY,
        @McpDescription("Optional, ignored for DELETE - if true, only validate JSON and concept-role assignability without mutating the node. Standard validation warnings (such as dynamic-reference creation details) are returned in the envelope's 'warnings' slot. Default: false.") dryRun: Boolean = false,
        @McpDescription("Operation to perform: UPDATE or DELETE") operation: String = "UPDATE"
    ): String {
        val op = resolveOperationOrNull<RootNodeOperation>(operation)
            ?: return unknownOperation<RootNodeOperation>(operation)
        return mps_mcp_update_root_node_from_json(nodeReference, json.text, dryRun, op)
    }

    /** Internal enum-typed entry point for [mps_mcp_update_root_node_from_json]; see [resolveOperationOrNull]. */
    suspend fun mps_mcp_update_root_node_from_json(
        nodeReference: String,
        json: String = "",
        dryRun: Boolean = false,
        operation: RootNodeOperation,
    ): String = when (operation) {
        RootNodeOperation.UPDATE -> withMpsProject("Updating MPS root node from JSON") { mpsProject ->
            val actualJson = readNodeJsonOrFile(json, dryRun)
                ?: return@withMpsProject invalidJson("JSON input is null or empty")
            executeShortCommandOnEdt(mpsProject) {
                val (node, model) = when (val r = resolveEditableNodeAndModel(mpsProject, nodeReference)) {
                    is EditableNodeResolution.Ok -> r.node to r.model
                    is EditableNodeResolution.Err -> return@executeShortCommandOnEdt r.errJson
                }

                if (node.parent != null) {
                    return@executeShortCommandOnEdt errJson(
                        "Node '$nodeReference' is not a root node; this tool operates on root nodes only",
                        McpErrorCode.INVALID_REQUEST
                    )
                }

                val elem = try {
                    parseJsonElement(actualJson)
                } catch (e: McpInvalidRequestException) {
                    return@executeShortCommandOnEdt invalidJson(e.message)
                }
                val jsonObject = when {
                    elem.isJsonObject -> elem.asJsonObject
                    elem.isJsonArray -> {
                        val arr = elem.asJsonArray
                        if (arr.size() == 1 && arr[0].isJsonObject) arr[0].asJsonObject
                        else {
                            return@executeShortCommandOnEdt errJson("JSON array with ${arr.size()} elements is not valid for a node update; provide a single JSON object", McpErrorCode.INVALID_JSON)
                        }
                    }
                    else -> {
                        return@executeShortCommandOnEdt errJson("Expected a JSON object, got ${elem.javaClass.simpleName}", McpErrorCode.INVALID_JSON)
                    }
                }

                // Collected on both paths so a node-factory failure in a staged child is reported
                // for a real update too, not only for a dry run.
                val updateWarnings = mutableListOf<String>()
                updateNodeFromBlueprint(node, jsonObject, dryRun, warnings = updateWarnings, mpsProject = mpsProject)

                if (!dryRun) {
                    val fixResult = performFixReferences(mpsProject, node)
                    saveModelAndModule(model)
                    okJson(withFixReferencesInfo(nodeInfoJsonObject(node, mpsProject), fixResult), warnings = updateWarnings)
                } else {
                    okJson(jsonObject {
                        addProperty("dryRun", true)
                        addProperty("message", "Dry run successful for root node update")
                    }, warnings = updateWarnings)
                }
            }
        }
        RootNodeOperation.DELETE -> deleteRootNode(nodeReference)
    }

    private suspend fun deleteRootNode(
        nodeReference: String
    ): String {
        return withMpsProject("Deleting MPS root node") { mpsProject ->
            executeShortCommandOnEdt(mpsProject) {
                val (node, model) = when (val r = resolveEditableNodeAndModel(mpsProject, nodeReference)) {
                    is EditableNodeResolution.Ok -> r.node to r.model
                    is EditableNodeResolution.Err -> return@executeShortCommandOnEdt r.errJson
                }
                if (node.parent != null) {
                    return@executeShortCommandOnEdt errJson(
                        "Node '$nodeReference' is not a root node; this tool operates on root nodes only",
                        McpErrorCode.INVALID_REQUEST
                    )
                }
                model.removeRootNode(node)
                saveModelAndModule(model)
                okJson(jsonObject {
                    addProperty("reference", nodeReference)
                    addProperty("deleted", true)
                })
            }
        }
    }
}

enum class RootNodeOperation {
    UPDATE,
    DELETE
}
