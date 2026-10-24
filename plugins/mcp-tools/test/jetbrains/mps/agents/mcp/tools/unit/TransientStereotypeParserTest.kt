package jetbrains.mps.agents.mcp.tools.unit

import jetbrains.mps.agents.mcp.tools.common.*

import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Test

/**
 * The transient-model stereotype parser behind `mps_mcp_generation` TRANSIENT_MODELS, on the names `GenerationSession`
 * gives: `0` for the input clone, `<majorStep + 1>_<minor>` for step models, the same shape inside a fork branch (told
 * apart only by the branch serial), and a checkpoint's persistence value in the shared `checkpoints` module.
 */
class TransientStereotypeParserTest {

    private fun parse(stereotype: String, branch: Int = 0, checkpoints: Boolean = false) =
        TransientModelsOps.parseStereotype(stereotype, branch, checkpoints)

    @Test
    fun `0 is the initial clone`() {
        assertEquals(TransientStereotype(TransientModelKind.INITIAL_CLONE, minor = 0), parse("0"))
    }

    @Test
    fun `a main-branch step model carries the PLAN prefix and the minor`() {
        assertEquals(TransientStereotype(TransientModelKind.STEP, "1_", 0), parse("1_0"))
        assertEquals("minor runs on through the branch", TransientStereotype(TransientModelKind.STEP, "3_", 7), parse("3_7"))
        assertEquals(TransientStereotype(TransientModelKind.STEP, "12_", 345), parse("12_345"))
    }

    @Test
    fun `a fork branch model is told apart by its branch serial, not its name`() {
        // The fork step at plan index 2 (majorStep 1) writes its input copy as 2_<minor + 100>, and the branch's first step
        // reuses the 2_ prefix that a main-branch step at the same majorStep would write.
        assertEquals(TransientStereotype(TransientModelKind.FORK_BRANCH, "2_", 103), parse("2_103", branch = 1))
        assertEquals(TransientStereotype(TransientModelKind.STEP, "2_", 103), parse("2_103", branch = 0))
        assertEquals("a nested branch", TransientStereotype(TransientModelKind.FORK_BRANCH, "3_", 205), parse("3_205", branch = 2))
    }

    @Test
    fun `models of the checkpoints module are checkpoints whatever their stereotype`() {
        assertEquals(TransientStereotype(TransientModelKind.CHECKPOINT), parse("1_0", checkpoints = true))
        assertEquals(TransientStereotype(TransientModelKind.CHECKPOINT), parse("MainPlan-cp1", checkpoints = true))
    }

    @Test
    fun `any other stereotype is OTHER`() {
        for (stereotype in listOf("", "tests", "1_", "_1", "1_2_3", "a_1", "1-2", " 1_2")) {
            val parsed = parse(stereotype)
            assertEquals(stereotype, TransientModelKind.OTHER, parsed.kind)
            assertNull(parsed.stereotypePrefix)
            assertNull(parsed.minor)
        }
    }

    @Test
    fun `the original module name drops the transient suffix`() {
        assertEquals("my.lang", TransientModelsOps.originalModuleName("my.lang@transient3"))
        assertEquals("my.lang#1234", TransientModelsOps.originalModuleName("my.lang#1234@transient12"))
        assertNull(TransientModelsOps.originalModuleName("checkpoints"))
        assertNull(TransientModelsOps.originalModuleName("my.lang@transient"))
        assertNull(TransientModelsOps.originalModuleName("my.lang@transient3.x"))
    }
}
