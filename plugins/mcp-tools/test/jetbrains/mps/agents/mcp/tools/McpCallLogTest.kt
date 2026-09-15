package jetbrains.mps.agents.mcp.tools

import com.google.gson.JsonParser
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test
import java.nio.file.Files
import java.nio.file.Path

/**
 * Tests for [McpCallLogListener]. The listener is driven directly with the same stub
 * [com.intellij.mcpserver.McpCallInfo] the test harness injects for tool calls (the message-bus
 * dispatch itself belongs to the platform's MCP server and is exercised manually with
 * `-Dmps.mcp.calllog` on a running MPS).
 */
class McpCallLogTest : McpIntegrationTestBase() {

    private fun <T> withCallLog(file: Path?, body: () -> T): T {
        val previous = System.getProperty(McpCallLogListener.PROPERTY)
        try {
            if (file == null) System.clearProperty(McpCallLogListener.PROPERTY)
            else System.setProperty(McpCallLogListener.PROPERTY, file.toString())
            return body()
        } finally {
            if (previous == null) System.clearProperty(McpCallLogListener.PROPERTY)
            else System.setProperty(McpCallLogListener.PROPERTY, previous)
        }
    }

    private fun readLines(file: Path) =
        if (Files.exists(file)) Files.readAllLines(file).filter { it.isNotBlank() }.map { JsonParser.parseString(it).asJsonObject }
        else emptyList()

    private fun fire(listener: McpCallLogListener, error: Throwable? = null) {
        val info = stubMcpCallInfo(myProject)
        listener.beforeMcpToolCall(info.mcpToolDescriptor, info)
        listener.afterMcpToolCall(info.mcpToolDescriptor, emptyList(), error, info)
    }

    @Test
    fun `disabled by default - nothing is written`() {
        val file = Files.createTempDirectory("mcp-calllog").resolve("off.jsonl")
        withCallLog(null) {
            assertFalse(McpCallLogListener.isEnabled())
            fire(McpCallLogListener())
        }
        assertFalse("no file may be created when disabled", Files.exists(file))
    }

    @Test
    fun `writes one JSON line per call with the expected fields`() {
        val file = Files.createTempDirectory("mcp-calllog").resolve("calls.jsonl")
        val listener = McpCallLogListener()
        withCallLog(file) {
            assertTrue(McpCallLogListener.isEnabled())
            fire(listener)
            fire(listener)
        }
        val lines = readLines(file)
        assertEquals("exactly one line per call: $lines", 2, lines.size)
        for (line in lines) {
            assertEquals("mps_mcp_integration_test", line.get("tool").asString)
            assertEquals(0, line.get("callId").asInt)
            assertTrue("ok must be true without an exception: $line", line.get("ok").asBoolean)
            assertTrue("error must be null on success: $line", line.get("error").isJsonNull)
            assertTrue("stub has no operation argument: $line", line.get("op").isJsonNull)
            assertEquals("empty raw arguments serialise as {}", 2, line.get("argsBytes").asInt)
            assertTrue("ms must be non-negative: $line", line.get("ms").asLong >= 0)
            assertEquals("integration-test/0", line.get("client").asString)
            assertEquals(myProject.project.basePath, line.get("project").asString)
            assertTrue("ts must be an ISO instant: $line", line.get("ts").asString.endsWith("Z"))
            assertTrue("stub carries no session header: $line", line.get("session").isJsonNull)
        }
    }

    @Test
    fun `records a thrown exception as ok=false with the error class`() {
        val file = Files.createTempDirectory("mcp-calllog").resolve("errors.jsonl")
        withCallLog(file) {
            fire(McpCallLogListener(), IllegalStateException("boom"))
        }
        val line = readLines(file).single()
        assertFalse(line.get("ok").asBoolean)
        assertEquals("IllegalStateException: boom", line.get("error").asString)
    }

    @Test
    fun `after without before still logs, with ms unset`() {
        val file = Files.createTempDirectory("mcp-calllog").resolve("nobefore.jsonl")
        withCallLog(file) {
            val info = stubMcpCallInfo(myProject)
            McpCallLogListener().afterMcpToolCall(info.mcpToolDescriptor, emptyList(), null, info)
        }
        val line = readLines(file).single()
        assertTrue("ms must be null when no before-event was seen: $line", line.get("ms").isJsonNull)
    }
}
