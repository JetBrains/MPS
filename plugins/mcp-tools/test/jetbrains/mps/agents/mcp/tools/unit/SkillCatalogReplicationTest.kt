package jetbrains.mps.agents.mcp.tools.unit

import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test
import java.nio.file.Files
import java.nio.file.Path

/**
 * Propagation gate for the skill catalogs in this checkout.
 *
 * `plugins/mcp-tools/resources/…/skills` is the source of truth for every `mps-*` skill; agents
 * working in this repository read the hand-made copies under `.agents/skills` and `.claude/skills`
 * instead (this checkout must not run `mps_mcp_initialize_project_for_agents`, which is what
 * installs them elsewhere — see its CLAUDE.md). Copying is manual, so a skill edit that reaches
 * only one of the three trees leaves agents following stale instructions with nothing to say so.
 *
 * Two invariants, both byte-exact:
 *
 *  - every blueprint skill is replicated verbatim into `.agents/skills` and `.claude/skills`;
 *  - the remaining skills, which live only in those two trees, are verbatim copies of each other.
 *
 * Skipped when the working tree is unavailable; there is nothing to propagate in a packaged run.
 */
class SkillCatalogReplicationTest {

    @Test
    fun `every blueprint skill is replicated into the agent catalogs`() {
        val root = SkillCatalogCheckout.root()
        val blueprint = SkillCatalogCheckout.blueprint()
        val blueprintSkills = SkillCatalogCheckout.skillNames(blueprint)
        assertTrue("the blueprint catalog must not be empty: $blueprint", blueprintSkills.isNotEmpty())

        for ((label, catalog) in SkillCatalogCheckout.copies(root)) {
            val copied = SkillCatalogCheckout.skillNames(catalog)
            val missing = blueprintSkills - copied
            assertTrue(
                "$label is missing ${missing.size} skill(s) from ${SkillCatalogCheckout.BLUEPRINT}: " +
                        "$missing — propagate the blueprint by hand",
                missing.isEmpty()
            )
            for (skill in blueprintSkills) {
                assertIdentical(
                    "${SkillCatalogCheckout.BLUEPRINT}/$skill", blueprint.resolve(skill),
                    "$label/$skill", catalog.resolve(skill),
                )
            }
        }
    }

    @Test
    fun `skills that live only in the agent catalogs are copies of each other`() {
        val root = SkillCatalogCheckout.root()
        val blueprintSkills = SkillCatalogCheckout.skillNames(SkillCatalogCheckout.blueprint())
        val agents = root.resolve(SkillCatalogCheckout.AGENTS_SKILLS)
        val claude = root.resolve(SkillCatalogCheckout.CLAUDE_SKILLS)

        val localToAgents = SkillCatalogCheckout.skillNames(agents) - blueprintSkills
        val localToClaude = SkillCatalogCheckout.skillNames(claude) - blueprintSkills
        assertEquals(
            "the checkout-local skills must exist in both agent catalogs",
            localToAgents, localToClaude
        )
        for (skill in localToAgents) {
            assertIdentical(
                "${SkillCatalogCheckout.AGENTS_SKILLS}/$skill", agents.resolve(skill),
                "${SkillCatalogCheckout.CLAUDE_SKILLS}/$skill", claude.resolve(skill),
            )
        }
    }

    /** Fails naming the first file that differs, is missing, or is extra. */
    private fun assertIdentical(sourceLabel: String, source: Path, copyLabel: String, copy: Path) {
        val sourceFiles = SkillCatalogCheckout.filesOf(source)
        val copyFiles = SkillCatalogCheckout.filesOf(copy)

        val missing = sourceFiles.keys - copyFiles.keys
        assertTrue("$copyLabel is missing ${missing.size} file(s) of $sourceLabel: $missing", missing.isEmpty())
        val extra = copyFiles.keys - sourceFiles.keys
        assertTrue("$copyLabel has ${extra.size} file(s) $sourceLabel does not: $extra", extra.isEmpty())

        for ((relative, sourceFile) in sourceFiles) {
            val copyFile = copyFiles.getValue(relative)
            assertTrue(
                "$copyLabel/$relative differs from $sourceLabel/$relative — copy the source of " +
                        "truth over it rather than editing the copy",
                Files.readAllBytes(sourceFile).contentEquals(Files.readAllBytes(copyFile))
            )
        }
    }
}
