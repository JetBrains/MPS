package jetbrains.mps.agents.mcp.tools.unit

import jetbrains.mps.agents.mcp.tools.common.CellGridTextRenderer
import jetbrains.mps.agents.mcp.tools.common.CellGridTextRenderer.Box
import jetbrains.mps.agents.mcp.tools.common.CellGridTextRenderer.Decorations
import jetbrains.mps.agents.mcp.tools.common.CellGridTextRenderer.Label
import jetbrains.mps.agents.mcp.tools.common.CellGridTextRenderer.Rule

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
        assertEquals("hello world", render(label("hello", 0, 0), label("world", 60, 0)))
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
        assertEquals("a longer gap still gives one blank row", "a\n\nb", render(label("a", 0, 0), label("b", 0, 60)))
    }

    private fun renderWith(decorations: Decorations, vararg labels: Label): String? =
        CellGridTextRenderer.render(labels.toList(), 10, 20, decorations)

    @Test
    fun `a fraction puts numerator, bar and denominator on rows of their own, the bar as wide as the wider part`() {
        val fraction = Box(40, 0, 30, 60)
        val text = renderWith(
            Decorations(rules = listOf(Rule(Box(40, 28, 20, 3), fraction))),
            label("7", 0, 20), label("-", 20, 20), label("1.0", 40, 2, height = 16), label("2", 50, 42, height = 16), label("+", 80, 20),
        )
        assertEquals("    1.0\n7 - ─── +\n     2", text)
    }

    @Test
    fun `text before a fraction joins the bar's row when that is nearer than the numerator's`() {
        val fraction = Box(40, 0, 30, 50)
        val text = renderWith(
            Decorations(rules = listOf(Rule(Box(40, 22, 20, 3), fraction))),
            label("1.0", 40, 2, height = 16), label("7", 0, 10, height = 16), label("-", 20, 10, height = 16), label("2", 40, 30, height = 16),
        )
        assertEquals("    1.0\n7 - ───\n    2", text)
    }

    @Test
    fun `a bracketed box spanning three rows gets corner and middle glyphs in one column on each side`() {
        val matrix = Box(30, 0, 60, 60)
        val text = renderWith(
            Decorations(brackets = listOf(matrix)),
            label("m =", 0, 20),
            label("1", 40, 0), label("0", 70, 0),
            label("0", 40, 20), label("1", 70, 20),
            label("2", 40, 40), label("3", 70, 40),
        )
        assertEquals("    ⎡1  0⎤\nm = ⎢0  1⎥\n    ⎣2  3⎦", text)
    }

    @Test
    fun `content longer than its pixels pushes the bracket on every row, and the box content shifts with it`() {
        val matrix = Box(20, 0, 50, 40)
        val text = renderWith(
            Decorations(brackets = listOf(matrix)),
            label("k = 0", 0, 20, width = 15), // a small font: five chars drawn in a char and a half
            label("1", 30, 0), label("2", 50, 0),
            label("3", 30, 20), label("4", 50, 20),
        )
        assertEquals("      ⎡1 2⎤\nk = 0 ⎣3 4⎦", text)
    }

    @Test
    fun `a bracketed box on one row uses single-row bracket glyphs`() {
        assertEquals("v = ⁅1 2⁆", renderWith(Decorations(brackets = listOf(Box(30, 0, 50, 20))), label("v =", 0, 0), label("1", 40, 0), label("2", 60, 0)))
    }

    @Test
    fun `identical bracket-only rows between tall rows are kept once`() {
        val matrix = Box(0, 0, 40, 100)
        val text = renderWith(Decorations(brackets = listOf(matrix)), label("1", 10, 0), label("2", 10, 80))
        assertEquals("⎡1 ⎤\n⎢  ⎥\n⎣2 ⎦", text)
    }

    @Test
    fun `a vertical rule is drawn on every row it spans`() {
        val text = renderWith(Decorations(verticalRules = listOf(Box(20, 0, 1, 40))), label("a", 0, 0), label("b", 0, 20), label("c", 30, 0))
        assertEquals("a │ c\nb │", text)
    }

    @Test
    fun `a label that overlaps another label of its row horizontally starts a row of its own`() {
        assertEquals("abc\n  d", render(label("abc", 0, 0), label("d", 20, 6)))
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
