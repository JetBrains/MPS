package jetbrains.mps.agents.mcp.tools.migration

import com.intellij.mcpserver.McpCallInfo
import com.intellij.mcpserver.McpToolDescriptor
import com.intellij.mcpserver.McpToolSideEffectEvent
import com.intellij.mcpserver.ToolCallListener
import com.intellij.openapi.Disposable
import com.intellij.openapi.components.Service
import com.intellij.openapi.components.service
import com.intellij.openapi.diagnostic.Logger
import com.intellij.openapi.project.Project
import com.intellij.openapi.util.Disposer
import com.intellij.util.concurrency.AppExecutorUtil
import jetbrains.mps.ide.migration.IStartupMigrationExecutor
import jetbrains.mps.ide.migration.MigrationTrigger
import jetbrains.mps.ide.project.ProjectHelper
import org.jetbrains.annotations.TestOnly
import java.lang.ref.WeakReference
import java.util.concurrent.ScheduledFuture
import java.util.concurrent.TimeUnit

/**
 * Stops the Migration Assistant wizard from opening on its own in a project an agent drives (D48).
 *
 * `MigrationTrigger` answers a language redeploy, a module change or a closed make session by
 * opening the modal wizard, and every MCP call after that answers `MODAL_BLOCKED`. While an agent is
 * driving the project (between `mps_mcp_*` calls and for a sliding inactivity lease afterwards),
 * this listener suppresses that auto-start: the trigger then only posts its "Migration required"
 * balloon, and the agent applies the migrations with `mps_mcp_run_migrations`. Once the agent goes
 * idle and the sliding lease expires (default 2 minutes, configured via `mps.migration.assistant.leaseSeconds`),
 * the suppression is released and the Migration Assistant wizard returns to its default interactive
 * behavior for human developers. A human at the same IDE can also click the balloon's *Migrate* at any
 * time, which opens the wizard as before.
 *
 * Registered as an application listener on [ToolCallListener.TOPIC] (see `META-INF/plugin.xml`).
 */
class MigrationAssistantGuard : ToolCallListener {
    companion object {
        private val logger = Logger.getInstance(MigrationAssistantGuard::class.java)

        @Volatile
        private var warnedOnce = false
    }

    override fun beforeMcpToolCall(mcpToolDescriptor: McpToolDescriptor, additionalData: McpCallInfo) {
        if (!mcpToolDescriptor.name.startsWith("mps_mcp_")) return
        val project = additionalData.project ?: return
        if (project.isDisposed) return
        try {
            project.service<MigrationAssistantSuppression>().onToolCallStarted()
        } catch (t: Throwable) {
            // A failure here must never fail the tool call itself; the wizard would just stay enabled.
            if (!warnedOnce) {
                warnedOnce = true
                logger.warn("Could not suppress the Migration Assistant auto-start for '${project.name}'", t)
            }
        }
    }

    override fun afterMcpToolCall(
        mcpToolDescriptor: McpToolDescriptor,
        events: List<McpToolSideEffectEvent>,
        error: Throwable?,
        callInfo: McpCallInfo,
    ) {
        if (!mcpToolDescriptor.name.startsWith("mps_mcp_")) return
        val project = callInfo.project ?: return
        if (project.isDisposed) return
        try {
            project.service<MigrationAssistantSuppression>().onToolCallFinished()
        } catch (t: Throwable) {
            if (!warnedOnce) {
                warnedOnce = true
                logger.warn("Could not handle completion in Migration Assistant guard for '${project.name}'", t)
            }
        }
    }
}

/**
 * Owner of the per-project suppression: keeps auto-assistant suppressed while tool calls are in flight
 * and during a sliding inactivity lease afterwards. When the lease expires, the token is disposed,
 * removing it from `MigrationTrigger` and restoring interactive wizards for human developers.
 */
@Service(Service.Level.PROJECT)
internal class MigrationAssistantSuppression(private val project: Project) : Disposable {
    companion object {
        private val logger = Logger.getInstance(MigrationAssistantSuppression::class.java)

        const val LEASE_SECONDS_PROPERTY: String = "mps.migration.assistant.leaseSeconds"
        const val LEASE_MS_PROPERTY: String = "mps.migration.assistant.leaseMs"
        const val DEFAULT_LEASE_SECONDS: Long = 120L

        fun getLeaseDurationMs(): Long {
            System.getProperty(LEASE_MS_PROPERTY)?.toLongOrNull()?.let { if (it >= 0) return it }
            val configuredSeconds = System.getProperty(LEASE_SECONDS_PROPERTY)?.toLongOrNull()
            val seconds = if (configuredSeconds != null && configuredSeconds >= 0) configuredSeconds else DEFAULT_LEASE_SECONDS
            return seconds * 1000L
        }
    }

    private class LeaseToken : Disposable {
        @Volatile
        var isDisposed: Boolean = false
            private set

        override fun dispose() {
            isDisposed = true
        }
    }

    private val lock = Any()

    @Volatile
    private var activeCallsCount: Int = 0

    @Volatile
    private var currentLeaseToken: LeaseToken? = null

    @Volatile
    private var suppressedTrigger: WeakReference<MigrationTrigger>? = null

    private var scheduledExpiration: ScheduledFuture<*>? = null
    private var expirationGeneration = 0L

    @get:TestOnly
    @set:TestOnly
    internal var triggerOverride: MigrationTrigger? = null

    fun onToolCallStarted() {
        if (!project.isOpen || project.isDisposed) return
        val mpsProject = ProjectHelper.fromIdeaProject(project) ?: return
        val trigger = triggerOverride ?: (IStartupMigrationExecutor.getInstance(mpsProject) as? MigrationTrigger) ?: return

        synchronized(lock) {
            if (!project.isOpen || project.isDisposed) return
            activeCallsCount++
            expirationGeneration++
            scheduledExpiration?.cancel(false)
            scheduledExpiration = null
            ensureTokenActive(trigger)
        }
    }

    fun onToolCallFinished() {
        if (project.isDisposed) return
        synchronized(lock) {
            if (project.isDisposed) return
            if (activeCallsCount > 0) {
                activeCallsCount--
            }
            if (activeCallsCount == 0 && currentLeaseToken != null) {
                scheduleExpiration()
            }
        }
    }

    /**
     * Backward-compatibility hook that ensures suppression is active and arms the sliding lease.
     */
    fun ensureSuppressed() {
        onToolCallStarted()
        onToolCallFinished()
    }

    private fun ensureTokenActive(trigger: MigrationTrigger) {
        val existingToken = currentLeaseToken
        val existingTrigger = suppressedTrigger?.get()

        if (existingToken != null && existingTrigger === trigger && !existingToken.isDisposed) {
            return
        }

        if (existingToken != null && !existingToken.isDisposed) {
            try {
                Disposer.dispose(existingToken)
            } catch (t: Throwable) {
                logger.warn("Error disposing stale migration assistant lease token", t)
            }
        }
        currentLeaseToken = null
        suppressedTrigger = null

        val newToken = LeaseToken()
        Disposer.register(this, newToken)
        trigger.suppressAutoAssistant(newToken)
        currentLeaseToken = newToken
        suppressedTrigger = WeakReference(trigger)
    }

    private fun scheduleExpiration() {
        scheduledExpiration?.cancel(false)
        val generation = ++expirationGeneration
        val delayMs = getLeaseDurationMs()
        if (delayMs <= 0) {
            expireLeaseIfIdle(generation)
            return
        }
        scheduledExpiration = AppExecutorUtil.getAppScheduledExecutorService().schedule(
            { expireLeaseIfIdle(generation) },
            delayMs,
            TimeUnit.MILLISECONDS
        )
    }

    private fun expireLeaseIfIdle(generation: Long) {
        if (project.isDisposed) return
        synchronized(lock) {
            if (project.isDisposed) return
            if (generation != expirationGeneration || activeCallsCount > 0) {
                return
            }
            val token = currentLeaseToken
            currentLeaseToken = null
            suppressedTrigger = null
            scheduledExpiration = null
            if (token != null && !token.isDisposed) {
                try {
                    Disposer.dispose(token)
                } catch (t: Throwable) {
                    logger.warn("Error disposing migration assistant lease token on expiry", t)
                }
            }
        }
    }

    fun isLeaseActive(): Boolean {
        synchronized(lock) {
            val token = currentLeaseToken
            return token != null && !token.isDisposed
        }
    }

    fun activeCallsCount(): Int {
        synchronized(lock) {
            return activeCallsCount
        }
    }

    @TestOnly
    internal fun expirationCallbackForTest(): () -> Unit {
        synchronized(lock) {
            val generation = expirationGeneration
            return { expireLeaseIfIdle(generation) }
        }
    }

    @TestOnly
    internal fun expireLeaseNow() {
        synchronized(lock) {
            scheduledExpiration?.cancel(false)
            scheduledExpiration = null
            expireLeaseIfIdle(++expirationGeneration)
        }
    }

    override fun dispose() {
        synchronized(lock) {
            expirationGeneration++
            scheduledExpiration?.cancel(false)
            scheduledExpiration = null
            activeCallsCount = 0
            val token = currentLeaseToken
            currentLeaseToken = null
            suppressedTrigger = null
            triggerOverride = null
            if (token != null && !token.isDisposed) {
                try {
                    Disposer.dispose(token)
                } catch (t: Throwable) {
                    // Ignore during project disposal
                }
            }
        }
    }
}
