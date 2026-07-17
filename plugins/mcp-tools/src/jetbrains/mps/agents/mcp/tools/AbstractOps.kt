package jetbrains.mps.agents.mcp.tools

import com.google.gson.*
import com.intellij.mcpserver.McpToolset
import com.intellij.mcpserver.project
import com.intellij.mcpserver.reportToolActivity
import com.intellij.openapi.application.EDT
import com.intellij.openapi.application.ModalityState
import com.intellij.openapi.application.asContextElement
import com.intellij.openapi.diagnostic.Logger
import com.intellij.openapi.progress.ProcessCanceledException
import com.intellij.openapi.project.ProjectManager
import jetbrains.mps.checkers.ConstraintsChecker
import jetbrains.mps.checkers.RefScopeChecker
import jetbrains.mps.checkers.TargetConceptChecker2
import jetbrains.mps.classloading.ClassLoaderManager
import jetbrains.mps.editor.runtime.HeadlessEditorComponent
import jetbrains.mps.errors.MessageStatus
import jetbrains.mps.errors.item.EditorQuickFix
import jetbrains.mps.errors.item.IssueKindReportItem
import jetbrains.mps.errors.item.ModelReportItem
import jetbrains.mps.errors.item.NodeReportItem
import jetbrains.mps.errors.item.NodeReportItemBase
import jetbrains.mps.errors.item.QuickFixBase
import jetbrains.mps.errors.item.QuickFixReportItem
import jetbrains.mps.errors.item.QuickFixRuntimeAdapter
import jetbrains.mps.errors.messageTargets.PropertyMessageTarget
import jetbrains.mps.errors.messageTargets.ReferenceMessageTarget
import jetbrains.mps.ide.MPSCoreComponents
import jetbrains.mps.ide.project.ProjectHelper
import jetbrains.mps.lang.smodel.generator.smodelAdapter.IAttributeDescriptor
import jetbrains.mps.make.MakeServiceComponent
import jetbrains.mps.make.MakeSession
import jetbrains.mps.messages.IMessage
import jetbrains.mps.messages.IMessageHandler
import jetbrains.mps.messages.MessageKind
import jetbrains.mps.openapi.editor.EditorContext
import jetbrains.mps.progress.EmptyProgressMonitor
import jetbrains.mps.project.AbstractModule
import jetbrains.mps.project.DevKit
import jetbrains.mps.project.MPSProject
import jetbrains.mps.project.ProjectRepository
import jetbrains.mps.project.facets.JavaModuleFacet
import jetbrains.mps.project.structure.modules.DevkitDescriptor
import jetbrains.mps.project.structure.modules.ModuleDescriptor
import jetbrains.mps.project.validation.StructureChecker
import jetbrains.mps.smodel.Language
import jetbrains.mps.smodel.SNodeUtil
import jetbrains.mps.smodel.adapter.MetaAdapterByDeclaration
import jetbrains.mps.smodel.adapter.ids.MetaIdByDeclaration
import jetbrains.mps.smodel.adapter.ids.SLanguageId
import jetbrains.mps.smodel.adapter.ids.SPropertyId
import jetbrains.mps.smodel.adapter.ids.SReferenceLinkId
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory
import jetbrains.mps.smodel.language.LanguageRegistry
import jetbrains.mps.smodel.language.LanguageRegistryListener
import jetbrains.mps.smodel.language.LanguageRuntime
import jetbrains.mps.smodel.resources.MResource
import jetbrains.mps.smodel.resources.MakeKeys
import jetbrains.mps.smodel.resources.ModelsToResources
import jetbrains.mps.typesystemEngine.checker.NonTypesystemChecker
import jetbrains.mps.typesystemEngine.checker.TypesystemChecker
import kotlinx.coroutines.*
import org.jetbrains.mps.openapi.language.*
import org.jetbrains.mps.openapi.model.*
import org.jetbrains.mps.openapi.module.SModule
import org.jetbrains.mps.openapi.module.SModuleReference
import org.jetbrains.mps.openapi.module.SRepository
import org.jetbrains.mps.openapi.persistence.PersistenceFacade
import org.jetbrains.mps.openapi.util.Consumer
import java.io.File
import java.nio.file.Paths
import java.util.concurrent.ConcurrentHashMap
import java.util.concurrent.CountDownLatch
import java.util.concurrent.TimeUnit
import java.util.concurrent.atomic.AtomicBoolean

abstract class AbstractOps : McpToolset {
    protected val logger = Logger.getInstance(AbstractOps::class.java)

    enum class McpErrorCode {
        INVALID_JSON,
        INVALID_REFERENCE,
        INVALID_REQUEST,
        NOT_FOUND,
        NOT_EDITABLE,
        MAKE_INPUT_INVALID,
        MODAL_BLOCKED,
        INTERNAL_ERROR
    }

    /**
     * User-facing exceptions carrying a stable [McpErrorCode]. Throwing one of these from
     * inside a tool boundary produces a non-logged, classified error response rather than
     * an `INTERNAL_ERROR`. Use these instead of bare `IllegalArgumentException` whenever
     * the failure category is known at the throw site.
     */
    open class McpUserException(
        val errorCode: McpErrorCode,
        message: String,
        val errorDetails: Map<String, Any?> = emptyMap(),
    ) : RuntimeException(message)

    class McpInvalidReferenceException(message: String, details: Map<String, Any?> = emptyMap()) :
        McpUserException(McpErrorCode.INVALID_REFERENCE, message, details)

    class McpNotFoundException(message: String, details: Map<String, Any?> = emptyMap()) :
        McpUserException(McpErrorCode.NOT_FOUND, message, details)

    class McpNotEditableException(message: String, details: Map<String, Any?> = emptyMap()) :
        McpUserException(McpErrorCode.NOT_EDITABLE, message, details)

    class McpInvalidRequestException(message: String, details: Map<String, Any?> = emptyMap()) :
        McpUserException(McpErrorCode.INVALID_REQUEST, message, details)

    class McpModalBlockedException(message: String, details: Map<String, Any?> = emptyMap()) :
        McpUserException(McpErrorCode.MODAL_BLOCKED, message, details)

    companion object {
        private const val TEMP_JSON_PREFIX = "mps-node-"
        private const val TEMP_JSON_SUFFIX = ".json"
        private const val MAX_INPUT_FILE_SIZE_BYTES = 10L * 1024 * 1024

        /**
         * Timeout for model operations; acts as a safety net for unexpected blocking (e.g. a
         * modal dialog). Protected, not private: every EDT-dispatching tool entry point should
         * route through [withModalTimeoutOnEdt] (or [withModalTimeout] directly for a non-EDT
         * dispatch) with this budget, not just the helpers below — see [withModalTimeout]'s doc
         * for the failure mode this guards against.
         */
        protected const val MODEL_OPERATION_TIMEOUT_MS: Long = 30_000

        /**
         * Maximum time `performMake` waits, after the build completes, for the
         * `afterLanguagesLoaded` listener to fire for one of the target languages. On timeout
         * the runtime is declared stale (`MakeResult.runtimeReady = false`) and the warning
         * appended to `MakeResult.details` quotes the same number.
         *
         * IMPORTANT: when changing this value, also update the documented number in
         * `implement-mps-language-structure-concepts.md` so the skill doc stays in sync.
         */
        internal const val LANGUAGE_RELOAD_TIMEOUT_SECONDS: Long = 10L

        /**
         * Recovery hint for the dirty-source-model branch of [checkScaffoldingStaleness] —
         * the structure model has unbuilt edits, so a plain `MAKE` regenerates the descriptors.
         * `rebuild=true` is the heavier hammer reserved for the on-disk corruption case
         * (see [DESCRIPTOR_REBUILD_INSTRUCTION_HOLLOW]).
         */
        internal const val DESCRIPTOR_REBUILD_INSTRUCTION: String =
            "Run `mps_mcp_alter_nodes` with operation=MAKE on the language's structure model, then retry."

        /**
         * Recovery hint for the hollow-descriptor branch of [checkScaffoldingStaleness] — the
         * language runtime is loaded but its concept descriptor has no source node and no
         * properties/links. This shape only appears when an incremental make has left stale
         * language-aspect descriptor classes on disk; `mps_mcp_reload_all` alone is not
         * sufficient because the on-disk class files are still stale. Use `rebuild=true` to
         * force a clean regeneration.
         */
        internal const val DESCRIPTOR_REBUILD_INSTRUCTION_HOLLOW: String =
            "Run `mps_mcp_alter_nodes` with operation=MAKE and rebuild=true targeting the " +
                "language module (a model-scoped make can leave a never-deployed language's " +
                "runtime hollow), then retry. (`mps_mcp_reload_all` alone is not sufficient — " +
                "the language-aspect descriptor classes on disk are still stale until a clean " +
                "rebuild.)"
        private val GSON = Gson()
        private val PRETTY_GSON = GsonBuilder().setPrettyPrinting().create()

        // Shared by all MCP toolset instances: a file created by one toolset may be consumed by another.
        private val createdTempJsonFiles = ConcurrentHashMap.newKeySet<String>()

        // Structure-language meta descriptors used by smart-reference detection. Hoisted from per-call
        // MetaAdapterFactory lookups so the IDs are grep-able from a single location and the lookups
        // are not repeated on every getSmartReferenceLink invocation.
        private val STRUCTURE_LANG_HI = 0xc72da2b97cce4447uL.toLong()
        private val STRUCTURE_LANG_LO = 0x8389f407dc1158b7uL.toLong()
        private val SMART_REFERENCE_ATTRIBUTE_CONCEPT = MetaAdapterFactory.getConcept(
            STRUCTURE_LANG_HI, STRUCTURE_LANG_LO, 0x7ab7b29c4d6297e8L,
            "jetbrains.mps.lang.structure.structure.SmartReferenceAttribute"
        )
        private val SMART_REFERENCE_ATTRIBUTE_CHARACTERISTIC_REF = MetaAdapterFactory.getReferenceLink(
            STRUCTURE_LANG_HI, STRUCTURE_LANG_LO, 0x7ab7b29c4d6297e8L, 0x7ab7b29c4d6297edL,
            "charactersticReference"
        )
        private val LINK_DECLARATION_SPECIALIZED_LINK_REF = MetaAdapterFactory.getReferenceLink(
            STRUCTURE_LANG_HI, STRUCTURE_LANG_LO, 0xf979bd086aL, 0xf98051c244L,
            "specializedLink"
        )

        // jetbrains.mps.lang.core meta descriptors for the attribute concepts whose encoded feature
        // ids ([PropertyAttribute.propertyId] / [LinkAttribute.linkId]) are validated by
        // [checkAttributeFeatureIds]. `PropertyMacro`/`ReferenceMacro` (and the structure-level
        // property/link annotations) are subconcepts of these, so an `isSubConceptOf` test covers them
        // all. Ids mirror `PropertyAttribute__BehaviorDescriptor` / `LinkAttribute__BehaviorDescriptor`.
        private val CORE_LANG_HI = 0xceab519525ea4f22uL.toLong()
        private val CORE_LANG_LO = 0x9b92103b95ca8c0cuL.toLong()
        private val PROPERTY_ATTRIBUTE_CONCEPT = MetaAdapterFactory.getConcept(
            CORE_LANG_HI, CORE_LANG_LO, 0x2eb1ad060897da56L,
            "jetbrains.mps.lang.core.structure.PropertyAttribute"
        )
        private val PROPERTY_ATTRIBUTE_PROPERTY_ID = MetaAdapterFactory.getProperty(
            CORE_LANG_HI, CORE_LANG_LO, 0x2eb1ad060897da56L, 0x129f3f61278d556dL, "propertyId"
        )
        private val LINK_ATTRIBUTE_CONCEPT = MetaAdapterFactory.getConcept(
            CORE_LANG_HI, CORE_LANG_LO, 0x2eb1ad060897da51L,
            "jetbrains.mps.lang.core.structure.LinkAttribute"
        )
        private val LINK_ATTRIBUTE_LINK_ID = MetaAdapterFactory.getProperty(
            CORE_LANG_HI, CORE_LANG_LO, 0x2eb1ad060897da51L, 0x129f3f612792fc5cL, "linkId"
        )

        // Specialization label for the synthetic structure-level problems reported by
        // [checkAttributeFeatureIds]; surfaces as the issue kind in check results.
        private const val ATTRIBUTE_FEATURE_ID_ISSUE = "invalid attribute feature id"
    }

    // ---- helpers ----
    // CONTRACT: `payload` must already be valid JSON. Use okJson(JsonElement) when the value is
    // not pre-validated — this overload performs no escaping or syntax check.
    fun okJson(payload: String): String = "{" + "\"ok\":true,\"data\":" + payload + "}"
    fun okJson(
        payload: JsonElement,
        warnings: List<String> = emptyList(),
        details: Map<String, Any?> = emptyMap()
    ): String {
        return jsonObject {
            addProperty("ok", true)
            add("data", payload)
            if (details.isNotEmpty()) {
                add("details", GSON.toJsonTree(details))
            }
            if (warnings.isNotEmpty()) {
                add("warnings", GSON.toJsonTree(warnings))
            }
        }.toString()
    }

    protected fun okJsonString(payload: String): String = okJson(JsonPrimitive(payload))

    protected fun jsonObject(configure: JsonObject.() -> Unit): JsonObject =
        JsonObject().apply(configure)

    fun errJson(
        message: String?,
        code: McpErrorCode? = null,
        details: Map<String, Any?> = emptyMap(),
        warnings: List<String> = emptyList()
    ): String {
        val obj = JsonObject()
        obj.addProperty("ok", false)
        obj.addProperty("error", userVisibleMessage(message))
        if (code != null) {
            obj.addProperty("code", code.name)
        }
        if (details.isNotEmpty()) {
            obj.add("details", GSON.toJsonTree(details))
        }
        if (warnings.isNotEmpty()) {
            obj.add("warnings", GSON.toJsonTree(warnings))
        }
        return obj.toString()
    }

    protected fun invalidJson(message: String?, details: Map<String, Any?> = emptyMap()): String =
        errJson(message, McpErrorCode.INVALID_JSON, details)

    protected fun invalidReference(message: String?, details: Map<String, Any?> = emptyMap()): String =
        errJson(message, McpErrorCode.INVALID_REFERENCE, details)

    protected fun makeInputInvalid(message: String?, details: Map<String, Any?> = emptyMap()): String =
        errJson(message, McpErrorCode.MAKE_INPUT_INVALID, details)

    /**
     * Resolves [raw] — a tool `operation` selector received as a plain `String` — to the
     * matching constant of enum [E], case-insensitively and ignoring surrounding whitespace.
     * Returns `null` when no constant matches.
     *
     * Tool `operation` parameters are intentionally declared as `String` rather than the enum
     * type, with the enum resolved here. The MCP framework decodes typed parameters (see the
     * platform `CallableBridge`) *before* the tool body runs, so an unknown enum name there is
     * raised as a raw `kotlinx.serialization.SerializationException` during argument binding —
     * it never reaches [withMpsProject]/[toolFailure], so the caller gets an opaque stack trace
     * and the failure is logged as if it were an internal error. Decoding the value in the tool
     * body instead turns an unrecognised operation into an ordinary [unknownOperation] response
     * that names the valid values.
     *
     * Case-insensitive matching mirrors the framework's own `decodeEnumsCaseInsensitive`, so the
     * behaviour for *valid* values is identical to declaring the parameter as the enum.
     */
    protected inline fun <reified E : Enum<E>> resolveOperationOrNull(raw: String): E? {
        val needle = raw.trim()
        return enumValues<E>().firstOrNull { it.name.equals(needle, ignoreCase = true) }
    }

    /**
     * Builds the [McpErrorCode.INVALID_REQUEST] [errJson] for an `operation` value that
     * [resolveOperationOrNull] could not match, quoting the offending value and listing every
     * valid constant of [E] so the caller can correct the call.
     */
    protected inline fun <reified E : Enum<E>> unknownOperation(raw: String): String =
        errJson(
            "Unknown operation '$raw'. Valid operations: " +
                enumValues<E>().joinToString(", ") { it.name } + ".",
            McpErrorCode.INVALID_REQUEST,
        )

    /**
     * Maps a thrown exception to a stable MCP error response.
     *
     * Mapping policy — only the listed types receive a domain-specific code. Anything
     * else falls through to [McpErrorCode.INTERNAL_ERROR] and is logged with the full
     * stack trace. There is no automatic mapping from arbitrary exception classes to
     * [McpErrorCode.INVALID_REQUEST] / [McpErrorCode.NOT_FOUND] etc.: when a tool
     * implementation discovers a domain-specific failure, it must either throw the
     * matching [McpUserException] subclass or build the response by calling
     * [errJson]/[invalidJson]/[invalidReference]/[makeInputInvalid] directly.
     */
    protected fun toolFailure(activity: String, e: Throwable): String {
        rethrowIfCancellation(e)
        if (e is Error) {
            throw e
        }
        return when (e) {
            is McpUserException -> errJson(e.message, e.errorCode, e.errorDetails)
            is JsonSyntaxException -> invalidJson(e.message)
            else -> {
                logger.warn("Unexpected failure in MCP tool: $activity", e)
                errJson("Internal error while $activity", McpErrorCode.INTERNAL_ERROR)
            }
        }
    }

    protected fun rethrowIfCancellation(e: Throwable) {
        if (e is CancellationException) {
            throw e
        }
    }

    /**
     * Parses a string parameter that may be a JSON array, a JSON-encoded primitive string, or a
     * bare string into the list of string values it represents. A JSON array maps each element
     * to its string value; a JSON-encoded string (e.g. "\"Foo\"") unwraps to "Foo"; anything
     * else, including invalid JSON (common for persistent module/model references), is treated
     * as a single bare value. A blank value maps to an empty list. Lets list-typed MCP parameters
     * accept either a single value or an array without the framework rejecting a scalar during
     * JSON→Kotlin decode.
     */
    protected fun parseStringOrJsonArray(raw: String): List<String> {
        if (raw.isBlank()) return emptyList()
        return try {
            val elem = JsonParser.parseString(raw)
            when {
                elem.isJsonArray -> elem.asJsonArray.map { it.asString }
                elem.isJsonPrimitive && elem.asJsonPrimitive.isString -> listOf(elem.asString)
                else -> listOf(raw)
            }
        } catch (e: Exception) {
            rethrowIfCancellation(e)
            listOf(raw)
        }
    }

    /**
     * Nullable variant of [parseStringOrJsonArray] for optional list parameters whose absence
     * is semantically distinct from an empty list. Returns null when [raw] is null or blank,
     * otherwise the parsed values (which may be an empty list for an explicit "[]").
     */
    protected fun parseNullableStringOrJsonArray(raw: String?): List<String>? {
        if (raw.isNullOrBlank()) return null
        return parseStringOrJsonArray(raw)
    }

    /**
     * Runs [block]; on a non-cancellation, non-Error throwable returns the exception's message
     * (or `toString()`) as a warning string. Cancellation and [Error] propagate. Used by tool
     * methods that want to surface a secondary failure as a `warnings` payload entry rather than
     * abort the whole tool invocation.
     */
    protected inline fun warningMessageOrRethrow(block: () -> Unit): String? {
        return try {
            block()
            null
        } catch (e: Throwable) {
            rethrowIfCancellation(e)
            if (e is Error) throw e
            e.message ?: e.toString()
        }
    }

    protected inline fun <T : Any> tryCreateReference(block: () -> T?): T? {
        return try {
            block()
        } catch (e: Throwable) {
            rethrowIfCancellation(e)
            if (e is Error) throw e
            null
        }
    }

    protected fun reflectionFailureDetail(e: ReflectiveOperationException): String {
        val cause = if (e is java.lang.reflect.InvocationTargetException) e.cause ?: e else e
        rethrowIfCancellation(cause)
        val message = cause.message?.takeIf { it.isNotBlank() } ?: cause.javaClass.simpleName
        return "$message (${cause.javaClass.simpleName})"
    }

    /**
     * Deletes the given nodes, swallowing non-cancellation throwables. Intended for the rollback
     * arm of a save-failure branch: a delete that throws would propagate past
     * `executeShortCommandOnEdt` and bypass the structured `errJson` the caller is building.
     * Cancellation/Error propagate; ordinary throwables are logged.
     */
    protected fun safelyRollbackNodes(nodes: List<SNode>) {
        for (node in nodes) {
            // Capture the reference BEFORE delete(): a partial delete may detach the node, and
            // reading `.reference` on a detached SNode is not uniformly safe across SModel
            // implementations — it can itself throw and mask the original exception.
            val refForLog = try {
                node.reference.toString()
            } catch (e: Throwable) {
                rethrowIfCancellation(e)
                "<unknown>"
            }
            try {
                node.delete()
            } catch (e: Throwable) {
                rethrowIfCancellation(e)
                if (e is Error) throw e
                logger.warn("Rollback delete failed for node '$refForLog'", e)
            }
        }
    }

    /**
     * Saves [model] and marks the owning module as changed, then flushes the module descriptor.
     * Call this instead of bare [EditableSModel.save] from every node-mutation tool so that the
     * module-level dirty flag and descriptor stay consistent with the saved model content.
     */
    protected fun saveModelAndModule(model: EditableSModel) {
        val module = model.module as? AbstractModule
        module?.setChanged()
        model.save()
        module?.save()
    }

    /**
     * Persists [model] under the write command that created [createdNodes], rolling back the
     * in-memory state via [safelyRollbackNodes] if `save()` throws. Returns a pre-formatted
     * [errJson] on failure, or `null` on success.
     *
     * Save must stay inside the command boundary so the on-disk file matches the write lock
     * that created the nodes; a background save would race against further mutations.
     *
     * `EditableSModel.save()` is not guaranteed atomic across persistence implementations: a
     * mid-write I/O failure may leave the on-disk file partially written. The in-memory
     * rollback is best-effort and the returned error message tells the caller that on-disk
     * state may need a manual VCS reset.
     */
    protected fun saveOrRollback(
        model: EditableSModel,
        createdNodes: List<SNode>,
        modelReference: String,
    ): String? {
        return try {
            saveModelAndModule(model)
            null
        } catch (e: Throwable) {
            rethrowIfCancellation(e)
            if (e is Error) throw e
            // Log before rollback: the stack trace is the only diagnostic surface for a real
            // I/O failure (the returned errJson only carries the message).
            logger.warn("save() failed for model '$modelReference'", e)
            safelyRollbackNodes(createdNodes)
            errJson(
                "Failed to save model '$modelReference': ${e.message ?: e.javaClass.name}. " +
                        "On-disk state may be partially written; check VCS to restore a known-good baseline.",
                McpErrorCode.INTERNAL_ERROR,
            )
        }
    }

    private fun userVisibleMessage(message: String?): String =
        message?.takeIf { it.isNotBlank() } ?: "Unknown error"

    /**
     * Boilerplate for MCP tools: reports activity, resolves the active MPS project,
     * and invokes the block with it. Returns errJson("No MPS project available") if
     * the active IDEA project doesn't have a corresponding MPS project.
     */
    protected suspend inline fun withMpsProject(activity: String, block: (MPSProject) -> String): String {
        currentCoroutineContext().reportToolActivity(activity)
        val mpsProject = ProjectHelper.fromIdeaProject(currentCoroutineContext().project)
            ?: return errJson("No MPS project available", McpErrorCode.NOT_FOUND)
        return try {
            block(mpsProject)
        } catch (e: Throwable) {
            toolFailure(activity, e)
        }
    }

    /**
     * Result of resolving a module to a writable AbstractModule with a non-null descriptor.
     */
    protected sealed class AbstractModuleResolution {
        data class Ok(val module: AbstractModule, val descriptor: ModuleDescriptor) : AbstractModuleResolution()
        data class Err(
            val message: String,
            val code: McpErrorCode,
            val details: Map<String, Any?> = emptyMap(),
        ) : AbstractModuleResolution()
    }

    /**
     * Result of resolving a model reference to an [EditableSModel].
     */
    protected sealed class EditableModelResolution {
        data class Ok(val model: EditableSModel) : EditableModelResolution()
        data class Err(val errJson: String) : EditableModelResolution()
    }

    /**
     * Resolves the given model reference and validates that the resolved model is an
     * [EditableSModel] **belonging to the project that owns [repository]**. Accepts the persistent
     * form of an `SModelReference` (preferred) or the model's long/short name as a fallback —
     * mirrors [resolveModel]. Returns [EditableModelResolution.Ok] on success or
     * [EditableModelResolution.Err] (with a pre-formatted errJson) on any failure.
     *
     * The project-membership check is what keeps a write tool selected for one project from
     * mutating a model owned by a different open project: the shared module repository would
     * otherwise resolve the reference regardless of which project it lives in (see [isModuleInProject]).
     *
     * Use this from inside a model-access action (e.g. executeShortCommandOnEdt { ... }) so the
     * resolution and the subsequent mutations happen under the same lock.
     */
    protected fun resolveEditableModel(repository: SRepository, modelReference: String): EditableModelResolution {
        val model = resolveModel(repository, modelReference)
            ?: return EditableModelResolution.Err(errJson("Model '$modelReference' not found", McpErrorCode.NOT_FOUND))
        if (model !is EditableSModel) {
            return EditableModelResolution.Err(errJson("Model '$modelReference' is not editable", McpErrorCode.NOT_EDITABLE))
        }
        if (!isModuleInProject(repository, model)) {
            return EditableModelResolution.Err(crossProjectErr("Model '$modelReference'"))
        }
        return EditableModelResolution.Ok(model)
    }

    protected fun resolveEditableModel(mpsProject: MPSProject, modelReference: String): EditableModelResolution {
        val projectModel = resolveModel(mpsProject, modelReference)
        if (projectModel != null) {
            if (projectModel !is EditableSModel) {
                return EditableModelResolution.Err(errJson("Model '$modelReference' is not editable", McpErrorCode.NOT_EDITABLE))
            }
            return EditableModelResolution.Ok(projectModel)
        }

        val model = resolveModel(mpsProject.repository, modelReference)
            ?: return EditableModelResolution.Err(errJson("Model '$modelReference' not found", McpErrorCode.NOT_FOUND))
        if (model !is EditableSModel) {
            return EditableModelResolution.Err(errJson("Model '$modelReference' is not editable", McpErrorCode.NOT_EDITABLE))
        }
        if (!isModelInSelectedProject(mpsProject, model)) {
            return EditableModelResolution.Err(crossProjectErr("Model '$modelReference'"))
        }
        return EditableModelResolution.Ok(model)
    }

    /**
     * Result of resolving a node reference plus checking its containing model is editable.
     */
    protected sealed class EditableNodeResolution {
        data class Ok(val node: SNode, val model: EditableSModel) : EditableNodeResolution()
        data class Err(val errJson: String) : EditableNodeResolution()
    }

    /**
     * Resolves the given node reference and validates that the resolved node is in an
     * [EditableSModel]. The error message used when the node is missing is parameterized
     * via [missingMessageBuilder] so callers can describe the role of the node ("Parent
     * node ... not found", "Child node ... not found", etc.) without re-implementing the
     * whole resolve sequence.
     *
     * Use this from inside a model-access action (e.g. executeShortCommandOnEdt { ... }) so the
     * resolution and the subsequent mutations happen under the same lock.
     */
    protected fun resolveEditableNodeAndModel(
        repository: SRepository,
        nodeReference: String,
        missingMessageBuilder: (String) -> String = { "Node '$it' not found" },
        nonEditableMessage: String = "Model containing the node is not editable"
    ): EditableNodeResolution {
        val sNodeRef = resolveNodeReference(repository, nodeReference)
        val node = sNodeRef?.resolve(repository)
            ?: return EditableNodeResolution.Err(errJson(missingMessageBuilder(nodeReference), McpErrorCode.NOT_FOUND))
        val model = node.model
        if (model !is EditableSModel) {
            return EditableNodeResolution.Err(errJson(nonEditableMessage, McpErrorCode.NOT_EDITABLE))
        }
        if (!isModuleInProject(repository, model)) {
            return EditableNodeResolution.Err(crossProjectErr("Node '$nodeReference'"))
        }
        return EditableNodeResolution.Ok(node, model)
    }

    protected fun resolveEditableNodeAndModel(
        mpsProject: MPSProject,
        nodeReference: String,
        missingMessageBuilder: (String) -> String = { "Node '$it' not found" },
        nonEditableMessage: String = "Model containing the node is not editable"
    ): EditableNodeResolution {
        val repository = mpsProject.repository
        val projectNode = resolveNodeReference(mpsProject, nodeReference)?.resolve(repository)
        if (projectNode != null) {
            val model = projectNode.model
            if (model !is EditableSModel) {
                return EditableNodeResolution.Err(errJson(nonEditableMessage, McpErrorCode.NOT_EDITABLE))
            }
            return EditableNodeResolution.Ok(projectNode, model)
        }

        val sNodeRef = resolveNodeReference(repository, nodeReference)
        val node = sNodeRef?.resolve(repository)
            ?: return EditableNodeResolution.Err(errJson(missingMessageBuilder(nodeReference), McpErrorCode.NOT_FOUND))
        val model = node.model
        if (model !is EditableSModel) {
            return EditableNodeResolution.Err(errJson(nonEditableMessage, McpErrorCode.NOT_EDITABLE))
        }
        if (!isModelInSelectedProject(mpsProject, model)) {
            return EditableNodeResolution.Err(crossProjectErr("Node '$nodeReference'"))
        }
        return EditableNodeResolution.Ok(node, model)
    }

    protected fun resolveEditableConceptNode(mpsProject: MPSProject, conceptRef: String): EditableNodeResolution {
        val projectNode = resolveConceptNode(mpsProject, conceptRef)
        if (projectNode != null) {
            val model = projectNode.model
            if (model !is EditableSModel) {
                return EditableNodeResolution.Err(errJson("Model containing concept '$conceptRef' is not editable", McpErrorCode.NOT_EDITABLE))
            }
            return EditableNodeResolution.Ok(projectNode, model)
        }

        val node = resolveConceptNode(mpsProject.repository, conceptRef)
            ?: return EditableNodeResolution.Err(errJson("Concept '$conceptRef' not found", McpErrorCode.NOT_FOUND))
        val model = node.model
        if (model !is EditableSModel) {
            return EditableNodeResolution.Err(errJson("Model containing concept '$conceptRef' is not editable", McpErrorCode.NOT_EDITABLE))
        }
        if (!isModelInSelectedProject(mpsProject, model)) {
            return EditableNodeResolution.Err(crossProjectErr("Concept '$conceptRef'"))
        }
        return EditableNodeResolution.Ok(node, model)
    }

    /**
     * True if [model]'s owning module is part of the project that owns [repository]. A single MPS
     * instance shares one module repository across every open project, so the editable resolvers
     * must verify project membership explicitly: without it, a write tool selected for one project
     * (via `projectPath`) could resolve and mutate a node owned by a different open project.
     * Read-only/inspection tools deliberately do not apply this check — they may legitimately reach
     * into depended-upon libraries. When [repository] has no owning MPSProject (not a
     * [ProjectRepository]), the project cannot be identified and the check is skipped (returns true).
     */
    protected fun isModuleInProject(repository: SRepository, model: SModel): Boolean {
        val mpsProject = projectOf(repository) ?: return true
        val module = model.module ?: return false
        return isModuleInSelectedProject(mpsProject, module)
    }

    /** The [MPSProject] that owns [repository], or null when it is not a project repository. */
    private fun projectOf(repository: SRepository): MPSProject? =
        (repository as? ProjectRepository)?.project as? MPSProject

    protected fun isModuleInSelectedProject(mpsProject: MPSProject, module: SModule): Boolean =
        mpsProject.projectModulesWithGenerators.any { it.moduleReference == module.moduleReference }

    protected fun isModelInSelectedProject(mpsProject: MPSProject, model: SModel): Boolean =
        model.module?.let { isModuleInSelectedProject(mpsProject, it) } ?: false

    protected fun isModuleInAnotherOpenProject(mpsProject: MPSProject, module: SModule): Boolean {
        if (isModuleInSelectedProject(mpsProject, module)) return false
        val moduleReference = module.moduleReference
        return ProjectManager.getInstance().openProjects
            .asSequence()
            .mapNotNull { ProjectHelper.fromIdeaProject(it) }
            .filter { it !== mpsProject }
            .any { openProject ->
                openProject.projectModulesWithGenerators.any { it.moduleReference == moduleReference }
            }
    }

    protected fun isModelInAnotherOpenProject(mpsProject: MPSProject, model: SModel): Boolean =
        model.module?.let { isModuleInAnotherOpenProject(mpsProject, it) } ?: false

    protected fun isNodeInAnotherOpenProject(mpsProject: MPSProject, node: SNode): Boolean =
        node.model?.let { isModelInAnotherOpenProject(mpsProject, it) } ?: false

    protected fun isConceptFromAnotherOpenProject(mpsProject: MPSProject, concept: SAbstractConcept): Boolean =
        concept.sourceNode?.resolve(mpsProject.repository)?.let { isNodeInAnotherOpenProject(mpsProject, it) } ?: false

    /**
     * Per-call cache of "which open MPS project owns this element", used to add the foreign-project
     * markers (`containingProject` / `editableFromCurrentProject`) to returned JSON. Resolving
     * ownership rebuilds [MPSProject.getProjectModulesWithGenerators] (a read action that allocates a
     * fresh list and expands language-owned generators), so resolving it per node/concept/reference
     * would be O(elements x project-modules). This cache resolves the current project's module set
     * once and memoizes each module/concept lookup.
     *
     * LIFETIME — create one at the start of a single serialization and discard it when that
     * serialization returns; NEVER store it in a field, companion, or anything that outlives the call.
     * Every serialization runs inside a single model-access action held for the whole call:
     * [executeShortReadOnEdt] / [executeBackgroundRead] take a read lock, [executeShortCommandOnEdt]
     * takes a command/write lock. Registering or unregistering a module in the repository requires the
     * model-access WRITE lock, so while our read/command action is held no project's module set can
     * change, and a project cannot finish opening or closing (its modules cannot be (un)registered).
     * The memoized snapshot is therefore consistent for the call's lifetime — on the EDT or on a
     * background read thread alike; the guarantee comes from the lock, not from running on the EDT. A
     * later project open/close is observed by the next tool call, which builds a fresh cache — there is
     * nothing to invalidate because the cache never outlives the locked window.
     */
    protected class ProjectMembershipCache(val currentProject: MPSProject?) {
        // Current project's own modules (+ owned generators), resolved once: membership is then a set
        // lookup instead of rebuilding projectModulesWithGenerators for every element.
        private val currentModuleRefs: Set<SModuleReference>? =
            currentProject?.projectModulesWithGenerators?.mapTo(HashSet()) { it.moduleReference }

        // Both maps store null values ("computed, owned by no open project"), so probe with containsKey
        // to distinguish "not yet computed" from "computed as none" (getOrPut would recompute on null).
        private val moduleOwner = HashMap<SModuleReference, MPSProject?>()
        private val conceptOwner = HashMap<SAbstractConcept, MPSProject?>()

        fun ownerOf(module: SModule): MPSProject? {
            val ref = module.moduleReference
            if (currentModuleRefs != null && ref in currentModuleRefs) return currentProject
            if (moduleOwner.containsKey(ref)) return moduleOwner[ref]
            val owner = ProjectManager.getInstance().openProjects
                .asSequence()
                .mapNotNull { ProjectHelper.fromIdeaProject(it) }
                .firstOrNull { openProject -> openProject.projectModulesWithGenerators.any { it.moduleReference == ref } }
            moduleOwner[ref] = owner
            return owner
        }

        fun ownerOf(model: SModel): MPSProject? = model.module?.let { ownerOf(it) }

        fun ownerOf(node: SNode): MPSProject? = node.model?.let { ownerOf(it) }

        fun ownerOfLanguage(repository: SRepository, language: SLanguage): MPSProject? =
            language.sourceModuleReference.resolve(repository)?.let { ownerOf(it) }

        fun ownerOfConcept(repository: SRepository, concept: SAbstractConcept): MPSProject? {
            if (conceptOwner.containsKey(concept)) return conceptOwner[concept]
            val owner = concept.sourceNode?.resolve(repository)?.let { ownerOf(it) }
                ?: ownerOfLanguage(repository, concept.language)
            conceptOwner[concept] = owner
            return owner
        }
    }

    private fun projectReferenceJsonObject(project: MPSProject): JsonObject {
        val obj = JsonObject()
        obj.addProperty("name", project.name)
        normalizedBasePath(project)?.let { obj.addProperty("mpsProjectBaseDirectory", it) }
        return obj
    }

    /**
     * Absolute, normalized project base directory as a string, or null when unavailable or malformed.
     * Matches the derivation used by `mps_mcp_list_open_projects` so the value can be passed straight
     * back as the host `projectPath` selector for the foreign project.
     */
    private fun normalizedBasePath(project: MPSProject): String? {
        val base = project.project.basePath ?: return null
        return try {
            Paths.get(base).toAbsolutePath().normalize().toString()
        } catch (e: Throwable) {
            rethrowIfCancellation(e)
            null
        }
    }

    private fun foreignProjectField(prefix: String, name: String): String =
        if (prefix.isEmpty()) name else prefix + name.replaceFirstChar { it.uppercaseChar() }

    /**
     * Adds the foreign-project markers to [obj] when [containingProject] is a *different* open project
     * than [currentProject]: emits `<prefix>ContainingProject` plus `<prefix>EditableFromCurrentProject`
     * (always `false`). No-op when there is no current project, no containing project, or both denote
     * the same open project — so for a same-project or read-only-library element no marker is added and
     * absence of `editableFromCurrentProject` does NOT imply editable (use the element's `readOnly`).
     *
     * The typed overloads below resolve [containingProject] from a module/model/node/language/concept
     * and dispatch by that element parameter's static type, so always pass a typed value, never a bare
     * `null` literal. Pass a [ProjectMembershipCache] to share ownership lookups across one serialization
     * (see [ProjectMembershipCache] for the mandatory per-call lifetime); omit it and each call resolves
     * against a fresh single-use cache.
     */
    protected fun addContainingProjectIfForeign(
        obj: JsonObject,
        currentProject: MPSProject?,
        containingProject: MPSProject?,
        prefix: String = ""
    ) {
        if (currentProject == null || containingProject == null || sameOpenProject(containingProject, currentProject)) return
        obj.add(foreignProjectField(prefix, "containingProject"), projectReferenceJsonObject(containingProject))
        obj.addProperty(foreignProjectField(prefix, "editableFromCurrentProject"), false)
    }

    private fun sameOpenProject(a: MPSProject, b: MPSProject): Boolean {
        if (a === b || a.project === b.project) return true
        val aBase = a.project.basePath?.let { Paths.get(it).toAbsolutePath().normalize() }
        val bBase = b.project.basePath?.let { Paths.get(it).toAbsolutePath().normalize() }
        return aBase != null && aBase == bBase
    }

    protected fun addContainingProjectIfForeign(
        obj: JsonObject,
        currentProject: MPSProject?,
        module: SModule?,
        prefix: String = "",
        cache: ProjectMembershipCache? = null
    ) {
        if (currentProject == null || module == null) return
        val c = cache ?: ProjectMembershipCache(currentProject)
        addContainingProjectIfForeign(obj, c.currentProject, c.ownerOf(module), prefix)
    }

    protected fun addContainingProjectIfForeign(
        obj: JsonObject,
        currentProject: MPSProject?,
        model: SModel?,
        prefix: String = "",
        cache: ProjectMembershipCache? = null
    ) {
        if (currentProject == null || model == null) return
        val c = cache ?: ProjectMembershipCache(currentProject)
        addContainingProjectIfForeign(obj, c.currentProject, c.ownerOf(model), prefix)
    }

    protected fun addContainingProjectIfForeign(
        obj: JsonObject,
        currentProject: MPSProject?,
        node: SNode?,
        prefix: String = "",
        cache: ProjectMembershipCache? = null
    ) {
        if (currentProject == null || node == null) return
        val c = cache ?: ProjectMembershipCache(currentProject)
        addContainingProjectIfForeign(obj, c.currentProject, c.ownerOf(node), prefix)
    }

    protected fun addContainingProjectIfForeign(
        obj: JsonObject,
        currentProject: MPSProject?,
        language: SLanguage?,
        repository: SRepository,
        prefix: String = "",
        cache: ProjectMembershipCache? = null
    ) {
        if (currentProject == null || language == null) return
        val c = cache ?: ProjectMembershipCache(currentProject)
        addContainingProjectIfForeign(obj, c.currentProject, c.ownerOfLanguage(repository, language), prefix)
    }

    protected fun addContainingProjectIfForeign(
        obj: JsonObject,
        currentProject: MPSProject?,
        concept: SAbstractConcept?,
        repository: SRepository,
        prefix: String = "",
        cache: ProjectMembershipCache? = null
    ) {
        if (currentProject == null || concept == null) return
        val c = cache ?: ProjectMembershipCache(currentProject)
        addContainingProjectIfForeign(obj, c.currentProject, c.ownerOfConcept(repository, concept), prefix)
    }

    /**
     * Error for a write target that resolved to a module outside the selected project. Bare-name
     * lookups go through the shared (global) repository, so a name that collides with another open
     * project's model can resolve there; the message steers the caller to the persistent reference,
     * which carries the module id and is unambiguous.
     */
    protected fun crossProjectErr(what: String): String =
        errJson(
            "$what resolves to a module that is not part of the project selected by projectPath. " +
                "The MCP write tools refuse to modify a different open project. If the target really is " +
                "in this project, pass its persistent reference (r:.../i:... form) rather than a bare name.",
            McpErrorCode.INVALID_REQUEST,
        )

    /**
     * Result of resolving a concept reference and validating it is a rootable [SConcept].
     */
    protected sealed class RootableConceptResolution {
        data class Ok(val concept: SConcept) : RootableConceptResolution()
        data class Err(val errJson: String) : RootableConceptResolution()
    }

    /**
     * Resolves a concept reference (or fully qualified name) and validates that the
     * result is a rootable [SConcept]. Either [conceptName] or [conceptReference]
     * (or both) must be non-empty; [conceptReference] is tried first. [label] is
     * appended to error messages so batch callers can identify which entry failed
     * (e.g. " [3]").
     */
    protected fun resolveRootableConcept(
        repository: SRepository,
        conceptName: String?,
        conceptReference: String?,
        label: String = ""
    ): RootableConceptResolution {
        if (conceptName.isNullOrEmpty() && conceptReference.isNullOrEmpty()) {
            return RootableConceptResolution.Err(
                errJson("Either 'concept' (qualifiedName) or 'conceptReference' must be provided$label", McpErrorCode.INVALID_REQUEST)
            )
        }
        val sConcept = (if (!conceptReference.isNullOrEmpty()) resolveConcept(repository, conceptReference) else null)
            ?: (if (!conceptName.isNullOrEmpty()) resolveConcept(repository, conceptName) else null)
            ?: return RootableConceptResolution.Err(
                errJson("Concept not found$label: concept='$conceptName', conceptReference='$conceptReference'", McpErrorCode.NOT_FOUND)
            )
        if (sConcept !is SConcept || !isRootable(sConcept, repository)) {
            return RootableConceptResolution.Err(
                errJson("Concept '${sConcept.name}' is not a rootable concept$label", McpErrorCode.INVALID_REQUEST)
            )
        }
        return RootableConceptResolution.Ok(sConcept)
    }

    protected fun resolveRootableConcept(
        mpsProject: MPSProject,
        conceptName: String?,
        conceptReference: String?,
        label: String = ""
    ): RootableConceptResolution {
        if (conceptName.isNullOrEmpty() && conceptReference.isNullOrEmpty()) {
            return RootableConceptResolution.Err(
                errJson("Either 'concept' (qualifiedName) or 'conceptReference' must be provided$label", McpErrorCode.INVALID_REQUEST)
            )
        }
        val repository = mpsProject.repository
        val sConcept = (if (!conceptReference.isNullOrEmpty()) resolveConceptPreferringProject(mpsProject, conceptReference) else null)
            ?: (if (!conceptName.isNullOrEmpty()) resolveConceptPreferringProject(mpsProject, conceptName) else null)
            ?: return RootableConceptResolution.Err(
                rootableConceptNotFound(mpsProject, conceptName, conceptReference, label)
            )
        if (sConcept !is SConcept || !isRootable(sConcept, repository)) {
            return RootableConceptResolution.Err(
                errJson("Concept '${sConcept.name}' is not a rootable concept$label", McpErrorCode.INVALID_REQUEST)
            )
        }
        return RootableConceptResolution.Ok(sConcept)
    }

    private fun rootableConceptNotFound(
        mpsProject: MPSProject,
        conceptName: String?,
        conceptReference: String?,
        label: String
    ): String {
        val foreignConcept = (if (!conceptReference.isNullOrEmpty()) resolveConcept(mpsProject.repository, conceptReference) else null)
            ?: (if (!conceptName.isNullOrEmpty()) resolveConcept(mpsProject.repository, conceptName) else null)
        return if (foreignConcept != null && isConceptFromAnotherOpenProject(mpsProject, foreignConcept)) {
            crossProjectErr("Concept '${conceptReference ?: conceptName}'")
        }
        else {
            errJson("Concept not found$label: concept='$conceptName', conceptReference='$conceptReference'", McpErrorCode.NOT_FOUND)
        }
    }

    /**
     * Returns true if any of the given used-DevKit references resolves to a [DevKit]
     * for which [predicate] holds. Skips refs that don't resolve or aren't DevKits.
     */
    protected fun isProvidedByUsedDevkit(
        devkitRefs: Iterable<SModuleReference>,
        repository: SRepository,
        predicate: (DevKit) -> Boolean
    ): Boolean = devkitRefs.asSequence()
        .mapNotNull { it.resolve(repository) as? DevKit }
        .any(predicate)

    /**
     * Resolves the given module name/reference and validates that it is an [AbstractModule]
     * with a non-null descriptor. Optionally also enforces that the module is writable.
     */
    protected fun resolveAbstractModuleWithDescriptor(
        mpsProject: MPSProject,
        moduleName: String,
        projectOnly: Boolean = true,
        requireWritable: Boolean = false
    ): AbstractModuleResolution {
        val module = resolveModule(mpsProject, moduleName, projectOnly)
            ?: return AbstractModuleResolution.Err("Module $moduleName not found", McpErrorCode.NOT_FOUND)
        val abstractModule = module as? AbstractModule
            ?: return AbstractModuleResolution.Err(
                "Module $moduleName is not an AbstractModule",
                McpErrorCode.INVALID_REQUEST,
            )
        if (requireWritable && abstractModule.isReadOnly) {
            return AbstractModuleResolution.Err("Module $moduleName is read-only", McpErrorCode.NOT_EDITABLE)
        }
        val descriptor = abstractModule.moduleDescriptor
            ?: return AbstractModuleResolution.Err(
                "Module $moduleName has no descriptor",
                McpErrorCode.INVALID_REQUEST,
            )
        return AbstractModuleResolution.Ok(abstractModule, descriptor)
    }

    /**
     * Reads the set of registered languages under the LanguageRegistry's read lock.
     * This serves as a lightweight synchronization point: it ensures the caller
     * observes the same registry state that was established by a preceding
     * afterLanguagesLoaded notification (which holds the write lock while updating).
     */
    protected fun refreshRegistries(repository: SRepository) {
        LanguageRegistry.getInstance(repository).allLanguages
    }

    protected fun finalizeResult(json: String): String {
        return if (json.length > 20_000) {
            saveToTempFileResult(json)
        } else {
            okJson(json)
        }
    }

    protected fun saveToTempFileResult(json: String): String {
        return try {
            val tempFile = saveToTempFile(json)
            okJsonString(tempFile.absolutePath)
        } catch (e: Exception) {
            logger.warn("Failed to save MCP tool result to a temporary file", e)
            errJson("Failed to save result to a temporary file: ${e.message}")
        }
    }

    /**
     * Like [saveToTempFileResult] but attaches [details] to the ok envelope, sharing the same
     * temp-file IO error handling so a write failure degrades to a clean errJson on both paths
     * (a caller that inlined `saveToTempFile` for the details case would leak the raw IO exception
     * as an INTERNAL_ERROR and lose the details). Falls back to the plain form when [details] is empty.
     */
    protected fun saveToTempFileResult(json: String, details: Map<String, Any?>): String {
        if (details.isEmpty()) return saveToTempFileResult(json)
        return try {
            val tempFile = saveToTempFile(json)
            okJson(JsonPrimitive(tempFile.absolutePath), details = details)
        } catch (e: Exception) {
            rethrowIfCancellation(e)
            logger.warn("Failed to save MCP tool result to a temporary file", e)
            errJson("Failed to save result to a temporary file: ${e.message}")
        }
    }

    class AssignabilityException(
        val jsonPath: String,
        val actualConcept: String,
        val expectedConcepts: List<String>,
        val parentConcept: String,
        val role: String
    ) : McpUserException(
        McpErrorCode.INVALID_REFERENCE,
        "Concept assignability error at JSON path '$jsonPath':\n" +
                " - Actual concept: '$actualConcept'\n" +
                " - Expected concept(s): ${expectedConcepts.joinToString(", ") { "'$it'" }}\n" +
                " - Parent concept: '$parentConcept'\n" +
                " - Role: '$role'"
    )

    fun parseJson(jsonString: String): JsonObject {
        return parseJson(jsonString, JsonObject::class.java)
    }

    fun <T> parseJson(jsonString: String, type: java.lang.reflect.Type): T {
        if (jsonString.isBlank()) {
            throw McpInvalidRequestException("JSON string is empty or blank")
        }
        try {
            return GSON.fromJson(jsonString, type)
                ?: throw McpInvalidRequestException("Failed to parse JSON")
        } catch (e: JsonSyntaxException) {
            val message = e.message ?: "Invalid JSON syntax"
            // EOF / unterminated input is almost always an unbalanced brace/bracket, not truncation.
            // NOTE: this keys on Gson's (English) JsonSyntaxException message text ("End of input" /
            // "Unterminated ..."). Gson messages are not localized today, so this is safe; if a future
            // Gson reword changes them the hint simply stops appearing (no behavior break). The unit test
            // parses real malformed JSON so such a reword fails the test rather than silently
            // disabling the hint.
            val looksTruncated = message.contains("End of input", ignoreCase = true) ||
                                 message.contains("Unterminated", ignoreCase = true)
            val hint = if (looksTruncated) {
                "\n\nThis usually means an unbalanced '{'/'[' — verify every brace/bracket is closed. " +
                "For large blueprints, pass an absolute temp-file path instead of inline JSON " +
                "(see the mps-node-editing skill)."
            } else ""
            val regex = "at line (\\d+) column (\\d+)".toRegex()
            val matchResult = regex.find(message)
            if (matchResult != null) {
                val line = matchResult.groupValues[1].toInt()
                val column = matchResult.groupValues[2].toInt()
                val excerpt = getJsonExcerpt(jsonString, line, column)
                throw McpInvalidRequestException("$message\n\n$excerpt$hint")
            }
            throw McpInvalidRequestException("$message$hint")
        }
    }

    private fun getJsonExcerpt(json: String, line: Int, column: Int): String {
        val lines = json.lines()
        val result = StringBuilder()
        val startLine = (line - 3).coerceAtLeast(0)
        val endLine = (line + 2).coerceAtMost(lines.size - 1)

        for (i in startLine..endLine) {
            val currentLine = lines[i]
            val lineNumber = i + 1
            val prefix = if (lineNumber == line) "-> " else "   "
            result.append(String.format("%s%4d | %s\n", prefix, lineNumber, currentLine))
            if (lineNumber == line) {
                result.append("          ") // 10 spaces to match "   XXXX | " (3 + 4 + 3)
                for (j in 0 until (column - 1)) {
                    if (j < currentLine.length && currentLine[j] == '\t') {
                        result.append("\t")
                    } else {
                        result.append(" ")
                    }
                }
                result.append("^\n")
            }
        }
        return result.toString()
    }

    protected fun namedReferenceJsonObject(name: String, reference: String): JsonObject {
        val obj = JsonObject()
        obj.addProperty("name", name)
        obj.addProperty("reference", reference)
        return obj
    }

    protected fun moduleReferenceJsonObject(ref: SModuleReference): JsonObject =
        namedReferenceJsonObject(ref.moduleName ?: "", PersistenceFacade.getInstance().asString(ref))

    protected fun moduleReferenceJsonObject(ref: SModuleReference, currentProject: MPSProject?, cache: ProjectMembershipCache? = null): JsonObject =
        moduleReferenceJsonObject(ref).also {
            addContainingProjectIfForeign(it, currentProject, currentProject?.let { project -> ref.resolve(project.repository) }, cache = cache)
        }

    protected fun modelReferenceJsonObject(ref: SModelReference): JsonObject =
        namedReferenceJsonObject(ref.modelName, PersistenceFacade.getInstance().asString(ref))

    protected fun modelReferenceJsonObject(ref: SModelReference, currentProject: MPSProject?, cache: ProjectMembershipCache? = null): JsonObject =
        modelReferenceJsonObject(ref).also {
            addContainingProjectIfForeign(it, currentProject, currentProject?.let { project -> ref.resolve(project.repository) }, cache = cache)
        }

    protected fun languageReferenceJsonObject(language: SLanguage, currentProject: MPSProject?, cache: ProjectMembershipCache? = null): JsonObject =
        namedReferenceJsonObject(language.qualifiedName, PersistenceFacade.getInstance().asString(language)).also {
            currentProject?.let { project -> addContainingProjectIfForeign(it, project, language, project.repository, cache = cache) }
        }

    protected fun <T> namedReferenceJsonArray(
        items: Iterable<T>,
        itemName: (T) -> String,
        itemReference: (T) -> String,
        configure: (JsonObject.(T) -> Unit)? = null
    ): JsonArray {
        val result = JsonArray()
        for (item in items) {
            val obj = namedReferenceJsonObject(itemName(item), itemReference(item))
            configure?.invoke(obj, item)
            result.add(obj)
        }
        return result
    }

    private fun devkitExtendedDevkitsJsonArray(descriptor: DevkitDescriptor, currentProject: MPSProject): JsonArray =
        namedReferenceJsonArray(
            items = descriptor.extendedDevkits,
            itemName = { it.moduleName ?: "" },
            itemReference = { PersistenceFacade.getInstance().asString(it) }
        ) {
            addContainingProjectIfForeign(this, currentProject, it.resolve(currentProject.repository))
        }

    private fun devkitExportedLanguagesJsonArray(descriptor: DevkitDescriptor, currentProject: MPSProject): JsonArray =
        namedReferenceJsonArray(
            items = descriptor.exportedLanguages,
            itemName = { it.moduleName ?: "" },
            itemReference = { PersistenceFacade.getInstance().asString(it) }
        ) {
            addContainingProjectIfForeign(this, currentProject, it.resolve(currentProject.repository) as? Language)
        }

    private fun devkitExportedSolutionsJsonArray(descriptor: DevkitDescriptor, currentProject: MPSProject): JsonArray =
        namedReferenceJsonArray(
            items = descriptor.exportedSolutions,
            itemName = { it.moduleName ?: "" },
            itemReference = { PersistenceFacade.getInstance().asString(it) }
        ) {
            addContainingProjectIfForeign(this, currentProject, it.resolve(currentProject.repository))
        }

    private fun associatedGenPlanJsonObject(plan: SModelReference, currentProject: MPSProject): JsonObject =
        modelReferenceJsonObject(plan, currentProject)

    protected fun nodeInfoJsonObject(n: SNode, currentProject: MPSProject? = null, cache: ProjectMembershipCache? = null): JsonObject {
        val name = n.name ?: n.presentation
        val concept = n.concept.name
        val conceptReference = PersistenceFacade.getInstance().asString(n.concept)
        val declarationNode = n.concept.sourceNode?.resolve(n.model?.repository)
        val conceptDoc = getDoc(declarationNode)
        val conceptDeprecated = getDeprecationInfo(declarationNode)
        val reference = PersistenceFacade.getInstance().asString(n.reference)
        val modelReference = n.model?.let { PersistenceFacade.getInstance().asString(it.reference) } ?: ""
        val moduleReference = n.model?.module?.let { PersistenceFacade.getInstance().asString(it.moduleReference) } ?: ""
        val virtualFolder = n.getProperty(SNodeUtil.property_BaseConcept_virtualPackage) ?: ""
        val parentReference = n.parent?.let { PersistenceFacade.getInstance().asString(it.reference) } ?: ""
        val rootReference = PersistenceFacade.getInstance().asString(n.containingRoot.reference)
        val isRoot = n.parent == null

        val obj = JsonObject()
        obj.addProperty("name", name)
        obj.addProperty("concept", concept)
        obj.addProperty("conceptDoc", conceptDoc)
        obj.addProperty("conceptDeprecated", conceptDeprecated)
        obj.addProperty("conceptReference", conceptReference)
        obj.addProperty("reference", reference)
        obj.addProperty("parentReference", parentReference)
        obj.addProperty("rootReference", rootReference)
        if (!isRoot) {
            // Spares search callers (FIND_INSTANCES/FIND_USAGES) a follow-up GET_ROOT call just
            // to learn which root a hit lives in. Omitted for roots, where it would equal "name".
            obj.addProperty("rootName", n.containingRoot.let { it.name ?: it.presentation })
        }
        obj.addProperty("modelReference", modelReference)
        obj.addProperty("moduleReference", moduleReference)
        obj.addProperty("virtualFolder", virtualFolder)
        obj.addProperty("isRoot", isRoot)
        obj.addProperty("present", true)
        val c = cache ?: ProjectMembershipCache(currentProject)
        addContainingProjectIfForeign(obj, currentProject, n, cache = c)
        n.model?.repository?.let { addContainingProjectIfForeign(obj, currentProject, n.concept, it, "concept", c) }
        return obj
    }

    protected fun nodeInfoJson(n: SNode, currentProject: MPSProject? = null, cache: ProjectMembershipCache? = null): String {
        return nodeInfoJsonObject(n, currentProject, cache).toString()
    }

    /**
     * [nodeInfoJsonObject] plus an `index` property giving the node's 0-based position within its
     * containment role. Lets callers see where a node actually landed after an insert or move —
     * in particular when an out-of-range `position` was clamped to an append. The `index` is
     * omitted for nodes with no parent/containment (e.g. roots).
     */
    protected fun nodeInfoJsonObjectWithIndex(n: SNode, currentProject: MPSProject? = null, cache: ProjectMembershipCache? = null): JsonObject =
        nodeInfoJsonObject(n, currentProject, cache).also { info ->
            val containment = n.containmentLink
            val parentNode = n.parent
            if (containment != null && parentNode != null) {
                info.addProperty("index", parentNode.getChildren(containment).toList().indexOf(n))
            }
        }

    protected fun nodeHierarchyToJson(node: SNode, deep: Boolean, currentProject: MPSProject? = null, cache: ProjectMembershipCache? = null): String {
        return nodeHierarchyJsonObject(node, deep, currentProject, cache).toString()
    }

    protected fun nodeHierarchyJsonObject(node: SNode, deep: Boolean, currentProject: MPSProject? = null, cache: ProjectMembershipCache? = null): JsonObject {
        val repository = node.model?.repository
        val c = cache ?: ProjectMembershipCache(currentProject)
        val obj = JsonObject()
        val declarationNode = node.concept.sourceNode?.resolve(repository)
        obj.addProperty("name", node.name ?: node.presentation)
        obj.addProperty("concept", node.concept.name)
        addDocAndDeprecated(obj, getDoc(declarationNode), getDeprecationInfo(declarationNode))
        obj.addProperty("conceptReference", PersistenceFacade.getInstance().asString(node.concept))
        obj.addProperty("reference", PersistenceFacade.getInstance().asString(node.reference))
        addContainingProjectIfForeign(obj, currentProject, node, cache = c)
        repository?.let { addContainingProjectIfForeign(obj, currentProject, node.concept, it, "concept", c) }

        val properties = JsonArray()
        for (prop in node.concept.properties) {
            val value = SNodeAccessUtil.getPropertyValue(node, prop)?.let { prop.type.toString(it) }
            if (value.isNullOrEmpty()) continue
            val propDeclarationNode = prop.sourceNode?.resolve(repository)
            val propObj = JsonObject()
            propObj.addProperty("name", prop.name)
            propObj.addProperty("type", getPropertyType(prop))
            addDocAndDeprecated(propObj, getDoc(propDeclarationNode), getDeprecationInfo(propDeclarationNode))
            propObj.addProperty("value", value)
            properties.add(propObj)
        }
        obj.add("properties", properties)

        val references = JsonArray()
        for (ref in node.references) {
            val link = ref.link
            val refObj = referenceLinkJsonObject(link, repository, includeDeprecated = true, currentProject = currentProject, cache = c)
            val targetNode = ref.targetNode
            if (targetNode != null) {
                refObj.addProperty("target", targetNode.name ?: targetNode.presentation)
                refObj.addProperty("targetReference", PersistenceFacade.getInstance().asString(targetNode.reference))
                addContainingProjectIfForeign(refObj, currentProject, targetNode, "target", c)
            }
            else {
                refObj.add("target", JsonNull.INSTANCE)
                refObj.addProperty("targetReference", PersistenceFacade.getInstance().asString(ref.targetNodeReference))
            }
            references.add(refObj)
        }
        obj.add("references", references)

        val children = JsonArray()
        val childrenByRole = node.children.groupBy { it.containmentLink }
        for (link in node.concept.containmentLinks) {
            val childrenInRole = childrenByRole[link] ?: emptyList()
            if (childrenInRole.isEmpty() && link.isOptional) continue

            val childRole = containmentLinkInfoJsonObject(link, repository, includeDeprecated = true, currentProject = currentProject, cache = c)
            if (deep) {
                val nodes = JsonArray()
                for (child in childrenInRole) {
                    nodes.add(nodeHierarchyJsonObject(child, deep, currentProject, c))
                }
                childRole.add("nodes", nodes)
            }
            else {
                val childSummaries = JsonArray()
                for (child in childrenInRole) {
                    val childObj = JsonObject()
                    childObj.addProperty("name", child.name ?: child.presentation)
                    childObj.addProperty("reference", PersistenceFacade.getInstance().asString(child.reference))
                    addContainingProjectIfForeign(childObj, currentProject, child, cache = c)
                    childSummaries.add(childObj)
                }
                childRole.add("children", childSummaries)
            }
            children.add(childRole)
        }
        obj.add("children", children)
        return obj
    }

    private fun getPropertyType(prop: SProperty): String {
        val type = prop.type
        return if (type is SEnumeration) {
            "enum:${type.name}"
        } else {
            type.toString()
        }
    }

    private data class PropertyState(
        val value: String?,
        val isEmptyEnum: Boolean,
        val isInvalid: Boolean,
    )

    /**
     * The display value of [prop] on [node] — the same string `print_node` shows — with an enum-typed
     * property resolved to its literal *name* (not the stored literal id). Returns `null` when the
     * property has no value. Shared so callers (e.g. the editor caret's feature value) report property
     * values consistently with the node-hierarchy printout.
     */
    protected fun propertyDisplayValue(node: SNode, prop: SProperty): String? {
        val rawValue = SNodeAccessUtil.getPropertyValue(node, prop)
        return if (prop.type is SEnumeration && rawValue is SEnumerationLiteral) {
            rawValue.getName()
        } else {
            rawValue?.let { prop.type.toString(it) }
        }
    }

    private fun getPropertyState(node: SNode, prop: SProperty): PropertyState {
        val rawValue = SNodeAccessUtil.getPropertyValue(node, prop)
        val isEnum = prop.type is SEnumeration
        val value = propertyDisplayValue(node, prop)
        val hasValue = !value.isNullOrEmpty()
        val isEmptyEnum = isEnum && rawValue !is SEnumerationLiteral
        val isInvalid = hasValue && !prop.isValid(value)
        return PropertyState(value, isEmptyEnum, isInvalid)
    }

    protected fun getCardinality(link: SContainmentLink): String {
        return if (link.isMultiple) {
            if (link.isOptional) "0..n" else "1..n"
        } else {
            if (link.isOptional) "0..1" else "1"
        }
    }

    protected fun getCardinality(link: SReferenceLink): String {
        return if (link.isOptional) "0..1" else "1"
    }

    /**
     * Classifies a concept feature into `"property"` / `"reference"` / `"child"`, or `""` for anything
     * else. Shared so every feature-kind dispatch (e.g. the editor caret's feature) uses one mapping.
     */
    protected fun featureKind(feature: SConceptFeature): String = when (feature) {
        is SProperty -> "property"
        is SReferenceLink -> "reference"
        is SContainmentLink -> "child"
        else -> ""
    }

    protected fun addDocAndDeprecated(obj: JsonObject, doc: String, deprecated: String) {
        obj.addProperty("doc", doc)
        obj.addProperty("deprecated", deprecated)
    }

    protected fun structureQualifiedName(concept: SAbstractConcept): String {
        return concept.language.qualifiedName + ".structure." + concept.name
    }

    private fun problemJsonObject(severity: MessageStatus, message: String): JsonObject {
        val obj = JsonObject()
        obj.addProperty("severity", problemSeverity(severity))
        obj.addProperty("message", message)
        return obj
    }

    /**
     * Enriched variant of [problemJsonObject] that appends a `quickFixes` array when [item] carries
     * attached quick-fixes and [repo] is available (the model branch and synthetic MCP problems keep
     * the plain form). The key is omitted when empty, to keep reports compact. Each entry mirrors a
     * listing from `mps_mcp_list_node_intentions` — `id` (quick-fix runtime-class FQN, always present),
     * `description`, `autoApplicable` — and is applied via `mps_mcp_apply_intention`.
     */
    private fun problemJsonObject(item: NodeReportItem, repo: SRepository?): JsonObject {
        val obj = problemJsonObject(item.severity, item.message)
        if (repo != null) {
            val fixes = quickFixesJsonArray(item, repo)
            if (fixes.size() > 0) {
                obj.add("quickFixes", fixes)
            }
        }
        return obj
    }

    private fun quickFixesJsonArray(item: NodeReportItem, repo: SRepository): JsonArray {
        val arr = JsonArray()
        for (qf in quickFixInfos(item, repo)) {
            val o = JsonObject()
            o.addProperty("id", qf.id)
            o.addProperty("description", qf.description)
            o.addProperty("autoApplicable", qf.autoApplicable)
            arr.add(o)
        }
        return arr
    }

    private fun errorProblemJsonObject(message: String): JsonObject {
        val obj = JsonObject()
        obj.addProperty("severity", "error")
        obj.addProperty("message", message)
        return obj
    }

    private fun nodeProblemsJsonArray(problems: Iterable<NodeReportItem>, repo: SRepository?): JsonArray {
        val result = JsonArray()
        for (problem in problems) {
            result.add(problemJsonObject(problem, repo))
        }
        return result
    }

    private fun referenceLinkJsonObject(
        link: SReferenceLink,
        repository: SRepository?,
        includeDeprecated: Boolean,
        currentProject: MPSProject? = null,
        cache: ProjectMembershipCache? = null
    ): JsonObject {
        val obj = JsonObject()
        obj.addProperty("role", link.name)
        obj.addProperty("type", link.targetConcept.name)
        obj.addProperty("typeReference", PersistenceFacade.getInstance().asString(link.targetConcept))
        obj.addProperty("cardinality", getCardinality(link))
        val declarationNode = link.sourceNode?.resolve(repository)
        obj.addProperty("doc", getDoc(declarationNode))
        if (repository != null) {
            addContainingProjectIfForeign(obj, currentProject, link.targetConcept, repository, "type", cache)
        }
        if (includeDeprecated) {
            obj.addProperty("deprecated", getDeprecationInfo(declarationNode))
        }
        return obj
    }

    protected fun problemSeverity(severity: MessageStatus): String {
        return when (severity) {
            MessageStatus.ERROR -> "error"
            MessageStatus.WARNING -> "warning"
            else -> "info"
        }
    }

    protected fun nodeWithProblemsToJson(
        node: SNode,
        problems: Map<SNode, List<NodeReportItem>>,
        deep: Boolean = true,
        currentProject: MPSProject? = null,
        cache: ProjectMembershipCache? = null
    ): String {
        return nodeWithProblemsJsonObject(node, problems, deep, currentProject, cache).toString()
    }

    protected fun nodeWithProblemsJsonObject(
        node: SNode,
        problems: Map<SNode, List<NodeReportItem>>,
        deep: Boolean = true,
        currentProject: MPSProject? = null,
        cache: ProjectMembershipCache? = null
    ): JsonObject {
        val nodeProblems = problems[node] ?: emptyList()
        val problemsByTarget = nodeProblems.groupBy { it.messageTarget }
        val repository = node.model?.repository
        val c = cache ?: ProjectMembershipCache(currentProject)

        val obj = JsonObject()
        obj.addProperty("name", node.name ?: node.presentation)
        obj.addProperty("reference", PersistenceFacade.getInstance().asString(node.reference))
        obj.addProperty("concept", node.concept.name)
        obj.addProperty("doc", getDoc(node.concept.sourceNode?.resolve(repository)))
        obj.addProperty("conceptReference", PersistenceFacade.getInstance().asString(node.concept))
        addContainingProjectIfForeign(obj, currentProject, node, cache = c)
        repository?.let { addContainingProjectIfForeign(obj, currentProject, node.concept, it, "concept", c) }

        val nodeLevelProblems = problemsByTarget
            .filter { it.key !is PropertyMessageTarget && it.key !is ReferenceMessageTarget }
            .values
            .flatten()
        obj.add("problems", nodeProblemsJsonArray(nodeLevelProblems, repository))

        val properties = JsonArray()
        for (prop in node.concept.properties) {
            val propertyState = getPropertyState(node, prop)
            val value = propertyState.value
            val propProblems = problemsByTarget.filter { (it.key as? PropertyMessageTarget)?.role == prop.name }.values.flatten()

            if (value.isNullOrEmpty() && propProblems.isEmpty() && !propertyState.isEmptyEnum) continue

            val propObj = JsonObject()
            propObj.addProperty("name", prop.name)
            propObj.addProperty("type", getPropertyType(prop))
            propObj.addProperty("doc", getDoc(prop.sourceNode?.resolve(repository)))
            propObj.addProperty("value", value ?: "")
            val problemArray = nodeProblemsJsonArray(propProblems, repository)
            if (propertyState.isEmptyEnum) {
                problemArray.add(errorProblemJsonObject("Empty enumeration property"))
            }
            if (propertyState.isInvalid && propProblems.none { it.message.contains("invalid", ignoreCase = true) }) {
                problemArray.add(errorProblemJsonObject("Property value is invalid"))
            }
            propObj.add("problems", problemArray)
            properties.add(propObj)
        }
        obj.add("properties", properties)

        val references = JsonArray()
        val referencesByRole = node.references.associateBy { it.link }
        for (link in node.concept.referenceLinks) {
            val ref = referencesByRole[link]
            // ReferenceMessageTarget wraps an SAbstractLink, so use sameAs to compare by the underlying
            // link rather than by name — a containment link and a reference link can share a name.
            val refTarget = ReferenceMessageTarget(link)
            val refProblems = problemsByTarget.filter { it.key.sameAs(refTarget) }.values.flatten()
            if (ref == null && link.isOptional && refProblems.isEmpty()) continue

            val refObj = referenceLinkJsonObject(link, repository, includeDeprecated = false, currentProject = currentProject, cache = c)
            if (ref != null) {
                val targetNode = ref.targetNode
                if (targetNode != null) {
                    refObj.addProperty("target", targetNode.name ?: targetNode.presentation)
                    refObj.addProperty("targetReference", PersistenceFacade.getInstance().asString(targetNode.reference))
                    addContainingProjectIfForeign(refObj, currentProject, targetNode, "target", c)
                }
                else {
                    refObj.add("target", JsonNull.INSTANCE)
                    refObj.addProperty("targetReference", PersistenceFacade.getInstance().asString(ref.targetNodeReference))
                }
            }
            else {
                refObj.add("target", JsonNull.INSTANCE)
                refObj.add("targetReference", JsonNull.INSTANCE)
            }
            refObj.add("problems", nodeProblemsJsonArray(refProblems, repository))
            references.add(refObj)
        }
        obj.add("references", references)

        val children = JsonArray()
        val childrenByRole = node.children.groupBy { it.containmentLink }
        for (link in node.concept.containmentLinks) {
            val childrenInRole = childrenByRole[link] ?: emptyList()
            // ReferenceMessageTarget wraps an SAbstractLink, so use sameAs to compare by the underlying
            // link rather than by name — a containment link and a reference link can share a name.
            val roleTarget = ReferenceMessageTarget(link)
            val roleProblems = problemsByTarget.filter { it.key.sameAs(roleTarget) }.values.flatten()
            if (childrenInRole.isEmpty() && link.isOptional && roleProblems.isEmpty()) continue

            val roleObj = containmentLinkInfoJsonObject(link, repository, includeDeprecated = false, currentProject = currentProject, cache = c)
            roleObj.add("problems", nodeProblemsJsonArray(roleProblems, repository))
            if (deep) {
                val nodes = JsonArray()
                for (child in childrenInRole) {
                    nodes.add(nodeWithProblemsJsonObject(child, problems, true, currentProject, c))
                }
                roleObj.add("nodes", nodes)
            }
            children.add(roleObj)
        }
        obj.add("children", children)
        return obj
    }

    /**
     * Returns true if [node] itself has either a checker-reported problem or a "soft" problem
     * detected directly here (empty enum / property value rejected by [SProperty.isValid]).
     * Does NOT recurse into children — use [hasAnyProblems] for the subtree check.
     *
     * Shared between the list formatter and the green/red fast-path in mps_mcp_check_root_node_problems
     * so the two cannot drift: if the fast-path says "no problems found" the list formatter must
     * agree it has nothing to print.
     */
    protected fun hasLocalProblems(node: SNode, problems: Map<SNode, List<NodeReportItem>>): Boolean {
        if (problems[node]?.isNotEmpty() == true) return true

        for (prop in node.concept.properties) {
            val propertyState = getPropertyState(node, prop)
            if (propertyState.isEmptyEnum || propertyState.isInvalid) return true
        }
        return false
    }

    /**
     * Returns true if [node] or any descendant has a problem according to [hasLocalProblems].
     */
    protected fun hasAnyProblems(node: SNode, problems: Map<SNode, List<NodeReportItem>>): Boolean {
        if (hasLocalProblems(node, problems)) return true
        for (child in node.children) {
            if (hasAnyProblems(child, problems)) return true
        }
        return false
    }

    protected fun nodeWithProblemsListToJson(
        rootNode: SNode,
        problems: Map<SNode, List<NodeReportItem>>,
        currentProject: MPSProject? = null,
        cache: ProjectMembershipCache? = null
    ): String {
        return nodeWithProblemsListJsonArray(rootNode, problems, currentProject, cache).toString()
    }

    protected fun nodeWithProblemsListJsonArray(
        rootNode: SNode,
        problems: Map<SNode, List<NodeReportItem>>,
        currentProject: MPSProject? = null,
        cache: ProjectMembershipCache? = null
    ): JsonArray {
        val resultList = JsonArray()
        val c = cache ?: ProjectMembershipCache(currentProject)

        fun traverse(node: SNode) {
            if (hasLocalProblems(node, problems)) {
                resultList.add(nodeWithProblemsJsonObject(node, problems, false, currentProject, c))
            }
            for (child in node.children) {
                traverse(child)
            }
        }

        traverse(rootNode)
        return resultList
    }

    /**
     * Runs the standard node checkers (structure, constraints, target-concept, reference-scope,
     * typesystem, non-typesystem) on [root] and returns the problems they report, keyed by node.
     *
     * Shared by `mps_mcp_check_root_node_problems` and the post-insert reporting of
     * `mps_mcp_parse_java_and_insert`, so an insertion surfaces exactly the same problems an explicit
     * check would. The two typesystem checkers are best-effort: a failure in either is logged and
     * swallowed instead of aborting the whole check.
     */
    protected fun runRootCheckers(
        mpsProject: MPSProject,
        root: SNode,
        repo: SRepository
    ): MutableMap<SNode, MutableList<NodeReportItem>> {
        val host = mpsProject.platform
        val monitor = EmptyProgressMonitor()
        val problems = mutableMapOf<SNode, MutableList<NodeReportItem>>()
        val collector = Consumer<NodeReportItem> { item ->
            val problemNode = item.node.resolve(repo)
            if (problemNode != null) {
                problems.getOrPut(problemNode) { mutableListOf() }.add(item)
            }
        }

        StructureChecker(host).asRootChecker().check(root, repo, collector, monitor)
        ConstraintsChecker(host).asRootChecker().check(root, repo, collector, monitor)
        TargetConceptChecker2(host).asRootChecker().check(root, repo, collector, monitor)
        RefScopeChecker(host).asRootChecker().check(root, repo, collector, monitor)

        // Optional checkers if available
        val checkers = arrayOf(TypesystemChecker(), NonTypesystemChecker())
        for (checker in checkers) {
            try {
                checker.check(root, repo, collector, monitor)
            } catch (e: Exception) {
                rethrowIfCancellation(e)
                logger.warn("Optional checker ${checker::class.simpleName} failed on ${root.reference}", e)
            }
        }

        // Extra MCP-only checker: validate the encoded feature ids on attribute nodes. None of the
        // six standard checkers above decode `PropertyAttribute.propertyId` / `LinkAttribute.linkId`,
        // so a malformed or non-resolving id is otherwise accepted silently and only fails at
        // generation time as an opaque error (see mcp_usability_report 1.2).
        checkAttributeFeatureIds(root, collector)

        return problems
    }

    /**
     * Validates the encoded feature ids stored on attribute nodes — `PropertyAttribute.propertyId`
     * and `LinkAttribute.linkId` — across [root] and its descendants. These are the ids generators
     * embed in `PropertyMacro` / `ReferenceMacro` (and that the structure language uses for
     * property/link annotations).
     *
     * The MCP write path checks only that a *property name* exists, never that the *value* of
     * `propertyId`/`linkId` decodes to a real feature, and none of the standard root checkers decode
     * it either. So a wrong value — a node ref (`r:...`), a truncated id, or a bare property name —
     * is stored silently; `mps_mcp_check_root_node_problems` reports nothing and it only blows up at
     * generation time as a generic "an error occurred" with no pointer back to the offending macro.
     *
     * This decodes the id exactly as `PropertyAttribute.getProperty` / `LinkAttribute.getLink` do at
     * runtime (`SPropertyId.deserialize` / `SReferenceLinkId.deserialize`, then `MetaAdapterFactory`)
     * and reports a precise structure-level error instead. It deliberately does not check that the
     * feature belongs to the *attributed* node's concept: in a generator template the attributed node
     * may legitimately be reduced to a different concept, so that check would produce false positives.
     */
    private fun checkAttributeFeatureIds(root: SNode, collector: Consumer<NodeReportItem>) {
        fun visit(node: SNode) {
            val concept = node.concept
            when {
                concept.isSubConceptOf(PROPERTY_ATTRIBUTE_CONCEPT) ->
                    validateFeatureId(
                        node, node.getProperty(PROPERTY_ATTRIBUTE_PROPERTY_ID), "propertyId", "property"
                    ) { MetaAdapterFactory.getProperty(SPropertyId.deserialize(it), "") }
                        ?.let { collector.consume(it) }

                concept.isSubConceptOf(LINK_ATTRIBUTE_CONCEPT) ->
                    validateFeatureId(
                        node, node.getProperty(LINK_ATTRIBUTE_LINK_ID), "linkId", "link"
                    ) { MetaAdapterFactory.getReferenceLink(SReferenceLinkId.deserialize(it), "") }
                        ?.let { collector.consume(it) }
            }
            for (child in node.children) {
                visit(child)
            }
        }
        visit(root)
    }

    /**
     * Shared body of the [checkAttributeFeatureIds] property/link branches. [rawId] is the stored
     * `propertyId`/`linkId` string, [propertyName] names the property holding it (for the message),
     * [featureKind] is `"property"` or `"link"`, and [deserialize] decodes the id to its
     * `SConceptFeature` (or throws on a malformed string, exactly as the runtime behavior does).
     * Returns a structure-level error item, or `null` when the id is well-formed and resolves.
     */
    protected fun validateFeatureId(
        node: SNode,
        rawId: String?,
        propertyName: String,
        featureKind: String,
        deserialize: (String) -> SConceptFeature
    ): NodeReportItem? {
        val itemKind = IssueKindReportItem.STRUCTURE.deriveItemKind(ATTRIBUTE_FEATURE_ID_ISSUE)
        if (rawId.isNullOrBlank()) {
            return NodeReportItemBase.error(
                "${node.concept.name}: $propertyName is not set; it must be the encoded " +
                    "<langUUID>/<conceptId>/<featureId> id of the target $featureKind " +
                    "(see the `featureId` field from mps_mcp_get_concept_details).",
                node.reference, itemKind
            )
        }
        val feature = try {
            deserialize(rawId)
        } catch (e: RuntimeException) {
            return NodeReportItemBase.error(
                "${node.concept.name}: $propertyName \"$rawId\" is not a valid encoded $featureKind id. " +
                    "Expected the <langUUID>/<conceptId>/<featureId> triple (e.g. " +
                    "ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001), not a node ref, " +
                    "a bare id, or a name. Use the `featureId` field from mps_mcp_get_concept_details.",
                node.reference, itemKind
            )
        }
        if (!feature.isValid) {
            return NodeReportItemBase.error(
                "${node.concept.name}: $propertyName \"$rawId\" does not resolve to any known $featureKind. " +
                    "Verify the id against the `featureId` field from mps_mcp_get_concept_details for the " +
                    "target concept.",
                node.reference, itemKind
            )
        }
        return null
    }

    /**
     * Flat list of error/warning problems found in [node] and its descendants, as concise
     * `{reference, concept, severity, message}` entries. Used by `mps_mcp_parse_java_and_insert` to
     * surface the type/structure problems an insertion leaves behind — e.g. a Java 8 lambda mapped to
     * a `baseLanguage.closures` closure whose type does not fit the destination slot — without
     * dumping the full node tree.
     */
    protected fun subtreeProblemsJsonArray(node: SNode, problems: Map<SNode, List<NodeReportItem>>): JsonArray {
        val arr = JsonArray()
        fun traverse(n: SNode) {
            problems[n]?.forEach { item ->
                if (item.severity == MessageStatus.ERROR || item.severity == MessageStatus.WARNING) {
                    val o = JsonObject()
                    o.addProperty("reference", PersistenceFacade.getInstance().asString(n.reference))
                    o.addProperty("concept", n.concept.name)
                    o.addProperty("severity", problemSeverity(item.severity))
                    o.addProperty("message", item.message)
                    arr.add(o)
                }
            }
            for (c in n.children) {
                traverse(c)
            }
        }
        traverse(node)
        return arr
    }

    /**
     * Creates a [HeadlessEditorComponent] editing [node], hands its [EditorContext] to [block],
     * and disposes the component afterwards — the create/`editNode`/`dispose` lifecycle already
     * proven by `mps_mcp_print_node`'s `showNodeAppearance`.
     *
     * Must be called from inside a model-access action on the EDT (`executeShortReadOnEdt` /
     * `executeShortCommandOnEdt`): `editNode` takes its own read lock and requests the typechecking
     * session synchronously, so on return `getTypecheckingSession()` is non-null. This asserts that
     * (a missing session would otherwise NPE inside `IntentionsManager.computeWithSession`) and
     * fails as a clean [McpUserException] instead. For intention listing/apply, pass the containing
     * root so ancestor intentions and full-root typechecking are available.
     */
    protected fun <T> withHeadlessEditor(repo: SRepository, node: SNode, block: (EditorContext) -> T): T {
        val component = HeadlessEditorComponent(repo)
        try {
            component.editNode(node)
            if (component.typecheckingSession == null) {
                throw McpUserException(
                    McpErrorCode.INTERNAL_ERROR,
                    "Could not obtain a typechecking session for a headless editor on " +
                        "'${PersistenceFacade.getInstance().asString(node.reference)}'.",
                )
            }
            return block(component.editorContext)
        } finally {
            component.dispose()
        }
    }

    /**
     * A quick-fix attached to a checker [NodeReportItem], normalised into the fields the MCP tools
     * expose. [fix] is the live, executable object from the current checker snapshot (executing it
     * is exactly how the Model Checker consumes its own snapshot); [id] is a stable class FQN used to
     * match the fix on apply — the underlying [jetbrains.mps.errors.QuickFix_Runtime] class for a
     * [QuickFixRuntimeAdapter], else the fix's own class — so every listed fix is always addressable;
     * [description] is the human-legible Alt+Enter text, sanitized to null for the `"<ERROR>: <class>"`
     * placeholder a fix with no description block produces; [autoApplicable] is
     * `isExecutedImmediately()`; [declarationNode] points at the `QuickFixDeclaration` so an agent can
     * inspect its `execute` body.
     */
    protected data class QuickFixInfo(
        val fix: QuickFixBase,
        val id: String,
        val description: String?,
        val autoApplicable: Boolean,
        val declarationNode: SNodeReference?,
    )

    /**
     * Extracts the quick-fixes attached to [item] via [QuickFixReportItem.FLAVOUR_QUICKFIX]
     * (empty for items carrying none — safe on any [NodeReportItem]). Fix identity and description
     * come from the underlying [jetbrains.mps.errors.QuickFix_Runtime] when the fix is a
     * [QuickFixRuntimeAdapter] (the shape produced by typesystem / checking-rule fixes); other
     * [QuickFixBase] implementations are still listed, with best-effort fields.
     */
    protected fun quickFixInfos(item: NodeReportItem, repo: SRepository): List<QuickFixInfo> {
        val fixes = QuickFixReportItem.FLAVOUR_QUICKFIX.getCollection(item)
        val result = ArrayList<QuickFixInfo>(fixes.size)
        for (fix in fixes) {
            val runtime = (fix as? QuickFixRuntimeAdapter)?.let {
                try {
                    it.fixRuntime
                } catch (e: Exception) {
                    rethrowIfCancellation(e)
                    null
                }
            }
            // Prefer the runtime QuickFix_Runtime class (the *_QuickFix FQN a checking rule names) so
            // the id matches what the editor menu / declaration reveals; fall back to the fix's own
            // class for non-adapter fixes so every listed fix stays addressable by mps_mcp_apply_intention.
            // Degenerate case, kept deliberately: an adapter whose getFixRuntime() threw (broken
            // language runtime) falls back to the non-unique QuickFixRuntimeAdapter FQN — the id stays
            // always-present as documented, apply matches the same fallback, and execute then fails
            // with a contained error.
            val id = runtime?.javaClass?.name ?: fix.javaClass.name
            val declarationNode = runtime?.declarationNode
            val rawDescription = (fix as? EditorQuickFix)?.let {
                try {
                    it.getDescription(repo)
                } catch (e: Exception) {
                    rethrowIfCancellation(e)
                    null
                }
            }
            result.add(QuickFixInfo(fix, id, sanitizeQuickFixDescription(rawDescription), fix.isExecutedImmediately, declarationNode))
        }
        return result
    }

    /**
     * Guards [EditorQuickFix.isApplicable] (language-author code) with a try/catch so a throwing
     * implementation cannot abort a listing or apply. Non-[EditorQuickFix] fixes always return true
     * (they have no applicability gate beyond [safeIsAlive]).
     */
    protected fun safeIsApplicable(fix: QuickFixBase, repo: SRepository): Boolean =
        (fix as? EditorQuickFix)?.let {
            try {
                it.isApplicable(repo)
            } catch (e: Exception) {
                rethrowIfCancellation(e)
                true
            }
        } ?: true

    /**
     * Guards [QuickFixBase.isAlive] (language-author code) with a try/catch so a throwing
     * implementation cannot abort a listing or apply. Returns false on throw (treat as not alive).
     */
    protected fun safeIsAlive(fix: QuickFixBase, repo: SRepository): Boolean =
        try {
            fix.isAlive(repo)
        } catch (e: Exception) {
            rethrowIfCancellation(e)
            false
        }

    /**
     * A [jetbrains.mps.errors.QuickFix_Runtime] with no description block returns the placeholder
     * `"<ERROR>: <fully.qualified.ClassName>"` (see `QuickFix_Runtime.getDescription`); surface that
     * as `null` rather than leaking the sentinel to clients.
     */
    private fun sanitizeQuickFixDescription(description: String?): String? =
        description?.takeUnless { it.isBlank() || it.startsWith("<ERROR>: ") }

    /** Error/warning counts over a checker result map, for the before/after summary of an apply. */
    protected data class SeverityCounts(val errors: Int, val warnings: Int)

    protected fun countSeverities(problems: Map<SNode, List<NodeReportItem>>): SeverityCounts {
        var errors = 0
        var warnings = 0
        for (list in problems.values) {
            for (item in list) {
                when (item.severity) {
                    MessageStatus.ERROR -> errors++
                    MessageStatus.WARNING -> warnings++
                    else -> {}
                }
            }
        }
        return SeverityCounts(errors, warnings)
    }

    protected fun severityCountsJson(counts: SeverityCounts): JsonObject =
        jsonObject {
            addProperty("errors", counts.errors)
            addProperty("warnings", counts.warnings)
        }

    /** Result of [autoApplyQuickFixes]: fixes applied and fixes that threw on execution. */
    protected data class AutoApplyResult(val applied: List<String>, val failed: List<String>)

    /**
     * Applies every auto-applicable quick-fix in [problems], adapted from
     * `ModelCheckerViewer.performQuickFixes`, with the following deliberate differences from that
     * precedent:
     *  (a) Per-item guard against [QuickFixReportItem.FLAVOUR_QUICKFIX.getAutoApplicable]'s
     *      `>1` [IllegalStateException] (the precedent would throw there).
     *  (b) Per-fix throw containment (see below) — a throwing fix lands in [AutoApplyResult.failed]
     *      rather than aborting the whole tool call.
     *  (c) Liveness check on the problem node itself before [safeIsAlive]: each worklist entry
     *      carries its source [NodeReportItem] so the node can be re-resolved each pass, restoring
     *      the `PATH_OBJECT.get(issue).resolve(repo) != null` guard from the precedent.
     *
     * Snapshot semantics guarantee termination:
     *  - The worklist is built **once**: items with exactly one auto-applicable fix.
     *  - Each pass iterates a **copy** of the worklist. A fix whose problem-node resolves and which
     *    [safeIsAlive] is executed and removed; one not yet alive stays for a later pass. A pass with
     *    no progress ends the loop.
     *  - The worklist never grows, so at most `n` productive passes for `n` initial items.
     *
     * **Note:** partial mutations made by a fix that then threw are still saved with the rest; the
     * final re-check reports the resulting state (MPS write commands do not roll back).
     *
     * Must be called from inside a command (`executeShortCommandOnEdt`) — the fixes write the model.
     * There is deliberately no per-fix verification that the problem disappeared; auto-applicability
     * is the language author's contract and a follow-up re-check reports ground truth.
     */
    protected fun autoApplyQuickFixes(problems: Collection<NodeReportItem>, repo: SRepository): AutoApplyResult {
        // Each worklist entry: (source item for liveness check, fix, display description).
        val worklist = ArrayList<Triple<NodeReportItem, QuickFixBase, String>>()
        for (item in problems) {
            val auto = try {
                QuickFixReportItem.FLAVOUR_QUICKFIX.getAutoApplicable(item)
            } catch (e: IllegalStateException) {
                null // more than one auto-applicable fix ⇒ not auto-fixable, guard like the precedent
            } ?: continue
            val rawDesc = (auto as? EditorQuickFix)?.let {
                try {
                    it.getDescription(repo)
                } catch (e: Exception) {
                    rethrowIfCancellation(e)
                    null
                }
            }
            // Route through the same sanitizer as the listing/report path so the
            // "<ERROR>: <FQN>" placeholder a description-less fix returns never leaks into
            // details.appliedQuickFixes; fall back to the fix class name when it sanitizes to null.
            val desc = sanitizeQuickFixDescription(rawDesc) ?: auto.javaClass.simpleName
            worklist.add(Triple(item, auto, desc))
        }

        val applied = ArrayList<String>()
        val failed = ArrayList<String>()
        while (true) {
            val appliedBefore = applied.size
            for (entry in ArrayList(worklist)) {
                val (item, fix, desc) = entry
                // Restore the precedent's problem-node liveness guard before isAlive.
                if (item.node.resolve(repo) == null) continue
                try {
                    if (safeIsAlive(fix, repo)) {
                        fix.execute(repo)
                        applied.add(desc)
                        worklist.remove(entry)
                    }
                } catch (e: Exception) {
                    rethrowIfCancellation(e)
                    logger.warn("autoApplyQuickFixes: fix '$desc' threw during execution", e)
                    failed.add("$desc: ${e.message ?: e.javaClass.name}")
                    worklist.remove(entry) // never retry a throwing fix
                }
            }
            if (applied.size == appliedBefore) {
                break
            }
        }
        return AutoApplyResult(applied, failed)
    }

    protected fun modelWithProblemsToJson(model: SModel, problems: List<ModelReportItem>, currentProject: MPSProject? = null): String {
        return modelWithProblemsJsonObject(model, problems, currentProject).toString()
    }

    protected fun modelWithProblemsJsonObject(
        model: SModel,
        problems: List<ModelReportItem>,
        currentProject: MPSProject? = null
    ): JsonObject {
        val obj = JsonObject()
        obj.addProperty("name", model.name.value)
        obj.addProperty("reference", PersistenceFacade.getInstance().asString(model.reference))
        obj.addProperty("module", model.module?.moduleName ?: "")
        addContainingProjectIfForeign(obj, currentProject, model)
        val problemArray = JsonArray()
        for (problem in problems) {
            val problemObj = problemJsonObject(problem.severity, problem.message)
            if (problem is NodeReportItem) {
                problemObj.addProperty("node", PersistenceFacade.getInstance().asString(problem.node))
            }
            problemArray.add(problemObj)
        }
        obj.add("problems", problemArray)
        return obj
    }

    protected val LANG_STRUCTURE: SLanguage by lazy { SNodeUtil.concept_AbstractConceptDeclaration.language }
    protected val CONCEPT_DocumentedNodeAnnotation: SConcept by lazy {
        val registry = MPSCoreComponents.getInstance()?.platform?.findComponent(LanguageRegistry::class.java)
        registry?.getLanguage(LANG_STRUCTURE)?.concepts?.filterIsInstance<SConcept>()?.find { it.name == "DocumentedNodeAnnotation" }
            ?: MetaAdapterFactory.getConcept(
                0xc72da2b97cce4447uL.toLong(),
                0x8389f407dc1158b7uL.toLong(),
                0x6d1df6c2700b0ea9L,
                "jetbrains.mps.lang.structure.structure.DocumentedNodeAnnotation"
            )
    }
    protected val CONCEPT_DeprecatedNodeAnnotation: SConcept by lazy {
        val registry = MPSCoreComponents.getInstance()?.platform?.findComponent(LanguageRegistry::class.java)
        registry?.getLanguage(LANG_STRUCTURE)?.concepts?.filterIsInstance<SConcept>()?.find { it.name == "DeprecatedNodeAnnotation" }
            ?: MetaAdapterFactory.getConcept(
                0xc72da2b97cce4447uL.toLong(),
                0x8389f407dc1158b7uL.toLong(),
                0x11d0a70ae54L,
                "jetbrains.mps.lang.structure.structure.DeprecatedNodeAnnotation"
            )
    }
    protected val PROP_DeprecatedNodeAnnotation_Comment: SProperty by lazy {
        CONCEPT_DeprecatedNodeAnnotation.properties.find { it.name == "comment" }
            ?: MetaAdapterFactory.getProperty(0xc72da2b97cce4447uL.toLong(), 0x8389f407dc1158b7uL.toLong(), 0x11d0a70ae54L, 0x11d3ec760e8L, "comment")
    }
    protected val PROP_DeprecatedNodeAnnotation_Build: SProperty by lazy {
        CONCEPT_DeprecatedNodeAnnotation.properties.find { it.name == "build" }
            ?: MetaAdapterFactory.getProperty(0xc72da2b97cce4447uL.toLong(), 0x8389f407dc1158b7uL.toLong(), 0x11d0a70ae54L, 0x11d3ec15123L, "build")
    }
    protected val PROP_DocumentedNodeAnnotation_Text: SProperty by lazy {
        CONCEPT_DocumentedNodeAnnotation.properties.find { it.name == "text" }
            ?: MetaAdapterFactory.getProperty(0xc72da2b97cce4447uL.toLong(), 0x8389f407dc1158b7uL.toLong(), 0x6d1df6c2700b0ea9L, 0x6d1df6c2700b0eb1L, "text")
    }

    protected fun getDoc(n: SNode?): String {
        if (n == null) return ""
        val docAnnotation = n.getChildren(SNodeUtil.link_BaseConcept_smodelAttribute).find { it.concept == CONCEPT_DocumentedNodeAnnotation }
        return docAnnotation?.getProperty(PROP_DocumentedNodeAnnotation_Text) ?: ""
    }

    protected fun getDeprecationInfo(n: SNode?): String {
        if (n == null) return "false"
        val depAnnotation = n.getChildren(SNodeUtil.link_BaseConcept_smodelAttribute).find { it.concept == CONCEPT_DeprecatedNodeAnnotation }
            ?: return "false"
        val comment = depAnnotation.getProperty(PROP_DeprecatedNodeAnnotation_Comment) ?: ""
        val build = depAnnotation.getProperty(PROP_DeprecatedNodeAnnotation_Build) ?: ""
        val msg = if (build.isNotEmpty() && comment.isNotEmpty()) "since $build: $comment" else if (build.isNotEmpty()) "since $build" else comment
        return if (msg.isNotEmpty()) "true: $msg" else "true"
    }

    protected fun modelReferenceJson(ref: SModelReference): String {
        return modelReferenceJsonObject(ref).toString()
    }

    protected fun modelInfoJson(m: SModel, currentProject: MPSProject? = null): String {
        return modelInfoJsonObject(m, currentProject).toString()
    }

    protected fun modelInfoJsonObject(m: SModel, currentProject: MPSProject? = null): JsonObject {
        val obj = JsonObject()
        obj.addProperty("name", m.name.value)
        obj.addProperty("module", m.module?.moduleName ?: "")
        obj.addProperty("reference", PersistenceFacade.getInstance().asString(m.reference))
        obj.addProperty("readOnly", m.isReadOnly)
        obj.addProperty("present", true)
        addContainingProjectIfForeign(obj, currentProject, m)
        return obj
    }

    protected fun moduleInfoJson(project: MPSProject, m: SModule): String {
        return moduleInfoJsonObject(project, m).toString()
    }

    protected fun moduleInfoJsonObject(project: MPSProject, m: SModule): JsonObject {
        val name = m.moduleName ?: ""
        val reference = PersistenceFacade.getInstance().asString(m.moduleReference)
        val vf = try {
            project.getVirtualFolder(m)
        } catch (e: Exception) {
            rethrowIfCancellation(e)
            logger.warn("Failed to get virtual folder for module '$name'", e)
            null
        }

        val obj = JsonObject()
        obj.addProperty("name", name)
        obj.addProperty("reference", reference)
        obj.addProperty("readOnly", m.isReadOnly)
        addContainingProjectIfForeign(obj, project, m)
        if (vf != null) {
            obj.addProperty("virtualFolder", vf)
        }

        // Always report a high-level kind for every module - the combination of attached facets (e.g. `tests`)
        // and JavaModuleFacet.LoadExtensions. Surfacing kind + facets + loadExtensions here
        // lets callers verify "this is a test solution" without a follow-up tool call.
        val descriptor = (m as? AbstractModule)?.moduleDescriptor
        obj.addProperty("kind", moduleKindLabel(m, descriptor))

        if (descriptor is DevkitDescriptor) {
            obj.add("extendedDevkits", devkitExtendedDevkitsJsonArray(descriptor, project))
            obj.add("exportedLanguages", devkitExportedLanguagesJsonArray(descriptor, project))
            obj.add("exportedSolutions", devkitExportedSolutionsJsonArray(descriptor, project))
            descriptor.associatedGenPlan?.let {
                obj.add("associatedGenPlan", associatedGenPlanJsonObject(it, project))
            }
        }

        val facetsArray = JsonArray()
        // Defensive read action around the facets traversal: all current callers happen to
        // already hold one (executeCommand / executeShortReadOnEdt), but `m.facets` is a
        // model-accessed collection on most module impls, so a future caller invoking
        // moduleInfoJsonObject from a bare thread would otherwise race. `runReadAction` is
        // re-entrant, so wrapping here is safe even when a caller is already inside one.
        project.modelAccess.runReadAction {
            for (facet in m.facets) {
                facetsArray.add(JsonPrimitive(facet.facetType))
            }
            obj.add("facets", facetsArray)

            val javaFacet = m.getFacet(JavaModuleFacet::class.java)
            if (javaFacet != null) {
                obj.addProperty("loadExtensions", javaFacet.loadExtensions.name)
            }
        }
        obj.addProperty("present", true)
        return obj
    }

    /**
     * Maps an MPS module to a short, stable label used by `moduleInfoJsonObject`'s `kind`
     * field. Returns one of the four documented values, or the sentinel `"Unknown"` for
     * third-party `SModule` implementations that don't extend any of `Solution`, `Language`,
     * `Generator`, or `DevKit` (custom modules from external plugins or test scaffolding).
     * The four standard subclasses cover every module produced through the MCP create tool
     * and every module typical projects contain, so "Unknown" is a signal to investigate
     * rather than a normal value; callers that switch on the documented set won't silently
     * mis-classify a standard module.
     */
    private fun moduleKindLabel(m: SModule, descriptor: ModuleDescriptor?): String {
        return when {
            descriptor is DevkitDescriptor -> "DevKit"
            m is jetbrains.mps.smodel.Generator -> "Generator"
            m is jetbrains.mps.smodel.Language -> "Language"
            m is jetbrains.mps.project.Solution -> "Solution"
            else -> "Unknown"
        }
    }

    /**
     * Wraps a suspending block with a timeout.  On timeout, throws [McpModalBlockedException]
     * with a user-friendly message instead of the raw [TimeoutCancellationException].
     *
     * Protected, not private: any tool entry point that dispatches to the EDT (whether or not
     * it goes through [withModalTimeoutOnEdt] / [executeShortReadOnEdt] / [executeBackgroundRead] /
     * [executeShortCommandOnEdt]) must wrap that dispatch with this helper. Without it, a blocked
     * EDT (e.g. behind a modal dialog) hangs until some unrelated outer timeout (the MCP
     * transport's) fires with a generic, unhelpful message instead of this method's actionable
     * one. For a plain EDT dispatch (no separate read/write action of its own), prefer
     * [withModalTimeoutOnEdt] over calling this directly — it already combines the timeout with
     * the correct [ModalityState].
     */
    protected suspend fun <T> withModalTimeout(timeoutMs: Long, block: suspend () -> T): T {
        return try {
            withTimeout(timeoutMs) { block() }
        } catch (e: TimeoutCancellationException) {
            throw McpModalBlockedException(
                "Operation timed out after ${timeoutMs}ms. " +
                "This may indicate a modal dialog or a long-running operation blocking MPS. " +
                "Please close any open dialogs (Find Usages, Search, confirmation prompts, etc.) and try again.",
                mapOf("timeoutMs" to timeoutMs)
            )
        }
    }

    /**
     * Combines [withModalTimeout] with the EDT dispatch itself: runs [block] on the EDT under
     * [ModalityState.nonModal()] and the [MODEL_OPERATION_TIMEOUT_MS] budget. This is the raw
     * building block for entry points whose body manages its own model access — a mix of
     * `executeCommand`, `WriteAction.runAndWait`, `mpsProject.save()`, or similar calls — rather
     * than a single read/write action, so it can't reuse [executeShortReadOnEdt] /
     * [executeShortCommandOnEdt] below.
     *
     * NON_MODAL modality (never ModalityState.any()): dispatching to the EDT under an arbitrary
     * modal dialog risks reentrancy/deadlock or unsafe model access — the platform contract
     * forbids it. With NON_MODAL, if a modal dialog is open the continuation is deferred until it
     * closes, and withModalTimeout turns any resulting wait into a clear McpModalBlockedException
     * instead of a silent hang until the outer MCP transport timeout fires with a generic message.
     *
     * Any EDT-dispatching tool entry point must go through this helper (or one of the other three
     * below) instead of a bare `withContext(Dispatchers.EDT)`.
     *
     * [timeoutMs] defaults to [MODEL_OPERATION_TIMEOUT_MS] for every production call site (all of
     * which call this with the trailing-lambda form and never pass it explicitly). It exists so
     * tests can shrink the budget and deterministically simulate a blocked EDT (e.g. via
     * `LaterInvocator.enterModal`/`leaveModal`) without waiting out the real 30s production
     * timeout; see `AbstractOpsModalTimeoutTest`.
     */
    protected suspend fun <T> withModalTimeoutOnEdt(timeoutMs: Long = MODEL_OPERATION_TIMEOUT_MS, block: suspend () -> T): T {
        return withModalTimeout(timeoutMs) {
            withContext(Dispatchers.EDT + ModalityState.nonModal().asContextElement()) {
                block()
            }
        }
    }

    protected suspend fun <T> executeShortReadOnEdt(mpsProject: MPSProject, action: () -> T): T {
        return withModalTimeoutOnEdt {
            mpsProject.modelAccess.computeReadAction {
                action()
            }
        }
    }

    protected suspend fun <T> executeBackgroundRead(mpsProject: MPSProject, action: () -> T): T {
        return withModalTimeout(MODEL_OPERATION_TIMEOUT_MS) {
            withContext(Dispatchers.Default) {
                mpsProject.modelAccess.computeReadAction {
                    action()
                }
            }
        }
    }

    protected suspend fun <T> executeShortCommandOnEdt(mpsProject: MPSProject, action: () -> T): T {
        return withModalTimeoutOnEdt {
            var result: T? = null
            var ran = false
            // A McpUserException raised inside the command is expected control flow for bad client
            // input (e.g. AssignabilityException, NOT_FOUND), not an MPS defect. If it escapes the
            // command, ActionDispatcher logs it via LOG.error("Action dispatch failed") before
            // rethrowing — flooding the IDE log with spurious error reports for ordinary validation
            // failures. Capture it here so the command finishes normally, then rethrow OUTSIDE the
            // command boundary: the caller's withMpsProject/toolFailure boundary still maps it to the
            // proper errJson response, identically to today, but ActionDispatcher no longer sees an
            // exception escape the command. Any other Throwable still propagates from inside the
            // command, so genuine internal failures are still logged as errors.
            var userException: McpUserException? = null
            mpsProject.modelAccess.executeCommand {
                try {
                    result = action()
                } catch (e: McpUserException) {
                    userException = e
                }
                ran = true
            }
            check(ran) {
                "modelAccess.executeCommand did not invoke the action; another write may be in progress"
            }
            userException?.let { throw it }
            @Suppress("UNCHECKED_CAST")
            result as T
        }
    }

    protected suspend fun coroutineProgressMonitor(): EmptyProgressMonitor {
        return CoroutineProgressMonitor(currentCoroutineContext()[Job])
    }

    private class CoroutineProgressMonitor(private val job: Job?) : EmptyProgressMonitor() {
        private val canceled = AtomicBoolean(false)

        override fun isCanceled(): Boolean = canceled.get() || job?.isCancelled == true || super.isCanceled()

        override fun cancel() {
            canceled.set(true)
            super.cancel()
        }
    }

    /**
     * Returns the characteristic SReferenceLink if the concept is a smart reference, or null otherwise.
     * Checks for explicit SmartReferenceAttribute annotation first, then falls back to an implicit
     * heuristic.
     *
     * The implicit heuristic adds two project-specific guards that MPS itself does not apply:
     * the concept must not be abstract and must not carry an explicit conceptAlias (an alias
     * usually signals that the concept renders itself, not a bare reference).
     *
     * The remaining structural checks are aligned with jetbrains.mps.lang.editor's
     * DefaultEditorBuilder.isSmartReference: no non-BaseConcept properties, no non-BaseConcept
     * containment links, and exactly one mandatory non-BaseConcept reference link that does
     * not specialize an inherited reference.
     */
    protected fun getSmartReferenceLink(sConcept: SAbstractConcept, repo: SRepository): SReferenceLink? {
        val conceptNode = sConcept.sourceNode?.resolve(repo)
        if (conceptNode != null) {
            val smartRefAttr = IAttributeDescriptor.NodeAttribute(SMART_REFERENCE_ATTRIBUTE_CONCEPT).get(conceptNode)
            if (smartRefAttr != null) {
                val linkDeclarationNode = smartRefAttr.getReferenceTarget(SMART_REFERENCE_ATTRIBUTE_CHARACTERISTIC_REF) ?: return null
                return MetaAdapterByDeclaration.getReferenceLink(linkDeclarationNode)
            }
        }
        // Project-specific guards (not in DefaultEditorBuilder.isSmartReference).
        if (sConcept.isAbstract) return null
        if (sConcept.conceptAlias.isNotEmpty()) return null
        // Structural checks aligned with DefaultEditorBuilder.isSmartReference.
        fun nonBaseConceptMember(ownerConcept: SAbstractConcept): Boolean =
            structureQualifiedName(ownerConcept) != "jetbrains.mps.lang.core.structure.BaseConcept"
        if (sConcept.properties.any { nonBaseConceptMember(it.owner) }) return null
        if (sConcept.containmentLinks.any { nonBaseConceptMember(it.owner) }) return null
        val ownReferences = sConcept.referenceLinks.filter { nonBaseConceptMember(it.owner) }
        if (ownReferences.size != 1) return null
        val ref = ownReferences[0]
        if (ref.isOptional) return null
        // Reject references that specialize an inherited link — DefaultEditorBuilder only treats
        // a link as smart when specializedLink is null. This check is best-effort: for compiled
        // or stub languages the link declaration has no resolvable source node, so we cannot
        // verify specialization. In that case we preserve the prior behavior of this heuristic
        // (treat as smart) — both the explicit SmartReferenceAttribute branch above and the
        // structural checks already degrade gracefully for stub languages, and failing closed
        // here would silently strip smart-reference support from every compiled language.
        val refDeclarationNode = ref.sourceNode?.resolve(repo) ?: return ref
        if (refDeclarationNode.getReferenceTarget(LINK_DECLARATION_SPECIALIZED_LINK_REF) != null) return null
        return ref
    }

    protected fun resolveConcept(repository: SRepository, conceptRef: String): SAbstractConcept? {
        refreshRegistries(repository)
        val facade = PersistenceFacade.getInstance()
        var registeredConcept: SAbstractConcept? = null

        // 1. Try as a runtime concept reference
        try {
            val concept = facade.createConcept(conceptRef)
            // If the language is registered, we can return the runtime concept
            if (LanguageRegistry.getInstance(repository).getLanguage(concept.language) != null) {
                // Check if the concept has a source node.
                // If not, it might be a newly created concept that isn't fully indexed yet.
                // Falling back to resolveConceptNode ensures we get the concept declaration node from the model.
                if (concept.sourceNode != null) {
                    return concept
                }
                // Language is registered but sourceNode is missing; save as last-resort fallback.
                registeredConcept = concept
            }
        } catch (e: Exception) {
            rethrowIfCancellation(e)
        }

        // 2. Try as a node reference or by searching in structure models
        val declarationNode = resolveConceptNode(repository, conceptRef)
        if (declarationNode != null) {
            return MetaAdapterByDeclaration.getConcept(declarationNode)
        }

        // 3. Best-effort fallback: reuse the registered concept (may have null sourceNode) rather than
        //    calling facade.createConcept a second time, or search by name for unregistered languages.
        if (registeredConcept != null) return registeredConcept
        return try {
            facade.createConcept(conceptRef)
        } catch (e: Exception) {
            rethrowIfCancellation(e)
            // Try searching by name if it's not a reference
            val allLanguages = LanguageRegistry.getInstance(repository).allLanguages
            for (lang in allLanguages) {
                val runtime = LanguageRegistry.getInstance(repository).getLanguage(lang) ?: continue
                val concept = runtime.concepts.find { it.name == conceptRef || facade.asString(it) == conceptRef }
                if (concept != null) return concept
            }
            null
        }
    }

    protected fun resolveConceptPreferringProject(mpsProject: MPSProject, conceptRef: String): SAbstractConcept? {
        refreshRegistries(mpsProject.repository)
        resolveConceptNodePreferringProject(mpsProject, conceptRef)?.let {
            return MetaAdapterByDeclaration.getConcept(it)
        }
        return resolveConcept(mpsProject.repository, conceptRef)
    }

    protected fun resolveConceptNode(repository: SRepository, conceptRef: String): SNode? =
        resolveConceptNodeInModules(repository, conceptRef, repository.modules) { true }

    protected fun resolveConceptNode(mpsProject: MPSProject, conceptRef: String): SNode? =
        resolveConceptNodeInModules(mpsProject.repository, conceptRef, mpsProject.projectModulesWithGenerators) {
            it.model?.let { model -> isModelInSelectedProject(mpsProject, model) } == true
        }

    protected fun resolveConceptNodePreferringProject(mpsProject: MPSProject, conceptRef: String): SNode? =
        resolveConceptNode(mpsProject, conceptRef)
            ?: resolveConceptNode(mpsProject.repository, conceptRef)

    private fun resolveConceptNodeInModules(
        repository: SRepository,
        conceptRef: String,
        modules: Iterable<SModule>,
        acceptResolvedNode: (SNode) -> Boolean
    ): SNode? {
        // 1. Try as a node reference
        try {
            val nodeReference = PersistenceFacade.getInstance().createNodeReference(conceptRef)
            nodeReference.resolve(repository)?.let { if (acceptResolvedNode(it)) return it }
        } catch (e: Exception) {
            rethrowIfCancellation(e)
        }

        // 2. Try as a concept reference (runtime ID string languageId/conceptId) or languageName/conceptName
        if (conceptRef.contains("/")) {
            val parts = conceptRef.split("/")
            if (parts.size == 2) {
                val langRef = parts[0]
                val conceptRefOrName = parts[1]
                // Normalize: strip 'c:' or 'l:' prefix from the language part of the concept-reference
                // string (format: 'c:langId/conceptId:qualifiedName' or 'l:langId/conceptId:qualifiedName').
                // Strip ':qualifiedName' suffix from the concept part.
                val langId = langRef.removePrefix("c:").removePrefix("l:")
                val conceptId = conceptRefOrName.substringBefore(":")
                for (module in modules) {
                    if (module !is Language) continue
                    val moduleId = module.moduleReference.moduleId.toString().removePrefix("l:")
                    if (moduleId == langId || module.moduleName == langId) {
                        for (model in module.models) {
                            if (model.name.longName.endsWith(".structure")) {
                                for (root in model.rootNodes) {
                                    if (root.nodeId.toString() == conceptId || root.name == conceptId) {
                                        if (root.concept.isSubConceptOf(SNodeUtil.concept_AbstractConceptDeclaration)) {
                                            return root
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }

        // 3. Try as format: ModelName.ConceptName or LanguageName.ConceptName
        if (conceptRef.contains(".")) {
            val lastDot = conceptRef.lastIndexOf(".")
            val possibleModelName = conceptRef.substring(0, lastDot)
            val conceptName = conceptRef.substring(lastDot + 1)

            for (module in modules) {
                for (model in module.models) {
                    if (model.name.longName == possibleModelName ||
                        model.name.longName == "$possibleModelName.structure"
                    ) {
                        for (root in model.rootNodes) {
                            if (root.name == conceptName && root.concept.isSubConceptOf(SNodeUtil.concept_AbstractConceptDeclaration)) {
                                return root
                            }
                        }
                    }
                }
            }
        }

        // 4. Scan all structure models: match by numeric node ID (if input is a plain long) or by
        //    concept name. A single pass over structure models covers both cases.
        val isNumericId = conceptRef.toLongOrNull() != null
        for (module in modules) {
            if (module !is Language) continue
            for (model in module.models) {
                if (!model.name.longName.endsWith(".structure")) continue
                for (root in model.rootNodes) {
                    if (isNumericId && root.nodeId.toString() == conceptRef) return root
                    if (root.name == conceptRef && root.concept.isSubConceptOf(SNodeUtil.concept_AbstractConceptDeclaration)) return root
                }
            }
        }

        return null
    }

    protected fun resolveModel(repository: SRepository, modelReference: String): SModel? {
        // 1. Try as a model reference
        try {
            val ref = PersistenceFacade.getInstance().createModelReference(modelReference)
            ref.resolve(repository)?.let { return it }
        } catch (e: Exception) {
            rethrowIfCancellation(e)
        }

        // 2. Try searching by name. A bare name matches a model only by its full value (stereotype
        // included) or when the model has no stereotype. The loose longName match is intentionally
        // not applied to stereotyped models: a deployed language ships a generated `<lang>@descriptor`
        // model whose longName equals the language name, which would otherwise shadow the same-named
        // Language module whenever a name is resolved (e.g. get_project_structure startingPoint).
        for (module in repository.modules) {
            for (model in module.models) {
                if (modelNameMatches(model, modelReference)) {
                    return model
                }
            }
        }
        return null
    }

    /**
     * Whether [modelReference] addresses [model] by name. Matches the model's full value (which
     * includes any stereotype, e.g. `foo.bar@tests`) or its bare longName, but the bare longName
     * only matches a model with no stereotype — a stereotyped model must be addressed by full value.
     */
    private fun modelNameMatches(model: SModel, modelReference: String): Boolean =
        model.name.value == modelReference ||
            (model.name.longName == modelReference && model.name.stereotype.isEmpty())

    protected fun resolveModel(mpsProject: MPSProject, modelReference: String, projectOnly: Boolean = true): SModel? {
        // 1. Try as a model reference
        try {
            val ref = PersistenceFacade.getInstance().createModelReference(modelReference)
            val resolved = ref.resolve(mpsProject.repository)
            if (resolved != null && (!projectOnly || isModelInSelectedProject(mpsProject, resolved))) {
                return resolved
            }
        } catch (e: Exception) {
            rethrowIfCancellation(e)
        }

        // 2. Try searching by name, project first by default. See modelNameMatches: a stereotyped
        // model (e.g. a deployed language's `<lang>@descriptor`) is only matched by its full value,
        // so a bare language name falls through to the same-named Language module instead.
        val modulesToSearch = if (projectOnly) mpsProject.projectModulesWithGenerators else mpsProject.repository.modules
        for (module in modulesToSearch) {
            for (model in module.models) {
                if (modelNameMatches(model, modelReference)) {
                    return model
                }
            }
        }
        return null
    }

    protected fun resolveModelPreferringProject(mpsProject: MPSProject, modelReference: String): SModel? =
        resolveModel(mpsProject, modelReference, projectOnly = true)
            ?: resolveModel(mpsProject.repository, modelReference)

    protected fun resolveModule(repository: SRepository, moduleRef: String): SModule? {
        // 1. Try as a module reference
        try {
            val ref = PersistenceFacade.getInstance().createModuleReference(moduleRef)
            ref.resolve(repository)?.let { return it }
        } catch (e: Exception) {
            rethrowIfCancellation(e)
        }

        // 2. Try searching by name
        for (module in repository.modules) {
            if (module.moduleName == moduleRef) {
                return module
            }
        }
        return null
    }

    protected fun resolveModule(mpsProject: MPSProject, moduleRef: String, projectOnly: Boolean = true): SModule? {
        // 1. Try as a module reference
        try {
            val ref = PersistenceFacade.getInstance().createModuleReference(moduleRef)
            val resolved = ref.resolve(mpsProject.repository)
            if (resolved != null) {
                if (!projectOnly || isModuleInSelectedProject(mpsProject, resolved)) {
                    return resolved
                }
            }
        } catch (e: Exception) {
            rethrowIfCancellation(e)
        }

        // 2. Try searching by name
        val modulesToSearch = if (projectOnly) mpsProject.projectModulesWithGenerators else mpsProject.repository.modules
        for (module in modulesToSearch) {
            if (module.moduleName == moduleRef) {
                return module
            }
        }
        return null
    }

    protected fun resolveModulePreferringProject(mpsProject: MPSProject, moduleRef: String): SModule? =
        resolveModule(mpsProject, moduleRef, projectOnly = true)
            ?: resolveModule(mpsProject.repository, moduleRef)

    // Expands each Language module by also including its owned generators. DevKit and Solution
    // modules are passed through unchanged because they do not own generators.
    protected fun expandModules(modules: Collection<SModule>): Set<SModule> {
        val result = mutableSetOf<SModule>()
        for (module in modules) {
            result.add(module)
            if (module is Language) {
                result.addAll(module.ownedGenerators)
            }
        }
        return result
    }

    protected fun isRootable(concept: SAbstractConcept, repository: SRepository): Boolean {
        if (concept is SConcept && concept.isRootable) return true

        // Fallback for uncompiled concepts
        val conceptRef = PersistenceFacade.getInstance().asString(concept)
        val declarationNode = resolveConceptNode(repository, conceptRef)
        if (declarationNode != null) {
            val rootableProp =
                MetaAdapterFactory.getProperty(0xc72da2b97cce4447uL.toLong(), 0x8389f407dc1158b7uL.toLong(), 0xf979ba0450L, 0xff49c1d648L, "rootable")
            return "true" == declarationNode.getProperty(rootableProp)
        }
        return false
    }

    protected fun resolveLanguage(repository: SRepository, languageRef: String): SLanguage? {
        val facade = PersistenceFacade.getInstance()
        if (languageRef.startsWith("l:")) {
            return try {
                facade.createLanguage(languageRef)
            } catch (e: Exception) {
                rethrowIfCancellation(e)
                null
            }
        }
        val allLanguages = LanguageRegistry.getInstance(repository).allLanguages
        return allLanguages.find { it.qualifiedName == languageRef }
    }

    protected fun resolveLanguagePreferringProject(mpsProject: MPSProject, languageRef: String): SLanguage? {
        if (languageRef.startsWith("l:")) {
            return resolveLanguage(mpsProject.repository, languageRef)
        }
        (resolveModule(mpsProject, languageRef, projectOnly = true) as? Language)?.let {
            return MetaAdapterByDeclaration.getLanguage(it)
        }
        return resolveLanguage(mpsProject.repository, languageRef)
    }

    protected fun resolveNodeReference(repository: SRepository, nodeRefStr: String): SNodeReference? {
        if (nodeRefStr.startsWith("c:")) {
            throw McpInvalidReferenceException("Expected a node reference (r:... or i:...), but a concept reference was provided: $nodeRefStr")
        }
        val facade = PersistenceFacade.getInstance()
        try {
            return facade.createNodeReference(nodeRefStr)
        } catch (e: Exception) {
            rethrowIfCancellation(e)
            // Try searching by name (root nodes)
            // Support "ModelName.RootName" format
            if (nodeRefStr.contains(".")) {
                val lastDot = nodeRefStr.lastIndexOf(".")
                val modelName = nodeRefStr.substring(0, lastDot)
                val rootName = nodeRefStr.substring(lastDot + 1)
                for (module in repository.modules) {
                    for (model in module.models) {
                        if (model.name.longName == modelName || model.name.value == modelName) {
                            for (root in model.rootNodes) {
                                if (root.name == rootName) return root.reference
                            }
                        }
                    }
                }
            }

            for (module in repository.modules) {
                for (model in module.models) {
                    for (root in model.rootNodes) {
                        if (root.name == nodeRefStr) {
                            return root.reference
                        }
                    }
                }
            }
        }
        return null
    }

    protected fun resolveNodeReference(mpsProject: MPSProject, nodeRefStr: String): SNodeReference? {
        if (nodeRefStr.startsWith("c:")) {
            throw McpInvalidReferenceException("Expected a node reference (r:... or i:...), but a concept reference was provided: $nodeRefStr")
        }
        val repository = mpsProject.repository
        val facade = PersistenceFacade.getInstance()
        try {
            val ref = facade.createNodeReference(nodeRefStr)
            val node = ref.resolve(repository)
            if (node != null && node.model?.let { isModelInSelectedProject(mpsProject, it) } == true) {
                return node.reference
            }
        } catch (e: Exception) {
            rethrowIfCancellation(e)
            // Try searching by name (root nodes)
            // Support "ModelName.RootName" format
            if (nodeRefStr.contains(".")) {
                val lastDot = nodeRefStr.lastIndexOf(".")
                val modelName = nodeRefStr.substring(0, lastDot)
                val rootName = nodeRefStr.substring(lastDot + 1)
                for (module in mpsProject.projectModulesWithGenerators) {
                    for (model in module.models) {
                        if (model.name.longName == modelName || model.name.value == modelName) {
                            for (root in model.rootNodes) {
                                if (root.name == rootName) return root.reference
                            }
                        }
                    }
                }
            }

            for (module in mpsProject.projectModulesWithGenerators) {
                for (model in module.models) {
                    for (root in model.rootNodes) {
                        if (root.name == nodeRefStr) {
                            return root.reference
                        }
                    }
                }
            }
        }
        return null
    }

    protected fun resolveNodeReferencePreferringProject(mpsProject: MPSProject, nodeRefStr: String): SNodeReference? =
        resolveNodeReference(mpsProject, nodeRefStr)
            ?: resolveNodeReference(mpsProject.repository, nodeRefStr)

    protected fun containmentLinkInfoJson(link: SContainmentLink, repository: SRepository?): String {
        return containmentLinkInfoJsonObject(link, repository, includeDeprecated = true).toString()
    }

    protected fun containmentLinkInfoJsonObject(
        link: SContainmentLink,
        repository: SRepository?,
        includeDeprecated: Boolean = true,
        currentProject: MPSProject? = null,
        cache: ProjectMembershipCache? = null
    ): JsonObject {
        val declarationNode = if (repository != null) link.sourceNode?.resolve(repository) else null
        val obj = JsonObject()
        obj.addProperty("role", link.name)
        obj.addProperty("type", link.targetConcept.name)
        obj.addProperty("typeReference", PersistenceFacade.getInstance().asString(link.targetConcept))
        obj.addProperty("cardinality", getCardinality(link))
        obj.addProperty("doc", getDoc(declarationNode))
        if (repository != null) {
            addContainingProjectIfForeign(obj, currentProject, link.targetConcept, repository, "type", cache)
        }
        if (includeDeprecated) {
            obj.addProperty("deprecated", getDeprecationInfo(declarationNode))
        }
        return obj
    }

    protected fun conceptInfoJson(concept: SAbstractConcept, repository: SRepository, currentProject: MPSProject? = null, cache: ProjectMembershipCache? = null): String {
        return conceptInfoJsonObject(concept, repository, currentProject, cache).toString()
    }

    protected fun conceptInfoJsonObject(
        concept: SAbstractConcept,
        repository: SRepository,
        currentProject: MPSProject? = null,
        cache: ProjectMembershipCache? = null
    ): JsonObject {
        val facade = PersistenceFacade.getInstance()
        val c = cache ?: ProjectMembershipCache(currentProject)
        val name = concept.name
        val qualifiedName = structureQualifiedName(concept)
        val conceptAlias = concept.conceptAlias
        val conceptReference = facade.asString(concept)
        val languageReference = facade.asString(concept.language)
        val superConcept = concept.superConcept?.let { facade.asString(it) } ?: ""
        val sourceNode = concept.sourceNode?.let { facade.asString(it) } ?: ""
        val isAbstract = concept.isAbstract
        val isInterfaceConcept = concept is SInterfaceConcept
        val isRootable = isRootable(concept, repository)
        val declarationNode = concept.sourceNode?.resolve(repository)
        val virtualFolder = declarationNode?.getProperty(SNodeUtil.property_BaseConcept_virtualPackage) ?: ""
        val shortDescription = concept.shortDescription
        val doc = getDoc(declarationNode)
        val deprecated = getDeprecationInfo(declarationNode)
        val superInterfaces = JsonArray()
        val superInterfaceDetails = JsonArray()
        for (superInterface in concept.superInterfaces) {
            val superInterfaceRef = facade.asString(superInterface)
            superInterfaces.add(superInterfaceRef)
            val superInterfaceObj = namedReferenceJsonObject(superInterface.name, superInterfaceRef)
            addContainingProjectIfForeign(superInterfaceObj, currentProject, superInterface, repository, cache = c)
            superInterfaceDetails.add(superInterfaceObj)
        }

        val obj = JsonObject()
        obj.addProperty("name", name)
        obj.addProperty("qualifiedName", qualifiedName)
        obj.addProperty("conceptAlias", conceptAlias)
        obj.addProperty("shortDescription", shortDescription)
        addDocAndDeprecated(obj, doc, deprecated)
        obj.addProperty("conceptReference", conceptReference)
        obj.addProperty("languageReference", languageReference)
        obj.addProperty("superConcept", superConcept)
        concept.superConcept?.let { addContainingProjectIfForeign(obj, currentProject, it, repository, "superConcept", c) }
        obj.add("superInterfaces", superInterfaces)
        obj.add("superInterfaceDetails", superInterfaceDetails)
        obj.addProperty("sourceNode", sourceNode)
        obj.addProperty("isAbstract", isAbstract)
        obj.addProperty("isInterfaceConcept", isInterfaceConcept)
        obj.addProperty("isRootable", isRootable)
        obj.addProperty("virtualFolder", virtualFolder)
        obj.addProperty("present", true)
        addContainingProjectIfForeign(obj, currentProject, concept, repository, cache = c)
        // Surface staleness so downstream callers (get_concept_details, search_concepts, …) do
        // not silently treat a hollow runtime descriptor as a real one. The check matches the
        // up-front gate in scaffold_editor: a runtime concept with no sourceNode and empty
        // properties/references/children is a stale descriptor produced by an incremental
        // make that did not regenerate the language aspect descriptor. The recovery is a
        // clean rebuild via `mps_mcp_alter_nodes` MAKE with `rebuild = true`;
        // `mps_mcp_reload_all` alone is not sufficient because the StructureAspectDescriptor
        // class files on disk are still stale.
        if (isHollowDescriptor(concept)) {
            obj.addProperty("descriptorStatus", "hollow")
            obj.addProperty(
                "descriptorRecoveryAction",
                "Run mps_mcp_alter_nodes with operation=MAKE and rebuild=true targeting the language module (not just the structure model), then retry."
            )
        }
        return obj
    }

    /**
     * Heuristic used to detect a stale language runtime descriptor produced by an incremental
     * make that did not regenerate the language aspect descriptor. A real concept has either a
     * resolvable `sourceNode` or some non-empty properties/links; the all-null/all-empty shape
     * only appears when the runtime is out of sync with the structure model. See the comment in
     * [conceptInfoJsonObject] and the gate in `mps_mcp_scaffold_editor` for the recovery path.
     */
    protected fun isHollowDescriptor(concept: SAbstractConcept): Boolean {
        return concept.sourceNode == null &&
            concept.properties.isEmpty() &&
            concept.referenceLinks.isEmpty() &&
            concept.containmentLinks.isEmpty()
    }

    /**
     * Ground-truth post-make verification for freshly created concepts.
     *
     * The event-level reload latch in [performMake] only proves that *a* language reload
     * fired. For a brand-new, never-before-deployed language that latch is vacuous: the
     * explicit `ClassLoaderManager.reload` produces an empty module-watcher diff, so
     * `LanguageRegistry.onLoaded` never re-creates the runtime (it skips an already-present
     * `SLanguageId`), yet `performMake` still counts the latch down and reports
     * `runtimeReady = true`. The descriptor read back is then hollow.
     *
     * Rather than trust the latch, this reads each created concept's runtime descriptor
     * straight out of [LanguageRegistry] and asks whether it actually materialized. This is
     * the authoritative readiness signal for `CREATE_CONCEPTS make:true`.
     *
     * @param conceptDeclRefs node references (`r:...`) of the created concept *declaration*
     *   nodes, as collected in `createdReferences`.
     * @return the names (or, when a name is unavailable, the refs) of concepts whose runtime
     *   descriptor is still hollow or entirely absent from the registry. An empty list means
     *   every created concept is consistently readable. Must be called inside a read action.
     */
    protected fun hollowRuntimeConcepts(repository: SRepository, conceptDeclRefs: Collection<String>): List<String> {
        if (conceptDeclRefs.isEmpty()) return emptyList()
        refreshRegistries(repository)
        val facade = PersistenceFacade.getInstance()
        val registry = LanguageRegistry.getInstance(repository)
        val hollow = mutableListOf<String>()
        for (ref in conceptDeclRefs) {
            val declNode = try {
                facade.createNodeReference(ref)?.resolve(repository)
            } catch (e: Exception) {
                rethrowIfCancellation(e)
                null
            }
            if (declNode == null) {
                // The declaration node we just created no longer resolves — treat as not-ready.
                hollow.add(ref)
                continue
            }
            val name = declNode.name ?: ref
            val declConcept = MetaAdapterByDeclaration.getConcept(declNode)
            val runtime = registry.getLanguage(declConcept.language)
            if (runtime == null) {
                // Language has no loaded runtime at all — the strongest form of "stale".
                hollow.add(name)
                continue
            }
            val declRef = facade.asString(declConcept)
            val runtimeConcept = runtime.concepts.find { facade.asString(it) == declRef }
            if (runtimeConcept == null || isHollowDescriptor(runtimeConcept)) {
                hollow.add(name)
            }
        }
        return hollow
    }

    /**
     * Sealed result so the caller can distinguish "no usable runtime at all" from
     * "runtime loaded but source model has unbuilt changes" — different recovery
     * stories deserve different error wording.
     */
    internal sealed class ScaffoldingStaleness {
        data object Fresh : ScaffoldingStaleness()
        data class Stale(val reason: String, val recoveryHint: String) : ScaffoldingStaleness()
    }

    /**
     * Coarser-but-canonical staleness gate for scaffold-editor.
     *
     * Tradeoff vs. per-concept structural comparison: when the structure model is
     * dirty for *any* reason, every concept in it is flagged. The false positive
     * costs at most one extra rebuild of the structure aspect, which is idempotent
     * and what the user would have to do anyway. In return we delegate to MPS's
     * own `ModelGenerationStatusManager.generationRequired`, the same predicate the
     * project view's "outdated" indicator uses, and we automatically cover every
     * concept-declaration change kind (cardinality, target concept, abstract,
     * alias, ConceptKind, behavior/constraints/...) without metamodel-specific code.
     *
     * Known limitation: cross-model dependencies are not tracked. Editing language Y's
     * concept does not dirty language X's structure model even when X references Y.
     */
    internal fun checkScaffoldingStaleness(
        concept: SAbstractConcept,
        project: MPSProject,
    ): ScaffoldingStaleness {
        // 1) Language registry — clearer error than the model-level check when the
        //    language has not been loaded at all (e.g. missing dependency, never-built).
        val repository = project.repository
        if (LanguageRegistry.getInstance(repository).getLanguage(concept.language) == null) {
            return ScaffoldingStaleness.Stale(
                reason = "Language '${concept.language.qualifiedName}' has no loaded runtime",
                recoveryHint = "Build the language module (or check that it is listed in the project's " +
                    "module dependencies), then retry.",
            )
        }

        // 2) Hollow descriptor — null sourceNode plus empty properties/links is the
        //    sentinel for an on-disk language-aspect descriptor that survived an
        //    incremental make in a stale shape. `generationRequired` does NOT catch
        //    this case (the source model can be clean while the on-disk descriptor
        //    classes are corrupt), so we keep the dedicated check here. Recovery
        //    requires `MAKE rebuild=true`, not the plain MAKE that the dirty-model
        //    branch recommends, hence the distinct recovery hint.
        if (isHollowDescriptor(concept)) {
            return ScaffoldingStaleness.Stale(
                reason = "hollow runtime descriptor (null sourceNode and no properties, references, " +
                    "or children); the language runtime is out of sync with the structure model",
                recoveryHint = DESCRIPTOR_REBUILD_INSTRUCTION_HOLLOW,
            )
        }

        // 3) Structure-model generation status — true when the source model has been
        //    edited since the last successful generation (covers both in-memory dirty
        //    edits and saved-but-not-regenerated states). Accessed reflectively to
        //    avoid a hard dependency on the optional generator-engine module — same
        //    pattern as the pre-make gate elsewhere in this plugin.
        //
        // sourceNode can still be null here when the descriptor is *not* hollow (has
        // properties/links but no resolvable source). This shape only appears in
        // unusual states (e.g. partial reload after structure-model removal); without
        // a structure model to probe, we can't run the dirty-model check, so we
        // degrade open but log so a real regression is observable in idea.log.
        val sourceNode = concept.sourceNode?.resolve(repository) ?: run {
            logger.warn(
                "checkScaffoldingStaleness: concept '${concept.language.qualifiedName}.${concept.name}' " +
                    "has non-empty descriptor but unresolvable sourceNode; treating as Fresh and " +
                    "letting scaffolding proceed (cannot probe generation status without a source model)."
            )
            return ScaffoldingStaleness.Fresh
        }
        val structureModel = sourceNode.model ?: run {
            logger.warn(
                "checkScaffoldingStaleness: source node for concept " +
                    "'${concept.language.qualifiedName}.${concept.name}' resolved but has no enclosing " +
                    "model; treating as Fresh. This is an anomalous repository state that should not " +
                    "normally occur — investigate if seen in production."
            )
            return ScaffoldingStaleness.Fresh
        }
        // Catch only the reflective lookup/invocation exceptions that signal the optional
        // generator-engine module is absent or shaped differently than expected. Anything
        // broader (ProcessCanceledException, Error, plain RuntimeException from inside
        // generationRequired itself) must propagate so the EDT command honors cancellation
        // and does not mask real failures as "model fresh".
        val generationRequired = try {
            val mgsmClass = Class.forName("jetbrains.mps.generator.ModelGenerationStatusManager")
            val mgsm = project.getComponent(mgsmClass) ?: return ScaffoldingStaleness.Fresh
            val method = mgsmClass.getMethod("generationRequired", SModel::class.java)
            ((method.invoke(mgsm, structureModel) as? Boolean) ?: false)
        } catch (_: ClassNotFoundException) {
            // Optional generator-engine module not on the classpath; deterministic, structural.
            false
        } catch (_: NoSuchMethodException) {
            // generationRequired() shape changed in this build; deterministic, structural.
            false
        } catch (e: java.lang.reflect.InvocationTargetException) {
            // The target call itself threw. Unwrap and rethrow cancellation/Error so the EDT
            // command terminates correctly; degrade open for anything else, but log it —
            // generationRequired() is supposed to be a cheap, deterministic hash lookup, so
            // any failure here represents a real regression worth surfacing in idea.log.
            val cause = e.cause ?: e
            rethrowIfCancellation(cause)
            if (cause is Error) throw cause
            if (cause is RuntimeException) throw cause
            logger.warn(
                "ModelGenerationStatusManager.generationRequired threw for model '${structureModel.name}'; " +
                    "treating as Fresh (scaffolding will proceed). A stale descriptor may slip through " +
                    "this branch; this should not happen in normal operation.",
                cause,
            )
            false
        } catch (_: IllegalAccessException) {
            // JVM module / accessibility issue; deterministic for the running JDK + module setup.
            false
        }
        if (generationRequired) {
            return ScaffoldingStaleness.Stale(
                reason = "structure model '${structureModel.name}' has unbuilt changes; the language " +
                    "runtime is out of sync with the source model and scaffolding would produce a " +
                    "stale editor",
                recoveryHint = DESCRIPTOR_REBUILD_INSTRUCTION,
            )
        }
        return ScaffoldingStaleness.Fresh
    }

    protected fun saveToTempFile(json: String): File {
        val response = okJson(json)
        val prettyResponse = try {
            val jsonElement = JsonParser.parseString(response)
            PRETTY_GSON.toJson(jsonElement)
        } catch (e: Exception) {
            rethrowIfCancellation(e)
            response
        }
        val tempFile = File.createTempFile(TEMP_JSON_PREFIX, TEMP_JSON_SUFFIX)
        tempFile.deleteOnExit()
        try {
            tempFile.writeText(prettyResponse, Charsets.UTF_8)
        } catch (e: Throwable) {
            try {
                tempFile.delete()
            } catch (suppressed: Throwable) {
                e.addSuppressed(suppressed)
            }
            throw e
        }
        createdTempJsonFiles.add(tempFile.canonicalPath)
        return tempFile
    }

    /**
     * Reads a parameter that conventionally holds a string (a stringified JSON blob, or a path
     * to a JSON file consumed by [readJsonOrFile]). Some callers send the value as an inline
     * `JsonObject`/`JsonArray` instead of a string; accept both shapes by serializing inline
     * structures back to a JSON string. Returns `null` for missing or `null` values, and
     * throws [McpInvalidRequestException] for unsupported shapes (e.g., a non-string primitive).
     */
    protected fun readStringOrInlineJsonParam(params: JsonObject, name: String): String? {
        val element = params.get(name) ?: return null
        if (element.isJsonNull) return null
        if (element.isJsonPrimitive) {
            val prim = element.asJsonPrimitive
            if (prim.isString) return prim.asString
            throw McpInvalidRequestException(
                "Parameter '$name' must be a string (file path or stringified JSON) or an inline JSON object/array; got ${prim}"
            )
        }
        if (element.isJsonObject || element.isJsonArray) return element.toString()
        throw McpInvalidRequestException("Parameter '$name' has unsupported JSON shape")
    }

    protected fun readJsonOrFile(jsonOrPath: String?, dryRun: Boolean = false): String? {
        if (jsonOrPath == null) return null
        val trimmed = jsonOrPath.trim()
        if (trimmed.startsWith("{") || trimmed.startsWith("[")) {
            if (jsonOrPath.length > 4096) {
                throw McpInvalidRequestException(
                    "Direct JSON input is too large (${jsonOrPath.length} chars). " +
                            "To prevent MCP truncation errors, please save the JSON to a temporary file and pass the absolute path instead. " +
                            "The limit for direct JSON is 4096 characters."
                )
            }
            return jsonOrPath
        }
        val file = File(jsonOrPath)
        if (!file.exists()) {
            forgetCreatedTempFile(file)
            throw McpInvalidRequestException("Input is neither a valid JSON object/array nor an existing file path: '$jsonOrPath'")
        }
        if (!file.isFile) {
            throw McpInvalidRequestException("Input path is not a regular file: '$jsonOrPath'")
        }
        // Path-traversal guard: only allow files inside the system temp directory.
        // Callers are expected to write JSON to a temp file and pass the absolute path; accepting
        // arbitrary paths would let the AI read any file the MPS process can access (e.g. SSH keys).
        // TODO: also allow paths inside the project root once the project root is threaded through here.
        val canonicalFile = try { file.canonicalFile } catch (e: Exception) {
            throw McpInvalidRequestException("Cannot resolve file path '$jsonOrPath': ${e.message}")
        }
        val tempDir = try { File(System.getProperty("java.io.tmpdir")).canonicalFile } catch (e: Exception) { null }
        if (tempDir != null && !canonicalFile.path.startsWith(tempDir.path + File.separator) && canonicalFile.path != tempDir.path) {
            throw McpInvalidRequestException(
                "Input file path '$jsonOrPath' is not inside the system temp directory. " +
                        "Write the JSON to a temp file (e.g. via File.createTempFile) and pass that path instead."
            )
        }
        val sizeBytes = file.length()
        if (sizeBytes > MAX_INPUT_FILE_SIZE_BYTES) {
            throw McpInvalidRequestException(
                "Input file is too large ($sizeBytes bytes); the limit is $MAX_INPUT_FILE_SIZE_BYTES bytes (10 MB)."
            )
        }
        val content = file.readText(Charsets.UTF_8)
        if (!dryRun) {
            deleteCreatedTempFile(file)
        }
        return content
    }

    private fun deleteCreatedTempFile(file: File) {
        val canonicalFile = try {
            file.canonicalFile
        } catch (e: Exception) {
            logger.warn("Failed to resolve JSON input file path for cleanup", e)
            return
        }
        val canonicalPath = canonicalFile.path
        if (!createdTempJsonFiles.contains(canonicalPath)) return
        if (!isDefaultTempJsonFile(canonicalFile)) return

        try {
            if (!canonicalFile.delete() && canonicalFile.exists()) {
                logger.warn("Failed to delete temporary JSON file: $canonicalPath")
            }
        } catch (e: Exception) {
            logger.warn("Failed to delete temporary JSON file: $canonicalPath", e)
        } finally {
            createdTempJsonFiles.remove(canonicalPath)
        }
    }

    private fun isDefaultTempJsonFile(file: File): Boolean {
        val tempDir = try {
            File(System.getProperty("java.io.tmpdir")).canonicalFile
        } catch (e: Exception) {
            logger.warn("Failed to resolve default temporary directory", e)
            return false
        }
        // canonicalFile.parentFile is canonical too, so this comparison does not depend on path spelling.
        return com.intellij.openapi.util.io.FileUtil.filesEqual(file.parentFile, tempDir) &&
                file.name.startsWith(TEMP_JSON_PREFIX) &&
                file.name.endsWith(TEMP_JSON_SUFFIX)
    }

    private fun forgetCreatedTempFile(file: File) {
        try {
            createdTempJsonFiles.remove(file.canonicalPath)
        } catch (e: Exception) {
            logger.warn("Failed to resolve JSON input file path for cleanup", e)
        }
    }

    /**
     * Detailed message from the make operation.
     */
    data class MakeMessage(val kind: String, val text: String)

    /**
     * Result of a make operation.
     *
     * `runtimeReady` answers: "can the caller trust the language runtime descriptors for the
     * targets it asked us to build?". True only when the post-make `ClassLoaderManager.reload`
     * was confirmed (listener latch fired, or no language modules to track). False on every
     * path where that confirmation did not happen — build failures, unhandled exceptions, and
     * latch timeout. Callers consuming freshly built concepts should branch on `runtimeReady`.
     *
     * Exception: the "Nothing to make" path returns `success=true, runtimeReady=true` — nothing
     * changed, so the runtime is unchanged-therefore-ready. Callers distinguishing no-op from
     * successful build should also inspect [message].
     */
    data class MakeResult(
        val success: Boolean,
        val message: String,
        val details: List<MakeMessage> = emptyList(),
        val runtimeReady: Boolean = true,
    )

    /**
     * Snapshot of state collected inside the model read action and consumed by [performMake] after
     * the suspending call returns. Bundling all values in a `val` payload avoids `var` capture
     * across coroutine context boundaries.
     */
    private data class MakePreparation(
        val resourcesList: List<jetbrains.mps.make.resources.IResource>,
        val session: MakeSession,
        val targetLanguageIds: Set<SLanguageId>,
        val targetLanguageModuleRefs: Set<SModuleReference>,
        val targetLanguageNamespaces: Set<String>,
    )

    /**
     * Performs a make operation on the given models.
     * This is a shared utility used by multiple MCP tools.
     */
    protected suspend fun performMake(mpsProject: MPSProject, models: List<SModel>, modules: List<SModule> = emptyList(), rebuild: Boolean): MakeResult {
        return try {
            // Every `success = false` branch reports `runtimeReady = false`; see MakeResult KDoc.
            val makeServiceComponent = mpsProject.getComponent(MakeServiceComponent::class.java)
                ?: return MakeResult(false, "Make service component not found", runtimeReady = false)

            val makeService = makeServiceComponent.get()
                ?: return MakeResult(false, "No active make service", runtimeReady = false)

            if (makeService.isSessionActive) {
                return MakeResult(false, "Another make session is already active", runtimeReady = false)
            }

            val messages = mutableListOf<MakeMessage>()
            val makeMonitor = coroutineProgressMonitor()
            val handler = IMessageHandler { msg: IMessage ->
                if (msg.kind == MessageKind.ERROR || msg.kind == MessageKind.WARNING) {
                    messages.add(MakeMessage(msg.kind.name, msg.text))
                }
            }

            // Collect the language IDs we expect to see reloaded after the build, so
            // the afterLanguagesLoaded latch can be made language-specific and not
            // triggered prematurely by an unrelated background language reload.
            // Also collect the corresponding module references so we can drive
            // ClassLoaderManager.reload synchronously after the make completes.
            val preparation = executeBackgroundRead(mpsProject) {
                // Expand modules to include generators for languages
                val expandedModules = expandModules(modules)

                // Derive the Language modules from both the provided models and the
                // explicit/expanded modules list.
                val ids = mutableSetOf<SLanguageId>()
                val refs = mutableSetOf<SModuleReference>()
                val namespaces = mutableSetOf<String>()
                for (model in models) {
                    val m = model.module
                    if (m is Language) {
                        ids.add(MetaIdByDeclaration.getLanguageId(m))
                        refs.add(m.moduleReference)
                        // Module name (aka namespace) is stable across runtime ID shape changes
                        m.moduleName?.let { namespaces.add(it) }
                    }
                }
                for (m in expandedModules) {
                    if (m is Language) {
                        ids.add(MetaIdByDeclaration.getLanguageId(m))
                        refs.add(m.moduleReference)
                        m.moduleName?.let { namespaces.add(it) }
                    }
                }

                // Compose resources from provided models and explicit modules
                val list = mutableListOf<jetbrains.mps.make.resources.IResource>()
                val seenModules = HashSet<String>()

                // 1) Resources for models (grouped by module, clean/rebuild propagated)
                val modelResources = ModelsToResources(models, rebuild).resources()
                for (r in modelResources) {
                    list.add(r)
                    if (r is MResource) {
                        seenModules.add(PersistenceFacade.getInstance().asString(r.module().moduleReference))
                    }
                }

                // 2) Ensure every requested module is present as a resource, even if it has no generatable models
                for (m in expandedModules) {
                    val key = PersistenceFacade.getInstance().asString(m.moduleReference)
                    if (!seenModules.contains(key)) {
                        val mr = MResource(m, m.models)
                        if (rebuild) {
                            mr.setValue(MakeKeys.CLEAN_MAKE, true)
                        }
                        list.add(mr)
                        seenModules.add(key)
                    }
                }

                val s = MakeSession(mpsProject, handler, rebuild)
                MakePreparation(list, s, ids, refs, namespaces)
            }
            val resourcesList = preparation.resourcesList
            val session = preparation.session
            val targetLanguageIds = preparation.targetLanguageIds
            val targetLanguageModuleRefs = preparation.targetLanguageModuleRefs
            val targetLanguageNamespaces = preparation.targetLanguageNamespaces

            // Do not open a session for a no-op make. A session-open notification blocks
            // migrations, while this return path does not call makeService.make(), which is
            // responsible for closing the session again.
            if (resourcesList.isEmpty()) {
                return MakeResult(true, "Nothing to make (no inputs resolved)")
            }

            // Open the make session OUTSIDE the model read action. WorkbenchMakeService.openNewSession
            // calls DumbService.waitForSmartMode() on non-EDT threads, and the platform asserts that
            // waitForSmartMode must not be invoked from inside a read action while in dumb mode.
            val openNewSessionFlag = withContext(Dispatchers.Default) {
                makeService.openNewSession(session)
            }
            if (!openNewSessionFlag) {
                return MakeResult(false, "Opening the make session failed", runtimeReady = false)
            }

            // Register the listener BEFORE starting the make so no afterLanguagesLoaded
            // notification is missed even if the language is reloaded during the build.
            val languageReloadLatch = CountDownLatch(1)
            val reloadListener = object : LanguageRegistryListener {
                override fun afterLanguagesLoaded(languages: Iterable<LanguageRuntime>) {
                    // Only count down when a language we're actually building is reloaded.
                    // Ignoring unrelated background reloads prevents premature latch release
                    // that would let concept-detail tools read a stale StructureAspectDescriptor.
                    // When targetLanguageIds is empty (e.g. solution modules with no language
                    // runtime) we fall back to accepting any reload to avoid an unnecessary wait.
                    val noTargets = targetLanguageIds.isEmpty() && targetLanguageNamespaces.isEmpty()
                    if (noTargets || languages.any { lr ->
                            // Be tolerant to ID shape changes and classloader nuances.
                            val idMatch = try {
                                val id = lr.id
                                (id is SLanguageId) && targetLanguageIds.contains(id)
                            } catch (e: Throwable) {
                                rethrowIfCancellation(e)
                                false
                            }
                            val nsMatch = try {
                                targetLanguageNamespaces.contains(lr.namespace)
                            } catch (e: Throwable) {
                                rethrowIfCancellation(e)
                                false
                            }
                            idMatch || nsMatch
                        }) {
                        languageReloadLatch.countDown()
                    }
                }
            }
            val languageRegistry = LanguageRegistry.getInstance(mpsProject.repository)
            languageRegistry.addRegistryListener(reloadListener)

            // Captured inside the `withContext` block below and read after the make finishes.
            // Starts true so the "no language modules to track" path (targetLanguageIds empty)
            // returns the N/A default; flipped to false only when the build succeeded but the
            // 10 s reload-latch timed out for a language we were actually building.
            var runtimeReady = true
            val result = try {
                val future = makeService.make(session, resourcesList, null, null, makeMonitor)
                val r = try {
                    // runInterruptible bridges Thread.interrupt() to coroutine cancellation so a
                    // structured-cancel actually unblocks future.get() instead of waiting for the
                    // build to finish.
                    runInterruptible(Dispatchers.IO) {
                        future.get()
                    }
                } catch (e: CancellationException) {
                    makeMonitor.cancel()
                    future.cancel(true)
                    throw e
                }
                withContext(Dispatchers.IO) {
                    // isSucessful is a typo in the MPS IResult API (jetbrains.mps.make.script.IResult).
                    if (r.isSucessful) {
                        // The make pipeline only refreshes the language runtime indirectly:
                        // Project.reconcileProjectFiles -> markDirtyAndRefresh -> module
                        // events -> ClassLoaderManager.processModuleChanges -> notifyLoad
                        // -> afterLanguagesLoaded. That chain is asynchronous (invokeLater)
                        // and races EDT scheduling; under contention, or when the make
                        // produced no class-file deltas, the latch can miss its window and
                        // callers end up reading a stale StructureAspectDescriptor (empty
                        // properties / references / children, null sourceNode).
                        //
                        // Drive the reload synchronously instead, mirroring what
                        // DefaultMakeTask does after a regular UI make. CLM.reload is
                        // idempotent and acquires its own write action, so calling it here
                        // is safe even when a natural reload already happened earlier.
                        // afterLanguagesLoaded fires synchronously inside CLM.reload, so
                        // by the time it returns the latch is down for the target
                        // languages.
                        if (targetLanguageModuleRefs.isNotEmpty()) {
                            try {
                                val classLoaderManager = mpsProject.getComponent(ClassLoaderManager::class.java)
                                classLoaderManager?.reload(targetLanguageModuleRefs, EmptyProgressMonitor())
                                languageReloadLatch.countDown() // Treat explicit reload completion as definitive
                            } catch (e: CancellationException) {
                                throw e
                            } catch (e: ProcessCanceledException) {
                                throw e
                            } catch (e: Exception) {
                                messages.add(
                                    MakeMessage(
                                        "WARNING",
                                        "Explicit ClassLoaderManager.reload failed: ${e.message}. " +
                                                "Concept descriptors may be stale; retry the build with " +
                                                "`rebuild = true` (mps_mcp_reload_all alone reloads from " +
                                                "disk and cannot fix stale aspect descriptor classes)."
                                    )
                                )
                            }
                        }
                        // Short safety-net await: the listener should already have fired
                        // synchronously inside CLM.reload above. We still wait briefly to
                        // cover natural reloads (e.g. languages outside targetLanguageModuleRefs)
                        // and to absorb any tail latency of LanguageRegistry notifications.
                        // runInterruptible makes the blocking await honor coroutine cancellation.
                        val latchFired = runInterruptible {
                            languageReloadLatch.await(LANGUAGE_RELOAD_TIMEOUT_SECONDS, TimeUnit.SECONDS)
                        }
                        if (!latchFired && targetLanguageIds.isNotEmpty()) {
                            runtimeReady = false
                            messages.add(
                                MakeMessage(
                                    "WARNING",
                                    "Language runtime did not reload within $LANGUAGE_RELOAD_TIMEOUT_SECONDS s after the build " +
                                            "(languages: ${targetLanguageIds.joinToString()}). " +
                                            "Concept descriptors (properties, references, children) may " +
                                            "be stale. Retry the build with `rebuild = true` " +
                                            "(`mps_mcp_reload_all` alone reloads from disk and cannot fix " +
                                            "stale aspect descriptor classes); restart MPS as a last resort."
                                )
                            )
                        }
                    }
                    r
                }
            } finally {
                languageRegistry.removeRegistryListener(reloadListener)
            }

            if (result.isSucessful) { // isSucessful: MPS IResult API typo
                MakeResult(true, "Make successful", messages, runtimeReady = runtimeReady)
            } else {
                MakeResult(false, "Make failed: ${result.message()}", messages, runtimeReady = false)
            }
        } catch (e: CancellationException) {
            throw e
        } catch (e: ProcessCanceledException) {
            throw e
        } catch (e: Exception) {
            MakeResult(false, "Make error: ${e.message?.takeIf { it.isNotBlank() } ?: e.toString()}", runtimeReady = false)
        }
    }
}
