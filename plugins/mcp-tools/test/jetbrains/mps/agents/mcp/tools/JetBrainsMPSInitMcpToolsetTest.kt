package jetbrains.mps.agents.mcp.tools

import com.google.gson.JsonObject
import com.google.gson.JsonParser
import kotlinx.coroutines.runBlocking
import org.junit.After
import org.junit.Assert.assertFalse
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Assert.fail
import org.junit.Before
import org.junit.Test
import java.net.URI
import java.net.URL
import java.net.URLConnection
import java.net.URLStreamHandler
import java.nio.file.Files
import java.nio.file.Path
import java.lang.reflect.InvocationTargetException
import java.util.jar.JarEntry
import java.util.jar.JarOutputStream

/**
 * Plain JUnit tests for [JetBrainsMPSInitMcpToolset]. The skill catalog is built from
 * classpath resources and does not need an MPS project, so these tests skip the
 * heavyweight [McpIntegrationTestBase] setup.
 *
 * Note on deriving the target directory: when `targetDirectory` is omitted the tool reads the
 * open MPS project from the MCP call context. These tests run outside an MCP call, so that path
 * resolves to "no project" — exercised by [omitting targetDirectory outside an MCP call returns a
 * helpful error]. The pure VCS-root walk-up is covered directly via [deriveAgentConfigRootForTest].
 */
class JetBrainsMPSInitMcpToolsetTest {

    private val toolset = JetBrainsMPSInitMcpToolset()


    // ---- mps_mcp_initialize_project_for_agents ----

    private lateinit var tmpProjectRoot: Path

    @Before
    fun setUpTmpProject() {
        tmpProjectRoot = Files.createTempDirectory("mps-mcp-init-test")
    }

    @After
    fun tearDownTmpProject() {
        if (::tmpProjectRoot.isInitialized && Files.exists(tmpProjectRoot)) {
            Files.walk(tmpProjectRoot).use { stream ->
                stream.sorted(Comparator.reverseOrder()).forEach { Files.deleteIfExists(it) }
            }
        }
    }

    @Test
    fun `mps_mcp_initialize_project_for_agents copies bundled skills and returns AGENTS_md text`() {
        val response = runBlocking { toolset.mps_mcp_initialize_project_for_agents(tmpProjectRoot.toString()) }
        val data = okData(response)

        assertEquals(
            "result must echo back the resolved target directory",
            tmpProjectRoot.toAbsolutePath().normalize().toString(),
            data.get("targetDirectory").asString
        )
        assertTrue("must report a positive installed skill count", data.get("installedSkillCount").asInt > 0)
        assertTrue(
            "returned text must look like the AGENTS.md template: ${data.get("agentsFileText").asString}",
            data.get("agentsFileText").asString.contains("Agents Guide for This MPS Project")
        )

        // Sample one real bundled skill: any change to the catalog should keep at least this
        // one in place. If it ever stops shipping, swap the assertion for another concrete
        // skill rather than weakening it to "any skill exists".
        for (skillsDir in targetSkillsDirs()) {
            assertTrue("skills dir must exist after init: $skillsDir", Files.isDirectory(skillsDir))
            assertFalse("$EXCLUDED_SKILL_NAME must not be installed into $skillsDir", Files.exists(skillsDir.resolve(EXCLUDED_SKILL_NAME)))
            val copiedSkillCount = Files.list(skillsDir).use { stream ->
                stream.filter { Files.isDirectory(it) }.count()
            }
            assertEquals(
                "reported installed skill count must match copied skill folders in $skillsDir",
                data.get("installedSkillCount").asLong,
                copiedSkillCount
            )
            val sampleSkill = skillsDir.resolve(REAL_SKILL_NAME).resolve("SKILL.md")
            assertTrue("$REAL_SKILL_NAME/SKILL.md must be copied into $skillsDir", Files.isRegularFile(sampleSkill))
            val skillText = Files.readString(sampleSkill)
            assertTrue(
                "copied SKILL.md must carry its frontmatter name",
                skillText.contains("name: $REAL_SKILL_NAME")
            )
        }
    }

    @Test
    fun `mps_mcp_initialize_project_for_agents copies nested files inside a skill folder`() {
        // Exercises the recursive branch of copyDirectoryRecursively. Uses a skill that
        // actually ships subdirectories so we don't have to invent test-only fixtures.
        val response = runBlocking { toolset.mps_mcp_initialize_project_for_agents(tmpProjectRoot.toString()) }
        okData(response)

        for (skillsDir in targetSkillsDirs()) {
            val nestedFile = skillsDir
                .resolve(NESTED_SKILL_NAME)
                .resolve(NESTED_SKILL_SUBDIR)
                .resolve(NESTED_SKILL_FILE)
            assertTrue(
                "nested file '$NESTED_SKILL_SUBDIR/$NESTED_SKILL_FILE' must be copied recursively into $skillsDir",
                Files.isRegularFile(nestedFile)
            )
        }
    }

    @Test
    fun `mps_mcp_initialize_project_for_agents writes AGENTS_md and CLAUDE_md when they are absent`() {
        val response = runBlocking { toolset.mps_mcp_initialize_project_for_agents(tmpProjectRoot.toString()) }
        val data = okData(response)

        val agentsMd = tmpProjectRoot.resolve("AGENTS.md")
        val claudeMd = tmpProjectRoot.resolve("CLAUDE.md")
        assertTrue("AGENTS.md must be created when absent", Files.isRegularFile(agentsMd))
        assertTrue("CLAUDE.md must be created when absent", Files.isRegularFile(claudeMd))
        assertTrue(
            "written guide file must carry the template content",
            Files.readString(agentsMd).contains("Agents Guide for This MPS Project")
        )

        val written = stringArray(data, "guideFilesWritten")
        assertTrue("AGENTS.md must be reported as written: $written", written.any { it.endsWith("AGENTS.md") })
        assertTrue("CLAUDE.md must be reported as written: $written", written.any { it.endsWith("CLAUDE.md") })
        assertTrue(
            "no guide files should be reported as already present: ${stringArray(data, "guideFilesAlreadyPresent")}",
            stringArray(data, "guideFilesAlreadyPresent").isEmpty()
        )
    }

    @Test
    fun `mps_mcp_initialize_project_for_agents never overwrites an existing guide file`() {
        val agentsMd = tmpProjectRoot.resolve("AGENTS.md")
        Files.writeString(agentsMd, "KEEP ME — hand-authored")

        val response = runBlocking { toolset.mps_mcp_initialize_project_for_agents(tmpProjectRoot.toString()) }
        val data = okData(response)

        assertEquals(
            "an existing guide file must be left byte-for-byte intact",
            "KEEP ME — hand-authored",
            Files.readString(agentsMd)
        )
        assertTrue(
            "the absent CLAUDE.md must still be created",
            Files.isRegularFile(tmpProjectRoot.resolve("CLAUDE.md"))
        )

        val present = stringArray(data, "guideFilesAlreadyPresent")
        val written = stringArray(data, "guideFilesWritten")
        assertTrue("AGENTS.md must be reported as already present: $present", present.any { it.endsWith("AGENTS.md") })
        assertTrue("CLAUDE.md must be reported as written: $written", written.any { it.endsWith("CLAUDE.md") })
    }

    @Test
    fun `mps_mcp_initialize_project_for_agents fails when a target skill folder already exists`() {
        val skillsDir = tmpProjectRoot.resolve(".agents").resolve("skills")
        Files.createDirectories(skillsDir.resolve(REAL_SKILL_NAME))
        // Drop an unrelated existing skill folder to confirm it is left alone in the error path.
        val unrelated = skillsDir.resolve("user-owned-skill")
        Files.createDirectories(unrelated)
        Files.writeString(unrelated.resolve("SKILL.md"), "stay")

        val response = runBlocking { toolset.mps_mcp_initialize_project_for_agents(tmpProjectRoot.toString()) }
        val obj = JsonParser.parseString(response).asJsonObject
        assertFalse("expected error envelope on collision: $response", obj.get("ok").asBoolean)
        val error = obj.get("error").asString
        assertTrue("error must name the colliding skill: $error", error.contains(REAL_SKILL_NAME))

        assertTrue(
            "unrelated user-owned skill must be left intact on error",
            Files.readString(unrelated.resolve("SKILL.md")) == "stay"
        )
        assertFalse(
            "no second target directory should be created after preflight collision failure",
            Files.exists(tmpProjectRoot.resolve(".claude"))
        )
        assertFalse(
            "no guide files should be written when the install aborts on collision",
            Files.exists(tmpProjectRoot.resolve("AGENTS.md"))
        )
    }

    @Test
    fun `mps_mcp_initialize_project_for_agents fails when a claude target skill folder already exists`() {
        val skillsDir = tmpProjectRoot.resolve(".claude").resolve("skills")
        Files.createDirectories(skillsDir.resolve(REAL_SKILL_NAME))

        val response = runBlocking { toolset.mps_mcp_initialize_project_for_agents(tmpProjectRoot.toString()) }
        val obj = JsonParser.parseString(response).asJsonObject
        assertFalse("expected error envelope on collision: $response", obj.get("ok").asBoolean)
        val error = obj.get("error").asString
        assertTrue("error must name the colliding skill: $error", error.contains(REAL_SKILL_NAME))
        assertTrue("error must name the colliding target: $error", error.contains(".claude"))

        assertFalse(
            "no first target directory should be created after preflight collision failure",
            Files.exists(tmpProjectRoot.resolve(".agents"))
        )
    }

    @Test
    fun `mps_mcp_initialize_project_for_agents ignores existing excluded skill folders`() {
        for (skillsDir in targetSkillsDirs()) {
            Files.createDirectories(skillsDir.resolve(EXCLUDED_SKILL_NAME))
            Files.writeString(skillsDir.resolve(EXCLUDED_SKILL_NAME).resolve("SKILL.md"), "stay")
        }

        val response = runBlocking { toolset.mps_mcp_initialize_project_for_agents(tmpProjectRoot.toString()) }
        okData(response)

        for (skillsDir in targetSkillsDirs()) {
            assertEquals(
                "pre-existing excluded skill folder must be left untouched in $skillsDir",
                "stay",
                Files.readString(skillsDir.resolve(EXCLUDED_SKILL_NAME).resolve("SKILL.md"))
            )
            assertTrue(
                "other bundled skills must still be installed into $skillsDir",
                Files.isRegularFile(skillsDir.resolve(REAL_SKILL_NAME).resolve("SKILL.md"))
            )
        }
    }

    @Test
    fun `mps_mcp_initialize_project_for_agents rejects a non-existent target directory`() {
        val bogus = tmpProjectRoot.resolve("does-not-exist")
        val response = runBlocking { toolset.mps_mcp_initialize_project_for_agents(bogus.toString()) }
        val obj = JsonParser.parseString(response).asJsonObject
        assertFalse("expected error envelope: $response", obj.get("ok").asBoolean)
        assertTrue(
            "error must explain that the target dir is missing: ${obj.get("error").asString}",
            obj.get("error").asString.contains("Target directory")
        )
    }

    @Test
    fun `mps_mcp_initialize_project_for_agents rejects a targetDirectory that points at a file`() {
        // The implementation gates on Files.isDirectory; passing a regular file must take
        // the same not-a-directory error path as a missing path, so users get a clear
        // message instead of an obscure IOException when copying starts.
        val regularFile = Files.createFile(tmpProjectRoot.resolve("not-a-project.txt"))

        val response = runBlocking { toolset.mps_mcp_initialize_project_for_agents(regularFile.toString()) }
        val obj = JsonParser.parseString(response).asJsonObject
        assertFalse("expected error envelope when targetDirectory is a file: $response", obj.get("ok").asBoolean)
        assertTrue(
            "error must explain that the path is not a directory: ${obj.get("error").asString}",
            obj.get("error").asString.contains("Target directory")
        )
    }

    @Test
    fun `mps_mcp_initialize_project_for_agents rejects a syntactically invalid target path`() {
        // NUL is rejected by Paths.get on every supported platform, so it's the most
        // portable way to hit the InvalidPathException catch arm. If the JVM ever starts
        // accepting NUL in paths, swap for another reliably-illegal sequence.
        val invalid = "bogus\u0000path"

        val response = runBlocking { toolset.mps_mcp_initialize_project_for_agents(invalid) }
        val obj = JsonParser.parseString(response).asJsonObject
        assertFalse("expected error envelope on invalid path: $response", obj.get("ok").asBoolean)
        assertTrue(
            "error must mention the invalid path: ${obj.get("error").asString}",
            obj.get("error").asString.contains("Invalid target directory")
        )
    }

    @Test
    fun `mps_mcp_initialize_project_for_agents rejects a relative target directory`() {
        // A relative path would resolve against the MPS process working directory, not the agent's,
        // so it must be rejected rather than silently installing somewhere unexpected.
        val response = runBlocking { toolset.mps_mcp_initialize_project_for_agents("relative/dir") }
        val obj = JsonParser.parseString(response).asJsonObject
        assertFalse("expected error envelope for a relative path: $response", obj.get("ok").asBoolean)
        assertTrue(
            "error must explain the absolute-path requirement: ${obj.get("error").asString}",
            obj.get("error").asString.contains("absolute path")
        )
    }

    @Test
    fun `omitting targetDirectory outside an MCP call returns a helpful error`() {
        // With no targetDirectory and no MCP call context to derive one from, the tool must not
        // crash — it returns a clear error telling the caller to pass the directory explicitly.
        val response = runBlocking { toolset.mps_mcp_initialize_project_for_agents() }
        val obj = JsonParser.parseString(response).asJsonObject
        assertFalse("expected error envelope when nothing can be derived: $response", obj.get("ok").asBoolean)
        val error = obj.get("error").asString
        assertTrue("error must point the caller at 'targetDirectory': $error", error.contains("targetDirectory"))
        assertTrue(
            "error must steer toward the repository/workspace root: $error",
            error.contains("repository") || error.contains("workspace")
        )
        assertFalse("nothing must be installed when resolution fails", Files.exists(tmpProjectRoot.resolve(".agents")))
    }

    // ---- deriveAgentConfigRoot (VCS-root walk-up) ----

    @Test
    fun `deriveAgentConfigRoot walks up to the nearest VCS root for a subdirectory project`() {
        // Mirrors the mbeddr layout: .git at the repo root, MPS project under tools/BigProject.
        Files.createDirectories(tmpProjectRoot.resolve(".git"))
        val projectDir = tmpProjectRoot.resolve("tools").resolve("BigProject")
        Files.createDirectories(projectDir)

        assertEquals(
            tmpProjectRoot.toAbsolutePath().normalize(),
            deriveAgentConfigRootForTest(projectDir)
        )
    }

    @Test
    fun `deriveAgentConfigRoot returns the project dir when it is itself the VCS root`() {
        Files.createDirectories(tmpProjectRoot.resolve(".git"))
        assertEquals(
            tmpProjectRoot.toAbsolutePath().normalize(),
            deriveAgentConfigRootForTest(tmpProjectRoot)
        )
    }

    @Test
    fun `deriveAgentConfigRoot prefers the nearest of nested VCS roots`() {
        Files.createDirectories(tmpProjectRoot.resolve(".git"))
        val inner = tmpProjectRoot.resolve("inner")
        Files.createDirectories(inner.resolve(".git"))
        val projectDir = inner.resolve("proj")
        Files.createDirectories(projectDir)

        assertEquals(
            "the closest enclosing VCS root must win",
            inner.toAbsolutePath().normalize(),
            deriveAgentConfigRootForTest(projectDir)
        )
    }

    @Test
    fun `deriveAgentConfigRoot recognizes a git worktree file not just a directory`() {
        // In a git worktree/submodule, `.git` is a regular file pointing at the real gitdir.
        Files.writeString(tmpProjectRoot.resolve(".git"), "gitdir: /elsewhere/.git/worktrees/x")
        val projectDir = tmpProjectRoot.resolve("sub")
        Files.createDirectories(projectDir)

        assertEquals(
            tmpProjectRoot.toAbsolutePath().normalize(),
            deriveAgentConfigRootForTest(projectDir)
        )
    }

    @Test
    fun `deriveAgentConfigRoot falls back to the start dir when no VCS root is found`() {
        // Assumes the system temp directory is not itself inside a VCS checkout, which holds on
        // standard dev/CI machines. The walk reaches the filesystem root and returns the start dir.
        val start = tmpProjectRoot.resolve("novcs").resolve("deep")
        Files.createDirectories(start)

        assertEquals(
            start.toAbsolutePath().normalize(),
            deriveAgentConfigRootForTest(start)
        )
    }

    @Test
    fun `withSkillsResourceFs reads bundled skills from a jar filesystem`() {
        val jarFile = tmpProjectRoot.resolve("skills-fixture.jar")
        createJarWithEntry(jarFile, "jetbrains/mps/agents/mcp/skills/test-skill/SKILL.md", "name: test-skill\n")

        val visited = withSkillsResourceFsForTest("jar:${jarFile.toUri()}!/jetbrains/mps/agents/mcp/skills") { skillsRoot ->
            val skillFile = skillsRoot.resolve("test-skill").resolve("SKILL.md")
            assertTrue("expected SKILL.md to be readable from jar FS", Files.isRegularFile(skillFile))
            Files.readString(skillFile)
        }

        assertEquals("name: test-skill\n", visited)
    }

    @Test
    fun `withSkillsResourceFs rejects unsupported URL protocols`() {
        val unsupported = URL.of(URI.create("memory:/skills"), object : URLStreamHandler() {
            override fun openConnection(url: URL): URLConnection {
                throw UnsupportedOperationException("not used in this test")
            }
        })

        try {
            withSkillsResourceFsForTest(unsupported) { fail("block must not be invoked for unsupported protocols") }
            fail("expected unsupported protocol to throw")
        } catch (e: InvocationTargetException) {
            val cause = e.targetException
            assertTrue(
                "exception must name the unsupported protocol: ${cause.message}",
                cause is IllegalStateException && cause.message?.contains("Unsupported classpath URL protocol: memory") == true
            )
        }
    }

    private companion object {
        // A real bundled skill that ships only with `SKILL.md` at its root — used to verify
        // the simple per-skill copy and the collision-error path. Keep this in sync with
        // `plugins/mcp-tools/resources/jetbrains/mps/agents/mcp/skills/`.
        private const val REAL_SKILL_NAME = "mps-aspect-accessories"
        private const val EXCLUDED_SKILL_NAME = "bugfix-workflow"

        // A real bundled skill that ships an auxiliary subdirectory. Used to verify that
        // copyDirectoryRecursively walks into nested folders rather than just copying the
        // top-level `SKILL.md`.
        private const val NESTED_SKILL_NAME = "mps-aspect-structure-concepts"
        private const val NESTED_SKILL_SUBDIR = "references"
        private const val NESTED_SKILL_FILE = "structure-operation-api.md"
    }

    // ---- helpers ----

    /** Asserts the response is an ok envelope and returns its `data` object. */
    private fun okData(response: String): JsonObject {
        val obj = JsonParser.parseString(response).asJsonObject
        assertTrue("expected ok envelope: $response", obj.get("ok").asBoolean)
        return obj.getAsJsonObject("data")
    }

    private fun stringArray(data: JsonObject, name: String): List<String> =
        data.getAsJsonArray(name).map { it.asString }

    private fun deriveAgentConfigRootForTest(path: Path): Path {
        val method = JetBrainsMPSInitMcpToolset::class.java.getDeclaredMethod("deriveAgentConfigRoot", Path::class.java)
        method.isAccessible = true
        return method.invoke(toolset, path) as Path
    }

    @Suppress("UNCHECKED_CAST")
    private fun <T> withSkillsResourceFsForTest(resourceUrl: URL, block: (Path) -> T): T {
        val method = JetBrainsMPSInitMcpToolset::class.java.getDeclaredMethod(
            "withSkillsResourceFs",
            URL::class.java,
            Function1::class.java,
        )
        method.isAccessible = true
        return method.invoke(toolset, resourceUrl, block as Function1<Path, T>) as T
    }

    private fun <T> withSkillsResourceFsForTest(resourceUrl: String, block: (Path) -> T): T {
        return withSkillsResourceFsForTest(URI.create(resourceUrl).toURL(), block)
    }

    private fun targetSkillsDirs(): List<Path> {
        return listOf(
            tmpProjectRoot.resolve(".agents").resolve("skills"),
            tmpProjectRoot.resolve(".claude").resolve("skills"),
        )
    }

    private fun createJarWithEntry(jarFile: Path, entryName: String, content: String) {
        JarOutputStream(Files.newOutputStream(jarFile)).use { jar ->
            jar.putNextEntry(JarEntry(entryName))
            jar.write(content.toByteArray())
            jar.closeEntry()
        }
    }
}
