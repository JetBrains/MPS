package jetbrains.mps.agents.mcp.tools.common

import jetbrains.mps.agents.mcp.tools.common.AbstractOps.AssignabilityHint
import jetbrains.mps.agents.mcp.tools.common.AbstractOps.Companion.getCardinality
import jetbrains.mps.agents.mcp.tools.common.AbstractOps.Companion.structureQualifiedName
import jetbrains.mps.agents.mcp.tools.languages.StructureDeclarations
import jetbrains.mps.agents.mcp.tools.languages.StructureLanguageMeta
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SEnumOperations
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations
import jetbrains.mps.smodel.ConceptDescendantsCache
import jetbrains.mps.smodel.ModelDependencyResolver
import jetbrains.mps.smodel.SLanguageHierarchy
import jetbrains.mps.smodel.SNodeUtil
import jetbrains.mps.smodel.language.ConceptRegistry
import jetbrains.mps.smodel.language.LanguageRegistry
import org.jetbrains.mps.openapi.language.SAbstractConcept
import org.jetbrains.mps.openapi.language.SConcept
import org.jetbrains.mps.openapi.language.SContainmentLink
import org.jetbrains.mps.openapi.language.SInterfaceConcept
import org.jetbrains.mps.openapi.language.SLanguage
import org.jetbrains.mps.openapi.language.SReferenceLink
import org.jetbrains.mps.openapi.model.SModel
import org.jetbrains.mps.openapi.model.SNode
import org.jetbrains.mps.openapi.persistence.PersistenceFacade

/**
 * Next-step hints for an [AbstractOps.AssignabilityException], computed only after the check has
 * failed: which wrapper concept would accept a rejected child ([wrapperHint]), and which nodes would
 * fit a rejected reference target ([referenceTargetHint]). Constraints are not evaluated, so a
 * suggestion is only structurally accepted.
 */
internal object AssignabilityHints {
    private const val MAX_WRAPPER_SURVIVORS = 25
    private const val MAX_WRAPPER_DETAILS = 8
    private const val MAX_WRAPPER_TEXT = 3
    private const val MAX_INCOMPLETE_WRAPPERS = 3
    private const val MAX_TARGET_DETAILS = 25
    private const val MAX_TARGET_TEXT = 10
    private const val MAX_DESCENDANTS_VISITED = 2_000
    private const val MAX_DESCENDANT_CANDIDATES = 8
    private const val NODE_AT_PATH = "<the node at this path>"
    private val FEATURE_DECLARATION_LINKS =
        setOf(StructureLanguageMeta.propertyDeclarationLink, StructureLanguageMeta.linkDeclarationLink)

    private class Wrapper(
        val concept: SConcept,
        val link: SContainmentLink,
        val missingChildren: List<SContainmentLink>,
        val missingReferences: List<SReferenceLink>,
    ) {
        val isComplete get() = missingChildren.isEmpty() && missingReferences.isEmpty()
    }

    /**
     * Wrapper concepts for a node of concept [actual] rejected in [role] of a [parent] node in [model]:
     * concrete subconcepts of the role's target that have a child role accepting [actual]. Only
     * wrappers whose other roles are all optional are offered, unless none exists and at most
     * [MAX_INCOMPLETE_WRAPPERS] incomplete ones do; those name their missing mandatory roles.
     */
    fun wrapperHint(actual: SAbstractConcept, role: SContainmentLink, parent: SAbstractConcept, model: SModel): AssignabilityHint? {
        val expected = role.targetConcept
        val scope = languagesInScope(model, listOf(actual, expected, parent))
        val candidates = ConceptDescendantsCache.getInstance().getDescendants(expected)
            .filterIsInstance<SConcept>()
            .filter { !it.isAbstract && it.language in scope }
            .mapNotNull { wrapperFor(it, actual) }
            .filter { !isDeprecated(it.concept) }
        val complete = withoutInheritedDuplicates(candidates.filter { it.isComplete })
        val chosen = complete.ifEmpty {
            withoutInheritedDuplicates(candidates.filter { !it.isComplete }).takeIf { it.size <= MAX_INCOMPLETE_WRAPPERS }
                ?: return null
        }
        if (chosen.isEmpty() || chosen.size > MAX_WRAPPER_SURVIVORS) return null
        val ranked = chosen.sortedWith(wrapperRanking(actual, expected))
        return AssignabilityHint(wrapperLines(ranked, expected), mapOf(
            "wrapperCandidates" to ranked.take(MAX_WRAPPER_DETAILS).map(::wrapperDetails),
            "wrapperCandidatesTotal" to ranked.size,
        ))
    }

    // Model languages plus the languages they extend, the way IntentionsManager and KeymapHandler close
    // over them. The languages of the concepts involved in the failure are always in scope: a dry run into
    // a fresh model has not imported them yet.
    private fun languagesInScope(model: SModel, involved: List<SAbstractConcept>): Set<SLanguage> {
        val scope = involved.mapTo(HashSet()) { it.language }
        val repository = model.repository ?: return scope
        val registry = LanguageRegistry.getInstance(repository)
        scope.addAll(ModelDependencyResolver(registry, repository).usedLanguages(model))
        // The default handler logs a warning per undeployed language on every call.
        scope.addAll(SLanguageHierarchy(registry, scope.toList()).getExtendedLangs { })
        return scope
    }

    private fun isDeprecated(concept: SConcept): Boolean =
        ConceptRegistry.getInstance().getConceptProperties(concept)?.isDeprecated == true

    private fun isGenericLink(link: SContainmentLink): Boolean =
        link.owner == SNodeUtil.concept_BaseConcept || link.targetConcept == SNodeUtil.concept_BaseConcept

    private fun nonAttributeLinks(concept: SConcept): List<SContainmentLink> =
        concept.containmentLinks.filter { it.owner != SNodeUtil.concept_BaseConcept }

    private fun wrapperFor(concept: SConcept, actual: SAbstractConcept): Wrapper? {
        val links = nonAttributeLinks(concept)
        val mandatoryReferences = concept.referenceLinks.filter { !it.isOptional }
        return links
            .filter { !isGenericLink(it) && actual.isSubConceptOf(it.targetConcept) }
            .map { link -> Wrapper(concept, link, links.filter { it != link && !it.isOptional }, mandatoryReferences) }
            .minByOrNull { it.missingChildren.size + it.missingReferences.size }
    }

    // A subconcept that accepts the node only through a link it inherits from another candidate adds
    // nothing (NestedNewExpression next to GenericNewExpression).
    private fun withoutInheritedDuplicates(wrappers: List<Wrapper>): List<Wrapper> = wrappers.filter { w ->
        w.link.owner == w.concept || wrappers.none { other ->
            other !== w && other.link == w.link && w.concept.isSubConceptOf(other.concept)
        }
    }

    private fun wrapperRanking(actual: SAbstractConcept, expected: SAbstractConcept): Comparator<Wrapper> = compareBy(
        { if (it.concept.name == it.link.targetConcept.name + expected.name) 0 else 1 },
        { if (it.concept.language == actual.language || it.concept.language == expected.language) 0 else 1 },
        { nonAttributeLinks(it.concept).size },
        { hierarchyDistance(actual, it.link.targetConcept) },
        { it.concept.name },
    )

    private fun hierarchyDistance(from: SAbstractConcept, to: SAbstractConcept): Int {
        val seen = hashSetOf(from)
        var level = listOf(from)
        var distance = 0
        while (level.isNotEmpty()) {
            if (to in level) return distance
            level = level.flatMap(::directSupers).filter(seen::add)
            distance++
        }
        return Int.MAX_VALUE
    }

    private fun directSupers(concept: SAbstractConcept): List<SAbstractConcept> = when (concept) {
        is SConcept -> listOfNotNull(concept.superConcept) + concept.superInterfaces
        is SInterfaceConcept -> concept.superInterfaces.toList()
        else -> emptyList()
    }

    private fun wrapperLines(ranked: List<Wrapper>, expected: SAbstractConcept): List<String> {
        val first = ranked.first()
        val paste = "   " + pasteShape(first)
        if (ranked.size == 1) {
            val needs = if (first.isComplete) "" else "; it also needs ${missingRoles(first)}"
            return listOf(
                " - Wrap it: '${first.concept.name}' is ${article(expected.name)} '${expected.name}' whose child role " +
                    "${roleSummary(first.link)} structurally accepts it$needs. Replace the node at this path with:",
                paste
            )
        }
        val where = if (ranked.size <= MAX_WRAPPER_DETAILS) "all" else "the first $MAX_WRAPPER_DETAILS"
        val names = ranked.take(MAX_WRAPPER_TEXT).joinToString(", ") { w ->
            "${w.concept.name}.${w.link.name}" + if (w.isComplete) "" else " (also needs ${missingRoles(w)})"
        }
        return listOf(
            " - Possible wrappers (${minOf(MAX_WRAPPER_TEXT, ranked.size)} of ${ranked.size}, $where in " +
                "details.wrapperCandidates), each ${article(expected.name)} '${expected.name}' with a child role that " +
                "structurally accepts it: $names. For the first, replace the node at this path with:",
            paste
        )
    }

    private fun roleSummary(link: SContainmentLink): String =
        "'${link.name}' (${getCardinality(link)}, ${link.targetConcept.name})"

    private fun missingRoles(w: Wrapper): String =
        (w.missingChildren.map(::roleSummary) +
            w.missingReferences.map { "reference '${it.name}' (${getCardinality(it)}, ${it.targetConcept.name})" })
            .joinToString(", ")

    private fun article(word: String): String = if (word.take(1).uppercase() in listOf("A", "E", "I", "O", "U")) "an" else "a"

    // Not valid JSON on purpose: the placeholders mark what the caller fills in.
    private fun pasteShape(w: Wrapper): String {
        val children = nonAttributeLinks(w.concept).filter { it == w.link || it in w.missingChildren }.joinToString(",") {
            """{"role":"${it.name}","nodes":[${if (it == w.link) NODE_AT_PATH else "<${it.name}>"}]}"""
        }
        val references = w.missingReferences.joinToString(",") { """{"role":"${it.name}","target":"<${it.name}>"}""" }
        return buildString {
            append("""{"concept":"${structureQualifiedName(w.concept)}"""")
            if (references.isNotEmpty()) append(""","references":[$references]""")
            append(""","children":[$children]}""")
        }
    }

    private fun wrapperDetails(w: Wrapper): Map<String, Any?> = buildMap {
        put("concept", structureQualifiedName(w.concept))
        put("conceptReference", PersistenceFacade.getInstance().asString(w.concept))
        put("role", w.link.name)
        put("roleTarget", structureQualifiedName(w.link.targetConcept))
        put("cardinality", getCardinality(w.link))
        if (!w.isComplete) {
            put("alsoRequired", w.missingChildren.map {
                mapOf("role" to it.name, "cardinality" to getCardinality(it), "target" to structureQualifiedName(it.targetConcept))
            } + w.missingReferences.map {
                mapOf(
                    "role" to it.name, "cardinality" to getCardinality(it),
                    "target" to structureQualifiedName(it.targetConcept), "kind" to "reference"
                )
            })
        }
    }

    private class TargetCandidate(val name: String, val detail: String, val entry: Map<String, Any?>)

    /**
     * Nodes that would fit [link] instead of the rejected [target]. For a concept declaration: its own
     * and inherited feature declarations of the expected kind (D52's `SPropertyAccess.property` given the
     * concept instead of its `PropertyDeclaration`). For anything else: descendants that fit, then the
     * nearest ancestor that does.
     */
    fun referenceTargetHint(target: SNode, link: SReferenceLink): AssignabilityHint? {
        val expected = link.targetConcept
        return if (target.concept.isSubConceptOf(SNodeUtil.concept_AbstractConceptDeclaration)) {
            featureTargetHint(target, expected, link.name)
        } else {
            nearbyTargetHint(target, expected)
        }
    }

    private fun featureTargetHint(conceptDecl: SNode, expected: SAbstractConcept, role: String): AssignabilityHint? {
        val baseConceptDecl = SNodeUtil.concept_BaseConcept.sourceNode
        val candidates = mutableListOf<TargetCandidate>()
        val visited = HashSet<SNode>()
        var level = listOf(conceptDecl)
        while (level.isNotEmpty()) {
            val next = mutableListOf<SNode>()
            for (decl in level) {
                if (!visited.add(decl) || decl.reference == baseConceptDecl) continue
                decl.children
                    .filter { it.containmentLink in FEATURE_DECLARATION_LINKS && it.concept.isSubConceptOf(expected) }
                    .mapTo(candidates) { featureCandidate(it, decl) }
                next += StructureDeclarations.superConceptDeclarations(decl)
            }
            level = next
        }
        if (candidates.isEmpty()) return null

        val lines = mutableListOf(
            " - Target '${conceptDecl.name}' is a ${conceptDecl.concept.name}; role '$role' wants one of its " +
                "${expected.name}s (inherited included). Set the reference target to one of:"
        )
        candidates.take(MAX_TARGET_TEXT).mapTo(lines) { "   ${it.name} (${it.detail}): ${it.entry["reference"]}" }
        if (candidates.size > MAX_TARGET_TEXT) {
            val declared = conceptDecl.model?.let { "${it.name.longName}.${conceptDecl.name}" } ?: conceptDecl.name
            lines += "   … ${candidates.size - MAX_TARGET_TEXT} more: see details.targetCandidates, or " +
                "mps_mcp_get_concept_details on '$declared' (each feature's `sourceNode` is its reference)."
        }
        return targetHint(lines, candidates, candidates.size)
    }

    private fun featureCandidate(feature: SNode, declaredIn: SNode): TargetCandidate {
        val isLink = feature.containmentLink == StructureLanguageMeta.linkDeclarationLink
        val name = (if (isLink) feature.getProperty(StructureLanguageMeta.linkDeclarationRoleProperty) else feature.name) ?: "?"
        val entry = linkedMapOf<String, Any?>(
            "name" to name,
            "concept" to feature.concept.name,
            "declaredIn" to declaredIn.name,
            "reference" to PersistenceFacade.getInstance().asString(feature.reference),
        )
        var detail = declaredIn.name ?: "?"
        if (isLink) {
            val genuine = StructureDeclarations.genuineLink(feature)
            val metaclass = if (SEnumOperations.isMember(
                    SPropertyOperations.getEnum(genuine, StructureLanguageMeta.linkDeclarationMetaClassProperty),
                    StructureLanguageMeta.LINK_METACLASS_AGGREGATION
                )) "containment" else "reference"
            val cardinality = SPropertyOperations.getEnum(genuine, StructureLanguageMeta.linkDeclarationSourceCardinalityProperty)?.presentation
            entry["metaclass"] = metaclass
            entry["cardinality"] = cardinality
            detail += "; $metaclass, $cardinality"
        }
        return TargetCandidate(name, detail, entry)
    }

    private fun nearbyTargetHint(target: SNode, expected: SAbstractConcept): AssignabilityHint? {
        val candidates = mutableListOf<TargetCandidate>()
        val stack = ArrayDeque(childrenWithoutAttributes(target).asReversed())
        var visited = 0
        var matches = 0
        while (stack.isNotEmpty() && visited < MAX_DESCENDANTS_VISITED) {
            val node = stack.removeLast()
            visited++
            if (node.concept.isSubConceptOf(expected)) {
                if (matches < MAX_DESCENDANT_CANDIDATES) candidates += nearbyCandidate(node, "descendant")
                matches++
            }
            stack.addAll(childrenWithoutAttributes(node).asReversed())
        }
        generateSequence(target.parent) { it.parent }
            .firstOrNull { it.concept.isSubConceptOf(expected) }
            ?.let { candidates += nearbyCandidate(it, "ancestor"); matches++ }
        if (candidates.isEmpty()) return null

        val lines = mutableListOf(
            " - Target '${target.name ?: target.concept.name}' is ${article(target.concept.name)} '${target.concept.name}', " +
                "not ${article(expected.name)} '${expected.name}'. Nearby nodes that are (descendants first, then the " +
                "nearest ancestor):"
        )
        candidates.mapTo(lines) { "   ${it.name} (${it.detail}): ${it.entry["reference"]}" }
        if (matches > candidates.size) {
            val scanned = if (visited < MAX_DESCENDANTS_VISITED) "" else " among the first $MAX_DESCENDANTS_VISITED descendants"
            lines += "   … ${matches - candidates.size} more descendants$scanned."
        }
        return targetHint(lines, candidates, matches)
    }

    private fun childrenWithoutAttributes(node: SNode): List<SNode> =
        node.children.filter { it.containmentLink != SNodeUtil.link_BaseConcept_smodelAttribute }

    private fun nearbyCandidate(node: SNode, relation: String): TargetCandidate {
        val name = node.name ?: "(unnamed)"
        val detail = if (relation == "ancestor") "ancestor, ${node.concept.name}" else node.concept.name
        return TargetCandidate(name, detail, linkedMapOf(
            "name" to name,
            "concept" to node.concept.name,
            "relation" to relation,
            "reference" to PersistenceFacade.getInstance().asString(node.reference),
        ))
    }

    private fun targetHint(lines: List<String>, candidates: List<TargetCandidate>, total: Int) = AssignabilityHint(lines, mapOf(
        "targetCandidates" to candidates.take(MAX_TARGET_DETAILS).map { it.entry },
        "targetCandidatesTotal" to total,
    ))
}
