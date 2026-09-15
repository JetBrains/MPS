// Integration tests for the console-scoped MCP toolset.
package jetbrains.mps.agents.mcp.tools

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
            it.mps_mcp_insert_console_command_from_json(json = "{\"concept\":")
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
            it.mps_mcp_insert_console_command_from_json(json = "[]")
        }

        val obj = JsonParser.parseString(response).asJsonObject
        assertFalse("expected error envelope: $response", obj.get("ok").asBoolean)
        assertEquals("INVALID_JSON", obj.get("code").asString)
        assertTrue("error should explain the empty array: $response", obj.get("error").asString.contains("empty"))
    }

    @Test
    fun `insert-console-command rejects non-object array elements before touching the console`() {
        val response = runTool(JetBrainsMPSConsoleMcpToolset()) {
            it.mps_mcp_insert_console_command_from_json(json = "[1]")
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
}
