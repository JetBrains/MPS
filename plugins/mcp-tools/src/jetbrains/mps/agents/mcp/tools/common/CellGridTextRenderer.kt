package jetbrains.mps.agents.mcp.tools.common

import jetbrains.mps.editor.runtime.style.StyleAttributes
import jetbrains.mps.editor.runtime.style.TableComponent
import jetbrains.mps.nodeEditor.EditorSettings
import jetbrains.mps.nodeEditor.cellLayout.CellLayout_Superscript
import jetbrains.mps.nodeEditor.cellLayout.CellLayout_Table
import jetbrains.mps.nodeEditor.cellLayout.CellLayout_Vertical
import jetbrains.mps.nodeEditor.cellLayout.PunctuationUtil
import jetbrains.mps.nodeEditor.cells.EditorCell_Basic
import jetbrains.mps.nodeEditor.cells.EditorCell_Label
import jetbrains.mps.openapi.editor.cells.EditorCell
import jetbrains.mps.openapi.editor.cells.EditorCell_Collection
import kotlin.math.abs
import kotlin.math.max
import kotlin.math.roundToInt

/**
 * Lays labels out as a character grid by their pixel geometry: one char width for the whole grid, rows by clustering the
 * vertical line centres (a label that would overlap another one of the row horizontally starts a row of its own). A label
 * within [NEIGHBOUR_GAP_CHARS] of its left neighbour follows it with one space when `renderText()` would put one there
 * ([Label.leftGap]) or the texts are visibly apart (half a char), and glued otherwise; after a wider gap its column is
 * `x / charWidth`, never overwriting.
 *
 * [Decorations] add what the editor paints rather than writes: bracket glyphs on every row a bracketed box spans (one
 * column for all those rows, and the box's content shifted with it so its rows stay aligned), horizontal rules (`─`) as
 * wide as the text in their span, and vertical rules (`│`). Gaps of more than one and a half lines become one blank row,
 * and a run of identical blank or bracket-only rows is kept once.
 */
internal object CellGridTextRenderer {

    /**
     * [x] is where the text is drawn (gaps and padding excluded). [width] may exceed the text when a table stretches the cell
     * to its column, so a text ends at most `text.length` chars after [x]. [leftGap] is whether the editor separates the
     * label from its left neighbour.
     */
    data class Label(val text: String, val x: Int, val y: Int, val width: Int, val height: Int, val leftGap: Boolean = true)

    data class Box(val x: Int, val y: Int, val width: Int, val height: Int) {
        val right: Int get() = x + width
        val bottom: Int get() = y + height
    }

    /** A horizontal rule drawn at the height of [cell] across [span], e.g. a fraction bar across its fraction. */
    data class Rule(val cell: Box, val span: Box)

    /** [bracketWidth] is the pixel width the editor reserves for each bracket inside a bracketed box. */
    data class Decorations(
        val brackets: List<Box> = emptyList(),
        val rules: List<Rule> = emptyList(),
        val verticalRules: List<Box> = emptyList(),
        val bracketWidth: Int = EditorCell_Basic.BRACKET_WIDTH,
    )

    const val RULE = '─'
    const val VERTICAL_RULE = '│'
    private const val BRACKETS_LEFT = "⁅⎡⎢⎣"
    private const val BRACKETS_RIGHT = "⁆⎤⎥⎦"
    private const val FILLER = " ⎢⎥│"

    private const val NEIGHBOUR_GAP_CHARS = 1.5

    private enum class Kind { TEXT, RULE, LEFT, RIGHT, VERTICAL }

    /** At one x, a box closes before the next opens, and an opening is placed before the content it aligns. */
    private val SWEEP_ORDER = listOf(Kind.RIGHT, Kind.LEFT, Kind.VERTICAL, Kind.TEXT, Kind.RULE)

    private class Piece(
        val kind: Kind,
        val text: String,
        val x: Int,
        val right: Int,
        val centre: Double,
        val leftGap: Boolean,
        /** Bracket box or vertical rule index for glyphs, rule index for [Kind.RULE]. */
        val index: Int = -1,
    ) {
        var row = -1
        fun overlaps(other: Piece) = x < other.right && other.x < right
    }

    private class Row(val centre: Double) {
        val pieces = mutableListOf<Piece>()
        val line = StringBuilder()
        var previousRight = Int.MIN_VALUE
        var previousKind: Kind? = null
        var offset = 0
    }

    private class Placed(val x: Int, val centre: Double, val startColumn: Int, val endColumn: Int)

    private class OpenRule(val rule: Rule, val row: Row, val column: Int)

    /** The grid text of [labels] and [decorations], or null when a label's text would be missing from it. */
    fun render(labels: List<Label>, charWidth: Int, lineHeight: Int, decorations: Decorations = Decorations()): String? {
        require(charWidth > 0 && lineHeight > 0) { "charWidth and lineHeight must be positive: $charWidth, $lineHeight" }
        val pieces = labels.flatMap { label ->
            val lines = label.text.split('\n')
            val lineSpan = if (label.height >= lines.size) label.height.toDouble() / lines.size else lineHeight.toDouble()
            lines.mapIndexedNotNull { i, line ->
                if (line.isEmpty()) null
                else Piece(Kind.TEXT, line, label.x, label.x + minOf(label.width, line.length * charWidth), label.y + lineSpan * (i + 0.5), label.leftGap)
            }
        } + decorations.rules.mapIndexed { i, rule ->
            Piece(Kind.RULE, RULE.toString(), rule.span.x, rule.span.right, rule.cell.y + rule.cell.height / 2.0, true, i)
        }
        if (pieces.isEmpty()) return ""

        val rows = withBlankRows(clusterRows(pieces, lineHeight), lineHeight)
        val glyphs = bracketGlyphs(decorations, rows) + ruleAnchors(decorations, rows) + verticalRuleGlyphs(decorations, rows)
        val minX = (pieces + glyphs).minOf { it.x }

        fun column(piece: Piece, row: Row): Int {
            val pixelColumn = ((piece.x - minX).toDouble() / charWidth).roundToInt() + row.offset
            return when {
                row.line.isEmpty() -> max(pixelColumn, 0)
                piece.x - row.previousRight <= NEIGHBOUR_GAP_CHARS * charWidth -> {
                    // An opening bracket takes the place of the gap before the box content.
                    val gap = piece.leftGap && row.previousKind != Kind.LEFT
                    row.line.length + if (gap || piece.x - row.previousRight >= charWidth / 2.0) 1 else 0
                }
                else -> max(pixelColumn, row.line.length + 1)
            }
        }

        val placed = mutableListOf<Placed>()
        fun write(piece: Piece, row: Row, column: Int) {
            while (row.line.length < column) row.line.append(' ')
            row.line.append(piece.text)
            row.previousRight = max(row.previousRight, piece.right)
            row.previousKind = piece.kind
            if (piece.kind == Kind.TEXT) placed += Placed(piece.x, row.centre, column, row.line.length)
        }

        // A rule is written once the sweep has passed its span: from the first to the last column of the text in the span.
        val openRules = mutableListOf<OpenRule>()
        fun closeRules(beforeX: Int) {
            val due = openRules.filter { it.rule.span.right <= beforeX }
            for (open in due) {
                val span = open.rule.span
                val inside = placed.filter { it.x >= span.x && it.x < span.right && it.centre >= span.y && it.centre <= span.bottom }
                val line = open.row.line
                val start = max(inside.minOfOrNull { it.startColumn } ?: open.column, line.length)
                val end = inside.maxOfOrNull { it.endColumn } ?: (open.column + (span.width.toDouble() / charWidth).roundToInt())
                while (line.length < start) line.append(' ')
                repeat(max(1, end - start)) { line.append(RULE) }
                open.row.previousKind = Kind.RULE
                openRules -= open
            }
        }

        val spanShift = HashMap<Pair<Int, Row>, Int>()
        val all = (pieces + glyphs).sortedWith(compareBy<Piece>({ it.x }, { SWEEP_ORDER.indexOf(it.kind) }, { it.row }))
        val groups = all.filter { it.kind == Kind.LEFT || it.kind == Kind.RIGHT || it.kind == Kind.VERTICAL }
            .groupBy { it.kind to it.index }
        val done = HashSet<Piece>()
        for (piece in all) {
            if (piece in done) continue
            closeRules(piece.x)
            val members = groups[piece.kind to piece.index]
            if (members == null) {
                val row = rows[piece.row]
                val column = column(piece, row)
                if (piece.kind == Kind.RULE) {
                    openRules += OpenRule(decorations.rules[piece.index], row, column)
                    row.previousRight = max(row.previousRight, piece.right)
                } else {
                    write(piece, row, column)
                }
                continue
            }
            // A bracket or vertical rule takes one column on all its rows; the content of a bracketed box moves with it.
            val column = members.maxOf { column(it, rows[it.row]) }
            for (member in members) {
                val row = rows[member.row]
                val shift = column - (((member.x - minX).toDouble() / charWidth).roundToInt() + row.offset)
                write(member, row, column)
                when (member.kind) {
                    Kind.LEFT -> { spanShift[member.index to row] = shift; row.offset += shift }
                    Kind.RIGHT -> row.offset -= spanShift.remove(member.index to row) ?: 0
                    else -> {}
                }
                done += member
            }
        }
        closeRules(Int.MAX_VALUE)

        val out = mutableListOf<String>()
        for (row in rows) {
            val line = row.line.toString().trimEnd()
            if (out.isNotEmpty() && line == out.last() && line.all { it in FILLER }) continue
            out += line
        }
        val text = out.joinToString("\n")
        return if (missingTexts(labels, text).isEmpty()) text else null
    }

    /**
     * Rows by vertical centre: a piece joins the nearest of the last rows whose first centre is within half a line, unless it
     * overlaps a piece of that row horizontally (a fraction's numerator, bar and denominator). A second pass moves a piece
     * to a row created after it when that row's centre is nearer (the `7 -` before a fraction belongs with its bar, not
     * with the numerator it met first).
     */
    private fun clusterRows(pieces: List<Piece>, lineHeight: Int): List<Row> {
        val rows = mutableListOf<Row>()
        for (piece in pieces.sortedBy { it.centre }) {
            val row = rows.takeLast(3)
                .filter { piece.centre - it.centre <= lineHeight / 2.0 && it.pieces.none(piece::overlaps) }
                .minByOrNull { abs(piece.centre - it.centre) }
            (row ?: Row(piece.centre).also { rows += it }).pieces += piece
        }
        for (row in rows.toList()) {
            for (piece in row.pieces.toList()) {
                val current = abs(piece.centre - row.centre)
                val better = rows.filter { it !== row && abs(piece.centre - it.centre) < current - 1 && abs(piece.centre - it.centre) <= lineHeight / 2.0 }
                    .filter { it.pieces.none(piece::overlaps) }
                    .minByOrNull { abs(piece.centre - it.centre) } ?: continue
                row.pieces -= piece
                better.pieces += piece
            }
        }
        return rows.filter { it.pieces.isNotEmpty() }
    }

    private fun withBlankRows(rows: List<Row>, lineHeight: Int): List<Row> {
        val result = mutableListOf<Row>()
        for ((i, row) in rows.withIndex()) {
            if (i > 0) {
                val previous = rows[i - 1].centre
                val gap = row.centre - previous
                if (gap > 1.5 * lineHeight) {
                    val blanks = max(1, (gap / lineHeight).roundToInt() - 1)
                    for (b in 1..blanks) result += Row(previous + gap * b / (blanks + 1))
                }
            }
            result += row
        }
        result.forEachIndexed { i, row -> row.pieces.forEach { it.row = i } }
        return result
    }

    /**
     * The rows from the first to the last row with a piece inside [box] (the blank rows between them included, those
     * around them not), or the row nearest to the box's middle when none has. Without [byContent], every row whose centre
     * is inside the box counts, as for a vertical rule that has no text of its own.
     */
    private fun spannedRows(box: Box, rows: List<Row>, byContent: Boolean = true): List<Int> {
        val inside = rows.indices.filter { r ->
            rows[r].centre >= box.y && rows[r].centre <= box.bottom &&
                (!byContent || rows[r].pieces.any { it.x < box.right && it.right > box.x })
        }
        if (inside.isNotEmpty()) return (inside.first()..inside.last()).toList()
        val middle = box.y + box.height / 2.0
        return listOf(rows.indices.minByOrNull { abs(rows[it].centre - middle) }!!)
    }

    /**
     * Invisible opening and closing anchors on the rows of each rule's span, so its parts above and below start in one
     * column with the rule. Their indices follow the brackets' so the groups stay apart.
     */
    private fun ruleAnchors(decorations: Decorations, rows: List<Row>): List<Piece> =
        decorations.rules.withIndex().flatMap { (i, rule) ->
            val group = decorations.brackets.size + i
            spannedRows(rule.span, rows).flatMap { r ->
                listOf(
                    Piece(Kind.LEFT, "", rule.span.x, rule.span.x, rows[r].centre, true, group),
                    Piece(Kind.RIGHT, "", rule.span.right, rule.span.right, rows[r].centre, false, group),
                ).onEach { it.row = r }
            }
        }

    private fun bracketGlyphs(decorations: Decorations, rows: List<Row>): List<Piece> =
        decorations.brackets.withIndex().flatMap { (b, box) ->
            val spanned = spannedRows(box, rows)
            val width = decorations.bracketWidth
            spanned.withIndex().flatMap { (k, r) ->
                val shape = when {
                    spanned.size == 1 -> 0
                    k == 0 -> 1
                    k == spanned.size - 1 -> 3
                    else -> 2
                }
                listOf(
                    Piece(Kind.LEFT, BRACKETS_LEFT[shape].toString(), box.x, box.x + width, rows[r].centre, true, b),
                    Piece(Kind.RIGHT, BRACKETS_RIGHT[shape].toString(), box.right - width, box.right, rows[r].centre, false, b),
                ).onEach { it.row = r }
            }
        }

    private fun verticalRuleGlyphs(decorations: Decorations, rows: List<Row>): List<Piece> =
        decorations.verticalRules.withIndex().flatMap { (v, box) ->
            spannedRows(box, rows, byContent = false).map { r ->
                Piece(Kind.VERTICAL, VERTICAL_RULE.toString(), box.x, box.x + max(1, box.width), rows[r].centre, true, v).also { it.row = r }
            }
        }

    /** The label lines that do not occur in [text]: the invariant [render] guards. */
    fun missingTexts(labels: List<Label>, text: String): List<String> =
        labels.flatMap { it.text.split('\n') }.map { it.trim() }.filter { it.isNotEmpty() && !text.contains(it) }
}

/** Reads the cell tree for [CellGridTextRenderer]: when to use it, its labels and its decorations. */
internal object CellGridText {

    /**
     * [shownAs] is how each cell without text appears in [text]: a rule glyph or its `⟦n⟧` placeholder. [brackets] counts
     * the bracketed boxes drawn with bracket glyphs.
     */
    class Rendering(val text: String, val shownAs: Map<EditorCell, String>, val brackets: Int)

    /**
     * Why the projection needs the grid, or null: a table (a `CellLayout_Table` collection of either orientation, or one
     * styled as a table column; `TABLE_COMPONENT` defaults to `HORIZONTAL_COLLECTION` on every cell, so that value alone
     * says nothing), a superscript layout, or a cell without text. A bracketed collection alone is not a reason, since
     * `renderText()` lays such editors out right.
     */
    fun gridReason(root: EditorCell, omitted: List<NonTextCells.Omitted>): String? {
        val cells = visibleCells(root).filterIsInstance<EditorCell_Collection>().toList()
        return when {
            cells.any { it.cellLayout is CellLayout_Table || it.style.get(StyleAttributes.TABLE_COMPONENT) == TableComponent.VERTICAL_COLLECTION } ->
                "the projection contains a table"
            cells.any { it.cellLayout is CellLayout_Superscript } -> "the projection contains a superscript layout"
            omitted.isNotEmpty() -> "the projection contains cells without text"
            else -> null
        }
    }

    /**
     * The grid text of the labels and decorations under [root] (folded collections contribute their placeholder), or null
     * when the renderer's invariant fails. A label's gap flag is the one `CellLayout_Horizontal.doLayoutText` uses. Of the
     * [omitted] cells, a thin horizontal one becomes a rule across its parent when that is a vertical collection (the
     * editor paints a fraction bar that way) or across itself, a thin tall one a vertical rule, and any other one the
     * placeholder `⟦n⟧`, `n` being its 1-based position in [omitted].
     */
    fun render(root: EditorCell, omitted: List<NonTextCells.Omitted>): Rendering? {
        val metrics = EditorSettings.getInstance().defaultEditorFontMetrics
        val charWidth = metrics.getWidth(" ")
        val lineHeight = metrics.height
        val labels = mutableListOf<CellGridTextRenderer.Label>()
        val brackets = mutableListOf<CellGridTextRenderer.Box>()
        for (cell in visibleCells(root)) {
            if (cell.style.get(StyleAttributes.DRAW_BRACKETS) == true && cell.width > 0) brackets += innerBox(cell)
            if (cell !is EditorCell_Label) continue
            val text = cell.renderedText
            if (text.isNotBlank()) {
                val box = innerBox(cell)
                labels += CellGridTextRenderer.Label(text, box.x, box.y, box.width, box.height, PunctuationUtil.hasLeftGap(cell))
            }
        }
        val rules = mutableListOf<CellGridTextRenderer.Rule>()
        val verticalRules = mutableListOf<CellGridTextRenderer.Box>()
        val shownAs = LinkedHashMap<EditorCell, String>()
        omitted.forEachIndexed { i, o ->
            val cell = o.cell
            val own = CellGridTextRenderer.Box(cell.x, cell.y, cell.width, cell.height)
            when {
                cell.height <= max(3, lineHeight / 4) && cell.width >= 2 -> {
                    val parent = cell.parent
                    val span = if (parent != null && parent.cellLayout is CellLayout_Vertical) innerBox(parent) else own
                    rules += CellGridTextRenderer.Rule(own, span)
                    shownAs[cell] = CellGridTextRenderer.RULE.toString()
                }
                cell.width <= 3 && cell.height >= lineHeight * 3 / 4 -> {
                    verticalRules += own
                    shownAs[cell] = CellGridTextRenderer.VERTICAL_RULE.toString()
                }
                else -> {
                    val placeholder = "⟦${i + 1}⟧"
                    labels += CellGridTextRenderer.Label(placeholder, cell.x, cell.y, cell.width, cell.height)
                    shownAs[cell] = placeholder
                }
            }
        }
        val decorations = CellGridTextRenderer.Decorations(brackets, rules, verticalRules)
        val text = CellGridTextRenderer.render(labels, charWidth, lineHeight, decorations) ?: return null
        return Rendering(text, shownAs, brackets.size)
    }

    private fun innerBox(cell: EditorCell): CellGridTextRenderer.Box =
        CellGridTextRenderer.Box(
            cell.x + cell.leftInset, cell.y, (cell.width - cell.leftInset - cell.rightInset).coerceAtLeast(0), cell.height,
        )

    private fun visibleCells(root: EditorCell): Sequence<EditorCell> = sequence {
        val queue = ArrayDeque<EditorCell>().apply { add(root) }
        while (queue.isNotEmpty()) {
            val cell = queue.removeFirst()
            yield(cell)
            if (cell is EditorCell_Collection) cell.forEach(queue::add)
        }
    }
}
