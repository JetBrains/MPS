package jetbrains.mps.agents.mcp.tools.common

import jetbrains.mps.editor.runtime.style.StyleAttributes
import jetbrains.mps.editor.runtime.style.TableComponent
import jetbrains.mps.nodeEditor.EditorSettings
import jetbrains.mps.nodeEditor.cellLayout.PunctuationUtil
import jetbrains.mps.nodeEditor.cells.EditorCell_Label
import jetbrains.mps.openapi.editor.cells.EditorCell
import jetbrains.mps.openapi.editor.cells.EditorCell_Collection
import kotlin.math.max
import kotlin.math.min
import kotlin.math.roundToInt

/**
 * Lays labels out as a character grid by their pixel geometry: one char width for the whole grid, rows by clustering the
 * vertical line centres. A label within [NEIGHBOUR_GAP_CHARS] of its left neighbour follows it with one space when
 * `renderText()` would put one there ([Label.leftGap]) or the texts are visibly apart (half a char), and glued otherwise;
 * after a wider gap its column is `x / charWidth`, never overwriting.
 */
internal object CellGridTextRenderer {

    /**
     * [x] is where the text is drawn (gaps and padding excluded). [width] may exceed the text when a table stretches the cell
     * to its column, so a text ends at most `text.length` chars after [x]. [leftGap] is whether the editor separates the
     * label from its left neighbour.
     */
    data class Label(val text: String, val x: Int, val y: Int, val width: Int, val height: Int, val leftGap: Boolean = true)

    private const val NEIGHBOUR_GAP_CHARS = 1.5

    private class Piece(val text: String, val x: Int, val right: Int, val centre: Double, val leftGap: Boolean)

    /** The grid text of [labels], or null when a label's text would be missing from it. */
    fun render(labels: List<Label>, charWidth: Int, lineHeight: Int): String? {
        require(charWidth > 0 && lineHeight > 0) { "charWidth and lineHeight must be positive: $charWidth, $lineHeight" }
        val pieces = labels.flatMap { label ->
            val lines = label.text.split('\n')
            val lineSpan = if (label.height >= lines.size) label.height.toDouble() / lines.size else lineHeight.toDouble()
            lines.mapIndexedNotNull { i, line ->
                if (line.isEmpty()) null else Piece(line, label.x, label.x + min(label.width, line.length * charWidth), label.y + lineSpan * (i + 0.5), label.leftGap)
            }
        }
        if (pieces.isEmpty()) return ""

        val rows = mutableListOf<MutableList<Piece>>()
        val anchors = mutableListOf<Double>()
        for (piece in pieces.sortedBy { it.centre }) {
            if (anchors.isNotEmpty() && piece.centre - anchors.last() <= lineHeight / 2.0) {
                rows.last() += piece
            } else {
                rows += mutableListOf(piece)
                anchors += piece.centre
            }
        }

        val minX = pieces.minOf { it.x }
        val out = StringBuilder()
        rows.forEachIndexed { r, row ->
            if (r > 0) {
                out.append('\n')
                val gap = anchors[r] - anchors[r - 1]
                if (gap > 1.5 * lineHeight) repeat(max(1, (gap / lineHeight).roundToInt() - 1)) { out.append('\n') }
            }
            val line = StringBuilder()
            var previousRight = Int.MIN_VALUE
            for (piece in row.sortedBy { it.x }) {
                val pixelColumn = ((piece.x - minX).toDouble() / charWidth).roundToInt()
                val column = when {
                    line.isEmpty() -> pixelColumn
                    piece.x - previousRight <= NEIGHBOUR_GAP_CHARS * charWidth ->
                        line.length + if (piece.leftGap || piece.x - previousRight >= charWidth / 2.0) 1 else 0
                    else -> max(pixelColumn, line.length + 1)
                }
                while (line.length < column) line.append(' ')
                line.append(piece.text)
                previousRight = max(previousRight, piece.right)
            }
            out.append(line.trimEnd())
        }
        val text = out.toString()
        return if (missingTexts(labels, text).isEmpty()) text else null
    }

    /** The label lines that do not occur in [text]: the invariant [render] guards. */
    fun missingTexts(labels: List<Label>, text: String): List<String> =
        labels.flatMap { it.text.split('\n') }.map { it.trim() }.filter { it.isNotEmpty() && !text.contains(it) }
}

/** Reads the cell tree for [CellGridTextRenderer]: when to use it, and its labels. */
internal object CellGridText {

    /** Whether a visible collection is a table (`EditorCell_Table`, `CellLayout_Table` users); grid layout alone is not. */
    fun containsTable(root: EditorCell): Boolean =
        visibleCells(root).any { it is EditorCell_Collection && it.style.get(StyleAttributes.TABLE_COMPONENT) == TableComponent.VERTICAL_COLLECTION }

    /**
     * The grid text of the labels under [root] (folded collections contribute their placeholder), or null when the
     * renderer's invariant fails. A label's gap flag is the one `CellLayout_Horizontal.doLayoutText` uses. Cells without
     * text are left out; [NonTextCells] reports them.
     */
    fun render(root: EditorCell): String? {
        val labels = mutableListOf<CellGridTextRenderer.Label>()
        for (cell in visibleCells(root)) {
            if (cell !is EditorCell_Label) continue
            val text = cell.renderedText
            if (text.isNotBlank()) {
                val x = cell.x + cell.leftInset
                val width = (cell.width - cell.leftInset - cell.rightInset).coerceAtLeast(0)
                labels += CellGridTextRenderer.Label(text, x, cell.y, width, cell.height, PunctuationUtil.hasLeftGap(cell))
            }
        }
        val metrics = EditorSettings.getInstance().defaultEditorFontMetrics
        return CellGridTextRenderer.render(labels, metrics.getWidth(" "), metrics.height)
    }

    private fun visibleCells(root: EditorCell): Sequence<EditorCell> = sequence {
        val queue = ArrayDeque<EditorCell>().apply { add(root) }
        while (queue.isNotEmpty()) {
            val cell = queue.removeFirst()
            yield(cell)
            if (cell is EditorCell_Collection) cell.forEach(queue::add)
        }
    }
}
