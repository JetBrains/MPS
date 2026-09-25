package jetbrains.mps.agents.mcp.tools.integration

import jetbrains.mps.agents.mcp.tools.*
import jetbrains.mps.agents.mcp.tools.common.*

import com.google.gson.JsonArray
import com.google.gson.JsonElement
import com.google.gson.JsonParser
import com.intellij.mcpserver.ClientInfo
import com.intellij.mcpserver.McpCallAdditionalDataElement
import com.intellij.mcpserver.McpCallInfo
import com.intellij.mcpserver.McpToolCategory
import com.intellij.mcpserver.McpToolDescriptor
import com.intellij.mcpserver.McpToolFilter
import com.intellij.mcpserver.McpToolSchema
import com.intellij.mcpserver.McpToolset
import com.intellij.mcpserver.annotations.McpTool
import com.intellij.mcpserver.impl.McpServerService
import com.intellij.mcpserver.impl.util.CallableBridge
import com.intellij.mcpserver.impl.util.asTools
import com.intellij.openapi.application.ApplicationManager
import com.intellij.openapi.application.ModalityState
import com.intellij.openapi.project.DumbService
import com.intellij.testFramework.IndexingTestUtil
import jetbrains.mps.ide.ModuleInProjectTest
import jetbrains.mps.project.MPSProject
import jetbrains.mps.project.Solution
import jetbrains.mps.project.modules.LanguageProducer
import jetbrains.mps.project.modules.SolutionProducer
import jetbrains.mps.smodel.Language
import jetbrains.mps.tool.environment.Environment
import jetbrains.mps.vfs.IFile
import kotlinx.coroutines.runBlocking
import kotlinx.serialization.json.JsonObject
import org.jetbrains.mps.openapi.model.SModel
import org.jetbrains.mps.openapi.model.SModelName
import org.jetbrains.mps.openapi.model.SNode
import org.jetbrains.mps.openapi.module.SModule
import org.jetbrains.mps.openapi.persistence.PersistenceFacade
import org.junit.After
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Before
import java.io.File
import java.util.Collections
import java.util.logging.Handler
import java.util.logging.LogRecord
import java.util.logging.Logger
import kotlin.reflect.full.declaredFunctions
import kotlin.reflect.full.findAnnotation
import kotlinx.serialization.json.JsonElement as McpJsonElement

/**
 * Base class for MCP toolset integration tests. Inherits the [MPSProject] lifecycle from
 * [ModuleInProjectTest] (`before` creates an empty project, `after` closes it) and adds:
 *  - a writable [Language] module with a fresh `structure` model;
 *  - module-creation helpers shared between toolset tests;
 *  - a [runTool] helper that injects a stub [McpCallAdditionalDataElement] into the
 *    coroutine context so MCP tools can be invoked directly from JUnit.
 *
 * The MCP server reads `project` and `mcpToolDescriptor` off [McpCallInfo] in
 * `reportToolActivity`, so the stub fills in plausible values via the public constructors
 * (no reflection / Unsafe).
 */
abstract class McpIntegrationTestBase : ModuleInProjectTest() {

    protected lateinit var language: Language
    protected lateinit var structureModel: SModel
    protected lateinit var structureModelRef: String

    /** The test [Environment], captured so multi-project tests can open a second project. */
    protected lateinit var mcpEnvironment: Environment

    override fun setEnvironment(env: Environment) {
        super.setEnvironment(env)
        mcpEnvironment = env
    }

    @Before
    fun createLanguageWithStructureModel() {
        val name = "test.lang${System.nanoTime()}"
        val moduleDir = createDirInProject(name)
        executeCommand {
            language = LanguageProducer(myProject).withGenerator(false).create(name, moduleDir)
            structureModel = language.models.single { it.name.longName.endsWith(".structure") }
            structureModelRef = PersistenceFacade.getInstance().asString(structureModel.reference)
        }
    }

    /** Creates a Solution registered with the project, located under a fresh subdirectory. */
    protected fun createSolution(name: String = "test.sol${System.nanoTime()}"): Solution {
        val dir = createDirInProject(name)
        var sol: Solution? = null
        executeCommand { sol = SolutionProducer(myProject).create(name, dir) }
        return checkNotNull(sol) { "SolutionProducer returned null" }
    }

    /** Creates an empty model in the given module via its first usable model root. */
    protected fun createModel(module: SModule, modelName: String): SModel {
        var model: SModel? = null
        executeCommand {
            val nameObj = SModelName(modelName)
            val root = module.modelRoots.first { it.canCreateModel(nameObj) }
            model = root.createModel(nameObj) ?: error("Failed to create model '$modelName'")
        }
        return checkNotNull(model)
    }

    protected fun modelRefOf(model: SModel): String =
        PersistenceFacade.getInstance().asString(model.reference)

    /**
     * Runs [block] inside a [runBlocking] coroutine that carries a stub
     * [McpCallAdditionalDataElement] pointing at this test's IDEA project.
     * The toolset is constructed inside the same coroutine context so its
     * suspend methods can resolve the project via the standard MCP plumbing.
     */
    protected fun <T : McpToolset, R> runTool(toolset: T, block: suspend (T) -> R): R =
        runToolForProject(myProject, toolset, block)

    /**
     * Like [runTool] but routes the MCP call at an explicit [project]. Used by multi-project tests
     * that need to invoke a tool "as" a project other than [myProject] (the `projectPath` selector
     * the real MCP host would resolve).
     */
    protected fun <T : McpToolset, R> runToolForProject(project: MPSProject, toolset: T, block: suspend (T) -> R): R {
        val element = McpCallAdditionalDataElement(stubMcpCallInfo(project))
        return runBlocking(element) { block(toolset) }
    }

    /** Convenience overload preserving the original concept-test call shape. */
    protected fun <R> runTool(block: suspend (JetBrainsMPSLanguageStructureMcpToolset) -> R): R =
        runTool(JetBrainsMPSLanguageStructureMcpToolset(), block)

    /**
     * Invokes the *registered* `@McpTool` overload named [toolName] through the platform's
     * [CallableBridge] — the path `ReflectionCallableMcpTool` takes for a real MCP request, with
     * [args] the request's raw argument JSON.
     *
     * [runTool] calls the Kotlin method directly and so binds arguments with the Kotlin compiler's
     * rules, never the bridge's. Only this route can observe an argument-binding outcome, which is
     * where study defect D20 lives: the bridge resolves `serializerOrNull(parameter.type)` per
     * [kotlin.reflect.KParameter] and hands it the raw [McpJsonElement], so a parameter's declared
     * type — not its body — decides which wire shapes a client may send. See [JsonOrText].
     */
    protected fun callThroughBridge(
        toolset: McpToolset,
        toolName: String,
        args: Map<String, McpJsonElement>,
        project: MPSProject = myProject,
    ): String {
        val registered = toolset::class.declaredFunctions.single { function ->
            function.name == toolName && function.findAnnotation<McpTool>() != null
        }
        val bridge = CallableBridge(registered, toolset)
        val element = McpCallAdditionalDataElement(stubMcpCallInfo(project))
        return runBlocking(element) { bridge.call(JsonObject(args)).result } as String
    }

    /** The input schema the MCP host publishes for [toolName], as generated from its Kotlin signature. */
    protected fun publishedInputSchema(toolset: McpToolset, toolName: String): McpToolSchema =
        toolset.asTools().single { it.descriptor.name == toolName }.descriptor.inputSchema

    protected fun structureRoots(): List<SNode> =
        myProject.modelAccess.computeReadAction<List<SNode>> { structureModel.rootNodes.toList() }

    protected fun <T> readOnRepo(block: () -> T): T =
        myProject.modelAccess.computeReadAction<T> { block() }

    /** [response] is the missing-key rejection (study D49) listing exactly [expected], in order. */
    protected fun assertMissingParameterKeys(response: String, expected: List<String>) {
        val envelope = JsonParser.parseString(response).asJsonObject
        assertFalse("expected error envelope: $response", envelope.get("ok").asBoolean)
        assertEquals("INVALID_REQUEST", envelope.get("code").asString)
        assertEquals(expected, envelope.getAsJsonObject("details").getAsJsonArray("missingParameters").map { it.asString })
    }

    /**
     * [response], to a call carrying every required key but only unresolvable values, got past the
     * missing-key check and failed on resolution — not internally, which is what a key read as
     * required without being declared so produces.
     */
    protected fun assertPastMissingParameterKeys(operation: String, response: String) {
        val envelope = JsonParser.parseString(response).asJsonObject
        assertFalse("$operation must not succeed on unresolvable input: $response", envelope.get("ok").asBoolean)
        assertFalse(
            "$operation must not reject its required keys as missing: $response",
            envelope.getAsJsonObject("details")?.has("missingParameters") == true,
        )
        assertFalse("$operation must not fail internally: $response", envelope.get("code")?.asString == "INTERNAL_ERROR")
    }

    /**
     * Blocks until [project] leaves dumb mode and its file indexes are ready, so a following
     * index-backed search sees the models this test just created.
     *
     * The MCP search tools go through [org.jetbrains.mps.openapi.module.FindUsagesFacade], whose
     * fast participants query the IDEA file index. Creating models mid-test starts a background
     * re-index, and a search racing it gets partial index coverage: the facade answers from
     * whatever is indexed so far, which is neither the complete answer nor the empty one the
     * tools' fallback walk is gated on. [DumbService.waitForSmartMode] is a no-op when the
     * project is already smart, so incremental indexing of an existing model still needs
     * [IndexingTestUtil.waitUntilIndexesAreReady]. Call this between a fixture that writes
     * models and an assertion on what a search returns.
     *
     * Safe from the test thread — [ModuleInProjectTest.after] waits the same way — but not from
     * the EDT or inside a read action, which the platform forbids while dumb.
     */
    protected fun waitForSmartMode(project: MPSProject = myProject) {
        val ideaProject = project.project
        DumbService.getInstance(ideaProject).waitForSmartMode()
        IndexingTestUtil.waitUntilIndexesAreReady(ideaProject)
    }

    protected fun <T> captureLogMessages(block: () -> T): Pair<T, List<String>> {
        val messages = Collections.synchronizedList(mutableListOf<String>())
        val handler = object : Handler() {
            override fun publish(record: LogRecord) {
                messages.add(record.message)
            }

            override fun flush() = Unit
            override fun close() = Unit
        }
        val rootLogger = Logger.getLogger("")
        rootLogger.addHandler(handler)
        return try {
            val result = block()
            val snapshot = synchronized(messages) { messages.toList() }
            result to snapshot
        }
        finally {
            rootLogger.removeHandler(handler)
        }
    }

    protected fun createDirInProject(subName: String): IFile = createDirIn(myProject, subName)

    /** Creates a fresh subdirectory under [project]'s project file and returns it as an [IFile]. */
    protected fun createDirIn(project: MPSProject, subName: String): IFile {
        val root = project.projectFile.canonicalFile
        val target = File(root, subName)
        check(target.mkdirs()) { "Could not create dir $target" }
        return project.fileSystem.getFile(target)
    }

    /** Returns an absolute path inside the project for a directory that may not yet exist. */
    protected fun freshPathInProject(subName: String): String {
        val root = myProject.projectFile.canonicalFile
        return File(root, subName).absolutePath
    }

    // ── shared MCP-envelope assertion helpers ──────────────────────────────────────────
    // The MCP toolsets return an envelope `{"ok":true,"data":...}` or `{"ok":false,"error":"..."}`.
    // The `data` field is sometimes a structured JsonObject/JsonArray and sometimes a JSON-string
    // (whatever the tool felt like at the time); the helpers below normalise both shapes.

    /**
     * Asserts that [response] is an ok envelope, then returns its `data` field as a [com.google.gson.JsonObject].
     * Use this when the envelope's data is known to be an object (e.g. nodeInfo, moduleInfo).
     */
    protected fun expectOk(response: String): com.google.gson.JsonObject {
        val obj = JsonParser.parseString(response).asJsonObject
        assertTrue("expected ok=true envelope, got: $response", obj.get("ok").asBoolean)
        return parseDataObject(obj.get("data"))
    }

    /** Asserts that [response] is an error envelope and returns the `error` message. */
    protected fun expectErr(response: String): String {
        val obj = JsonParser.parseString(response).asJsonObject
        assertFalse("expected error envelope: $response", obj.get("ok").asBoolean)
        return obj.get("error").asString
    }

    /** Normalises a `data` field (object directly or JSON-string-wrapped) into a [com.google.gson.JsonObject]. */
    protected fun parseDataObject(data: JsonElement): com.google.gson.JsonObject = when {
        data.isJsonObject -> data.asJsonObject
        data.isJsonPrimitive -> JsonParser.parseString(data.asString).asJsonObject
        else -> error("unexpected data shape: $data")
    }

    /** Asserts ok envelope and returns `data` parsed as a [JsonArray] (normalises JSON-string wrap). */
    protected fun parseDataArray(response: String): JsonArray {
        val obj = JsonParser.parseString(response).asJsonObject
        assertTrue("expected ok envelope: $response", obj.get("ok").asBoolean)
        val data = obj.get("data")
        val raw = if (data.isJsonPrimitive) data.asString else data.toString()
        return JsonParser.parseString(raw).asJsonArray
    }

    /**
     * Asserts ok envelope and returns `data` as a [Boolean]. Use for tools that emit
     * `okJson(boolean.toString())` — the data field is a JSON boolean primitive.
     */
    protected fun expectDataBoolean(response: String): Boolean {
        val obj = JsonParser.parseString(response).asJsonObject
        assertTrue("expected ok envelope: $response", obj.get("ok").asBoolean)
        return obj.get("data").asBoolean
    }

    /**
     * Extracts an absolute file path from an ok envelope whose `data` is the JSON-string
     * path produced by `saveToTempFileResult` (e.g. `print_node_json`, `show_node_representation`).
     * Records the file in [generatedTempFiles] so [cleanUpGeneratedTempFiles] removes it after
     * the test, regardless of whether the test passes or fails.
     */
    protected fun extractFilePathFromData(response: String): String {
        val obj = JsonParser.parseString(response).asJsonObject
        assertTrue("expected ok envelope: $response", obj.get("ok").asBoolean)
        val data = obj.get("data")
        val path = if (data.isJsonPrimitive) data.asString else error("expected primitive path in data, got $data")
        generatedTempFiles.add(File(path))
        return path
    }

    /**
     * Returns the payload of an ok envelope whose `data` is *either* the payload itself (read tools
     * inline results up to `maxInlineBytes`) *or* the absolute path of a temp file holding a second
     * ok envelope with the payload. Both layers are unwrapped, a stringified payload is parsed, and
     * a temp file that was read is registered for cleanup.
     */
    protected fun payloadFromOkData(response: String): JsonElement {
        val outer = JsonParser.parseString(response).asJsonObject
        assertTrue("expected ok=true envelope, got: $response", outer.get("ok").asBoolean)
        val data = outer.get("data")
        if (!data.isJsonPrimitive) return data
        val text = data.asString
        val file = File(text)
        if (!file.isAbsolute || !file.isFile) return JsonParser.parseString(text)
        generatedTempFiles.add(file)
        val content = file.readText()
        val fileEnvelope = JsonParser.parseString(content).asJsonObject
        assertTrue("file envelope must be ok: $content", fileEnvelope.get("ok").asBoolean)
        val fileData = fileEnvelope.get("data")
        return if (fileData.isJsonPrimitive) JsonParser.parseString(fileData.asString) else fileData
    }

    protected fun payloadObjectFromOkData(response: String): com.google.gson.JsonObject =
        payloadFromOkData(response).asJsonObject

    protected fun payloadArrayFromOkData(response: String): JsonArray =
        payloadFromOkData(response).asJsonArray

    /**
     * Creates a `ConceptDeclaration` root named [name] in the test's structure model via the
     * structure-operation toolset, and returns its persistent SNodeReference. [implements],
     * [childrenJson] and [propertiesJson] are spliced into the concept spec verbatim when provided, so
     * a caller can seed an inherited property (e.g. `INamedConcept`), child-link roles or own
     * properties for a fixture.
     */
    protected fun createConceptRoot(
        name: String,
        implements: String? = null,
        childrenJson: String? = null,
        propertiesJson: String? = null
    ): String {
        val extraFields = buildString {
            if (implements != null) append(""", "implements": "$implements"""")
            if (childrenJson != null) append(""", "children": $childrenJson""")
            if (propertiesJson != null) append(""", "properties": $propertiesJson""")
        }
        val params = """
            {
              "structureModelRef": "$structureModelRef",
              "conceptsJson": [ { "name": "$name"$extraFields } ]
            }
        """.trimIndent()
        val resp = runTool { it.mps_mcp_alter_structure(MPSStructureAlterOperation.CREATE_CONCEPTS, params) }
        val obj = JsonParser.parseString(resp).asJsonObject
        assertTrue("expected ok envelope from CREATE_CONCEPTS: $resp", obj.get("ok").asBoolean)
        return readOnRepo {
            val root = structureModel.rootNodes.single { it.name == name }
            PersistenceFacade.getInstance().asString(root.reference)
        }
    }

    /** Resolves a persistent node reference string to its [SNode], inside a read action. */
    protected fun resolveNodeRef(ref: String): SNode = readOnRepo {
        PersistenceFacade.getInstance().createNodeReference(ref).resolve(myProject.repository)
            ?: error("node '$ref' did not resolve")
    }

    /**
     * Seeds a `ConceptDeclaration` named [conceptName], creates a fresh `<lang>.behavior` model
     * importing `jetbrains.mps.lang.behavior` and `jetbrains.mps.baseLanguage`, and inserts a
     * `ConceptBehavior` root wired to that concept with its one mandatory `constructor` child (a
     * `ConceptConstructorDeclaration` with an empty `body`). Returns the behavior root's
     * persistent SNodeReference — a valid `contextNodeRef`/`parentRef` for a METHOD parse
     * targeting the `method` role. [implements]/[childrenJson]/[propertiesJson] are forwarded to
     * [createConceptRoot] to seed an inherited property, child-link roles or own properties on the
     * underlying concept.
     */
    protected fun createConceptBehaviorRoot(
        conceptName: String = "TestConcept${System.nanoTime()}",
        implements: String? = null,
        childrenJson: String? = null,
        propertiesJson: String? = null
    ): String {
        val conceptRef = createConceptRoot(conceptName, implements, childrenJson, propertiesJson)

        val behaviorModel = readOnRepo { language.models.single { it.name.longName.endsWith(".behavior") } }
        val behaviorModelRef = modelRefOf(behaviorModel)

        val modelToolset = JetBrainsMPSModelMcpToolset()
        for (usedLanguage in listOf("jetbrains.mps.lang.behavior", "jetbrains.mps.baseLanguage")) {
            expectOk(runTool(modelToolset) {
                it.mps_mcp_model_used_language(behaviorModelRef, usedLanguage, "language", DependencyOperation.ADD)
            })
        }

        val json = """
            {
              "concept": "jetbrains.mps.lang.behavior.structure.ConceptBehavior",
              "references": [ { "role": "concept", "target": "$conceptRef" } ],
              "children": [
                {
                  "role": "constructor",
                  "nodes": [
                    {
                      "concept": "jetbrains.mps.lang.behavior.structure.ConceptConstructorDeclaration",
                      "children": [
                        { "role": "body", "nodes": [ { "concept": "jetbrains.mps.baseLanguage.structure.StatementList" } ] }
                      ]
                    }
                  ]
                }
              ]
            }
        """.trimIndent()

        val resp = runTool(JetBrainsMPSRootNodeMcpToolset()) {
            it.mps_mcp_insert_root_node_from_json(behaviorModelRef, JsonOrText(json), dryRun = false, responseDetail = "summary")
        }
        val payload = expectOk(resp)
        return payload.get("roots").asJsonArray.single().asJsonObject.get("reference").asString
    }

    /**
     * Reads the value of a property identified by its plain name without going through the
     * deprecated [SNode.getProperty] String overload. Returns `null` if the node's concept
     * has no property with [propertyName].
     */
    protected fun SNode.getPropertyByName(propertyName: String): String? {
        val sProperty = concept.properties.find { it.name == propertyName } ?: return null
        return getProperty(sProperty)
    }

    /**
     * Files written by MCP tools (e.g. `print_node_json`) that should be removed after the
     * test, even if it fails. Tests should call [extractFilePathFromData] rather than reading
     * `data` themselves so the path is auto-registered.
     */
    private val generatedTempFiles = mutableListOf<File>()

    @After
    fun cleanUpGeneratedTempFiles() {
        for (f in generatedTempFiles) {
            try {
                f.delete()
            } catch (_: Throwable) {
                // Best-effort cleanup; let JVM-level temp-dir reaping handle stragglers.
            }
        }
        generatedTempFiles.clear()
    }

    protected fun executeCommand(action: () -> Unit) = executeCommandIn(myProject, action)

    /** Runs [action] in a write command on [project]'s model access (on the EDT), rethrowing failures. */
    protected fun executeCommandIn(project: MPSProject, action: () -> Unit) {
        val modelAccess = project.repository.modelAccess
        val error = arrayOfNulls<Throwable>(1)
        ApplicationManager.getApplication().invokeAndWait(
            { modelAccess.executeCommand { try { action() } catch (e: Throwable) { error[0] = e } } },
            ModalityState.nonModal()
        )
        error[0]?.let { throw it }
    }

    protected fun stubMcpCallInfo(mpsProject: MPSProject): McpCallInfo {
        val emptySchema = McpToolSchema(
            JsonObject(emptyMap()),
            emptySet(),
            emptyMap(),
            McpToolSchema.DEFAULT_DEFINITIONS_PATH,
        )
        val descriptor = McpToolDescriptor(
            name = "mps_mcp_integration_test",
            description = "",
            category = McpToolCategory("test", "jetbrains.mps.agents.mcp.tools.test"),
            fullyQualifiedName = "jetbrains.mps.agents.mcp.tools.test.MpsMcpIntegrationTestTool",
            inputSchema = emptySchema,
            outputSchema = emptySchema,
        )
        val sessionOptions = McpServerService.McpSessionOptions(
            McpServerService.AskCommandExecutionMode.DONT_ASK,
            McpToolFilter.AllowAll,
        )
        return McpCallInfo(
            0,
            ClientInfo("integration-test", "0"),
            mpsProject.project,
            descriptor,
            JsonObject(emptyMap()),
            JsonObject(emptyMap()),
            sessionOptions,
            emptyMap(),
        )
    }
}
