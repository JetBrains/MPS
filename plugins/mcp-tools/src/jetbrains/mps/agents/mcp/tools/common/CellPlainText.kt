package jetbrains.mps.agents.mcp.tools.common

import jetbrains.mps.editor.runtime.TextBuilderImpl
import jetbrains.mps.editor.runtime.style.StyleAttributes
import jetbrains.mps.nodeEditor.cellLayout.CellLayout_Horizontal
import jetbrains.mps.nodeEditor.cellLayout.CellLayout_Indent
import jetbrains.mps.nodeEditor.cellLayout.CellLayout_Vertical
import jetbrains.mps.nodeEditor.cellLayout.PunctuationUtil
import jetbrains.mps.nodeEditor.cells.EditorCell_Indent
import jetbrains.mps.openapi.editor.TextBuilder
import jetbrains.mps.openapi.editor.cells.EditorCell
import jetbrains.mps.openapi.editor.cells.EditorCell_Collection

/**
 * `renderText()` of a cell tree, except for an indent-layout collection that has a block of several rows among its
 * cells (a vertical list inside an indent line, as in the `ConceptDeclaration` editor).
 * `CellLayout_Indent.doLayoutText` joins its lines with `\n` inside one text row, so the second and later rows of such
 * a block land after the whole collection, padded by its char count. Such a collection is laid out by [IndentLines]
 * instead; every other collection is composed the way its layout's `doLayoutText` does, so a projection without such a
 * block gets exactly `renderText()`.
 */
internal object CellPlainText {

    fun render(root: EditorCell): String = text(root).text

    private fun text(cell: EditorCell): TextBuilder {
        if (cell !is EditorCell_Collection) return cell.renderText()
        return when (cell.cellLayout.javaClass) {
            CellLayout_Indent::class.java -> indentText(cell)
            CellLayout_Horizontal::class.java -> TextBuilderImpl().also { result ->
                for (child in cell) result.appendToTheRight(text(child), PunctuationUtil.hasLeftGap(child))
            }
            CellLayout_Vertical::class.java -> TextBuilderImpl().also { result ->
                for (child in cell) result.appendToTheBottom(text(child))
            }
            else -> cell.renderText()
        }
    }

    /**
     * `renderText()`, unless a leaf spans several rows; then line by line. A text of one row means no nested collection
     * was laid out line by line (that gives at least two rows, and a horizontal or vertical composition keeps them), so
     * every leaf text is its `renderText()`.
     */
    private fun indentText(collection: EditorCell_Collection): TextBuilder {
        val leaves = mutableListOf<EditorCell>()
        collectLeaves(collection, leaves)
        val texts = leaves.map(::text)
        if (texts.all { it.size <= 1 }) return collection.renderText()
        val lines = IndentLines(EditorCell_Indent.getIndentText())
        var newLineAfter = false
        leaves.forEachIndexed { i, leaf ->
            if (isOnNewLine(collection, leaf) || newLineAfter) {
                newLineAfter = false
                lines.newLine(indentLevel(collection, leaf))
            }
            lines.append(texts[i], PunctuationUtil.hasLeftGap(leaf))
            if (CellLayout_Indent.isNewLineAfter(collection, leaf)) newLineAfter = true
        }
        return lines.result()
    }

    /** The cells `CellLayout_Indent` lays out one after another: nested non-empty indent collections are flattened. */
    private fun collectLeaves(collection: EditorCell_Collection, leaves: MutableList<EditorCell>) {
        for (child in collection) {
            if (child is EditorCell_Collection && child.cellLayout is CellLayout_Indent && !child.isEmpty) {
                collectLeaves(child, leaves)
            } else {
                leaves += child
            }
        }
    }

    /** `CellLayout_Indent.isOnNewLine`, which is package-private. */
    private fun isOnNewLine(root: EditorCell, cell: EditorCell): Boolean {
        var current = cell
        while (current !== root) {
            if (current.style.get(StyleAttributes.INDENT_LAYOUT_ON_NEW_LINE) == true) return true
            val parent = current.parent ?: return false
            if (parent.firstCell() !== current) return false
            current = parent
        }
        return false
    }

    private fun indentLevel(root: EditorCell, cell: EditorCell): Int =
        generateSequence(cell) { it.parent }.takeWhile { it !== root }
            .count { it.style.get(StyleAttributes.INDENT_LAYOUT_INDENT) == true }

    /**
     * The lines of an indent layout, each as high as its highest block: a block's rows stay in the column where the
     * block starts, the cells after it on its line follow its widest row, and the next line starts below its last row.
     * A gap is one space, written as `CellLayout_Indent` writes it: after anything already written, also at the start
     * of a line. A block whose rows hold `\n` (an indent collection inside another layout) is split into one row per
     * text line; a `\n` in its last row ends the line there, and the cells after the block follow its last text line.
     */
    class IndentLines(private val indentText: String) {
        private val result = TextBuilderImpl()
        private var line: TextBuilder = TextBuilderImpl("")
        private var written = false

        fun newLine(indent: Int) {
            result.appendToTheBottom(line)
            line = TextBuilderImpl("")
            written = true
            repeat(indent) { line.appendToTheRight(TextBuilderImpl(indentText), false) }
        }

        fun append(block: TextBuilder, gap: Boolean) {
            if (gap && (written || line.width != 0)) line.appendToTheRight(TextBuilderImpl(" "), false)
            if (block.width != 0) written = true
            if (block.lines.none { '\n' in it }) {
                line.appendToTheRight(block, false)
                return
            }
            val rows = block.lines.flatMap { it.split('\n') }.map { it.trimEnd() }
            if ('\n' !in block.lines.last()) {
                line.appendToTheRight(stack(rows), false)
                return
            }
            line.appendToTheRight(stack(rows.dropLast(1)), false)
            result.appendToTheBottom(line)
            line = TextBuilderImpl(rows.last())
        }

        fun result(): TextBuilder = TextBuilderImpl().appendToTheBottom(result).appendToTheBottom(line)

        private fun stack(rows: List<String>): TextBuilder =
            rows.fold(TextBuilderImpl() as TextBuilder) { stack, row -> stack.appendToTheBottom(TextBuilderImpl(row)) }
    }
}
