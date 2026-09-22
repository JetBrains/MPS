package jetbrains.mps.agents.mcp.tools.unit

import jetbrains.mps.agents.mcp.tools.Python3

import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test
import java.nio.file.Files

/**
 * Staleness gate for the ready-made `.mps/migration.xml` printed in the `mps-project-management`
 * skill.
 *
 * `references/create-empty-project.md` hands an agent a literal `migration.xml` to paste for this
 * MPS release, so that creating an empty project needs no derivation at all. That file is release
 * specific: it carries the platform baseline of this build plus an `executed` entry for every
 * project migration whose `baselineVersion` is `>=` it. Branch to the next platform version, or add
 * a `BaseProjectMigration` to `plugins/mps-project-migrations`, and the documented block silently
 * becomes wrong — an agent that pastes it gets the modal Migration Assistant on first open, which
 * blocks every `mps_mcp_*` call until a human dismisses it.
 *
 * Rather than re-implement the derivation here, this runs the generator the skill itself ships and
 * compares. A failure means one of two things, both shown in the message: the documented block is
 * stale (paste what the generator printed), or the generator broke.
 *
 * Needs `python3` ([Python3]: an assumption locally, a failure on CI) and the working tree — the
 * block is compared against the `plugins/mps-project-migrations` sources next to it, never against
 * a packaged jar, so a packaged run skips.
 */
class MigrationXmlExampleTest {

    @Test
    fun `the documented migration xml matches what this MPS needs`() {
        Python3.require()
        val root = SkillCatalogCheckout.root()
        val skill = SkillCatalogCheckout.blueprint().resolve(SKILL)
        val script = skill.resolve(SCRIPT)
        assertTrue("the skill must ship the generator: $script", Files.isRegularFile(script))

        // Without --quiet the derivation table lands on stderr; its first line names the
        // baseline this build needs, which is the most useful context for a failure.
        val result = SkillCatalogCheckout.runPython(script.toString(), root.toString())
        assertEquals(
            "${SCRIPT} must derive this checkout's migration.xml, stderr: ${result.stderr}",
            0, result.exitCode
        )

        val document = skill.resolve(DOCUMENT)
        val documented = markedXmlBlock(Files.readString(document))
        assertEquals(
            "the migration.xml in $DOCUMENT no longer matches what $SCRIPT derives for this build " +
                    "(${result.stderr.lineSequence().firstOrNull().orEmpty()}). Either the platform " +
                    "baseline moved or a project migration was added; replace the block after the " +
                    "'$MARKER' marker with:\n\n${result.stdout}",
            result.stdout, documented
        )
    }

    /** The fenced `xml` block that follows [MARKER] — the one an agent is told to paste. */
    private fun markedXmlBlock(text: String): String {
        val marker = text.indexOf(MARKER)
        assertTrue(
            "$DOCUMENT must mark the generated block with '$MARKER' so this test can find it",
            marker >= 0
        )
        val open = text.indexOf(FENCE, marker)
        assertTrue("no ```xml block after the '$MARKER' marker in $DOCUMENT", open >= 0)
        val body = open + FENCE.length
        val close = text.indexOf("```", body)
        assertTrue("unterminated ```xml block after the '$MARKER' marker in $DOCUMENT", close >= 0)
        return text.substring(body, close)
    }

    private companion object {
        private const val SKILL = "mps-project-management"
        private const val SCRIPT = "scripts/new_project_migration_xml.py"
        private const val DOCUMENT = "references/create-empty-project.md"
        private const val MARKER = "<!-- new-project-migration-xml:"
        private const val FENCE = "```xml\n"
    }
}
