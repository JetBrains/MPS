package jetbrains.mps.agents.mcp.tools.unit

import jetbrains.mps.agents.mcp.tools.DEFAULT_MAX_INSTRUCTIONS
import jetbrains.mps.agents.mcp.tools.DataflowQueryOperation
import jetbrains.mps.agents.mcp.tools.JetBrainsMPSDataflowMcpToolset
import jetbrains.mps.agents.mcp.tools.unit.SkillRoutingDocs.assertNamesAll
import jetbrains.mps.agents.mcp.tools.unit.SkillRoutingDocs.criticalDirectives
import jetbrains.mps.agents.mcp.tools.unit.SkillRoutingDocs.read
import jetbrains.mps.agents.mcp.tools.unit.SkillRoutingDocs.toolDescription

import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test
import java.nio.file.Files
import kotlin.io.path.isRegularFile
import kotlin.io.path.readText

/**
 * Doc-drift gate for the dataflow-query routing in the blueprint skill catalog (MPS-40318).
 *
 * The skills send dataflow questions — what program does this builder emit, which writes reach this read, which
 * reads does this write feed — to `mps_mcp_query_dataflow` instead of letting an agent print builders and simulate
 * the engine, or hand-write a console probe of the runtime. Study scenarios S13 (builder debugging) and S14 (def-use
 * questions) measure the same routing against live workers. A regression here means a directive or reference stopped
 * naming an operation the code offers, the documented `maxInstructions` default drifted from the code, or a
 * cross-skill pointer to the dataflow-query reference no longer resolves. Modelled on [SkillTypeQueryRoutingTest].
 */
class SkillDataflowQueryRoutingTest {

    @Test
    fun `dataflow-queries reference names every operation`() {
        assertNamesAll(DATAFLOW_QUERIES, read(DATAFLOW_QUERIES), operationNames() + listOf("programRoot", "builderFailure"))
    }

    @Test
    fun `workflow critical directives route dataflow questions`() {
        assertNamesAll("$WORKFLOW_SKILL (## Critical Directives)", criticalDirectives(WORKFLOW_SKILL), operationNames() + QUERY_DATAFLOW_TOOL)
    }

    @Test
    fun `dataflow aspect skill routes builder debugging to PRINT_PROGRAM`() {
        assertNamesAll(DATAFLOW_SKILL, read(DATAFLOW_SKILL), listOf(QUERY_DATAFLOW_TOOL, "PRINT_PROGRAM", DATAFLOW_QUERIES))
    }

    @Test
    fun `tool indexes list the tool`() {
        for (index in listOf(TOOLS_INDEX, ANALYSIS_TOOLS, OVERVIEW)) {
            assertNamesAll(index, read(index), listOf(QUERY_DATAFLOW_TOOL))
        }
    }

    @Test
    fun `documented maxInstructions default matches the code`() {
        val sources = listOf(
            DATAFLOW_QUERIES to read(DATAFLOW_QUERIES),
            "@McpDescription of mps_mcp_query_dataflow" to toolDescription(JetBrainsMPSDataflowMcpToolset::class, QUERY_DATAFLOW_TOOL),
        )
        for ((source, text) in sources) {
            val documented = MAX_INSTRUCTIONS_DEFAULT.findAll(text).map { it.groupValues[1] }.toList()
            assertTrue("$source documents no `maxInstructions ... (default N)`", documented.isNotEmpty())
            for (value in documented) {
                assertEquals(
                    "$source documents maxInstructions (default $value), but DEFAULT_MAX_INSTRUCTIONS is $DEFAULT_MAX_INSTRUCTIONS",
                    DEFAULT_MAX_INSTRUCTIONS.toString(), value,
                )
            }
        }
    }

    @Test
    fun `the dataflow-queries reference exists and another skill points at it`() {
        val blueprint = SkillCatalogCheckout.blueprint()
        val pointing = mutableListOf<String>()
        Files.walk(blueprint).use { stream ->
            stream.filter { it.isRegularFile() && it.toString().endsWith(".md") }.sorted().forEach { file ->
                if (file.readText().contains(DATAFLOW_QUERIES)) pointing.add(blueprint.relativize(file).toString())
            }
        }
        assertTrue("$DATAFLOW_QUERIES is missing from the blueprint catalog", blueprint.resolve(DATAFLOW_QUERIES).isRegularFile())
        assertTrue(
            "no skill outside mps-mcp-workflow points at $DATAFLOW_QUERIES; the dataflow aspect skill lost its route to it",
            pointing.any { !it.startsWith("mps-mcp-workflow") },
        )
    }

    // --- helpers ---------------------------------------------------------

    private fun operationNames(): List<String> = DataflowQueryOperation.entries.map { it.name }

    private companion object {
        private const val WORKFLOW_SKILL = "mps-mcp-workflow/SKILL.md"
        private const val DATAFLOW_SKILL = "mps-aspect-dataflow/SKILL.md"
        private const val DATAFLOW_QUERIES = "mps-mcp-workflow/references/analysis-tools/dataflow-queries.md"
        private const val TOOLS_INDEX = "mps-mcp-workflow/references/mcp-tools-index.md"
        private const val ANALYSIS_TOOLS = "mps-mcp-workflow/references/analysis-tools.md"
        private const val OVERVIEW = "mps-mcp-workflow/references/analysis-tools/overview.md"
        private const val QUERY_DATAFLOW_TOOL = "mps_mcp_query_dataflow"

        /** `maxInstructions` … `(default 400)`. */
        private val MAX_INSTRUCTIONS_DEFAULT = Regex("maxInstructions`?[^()\\n]{0,40}\\(default ([0-9]+)\\)")
    }
}
