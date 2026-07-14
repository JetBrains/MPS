package jetbrains.mps.agents.mcp.tools

import com.google.gson.JsonArray
import com.google.gson.JsonObject
import com.google.gson.JsonParser
import com.intellij.mcpserver.annotations.McpDescription
import com.intellij.mcpserver.annotations.McpTool
import com.intellij.mcpserver.project
import com.intellij.mcpserver.reportToolActivity
import jetbrains.mps.editor.runtime.HeadlessEditorComponent
import jetbrains.mps.ide.project.ProjectHelper
import jetbrains.mps.smodel.CopyUtil
import kotlinx.coroutines.currentCoroutineContext
import org.jetbrains.mps.openapi.language.SConcept
import org.jetbrains.mps.openapi.model.SNode
import org.jetbrains.mps.openapi.module.SRepository
import org.jetbrains.mps.openapi.persistence.PersistenceFacade

// MCP tool methods use snake_case names because they are part of the public MCP protocol
// surface, and they are invoked via reflection by the MCP server framework, so static
// analysis flags them as "never used".
@Suppress("FunctionName", "unused")
class JetBrainsMPSConsoleMcpToolset : AbstractNodeOps() {

    private companion object {
        // The console command that renders as a `{ ... }` block (alias "{", shortDesc
        // "baseLanguage statements"): its `body` is a baseLanguage StatementList. Wrapping one or
        // more statements in a BLCommand is how multiple statements become a single console command.
        // BLCommand extends GeneratedCommand which implements the console `Command` interface.
        private const val BL_COMMAND_CONCEPT = "jetbrains.mps.console.base.structure.BLCommand"
        private const val STATEMENT_LIST_CONCEPT = "jetbrains.mps.baseLanguage.structure.StatementList"
    }

    @McpTool
    @McpDescription(
        """
        Inserts code built from a JSON blueprint into the MPS Console tool window's current input editor as an editable command. This puts the code into the console **without executing it** — the user can review, edit, and run it manually (Ctrl+Enter). The blueprint uses the same node format as `mps_mcp_insert_root_node_from_json` (see the `mps-node-editing` skill). The console input holds exactly one command, and the tool accepts two shapes: (1) a single console `Command` node (e.g. a `BLExpression` wrapping a baseLanguage expression, or a query / `ideCommands` command) is inserted as-is; (2) one or more baseLanguage `Statement` nodes — a single statement object, or a JSON array of statements — are wrapped into a single `BLCommand` (a `{ … }` block whose body is a baseLanguage `StatementList`) so that multiple statements run together as one command. The command's languages and model imports are added to the console model automatically. After a successful insert the Console tool window is focused and the inserted node selected. Requires the MPS Console plugin to be enabled. On success returns the inserted command's node-info envelope; on `dryRun` returns a validation-only envelope (no insertion). The `json` argument follows the same large-input rule: inline JSON up to 4 KB, or an absolute path to a TEMPORARY file (inside the system temp directory) containing it.
    """
    )
    suspend fun mps_mcp_insert_console_command_from_json(
        @McpDescription("JSON blueprint (max 4KB) OR an absolute path to a TEMPORARY file (inside the system temp directory) containing it. Either a single object — a console `Command`, or a baseLanguage `Statement` to wrap — or a JSON array of baseLanguage `Statement`s to wrap together in a `{ … }` block command. See `mps-node-editing` for the format and file-input semantics.") json: String,
        @McpDescription("Optional: if true, only validate the JSON, the console availability, and the command-concept assignability without inserting anything into the console. Default: false.") dryRun: Boolean = false
    ): String {
        return withMpsProject("Inserting MPS console command from JSON") { mpsProject ->
            val actualJson = readNodeJsonOrFile(json, dryRun)
                ?: return@withMpsProject invalidJson("JSON input is null or empty")

            val jsonElement = try {
                JsonParser.parseString(actualJson)
            } catch (e: Exception) {
                rethrowIfCancellation(e)
                return@withMpsProject invalidJson("Failed to parse JSON: ${e.message}")
            }
            val blueprints: List<JsonObject> = when {
                jsonElement.isJsonObject -> listOf(jsonElement.asJsonObject)
                jsonElement.isJsonArray -> {
                    val arr = jsonElement.asJsonArray
                    if (arr.size() == 0) {
                        return@withMpsProject errJson("JSON array is empty; provide at least one node.", McpErrorCode.INVALID_JSON)
                    }
                    arr.mapIndexed { i, elem ->
                        if (!elem.isJsonObject) return@withMpsProject errJson("Array element [$i] is not a JSON object", McpErrorCode.INVALID_JSON)
                        elem.asJsonObject
                    }
                }
                else -> return@withMpsProject errJson(
                    "Expected a JSON object or array, got ${jsonElement.javaClass.simpleName}",
                    McpErrorCode.INVALID_JSON
                )
            }

            val ideaProject = mpsProject.project
            executeShortCommandOnEdt(mpsProject) {
                val console = when (val r = resolveConsoleEditableTab(ideaProject)) {
                    is ConsoleResolution.Ok -> r
                    is ConsoleResolution.Err -> return@executeShortCommandOnEdt r.errJson
                }

                // The command holder accepts one Command. A single blueprint that already is a
                // Command (e.g. BLExpression) is inserted as-is; anything else — a single non-Command
                // node or several nodes — is treated as baseLanguage statement(s) and wrapped in a
                // BLCommand ({ … } block), which is how multiple statements form one console command.
                val commandConcept = consoleCommandConcept()
                val blueprint: JsonObject = if (blueprints.size == 1) {
                    val only = blueprints[0]
                    val onlyConcept = resolveBlueprintConcept(console.consoleModel.repository, only)
                    when {
                        // Unresolved concept: instantiate the user blueprint directly so the error
                        // names their concept, not the synthesized wrapper.
                        onlyConcept == null -> only
                        onlyConcept.isSubConceptOf(commandConcept) -> only
                        else -> wrapStatementsInBlockCommand(blueprints)
                    }
                } else {
                    wrapStatementsInBlockCommand(blueprints)
                }

                // Mirror mps_mcp_insert_root_node_from_json: catch every instantiation failure here
                // (including McpUserException) so nothing escapes the command and trips
                // ActionDispatcher's "Action dispatch failed" log; the message still carries the
                // specific cause. Cancellation is rethrown so coroutine cancellation is honoured.
                val warnings = if (dryRun) mutableListOf<String>() else null
                val command = try {
                    instantiateNode(blueprint, console.consoleModel, dryRun, warnings = warnings)
                } catch (e: Exception) {
                    rethrowIfCancellation(e)
                    return@executeShortCommandOnEdt errJson(
                        "Failed to instantiate console command from JSON: ${e.message}",
                        McpErrorCode.INVALID_REQUEST
                    )
                } ?: return@executeShortCommandOnEdt errJson(
                    "Failed to instantiate console command from JSON",
                    McpErrorCode.INVALID_REQUEST
                )

                // Defensive: the wrap path always yields a Command (BLCommand), and the direct path
                // only runs when the concept is already a Command — but guard the insert anyway so a
                // surprising concept produces a clear message instead of an opaque insertCommand failure.
                if (!command.concept.isSubConceptOf(commandConcept)) {
                    return@executeShortCommandOnEdt errJson(
                        "Concept '${command.concept.name}' cannot be used as a console command; provide a " +
                                "console Command (subconcept of '${commandConcept.name}') or one or more " +
                                "baseLanguage statements to wrap in a block.",
                        McpErrorCode.INVALID_REQUEST
                    )
                }

                if (dryRun) {
                    return@executeShortCommandOnEdt okJson(jsonObject {
                        addProperty("dryRun", true)
                        addProperty("message", "Dry run successful for console command insertion")
                    }, warnings = warnings ?: emptyList())
                }

                // DialogConsoleTab.insertCommand adds the command's imports to the console model
                // and attaches it to the command holder. Reflective call: a failure here is a real
                // problem, so surface it (don't let the InvocationTargetException escape the command).
                try {
                    console.tab.javaClass.getMethod("insertCommand", SNode::class.java)
                        .invoke(console.tab, command)
                } catch (e: ReflectiveOperationException) {
                    return@executeShortCommandOnEdt errJson(
                        "Failed to insert the command into the MPS Console: ${reflectionFailureDetail(e)}",
                        McpErrorCode.INTERNAL_ERROR
                    )
                }

                // Open and focus the Console tool window so the inserted command is immediately
                // visible. This is a deliberate, synchronous-on-EDT step (BaseConsoleTab.activate ->
                // ToolWindow.activate + selectTab) so the window reliably opens even if the node
                // selection below fails: selectNode does its own activation inside a deferred
                // invokeLater whose failures are otherwise invisible. Both are best-effort — a UI
                // failure must not fail an already-successful insert, so each surfaces as a warning.
                val activateWarning = warningMessageOrRethrow {
                    console.tab.javaClass.getMethod("activate").invoke(console.tab)
                }
                // Select the inserted node within the (now open) console editor.
                val selectWarning = warningMessageOrRethrow {
                    console.tab.javaClass.getMethod("selectNode", SNode::class.java)
                        .invoke(console.tab, command)
                }

                okJson(nodeInfoJsonObject(command, mpsProject), warnings = listOfNotNull(activateWarning, selectWarning))
            }
        }
    }

    @McpTool
    @McpDescription(
        """
        Lists the MPS Console's command history — the commands previously executed in the Console tool window's current tab — in execution order (oldest first). Each entry is a node-info envelope plus `index`, `kind` (`command`), `reference` (the history `CommandHolder` to recall), `effectiveCommandReference` (the command node that would be recalled, for printing/inspection), and a best-effort one-line `preview`. Feed `reference` to `mps_mcp_recall_console_command` to copy a command back into the input. Feed `effectiveCommandReference` to `mps_mcp_print_node` for the full JSON blueprint or notational (PLAIN TEXT / HTML) printout. Set `includeResponses=true` to also include the printed responses (`kind`:`response`) interleaved in order; pass `limit` to keep only the most recent N entries. Requires the MPS Console plugin. The returned references are only valid until the next console interaction (execute / clear / history navigation), so use them promptly. Returns the list inline, or a temp-file path when large.
    """
    )
    suspend fun mps_mcp_get_console_history(
        @McpDescription("Optional: also include the printed responses (output) interleaved with commands, as `kind`:`response` entries. Default: false (commands only).") includeResponses: Boolean = false,
        @McpDescription("Optional: keep only the most recent N entries (after the response filter). Default: all.") limit: Int? = null
    ): String {
        return withMpsProject("Getting MPS console history") { mpsProject ->
            executeShortReadOnEdt(mpsProject) {
                val console = when (val r = resolveConsoleEditableTab(mpsProject.project)) {
                    is ConsoleResolution.Ok -> r
                    is ConsoleResolution.Err -> return@executeShortReadOnEdt r.errJson
                }
                val facade = PersistenceFacade.getInstance()
                val filtered = consoleHistoryItems(console.consoleModel)
                    .withIndex()
                    .filter { (_, item) -> includeResponses || isConsoleCommandHolder(item) }
                val selected = if (limit != null && limit >= 0) filtered.takeLast(limit) else filtered
                val array = JsonArray()
                for ((index, item) in selected) {
                    val obj = nodeInfoJsonObject(item, mpsProject)
                    obj.addProperty("index", index)
                    if (isConsoleCommandHolder(item)) {
                        obj.addProperty("kind", "command")
                        effectiveConsoleCommand(item)?.let { cmd ->
                            obj.addProperty("effectiveCommandReference", facade.asString(cmd.reference))
                            consoleNodePreview(mpsProject.repository, cmd)?.let { obj.addProperty("preview", it) }
                        }
                    } else {
                        obj.addProperty("kind", "response")
                    }
                    array.add(obj)
                }
                finalizeResult(array.toString())
            }
        }
    }

    @McpTool
    @McpDescription(
        """
        Copies a command from the MPS Console history back into the Console input editor as the current (unexecuted) command — the agent's equivalent of recalling a previous command. `historyNodeReference` is an entry returned by `mps_mcp_get_console_history` (a `CommandHolder` in the console history). The command is deep-copied (the history entry is left unchanged) and inserted **without executing it** (the user runs it with Ctrl+Enter); its languages/imports are added and the Console is focused with the node selected. On `dryRun` it only validates that the reference resolves to a recallable history entry of the current console, without changing the input. Requires the MPS Console plugin. On success returns the new input command's node-info envelope.
    """
    )
    suspend fun mps_mcp_recall_console_command(
        @McpDescription("Reference of a console history entry to recall, as returned by `mps_mcp_get_console_history` (its node `reference`). Must be a `CommandHolder` in the current console's history.") historyNodeReference: String,
        @McpDescription("Optional: if true, only validate that the reference resolves to a recallable history entry, without changing the console input. Default: false.") dryRun: Boolean = false
    ): String {
        return withMpsProject("Recalling MPS console command from history") { mpsProject ->
            executeShortCommandOnEdt(mpsProject) {
                val console = when (val r = resolveConsoleEditableTab(mpsProject.project)) {
                    is ConsoleResolution.Ok -> r
                    is ConsoleResolution.Err -> return@executeShortCommandOnEdt r.errJson
                }
                val ref = resolveNodeReference(mpsProject.repository, historyNodeReference)
                    ?: return@executeShortCommandOnEdt invalidReference("Invalid or unresolvable node reference: '$historyNodeReference'")
                val entry = ref.resolve(mpsProject.repository)
                    ?: return@executeShortCommandOnEdt errJson("History entry '$historyNodeReference' not found", McpErrorCode.NOT_FOUND)

                // The console model is a temporary module (not a project module), so the cross-project
                // editable guard does not apply here; confine the recall to the current console's own
                // history instead. Both checks keep recall from touching arbitrary nodes.
                if (entry.model?.reference != console.consoleModel.reference) {
                    return@executeShortCommandOnEdt errJson(
                        "Node '$historyNodeReference' is not part of the current MPS Console; pass a reference returned by mps_mcp_get_console_history.",
                        McpErrorCode.INVALID_REQUEST
                    )
                }
                if (!isConsoleHistoryEntry(entry)) {
                    return@executeShortCommandOnEdt errJson(
                        "Node '$historyNodeReference' is not a console history command entry (expected a CommandHolder in the console history).",
                        McpErrorCode.INVALID_REQUEST
                    )
                }
                val effectiveCommand = effectiveConsoleCommand(entry)
                    ?: return@executeShortCommandOnEdt errJson(
                        "The history entry has no command to recall.",
                        McpErrorCode.INVALID_REQUEST
                    )

                if (dryRun) {
                    return@executeShortCommandOnEdt okJson(jsonObject {
                        addProperty("dryRun", true)
                        addProperty("message", "Dry run successful for console command recall")
                    })
                }

                // No addressable "recall entry" API exists (previousCommand/nextCommand are relative
                // cursor steppers that also rewrite history), so mirror their primitive: deep-copy the
                // effective command and set it as the current input via the same insertCommand path.
                val copy = CopyUtil.copy(effectiveCommand)
                try {
                    console.tab.javaClass.getMethod("insertCommand", SNode::class.java)
                        .invoke(console.tab, copy)
                } catch (e: ReflectiveOperationException) {
                    return@executeShortCommandOnEdt errJson(
                        "Failed to recall the command into the MPS Console: ${reflectionFailureDetail(e)}",
                        McpErrorCode.INTERNAL_ERROR
                    )
                }

                // Best-effort: bring the Console forward and select the recalled node (mirrors the insert tool).
                val activateWarning = warningMessageOrRethrow {
                    console.tab.javaClass.getMethod("activate").invoke(console.tab)
                }
                val selectWarning = warningMessageOrRethrow {
                    console.tab.javaClass.getMethod("selectNode", SNode::class.java)
                        .invoke(console.tab, copy)
                }

                okJson(nodeInfoJsonObject(copy, mpsProject), warnings = listOfNotNull(activateWarning, selectWarning))
            }
        }
    }

    @McpTool
    @McpDescription(
        """
        Runs the command currently in the MPS Console input editor against the live project — exactly as if the user pressed Ctrl+Enter in the Console tool window. Runs only when a command is present; if the input is empty it returns an error and runs nothing (it does not build or insert a command — use `mps_mcp_insert_console_command_from_json` to put one in first, or `mps_mcp_recall_console_command` to recall one). **This executes code with side effects:** a console command can mutate models, run make/clean, reload classes, etc. The executed command moves into the console history and its response is rendered in the Console; the response is NOT returned here, and for long-running commands (make/generate) it is produced asynchronously — read it from the Console tool window or via `mps_mcp_get_console_history` with `includeResponses=true`. Requires the MPS Console plugin. On `dryRun` it only checks that a command is present, without running anything. On success returns an envelope confirming execution was triggered.
    """
    )
    suspend fun mps_mcp_run_console_command(
        @McpDescription("Optional: if true, only check that a command is present in the console input without running it. Default: false.") dryRun: Boolean = false
    ): String {
        currentCoroutineContext().reportToolActivity("Running the current MPS console command")
        val project = currentCoroutineContext().project
        return try {
            var reply: String = errJson(
                "Running the current MPS console command did not complete",
                McpErrorCode.INTERNAL_ERROR
            )
            // withModalTimeoutOnEdt: this is a write/execute path (runs an arbitrary console command
            // with side effects), so a modal-blocked dispatch must surface as a clear
            // McpModalBlockedException instead of silently hanging until the outer MCP transport
            // timeout fires with a generic, unhelpful message.
            withModalTimeoutOnEdt {
                val console = when (val r = resolveConsoleEditableTab(project)) {
                    is ConsoleResolution.Ok -> r
                    is ConsoleResolution.Err -> {
                        reply = r.errJson
                        return@withModalTimeoutOnEdt
                    }
                }
                val mpsProject = ProjectHelper.fromIdeaProject(project) ?: run {
                    reply = errJson("No MPS project available", McpErrorCode.NOT_FOUND)
                    return@withModalTimeoutOnEdt
                }
                // executeCurrentCommand silently no-ops on empty input, so check first to give the agent
                // a clear error instead of a misleading success. The presence check takes a read action;
                // execution below uses command access matching the Console action after this read ends.
                val present = mpsProject.modelAccess.computeReadAction {
                    currentConsoleCommand(console.consoleModel) != null
                }
                if (!present) {
                    reply = errJson(
                        "The MPS Console input editor is empty (no current command to run).",
                        McpErrorCode.NOT_FOUND
                    )
                    return@withModalTimeoutOnEdt
                }
                if (dryRun) {
                    reply = okJson(jsonObject {
                        addProperty("dryRun", true)
                        addProperty("message", "Dry run successful: a console command is present and ready to run.")
                    })
                    return@withModalTimeoutOnEdt
                }
                // Mirror ConsoleExecute_Action's UNDO_PROJECT access: executeCurrentCommand reads the
                // current command while scheduling execution, and relies on its caller to provide
                // model access for that outer read.
                try {
                    mpsProject.modelAccess.executeCommand {
                        console.tab.javaClass.getMethod("executeCurrentCommand").invoke(console.tab)
                    }
                } catch (e: ReflectiveOperationException) {
                    reply = errJson(
                        "Failed to run the command in the MPS Console: ${reflectionFailureDetail(e)}",
                        McpErrorCode.INTERNAL_ERROR
                    )
                    return@withModalTimeoutOnEdt
                }
                reply = okJson(jsonObject {
                    addProperty("executed", true)
                    addProperty(
                        "message",
                        "Triggered execution of the current console command (equivalent to Ctrl+Enter). The response is " +
                            "rendered in the Console; long-running commands complete asynchronously. Read the result from " +
                            "the Console tool window or via mps_mcp_get_console_history(includeResponses=true)."
                    )
                })
            }
            reply
        } catch (e: Exception) {
            toolFailure("Running the current MPS console command", e)
        }
    }

    /**
     * Best-effort one-line notational preview of a console command node (truncated to 200 chars), rendered
     * via the same headless editor projection as `mps_mcp_print_node`'s PLAIN TEXT format. Returns null on
     * any rendering failure — a preview is a convenience and must never fail the listing. Must run on the
     * EDT under a read action.
     */
    private fun consoleNodePreview(repository: SRepository, node: SNode): String? {
        return try {
            val component = HeadlessEditorComponent(repository)
            try {
                component.editNode(node)
                val text = component.rootCell.renderText().getText().replace(Regex("\\s+"), " ").trim()
                if (text.isEmpty()) null else if (text.length > 200) text.take(200) + "…" else text
            } finally {
                component.dispose()
            }
        } catch (e: Exception) {
            rethrowIfCancellation(e)
            null
        }
    }

    /**
     * Resolves the concept named by a blueprint's `conceptReference` (preferred) / `concept` field,
     * without instantiating it — used only to decide whether a single blueprint is already a console
     * Command (insert as-is) or a statement to wrap. Mirrors [instantiateNode]'s resolution order, so
     * the classification matches what instantiation would produce. Returns null if neither resolves.
     */
    private fun resolveBlueprintConcept(repository: SRepository, blueprint: JsonObject): SConcept? {
        val conceptRef = blueprintStringField(blueprint, "conceptReference")
        val conceptName = blueprintStringField(blueprint, "concept")
        val byRef = if (!conceptRef.isNullOrEmpty()) resolveConcept(repository, conceptRef) as? SConcept else null
        val byName = if (!conceptName.isNullOrEmpty()) resolveConcept(repository, conceptName) as? SConcept else null
        return byRef ?: byName
    }

    private fun blueprintStringField(blueprint: JsonObject, field: String): String? {
        val element = blueprint.get(field) ?: return null
        return if (element.isJsonPrimitive) element.asString else null
    }

    /**
     * Builds a `BLCommand` blueprint (`{ … }` block) whose baseLanguage `StatementList` body holds the
     * given statement blueprints, so several statements become one console command. The wrapper is
     * itself a node blueprint, so [instantiateNode] handles language imports and the per-statement
     * assignability check (each must be a baseLanguage `Statement`) — link roles resolve by name, so
     * no console/baseLanguage meta-ids are hard-coded here.
     */
    private fun wrapStatementsInBlockCommand(statements: List<JsonObject>): JsonObject {
        val statementNodes = JsonArray().apply { statements.forEach { add(it) } }
        val statementList = jsonObject {
            addProperty("concept", STATEMENT_LIST_CONCEPT)
            add("children", JsonArray().apply {
                add(jsonObject {
                    addProperty("role", "statement")
                    add("nodes", statementNodes)
                })
            })
        }
        return jsonObject {
            addProperty("concept", BL_COMMAND_CONCEPT)
            add("children", JsonArray().apply {
                add(jsonObject {
                    addProperty("role", "body")
                    add("nodes", JsonArray().apply { add(statementList) })
                })
            })
        }
    }
}
