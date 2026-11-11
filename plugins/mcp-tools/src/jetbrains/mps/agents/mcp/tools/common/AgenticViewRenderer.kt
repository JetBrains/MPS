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
 * The `AGENTIC VIEW` format of `mps_mcp_print_node` and `mps_mcp_get_compact_project_structure`: one line per node
 * with its role, concept, id, name, properties and references, read from the model (no editor), plus an `empty:` line
 * for unset features. The grammar is §2 of `plugins/mcp-tools/docs/AGENTIC_VIEW-plan.md`; the feature semantics are
 * those of the JSON printout.
 *
 * One instance per render, under a read action: it memoizes deprecation and project membership for that call only.
 * [render] walks the tree, or the roots of some models, once; [Rendering.text] and [Rendering.fit] assemble printouts
 * from the recorded lines without touching the model. With a `codeText` function, each outermost BaseLanguage
 * statement or expression is one line with its editor text (`codeAsText`).
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
        /** The name is not stored: it is what reading the `name` property returns (a constraints getter). */
        val nameComputed: Boolean = false,
        val properties: List<String> = emptyList(),
        val references: List<Reference> = emptyList(),
        val flags: List<String> = emptyList(),
        val empty: String? = null,
        var descendants: Int = 0,
        /** The editor text of a code node printed as one line (`= "…"`); its subtree is not printed, only its attributes. */
        val text: String? = null,
        /** The descendants of a [text] line that are not printed when its attribute lines are. */
        var skipped: Int = 0,
    )

    /**
     * The printout for a `maxInlineBytes` limit; [inline] false means that [text] is the whole printout, for a file.
     * [collapsed] counts its code lines (`= "…"`).
     */
    class Fit(
        val text: String,
        val printedNodes: Int,
        val unloadedConcepts: List<SAbstractConcept>,
        val cut: Boolean,
        val inline: Boolean,
        val collapsed: Int,
    )

    /** One model's part of a printout: its header lines, then the lines from [start] up to the next section's start. */
    class Section(val model: String, val start: Int)

    /**
     * The recorded lines of one walk, in document order, in one [Section] per model; the depth-0 lines are the
     * roots. A printout is a selection of the lines that holds every root, is closed under "a printed node has
     * its parent printed" and prints either all or none of a node's children; a printed node whose children are
     * not printed and that has descendants ends with `(+N)`.
     */
    class Rendering(
        val sections: List<Section>,
        val lines: List<Line>,
        val totalNodes: Int,
        val foreignModels: Set<String> = emptySet(),
        val deprecated: Map<ConceptKey, List<String>> = emptyMap(),
        val unloaded: Map<ConceptKey, SAbstractConcept> = emptyMap(),
        /** A line before the first section (`# module …`). */
        val preamble: String? = null,
    ) {
        /** The printout of one node's subtree. */
        constructor(
            model: String,
            lines: List<Line>,
            totalNodes: Int,
            foreignModels: Set<String> = emptySet(),
            deprecated: Map<ConceptKey, List<String>> = emptyMap(),
            unloaded: Map<ConceptKey, SAbstractConcept> = emptyMap(),
        ) : this(listOf(Section(model, 0)), lines, totalNodes, foreignModels, deprecated, unloaded)

        /** The indices of each line's child lines, from the depths of the document order. */
        private val children: List<IntArray> = run {
            val kids = List(lines.size) { ArrayList<Int>() }
            val stack = ArrayList<Int>()
            lines.forEachIndexed { i, line ->
                while (stack.size > line.depth) stack.removeAt(stack.size - 1)
                stack.lastOrNull()?.let { kids[it] += i }
                stack += i
            }
            kids.map { it.toIntArray() }
        }

        private fun end(section: Int): Int = sections.getOrNull(section + 1)?.start ?: lines.size

        private val sectionOf = IntArray(lines.size).also { of -> sections.indices.forEach { s -> (sections[s].start until end(s)).forEach { of[it] = s } } }

        private val all = BooleanArray(lines.size) { true }

        val roots: Int get() = lines.count { it.depth == 0 }

        /** The size of the uncut printout, for the cut header: what raising `maxInlineBytes` would return. */
        val wholeChars: Int by lazy { size(all, cut = false) }

        /** The whole printout. */
        fun text(): String = text(all, cut = false)

        /** The printout of the [printed] lines, with the `# cut` line when [cut]. */
        fun text(printed: BooleanArray, cut: Boolean): String = printoutLines(printed, cut).joinToString("\n")

        /**
         * [jsonLength] of [text] without building it, from the escaped length of each line; it stops counting once the
         * size is above [stopAbove], so a printout that is too large costs only its first lines.
         */
        private fun size(printed: BooleanArray, cut: Boolean, stopAbove: Int = Int.MAX_VALUE): Int {
            var size = 2
            var first = true
            for (line in printoutLines(printed, cut)) {
                size += escapedLength(line) + if (first) 0 else 2
                first = false
                if (size > stopAbove) return size
            }
            return size
        }

        private fun modelLine(model: String): String =
            "# AGENTIC VIEW 1 | model m0=$model${if (model in foreignModels) " !foreign" else ""} | node reference = <model>/<id>"

        private fun cutLine(printedNodes: Int): String =
            "# cut: $printedNodes of $totalNodes nodes printed (the whole printout is $wholeChars chars); " +
                "print the \"(+N)\" nodes you need by their ids"

        private fun printoutLines(printed: BooleanArray, cut: Boolean): Sequence<String> = sequence {
            preamble?.let { yield(it) }
            val printedNodes = printed.count { it }
            sections.forEachIndexed { s, section ->
                val model = section.model
                val shown = (section.start until end(s)).filter { printed[it] }
                val tokens = conceptTokens(shown.map { lines[it].concept })
                val aliases = LinkedHashMap<String, String>()
                aliases[model] = "m0"
                for (i in shown) for (ref in lines[i].references) {
                    val m = ref.model ?: continue
                    if (m !in aliases) aliases[m] = "m${aliases.size}"
                }
                fun foreign(m: String) = if (m in foreignModels) " !foreign" else ""
                yield(modelLine(model))
                if (aliases.size > 1) yield("# models " + aliases.entries.drop(1).joinToString(" ") { "${it.value}=${it.key}${foreign(it.key)}" })
                val concepts = shown.map { lines[it].concept }.distinct()
                if (concepts.isNotEmpty()) yield(conceptsLine(concepts))
                deprecatedLine(concepts) { tokens.getValue(it) }?.let { yield(it) }
                if (cut && s == 0) yield(cutLine(printedNodes))
                for (i in shown) {
                    val line = lines[i]
                    val expanded = children[i].isNotEmpty() && printed[children[i][0]]
                    yield(nodeLine(line, tokens.getValue(line.concept), showHidden = !expanded) { m -> if (m == model) null else aliases[m] })
                    line.empty?.let { yield(emptyLineText(line)) }
                }
            }
        }

        private fun conceptsLine(concepts: Collection<ConceptKey>): String =
            "# concepts " + concepts.groupBy { it.language }.toSortedMap()
                .entries.joinToString(" | ") { (language, keys) -> "$language: " + keys.map { it.name }.sorted().joinToString(" ") }

        private fun deprecatedLine(concepts: Collection<ConceptKey>, token: (ConceptKey) -> String): String? {
            val parts = concepts.sortedBy(token)
                .mapNotNull { key -> deprecated[key]?.takeIf { it.isNotEmpty() }?.let { "${token(key)}: ${it.joinToString(" ")}" } }
            return if (parts.isEmpty()) null else "# deprecated, printed only when set: " + parts.joinToString(" | ")
        }

        private fun emptyLineText(line: Line): String = "  ".repeat(line.depth + 1) + line.empty

        /**
         * The printout for `maxInlineBytes` [limit]: the whole of it when it fits, else the budget-filling cut
         * ([cutSelection]); when not even the roots alone fit, the whole text with `inline = false`.
         */
        fun fit(limit: Int): Fit {
            if (size(all, cut = false, stopAbove = limit) <= limit) return Fit(text(), lines.size, unloadedConcepts(all), cut = false, inline = true, collapsed(all))
            val printed = cutSelection(limit) ?: return Fit(text(), lines.size, unloadedConcepts(all), cut = false, inline = false, collapsed(all))
            return Fit(text(printed, cut = true), printed.count { it }, unloadedConcepts(printed), cut = true, inline = true, collapsed(printed))
        }

        private fun collapsed(printed: BooleanArray): Int = lines.indices.count { printed[it] && lines[it].text != null }

        private fun unloadedConcepts(printed: BooleanArray): List<SAbstractConcept> =
            lines.indices.filter { printed[it] }.mapNotNull { unloaded[lines[it].concept] }.distinct()

        /**
         * The header lines of one section in a cut, sized from what its printed lines use: the concepts with their
         * line counts (for the concept tokens on the node lines) and the referenced models with their reference
         * counts and first occurrence (for the aliases).
         */
        private inner class SectionHeader(val model: String) {
            val conceptLines = LinkedHashMap<ConceptKey, Int>()
            val refsTo = HashMap<String, Int>()
            val firstRef = HashMap<String, Long>()
            private var cached = -1L
            var lineCount = 0
                private set

            fun changed() {
                cached = -1L
            }

            /** The header characters plus the concept tokens and model aliases of the section's node lines. */
            fun chars(): Long {
                if (cached >= 0) return cached
                val tokens = conceptTokens(conceptLines.keys)
                var chars = escapedLength(modelLine(model)).toLong()
                var count = 1
                if (conceptLines.isNotEmpty()) {
                    chars += escapedLength(conceptsLine(conceptLines.keys))
                    count++
                }
                for ((key, n) in conceptLines) chars += n.toLong() * escapedLength(tokens.getValue(key))
                deprecatedLine(conceptLines.keys) { tokens.getValue(it) }?.let { chars += escapedLength(it); count++ }
                if (refsTo.isNotEmpty()) {
                    count++
                    chars += "# models ".length + refsTo.size - 1
                    firstRef.entries.sortedBy { it.value }.forEachIndexed { rank, (m, _) ->
                        val alias = 1 + digits(rank + 1)
                        chars += alias + 1 + escapedLength(m + if (m in foreignModels) " !foreign" else "")
                        chars += refsTo.getValue(m).toLong() * alias
                    }
                }
                lineCount = count
                cached = chars
                return chars
            }
        }

        /**
         * The lines of the budget-filling cut, null when the roots alone do not fit [limit]. Nodes are expanded in
         * breadth-first order across all sections (level by level, document order within a level); an expansion
         * prints all children of the node, and the first expansion that does not fit ends the cut. The size of each
         * candidate is kept exact from per-line escaped lengths: the node lines without their concept token, model
         * aliases and `(+N)`, and the header lines of each section, which depend only on the section's printed
         * concepts and referenced models, and the node count of the `# cut` line.
         */
        private fun cutSelection(limit: Int): BooleanArray? {
            val printed = BooleanArray(lines.size)
            var lineChars = 0L
            var outputLines = 0
            var printedNodes = 0
            var hiddenChars = 0L
            val headers = sections.map { SectionHeader(it.model) }
            val preambleChars = preamble?.let { escapedLength(it).toLong() } ?: 0L
            val preambleLines = if (preamble != null) 1 else 0

            fun hiddenLength(n: Int) = if (n > 0) 4 + digits(n) else 0

            fun add(i: Int) {
                val line = lines[i]
                val header = headers[sectionOf[i]]
                printed[i] = true
                printedNodes++
                lineChars += escapedLength(nodeLine(line, "", hidden = 0) { m -> if (m == header.model) null else "" })
                outputLines++
                if (line.empty != null) {
                    lineChars += escapedLength(emptyLineText(line))
                    outputLines++
                }
                hiddenChars += hiddenLength(line.descendants)
                header.conceptLines.merge(line.concept, 1, Int::plus)
                line.references.forEachIndexed { pos, ref ->
                    val m = ref.model ?: return@forEachIndexed
                    if (m == header.model) return@forEachIndexed
                    header.refsTo.merge(m, 1, Int::plus)
                    header.firstRef.merge(m, (i.toLong() shl 20) + pos, ::minOf)
                }
                header.changed()
            }

            fun size(): Long {
                var chars = preambleChars + lineChars + hiddenChars + escapedLength(cutLine(printedNodes))
                var headerLines = preambleLines + 1
                for (header in headers) {
                    chars += header.chars()
                    headerLines += header.lineCount
                }
                return 2 + chars + 2L * (headerLines + outputLines - 1)
            }

            lines.indices.filter { lines[it].depth == 0 }.forEach(::add)
            if (size() > limit) return null
            for (v in lines.indices.sortedBy { lines[it].depth }) {
                val kids = children[v]
                if (kids.isEmpty()) continue
                hiddenChars -= hiddenLength(lines[v].descendants) - hiddenLength(lines[v].skipped)
                kids.forEach(::add)
                if (size() > limit) {
                    kids.forEach { printed[it] = false }
                    break
                }
            }
            return printed
        }
    }

    private val lines = ArrayList<Line>()
    private val foreignModels = HashSet<String>()
    private val foreignChecked = HashSet<String>()
    private val deprecatedFeatures = HashMap<SConceptFeature, Boolean>()
    private val legend = HashMap<ConceptKey, List<String>>()
    private val unloaded = LinkedHashMap<ConceptKey, SAbstractConcept>()
    private val codeConcepts = HashMap<SAbstractConcept, Boolean>()
    private var codeText: ((SNode) -> String?)? = null

    /** The code nodes that [codeText] had no text for, printed as node lines. */
    var textless = 0
        private set

    /**
     * Walks [root]'s subtree; [nodeDepth] `-1` describes every level, `n` describes `n` levels and only counts the rest.
     * With [codeText], a statement or expression that is the printed node or whose parent is neither is one line with
     * the text [codeText] gives for it, followed by the attributes in its subtree; a null text prints its tree.
     */
    fun render(root: SNode, nodeDepth: Int, codeText: ((SNode) -> String?)? = null): Rendering {
        this.codeText = codeText
        val model = root.model?.let { PersistenceFacade.getInstance().asString(it.reference) } ?: ""
        root.model?.let { checkForeign(model, it) }
        val below = visit(root, 0, null, levels(nodeDepth), inCode = false)
        return Rendering(model, lines, below + 1, foreignModels, legend, unloaded)
    }

    /**
     * Walks every root of each of [models], in model order, one section per model; [nodeDepth] applies below each
     * root. [module] names the module the models belong to, for the `# module` line.
     */
    fun render(models: List<SModel>, nodeDepth: Int, module: String? = null): Rendering {
        val sections = ArrayList<Section>()
        var total = 0
        for (model in models) {
            val ref = PersistenceFacade.getInstance().asString(model.reference)
            checkForeign(ref, model)
            sections += Section(ref, lines.size)
            for (root in model.rootNodes) total += 1 + visit(root, 0, null, levels(nodeDepth), inCode = false)
        }
        return Rendering(sections, lines, total, foreignModels, legend, unloaded, module?.let { "# module $it | ${models.size} models" })
    }

    private fun levels(nodeDepth: Int): Int = if (nodeDepth < 0) Int.MAX_VALUE else nodeDepth

    /** [inCode]: the parent is a statement or expression, so a code node is part of its parent's text. */
    private fun visit(node: SNode, depth: Int, label: String?, limit: Int, inCode: Boolean): Int {
        val code = codeText != null && isCode(node.concept)
        val text = if (code && !inCode) codeText?.invoke(node) else null
        if (code && !inCode && text == null) textless++
        val (line, children) = describe(node, depth, label, text)
        lines += line
        if (text != null) return collapse(node, line, limit)
        var count = 0
        for ((child, childLabel) in children) {
            count += 1 + if (depth + 1 > limit) countBelow(child) else visit(child, depth + 1, childLabel, limit, code)
        }
        line.descendants = count
        return count
    }

    /**
     * [line] of a code node, with its text; its child lines are the attributes of its subtree in document order, those
     * of a node below it labelled `on #<id>` with the id of the annotated node.
     */
    private fun collapse(node: SNode, line: Line, limit: Int): Int {
        val attributes = ArrayList<Pair<SNode, String>>()
        fun collect(n: SNode) {
            val (own, other) = n.children.partition { it.containmentLink == SNodeUtil.link_BaseConcept_smodelAttribute }
            val on = if (n == node) "" else " on #" + escapeNodeId(n.nodeId.toString())
            own.forEach { attributes += it to attributeLabel(it) + on }
            other.forEach(::collect)
        }
        collect(node)
        var shown = 0
        for ((attribute, label) in attributes) {
            shown += 1 + if (line.depth + 1 > limit) countBelow(attribute) else visit(attribute, line.depth + 1, label, limit, inCode = false)
        }
        line.descendants = countBelow(node)
        line.skipped = line.descendants - shown
        return line.descendants
    }

    private fun isCode(concept: SAbstractConcept): Boolean =
        codeConcepts.getOrPut(concept) { concept.isSubConceptOf(STATEMENT) || concept.isSubConceptOf(EXPRESSION) }

    private fun countBelow(node: SNode): Int = node.children.sumOf { 1 + countBelow(it) }

    private class Feature(val feature: SConceptFeature, val format: (String) -> String)

    /** [text]: the text of a code line, which shows the node's children, so its `empty:` line has no children group. */
    private fun describe(node: SNode, depth: Int, label: String?, text: String?): Pair<Line, List<Pair<SNode, String>>> {
        val concept = node.concept
        val loaded = concept.isValid
        val key = ConceptKey(concept.language.qualifiedName, concept.name)
        if (!loaded) unloaded[key] = concept
        legend.getOrPut(key) { deprecatedLegend(concept) }

        var name: String? = null
        var nameComputed = false
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
                    !bool && !value.isNullOrEmpty() && prop == SNodeUtil.property_INamedConcept_name -> {
                        name = value
                        nameComputed = true
                    }
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
            nameComputed = nameComputed,
            properties = (storedProps + starredProps).map { it.text() },
            references = storedRefs.map { (link, make) -> make(displayName.getValue(link)) },
            flags = if (loaded) emptyList() else listOf("!conceptNotLoaded"),
            empty = emptyLine(emptyProps.map { it.text() }, emptyRefs.map { it.text() }, if (text == null) emptyChildren.map { it.text() } else emptyList()),
            text = text,
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
        private val STATEMENT = MetaAdapterFactory.getConcept(
            0xf3061a5392264cc5uL.toLong(), 0xa443f952ceaf5816uL.toLong(), 0xf8cc56b215L, "jetbrains.mps.baseLanguage.structure.Statement"
        )
        private val EXPRESSION = MetaAdapterFactory.getConcept(
            0xf3061a5392264cc5uL.toLong(), 0xa443f952ceaf5816uL.toLong(), 0xf8c37f506fL, "jetbrains.mps.baseLanguage.structure.Expression"
        )
        private val PROPERTY_ATTRIBUTE_GET_PROPERTY = SMethodIdV2.create("getProperty", 1341860900488756504L, 0x553941aeb020c32eL)
        private val LINK_ATTRIBUTE_GET_LINK = SMethodIdV2.create("getLink", 1341860900489573894L, 0x553941aeb020c32eL)
        private val CHILD_ATTRIBUTE_GET_LINK = SMethodIdV2.create("getLink", 709746936026609871L, 0x553941aeb020c32eL)

        /** A name, target, enum literal or raw value: bare when it is a plain token, else a JSON string. */
        fun token(s: String): String = if (PLAIN_TOKEN.matches(s)) s else jsonString(s)

        fun jsonString(s: String): String = JsonPrimitive(s).toString()

        /** The length `finalizeResult` measures: the text as a JSON string. */
        fun jsonLength(text: String): Int = jsonString(text).length

        /** [jsonLength] without the quotes: escaping is per character, so the lengths of the parts of a text add up. */
        private fun escapedLength(text: String): Int = jsonLength(text) - 2

        private fun digits(n: Int): Int = n.toString().length

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

        /**
         * One node line; [showHidden] adds `(+N)` for a node whose children are not printed; a code line whose attribute
         * lines are printed ends with the count of its other descendants.
         */
        fun nodeLine(line: Line, concept: String, showHidden: Boolean, alias: (String) -> String?): String =
            nodeLine(line, concept, if (showHidden) line.descendants else line.skipped, alias)

        private fun nodeLine(line: Line, concept: String, hidden: Int, alias: (String) -> String?): String {
            val parts = ArrayList<String>()
            parts += (line.label?.let { "$it: " } ?: "") + concept
            parts += "#" + line.id
            line.name?.let { parts += token(it) + if (line.nameComputed) "*" else "" }
            parts += line.properties
            line.references.forEach { parts += referenceText(it, alias) }
            parts += line.flags
            line.text?.let { parts += "= " + jsonString(it) }
            if (hidden > 0) parts += "(+$hidden)"
            return "  ".repeat(line.depth) + parts.joinToString(" ")
        }
    }
}
