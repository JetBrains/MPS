package jetbrains.mps.agents.mcp.tools.integration

import jetbrains.mps.agents.mcp.tools.*
import jetbrains.mps.agents.mcp.tools.common.*

import com.google.gson.JsonObject
import com.google.gson.JsonParser
import jetbrains.mps.smodel.SModelInternal
import jetbrains.mps.smodel.SNodeUtil
import jetbrains.mps.smodel.adapter.MetaAdapterByDeclaration
import kotlinx.serialization.json.JsonArray
import kotlinx.serialization.json.JsonPrimitive
import org.jetbrains.mps.openapi.persistence.PersistenceFacade
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNotEquals
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Assume.assumeTrue
import org.junit.Test

/** `mps_mcp_print_node` HTML / PLAIN TEXT with `editorHints`, and the `details.editorHints` block. */
class PrintNodeEditorHintsIntegrationTest : McpIntegrationTestBase() {

    private val toolset = JetBrainsMPSNodeMcpToolset()

    private val commentHint = "jetbrains.mps.lang.core.editor.BaseEditorContextHints.comment"

    private fun print(ref: String, format: String = "PLAIN TEXT", editorHints: String? = null): JsonObject =
        JsonParser.parseString(runTool(toolset) {
            it.mps_mcp_print_node(ref, format = format, editorHints = editorHints?.let(::JsonOrText))
        }).asJsonObject

    private fun okText(envelope: JsonObject): String {
        assertTrue("expected an ok envelope: $envelope", envelope.get("ok").asBoolean)
        return envelope.get("data").asString
    }

    private fun hintsBlock(envelope: JsonObject): JsonObject =
        envelope.getAsJsonObject("details")?.getAsJsonObject("editorHints") ?: error("no details.editorHints: $envelope")

    private fun available(envelope: JsonObject): List<JsonObject> =
        hintsBlock(envelope).getAsJsonArray("available").map { it.asJsonObject }

    @Test
    fun `a plain print reports the project hint settings and a compact catalog`() {
        val envelope = print(createConceptRoot("HintsDefault"))
        okText(envelope)
        val block = hintsBlock(envelope)
        assertEquals(envelope.toString(), "projectSettings", block.get("source").asString)
        assertTrue(envelope.toString(), block.getAsJsonArray("applied").isJsonArray)
        val names = block.getAsJsonArray("available").map { it.asString }
        assertTrue(envelope.toString(), "jetbrains.mps.lang.core.editor.BaseEditorContextHints.include_deprecated_elements" in names)
        assertFalse("hidden hints are only counted: $envelope", commentHint in names)
        assertTrue(envelope.toString(), block.get("hiddenCount").asInt >= 2)
        assertNull("the context assistant cell is not a graphical cell: $envelope", envelope.get("warnings"))
    }

    @Test
    fun `the comment hint switches the projection by FQ name and by short id`() {
        val ref = createConceptRoot("HintsComment")
        val default = okText(print(ref))
        for (value in listOf(commentHint, "comment", "[\"comment\"]")) {
            val envelope = print(ref, editorHints = value)
            val text = okText(envelope)
            assertTrue("$value: $text", text.startsWith("/*"))
            assertNotEquals(value, default, text)
            val block = hintsBlock(envelope)
            assertEquals(envelope.toString(), "request", block.get("source").asString)
            assertEquals(envelope.toString(), listOf(commentHint), block.getAsJsonArray("applied").map { it.asString })
            val comment = available(envelope).single { it.get("fqName").asString == commentHint }
            assertEquals(envelope.toString(), "comment", comment.get("id").asString)
            assertEquals(envelope.toString(), "jetbrains.mps.lang.core", comment.get("language").asString)
            assertFalse(envelope.toString(), comment.get("showInUI").asBoolean)
            assertNull(envelope.toString(), envelope.get("warnings"))
        }
    }

    @Test
    fun `a real JSON array of hints binds through the bridge`() {
        val ref = createConceptRoot("HintsBridge")
        val response = callThroughBridge(
            toolset, "mps_mcp_print_node",
            mapOf(
                "nodeReference" to JsonPrimitive(ref),
                "format" to JsonPrimitive("PLAIN TEXT"),
                "editorHints" to JsonArray(listOf(JsonPrimitive("comment"))),
            ),
        )
        assertTrue(response, okText(JsonParser.parseString(response).asJsonObject).startsWith("/*"))
    }

    @Test
    fun `the runtime reflective hint is accepted and changes the projection`() {
        val ref = createConceptRoot("HintsReflective")
        val default = okText(print(ref))
        val envelope = print(ref, editorHints = "reflective")
        val text = okText(envelope)
        assertNotEquals(default, text)
        assertNull(envelope.toString(), envelope.get("warnings"))
        assertEquals(listOf(EditorHintCatalog.REFLECTIVE_HINT), hintsBlock(envelope).getAsJsonArray("applied").map { it.asString })
        val entry = available(envelope).single { it.get("fqName").asString == EditorHintCatalog.REFLECTIVE_HINT }
        assertEquals("(editor runtime)", entry.get("language").asString)
    }

    @Test
    fun `an empty hint list equals the default under empty project settings`() {
        val ref = createConceptRoot("HintsEmpty")
        val default = print(ref)
        assumeTrue("project settings enable hints", hintsBlock(default).getAsJsonArray("applied").isEmpty)
        val envelope = print(ref, editorHints = "[]")
        assertEquals(okText(default), okText(envelope))
        assertEquals(envelope.toString(), "request", hintsBlock(envelope).get("source").asString)
        assertTrue(envelope.toString(), hintsBlock(envelope).getAsJsonArray("applied").isEmpty)
    }

    @Test
    fun `an unknown hint is rejected with the node's catalog`() {
        val envelope = print(createConceptRoot("HintsUnknown"), editorHints = "[\"comment\", \"noSuchHint\"]")
        assertFalse(envelope.toString(), envelope.get("ok").asBoolean)
        assertEquals(envelope.toString(), "INVALID_REQUEST", envelope.get("code").asString)
        assertTrue(envelope.toString(), envelope.get("error").asString.contains("'noSuchHint'"))
        assertFalse(envelope.toString(), envelope.get("error").asString.contains("'comment'"))
        assertTrue(envelope.toString(), available(envelope).any { it.get("fqName").asString == commentHint })
    }

    @Test
    fun `JSON ignores editorHints with a warning and is otherwise unchanged`() {
        val ref = createConceptRoot("HintsJson")
        val plain = print(ref, format = "JSON")
        val hinted = print(ref, format = "JSON", editorHints = "comment")
        assertTrue(hinted.toString(), hinted.get("ok").asBoolean)
        assertEquals(plain.get("data"), hinted.get("data"))
        assertNull(plain.toString(), plain.get("warnings"))
        assertTrue(hinted.toString(), hinted.getAsJsonArray("warnings").single().asString.contains("ignored for JSON"))
        assertNull(hinted.toString(), hinted.get("details"))
    }

    @Test
    fun `HTML carries the hints block and honours a hint`() {
        val ref = createConceptRoot("HintsHtml")
        val envelope = print(ref, format = "HTML")
        val page = java.io.File(okText(envelope)).readText()
        assertTrue(envelope.toString(), page.startsWith("<!DOCTYPE html>"))
        assertEquals("projectSettings", hintsBlock(envelope).get("source").asString)
        val hinted = java.io.File(okText(print(ref, format = "HTML", editorHints = "comment"))).readText()
        assertNotEquals(page, hinted)
    }

    @Test
    fun `a baseLanguage node lists employed lang core hints and survives an unloaded used language`() {
        val model = createModel(createSolution(), "test.hints${System.nanoTime()}")
        var ref = ""
        executeCommand {
            val cls = jetbrains.mps.smodel.SNode(concept("jetbrains.mps.baseLanguage", "ClassConcept"))
            cls.setProperty(SNodeUtil.property_INamedConcept_name, "HintsProbe")
            model.addRootNode(cls)
            (model as SModelInternal).addLanguage(MetaAdapterByDeclaration.getLanguage(language))
            ref = PersistenceFacade.getInstance().asString(cls.reference)
        }
        val envelope = print(ref, editorHints = "[]")
        okText(envelope)
        val entries = available(envelope)
        assertEquals(envelope.toString(), "jetbrains.mps.lang.core",
            entries.single { it.get("fqName").asString == commentHint }.get("language").asString)
        assertTrue(envelope.toString(), entries.any { it.get("language").asString == "jetbrains.mps.baseLanguage" })
        assertTrue(envelope.toString(),
            hintsBlock(envelope).getAsJsonArray("unloadedLanguages").map { it.asString }.contains(language.moduleName))
    }
}
