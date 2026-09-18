package jetbrains.mps.agents.mcp.tools

import com.google.gson.JsonParser
import com.intellij.mcpserver.McpCallAdditionalDataElement
import kotlinx.coroutines.currentCoroutineContext
import java.util.concurrent.ConcurrentHashMap

/**
 * Per-`callId` side channel that lets [McpCallLogListener] see the JSON envelope a tool actually
 * returned, not just whether it threw. The platform's [com.intellij.mcpserver.ToolCallListener]
 * only gets `error: Throwable?` in `afterMcpToolCall`, never the tool's return value, and
 * [com.intellij.mcpserver.McpCallInfo] is an immutable data class with no extension point to
 * carry one through — so `callId` (unique per in-flight call, stable across a call's own nested
 * suspend calls) is the only correlation key available across this boundary.
 *
 * A call site that itself returns more than one envelope in sequence (there is currently none —
 * every `record` call sits right at the value a tool function actually returns) would have its
 * entry overwritten: last write wins, deliberately. That is also always the write that matters,
 * because it is the last one made before [McpCallLogListener.afterMcpToolCall] reads it.
 *
 * Marked `internal` (kept out of this module's public API) but annotated [PublishedApi]: [record]
 * is called from [AbstractOps.withMpsProject], which is a public inline function, and such a
 * function's body is copied into every call site, so it can only reference declarations at least
 * as visible as itself. [PublishedApi] is the idiomatic escape hatch for exactly this — it makes
 * an `internal` declaration visible in the compiled bytecode (so an inline body in the same module
 * can call it) while keeping it `internal` in source, matching every other helper in this package.
 */
@PublishedApi
internal object McpCallOutcomes {
    /** Recorded envelope `ok` (null when absent/non-boolean) and `code` (null when absent). */
    private data class Outcome(val ok: Boolean?, val code: String?)

    private val outcomes = ConcurrentHashMap<Int, Outcome>()

    /**
     * Records [response]'s envelope `ok`/`code` fields under the current call's `callId` and
     * returns [response] unchanged, so a call site can wrap its result expression in place. A
     * no-op (nothing stored) when the call log is disabled, when there is no MCP call context
     * (e.g. a helper invoked directly from a unit test), or when [response] does not parse as a
     * JSON object.
     */
    suspend fun record(response: String): String {
        if (!McpCallLogListener.isEnabled()) return response
        val callId = currentCoroutineContext()[McpCallAdditionalDataElement.Key]?.additionalData?.callId
            ?: return response
        val envelope = try {
            JsonParser.parseString(response).asJsonObject
        } catch (_: Exception) {
            null
        }
        val ok = envelope?.get("ok")?.takeIf { it.isJsonPrimitive && it.asJsonPrimitive.isBoolean }?.asBoolean
        val code = envelope?.get("code")?.takeIf { it.isJsonPrimitive }?.asString
        outcomes[callId] = Outcome(ok, code)
        return response
    }

    /**
     * Clears any leftover entry for [callId] before a call starts, so a stale outcome from an
     * earlier call cannot be misattributed if the platform ever reuses a `callId`.
     */
    fun forget(callId: Int) {
        outcomes.remove(callId)
    }

    /** Removes and returns the recorded `(ok, code)` for [callId], or null when nothing was recorded. */
    fun take(callId: Int): Pair<Boolean?, String?>? {
        val outcome = outcomes.remove(callId) ?: return null
        return outcome.ok to outcome.code
    }
}
