package jetbrains.mps.agents.mcp.tools.unit

import jetbrains.mps.agents.mcp.tools.common.*

import com.google.gson.JsonParser
import jetbrains.mps.generator.IGenerationSettings.GenTraceSettings
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Assert.fail
import org.junit.Test

/**
 * `mps_mcp_generation` TRACE without a trace: the role a recorded template node gets from its concept hierarchy, and the
 * options a call's `parameters` resolve to, defaulting to the IDE tracer's settings.
 */
class GenerationTraceRoleTest {

    private fun generator(vararg names: String): Set<String> = names.mapTo(LinkedHashSet()) { "jetbrains.mps.lang.generator.$it" }

    private fun role(ancestors: Set<String>?, fromGeneratorModel: Boolean = true) = GenerationTraceOps.templateRole(ancestors, fromGeneratorModel)

    @Test
    fun `mapping rules of every kind are RULE`() {
        assertEquals(TemplateRole.RULE, role(generator("Reduction_MappingRule", "BaseMappingRule", "ReductionRule")))
        assertEquals(TemplateRole.RULE, role(generator("Root_MappingRule", "BaseMappingRule")))
        assertEquals(TemplateRole.RULE, role(generator("Weaving_MappingRule", "BaseMappingRule")))
        assertEquals("a pattern rule implements ReductionRule only", TemplateRole.RULE, role(generator("PatternReduction_MappingRule", "ReductionRule")))
        assertEquals(TemplateRole.RULE, role(generator("CreateRootRule")))
        assertEquals(TemplateRole.RULE, role(generator("DropRootRule")))
        assertEquals(TemplateRole.RULE, role(generator("DropAttributeRule")))
        assertEquals("a rule concept of another language that extends a generator rule", TemplateRole.RULE, role(setOf("my.lang.MyRule") + generator("BaseMappingRule")))
    }

    @Test
    fun `call sites are TEMPLATE_CALL and loop macros LOOP`() {
        for (call in listOf("TemplateCallMacro", "WeaveMacro", "InsertCallSiteMacro", "TemplateDeclarationReference")) {
            assertEquals(call, TemplateRole.TEMPLATE_CALL, role(generator(call, "SourceSubstituteMacro", "NodeMacro")))
        }
        assertEquals(TemplateRole.LOOP, role(generator("LoopMacro", "SourceSubstituteMacro", "NodeMacro")))
    }

    @Test
    fun `other generator-model nodes are TEMPLATE, anything else UNKNOWN`() {
        assertEquals("a template fragment's parent, e.g. a ClassConcept", TemplateRole.TEMPLATE, role(setOf("jetbrains.mps.baseLanguage.ClassConcept")))
        assertEquals("a macro the engine does not record by kind", TemplateRole.TEMPLATE, role(generator("IfMacro", "NodeMacro")))
        assertEquals("not from a generator model", TemplateRole.UNKNOWN, role(setOf("jetbrains.mps.baseLanguage.ClassConcept"), fromGeneratorModel = false))
        assertEquals("unresolved", TemplateRole.UNKNOWN, role(null))
        assertEquals("TemplateDeclaration and TemplateFragment are never recorded, so have no role of their own", TemplateRole.TEMPLATE, role(generator("TemplateDeclaration")))
    }

    private fun parse(json: String, settings: GenTraceSettings = GenTraceSettings()) =
        GenerationTraceOps.parseOptions(JsonParser.parseString(json).asJsonObject, settings)

    @Test
    fun `options default to the tracer settings`() {
        val defaults = parse("""{"direction":"backward"}""")
        assertEquals(TraceDirection.BACKWARD, defaults.direction)
        assertEquals(TraceGrouping.CHANGE, defaults.groupBy)
        assertFalse(defaults.compactTemplates)
        assertFalse(defaults.includeEmptySteps)
        assertEquals(GenerationTraceOps.DEFAULT_MAX_CHANGES, defaults.maxChanges)

        val settings = GenTraceSettings().apply {
            isGroupByChange = false
            isCompactTemplates = true
            isShowEmptySteps = true
        }
        val fromSettings = parse("""{"direction":"FORWARD"}""", settings)
        assertEquals(TraceGrouping.NODE, fromSettings.groupBy)
        assertTrue(fromSettings.compactTemplates)
        assertTrue(fromSettings.includeEmptySteps)

        val explicit = parse("""{"direction":"FORWARD","groupBy":"CHANGE","compactTemplates":false,"includeEmptySteps":false,"maxChanges":3}""", settings)
        assertEquals(TraceGrouping.CHANGE, explicit.groupBy)
        assertFalse(explicit.compactTemplates)
        assertFalse(explicit.includeEmptySteps)
        assertEquals(3, explicit.maxChanges)
    }

    @Test
    fun `bad options are rejected naming the key`() {
        for ((json, key) in listOf(
            """{}""" to "direction",
            """{"direction":"SIDEWAYS"}""" to "direction",
            """{"direction":"FORWARD","groupBy":"STEP"}""" to "groupBy",
            """{"direction":"FORWARD","maxChanges":0}""" to "maxChanges",
            """{"direction":"FORWARD","maxChanges":"many"}""" to "maxChanges",
        )) {
            try {
                parse(json)
                fail("$json must be rejected")
            } catch (e: Exception) {
                assertTrue("$json: ${e.message}", e.message.orEmpty().contains(key))
            }
        }
    }
}
