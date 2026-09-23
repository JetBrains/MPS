package jetbrains.mps.agents.mcp.tools.integration

import jetbrains.mps.agents.mcp.tools.*
import jetbrains.mps.agents.mcp.tools.unit.*

import org.junit.Assert.assertEquals
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertTrue
import org.junit.Test
import java.nio.file.Files
import java.nio.file.Path
import java.nio.file.Paths

/**
 * Integration test for [JetBrainsMPSInitMcpToolset] that exercises the end-to-end
 * `targetDirectory` derivation through a real MCP call context. The plain-JUnit
 * [JetBrainsMPSInitMcpToolsetTest] covers the pure VCS-root walk-up and the no-MCP-context
 * error; this one covers the glue the unit tests cannot reach: with `targetDirectory` omitted,
 * the tool resolves the open MPS project via `projectOrNull`, reads its `basePath`, and installs
 * at the derived root.
 *
 * Safety: a `.git` marker is planted at the open project's own base directory so derivation stops
 * there. That makes the result deterministic AND confines the install to this test's temporary
 * project directory (which the harness deletes on teardown) — the walk-up can never escape into the
 * surrounding repository checkout, whatever filesystem the empty test project happens to live on.
 */
class JetBrainsMPSInitMcpToolsetIntegrationTest : McpIntegrationTestBase() {

    @Test
    fun `derives targetDirectory from the open project's enclosing VCS root`() {
        val basePath = myProject.project.basePath
            ?: error("test project has no basePath; cannot exercise derivation")
        // The tool resolves the base the same way (Paths.get(basePath).toAbsolutePath().normalize()),
        // so plant the marker and assert against that exact form.
        val base = Paths.get(basePath).toAbsolutePath().normalize()

        val gitMarker = base.resolve(".git")
        val plantedGit = !Files.exists(gitMarker)
        if (plantedGit) Files.createDirectories(gitMarker)
        try {
            val response = runTool(JetBrainsMPSInitMcpToolset()) {
                it.mps_mcp_initialize_project_for_agents(null)
            }
            val data = expectOk(response)

            assertEquals(
                "derived targetDirectory must be the open project's enclosing VCS root",
                base.toString(),
                data.get("targetDirectory").asString
            )
            assertTrue("must report installed skills", data.get("installedSkillCount").asInt > 0)
            assertTrue(
                "skills must be installed under the derived root (.agents)",
                Files.isDirectory(base.resolve(".agents").resolve("skills").resolve(SAMPLE_SKILL))
            )
            assertTrue(
                "skills must be installed under the derived root (.claude)",
                Files.isDirectory(base.resolve(".claude").resolve("skills").resolve(SAMPLE_SKILL))
            )
            assertTrue("AGENTS.md must be created under the derived root", Files.isRegularFile(base.resolve("AGENTS.md")))
            assertTrue("CLAUDE.md must be created under the derived root", Files.isRegularFile(base.resolve("CLAUDE.md")))
            val live = MpsRuntimeVersion.fromApplicationOrNull()
            assertNotNull("integration run must see ApplicationInfo", live)
            val expectedStamp = live!!.toStampText()
            for (catalog in listOf(".agents", ".claude")) {
                val stamp = base.resolve(catalog).resolve("skills").resolve(MpsRuntimeVersion.STAMP_FILE_NAME)
                assertEquals(expectedStamp, Files.readString(stamp))
            }
            assertEquals(live.version, data.get("mpsVersion").asString)
            assertEquals(live.build, data.get("mpsBuild").asString)
            assertEquals(live.eap, data.get("mpsEap").asBoolean)
        } finally {
            // Tidy the artifacts we created. The harness also deletes the temp project directory on
            // teardown, but removing them here keeps the project's own close/save unaffected and is
            // harmless if teardown is suppressed (mps.tests...save.test.project).
            deleteRecursively(base.resolve(".agents"))
            deleteRecursively(base.resolve(".claude"))
            Files.deleteIfExists(base.resolve("AGENTS.md"))
            Files.deleteIfExists(base.resolve("CLAUDE.md"))
            if (plantedGit) deleteRecursively(gitMarker)
        }
    }

    private fun deleteRecursively(path: Path) {
        if (!Files.exists(path)) return
        Files.walk(path).use { stream ->
            stream.sorted(Comparator.reverseOrder()).forEach { Files.deleteIfExists(it) }
        }
    }

    private companion object {
        // A skill that is always part of the bundled catalog; used only to confirm the install
        // landed at the derived root. Swap if it is ever renamed/dropped.
        private const val SAMPLE_SKILL = "mps-mcp-workflow"
    }
}
