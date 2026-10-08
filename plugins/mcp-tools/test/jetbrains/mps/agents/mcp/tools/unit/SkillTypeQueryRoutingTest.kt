package jetbrains.mps.agents.mcp.tools.unit

import jetbrains.mps.agents.mcp.tools.DEFAULT_MAX_ROOT_NODES
import jetbrains.mps.agents.mcp.tools.JetBrainsMPSNodeMcpToolset
import jetbrains.mps.agents.mcp.tools.JetBrainsMPSTypesMcpToolset
import jetbrains.mps.agents.mcp.tools.TypesQueryOperation

import com.intellij.mcpserver.annotations.McpDescription
import com.intellij.mcpserver.annotations.McpTool
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test
import java.nio.file.Files
import java.nio.file.Path
import kotlin.io.path.isRegularFile
import kotlin.io.path.readText
import kotlin.reflect.KClass
import kotlin.reflect.full.declaredFunctions
import kotlin.reflect.full.findAnnotation

/**
 * Doc-drift gate for the type-query routing in the blueprint skill catalog (MPS-40240 §6).
 *
 * The skills send type questions — does A fit B, what does a slot require, why does a node have its
 * type — to `mps_mcp_query_types` and to `mps_mcp_query_nodes` `GET_TYPE` / `GET_EXPECTED_TYPE`
 * instead of letting an agent read `SubtypingRule` roots and simulate the typesystem, and they tell
 * it that a clean check over commented-out code is no evidence (`uncheckedSubtrees`). Without the
 * routing, the recorded failure was two rounds and five rule printouts to decide `Int <: Float`.
 * A regression here means a directive or reference stopped naming an operation the code offers, a
 * documented default drifted from the code, or a cross-skill pointer to the type-query reference no
 * longer resolves. Study scenario S11 measures the same routing against live workers.
 *
 * The assertions match tokens, not sentences, and the Critical Directives ones are scoped to that
 * section, so rewording passes and deleting a directive fails. Modelled on [SkillReferenceLayoutTest]:
 * same checkout-only scope via [SkillCatalogCheckout], same backtick JUnit4 test names.
 */
class SkillTypeQueryRoutingTest {

    @Test
    fun `type-queries reference names every operation`() {
        assertNamesAll(TYPE_QUERIES, read(TYPE_QUERIES), operationNames() + NODE_TYPE_OPERATIONS)
    }

    @Test
    fun `workflow critical directives route type questions`() {
        assertNamesAll(
            "$WORKFLOW_SKILL (## Critical Directives)",
            criticalDirectives(WORKFLOW_SKILL),
            operationNames() + NODE_TYPE_OPERATIONS + listOf(QUERY_TYPES_TOOL, UNCHECKED_SUBTREES),
        )
    }

    @Test
    fun `node-editing critical directives cover slots and unchecked subtrees`() {
        assertNamesAll(
            "$NODE_EDITING_SKILL (## Critical Directives)",
            criticalDirectives(NODE_EDITING_SKILL),
            listOf("GET_EXPECTED_TYPE", "IS_SUBTYPE", UNCHECKED_SUBTREES),
        )
    }

    @Test
    fun `code-editing skills route to the typesystem`() {
        for (skill in listOf("mps-baselanguage/SKILL.md", "mps-model-manipulation/SKILL.md", "mps-collections-and-closures/SKILL.md")) {
            assertNamesAll(skill, read(skill), listOf(QUERY_TYPES_TOOL))
        }
    }

    @Test
    fun `language-analysis skill routes to the typesystem`() {
        assertNamesAll(LANGUAGE_ANALYSIS_SKILL, read(LANGUAGE_ANALYSIS_SKILL), listOf(QUERY_TYPES_TOOL))
    }

    @Test
    fun `documented maxRootNodes default matches the code`() {
        val sources = listOf(
            TYPE_QUERIES to read(TYPE_QUERIES),
            "@McpDescription of mps_mcp_query_types" to toolDescription(JetBrainsMPSTypesMcpToolset::class, "mps_mcp_query_types"),
            "@McpDescription of mps_mcp_query_nodes" to toolDescription(JetBrainsMPSNodeMcpToolset::class, "mps_mcp_query_nodes"),
        )
        for ((source, text) in sources) {
            val documented = MAX_ROOT_NODES_DEFAULT.findAll(text).map { it.groupValues[1] }.toList()
            assertTrue("$source documents no `maxRootNodes ... (default N)`", documented.isNotEmpty())
            for (value in documented) {
                assertEquals(
                    "$source documents maxRootNodes (default $value), " +
                            "but DEFAULT_MAX_ROOT_NODES is $DEFAULT_MAX_ROOT_NODES",
                    DEFAULT_MAX_ROOT_NODES.toString(), value.filter { it.isDigit() },
                )
            }
        }
    }

    @Test
    fun `cross-skill type-queries pointers resolve`() {
        val blueprint = SkillCatalogCheckout.blueprint()
        val pointers = mutableListOf<String>()
        val dangling = mutableListOf<String>()
        Files.walk(blueprint).use { stream ->
            stream.filter { it.isRegularFile() && it.toString().endsWith(".md") }
                .sorted()
                .forEach { file ->
                    for (match in WORKFLOW_REFERENCE.findAll(file.readText())) {
                        val pointer = match.value
                        pointers.add(pointer)
                        if (!blueprint.resolve(pointer).isRegularFile()) {
                            dangling.add("${blueprint.relativize(file)}: $pointer")
                        }
                    }
                }
        }
        assertTrue(
            "no skill points at $TYPE_QUERIES any more; " +
                    "the companion skills lost their route to the type-query reference",
            TYPE_QUERIES in pointers,
        )
        assertTrue(
            "these cross-skill mps-mcp-workflow/references/ pointers do not resolve in the blueprint catalog:\n" +
                    dangling.joinToString("\n"),
            dangling.isEmpty(),
        )
    }

    // --- helpers ---------------------------------------------------------

    private fun toolDescription(toolset: KClass<*>, tool: String): String =
        toolset.declaredFunctions
            .single { it.name == tool && it.findAnnotation<McpTool>() != null }
            .findAnnotation<McpDescription>()!!.description

    private fun operationNames(): List<String> = TypesQueryOperation.entries.map { it.name }

    private fun read(relative: String): String {
        val file: Path = SkillCatalogCheckout.blueprint().resolve(relative)
        assertTrue("$relative is missing from the blueprint catalog", file.isRegularFile())
        return file.readText()
    }

    /**
     * The `## Critical Directives` section of a `SKILL.md`: from its heading to the next `## `
     * heading. Blockquotes and blank lines inside stay in, so every directive is seen, not just the
     * first paragraph.
     */
    private fun criticalDirectives(relative: String): String {
        val lines = read(relative).lines()
        val start = lines.indexOfFirst { it.trimEnd() == CRITICAL_DIRECTIVES }
        assertTrue("$relative has no `$CRITICAL_DIRECTIVES` section", start >= 0)
        val end = (start + 1 until lines.size).firstOrNull { lines[it].startsWith("## ") } ?: lines.size
        return lines.subList(start, end).joinToString("\n")
    }

    private fun assertNamesAll(source: String, text: String, tokens: List<String>) {
        val missing = tokens.filterNot { text.contains(it) }
        assertTrue("$source no longer names: ${missing.joinToString(", ")}", missing.isEmpty())
    }

    private companion object {
        private const val WORKFLOW_SKILL = "mps-mcp-workflow/SKILL.md"
        private const val NODE_EDITING_SKILL = "mps-node-editing/SKILL.md"
        private const val LANGUAGE_ANALYSIS_SKILL = "mps-language-analysis/SKILL.md"
        private const val TYPE_QUERIES = "mps-mcp-workflow/references/analysis-tools/type-queries.md"
        private const val CRITICAL_DIRECTIVES = "## Critical Directives"
        private const val QUERY_TYPES_TOOL = "mps_mcp_query_types"
        private const val UNCHECKED_SUBTREES = "uncheckedSubtrees"

        /** The `mps_mcp_query_nodes` operations that answer type questions about one node. */
        private val NODE_TYPE_OPERATIONS = listOf("GET_TYPE", "GET_EXPECTED_TYPE")

        /** `maxRootNodes` … `(default 10000)`, also `10 000` (plain or non-breaking space) / `10_000` / `10,000`. */
        private val MAX_ROOT_NODES_DEFAULT =
            Regex("maxRootNodes`?[^()\\n]{0,40}\\(default ([0-9][0-9 _,\\u00a0]*[0-9]|[0-9])\\)")
        private val WORKFLOW_REFERENCE = Regex("mps-mcp-workflow/references/[A-Za-z0-9_./-]+\\.md")
    }
}
