package jetbrains.mps.agents.mcp.tools.integration

import jetbrains.mps.agents.mcp.tools.*
import jetbrains.mps.agents.mcp.tools.common.*

import com.google.gson.JsonObject
import com.google.gson.JsonParser
import jetbrains.mps.lang.smodel.generator.smodelAdapter.IAttributeDescriptor
import jetbrains.mps.project.MPSProject
import jetbrains.mps.project.modules.LanguageProducer
import jetbrains.mps.smodel.SNodeUtil
import jetbrains.mps.smodel.adapter.ids.MetaIdHelper
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory
import jetbrains.mps.util.StringUtil
import org.jetbrains.mps.openapi.language.SEnumeration
import org.jetbrains.mps.openapi.language.SProperty
import org.jetbrains.mps.openapi.model.SModel
import org.jetbrains.mps.openapi.model.SNode
import org.jetbrains.mps.openapi.model.SNodeAccessUtil
import org.jetbrains.mps.openapi.persistence.PersistenceFacade
import org.junit.After
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test
import java.io.File

/**
 * `mps_mcp_print_node` format AGENTIC VIEW (plan `docs/AGENTIC_VIEW-plan.md`, P2): parity with JSON deep under
 * the mapping of §2.1, read back with a parser of the §2 grammar, and the format's own rules.
 */
class PrintNodeAgenticViewIntegrationTest : AgenticViewIntegrationTestBase() {

    // ── fixtures ──────────────────────────────────────────────────────────────────────────

    private fun property(node: SNode, name: String): SProperty = readOnRepo { node.concept.properties.single { it.name == name } }

    private fun subtree(node: SNode): List<SNode> = listOf(node) + node.children.flatMap { subtree(it) }

    private fun descendant(root: SNode, conceptName: String): SNode = readOnRepo { subtree(root).single { it.concept.name == conceptName } }

    /** A concept root with two property declarations (no `dataType`, a required reference), `extends` = BaseConcept. */
    private fun conceptWithProperties(name: String): SNode {
        val ref = createConceptRoot(name)
        for (p in listOf("first", "second")) {
            val resp = runTool(toolset) {
                it.mps_mcp_update_node(
                    NodeUpdateOperation.ADD, NodeUpdateKind.CHILD, nodeReference = ref, childRole = "propertyDeclaration",
                    childJson = """{"concept":"jetbrains.mps.lang.structure.structure.PropertyDeclaration","properties":[{"name":"name","value":"$p"}]}""",
                )
            }
            assertTrue(resp, JsonParser.parseString(resp).asJsonObject.get("ok").asBoolean)
        }
        val node = resolveNodeRef(ref)
        executeCommand {
            val extends = node.concept.referenceLinks.single { it.name == "extends" }
            node.setReferenceTarget(extends, SNodeUtil.concept_BaseConcept.sourceNode!!.resolve(myProject.repository))
        }
        return node
    }

    private class GhostFixture(val root: SNode, val conceptName: String)

    /** As in the JSON D89 tests: a root of a concept whose language does not exist, with a `parts` child and a `buddy` reference. */
    private fun ghostRoot(model: SModel, buddy: SNode): GhostFixture {
        val uuid = java.util.UUID.randomUUID()
        val (hi, lo) = uuid.mostSignificantBits to uuid.leastSignificantBits
        val conceptName = "ghost${System.nanoTime()}.structure.Ghost"
        val concept = MetaAdapterFactory.getConcept(hi, lo, 1L, conceptName)
        val size = MetaAdapterFactory.getProperty(hi, lo, 1L, 11L, "size")
        val parts = MetaAdapterFactory.getContainmentLink(hi, lo, 1L, 12L, "parts")
        val buddyLink = MetaAdapterFactory.getReferenceLink(hi, lo, 1L, 13L, "buddy")
        lateinit var root: SNode
        executeCommand {
            root = jetbrains.mps.smodel.SNode(concept)
            root.setProperty(SNodeUtil.property_INamedConcept_name, "G1")
            root.setProperty(size, "3")
            val child = jetbrains.mps.smodel.SNode(concept)
            child.setProperty(size, "7")
            root.addChild(parts, child)
            root.setReferenceTarget(buddyLink, buddy)
            model.addRootNode(root)
        }
        return GhostFixture(root, conceptName)
    }

    // ── 1: parity ────────────────────────────────────────────────────────────────────────

    @Test
    fun `parity with JSON deep on a concept, a class with a stub reference and a ghost root`() {
        val concept = conceptWithProperties("ParityConcept")
        assertParity(refOf(concept))
        assertParity(refOf(classRoot("ParityClass", "public java.lang.String name; int total = 1 + 2;")))
        val ghost = ghostRoot(createModel(createSolution(), "ghost.sandbox${System.nanoTime()}"), concept)
        try {
            assertParity(refOf(ghost.root))
        } finally {
            executeCommand { ghost.root.delete() }
        }
    }

    // ── 2: defaults ──────────────────────────────────────────────────────────────────────

    @Test
    fun `unset booleans and enums print with a star, a stored default literal without, empty strings and integers on the empty line`() {
        val concept = resolveNodeRef(createConceptRoot("Defaults"))
        val staticScope = property(concept, "staticScope")
        executeCommand { concept.setProperty(staticScope, null) }
        val unset = parse(text(refOf(concept))).root
        assertEquals("unset enum: ${unset.props}", "global", unset.props["staticScope"]?.value)
        assertTrue(unset.props["staticScope"]!!.starred)
        assertEquals("unset boolean", "false", unset.props["rootable"]?.value)
        assertTrue(unset.props["rootable"]!!.starred)
        assertTrue("unset string: ${unset.empty}", "conceptAlias" in unset.empty["properties"].orEmpty())
        assertFalse(unset.props.containsKey("conceptAlias"))

        // The typed setter stores a default literal implicitly (as nothing); a model saved by an older MPS can still hold it.
        executeCommand {
            val default = (staticScope.type as SEnumeration).default!!
            val id = jetbrains.mps.smodel.JavaFriendlyBase64().toString(MetaIdHelper.getEnumerationLiteral(default).idValue)
            concept.setProperty(staticScope, "$id/${default.name}")
        }
        assertTrue("test precondition: the default literal is stored", readOnRepo { SNodeAccessUtil.hasProperty(concept, staticScope) })
        val stored = parse(text(refOf(concept))).root.props["staticScope"]
        assertEquals("global", stored?.value)
        assertFalse("a stored default literal has no star", stored!!.starred)

        val klass = classRoot("DefaultsInt", "int total = 1;")
        val constant = descendant(klass, "IntegerConstant")
        executeCommand { constant.setProperty(property(constant, "value"), null) }
        val printedConstant = parse(text(refOf(klass))).root.all().single { it.concept == "IntegerConstant" }
        assertTrue("unset integer: ${printedConstant.empty}", "value" in printedConstant.empty["properties"].orEmpty())
    }

    @Test
    fun `a stored value its data type cannot render prints raw, not as unset`() {
        val concept = resolveNodeRef(createConceptRoot("RawValue"))
        executeCommand { concept.setProperty(property(concept, "rootable"), "yes") }
        val root = parse(text(refOf(concept))).root
        val raw = root.props["rootable"]
        assertEquals("\"yes\"", raw?.value)
        assertTrue(raw!!.flags.toString(), "!raw" in raw.flags)
        assertFalse(raw.starred)
        assertFalse("a stored value is not unset: ${root.empty}", "rootable" in root.empty["properties"].orEmpty())
        assertParity(refOf(concept))
    }

    @Test
    fun `a stored enum value that is no literal prints raw in both formats without failing`() {
        val concept = resolveNodeRef(createConceptRoot("RawEnum"))
        executeCommand { concept.setProperty(property(concept, "staticScope"), "no such literal") }
        val raw = parse(text(refOf(concept))).root.props["staticScope"]
        assertEquals("\"no such literal\"", raw?.value)
        assertTrue(raw!!.flags.toString(), "!raw" in raw.flags)
        assertParity(refOf(concept))
    }

    // ── 3: empty features ────────────────────────────────────────────────────────────────

    @Test
    fun `empty roles and unset references are on the empty line, required ones marked, deprecated ones absent`() {
        val concept = parse(text(refOf(conceptWithProperties("Empties")))).root
        assertTrue(concept.empty.toString(), "implements" in concept.empty["children"].orEmpty())
        assertTrue(concept.empty.toString(), "icon" in concept.empty["children"].orEmpty())
        assertTrue(concept.empty.toString(), "sourceNode" in concept.empty["references"].orEmpty())
        assertFalse("smodelAttribute is never on the empty line", "smodelAttribute" in concept.empty["children"].orEmpty())
        val property = concept.children.first { it.role == "propertyDeclaration" }
        assertEquals(listOf("dataType!required"), property.empty["references"])

        val klass = classRoot("EmptiesClass", "int total = 1 + 2;")
        executeCommand { descendant(klass, "PlusExpression").children.single { it.containmentLink?.name == "rightExpression" }.delete() }
        val text = text(refOf(klass))
        val parsed = parse(text)
        val plus = parsed.root.all().single { it.concept == "PlusExpression" }
        assertEquals(listOf("rightExpression!required"), plus.empty["children"])
        val classLine = parsed.root
        for (deprecated in listOf("field", "constructor", "staticMethod")) {
            assertFalse("$deprecated is deprecated and empty: ${classLine.empty}", deprecated in classLine.empty["children"].orEmpty())
        }
        val legend = parsed.header.single { it.startsWith("# deprecated, printed only when set: ") }
        assertTrue(legend, Regex("""ClassConcept: [^|]*\bfield\b""").containsMatchIn(legend))
        assertTrue("isDeprecated is printed at most once: $text", classLine.props.keys.count { it.startsWith("isDeprecated") } <= 1)
    }

    // ── 4: attributes ────────────────────────────────────────────────────────────────────

    @Test
    fun `node, property and reference attributes print first under the annotated node with their marker`() {
        val host = conceptWithProperties("Attributed")
        val generator = "jetbrains.mps.lang.generator"
        val fragment = concept(generator, "TemplateFragment")
        val propertyMacro = concept(generator, "PropertyMacro")
        val referenceMacro = concept(generator, "ReferenceMacro")
        executeCommand {
            IAttributeDescriptor.NodeAttribute(fragment).setNew(host)
            IAttributeDescriptor.PropertyAttribute(propertyMacro, host.concept.properties.single { it.name == "conceptAlias" }).setNew(host)
            IAttributeDescriptor.LinkAttribute(referenceMacro, host.concept.referenceLinks.single { it.name == "extends" }).setNew(host)
        }
        val root = parse(text(refOf(host))).root
        assertEquals(
            listOf("@attr" to "TemplateFragment", "@prop(conceptAlias)" to "PropertyMacro", "@ref(extends)" to "ReferenceMacro"),
            root.children.take(3).map { it.label to it.concept },
        )
        assertTrue(root.children.drop(3).none { it.label!!.startsWith("@") })
        assertParity(refOf(host))
    }

    // ── 5: undeclared features and unloaded concepts ─────────────────────────────────────

    @Test
    fun `a ghost root prints its stored features as undeclared and warns once`() {
        val buddy = resolveNodeRef(createConceptRoot("GhostBuddyAgentic"))
        val ghost = ghostRoot(createModel(createSolution(), "ghost.sandbox${System.nanoTime()}"), buddy)
        try {
            val envelope = agentic(refOf(ghost.root))
            val parsed = parse(okText(envelope))
            val root = parsed.root
            assertEquals(listOf("!conceptNotLoaded"), root.flags)
            assertEquals("G1", root.props["name"]?.value)
            assertTrue("!undeclared" in root.props["name"]!!.flags)
            assertEquals("3", root.props["size"]?.value)
            assertTrue("!undeclared" in root.props["size"]!!.flags)
            assertTrue("no empty line for an unloaded concept", root.empty.isEmpty())
            val buddyRef = root.refs["buddy"]!!
            assertEquals("GhostBuddyAgentic", buddyRef.target)
            assertTrue("!undeclared" in buddyRef.flags)
            assertEquals(structureModelRef, parsed.models[buddyRef.alias!!])
            val child = root.children.single()
            assertTrue(child.label!!, Regex("""parts(\[0])? !undeclared""").matches(child.label!!))
            assertEquals(listOf("!conceptNotLoaded"), child.flags)
            assertTrue(parsed.header.any { it.startsWith("# concepts ") && it.contains(": Ghost") })
            val warnings = warnings(envelope)
            assertEquals(envelope.toString(), 1, warnings.size)
            assertTrue(warnings.single().contains(ghost.conceptName))
        } finally {
            executeCommand { ghost.root.delete() }
        }

        val stale = resolveNodeRef(createConceptRoot("StaleAgentic"))
        executeCommand { stale.setProperty(MetaAdapterFactory.getProperty(stale.concept, 0x7ffffff0_0000_0011L, "staleProp"), "kept") }
        val envelope = agentic(refOf(stale))
        val prop = parse(okText(envelope)).root.props["staleProp"]
        assertEquals("kept", prop?.value)
        assertTrue("!undeclared" in prop!!.flags)
        assertNull("no warning for a loaded concept: $envelope", envelope.get("warnings"))
    }

    // ── 6: references ────────────────────────────────────────────────────────────────────

    @Test
    fun `references name their model in the legend, a stub id resolves and an unresolved one prints a question mark`() {
        val concept = parse(text(refOf(conceptWithProperties("Refs"))))
        val extends = concept.root.refs["extends"]!!
        assertEquals("BaseConcept", extends.target)
        assertEquals("r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)", concept.models[extends.alias!!])

        val klass = parse(text(refOf(classRoot("StubRefs", "public java.lang.String name;"))))
        val classifier = klass.root.all().flatMap { it.refs.entries }.single { it.key == "classifier" }.value
        assertEquals("String", classifier.target)
        val rebuilt = "${klass.models.getValue(classifier.alias!!)}/${classifier.id}"
        val resolved = readOnRepo { PersistenceFacade.getInstance().createNodeReference(rebuilt).resolve(myProject.repository)?.name }
        assertEquals("the stub reference rebuilt from the legend resolves: $rebuilt", "String", resolved)

        val holder = resolveNodeRef(createConceptRoot("RefHolder"))
        val gone = resolveNodeRef(createConceptRoot("RefGone"))
        val goneId = readOnRepo { gone.nodeId.toString() }
        executeCommand {
            holder.setReferenceTarget(holder.concept.referenceLinks.single { it.name == "extends" }, gone)
            gone.delete()
        }
        val unresolved = parse(text(refOf(holder))).root.refs["extends"]!!
        assertNull(unresolved.target)
        assertNull("the target was in the printed node's model", unresolved.alias)
        assertEquals(goneId, unresolved.id)
        assertEquals(listOf("!unresolved"), unresolved.flags)
        assertParity(refOf(holder))
    }

    private var projectB: MPSProject? = null

    @After
    fun closeProjectB() {
        projectB?.let { mcpEnvironment.closeProject(it) }
        projectB = null
    }

    @Test
    fun `a model of another open project is marked foreign, as a reference target and as the printed model`() {
        val b = (mcpEnvironment.createEmptyProject() as MPSProject).also { projectB = it }
        val name = "mcp.test.foreign${System.nanoTime()}"
        lateinit var bStructure: SModel
        executeCommandIn(b) {
            val language = LanguageProducer(b).withGenerator(false).create(name, createDirIn(b, name.replace('.', '_')))
            bStructure = language.models.single { it.name.longName.endsWith(".structure") }
        }
        val conceptDeclaration = concept("jetbrains.mps.lang.structure", "ConceptDeclaration")
        lateinit var foreign: SNode
        executeCommandIn(b) {
            foreign = jetbrains.mps.smodel.SNode(conceptDeclaration)
            foreign.setProperty(SNodeUtil.property_INamedConcept_name, "ForeignBase")
            bStructure.addRootNode(foreign)
        }
        val host = resolveNodeRef(createConceptRoot("ForeignHost"))
        executeCommand { host.setReferenceTarget(host.concept.referenceLinks.single { it.name == "extends" }, foreign) }
        val bModel = modelRefOf(bStructure)

        val parsed = parse(text(refOf(host)))
        val extends = parsed.root.refs["extends"]!!
        assertEquals("ForeignBase", extends.target)
        assertEquals(bModel, parsed.models[extends.alias!!])
        assertTrue(parsed.header.toString(), parsed.header.any { it.startsWith("# models ") && it.contains("${extends.alias}=$bModel !foreign") })
        assertFalse("the printed node's own model is not foreign: ${parsed.header[0]}", parsed.header[0].contains("!foreign"))

        val printedForeign = text(refOf(foreign)).split("\n").first()
        assertTrue(printedForeign, printedForeign.contains("| model m0=$bModel !foreign |"))
    }

    // ── 7: nodeDepth ─────────────────────────────────────────────────────────────────────

    @Test
    fun `nodeDepth limits the levels and the hidden counts add up to the total`() {
        val ref = refOf(classRoot("Depths", "int total = 1 + 2; int other = 3;"))
        val full = agentic(ref)
        val total = agenticDetails(full).get("nodes").asInt
        val fullNodes = parse(okText(full)).root.all()
        assertEquals(total, fullNodes.size)
        assertEquals(total, agenticDetails(full).get("printedNodes").asInt)
        assertTrue("no hidden count without a cut", fullNodes.all { it.hidden == 0 })

        for (depth in listOf(0, 1, 2)) {
            val envelope = agentic(ref, nodeDepth = depth)
            val nodes = parse(okText(envelope)).root.all()
            assertTrue(nodes.all { it.depth <= depth })
            assertEquals("depth $depth", total, nodes.size + nodes.sumOf { it.hidden })
            assertTrue(nodes.filter { it.hidden > 0 }.all { it.depth == depth })
            assertEquals(total, agenticDetails(envelope).get("nodes").asInt)
            assertEquals(nodes.size, agenticDetails(envelope).get("printedNodes").asInt)
            assertFalse("nodeDepth is not a size cut", agenticDetails(envelope).has("cut"))
            assertFalse(okText(envelope).contains("\n# cut: "))
        }
        assertEquals(1, parse(text(ref, nodeDepth = 0)).root.all().size)
    }

    // ── 8: size cut and file ─────────────────────────────────────────────────────────────

    private fun assertCut(envelope: JsonObject, budget: Int): List<PNode> {
        val text = okText(envelope)
        assertFalse("a cut, not a file: $text", File(text).isAbsolute)
        assertTrue(AgenticViewRenderer.jsonLength(text) <= budget)
        val details = agenticDetails(envelope)
        assertTrue(details.toString(), details.get("cut").asBoolean)
        assertFalse(details.has("cutDepth"))
        val total = details.get("nodes").asInt
        val printed = details.get("printedNodes").asInt
        val wholeChars = details.get("wholeChars").asInt
        assertTrue(text, text.contains("\n# cut: $printed of $total nodes printed (the whole printout is $wholeChars chars); " +
            "print the \"(+N)\" nodes you need by their ids\n"))
        val nodes = parse(text).root.all()
        assertEquals(printed, nodes.size)
        assertEquals("the (+N) counts add up to the total", total, nodes.size + nodes.sumOf { it.hidden })
        for (node in nodes) {
            assertTrue("a node is expanded with all its children or not at all", node.children.isEmpty() || node.hidden == 0 || node.text != null)
        }
        assertTrue(warnings(envelope).toString(), warnings(envelope).any { it.contains("cut to fit maxInlineBytes=$budget: $printed of $total nodes printed") })
        return nodes
    }

    @Test
    fun `a small limit gives a cut, not a file, and a tiny one writes the raw text to a txt file`() {
        val ref = refOf(classRoot("Budget", "int total = 1 + 2; int other = 3;"))
        val full = text(ref)
        val budget = AgenticViewRenderer.jsonLength(full) - 1
        val cut = agentic(ref, maxInlineBytes = budget)
        assertCut(cut, budget)
        assertEquals(AgenticViewRenderer.jsonLength(full), agenticDetails(cut).get("wholeChars").asInt)

        val tiny = agentic(ref, maxInlineBytes = 100)
        val path = extractFilePathFromData(tiny.toString())
        assertTrue(path, path.endsWith(".txt"))
        assertEquals(full, File(path).readText())
        assertFalse(agenticDetails(tiny).has("cut"))
        assertTrue(warnings(tiny).toString(), warnings(tiny).any { it.contains("The node alone exceeds maxInlineBytes=100") && it.contains(".txt") })
    }

    @Test
    fun `the cut fills the budget breadth-first and prints at least as many nodes as the uniform depth cut`() {
        // About ten nodes per initialized field.
        val ref = refOf(classRoot("WideBudget", (0 until 12).joinToString(" ") { "int f$it = 1 + 2 * $it;" }))
        val total = agenticDetails(agentic(ref)).get("nodes").asInt
        val depths = (0..8).map { d -> agentic(ref, nodeDepth = d) }
        var beatUniform = false
        for (budget in listOf(800, 1500, 2500, 3500, 5000)) {
            val cut = agentic(ref, maxInlineBytes = budget)
            if (!agenticDetails(cut).has("cut")) continue
            val nodes = assertCut(cut, budget)
            // A level is printed only when the one above it is printed in full: breadth-first order.
            val deepest = nodes.maxOf { it.depth }
            assertTrue(nodes.filter { it.depth < deepest - 1 }.all { it.hidden == 0 })
            // The old rule: the deepest uniform depth whose printout, with the cut line, fits.
            val uniform = depths.filter { d ->
                val printed = agenticDetails(d).get("printedNodes").asInt
                val cutLine = "# cut: $printed of $total nodes printed (the whole printout is ${agenticDetails(cut).get("wholeChars").asInt} chars); " +
                    "print the \"(+N)\" nodes you need by their ids"
                AgenticViewRenderer.jsonLength(okText(d)) + AgenticViewRenderer.jsonLength(cutLine) <= budget
            }.maxOfOrNull { agenticDetails(it).get("printedNodes").asInt } ?: 1
            val printed = agenticDetails(cut).get("printedNodes").asInt
            assertTrue("budget $budget: $printed nodes against $uniform for a uniform cut", printed >= uniform)
            if (printed > uniform) beatUniform = true
        }
        assertTrue("the budget-filling cut prints more than a uniform cut for some budget", beatUniform)
    }

    // ── 9: computed names ─────────────────────────────────────────────────────────────────

    @Test
    fun `a computed name prints in the name position with a star and a stored one without`() {
        val behavior = createConceptBehaviorRoot("Computed${System.nanoTime() % 100000}")
        val root = parse(text(behavior)).root
        val concept = readOnRepo { resolveNodeRef(behavior).references.single { it.link.name == "concept" }.targetNode!!.name!! }
        assertEquals("${concept}_Behavior", root.name)
        assertTrue("a computed name has a star", root.nameStarred)
        assertFalse("the name is not repeated among the properties: ${root.props.keys}", root.props.containsKey("name"))
        assertTrue(text(behavior).contains("\nConceptBehavior #${root.id} ${concept}_Behavior* "))
        assertParity(behavior)

        val conceptNode = resolveNodeRef(createConceptRoot("Renamed${System.nanoTime() % 100000}"))
        executeCommand { conceptNode.setProperty(SNodeUtil.property_INamedConcept_name, "two words") }
        val stored = parse(text(refOf(conceptNode))).root
        assertEquals("two words", stored.name)
        assertFalse("a stored name has no star", stored.nameStarred)
        assertTrue(text(refOf(conceptNode)).contains(" \"two words\" "))

        executeCommand {
            val behaviorNode = resolveNodeRef(behavior)
            behaviorNode.setReferenceTarget(behaviorNode.concept.referenceLinks.single { it.name == "concept" }, conceptNode)
        }
        val quoted = text(behavior)
        assertTrue(quoted, quoted.contains(" \"two words_Behavior\"* "))
        assertEquals("two words_Behavior", parse(quoted).root.name)
        assertParity(behavior)
    }

    // ── 10: literals and editorHints ──────────────────────────────────────────────────────

    @Test
    fun `the literal is case-insensitive with a space or an underscore and editorHints is ignored with a warning`() {
        val ref = createConceptRoot("Literals")
        val expected = text(ref)
        for (format in listOf("AGENTIC_VIEW", "agentic view", "Agentic View")) assertEquals(format, expected, okText(agentic(ref, format = format)))
        val hinted = agentic(ref, editorHints = "comment")
        assertEquals(expected, okText(hinted))
        assertTrue(hinted.toString(), warnings(hinted).single().contains("ignored for AGENTIC VIEW"))
        val rejected = agentic(ref, format = "AGENTIC")
        assertFalse(rejected.get("ok").asBoolean)
        assertEquals("Invalid format 'AGENTIC'. Allowed values: JSON, HTML, PLAIN TEXT, IMAGE, AGENTIC VIEW", rejected.get("error").asString)
    }

    // ── 11: codeAsText ────────────────────────────────────────────────────────────────────

    private val codeBody = "int total = 1 + 2; public int sum(int a) { int b = a * 2; return b + total; }"

    @Test
    fun `codeAsText prints each outermost statement and expression as one line with its text and keeps ids and counts`() {
        val klass = classRoot("CodeText", codeBody)
        val ref = refOf(klass)
        val envelope = agentic(ref, codeAsText = true)
        val nodes = parse(okText(envelope)).root.all()
        val details = agenticDetails(envelope)
        val total = details.get("nodes").asInt
        assertEquals(total, readOnRepo { subtree(klass).size })
        assertEquals("the (+N) counts add up to the total", total, nodes.size + nodes.sumOf { it.hidden })
        assertEquals(nodes.size, details.get("printedNodes").asInt)
        val code = nodes.filter { it.text != null }
        assertEquals(details.toString(), code.size, details.get("collapsed").asInt)
        assertEquals(
            listOf("initializer" to "1 + 2", "statement" to "int b = a * 2;", "statement" to "return b + total;"),
            code.map { it.role to it.text },
        )
        assertEquals("the statements keep their concepts", listOf("PlusExpression", "LocalVariableDeclarationStatement", "ReturnStatement"), code.map { it.concept })
        val byId = readOnRepo { subtree(klass).associateBy { it.nodeId.toString() } }
        for (line in code) {
            val node = byId[StringUtil.unescapeRefChars(line.id)] ?: error("id ${line.id} is no node of the class")
            assertEquals(line.concept, readOnRepo { node.concept.name })
            assertEquals("${line.id}: its inner nodes are counted", readOnRepo { subtree(node).size } - 1, line.hidden)
        }
        assertTrue("the method body is a node line, not code: $nodes", nodes.any { it.concept == "StatementList" && it.text == null })
        assertTrue(warnings(envelope).toString(), warnings(envelope).isEmpty())
        assertParity(ref, codeAsText = true)
    }

    @Test
    fun `codeAsText lists a macro inside a collapsed statement under it with the id of the annotated node`() {
        val klass = classRoot("CodeMacro", codeBody)
        val (statementNode, constant) = readOnRepo {
            val statement = subtree(klass).single { it.concept.name == "LocalVariableDeclarationStatement" }
            statement to subtree(statement).single { it.concept.name == "IntegerConstant" }
        }
        val propertyMacro = concept("jetbrains.mps.lang.generator", "PropertyMacro")
        lateinit var macroNode: SNode
        executeCommand { macroNode = IAttributeDescriptor.PropertyAttribute(propertyMacro, property(constant, "value")).setNew(constant) }
        val envelope = agentic(refOf(klass), codeAsText = true)
        val statement = parse(okText(envelope)).root.all().single { it.concept == "LocalVariableDeclarationStatement" }
        assertNotNull(statement.text)
        val macro = statement.children.single()
        assertEquals("PropertyMacro", macro.concept)
        assertEquals(readOnRepo { macroNode.nodeId.toString() }, macro.id)
        assertEquals("@prop(value) on #${readOnRepo { constant.nodeId.toString() }}", macro.label)
        assertEquals(
            "the macro is printed, the other inner nodes are counted",
            readOnRepo { subtree(statementNode).size - 1 - subtree(macroNode).size }, statement.hidden,
        )
        assertTrue(warnings(envelope).toString(), warnings(envelope).isEmpty())
        assertParity(refOf(klass), codeAsText = true)
    }

    @Test
    fun `codeAsText prints code without a cell in the editor as node lines, with one warning`() {
        val klass = classRoot("CodeInspector", codeBody)
        val bl = "jetbrains.mps.baseLanguage"
        val (macroConcept, functionConcept) = concept("jetbrains.mps.lang.generator", "PropertyMacro") to
            concept("jetbrains.mps.lang.generator", "PropertyMacro_GetPropertyValue")
        val (bodyConcept, returnConcept, literalConcept) = Triple(concept(bl, "StatementList"), concept(bl, "ReturnStatement"), concept(bl, "StringLiteral"))
        val constant = readOnRepo {
            subtree(subtree(klass).single { it.concept.name == "LocalVariableDeclarationStatement" }).single { it.concept.name == "IntegerConstant" }
        }
        val value = property(constant, "value")
        fun SNode.add(role: String, child: SNode) = addChild(concept.containmentLinks.single { it.name == role }, child)
        lateinit var query: SNode
        executeCommand {
            val macro = IAttributeDescriptor.PropertyAttribute(macroConcept, value).setNew(constant)
            val function = jetbrains.mps.smodel.SNode(functionConcept).also { macro.add("propertyValueFunction", it) }
            val body = jetbrains.mps.smodel.SNode(bodyConcept).also { function.add("body", it) }
            query = jetbrains.mps.smodel.SNode(returnConcept).also { body.add("statement", it) }
            val literal = jetbrains.mps.smodel.SNode(literalConcept)
            literal.setProperty(literalConcept.properties.single { it.name == "value" }, "7")
            query.add("expression", literal)
        }
        val envelope = agentic(refOf(klass), codeAsText = true)
        val warning = warnings(envelope).single()
        assertTrue(warning, warning.startsWith("codeAsText: 1 statement(s) or expression(s) have no cell in this node's editor"))
        val nodes = parse(okText(envelope)).root.all()
        val queryIds = readOnRepo { subtree(query).map { it.nodeId.toString() } }
        val queryLines = nodes.filter { StringUtil.unescapeRefChars(it.id) in queryIds }
        assertEquals("the inspector-only query is printed as node lines", listOf("ReturnStatement", "StringLiteral"), queryLines.map { it.concept })
        assertTrue(queryLines.toString(), queryLines.all { it.text == null })
        val code = nodes.filter { it.text != null }
        assertEquals("the macro shows in the text as the editor draws it", listOf("1 + 2", "int b = a * $2;", "return b + total;"), code.map { it.text })
        assertEquals("collapsed counts the code lines only", code.size, agenticDetails(envelope).get("collapsed").asInt)
        assertParity(refOf(klass), codeAsText = true)
    }

    @Test
    fun `without codeAsText the printout is unchanged and nodeDepth and the cut apply after collapsing`() {
        val ref = refOf(classRoot("CodeFlag", codeBody))
        val plain = agentic(ref)
        assertEquals("one line per node", jsonSize(jsonDeep(ref)), parse(okText(plain)).root.all().size)
        assertFalse(okText(plain), okText(plain).contains(" = \""))
        assertFalse(agenticDetails(plain).has("collapsed"))
        assertTrue(parse(okText(plain)).root.all().none { it.text != null })

        val collapsed = parse(text(ref, codeAsText = true)).root.all()
        val deepest = collapsed.maxOf { it.depth }
        val bounded = agentic(ref, nodeDepth = deepest - 1, codeAsText = true)
        val boundedNodes = parse(okText(bounded)).root.all()
        assertEquals(collapsed.filter { it.depth < deepest }.map { it.id }, boundedNodes.map { it.id })
        assertEquals(agenticDetails(bounded).get("nodes").asInt, boundedNodes.size + boundedNodes.sumOf { it.hidden })

        val full = text(ref, codeAsText = true)
        val budget = AgenticViewRenderer.jsonLength(full) - 1
        val cut = agentic(ref, maxInlineBytes = budget, codeAsText = true)
        val cutCode = assertCut(cut, budget).count { it.text != null }
        assertEquals("collapsed counts the printed code lines", cutCode, agenticDetails(cut).get("collapsed").asInt)
        assertTrue("the cut drops a code line: $cutCode", cutCode < collapsed.count { it.text != null })
    }

    // ── 12: hygiene ──────────────────────────────────────────────────────────────────────

    @Test
    fun `no line has trailing whitespace or tabs and two prints are identical`() {
        val ref = refOf(classRoot("Hygiene", "public java.lang.String name; int total = 1 + 2;"))
        val first = text(ref)
        for (line in first.split("\n")) {
            assertEquals("trailing whitespace: '$line'", line.trimEnd(), line)
            assertFalse("tab: '$line'", '\t' in line)
        }
        assertEquals(first, text(ref))
        assertNotNull(first.split("\n").firstOrNull { it.startsWith("# AGENTIC VIEW 1 | model m0=") })
    }
}
