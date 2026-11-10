package jetbrains.mps.agents.mcp.tools.integration

import jetbrains.mps.agents.mcp.tools.*
import jetbrains.mps.agents.mcp.tools.common.*

import com.google.gson.JsonParser
import com.intellij.openapi.application.ApplicationManager
import com.intellij.openapi.application.ModalityState
import jetbrains.mps.editor.runtime.style.StyleAttributes
import jetbrains.mps.editor.runtime.style.TableComponent
import jetbrains.mps.nodeEditor.cells.EditorCell_Label
import jetbrains.mps.openapi.editor.cells.EditorCell
import jetbrains.mps.openapi.editor.cells.EditorCell_Collection
import org.jetbrains.mps.openapi.model.SNode
import org.jetbrains.mps.openapi.module.SRepository
import org.jetbrains.mps.openapi.persistence.PersistenceFacade
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test

/** The table detector and cell collector behind the grid PLAIN TEXT of `mps_mcp_print_node`, on a real editor tree. */
class PrintNodeGridTextIntegrationTest : McpIntegrationTestBase() {

    private class EditorProbe : AbstractNodeOps() {
        fun <T> withEditor(repo: SRepository, node: SNode, block: (EditorCell) -> T): T =
            withHeadlessEditor(repo, node) { ctx -> block(ctx.editorComponent.rootCell) }
    }

    private fun <T> inEditor(ref: String, block: (EditorCell) -> T): T {
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
            val grid = CellGridText.render(root)
            assertNotNull("invariant failed on a real editor tree", grid)
            val text = grid!!.text
            assertTrue(text, text.lines().first().trimStart().startsWith("concept GridTable"))
            assertTrue(text, text.lines().size > 3)
            for (label in labelTexts(root)) assertTrue("'$label' missing from:\n$text", text.contains(label))
        }
    }
}
