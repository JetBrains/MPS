package jetbrains.mps.agents.mcp.tools.unit

import jetbrains.mps.agents.mcp.tools.integration.McpTestSelection
import jetbrains.mps.agents.mcp.tools.integration.McpToolsIntegrationTestSuite
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertThrows
import org.junit.Assert.assertTrue
import org.junit.Test
import org.junit.runner.Description
import org.junit.runners.Suite

/**
 * The `MCP_TESTS` selector against a synthetic suite tree: `Root` nests `AlphaSuite` (LeafA, LeafB)
 * and `BetaSuite` (LeafC). The descriptions mirror what JUnit builds for that tree, so no runner and
 * no environment are involved.
 */
class McpTestSelectionTest {

    @Suppress("unused")
    class LeafA {
        fun `first case with spaces`() {}
        fun second() {}
    }

    @Suppress("unused")
    class LeafB {
        fun only() {}
    }

    @Suppress("unused")
    class LeafC {
        fun third() {}
    }

    @Suite.SuiteClasses(LeafA::class, LeafB::class)
    class AlphaSuite

    @Suite.SuiteClasses(LeafC::class)
    class BetaSuite

    @Suite.SuiteClasses(AlphaSuite::class, BetaSuite::class)
    class Root

    private val aFirst = Description.createTestDescription(LeafA::class.java, "first case with spaces")
    private val aSecond = Description.createTestDescription(LeafA::class.java, "second")
    private val bOnly = Description.createTestDescription(LeafB::class.java, "only")
    private val cThird = Description.createTestDescription(LeafC::class.java, "third")
    private val leafA = suite(LeafA::class.java, aFirst, aSecond)
    private val alpha = suite(AlphaSuite::class.java, leafA, suite(LeafB::class.java, bOnly))
    private val beta = suite(BetaSuite::class.java, suite(LeafC::class.java, cThird))
    private val root = suite(Root::class.java, alpha, beta)

    @Test
    fun `a sub-suite selects all of its leaves and nothing else`() {
        val selection = McpTestSelection.parse("AlphaSuite", Root::class.java)
        assertTrue(selection.shouldRun(aFirst))
        assertTrue(selection.shouldRun(aSecond))
        assertTrue(selection.shouldRun(bOnly))
        assertFalse(selection.shouldRun(cThird))
        assertTrue(selection.shouldRun(alpha))
        assertFalse(selection.shouldRun(beta))
        assertTrue(selection.shouldRun(root))
    }

    @Test
    fun `a class name selects that class only`() {
        val selection = McpTestSelection.parse("LeafB", Root::class.java)
        assertTrue(selection.shouldRun(bOnly))
        assertFalse(selection.shouldRun(aFirst))
        assertFalse(selection.shouldRun(leafA))
        assertFalse(selection.shouldRun(cThird))
    }

    @Test
    fun `a method entry matches the verbatim backtick name with spaces`() {
        val selection = McpTestSelection.parse(" LeafA#first case with spaces ,  LeafC ", Root::class.java)
        assertTrue(selection.shouldRun(aFirst))
        assertFalse(selection.shouldRun(aSecond))
        assertTrue(selection.shouldRun(leafA))
        assertTrue(selection.shouldRun(alpha))
        assertTrue(selection.shouldRun(cThird))
        assertFalse(selection.shouldRun(bOnly))
        assertEquals("LeafA#first case with spaces,LeafC", selection.describe())
    }

    @Test
    fun `a whole-class entry wins over a method entry for the same class`() {
        val selection = McpTestSelection.parse("LeafA#second,LeafA", Root::class.java)
        assertTrue(selection.shouldRun(aFirst))
        assertTrue(selection.shouldRun(aSecond))
    }

    @Test
    fun `an unknown name is rejected with the valid sub-suites`() {
        val e = assertThrows(IllegalArgumentException::class.java) {
            McpTestSelection.parse("LeafB,NoSuchSuite", Root::class.java)
        }
        assertTrue(e.message, "NoSuchSuite" in e.message!!)
        assertTrue(e.message, "valid sub-suites: AlphaSuite, BetaSuite" in e.message!!)
    }

    @Test
    fun `an unknown method and an empty selection are rejected`() {
        val e = assertThrows(IllegalArgumentException::class.java) {
            McpTestSelection.parse("LeafA#third", Root::class.java)
        }
        assertTrue(e.message, "LeafA has no public method named 'third'" in e.message!!)
        assertThrows(IllegalArgumentException::class.java) { McpTestSelection.parse(" , ", Root::class.java) }
    }

    @Test
    fun `a description without a test class passes when a descendant passes`() {
        val anonymous = Description.createSuiteDescription("no class here")
        anonymous.addChild(Description.createSuiteDescription("nor here").also { it.addChild(cThird) })
        assertTrue(McpTestSelection.parse("BetaSuite", Root::class.java).shouldRun(anonymous))
        assertFalse(McpTestSelection.parse("AlphaSuite", Root::class.java).shouldRun(anonymous))
    }

    @Test
    fun `a selection outside the described tree matches nothing`() {
        val selection = McpTestSelection.parse("LeafC", Root::class.java)
        assertFalse(selection.shouldRun(alpha))
        assertFalse(selection.shouldRun(leafA))
    }

    @Test
    fun `the umbrella exposes its five sub-suites in run order`() {
        assertEquals(
            listOf(
                "McpLanguageToolsTestSuite", "McpJavaToolsTestSuite", "McpWorkspaceToolsTestSuite",
                "McpNodeToolsTestSuite", "McpContractAndSkillsTestSuite",
            ),
            McpTestSelection.subSuiteNames(McpToolsIntegrationTestSuite::class.java)
        )
    }

    private fun suite(c: Class<*>, vararg children: Description): Description =
        Description.createSuiteDescription(c).also { d -> children.forEach(d::addChild) }
}
