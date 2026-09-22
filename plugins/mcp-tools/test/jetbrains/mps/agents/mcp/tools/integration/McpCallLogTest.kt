package jetbrains.mps.agents.mcp.tools.integration

import jetbrains.mps.agents.mcp.tools.JetBrainsMPSLanguageMcpToolset
import jetbrains.mps.agents.mcp.tools.JetBrainsMPSNodeMcpToolset
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
import kotlinx.serialization.json.JsonElement as McpJsonElement
import kotlinx.serialization.json.JsonPrimitive as McpJsonPrimitive

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

    /**
     * Drives a *real* tool rejection through the bridge with the log enabled, instead of feeding
     * [McpCallOutcomes] a synthetic envelope. Every other test here supplies the envelope itself,
     * so none of them would notice a tool that never records one: a rejection returning before
     * `withMpsProject` then reaches the log as `ok:true`, and
     * `study/scripts/analyze_runs.py` computes `server_errors` off exactly that field. These are
     * the paths the P2 remedy (D27/D28/D29/D32/D36) moved from pre-dispatch into the tool body,
     * which is what put them at risk of being logged as successes.
     */
    @Test
    fun `an in-tool rejection returning before withMpsProject is logged as ok=false`() {
        data class Case(val tool: String, val args: Map<String, McpJsonElement>, val expectedCode: String)

        val cases = listOf(
            // D28: blank selector, and an operation this tool does not have.
            Case("mps_mcp_update_node", emptyMap(), "INVALID_REQUEST"),
            Case("mps_mcp_update_node", mapOf("operation" to McpJsonPrimitive("DELETE")), "INVALID_REQUEST"),
            // D28: a missing ADD CHILD key.
            Case(
                "mps_mcp_update_node",
                mapOf("operation" to McpJsonPrimitive("ADD"), "kind" to McpJsonPrimitive("CHILD")),
                "INVALID_REQUEST",
            ),
            // D29: MAKE with no parameters blob keeps MAKE's own error code.
            Case("mps_mcp_alter_nodes", mapOf("operation" to McpJsonPrimitive("MAKE")), "MAKE_INPUT_INVALID"),
            // D32: an unknown print_node format.
            Case(
                "mps_mcp_print_node",
                mapOf(
                    "nodeReference" to McpJsonPrimitive("r:00000000-0000-0000-0000-000000000000(dummy)/1"),
                    "format" to McpJsonPrimitive("structural"),
                ),
                "INVALID_REQUEST",
            ),
        )

        for (case in cases) {
            val file = Files.createTempDirectory("mcp-calllog").resolve("in-tool.jsonl")
            val response = withCallLog(file) {
                val listener = McpCallLogListener()
                val info = stubMcpCallInfo(myProject)
                listener.beforeMcpToolCall(info.mcpToolDescriptor, info)
                val result = callThroughBridge(JetBrainsMPSNodeMcpToolset(), case.tool, case.args)
                listener.afterMcpToolCall(info.mcpToolDescriptor, emptyList(), null, info)
                result
            }
            val envelope = JsonParser.parseString(response).asJsonObject
            assertFalse("${case.tool} must have rejected: $response", envelope.get("ok").asBoolean)

            val line = readLines(file).single()
            assertFalse("${case.tool} rejection must log ok=false: $line", line.get("ok").asBoolean)
            assertEquals("${case.tool} must log its errorCode: $line", case.expectedCode, line.get("errorCode").asString)
        }
    }

    /**
     * A partly-failed `SET PROPERTY` batch must log `ok:false`, even when its *last* row succeeded.
     *
     * This is the one scenario that separates "the aggregate envelope was recorded" from "whatever
     * the final row recorded": each row goes through `update_node_property`, which is
     * `withMpsProject`-wrapped and records its own envelope, and [McpCallOutcomes] is
     * last-write-wins. With the bad row last the log would read `ok:false` by luck; the row order
     * here is deliberately bad-then-good, so an unrecorded aggregate logs the call as a success.
     */
    @Test
    fun `a batch whose last row succeeded still logs ok=false when an earlier row failed`() {
        val conceptRef = createConceptRoot("CallLogBatchFixture")
        val file = Files.createTempDirectory("mcp-calllog").resolve("batch.jsonl")
        val response = withCallLog(file) {
            val listener = McpCallLogListener()
            val info = stubMcpCallInfo(myProject)
            listener.beforeMcpToolCall(info.mcpToolDescriptor, info)
            val result = runBlocking(McpCallAdditionalDataElement(stubMcpCallInfo(myProject))) {
                JetBrainsMPSNodeMcpToolset().mps_mcp_update_node(
                    operation = "SET",
                    kind = "PROPERTY",
                    properties = listOf(
                        listOf("r:00000000-0000-0000-0000-000000000000(nope)/1", "name", "Fails"),
                        listOf(conceptRef, "name", "Succeeds"),
                    ),
                )
            }
            listener.afterMcpToolCall(info.mcpToolDescriptor, emptyList(), null, info)
            result
        }

        val envelope = JsonParser.parseString(response).asJsonObject
        assertFalse("the batch envelope itself must say ok=false: $response", envelope.get("ok").asBoolean)
        val rows = envelope.getAsJsonArray("data")
        assertEquals("expected one result row per triplet: $response", 2, rows.size())
        assertTrue(
            "the last row must have succeeded, or this test proves nothing: $response",
            rows.get(1).asJsonObject.get("ok").asBoolean,
        )

        val line = readLines(file).single()
        assertFalse("the call log must report the aggregate, not the last row: $line", line.get("ok").asBoolean)
    }

    /**
     * D27's rejection lives in a second toolset and is likewise returned before `withMpsProject`.
     */
    @Test
    fun `get-concept-details empty-input rejection is logged as ok=false`() {
        val file = Files.createTempDirectory("mcp-calllog").resolve("concept-details.jsonl")
        val response = withCallLog(file) {
            val listener = McpCallLogListener()
            val info = stubMcpCallInfo(myProject)
            listener.beforeMcpToolCall(info.mcpToolDescriptor, info)
            val result = callThroughBridge(
                JetBrainsMPSLanguageMcpToolset(),
                "mps_mcp_get_concept_details",
                mapOf("conceptRef" to McpJsonPrimitive("jetbrains.mps.lang.core.structure.BaseConcept")),
            )
            listener.afterMcpToolCall(info.mcpToolDescriptor, emptyList(), null, info)
            result
        }
        assertFalse("must have rejected: $response", JsonParser.parseString(response).asJsonObject.get("ok").asBoolean)
        val line = readLines(file).single()
        assertFalse("rejection must log ok=false: $line", line.get("ok").asBoolean)
        assertEquals("INVALID_REQUEST", line.get("errorCode").asString)
    }
}
