package jetbrains.mps.agents.mcp.tools.unit

import jetbrains.mps.agents.mcp.tools.common.AgenticViewRenderer
import jetbrains.mps.agents.mcp.tools.common.AgenticViewRenderer.ConceptKey
import jetbrains.mps.agents.mcp.tools.common.AgenticViewRenderer.Line
import jetbrains.mps.agents.mcp.tools.common.AgenticViewRenderer.Reference
import jetbrains.mps.agents.mcp.tools.common.AgenticViewRenderer.Rendering
import jetbrains.mps.smodel.adapter.structure.types.SPrimitiveTypes
import jetbrains.mps.util.StringUtil

import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test

/** The model-free parts of `mps_mcp_print_node` AGENTIC VIEW: quoting, ids, line assembly, legends and the depth cut. */
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

    @Test
    fun `the depth is the largest that fits, never below one`() {
        val sizes = mapOf(0 to 10, 1 to 40, 2 to 90, 3 to 200)
        assertEquals(3, AgenticViewRenderer.selectCutDepth(3, 200, sizes::getValue))
        assertEquals(2, AgenticViewRenderer.selectCutDepth(3, 199, sizes::getValue))
        assertEquals(1, AgenticViewRenderer.selectCutDepth(3, 40, sizes::getValue))
        assertNull("depth 0 is not a cut", AgenticViewRenderer.selectCutDepth(3, 39, sizes::getValue))
        assertEquals(0, AgenticViewRenderer.selectCutDepth(0, 10, sizes::getValue))
        assertNull(AgenticViewRenderer.selectCutDepth(0, 9, sizes::getValue))
    }

    private fun sample(): Rendering {
        val lines = listOf(
            Line(0, null, script, "1", name = "Maze", empty = "empty: children definitions", descendants = 3),
            Line(1, "body", ConceptKey("jetbrains.mps.samples.Kaja", "CommandList"), "2", descendants = 2),
            Line(2, "commands[0]", kaja, "3", references = listOf(Reference("x", "T", m1, "9")), descendants = 1),
            Line(3, "condition", bl, "4"),
        )
        return Rendering(
            m0, lines, totalNodes = 4, treeDepth = 3,
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
            sample().text(3),
        )
    }

    @Test
    fun `a cut printout has the cut line, hidden counts and only the printed concepts and models`() {
        val rendering = sample()
        assertEquals(
            """
            # AGENTIC VIEW 1 | model m0=$m0 | node reference = <model>/<id>
            # concepts jetbrains.mps.samples.Kaja: CommandList Script
            # cut at depth 1 of 3: 2 of 4 nodes printed (the whole printout is ${rendering.wholeChars} chars); print the "(+N)" nodes you need by their ids
            Script #1 Maze
              empty: children definitions
              body: CommandList #2 (+2)
            """.trimIndent(),
            rendering.text(1, cut = true),
        )
        val full = AgenticViewRenderer.jsonLength(rendering.text(3))
        val fit = rendering.fit(full)
        assertTrue(fit.inline)
        assertNull(fit.cutDepth)
        assertEquals(3, fit.depth)

        val cut = rendering.fit(full - 1)
        assertTrue(cut.inline)
        assertEquals(cut.depth, cut.cutDepth)
        assertTrue(cut.text, cut.text.contains("# cut at depth ${cut.depth} of 3"))
        assertTrue(AgenticViewRenderer.jsonLength(cut.text) <= full - 1)

        val none = rendering.fit(10)
        assertFalse(none.inline)
        assertEquals(rendering.text(3), none.text)
        assertEquals(2, rendering.printedNodes(1))
    }

    @Test
    fun `the JSON length counts the escapes`() {
        assertEquals("\"a\\nb\\\"\"".length, AgenticViewRenderer.jsonLength("a\nb\""))
    }
}
