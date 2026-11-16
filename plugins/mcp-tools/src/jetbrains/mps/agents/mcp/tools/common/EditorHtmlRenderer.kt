package jetbrains.mps.agents.mcp.tools.common

import jetbrains.mps.editor.runtime.style.ScriptKind
import jetbrains.mps.editor.runtime.style.StyleAttributes
import jetbrains.mps.editor.runtime.style.TableComponent
import jetbrains.mps.nodeEditor.EditorSettings
import jetbrains.mps.nodeEditor.cellLayout.CellLayout_Superscript
import jetbrains.mps.nodeEditor.cellLayout.CellLayout_Table
import jetbrains.mps.nodeEditor.cellLayout.CellLayout_Vertical
import jetbrains.mps.nodeEditor.cellLayout.PunctuationUtil
import jetbrains.mps.editor.runtime.EditorCell_Empty
import jetbrains.mps.nodeEditor.cells.APICellAdapter
import jetbrains.mps.nodeEditor.cells.EditorCell_Basic
import jetbrains.mps.nodeEditor.cells.EditorCell_Label
import jetbrains.mps.openapi.editor.cells.EditorCell
import jetbrains.mps.openapi.editor.cells.EditorCell_Collection
import org.jetbrains.mps.openapi.model.SNode
import org.jetbrains.mps.openapi.persistence.PersistenceFacade
import java.awt.Color
import kotlin.math.abs
import kotlin.math.max
import kotlin.math.roundToInt

/**
 * A standalone HTML page of an editor projection, built from the cell tree rather than `renderHtml()`. The text is one
 * `<pre>`: line breaks and indentation come from the cell geometry, so any cell layout reads in order. What is laid out in
 * two dimensions becomes a CSS box inside the line: a vertical collection beside other text of its line (a fraction, the
 * bounds of a big operator) a column, a `CellLayout_Table` a grid of lines (rows or columns) and cells, a superscript
 * layout `<sup>`/`<sub>`, brackets the editor draws borders. Every cell that starts the projection of a node carries the
 * node's id, concept and role, and a reference cell its target. Cells without text are a rule or a cut-out of
 * `editor.png` (the painted editor next to the page).
 *
 * Call it after the editor was painted for that image: painting moves some cells (a fraction bar takes its parent's width).
 */
internal object EditorHtmlRenderer {

    const val PAGE = "index.html"
    const val IMAGE = "editor.png"

    /**
     * [shownAs] is how each cell without text appears: `─`, `│` or `image`. [missing] are the shown leaves (labels with
     * text, cells without text) the page does not contain, which should never happen.
     */
    class Page(val html: String, val shownAs: Map<EditorCell, String>, val missing: List<EditorCell>)

    private const val TOLERANCE = 2
    private const val NEIGHBOUR_GAP_CHARS = 1.5

    fun render(root: EditorCell, node: SNode, omitted: List<NonTextCells.Omitted>, background: Color?, foreground: Color? = null): Page {
        val metrics = EditorSettings.getInstance().defaultEditorFontMetrics
        val writer = Writer(root, node, omitted, metrics.getWidth(" "), metrics.height)
        writer.emit(root, Flow(root.x), null)
        writer.closeAll()
        return Page(writer.page(background, foreground), writer.shownAs, writer.missing())
    }

    private class Flow(val left: Int) {
        var started = false
        var bottom = 0
        var right = 0
    }

    private class OpenTag(val text: String) {
        var written = false
    }

    private enum class Kind { FLOW, BOX, BLOCK, TABLE, GRID, SUPERSCRIPT }

    private class Writer(
        val root: EditorCell,
        val node: SNode,
        omitted: List<NonTextCells.Omitted>,
        val charWidth: Int,
        val lineHeight: Int,
    ) {
        val out = StringBuilder()
        val shownAs = LinkedHashMap<EditorCell, String>()
        private val omittedByCell = omitted.withIndex().associate { (i, o) -> o.cell to (i + 1 to o) }
        private val styleClasses = LinkedHashMap<String, String>()
        private val tableSizes = sortedSetOf<Int>()
        private val pending = ArrayList<OpenTag>()
        private val model = node.model
        private val baseFontSize = EditorSettings.getInstance().fontSize.toFloat()

        /** Leaves that show something, in editor order, and the range of them under each collection. */
        private val leaves = ArrayList<EditorCell>()
        private val ranges = HashMap<EditorCell, IntRange>()
        private val emitted = HashSet<EditorCell>()
        private val modelAliases = LinkedHashMap<String, String>()

        fun missing(): List<EditorCell> = leaves.filter { it !in emitted }

        init {
            fun walk(cell: EditorCell) {
                // A Swing collection (a diagram) is one cut-out of the image, whatever cells it holds.
                if (cell is EditorCell_Collection && cell !in omittedByCell) {
                    val first = leaves.size
                    cell.forEach(::walk)
                    if (leaves.size > first) ranges[cell] = first until leaves.size
                } else if (isShown(cell)) {
                    leaves += cell
                }
            }
            walk(root)
        }

        private fun isShown(cell: EditorCell) =
            (cell is EditorCell_Label && cell.renderedText.isNotBlank()) || cell in omittedByCell

        // ---- structure -------------------------------------------------------------------------------------------------

        fun emit(cell: EditorCell, flow: Flow, parentNode: SNode?) {
            val attrs = nodeAttributes(cell, parentNode)
            when {
                cell in omittedByCell -> item(cell, flow) { nonText(cell, attrs, inColumn = false) }
                cell is EditorCell_Collection -> when (kindOf(cell)) {
                    Kind.FLOW -> {
                        val tag = if (attrs.isEmpty()) null else OpenTag("<span$attrs>").also { pending += it }
                        cell.forEach { emit(it, flow, cell.sNode) }
                        if (tag != null) close(tag)
                    }
                    Kind.BOX -> item(cell, flow) {
                        out.append("<span class=\"ib br${alignment(cell)}\"$attrs>")
                        val inner = Flow(cell.x + cell.leftInset + EditorCell_Basic.BRACKET_WIDTH)
                        cell.forEach { emit(it, inner, cell.sNode) }
                        closeAll()
                        out.append("</span>")
                    }
                    Kind.BLOCK -> item(cell, flow) { block(cell, attrs) }
                    Kind.TABLE -> item(cell, flow) { table(cell, attrs) }
                    Kind.GRID -> item(cell, flow) { gridTable(cell, attrs) }
                    Kind.SUPERSCRIPT -> {
                        val tag = OpenTag("<span class=\"ss${brackets(cell)}\"$attrs>").also { pending += it }
                        for (child in cell) {
                            when (child.style.get(StyleAttributes.SCRIPT_KIND)) {
                                ScriptKind.SUPERSCRIPT -> script(child, flow, cell.sNode, "sup")
                                ScriptKind.SUBSCRIPT -> script(child, flow, cell.sNode, "sub")
                                else -> emit(child, flow, cell.sNode)
                            }
                        }
                        close(tag)
                    }
                }
                cell is EditorCell_Label -> if (cell.renderedText.isNotBlank()) item(cell, flow) { label(cell, attrs) }
            }
        }

        private fun kindOf(cell: EditorCell_Collection): Kind {
            val layout = cell.cellLayout
            return when {
                ranges[cell] == null -> Kind.FLOW
                layout is CellLayout_Table -> Kind.TABLE
                layout is CellLayout_Vertical && cell.style.get(StyleAttributes.TABLE_COMPONENT) == TableComponent.VERTICAL_COLLECTION -> Kind.GRID
                layout is CellLayout_Superscript -> Kind.SUPERSCRIPT
                layout is CellLayout_Vertical && cell.count { ranges[it] != null || isShown(it) } >= 2 && besideOtherText(cell) -> Kind.BLOCK
                cell.style.get(StyleAttributes.DRAW_BRACKETS) == true -> Kind.BOX
                else -> Kind.FLOW
            }
        }

        /** Whether text right before or after [cell] sits beside it, on a line that runs through the collection. */
        private fun besideOtherText(cell: EditorCell): Boolean = neighbourBeside(cell) != null

        /**
         * The text of the line [cell] sits in: the nearest leaf before (else after) it, skipping the text of other boxes
         * that span several rows (the bounds of a big operator before a matrix are not its line).
         */
        private fun neighbourBeside(cell: EditorCell): EditorCell? {
            val range = ranges[cell] ?: return null
            val ancestors = generateSequence(cell) { it.parent }.toSet()
            fun beside(leaf: EditorCell, left: Boolean): Boolean {
                val centre = leaf.y + leaf.height / 2
                if (centre <= cell.y || centre >= cell.y + cell.height) return false
                return if (left) leaf.x + leaf.width <= cell.x + TOLERANCE else leaf.x >= cell.x + cell.width - TOLERANCE
            }
            /** The outermost box around [leaf], below the collections that also hold [cell], that spans several rows. */
            fun tallBox(leaf: EditorCell): EditorCell? =
                generateSequence(leaf.parent) { it.parent }.takeWhile { it !in ancestors }
                    .lastOrNull { it.height > lineHeight * 3 / 2 && ranges[it] != null }
            fun scan(start: Int, step: Int): EditorCell? {
                var i = start
                while (i in leaves.indices) {
                    val leaf = leaves[i]
                    val box = tallBox(leaf)
                    if (box == null) return leaf.takeIf { beside(it, step < 0) }
                    // Another multi-row box right beside this one (two columns side by side) is its line too.
                    if (overlapsVertically(box, cell) && if (step < 0) box.x + box.width <= cell.x + TOLERANCE else box.x >= cell.x + cell.width - TOLERANCE) return box
                    val boxRange = ranges.getValue(box)
                    i = if (step < 0) boxRange.first - 1 else boxRange.last + 1
                }
                return null
            }
            return scan(range.first - 1, -1) ?: scan(range.last + 1, 1)
        }

        private fun overlapsVertically(a: EditorCell, b: EditorCell) = a.y < b.y + b.height && b.y < a.y + a.height

        /**
         * How a box sits in its line, read from the text beside it: level with the box's first row (` at`), its last row
         * (` ab`), or its middle (the default, e.g. a matrix or a fraction).
         */
        private fun alignment(cell: EditorCell): String {
            val neighbour = neighbourBeside(cell) ?: return ""
            val range = ranges[cell] ?: return ""
            fun centre(c: EditorCell) = c.y + c.height / 2.0
            val at = centre(neighbour)
            val candidates = listOf(" at" to centre(leaves[range.first]), "" to centre(cell), " ab" to centre(leaves[range.last]))
            return candidates.minByOrNull { abs(it.second - at) }!!.first
        }

        private fun script(cell: EditorCell, flow: Flow, parentNode: SNode?, tag: String) {
            if (cell !is EditorCell_Collection && !isShown(cell)) return
            if (cell is EditorCell_Collection && ranges[cell] == null) return
            item(cell, flow, glue = true) {
                out.append("<$tag>")
                emit(cell, Flow(textLeft(cell)), parentNode)
                closeAll()
                out.append("</$tag>")
            }
        }

        private fun block(cell: EditorCell_Collection, attrs: String) {
            val align = when (cell.style.get(StyleAttributes.HORIZONTAL_ALIGN)?.name) {
                "CENTER" -> " ac"
                "RIGHT" -> " ar"
                else -> ""
            }
            out.append("<span class=\"v$align${alignment(cell)}${brackets(cell)}\"$attrs>")
            // Whitespace between flex items is not rendered: a newline between rows keeps the source readable in order.
            var firstRow = true
            for (child in cell) {
                val entry = omittedByCell[child]
                val rule = entry != null && isRule(child)
                if (!rule && child is EditorCell_Collection && ranges[child] == null) continue
                if (!rule && child !is EditorCell_Collection && !isShown(child)) continue
                if (!firstRow) out.append('\n')
                firstRow = false
                if (rule) {
                    out.append("<span class=\"hr\" data-o=\"${entry!!.first}\"></span>")
                    shownAs[child] = CellGridTextRenderer.RULE.toString()
                    emitted += child
                    continue
                }
                out.append("<span class=\"vi\">")
                emit(child, Flow(textLeft(child)), cell.sNode)
                closeAll()
                out.append("</span>")
            }
            out.append("</span>")
        }

        /**
         * The lines of a table are found as `CellLayout_Table` does: in each child, the first nested table collection of the
         * transposed orientation; its children are the line's cells. A child without one is a line of one cell. Lines are
         * columns when they stand side by side.
         */
        private fun table(cell: EditorCell_Collection, attrs: String) {
            val orientation = cell.style.get(StyleAttributes.TABLE_COMPONENT)
            val children = cell.filter(::hasContent)
            val lineOf = children.associateWith { findLine(it, orientation.transpose()) }
            val cellsOf = children.associateWith { child -> lineOf[child]?.filter(::hasContent) ?: listOf(child) }
            val box = { child: EditorCell -> lineOf[child] ?: child }
            val first = cellsOf[children.firstOrNull()].orEmpty()
            val columns = when {
                children.size >= 2 -> box(children[1]).x >= box(children[0]).let { it.x + it.width } - TOLERANCE
                first.size >= 2 -> first[1].y >= first[0].y + first[0].height - TOLERANCE
                else -> false
            }
            val size = max(1, cellsOf.values.maxOfOrNull { it.size } ?: 1)
            tableSizes += size
            out.append("<span class=\"t ${if (columns) "cols" else "rows"} n$size${alignment(cell)}${brackets(cell)}\"$attrs>")
            for ((i, child) in children.withIndex()) {
                if (i > 0) out.append('\n')
                val line = lineOf[child]
                val bracketed = brackets(child).ifEmpty { line?.let(::brackets).orEmpty() }
                out.append("<span class=\"tl$bracketed\"${nodeAttributes(child, cell.sNode)}>")
                if (line != null && ranges[line] != ranges[child]) {
                    // The line has company inside its child (a label before or after the row): keep all of it, in one cell.
                    out.append("<span class=\"tc\" style=\"grid-${if (columns) "row" else "column"}:1/-1\">")
                    emit(child, Flow(textLeft(child)), child.sNode)
                    closeAll()
                    out.append("</span></span>")
                    continue
                }
                val lineNode = (line ?: child).sNode
                for ((k, c) in cellsOf.getValue(child).withIndex()) {
                    if (k > 0) out.append(' ')
                    out.append("<span class=\"tc\">")
                    emit(c, Flow(textLeft(c)), lineNode)
                    closeAll()
                    out.append("</span>")
                }
                out.append("</span>")
            }
            out.append("</span>")
        }

        /**
         * A vertical collection styled as a table column (`EditorCell_Table` of the editor-tables runtime): its children are
         * rows whose cells share columns by position, blank cells included. Columns come from the cells' x positions, so a
         * cell keeps its column when the cells before it are blank; `EditorCell_Table` paints grid lines, kept as borders.
         */
        private fun gridTable(cell: EditorCell_Collection, attrs: String) {
            val rows = cell.filter { it.width > 0 && it.height > 0 }
            val cellsOf = rows.associateWith { row ->
                if (row is EditorCell_Collection) row.filter { it.width > 0 && it.height > 0 && it !is EditorCell_Empty } else listOf(row)
            }
            val starts = mutableListOf<Int>()
            for (x in cellsOf.values.flatten().map { it.x }.sorted()) {
                if (starts.isEmpty() || x - starts.last() > TOLERANCE) starts += x
            }
            val size = max(1, starts.size)
            tableSizes += size
            val lined = generateSequence<Class<*>>(cell.javaClass) { it.superclass }.any { it.simpleName == "EditorCell_Table" }
            out.append("<span class=\"t rows n$size${if (lined) " grid" else ""}${alignment(cell)}${brackets(cell)}\"$attrs>")
            for ((r, row) in rows.withIndex()) {
                if (r > 0) out.append('\n')
                out.append("<span class=\"tl\"${if (row === cell) "" else nodeAttributes(row, cell.sNode)}>")
                val slots = arrayOfNulls<EditorCell>(size)
                for (c in cellsOf.getValue(row)) {
                    val column = starts.indices.minByOrNull { abs(starts[it] - c.x) } ?: 0
                    if (slots[column] == null) slots[column] = c
                }
                // A row of one wide cell (the empty-table placeholder) spans the table.
                val single = cellsOf.getValue(row).size == 1 && slots.count { it != null } == 1
                for ((i, c) in slots.withIndex()) {
                    if (single && c == null) continue
                    if (i > 0 && !single) out.append(' ')
                    out.append(if (single) "<span class=\"tc\" style=\"grid-column:1/-1\">" else "<span class=\"tc\">")
                    if (c != null) {
                        emit(c, Flow(textLeft(c)), row.sNode)
                        closeAll()
                    }
                    out.append("</span>")
                    if (single) break
                }
                out.append("</span>")
            }
            out.append("</span>")
        }

        /** Where the text of a box starts: the text edge of its first label, so a box's own inset is no indentation. */
        private fun textLeft(cell: EditorCell): Int {
            val first = if (cell is EditorCell_Collection) ranges[cell]?.let { leaves[it.first] } else cell
            return when {
                first is EditorCell_Label && first.x >= cell.x -> first.x + first.leftInset
                else -> cell.x
            }
        }

        private fun hasContent(cell: EditorCell) = (cell is EditorCell_Collection && ranges[cell] != null) || isShown(cell)

        private fun findLine(cell: EditorCell, orientation: TableComponent): EditorCell_Collection? {
            if (cell !is EditorCell_Collection) return null
            if (cell.cellLayout is CellLayout_Table && cell.style.get(StyleAttributes.TABLE_COMPONENT) == orientation) return cell
            for (child in cell) findLine(child, orientation)?.let { return it }
            return null
        }

        private fun label(cell: EditorCell_Label, attrs: String) {
            emitted += cell
            val text = escape(cell.renderedText)
            val classes = listOfNotNull(styleClass(cell), if (cell.style.get(StyleAttributes.DRAW_BRACKETS) == true) "ib br" else null)
            val target = APICellAdapter.getSNodeWRTReference(cell)?.takeIf { it != cell.sNode }?.let { " data-t=\"${escape(nodeKey(it))}\"" } ?: ""
            if (classes.isEmpty() && attrs.isEmpty() && target.isEmpty()) {
                out.append(text)
            } else {
                val cls = if (classes.isEmpty()) "" else " class=\"${classes.joinToString(" ")}\""
                out.append("<span$cls$attrs$target>$text</span>")
            }
        }

        private fun nonText(cell: EditorCell, attrs: String, inColumn: Boolean) {
            emitted += cell
            val (index, omitted) = omittedByCell.getValue(cell)
            when {
                isRule(cell) && !inColumn -> {
                    out.append("<span class=\"hrt\" data-o=\"$index\"$attrs>")
                    repeat(max(1, (cell.width.toDouble() / charWidth).roundToInt())) { out.append(CellGridTextRenderer.RULE) }
                    out.append("</span>")
                    shownAs[cell] = CellGridTextRenderer.RULE.toString()
                }
                cell.width <= 3 && cell.height >= lineHeight * 3 / 4 -> {
                    out.append("<span class=\"vr\" data-o=\"$index\"$attrs style=\"height:${cell.height}px\"></span>")
                    shownAs[cell] = CellGridTextRenderer.VERTICAL_RULE.toString()
                }
                else -> {
                    val title = escape("⟦$index⟧ ${cell.sNode?.concept?.name ?: omitted.cellClass}")
                    out.append(
                        "<span class=\"im\" data-o=\"$index\" title=\"$title\"$attrs style=\"width:${omitted.width}px;" +
                            "height:${omitted.height}px;background-position:-${omitted.x}px -${omitted.y}px\"></span>",
                    )
                    shownAs[cell] = "image"
                }
            }
        }

        private fun isRule(cell: EditorCell) = cell.height <= max(3, lineHeight / 4) && cell.width >= 2

        // ---- flow -------------------------------------------------------------------------------------------------------

        /**
         * Writes the separator before the box of [cell] (a newline and indentation when it starts a new line, else the
         * spaces the editor leaves before it), opens the pending node spans, then [body].
         */
        private fun item(cell: EditorCell, flow: Flow, glue: Boolean = false, body: () -> Unit) {
            val x = if (cell is EditorCell_Label) cell.x + cell.leftInset else cell.x
            // A label's text may be narrower than its cell (a grid or table stretches it): the gap after it starts at the text.
            val right = if (cell is EditorCell_Label) {
                x + minOf(cell.width - cell.leftInset - cell.rightInset, cell.renderedText.length * charWidth)
            } else cell.x + cell.width
            val bottom = cell.y + cell.height
            when {
                !flow.started -> {
                    spaces((x - flow.left).toDouble() / charWidth)
                    flow.started = true
                    flow.bottom = bottom
                }
                cell.y >= flow.bottom - TOLERANCE -> {
                    out.append('\n')
                    if (cell.y - flow.bottom > lineHeight / 2) out.append('\n')
                    spaces((x - flow.left).toDouble() / charWidth)
                    flow.bottom = bottom
                }
                else -> {
                    val gap = x - flow.right
                    if (!glue) {
                        if (gap <= NEIGHBOUR_GAP_CHARS * charWidth) {
                            if (gap > 0 && (hasLeftGap(cell) || gap >= charWidth / 2.0)) out.append(' ')
                        } else {
                            spaces(gap.toDouble() / charWidth)
                        }
                    }
                    flow.bottom = max(flow.bottom, bottom)
                }
            }
            flow.right = right
            for (tag in pending) {
                if (!tag.written) {
                    out.append(tag.text)
                    tag.written = true
                }
            }
            body()
        }

        private fun hasLeftGap(cell: EditorCell): Boolean {
            val leaf = if (cell is EditorCell_Collection) ranges[cell]?.let { leaves[it.first] } else cell
            return leaf != null && PunctuationUtil.hasLeftGap(leaf)
        }

        private fun spaces(chars: Double) = repeat(max(0, chars.roundToInt())) { out.append(' ') }

        private fun close(tag: OpenTag) {
            pending -= tag
            if (tag.written) out.append("</span>")
        }

        /** Drops the node spans opened inside a box that never got content; the box closes its own element. */
        fun closeAll() {
            pending.removeAll { !it.written }
        }

        // ---- attributes -------------------------------------------------------------------------------------------------

        private fun nodeAttributes(cell: EditorCell, parentNode: SNode?): String {
            val node = cell.sNode ?: return ""
            if (parentNode != null && node == parentNode) return ""
            val role = node.containmentLink?.name?.takeIf { node != this.node }
            return " data-n=\"${escape(nodeKey(node))}\" data-c=\"${escape(node.concept.name)}\"" + (role?.let { " data-r=\"${escape(it)}\"" } ?: "")
        }

        /**
         * The node id within the page's model; for another model `mN/<node id>`, `mN` being declared once by
         * `<meta name="mps-model-mN">` (the full node reference is that model reference, `/`, the id).
         */
        private fun nodeKey(target: SNode): String {
            val targetModel = target.model
            if (targetModel != null && targetModel == model) return target.nodeId.toString()
            val modelRef = target.reference.modelReference ?: return PersistenceFacade.getInstance().asString(target.reference)
            val alias = modelAliases.getOrPut(PersistenceFacade.getInstance().asString(modelRef)) { "m${modelAliases.size + 1}" }
            return "$alias/${target.nodeId}"
        }

        private fun brackets(cell: EditorCell) = if (cell.style.get(StyleAttributes.DRAW_BRACKETS) == true) " br" else ""

        private fun styleClass(cell: EditorCell_Label): String? {
            val line = cell.renderedTextLine
            val css = mutableListOf<String>()
            val color = line.textColor
            if (color != null && !(color.red == color.green && color.green == color.blue && color.red <= 8)) css += "color:${hex(color)}"
            val font = line.font
            // The registry hands out dedicated faces (JetBrainsMono-Bold) whose Font style says PLAIN, and the cell's
            // FONT_STYLE does not always reach the painted face: the face name is what the editor draws.
            val face = font.fontName.lowercase()
            if (font.isBold || "bold" in face) css += "font-weight:bold"
            if (font.isItalic || "italic" in face || "oblique" in face) css += "font-style:italic"
            if (abs(font.size2D - baseFontSize) > 0.5f) css += "font-size:${(100 * font.size2D / baseFontSize).roundToInt()}%"
            val decorations = listOfNotNull("underline".takeIf { line.isUnderlined }, "line-through".takeIf { line.isStrikeOut })
            if (decorations.isNotEmpty()) css += "text-decoration:${decorations.joinToString(" ")}"
            if (css.isEmpty()) return null
            return styleClasses.getOrPut(css.joinToString(";")) { "s${styleClasses.size + 1}" }
        }

        // ---- page -------------------------------------------------------------------------------------------------------

        fun page(background: Color?, foreground: Color?): String {
            val ref = PersistenceFacade.getInstance().asString(node.reference)
            val modelRef = model?.let { PersistenceFacade.getInstance().asString(it.reference) }
            val title = (node.presentation ?: node.concept.name)
            return buildString {
                append("<!DOCTYPE html>\n<html lang=\"en\">\n<head>\n<meta charset=\"utf-8\">\n")
                append("<title>").append(escape(title)).append("</title>\n")
                append("<meta name=\"generator\" content=\"MPS mps_mcp_print_node\">\n")
                append("<meta name=\"mps-node\" content=\"").append(escape(ref)).append("\">\n")
                if (modelRef != null) append("<meta name=\"mps-model\" content=\"").append(escape(modelRef)).append("\">\n")
                for ((ref, alias) in modelAliases) append("<meta name=\"mps-model-$alias\" content=\"").append(escape(ref)).append("\">\n")
                append(READING_GUIDE)
                append("<style>\n").append(css(background, foreground)).append("</style>\n</head>\n<body>\n<pre class=\"mps\">")
                append(out)
                append("</pre>\n<p class=\"note\"><a href=\"$IMAGE\">$IMAGE</a> is this editor painted as an image.</p>\n</body>\n</html>\n")
            }
        }

        private fun css(background: Color?, foreground: Color?): String = buildString {
            val bg = background?.let(::hex) ?: "#ffffff"
            append("body{margin:16px;background:$bg;color:${foreground?.let(::hex) ?: "#080808"}}\n")
            append("pre.mps{font:13px/1.5 \"JetBrains Mono\",Menlo,Consolas,monospace;margin:0}\n")
            append(".note{font:12px sans-serif;color:#666}\n")
            append(".v{display:inline-flex;flex-direction:column;vertical-align:middle;align-items:flex-start}\n")
            append(".v.ac{align-items:center}.v.ar{align-items:flex-end}\n")
            append(".v.at,.t.at,.ib.at{vertical-align:top}.v.ab,.t.ab,.ib.ab{vertical-align:bottom}\n")
            append(".hr{align-self:stretch;border-top:1px solid currentColor;margin:1px 0}\n")
            append(".vr{display:inline-block;border-left:1px solid currentColor;vertical-align:middle}\n")
            append(".ib{display:inline-block;vertical-align:middle}\n")
            append(".br{position:relative;padding:0 .5em}\n")
            append(".br::before,.br::after{content:\"\";position:absolute;top:1px;bottom:1px;width:.3em;border:1.5px solid currentColor}\n")
            append(".br::before{left:.05em;border-right:0}.br::after{right:.05em;border-left:0}\n")
            append(".t{display:inline-grid;vertical-align:middle;gap:0 1ch;align-items:center;justify-items:center}\n")
            append(".t>.tl{display:grid;align-items:center;justify-items:center;gap:0 1ch}\n")
            append(".t.rows>.tl{grid-column:1/-1;grid-template-columns:subgrid}\n")
            append(".t.cols{grid-auto-flow:column}.t.cols>.tl{grid-row:1/-1;grid-template-rows:subgrid}\n")
            append(".t.grid,.t.grid>.tl{gap:0;justify-items:stretch}.t.grid{border-left:1px solid #c8c8c8;border-top:1px solid #c8c8c8}\n")
            append(".t.grid .tc{border-right:1px solid #c8c8c8;border-bottom:1px solid #c8c8c8;padding:0 .3em;min-height:1.4em}\n")
            for (n in tableSizes) append(".t.rows.n$n{grid-template-columns:repeat($n,auto)}.t.cols.n$n{grid-template-rows:repeat($n,auto)}\n")
            append(".im{display:inline-block;vertical-align:middle;background:url($IMAGE) no-repeat}\n")
            append("sup,sub{font-size:100%;line-height:0}\n")
            append("sup .v,sup .t,sup .ib,sub .v,sub .t,sub .ib{line-height:1.3}\n")
            for ((decl, cls) in styleClasses) append(".$cls{$decl}\n")
        }
    }

    private val READING_GUIDE = """
        |<!--
        |  The editor projection of the node named by mps-node. The text of the pre element reads like the editor: line breaks and
        |  indentation follow it; inside boxes, rows are on lines of their own. data-n on a span: the projection of a node
        |  starts here; its node id in mps-model (mN/<id>: in the model of meta mps-model-mN), data-c its concept, data-r its role in the parent node. data-t: the target of
        |  a reference. Classes: v cells stacked vertically (a fraction, the bounds of a big operator); t a table of lines tl
        |  (rows, or columns with "cols") and cells tc, "grid" with the editor's grid lines; br brackets drawn around the box; hr, hrt a horizontal rule (a
        |  fraction bar); vr a vertical rule; im a cell without text shown as a cut-out of editor.png; data-o its 1-based
        |  entry in details.omittedCells.cells; sup/sub superscript and subscript; sN text styles; ss a superscript layout; at/ab a box level with
        |  its line at its first/last row (else its middle).
        |-->
        |""".trimMargin()

    private fun hex(color: Color) = "#%02x%02x%02x".format(color.red, color.green, color.blue)

    private fun escape(text: String): String = buildString(text.length) {
        for (c in text) when (c) {
            '&' -> append("&amp;")
            '<' -> append("&lt;")
            '>' -> append("&gt;")
            '"' -> append("&quot;")
            '\n', '\t' -> append(c)
            else -> if (c < ' ' || c == '\u007f') append('\uFFFD') else append(c)
        }
    }
}
