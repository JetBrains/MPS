package jetbrains.mps.agents.mcp.tools.integration

import jetbrains.mps.agents.mcp.tools.*
import jetbrains.mps.agents.mcp.tools.common.*
import jetbrains.mps.agents.mcp.tools.migration.HeadlessMigrations

import com.google.gson.JsonObject
import com.intellij.openapi.util.io.FileUtil
import jetbrains.mps.classloading.ClassLoaderManager
import jetbrains.mps.generator.DefaultModifiableGenerationSettings
import jetbrains.mps.generator.GenerationSettingsProvider
import jetbrains.mps.generator.ModelGenerationStatusManager
import jetbrains.mps.generator.TransientModelsProvider
import jetbrains.mps.core.aspects.behaviour.api.SMethod
import jetbrains.mps.make.MakeServiceComponent
import jetbrains.mps.make.MakeSession
import jetbrains.mps.make.resources.IResource
import jetbrains.mps.messages.IMessageHandler
import jetbrains.mps.project.MPSProject
import jetbrains.mps.project.Solution
import jetbrains.mps.project.facets.JavaModuleFacet
import jetbrains.mps.project.modules.LanguageProducer
import jetbrains.mps.smodel.Generator
import jetbrains.mps.smodel.Language
import jetbrains.mps.smodel.ModelImports
import jetbrains.mps.smodel.adapter.MetaAdapterByDeclaration
import jetbrains.mps.smodel.adapter.ids.MetaIdByDeclaration
import jetbrains.mps.smodel.behaviour.BHReflection
import jetbrains.mps.smodel.language.LanguageRegistry
import jetbrains.mps.smodel.resources.ModelsToResources
import kotlinx.coroutines.CompletableDeferred
import kotlinx.coroutines.async
import kotlinx.coroutines.cancelAndJoin
import kotlinx.coroutines.coroutineScope
import kotlinx.coroutines.delay
import kotlinx.coroutines.launch
import kotlinx.coroutines.runBlocking
import kotlinx.coroutines.withTimeout
import org.jetbrains.mps.openapi.module.SDependencyScope
import org.jetbrains.mps.openapi.model.SModel
import org.jetbrains.mps.openapi.model.SNodeUtil
import org.jetbrains.mps.openapi.persistence.PersistenceFacade
import org.junit.After
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Assert.fail
import org.junit.Assume.assumeTrue
import org.junit.Test
import java.io.File
import java.util.concurrent.TimeUnit

class AbstractOpsMakeTest : McpIntegrationTestBase() {

    @Test
    fun `performMake with no resources does not leave a make session active`() {
        val makeService = myProject.getComponent(MakeServiceComponent::class.java)?.get()
        assertNotNull("The integration environment must provide a make service", makeService)
        assertFalse("A test must start without an active make session", makeService!!.isSessionActive)

        val result = runTool(MakeOps()) { it.makeNoResources(myProject) }

        assertTrue(result.success)
        assertEquals("Nothing to make (no inputs resolved)", result.message)
        assertTrue(result.runtimeReady)
        assertFalse("A no-op make must not leave the migration blocker session active", makeService.isSessionActive)
        assertNull("Only a make that built a language counts pending migrations", result.migrationsPending)
    }

    /**
     * A tool refused during a make (TRACE, TRANSIENT_MODELS, ...) called right after this make returned
     * must not see the session still open. `WorkbenchMakeTask` closes the session before it releases
     * `future.get()`, and `performMake` also waits for SESSION_CLOSED as a guard.
     */
    @Test
    fun `performMake returns only once the make session is closed`() {
        val makeService = myProject.getComponent(MakeServiceComponent::class.java)?.get()
        assertNotNull("The integration environment must provide a make service", makeService)
        assertFalse("A test must start without an active make session", makeService!!.isSessionActive)

        val result = runTool(MakeOps()) { it.make(myProject, structureModel) }

        assertTrue("the make succeeds: ${result.message} ${result.details}", result.success)
        assertFalse("the make session is closed once performMake returned", makeService.isSessionActive)
    }

    /**
     * MPS-40329: `WorkbenchMakeTask` released `future.get()` before its `done()` closed the session, so a
     * caller could see the session open right after `get()` returned. This drives the make service
     * directly, without the SESSION_CLOSED wait in `performMake`. The window is a race, so a regression
     * fails this test only sometimes, which is why it repeats.
     */
    @Test
    fun `make future get returns only once the make session is closed`() {
        val makeService = myProject.getComponent(MakeServiceComponent::class.java)?.get()
        assertNotNull("The integration environment must provide a make service", makeService)
        assertFalse("A test must start without an active make session", makeService!!.isSessionActive)

        val resources = myProject.modelAccess.computeReadAction<List<IResource>> {
            ModelsToResources(listOf(structureModel), false).resources().toList()
        }
        repeat(20) { cycle ->
            val session = MakeSession(myProject, IMessageHandler.NULL_HANDLER, false)
            assertTrue("cycle $cycle: the session opens", makeService.openNewSession(session))
            makeService.make(session, resources).get(120, TimeUnit.SECONDS)
            assertFalse("cycle $cycle: the make session is closed once get() returned", makeService.isSessionActive)
        }
    }

    @Test
    fun `performMake without inputs reports no transientModels block`() {
        val result = runTool(MakeOps()) { it.makeNoResources(myProject) }
        assertNull("no make ran, so nothing was dropped or kept", result.transientModels)
    }

    @Test
    fun `withSaveTransientModels flips the setting for the block only`() {
        val settings = DefaultModifiableGenerationSettings()
        settings.isSaveTransientModels = false
        val seen = runBlocking { withSaveTransientModels(settings, true) { settings.isSaveTransientModels } }
        assertTrue("the block sees the requested value", seen)
        assertFalse("the previous value is restored", settings.isSaveTransientModels)
    }

    @Test
    fun `withSaveTransientModels restores the setting when the block fails`() {
        val settings = DefaultModifiableGenerationSettings()
        settings.isSaveTransientModels = true
        try {
            runBlocking { withSaveTransientModels(settings, false) { error("make failed") } }
            fail("the failure must propagate")
        } catch (e: IllegalStateException) {
            assertEquals("make failed", e.message)
        }
        assertTrue("the previous value is restored", settings.isSaveTransientModels)
    }

    @Test
    fun `withSaveTransientModels restores the setting when the block is cancelled`() {
        val settings = DefaultModifiableGenerationSettings()
        settings.isSaveTransientModels = false
        runBlocking {
            val entered = CompletableDeferred<Unit>()
            val job = launch {
                withSaveTransientModels(settings, true) {
                    entered.complete(Unit)
                    delay(60_000)
                }
            }
            entered.await()
            assertTrue(settings.isSaveTransientModels)
            job.cancelAndJoin()
        }
        assertFalse("the previous value is restored", settings.isSaveTransientModels)
    }

    @Test
    fun `withSaveTransientModels leaves the setting alone when nothing is requested or it already matches`() {
        val settings = DefaultModifiableGenerationSettings()
        settings.isSaveTransientModels = true
        var notifications = 0
        settings.addListener { notifications++ }
        runBlocking {
            withSaveTransientModels(settings, null) { assertTrue(settings.isSaveTransientModels) }
            withSaveTransientModels(settings, true) { assertTrue(settings.isSaveTransientModels) }
        }
        assertTrue(settings.isSaveTransientModels)
        assertEquals("no change, no listener notification", 0, notifications)
    }

    /**
     * `WorkbenchMakeTask.cancel` cancels the make's progress monitor, so the make stops and closes its
     * session, and the `NonCancellable` wait in `performMake`'s cancel branch returns once it has. With an
     * MPS build whose `cancel` only sets a flag, the wait gives up after `SESSION_CLOSE_TIMEOUT_SECONDS`
     * and the session assertion below fails whenever the make outlasts that bound.
     */
    @Test
    fun `performMake restores the save-transient setting when the make is cancelled`() {
        val makeService = myProject.getComponent(MakeServiceComponent::class.java)?.get()
        assertNotNull("The integration environment must provide a make service", makeService)
        val settings = checkNotNull(myProject.getComponent(GenerationSettingsProvider::class.java)?.generationSettings)
        val original = settings.isSaveTransientModels
        try {
            settings.isSaveTransientModels = false
            runTool(MakeOps()) { ops ->
                coroutineScope {
                    val make = async { ops.make(myProject, structureModel) }
                    withTimeout(120_000) {
                        while (!settings.isSaveTransientModels) {
                            if (make.isCompleted) fail("the make ended before the setting was flipped: ${make.await()}")
                            delay(5)
                        }
                    }
                    make.cancelAndJoin()
                    assertTrue("the make was cancelled", make.isCancelled)
                    assertFalse("the make session is closed once cancelAndJoin returned", makeService!!.isSessionActive)
                }
            }
            assertFalse("the previous value is restored after the cancel", settings.isSaveTransientModels)
        } finally {
            // Cleanup only, so a failure above does not cascade into later makes; the assertion above is the check.
            runBlocking {
                withTimeout(120_000) {
                    while (makeService!!.isSessionActive) delay(50)
                }
            }
            settings.isSaveTransientModels = original
        }
    }

    @Test
    fun `performMake is refused while a run_migrations APPLY is running`() {
        assertTrue(HeadlessMigrations.applyRunning.compareAndSet(false, true))
        try {
            val result = runTool(MakeOps()) { it.make(myProject, structureModel) }
            assertFalse(result.success)
            assertFalse(result.runtimeReady)
            assertEquals("a run_migrations APPLY is running", result.message)
        } finally {
            HeadlessMigrations.applyRunning.set(false)
        }
    }

    @After
    fun cleanUpTransientModels() {
        myProject.getComponent(TransientModelsProvider::class.java)?.removeAllTransient()
    }

    @Test
    fun `incremental module MAKE skips clean models, fast-paths up-to-date modules, and recovers missing classes_gen`() {
        val fixture = createBuiltLanguageWithBehaviorAndGenerator()
        val makeService = checkNotNull(myProject.getComponent(MakeServiceComponent::class.java)?.get())
        val statusManager = checkNotNull(myProject.getComponent(ModelGenerationStatusManager::class.java))

        val backdated = System.currentTimeMillis() - 25_000L
        assertTrue(fixture.structureJava.setLastModified(backdated))
        assertTrue(fixture.behaviorJava.setLastModified(backdated))
        assertTrue(fixture.generatorJava.setLastModified(backdated))
        val structStamp = fixture.structureJava.lastModified()
        val behaviorStamp = fixture.behaviorJava.lastModified()
        val genStamp = fixture.generatorJava.lastModified()

        // 1) Clean module MAKE (rebuild = false): returns "Nothing to make..." without opening a MakeSession
        // or regenerating any model, and reports no transientModels block (even with saveTransientModels=false
        // when no prior transient models existed).
        val noop = makeJson("""{ "modules": ["${fixture.langModuleRef}"] }""")
        assertTrue("clean module make must succeed: $noop", noop.get("success").asBoolean)
        assertTrue("clean module make must report runtimeReady: $noop", noop.get("runtimeReady").asBoolean)
        assertEquals("Nothing to make (all models and classes up to date)", noop.get("message").asString)
        assertFalse("no-op make must omit transientModels: $noop", noop.has("transientModels"))
        assertFalse("no-op make must not leave a session active", makeService.isSessionActive)
        val noopSaveFalse = makeJson("""{ "modules": ["${fixture.langModuleRef}"], "saveTransientModels": false }""")
        assertFalse(
            "no-op make with saveTransientModels=false must omit transientModels when nothing existed to drop: $noopSaveFalse",
            noopSaveFalse.has("transientModels"),
        )
        assertEquals("structure Java must stay untouched", structStamp, fixture.structureJava.lastModified())
        assertEquals("behavior Java must stay untouched", behaviorStamp, fixture.behaviorJava.lastModified())
        assertEquals("generator Java must stay untouched", genStamp, fixture.generatorJava.lastModified())
        assertEquals("v1", invokeGreetOnLiveRuntime(fixture))

        // 2) Modify ONLY the behavior model ("v1" -> "v2"): module MAKE (rebuild = false) regenerates only
        // behavior, leaving structure and generator files untouched, and compiles + reloads the runtime.
        parseDataArray(runTool(MPSNodeMcpToolset()) {
            it.mps_mcp_update_node(
                NodeUpdateOperation.SET,
                NodeUpdateKind.PROPERTY,
                properties = listOf(listOf(fixture.greetingLiteralRef, "value", "v2")),
            )
        })
        readOnRepo {
            assertFalse("structure must still be clean", statusManager.generationRequired(fixture.structureModel))
            assertTrue("behavior must require generation after edit", statusManager.generationRequired(fixture.behaviorModel))
            assertFalse("generator must still be clean", statusManager.generationRequired(fixture.generatorTemplateModel))
        }

        val incremental = makeJson("""{ "modules": ["${fixture.langModuleRef}"] }""")
        assertTrue("incremental module make must succeed: $incremental", incremental.get("success").asBoolean)
        assertTrue("incremental module make must report runtimeReady: $incremental", incremental.get("runtimeReady").asBoolean)
        assertEquals("Make successful", incremental.get("message").asString)
        assertEquals("clean structure Java must not be regenerated", structStamp, fixture.structureJava.lastModified())
        assertEquals("clean generator Java must not be regenerated", genStamp, fixture.generatorJava.lastModified())
        assertTrue("behavior Java must contain updated literal", fixture.behaviorJava.readText().contains("\"v2\""))
        assertTrue("compiled classes must exist after incremental make", hasClassFiles(fixture.langClassesDir))
        assertEquals("live reloaded behavior runtime must execute v2", "v2", invokeGreetOnLiveRuntime(fixture))

        val postIncrementalStamp = System.currentTimeMillis() - 20_000L
        assertTrue(fixture.structureJava.setLastModified(postIncrementalStamp))
        assertTrue(fixture.behaviorJava.setLastModified(postIncrementalStamp))
        assertTrue(fixture.generatorJava.setLastModified(postIncrementalStamp))
        val structStamp2 = fixture.structureJava.lastModified()
        val behaviorStamp2 = fixture.behaviorJava.lastModified()
        val genStamp2 = fixture.generatorJava.lastModified()

        // 3) Interrupted-compile recovery (zero dirty models, wiped classes_gen/): compiles source_gen/ -> classes_gen/
        // via ModuleMaker without re-running TextGen and reloads both language and generator runtimes.
        FileUtil.delete(fixture.langClassesDir)
        FileUtil.delete(fixture.genClassesDir)
        assertFalse("precondition: language classes_gen wiped", hasClassFiles(fixture.langClassesDir))
        assertFalse("precondition: generator classes_gen wiped", hasClassFiles(fixture.genClassesDir))
        readOnRepo {
            assertFalse("structure still has generationRequired == false", statusManager.generationRequired(fixture.structureModel))
            assertFalse("behavior still has generationRequired == false", statusManager.generationRequired(fixture.behaviorModel))
            assertFalse("generator still has generationRequired == false", statusManager.generationRequired(fixture.generatorTemplateModel))
        }

        val recovered = makeJson("""{ "modules": ["${fixture.langModuleRef}"] }""")
        assertTrue("compile recovery must succeed: $recovered", recovered.get("success").asBoolean)
        assertTrue("compile recovery must report runtimeReady: $recovered", recovered.get("runtimeReady").asBoolean)
        assertEquals("Make successful", recovered.get("message").asString)
        assertFalse("direct compile recovery skips MakeSession so transientModels is omitted: $recovered", recovered.has("transientModels"))
        assertEquals("structure Java must not be regenerated on compile recovery", structStamp2, fixture.structureJava.lastModified())
        assertEquals("behavior Java must not be regenerated on compile recovery", behaviorStamp2, fixture.behaviorJava.lastModified())
        assertEquals("generator Java must not be regenerated on compile recovery", genStamp2, fixture.generatorJava.lastModified())
        assertTrue("language classes_gen must be recompiled", hasClassFiles(fixture.langClassesDir))
        assertTrue("generator classes_gen must be recompiled", hasClassFiles(fixture.genClassesDir))
        val registeredGenRefs = readOnRepo { languageRuntime(fixture.langName).generators.map { it.moduleReference } }
        assertTrue("generator must stay registered in language runtime: $registeredGenRefs", fixture.generatorModuleRef in registeredGenRefs)

        // 4) Mixed clean-model + dirty-model cluster recovery: language has 0 dirty models + wiped classes_gen/,
        // while its owned generator has generationRequired == true. Pre-make ModuleMaker compiles language first
        // so the generator cluster compiles cleanly against it.
        FileUtil.delete(fixture.langClassesDir)
        assertFalse("precondition: language classes_gen wiped again", hasClassFiles(fixture.langClassesDir))
        parseDataArray(runTool(MPSNodeMcpToolset()) {
            it.mps_mcp_update_node(
                NodeUpdateOperation.SET,
                NodeUpdateKind.PROPERTY,
                properties = listOf(listOf(fixture.mappingConfigRef, "name", "mainRecovered")),
            )
        })
        readOnRepo {
            assertFalse("language structure stays clean", statusManager.generationRequired(fixture.structureModel))
            assertFalse("language behavior stays clean", statusManager.generationRequired(fixture.behaviorModel))
            assertTrue("generator templates@generator is dirty", statusManager.generationRequired(fixture.generatorTemplateModel))
        }

        val mixedRecovered = makeJson("""{ "modules": ["${fixture.langModuleRef}"] }""")
        assertTrue("mixed cluster recovery must succeed: $mixedRecovered", mixedRecovered.get("success").asBoolean)
        assertTrue("mixed cluster recovery must report runtimeReady: $mixedRecovered", mixedRecovered.get("runtimeReady").asBoolean)
        assertEquals("Make successful", mixedRecovered.get("message").asString)
        assertEquals("clean structure Java untouched in mixed recovery", structStamp2, fixture.structureJava.lastModified())
        assertEquals("clean behavior Java untouched in mixed recovery", behaviorStamp2, fixture.behaviorJava.lastModified())
        assertTrue("language classes_gen compiled before generator make", hasClassFiles(fixture.langClassesDir))
        assertTrue("generator classes_gen compiled", hasClassFiles(fixture.genClassesDir))

        // 5) Broken Java in source_gen/ with generationRequired == false surfaces compiler failure and ERROR details.
        val validJava = fixture.behaviorJava.readText()
        try {
            FileUtil.delete(fixture.langClassesDir)
            fixture.behaviorJava.writeText("package ${fixture.langName}.behavior;\npublic class Greeter__BehaviorDescriptor { broken syntax !!! }\n")
            val failed = makeJson("""{ "modules": ["${fixture.langModuleRef}"] }""")
            assertFalse("broken source_gen/ must fail MAKE: $failed", failed.get("success").asBoolean)
            assertFalse("failed compile must report runtimeReady=false: $failed", failed.get("runtimeReady").asBoolean)
            assertTrue("message must start with 'Make failed:': $failed", failed.get("message").asString.startsWith("Make failed:"))
            val details = failed.getAsJsonArray("details")
            assertNotNull("compiler failure must populate details: $failed", details)
            assertTrue(
                "details must include at least one ERROR compiler diagnostic: $failed",
                details.any { it.asJsonObject.get("kind").asString == "ERROR" },
            )
        } finally {
            fixture.behaviorJava.writeText(validJava)
        }
    }

    @Test
    fun `explicit model MAKE preserves transientModels when clean and does not sweep sibling or generator models`() {
        val fixture = createBuiltLanguageWithBehaviorAndGenerator()
        val statusManager = checkNotNull(myProject.getComponent(ModelGenerationStatusManager::class.java))
        val settings = checkNotNull(myProject.getComponent(GenerationSettingsProvider::class.java)?.generationSettings)
        val originalSave = settings.isSaveTransientModels
        try {
            settings.isSaveTransientModels = false
            val backdated = System.currentTimeMillis() - 25_000L
            assertTrue(fixture.structureJava.setLastModified(backdated))
            assertTrue(fixture.generatorJava.setLastModified(backdated))
            val structStamp = fixture.structureJava.lastModified()
            val genStamp = fixture.generatorJava.lastModified()

            readOnRepo {
                assertFalse("structure is already clean", statusManager.generationRequired(fixture.structureModel))
                assertFalse("behavior is already clean", statusManager.generationRequired(fixture.behaviorModel))
                assertFalse("generator is already clean", statusManager.generationRequired(fixture.generatorTemplateModel))
            }

            // Pure `models: [behavior]` must not sweep sibling `structure` or owned `generator` into MResource.
            val behaviorOnly = makeJson("""{ "models": ["${fixture.behaviorModelRef}"] }""")
            assertTrue("explicit model make must succeed: $behaviorOnly", behaviorOnly.get("success").asBoolean)
            assertFalse(
                "omitted saveTransientModels follows false IDE setting: $behaviorOnly",
                behaviorOnly.getAsJsonObject("transientModels").get("saved").asBoolean,
            )
            assertEquals("sibling structure Java must not be regenerated", structStamp, fixture.structureJava.lastModified())
            assertEquals("owned generator Java must not be regenerated", genStamp, fixture.generatorJava.lastModified())

            // Explicit `models: [structure]` with saveTransientModels = true / false still runs MakeSession even when clean.
            val kept = makeJson("""{ "models": ["${fixture.structureModelRef}"], "saveTransientModels": true }""")
            val keptTransients = kept.getAsJsonObject("transientModels")
            assertTrue("explicit model make keeps transients: $kept", keptTransients.get("saved").asBoolean)
            assertTrue("kept transients list module: $keptTransients", keptTransients.getAsJsonArray("modules").size() > 0)

            val dropped = makeJson("""{ "models": ["${fixture.structureModelRef}"], "saveTransientModels": false }""")
            val droppedTransients = dropped.getAsJsonObject("transientModels")
            assertFalse("saveTransientModels=false drops transients: $dropped", droppedTransients.get("saved").asBoolean)
            assertTrue("previous transients reported dropped: $droppedTransients", droppedTransients.get("droppedPrevious").asBoolean)

            // Clean module MAKE with explicit saveTransientModels = false also drops kept transients without opening MakeSession.
            makeJson("""{ "models": ["${fixture.structureModelRef}"], "saveTransientModels": true }""")
            val moduleDrop = makeJson("""{ "modules": ["${fixture.langModuleRef}"], "saveTransientModels": false }""")
            assertEquals("Nothing to make (all models and classes up to date)", moduleDrop.get("message").asString)
            val moduleDroppedTransients = moduleDrop.getAsJsonObject("transientModels")
            assertFalse(moduleDroppedTransients.get("saved").asBoolean)
            assertTrue(moduleDroppedTransients.get("droppedPrevious").asBoolean)
            assertEquals(0, moduleDroppedTransients.getAsJsonArray("modules").size())
        } finally {
            settings.isSaveTransientModels = originalSave
        }
    }

    @Test
    fun `mcpMakeRunning serializes direct-compile MAKE against concurrent makes, transients, and migrations`() {
        val sol = createSolution()
        val solRef = readOnRepo { PersistenceFacade.getInstance().asString(sol.moduleReference) }
        HeadlessMigrations.mcpMakeRunning.set(true)
        try {
            assertTrue(HeadlessMigrations.isMakeSessionActive(myProject))
            assertTrue(TransientModelsOps.isMakeSessionActive(myProject))
            val refused = makeJson("""{ "modules": ["$solRef"] }""")
            assertFalse("concurrent MAKE must be refused while mcpMakeRunning is held: $refused", refused.get("success").asBoolean)
            assertFalse(refused.get("runtimeReady").asBoolean)
            assertEquals("Another make session is already active", refused.get("message").asString)
        } finally {
            HeadlessMigrations.mcpMakeRunning.set(false)
        }
        assertFalse(HeadlessMigrations.mcpMakeRunning.get())
    }

    @Test
    fun `post-make ModuleMaker compiles transitive clean-model downstream modules after upstream regeneration`() {
        val suffix = System.nanoTime()
        val solA = createSolution("test.incmake.solA$suffix")
        val solB = createSolution("test.incmake.solB$suffix")
        val solC = createSolution("test.incmake.solC$suffix")
        val modelA = createModel(solA, "test.incmake.a$suffix")
        val modelB = createModel(solB, "test.incmake.b$suffix")
        val modelC = createModel(solC, "test.incmake.c$suffix")
        val jdkModuleRef = PersistenceFacade.getInstance().createModuleReference("6354ebe7-c22a-4a0f-ac54-50b52ab9b065(JDK)")
        executeCommand {
            solA.addDependency(jdkModuleRef, false)
            // Non-reexported chain C -> B -> A: Deptype.COMPILE from C does not reach A, whereas Deptype.EXECUTE does.
            solB.addDependency(jdkModuleRef, false)
            solB.addDependency(solA.moduleReference, false)
            solC.addDependency(jdkModuleRef, false)
            solC.addDependency(solB.moduleReference, false)
            val baseLang = MetaAdapterByDeclaration.getLanguage(
                checkNotNull(PersistenceFacade.getInstance().createModuleReference("f3061a53-9226-4cc5-a443-f952ceaf5816(jetbrains.mps.baseLanguage)").resolve(myProject.repository)) as Language
            )
            ModelImports(modelA).addUsedLanguage(baseLang)
            ModelImports(modelB).addUsedLanguage(baseLang)
            ModelImports(modelB).addModelImport(modelA.reference)
            ModelImports(modelC).addUsedLanguage(baseLang)
            ModelImports(modelC).addModelImport(modelB.reference)
        }

        val refA = modelRefOf(modelA)
        val refB = modelRefOf(modelB)
        val refC = modelRefOf(modelC)
        expectOk(runTool(MPSJavaMcpToolset()) {
            it.mps_mcp_parse_java_and_insert(
                JsonOrText("""{ "code": "public class ApiA { public static String v() { return \"a1\"; } }", "featureKind": "CLASS", "insert": { "mode": "root", "modelRef": "$refA" } }""")
            )
        })
        expectOk(runTool(MPSJavaMcpToolset()) {
            it.mps_mcp_parse_java_and_insert(
                JsonOrText("""{ "code": "public class ApiB { public static String v() { return test.incmake.a$suffix.ApiA.v(); } }", "featureKind": "CLASS", "insert": { "mode": "root", "modelRef": "$refB" } }""")
            )
        })
        expectOk(runTool(MPSJavaMcpToolset()) {
            it.mps_mcp_parse_java_and_insert(
                JsonOrText("""{ "code": "public class ApiC { public static String v() { return test.incmake.b$suffix.ApiB.v(); } }", "featureKind": "CLASS", "insert": { "mode": "root", "modelRef": "$refC" } }""")
            )
        })

        val solARef = readOnRepo { PersistenceFacade.getInstance().asString(solA.moduleReference) }
        val solBRef = readOnRepo { PersistenceFacade.getInstance().asString(solB.moduleReference) }
        val solCRef = readOnRepo { PersistenceFacade.getInstance().asString(solC.moduleReference) }
        val initial = makeJson("""{ "modules": ["$solARef", "$solBRef", "$solCRef"], "rebuild": true }""")
        assumeTrue("initial rebuild of solution chain must succeed: $initial", initial.get("success").asBoolean)

        val clm = checkNotNull(myProject.getComponent(ClassLoaderManager::class.java))
        assertEquals("a1", readOnRepo { clm.getClassLoader(solC).loadClass("test.incmake.c$suffix.ApiC").getMethod("v").invoke(null) })

        val literalARef = readOnRepo {
            val lit = SNodeUtil.getDescendants(modelA.rootNodes.single()).single { it.concept.name == "StringLiteral" }
            PersistenceFacade.getInstance().asString(lit.reference)
        }
        parseDataArray(runTool(MPSNodeMcpToolset()) {
            it.mps_mcp_update_node(NodeUpdateOperation.SET, NodeUpdateKind.PROPERTY, properties = listOf(listOf(literalARef, "value", "a2")))
        })

        val (classesB, classesC) = readOnRepo {
            File(checkNotNull(solB.getFacet(JavaModuleFacet::class.java)?.classesGen).path) to
                File(checkNotNull(solC.getFacet(JavaModuleFacet::class.java)?.classesGen).path)
        }
        val javaB = File(File(solB.moduleSourceDir!!.path), "source_gen/test/incmake/b$suffix/ApiB.java")
        assertTrue(javaB.isFile)
        // Simulate B's source_gen having an uncompiled post-TextGen edit while B and C have clean models and wiped classes_gen.
        javaB.writeText("package test.incmake.b$suffix;\npublic class ApiB { public static String v() { return test.incmake.a$suffix.ApiA.v() + \"-b2\"; } }\n")
        FileUtil.delete(classesB)
        FileUtil.delete(classesC)

        val statusManager = checkNotNull(myProject.getComponent(ModelGenerationStatusManager::class.java))
        readOnRepo {
            assertTrue("modelA must require generation", statusManager.generationRequired(modelA))
            assertFalse("modelB must stay clean", statusManager.generationRequired(modelB))
            assertFalse("modelC must stay clean", statusManager.generationRequired(modelC))
        }

        val rebuilt = makeJson("""{ "modules": ["$solARef", "$solBRef", "$solCRef"] }""")
        assertTrue("transitive postCr make must succeed: $rebuilt", rebuilt.get("success").asBoolean)
        assertTrue(rebuilt.get("runtimeReady").asBoolean)
        assertTrue(hasClassFiles(classesB))
        assertTrue(hasClassFiles(classesC))
        assertEquals(
            "reloaded leaf classloader must see regenerated ApiA and recompiled ApiB",
            "a2-b2",
            readOnRepo { clm.getClassLoader(solC).loadClass("test.incmake.c$suffix.ApiC").getMethod("v").invoke(null) },
        )
    }

    @Test
    fun `pre-make ModuleMaker reloads upstream language and generator before dirty consumer generates in wholeProject MAKE`() {
        val suffix = System.nanoTime()
        val langName = "test.incmake.genlang$suffix"
        val dir = createDirInProject(langName)
        lateinit var lang: Language
        lateinit var gen: Generator
        lateinit var structModel: SModel
        lateinit var genTemplateModel: SModel
        executeCommand {
            lang = LanguageProducer(myProject).withGenerator(true).create(langName, dir)
            gen = lang.ownedGenerators.single()
            structModel = lang.models.single { it.name.longName.endsWith(".structure") }
            genTemplateModel = gen.models.single { it.name.stereotype == "generator" }
            lang.addDependency(
                PersistenceFacade.getInstance().createModuleReference("f3061a53-9226-4cc5-a443-f952ceaf5816(jetbrains.mps.baseLanguage)"),
                false,
            )
            lang.moduleDescriptor.dependencyVersions // keep descriptor initialized
            val dep = jetbrains.mps.project.structure.modules.Dependency(
                PersistenceFacade.getInstance().createModuleReference("f3061a53-9226-4cc5-a443-f952ceaf5816(jetbrains.mps.baseLanguage)"),
                SDependencyScope.GENERATES_INTO,
                false,
            )
            lang.moduleDescriptor.dependencies.add(dep)
            ModelImports(genTemplateModel).addUsedLanguage(
                MetaAdapterByDeclaration.getLanguage(
                    checkNotNull(PersistenceFacade.getInstance().createModuleReference("f3061a53-9226-4cc5-a443-f952ceaf5816(jetbrains.mps.baseLanguage)").resolve(myProject.repository)) as Language
                )
            )
        }
        val langModuleRef = readOnRepo { PersistenceFacade.getInstance().asString(lang.moduleReference) }
        val structRef = modelRefOf(structModel)
        val genTemplateRef = modelRefOf(genTemplateModel)
        val mappingConfigRef = readOnRepo {
            PersistenceFacade.getInstance().asString(genTemplateModel.rootNodes.first().reference)
        }

        expectOk(runTool {
            it.mps_mcp_alter_structure(
                MPSStructureAlterOperation.CREATE_CONCEPTS,
                """{ "structureModelRef": "$structRef", "make": false, "conceptsJson": [ { "name": "Box", "rootable": true } ] }""",
            )
        })
        val boxConceptNodeRef = readOnRepo {
            PersistenceFacade.getInstance().asString(structModel.rootNodes.single { it.name == "Box" }.reference)
        }

        // Insert a ClassConcept root template `GeneratedBox` annotated with RootTemplateAnnotation(applicableConcept = Box)
        // and wire a Root_MappingRule in `main` -> `GeneratedBox`.
        expectOk(runTool(MPSJavaMcpToolset()) {
            it.mps_mcp_parse_java_and_insert(
                JsonOrText("""{ "code": "public class GeneratedBox { public static String marker() { return \"ok\"; } }", "featureKind": "CLASS", "insert": { "mode": "root", "modelRef": "$genTemplateRef" } }""")
            )
        })
        val templateClassRef = readOnRepo {
            PersistenceFacade.getInstance().asString(genTemplateModel.rootNodes.single { it.name == "GeneratedBox" }.reference)
        }

        expectOk(runTool(MPSNodeMcpToolset()) {
            it.mps_mcp_update_node(
                NodeUpdateOperation.ADD,
                NodeUpdateKind.CHILD,
                nodeReference = templateClassRef,
                childRole = "smodelAttribute",
                childJson = """
                    {
                      "concept": "jetbrains.mps.lang.generator.structure.RootTemplateAnnotation",
                      "references": [ { "role": "applicableConcept", "target": "$boxConceptNodeRef" } ]
                    }
                """.trimIndent(),
            )
        })
        expectOk(runTool(MPSNodeMcpToolset()) {
            it.mps_mcp_update_node(
                NodeUpdateOperation.ADD,
                NodeUpdateKind.CHILD,
                nodeReference = templateClassRef,
                childRole = "smodelAttribute",
                childJson = """
                    {
                      "concept": "jetbrains.mps.lang.generator.structure.PropertyMacro",
                      "properties": [
                        { "name": "propertyId", "value": "ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" },
                        { "name": "name_DebugInfo", "value": "name" }
                      ],
                      "children": [
                        {
                          "role": "propertyValueFunction",
                          "nodes": [
                            {
                              "concept": "jetbrains.mps.lang.generator.structure.PropertyMacro_GetPropertyValue",
                              "children": [
                                {
                                  "role": "body",
                                  "nodes": [
                                    {
                                      "concept": "jetbrains.mps.baseLanguage.structure.StatementList",
                                      "children": [
                                        {
                                          "role": "statement",
                                          "nodes": [
                                            {
                                              "concept": "jetbrains.mps.baseLanguage.structure.ReturnStatement",
                                              "children": [
                                                {
                                                  "role": "expression",
                                                  "nodes": [
                                                    {
                                                      "concept": "jetbrains.mps.baseLanguage.structure.StringLiteral",
                                                      "properties": [ { "name": "value", "value": "GeneratedBoxV1" } ]
                                                    }
                                                  ]
                                                }
                                              ]
                                            }
                                          ]
                                        }
                                      ]
                                    }
                                  ]
                                }
                              ]
                            }
                          ]
                        }
                      ]
                    }
                """.trimIndent(),
            )
        })
        expectOk(runTool(MPSNodeMcpToolset()) {
            it.mps_mcp_update_node(
                NodeUpdateOperation.ADD,
                NodeUpdateKind.CHILD,
                nodeReference = mappingConfigRef,
                childRole = "rootMappingRule",
                childJson = """
                    {
                      "concept": "jetbrains.mps.lang.generator.structure.Root_MappingRule",
                      "references": [
                        { "role": "applicableConcept", "target": "$boxConceptNodeRef" },
                        { "role": "template", "target": "$templateClassRef" }
                      ]
                    }
                """.trimIndent(),
            )
        })

        val langBuild = makeJson("""{ "modules": ["$langModuleRef"], "rebuild": true }""")
        assumeTrue("fresh language + generator must build cleanly: $langBuild", langBuild.get("success").asBoolean && langBuild.get("runtimeReady").asBoolean)

        val consumerSol: Solution = createSolution("test.incmake.consumer$suffix")
        val consumerModel = createModel(consumerSol, "test.incmake.consumer$suffix.m")
        executeCommand {
            consumerSol.addDependency(
                PersistenceFacade.getInstance().createModuleReference("6354ebe7-c22a-4a0f-ac54-50b52ab9b065(JDK)"),
                false,
            )
            ModelImports(consumerModel).addUsedLanguage(MetaAdapterByDeclaration.getLanguage(lang))
            val boxConcept = MetaAdapterByDeclaration.getInstanceConcept(structModel.rootNodes.single { it.name == "Box" })
            consumerModel.addRootNode(jetbrains.mps.smodel.SNode(boxConcept))
            (consumerModel as org.jetbrains.mps.openapi.model.EditableSModel).save()
            consumerSol.save()
        }

        // Initial wholeProject rebuild brings every project module to clean (generationRequired == false)
        // and runs QueriesGenerated returning "GeneratedBoxV1".
        val fullInit = makeJson("""{ "wholeProject": true, "rebuild": true }""")
        assertTrue("wholeProject rebuild must succeed: $fullInit", fullInit.get("success").asBoolean)

        val (genClassesDir, consumerClassesDir) = readOnRepo {
            File(checkNotNull(gen.getFacet(JavaModuleFacet::class.java)?.classesGen).path) to
                File(checkNotNull(consumerSol.getFacet(JavaModuleFacet::class.java)?.classesGen).path)
        }
        val consumerSourceDir = File(File(consumerSol.moduleSourceDir!!.path), "source_gen/test/incmake/consumer$suffix/m")
        val generatedBoxV1Java = File(consumerSourceDir, "GeneratedBoxV1.java")
        val generatedBoxV2Java = File(consumerSourceDir, "GeneratedBoxV2.java")
        assertTrue("expected consumer GeneratedBoxV1.java after initial build", generatedBoxV1Java.isFile)
        assertFalse(generatedBoxV2Java.exists())

        val pkgRelPath = langName.replace('.', File.separatorChar)
        val queriesJava = File(File(dir.path), "generator/source_gen/$pkgRelPath/generator/templates/QueriesGenerated.java")
        assertTrue("expected generator QueriesGenerated.java", queriesJava.isFile)
        assertTrue(queriesJava.readText().contains("\"GeneratedBoxV1\""))

        // Simulate a post-TextGen interrupted generator build: QueriesGenerated.java on disk already has
        // "GeneratedBoxV2" and generator classes_gen is wiped, while in-memory ClassLoader still holds
        // "GeneratedBoxV1" and generationRequired is false on lang + generator.
        queriesJava.writeText(queriesJava.readText().replace("\"GeneratedBoxV1\"", "\"GeneratedBoxV2\""))
        FileUtil.delete(genClassesDir)
        assertFalse("precondition: generator classes_gen wiped", hasClassFiles(genClassesDir))

        // Dirty ONLY consumerModel so MakeSession runs Generate_Facet on consumerModel.
        executeCommand {
            val boxConcept = MetaAdapterByDeclaration.getInstanceConcept(structModel.rootNodes.single { it.name == "Box" })
            consumerModel.rootNodes.forEach { it.delete() }
            consumerModel.addRootNode(jetbrains.mps.smodel.SNode(boxConcept))
            (consumerModel as org.jetbrains.mps.openapi.model.EditableSModel).save()
        }
        val statusManager = checkNotNull(myProject.getComponent(ModelGenerationStatusManager::class.java))
        readOnRepo {
            assertFalse("lang structure stays clean", statusManager.generationRequired(structModel))
            assertFalse("generator templates stays clean", statusManager.generationRequired(genTemplateModel))
            assertTrue("consumer model requires generation", statusManager.generationRequired(consumerModel))
        }

        // Incremental wholeProject MAKE must compile QueriesGenerated.java AND reload generator + language in
        // preCr BEFORE MakeSession runs Generate_Facet on consumerModel — producing GeneratedBoxV2.java (not V1).
        val wholeIncremental = makeJson("""{ "wholeProject": true }""")
        assertTrue("incremental wholeProject MAKE must succeed: $wholeIncremental", wholeIncremental.get("success").asBoolean)
        assertTrue("incremental wholeProject MAKE must report runtimeReady: $wholeIncremental", wholeIncremental.get("runtimeReady").asBoolean)
        assertEquals("Make successful", wholeIncremental.get("message").asString)
        assertTrue("reloaded generator must emit GeneratedBoxV2.java", generatedBoxV2Java.isFile)
        assertTrue("consumer classes_gen must contain compiled GeneratedBoxV2.class", File(consumerClassesDir, "test/incmake/consumer$suffix/m/GeneratedBoxV2.class").isFile)

        // Follow-up wholeProject MAKE (rebuild = false) fast-paths with "Nothing to make".
        val wholeNoop = makeJson("""{ "wholeProject": true }""")
        assertTrue(wholeNoop.get("success").asBoolean)
        assertTrue(wholeNoop.get("runtimeReady").asBoolean)
        assertEquals("Nothing to make (all models and classes up to date)", wholeNoop.get("message").asString)
    }

    private fun invokeGreetOnLiveRuntime(fixture: IncrementalMakeFixture): String = readOnRepo {
        checkNotNull(LanguageRegistry.getInstance(myProject.repository).getLanguage(MetaIdByDeclaration.getLanguageId(fixture.lang))) {
            "expected deployed LanguageRuntime for ${fixture.langName}"
        }
        val greeterDecl = fixture.structureModel.rootNodes.single { it.name == "Greeter" }
        val greeterConcept = MetaAdapterByDeclaration.getInstanceConcept(greeterDecl)
        val clm = checkNotNull(myProject.getComponent(ClassLoaderManager::class.java))
        val bhClass = clm.getClassLoader(fixture.lang).loadClass("${fixture.langName}.behavior.Greeter__BehaviorDescriptor")
        val greetMethod = bhClass.fields.single { it.name.startsWith("greet_id") }.get(null) as SMethod<*>
        BHReflection.invoke0(jetbrains.mps.smodel.SNode(greeterConcept), greeterConcept, greetMethod.id) as String
    }

    private data class IncrementalMakeFixture(
        val lang: Language,
        val generator: Generator,
        val langName: String,
        val langModuleRef: String,
        val generatorModuleRef: org.jetbrains.mps.openapi.module.SModuleReference,
        val structureModel: SModel,
        val structureModelRef: String,
        val behaviorModel: SModel,
        val behaviorModelRef: String,
        val generatorTemplateModel: SModel,
        val greetingLiteralRef: String,
        val mappingConfigRef: String,
        val structureJava: File,
        val behaviorJava: File,
        val generatorJava: File,
        val langClassesDir: File,
        val genClassesDir: File,
    )

    private fun makeJson(parameters: String): JsonObject =
        expectOk(runTool(MPSNodeMcpToolset()) { it.mps_mcp_alter_nodes(MPSAlterOperation.MAKE, parameters) })

    private fun hasClassFiles(dir: File): Boolean =
        dir.exists() && dir.walkTopDown().any { it.isFile && it.extension == "class" }

    private fun createBuiltLanguageWithBehaviorAndGenerator(): IncrementalMakeFixture {
        val langName = "test.incmake.lang${System.nanoTime()}"
        val dir = createDirInProject(langName)
        lateinit var lang: Language
        lateinit var gen: Generator
        lateinit var structModel: SModel
        lateinit var behaviorModel: SModel
        lateinit var genTemplateModel: SModel
        executeCommand {
            lang = LanguageProducer(myProject).withGenerator(true).create(langName, dir)
            gen = lang.ownedGenerators.single()
            structModel = lang.models.single { it.name.longName.endsWith(".structure") }
            behaviorModel = lang.models.single { it.name.longName.endsWith(".behavior") }
            genTemplateModel = gen.models.single { it.name.stereotype == "generator" }
        }
        val langModuleRef = readOnRepo { PersistenceFacade.getInstance().asString(lang.moduleReference) }
        val genModuleRef = readOnRepo { gen.moduleReference }
        val structRef = modelRefOf(structModel)
        val behaviorRef = modelRefOf(behaviorModel)
        val mappingConfigRef = readOnRepo {
            PersistenceFacade.getInstance().asString(genTemplateModel.rootNodes.first().reference)
        }

        expectOk(runTool {
            it.mps_mcp_alter_structure(
                MPSStructureAlterOperation.CREATE_CONCEPTS,
                """{ "structureModelRef": "$structRef", "make": false, "conceptsJson": [ { "name": "Greeter", "rootable": true } ] }""",
            )
        })
        val greeterRef = readOnRepo {
            PersistenceFacade.getInstance().asString(structModel.rootNodes.single { it.name == "Greeter" }.reference)
        }

        val behaviorRootJson = """
            {
              "concept": "jetbrains.mps.lang.behavior.structure.ConceptBehavior",
              "references": [ { "role": "concept", "target": "$greeterRef" } ]
            }
        """.trimIndent()
        val behaviorRootRef = expectOk(runTool(MPSRootNodeMcpToolset()) {
            it.mps_mcp_insert_root_node_from_json(behaviorRef, JsonOrText(behaviorRootJson), dryRun = false)
        }).get("reference").asString

        val parseMethodParams = """
            {
              "code": "public String greet() { return \"v1\"; }",
              "featureKind": "METHOD",
              "insert": { "mode": "child", "parentRef": "$behaviorRootRef", "role": "method" }
            }
        """.trimIndent()
        expectOk(runTool(MPSJavaMcpToolset()) { it.mps_mcp_parse_java_and_insert(JsonOrText(parseMethodParams)) })

        val greetingLiteralRef = readOnRepo {
            val root = PersistenceFacade.getInstance().createNodeReference(behaviorRootRef).resolve(myProject.repository)!!
            val literal = SNodeUtil.getDescendants(root).single { it.concept.name == "StringLiteral" }
            PersistenceFacade.getInstance().asString(literal.reference)
        }

        val initialMake = makeJson("""{ "modules": ["$langModuleRef"], "rebuild": true }""")
        assumeTrue(
            "the test environment must build and deploy a fresh language: $initialMake",
            initialMake.get("success").asBoolean && initialMake.get("runtimeReady").asBoolean,
        )

        val pkgRelPath = langName.replace('.', File.separatorChar)
        val langDirFile = File(dir.path)
        val structureJava = File(langDirFile, "source_gen/$pkgRelPath/structure/StructureAspectDescriptor.java")
        val behaviorJava = File(langDirFile, "source_gen/$pkgRelPath/behavior/Greeter__BehaviorDescriptor.java")
        val generatorJava = File(langDirFile, "generator/source_gen/$pkgRelPath/generator/templates/QueriesGenerated.java")
        assertTrue("expected $structureJava to exist after initial rebuild", structureJava.isFile)
        assertTrue("expected $behaviorJava to exist after initial rebuild", behaviorJava.isFile)
        assertTrue("expected $generatorJava to exist after initial rebuild", generatorJava.isFile)

        val (langClassesDir, genClassesDir) = readOnRepo {
            File(checkNotNull(lang.getFacet(JavaModuleFacet::class.java)?.classesGen).path) to
                File(checkNotNull(gen.getFacet(JavaModuleFacet::class.java)?.classesGen).path)
        }
        assertTrue("expected compiled classes in $langClassesDir", hasClassFiles(langClassesDir))
        assertTrue("expected compiled classes in $genClassesDir", hasClassFiles(genClassesDir))

        return IncrementalMakeFixture(
            lang = lang,
            generator = gen,
            langName = langName,
            langModuleRef = langModuleRef,
            generatorModuleRef = genModuleRef,
            structureModel = structModel,
            structureModelRef = structRef,
            behaviorModel = behaviorModel,
            behaviorModelRef = behaviorRef,
            generatorTemplateModel = genTemplateModel,
            greetingLiteralRef = greetingLiteralRef,
            mappingConfigRef = mappingConfigRef,
            structureJava = structureJava,
            behaviorJava = behaviorJava,
            generatorJava = generatorJava,
            langClassesDir = langClassesDir,
            genClassesDir = genClassesDir,
        )
    }

    private class MakeOps : AbstractOps() {
        suspend fun makeNoResources(mpsProject: MPSProject): MakeResult =
            performMake(mpsProject, emptyList(), rebuild = false)

        suspend fun make(mpsProject: MPSProject, model: SModel): MakeResult =
            performMake(mpsProject, listOf(model), rebuild = true, saveTransientModels = true)
    }
}
