package jetbrains.mps.agents.mcp.tools.unit

import com.intellij.mcpserver.annotations.McpDescription
import com.intellij.mcpserver.annotations.McpTool
import org.junit.Assert.assertTrue
import java.nio.file.Path
import kotlin.io.path.isRegularFile
import kotlin.io.path.readText
import kotlin.reflect.KClass
import kotlin.reflect.full.declaredFunctions
import kotlin.reflect.full.findAnnotation

/** What the skill-routing doc-drift gates read: blueprint skill files, their directive sections, and tool descriptions. */
internal object SkillRoutingDocs {

    private const val CRITICAL_DIRECTIVES = "## Critical Directives"

    /** The `@McpDescription` of [tool], the `@McpTool` method of [toolset] by that name. */
    fun toolDescription(toolset: KClass<*>, tool: String): String =
        toolset.declaredFunctions
            .single { it.name == tool && it.findAnnotation<McpTool>() != null }
            .findAnnotation<McpDescription>()!!.description

    /** The blueprint catalog file at [relative]; a missing file fails the test. */
    fun read(relative: String): String {
        val file: Path = SkillCatalogCheckout.blueprint().resolve(relative)
        assertTrue("$relative is missing from the blueprint catalog", file.isRegularFile())
        return file.readText()
    }

    /**
     * The `## Critical Directives` section of a `SKILL.md`: from its heading to the next `## `
     * heading. Blockquotes and blank lines inside stay in, so every directive is seen, not just the
     * first paragraph.
     */
    fun criticalDirectives(relative: String): String {
        val lines = read(relative).lines()
        val start = lines.indexOfFirst { it.trimEnd() == CRITICAL_DIRECTIVES }
        assertTrue("$relative has no `$CRITICAL_DIRECTIVES` section", start >= 0)
        val end = (start + 1 until lines.size).firstOrNull { lines[it].startsWith("## ") } ?: lines.size
        return lines.subList(start, end).joinToString("\n")
    }

    fun assertNamesAll(source: String, text: String, tokens: List<String>) {
        val missing = tokens.filterNot { text.contains(it) }
        assertTrue("$source no longer names: ${missing.joinToString(", ")}", missing.isEmpty())
    }
}
