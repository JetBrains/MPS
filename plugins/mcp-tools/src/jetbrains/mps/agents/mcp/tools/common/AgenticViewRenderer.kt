package jetbrains.mps.agents.mcp.tools.common

import com.google.gson.JsonPrimitive
import jetbrains.mps.core.aspects.behaviour.SMethodIdV2
import jetbrains.mps.lang.smodel.generator.smodelAdapter.AttributeOperations
import jetbrains.mps.smodel.SNodeUtil
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory
import jetbrains.mps.smodel.adapter.structure.types.SConstrainedStringDatatypeAdapter
import jetbrains.mps.smodel.adapter.structure.types.SPrimitiveTypes
import jetbrains.mps.smodel.behaviour.BHReflection
import jetbrains.mps.util.StringUtil
import org.jetbrains.mps.openapi.language.SAbstractConcept
import org.jetbrains.mps.openapi.language.SConceptFeature
import org.jetbrains.mps.openapi.language.SContainmentLink
import org.jetbrains.mps.openapi.language.SDataType
import org.jetbrains.mps.openapi.language.SProperty
import org.jetbrains.mps.openapi.language.SReferenceLink
import org.jetbrains.mps.openapi.model.SModel
import org.jetbrains.mps.openapi.model.SNode
import org.jetbrains.mps.openapi.model.SNodeAccessUtil
import org.jetbrains.mps.openapi.module.SRepository
import org.jetbrains.mps.openapi.persistence.PersistenceFacade

/**
 * The `AGENTIC VIEW` format of `mps_mcp_print_node`: one line per node with its role, concept, id, name, properties
 * and references, read from the model (no editor), plus an `empty:` line for unset features. The grammar is §2 of
 * `plugins/mcp-tools/docs/AGENTIC_VIEW-plan.md`; the feature semantics are those of the JSON printout.
 *
 * One instance per render, under a read action: it memoizes deprecation and project membership for that call only.
 * [render] walks the tree once; [Rendering.text] and [Rendering.fit] assemble printouts from the recorded lines
 * without touching the model.
 */
class AgenticViewRenderer(
    private val repository: SRepository,
    private val displayValue: (SNode, SProperty) -> String?,
    private val defaultEnumLiteral: (SProperty) -> String?,
    private val deprecationOf: (SNode?) -> String,
    private val isForeign: (SModel) -> Boolean,
) {
    data class ConceptKey(val language: String, val name: String)

    /** One `-> role=target@mN#id` part. [model] is the target's model reference, null when no target pointer is stored. */
    class Reference(val role: String, val target: String?, val model: String?, val id: String?, val flags: List<String> = emptyList())

    class Line(
        val depth: Int,
        val label: String?,
        val concept: ConceptKey,
        val id: String,
        val name: String? = null,
        val properties: List<String> = emptyList(),
        val references: List<Reference> = emptyList(),
        val flags: List<String> = emptyList(),
        val empty: String? = null,
        var descendants: Int = 0,
    )

    class Fit(val text: String, val depth: Int, val cutDepth: Int?, val inline: Boolean)

    class Rendering(
        val model: String,
        val lines: List<Line>,
        val totalNodes: Int,
        val treeDepth: Int,
        val foreignModels: Set<String> = emptySet(),
        val deprecated: Map<ConceptKey, List<String>> = emptyMap(),
        val unloaded: Map<ConceptKey, SAbstractConcept> = emptyMap(),
    ) {
        /** The deepest printed level without a size cut: `nodeDepth`, or the tree's depth for `-1`. */
        val effectiveDepth: Int get() = lines.maxOf { it.depth }

        /** The size of the uncut printout, for the cut header: what raising `maxInlineBytes` would return. */
        val wholeChars: Int by lazy { size(effectiveDepth, cut = false) }

        fun printedNodes(maxDepth: Int): Int = lines.count { it.depth <= maxDepth }

        fun unloadedConcepts(maxDepth: Int): List<SAbstractConcept> =
            lines.filter { it.depth <= maxDepth }.mapNotNull { unloaded[it.concept] }.distinct()

        fun text(maxDepth: Int, cut: Boolean = false): String = printoutLines(maxDepth, cut).joinToString("\n")

        /**
         * [jsonLength] of [text] without building it, from the escaped length of each line; it stops counting once the
         * size is above [stopAbove], so a printout that is too large costs only its first lines.
         */
        fun size(maxDepth: Int, cut: Boolean, stopAbove: Int = Int.MAX_VALUE): Int {
            var size = 2
            var first = true
            for (line in printoutLines(maxDepth, cut)) {
                size += jsonLength(line) - 2 + if (first) 0 else 2
                first = false
                if (size > stopAbove) return size
            }
            return size
        }

        private fun printoutLines(maxDepth: Int, cut: Boolean): Sequence<String> = sequence {
            val printed = lines.filter { it.depth <= maxDepth }
            val tokens = conceptTokens(printed.map { it.concept })
            val aliases = LinkedHashMap<String, String>()
            aliases[model] = "m0"
            for (line in printed) for (ref in line.references) {
                val m = ref.model ?: continue
                if (m !in aliases) aliases[m] = "m${aliases.size}"
            }
            fun foreign(m: String) = if (m in foreignModels) " !foreign" else ""
            yield("# AGENTIC VIEW 1 | model m0=$model${foreign(model)} | node reference = <model>/<id>")
            if (aliases.size > 1) yield("# models " + aliases.entries.drop(1).joinToString(" ") { "${it.value}=${it.key}${foreign(it.key)}" })
            yield("# concepts " + printed.map { it.concept }.distinct().groupBy { it.language }.toSortedMap()
                .entries.joinToString(" | ") { (language, keys) -> "$language: " + keys.map { it.name }.sorted().joinToString(" ") })
            val deprecatedParts = printed.map { it.concept }.distinct().sortedBy { tokens.getValue(it) }
                .mapNotNull { key -> deprecated[key]?.takeIf { it.isNotEmpty() }?.let { "${tokens.getValue(key)}: ${it.joinToString(" ")}" } }
            if (deprecatedParts.isNotEmpty()) yield("# deprecated, printed only when set: " + deprecatedParts.joinToString(" | "))
            if (cut) {
                yield("# cut at depth $maxDepth of $treeDepth: ${printed.size} of $totalNodes nodes printed " +
                    "(the whole printout is $wholeChars chars); print the \"(+N)\" nodes you need by their ids")
            }
            for (line in printed) {
                yield(nodeLine(line, tokens.getValue(line.concept), showHidden = line.depth == maxDepth) { m -> if (m == model) null else aliases[m] })
                line.empty?.let { yield("  ".repeat(line.depth + 1) + it) }
            }
        }

        /**
         * The printout for `maxInlineBytes` [limit] (P1.4): the whole of it when it fits, else the largest smaller
         * depth that fits, never below 1; when not even depth 1 fits, the uncut text with `inline = false`. Sizes are
         * measured per line; only the chosen printout is built.
         */
        fun fit(limit: Int): Fit {
            val effective = effectiveDepth
            val depth = selectCutDepth(effective, limit) { size(it, cut = it < effective, stopAbove = limit) }
                ?: return Fit(text(effective), effective, null, inline = false)
            return Fit(text(depth, cut = depth < effective), depth, if (depth < effective) depth else null, inline = true)
        }
    }

    private val lines = ArrayList<Line>()
    private val foreignModels = HashSet<String>()
    private val foreignChecked = HashSet<String>()
    private val deprecatedFeatures = HashMap<SConceptFeature, Boolean>()
    private val legend = HashMap<ConceptKey, List<String>>()
    private val unloaded = LinkedHashMap<ConceptKey, SAbstractConcept>()
    private var treeDepth = 0

    /** Walks [root]'s subtree; [nodeDepth] `-1` describes every level, `n` describes `n` levels and only counts the rest. */
    fun render(root: SNode, nodeDepth: Int): Rendering {
        val model = root.model?.let { PersistenceFacade.getInstance().asString(it.reference) } ?: ""
        root.model?.let { checkForeign(model, it) }
        val below = visit(root, 0, null, if (nodeDepth < 0) Int.MAX_VALUE else nodeDepth)
        return Rendering(model, lines, below + 1, treeDepth, foreignModels, legend, unloaded)
    }

    private fun visit(node: SNode, depth: Int, label: String?, limit: Int): Int {
        treeDepth = maxOf(treeDepth, depth)
        val (line, children) = describe(node, depth, label)
        lines += line
        var count = 0
        for ((child, childLabel) in children) {
            count += 1 + if (depth + 1 > limit) countBelow(child, depth + 1) else visit(child, depth + 1, childLabel, limit)
        }
        line.descendants = count
        return count
    }

    private fun countBelow(node: SNode, depth: Int): Int {
        treeDepth = maxOf(treeDepth, depth)
        return node.children.sumOf { 1 + countBelow(it, depth + 1) }
    }

    private class Feature(val feature: SConceptFeature, val format: (String) -> String)

    private fun describe(node: SNode, depth: Int, label: String?): Pair<Line, List<Pair<SNode, String>>> {
        val concept = node.concept
        val loaded = concept.isValid
        val key = ConceptKey(concept.language.qualifiedName, concept.name)
        if (!loaded) unloaded[key] = concept
        legend.getOrPut(key) { deprecatedLegend(concept) }

        var name: String? = null
        val storedProps = ArrayList<Feature>()
        val starredProps = ArrayList<Feature>()
        val emptyProps = ArrayList<Feature>()
        val declaredProps = concept.properties.toList()
        for (prop in declaredProps) {
            val stored = SNodeAccessUtil.hasProperty(node, prop)
            val hidden = isBaseConceptFeature(prop) || isDeprecated(prop)
            val display = displayValue(node, prop)
            val bool = prop.type == SPrimitiveTypes.BOOLEAN
            if (stored) {
                // A stored value the data type cannot render (display null) is not "unset": print it raw, flagged.
                val raw = if (display == null) node.getProperty(prop) else null
                when {
                    !display.isNullOrEmpty() && prop == SNodeUtil.property_INamedConcept_name -> name = display
                    !display.isNullOrEmpty() -> storedProps += Feature(prop) { "$it=${propertyValue(prop, display)}" + deprecatedFlag(prop) }
                    bool && (raw.isNullOrEmpty() || raw == "false") -> storedProps += Feature(prop) { "$it=false" + deprecatedFlag(prop) }
                    !raw.isNullOrEmpty() -> storedProps += Feature(prop) { "$it=${jsonString(raw)} !raw" + deprecatedFlag(prop) }
                    !hidden -> emptyProps += Feature(prop) { it }
                }
            } else if (!hidden && loaded) {
                val value = defaultEnumLiteral(prop) ?: display
                when {
                    bool -> starredProps += Feature(prop) { "$it=${if (value.isNullOrEmpty()) "false" else token(value)}*" }
                    !value.isNullOrEmpty() -> starredProps += Feature(prop) { "$it=${propertyValue(prop, value)}*" }
                    else -> emptyProps += Feature(prop) { it }
                }
            }
        }
        val declaredPropSet = declaredProps.toSet()
        for (prop in node.properties) {
            if (prop in declaredPropSet) continue
            val value = node.getProperty(prop)
            if (value.isNullOrEmpty()) continue
            storedProps += Feature(prop) { "$it=${token(value)} !undeclared" + deprecatedFlag(prop) }
        }

        val declaredRefs = concept.referenceLinks.toList()
        val storedRefs = ArrayList<Pair<SReferenceLink, (String) -> Reference>>()
        for (ref in node.references) {
            val link = ref.link
            val target = ref.targetNode
            val pointer = target?.reference ?: ref.targetNodeReference
            val modelRef = pointer?.modelReference
            val model = modelRef?.let { PersistenceFacade.getInstance().asString(it) }
            if (model != null) (target?.model ?: modelRef.resolve(repository))?.let { checkForeign(model, it) }
            val id = if (model == null) null else pointer.nodeId?.let { escapeNodeId(it.toString()) }
            val flags = ArrayList<String>()
            if (target == null) flags += "!unresolved"
            if (link !in declaredRefs) flags += "!undeclared"
            if (isDeprecated(link)) flags += "!deprecated"
            val targetName = target?.let { it.name ?: it.presentation }
            storedRefs += link to { role -> Reference(role, targetName, model, id, flags) }
        }
        val storedLinks = storedRefs.map { it.first }.toSet()
        val emptyRefs = if (!loaded) emptyList() else declaredRefs
            .filter { it !in storedLinks && !isBaseConceptFeature(it) && !isDeprecated(it) }
            .map { link -> Feature(link) { if (link.isOptional) it else "$it!required" } }

        val byRole = node.children.groupBy { it.containmentLink }
        val attributes = byRole[SNodeUtil.link_BaseConcept_smodelAttribute].orEmpty()
        val declaredLinks = concept.containmentLinks.filter { it != SNodeUtil.link_BaseConcept_smodelAttribute }
        val undeclaredLinks = byRole.keys.filterNotNull()
            .filter { it != SNodeUtil.link_BaseConcept_smodelAttribute && it !in declaredLinks }
        val roles = ArrayList<SContainmentLink>()
        val emptyChildren = ArrayList<Feature>()
        for (link in declaredLinks + undeclaredLinks) {
            if (byRole[link].isNullOrEmpty()) {
                if (loaded && !isBaseConceptFeature(link) && !isDeprecated(link)) {
                    emptyChildren += Feature(link) { if (link.isOptional) it else "$it!required" }
                }
            } else {
                roles += link
            }
        }

        val printed: List<SConceptFeature> = (storedProps + starredProps + emptyProps).map { it.feature } +
            storedRefs.map { it.first } + emptyRefs.map { it.feature } + roles + emptyChildren.map { it.feature }
        val shown = withOwnerSuffix(printed.map { it.name }) { printed[it].owner.name }
        val displayName = HashMap<SConceptFeature, String>()
        printed.forEachIndexed { i, f -> displayName.putIfAbsent(f, shown[i]) }
        fun Feature.text() = format(displayName.getValue(feature))

        val line = Line(
            depth = depth,
            label = label,
            concept = key,
            id = escapeNodeId(node.nodeId.toString()),
            name = name,
            properties = (storedProps + starredProps).map { it.text() },
            references = storedRefs.map { (link, make) -> make(displayName.getValue(link)) },
            flags = if (loaded) emptyList() else listOf("!conceptNotLoaded"),
            empty = emptyLine(emptyProps.map { it.text() }, emptyRefs.map { it.text() }, emptyChildren.map { it.text() }),
        )
        val children = ArrayList<Pair<SNode, String>>()
        attributes.forEach { children += it to attributeLabel(it) }
        for (link in roles) {
            val role = displayName.getValue(link)
            val flags = (if (link in undeclaredLinks) " !undeclared" else "") + deprecatedFlag(link)
            byRole.getValue(link).forEachIndexed { i, child -> children += child to (if (link.isMultiple) "$role[$i]" else role) + flags }
        }
        return line to children
    }

    /** The annotated feature as the attribute itself names it (the behavior methods `AttributeOperations` calls), declared or not. */
    private fun attributeLabel(attribute: SNode): String = when {
        AttributeOperations.isPropertyAttribute(attribute) ->
            "@prop(${(BHReflection.invoke0(attribute, PROPERTY_ATTRIBUTE, PROPERTY_ATTRIBUTE_GET_PROPERTY) as SProperty?)?.name ?: "?"})"
        AttributeOperations.isLinkAttribute(attribute) ->
            "@ref(${(BHReflection.invoke0(attribute, LINK_ATTRIBUTE, LINK_ATTRIBUTE_GET_LINK) as SReferenceLink?)?.name ?: "?"})"
        AttributeOperations.isChildAttribute(attribute) ->
            "@child(${(BHReflection.invoke0(attribute, CHILD_ATTRIBUTE, CHILD_ATTRIBUTE_GET_LINK) as SContainmentLink?)?.name ?: "?"})"
        else -> "@attr"
    }

    private fun deprecatedLegend(concept: SAbstractConcept): List<String> {
        val names = ArrayList<String>()
        concept.properties.filter { !isBaseConceptFeature(it) && isDeprecated(it) }
            .forEach { names += if (it.type == SPrimitiveTypes.BOOLEAN) "${it.name}=false" else it.name }
        concept.referenceLinks.filter { !isBaseConceptFeature(it) && isDeprecated(it) }.forEach { names += it.name }
        concept.containmentLinks.filter { !isBaseConceptFeature(it) && isDeprecated(it) }.forEach { names += it.name }
        return names.distinct()
    }

    private fun isDeprecated(feature: SConceptFeature): Boolean = deprecatedFeatures.getOrPut(feature) {
        feature.isValid && deprecationOf(feature.sourceNode?.resolve(repository)).startsWith("true")
    }

    private fun deprecatedFlag(feature: SConceptFeature): String = if (isDeprecated(feature)) " !deprecated" else ""

    private fun isBaseConceptFeature(feature: SConceptFeature): Boolean = feature.owner == SNodeUtil.concept_BaseConcept

    private fun checkForeign(modelRef: String, model: SModel) {
        if (foreignChecked.add(modelRef) && isForeign(model)) foreignModels += modelRef
    }

    companion object {
        private val PLAIN_TOKEN = Regex("[A-Za-z0-9_.$-]+")
        private const val HEX = "0123456789ABCDEF"

        // jetbrains.mps.lang.core attribute concepts and the behavior methods that name the annotated feature,
        // as in AttributeOperations.
        private val PROPERTY_ATTRIBUTE = MetaAdapterFactory.getConcept(
            0xceab519525ea4f22uL.toLong(), 0x9b92103b95ca8c0cuL.toLong(), 0x2eb1ad060897da56L, "jetbrains.mps.lang.core.structure.PropertyAttribute"
        )
        private val LINK_ATTRIBUTE = MetaAdapterFactory.getConcept(
            0xceab519525ea4f22uL.toLong(), 0x9b92103b95ca8c0cuL.toLong(), 0x2eb1ad060897da51L, "jetbrains.mps.lang.core.structure.LinkAttribute"
        )
        private val CHILD_ATTRIBUTE = MetaAdapterFactory.getConcept(
            0xceab519525ea4f22uL.toLong(), 0x9b92103b95ca8c0cuL.toLong(), 0x9d98713f247885aL, "jetbrains.mps.lang.core.structure.ChildAttribute"
        )
        private val PROPERTY_ATTRIBUTE_GET_PROPERTY = SMethodIdV2.create("getProperty", 1341860900488756504L, 0x553941aeb020c32eL)
        private val LINK_ATTRIBUTE_GET_LINK = SMethodIdV2.create("getLink", 1341860900489573894L, 0x553941aeb020c32eL)
        private val CHILD_ATTRIBUTE_GET_LINK = SMethodIdV2.create("getLink", 709746936026609871L, 0x553941aeb020c32eL)

        /** A name, target, enum literal or raw value: bare when it is a plain token, else a JSON string. */
        fun token(s: String): String = if (PLAIN_TOKEN.matches(s)) s else jsonString(s)

        fun jsonString(s: String): String = JsonPrimitive(s).toString()

        /** The length `finalizeResult` measures: the text as a JSON string. */
        fun jsonLength(text: String): Int = jsonString(text).length

        fun propertyValue(prop: SProperty, value: String): String = propertyValue(prop.type, value)

        /** A string-typed value is always a JSON string; booleans, integers and enum literals follow [token]. */
        fun propertyValue(type: SDataType, value: String): String =
            if (type == SPrimitiveTypes.STRING || type is SConstrainedStringDatatypeAdapter) jsonString(value) else token(value)

        /**
         * A node id as a node reference prints it ([StringUtil.escapeRefChars]: `%`, `(`, `)` and `/` as `%XX`, D11),
         * with whitespace and control characters below U+0100 escaped the same way, so that the id never contains a
         * space and `unescapeRefChars` restores it. Whitespace at or above U+0100 stays raw: two hex digits cannot hold it.
         */
        fun escapeNodeId(id: String): String = buildString {
            for (c in StringUtil.escapeRefChars(id)) {
                if (c.code < 0x100 && (c.code <= 0x20 || c.code == 0x7F || c.isWhitespace())) {
                    append('%').append(HEX[c.code shr 4]).append(HEX[c.code and 0xF])
                } else {
                    append(c)
                }
            }
        }

        /** Short concept names, or `<language>.<Name>` for every concept whose short name another language shares. */
        fun conceptTokens(keys: Collection<ConceptKey>): Map<ConceptKey, String> {
            val distinct = keys.toSet()
            val languagesByName = distinct.groupBy { it.name }
            return distinct.associateWith { if (languagesByName.getValue(it.name).size > 1) "${it.language}.${it.name}" else it.name }
        }

        /** [names] of the printed features of one node, with `@<owner>` on each name that occurs more than once. */
        fun withOwnerSuffix(names: List<String>, owner: (Int) -> String): List<String> {
            val counts = names.groupingBy { it }.eachCount()
            return names.mapIndexed { i, n -> if (counts.getValue(n) > 1) "$n@${owner(i)}" else n }
        }

        /** The `empty:` line without its indent, or null when all three groups are empty. */
        fun emptyLine(properties: List<String>, references: List<String>, children: List<String>): String? {
            val groups = listOf("properties" to properties, "references" to references, "children" to children).filter { it.second.isNotEmpty() }
            if (groups.isEmpty()) return null
            return "empty: " + groups.joinToString("; ") { (kind, entries) -> "$kind ${entries.joinToString(" ")}" }
        }

        fun referenceText(ref: Reference, alias: (String) -> String?): String {
            val target = ref.target?.let(::token) ?: "?"
            val model = ref.model?.let(alias)?.let { "@$it" } ?: ""
            val id = ref.id?.let { "#$it" } ?: ""
            return "-> ${ref.role}=$target$model$id" + ref.flags.joinToString("") { " $it" }
        }

        /** One node line; [showHidden] adds `(+N)` for a node whose descendants are not printed. */
        fun nodeLine(line: Line, concept: String, showHidden: Boolean, alias: (String) -> String?): String {
            val parts = ArrayList<String>()
            parts += (line.label?.let { "$it: " } ?: "") + concept
            parts += "#" + line.id
            line.name?.let { parts += token(it) }
            parts += line.properties
            line.references.forEach { parts += referenceText(it, alias) }
            parts += line.flags
            if (showHidden && line.descendants > 0) parts += "(+${line.descendants})"
            return "  ".repeat(line.depth) + parts.joinToString(" ")
        }

        /**
         * The depth to print (P1.4): [effectiveDepth] when its printout fits [limit], else the largest smaller depth
         * whose printout fits, never below 1; null when none does. [sizeAt] is the measured size of the printout at a
         * depth. The scan runs upward from 1 and stops at the first depth that does not fit, so the large printouts
         * below the cut are never measured in full.
         */
        fun selectCutDepth(effectiveDepth: Int, limit: Int, sizeAt: (Int) -> Int): Int? {
            if (sizeAt(effectiveDepth) <= limit) return effectiveDepth
            var fits: Int? = null
            for (depth in 1 until effectiveDepth) {
                if (sizeAt(depth) > limit) break
                fits = depth
            }
            return fits
        }
    }
}
