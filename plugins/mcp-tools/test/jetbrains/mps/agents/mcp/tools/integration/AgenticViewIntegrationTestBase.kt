package jetbrains.mps.agents.mcp.tools.integration

import jetbrains.mps.agents.mcp.tools.*
import jetbrains.mps.agents.mcp.tools.common.*

import com.google.gson.JsonObject
import com.google.gson.JsonParser
import jetbrains.mps.smodel.SNodeUtil
import jetbrains.mps.smodel.adapter.structure.types.SConstrainedStringDatatypeAdapter
import jetbrains.mps.smodel.adapter.structure.types.SPrimitiveTypes
import jetbrains.mps.util.StringUtil
import org.jetbrains.mps.openapi.language.SProperty
import org.jetbrains.mps.openapi.model.SNode
import org.jetbrains.mps.openapi.model.SNodeAccessUtil
import org.jetbrains.mps.openapi.persistence.PersistenceFacade
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue

/**
 * Shared by the AGENTIC VIEW tests: `mps_mcp_print_node` calls, a parser of the §2 grammar of
 * `docs/AGENTIC_VIEW-plan.md` and the parity check against JSON deep under the mapping of §2.1.
 */
abstract class AgenticViewIntegrationTestBase : McpIntegrationTestBase() {

    protected val toolset = MPSNodeMcpToolset()

    // ── calls ─────────────────────────────────────────────────────────────────────────────

    protected fun agentic(
        ref: String,
        nodeDepth: Int = -1,
        maxInlineBytes: Int = 1_000_000,
        format: String = "AGENTIC VIEW",
        editorHints: String? = null,
        codeAsText: Boolean = false,
    ): JsonObject = JsonParser.parseString(runTool(toolset) {
        it.mps_mcp_print_node(
            ref, format = format, maxInlineBytes = maxInlineBytes, editorHints = editorHints?.let(::JsonOrText), nodeDepth = nodeDepth, codeAsText = codeAsText,
        )
    }).asJsonObject

    protected fun okText(envelope: JsonObject): String {
        assertTrue("expected an ok envelope: $envelope", envelope.get("ok").asBoolean)
        return envelope.get("data").asString
    }

    protected fun text(ref: String, nodeDepth: Int = -1, codeAsText: Boolean = false): String = okText(agentic(ref, nodeDepth, codeAsText = codeAsText))

    protected fun jsonDeep(ref: String): JsonObject =
        payloadObjectFromOkData(runTool(toolset) { it.mps_mcp_print_node(ref, deep = true, maxInlineBytes = 1_000_000) })

    protected fun warnings(envelope: JsonObject): List<String> = envelope.getAsJsonArray("warnings")?.map { it.asString } ?: emptyList()

    protected fun agenticDetails(envelope: JsonObject): JsonObject =
        envelope.getAsJsonObject("details")?.getAsJsonObject("agenticView") ?: error("no details.agenticView: $envelope")

    // ── fixtures ──────────────────────────────────────────────────────────────────────────

    protected fun refOf(node: SNode): String = readOnRepo { PersistenceFacade.getInstance().asString(node.reference) }

    /** A BaseLanguage class root parsed from `public class [name] { [body] }` into a fresh solution model. */
    protected fun classRoot(name: String, body: String): SNode {
        val model = createModel(createSolution(), "agentic.code${System.nanoTime()}")
        val response = runTool(MPSJavaMcpToolset()) {
            it.mps_mcp_parse_java_and_insert(
                """{"code":"public class $name { $body }","featureKind":"CLASS",
                    "insert":{"mode":"root","modelRef":"${modelRefOf(model)}"}}"""
            )
        }
        assertTrue("parse_java_and_insert: $response", JsonParser.parseString(response).asJsonObject.get("ok").asBoolean)
        return readOnRepo { model.rootNodes.single { it.name == name } }
    }

    // ── the §2 grammar, read back ────────────────────────────────────────────────────────

    protected class PProp(val value: String, val starred: Boolean, val flags: MutableList<String> = mutableListOf())
    protected class PRef(val target: String?, val alias: String?, val id: String?, val flags: MutableList<String> = mutableListOf())

    protected class PNode(val depth: Int, val label: String?, val concept: String, val id: String) {
        var name: String? = null
        var nameStarred = false
        val props = LinkedHashMap<String, PProp>()
        val refs = LinkedHashMap<String, PRef>()
        val flags = mutableListOf<String>()
        var hidden = 0
        /** The code text of a `codeAsText` line (`= "…"`). */
        var text: String? = null
        val empty = HashMap<String, List<String>>()
        val children = mutableListOf<PNode>()
        val role: String? get() = label?.substringBefore(' ')?.substringBefore('[')?.let { if (it.startsWith("@")) it else it.substringBefore('@') }
        val index: Int? get() = label?.substringBefore(' ')?.takeIf { it.endsWith("]") }?.substringAfter('[')?.removeSuffix("]")?.toInt()

        fun all(): List<PNode> = listOf(this) + children.flatMap { it.all() }
    }

    /** One section: its header lines, its model aliases and its roots. */
    protected class Parsed(val header: List<String>, val models: Map<String, String>, val roots: List<PNode>) {
        val root: PNode get() = roots.single()
    }

    protected fun tokens(s: String): List<String> {
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

    protected fun unquote(v: String): String = if (v.startsWith("\"")) JsonParser.parseString(v).asString else v

    protected fun parseRef(token: String): Pair<String, PRef> {
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
    protected fun isEmptyLine(content: String): Boolean {
        if (!content.startsWith("empty: ")) return false
        val t = tokens(content)
        return t[1] in setOf("properties", "references", "children") && t.size > 2 && !t[2].startsWith("#")
    }

    protected fun parse(text: String): Parsed {
        val lines = text.split("\n")
        val header = lines.takeWhile { it.startsWith("# ") }
        val models = LinkedHashMap<String, String>()
        models["m0"] = header[0].substringAfter("model m0=").substringBefore(" | ").removeSuffix(" !foreign")
        header.firstOrNull { it.startsWith("# models ") }?.removePrefix("# models ")?.split(" ")?.filter { it != "!foreign" }
            ?.forEach { models[it.substringBefore('=')] = it.substringAfter('=') }
        val stack = ArrayList<PNode>()
        val roots = ArrayList<PNode>()
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
                val token = t[k++]
                node.nameStarred = token.endsWith("*")
                node.name = unquote(token.removeSuffix("*"))
            }
            var last: MutableList<String>? = null
            while (k < t.size) {
                val tok = t[k++]
                when {
                    tok == "->" -> parseRef(t[k++]).let { (role, r) -> node.refs[role] = r; last = r.flags }
                    tok == "=" -> node.text = unquote(t[k++])
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
            if (depth == 0) roots += node else stack[depth - 1].children += node
            stack += node
        }
        return Parsed(header, models, roots)
    }

    // ── parity with JSON deep (§2.1) ─────────────────────────────────────────────────────

    protected fun splitRef(ref: String): Pair<String, String> {
        val i = ref.lastIndexOf(")/")
        return ref.substring(0, i + 1) to StringUtil.unescapeRefChars(ref.substring(i + 2))
    }

    protected fun assertParity(ref: String, codeAsText: Boolean = false) {
        val parsed = parse(text(ref, codeAsText = codeAsText))
        assertNode(jsonDeep(ref), parsed.root, parsed)
    }

    protected fun matches(key: String, name: String) = key == name || key.startsWith("$name@")

    protected fun isDeprecatedDeclaration(prop: SProperty): Boolean =
        prop.sourceNode?.resolve(myProject.repository)?.getChildren(SNodeUtil.link_BaseConcept_smodelAttribute)
            ?.any { it.concept.name == "DeprecatedNodeAnnotation" } == true

    protected fun assertNode(j: JsonObject, p: PNode, parsed: Parsed) {
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
                val stored = readOnRepo { SNodeAccessUtil.hasProperty(node, SNodeUtil.property_INamedConcept_name) }
                assertEquals("$where: the name has a star exactly when it is not stored", !stored, p.nameStarred)
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
        if (p.name != null) {
            assertTrue("$where: printed name has no JSON name entry", j.getAsJsonArray("properties").any { it.asJsonObject.get("name").asString == "name" })
        }
        for ((k, v) in p.props) {
            if (k !in explained) {
                assertTrue("$where: $k is explained only as a raw value", "!raw" in v.flags)
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
        if (p.text != null) assertCollapsed(j, p, parsed, where)
        for (jr in jRoles) {
            val role = jr.get("role").asString
            val nodes = jr.getAsJsonArray("nodes").map { it.asJsonObject }
            when {
                p.text != null -> Unit
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

    private fun roles(j: JsonObject): List<JsonObject> = j.getAsJsonArray("children").map { it.asJsonObject }

    private fun nodesOf(role: JsonObject): List<JsonObject> = role.getAsJsonArray("nodes").map { it.asJsonObject }

    protected fun jsonSize(j: JsonObject): Int = 1 + roles(j).sumOf { r -> nodesOf(r).sumOf(::jsonSize) }

    /**
     * A `codeAsText` line: the node is present and its subtree skipped, except for the attributes in it, which are its
     * child lines, labelled `on #<id>` when they annotate a node below it; the printed and `(+N)` nodes are its subtree.
     * Its `empty:` line leaves out the empty child roles, which the text shows.
     */
    private fun assertCollapsed(j: JsonObject, p: PNode, parsed: Parsed, where: String) {
        val id = splitRef(j.get("reference").asString).second
        assertFalse("$where: the code text is one line with single spaces: ${p.text}", Regex("""\s{2,}|[^\S ]|^ | $""").containsMatchIn(p.text!!))
        assertNull("$where: the empty line of a code line has no children group", p.empty["children"])
        val attributes = ArrayList<Pair<JsonObject, String>>()
        fun collect(n: JsonObject) {
            val owner = splitRef(n.get("reference").asString).second
            val (own, other) = roles(n).partition { it.get("role").asString == "smodelAttribute" }
            own.flatMap(::nodesOf).forEach { attributes += it to owner }
            other.flatMap(::nodesOf).forEach(::collect)
        }
        collect(j)
        assertEquals("$where: the attribute lines of a code line", attributes.size, p.children.size)
        for (pn in p.children) {
            val (jn, owner) = attributes.single { splitRef(it.first.get("reference").asString).second == StringUtil.unescapeRefChars(pn.id) }
            val on = pn.label!!.substringAfter(" on #", "")
            assertEquals("$where: attribute ${pn.id} names the annotated node", if (owner == id) "" else owner, StringUtil.unescapeRefChars(on))
            assertNode(jn, pn, parsed)
        }
        assertEquals("$where: printed and (+N) nodes are the subtree", jsonSize(j), p.all().size + p.all().sumOf { it.hidden })
    }
}
