package jetbrains.mps.agents.mcp.tools

import jetbrains.mps.make.MakeServiceComponent
import jetbrains.mps.project.MPSProject
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertTrue
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
    }

    private class MakeOps : AbstractOps() {
        suspend fun makeNoResources(mpsProject: MPSProject): MakeResult =
            performMake(mpsProject, emptyList(), rebuild = false)
    }
}
