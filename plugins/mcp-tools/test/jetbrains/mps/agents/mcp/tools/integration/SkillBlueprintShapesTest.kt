package jetbrains.mps.agents.mcp.tools.integration

import com.google.gson.JsonArray
import com.google.gson.JsonElement
import com.google.gson.JsonObject
import com.google.gson.JsonParser
import jetbrains.mps.agents.mcp.tools.unit.SkillCatalogCheckout
import jetbrains.mps.smodel.language.LanguageRegistry
import org.jetbrains.mps.openapi.language.SAbstractConcept
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
        val conceptsByFqn = readOnRepo {
            LanguageRegistry.getInstance(myProject.repository).allLanguages
                .flatMap { it.concepts }
                .associateBy { it.language.qualifiedName + ".structure." + it.name }
        }
        val namespaces = conceptsByFqn.keys.map { it.substringBeforeLast(".structure.") }.toSet()
        // Many blueprints name a concept by its short name; check those whose short name is unique.
        val bySimpleName = conceptsByFqn.values.groupBy { it.name }.filterValues { it.size == 1 }.mapValues { it.value.single() }
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
                        val name = node.get("concept").asString
                        if (name.contains('<')) continue
                        val concept = if (name.contains(".structure.")) conceptsByFqn[name] else bySimpleName[name] ?: continue
                        val fqn = if (concept != null && !name.contains(".structure.")) concept.language.qualifiedName + ".structure." + concept.name else name
                        if (concept == null) {
                            if (fqn.substringBeforeLast(".structure.") in namespaces) found += "$relative|$fqn|concept|"
                            continue
                        }
                        checked++
                        readOnRepo { featureProblems(concept, node) }.forEach { found += "$relative|$fqn|$it" }
                    }
                }
            }
        }
        assertTrue("no blueprint was checked — did the fence extraction break?", checked > 100)
        if (unparsed.isNotEmpty()) println("fences naming a concept that hold no parseable blueprint (not checked): $unparsed")
        val fresh = found - KNOWN_VIOLATIONS
        // An entry of a language this environment does not deploy cannot be seen, so it is not stale.
        val stale = KNOWN_VIOLATIONS.filter { it.split('|')[1].substringBeforeLast(".structure.") in namespaces }.toSet() - found
        assertTrue(
            "skill blueprints that do not match the live concept shapes (file|concept|kind|name):\n" +
                fresh.joinToString("\n") +
                (if (stale.isEmpty()) "" else "\nKNOWN_VIOLATIONS entries that no longer occur (remove them):\n" + stale.joinToString("\n")),
            fresh.isEmpty() && stale.isEmpty(),
        )
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
