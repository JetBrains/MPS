package jetbrains.mps.agents.mcp.tools.integration

import jetbrains.mps.agents.mcp.tools.logging.*

import com.google.gson.JsonParser
import com.intellij.mcpserver.McpCallAdditionalDataElement
import kotlinx.coroutines.runBlocking
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

    /**
     * Records [response] as the outcome of the stub call (callId 0, same as [fire]'s) via
     * [McpCallOutcomes], as if a tool wrapped in it had just returned that envelope.
     */
    private fun recordOutcome(response: String) {
        val element = McpCallAdditionalDataElement(stubMcpCallInfo(myProject))
        runBlocking(element) { McpCallOutcomes.record(response) }
    }

    /**
     * Like [fire], but records [response] as the call's outcome between the before/after events,
     * mirroring where a real tool site's [McpCallOutcomes.record] call sits relative to
     * `beforeMcpToolCall`/`afterMcpToolCall` (a plain [fire] would immediately erase it, since
     * `beforeMcpToolCall` forgets any outcome left over from an earlier call).
     */
    private fun fireWithOutcome(listener: McpCallLogListener, response: String, error: Throwable? = null) {
        val info = stubMcpCallInfo(myProject)
        listener.beforeMcpToolCall(info.mcpToolDescriptor, info)
        recordOutcome(response)
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
            assertFalse("threw must be false without an exception: $line", line.get("threw").asBoolean)
            assertTrue("no errorCode when no envelope was recorded: $line", line.get("errorCode").isJsonNull)
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
        assertTrue("a throw must be reported as threw=true: $line", line.get("threw").asBoolean)
        assertTrue("a throw leaves no envelope to take a code from: $line", line.get("errorCode").isJsonNull)
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

    @Test
    fun `a false envelope without a throw is recorded as ok=false with its errorCode`() {
        val file = Files.createTempDirectory("mcp-calllog").resolve("false-envelope.jsonl")
        val listener = McpCallLogListener()
        withCallLog(file) {
            fireWithOutcome(listener, """{"ok":false,"code":"INVALID_REQUEST","error":"bad request"}""")
        }
        val line = readLines(file).single()
        assertFalse("envelope said ok=false: $line", line.get("ok").asBoolean)
        assertFalse("nothing was thrown: $line", line.get("threw").asBoolean)
        assertEquals("INVALID_REQUEST", line.get("errorCode").asString)
        assertTrue("no exception was thrown: $line", line.get("error").isJsonNull)
    }

    @Test
    fun `a NOT_FOUND envelope without a throw is recorded as ok=false with its errorCode`() {
        // Guards AbstractOps#withMpsProject's early return (no MPS project resolved for the
        // current IDEA project): that branch used to return errJson(...) directly, bypassing
        // McpCallOutcomes.record entirely, so the call log recorded ok=true even though the
        // envelope said ok=false. It must now go through record() exactly like the success and
        // toolFailure branches below it.
        val file = Files.createTempDirectory("mcp-calllog").resolve("not-found-envelope.jsonl")
        val listener = McpCallLogListener()
        withCallLog(file) {
            fireWithOutcome(listener, """{"ok":false,"code":"NOT_FOUND","error":"No MPS project available"}""")
        }
        val line = readLines(file).single()
        assertFalse("envelope said ok=false: $line", line.get("ok").asBoolean)
        assertFalse("nothing was thrown: $line", line.get("threw").asBoolean)
        assertEquals("NOT_FOUND", line.get("errorCode").asString)
        assertTrue("no exception was thrown: $line", line.get("error").isJsonNull)
    }

    @Test
    fun `a thrown exception is ok=false and threw=true regardless of any recorded envelope`() {
        val file = Files.createTempDirectory("mcp-calllog").resolve("threw.jsonl")
        val listener = McpCallLogListener()
        withCallLog(file) {
            fireWithOutcome(listener, """{"ok":true}""", IllegalStateException("boom"))
        }
        val line = readLines(file).single()
        assertFalse("a throw overrides even a successful recorded envelope: $line", line.get("ok").asBoolean)
        assertTrue(line.get("threw").asBoolean)
        assertEquals("IllegalStateException: boom", line.get("error").asString)
    }

    @Test
    fun `a true envelope without a throw is recorded as ok=true with no errorCode`() {
        val file = Files.createTempDirectory("mcp-calllog").resolve("true-envelope.jsonl")
        val listener = McpCallLogListener()
        withCallLog(file) {
            fireWithOutcome(listener, """{"ok":true,"data":"x"}""")
        }
        val line = readLines(file).single()
        assertTrue("envelope said ok=true and nothing threw: $line", line.get("ok").asBoolean)
        assertFalse(line.get("threw").asBoolean)
        assertTrue("no code on a successful envelope: $line", line.get("errorCode").isJsonNull)
    }

    @Test
    fun `no recorded envelope falls back to the throw-only ok signal`() {
        val file = Files.createTempDirectory("mcp-calllog").resolve("no-outcome.jsonl")
        withCallLog(file) {
            fire(McpCallLogListener())
        }
        val line = readLines(file).single()
        assertTrue("ok falls back to !threw when nothing was recorded: $line", line.get("ok").asBoolean)
        assertFalse(line.get("threw").asBoolean)
        assertTrue(line.get("errorCode").isJsonNull)
    }

    @Test
    fun `disabled call log records no outcome either`() {
        val file = Files.createTempDirectory("mcp-calllog").resolve("disabled.jsonl")
        withCallLog(null) {
            assertFalse(McpCallLogListener.isEnabled())
            recordOutcome("""{"ok":false,"code":"INVALID_REQUEST"}""")
            fire(McpCallLogListener())
        }
        assertFalse("no file may be created when disabled", Files.exists(file))
    }
}
