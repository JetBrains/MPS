package jetbrains.mps.agents.mcp.tools.unit

import jetbrains.mps.agents.mcp.tools.MPSInitMcpToolset
import jetbrains.mps.agents.mcp.tools.MPSProjectMcpToolset
import jetbrains.mps.agents.mcp.tools.unit.SkillRoutingDocs.assertNamesAll
import jetbrains.mps.agents.mcp.tools.unit.SkillRoutingDocs.read
import jetbrains.mps.agents.mcp.tools.unit.SkillRoutingDocs.toolDescription
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test
import kotlin.io.path.isRegularFile
import kotlin.io.path.readText

/**
 * Doc-drift gate for the skill-freshness policy across MCP tool descriptions, `AGENTS_template.md`,
 * and the `mps-mcp-workflow` blueprint skill.
 *
 * When `build` or `pluginVersion` differs — including when `build` matches `mpsBuild` and only
 * `pluginVersion` differs or is missing — agents must pause before substantial MPS work, recommend
 * refreshing as the default, and proceed with the existing skills only if the user declines (never
 * refreshing silently). A regression here means one of these entry points slipped back to passive
 * wording that lets agents ignore or postpone a plugin-version mismatch.
 */
class SkillFreshnessGuidanceTest {

    @Test
    fun `list_open_projects description recommends refreshing before MPS work on build or pluginVersion mismatch`() {
        val description = toolDescription(MPSProjectMcpToolset::class, LIST_OPEN_PROJECTS_TOOL)
        assertNamesAll(
            "@McpDescription of $LIST_OPEN_PROJECTS_TOOL",
            description,
            listOf(
                STAMP_FILE,
                "mpsBuild",
                "mcpToolsVersion",
                "pluginVersion",
                "recommend refreshing",
                "declines",
                "takes precedence",
            ),
        )
        assertFalse(
            "@McpDescription of $LIST_OPEN_PROJECTS_TOOL slipped back to passive 'offer a refresh' wording",
            description.contains("offer a refresh", ignoreCase = true),
        )
    }

    @Test
    fun `initializer description proactively recommends refresh on mismatch`() {
        val description = toolDescription(MPSInitMcpToolset::class, INIT_TOOL)
        assertNamesAll(
            "@McpDescription of $INIT_TOOL",
            description,
            listOf(
                STAMP_FILE,
                "mpsBuild",
                "mcpToolsVersion",
                "pluginVersion",
                "proactively recommended",
                "recommend refreshing",
                "declines",
            ),
        )
        assertFalse(
            "@McpDescription of $INIT_TOOL slipped back to reactive 'on user request' wording",
            description.contains("on user request", ignoreCase = true),
        )
    }

    @Test
    fun `AGENTS_template recommends refreshing before MPS work unless the user declines`() {
        val templatePath = SkillCatalogCheckout.root().resolve(AGENTS_TEMPLATE)
        assertTrue("$AGENTS_TEMPLATE is missing from the checkout", templatePath.isRegularFile())
        val template = templatePath.readText()
        assertNamesAll(
            AGENTS_TEMPLATE,
            template,
            listOf(
                STAMP_FILE,
                "mpsBuild",
                "mcpToolsVersion",
                "pluginVersion",
                "recommend refreshing",
                "declines",
                "recommended default",
            ),
        )
        assertFalse(
            "$AGENTS_TEMPLATE re-introduced the 'do not block' escape hatch",
            template.contains("do not block", ignoreCase = true),
        )
    }

    @Test
    fun `workflow skill and references align on prefer-to-update freshness checks`() {
        assertNamesAll(
            WORKFLOW_SKILL,
            read(WORKFLOW_SKILL),
            listOf(
                STAMP_FILE,
                "mpsBuild",
                "mcpToolsVersion",
                "pluginVersion",
                "recommend refreshing",
                "declines",
                CATALOG_REFRESH_LINK,
            ),
        )

        val catalogRefresh = read(CATALOG_REFRESH)
        assertNamesAll(
            CATALOG_REFRESH,
            catalogRefresh,
            listOf(
                STAMP_FILE,
                "mpsBuild",
                "mcpToolsVersion",
                "pluginVersion",
                "recommend refreshing",
                "declines",
                "recommended default",
            ),
        )
        assertFalse(
            "$CATALOG_REFRESH slipped back to passive 'only with the user's approval' heading",
            catalogRefresh.contains("only with the user's approval", ignoreCase = true),
        )

        assertNamesAll(
            TOOLS_INDEX,
            read(TOOLS_INDEX),
            listOf(
                STAMP_FILE,
                "mpsBuild",
                "mcpToolsVersion",
                "pluginVersion",
                "recommend refreshing",
                "declines",
                CATALOG_REFRESH_LINK,
            ),
        )
    }

    private companion object {
        private const val LIST_OPEN_PROJECTS_TOOL = "mps_mcp_list_open_projects"
        private const val INIT_TOOL = "mps_mcp_initialize_project_for_agents"
        private const val STAMP_FILE = "MPS_MCP_SKILL_VERSION.txt"
        private const val AGENTS_TEMPLATE = "plugins/mcp-tools/resources/jetbrains/mps/agents/mcp/templates/AGENTS_template.md"
        private const val WORKFLOW_SKILL = "mps-mcp-workflow/SKILL.md"
        private const val CATALOG_REFRESH = "mps-mcp-workflow/references/catalog-install-and-refresh.md"
        private const val TOOLS_INDEX = "mps-mcp-workflow/references/mcp-tools-index.md"
        private const val CATALOG_REFRESH_LINK = "`references/catalog-install-and-refresh.md`"
    }
}
