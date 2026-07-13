package jetbrains.mps.agents.mcp.tools

import com.google.gson.JsonArray
import com.google.gson.JsonObject
import com.intellij.mcpserver.annotations.McpDescription
import com.intellij.mcpserver.annotations.McpTool
import jetbrains.mps.errors.item.NodeReportItem
import jetbrains.mps.intentions.IntentionsManager
import jetbrains.mps.openapi.editor.EditorContext
import jetbrains.mps.openapi.intentions.IntentionExecutable
import jetbrains.mps.openapi.intentions.ParameterizedIntentionExecutable
import jetbrains.mps.project.MPSProject
import org.jetbrains.mps.openapi.model.SNode
import org.jetbrains.mps.openapi.model.SNodeReference
import org.jetbrains.mps.openapi.module.SRepository
import org.jetbrains.mps.openapi.persistence.PersistenceFacade

/**
 * MCP tools that surface the MPS "Alt+Enter" context actions — aspect-defined intentions and
 * checker quick-fixes — on a node without the node being open in a visible editor, and apply a
 * chosen one. Both tools resolve the node under the active project, drive a
 * [jetbrains.mps.editor.runtime.HeadlessEditorComponent] for intention queries, and source
 * quick-fixes from the same checker stack `mps_mcp_check_root_node_problems` runs.
 */
class JetBrainsMPSIntentionsMcpToolset : AbstractNodeOps() {

    private fun asRef(ref: SNodeReference): String = PersistenceFacade.getInstance().asString(ref)
    private fun asRef(node: SNode): String = asRef(node.reference)

    /** [node] followed by its ancestors up to the containing root. */
    private fun selfAndAncestors(node: SNode): List<SNode> =
        generateSequence(node) { it.parent }.toList()

    /**
     * [IntentionExecutable.getDescription] runs language-author code that may throw; degrade to the
     * static [descriptor.presentation][jetbrains.mps.openapi.intentions.IntentionDescriptor.getPresentation]
     * so one misbehaving intention cannot abort a whole listing or apply.
     */
    private fun safeDescription(executable: IntentionExecutable, node: SNode, ctx: EditorContext): String =
        try {
            executable.getDescription(node, ctx)
        } catch (e: Exception) {
            rethrowIfCancellation(e)
            executable.descriptor.presentation
        }

    /** Result of [selectCandidate]: a single winner, all-identical first-match, or genuinely different entries. */
    internal sealed class CandidateChoice<T> {
        class One<T>(val value: T) : CandidateChoice<T>()
        class FirstOfIdentical<T>(val value: T, val count: Int) : CandidateChoice<T>()
        class Differing<T>(val labels: List<String>) : CandidateChoice<T>()
        class Empty<T> : CandidateChoice<T>()
    }

    /**
     * Picks from [candidates] using [key] to detect distinguishability.
     * - Empty list → [CandidateChoice.Empty].
     * - Exactly one → [CandidateChoice.One].
     * - Several but all with the same key → [CandidateChoice.FirstOfIdentical] (caller logs warning).
     * - Several with different keys → [CandidateChoice.Differing] with the key strings for the error.
     *
     * `internal` (not private) so the branch semantics — identical→first-match vs differing→error —
     * stay unit-tested; a bundled fixture with genuinely differing same-id candidates on one node
     * does not exist, so the Ambiguous path cannot be exercised end-to-end deterministically.
     */
    internal fun <T> selectCandidate(candidates: List<T>, key: (T) -> String): CandidateChoice<T> = when {
        candidates.isEmpty() -> CandidateChoice.Empty()
        candidates.size == 1 -> CandidateChoice.One(candidates.single())
        candidates.map(key).distinct().size == 1 -> CandidateChoice.FirstOfIdentical(candidates.first(), candidates.size)
        else -> CandidateChoice.Differing(candidates.map(key))
    }

    @McpTool
    @McpDescription(
        """
        Lists the intentions and quick-fixes available on an MPS node — the headless equivalent of the editor's Alt+Enter menu, so an agent can discover and then apply a context action without opening an editor. Returns a temp-file path whose JSON is an array of entries; each has `type` ("intention" | "quickFix"), `id` (pass to mps_mcp_apply_intention), `kind` (ERROR | QUICKFIX | MIGRATION | NORMAL), `description` (the row text), `targetNode` (the node the entry applies to — pass THIS as nodeReference to apply), and `declarationNode` (the IntentionDeclaration / QuickFix source node — inspect with mps_mcp_print_node). `parameterized` entries (intention only) need `description` on apply; `enabled: false` marks user-disabled intentions (intention only, omitted when enabled). quickFix entries also carry `problemMessage` and `autoApplicable`. `includeAncestors` (default true) mirrors the editor by also listing ancestor-node actions; `includeDisabled` lists disabled intentions; `includeQuickFixes` (default true) merges checker quick-fixes. Surround-with intentions are not listed. See mps-mcp-workflow/references/analysis-tools.md.
    """
    )
    suspend fun mps_mcp_list_node_intentions(
        @McpDescription("Persistent form of the SNodeReference to inspect") nodeReference: String,
        @McpDescription("Also list intentions/quick-fixes of ancestor nodes, like the editor (default = true)") includeAncestors: Boolean = true,
        @McpDescription("Also list intentions the user has disabled (default = false)") includeDisabled: Boolean = false,
        @McpDescription("Merge checker quick-fixes for problems on this node/ancestors (default = true)") includeQuickFixes: Boolean = true,
    ): String {
        return withMpsProject("Listing MPS node intentions") { mpsProject ->
            executeShortReadOnEdt(mpsProject) {
                val repo = mpsProject.repository
                val sNodeRef = resolveNodeReferencePreferringProject(mpsProject, nodeReference)
                    ?: return@executeShortReadOnEdt invalidReference("Invalid or unresolvable node reference: '$nodeReference'")
                val node = sNodeRef.resolve(repo)
                    ?: return@executeShortReadOnEdt errJson("Node '$nodeReference' not found", McpErrorCode.NOT_FOUND)
                val root = node.containingRoot

                val entries = JsonArray()
                collectIntentionEntries(repo, node, root, includeAncestors, includeDisabled, entries)
                if (includeQuickFixes) {
                    collectQuickFixEntries(mpsProject, repo, node, root, includeAncestors, entries)
                }
                saveToTempFileResult(entries.toString())
            }
        }
    }

    private fun collectIntentionEntries(
        repo: SRepository,
        node: SNode,
        root: SNode,
        includeAncestors: Boolean,
        includeDisabled: Boolean,
        entries: JsonArray,
    ) {
        withHeadlessEditor(repo, root) { ctx ->
            val query = IntentionsManager.QueryDescriptor()
            query.setEnabledOnly(!includeDisabled)
            query.setCurrentNodeOnly(!includeAncestors)
            // surroundWith left false — surround-with intentions are deliberately not listed (they
            // could not be applied through getIntentionsById and need a selection to surround).
            val pairs = IntentionsManager.getInstance().getAvailableIntentions(query, node, ctx)
            // Several executables sharing one persistentStateKey ON THE SAME node ⇒ a parameterized
            // intention (multiple menu rows). Group by (key, targetNode): with includeAncestors the
            // same id can legitimately appear once per node (e.g. an available-in-child-nodes
            // intention on both the node and an ancestor) without being parameterized.
            val countByKeyAndNode = pairs.groupingBy { it.o1.descriptor.persistentStateKey to asRef(it.o2) }.eachCount()
            val intentionsMgr = IntentionsManager.getInstance()
            for (pair in pairs) {
                val executable = pair.o1
                val pairNode = pair.o2
                val descriptor = executable.descriptor
                val key = descriptor.persistentStateKey
                val targetRef = asRef(pairNode)
                val obj = JsonObject()
                obj.addProperty("type", "intention")
                obj.addProperty("id", key)
                obj.addProperty("kind", descriptor.kind.name)
                obj.addProperty("presentation", descriptor.presentation)
                obj.addProperty("description", safeDescription(executable, pairNode, ctx))
                obj.addProperty("targetNode", targetRef)
                descriptor.intentionNodeReference?.let { obj.addProperty("declarationNode", asRef(it)) }
                val parameterized = executable is ParameterizedIntentionExecutable || (countByKeyAndNode[key to targetRef] ?: 0) > 1
                obj.addProperty("parameterized", parameterized)
                (executable as? ParameterizedIntentionExecutable)?.let { pie ->
                    val param = try {
                        pie.getParameter()?.toString()
                    } catch (e: Exception) {
                        rethrowIfCancellation(e)
                        null
                    }
                    if (param != null) obj.addProperty("parameter", param)
                }
                // Emit enabled:false only when the intention is disabled (omit the property when enabled).
                if (intentionsMgr.isIntentionDisabled(key)) {
                    obj.addProperty("enabled", false)
                }
                entries.add(obj)
            }
        }
    }

    private fun collectQuickFixEntries(
        mpsProject: MPSProject,
        repo: SRepository,
        node: SNode,
        root: SNode,
        includeAncestors: Boolean,
        entries: JsonArray,
    ) {
        val problems = runRootCheckers(mpsProject, root, repo)
        val targetNodes = if (includeAncestors) selfAndAncestors(node) else listOf(node)
        for (targetNode in targetNodes) {
            val items = problems[targetNode] ?: continue
            for (item in items) {
                for (qf in quickFixInfos(item, repo)) {
                    if (!safeIsApplicable(qf.fix, repo)) continue

                    val obj = JsonObject()
                    obj.addProperty("type", "quickFix")
                    obj.addProperty("id", qf.id)
                    obj.addProperty("kind", if (item.severity == jetbrains.mps.errors.MessageStatus.ERROR) "ERROR" else "QUICKFIX")
                    obj.addProperty("description", qf.description)
                    obj.addProperty("targetNode", asRef(targetNode))
                    qf.declarationNode?.let { obj.addProperty("declarationNode", asRef(it)) }
                    obj.addProperty("problemMessage", item.message)
                    obj.addProperty("autoApplicable", qf.autoApplicable)
                    entries.add(obj)
                }
            }
        }
    }

    @McpTool
    @McpDescription(
        """
        Applies one intention or quick-fix — an entry from mps_mcp_list_node_intentions, or a `quickFixes` entry from mps_mcp_check_root_node_problems — on a node, headlessly, inside an undoable command. Pass `nodeReference` = the entry's `targetNode` (for quick-fixes from the check report, the problem node's `reference`) and `intentionId` = the entry's `id`. `description` disambiguates when several instances share the id (parameterized intentions, repeated fixes); `problemMessage` pins a quick-fix to a specific problem on the node. The intention path is tried first (matching disabled intentions by id, as intended), then the quick-fix path. On success returns `{applied, type, description, targetNode, problems:{before,after}}` with error/warning counts; an unknown id yields NOT_FOUND with a hint to re-list. Note: the applied intention/fix may write outside the target model; only the target model is saved automatically. See mps-mcp-workflow/references/analysis-tools.md.
    """
    )
    suspend fun mps_mcp_apply_intention(
        @McpDescription("The entry's targetNode (intention/quick-fix listing) or the problem node's reference (check report)") nodeReference: String,
        @McpDescription("The entry's id — an intention persistentStateKey or a quick-fix runtime-class FQN") intentionId: String,
        @McpDescription("Disambiguator; required when several instances share the id") description: String? = null,
        @McpDescription("Quick-fix only: pins the fix to a specific problem message on the node") problemMessage: String? = null,
    ): String {
        return withMpsProject("Applying MPS intention/quick fix") { mpsProject ->
            executeShortCommandOnEdt(mpsProject) {
                val repo = mpsProject.repository
                // Applying an intention/quick-fix writes the model, so route resolution through the
                // shared editable-node guard (as every other mutating tool does): it refuses a
                // read-only library/bundled model with NOT_EDITABLE and a node owned by a different
                // open project with crossProjectErr, and yields the owning model to persist below.
                val (node, model, console) = when (val r = resolveEditableNodeAllowingConsole(mpsProject, nodeReference)) {
                    is ConsoleAwareResolution.Ok -> Triple(r.node, r.model, r.console)
                    is ConsoleAwareResolution.Err -> return@executeShortCommandOnEdt r.errJson
                }
                // Capture references before the apply so we can re-resolve after a node-replacing fix.
                val nodeRefString = asRef(node)
                val root = node.containingRoot

                // Run the checkers once: the before-counts for the response AND the quick-fix lookup
                // snapshot. Nothing mutates between here and the apply (same command), so the fix
                // instances collected below stay live.
                val problems = runRootCheckers(mpsProject, root, repo)
                val before = countSeverities(problems)

                var outcome = tryApplyIntention(repo, node, root, intentionId, description)
                if (outcome is ApplyOutcome.NotFound) {
                    outcome = tryApplyQuickFix(repo, node, problems, intentionId, description, problemMessage)
                }

                when (val o = outcome) {
                    is ApplyOutcome.Applied -> {
                        // Flush the applied change to the .mps file (project model) or refresh the
                        // console temp model's imports — the same persistence step the other write
                        // tools run; executeShortCommandOnEdt only makes the write undoable, it does
                        // not save.
                        val warn = persistOrRefreshConsole(model, console)
                        // Re-resolve node after the apply: a node-replacing fix detaches the original.
                        val freshNodeRef = PersistenceFacade.getInstance().createNodeReference(nodeRefString)
                        val freshNode = freshNodeRef.resolve(repo)
                        val targetNodeValue = freshNode?.let { asRef(it) }
                        val nodeGoneWarn = if (freshNode == null) {
                            "the target node no longer exists after the apply (deleted or replaced)"
                        } else null
                        // Re-resolve root for the after-counts.
                        val freshRoot = root.reference.resolve(repo)
                        val after = if (freshRoot != null) {
                            countSeverities(runRootCheckers(mpsProject, freshRoot, repo))
                        } else null
                        okJson(jsonObject {
                            addProperty("applied", true)
                            addProperty("type", o.type)
                            addProperty("description", o.description)
                            addProperty("targetNode", targetNodeValue)
                            if (after != null) {
                                add("problems", jsonObject {
                                    add("before", severityCountsJson(before))
                                    add("after", severityCountsJson(after))
                                })
                            } else {
                                add("problems", jsonObject {
                                    add("before", severityCountsJson(before))
                                })
                            }
                        }, warnings = listOfNotNull(warn, nodeGoneWarn, o.warning))
                    }
                    is ApplyOutcome.Ambiguous -> errJson(
                        "Several actions match id '$intentionId' on this node. Pass `description` to pick one: " +
                            o.candidates.joinToString("; ") { "\"$it\"" },
                        McpErrorCode.INVALID_REQUEST,
                    )
                    is ApplyOutcome.ExecError -> errJson(o.message, McpErrorCode.INTERNAL_ERROR)
                    ApplyOutcome.NotFound -> errJson(
                        "intention or quick fix '$intentionId' not available on this node — re-run " +
                            "mps_mcp_list_node_intentions; the model may have changed",
                        McpErrorCode.NOT_FOUND,
                    )
                }
            }
        }
    }

    private sealed class ApplyOutcome {
        data class Applied(val type: String, val description: String?, val warning: String? = null) : ApplyOutcome()
        object NotFound : ApplyOutcome()
        data class Ambiguous(val candidates: List<String>) : ApplyOutcome()
        data class ExecError(val message: String) : ApplyOutcome()
    }

    private fun tryApplyIntention(
        repo: SRepository,
        node: SNode,
        root: SNode,
        intentionId: String,
        description: String?,
    ): ApplyOutcome {
        return withHeadlessEditor(repo, root) { ctx ->
            val executables = IntentionsManager.getInstance().getIntentionsById(node, ctx, intentionId)
            // getDescription runs language-author code; guard it (degrading to the static
            // presentation) so a single throwing intention can't abort the apply with an uncaught
            // exception surfacing as a spurious "Action dispatch failed" at the command boundary.
            val matching = if (description != null) {
                executables.filter { safeDescription(it, node, ctx) == description }
            } else {
                executables
            }
            when (val choice = selectCandidate(matching) { safeDescription(it, node, ctx) }) {
                is CandidateChoice.Empty -> ApplyOutcome.NotFound
                is CandidateChoice.Differing -> ApplyOutcome.Ambiguous(choice.labels)
                is CandidateChoice.One, is CandidateChoice.FirstOfIdentical -> {
                    val executable = when (choice) {
                        is CandidateChoice.One -> choice.value
                        is CandidateChoice.FirstOfIdentical -> choice.value
                        else -> error("unreachable")
                    }
                    val warn = if (choice is CandidateChoice.FirstOfIdentical) {
                        "${choice.count} identical candidates matched; applied the first. " +
                            "For a parameterized intention the instances may differ in their parameter even when descriptions match."
                    } else null
                    val desc = safeDescription(executable, node, ctx)
                    try {
                        executable.execute(node, ctx)
                    } catch (e: Exception) {
                        rethrowIfCancellation(e)
                        return@withHeadlessEditor ApplyOutcome.ExecError(
                            "Failed to execute intention '$intentionId': ${e.message ?: e.javaClass.name}. " +
                                "This intention may require an open editor UI. " +
                                "The model may be partially modified; re-run mps_mcp_check_root_node_problems or undo in the IDE.",
                        )
                    }
                    ApplyOutcome.Applied("intention", desc, warning = warn)
                }
            }
        }
    }

    private fun tryApplyQuickFix(
        repo: SRepository,
        node: SNode,
        problems: Map<SNode, List<NodeReportItem>>,
        intentionId: String,
        description: String?,
        problemMessage: String?,
    ): ApplyOutcome {
        val items = problems[node] ?: emptyList()
        // (fix, message-of-the-problem-it-repairs)
        val candidates = mutableListOf<Pair<QuickFixInfo, String>>()
        for (item in items) {
            if (problemMessage != null && !item.message.contains(problemMessage)) continue
            for (qf in quickFixInfos(item, repo)) {
                if (qf.id == intentionId) candidates.add(qf to item.message)
            }
        }
        // `description` disambiguates repeated fixes of the same id.
        val filtered = if (description != null) candidates.filter { it.first.description == description } else candidates
        return when (val choice = selectCandidate(filtered) { (qf, msg) -> "${qf.id}|${qf.description}|$msg" }) {
            is CandidateChoice.Empty -> ApplyOutcome.NotFound
            is CandidateChoice.Differing -> ApplyOutcome.Ambiguous(filtered.map { it.first.description ?: it.second })
            is CandidateChoice.One, is CandidateChoice.FirstOfIdentical -> {
                val (qf, message) = when (choice) {
                    is CandidateChoice.One -> choice.value
                    is CandidateChoice.FirstOfIdentical -> choice.value
                    else -> error("unreachable")
                }
                val warn = if (choice is CandidateChoice.FirstOfIdentical) {
                    "${choice.count} identical candidates matched; applied the first."
                } else null
                if (!safeIsAlive(qf.fix, repo)) return ApplyOutcome.NotFound
                if (!safeIsApplicable(qf.fix, repo)) return ApplyOutcome.NotFound
                try {
                    qf.fix.execute(repo)
                } catch (e: Exception) {
                    rethrowIfCancellation(e)
                    return ApplyOutcome.ExecError(
                        "Failed to execute quick fix '$intentionId': ${e.message ?: e.javaClass.name}. " +
                            "The model may be partially modified; re-run mps_mcp_check_root_node_problems or undo in the IDE.",
                    )
                }
                ApplyOutcome.Applied("quickFix", qf.description ?: message, warning = warn)
            }
        }
    }
}
