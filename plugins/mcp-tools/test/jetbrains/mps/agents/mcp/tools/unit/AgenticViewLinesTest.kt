package jetbrains.mps.agents.mcp.tools.unit

import jetbrains.mps.agents.mcp.tools.common.AgenticViewRenderer
import jetbrains.mps.agents.mcp.tools.common.AgenticViewRenderer.ConceptKey
import jetbrains.mps.agents.mcp.tools.common.AgenticViewRenderer.Line
import jetbrains.mps.agents.mcp.tools.common.AgenticViewRenderer.Reference
import jetbrains.mps.agents.mcp.tools.common.AgenticViewRenderer.Rendering
import jetbrains.mps.agents.mcp.tools.common.AgenticViewRenderer.Section
import jetbrains.mps.smodel.adapter.structure.types.SPrimitiveTypes
import jetbrains.mps.util.StringUtil

import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * The model-free parts of AGENTIC VIEW (`mps_mcp_print_node`, `mps_mcp_get_compact_project_structure`): quoting, ids,
 * line assembly, legends, sections and the budget-filling cut.
 */
class AgenticViewLinesTest {

    private val m0 = "r:11111111-1111-1111-1111-111111111111(a.b)"
    private val m1 = "r:22222222-2222-2222-2222-222222222222(c.d)"
    private val kaja = ConceptKey("jetbrains.mps.samples.Kaja", "IfStatement")
    private val bl = ConceptKey("jetbrains.mps.baseLanguage", "IfStatement")
    private val script = ConceptKey("jetbrains.mps.samples.Kaja", "Script")

    @Test
    fun `plain tokens are bare and everything else is a JSON string`() {
        assertEquals("foo_Bar.baz\$1-x", AgenticViewRenderer.token("foo_Bar.baz\$1-x"))
        assertEquals("\"two words\"", AgenticViewRenderer.token("two words"))
        assertEquals("\"\"", AgenticViewRenderer.token(""))
        assertEquals("\"a\\\"b\"", AgenticViewRenderer.token("a\"b"))
        assertEquals("\"x=1\"", AgenticViewRenderer.token("x=1"))
        assertEquals("\"line\\nbreak\"", AgenticViewRenderer.token("line\nbreak"))
    }

    @Test
    fun `a foreign id is escaped like a node reference and never contains a space`() {
        val id = "~Foo(int, java.lang.String)/bar%baz\tq"
        val escaped = AgenticViewRenderer.escapeNodeId(id)
        assertEquals("~Foo%28int,%20java.lang.String%29%2Fbar%25baz%09q", escaped)
        assertFalse(escaped.any { it.isWhitespace() })
        assertEquals(id, StringUtil.unescapeRefChars(escaped))
        assertEquals(StringUtil.escapeRefChars("~a(b)/c%"), AgenticViewRenderer.escapeNodeId("~a(b)/c%"))
        assertEquals("8614576427117861066", AgenticViewRenderer.escapeNodeId("8614576427117861066"))
    }

    @Test
    fun `a node line puts role, concept, id, name, properties, references, flags and the hidden count in order`() {
        val line = Line(
            depth = 2, label = "commands[3]", concept = kaja, id = "42", name = "two words",
            properties = listOf("text=\"hi\"", "flag=false*"),
            references = listOf(
                Reference("definition", "turnRight", m0, "7"),
                Reference("library", "Common", m1, "8"),
                Reference("gone", null, m1, "9", listOf("!unresolved")),
                Reference("none", null, null, null, listOf("!unresolved", "!undeclared")),
            ),
            flags = listOf("!conceptNotLoaded"),
            descendants = 5,
        )
        val alias: (String) -> String? = { if (it == m0) null else "m1" }
        assertEquals(
            "    commands[3]: IfStatement #42 \"two words\" text=\"hi\" flag=false* -> definition=turnRight#7 " +
                "-> library=Common@m1#8 -> gone=?@m1#9 !unresolved -> none=? !unresolved !undeclared !conceptNotLoaded (+5)",
            AgenticViewRenderer.nodeLine(line, "IfStatement", showHidden = true, alias),
        )
        assertEquals("    commands[3]: IfStatement #42 \"two words\" text=\"hi\" flag=false* -> definition=turnRight#7 " +
            "-> library=Common@m1#8 -> gone=?@m1#9 !unresolved -> none=? !unresolved !undeclared !conceptNotLoaded",
            AgenticViewRenderer.nodeLine(line, "IfStatement", showHidden = false, alias))
        assertEquals("Script #1", AgenticViewRenderer.nodeLine(Line(0, null, script, "1"), "Script", showHidden = true) { null })
    }

    @Test
    fun `a computed name is in the name position with a star, quoted when it is no plain token`() {
        val computed = Line(0, null, script, "1", name = "IfStatement_Editor", nameComputed = true, properties = listOf("virtualPackage=\"command\""))
        assertEquals("Script #1 IfStatement_Editor* virtualPackage=\"command\"", AgenticViewRenderer.nodeLine(computed, "Script", showHidden = false) { null })
        val quoted = Line(0, null, script, "1", name = "my name", nameComputed = true)
        assertEquals("Script #1 \"my name\"*", AgenticViewRenderer.nodeLine(quoted, "Script", showHidden = false) { null })
        assertEquals("Script #1 Maze", AgenticViewRenderer.nodeLine(Line(0, null, script, "1", name = "Maze"), "Script", showHidden = false) { null })
    }

    @Test
    fun `a string value is always quoted and other values only when they are not plain tokens`() {
        assertEquals("\"x\"", AgenticViewRenderer.propertyValue(SPrimitiveTypes.STRING, "x"))
        assertEquals("\"a b\"", AgenticViewRenderer.propertyValue(SPrimitiveTypes.STRING, "a b"))
        assertEquals("42", AgenticViewRenderer.propertyValue(SPrimitiveTypes.INTEGER, "42"))
        assertEquals("true", AgenticViewRenderer.propertyValue(SPrimitiveTypes.BOOLEAN, "true"))
        assertEquals("\"4 2\"", AgenticViewRenderer.propertyValue(SPrimitiveTypes.INTEGER, "4 2"))
    }

    @Test
    fun `a child in a role named empty is a node line, told apart from the empty line by its second token`() {
        val line = AgenticViewRenderer.nodeLine(Line(1, "empty", script, "7"), "Script", showHidden = false) { null }
        assertEquals("  empty: Script #7", line)
        val emptyLine = AgenticViewRenderer.emptyLine(emptyList(), emptyList(), listOf("empty"))
        assertEquals("empty: children empty", emptyLine)
        assertFalse(line.trimStart().split(" ")[1] in setOf("properties", "references", "children"))
    }

    @Test
    fun `duplicate feature names get the owner concept`() {
        assertEquals(
            listOf("isDeprecated@Classifier", "abstractClass", "isDeprecated@IBLDeprecatable"),
            AgenticViewRenderer.withOwnerSuffix(listOf("isDeprecated", "abstractClass", "isDeprecated")) {
                listOf("Classifier", "ClassConcept", "IBLDeprecatable")[it]
            },
        )
        assertEquals(listOf("a", "b"), AgenticViewRenderer.withOwnerSuffix(listOf("a", "b")) { error("no owner needed") })
    }

    @Test
    fun `two concepts with one short name are printed with their language`() {
        val tokens = AgenticViewRenderer.conceptTokens(listOf(kaja, bl, script, kaja))
        assertEquals("jetbrains.mps.samples.Kaja.IfStatement", tokens[kaja])
        assertEquals("jetbrains.mps.baseLanguage.IfStatement", tokens[bl])
        assertEquals("Script", tokens[script])
        assertEquals(3, tokens.size)
    }

    @Test
    fun `the empty line leaves out empty groups`() {
        assertEquals(
            "empty: properties a b; references r!required; children c",
            AgenticViewRenderer.emptyLine(listOf("a", "b"), listOf("r!required"), listOf("c")),
        )
        assertEquals("empty: children c!required", AgenticViewRenderer.emptyLine(emptyList(), emptyList(), listOf("c!required")))
        assertNull(AgenticViewRenderer.emptyLine(emptyList(), emptyList(), emptyList()))
    }

    private fun sample(): Rendering {
        val lines = listOf(
            Line(0, null, script, "1", name = "Maze", empty = "empty: children definitions", descendants = 3),
            Line(1, "body", ConceptKey("jetbrains.mps.samples.Kaja", "CommandList"), "2", descendants = 2),
            Line(2, "commands[0]", kaja, "3", references = listOf(Reference("x", "T", m1, "9")), descendants = 1),
            Line(3, "condition", bl, "4"),
        )
        return Rendering(
            m0, lines, totalNodes = 4,
            foreignModels = setOf(m1),
            deprecated = mapOf(kaja to listOf("old", "flag=false"), bl to emptyList()),
        )
    }

    @Test
    fun `a printout has the legends, the lines and the empty lines`() {
        assertEquals(
            """
            # AGENTIC VIEW 1 | model m0=$m0 | node reference = <model>/<id>
            # models m1=$m1 !foreign
            # concepts jetbrains.mps.baseLanguage: IfStatement | jetbrains.mps.samples.Kaja: CommandList IfStatement Script
            # deprecated, printed only when set: jetbrains.mps.samples.Kaja.IfStatement: old flag=false
            Script #1 Maze
              empty: children definitions
              body: CommandList #2
                commands[0]: jetbrains.mps.samples.Kaja.IfStatement #3 -> x=T@m1#9
                  condition: jetbrains.mps.baseLanguage.IfStatement #4
            """.trimIndent(),
            sample().text(),
        )
    }

    @Test
    fun `a cut printout has the cut line, hidden counts and only the printed concepts and models`() {
        val rendering = sample()
        assertEquals(
            """
            # AGENTIC VIEW 1 | model m0=$m0 | node reference = <model>/<id>
            # concepts jetbrains.mps.samples.Kaja: CommandList Script
            # cut: 2 of 4 nodes printed (the whole printout is ${rendering.wholeChars} chars); print the "(+N)" nodes you need by their ids
            Script #1 Maze
              empty: children definitions
              body: CommandList #2 (+2)
            """.trimIndent(),
            rendering.text(booleanArrayOf(true, true, false, false), cut = true),
        )
        val full = AgenticViewRenderer.jsonLength(rendering.text())
        assertEquals(full, rendering.wholeChars)
        val fit = rendering.fit(full)
        assertTrue(fit.inline)
        assertFalse(fit.cut)
        assertEquals(4, fit.printedNodes)
        assertEquals(rendering.text(), fit.text)

        val cut = rendering.fit(full - 1)
        assertTrue(cut.inline)
        assertTrue(cut.cut)
        assertTrue(cut.text, cut.text.contains("\n# cut: ${cut.printedNodes} of 4 nodes printed"))
        assertTrue(AgenticViewRenderer.jsonLength(cut.text) <= full - 1)

        val none = rendering.fit(10)
        assertFalse(none.inline)
        assertFalse(none.cut)
        assertEquals(rendering.text(), none.text)
    }

    /**
     * A wide tree: a root with [width] children, each with [width] grandchildren that hold references into
     * 12 models (two-digit aliases), concepts of two languages with one short name, and deprecated legends.
     */
    private fun wide(width: Int = 4): Rendering {
        val models = (1..12).map { "r:00000000-0000-0000-0000-0000000000%02d(m%d)".format(it, it) }
        val lines = ArrayList<Line>()
        lines += Line(0, null, script, "1", name = "Root", empty = "empty: children definitions", descendants = width * (width + 1))
        var id = 2
        for (c in 0 until width) {
            lines += Line(1, "body[$c]", if (c % 2 == 0) kaja else bl, "${id++}", nameComputed = c == 1, name = if (c == 1) "computed name" else null,
                references = listOf(Reference("r", "T$c", models[c % models.size], "$c")), descendants = width)
            for (g in 0 until width) {
                val k = c * width + g
                lines += Line(2, "item[$g]", ConceptKey("lang.l${k % 3}", "C${k % 5}"), "${id++}",
                    references = listOf(Reference("a", "A", models[k % models.size], "$k"), Reference("b", "B b", models[(k * 7) % models.size], "x$k")),
                    empty = if (g % 2 == 0) "empty: properties p" else null)
            }
        }
        return Rendering(m0, lines, totalNodes = lines.size, foreignModels = setOf(models[3]),
            deprecated = mapOf(kaja to listOf("old"), ConceptKey("lang.l1", "C1") to listOf("gone", "flag=false")))
    }

    /** The children of each line, from the depths. */
    private fun childrenOf(rendering: Rendering): List<List<Int>> {
        val kids = List(rendering.lines.size) { ArrayList<Int>() }
        val stack = ArrayList<Int>()
        rendering.lines.forEachIndexed { i, line ->
            while (stack.size > line.depth) stack.removeAt(stack.size - 1)
            stack.lastOrNull()?.let { kids[it] += i }
            stack += i
        }
        return kids
    }

    /** The budget-filling rule, by full renders: the roots, then expand breadth-first while the rendered text fits. */
    private fun expectedCut(rendering: Rendering, limit: Int): String? {
        val kids = childrenOf(rendering)
        val printed = BooleanArray(rendering.lines.size) { rendering.lines[it].depth == 0 }
        fun fits() = AgenticViewRenderer.jsonLength(rendering.text(printed, cut = true)) <= limit
        if (!fits()) return null
        for (v in rendering.lines.indices.sortedBy { rendering.lines[it].depth }) {
            if (kids[v].isEmpty()) continue
            kids[v].forEach { printed[it] = true }
            if (!fits()) {
                kids[v].forEach { printed[it] = false }
                break
            }
        }
        return rendering.text(printed, cut = true)
    }

    @Test
    fun `the cut expands breadth-first while the printout fits, sized exactly from the lines`() {
        val rendering = wide()
        val full = rendering.wholeChars
        assertEquals(AgenticViewRenderer.jsonLength(rendering.text()), full)
        var cuts = 0
        for (limit in 300..full + 5) {
            val fit = rendering.fit(limit)
            if (limit >= full) {
                assertFalse(fit.cut)
                assertEquals(rendering.text(), fit.text)
                continue
            }
            val expected = expectedCut(rendering, limit)
            if (expected == null) {
                assertFalse("limit $limit", fit.inline)
                continue
            }
            cuts++
            assertTrue("limit $limit", fit.inline && fit.cut)
            assertEquals("limit $limit", expected, fit.text)
            assertTrue("limit $limit", AgenticViewRenderer.jsonLength(fit.text) <= limit)
        }
        assertTrue("the range exercises the cut", cuts > 100)
    }

    @Test
    fun `a cut prints whole child lists and the hidden counts add up to the total`() {
        val rendering = wide()
        val kids = childrenOf(rendering)
        val lines = rendering.lines
        var cuts = 0
        for (limit in listOf(600, 1200, 2000, 3000)) {
            val fit = rendering.fit(limit)
            if (!fit.cut) continue
            cuts++
            val body = fit.text.split("\n").dropWhile { it.startsWith("# ") }.filterNot { it.trimStart().startsWith("empty: ") }
            val ids = body.map { it.trimStart().split(" ").first { t -> t.startsWith("#") }.removePrefix("#") }
            val printed = lines.indices.filter { lines[it].id in ids }
            assertEquals(fit.printedNodes, printed.size)
            for (i in printed) {
                val shown = kids[i].count { it in printed }
                assertTrue("all or none of the children of ${lines[i].id}", shown == 0 || shown == kids[i].size)
            }
            val hidden = body.sumOf { Regex("""\(\+(\d+)\)$""").find(it)?.groupValues?.get(1)?.toInt() ?: 0 }
            assertEquals("limit $limit", rendering.totalNodes, printed.size + hidden)
            assertTrue(fit.text, fit.text.contains("# cut: ${printed.size} of ${rendering.totalNodes} nodes printed"))
        }
        assertTrue("the limits exercise the cut", cuts > 0)
    }

    @Test
    fun `the cut prints at least as many nodes as a uniform depth cut would`() {
        val rendering = wide(6)
        val byDepth = rendering.lines.map { it.depth }
        for (limit in 400..rendering.wholeChars step 37) {
            val fit = rendering.fit(limit)
            if (!fit.inline) continue
            val uniform = (0..2).lastOrNull { d ->
                AgenticViewRenderer.jsonLength(rendering.text(BooleanArray(byDepth.size) { byDepth[it] <= d }, cut = d < 2)) <= limit
            } ?: continue
            assertTrue("limit $limit", fit.printedNodes >= byDepth.count { it <= uniform })
        }
    }

    /**
     * A module of three models: two roots in [m0] (one referencing [m1], one with a deprecated concept), one root of
     * its own concept in a second model, and an empty third model.
     */
    private fun forest(width: Int = 3): Rendering {
        val second = "r:33333333-3333-3333-3333-333333333333(e.f)"
        val empty = "r:44444444-4444-4444-4444-444444444444(g.h)"
        val lines = ArrayList<Line>()
        var id = 1
        fun tree(depth: Int, label: String?, concept: ConceptKey, refs: List<Reference>, fanOut: Int, levels: Int): Line {
            val line = Line(depth, label, concept, "${id++}", name = if (depth == 0) "R$id" else null, references = refs,
                empty = if (depth == 1) "empty: properties p" else null)
            lines += line
            if (levels > 0) repeat(fanOut) { line.descendants += 1 + tree(depth + 1, "c[$it]", bl, emptyList(), fanOut, levels - 1).descendants }
            return line
        }
        tree(0, null, script, listOf(Reference("x", "T", m1, "9")), width, 2)
        tree(0, null, kaja, emptyList(), width, 2)
        val secondStart = lines.size
        tree(0, null, ConceptKey("lang.other", "Thing"), listOf(Reference("y", "U", m0, "1")), width, 3)
        val emptyStart = lines.size
        return Rendering(
            listOf(Section(m0, 0), Section(second, secondStart), Section(empty, emptyStart)), lines, totalNodes = lines.size,
            deprecated = mapOf(kaja to listOf("old")), preamble = "# module a.b | 3 models",
        )
    }

    @Test
    fun `a forest prints one section per model with its own legends after the module line`() {
        val rendering = forest(1)
        assertEquals(
            """
            # module a.b | 3 models
            # AGENTIC VIEW 1 | model m0=$m0 | node reference = <model>/<id>
            # models m1=$m1
            # concepts jetbrains.mps.baseLanguage: IfStatement | jetbrains.mps.samples.Kaja: IfStatement Script
            # deprecated, printed only when set: jetbrains.mps.samples.Kaja.IfStatement: old
            Script #1 R2 -> x=T@m1#9
              c[0]: jetbrains.mps.baseLanguage.IfStatement #2
                empty: properties p
                c[0]: jetbrains.mps.baseLanguage.IfStatement #3
            jetbrains.mps.samples.Kaja.IfStatement #4 R5
              c[0]: jetbrains.mps.baseLanguage.IfStatement #5
                empty: properties p
                c[0]: jetbrains.mps.baseLanguage.IfStatement #6
            # AGENTIC VIEW 1 | model m0=r:33333333-3333-3333-3333-333333333333(e.f) | node reference = <model>/<id>
            # models m1=$m0
            # concepts jetbrains.mps.baseLanguage: IfStatement | lang.other: Thing
            Thing #7 R8 -> y=U@m1#1
              c[0]: IfStatement #8
                empty: properties p
                c[0]: IfStatement #9
                  c[0]: IfStatement #10
            # AGENTIC VIEW 1 | model m0=r:44444444-4444-4444-4444-444444444444(g.h) | node reference = <model>/<id>
            """.trimIndent(),
            rendering.text(),
        )
        assertEquals(3, rendering.roots)
        val roots = rendering.text(BooleanArray(rendering.lines.size) { rendering.lines[it].depth == 0 }, cut = true).split("\n")
        assertEquals("the cut line follows the first header", "# deprecated, printed only when set: IfStatement: old", roots[4].replace("jetbrains.mps.samples.Kaja.", ""))
        assertTrue(roots[5], roots[5].startsWith("# cut: 3 of 10 nodes printed"))
        assertEquals(listOf("Script #1 R2 -> x=T@m1#9 (+2)", "IfStatement #4 R5 (+2)", "Thing #7 R8 -> y=U@m1#1 (+3)"), roots.filter { "#" in it && !it.startsWith("#") })
    }

    @Test
    fun `the cut of a forest prints every root first and fills the budget breadth-first across sections`() {
        val rendering = forest()
        val full = rendering.wholeChars
        assertEquals(AgenticViewRenderer.jsonLength(rendering.text()), full)
        var cuts = 0
        var floors = 0
        for (limit in 400..full + 5) {
            val fit = rendering.fit(limit)
            if (limit >= full) {
                assertFalse(fit.cut)
                continue
            }
            val expected = expectedCut(rendering, limit)
            if (expected == null) {
                assertFalse("limit $limit", fit.inline)
                floors++
                continue
            }
            cuts++
            assertTrue("limit $limit", fit.inline && fit.cut)
            assertEquals("limit $limit", expected, fit.text)
            assertTrue("limit $limit", AgenticViewRenderer.jsonLength(fit.text) <= limit)
            val body = fit.text.split("\n").filterNot { it.startsWith("# ") || it.trimStart().startsWith("empty: ") }
            val hidden = body.sumOf { Regex("""\(\+(\d+)\)$""").find(it)?.groupValues?.get(1)?.toInt() ?: 0 }
            assertEquals("limit $limit: the (+N) counts add up", rendering.totalNodes, fit.printedNodes + hidden)
            assertEquals("limit $limit: every root is printed", 3, body.count { !it.startsWith(" ") })
        }
        assertTrue("the range exercises the cut", cuts > 100)
        assertTrue("the range exercises the root floor", floors > 0)
    }

    /**
     * A method with two code lines (`codeAsText`): one with a macro on an inner node, whose own child is printed, the
     * other with nothing printed below it.
     */
    private fun code(): Rendering {
        val statement = ConceptKey("jetbrains.mps.baseLanguage", "ExpressionStatement")
        val lines = listOf(
            Line(0, null, script, "1", name = "run", descendants = 9),
            Line(1, "statement[0]", statement, "2", text = "x = 1 + \"a b\";", descendants = 6, skipped = 4),
            Line(2, "@prop(value) on #5", ConceptKey("jetbrains.mps.lang.generator", "PropertyMacro"), "9", descendants = 1),
            Line(3, "propertyValueFunction", ConceptKey("jetbrains.mps.lang.generator", "PropertyMacro_GetPropertyValue"), "10"),
            Line(1, "statement[1]", ConceptKey("jetbrains.mps.baseLanguage", "ReturnStatement"), "3", text = "return;", descendants = 1, skipped = 1),
        )
        return Rendering(m0, lines, totalNodes = 10)
    }

    @Test
    fun `a code line carries its text and the count of its unprinted inner nodes, also when its attributes are printed`() {
        val rendering = code()
        val body = rendering.text().split("\n").filterNot { it.startsWith("# ") }
        assertEquals(
            listOf(
                "Script #1 run",
                "  statement[0]: ExpressionStatement #2 = \"x = 1 + \\\"a b\\\";\" (+4)",
                "    @prop(value) on #5: PropertyMacro #9",
                "      propertyValueFunction: PropertyMacro_GetPropertyValue #10",
                "  statement[1]: ReturnStatement #3 = \"return;\" (+1)",
            ),
            body,
        )
        val statements = rendering.text(booleanArrayOf(true, true, false, false, true), cut = true).split("\n").filterNot { it.startsWith("# ") }
        assertEquals("  statement[0]: ExpressionStatement #2 = \"x = 1 + \\\"a b\\\";\" (+6)", statements[1])

        assertEquals(2, rendering.fit(rendering.wholeChars).collapsed)
        var cuts = 0
        for (limit in 300..rendering.wholeChars) {
            val fit = rendering.fit(limit)
            if (!fit.cut) continue
            cuts++
            assertEquals("limit $limit", expectedCut(rendering, limit), fit.text)
            val printed = fit.text.split("\n").filterNot { it.startsWith("# ") }
            val hidden = printed.sumOf { Regex("""\(\+(\d+)\)$""").find(it)?.groupValues?.get(1)?.toInt() ?: 0 }
            assertEquals("limit $limit: the (+N) counts add up", rendering.totalNodes, fit.printedNodes + hidden)
            assertEquals("limit $limit: collapsed counts the printed code lines", printed.count { Regex("""#\S+ = """").containsMatchIn(it) }, fit.collapsed)
        }
        assertTrue("the range exercises the cut", cuts > 0)
    }

    @Test
    fun `the JSON length counts the escapes`() {
        assertEquals("\"a\\nb\\\"\"".length, AgenticViewRenderer.jsonLength("a\nb\""))
    }
}
