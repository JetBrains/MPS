// Integration tests for the console-scoped MCP toolset.
package jetbrains.mps.agents.mcp.tools.integration

import jetbrains.mps.agents.mcp.tools.*
import jetbrains.mps.agents.mcp.tools.common.*

import com.google.gson.JsonArray
import com.google.gson.JsonObject
import com.google.gson.JsonParser
import jetbrains.mps.project.modules.LanguageProducer
import jetbrains.mps.smodel.SModelInternal
import jetbrains.mps.smodel.language.LanguageRegistry
import org.jetbrains.mps.openapi.language.SAbstractConcept
import org.jetbrains.mps.openapi.persistence.PersistenceFacade
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * End-to-end integration tests for [MPSConsoleMcpToolset].
 *
 * Covers the tools the toolset exposes:
 *  - `mps_mcp_insert_console_command_from_json` — the pre-console input-validation guard
 *    (malformed JSON is rejected before the Console tool window is touched). The happy paths
 *    (inserting a Command, and wrapping one or more statements into a `{ … }` block command) need
 *    a live Console tool window and are exercised manually.
 *  - `mps_mcp_get_console_history` / `mps_mcp_recall_console_command` / `mps_mcp_run_console_command` —
 *    the console-unavailable branch (structured error, no crash, in the headless fixture). The happy
 *    paths (listing real history entries; recalling one into the input slot; executing the current
 *    command) need a live Console and are verified manually.
 *  - `mps_mcp_clear_console` — the console-unavailable branch and the binding of both parameters;
 *    clearing a real history is verified live.
 */
class MPSConsoleMcpToolsetIntegrationTest : McpIntegrationTestBase() {
    @Test
    fun `insert-console-command rejects malformed JSON before touching the console`() {
        // Malformed JSON is rejected in the pre-console parse guard, so this exercises the tool's
        // input contract without needing a live Console tool window in the test fixture. (The
        // happy paths — a single Command, or wrapping one/many statements into a block command —
        // require the running console and are verified manually.)
        val response = runTool(MPSConsoleMcpToolset()) {
            it.mps_mcp_insert_console_command_from_json(json = JsonOrText("{\"concept\":"))
        }

        val obj = JsonParser.parseString(response).asJsonObject
        assertFalse("expected error envelope: $response", obj.get("ok").asBoolean)
        assertEquals("INVALID_JSON", obj.get("code").asString)
        val error = obj.get("error").asString
        assertTrue("expected the bracket diagnosis: $error", error.contains("unbalanced"))
        assertTrue("expected received length: $error", error.contains("received 11 chars (inline limit 4096)"))
    }

    @Test
    fun `get_console_history returns an error envelope when the console is unavailable`() {
        // The headless fixture never initializes the Console tool window, so this exercises the
        // console-resolution branch: it must return a structured error rather than crashing. The
        // happy path (a real history with command/response entries) is verified manually.
        val response = runTool(MPSConsoleMcpToolset()) {
            it.mps_mcp_get_console_history()
        }
        val obj = JsonParser.parseString(response).asJsonObject
        assertFalse("expected error envelope when the console is unavailable: $response", obj.get("ok").asBoolean)
    }

    @Test
    fun `run_console_command returns an error envelope when the console is unavailable`() {
        // The headless fixture never initializes the Console tool window, so this exercises the
        // console-resolution branch: it must return a structured error rather than running anything.
        // The happy path (executing a present command) and the empty-input guard are verified
        // manually against a running Console.
        val response = runTool(MPSConsoleMcpToolset()) {
            it.mps_mcp_run_console_command()
        }
        val obj = JsonParser.parseString(response).asJsonObject
        assertFalse("expected error envelope when the console is unavailable: $response", obj.get("ok").asBoolean)
    }

    @Test
    fun `clear_console returns an error envelope when the console is unavailable`() {
        // The headless fixture never initializes the Console tool window; the happy path (history
        // removed, input kept or cleared) is verified live in mcp-verification-scenario-console-imports.md.
        val response = runTool(MPSConsoleMcpToolset()) {
            it.mps_mcp_clear_console()
        }
        val obj = JsonParser.parseString(response).asJsonObject
        assertFalse("expected error envelope when the console is unavailable: $response", obj.get("ok").asBoolean)
    }

    @Test
    fun `insert-console-command rejects an empty JSON array before touching the console`() {
        val response = runTool(MPSConsoleMcpToolset()) {
            it.mps_mcp_insert_console_command_from_json(json = JsonOrText("[]"))
        }

        val obj = JsonParser.parseString(response).asJsonObject
        assertFalse("expected error envelope: $response", obj.get("ok").asBoolean)
        assertEquals("INVALID_JSON", obj.get("code").asString)
        assertTrue("error should explain the empty array: $response", obj.get("error").asString.contains("empty"))
    }

    @Test
    fun `insert-console-command rejects non-object array elements before touching the console`() {
        val response = runTool(MPSConsoleMcpToolset()) {
            it.mps_mcp_insert_console_command_from_json(json = JsonOrText("[1]"))
        }

        val obj = JsonParser.parseString(response).asJsonObject
        assertFalse("expected error envelope: $response", obj.get("ok").asBoolean)
        assertEquals("INVALID_JSON", obj.get("code").asString)
        assertTrue("error should point at the invalid element: $response", obj.get("error").asString.contains("[0]"))
    }

    /**
     * `mps_mcp_get_project_structure` returns its payload inline when small and as a temp-file
     * path when it exceeds `maxInlineBytes`; the base helper accepts both shapes.
     */
    private fun readJsonObjectFromOkPath(response: String): JsonObject = payloadObjectFromOkData(response)

    // ── D43: missing-required-parameter rejections through the real bridge ────────────────
    // These go through callThroughBridge, not runTool: only the bridge's own argument binding
    // can observe a wrong-key spelling being silently dropped before the tool body runs.

    @Test
    fun `insert_console_command_from_json names json when the caller sent blueprint`() {
        val response = callThroughBridge(
            MPSConsoleMcpToolset(), "mps_mcp_insert_console_command_from_json",
            mapOf("blueprint" to kotlinx.serialization.json.JsonPrimitive("""{"concept":"jetbrains.mps.console.base.structure.BLExpression"}""")),
        )
        val obj = JsonParser.parseString(response).asJsonObject
        assertFalse("expected error envelope: $response", obj.get("ok").asBoolean)
        assertEquals("INVALID_REQUEST", obj.get("code").asString)
        assertEquals(listOf("json"), obj.getAsJsonObject("details").getAsJsonArray("missingParameters").map { it.asString })
        val error = obj.get("error").asString
        assertTrue(
            "must name the key and the dropped spelling: $error",
            error.startsWith("json is required.") && error.contains("'blueprint'"),
        )
    }

    @Test
    fun `recall_console_command names historyNodeReference when the caller sent nodeReference`() {
        val response = callThroughBridge(
            MPSConsoleMcpToolset(), "mps_mcp_recall_console_command",
            mapOf("nodeReference" to kotlinx.serialization.json.JsonPrimitive("r:does-not-exist/0")),
        )
        val obj = JsonParser.parseString(response).asJsonObject
        assertFalse("expected error envelope: $response", obj.get("ok").asBoolean)
        assertEquals("INVALID_REQUEST", obj.get("code").asString)
        assertEquals(listOf("historyNodeReference"), obj.getAsJsonObject("details").getAsJsonArray("missingParameters").map { it.asString })
        val error = obj.get("error").asString
        assertTrue(
            "must name the key and the dropped spelling: $error",
            error.startsWith("historyNodeReference is required.") && error.contains("'nodeReference'"),
        )
    }

    @Test
    fun `recall_console_command reaches the console-unavailable branch once retried with the correct key`() {
        val response = callThroughBridge(
            MPSConsoleMcpToolset(), "mps_mcp_recall_console_command",
            mapOf("historyNodeReference" to kotlinx.serialization.json.JsonPrimitive("r:does-not-exist/0")),
        )
        val obj = JsonParser.parseString(response).asJsonObject
        assertFalse("expected error envelope when the console is unavailable: $response", obj.get("ok").asBoolean)
        assertFalse("must not be the missing-parameter rejection anymore", obj.get("code")?.asString == "INVALID_REQUEST" &&
            obj.get("error").asString.startsWith("historyNodeReference is required."))
    }

    @Test
    fun `clear_console binds clearInput and dryRun through the bridge`() {
        val properties = publishedInputSchema(MPSConsoleMcpToolset(), "mps_mcp_clear_console").propertiesSchema
        assertTrue("both parameters must be published: ${properties.keys}", properties.keys.containsAll(listOf("clearInput", "dryRun")))
        val response = callThroughBridge(
            MPSConsoleMcpToolset(), "mps_mcp_clear_console",
            mapOf(
                "clearInput" to kotlinx.serialization.json.JsonPrimitive(true),
                "dryRun" to kotlinx.serialization.json.JsonPrimitive(true),
            ),
        )
        val obj = JsonParser.parseString(response).asJsonObject
        assertFalse("expected the console-unavailable envelope: $response", obj.get("ok").asBoolean)
        assertEquals("a binding rejection is not the console-unavailable branch: $response", "NOT_FOUND", obj.get("code").asString)
    }

    /**
     * Headless `McpToolsIntegrationTestSuite` does not deploy the optional `jetbrains.mps.console`
     * plugin, so we substitute `jetbrains.mps.baseLanguage.structure.Classifier` as the command
     * superconcept (`ClassConcept` stands in for a console `Command`, `InstanceInitializer` wraps
     * statements inside a `ClassConcept`).
     */
    private fun baseLanguageConcept(simpleName: String): SAbstractConcept = readOnRepo {
        LanguageRegistry.getInstance(myProject.repository)
            .getLanguage("jetbrains.mps.baseLanguage")!!
            .concepts
            .single { it.name == simpleName }
    }

    private fun wrapStatementsInClassInitializer(statements: List<JsonObject>): JsonObject {
        val statementNodes = JsonArray().apply { statements.forEach { add(it) } }
        val statementList = JsonObject().apply {
            addProperty("concept", "jetbrains.mps.baseLanguage.structure.StatementList")
            add("children", JsonArray().apply {
                add(JsonObject().apply {
                    addProperty("role", "statement")
                    add("nodes", statementNodes)
                })
            })
        }
        val initializer = JsonObject().apply {
            addProperty("concept", "jetbrains.mps.baseLanguage.structure.InstanceInitializer")
            add("children", JsonArray().apply {
                add(JsonObject().apply {
                    addProperty("role", "statementList")
                    add("nodes", JsonArray().apply { add(statementList) })
                })
            })
        }
        return JsonObject().apply {
            addProperty("concept", "jetbrains.mps.baseLanguage.structure.ClassConcept")
            add("children", JsonArray().apply {
                add(JsonObject().apply {
                    addProperty("role", "member")
                    add("nodes", JsonArray().apply { add(initializer) })
                })
            })
        }
    }

    @Test
    fun `resolveBlueprintConcept classifies Commands, narrows unique Statement collisions, and leaves Command or multi-Statement collisions unresolved`() {
        val consoleToolset = MPSConsoleMcpToolset()
        val modelToolset = MPSModelMcpToolset()
        val fakeCommandConcept = baseLanguageConcept("Classifier")
        val solution = createSolution()
        val scratchModel = createModel(solution, "${solution.moduleName}.consoleprobe")
        val scratchModelRef = modelRefOf(scratchModel)
        for (lang in listOf("jetbrains.mps.baseLanguage", readOnRepo { language.moduleName!! })) {
            assertTrue(
                JsonParser.parseString(
                    runTool(modelToolset) { it.mps_mcp_model_used_language(scratchModelRef, lang, "language", "ADD") }
                ).asJsonObject.get("ok").asBoolean
            )
        }

        // 1. Single Command passthrough by short name and FQN.
        readOnRepo {
            val byShort = consoleToolset.resolveBlueprintConcept(
                scratchModel,
                JsonParser.parseString("""{"concept":"ClassConcept"}""").asJsonObject,
                fakeCommandConcept,
            )
            assertEquals("jetbrains.mps.baseLanguage.structure.ClassConcept", byShort?.let { "${it.language.qualifiedName}.structure.${it.name}" })
            val byFqn = consoleToolset.resolveBlueprintConcept(
                scratchModel,
                JsonParser.parseString("""{"concept":"jetbrains.mps.baseLanguage.structure.ClassConcept"}""").asJsonObject,
                fakeCommandConcept,
            )
            assertEquals("jetbrains.mps.baseLanguage.structure.ClassConcept", byFqn?.let { "${it.language.qualifiedName}.structure.${it.name}" })
        }

        // 2. Colliding short name where neither candidate is a Command and exactly one is a baseLanguage Statement:
        //    add a non-Statement, non-Command concept named ReturnStatement in the fixture language.
        expectOk(runTool {
            it.mps_mcp_alter_structure(
                MPSStructureAlterOperation.CREATE_CONCEPTS,
                """{ "structureModelRef": "$structureModelRef", "conceptsJson": [ { "name": "ReturnStatement" } ] }""",
            )
        })
        readOnRepo {
            val narrowed = consoleToolset.resolveBlueprintConcept(
                scratchModel,
                JsonParser.parseString("""{"concept":"ReturnStatement"}""").asJsonObject,
                fakeCommandConcept,
            )
            assertEquals(
                "must narrow colliding non-Command ReturnStatement to the unique baseLanguage Statement",
                "jetbrains.mps.baseLanguage.structure.ReturnStatement",
                narrowed?.let { "${it.language.qualifiedName}.structure.${it.name}" },
            )
        }

        // 3. Colliding short name involving a Command (ClassConcept): resolveBlueprintConcept returns null so
        //    instantiateConsoleCommand rejects the ambiguous short name with both candidates.
        expectOk(runTool {
            it.mps_mcp_alter_structure(
                MPSStructureAlterOperation.CREATE_CONCEPTS,
                """{ "structureModelRef": "$structureModelRef", "conceptsJson": [ { "name": "ClassConcept" } ] }""",
            )
        })
        readOnRepo {
            val collidingCmd = consoleToolset.resolveBlueprintConcept(
                scratchModel,
                JsonParser.parseString("""{"concept":"ClassConcept"}""").asJsonObject,
                fakeCommandConcept,
            )
            assertEquals("Command collision must not be narrowed", null, collidingCmd)
        }
        var cmdCollisionErr: String? = null
        executeCommand {
            val res = consoleToolset.instantiateConsoleCommand(
                listOf(JsonParser.parseString("""{"concept":"ClassConcept"}""").asJsonObject),
                scratchModel,
                myProject,
                dryRun = false,
                warnings = mutableListOf(),
                commandConcept = fakeCommandConcept,
                wrapStatements = ::wrapStatementsInClassInitializer,
            )
            assertTrue("expected Err on colliding ClassConcept", res is MPSConsoleMcpToolset.ConsoleCommandInstantiation.Err)
            cmdCollisionErr = (res as MPSConsoleMcpToolset.ConsoleCommandInstantiation.Err).errJson
        }
        val cmdErrObj = JsonParser.parseString(cmdCollisionErr!!).asJsonObject
        assertEquals("INVALID_REQUEST", cmdErrObj.get("code").asString)
        val candidates = cmdErrObj.getAsJsonObject("details").getAsJsonArray("candidates").map { it.asString }
        assertTrue(candidates.toString(), "jetbrains.mps.baseLanguage.structure.ClassConcept" in candidates)
        assertTrue(candidates.toString(), candidates.any { it.endsWith(".structure.ClassConcept") && !it.startsWith("jetbrains.mps.baseLanguage.") })

        // 4. Multi-Statement collision: build a second language declaring ReturnStatement extends baseLanguage.Statement -> returns null.
        val secondLangName = "test.lang2_${System.nanoTime()}"
        val secondLangDir = createDirInProject(secondLangName)
        var secondStructRef = ""
        executeCommand {
            val secondLang = LanguageProducer(myProject).withGenerator(false).create(secondLangName, secondLangDir)
            val secondStruct = secondLang.models.single { it.name.longName.endsWith(".structure") }
            secondStructRef = PersistenceFacade.getInstance().asString(secondStruct.reference)
        }
        expectOk(runTool {
            it.mps_mcp_alter_structure(
                MPSStructureAlterOperation.CREATE_CONCEPTS,
                """{ "structureModelRef": "$secondStructRef", "make": true, "conceptsJson": [ { "name": "ReturnStatement", "extends": "jetbrains.mps.baseLanguage.structure.Statement" } ] }""",
            )
        })
        assertTrue(
            JsonParser.parseString(
                runTool(modelToolset) { it.mps_mcp_model_used_language(scratchModelRef, secondLangName, "language", "ADD") }
            ).asJsonObject.get("ok").asBoolean
        )
        readOnRepo {
            val multiStmt = consoleToolset.resolveBlueprintConcept(
                scratchModel,
                JsonParser.parseString("""{"concept":"ReturnStatement"}""").asJsonObject,
                fakeCommandConcept,
            )
            assertEquals("multi-Statement collision must not pick arbitrarily", null, multiStmt)
        }
    }

    @Test
    fun `instantiateConsoleCommand undoes auto-imported languages when nested blueprint fails`() {
        val consoleToolset = MPSConsoleMcpToolset()
        val fakeCommandConcept = baseLanguageConcept("Classifier")
        val solution = createSolution()
        val scratchModel = createModel(solution, "${solution.moduleName}.consoleleak")
        val beforeLangs = readOnRepo {
            (scratchModel as SModelInternal).importedLanguageIds().map { it.qualifiedName }.toSet()
        }
        assertFalse("precondition: baseLanguage is not imported yet", "jetbrains.mps.baseLanguage" in beforeLangs)
        assertFalse("precondition: closures is not imported yet", "jetbrains.mps.baseLanguage.closures" in beforeLangs)

        // Outer ReturnStatement (wrapped in ClassConcept/InstanceInitializer) auto-imports baseLanguage,
        // and nested ClosureLiteral auto-imports closures before failing on noSuchProp: both imports must roll back.
        var errJson: String? = null
        executeCommand {
            val res = consoleToolset.instantiateConsoleCommand(
                listOf(
                    JsonParser.parseString(
                        """{"concept":"jetbrains.mps.baseLanguage.structure.ReturnStatement","children":[{"role":"expression","nodes":[{"concept":"jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral","properties":[{"name":"noSuchProp","value":"x"}]}]}]}"""
                    ).asJsonObject
                ),
                scratchModel,
                myProject,
                dryRun = false,
                warnings = mutableListOf(),
                commandConcept = fakeCommandConcept,
                wrapStatements = ::wrapStatementsInClassInitializer,
            )
            assertTrue("expected Err on invalid nested child", res is MPSConsoleMcpToolset.ConsoleCommandInstantiation.Err)
            errJson = (res as MPSConsoleMcpToolset.ConsoleCommandInstantiation.Err).errJson
        }
        val errObj = JsonParser.parseString(errJson!!).asJsonObject
        assertEquals("INVALID_REQUEST", errObj.get("code").asString)
        assertTrue(errObj.toString(), errObj.get("error").asString.contains("Unknown property 'noSuchProp'"))
        val afterLangs = readOnRepo {
            (scratchModel as SModelInternal).importedLanguageIds().map { it.qualifiedName }.toSet()
        }
        assertEquals("failed console blueprint must undo all auto-imported languages", beforeLangs, afterLangs)
    }
}
