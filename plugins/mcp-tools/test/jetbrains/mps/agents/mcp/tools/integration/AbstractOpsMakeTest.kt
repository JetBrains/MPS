package jetbrains.mps.agents.mcp.tools.integration

import jetbrains.mps.agents.mcp.tools.common.*
import jetbrains.mps.agents.mcp.tools.migration.HeadlessMigrations

import jetbrains.mps.generator.DefaultModifiableGenerationSettings
import jetbrains.mps.generator.GenerationSettingsProvider
import jetbrains.mps.make.MakeServiceComponent
import jetbrains.mps.make.MakeSession
import jetbrains.mps.make.resources.IResource
import jetbrains.mps.messages.IMessageHandler
import jetbrains.mps.project.MPSProject
import jetbrains.mps.smodel.resources.ModelsToResources
import kotlinx.coroutines.CompletableDeferred
import kotlinx.coroutines.async
import kotlinx.coroutines.cancelAndJoin
import kotlinx.coroutines.coroutineScope
import kotlinx.coroutines.delay
import kotlinx.coroutines.launch
import kotlinx.coroutines.runBlocking
import kotlinx.coroutines.withTimeout
import org.jetbrains.mps.openapi.model.SModel
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Assert.fail
import org.junit.Test
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

    private class MakeOps : AbstractOps() {
        suspend fun makeNoResources(mpsProject: MPSProject): MakeResult =
            performMake(mpsProject, emptyList(), rebuild = false)

        suspend fun make(mpsProject: MPSProject, model: SModel): MakeResult =
            performMake(mpsProject, listOf(model), rebuild = true, saveTransientModels = true)
    }
}
