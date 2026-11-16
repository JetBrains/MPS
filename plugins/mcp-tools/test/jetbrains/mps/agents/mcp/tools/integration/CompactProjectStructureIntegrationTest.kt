package jetbrains.mps.agents.mcp.tools.integration

import jetbrains.mps.agents.mcp.tools.*
import jetbrains.mps.agents.mcp.tools.common.*

import com.google.gson.JsonObject
import com.google.gson.JsonParser
import org.jetbrains.mps.openapi.model.SModel
import org.jetbrains.mps.openapi.persistence.PersistenceFacade
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test
import java.io.File

/**
 * `mps_mcp_get_compact_project_structure`: a model, a module or a root as AGENTIC VIEW text, one section per model,
 * with the budget-filling cut across the forest of roots.
 */
class CompactProjectStructureIntegrationTest : AgenticViewIntegrationTestBase() {

    private val projectToolset = JetBrainsMPSProjectMcpToolset()

    private fun compact(startingPoint: String, nodeDepth: Int = -1, maxInlineBytes: Int = 1_000_000): JsonObject =
        JsonParser.parseString(runTool(projectToolset) {
            it.mps_mcp_get_compact_project_structure(startingPoint, nodeDepth = nodeDepth, maxInlineBytes = maxInlineBytes)
        }).asJsonObject

    /** The classes `public class <name> { <body> }` parsed into [model] as roots, in order. */
    private fun classes(model: SModel, vararg classes: Pair<String, String>) {
        for ((name, body) in classes) {
            val response = runTool(JetBrainsMPSJavaMcpToolset()) {
                it.mps_mcp_parse_java_and_insert(
                    """{"code":"public class $name { $body }","featureKind":"CLASS",
                        "insert":{"mode":"root","modelRef":"${modelRefOf(model)}"}}"""
                )
            }
            assertTrue("parse_java_and_insert: $response", JsonParser.parseString(response).asJsonObject.get("ok").asBoolean)
        }
    }

    private fun twoRootModel(): SModel {
        val model = createModel(createSolution(), "compact.model${System.nanoTime()}")
        classes(model, "First" to "public java.lang.String name; int total = 1 + 2;", "Second" to "int other = 3;")
        return model
    }

    private fun rootRefs(model: SModel): List<String> = readOnRepo { model.rootNodes.map { PersistenceFacade.getInstance().asString(it.reference) } }

    private fun rootIds(model: SModel): List<String> = readOnRepo { model.rootNodes.map { AgenticViewRenderer.escapeNodeId(it.nodeId.toString()) } }

    /** The sections of a printout, each from its `# AGENTIC VIEW 1` line to the next. */
    private fun sections(text: String): List<String> {
        val lines = text.split("\n")
        val starts = lines.indices.filter { lines[it].startsWith("# AGENTIC VIEW 1 | ") }
        return starts.mapIndexed { k, i -> lines.subList(i, starts.getOrElse(k + 1) { lines.size }).joinToString("\n") }
    }

    private fun hidden(roots: List<PNode>): Int = roots.flatMap { it.all() }.sumOf { it.hidden }

    @Test
    fun `a model prints its roots in model order, each in parity with JSON deep`() {
        val model = twoRootModel()
        val envelope = compact(modelRefOf(model))
        val text = okText(envelope)
        assertEquals("one section", 1, sections(text).size)
        val parsed = parse(text)
        assertEquals(modelRefOf(model), parsed.models["m0"])
        assertEquals(rootIds(model), parsed.roots.map { it.id })
        assertEquals(listOf("First", "Second"), parsed.roots.map { it.name })
        rootRefs(model).zip(parsed.roots).forEach { (ref, root) -> assertNode(jsonDeep(ref), root, parsed) }
        val details = agenticDetails(envelope)
        val nodes = parsed.roots.sumOf { it.all().size }
        assertEquals(1, details.get("models").asInt)
        assertEquals(2, details.get("roots").asInt)
        assertEquals(nodes, details.get("nodes").asInt)
        assertEquals(nodes, details.get("printedNodes").asInt)
        assertFalse(details.has("cut"))
        assertEquals("a model name prints the same", text, okText(compact(readOnRepo { model.name.value })))
    }

    @Test
    fun `nodeDepth 0 prints the root lines with their hidden counts and an empty model prints its header only`() {
        val model = twoRootModel()
        val total = agenticDetails(compact(modelRefOf(model))).get("nodes").asInt
        val envelope = compact(modelRefOf(model), nodeDepth = 0)
        val roots = parse(okText(envelope)).roots
        assertEquals(rootIds(model), roots.map { it.id })
        assertTrue(roots.all { it.children.isEmpty() && it.hidden > 0 })
        assertEquals(total, roots.size + hidden(roots))
        assertEquals(2, agenticDetails(envelope).get("printedNodes").asInt)
        assertFalse("nodeDepth is not a size cut", agenticDetails(envelope).has("cut"))

        val empty = createModel(createSolution(), "compact.empty${System.nanoTime()}")
        val emptyEnvelope = compact(modelRefOf(empty))
        assertEquals("# AGENTIC VIEW 1 | model m0=${modelRefOf(empty)} | node reference = <model>/<id>", okText(emptyEnvelope))
        assertEquals(0, agenticDetails(emptyEnvelope).get("roots").asInt)
        assertEquals(0, agenticDetails(emptyEnvelope).get("nodes").asInt)
    }

    @Test
    fun `a large model is cut breadth-first across its roots and the root lines are the floor`() {
        val model = createModel(createSolution(), "compact.cut${System.nanoTime()}")
        classes(model, *(0 until 3).map { "Wide$it" to (0 until 5).joinToString(" ") { f -> "int f$f = 1 + 2 * $f;" } }.toTypedArray())
        val full = okText(compact(modelRefOf(model)))
        val total = parse(full).roots.sumOf { it.all().size }
        var cuts = 0
        val length = AgenticViewRenderer.jsonLength(full)
        for (budget in listOf(length - 1, length / 2, length / 3)) {
            val envelope = compact(modelRefOf(model), maxInlineBytes = budget)
            val text = okText(envelope)
            assertFalse("a cut, not a file: $text", File(text).isAbsolute)
            assertTrue(AgenticViewRenderer.jsonLength(text) <= budget)
            val details = agenticDetails(envelope)
            assertTrue(details.toString(), details.get("cut").asBoolean)
            cuts++
            val lines = text.split("\n")
            val cutAt = lines.indexOfFirst { it.startsWith("# cut: ") }
            assertTrue("the cut line closes the first header: $text", lines.take(cutAt).all { it.startsWith("# ") } && !lines[cutAt + 1].startsWith("# "))
            assertTrue(lines[cutAt], lines[cutAt].startsWith("# cut: ${details.get("printedNodes").asInt} of $total nodes printed"))
            val roots = parse(text).roots
            assertEquals("every root is printed", rootIds(model), roots.map { it.id })
            assertEquals("the (+N) counts add up to the total", total, roots.sumOf { it.all().size } + hidden(roots))
            assertEquals(details.get("printedNodes").asInt, roots.sumOf { it.all().size })
            for (node in roots.flatMap { it.all() }) assertTrue("all children or none", node.children.isEmpty() || node.hidden == 0)
        }
        assertEquals(3, cuts)

        val tiny = compact(modelRefOf(model), maxInlineBytes = 100)
        val path = extractFilePathFromData(tiny.toString())
        assertTrue(path, path.endsWith(".txt"))
        assertEquals(full, File(path).readText())
        assertTrue(warnings(tiny).toString(), warnings(tiny).any { it.contains("The root lines alone exceed maxInlineBytes=100") })
    }

    @Test
    fun `a module prints one section per model with its own legends`() {
        val solution = createSolution()
        val withStub = createModel(solution, "${solution.moduleName}.a")
        val plain = createModel(solution, "${solution.moduleName}.b")
        classes(withStub, "Texts" to "public java.lang.String name;")
        classes(plain, "Numbers" to "int count = 1;", "More" to "int more = 2;")
        val models = readOnRepo { solution.models.toList() }
        val envelope = compact(solution.moduleName!!)
        val text = okText(envelope)
        assertEquals("# module ${solution.moduleName} | ${models.size} models", text.split("\n").first())
        val sections = sections(text)
        assertEquals(models.size, sections.size)
        val parsed = sections.map { parse(it) }
        assertEquals(models.map { modelRefOf(it) }, parsed.map { it.models["m0"] })
        val a = parsed[models.indexOf(withStub)]
        val b = parsed[models.indexOf(plain)]
        assertEquals(rootIds(withStub), a.roots.map { it.id })
        assertEquals(rootIds(plain), b.roots.map { it.id })
        assertTrue("the stub reference gets an alias in its own section: ${a.header}", a.header.any { it.startsWith("# models ") })
        assertFalse("no model legend where nothing points out: ${b.header}", b.header.any { it.startsWith("# models ") })
        assertTrue(a.header.single { it.startsWith("# concepts ") }.contains("ClassifierType"))
        assertFalse("the concepts legend lists only the section's concepts", b.header.single { it.startsWith("# concepts ") }.contains("ClassifierType"))
        rootRefs(plain).zip(b.roots).forEach { (ref, root) -> assertNode(jsonDeep(ref), root, b) }
        val details = agenticDetails(envelope)
        assertEquals(models.size, details.get("models").asInt)
        assertEquals(3, details.get("roots").asInt)
        assertEquals(parsed.sumOf { p -> p.roots.sumOf { it.all().size } }, details.get("nodes").asInt)
    }

    @Test
    fun `a node reference prints as print_node does and an unknown starting point fails as in get_project_structure`() {
        val model = twoRootModel()
        val ref = rootRefs(model).first()
        val envelope = compact(ref)
        assertEquals(text(ref), okText(envelope))
        assertEquals(1, agenticDetails(envelope).get("models").asInt)
        assertEquals(1, agenticDetails(envelope).get("roots").asInt)
        val nonRootRef = readOnRepo {
            PersistenceFacade.getInstance().asString(model.rootNodes.first().children.first().reference)
        }
        assertEquals("a non-root node reference prints as print_node does", text(nonRootRef), okText(compact(nonRootRef)))

        val unknown = "no.such.model${System.nanoTime()}"
        val expected = JsonParser.parseString(runTool(projectToolset) { it.mps_mcp_get_project_structure(startingPoint = unknown) }).asJsonObject
        assertFalse(expected.get("ok").asBoolean)
        assertEquals(expected, compact(unknown))

        val missing = compact("")
        assertFalse(missing.get("ok").asBoolean)
        assertTrue(missing.toString(), missing.get("error").asString.startsWith("startingPoint is required."))
        assertTrue(missing.toString(), missing.get("error").asString.contains("node reference"))
        assertFalse(missing.toString(), missing.get("error").asString.contains("root-node reference"))
    }
}
