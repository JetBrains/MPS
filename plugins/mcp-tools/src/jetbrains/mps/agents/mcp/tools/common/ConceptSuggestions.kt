package jetbrains.mps.agents.mcp.tools.common

import jetbrains.mps.agents.mcp.tools.languages.StructureDeclarations
import jetbrains.mps.agents.mcp.tools.languages.StructureLanguageMeta
import jetbrains.mps.project.MPSProject
import jetbrains.mps.project.ModuleId
import jetbrains.mps.smodel.Language
import jetbrains.mps.smodel.adapter.MetaAdapterByDeclaration
import jetbrains.mps.smodel.adapter.ids.MetaIdHelper
import jetbrains.mps.smodel.language.LanguageRegistry
import org.jetbrains.mps.openapi.language.SAbstractConcept
import org.jetbrains.mps.openapi.language.SLanguage
import org.jetbrains.mps.openapi.model.SNode
import org.jetbrains.mps.openapi.module.SRepository
import java.util.PriorityQueue

/**
 * "Did you mean" candidates for a concept name that did not resolve, and the concept scan that
 * `mps_mcp_search_concepts` shares with them.
 *
 * Two callers with different budgets ([Mode]): `mps_mcp_get_concept_details` reports up to five
 * candidates per unresolved ref from a scan that reads docs, while a rejection (an unknown `concept`
 * in a blueprint, an unknown `typeConceptRef`) runs inside the tool's command, often on the EDT, and
 * must not resolve the declaration of every concept in the registry (study defect D116,
 * `docs/d116-concept-not-found-suggestions-plan.md`).
 *
 * One instance per tool call: [membership] memoizes ownership for the call's lock window only.
 */
class ConceptSuggestions(
    private val repository: SRepository,
    private val membership: Membership,
    private val docOf: (SNode?) -> String,
    private val deprecationOf: (SNode?) -> String,
) {
    /** The ownership questions a scan asks; [AbstractOps.ProjectMembershipCache] answers them. */
    interface Membership {
        val currentProject: MPSProject?
        fun isFromAnotherOpenProject(concept: SAbstractConcept, repository: SRepository): Boolean
        fun isFromAnotherOpenProject(language: SLanguage, repository: SRepository): Boolean
        fun isInCurrentProject(language: SLanguage, repository: SRepository): Boolean
    }

    enum class Mode {
        /**
         * Name, alias, short description, doc and language tail are matched, and a ranked fallback
         * answers when nothing matches strictly.
         */
        DETAILS,

        /**
         * Name, alias and short description only, no fallback, and never a registry-wide token scan
         * for a qualified name: no declaration is resolved for a concept that does not match, and a
         * word inside some concept's prose (`Sum` in "assume") is not a candidate.
         */
        REJECTION
    }

    private val registry = LanguageRegistry.getInstance(repository)

    /**
     * Registered languages minus the ones owned by another open MPS project. The module
     * repository is shared across open projects, so an unfiltered candidate list can answer a
     * plain name with a same-named concept or language living in a sibling project — the caller
     * cannot edit it and following the hint silently leaves its own project. Library and stub
     * languages (owned by no open project) stay in the list.
     */
    fun languagesInProject(): List<SLanguage> {
        val languages = LinkedHashSet<SLanguage>()
        registry.allLanguages.filterTo(languages) { !membership.isFromAnotherOpenProject(it, repository) }
        // The project's own unbuilt languages have no registry entry; their concepts come from declarations (D112).
        membership.currentProject?.projectModules?.forEach { if (it is Language) languages.add(MetaAdapterByDeclaration.getLanguage(it)) }
        return languages.toList()
    }

    /**
     * The concepts a search sees for [lang], each with its declaration node: the built runtime's
     * concepts plus, for a Language module in the repository, the structure-model declarations the
     * runtime does not know yet — every concept when the language was never built (D112).
     */
    fun conceptsWithDeclarations(lang: SLanguage): List<Pair<SAbstractConcept, SNode?>> {
        val runtime = registry.getLanguage(lang)
        val module = projectLanguageModule(lang)
        if (runtime == null && module == null) return emptyList()
        val result = LinkedHashMap<SAbstractConcept, SNode?>()
        runtime?.concepts?.forEach { result[it] = it.sourceNode?.resolve(repository) }
        module?.structureModelDescriptor?.rootNodes?.forEach { root ->
            val concept = StructureDeclarations.conceptOf(root) ?: return@forEach
            if (concept !in result) result[concept] = root
        }
        return result.entries.map { it.key to it.value }
    }

    /** `name alias shortDescription doc`, read off the declaration when there is one so an unbuilt concept matches like a built one. */
    fun conceptMatchText(concept: SAbstractConcept, declaration: SNode?): String {
        val alias = declaration?.getProperty(StructureLanguageMeta.abstractConceptDeclarationAliasProperty) ?: concept.conceptAlias ?: ""
        val desc = declaration?.getProperty(StructureLanguageMeta.abstractConceptDeclarationShortDescriptionProperty) ?: concept.shortDescription ?: ""
        return "${concept.name} $alias $desc ${docOf(declaration)}"
    }

    /**
     * Up to [limit] candidates for the concept [ref] names, best first, each passing [accept].
     *
     * 1. Concepts whose simple name equals the ref's, ignoring case, in any language: an agent that
     *    names the wrong language (`lang.smodel…ThisNodeExpression` for `lang.behavior`'s) or the
     *    wrong case (`ForeachVariable`) has the name right.
     * 2. Concepts whose alias equals it, ignoring case: the editor shows the alias (`Int`).
     * 3. Subtoken matches inside the language a qualified ref names (`<lang>.structure.<Name>`). They
     *    fill what 1–2 left, and when 1–2 fill [limit] the last slot still goes to the best of them,
     *    so concepts of other languages sharing the name do not hide a near miss in the named one.
     *    Only when nothing matched so far does the scan widen to every language — in [Mode.DETAILS]
     *    always, in [Mode.REJECTION] only for a ref that names no language.
     */
    fun suggest(ref: String, limit: Int, mode: Mode, accept: (SAbstractConcept) -> Boolean = { true }): List<SAbstractConcept> {
        val simpleName = ref.substringAfterLast('.').trim()
        if (simpleName.isEmpty() || limit <= 0) return emptyList()
        val impliedName = ref.substringBeforeLast('.', "").takeIf { it.endsWith(".structure") }?.removeSuffix(".structure")
        val languages = languagesInProject()
        val implied = impliedName?.let { name -> languages.firstOrNull { it.qualifiedName == name } }
        val usable = { c: SAbstractConcept -> accept(c) && !membership.isFromAnotherOpenProject(c, repository) }

        val exact = exactMatches(simpleName, languages, impliedName).filter(usable)
        val exactSet = exact.toSet()
        val scoped = implied?.let { tokenMatches(simpleName, listOf(it), mode, limit) { c -> c !in exactSet && usable(c) } }
        val scopedStrict = scoped?.strict.orEmpty().asSequence()

        if (exact.isNotEmpty()) {
            val tokens = scopedStrict.take(limit).toList()
            return if (exact.size >= limit && tokens.isNotEmpty()) exact.take(limit - 1) + tokens.first()
            else exact.take(limit) + tokens.take(limit - exact.size.coerceAtMost(limit))
        }
        val scopedAll = (scopedStrict + scoped?.fallback.orEmpty().asSequence()).take(limit).toList()
        if (scopedAll.isNotEmpty()) return scopedAll
        if (mode == Mode.REJECTION && impliedName != null) return emptyList()
        val wide = tokenMatches(simpleName, languages, mode, limit, usable)
        return wide.strict.ifEmpty { wide.fallback }.take(limit)
    }

    private fun projectLanguageModule(lang: SLanguage): Language? =
        if (membership.isInCurrentProject(lang, repository)) repository.getModule(ModuleId.regular(MetaIdHelper.getLanguage(lang).idValue)) as? Language
        else null

    /** A concept's name, alias and short description, from the runtime unless only the declaration knows the concept. */
    private class NamedConcept(val concept: SAbstractConcept, val name: String, val alias: String, val shortDescription: String)

    /**
     * [lang]'s concepts as [NamedConcept]s without resolving a runtime concept's declaration: the
     * runtime answers name, alias and short description itself. The structure model is read only
     * for a language of this project, for the concepts its runtime lacks, and for a built language
     * only when the model is already loaded: a concept added since the build lives in a model
     * someone edited, and in a checkout where every language is the project's own (MPS itself)
     * loading them all would stall the command the rejection runs in.
     */
    private fun namedConcepts(lang: SLanguage): List<NamedConcept> {
        val result = LinkedHashMap<SAbstractConcept, NamedConcept>()
        val runtime = registry.getLanguage(lang)
        runtime?.concepts?.forEach {
            result[it] = NamedConcept(it, it.name ?: "", it.conceptAlias ?: "", it.shortDescription ?: "")
        }
        val structure = projectLanguageModule(lang)?.structureModelDescriptor?.takeIf { runtime == null || it.isLoaded }
        structure?.rootNodes?.forEach { root ->
            val concept = StructureDeclarations.conceptOf(root) ?: return@forEach
            if (concept in result) return@forEach
            result[concept] = NamedConcept(
                concept,
                concept.name ?: "",
                root.getProperty(StructureLanguageMeta.abstractConceptDeclarationAliasProperty) ?: "",
                root.getProperty(StructureLanguageMeta.abstractConceptDeclarationShortDescriptionProperty) ?: "",
            )
        }
        return result.values.toList()
    }

    /** Tiers 1 and 2 of [suggest], ordered; see there. */
    private fun exactMatches(simpleName: String, languages: List<SLanguage>, impliedName: String?): List<SAbstractConcept> {
        class Hit(val concept: SAbstractConcept, val byAlias: Boolean, val caseExact: Boolean, val language: SLanguage)
        val hits = ArrayList<Hit>()
        for (lang in languages) {
            for (named in namedConcepts(lang)) {
                when {
                    named.name.equals(simpleName, ignoreCase = true) ->
                        hits.add(Hit(named.concept, byAlias = false, caseExact = named.name == simpleName, language = lang))
                    named.alias.equals(simpleName, ignoreCase = true) ->
                        hits.add(Hit(named.concept, byAlias = true, caseExact = named.alias == simpleName, language = lang))
                }
            }
        }
        if (hits.isEmpty()) return emptyList()
        val impliedSegments = impliedName?.split('.').orEmpty()
        val deprecated = hits.associate { hit ->
            val declaration = hit.concept.sourceNode?.resolve(repository)
            hit.concept to (deprecationOf(declaration) != "false")
        }
        return hits.sortedWith(
            compareBy<Hit> { it.byAlias }
                .thenBy { !it.caseExact }
                .thenBy { it.language.qualifiedName != impliedName }
                .thenByDescending { sharedSegments(it.language.qualifiedName.split('.'), impliedSegments) }
                .thenBy { !membership.isInCurrentProject(it.language, repository) }
                .thenBy { deprecated[it.concept] == true }
                .thenBy { AbstractOps.structureQualifiedName(it.concept) }
        ).map { it.concept }.distinct()
    }

    private fun sharedSegments(a: List<String>, b: List<String>): Int {
        var n = 0
        while (n < a.size && n < b.size && a[n] == b[n]) n++
        return n
    }

    /** Strict matches ordered by name hits, then closeness of length, then name; [fallback] only in [Mode.DETAILS] and only when [strict] is empty. */
    private class TokenMatches(val strict: List<SAbstractConcept>, val fallback: List<SAbstractConcept>)

    /**
     * Subtoken matches of [simpleName] in [languages] (tier 3 of [suggest]).
     *
     * [Mode.DETAILS] keeps the haystack of [conceptMatchText] plus the language tail, so namespace
     * prefixes like `jetbrains.mps.lang` do not act as universal wildcards; when no concept matches
     * strictly it falls back to the [limit] best by a compound score that weights name hits over
     * doc/alias hits. Without that weighting, a concept whose documentation happens to mention
     * several query words (e.g. `ConstraintFunctionParameter_link` whose doc reads "the containment
     * link between the parent and the child") would out-score a concept whose NAME matches the
     * query — clearly wrong for a "did you mean" hint.
     *
     * [Mode.REJECTION] matches name, alias and short description only, and for three or more
     * subtokens also accepts a concept whose name has all but one of them: the constraints
     * language's `ConstraintsFunctionParameter_node` is the answer to `ConceptFunctionParameter_node`,
     * and nothing about it says `Concept`.
     */
    private fun tokenMatches(
        simpleName: String,
        languages: List<SLanguage>,
        mode: Mode,
        limit: Int,
        usable: (SAbstractConcept) -> Boolean
    ): TokenMatches {
        val subtokens = subtokensOf(simpleName)
        if (subtokens.isEmpty()) return TokenMatches(emptyList(), emptyList())
        val strict = ArrayList<Pair<SAbstractConcept, Int>>()
        val rankedHeap = PriorityQueue<Pair<SAbstractConcept, Int>>(limit, compareBy { it.second })
        for (lang in languages) {
            if (mode == Mode.REJECTION) {
                for (named in namedConcepts(lang)) {
                    val haystack = "${named.alias} ${named.shortDescription}"
                    val nameHits = subtokens.count { named.name.contains(it, ignoreCase = true) }
                    val allHit = subtokens.all { named.name.contains(it, ignoreCase = true) || haystack.contains(it, ignoreCase = true) }
                    if ((allHit || (subtokens.size >= 3 && nameHits >= subtokens.size - 1)) && usable(named.concept)) strict.add(named.concept to nameHits)
                }
                continue
            }
            val langSimpleName = lang.qualifiedName.substringAfterLast('.')
            for ((concept, declaration) in conceptsWithDeclarations(lang)) {
                if (!usable(concept)) continue
                val name = concept.name ?: ""
                val extraHaystack = conceptMatchText(concept, declaration).removePrefix(name)
                var nameHits = 0
                var extraHits = 0
                var totalHits = 0
                for (token in subtokens) {
                    val inName = name.contains(token, ignoreCase = true)
                    val inExtras = extraHaystack.contains(token, ignoreCase = true) ||
                        langSimpleName.contains(token, ignoreCase = true)
                    if (inName) nameHits++
                    if (inName || inExtras) {
                        totalHits++
                        if (!inName) extraHits++
                    }
                }
                if (totalHits == subtokens.size) {
                    strict.add(concept to nameHits)
                } else if (strict.isEmpty() && totalHits > 0) {
                    // Compound score: name hits dominate, doc/alias hits are a tiebreaker only.
                    // The 100-multiplier is a soft cap that the per-concept subtoken counts can't
                    // realistically saturate (search words rarely exceed ~10 subtokens), so
                    // (nameHits, extraHits) is effectively lexicographic.
                    val score = nameHits * 100 + extraHits
                    if (rankedHeap.size < limit) {
                        rankedHeap.offer(concept to score)
                    } else if (score > rankedHeap.peek().second) {
                        rankedHeap.poll()
                        rankedHeap.offer(concept to score)
                    }
                }
            }
        }
        if (strict.isNotEmpty()) {
            val ordered = strict.sortedWith(
                compareByDescending<Pair<SAbstractConcept, Int>> { it.second }
                    .thenBy { Math.abs((it.first.name ?: "").length - simpleName.length) }
                    .thenBy { AbstractOps.structureQualifiedName(it.first) }
            ).map { it.first }.distinct()
            return TokenMatches(ordered, emptyList())
        }
        return TokenMatches(emptyList(), rankedHeap.sortedByDescending { it.second }.map { it.first })
    }

    companion object {
        // Splits identifiers on non-alphanumerics, camelCase boundaries, and digit/letter
        // transitions. Used to turn a query word like "Node_GetPropertyOperation" into
        // ["Node","Get","Property","Operation"] and "PropertyAccess" into ["Property","Access"]
        // so that concepts whose names contain those parts (possibly across underscores or in a
        // different order) can still be matched.
        val TOKEN_BOUNDARY = Regex(
            "[^A-Za-z0-9]+|(?<=[a-z])(?=[A-Z])|(?<=[A-Z])(?=[A-Z][a-z])|(?<=[A-Za-z])(?=[0-9])|(?<=[0-9])(?=[A-Za-z])"
        )
        const val MIN_SUBTOKEN_LENGTH = 2

        // Single-character subtokens like "5" or "D" are substrings of almost any docstring and
        // would let unrelated concepts match — keep only subtokens of at least MIN_SUBTOKEN_LENGTH
        // characters. The whole-word fallback only kicks in when the word itself meets the
        // minimum length (e.g. "R2D2"); a too-short whole word like "x" returns an empty list,
        // which callers interpret as "this word can never match" so single-character queries do
        // not degenerate into universal wildcards.
        fun subtokensOf(word: String): List<String> {
            val parts = word.split(TOKEN_BOUNDARY).filter { it.length >= MIN_SUBTOKEN_LENGTH }
            if (parts.isNotEmpty()) return parts
            return if (word.length >= MIN_SUBTOKEN_LENGTH) listOf(word) else emptyList()
        }
    }
}
