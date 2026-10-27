package jetbrains.mps.agents.mcp.tools.integration

import jetbrains.mps.agents.mcp.tools.*
import jetbrains.mps.agents.mcp.tools.common.*
import jetbrains.mps.agents.mcp.tools.migration.HeadlessMigrations

import com.google.gson.JsonObject
import com.google.gson.JsonParser
import com.intellij.openapi.application.ApplicationManager
import com.intellij.openapi.application.ModalityState
import com.intellij.openapi.application.impl.LaterInvocator
import jetbrains.mps.make.MakeServiceComponent
import jetbrains.mps.make.MakeSession
import jetbrains.mps.messages.IMessageHandler
import jetbrains.mps.project.Solution
import jetbrains.mps.smodel.SModelInternal
import jetbrains.mps.smodel.adapter.MetaAdapterByDeclaration
import jetbrains.mps.smodel.language.LanguageRegistry
import kotlinx.coroutines.async
import kotlinx.coroutines.coroutineScope
import kotlinx.coroutines.delay
import kotlinx.coroutines.withTimeout
import org.jetbrains.mps.openapi.language.SLanguage
import org.jetbrains.mps.openapi.model.SModel
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertTrue
import org.junit.Assert.fail
import org.junit.Assume.assumeTrue
import org.junit.Test

/**
 * `mps_mcp_run_migrations` against the headless engine. The test application gets the no-op
 * `HeadlessMigrationExecutor`, never a `MigrationTrigger`, so these tests cover the engine and the
 * answer shapes; the trigger's suppression and lifecycle are verified live (D48 plan, section 4).
 */
class JetBrainsMPSMigrationMcpToolsetIntegrationTest : McpIntegrationTestBase() {

    private val toolset = JetBrainsMPSMigrationMcpToolset()

    private fun runMigrations(
        operation: String,
        modules: String? = null,
    ): String = runTool(toolset) { it.mps_mcp_run_migrations(operation, modules?.let { m -> JsonOrText(m) }) }


    /** A solution with one model that imports [language] at [importVersion]; the descriptor records [recorded]. */
    private fun solutionUsing(language: SLanguage, importVersion: Int?, recorded: Int?): Pair<Solution, SModel> {
        val solution = createSolution()
        val model = createModel(solution, "${solution.moduleName}.main")
        executeCommand {
            val internal = model as SModelInternal
            internal.addLanguage(language)
            importVersion?.let { internal.setLanguageImportVersion(language, it) }
            val versions = solution.moduleDescriptor.languageVersions
            if (recorded == null) versions.remove(language) else versions[language] = recorded
        }
        return solution to model
    }

    private fun strings(data: JsonObject, key: String): List<String> = data.getAsJsonArray(key).map { it.asString }

    private fun warningsOf(response: String): String =
        JsonParser.parseString(response).asJsonObject.getAsJsonArray("warnings")?.joinToString(" ") { it.asString } ?: ""

    @Test
    fun `CHECK on the fresh fixture has nothing to do and APPLY writes nothing`() {
        val check = expectOk(runMigrations("CHECK"))
        assertTrue("a fresh project must have nothing pending: $check", check.get("nothingToDo").asBoolean)
        assertEquals(0, check.get("wouldForceSaveModules").asInt)
        assertEquals(emptyList<String>(), strings(check, "blockers"))

        val apply = expectOk(runMigrations("apply"))
        assertEquals("NOTHING_TO_DO", apply.get("status").asString)
        assertFalse("nothing ran, so there is no applied list: $apply", apply.has("applied"))
    }

    @Test
    fun `unknown operation and unknown module are rejected`() {
        val badOperation = JsonParser.parseString(runMigrations("MIGRATE")).asJsonObject
        assertEquals("INVALID_REQUEST", badOperation.get("code").asString)
        assertTrue(badOperation.get("error").asString.contains("CHECK, APPLY"))

        val badModule = JsonParser.parseString(runMigrations("CHECK", """["no.such.module"]""")).asJsonObject
        assertEquals("NOT_FOUND", badModule.get("code").asString)
        assertTrue(badModule.get("error").asString.contains("no.such.module"))
    }

    @Test
    fun `a missing used-language stamp is a version update that APPLY records`() {
        val baseLanguage = checkNotNull(LanguageRegistry.getInstance(myProject.repository).getLanguage("jetbrains.mps.baseLanguage")) {
            "baseLanguage must be deployed in the test environment"
        }.identity
        val (solution, _) = solutionUsing(baseLanguage, importVersion = null, recorded = null)

        val check = expectOk(runMigrations("CHECK"))
        assertTrue("the solution must need a version update: $check", solution.moduleName in strings(check, "modulesToUpdateVersions"))
        assertFalse(check.get("nothingToDo").asBoolean)
        assertTrue("a pending update force-saves the project modules: $check", check.get("wouldForceSaveModules").asInt > 0)

        val apply = expectOk(runMigrations("APPLY"))
        assertEquals("FINISHED", apply.get("status").asString)
        assertTrue(apply.get("versionsUpdated").asBoolean)
        assertEquals(0, apply.getAsJsonArray("applied").size())
        assertTrue(apply.get("savedRepository").asBoolean)
        assertFalse("the headless executor has no trigger to unload models: $apply", apply.get("modelsUnloaded").asBoolean)
        assertEquals(0, apply.getAsJsonObject("remaining").get("modulesToUpdateVersions").asInt)
        assertEquals(
            "the stamp must now be the deployed version",
            LanguageRegistry.getInstance(myProject.repository).getLanguage(baseLanguage)!!.version,
            readOnRepo { solution.moduleDescriptor.languageVersions[baseLanguage] },
        )

        assertFalse(solution.moduleName in strings(expectOk(runMigrations("CHECK")), "modulesToUpdateVersions"))
    }

    @Test
    fun `a used language that is not deployed is reported but does not block`() {
        val unbuilt = readOnRepo { MetaAdapterByDeclaration.getLanguage(language) }
        solutionUsing(unbuilt, importVersion = 0, recorded = 0)

        val check = expectOk(runMigrations("CHECK"))
        val problems = strings(check, "runtimeProblems").joinToString(" ")
        assertTrue("the undeployed language must be named: $check", problems.contains("languages not deployed") && problems.contains(unbuilt.qualifiedName))
        assertEquals("an undeployed language must not block the rest of the project: $check", emptyList<String>(), strings(check, "blockers"))
        // Without a runtime there is no script to offer, and MigrationSetup skips the version update
        // while a project module's dependencies are missing.
        assertTrue(check.get("nothingToDo").asBoolean)

        val apply = expectOk(runMigrations("APPLY"))
        assertEquals("NOTHING_TO_DO", apply.get("status").asString)
        assertTrue(strings(apply.getAsJsonObject("planned"), "runtimeProblems").isNotEmpty())
    }

    @Test
    fun `APPLY is refused while a make session is open`() {
        val makeService = myProject.getComponent(MakeServiceComponent::class.java)?.get()
        assertNotNull("The integration environment must provide a make service", makeService)
        val session = MakeSession(myProject, IMessageHandler.NULL_HANDLER, false)
        assumeTrue("the test environment could not open a make session", makeService!!.openNewSession(session))
        try {
            val check = expectOk(runMigrations("CHECK"))
            assertTrue(strings(check, "blockers").any { it.startsWith("make session active") })

            val apply = JsonParser.parseString(runMigrations("APPLY")).asJsonObject
            assertEquals("INVALID_REQUEST", apply.get("code").asString)
            assertTrue(apply.get("error").asString.contains("make session active"))
        } finally {
            makeService.closeSession(session)
        }
    }

    @Test
    fun `APPLY re-checks isSessionActive after waiting for the EDT`() {
        val makeService = myProject.getComponent(MakeServiceComponent::class.java)?.get()
        assertNotNull("The integration environment must provide a make service", makeService)
        val baseLanguage = checkNotNull(LanguageRegistry.getInstance(myProject.repository).getLanguage("jetbrains.mps.baseLanguage")).identity
        val (solution, _) = solutionUsing(baseLanguage, importVersion = null, recorded = null)

        val modal = Any()
        var modalEntered = true
        ApplicationManager.getApplication().invokeAndWait({ LaterInvocator.enterModal(modal) }, ModalityState.nonModal())
        val session = MakeSession(myProject, IMessageHandler.NULL_HANDLER, false)
        var sessionOpened = false
        try {
            val response = runTool(toolset) { ts ->
                coroutineScope {
                    val call = async { ts.mps_mcp_run_migrations("APPLY") }
                    // Wait until planning finished on the background thread and `apply` is parked in
                    // `requireResponsiveEdt()` on the non-modal EDT queue.
                    withTimeout(10_000) {
                        while (!HeadlessMigrations.applyRunning.get()) {
                            if (call.isCompleted) fail("APPLY returned before setting applyRunning: ${call.await()}")
                            delay(5)
                        }
                    }
                    sessionOpened = makeService!!.openNewSession(session)
                    assumeTrue("the test environment could not open a make session", sessionOpened)
                    ApplicationManager.getApplication().invokeAndWait({ LaterInvocator.leaveModal(modal) }, ModalityState.any())
                    modalEntered = false
                    call.await()
                }
            }
            val apply = JsonParser.parseString(response).asJsonObject
            assertFalse("APPLY must refuse when a make session opened while waiting for the EDT: $response", apply.get("ok").asBoolean)
            assertEquals("INVALID_REQUEST", apply.get("code").asString)
            assertTrue(apply.get("error").asString.contains("make session active"))
            assertTrue(strings(apply.getAsJsonObject("details"), "blockers").any { it.startsWith("make session active") })
            assertEquals("nothing was written", null, readOnRepo { solution.moduleDescriptor.languageVersions[baseLanguage] })
        } finally {
            if (modalEntered) {
                ApplicationManager.getApplication().invokeAndWait({ LaterInvocator.leaveModal(modal) }, ModalityState.any())
            }
            if (sessionOpened) {
                makeService!!.closeSession(session)
            }
        }
    }

    @Test
    fun `a language migration is listed, filtered by modules, applied and then gone`() {
        val languageName = readOnRepo { language.moduleName!! }
        val migrationModelRef = expectOk(runTool(JetBrainsMPSModelMcpToolset()) {
            it.mps_mcp_create_model(languageName, "$languageName.migration")
        }).get("reference").asString
        val script = """
            {
              "concept": "jetbrains.mps.lang.migration.structure.PureMigrationScript",
              "properties": [ { "name": "name", "value": "FromZero" }, { "name": "fromVersion", "value": "0" } ]
            }
        """.trimIndent()
        expectOk(runTool(JetBrainsMPSRootNodeMcpToolset()) {
            it.mps_mcp_insert_root_node_from_json(migrationModelRef, JsonOrText(script), dryRun = false)
        })
        executeCommand { language.setLanguageVersion(1) }
        val slanguage = readOnRepo { MetaAdapterByDeclaration.getLanguage(language) }
        val (consumer, consumerModel) = solutionUsing(slanguage, importVersion = 0, recorded = 0)
        val bystander = createSolution()

        val make = expectOk(runTool(JetBrainsMPSNodeMcpToolset()) {
            it.mps_mcp_alter_nodes(MPSAlterOperation.MAKE, """{ "modules": ["$languageName"], "rebuild": true }""")
        })
        // The make service is not guaranteed to deploy a fresh language in every test environment
        // (see AbstractOpsMakeTest); without a deployed runtime there is no script to migrate with.
        assumeTrue("the language was not built and deployed: $make", make.get("success").asBoolean && make.get("runtimeReady").asBoolean)
        assertEquals("MAKE must announce the pending script: $make", 1, make.get("migrationsPending").asInt)
        assertTrue(make.get("migrationsHint").asString.contains("mps_mcp_run_migrations"))

        val check = expectOk(runMigrations("CHECK"))
        val pending = check.getAsJsonArray("pendingModuleMigrations").map { it.asJsonObject }.single()
        assertEquals("language", pending.get("kind").asString)
        assertEquals(languageName, pending.get("owner").asString)
        assertEquals(0, pending.get("fromVersion").asInt)
        assertEquals(1, pending.get("toVersion").asInt)
        assertTrue(pending.get("scriptPresent").asBoolean)
        assertEquals(listOf(consumer.moduleName), strings(pending, "affectedModules"))
        assertEquals(emptyList<String>(), strings(check, "blockers"))

        val filteredResponse = runMigrations("CHECK", """["${bystander.moduleName}"]""")
        val filtered = expectOk(filteredResponse)
        assertEquals("a module that does not use the language has nothing pending: $filtered", 0, filtered.getAsJsonArray("pendingModuleMigrations").size())
        assertTrue("restricting must say what stays project-wide: $filteredResponse", warningsOf(filteredResponse).contains("project-wide"))

        val apply = expectOk(runMigrations("APPLY"))
        assertEquals("FINISHED", apply.get("status").asString)
        val row = apply.getAsJsonArray("applied").map { it.asJsonObject }.single()
        assertEquals(consumer.moduleName, row.get("module").asString)
        assertEquals(0, row.get("stampBefore").asInt)
        assertEquals(1, row.get("stampAfter").asInt)
        assertEquals(0, apply.getAsJsonObject("remaining").get("pendingModuleMigrations").asInt)
        assertEquals(1, readOnRepo { consumer.moduleDescriptor.languageVersions[slanguage] })
        assertEquals(1, readOnRepo { (consumerModel as SModelInternal).getLanguageImportVersion(slanguage) })

        assertEquals(0, expectOk(runMigrations("CHECK")).getAsJsonArray("pendingModuleMigrations").size())
    }
}
