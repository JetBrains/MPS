package jetbrains.mps.agents.mcp.tools.integration

import jetbrains.mps.agents.mcp.tools.*
import jetbrains.mps.agents.mcp.tools.common.*

import com.google.gson.JsonArray
import com.google.gson.JsonObject
import com.google.gson.JsonParser
import com.intellij.mcpserver.annotations.McpTool
import org.junit.After
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Assert.fail
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
 * Needs `python3`: an assumption on a developer machine, a failure on CI — see [Python3].
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
        Python3.require()
        val skillsDir = installSkills()
        val registry = liveToolRegistry()

        for (script in BUNDLED_SCRIPTS) {
            val result = runPython(skillsDir.resolve(script).toString(), "--list-tools")
            assertEquals("$script --list-tools must exit 0, output: ${result.output}", 0, result.exitCode)
            val entries = JsonParser.parseString(result.output.trim()).asJsonArray
            if (script in SCRIPTS_WITHOUT_TOOL_DEPENDENCIES) {
                assertEquals("$script must declare no tool dependency", 0, entries.size())
                continue
            }
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
        Python3.require()
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

    @Test
    fun `table_to_bulk_insert --verify reports only the differences between a model dump and the table`() {
        Python3.require()
        val scriptDir = installSkills().resolve("mps-node-editing").resolve("scripts")
        val script = scriptDir.resolve("table_to_bulk_insert.py").toString()
        val table = scriptDir.resolve("examples").resolve("courses.csv").toString()
        val mapping = scriptDir.resolve("examples").resolve("courses.map.json").toString()

        val built = runPython(script, table, mapping)
        assertEquals("script must exit 0, output: ${built.output}", 0, built.exitCode)
        val blueprintFile = Path.of(JsonParser.parseString(built.output.trim()).asJsonObject.get("path").asString)
        generatedFiles.add(blueprintFile)
        val dump = modelDumpOf(JsonParser.parseString(Files.readString(blueprintFile)).asJsonArray)

        val cleanDump = Files.createTempFile("verify-clean", ".json")
        generatedFiles.add(cleanDump)
        Files.writeString(cleanDump, dump.toString())
        val clean = runPython(script, table, mapping, "--verify", cleanDump.toString())
        assertEquals("a dump of exactly the table must verify, output: ${clean.output}", 0, clean.exitCode)
        assertEquals(EXAMPLE_ROW_COUNT, JsonParser.parseString(clean.output.trim()).asJsonObject.get("matched").asInt)

        val firstLesson = dump.getAsJsonObject("data").getAsJsonArray("rootNodes")[0].asJsonObject
            .getAsJsonArray("children").map { it.asJsonObject }.first { it.get("role").asString == "lessons" }
            .getAsJsonArray("nodes")[0].asJsonObject
        firstLesson.getAsJsonArray("properties").map { it.asJsonObject }
            .first { it.get("name").asString == "minutes" }.addProperty("value", "999")
        val changedDump = Files.createTempFile("verify-changed", ".json")
        generatedFiles.add(changedDump)
        Files.writeString(changedDump, dump.toString())
        val changed = runPython(script, table, mapping, "--verify", changedDump.toString())
        assertEquals("one changed value must fail the verification, output: ${changed.output}", 1, changed.exitCode)
        val lines = changed.output.trim().lines()
        assertEquals("exactly one difference and the summary, output: ${changed.output}", 2, lines.size)
        assertTrue("the difference must name the row and the field: ${lines[0]}",
                   lines[0].startsWith("row 1 (") && lines[0].contains("lessons[0].minutes") && lines[0].contains("'999'"))
        assertEquals(1, JsonParser.parseString(lines[1]).asJsonObject.get("mismatched").asInt)
    }

    @Test
    fun `mps_dump rejects a dump of the wrong kind and names the subcommand that reads it`() {
        Python3.require()
        val scriptDir = installSkills().resolve("mps-mcp-workflow").resolve("scripts")
        val script = scriptDir.resolve("mps_dump.py").toString()
        fun example(name: String) = scriptDir.resolve("examples").resolve(name).toString()

        for ((args, use) in listOf(
            listOf("shape", example("print_node_deep.json")) to "node",
            listOf("shape", example("get_project_structure_model_roots.json")) to "roots",
            listOf("roots", example("get_concept_details_courses.json")) to "shape",
            listOf("count", example("get_concept_details_courses.json")) to "shape",
            listOf("node", example("get_concept_details_courses.json"), "Course") to "shape",
        )) {
            val result = runPython(script, *args.toTypedArray(), "--quiet")
            assertEquals("${args.joinToString(" ")} must fail as bad input, output: ${result.output}", 3, result.exitCode)
            assertTrue(
                "${args.joinToString(" ")} must name the subcommand to use, output: ${result.output}",
                result.output.contains("use `$use` instead"),
            )
        }

        val noMatch = runPython(script, "roots", example("get_project_structure_model_roots.json"), "--concept", "NoSuchConcept", "--quiet")
        assertEquals("a right-kind dump with no match must still succeed, output: ${noMatch.output}", 0, noMatch.exitCode)
        val summary = JsonParser.parseString(noMatch.output.trim()).asJsonObject
        generatedFiles.add(Path.of(summary.get("file").asString))
        assertEquals(0, summary.get("roots").asInt)
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

    /**
     * The `mps_mcp_get_project_structure(includeNodes=true)` envelope MPS prints for a model that
     * holds exactly [blueprint]: short concept names, a node ref per node, and every reference
     * resolved to the root of the same name.
     */
    private fun modelDumpOf(blueprint: JsonArray): JsonObject {
        var nextId = 0
        val referenceByName = mutableMapOf<String, String>()
        fun record(node: JsonObject): JsonObject {
            val reference = "r:00000000-0000-4000-0000-000000000001(verify.samples)/${++nextId}"
            val properties = node.getAsJsonArray("properties") ?: JsonArray()
            val name = properties.map { it.asJsonObject }.firstOrNull { it.get("name").asString == "name" }?.get("value")?.asString
            if (name != null) referenceByName[name] = reference
            val children = JsonArray()
            for (role in node.getAsJsonArray("children") ?: JsonArray()) {
                val nodes = JsonArray()
                role.asJsonObject.getAsJsonArray("nodes").forEach { nodes.add(record(it.asJsonObject)) }
                children.add(JsonObject().apply {
                    addProperty("role", role.asJsonObject.get("role").asString)
                    add("nodes", nodes)
                })
            }
            return JsonObject().apply {
                addProperty("name", name ?: node.get("concept").asString.substringAfterLast('.'))
                addProperty("concept", node.get("concept").asString.substringAfterLast('.'))
                addProperty("reference", reference)
                add("properties", properties.deepCopy())
                add("references", node.getAsJsonArray("references")?.deepCopy() ?: JsonArray())
                add("children", children)
            }
        }
        fun resolve(node: JsonObject) {
            for (reference in node.getAsJsonArray("references")) {
                val target = reference.asJsonObject.get("target").asString
                reference.asJsonObject.addProperty("targetReference", referenceByName.getValue(target))
            }
            for (role in node.getAsJsonArray("children")) {
                role.asJsonObject.getAsJsonArray("nodes").forEach { resolve(it.asJsonObject) }
            }
        }
        val roots = JsonArray()
        blueprint.forEach { roots.add(record(it.asJsonObject)) }
        roots.forEach { resolve(it.asJsonObject) }
        return JsonObject().apply {
            addProperty("ok", true)
            add("data", JsonObject().apply {
                addProperty("name", "verify.samples")
                add("rootNodes", roots)
            })
        }
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

    private companion object {
        private const val EXAMPLE_ROW_COUNT = 40

        private val BUNDLED_SCRIPTS = BundledSkillScripts.SCRIPTS
        private val SCRIPTS_WITHOUT_TOOL_DEPENDENCIES = BundledSkillScripts.SCRIPTS_WITHOUT_TOOL_DEPENDENCIES

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
