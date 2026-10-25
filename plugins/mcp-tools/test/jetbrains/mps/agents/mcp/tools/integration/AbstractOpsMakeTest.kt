package jetbrains.mps.agents.mcp.tools.integration

import jetbrains.mps.agents.mcp.tools.common.*

import jetbrains.mps.generator.DefaultModifiableGenerationSettings
import jetbrains.mps.generator.GenerationSettingsProvider
import jetbrains.mps.make.MakeServiceComponent
import jetbrains.mps.project.MPSProject
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
                }
            }
            assertFalse("the previous value is restored after the cancel", settings.isSaveTransientModels)
        } finally {
            runBlocking {
                withTimeout(120_000) {
                    while (makeService!!.isSessionActive) delay(50)
                }
            }
            settings.isSaveTransientModels = original
        }
    }

    private class MakeOps : AbstractOps() {
        suspend fun makeNoResources(mpsProject: MPSProject): MakeResult =
            performMake(mpsProject, emptyList(), rebuild = false)

        suspend fun make(mpsProject: MPSProject, model: SModel): MakeResult =
            performMake(mpsProject, listOf(model), rebuild = true, saveTransientModels = true)
    }
}
