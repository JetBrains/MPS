package jetbrains.mps.agents.mcp.tools.integration

import com.google.gson.JsonArray
import com.google.gson.JsonElement
import com.google.gson.JsonObject
import com.google.gson.JsonParser
import jetbrains.mps.agents.mcp.tools.unit.SkillCatalogCheckout
import jetbrains.mps.smodel.adapter.ids.MetaIdHelper
import jetbrains.mps.smodel.adapter.ids.SConceptId
import jetbrains.mps.smodel.adapter.ids.SLanguageId
import jetbrains.mps.smodel.language.LanguageRegistry
import org.jetbrains.mps.openapi.language.SAbstractConcept
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test
import java.nio.file.Files
import kotlin.io.path.extension
import kotlin.io.path.readText

/**
 * Every JSON node blueprint in the blueprint skill catalog names a concept that exists and only
 * properties, references and child roles that concept has. The 2026-10 generator study found a dozen
 * blueprints with wrong role names (`TemplateSwitchMacro.templateSwitch`, `ReferenceMacro.linkRole`,
 * a label op's `mappingLabel`, …); each one cost agents a discovery round trip or a failed insert.
 *
 * A blueprint is a JSON object with a `concept` FQN inside a ```json / ```text fence; `/* … */`
 * placeholders and `//` comments are stripped first, and a fence that is not JSON is skipped. A
 * concept of a language that is not deployed (a study or example language) is skipped too.
 * [KNOWN_VIOLATIONS] lists accepted defects (file|concept|kind|name); it is empty since D135 fixed
 * the 34 found when the check was introduced. A new violation must be fixed rather than listed; a
 * stale entry fails the test as well.
 */
class SkillBlueprintShapesTest : McpIntegrationTestBase() {

    @Test
    fun `skill blueprints use real concepts and feature names`() {
        val blueprint = SkillCatalogCheckout.blueprint()
        val found = linkedSetOf<String>()
        val index = buildConceptIndex()
        val unparsed = mutableListOf<String>()
        val files = Files.walk(blueprint).use { s ->
            s.filter { it.extension == "md" && blueprint.relativize(it).toString().startsWith("mps-") }.sorted().toList()
        }
        var checked = 0
        for (file in files) {
            val relative = blueprint.relativize(file).toString().replace('\\', '/')
            for (fence in jsonFences(file.readText())) {
                val values = topLevelValues(stripPlaceholders(fence))
                if (values.none { blueprintNodes(it).any() }) unparsed += relative
                for (value in values) {
                    for (node in blueprintNodes(value)) {
                        if (validateBlueprintNode(relative, node, index, found)) {
                            checked++
                        }
                    }
                }
            }
        }
        assertTrue("no blueprint was checked — did the fence extraction break?", checked > 100)
        if (unparsed.isNotEmpty()) println("fences naming a concept that hold no parseable blueprint (not checked): $unparsed")
        val fresh = found - KNOWN_VIOLATIONS
        // An entry of a language this environment does not deploy cannot be seen, so it is not stale.
        val stale = KNOWN_VIOLATIONS.filter { it.split('|')[1].substringBeforeLast(".structure.") in index.namespaces }.toSet() - found
        assertTrue(
            "skill blueprints that do not match the live concept shapes (file|concept|kind|name):\n" +
                fresh.joinToString("\n") +
                (if (stale.isEmpty()) "" else "\nKNOWN_VIOLATIONS entries that no longer occur (remove them):\n" + stale.joinToString("\n")),
            fresh.isEmpty() && stale.isEmpty(),
        )
    }

    @Test
    fun `validator flags unqualified conceptReference on colliding concept and validates bare or parenthesized c references`() {
        val index = buildConceptIndex()
        val dataFlowNodeParam = index.byFqn.getValue("jetbrains.mps.lang.dataFlow.structure.NodeParameter")
        val id = MetaIdHelper.getConcept(dataFlowNodeParam)
        val langUuid = id.languageId.idValue
        val conceptId = id.idValue

        // 1. Unqualified conceptReference does not exempt a colliding bare concept name.
        val ambiguousProblems = linkedSetOf<String>()
        val ambiguousChecked = validateBlueprintNode(
            "probe.md",
            JsonParser.parseString("""{"concept":"NodeParameter","conceptReference":"NodeParameter"}""").asJsonObject,
            index,
            ambiguousProblems,
        )
        assertEquals(false, ambiguousChecked)
        assertEquals(setOf("probe.md|NodeParameter|ambiguous-concept|"), ambiguousProblems)

        // 2. Unqualified conceptReference on an unambiguous or FQN concept is also flagged.
        val unqualifiedRefProblems = linkedSetOf<String>()
        val unqualifiedRefChecked = validateBlueprintNode(
            "probe.md",
            JsonParser.parseString("""{"concept":"IntegerType","conceptReference":"IntegerType"}""").asJsonObject,
            index,
            unqualifiedRefProblems,
        )
        assertEquals(true, unqualifiedRefChecked)
        assertEquals(
            setOf("probe.md|jetbrains.mps.baseLanguage.structure.IntegerType|conceptReference|IntegerType"),
            unqualifiedRefProblems,
        )

        // 3. Bare c:<uuid>/<id>, parenthesized c:<uuid>/<id>(<fqn>), and c:<uuid>(<lang>)/<id> all resolve
        //    the colliding concept and run feature validation.
        for (cRef in listOf(
            "c:$langUuid/$conceptId",
            "c:$langUuid/$conceptId(jetbrains.mps.lang.dataFlow.structure.NodeParameter)",
            "c:$langUuid(jetbrains.mps.lang.dataFlow)/$conceptId",
        )) {
            val problems = linkedSetOf<String>()
            val wasChecked = validateBlueprintNode(
                "probe.md",
                JsonParser.parseString("""{"concept":"NodeParameter","conceptReference":"$cRef","properties":[{"name":"noSuchProp","value":"x"}]}""").asJsonObject,
                index,
                problems,
            )
            assertTrue("expected $cRef to be checked", wasChecked)
            assertEquals(
                "expected bogus property on $cRef to be caught",
                setOf("probe.md|jetbrains.mps.lang.dataFlow.structure.NodeParameter|property|noSuchProp"),
                problems,
            )
        }
    }

    private class ConceptIndex(
        val byFqn: Map<String, SAbstractConcept>,
        val byId: Map<SConceptId, SAbstractConcept>,
        val deployedLangIds: Set<SLanguageId>,
        val namespaces: Set<String>,
        val bySimpleName: Map<String, SAbstractConcept>,
        val collidingSimpleNames: Map<String, List<SAbstractConcept>>,
    ) {
        sealed class RefLookup {
            class Found(val concept: SAbstractConcept) : RefLookup()
            object BrokenDeployed : RefLookup()
            object Undeployed : RefLookup()
            object Other : RefLookup()
        }

        fun resolveConceptRef(ref: String): RefLookup {
            byFqn[ref]?.let { return RefLookup.Found(it) }
            if ((ref.startsWith("c:") || ref.startsWith("l:")) && ref.contains('/')) {
                val body = ref.removePrefix("c:").removePrefix("l:")
                val slash = body.indexOf('/')
                val langUuidStr = body.substring(0, slash).substringBefore('(')
                val rest = body.substring(slash + 1)
                val conceptIdStr = rest.substringBefore(':').substringBefore('(')
                val parsedLangId = try {
                    SLanguageId.deserialize(langUuidStr)
                } catch (_: IllegalArgumentException) {
                    null
                }
                val parsedConceptId = conceptIdStr.toLongOrNull()
                if (parsedLangId != null && parsedConceptId != null) {
                    byId[SConceptId(parsedLangId, parsedConceptId)]?.let { return RefLookup.Found(it) }
                    if (parsedLangId in deployedLangIds) return RefLookup.BrokenDeployed
                }
                val extractedFqn = rest.substringAfter(':', "").takeIf { it.isNotEmpty() }
                    ?: rest.substringAfter('(', "").removeSuffix(")").takeIf { it.contains('.') }
                if (extractedFqn != null) {
                    byFqn[extractedFqn]?.let { return RefLookup.Found(it) }
                    if (extractedFqn.substringBeforeLast(".structure.") in namespaces) return RefLookup.BrokenDeployed
                }
                return RefLookup.Undeployed
            }
            if (ref.contains(".structure.")) {
                return if (ref.substringBeforeLast(".structure.") in namespaces) RefLookup.BrokenDeployed else RefLookup.Undeployed
            }
            return RefLookup.Other
        }
    }

    private fun buildConceptIndex(): ConceptIndex = readOnRepo {
        val registry = LanguageRegistry.getInstance(myProject.repository)
        val allConcepts = registry.allLanguages.flatMap { registry.getLanguage(it)?.concepts ?: emptyList() }
        val byFqn = allConcepts.associateBy { it.language.qualifiedName + ".structure." + it.name }
        val byId = allConcepts.associateBy { MetaIdHelper.getConcept(it) }
        val deployedLangIds = byId.keys.mapTo(HashSet()) { it.languageId }
        val namespaces = byFqn.keys.mapTo(HashSet()) { it.substringBeforeLast(".structure.") }
        // Many blueprints name a concept by its short name; check those whose short name is unique,
        // and flag colliding bare names unless the node also carries a persistent conceptReference.
        val groupedBySimpleName = byFqn.values.groupBy { it.name }
        val bySimpleName = groupedBySimpleName.filterValues { it.size == 1 }.mapValues { it.value.single() }
        val collidingSimpleNames = groupedBySimpleName.filterValues { it.size > 1 }
        ConceptIndex(byFqn, byId, deployedLangIds, namespaces, bySimpleName, collidingSimpleNames)
    }

    private fun isUnqualifiedConceptName(name: String): Boolean =
        name.isNotBlank() && !name.contains('.') && !name.contains('/') && !name.contains(':')

    private fun validateBlueprintNode(
        relative: String,
        node: JsonObject,
        index: ConceptIndex,
        found: MutableSet<String>,
    ): Boolean {
        val name = node.get("concept").asString
        for (key in listOf("properties", "references", "children")) {
            val elem = node.get(key)
            if (elem != null && !elem.isJsonNull && !elem.isJsonArray) {
                found += "$relative|$name|shape|$key-not-array"
            }
        }
        if (name.contains('<')) return false
        val nonPlaceholderRef = node.get("conceptReference")
            ?.takeIf { it.isJsonPrimitive && it.asJsonPrimitive.isString && it.asString.isNotBlank() }
            ?.asString
            ?.takeUnless { it.contains('<') }
        val refIsUnqualified = nonPlaceholderRef != null && isUnqualifiedConceptName(nonPlaceholderRef)
        val qualifiedConceptRef = nonPlaceholderRef?.takeUnless { refIsUnqualified }
        if (!name.contains(".structure.") && qualifiedConceptRef == null && name in index.collidingSimpleNames) {
            found += "$relative|$name|ambiguous-concept|"
            return false
        }
        val concept: SAbstractConcept? = when {
            name.contains(".structure.") -> index.byFqn[name]
            qualifiedConceptRef != null -> when (val lookup = index.resolveConceptRef(qualifiedConceptRef)) {
                is ConceptIndex.RefLookup.Found -> lookup.concept
                is ConceptIndex.RefLookup.BrokenDeployed -> {
                    found += "$relative|$name|conceptReference|$qualifiedConceptRef"
                    return false
                }
                is ConceptIndex.RefLookup.Undeployed -> return false
                is ConceptIndex.RefLookup.Other -> index.bySimpleName[name] ?: return false
            }
            else -> index.bySimpleName[name] ?: return false
        }
        val fqn = if (concept != null && !name.contains(".structure.")) concept.language.qualifiedName + ".structure." + concept.name else name
        if (concept == null) {
            if (fqn.substringBeforeLast(".structure.") in index.namespaces) found += "$relative|$fqn|concept|"
            return false
        }
        if (refIsUnqualified) {
            found += "$relative|$fqn|conceptReference|$nonPlaceholderRef"
        }
        readOnRepo { featureProblems(concept, node) }.forEach { found += "$relative|$fqn|$it" }
        return true
    }

    private fun featureProblems(concept: SAbstractConcept, node: JsonObject): List<String> {
        val problems = mutableListOf<String>()
        val properties = concept.properties.map { it.name }.toSet()
        val references = concept.referenceLinks.map { it.name }.toSet()
        val children = concept.containmentLinks.map { it.name }.toSet()
        fun names(key: String, field: String) =
            (node.get(key) as? JsonArray).orEmpty().mapNotNull { (it as? JsonObject)?.get(field)?.takeIf { e -> e.isJsonPrimitive }?.asString }
        names("properties", "name").filter { it !in properties }.forEach { problems += "property|$it" }
        names("references", "role").filter { it !in references }.forEach { problems += "reference|$it" }
        names("children", "role").filter { it !in children }.forEach { problems += "child|$it" }
        return problems
    }

    private fun JsonArray?.orEmpty(): List<JsonElement> = this?.toList() ?: emptyList()

    private fun blueprintNodes(value: JsonElement): Sequence<JsonObject> = sequence {
        when {
            value is JsonObject -> {
                if (value.get("concept")?.let { it.isJsonPrimitive && it.asJsonPrimitive.isString } == true) yield(value)
                for ((_, v) in value.entrySet()) yieldAll(blueprintNodes(v))
            }
            value is JsonArray -> for (v in value) yieldAll(blueprintNodes(v))
        }
    }

    private companion object {
        /** A fence opens and closes at the start of a line, so the closing ``` of another fence is never an opener. */
        private val FENCE = Regex("^[ \\t]*```(\\w*)[^\\n]*\\n(.*?)^[ \\t]*```", setOf(RegexOption.DOT_MATCHES_ALL, RegexOption.MULTILINE))

        fun jsonFences(markdown: String): List<String> =
            FENCE.findAll(markdown).filter { it.groupValues[1] in setOf("json", "text", "") }
                .map { it.groupValues[2] }.filter { "\"concept\"" in it }.toList()

        fun stripPlaceholders(text: String): String = text
            .replace(Regex("/\\*.*?\\*/", RegexOption.DOT_MATCHES_ALL), "")
            .replace(Regex("(?m)^\\s*//.*$"), "")
            .replace(Regex(",(\\s*[\\]}])"), "$1")

        /** The top-level JSON values of [text], in order; stops at the first one that does not parse. */
        fun topLevelValues(text: String): List<JsonElement> {
            val values = mutableListOf<JsonElement>()
            var i = 0
            while (true) {
                while (i < text.length && text[i] != '{' && text[i] != '[') i++
                if (i >= text.length) return values
                val end = matchingEnd(text, i) ?: return values
                values += try { JsonParser.parseString(text.substring(i, end)) } catch (e: Exception) { return values }
                i = end
            }
        }

        /** Index just past the bracket closing the one at [start], honouring JSON strings; null if unbalanced. */
        fun matchingEnd(text: String, start: Int): Int? {
            var depth = 0
            var inString = false
            var i = start
            while (i < text.length) {
                val c = text[i]
                if (inString) {
                    if (c == '\\') i++ else if (c == '"') inString = false
                } else when (c) {
                    '"' -> inString = true
                    '{', '[' -> depth++
                    '}', ']' -> if (--depth == 0) return i + 1
                }
                i++
            }
            return null
        }

        val KNOWN_VIOLATIONS = setOf<String>()
    }
}
