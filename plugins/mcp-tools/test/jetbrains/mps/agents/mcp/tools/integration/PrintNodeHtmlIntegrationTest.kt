package jetbrains.mps.agents.mcp.tools.integration

import jetbrains.mps.agents.mcp.tools.*
import jetbrains.mps.agents.mcp.tools.common.*
import com.google.gson.JsonObject
import com.google.gson.JsonParser
import com.intellij.openapi.application.ApplicationManager
import com.intellij.openapi.application.ModalityState
import jetbrains.mps.editor.runtime.style.CellAlign
import jetbrains.mps.editor.runtime.style.StyleAttributes
import jetbrains.mps.nodeEditor.EditorComponent
import jetbrains.mps.nodeEditor.cellLayout.CellLayout_Horizontal
import jetbrains.mps.nodeEditor.cellLayout.CellLayout_Vertical
import jetbrains.mps.nodeEditor.cells.EditorCell_Basic
import jetbrains.mps.nodeEditor.cells.EditorCell_Collection
import jetbrains.mps.nodeEditor.cells.EditorCell_Constant
import jetbrains.mps.nodeEditor.cells.EditorCell_Image
import jetbrains.mps.nodeEditor.cells.EditorCell_Label
import jetbrains.mps.nodeEditor.cells.ParentSettings
import jetbrains.mps.openapi.editor.cells.EditorCell
import org.jetbrains.mps.openapi.model.SNode
import org.jetbrains.mps.openapi.module.SRepository
import org.jetbrains.mps.openapi.persistence.PersistenceFacade
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test
import java.awt.Graphics
import java.awt.image.BufferedImage
import java.io.File
import javax.imageio.ImageIO

/** The HTML bundle of `mps_mcp_print_node`: a standalone page plus the painted editor, built from the cell tree. */
class PrintNodeHtmlIntegrationTest : McpIntegrationTestBase() {

    private class EditorProbe : AbstractNodeOps() {
        fun <T> withEditor(repo: SRepository, node: SNode, block: (EditorComponent, SNode) -> T): T =
            withHeadlessEditor(repo, node) { ctx -> block(ctx.editorComponent as EditorComponent, node) }
    }

    private fun <T> inEditor(ref: String, block: (EditorComponent, SNode) -> T): T {
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
            if (cell is jetbrains.mps.openapi.editor.cells.EditorCell_Collection) cell.forEach(::walk)
        }
        walk(root)
        return texts
    }

    /** The text a browser shows for [html]'s `<pre>`: tags dropped, entities decoded. */
    private fun preText(html: String): String =
        html.substringAfter("<pre class=\"mps\">").substringBefore("</pre>").replace(Regex("<[^>]+>"), "")
            .replace("&lt;", "<").replace("&gt;", ">").replace("&quot;", "\"").replace("&amp;", "&")

    private fun assertBalanced(html: String) {
        for (tag in listOf("span", "pre", "sup", "sub")) {
            assertEquals("<$tag> and </$tag> in:\n$html", Regex("<$tag[ >]").findAll(html).count(), Regex("</$tag>").findAll(html).count())
        }
    }

    @Test
    fun `HTML is a standalone page next to the painted editor, tagged with the nodes it projects`() {
        val ref = createConceptRoot("HtmlPage")
        val envelope = JsonParser.parseString(runTool(JetBrainsMPSNodeMcpToolset()) {
            it.mps_mcp_print_node(ref, format = "HTML", maxInlineBytes = 10)
        }).asJsonObject
        assertTrue(envelope.toString(), envelope.get("ok").asBoolean)
        val page = File(envelope.get("data").asString)
        assertEquals(EditorHtmlRenderer.PAGE, page.name)
        val html = envelope.getAsJsonObject("details").getAsJsonObject("html")
        assertEquals(page.parentFile.absolutePath, html.get("directory").asString)
        assertEquals(listOf("index.html", "editor.png"), html.getAsJsonArray("files").map { it.asString })
        val image = ImageIO.read(File(page.parentFile, EditorHtmlRenderer.IMAGE))
        assertEquals(envelope.toString(), envelope.getAsJsonObject("details").getAsJsonObject("image").get("width").asInt, image.width)

        val text = page.readText()
        assertTrue(text, text.startsWith("<!DOCTYPE html>\n<html lang=\"en\">"))
        assertTrue(text, text.contains("<meta name=\"mps-node\" content=\"$ref\">"))
        val rootId = ref.substringAfterLast('/')
        assertTrue(text, text.contains("data-n=\"$rootId\" data-c=\"ConceptDeclaration\""))
        assertTrue(text, !text.contains("&nbsp;"))
        assertBalanced(text)
        val shown = preText(text)
        assertTrue(shown, shown.trimStart().startsWith("concept HtmlPage"))
        for (label in inEditor(ref) { c, _ -> labelTexts(c.rootCell) }) assertTrue("'$label' missing from:\n$shown", shown.contains(label))
        assertEquals(envelope.toString(), null, envelope.get("warnings"))
    }

    @Test
    fun `a stack beside text becomes a column with its rule, and other cells without text cut-outs of the image`() {
        val ref = createConceptRoot("HtmlStack")
        inEditor(ref) { component, node ->
            val root = component.rootCell as EditorCell_Collection
            val ctx = component.editorContext
            val bar = object : EditorCell_Basic(ctx, root.sNode) {
                override fun paintContent(g: Graphics, parentSettings: ParentSettings) = g.fillRect(x, y + 1, width, 1)
                override fun relayoutImpl() {
                    myWidth = 20
                    myHeight = 3
                }
            }
            val stack = EditorCell_Collection(ctx, root.sNode, CellLayout_Vertical()).apply {
                style.set(StyleAttributes.HORIZONTAL_ALIGN, CellAlign.CENTER)
                addEditorCell(EditorCell_Constant(ctx, root.sNode, "one"))
                addEditorCell(bar)
                addEditorCell(EditorCell_Constant(ctx, root.sNode, "two"))
            }
            val line = EditorCell_Collection(ctx, root.sNode, CellLayout_Horizontal()).apply {
                addEditorCell(EditorCell_Constant(ctx, root.sNode, "x ="))
                addEditorCell(stack)
                addEditorCell(EditorCell_Image.createImageCell(ctx, root.sNode, BufferedImage(16, 16, BufferedImage.TYPE_INT_RGB)))
            }
            root.addEditorCell(line)
            root.requestRelayout()
            component.relayout()

            val omitted = NonTextCells.collect(root)
            val page = EditorHtmlRenderer.render(root, node, omitted, component.background)
            val html = page.html
            assertBalanced(html)
            assertTrue(html, Regex("""<span class="v ac(?: at| ab)?"><span class="vi">(?:<span class="s\d+">)?one(?:</span>)?</span><span class="hr" data-o="1"></span><span class="vi">(?:<span class="s\d+">)?two(?:</span>)?</span></span>""").containsMatchIn(html))
            assertTrue(html, Regex("""<span class="im" data-o="2" title="⟦2⟧ ConceptDeclaration" style="width:16px;height:16px;background-position:-\d+px -\d+px"></span>""").containsMatchIn(html))
            assertEquals(mapOf(omitted[0].cell to "─", omitted[1].cell to "image"), page.shownAs)
            val shownLine = preText(html).lines().first { it.contains("x =") }
            assertTrue(shownLine, shownLine.trimEnd().endsWith("x = onetwo"))
        }
    }
}
