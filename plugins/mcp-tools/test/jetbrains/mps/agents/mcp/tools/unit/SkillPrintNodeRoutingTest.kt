package jetbrains.mps.agents.mcp.tools.unit

import jetbrains.mps.agents.mcp.tools.MPSNodeMcpToolset
import jetbrains.mps.agents.mcp.tools.MPSProjectMcpToolset
import jetbrains.mps.agents.mcp.tools.unit.SkillRoutingDocs.assertNamesAll
import jetbrains.mps.agents.mcp.tools.unit.SkillRoutingDocs.criticalDirectives
import jetbrains.mps.agents.mcp.tools.unit.SkillRoutingDocs.read
import jetbrains.mps.agents.mcp.tools.unit.SkillRoutingDocs.toolDescription

import org.junit.Test

/**
 * Doc-drift gate for the `mps_mcp_print_node` format routing in the blueprint skill catalog.
 *
 * The skills send "read a node" (structure, node ids, reference targets, unset features) to the `AGENTIC VIEW`
 * format and keep JSON for the subtree a blueprint tool or a script takes. A regression here means an entry point
 * (the workflow directive, the analysis overview, the tool index, the tool description) stopped naming the format,
 * lost its pointer to the format reference, or a format list fell back to four literals; or reading a whole model
 * stopped routing to `mps_mcp_get_compact_project_structure`.
 * Modelled on [SkillTypeQueryRoutingTest] and [SkillDataflowQueryRoutingTest].
 */
class SkillPrintNodeRoutingTest {

    @Test
    fun `workflow critical directives route reading to AGENTIC VIEW`() {
        assertNamesAll(
            "$WORKFLOW_SKILL (## Critical Directives)",
            criticalDirectives(WORKFLOW_SKILL),
            listOf(PRINT_NODE_TOOL, AGENTIC_VIEW, AGENTIC_VIEW_REFERENCE_LINK, "blueprint"),
        )
    }

    @Test
    fun `analysis entry points name AGENTIC VIEW`() {
        for (entry in listOf(OVERVIEW, TOOLS_INDEX)) {
            assertNamesAll(entry, read(entry), listOf(PRINT_NODE_TOOL, AGENTIC_VIEW))
        }
    }

    @Test
    fun `analysis tools index and tool index link the AGENTIC VIEW reference`() {
        for (index in listOf(ANALYSIS_TOOLS, TOOLS_INDEX)) {
            assertNamesAll(index, read(index), listOf(AGENTIC_VIEW_REFERENCE_LINK))
        }
    }

    @Test
    fun `print_node tool description names AGENTIC VIEW`() {
        assertNamesAll(
            "@McpDescription of $PRINT_NODE_TOOL",
            toolDescription(MPSNodeMcpToolset::class, PRINT_NODE_TOOL),
            listOf(AGENTIC_VIEW, "nodeDepth", "print-node-agentic-view.md"),
        )
    }

    @Test
    fun `reading a whole model or module routes to the compact project structure tool`() {
        assertNamesAll("$WORKFLOW_SKILL (## Critical Directives)", criticalDirectives(WORKFLOW_SKILL), listOf(COMPACT_TOOL))
        for (entry in listOf(OVERVIEW, TOOLS_INDEX, AGENTIC_VIEW_REFERENCE, FINDING_THINGS)) {
            assertNamesAll(entry, read(entry), listOf(COMPACT_TOOL))
        }
        assertNamesAll(
            "@McpDescription of $COMPACT_TOOL",
            toolDescription(MPSProjectMcpToolset::class, COMPACT_TOOL),
            listOf(AGENTIC_VIEW, "mps_mcp_get_project_structure", PRINT_NODE_TOOL, "print-node-agentic-view.md"),
        )
        assertNamesAll(
            "@McpDescription of mps_mcp_get_project_structure",
            toolDescription(MPSProjectMcpToolset::class, "mps_mcp_get_project_structure"),
            listOf(COMPACT_TOOL),
        )
    }

    @Test
    fun `AGENTIC VIEW reference names every format and nodeDepth`() {
        assertNamesAll(AGENTIC_VIEW_REFERENCE, read(AGENTIC_VIEW_REFERENCE), FORMATS + "nodeDepth")
    }

    @Test
    fun `print_node output reference lists five literals`() {
        assertNamesAll(PRINT_NODE_OUTPUT, read(PRINT_NODE_OUTPUT), FORMATS + "five literals")
    }

    private companion object {
        private const val PRINT_NODE_TOOL = "mps_mcp_print_node"
        private const val COMPACT_TOOL = "mps_mcp_get_compact_project_structure"
        private const val AGENTIC_VIEW = "AGENTIC VIEW"
        private val FORMATS = listOf("JSON", AGENTIC_VIEW, "PLAIN TEXT", "HTML", "IMAGE")

        private const val WORKFLOW_SKILL = "mps-mcp-workflow/SKILL.md"
        private const val TOOLS_INDEX = "mps-mcp-workflow/references/mcp-tools-index.md"
        private const val ANALYSIS_TOOLS = "mps-mcp-workflow/references/analysis-tools.md"
        private const val OVERVIEW = "mps-mcp-workflow/references/analysis-tools/overview.md"
        private const val FINDING_THINGS = "mps-mcp-workflow/references/finding-things.md"
        private const val PRINT_NODE_OUTPUT = "mps-mcp-workflow/references/analysis-tools/print-node-output.md"
        private const val AGENTIC_VIEW_REFERENCE = "mps-mcp-workflow/references/analysis-tools/print-node-agentic-view.md"

        /** How `mps-mcp-workflow` files link the reference: a skill-root path, resolved inside that skill. */
        private const val AGENTIC_VIEW_REFERENCE_LINK = "`references/analysis-tools/print-node-agentic-view.md`"
    }
}
