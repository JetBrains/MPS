package jetbrains.mps.agents.mcp.tools.migration

import com.intellij.mcpserver.McpCallInfo
import com.intellij.mcpserver.McpToolDescriptor
import com.intellij.mcpserver.ToolCallListener
import jetbrains.mps.ide.migration.MigrationTrigger
import kotlinx.coroutines.coroutineScope
import kotlinx.coroutines.delay
import kotlinx.coroutines.isActive
import kotlinx.coroutines.launch

/**
 * Keeps the Migration Assistant wizard from opening on its own while an agent drives the IDE (D48).
 *
 * `MigrationTrigger` answers a language redeploy, a module change or a closed make session by
 * opening the modal wizard, and every MCP call after that answers `MODAL_BLOCKED`. Suppression is a
 * single application-wide deadline on `MigrationTrigger`: every `mps_mcp_*` call moves it to
 * `now + window` (default 2 minutes, `-Dmps.mcp.migrationAssistantWindowSeconds`), and a check that
 * finds pending migrations before the deadline posts the "Migration required" balloon instead of the
 * wizard. Nothing runs when the window ends; the next check simply reads the clock. The agent applies
 * the migrations with `mps_mcp_run_migrations`; a human at the same IDE can click the balloon's
 * *Migrate* at any time, which opens the wizard as before.
 *
 * The checks that a long call provokes fire *inside* the call (make `sessionClosed` and
 * `afterLanguagesLoaded` during a `MAKE`, the re-check at the end of a headless migration during
 * `APPLY`), so the operations that can outlive the window keep the deadline ahead with
 * [holdingSuppression] instead of relying on an after-call hook.
 *
 * Registered as an application listener on [ToolCallListener.TOPIC] (see `META-INF/plugin.xml`).
 */
class MigrationAssistantGuard : ToolCallListener {
    companion object {
        const val WINDOW_SECONDS_PROPERTY: String = "mps.mcp.migrationAssistantWindowSeconds"
        const val DEFAULT_WINDOW_SECONDS: Long = 120L
        const val MPS_TOOL_PREFIX: String = "mps_mcp_"

        /** The suppression window; a missing, non-numeric or negative property means the default. */
        fun windowMillis(): Long {
            val seconds = System.getProperty(WINDOW_SECONDS_PROPERTY)?.toLongOrNull()?.takeIf { it >= 0 }
                ?: DEFAULT_WINDOW_SECONDS
            return seconds * 1000L
        }

        /** Moves the deadline to `now + window` (never backwards). */
        fun bump() = MigrationTrigger.suppressAutoAssistantFor(windowMillis())

        /**
         * Runs [block] while a heartbeat keeps the deadline ahead of the clock. The heartbeat is a
         * child coroutine of the caller, so it ends with the block (normally, by exception or by
         * cancellation) and there is no shared state and nothing to release.
         */
        suspend fun <T> holdingSuppression(block: suspend () -> T): T = coroutineScope {
            val heartbeat = launch {
                while (isActive) {
                    // a failing heartbeat must never cancel the scope and turn finished work into an error answer
                    runCatching { bump() }
                    delay(maxOf(windowMillis() / 2, 250L))
                }
            }
            try {
                block()
            } finally {
                heartbeat.cancel()
            }
        }
    }

    override fun beforeMcpToolCall(mcpToolDescriptor: McpToolDescriptor, additionalData: McpCallInfo) {
        if (mcpToolDescriptor.name.startsWith(MPS_TOOL_PREFIX)) bump()
    }
}
