package jetbrains.mps.agents.mcp.tools.integration

import com.intellij.mcpserver.McpCallInfo
import com.intellij.mcpserver.McpToolDescriptor
import jetbrains.mps.agents.mcp.tools.migration.MigrationAssistantGuard
import jetbrains.mps.ide.migration.MigrationTrigger
import kotlinx.coroutines.delay
import kotlinx.coroutines.runBlocking
import org.junit.After
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Assert.fail
import org.junit.Before
import org.junit.Test

/**
 * The deadline half of D48: a static `System.nanoTime()` deadline on `MigrationTrigger`, bumped by
 * the guard. `MigrationAccess` builds no `MigrationTrigger` in test mode, so what the trigger does
 * with the deadline (balloon instead of wizard) is verified live only; these tests cover the guard
 * and the static API.
 */
class MigrationAssistantGuardTest : McpIntegrationTestBase() {

    @Before
    fun clearDeadline() {
        reset()
    }

    @After
    fun resetDeadline() {
        reset()
    }

    private fun reset() {
        System.clearProperty(MigrationAssistantGuard.WINDOW_SECONDS_PROPERTY)
        // a test JVM inheriting -Dmps.migration.assistant.auto=false would make every "unsuppressed" assertion fail
        System.clearProperty("mps.migration.assistant.auto")
        MigrationTrigger.clearAutoAssistantSuppression()
    }

    private fun callInfo(toolName: String): McpCallInfo {
        val base = stubMcpCallInfo(myProject)
        val descriptor = McpToolDescriptor(
            toolName,
            "",
            base.mcpToolDescriptor.category,
            toolName,
            base.mcpToolDescriptor.inputSchema,
            base.mcpToolDescriptor.outputSchema,
        )
        return McpCallInfo(
            base.callId,
            base.clientInfo,
            base.project,
            descriptor,
            base.rawArguments,
            base.meta,
            base.mcpSessionOptions,
            base.headers,
        )
    }

    private fun awaitUnsuppressed(timeoutMs: Long): Boolean {
        val deadline = System.currentTimeMillis() + timeoutMs
        while (MigrationTrigger.isAutoAssistantSuppressed() && System.currentTimeMillis() < deadline) {
            Thread.sleep(20)
        }
        return !MigrationTrigger.isAutoAssistantSuppressed()
    }

    @Test
    fun `an mps tool call suppresses the assistant and another tool does not`() {
        assertFalse("nothing is suppressed before any call", MigrationTrigger.isAutoAssistantSuppressed())
        val guard = MigrationAssistantGuard()

        val other = callInfo("idea_read_file")
        guard.beforeMcpToolCall(other.mcpToolDescriptor, other)
        assertFalse("a non-mps_mcp_ tool must not touch the deadline", MigrationTrigger.isAutoAssistantSuppressed())

        val mps = callInfo("mps_mcp_print_node")
        guard.beforeMcpToolCall(mps.mcpToolDescriptor, mps)
        assertTrue("an mps_mcp_ call must suppress the assistant", MigrationTrigger.isAutoAssistantSuppressed())
    }

    @Test
    fun `the window lapses on its own and a zero window suppresses nothing`() {
        val guard = MigrationAssistantGuard()
        val info = callInfo("mps_mcp_print_node")

        System.setProperty(MigrationAssistantGuard.WINDOW_SECONDS_PROPERTY, "0")
        guard.beforeMcpToolCall(info.mcpToolDescriptor, info)
        assertFalse("a zero window must leave the assistant alone", MigrationTrigger.isAutoAssistantSuppressed())

        System.setProperty(MigrationAssistantGuard.WINDOW_SECONDS_PROPERTY, "1")
        guard.beforeMcpToolCall(info.mcpToolDescriptor, info)
        assertTrue("suppressed right after the call", MigrationTrigger.isAutoAssistantSuppressed())
        assertTrue("the window must lapse without anyone releasing it", awaitUnsuppressed(3_000))
    }

    @Test
    fun `a later bump with a shorter window never shortens the deadline`() {
        MigrationTrigger.suppressAutoAssistantFor(10_000)
        System.setProperty(MigrationAssistantGuard.WINDOW_SECONDS_PROPERTY, "1")
        val guard = MigrationAssistantGuard()
        val info = callInfo("mps_mcp_print_node")
        guard.beforeMcpToolCall(info.mcpToolDescriptor, info)

        Thread.sleep(1_500)
        assertTrue("the 10 s deadline must survive a 1 s bump", MigrationTrigger.isAutoAssistantSuppressed())
    }

    @Test
    fun `holdingSuppression keeps the deadline ahead for longer than the window`() {
        System.setProperty(MigrationAssistantGuard.WINDOW_SECONDS_PROPERTY, "1")
        val result = runBlocking {
            MigrationAssistantGuard.holdingSuppression {
                delay(2_600)
                assertTrue("still suppressed 2.6 s into a 1 s window", MigrationTrigger.isAutoAssistantSuppressed())
                "done"
            }
        }
        assertEquals("done", result)
        assertTrue("suppressed right after the block ends", MigrationTrigger.isAutoAssistantSuppressed())
    }

    @Test
    fun `holdingSuppression stops its heartbeat when the block throws`() {
        System.setProperty(MigrationAssistantGuard.WINDOW_SECONDS_PROPERTY, "1")
        try {
            runBlocking {
                MigrationAssistantGuard.holdingSuppression<Unit> {
                    delay(300)
                    throw IllegalStateException("body failed")
                }
            }
            fail("the block's exception must propagate")
        } catch (e: IllegalStateException) {
            assertEquals("body failed", e.message)
        }
        assertTrue("the heartbeat must have stopped: the 1 s window lapses", awaitUnsuppressed(2_500))
        Thread.sleep(1_500)
        assertFalse("a leaked heartbeat would have re-armed the deadline by now", MigrationTrigger.isAutoAssistantSuppressed())
    }

    @Test
    fun `window property parsing and default`() {
        System.clearProperty(MigrationAssistantGuard.WINDOW_SECONDS_PROPERTY)
        assertEquals(120_000L, MigrationAssistantGuard.windowMillis())

        System.setProperty(MigrationAssistantGuard.WINDOW_SECONDS_PROPERTY, "30")
        assertEquals(30_000L, MigrationAssistantGuard.windowMillis())

        System.setProperty(MigrationAssistantGuard.WINDOW_SECONDS_PROPERTY, "invalid")
        assertEquals(120_000L, MigrationAssistantGuard.windowMillis())

        System.setProperty(MigrationAssistantGuard.WINDOW_SECONDS_PROPERTY, "-5")
        assertEquals(120_000L, MigrationAssistantGuard.windowMillis())
    }
}
