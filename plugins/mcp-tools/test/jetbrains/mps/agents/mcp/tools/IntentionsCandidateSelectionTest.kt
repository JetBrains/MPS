package jetbrains.mps.agents.mcp.tools

import jetbrains.mps.agents.mcp.tools.JetBrainsMPSIntentionsMcpToolset.CandidateChoice
import org.junit.Assert.assertEquals
import org.junit.Assert.assertSame
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * Unit tests for [JetBrainsMPSIntentionsMcpToolset.selectCandidate] — the disambiguation step of
 * `mps_mcp_apply_intention`. The plan's contract: several *identical* candidates (same key) →
 * apply the first with a warning; several *differing* candidates → an Ambiguous error listing
 * them. A deterministic bundled fixture with differing same-id candidates on one node does not
 * exist, so these branches are covered here instead of in the integration suite.
 */
class IntentionsCandidateSelectionTest {

    private val toolset = JetBrainsMPSIntentionsMcpToolset()

    private fun choose(candidates: List<String>): CandidateChoice<String> =
        toolset.selectCandidate(candidates) { it }

    @Test
    fun `no candidates yields Empty`() {
        assertTrue(choose(emptyList()) is CandidateChoice.Empty)
    }

    @Test
    fun `a single candidate yields One with that candidate`() {
        val choice = choose(listOf("only"))
        assertTrue("expected One, got $choice", choice is CandidateChoice.One)
        assertEquals("only", (choice as CandidateChoice.One).value)
    }

    @Test
    fun `identical candidates yield FirstOfIdentical with the first instance and the count`() {
        val first = "same"
        // Distinct instances with equal keys — a parameterized intention whose rows render alike.
        val candidates = listOf(first, String(charArrayOf('s', 'a', 'm', 'e')), "same")
        val choice = choose(candidates)
        assertTrue("expected FirstOfIdentical, got $choice", choice is CandidateChoice.FirstOfIdentical)
        choice as CandidateChoice.FirstOfIdentical
        assertSame("must pick the FIRST matching instance", first, choice.value)
        assertEquals(3, choice.count)
    }

    @Test
    fun `differing candidates yield Differing with all keys for the error message`() {
        val choice = choose(listOf("make abstract", "make final"))
        assertTrue("expected Differing, got $choice", choice is CandidateChoice.Differing)
        assertEquals(listOf("make abstract", "make final"), (choice as CandidateChoice.Differing).labels)
    }

    @Test
    fun `one differing key among identical ones still yields Differing`() {
        val choice = choose(listOf("same", "same", "other"))
        assertTrue("expected Differing, got $choice", choice is CandidateChoice.Differing)
    }
}
