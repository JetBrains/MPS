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
import jetbrains.mps.smodel.adapter.structure.types.SConstrainedStringDatatypeAdapter
import jetbrains.mps.smodel.adapter.structure.types.SPrimitiveTypes
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
class PrintNodeAgenticViewIntegrationTest : McpIntegrationTestBase() {

    private val toolset = JetBrainsMPSNodeMcpToolset()

    // ── calls ─────────────────────────────────────────────────────────────────────────────

    private fun agentic(
        ref: String,
        nodeDepth: Int = -1,
        maxInlineBytes: Int = 1_000_000,
        format: String = "AGENTIC VIEW",
        editorHints: String? = null,
    ): JsonObject = JsonParser.parseString(runTool(toolset) {
        it.mps_mcp_print_node(ref, format = format, maxInlineBytes = maxInlineBytes, editorHints = editorHints?.let(::JsonOrText), nodeDepth = nodeDepth)
    }).asJsonObject

    private fun okText(envelope: JsonObject): String {
        assertTrue("expected an ok envelope: $envelope", envelope.get("ok").asBoolean)
        return envelope.get("data").asString
    }

    private fun text(ref: String, nodeDepth: Int = -1): String = okText(agentic(ref, nodeDepth))

    private fun jsonDeep(ref: String): JsonObject =
        payloadObjectFromOkData(runTool(toolset) { it.mps_mcp_print_node(ref, deep = true, maxInlineBytes = 1_000_000) })

    private fun warnings(envelope: JsonObject): List<String> = envelope.getAsJsonArray("warnings")?.map { it.asString } ?: emptyList()

    private fun agenticDetails(envelope: JsonObject): JsonObject =
        envelope.getAsJsonObject("details")?.getAsJsonObject("agenticView") ?: error("no details.agenticView: $envelope")

    // ── fixtures ──────────────────────────────────────────────────────────────────────────

    private fun refOf(node: SNode): String = readOnRepo { PersistenceFacade.getInstance().asString(node.reference) }

    private fun property(node: SNode, name: String): SProperty = readOnRepo { node.concept.properties.single { it.name == name } }

    /** A BaseLanguage class root parsed from `public class [name] { [body] }` into a fresh solution model. */
    private fun classRoot(name: String, body: String): SNode {
        val model = createModel(createSolution(), "agentic.code${System.nanoTime()}")
        val response = runTool(JetBrainsMPSJavaMcpToolset()) {
            it.mps_mcp_parse_java_and_insert(
                """{"code":"public class $name { $body }","featureKind":"CLASS",
                    "insert":{"mode":"root","modelRef":"${modelRefOf(model)}"}}"""
            )
        }
        assertTrue("parse_java_and_insert: $response", JsonParser.parseString(response).asJsonObject.get("ok").asBoolean)
        return readOnRepo { model.rootNodes.single { it.name == name } }
    }

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

    // ── the §2 grammar, read back ────────────────────────────────────────────────────────

    private class PProp(val value: String, val starred: Boolean, val flags: MutableList<String> = mutableListOf())
    private class PRef(val target: String?, val alias: String?, val id: String?, val flags: MutableList<String> = mutableListOf())

    private class PNode(val depth: Int, val label: String?, val concept: String, val id: String) {
        var name: String? = null
        val props = LinkedHashMap<String, PProp>()
        val refs = LinkedHashMap<String, PRef>()
        val flags = mutableListOf<String>()
        var hidden = 0
        val empty = HashMap<String, List<String>>()
        val children = mutableListOf<PNode>()
        val role: String? get() = label?.substringBefore(' ')?.substringBefore('[')?.let { if (it.startsWith("@")) it else it.substringBefore('@') }
        val index: Int? get() = label?.substringBefore(' ')?.takeIf { it.endsWith("]") }?.substringAfter('[')?.removeSuffix("]")?.toInt()

        fun all(): List<PNode> = listOf(this) + children.flatMap { it.all() }
    }

    private class Parsed(val header: List<String>, val models: Map<String, String>, val root: PNode)

    private fun tokens(s: String): List<String> {
        val out = mutableListOf<String>()
        val sb = StringBuilder()
        var i = 0
        while (i < s.length) {
            val c = s[i]
            if (c == ' ') {
                if (sb.isNotEmpty()) out += sb.toString().also { sb.clear() }
                i++
            } else if (c == '"') {
                val start = i++
                while (s[i] != '"') i += if (s[i] == '\\') 2 else 1
                sb.append(s, start, ++i)
            } else {
                sb.append(c)
                i++
            }
        }
        if (sb.isNotEmpty()) out += sb.toString()
        return out
    }

    private fun unquote(v: String): String = if (v.startsWith("\"")) JsonParser.parseString(v).asString else v

    private fun parseRef(token: String): Pair<String, PRef> {
        val role = token.substringBefore('=')
        val rest = token.substringAfter('=')
        val (target, remainder) = if (rest.startsWith("\"")) {
            var i = 1
            while (rest[i] != '"') i += if (rest[i] == '\\') 2 else 1
            unquote(rest.substring(0, i + 1)) to rest.substring(i + 1)
        } else {
            val cut = rest.indexOfFirst { it == '@' || it == '#' }.let { if (it < 0) rest.length else it }
            rest.substring(0, cut) to rest.substring(cut)
        }
        val alias = if (remainder.startsWith("@")) remainder.substring(1).substringBefore('#') else null
        val id = if ('#' in remainder) remainder.substringAfter('#') else null
        return role to PRef(if (target == "?") null else target, alias, id)
    }

    /** An `empty:` line, not the node line of a child in a role named `empty` (`empty: Concept #id …`). */
    private fun isEmptyLine(content: String): Boolean {
        if (!content.startsWith("empty: ")) return false
        val t = tokens(content)
        return t[1] in setOf("properties", "references", "children") && t.size > 2 && !t[2].startsWith("#")
    }

    private fun parse(text: String): Parsed {
        val lines = text.split("\n")
        val header = lines.takeWhile { it.startsWith("# ") }
        val models = LinkedHashMap<String, String>()
        models["m0"] = header[0].substringAfter("model m0=").substringBefore(" | ").removeSuffix(" !foreign")
        header.firstOrNull { it.startsWith("# models ") }?.removePrefix("# models ")?.split(" ")?.filter { it != "!foreign" }
            ?.forEach { models[it.substringBefore('=')] = it.substringAfter('=') }
        val stack = ArrayList<PNode>()
        var root: PNode? = null
        for (line in lines.drop(header.size)) {
            val depth = (line.length - line.trimStart(' ').length) / 2
            val content = line.trimStart(' ')
            if (isEmptyLine(content)) {
                val owner = stack[depth - 1]
                content.removePrefix("empty: ").split("; ").forEach { owner.empty[it.substringBefore(' ')] = it.substringAfter(' ').split(" ") }
                continue
            }
            val t = tokens(content)
            var k = 0
            var label: String? = null
            if (!t[1].startsWith("#")) {
                val end = t.indexOfFirst { it.endsWith(":") }
                label = t.subList(0, end + 1).joinToString(" ").removeSuffix(":")
                k = end + 1
            }
            val node = PNode(depth, label, t[k], t[k + 1].removePrefix("#"))
            k += 2
            if (k < t.size && (t[k].startsWith("\"") || ('=' !in t[k] && t[k] != "->" && !t[k].startsWith("!") && !t[k].startsWith("(+")))) {
                node.name = unquote(t[k++])
            }
            var last: MutableList<String>? = null
            while (k < t.size) {
                val tok = t[k++]
                when {
                    tok == "->" -> parseRef(t[k++]).let { (role, r) -> node.refs[role] = r; last = r.flags }
                    tok == "!conceptNotLoaded" -> node.flags += tok
                    tok.startsWith("!") -> last!!.add(tok)
                    tok.startsWith("(+") -> node.hidden = tok.removePrefix("(+").removeSuffix(")").toInt()
                    else -> {
                        val value = tok.substringAfter('=')
                        val p = PProp(value.removeSuffix("*"), value.endsWith("*"))
                        node.props[tok.substringBefore('=')] = p
                        last = p.flags
                    }
                }
            }
            while (stack.size > depth) stack.removeAt(stack.size - 1)
            if (depth == 0) root = node else stack[depth - 1].children += node
            stack += node
        }
        return Parsed(header, models, root!!)
    }

    // ── parity with JSON deep (§2.1) ─────────────────────────────────────────────────────

    private fun splitRef(ref: String): Pair<String, String> {
        val i = ref.lastIndexOf(")/")
        return ref.substring(0, i + 1) to StringUtil.unescapeRefChars(ref.substring(i + 2))
    }

    private fun assertParity(ref: String) {
        val parsed = parse(text(ref))
        assertNode(jsonDeep(ref), parsed.root, parsed)
    }

    private fun matches(key: String, name: String) = key == name || key.startsWith("$name@")

    private fun isDeprecatedDeclaration(prop: SProperty): Boolean =
        prop.sourceNode?.resolve(myProject.repository)?.getChildren(SNodeUtil.link_BaseConcept_smodelAttribute)
            ?.any { it.concept.name == "DeprecatedNodeAnnotation" } == true

    private fun assertNode(j: JsonObject, p: PNode, parsed: Parsed) {
        val where = "${j.get("concept").asString} ${j.get("reference").asString}"
        val (model, id) = splitRef(j.get("reference").asString)
        assertEquals(where, parsed.models["m0"], model)
        assertEquals(where, id, StringUtil.unescapeRefChars(p.id))
        assertTrue("$where: concept ${p.concept}", p.concept == j.get("concept").asString || p.concept.endsWith("." + j.get("concept").asString))
        assertEquals(where, j.has("conceptLoaded") && !j.get("conceptLoaded").asBoolean, "!conceptNotLoaded" in p.flags)

        val node = resolveNodeRef(j.get("reference").asString)
        // Two properties may share a name (ClassConcept.isDeprecated); without an @Owner suffix only one of them is
        // printed, the deprecated one only with !deprecated.
        fun liveProperty(key: String, deprecatedFlag: Boolean): SProperty? = readOnRepo {
            val name = key.substringBefore('@')
            val owner = key.substringAfter('@', "")
            val candidates = node.concept.properties.filter { it.name == name && (owner.isEmpty() || it.owner.name == owner) }
            candidates.singleOrNull() ?: candidates.singleOrNull { isDeprecatedDeclaration(it) == deprecatedFlag }
        }
        val explained = HashSet<String>()
        for (e in j.getAsJsonArray("properties").map { it.asJsonObject }) {
            val name = e.get("name").asString
            val value = e.get("value").asString
            val isDefault = e.has("isDefault") && e.get("isDefault").asBoolean
            val declared = !(e.has("declared") && !e.get("declared").asBoolean)
            val deprecated = e.get("deprecated")?.asString?.startsWith("true") == true
            if (name == "name" && declared && p.name != null) {
                assertEquals(where, value, p.name)
                continue
            }
            val hit = p.props.entries.firstOrNull { (k, v) -> matches(k, name) && unquote(v.value) == value && k !in explained }
            if (hit == null) {
                val unset = readOnRepo {
                    node.concept.properties.filter { it.name == name }.any { !SNodeAccessUtil.hasProperty(node, it) || node.getProperty(it).isNullOrEmpty() }
                }
                assertTrue("$where: JSON property $name=$value has no counterpart", deprecated && unset)
                continue
            }
            explained += hit.key
            if (isDefault) assertTrue("$where: $name is a default", hit.value.starred)
            assertEquals("$where: $name declared", !declared, "!undeclared" in hit.value.flags)
            if (deprecated) assertTrue("$where: deprecated $name is printed only when stored", !hit.value.starred && "!deprecated" in hit.value.flags)
        }
        for ((k, v) in p.props) {
            if (k !in explained) {
                assertTrue("$where: $k is explained only as a boolean false or a raw value", v.value == "false" || "!raw" in v.flags)
            }
            if ("!undeclared" in v.flags) continue
            val prop = liveProperty(k, "!deprecated" in v.flags) ?: error("$where: printed $k is no property of the concept")
            assertEquals("$where: $k has a star exactly when it is not stored", !readOnRepo { SNodeAccessUtil.hasProperty(node, prop) }, v.starred)
            val type = readOnRepo { prop.type }
            if (type == SPrimitiveTypes.STRING || type is SConstrainedStringDatatypeAdapter || "!raw" in v.flags) {
                assertTrue("$where: the string value of $k is quoted: ${v.value}", v.value.startsWith("\""))
            }
        }

        val jRefs = j.getAsJsonArray("references").map { it.asJsonObject }
        assertEquals(where, jRefs.size, p.refs.size)
        for (e in jRefs) {
            val role = e.get("role").asString
            val r = p.refs.entries.single { matches(it.key, role) }.value
            if (e.get("target").isJsonNull) {
                assertNull(where, r.target)
                assertTrue(where, "!unresolved" in r.flags)
            } else {
                assertEquals(where, e.get("target").asString, r.target)
                assertFalse("$where: $role resolves", "!unresolved" in r.flags)
            }
            val targetReference = e.get("targetReference")?.takeUnless { it.isJsonNull }?.asString
            if (targetReference != null && ")/" in targetReference) {
                assertNotNull("$where: $role has a target id", r.id)
                val targetModel = if (r.alias == null) parsed.models["m0"] else parsed.models[r.alias]
                assertEquals("$where: $role", splitRef(targetReference), targetModel to StringUtil.unescapeRefChars(r.id!!))
            }
            assertEquals(where, e.has("declared") && !e.get("declared").asBoolean, "!undeclared" in r.flags)
        }

        val pAttributes = p.children.filter { it.label!!.startsWith("@") }
        val pByRole = p.children.filterNot { it.label!!.startsWith("@") }.groupBy { it.role!! }
        val jRoles = j.getAsJsonArray("children").map { it.asJsonObject }
        for (jr in jRoles) {
            val role = jr.get("role").asString
            val nodes = jr.getAsJsonArray("nodes").map { it.asJsonObject }
            when {
                role == "smodelAttribute" -> {
                    assertEquals(where, nodes.size, pAttributes.size)
                    nodes.zip(pAttributes).forEach { (jn, pn) -> assertNode(jn, pn, parsed) }
                }
                nodes.isEmpty() -> assertTrue(
                    "$where: required empty $role must be on the empty line: ${p.empty}",
                    p.empty["children"].orEmpty().any { it.removeSuffix("!required").let { n -> matches(n, role) } && it.endsWith("!required") },
                )
                else -> {
                    val kids = pByRole.entries.single { matches(it.key, role) }.value
                    assertEquals("$where: $role", nodes.size, kids.size)
                    val multiple = jr.get("cardinality")?.asString?.endsWith("n")
                    kids.forEachIndexed { i, kid -> if (multiple == true) assertEquals(where, i, kid.index) }
                    assertEquals(where, jr.has("declared") && !jr.get("declared").asBoolean, kids.all { "!undeclared" in it.label!! })
                    nodes.zip(kids).forEach { (jn, pn) -> assertNode(jn, pn, parsed) }
                }
            }
        }
        for (role in pByRole.keys) assertTrue("$where: printed role $role is not in JSON", jRoles.any { matches(role, it.get("role").asString) })
        fun emptyNames(group: String) = p.empty[group].orEmpty().map { it.removeSuffix("!required") }.toSet()
        val printedProps = p.props.keys + listOfNotNull(p.name?.let { "name" })
        assertTrue("$where: empty properties ${p.empty} vs $printedProps", emptyNames("properties").intersect(printedProps).isEmpty())
        assertTrue("$where: empty references ${p.empty} vs ${p.refs.keys}", emptyNames("references").intersect(p.refs.keys).isEmpty())
        assertTrue("$where: empty children ${p.empty} vs ${pByRole.keys}", emptyNames("children").intersect(pByRole.keys).isEmpty())
        for (required in p.empty["children"].orEmpty().filter { it.endsWith("!required") }) {
            val role = required.removeSuffix("!required")
            assertTrue("$where: $role", jRoles.any { matches(role, it.get("role").asString) && it.getAsJsonArray("nodes").isEmpty })
        }
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
            assertFalse("nodeDepth is not a size cut", agenticDetails(envelope).has("cutDepth"))
        }
        assertEquals(1, parse(text(ref, nodeDepth = 0)).root.all().size)
    }

    // ── 8: size cut and file ─────────────────────────────────────────────────────────────

    @Test
    fun `a small budget cuts by depth and a tiny one writes the raw text to a txt file`() {
        val ref = refOf(classRoot("Budget", "int total = 1 + 2; int other = 3;"))
        val full = text(ref)
        val budget = AgenticViewRenderer.jsonLength(full) - 1
        val cut = agentic(ref, maxInlineBytes = budget)
        val cutText = okText(cut)
        assertFalse("a cut, not a file: $cutText", File(cutText).isAbsolute)
        assertTrue(AgenticViewRenderer.jsonLength(cutText) <= budget)
        val details = agenticDetails(cut)
        val cutDepth = details.get("cutDepth").asInt
        assertTrue(cutText, cutText.contains("\n# cut at depth $cutDepth of "))
        val nodes = parse(cutText).root.all()
        assertEquals(details.get("nodes").asInt, nodes.size + nodes.sumOf { it.hidden })
        assertTrue(warnings(cut).toString(), warnings(cut).any { it.contains("cut at depth $cutDepth") })

        val tiny = agentic(ref, maxInlineBytes = 100)
        val path = extractFilePathFromData(tiny.toString())
        assertTrue(path, path.endsWith(".txt"))
        assertEquals(full, File(path).readText())
        assertFalse(agenticDetails(tiny).has("cutDepth"))
        assertTrue(warnings(tiny).toString(), warnings(tiny).any { it.contains(".txt") })
    }

    // ── 9: literals and editorHints ──────────────────────────────────────────────────────

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

    // ── 10: hygiene ──────────────────────────────────────────────────────────────────────

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
