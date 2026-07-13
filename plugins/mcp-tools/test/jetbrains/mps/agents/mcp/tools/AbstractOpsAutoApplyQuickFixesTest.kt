package jetbrains.mps.agents.mcp.tools

import jetbrains.mps.errors.MessageStatus
import jetbrains.mps.errors.item.EditorQuickFix
import jetbrains.mps.errors.item.FlavouredItem
import jetbrains.mps.errors.item.IssueKindReportItem
import jetbrains.mps.errors.item.NodeReportItem
import jetbrains.mps.errors.item.QuickFixBase
import jetbrains.mps.errors.item.QuickFixReportItem
import org.jetbrains.mps.openapi.model.SModelReference
import org.jetbrains.mps.openapi.model.SNode
import org.jetbrains.mps.openapi.model.SNodeId
import org.jetbrains.mps.openapi.model.SNodeReference
import org.jetbrains.mps.openapi.module.SRepository
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test
import java.lang.reflect.Proxy

/**
 * Unit tests for [AbstractOps.autoApplyQuickFixes] — the pass loop behind
 * `mps_mcp_check_root_node_problems(autoApplyQuickFixes=true)`. The bundled integration fixture's
 * only quick-fix is not auto-applicable, so the execution path (apply, retry, termination, throw
 * containment) is covered here with stub [QuickFixBase] implementations instead.
 */
class AbstractOpsAutoApplyQuickFixesTest {

    /** `(applied, failed)` — unwrapped because [AbstractOps.AutoApplyResult] is protected. */
    private val ops = object : AbstractOps() {
        fun autoApplyForTest(problems: Collection<NodeReportItem>, repo: SRepository): Pair<List<String>, List<String>> {
            val result = autoApplyQuickFixes(problems, repo)
            return result.applied to result.failed
        }
    }

    /** The helper only threads the repository through to the fixes; it must never call into it. */
    private val repo = Proxy.newProxyInstance(
        javaClass.classLoader,
        arrayOf(SRepository::class.java),
    ) { _, method, _ ->
        when (method.name) {
            "toString" -> "StubRepository"
            "hashCode" -> 0
            "equals" -> false
            else -> throw UnsupportedOperationException("SRepository.${method.name} must not be called by autoApplyQuickFixes")
        }
    } as SRepository

    /** The liveness guard only null-checks the resolved node; it must never dereference it. */
    private val liveNode = Proxy.newProxyInstance(
        javaClass.classLoader,
        arrayOf(SNode::class.java),
    ) { _, method, _ ->
        when (method.name) {
            "toString" -> "StubNode"
            "hashCode" -> 0
            "equals" -> false
            else -> throw UnsupportedOperationException("SNode.${method.name} must not be called by autoApplyQuickFixes")
        }
    } as SNode

    private class StubNodeRef(private val resolvesTo: SNode?) : SNodeReference {
        override fun resolve(repository: SRepository?): SNode? = resolvesTo
        override fun getModelReference(): SModelReference? = null
        override fun getNodeId(): SNodeId? = null
    }

    private class StubFix(
        private val description: String,
        private val autoApplicable: Boolean = true,
        private val aliveWhen: () -> Boolean = { true },
        private val executeAction: () -> Unit = {},
    ) : EditorQuickFix {
        var executeCount = 0
        override fun isExecutedImmediately(): Boolean = autoApplicable
        override fun isAlive(repository: SRepository): Boolean = aliveWhen()
        override fun execute(repository: SRepository) {
            executeCount++
            executeAction()
        }
        override fun getDescription(repository: SRepository): String = description
        override fun getIdFlavours(): Set<FlavouredItem.ReportItemFlavour<*, *>> = emptySet()
    }

    private inner class StubItem(
        private val fixes: List<QuickFixBase>,
        private val nodeRef: SNodeReference = StubNodeRef(liveNode),
    ) : NodeReportItem, QuickFixReportItem {
        override fun getNode(): SNodeReference = nodeRef
        override fun getMessage(): String = "stub problem"
        override fun getSeverity(): MessageStatus = MessageStatus.ERROR
        override fun getIssueKind(): IssueKindReportItem.ItemKind? = null
        override fun getQuickFix(): Collection<QuickFixBase> = fixes
        override fun getIdFlavours(): Set<FlavouredItem.ReportItemFlavour<*, *>> = emptySet()
    }

    @Test
    fun `applies the single auto-applicable fix and reports its description`() {
        val fix = StubFix("generate ids")
        val (applied, failed) = ops.autoApplyForTest(listOf(StubItem(listOf(fix))), repo)

        assertEquals(listOf("generate ids"), applied)
        assertTrue("no failures expected: $failed", failed.isEmpty())
        assertEquals(1, fix.executeCount)
    }

    @Test
    fun `non-auto-applicable fixes are not executed`() {
        val fix = StubFix("manual fix", autoApplicable = false)
        val (applied, failed) = ops.autoApplyForTest(listOf(StubItem(listOf(fix))), repo)

        assertTrue(applied.isEmpty())
        assertTrue(failed.isEmpty())
        assertEquals(0, fix.executeCount)
    }

    @Test
    fun `an item with more than one auto-applicable fix is skipped, not thrown on`() {
        // FLAVOUR_QUICKFIX.getAutoApplicable throws IllegalStateException here; the helper must
        // treat the item as not auto-fixable and still process the other items.
        val first = StubFix("fix one")
        val second = StubFix("fix two")
        val healthy = StubFix("healthy fix")
        val (applied, _) = ops.autoApplyForTest(
            listOf(StubItem(listOf(first, second)), StubItem(listOf(healthy))),
            repo,
        )

        assertEquals(listOf("healthy fix"), applied)
        assertEquals(0, first.executeCount)
        assertEquals(0, second.executeCount)
    }

    @Test
    fun `a fix not yet alive is retried on a later pass once another fix made progress`() {
        // `dependent` only becomes alive after `enabler` has executed — the reason the loop runs
        // in passes at all (one fix may create the node another fix needs).
        val enabler = StubFix("enabler")
        val dependent = StubFix("dependent", aliveWhen = { enabler.executeCount > 0 })
        // `dependent` first, so pass 1 skips it and only pass 2 can pick it up.
        val (applied, _) = ops.autoApplyForTest(
            listOf(StubItem(listOf(dependent)), StubItem(listOf(enabler))),
            repo,
        )

        assertEquals(listOf("enabler", "dependent"), applied)
        assertEquals(1, dependent.executeCount)
    }

    @Test
    fun `terminates when a fix never becomes alive`() {
        val neverAlive = StubFix("never alive", aliveWhen = { false })
        val (applied, failed) = ops.autoApplyForTest(listOf(StubItem(listOf(neverAlive))), repo)

        assertTrue(applied.isEmpty())
        assertTrue(failed.isEmpty())
        assertEquals(0, neverAlive.executeCount)
    }

    @Test
    fun `a throwing fix is recorded as failed, never retried, and does not abort the others`() {
        val throwing = StubFix("bad fix", executeAction = { throw IllegalStateException("boom") })
        val healthy = StubFix("good fix")
        val (applied, failed) = ops.autoApplyForTest(
            listOf(StubItem(listOf(throwing)), StubItem(listOf(healthy))),
            repo,
        )

        assertEquals(listOf("good fix"), applied)
        assertEquals(listOf("bad fix: boom"), failed)
        assertEquals("a throwing fix must not be retried", 1, throwing.executeCount)
    }

    @Test
    fun `a fix whose problem node no longer resolves is not executed`() {
        val fix = StubFix("orphaned fix")
        val (applied, failed) = ops.autoApplyForTest(
            listOf(StubItem(listOf(fix), nodeRef = StubNodeRef(null))),
            repo,
        )

        assertTrue(applied.isEmpty())
        assertTrue(failed.isEmpty())
        assertEquals(0, fix.executeCount)
    }
}
