package jetbrains.mps.agents.mcp.tools.unit

import jetbrains.mps.agents.mcp.tools.common.CellGridTextRenderer
import jetbrains.mps.agents.mcp.tools.common.CellGridTextRenderer.Label

import org.junit.Assert.assertEquals
import org.junit.Test

/** The geometry-to-text grid of `mps_mcp_print_node` PLAIN TEXT for tables, on synthetic labels (10 px chars, 20 px lines). */
class CellGridTextRendererTest {

    private fun render(vararg labels: Label): String? = CellGridTextRenderer.render(labels.toList(), 10, 20)

    private fun label(text: String, x: Int, y: Int, width: Int = text.length * 10, height: Int = 20, leftGap: Boolean = true) =
        Label(text, x, y, width, height, leftGap)

    @Test
    fun `columns follow the x position`() {
        assertEquals(
            "a    bbb\ncccc d",
            render(label("a", 0, 0), label("bbb", 50, 0), label("cccc", 0, 20), label("d", 50, 20)),
        )
    }

    @Test
    fun `the left edge is the leftmost label and trailing blanks are dropped`() {
        assertEquals("x\n  y", render(label("x", 100, 0), label("y", 120, 20)))
    }

    @Test
    fun `a neighbour follows its left label with one space when the editor puts a gap there`() {
        assertEquals("abc d", render(label("abc", 0, 0, width = 24), label("d", 30, 0)))
        assertEquals("hello world", render(label("hello", 0, 0), label("world", 30, 0)))
    }

    @Test
    fun `a neighbour without a left gap is glued to its left label`() {
        assertEquals("foo(", render(label("foo", 0, 0), label("(", 30, 0, leftGap = false)))
        assertEquals("Close;", render(label("Close", 0, 0), label(";", 52, 0, leftGap = false)))
    }

    @Test
    fun `a neighbour without a left gap that is visibly apart still gets one space`() {
        assertEquals("x y", render(label("x", 0, 0), label("y", 18, 0, leftGap = false)))
    }

    @Test
    fun `after a real gap the pixel column is used but never overwrites`() {
        assertEquals("a  b", render(label("a", 0, 0), label("b", 30, 0, leftGap = false)))
        assertEquals("abcdef z", render(label("abcdef", 0, 0, width = 20), label("z", 40, 0)))
    }

    @Test
    fun `table cells stay aligned while their tokens keep the editor spacing`() {
        val header = listOf(
            label("event", 150, 0), label("Close", 210, 0), label(";", 260, 0, leftGap = false),
            label("event", 350, 0), label("Verify", 410, 0), label(";", 470, 0, leftGap = false),
        )
        val body = listOf(
            label("state", 0, 20), label("Open", 60, 20), label(";", 100, 20, leftGap = false),
            label("->", 150, 20), label("Waiting", 180, 20),
        )
        assertEquals(
            " ".repeat(15) + "event Close;".padEnd(20) + "event Verify;\n" + "state Open;".padEnd(15) + "-> Waiting",
            render(*(header + body).toTypedArray()),
        )
    }

    @Test
    fun `labels stretched to their table column end with their text, so distant cells keep their columns`() {
        val header = listOf(label("openapi", 200, 0, width = 80), label("Tuples", 280, 0, width = 150))
        val smodel = listOf(label("smodel", 0, 20, width = 200), label("+", 200, 20, width = 80))
        val kernel = listOf(
            label("kernel", 0, 40, width = 200), label("+", 200, 40, width = 80), label("+", 280, 40, width = 150),
            label("+", 430, 40, width = 60),
        )
        assertEquals(
            " ".repeat(20) + "openapi Tuples\n" +
                "smodel".padEnd(20) + "+\n" +
                "kernel".padEnd(20) + "+".padEnd(8) + "+".padEnd(15) + "+",
            render(*(header + smodel + kernel).toTypedArray()),
        )
    }

    @Test
    fun `labels with close vertical centres share a row`() {
        assertEquals("x y", render(label("x", 0, 0), label("y", 20, 4, height = 24)))
    }

    @Test
    fun `a multi-line label spans consecutive rows at its column`() {
        assertEquals("l1\nl2  z", render(label("l1\nl2", 10, 0, width = 20, height = 40), label("z", 50, 20)))
    }

    @Test
    fun `vertical gaps of more than one and a half lines become blank rows`() {
        assertEquals("a\nb", render(label("a", 0, 0), label("b", 0, 30)))
        assertEquals("a\n\nb", render(label("a", 0, 0), label("b", 0, 40)))
        assertEquals("a\n\n\nb", render(label("a", 0, 0), label("b", 0, 60)))
    }

    @Test
    fun `no labels give an empty grid`() {
        assertEquals("", render())
    }

    @Test
    fun `the invariant names every label line missing from the text`() {
        val labels = listOf(label("abc", 0, 0), label("two\nlines", 0, 20, height = 40))
        assertEquals(listOf("abc", "lines"), CellGridTextRenderer.missingTexts(labels, "ab two"))
        assertEquals(emptyList<String>(), CellGridTextRenderer.missingTexts(labels, render(*labels.toTypedArray())!!))
    }

    @Test(expected = IllegalArgumentException::class)
    fun `a zero char width is rejected`() {
        CellGridTextRenderer.render(listOf(label("a", 0, 0)), 0, 20)
    }
}
