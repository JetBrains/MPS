package jetbrains.mps.agents.mcp.tools.integration

import jetbrains.mps.agents.mcp.tools.*
import jetbrains.mps.agents.mcp.tools.common.*

import com.google.gson.JsonParser
import com.intellij.diagnostic.ThreadDumper
import com.intellij.openapi.application.ApplicationManager
import com.intellij.openapi.application.ModalityState
import com.intellij.openapi.application.impl.LaterInvocator
import com.intellij.testFramework.IndexingTestUtil
import kotlinx.coroutines.delay
import kotlinx.coroutines.runBlocking
import org.junit.After
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Before
import org.junit.Rule
import org.junit.Test
import org.junit.rules.TestRule
import org.junit.rules.Timeout
import org.junit.runner.Description
import org.junit.runners.model.Statement
import java.util.Timer
import kotlin.concurrent.timerTask

/**
 * Covers the modal-dialog timeout mechanism added to [AbstractOps] (`withModalTimeout` /
 * `withModalTimeoutOnEdt`) as part of the fix for `mps_mcp_*` tools hanging behind a modal
 * dialog on the EDT instead of failing fast with an actionable [AbstractOps.McpErrorCode.MODAL_BLOCKED]
 * error (see `HANDOFF-mcp-modal-timeout-withcontext-audit.md`).
 *
 * This headless test bench cannot open a real modal dialog. Instead, [LaterInvocator]'s
 * `enterModal`/`leaveModal` — the exact low-level primitive `DialogWrapper.show()` itself uses
 * to mark the application "modal" — is pushed/popped directly. That reproduces the real failure
 * mode precisely (an EDT dispatch under `ModalityState.nonModal()` is deferred until the modal
 * state is left) without any UI, so it is both reliable (no flaky timing on opening/closing a
 * real dialog) and fast, since [AbstractOps.withModalTimeoutOnEdt]'s `timeoutMs` parameter (test-only;
 * defaults to the real 30s production budget everywhere else) lets these tests use a tiny budget.
 */
class AbstractOpsModalTimeoutTest : McpIntegrationTestBase() {

    private val probe = ModalTimeoutProbe()

    /** A hang here (e.g. a deadlocked EDT) must fail this test with a thread dump, not stall the whole build. */
    @get:Rule
    val dumpThreadsAndFailOnTimeout = DumpThreadsAndFailOnTimeout(TEST_TIMEOUT_MS)

    /**
     * Opening the fresh test project and creating its modules (in the base-class `@Before`s) starts
     * scanning/indexing. Since 263, a dumb-mode write action transferred to the EDT while a modal
     * state entered via [enterModal] is active fails as write-unsafe and can deadlock the test, so the
     * modal state must only be entered once indexing is over.
     */
    @Before
    fun waitForIndexing() {
        IndexingTestUtil.waitUntilIndexesAreReady(myProject.project)
    }

    /** Safety net: a failing assertion mid-test must not leak a modal state into later tests. */
    @After
    fun leaveAnyOpenModals() {
        invokeAndWaitOnEdt { LaterInvocator.leaveAllModals() }
    }

    private fun invokeAndWaitOnEdt(action: () -> Unit) {
        ApplicationManager.getApplication().invokeAndWait(action, ModalityState.any())
    }

    /** Enters a fresh modal state (as a real modal dialog's `show()` would) and returns its entity. */
    private fun enterModal(): Any {
        val entity = Any()
        invokeAndWaitOnEdt { LaterInvocator.enterModal(entity) }
        return entity
    }

    private fun leaveModal(entity: Any) {
        invokeAndWaitOnEdt { LaterInvocator.leaveModal(entity) }
    }

    // ── withModalTimeout: the low-level timeout-to-exception conversion, no EDT/modality involved ──

    @Test
    fun `withModalTimeout converts a slow block into a MODAL_BLOCKED McpModalBlockedException`() {
        val timeoutMs = 100L
        val ex = assertThrowsModalBlocked {
            runBlocking { probe.callWithModalTimeout(timeoutMs) { delay(5_000L) } }
        }
        assertEquals(AbstractOps.McpErrorCode.MODAL_BLOCKED, ex.errorCode)
        assertTrue("message must mention a modal dialog: ${ex.message}", ex.message!!.contains("modal dialog"))
        assertTrue(
            "message must tell the user to close dialogs: ${ex.message}",
            ex.message!!.contains("close any open dialogs")
        )
        assertEquals(timeoutMs, ex.errorDetails["timeoutMs"])
    }

    @Test
    fun `withModalTimeout does not fire for a block that finishes within budget`() {
        val result = runBlocking { probe.callWithModalTimeout(5_000L) { 42 } }
        assertEquals(42, result)
    }

    // ── withModalTimeoutOnEdt + a genuinely blocked EDT (no coroutine delay involved) ────────────
    // These reproduce "a blocking modal dialog is needed for the timeout to occur" directly: the
    // block below returns instantly once it runs, so a timeout can only happen because the EDT
    // dispatch itself never got to run while the modal entity was active.

    @Test
    fun `withModalTimeoutOnEdt reports MODAL_BLOCKED while a modal dialog is open`() {
        val timeoutMs = 300L
        val entity = enterModal()
        try {
            val startNanos = System.nanoTime()
            val ex = assertThrowsModalBlocked {
                runBlocking {
                    probe.callWithModalTimeoutOnEdt(timeoutMs) {
                        error("EDT dispatch must never run while a modal dialog is open")
                    }
                }
            }
            val elapsedMs = (System.nanoTime() - startNanos) / 1_000_000
            assertEquals(AbstractOps.McpErrorCode.MODAL_BLOCKED, ex.errorCode)
            assertTrue(
                "must not report the timeout before the budget elapses: ${elapsedMs}ms < ${timeoutMs}ms",
                elapsedMs >= timeoutMs
            )
            assertTrue(
                "must not hang well past its own budget: ${elapsedMs}ms",
                elapsedMs < timeoutMs + 10_000
            )
        } finally {
            leaveModal(entity)
        }
    }

    @Test
    fun `withModalTimeoutOnEdt succeeds promptly once the modal dialog closes`() {
        val timeoutMs = 10_000L
        val entity = enterModal()
        leaveModal(entity) // The dialog "closes" before the call is even made.

        val startNanos = System.nanoTime()
        val result = runBlocking { probe.callWithModalTimeoutOnEdt(timeoutMs) { "ok" } }
        val elapsedMs = (System.nanoTime() - startNanos) / 1_000_000

        assertEquals("ok", result)
        assertTrue(
            "a call made once the dialog is closed must complete almost immediately, not wait out the budget: ${elapsedMs}ms",
            elapsedMs < timeoutMs / 2
        )
    }

    // ── End-to-end: an actual fixed tool entry point, with the real 30s production budget ─────────

    @Test
    fun `get_current_editor_root_node reports MODAL_BLOCKED end-to-end when a modal dialog blocks the EDT`() {
        // Intentionally slow (~30s): unlike the tests above, this exercises the real production
        // entry point with its real, unmodified MODEL_OPERATION_TIMEOUT_MS budget, proving the fix
        // is wired correctly at the actual tool boundary rather than only in the shared helper.
        val toolset = JetBrainsMPSRootNodeMcpToolset()
        val entity = enterModal()
        try {
            val response = runTool(toolset) { it.mps_mcp_get_current_editor_root_node() }
            val obj = JsonParser.parseString(response).asJsonObject
            assertFalse("expected an error envelope while modal-blocked: $response", obj.get("ok").asBoolean)
            assertEquals("MODAL_BLOCKED", obj.get("code").asString)
        } finally {
            leaveModal(entity)
        }
    }

    private fun assertThrowsModalBlocked(block: () -> Unit): AbstractOps.McpModalBlockedException {
        try {
            block()
        } catch (e: AbstractOps.McpModalBlockedException) {
            return e
        }
        throw AssertionError("expected an McpModalBlockedException to be thrown")
    }

    private companion object {
        /** Well above the slowest test (the ~30s end-to-end one). */
        const val TEST_TIMEOUT_MS = 120_000L
    }
}

/**
 * Prints a full thread dump once a test has run for [timeoutMs], then fails it shortly after.
 * The dump is taken before the [Timeout] interrupts the test thread, so it shows the hung state.
 */
class DumpThreadsAndFailOnTimeout(private val timeoutMs: Long) : TestRule {
    override fun apply(base: Statement, description: Description): Statement {
        val withThreadDump = object : Statement() {
            override fun evaluate() {
                val watchdog = Timer("thread dump watchdog for ${description.methodName}", true)
                watchdog.schedule(timerTask {
                    System.err.println(
                        "${description.displayName} is still running after ${timeoutMs}ms, thread dump:\n" +
                            ThreadDumper.dumpThreadsToString()
                    )
                }, timeoutMs)
                try {
                    base.evaluate()
                } finally {
                    watchdog.cancel()
                }
            }
        }
        return Timeout.millis(timeoutMs + DUMP_GRACE_MS).apply(withThreadDump, description)
    }

    private companion object {
        /** Time for the watchdog to print the dump before the hung test thread is interrupted. */
        const val DUMP_GRACE_MS = 5_000L
    }
}

/**
 * Exposes the protected [AbstractOps.withModalTimeout] / [AbstractOps.withModalTimeoutOnEdt] for
 * direct testing. Lives in the same package as the toolsets so the protected members are visible
 * (same pattern as `ScopeProbe` in `JetBrainsMPSRootNodeMcpToolsetIntegrationTest.kt`).
 */
private class ModalTimeoutProbe : AbstractOps() {
    suspend fun <T> callWithModalTimeout(timeoutMs: Long, block: suspend () -> T): T =
        withModalTimeout(timeoutMs, block)

    suspend fun <T> callWithModalTimeoutOnEdt(timeoutMs: Long, block: suspend () -> T): T =
        withModalTimeoutOnEdt(timeoutMs, block)
}
