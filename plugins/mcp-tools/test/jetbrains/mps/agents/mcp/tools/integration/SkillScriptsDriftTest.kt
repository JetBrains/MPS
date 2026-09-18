package jetbrains.mps.agents.mcp.tools.integration

import jetbrains.mps.agents.mcp.tools.*
import jetbrains.mps.agents.mcp.tools.common.*

import com.google.gson.JsonParser
import com.intellij.mcpserver.annotations.McpTool
import org.junit.After
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Assert.fail
import org.junit.Assume
import org.junit.Test
import java.nio.file.Files
import java.nio.file.Path
import java.util.concurrent.TimeUnit
import kotlin.reflect.KClass
import kotlin.reflect.full.declaredMemberFunctions
import kotlin.reflect.full.findAnnotation
import kotlin.reflect.full.valueParameters

/**
 * Drift gate for the helper scripts bundled with the skill catalog (remedy R5 of the
 * skill-script automation study): every MPS MCP tool and parameter a script names in its
 * `--list-tools` output must still exist in the toolsets, so renaming a tool or a parameter
 * fails here instead of silently breaking an agent's script call.
 *
 * The scripts are exercised through a real install (`mps_mcp_initialize_project_for_agents`
 * into a temp directory), which also covers the installed layout the scripts rely on —
 * `concept_shape.py` imports `mps_dump.py` from `../../mps-mcp-workflow/scripts`.
 *
 * Skipped when `python3` is absent (Windows agents follow the manual fallback documented in
 * each skill's `## Scripts` section).
 */
class SkillScriptsDriftTest : McpIntegrationTestBase() {

    private var installRoot: Path? = null
    private val generatedFiles = mutableListOf<Path>()

    @After
    fun cleanUpInstalledSkills() {
        for (file in generatedFiles) {
            Files.deleteIfExists(file)
        }
        generatedFiles.clear()
        installRoot?.let { root ->
            Files.walk(root).use { stream ->
                stream.sorted(Comparator.reverseOrder()).forEach { Files.deleteIfExists(it) }
            }
        }
        installRoot = null
    }

    @Test
    fun `bundled scripts name only tools and parameters that exist`() {
        assumePython3()
        val skillsDir = installSkills()
        val registry = liveToolRegistry()

        for (script in BUNDLED_SCRIPTS) {
            val result = runPython(skillsDir.resolve(script).toString(), "--list-tools")
            assertEquals("$script --list-tools must exit 0, output: ${result.output}", 0, result.exitCode)
            val entries = JsonParser.parseString(result.output.trim()).asJsonArray
            assertTrue("$script must declare at least one tool dependency", entries.size() > 0)
            for (entry in entries) {
                val tool = entry.asJsonObject.get("tool").asString
                val parameters = registry[tool]
                if (parameters == null) {
                    fail("$script depends on tool '$tool', which no toolset declares " +
                            "(known: ${registry.keys.sorted()})")
                    continue
                }
                for (parameter in entry.asJsonObject.getAsJsonArray("parameters")) {
                    val name = parameter.asString
                    assertTrue(
                        "$script depends on parameter '$name' of '$tool', which it no longer has " +
                                "(declared: ${parameters.sorted()})",
                        name in parameters
                    )
                }
            }
        }
    }

    @Test
    fun `table_to_bulk_insert turns the bundled example into a bulk blueprint`() {
        assumePython3()
        val skillsDir = installSkills()
        val scriptDir = skillsDir.resolve("mps-node-editing").resolve("scripts")

        val result = runPython(
            scriptDir.resolve("table_to_bulk_insert.py").toString(),
            scriptDir.resolve("examples").resolve("courses.csv").toString(),
            scriptDir.resolve("examples").resolve("courses.map.json").toString(),
        )
        assertEquals("script must exit 0, output: ${result.output}", 0, result.exitCode)

        val summary = JsonParser.parseString(result.output.trim()).asJsonObject
        assertEquals("the bundled example has 40 rows", EXAMPLE_ROW_COUNT, summary.get("roots").asInt)

        val blueprint = Path.of(summary.get("path").asString)
        generatedFiles.add(blueprint)
        assertTrue("the printed blueprint path must exist: $blueprint", Files.isRegularFile(blueprint))
        assertTrue(
            "the blueprint must be written inside the system temp directory, which is the only " +
                    "location the JSON file-path parameters accept: $blueprint",
            blueprint.startsWith(Path.of(System.getProperty("java.io.tmpdir")).toAbsolutePath().normalize())
        )

        val roots = JsonParser.parseString(Files.readString(blueprint)).asJsonArray
        assertEquals("bulk insert takes a top-level array of roots", EXAMPLE_ROW_COUNT, roots.size())
        for (root in roots) {
            assertTrue("every blueprint root needs a concept: $root", root.asJsonObject.has("concept"))
        }
    }

    /** Installs the bundled catalog into a fresh temp directory and returns its skills root. */
    private fun installSkills(): Path {
        val root = Files.createTempDirectory("mps-skill-scripts")
        installRoot = root
        val response = runTool(JetBrainsMPSInitMcpToolset()) { it.mps_mcp_initialize_project_for_agents(root.toString()) }
        assertTrue(
            "installing the skill catalog must succeed: $response",
            JsonParser.parseString(response).asJsonObject.get("ok").asBoolean
        )
        return root.resolve(".claude").resolve("skills")
    }

    /** Tool name to declared parameter names, read off the `@McpTool` methods of every toolset. */
    private fun liveToolRegistry(): Map<String, Set<String>> {
        val registry = mutableMapOf<String, Set<String>>()
        for (toolset in TOOLSETS) {
            for (function in toolset.declaredMemberFunctions) {
                if (function.findAnnotation<McpTool>() == null) {
                    continue
                }
                registry[function.name] = function.valueParameters.mapNotNull { it.name }.toSet()
            }
        }
        return registry
    }

    private data class PythonResult(val exitCode: Int, val output: String)

    private fun runPython(vararg args: String): PythonResult {
        val process = ProcessBuilder(listOf("python3") + args).redirectErrorStream(true).start()
        val output = process.inputStream.bufferedReader().use { it.readText() }
        assertTrue("python3 ${args.joinToString(" ")} did not finish in time", process.waitFor(60, TimeUnit.SECONDS))
        return PythonResult(process.exitValue(), output)
    }

    private fun assumePython3() {
        val available = try {
            ProcessBuilder("python3", "--version").redirectErrorStream(true).start().waitFor(30, TimeUnit.SECONDS)
        } catch (_: Exception) {
            false
        }
        Assume.assumeTrue("python3 is not available; the skills document a manual fallback", available)
    }

    private companion object {
        private const val EXAMPLE_ROW_COUNT = 40

        private val BUNDLED_SCRIPTS = listOf(
            "mps-mcp-workflow/scripts/mps_dump.py",
            "mps-node-editing/scripts/table_to_bulk_insert.py",
            "mps-language-analysis/scripts/concept_shape.py",
        )

        // Every toolset registered in META-INF/plugin.xml. Listed explicitly so that renaming a
        // toolset class breaks compilation here rather than silently shrinking the registry.
        private val TOOLSETS: List<KClass<out AbstractOps>> = listOf(
            JetBrainsMPSProjectMcpToolset::class,
            JetBrainsMPSConsoleMcpToolset::class,
            JetBrainsMPSLanguageMcpToolset::class,
            JetBrainsMPSModuleMcpToolset::class,
            JetBrainsMPSModelMcpToolset::class,
            JetBrainsMPSRootNodeMcpToolset::class,
            JetBrainsMPSNodeMcpToolset::class,
            JetBrainsMPSIntentionsMcpToolset::class,
            JetBrainsMPSEditorMcpToolset::class,
            JetBrainsMPSLanguageStructureMcpToolset::class,
            JetBrainsMPSJavaMcpToolset::class,
            JetBrainsMPSRunConfigurationMcpToolset::class,
            JetBrainsMPSInitMcpToolset::class,
        )
    }
}
