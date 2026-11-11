package jetbrains.mps.agents.mcp.tools.unit

import jetbrains.mps.agents.mcp.tools.common.CellPlainText.IndentLines
import jetbrains.mps.editor.runtime.TextBuilderImpl
import jetbrains.mps.openapi.editor.TextBuilder
import org.junit.Assert.assertEquals
import org.junit.Test

/** The line-by-line indent layout of `mps_mcp_print_node` PLAIN TEXT for a block of rows inside an indent line. */
class CellPlainTextTest {

    private fun block(vararg rows: String): TextBuilder =
        rows.fold(TextBuilderImpl() as TextBuilder) { builder, row -> builder.appendToTheBottom(TextBuilderImpl(row)) }

    private fun text(lines: IndentLines) = lines.result().text.lines().joinToString("\n") { it.trimEnd() }

    @Test
    fun `a block on its own line keeps its rows in its column and the next line starts below it`() {
        val lines = IndentLines("  ")
        lines.append(block("children:"), false)
        lines.newLine(1)
        lines.append(block("a : A[1]", "b : B[1]", "c : C[0..n]"), false)
        lines.newLine(0)
        lines.append(block("references:"), false)
        assertEquals("children:\n  a : A[1]\n  b : B[1]\n  c : C[0..n]\nreferences:", text(lines))
    }

    @Test
    fun `cells after a block on its line follow its widest row, top-aligned`() {
        val lines = IndentLines("  ")
        lines.append(block("x"), false)
        lines.append(block("one", "three"), true)
        lines.append(block(";"), true)
        assertEquals("x one   ;\n  three", text(lines))
    }

    @Test
    fun `a gap at a line start is one space after earlier text, none at the very start`() {
        val lines = IndentLines("  ")
        lines.append(block("a"), true)
        lines.newLine(0)
        lines.append(block("b", "c"), true)
        assertEquals("a\n b\n c", text(lines))
    }

    @Test
    fun `a leading new line keeps the blank first row and a line break in a block's last row ends the line there`() {
        val lines = IndentLines("  ")
        lines.newLine(0)
        lines.append(TextBuilderImpl("p\nq"), false)
        lines.append(block("r", "s"), true)
        assertEquals("\np\nq r\n  s", text(lines))
    }

    @Test
    fun `the cells after a split line follow its last text line, as renderText reads them`() {
        val lines = IndentLines("  ")
        lines.append(block("x"), false)
        lines.append(TextBuilderImpl("foo a\n  b"), true)
        lines.append(block(";"), true)
        lines.newLine(0)
        lines.append(block("y", "z"), false)
        assertEquals("x foo a\n  b ;\ny\nz", text(lines))
    }

    @Test
    fun `a line break in an earlier row of a block keeps the block's rows in its column`() {
        val lines = IndentLines("  ")
        lines.append(block("x"), false)
        lines.append(block("p\nq", "r"), true)
        lines.append(block(";"), true)
        assertEquals("x p ;\n  q\n  r", text(lines))
    }
}
