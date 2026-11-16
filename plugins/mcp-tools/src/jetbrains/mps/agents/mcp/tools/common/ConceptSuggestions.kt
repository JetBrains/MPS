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
 * The candidate set is every language of the shared repository ([allLanguages]), whoever owns it:
 * ownership is provenance, never a discovery filter (D130, `docs/d130-plan.md`). Within one match
 * quality, a candidate's [Membership.originTier] ranks the current project's own languages first,
 * then the ones it uses, then the rest; callers mark another open project's candidates as foreign.
 *
 * One instance per tool call: [membership] memoizes ownership for the call's lock window only.
 */
class ConceptSuggestions(
    private val repository: SRepository,
    private val membership: Membership,
    private val docOf: (SNode?) -> String,
    private val deprecationOf: (SNode?) -> String,
) {
    /** The origin questions a scan asks; [AbstractOps.ProjectMembershipCache] answers them. */
    interface Membership {
        val currentProject: MPSProject?

        /**
         * [ORIGIN_DEFINED] when a module of [currentProject] defines [language], [ORIGIN_USED] when
         * the project uses it (see [AbstractOps.ProjectMembershipCache]), [ORIGIN_OTHER] otherwise —
         * including every language when there is no current project. Lower ranks first.
         */
        fun originTier(language: SLanguage): Int
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

    private val snapshot: List<SLanguage> by lazy {
        val languages = LinkedHashSet<SLanguage>()
        languages.addAll(registry.allLanguages)
        // Unbuilt languages have no registry entry; their concepts come from declarations (D112).
        // SLanguage equality is by id, so a built language module is not listed twice.
        for (module in repository.modules) {
            if (module is Language) languages.add(MetaAdapterByDeclaration.getLanguage(module))
        }
        languages.toList()
    }

    /**
     * Every language a free-form lookup may answer from: each `LanguageRegistry` language plus each
     * `Language` module in the shared repository, built or not, deduplicated by language id. That
     * covers libraries and every open project's modules — the set MPS's own language import dialog
     * offers. Nothing is dropped because another open project owns it (D130); computed once per instance.
     */
    fun allLanguages(): List<SLanguage> = snapshot

    /** [Membership.originTier] of [language]. */
    fun originTier(language: SLanguage): Int = membership.originTier(language)

    /** The `Language` module whose id is [lang]'s, wherever it is registered; null for a runtime-only language. */
    fun languageModule(lang: SLanguage): Language? =
        repository.getModule(ModuleId.regular(MetaIdHelper.getLanguage(lang).idValue)) as? Language

    /**
     * The concepts a search sees for [lang], each with its declaration node: the built runtime's
     * concepts plus, for a Language module in the repository (any project's or a library's), the
     * structure-model declarations the runtime does not know yet — every concept when the language
     * was never built (D112). Resolving each runtime concept's `sourceNode` loads the structure
     * model of a built language anyway, so reading its roots costs nothing extra.
     */
    fun conceptsWithDeclarations(lang: SLanguage): List<Pair<SAbstractConcept, SNode?>> {
        val runtime = registry.getLanguage(lang)
        val module = languageModule(lang)
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
     *
     * Local near miss: when the ref names no language and no hit of 1–2 comes from a language the
     * current project defines or uses, the best subtoken match among those languages takes the same
     * place as 3 — after the exact hits, or the last slot when they fill [limit]. Otherwise an exact
     * hit from another project's language would hide the project's own near miss, which the wide
     * scan used to find before such languages were candidates (D130). The extra scan reads names,
     * aliases and short descriptions only ([Mode.REJECTION] matching), so it loads no structure model
     * of a built language; only a never-built language's declarations are read, as in every scan.
     */
    fun suggest(ref: String, limit: Int, mode: Mode, accept: (SAbstractConcept) -> Boolean = { true }): List<SAbstractConcept> {
        val simpleName = ref.substringAfterLast('.').trim()
        if (simpleName.isEmpty() || limit <= 0) return emptyList()
        val impliedName = ref.substringBeforeLast('.', "").takeIf { it.endsWith(".structure") }?.removeSuffix(".structure")
        val languages = allLanguages()
        // Same-named languages with different ids are independent; the project's own one is meant first.
        val implied = impliedName?.let { name -> languages.filter { it.qualifiedName == name }.minByOrNull { originTier(it) } }

        val exactHits = exactMatches(simpleName, languages, impliedName).filter { accept(it.first) }
        val exact = exactHits.map { it.first }
        val exactSet = exact.toSet()
        val scoped = implied?.let { tokenMatches(simpleName, listOf(it), mode, limit) { c -> c !in exactSet && accept(c) } }
        val scopedStrict = scoped?.strict.orEmpty().asSequence()

        if (exact.isNotEmpty()) {
            val tokens = scoped?.besideExact.orEmpty().ifEmpty {
                if (implied != null || exactHits.any { it.second <= ORIGIN_USED }) emptyList()
                else localNearMiss(simpleName, languages, limit) { c -> c !in exactSet && accept(c) }
            }.take(limit)
            return if (exact.size >= limit && tokens.isNotEmpty()) exact.take(limit - 1) + tokens.first()
            else exact.take(limit) + tokens.take(limit - exact.size.coerceAtMost(limit))
        }
        val scopedAll = (scopedStrict + scoped?.fallback.orEmpty().asSequence()).take(limit).toList()
        if (scopedAll.isNotEmpty()) return scopedAll
        if (mode == Mode.REJECTION && impliedName != null) return emptyList()
        val wide = tokenMatches(simpleName, languages, mode, limit, accept)
        return wide.strict.ifEmpty { wide.fallback }.take(limit)
    }

    /** The best [Mode.REJECTION]-style subtoken match among the languages the project defines or uses, as a one-element list. */
    private fun localNearMiss(simpleName: String, languages: List<SLanguage>, limit: Int, usable: (SAbstractConcept) -> Boolean): List<SAbstractConcept> {
        val local = languages.filter { originTier(it) <= ORIGIN_USED }
        if (local.isEmpty()) return emptyList()
        return tokenMatches(simpleName, local, Mode.REJECTION, limit, usable).strict.take(1)
    }

    /** A concept's name, alias and short description, from the runtime unless only the declaration knows the concept. */
    private class NamedConcept(val concept: SAbstractConcept, val name: String, val alias: String, val shortDescription: String)

    /**
     * [lang]'s concepts as [NamedConcept]s without resolving a runtime concept's declaration: the
     * runtime answers name, alias and short description itself. The structure model of a language
     * module is read for the concepts its runtime lacks, and for a built language only when the
     * model is already loaded: a concept added since the build lives in a model someone edited, and
     * with MPS itself open as a project loading every structure model would stall the command the
     * rejection runs in.
     */
    private fun namedConcepts(lang: SLanguage): List<NamedConcept> {
        val result = LinkedHashMap<SAbstractConcept, NamedConcept>()
        val runtime = registry.getLanguage(lang)
        runtime?.concepts?.forEach {
            result[it] = NamedConcept(it, it.name ?: "", it.conceptAlias ?: "", it.shortDescription ?: "")
        }
        val structure = languageModule(lang)?.structureModelDescriptor?.takeIf { runtime == null || it.isLoaded }
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

    /** Tiers 1 and 2 of [suggest], ordered; see there. Each concept comes with its language's [originTier]. */
    private fun exactMatches(simpleName: String, languages: List<SLanguage>, impliedName: String?): List<Pair<SAbstractConcept, Int>> {
        class Hit(val concept: SAbstractConcept, val byAlias: Boolean, val caseExact: Boolean, val language: SLanguage) {
            val origin = originTier(language)
        }
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
                .thenBy { it.origin }
                .thenBy { deprecated[it.concept] == true }
                .thenBy { AbstractOps.structureQualifiedName(it.concept) }
        ).distinctBy { it.concept }.map { it.concept to it.origin }
    }

    private fun sharedSegments(a: List<String>, b: List<String>): Int {
        var n = 0
        while (n < a.size && n < b.size && a[n] == b[n]) n++
        return n
    }

    /**
     * [strict] matches ordered by name hits, then closeness of length, then name; [fallback] only in
     * [Mode.DETAILS] and only when [strict] is empty. [besideExact] is what may share the list with
     * exact-name hits: [strict] plus the [isNameNearMiss] names, in the same order.
     */
    private class TokenMatches(val strict: List<SAbstractConcept>, val fallback: List<SAbstractConcept>, val besideExact: List<SAbstractConcept>)

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
     * [Mode.REJECTION] matches name, alias and short description only, and counts a concept whose
     * name has all but one of three or more subtokens as a strict match ([isNameNearMiss]): the
     * constraints language's `ConstraintsFunctionParameter_node` is the answer to
     * `ConceptFunctionParameter_node`, and nothing about it says `Concept`.
     *
     * [Mode.DETAILS] offers such a near miss only beside exact-name hits ([TokenMatches.besideExact]).
     * Counting it as strict there would also switch the scored fallback off for every input whose
     * only matches are near misses, and outrank the concepts the fallback chose by doc hits; next to
     * exact hits nothing else competes for the slots but [strict].
     */
    private fun tokenMatches(
        simpleName: String,
        languages: List<SLanguage>,
        mode: Mode,
        limit: Int,
        usable: (SAbstractConcept) -> Boolean
    ): TokenMatches {
        val subtokens = subtokensOf(simpleName)
        if (subtokens.isEmpty()) return TokenMatches(emptyList(), emptyList(), emptyList())
        val strict = ArrayList<Scored>()
        val nearMisses = ArrayList<Scored>()
        // Min-heap whose head is the worst of the kept candidates: lowest score, then latest origin tier.
        val rankedHeap = PriorityQueue<Scored>(limit, compareBy<Scored> { it.score }.thenByDescending { it.origin })
        for (lang in languages) {
            val origin = originTier(lang)
            if (mode == Mode.REJECTION) {
                for (named in namedConcepts(lang)) {
                    val haystack = "${named.alias} ${named.shortDescription}"
                    val nameHits = subtokens.count { named.name.contains(it, ignoreCase = true) }
                    val allHit = subtokens.all { named.name.contains(it, ignoreCase = true) || haystack.contains(it, ignoreCase = true) }
                    if ((allHit || isNameNearMiss(subtokens.size, nameHits)) && usable(named.concept)) strict.add(Scored(named.concept, nameHits, origin))
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
                    strict.add(Scored(concept, nameHits, origin))
                } else if (isNameNearMiss(subtokens.size, nameHits)) {
                    nearMisses.add(Scored(concept, nameHits, origin))
                }
                if (totalHits < subtokens.size && strict.isEmpty() && totalHits > 0) {
                    // Compound score: name hits dominate, doc/alias hits are a tiebreaker only.
                    // The 100-multiplier is a soft cap that the per-concept subtoken counts can't
                    // realistically saturate (search words rarely exceed ~10 subtokens), so
                    // (nameHits, extraHits) is effectively lexicographic.
                    val candidate = Scored(concept, nameHits * 100 + extraHits, origin)
                    if (rankedHeap.size < limit) {
                        rankedHeap.offer(candidate)
                    } else if (rankedHeap.comparator().compare(candidate, rankedHeap.peek()) > 0) {
                        // Strictly better than the worst kept: a higher score, or the same score from an earlier origin tier.
                        rankedHeap.poll()
                        rankedHeap.offer(candidate)
                    }
                }
            }
        }
        val order = compareByDescending<Scored> { it.score }
            .thenBy { Math.abs((it.concept.name ?: "").length - simpleName.length) }
            .thenBy { it.origin }
            .thenBy { AbstractOps.structureQualifiedName(it.concept) }
        val ordered = strict.sortedWith(order).map { it.concept }.distinct()
        val besideExact = if (nearMisses.isEmpty()) ordered else (strict + nearMisses).sortedWith(order).map { it.concept }.distinct()
        if (ordered.isNotEmpty()) return TokenMatches(ordered, emptyList(), besideExact)
        val fallback = rankedHeap.sortedWith(compareByDescending<Scored> { it.score }.thenBy { it.origin }).map { it.concept }
        return TokenMatches(emptyList(), fallback, besideExact)
    }

    /** A token-tier candidate: its [score] (name hits, or the compound fallback score) and its language's [origin] tier. */
    private class Scored(val concept: SAbstractConcept, val score: Int, val origin: Int)

    /**
     * A name that has all but one of [subtokenCount] subtokens, three or more: one wrong word in a
     * long name (`Concept` for `Constraints`) is a near miss, while one of two is just a shared word.
     */
    private fun isNameNearMiss(subtokenCount: Int, nameHits: Int): Boolean = subtokenCount >= 3 && nameHits >= subtokenCount - 1

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

        /** [Membership.originTier]: a language a module of the current project defines. */
        const val ORIGIN_DEFINED = 1

        /** [Membership.originTier]: a language the current project uses without defining it (a library's or another open project's). */
        const val ORIGIN_USED = 2

        /** [Membership.originTier]: every other language. */
        const val ORIGIN_OTHER = 3

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
