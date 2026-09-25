package jetbrains.mps.agents.mcp.tools.unit

import jetbrains.mps.agents.mcp.tools.common.*

import com.intellij.mcpserver.McpToolset
import com.intellij.mcpserver.annotations.McpTool
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test
import kotlin.io.path.readText
import kotlin.reflect.KClass
import kotlin.reflect.KFunction
import kotlin.reflect.full.declaredFunctions
import kotlin.reflect.full.findAnnotation
import kotlin.reflect.full.valueParameters

/**
 * Study D43: no published MCP parameter may be required in the Kotlin signature.
 *
 * The platform's `CallableBridge` rejects an absent parameter that has no Kotlin default with
 * `No argument is passed for required parameter 'x'` before the tool body runs. That message names
 * what is missing and never what the caller sent instead, so a caller who wrote `moduleReference`
 * where the tool wanted `moduleName` cannot tell its value was dropped (round 8, `S2:75`: three
 * turns and a schema re-fetch). A required parameter therefore carries a default, says
 * "Required." in its description, and is rejected in the body through
 * [RequiredParameter] / `AbstractOps.rejectMissingParameters`, whose message names the spellings
 * that never arrived. Those spellings live in [RequiredParameterNearMisses], checked here against
 * the real parameter lists so a message can never tell a caller to stop sending a key the tool reads.
 */
class McpToolParameterOptionalityTest {

    private val tools: Map<String, KFunction<*>> by lazy {
        registeredToolsets().flatMap { toolset ->
            toolset.declaredFunctions.filter { it.findAnnotation<McpTool>() != null }
        }.associateBy { it.name }
    }

    private fun parameterNames(tool: KFunction<*>): Set<String> =
        tool.valueParameters.mapNotNull { it.name }.toSet()

    /**
     * Every `mcpServer.mcpToolset` this module registers, read from its own `plugin.xml` so that a
     * newly registered toolset is covered without editing this test. Read from the working tree:
     * `plugins/mcp-tools/META-INF` is not a resource root, so the only `META-INF/plugin.xml` on the
     * test classpath that registers toolsets is the platform's own `mcpserver.jar` descriptor.
     */
    private fun registeredToolsets(): List<KClass<out McpToolset>> {
        val descriptor = SkillCatalogCheckout.root().resolve(PLUGIN_XML).readText()
        return MCP_TOOLSET.findAll(descriptor).map { match ->
            @Suppress("UNCHECKED_CAST")
            Class.forName(match.groupValues[1]).kotlin as KClass<out McpToolset>
        }.toList()
    }

    @Test
    fun `every published tool parameter has a Kotlin default`() {
        assertTrue("expected the full tool surface, found ${tools.size} tools", tools.size >= 39)
        val required = tools.values.flatMap { tool ->
            tool.valueParameters.filterNot { it.isOptional }.map { "${tool.name}.${it.name}" }
        }
        assertTrue(
            "these parameters have no Kotlin default, so the platform rejects a call that omits them " +
                "with its generic message before the tool body can name the spelling it wanted (D43). " +
                "Give each a default, start its description with \"Required.\", and reject a blank value " +
                "with rejectMissingParameters: $required",
            required.isEmpty(),
        )
    }

    @Test
    fun `every near-miss entry names a real parameter`() {
        val stale = RequiredParameterNearMisses.byParameter.keys.filter { key ->
            val tool = key.substringBefore('.', missingDelimiterValue = "")
            val parameter = key.substringAfter('.')
            if (tool.isEmpty()) {
                tools.values.none { parameter in parameterNames(it) }
            } else {
                tools[tool]?.let { parameter !in parameterNames(it) } ?: true
            }
        }
        assertTrue("near-miss entries for parameters no tool has: $stale", stale.isEmpty())
    }

    @Test
    fun `no near-miss is a parameter of the tool whose rejection names it`() {
        val offenders = tools.values.flatMap { tool ->
            val names = parameterNames(tool)
            names.flatMap { parameter ->
                RequiredParameterNearMisses.of(tool.name, parameter)
                    .filter { it in names }
                    .map { "${tool.name}: '$it' is listed as a near-miss of '$parameter' but is a real parameter" }
            }
        }
        assertTrue(offenders.joinToString("\n"), offenders.isEmpty())
    }

    @Test
    fun `a single missing parameter names the key, the retry, and the spellings that never arrived`() {
        assertEquals(
            "moduleName is required. Retry with moduleName set to the owning module's name. This tool " +
                "spells it 'moduleName'; a value sent as 'moduleReference'/'moduleRef'/'module' never reaches it.",
            missingParametersMessage(
                "mps_mcp_create_model",
                listOf(RequiredParameter("moduleName", "", "the owning module's name")),
            ),
        )
    }

    @Test
    fun `several missing parameters are reported in one message`() {
        assertEquals(
            "moduleName and modelName are required. Retry with moduleName set to M (not " +
                "'moduleReference'/'moduleRef'/'module'); modelName set to N (not 'name'/'model'). " +
                "A value sent under another name never reaches this tool.",
            missingParametersMessage(
                "mps_mcp_create_model",
                listOf(RequiredParameter("moduleName", "", "M"), RequiredParameter("modelName", "", "N")),
            ),
        )
    }

    @Test
    fun `three missing parameters are listed with a final and`() {
        val message = missingParametersMessage(
            "mps_mcp_model_used_language",
            listOf(
                RequiredParameter("modelReference", "", "M"),
                RequiredParameter("usedLanguage", "", "L"),
                RequiredParameter("kind", "", "K"),
            ),
        )
        assertTrue(message, message.startsWith("modelReference, usedLanguage and kind are required. Retry with "))
    }

    @Test
    fun `an operation-scoped rejection names the operation that requires the parameters`() {
        assertEquals(
            "childRole is required for ADD CHILD. Retry with childRole set to R. This tool spells it " +
                "'childRole'; a value sent as 'role' never reaches it.",
            missingParametersMessage("mps_mcp_update_node", listOf(RequiredParameter("childRole", "", "R")), "ADD CHILD"),
        )
        assertEquals(
            "nodeReference and childJson are required for ADD CHILD. Retry with nodeReference set to N " +
                "(not 'parentRef'/'nodeRef'); childJson set to J (not 'json'). A value sent under another " +
                "name never reaches this tool.",
            missingParametersMessage(
                "mps_mcp_update_node",
                listOf(RequiredParameter("nodeReference", "", "N"), RequiredParameter("childJson", "", "J")),
                "ADD CHILD",
            ),
        )
    }

    @Test
    fun `a tool-qualified near-miss entry overrides the shared one`() {
        assertEquals(listOf("moduleName", "moduleReference"), RequiredParameterNearMisses.of("mps_mcp_create_module", "name"))
        assertEquals(listOf("nodeName", "rootName"), RequiredParameterNearMisses.of("mps_mcp_create_root_node", "name"))
    }

    @Test
    fun `a parameter without near-misses gets no spelling sentence`() {
        assertEquals(
            "directory is required. Retry with directory set to D.",
            missingParametersMessage("mps_mcp_create_module", listOf(RequiredParameter("directory", "", "D"))),
        )
    }

    private companion object {
        const val PLUGIN_XML = "plugins/mcp-tools/META-INF/plugin.xml"
        val MCP_TOOLSET = Regex("""<mcpServer\.mcpToolset\s+implementation="([^"]+)"""")
    }
}
