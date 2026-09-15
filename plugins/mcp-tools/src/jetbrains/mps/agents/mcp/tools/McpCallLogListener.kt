package jetbrains.mps.agents.mcp.tools

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
 *  "ok":true,"error":null,"project":"/path/to/project","client":"claude-code/2.1","session":"…"}
 * ```
 *
 * `ok=false` / `error` mean the tool threw (including cancellation); a tool that returned an
 * `{"ok":false,…}` error envelope is a successful call at this level — the envelope, and the
 * response size, are visible only in the client transcript. Only argument *sizes* are logged,
 * never content, so the flag is safe to leave available in the product. Ground truth for
 * frequency, latency and argument size in agent-workflow studies
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
        val path = System.getProperty(PROPERTY)?.takeIf { it.isNotBlank() } ?: return
        try {
            val line = JsonObject().apply {
                addProperty("ts", Instant.now().toString())
                addProperty("tool", toolDescriptor.name)
                addProperty("callId", callInfo.callId)
                addProperty("op", operationOf(callInfo.rawArguments))
                addProperty("argsBytes", callInfo.rawArguments.toString().toByteArray(StandardCharsets.UTF_8).size)
                addProperty("ms", started?.let { (System.nanoTime() - it) / 1_000_000 })
                addProperty("ok", error == null)
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
