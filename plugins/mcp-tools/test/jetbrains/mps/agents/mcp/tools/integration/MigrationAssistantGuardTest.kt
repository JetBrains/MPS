package jetbrains.mps.agents.mcp.tools.integration

import com.intellij.mcpserver.McpCallInfo
import com.intellij.mcpserver.McpToolDescriptor
import com.intellij.openapi.components.service
import jetbrains.mps.agents.mcp.tools.migration.MigrationAssistantGuard
import jetbrains.mps.agents.mcp.tools.migration.MigrationAssistantSuppression
import jetbrains.mps.ide.migration.MigrationTrigger
import org.junit.After
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class MigrationAssistantGuardTest : McpIntegrationTestBase() {

    @After
    fun resetSuppression() {
        val suppression = myProject.project.service<MigrationAssistantSuppression>()
        suppression.expireLeaseNow()
        suppression.triggerOverride = null
        System.clearProperty(MigrationAssistantSuppression.LEASE_MS_PROPERTY)
        System.clearProperty(MigrationAssistantSuppression.LEASE_SECONDS_PROPERTY)
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

    @Test
    fun `mps tool call activates suppression on MigrationTrigger and keeps lease active`() {
        val trigger = MigrationTrigger(myProject.project)
        assertFalse("auto-assistant must not be suppressed initially", trigger.isAutoAssistantSuppressed)

        val suppression = myProject.project.service<MigrationAssistantSuppression>()
        suppression.triggerOverride = trigger
        val guard = MigrationAssistantGuard()
        val info = stubMcpCallInfo(myProject)

        guard.beforeMcpToolCall(info.mcpToolDescriptor, info)
        assertTrue("trigger must be suppressed while tool call is active", trigger.isAutoAssistantSuppressed)
        assertTrue("lease must be active while tool call is active", suppression.isLeaseActive())
        assertEquals(1, suppression.activeCallsCount())

        guard.afterMcpToolCall(info.mcpToolDescriptor, emptyList(), null, info)
        assertEquals(0, suppression.activeCallsCount())
        assertTrue("lease must remain active under sliding lease after tool call finishes", suppression.isLeaseActive())
        assertTrue("trigger must remain suppressed during sliding lease inactivity window", trigger.isAutoAssistantSuppressed)

        suppression.expireLeaseNow()
        assertFalse("lease must be inactive after expiry", suppression.isLeaseActive())
        assertFalse("auto-assistant must be unsuppressed once lease expires", trigger.isAutoAssistantSuppressed)
    }

    @Test
    fun `non-mps tool calls are ignored`() {
        val trigger = MigrationTrigger(myProject.project)
        val suppression = myProject.project.service<MigrationAssistantSuppression>()
        suppression.triggerOverride = trigger
        val guard = MigrationAssistantGuard()
        val nonMpsInfo = callInfo("idea_read_file")

        guard.beforeMcpToolCall(nonMpsInfo.mcpToolDescriptor, nonMpsInfo)
        assertFalse(trigger.isAutoAssistantSuppressed)
        assertFalse(suppression.isLeaseActive())
        assertEquals(0, suppression.activeCallsCount())

        guard.afterMcpToolCall(nonMpsInfo.mcpToolDescriptor, emptyList(), null, nonMpsInfo)
        assertFalse(trigger.isAutoAssistantSuppressed)
        assertFalse(suppression.isLeaseActive())
    }

    @Test
    fun `concurrent and consecutive tool calls manage active count and reset sliding lease`() {
        val trigger = MigrationTrigger(myProject.project)
        val suppression = myProject.project.service<MigrationAssistantSuppression>()
        suppression.triggerOverride = trigger
        val guard = MigrationAssistantGuard()
        val info = stubMcpCallInfo(myProject)

        // First tool starts
        guard.beforeMcpToolCall(info.mcpToolDescriptor, info)
        assertEquals(1, suppression.activeCallsCount())
        assertTrue(suppression.isLeaseActive())

        // Second tool starts concurrently
        guard.beforeMcpToolCall(info.mcpToolDescriptor, info)
        assertEquals(2, suppression.activeCallsCount())
        assertTrue(suppression.isLeaseActive())

        // First tool finishes
        guard.afterMcpToolCall(info.mcpToolDescriptor, emptyList(), null, info)
        assertEquals(1, suppression.activeCallsCount())
        assertTrue(suppression.isLeaseActive())

        // Second tool finishes
        guard.afterMcpToolCall(info.mcpToolDescriptor, emptyList(), null, info)
        assertEquals(0, suppression.activeCallsCount())
        assertTrue(suppression.isLeaseActive())
        assertTrue(trigger.isAutoAssistantSuppressed)

        // Third tool starts before lease expires, resetting lease
        guard.beforeMcpToolCall(info.mcpToolDescriptor, info)
        assertEquals(1, suppression.activeCallsCount())
        assertTrue(suppression.isLeaseActive())
        assertTrue(trigger.isAutoAssistantSuppressed)

        guard.afterMcpToolCall(info.mcpToolDescriptor, emptyList(), null, info)
        assertEquals(0, suppression.activeCallsCount())
        assertTrue(suppression.isLeaseActive())

        suppression.expireLeaseNow()
        assertFalse(suppression.isLeaseActive())
        assertFalse(trigger.isAutoAssistantSuppressed)
    }

    @Test
    fun `callback from a canceled expiration cannot expire a renewed lease`() {
        val trigger = MigrationTrigger(myProject.project)
        val suppression = myProject.project.service<MigrationAssistantSuppression>()
        suppression.triggerOverride = trigger
        suppression.ensureSuppressed()
        val staleExpiration = suppression.expirationCallbackForTest()

        // A running callback may still acquire the service lock after cancellation and renewal.
        suppression.ensureSuppressed()
        staleExpiration()
        assertTrue(suppression.isLeaseActive())
        assertTrue(trigger.isAutoAssistantSuppressed)

        suppression.expirationCallbackForTest()()
        assertFalse(suppression.isLeaseActive())
        assertFalse(trigger.isAutoAssistantSuppressed)
    }

    @Test
    fun `sliding lease expires automatically after configured timeout`() {
        System.setProperty(MigrationAssistantSuppression.LEASE_MS_PROPERTY, "50")
        val trigger = MigrationTrigger(myProject.project)
        val suppression = myProject.project.service<MigrationAssistantSuppression>()
        suppression.triggerOverride = trigger
        val guard = MigrationAssistantGuard()
        val info = stubMcpCallInfo(myProject)

        guard.beforeMcpToolCall(info.mcpToolDescriptor, info)
        guard.afterMcpToolCall(info.mcpToolDescriptor, emptyList(), null, info)
        assertTrue("trigger must be suppressed right after tool finishes", trigger.isAutoAssistantSuppressed)

        val deadline = System.currentTimeMillis() + 2000
        while (trigger.isAutoAssistantSuppressed && System.currentTimeMillis() < deadline) {
            Thread.sleep(20)
        }
        assertFalse("trigger must unsuppress once sliding lease timeout elapses", trigger.isAutoAssistantSuppressed)
        assertFalse("lease must be inactive after timer expiration", suppression.isLeaseActive())
    }

    @Test
    fun `lease duration property parsing and defaults`() {
        System.clearProperty(MigrationAssistantSuppression.LEASE_MS_PROPERTY)
        System.clearProperty(MigrationAssistantSuppression.LEASE_SECONDS_PROPERTY)
        assertEquals(120_000L, MigrationAssistantSuppression.getLeaseDurationMs())

        System.setProperty(MigrationAssistantSuppression.LEASE_SECONDS_PROPERTY, "30")
        assertEquals(30_000L, MigrationAssistantSuppression.getLeaseDurationMs())

        System.setProperty(MigrationAssistantSuppression.LEASE_MS_PROPERTY, "250")
        assertEquals(250L, MigrationAssistantSuppression.getLeaseDurationMs())

        System.setProperty(MigrationAssistantSuppression.LEASE_MS_PROPERTY, "invalid")
        assertEquals(30_000L, MigrationAssistantSuppression.getLeaseDurationMs())

        System.setProperty(MigrationAssistantSuppression.LEASE_SECONDS_PROPERTY, "-5")
        assertEquals(120_000L, MigrationAssistantSuppression.getLeaseDurationMs())
    }

    @Test
    fun `ensureSuppressed backwards compatibility arms sliding lease`() {
        val trigger = MigrationTrigger(myProject.project)
        val suppression = myProject.project.service<MigrationAssistantSuppression>()
        suppression.triggerOverride = trigger

        suppression.ensureSuppressed()
        assertTrue("ensureSuppressed must activate auto-assistant suppression", trigger.isAutoAssistantSuppressed)
        assertTrue("ensureSuppressed must arm the sliding lease", suppression.isLeaseActive())
        assertEquals(0, suppression.activeCallsCount())

        suppression.expireLeaseNow()
        assertFalse(trigger.isAutoAssistantSuppressed)
        assertFalse(suppression.isLeaseActive())
    }
}
