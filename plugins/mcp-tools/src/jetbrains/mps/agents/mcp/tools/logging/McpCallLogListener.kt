package jetbrains.mps.agents.mcp.tools.logging


import com.google.gson.JsonObject
import com.intellij.mcpserver.McpCallInfo
import com.intellij.mcpserver.McpToolDescriptor
import com.intellij.mcpserver.McpToolSideEffectEvent
import com.intellij.mcpserver.ToolCallListener
import com.intellij.openapi.diagnostic.Logger
import java.nio.charset.StandardCharsets
import java.nio.file.Files
import java.nio.file.Paths
import java.nio.file.StandardOpenOption
import java.time.Instant
import java.util.concurrent.ConcurrentHashMap

/**
 * Optional per-call JSON-lines log of every MCP tool invocation dispatched by the IDE's MCP
 * server (all `mps_mcp_*` tools plus the platform's own tools).
 *
 * Registered as an application listener on [ToolCallListener.TOPIC] (see `META-INF/plugin.xml`),
 * so it needs no cooperation from individual tools and cannot miss an entry point. Enabled only
 * when the system property [PROPERTY] names a file (e.g. `-Dmps.mcp.calllog=/tmp/mcp-calls.jsonl`);
 * otherwise every callback returns immediately. One line is appended per call:
 *
 * ```
 * {"ts":"…","tool":"mps_mcp_update_node","callId":7,"op":"ADD/CHILD","argsBytes":1834,"ms":140,
 *  "ok":true,"threw":false,"errorCode":null,"error":null,"project":"/path/to/project",
 *  "client":"claude-code/2.1","session":"…"}
 * ```
 *
 * `threw` is true only when the tool call itself threw (including cancellation) — `error` is the
 * exception's class and (truncated) message in that case, null otherwise. `ok` additionally
 * reflects the envelope a tool actually returned, via [McpCallOutcomes]: it is true only when the
 * call did not throw AND the returned envelope's own `ok` is not `false`. `errorCode` carries that
 * envelope's `code` field (e.g. `"INVALID_REQUEST"`) when one was recorded, null otherwise. A call
 * that neither threw nor went through a [McpCallOutcomes]-recording call site (i.e. bypasses
 * `withMpsProject` and the handful of tools listed at [McpCallOutcomes]'s call sites) has no
 * recorded envelope, so `ok` falls back to `!threw` and `errorCode` is null — the same blind
 * "did it throw" signal this listener used before envelope visibility was added. Only argument
 * *sizes* are logged, never content, so the flag is safe to leave available in the product.
 * Ground truth for frequency, latency and argument size in agent-workflow studies
 * (see `docs/skill-script-automation-study.md`, section 4.1).
 */
class McpCallLogListener : ToolCallListener {
    companion object {
        const val PROPERTY: String = "mps.mcp.calllog"
        private val logger = Logger.getInstance(McpCallLogListener::class.java)
        private val lock = Any()

        @Volatile
        private var warnedOnce = false

        fun isEnabled(): Boolean = !System.getProperty(PROPERTY).isNullOrBlank()
    }

    private val startedNanos = ConcurrentHashMap<Int, Long>()

    override fun beforeMcpToolCall(mcpToolDescriptor: McpToolDescriptor, additionalData: McpCallInfo) {
        if (!isEnabled()) return
        startedNanos[additionalData.callId] = System.nanoTime()
        // Clears any stale entry so a leftover outcome from an earlier call cannot be
        // misattributed if the platform ever reuses a callId.
        McpCallOutcomes.forget(additionalData.callId)
    }

    override fun afterMcpToolCall(
        mcpToolDescriptor: McpToolDescriptor,
        events: List<McpToolSideEffectEvent>,
        error: Throwable?,
        additionalData: McpCallInfo,
    ) {
        val callInfo = additionalData
        val toolDescriptor = mcpToolDescriptor
        val started = startedNanos.remove(callInfo.callId)
        // Both removals deliberately happen BEFORE the path check, so neither map can retain an
        // entry for a call that is not going to be logged. Today nothing is recorded while the log
        // is off anyway ([McpCallOutcomes.record] gates on [isEnabled]), so this only matters if
        // the property is cleared mid-call - but moving either below the early return would turn
        // that window into a leak.
        val recorded = McpCallOutcomes.take(callInfo.callId)
        val path = System.getProperty(PROPERTY)?.takeIf { it.isNotBlank() } ?: return
        try {
            val threw = error != null
            val line = JsonObject().apply {
                addProperty("ts", Instant.now().toString())
                addProperty("tool", toolDescriptor.name)
                addProperty("callId", callInfo.callId)
                addProperty("op", operationOf(callInfo.rawArguments))
                addProperty("argsBytes", callInfo.rawArguments.toString().toByteArray(StandardCharsets.UTF_8).size)
                addProperty("ms", started?.let { (System.nanoTime() - it) / 1_000_000 })
                // No recorded envelope (recorded == null) falls back to the throw-only signal this
                // listener used before envelope visibility was added: ok = !threw.
                addProperty("ok", !threw && recorded?.first != false)
                addProperty("threw", threw)
                addProperty("errorCode", recorded?.second)
                addProperty("error", error?.let { "${it::class.simpleName}: ${it.message?.take(200) ?: ""}" })
                addProperty("project", callInfo.project?.basePath)
                addProperty("client", "${callInfo.clientInfo.name}/${callInfo.clientInfo.version}")
                addProperty("session", callInfo.headers.entries
                    .firstOrNull { it.key.equals("mcp-session-id", ignoreCase = true) }
                    ?.value?.firstOrNull())
            }
            synchronized(lock) {
                Files.write(
                    Paths.get(path),
                    (line.toString() + "\n").toByteArray(StandardCharsets.UTF_8),
                    StandardOpenOption.CREATE, StandardOpenOption.APPEND
                )
            }
        } catch (t: Throwable) {
            if (!warnedOnce) {
                warnedOnce = true
                logger.warn("Failed to append to the MCP call log at '$path'; further failures are not reported", t)
            }
        }
    }

    /** `operation` and/or `kind` argument joined as `OP/KIND`, or null when neither is present. */
    private fun operationOf(args: Map<String, Any?>): String? {
        val parts = listOf("operation", "kind").mapNotNull { key ->
            args[key]?.toString()?.trim()?.removeSurrounding("\"")?.takeIf { it.isNotEmpty() && it != "null" }
        }
        return parts.takeIf { it.isNotEmpty() }?.joinToString("/")
    }
}
