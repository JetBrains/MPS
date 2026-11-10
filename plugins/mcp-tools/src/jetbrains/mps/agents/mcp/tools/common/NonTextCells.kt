package jetbrains.mps.agents.mcp.tools.common

import jetbrains.mps.editor.runtime.EditorCell_Empty
import jetbrains.mps.nodeEditor.EditorCell_WithComponent
import jetbrains.mps.nodeEditor.cells.EditorCell_ContextAssistantComponent
import jetbrains.mps.nodeEditor.cells.EditorCell_Image
import jetbrains.mps.nodeEditor.cells.EditorCell_Label
import jetbrains.mps.openapi.editor.cells.EditorCell
import jetbrains.mps.openapi.editor.cells.EditorCell_Collection
import org.jetbrains.mps.openapi.persistence.PersistenceFacade

/**
 * The visible leaf cells of an editor that have no textual form, so neither `renderText()`, the grid text nor
 * `renderHtml()` shows them: cells that only paint (a fraction bar, a vertical rule), images, and Swing component cells.
 * Labels (even blank ones), empty cells, the context assistant and cells of at most 2×2 pixels are not counted.
 */
internal object NonTextCells {

    /** How many cells [Omitted.toDetails] lists; the count covers all of them. */
    const val MAX_LISTED = 50

    private const val MAX_NEIGHBOUR_CHARS = 40

    enum class Kind(val label: String) { PAINTED("painted"), IMAGE("image"), COMPONENT("component") }

    /**
     * [cellClass] is the class name without its package (`HLineCellProvider$1` for an anonymous subclass). [textBefore] and
     * [textAfter] are the nearest non-blank label texts in editor order, which locate the cell in the text. The bounds are
     * in the coordinates of the `IMAGE` printout of the same node (root cell offset by [imageMargin]).
     */
    class Omitted(
        val cell: EditorCell,
        val kind: Kind,
        val cellClass: String,
        val textBefore: String?,
        val textAfter: String?,
        val x: Int,
        val y: Int,
        val width: Int,
        val height: Int,
    ) {
        fun toDetails(shownAs: String? = null): Map<String, Any?> {
            val node = cell.sNode
            return linkedMapOf(
                "kind" to kind.label,
                "cellClass" to cellClass,
                "node" to node?.let { PersistenceFacade.getInstance().asString(it.reference) },
                "concept" to node?.concept?.name,
                "role" to node?.containmentLink?.name,
                "textBefore" to textBefore,
                "textAfter" to textAfter,
                "bounds" to linkedMapOf("x" to x, "y" to y, "width" to width, "height" to height),
                "shownAs" to shownAs,
            ).filterValues { it != null }
        }
    }

    /** Whether [cell] is a visible leaf with no textual form. */
    fun isNonTextLeaf(cell: EditorCell): Boolean =
        cell !is EditorCell_Collection && cell !is EditorCell_Label && cell !is EditorCell_Empty &&
            cell !is EditorCell_ContextAssistantComponent && cell.width > 0 && cell.height > 0 && (cell.width > 2 || cell.height > 2)

    /** The non-text leaves under [root], in editor (depth-first) order. */
    fun collect(root: EditorCell, imageMargin: Int = EditorImageRenderer.MARGIN): List<Omitted> {
        val leaves = mutableListOf<EditorCell>()
        fun walk(cell: EditorCell) {
            if (cell is EditorCell_Collection) cell.forEach(::walk) else leaves += cell
        }
        walk(root)
        val result = mutableListOf<Omitted>()
        leaves.forEachIndexed { i, cell ->
            if (!isNonTextLeaf(cell)) return@forEachIndexed
            val kind = when (cell) {
                is EditorCell_Image -> Kind.IMAGE
                is EditorCell_WithComponent -> Kind.COMPONENT
                else -> Kind.PAINTED
            }
            result += Omitted(
                cell, kind, cell.javaClass.name.substringAfterLast('.'),
                neighbourText(leaves, i, -1), neighbourText(leaves, i, 1),
                cell.x - root.x + imageMargin, cell.y - root.y + imageMargin, cell.width, cell.height,
            )
        }
        return result
    }

    /**
     * `{count, cells}` for the envelope details, listing at most [MAX_LISTED] cells; a cell the grid text or HTML page shows
     * carries `shownAs` (its rule glyph, `⟦n⟧` placeholder or `image`).
     */
    fun details(omitted: List<Omitted>, shownAs: Map<EditorCell, String> = emptyMap()): Map<String, Any?> =
        linkedMapOf("count" to omitted.size, "cells" to omitted.take(MAX_LISTED).map { it.toDetails(shownAs[it.cell]) })

    /** The envelope warning naming [omitted] the printout leaves out, which must not be empty. */
    fun warning(omitted: List<Omitted>): String =
        "${omitted.size} cell(s) without text (${classSummary(omitted)}) are missing from this printout: drawn shapes such " +
            "as rules or fraction bars, images or widgets; details.omittedCells gives each one's node, neighbouring text and " +
            "IMAGE bounds; format IMAGE draws them"

    /** The envelope warning for [shown] cells the grid text or the HTML page draws as a rule, placeholder or image; not empty. */
    fun shownWarning(shown: List<Omitted>, shownAs: Map<EditorCell, String>): String {
        val forms = shown.mapNotNull { shownAs[it.cell] }
        val kinds = listOfNotNull(
            "${CellGridTextRenderer.RULE} for a horizontal rule".takeIf { forms.any { it == CellGridTextRenderer.RULE.toString() } },
            "${CellGridTextRenderer.VERTICAL_RULE} for a vertical rule".takeIf { forms.any { it == CellGridTextRenderer.VERTICAL_RULE.toString() } },
            "⟦n⟧ for the n-th entry of details.omittedCells.cells".takeIf { forms.any { it.startsWith("⟦") } },
            "a cut-out of editor.png (class im, data-o=n for the n-th entry of details.omittedCells.cells)".takeIf { forms.any { it == "image" } },
        )
        return "${shown.size} cell(s) without text (${classSummary(shown)}) are drawn in this printout as ${kinds.joinToString(", ")}; " +
            "details.omittedCells gives each one's node, neighbouring text, IMAGE bounds and shownAs; format IMAGE draws them"
    }

    /** `HLineCellProvider$1 ×4, EditorCell_Image` style summary of the cell classes. */
    fun classSummary(omitted: List<Omitted>): String =
        omitted.groupingBy { it.cellClass }.eachCount().entries.sortedBy { it.key }
            .joinToString(", ") { (cls, n) -> if (n > 1) "$cls ×$n" else cls }

    private fun neighbourText(leaves: List<EditorCell>, from: Int, step: Int): String? {
        var i = from + step
        while (i in leaves.indices) {
            val cell = leaves[i]
            if (cell is EditorCell_Label) {
                val text = cell.renderedText.trim()
                if (text.isNotEmpty()) {
                    return if (text.length <= MAX_NEIGHBOUR_CHARS) text
                    else if (step < 0) "…" + text.takeLast(MAX_NEIGHBOUR_CHARS) else text.take(MAX_NEIGHBOUR_CHARS) + "…"
                }
            }
            i += step
        }
        return null
    }
}
