// Integration tests for the console-scoped MCP toolset.
package jetbrains.mps.agents.mcp.tools.integration

import jetbrains.mps.agents.mcp.tools.*
import jetbrains.mps.agents.mcp.tools.common.*

import com.google.gson.JsonElement
import com.google.gson.JsonObject
import com.google.gson.JsonParser
import jetbrains.mps.project.modules.LanguageProducer
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertTrue
import org.junit.Test
import java.io.File

/**
 * End-to-end integration tests for [JetBrainsMPSConsoleMcpToolset].
 *
 * Covers the tools the toolset exposes:
 *  - `mps_mcp_insert_console_command_from_json` — the pre-console input-validation guard
 *    (malformed JSON is rejected before the Console tool window is touched). The happy paths
 *    (inserting a Command, and wrapping one or more statements into a `{ … }` block command) need
 *    a live Console tool window and are exercised manually.
 *  - `mps_mcp_get_console_history` / `mps_mcp_recall_console_command` / `mps_mcp_run_console_command` —
 *    the console-unavailable branch (structured error, no crash, in the headless fixture). The happy
 *    paths (listing real history entries; recalling one into the input slot; executing the current
 *    command) need a live Console and are verified manually.
 */
class JetBrainsMPSConsoleMcpToolsetIntegrationTest : McpIntegrationTestBase() {
    @Test
    fun `insert-console-command rejects malformed JSON before touching the console`() {
        // Malformed JSON is rejected in the pre-console parse guard, so this exercises the tool's
        // input contract without needing a live Console tool window in the test fixture. (The
        // happy paths — a single Command, or wrapping one/many statements into a block command —
        // require the running console and are verified manually.)
        val response = runTool(JetBrainsMPSConsoleMcpToolset()) {
            it.mps_mcp_insert_console_command_from_json(json = JsonOrText("{\"concept\":"))
        }

        val obj = JsonParser.parseString(response).asJsonObject
        assertFalse("expected error envelope: $response", obj.get("ok").asBoolean)
        assertEquals("INVALID_JSON", obj.get("code").asString)
    }

    @Test
    fun `get_console_history returns an error envelope when the console is unavailable`() {
        // The headless fixture never initializes the Console tool window, so this exercises the
        // console-resolution branch: it must return a structured error rather than crashing. The
        // happy path (a real history with command/response entries) is verified manually.
        val response = runTool(JetBrainsMPSConsoleMcpToolset()) {
            it.mps_mcp_get_console_history()
        }
        val obj = JsonParser.parseString(response).asJsonObject
        assertFalse("expected error envelope when the console is unavailable: $response", obj.get("ok").asBoolean)
    }

    @Test
    fun `recall_console_command returns an error envelope when the console is unavailable`() {
        // Without a live Console the tool short-circuits on console resolution (before resolving the
        // reference), so any reference yields a structured error. The recall happy path and the
        // same-console guard are verified manually against a running Console.
        val response = runTool(JetBrainsMPSConsoleMcpToolset()) {
            it.mps_mcp_recall_console_command(historyNodeReference = "r:does-not-exist/0")
        }
        val obj = JsonParser.parseString(response).asJsonObject
        assertFalse("expected error envelope when the console is unavailable: $response", obj.get("ok").asBoolean)
    }

    @Test
    fun `run_console_command returns an error envelope when the console is unavailable`() {
        // The headless fixture never initializes the Console tool window, so this exercises the
        // console-resolution branch: it must return a structured error rather than running anything.
        // The happy path (executing a present command) and the empty-input guard are verified
        // manually against a running Console.
        val response = runTool(JetBrainsMPSConsoleMcpToolset()) {
            it.mps_mcp_run_console_command()
        }
        val obj = JsonParser.parseString(response).asJsonObject
        assertFalse("expected error envelope when the console is unavailable: $response", obj.get("ok").asBoolean)
    }

    @Test
    fun `insert-console-command rejects an empty JSON array before touching the console`() {
        val response = runTool(JetBrainsMPSConsoleMcpToolset()) {
            it.mps_mcp_insert_console_command_from_json(json = JsonOrText("[]"))
        }

        val obj = JsonParser.parseString(response).asJsonObject
        assertFalse("expected error envelope: $response", obj.get("ok").asBoolean)
        assertEquals("INVALID_JSON", obj.get("code").asString)
        assertTrue("error should explain the empty array: $response", obj.get("error").asString.contains("empty"))
    }

    @Test
    fun `insert-console-command rejects non-object array elements before touching the console`() {
        val response = runTool(JetBrainsMPSConsoleMcpToolset()) {
            it.mps_mcp_insert_console_command_from_json(json = JsonOrText("[1]"))
        }

        val obj = JsonParser.parseString(response).asJsonObject
        assertFalse("expected error envelope: $response", obj.get("ok").asBoolean)
        assertEquals("INVALID_JSON", obj.get("code").asString)
        assertTrue("error should point at the invalid element: $response", obj.get("error").asString.contains("[0]"))
    }

    /**
     * `mps_mcp_get_project_structure` returns its payload inline when small and as a temp-file
     * path when it exceeds `maxInlineBytes`; the base helper accepts both shapes.
     */
    private fun readJsonObjectFromOkPath(response: String): JsonObject = payloadObjectFromOkData(response)

    // ── D43: missing-required-parameter rejections through the real bridge ────────────────
    // These go through callThroughBridge, not runTool: only the bridge's own argument binding
    // can observe a wrong-key spelling being silently dropped before the tool body runs.

    @Test
    fun `insert_console_command_from_json names json when the caller sent blueprint`() {
        val response = callThroughBridge(
            JetBrainsMPSConsoleMcpToolset(), "mps_mcp_insert_console_command_from_json",
            mapOf("blueprint" to kotlinx.serialization.json.JsonPrimitive("""{"concept":"jetbrains.mps.console.base.structure.BLExpression"}""")),
        )
        val obj = JsonParser.parseString(response).asJsonObject
        assertFalse("expected error envelope: $response", obj.get("ok").asBoolean)
        assertEquals("INVALID_REQUEST", obj.get("code").asString)
        assertEquals(listOf("json"), obj.getAsJsonObject("details").getAsJsonArray("missingParameters").map { it.asString })
        val error = obj.get("error").asString
        assertTrue(
            "must name the key and the dropped spelling: $error",
            error.startsWith("json is required.") && error.contains("'blueprint'"),
        )
    }

    @Test
    fun `recall_console_command names historyNodeReference when the caller sent nodeReference`() {
        val response = callThroughBridge(
            JetBrainsMPSConsoleMcpToolset(), "mps_mcp_recall_console_command",
            mapOf("nodeReference" to kotlinx.serialization.json.JsonPrimitive("r:does-not-exist/0")),
        )
        val obj = JsonParser.parseString(response).asJsonObject
        assertFalse("expected error envelope: $response", obj.get("ok").asBoolean)
        assertEquals("INVALID_REQUEST", obj.get("code").asString)
        assertEquals(listOf("historyNodeReference"), obj.getAsJsonObject("details").getAsJsonArray("missingParameters").map { it.asString })
        val error = obj.get("error").asString
        assertTrue(
            "must name the key and the dropped spelling: $error",
            error.startsWith("historyNodeReference is required.") && error.contains("'nodeReference'"),
        )
    }

    @Test
    fun `recall_console_command reaches the console-unavailable branch once retried with the correct key`() {
        val response = callThroughBridge(
            JetBrainsMPSConsoleMcpToolset(), "mps_mcp_recall_console_command",
            mapOf("historyNodeReference" to kotlinx.serialization.json.JsonPrimitive("r:does-not-exist/0")),
        )
        val obj = JsonParser.parseString(response).asJsonObject
        assertFalse("expected error envelope when the console is unavailable: $response", obj.get("ok").asBoolean)
        assertFalse("must not be the missing-parameter rejection anymore", obj.get("code")?.asString == "INVALID_REQUEST" &&
            obj.get("error").asString.startsWith("historyNodeReference is required."))
    }
}
