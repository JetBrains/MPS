package jetbrains.mps.agents.mcp.tools.integration

import jetbrains.mps.agents.mcp.tools.*
import jetbrains.mps.agents.mcp.tools.common.*

import com.google.gson.JsonParser
import com.intellij.openapi.application.ApplicationManager
import com.intellij.openapi.application.ModalityState
import jetbrains.mps.editor.runtime.style.StyleAttributes
import jetbrains.mps.editor.runtime.style.TableComponent
import jetbrains.mps.nodeEditor.EditorComponent
import jetbrains.mps.nodeEditor.cells.EditorCell_Basic
import jetbrains.mps.nodeEditor.cells.EditorCell_Image
import jetbrains.mps.nodeEditor.cells.EditorCell_Label
import jetbrains.mps.nodeEditor.cells.ParentSettings
import jetbrains.mps.openapi.editor.cells.EditorCell
import jetbrains.mps.openapi.editor.cells.EditorCell_Collection
import org.jetbrains.mps.openapi.model.SNode
import org.jetbrains.mps.openapi.module.SRepository
import org.jetbrains.mps.openapi.persistence.PersistenceFacade
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test
import java.awt.Graphics
import java.awt.image.BufferedImage

/** The table detector and cell collector behind the grid PLAIN TEXT of `mps_mcp_print_node`, on a real editor tree. */
class PrintNodeGridTextIntegrationTest : McpIntegrationTestBase() {

    private class EditorProbe : AbstractNodeOps() {
        fun <T> withEditor(repo: SRepository, node: SNode, block: (EditorComponent) -> T): T =
            withHeadlessEditor(repo, node) { ctx -> block(ctx.editorComponent as EditorComponent) }
    }

    private fun <T> inEditor(ref: String, block: (EditorCell) -> T): T = inEditorComponent(ref) { block(it.rootCell) }

    private fun <T> inEditorComponent(ref: String, block: (EditorComponent) -> T): T {
        val repo = myProject.repository
        var out: Result<T>? = null
        ApplicationManager.getApplication().invokeAndWait({
            repo.modelAccess.runReadAction {
                out = runCatching {
                    val node = checkNotNull(PersistenceFacade.getInstance().createNodeReference(ref).resolve(repo))
                    EditorProbe().withEditor(repo, node, block)
                }
            }
        }, ModalityState.nonModal())
        return checkNotNull(out).getOrThrow()
    }

    private fun labelTexts(root: EditorCell): List<String> {
        val texts = mutableListOf<String>()
        fun walk(cell: EditorCell) {
            if (cell is EditorCell_Label && cell.renderedText.isNotBlank()) texts += cell.renderedText.trim()
            if (cell is EditorCell_Collection) cell.forEach(::walk)
        }
        walk(root)
        return texts
    }

    @Test
    fun `a ConceptDeclaration editor has no table and keeps the plain text renderer`() {
        val ref = createConceptRoot("GridNone")
        assertFalse(inEditor(ref) { CellGridText.containsTable(it) })
        val envelope = JsonParser.parseString(runTool(JetBrainsMPSNodeMcpToolset()) {
            it.mps_mcp_print_node(ref, format = "PLAIN TEXT")
        }).asJsonObject
        assertTrue(envelope.toString(), envelope.get("ok").asBoolean)
        assertNull(envelope.toString(), envelope.getAsJsonObject("details").get("textRenderer"))
        assertNull(envelope.toString(), envelope.get("warnings"))
    }

    @Test
    fun `a collection styled as a table column is detected and its labels all reach the grid`() {
        val ref = createConceptRoot("GridTable")
        inEditor(ref) { root ->
            root.style.set(StyleAttributes.TABLE_COMPONENT, TableComponent.VERTICAL_COLLECTION)
            assertTrue(CellGridText.containsTable(root))
            val text = CellGridText.render(root)
            assertNotNull("invariant failed on a real editor tree", text)
            text!!
            assertTrue(text, text.lines().first().trimStart().startsWith("concept GridTable"))
            assertTrue(text, text.lines().size > 3)
            for (label in labelTexts(root)) assertTrue("'$label' missing from:\n$text", text.contains(label))
        }
    }

    @Test
    fun `a ConceptDeclaration editor has no cells without text, so neither text nor HTML reports any`() {
        val ref = createConceptRoot("NonTextNone")
        assertEquals(0, inEditor(ref) { NonTextCells.collect(it).size })
        for (format in listOf("PLAIN TEXT", "HTML")) {
            val envelope = JsonParser.parseString(runTool(JetBrainsMPSNodeMcpToolset()) {
                it.mps_mcp_print_node(ref, format = format)
            }).asJsonObject
            assertTrue(envelope.toString(), envelope.get("ok").asBoolean)
            assertNull(envelope.toString(), envelope.getAsJsonObject("details").get("omittedCells"))
            assertNull(envelope.toString(), envelope.get("warnings"))
        }
    }

    @Test
    fun `painted and image cells are reported with their node, neighbouring text and image bounds`() {
        val ref = createConceptRoot("NonTextPainted")
        inEditorComponent(ref) { component ->
            val root = component.rootCell as jetbrains.mps.nodeEditor.cells.EditorCell_Collection
            val lastText = labelTexts(root).last()
            val bar = object : EditorCell_Basic(component.editorContext, root.sNode) {
                override fun paintContent(g: Graphics, parentSettings: ParentSettings) = g.fillRect(x, y + 1, width, 1)
                override fun relayoutImpl() {
                    myWidth = 20
                    myHeight = 3
                }
            }
            root.addEditorCell(bar)
            root.addEditorCell(EditorCell_Image.createImageCell(component.editorContext, root.sNode, BufferedImage(16, 16, BufferedImage.TYPE_INT_RGB)))
            root.requestRelayout()
            component.relayout()

            val omitted = NonTextCells.collect(root)
            assertEquals(omitted.map { it.cellClass }.toString(), listOf(NonTextCells.Kind.PAINTED, NonTextCells.Kind.IMAGE), omitted.map { it.kind })
            val barDetails = omitted[0].toDetails()
            assertEquals(barDetails.toString(), ref, barDetails["node"])
            assertEquals(barDetails.toString(), "ConceptDeclaration", barDetails["concept"])
            assertEquals(barDetails.toString(), lastText, barDetails["textBefore"])
            assertNull(barDetails.toString(), barDetails["textAfter"])
            assertEquals(barDetails.toString(), mapOf("x" to bar.x - root.x + EditorImageRenderer.MARGIN,
                "y" to bar.y - root.y + EditorImageRenderer.MARGIN, "width" to 20, "height" to 3), barDetails["bounds"])
            assertTrue(barDetails.toString(), omitted[0].cellClass.startsWith("PrintNodeGridTextIntegrationTest$"))

            val warning = NonTextCells.warning(omitted)
            assertTrue(warning, warning.startsWith("2 cell(s) without text ("))
            assertTrue(warning, warning.contains("EditorCell_Image"))
            assertEquals(2, NonTextCells.details(omitted)["count"])

            val text = CellGridText.render(root)
            assertNotNull("the grid invariant holds next to cells without text", text)
        }
    }
}
