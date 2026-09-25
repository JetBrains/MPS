package jetbrains.mps.agents.mcp.tools

import jetbrains.mps.agents.mcp.tools.common.*
import jetbrains.mps.agents.mcp.tools.logging.McpCallOutcomes

import com.google.gson.JsonArray
import com.google.gson.JsonObject
import com.intellij.mcpserver.annotations.McpDescription
import com.intellij.mcpserver.annotations.McpTool
import jetbrains.mps.project.AbstractModule
import jetbrains.mps.project.DevKit
import jetbrains.mps.project.MPSProject
import jetbrains.mps.smodel.language.LanguageRegistry
import jetbrains.mps.smodel.adapter.MetaAdapterByDeclaration
import org.jetbrains.mps.openapi.language.SAbstractConcept
import jetbrains.mps.smodel.adapter.structure.types.SPrimitiveTypes
import org.jetbrains.mps.openapi.language.SEnumeration
import org.jetbrains.mps.openapi.language.SInterfaceConcept
import org.jetbrains.mps.openapi.language.SNamedElement
import org.jetbrains.mps.openapi.language.SLanguage
import org.jetbrains.mps.openapi.module.SRepository
import org.jetbrains.mps.openapi.persistence.PersistenceFacade
import jetbrains.mps.smodel.Language
import jetbrains.mps.smodel.ModelDependencyResolver
import org.jetbrains.mps.openapi.language.SAbstractLink
import org.jetbrains.mps.openapi.language.SDataType
import org.jetbrains.mps.openapi.language.SContainmentLink
import org.jetbrains.mps.openapi.language.SReferenceLink
import jetbrains.mps.smodel.adapter.ids.MetaIdHelper
import org.jetbrains.mps.openapi.model.SNode
import org.jetbrains.mps.openapi.model.SNodeReference
import java.util.PriorityQueue

// MCP tool methods use snake_case names because they are part of the public MCP protocol
// surface, and they are invoked via reflection by the MCP server framework, so static
// analysis flags them as "never used".
@Suppress("FunctionName", "unused")
class JetBrainsMPSLanguageMcpToolset : AbstractOps() {

    companion object {
        private val WHITESPACE = Regex("\\s+")
        // Splits identifiers on non-alphanumerics, camelCase boundaries, and digit/letter
        // transitions. Used to turn a query word like "Node_GetPropertyOperation" into
        // ["Node","Get","Property","Operation"] and "PropertyAccess" into ["Property","Access"]
        // so that concepts whose names contain those parts (possibly across underscores or in a
        // different order) can still be matched.
        private val TOKEN_BOUNDARY = Regex(
            "[^A-Za-z0-9]+|(?<=[a-z])(?=[A-Z])|(?<=[A-Z])(?=[A-Z][a-z])|(?<=[A-Za-z])(?=[0-9])|(?<=[0-9])(?=[A-Za-z])"
        )
        private const val MIN_SUBTOKEN_LENGTH = 2
        const val MAX_FALLBACK_RESULTS = 20

        // Cap on "did you mean" hints emitted per unresolved input by mps_mcp_get_concept_details.
        // Kept smaller than MAX_FALLBACK_RESULTS: the hint is a nudge to the agent, not a discovery
        // list, and surfacing 20 candidates per typo would dominate the response.
        const val MAX_SUGGESTIONS_PER_UNRESOLVED = 5

        // `detail` literals of mps_mcp_get_concept_details. "shape" is the structural projection
        // agents otherwise re-implement in throwaway scripts on top of the "full" record.
        const val DETAIL_FULL = "full"
        const val DETAIL_SHAPE = "shape"

        // `detail` literals of mps_mcp_search_concepts. "summary" is the default: search is a
        // discovery step whose answer is a name to feed to get_concept_details, and the `doc`
        // field of the full record is what turned a four-term query into 183 KB (study defect
        // D38).
        const val SEARCH_DETAIL_SUMMARY = "summary"
        const val SEARCH_DETAIL_FULL = "full"

        // `scope` literals of mps_mcp_search_concepts.
        const val SEARCH_SCOPE_PROJECT = "project"
        const val SEARCH_SCOPE_ALL = "all"

        // Cap on strictly matching concepts returned by mps_mcp_search_concepts. Strict matches
        // used to be unbounded (only the fallback heap was capped), so a common single-word query
        // could serialize a large part of the registry. The overflow is reported through the
        // envelope's `details`/`warnings` rather than by changing `data` from an array.
        const val MAX_STRICT_RESULTS = 50

        // Copy-pasteable retry lines (study remedy M5b). Both observed incidents showed the agent
        // fetching the tool schema even though the rejection already named the right key, so the
        // message ends with the literal edit to make rather than only the key's name.
        private val CONCEPT_REFS_NEAR_MISSES = RequiredParameterNearMisses.of("mps_mcp_get_concept_details", "conceptRefs")
        private val LANGUAGE_REFS_NEAR_MISSES = RequiredParameterNearMisses.of("mps_mcp_get_concept_details", "languageRefs")
        val RETRY_WITH_CONCEPT_REFS =
            "Retry with conceptRefs set to the value you passed as ${CONCEPT_REFS_NEAR_MISSES.joinToString("/")} " +
                    "(or languageRefs for ${LANGUAGE_REFS_NEAR_MISSES.joinToString("/")})."
        const val RETRY_WITH_SEARCH_TEXTS =
            "Retry with searchTexts set to the value you passed as query/q/text."

        // Study D35/P10: languageRefs enumerates LanguageRegistry, so an unbuilt project
        // language looks like a miss. Directing the caller to search_concepts then dumps
        // the whole deployed-runtime haystack. Name MAKE / conceptRefs instead.
        const val SEARCH_CONCEPTS_HINT =
            "See details.unresolved for suggestions, or use mps_mcp_search_concepts."

        // Single-character subtokens like "5" or "D" are substrings of almost any docstring and
        // would let unrelated concepts match — keep only subtokens of at least MIN_SUBTOKEN_LENGTH
        // characters. The whole-word fallback only kicks in when the word itself meets the
        // minimum length (e.g. "R2D2"); a too-short whole word like "x" returns an empty list,
        // which callers interpret as "this word can never match" so single-character queries do
        // not degenerate into universal wildcards.
        private fun subtokensOf(word: String): List<String> {
            val parts = word.split(TOKEN_BOUNDARY).filter { it.length >= MIN_SUBTOKEN_LENGTH }
            if (parts.isNotEmpty()) return parts
            return if (word.length >= MIN_SUBTOKEN_LENGTH) listOf(word) else emptyList()
        }
    }

    @McpTool
    @McpDescription(
        """
        Returns detailed info for the listed concepts and/or for every concept of the listed languages. `data` is inline when the serialized result is <= `maxInlineBytes` (default 20000), otherwise a temp-file path. `detail = "shape"` returns only the structural projection of each concept (`qualifiedName`, `conceptReference`, `isAbstract`, `isRootable`, plus `properties`/`references`/`children` with type, enum literals, target concept and cardinality) — no docs, no `sampleNode`, no aspect details; `detail = "full"` (default) returns everything described below. `cardinality` is identical at both levels — never escalate to `"full"` for it; a `references` entry always reads `0..1` or `1` (MPS references are single-valued). To learn the shapes of the concepts a concept's child/reference roles target, pass `languageRefs`: one call returns every concept of the language, which is cheaper than a refinement call per target. Each entry in `properties`, `references`, and `children` carries `featureId` (the encoded `<langUUID>/<conceptId>/<featureId>` triple a `PROPERTY`/`REF` macro stores as `propertyId`/`linkId`; not a node ref, so never a blueprint reference `target`) and `sourceNode` (the feature declaration's persistent ref, e.g. `r:...(...structure)/<id>` — the `target` of smodel `SPropertyAccess.property` / `SLinkAccess.link` / `SLinkListAccess.link`; an inherited feature's ref is in the declaring concept's model; `applicableConcept` takes the concept's own `sourceNode`, not a feature's) — so the ids no longer need harvesting via deep `print_node` calls. Unresolved refs are surfaced in `warnings` (partial success) or in an error envelope with `details.unresolved` suggestions (everything failed); use `mps_mcp_search_concepts` for free-form lookup of unknown names. `languageRefs` enumerates the deployed runtime: if the language module exists in the project but has not been made, that is not a search miss — run `mps_mcp_alter_nodes MAKE` (`rebuild=true`) on the language module, or pass fully qualified concept names in `conceptRefs` (those resolve via the structure model). The `qualifiedName` field is the unambiguous form to use as `concept` in JSON blueprints. If a concept was just created via `CREATE_CONCEPTS` and the response carried `makeStatus: "runtime_stale"`, the runtime descriptor returned here may be hollow (empty properties/references/children, `isAbstract: true`); each affected entry is marked with `descriptorStatus: "hollow"` and a `descriptorRecoveryAction` string — `mps_mcp_reload_all` alone is not sufficient, a clean rebuild via `mps_mcp_alter_nodes` MAKE with `rebuild = true` targeting the language module (not just the structure model) is required. See `mps-language-analysis/references/concept-details.md` for the result schema and the unresolved-ref policy. For details on the canonical structure-to-aspect editing and compilation prerequisite chain, see the Critical Directives in the `mps-mcp-workflow` skill.
    """
    )
    suspend fun mps_mcp_get_concept_details(
        @McpDescription("A persistent reference (SAbstractConcept) or fully qualified name of a concept/interface concept, or a JSON array of them (a real array or the array written as a string).") conceptRefs: JsonOrText = JsonOrText.EMPTY,
        @McpDescription("A persistent reference (SLanguage) or qualified language name, or a JSON array of them (a real array or the array written as a string). All concepts and interface concepts of these languages will be returned.") languageRefs: JsonOrText = JsonOrText.EMPTY,
        @McpDescription("Detail level: \"full\" (default) for the complete records, or \"shape\" for the structural projection only (no docs, no sampleNode).") detail: String = "full",
        @McpDescription("Inline the result in `data` when it is at most this many characters; larger results are saved to a temp file whose path is returned instead (default 20000).") maxInlineBytes: Int = DEFAULT_MAX_INLINE_BYTES
    ): String = mps_mcp_get_concept_details(
        parseStringOrJsonArray(conceptRefs),
        parseStringOrJsonArray(languageRefs),
        detail,
        maxInlineBytes,
    )

    /**
     * Internal list-typed entry point for [mps_mcp_get_concept_details]. Deliberately *not*
     * annotated with `@McpTool`: the String-typed overload above accepts either a single value
     * or a JSON array without requiring the MCP bridge to decode a scalar as a list. Retained as
     * a direct entry point for in-process callers and tests.
     */
    suspend fun mps_mcp_get_concept_details(
        conceptRefs: List<String>,
        languageRefs: List<String> = emptyList(),
        detail: String = DETAIL_FULL,
        maxInlineBytes: Int = DEFAULT_MAX_INLINE_BYTES
    ): String {
        if (conceptRefs.isEmpty() && languageRefs.isEmpty()) {
            // Study D27: the singular 'conceptRef' is the *canonical* key inside the parameters
            // blob of the blob-taking tools (PARAM_CONCEPT_REF), so guessing it here is natural.
            // The round-3 wording named only the '-erence' spellings and so never echoed the key
            // the caller had actually sent. The spellings now come from RequiredParameterNearMisses,
            // which D56 widened with the blueprint-style 'concept'/'conceptName'/'conceptNames'.
            // Recorded because this returns before withMpsProject, the only other call site
            // that reports the envelope to the call log (see McpCallOutcomes) — D27's entire
            // rejection path runs through here, so leaving it unrecorded would log every one of
            // these as ok:true and make the study's own server_errors column understate it.
            return McpCallOutcomes.record(
                errJson(
                    "No concepts nor languages have been provided. This tool takes the plural " +
                            "'conceptRefs' and/or 'languageRefs' (a single value or a JSON array of them). " +
                            "The near-misses " +
                            (CONCEPT_REFS_NEAR_MISSES + LANGUAGE_REFS_NEAR_MISSES).joinToString("/") { "'$it'" } +
                            " are not recognised here; 'conceptRef' is the canonical " +
                            "key inside the parameters blob of the blob-taking tools, which is what makes " +
                            "it a natural guess. " + RETRY_WITH_CONCEPT_REFS,
                    McpErrorCode.INVALID_REQUEST,
                )
            )
        }
        val shapeOnly = when (detail.trim().lowercase()) {
            DETAIL_FULL -> false
            DETAIL_SHAPE -> true
            // Recorded for the same reason as the empty-input rejection above: it returns before
            // withMpsProject, so an unrecorded envelope would reach the call log as ok:true.
            else -> return McpCallOutcomes.record(
                errJson(
                    "Invalid detail '$detail'. Allowed values: $DETAIL_FULL, $DETAIL_SHAPE",
                    McpErrorCode.INVALID_REQUEST,
                )
            )
        }
        return withMpsProject("Getting MPS language concept details") { mpsProject ->
            executeShortReadOnEdt(mpsProject) {
                val repo = mpsProject.repository
                val registry = LanguageRegistry.getInstance(repo)
                val results = JsonArray()
                val conceptSet = mutableSetOf<SAbstractConcept>()
                // LinkedHashSet so the warning order matches input order, but duplicate refs
                // (copy-paste, scripted retries) collapse into a single warning + suggestion entry
                // instead of repeating the same payload several times in the response.
                val unresolvedConceptRefs = LinkedHashSet<String>()
                val unresolvedLanguageRefs = LinkedHashSet<String>()
                // languageRef -> project language module name, when the module exists but
                // LanguageRegistry has no runtime (never made / not deployed).
                val undeployedLanguageModules = LinkedHashMap<String, String>()

                // Add explicitly provided concepts
                for (conceptRef in conceptRefs) {
                    val concept = resolveConceptPreferringProject(mpsProject, conceptRef)
                    if (concept != null) {
                        conceptSet.add(concept)
                    } else {
                        unresolvedConceptRefs.add(conceptRef)
                    }
                }

                // Add concepts from provided languages
                for (languageRef in languageRefs) {
                    val lang = resolveLanguagePreferringProject(mpsProject, languageRef)
                    val runtime = lang?.let { registry.getLanguage(it) }
                    if (runtime == null) {
                        // Treat both "language reference does not resolve" and "language is not
                        // registered at runtime" as unresolved so the caller gets a hint instead of
                        // silently missing concepts. Distinguish an unbuilt *project* language
                        // (D35) from a genuine unknown name: the former must not send the caller
                        // to mps_mcp_search_concepts.
                        unresolvedLanguageRefs.add(languageRef)
                        findProjectLanguageModule(mpsProject, languageRef, lang)?.moduleName?.let {
                            undeployedLanguageModules[languageRef] = it
                        }
                        continue
                    }
                    for (c in runtime.concepts) {
                        if (c.sourceNode == null) {
                            // Diagnostics/Robustness — try to find the source node if missing in
                            // the runtime concept (newly created or partially indexed concepts).
                            val node = resolveConceptNode(repo, PersistenceFacade.getInstance().asString(c))
                            if (node != null) {
                                conceptSet.add(MetaAdapterByDeclaration.getConcept(node))
                                continue
                            }
                        }
                        conceptSet.add(c)
                    }
                }

                val cache = ProjectMembershipCache(mpsProject)
                for (concept in conceptSet) {
                    results.add(conceptDetailsJsonObject(concept, repo, mpsProject, cache, shapeOnly))
                }

                val payload = results.toString()

                val anyUnresolved = unresolvedConceptRefs.isNotEmpty() || unresolvedLanguageRefs.isNotEmpty()
                if (!anyUnresolved) {
                    return@executeShortReadOnEdt finalizeResult(payload, maxInlineBytes)
                }

                val nonConcepts = nonConceptDeclarationsFor(mpsProject, unresolvedConceptRefs)
                val unresolvedJson = buildUnresolvedDetailsJson(
                    unresolvedConceptRefs, unresolvedLanguageRefs, nonConcepts,
                    undeployedLanguageModules, registry, repo, cache,
                )

                if (conceptSet.isEmpty()) {
                    // All inputs failed — fail loudly with suggestions, mirroring the
                    // search-concepts policy of refusing to silently drop unmatched input.
                    val message = buildString {
                        append("None of the provided refs resolved")
                        if (unresolvedConceptRefs.isNotEmpty()) {
                            append("; conceptRefs: ")
                            append(unresolvedConceptRefs.joinToString(", "))
                        }
                        if (unresolvedLanguageRefs.isNotEmpty()) {
                            append("; languageRefs: ")
                            append(unresolvedLanguageRefs.joinToString(", "))
                        }
                        for (ref in unresolvedLanguageRefs) {
                            val name = undeployedLanguageModules[ref] ?: continue
                            append(". ").append(undeployedLanguageDiagnostic(ref, name))
                        }
                        for (ref in unresolvedConceptRefs) {
                            nonConcepts[ref]?.let { append(" ").append(it.route) }
                        }
                        val unknownLanguages = unresolvedLanguageRefs.any { it !in undeployedLanguageModules }
                        val unknownConcepts = unresolvedConceptRefs.any { it !in nonConcepts }
                        if (unknownLanguages || unknownConcepts) {
                            append(". ").append(SEARCH_CONCEPTS_HINT)
                        }
                    }
                    return@executeShortReadOnEdt errJson(
                        message,
                        McpErrorCode.NOT_FOUND,
                        details = mapOf("unresolved" to unresolvedJson),
                    )
                }

                // Partial success — return resolved data plus warnings and suggestions.
                buildPartialSuccessResult(
                    payload,
                    unresolvedConceptRefs,
                    unresolvedLanguageRefs,
                    nonConcepts,
                    undeployedLanguageModules,
                    unresolvedJson,
                    maxInlineBytes,
                )
            }
        }
    }

    @McpTool
    @McpDescription(
        """
        Searches for concepts and interface concepts by free-form text. Multi-word search strings are AND-combined; multiple search strings are OR-combined. Each word is split on camelCase / underscore / digit boundaries; subtokens shorter than 2 characters are rejected with an explicit error naming the offending words. By default the search covers the languages this project owns plus the ones its modules use (`scope="project"`); pass `scope="all"` for the whole language registry. A project-scoped search with no strict match is retried over the whole registry automatically and says so in `warnings`. Pass `modelReference` to restrict further to the languages used by one model — it is the narrowest scope and cannot be combined with any explicit `scope`. Records are the compact projection by default (`detail="summary"`: no `doc`, no `sourceNode`, no super-concept details); pass `detail="full"` for the same records `mps_mcp_get_concept_details` returns. At most 50 strictly matching concepts come back; when more matched, `details.totalStrictMatches` and a warning say so. `data` is inline when the serialized result is <= `maxInlineBytes` (default 20000), otherwise a temp-file path. The `qualifiedName` field is the unambiguous form to use as `concept` in JSON blueprints. See `mps-language-analysis/references/search-concepts.md` for the matching algorithm, scoping, fallback ranking, result schema, and `modelReference` error strings.
    """
    )
    suspend fun mps_mcp_search_concepts(
        @McpDescription("The text(s) to search for. Either a single search string or a JSON array: [\"Term1\", \"Term2\"] (a real array or the array written as a string). Multiple words within a string are AND-combined (all required); multiple strings are OR-combined.") searchTexts: JsonOrText = JsonOrText.EMPTY,
        @McpDescription("Optional model reference (preferred) or model name to limit search to languages used by this model") modelReference: String? = null,
        @McpDescription("Per-record projection: \"summary\" (default) for the compact record, or \"full\" for the same record mps_mcp_get_concept_details returns (adds doc, sourceNode, virtualFolder, superConcept and superInterfaces).") detail: String = SEARCH_DETAIL_SUMMARY,
        @McpDescription("Language scope, defaulting to \"project\": the languages this project owns plus the ones its modules use. \"all\" searches the whole language registry. Cannot be combined with modelReference, which is narrower still.") scope: String? = null,
        @McpDescription("Inline the result in `data` when it is at most this many characters; larger results are saved to a temp file whose path is returned instead (default 20000).") maxInlineBytes: Int = DEFAULT_MAX_INLINE_BYTES
    ): String {
        val terms = parseStringOrJsonArray(searchTexts)
        if (terms.all { it.isBlank() }) {
            return errJson(
                "searchTexts is required: provide a single search string or a JSON array of strings. " +
                        RETRY_WITH_SEARCH_TEXTS,
                McpErrorCode.INVALID_REQUEST,
            )
        }
        return mps_mcp_search_concepts(terms, modelReference, detail, scope, maxInlineBytes)
    }

    /**
     * Internal list-typed entry point for [mps_mcp_search_concepts]. Deliberately *not* annotated
     * with `@McpTool`: the String-typed overload above is the registered tool, so a client may pass
     * either a single search string or a JSON array, and an omitted `searchTexts` is reported as a
     * classified INVALID_REQUEST error instead of crashing the MCP framework's required-parameter
     * decode (see [parseStringOrJsonArray]). Retained as a direct entry point for in-process callers
     * and tests.
     */
    suspend fun mps_mcp_search_concepts(
        searchTexts: List<String>,
        modelReference: String? = null,
        detail: String = SEARCH_DETAIL_SUMMARY,
        scope: String? = null,
        maxInlineBytes: Int = DEFAULT_MAX_INLINE_BYTES
    ): String {
        // These three rejections return before withMpsProject, the only other call site that
        // reports the envelope to the call log (see McpCallOutcomes), so they record themselves.
        val summaryOnly = when (detail.trim().lowercase()) {
            SEARCH_DETAIL_SUMMARY -> true
            SEARCH_DETAIL_FULL -> false
            else -> return McpCallOutcomes.record(
                errJson(
                    "Invalid detail '$detail'. Allowed values: $SEARCH_DETAIL_SUMMARY, $SEARCH_DETAIL_FULL",
                    McpErrorCode.INVALID_REQUEST,
                )
            )
        }
        val requestedScope = scope?.trim()?.lowercase()
        if (requestedScope != null && requestedScope != SEARCH_SCOPE_PROJECT && requestedScope != SEARCH_SCOPE_ALL) {
            return McpCallOutcomes.record(
                errJson(
                    "Invalid scope '$scope'. Allowed values: $SEARCH_SCOPE_PROJECT, $SEARCH_SCOPE_ALL",
                    McpErrorCode.INVALID_REQUEST,
                )
            )
        }
        // Any explicit scope alongside modelReference is rejected, not just the widening one:
        // honouring one and dropping the other silently is the D14b failure mode, and the caller
        // cannot tell which of the two it got. `scope` is nullable precisely so "the caller said
        // project" is distinguishable from "the caller said nothing".
        if (modelReference != null && requestedScope != null) {
            return McpCallOutcomes.record(
                errJson(
                    "Parameters 'scope' and 'modelReference' cannot be used together: modelReference " +
                            "is already the narrowest scope (the languages used by that one model). Retry " +
                            "with modelReference alone for the model's languages, or with scope='$requestedScope' " +
                            "alone to search the project's languages or the whole registry.",
                    McpErrorCode.INVALID_REQUEST,
                )
            )
        }
        return runConceptSearch(
            searchTexts, modelReference, summaryOnly, requestedScope ?: SEARCH_SCOPE_PROJECT, maxInlineBytes
        )
    }

    /**
     * The validated search. Named apart from the two `mps_mcp_search_concepts` overloads on
     * purpose: it would otherwise differ from the public `List<String>` one only by a positional
     * `Boolean` where that one takes a `String`, and a future parameter could silently re-dispatch
     * between them.
     */
    private suspend fun runConceptSearch(
        searchTexts: List<String>,
        modelReference: String?,
        summaryOnly: Boolean,
        requestedScope: String,
        maxInlineBytes: Int
    ): String = withMpsProject("Searching for MPS concepts") { mpsProject ->
        executeShortReadOnEdt(mpsProject) {
            val repo = mpsProject.repository
            val registry = LanguageRegistry.getInstance(repo)
            val cache = ProjectMembershipCache(mpsProject)
            // An explicit `modelReference` is the narrowest scope and is honoured as given; the
            // two `scope` values differ only in how much of the shared repository they admit.
            // Both drop languages owned by another open project, so a free-form query cannot
            // answer with a same-named concept from a sibling project (study defect D4).
            val languages: Iterable<SLanguage> = if (modelReference != null) {
                val model = resolveModelPreferringProject(mpsProject, modelReference)
                    ?: return@executeShortReadOnEdt errJson("Model not found: $modelReference")
                val mdr = ModelDependencyResolver(registry, repo)
                mdr.usedLanguages(model)
            } else if (requestedScope == SEARCH_SCOPE_PROJECT) {
                languagesInProjectScope(mpsProject, registry, repo, cache)
            } else {
                languagesInProject(registry, repo, cache)
            }

            val termGroups: List<List<String>> = searchTexts
                .map { it.split(WHITESPACE).filter { term -> term.isNotBlank() } }
                .filter { it.isNotEmpty() }
            if (termGroups.isEmpty()) return@executeShortReadOnEdt finalizeResult("[]")

            // Precompute the subtokens for each word in each group once, since they do not
            // depend on the concept. subtokensOf returns an empty list for words that are too
            // short to be meaningful (e.g. single characters); a word like that cannot match
            // anything, so we refuse the whole call rather than silently dropping it from the
            // query. Failing loudly catches the easy "typo" case (mixing a real concept name
            // with a stray short token) instead of returning unrelated fallback results that
            // look like the typo found something.
            val groupSubtokens: List<List<List<String>>> = termGroups.map { group ->
                group.map { subtokensOf(it) }
            }
            val unmatchableWords = mutableListOf<String>()
            for ((groupIdx, group) in termGroups.withIndex()) {
                for ((wordIdx, word) in group.withIndex()) {
                    if (groupSubtokens[groupIdx][wordIdx].isEmpty()) unmatchableWords.add(word)
                }
            }
            if (unmatchableWords.isNotEmpty()) {
                val offenders = unmatchableWords.distinct().joinToString(", ") { "'$it'" }
                return@executeShortReadOnEdt errJson(
                    "Search words must have at least $MIN_SUBTOKEN_LENGTH characters; the following are too short and would never match: $offenders. Remove or extend them and retry."
                )
            }

            // Original query words, used to float an exact name match above the cap.
            val queryWords = termGroups.flatten().toSet()
            var matches = matchConcepts(languages, registry, repo, groupSubtokens, queryWords)
            val warnings = mutableListOf<String>()
            // A project-scoped miss must not become a dead end: the caller asked a question the
            // narrow scope cannot answer, and telling it to retry costs a turn (study defect D35
            // is exactly that shape). Widen once, and say so. Only the project scope can widen —
            // `all` is already the widest, and `modelReference` is a scope the caller chose
            // deliberately, so neither is second-guessed.
            //
            // The trigger is "no strict match", not "nothing at all": a narrow pass that fell
            // back to weak partial matches has, by the matcher's own definition, found nothing
            // that really matches, and would otherwise hide an exact hit sitting one scope out.
            if (!matches.strictFound && modelReference == null && requestedScope == SEARCH_SCOPE_PROJECT) {
                // In a monolithic project — this MPS checkout above all — the project scope is
                // very nearly the whole registry, and rescanning it would double the cost of
                // every miss. matchConcepts resolves and reads the doc of every concept it sees,
                // so the set comparison is free next to the scan it avoids.
                val allLanguages = languagesInProject(registry, repo, cache)
                val widened = if (allLanguages.toSet() == languages.toSet()) matches
                else matchConcepts(allLanguages, registry, repo, groupSubtokens, queryWords)
                // Keep the widened answer only when it is actually better: a strict hit, or
                // anything at all where the narrow pass had nothing. Registry-wide *fallback*
                // candidates are less relevant than the project's own, so they do not displace them.
                if (widened !== matches && (widened.strictFound || (matches.isEmpty() && !widened.isEmpty()))) {
                    matches = widened
                    warnings.add(
                        "No concept matched inside this project's languages; the search was widened to " +
                                "the whole language registry. The matches below may belong to languages this " +
                                "project does not use. Pass scope='$SEARCH_SCOPE_ALL' to skip the narrow pass."
                    )
                }
            }

            val details = mutableMapOf<String, Any?>()
            if (matches.strictTruncated) {
                details["totalStrictMatches"] = matches.strictTotal
                details["truncated"] = true
                warnings.add(
                    "${matches.strictTotal} concepts matched; the first $MAX_STRICT_RESULTS are returned. " +
                            "Narrow the query with more words, or pass modelReference to search only one model's languages."
                )
            }

            val results = JsonArray()
            for (concept in matches.concepts) {
                results.add(searchResultJsonObject(concept, repo, mpsProject, cache, summaryOnly))
            }
            finalizeResult(results.toString(), maxInlineBytes, details, warnings)
        }
    }

    /**
     * Concepts matching one parsed query, in the order the registry was scanned.
     *
     * [strictTotal] counts every strict match, including the ones past [MAX_STRICT_RESULTS] that
     * [concepts] does not carry, so the caller can say how much it is not showing. Fallback
     * candidates are never truncated — the heap already bounds them at [MAX_FALLBACK_RESULTS].
     * [strictFound] distinguishes "these are real matches" from "these are ranked near-misses",
     * which is what decides whether a narrow scope is worth widening.
     */
    private class ConceptMatches(
        val concepts: List<SAbstractConcept>,
        val strictTotal: Int,
        val strictFound: Boolean
    ) {
        val strictTruncated: Boolean get() = strictTotal > concepts.size
        fun isEmpty(): Boolean = concepts.isEmpty()
    }

    /**
     * Scans [languages] for concepts matching [groupSubtokens] (OR over groups, AND within a
     * group). Extracted from the tool body so the project-scoped pass and the widened pass run
     * exactly the same matcher.
     */
    private fun matchConcepts(
        languages: Iterable<SLanguage>,
        registry: LanguageRegistry,
        repo: SRepository,
        groupSubtokens: List<List<List<String>>>,
        queryWords: Set<String>
    ): ConceptMatches {
        // Two tiers so the cap cannot drop the concept the caller actually named. Scan order is
        // arbitrary relative to relevance, so a plain "first 50" could answer a query for
        // `Statement` with fifty unrelated `*Statement*` concepts and not `Statement` itself —
        // and the "narrow the query" advice is useless when the name already is the query.
        val exactNameMatches = mutableListOf<SAbstractConcept>()
        val otherMatches = mutableListOf<SAbstractConcept>()
        var strictTotal = 0
        // Bounded top-K min-heap on (concept, score): the heap head is always the lowest
        // score among the K best so far. We replace the head whenever a strictly larger
        // score arrives, so the heap never grows beyond MAX_FALLBACK_RESULTS even if the
        // query scores most of the registry (e.g. a single common subtoken like "type").
        val rankedHeap = PriorityQueue<Pair<SAbstractConcept, Int>>(MAX_FALLBACK_RESULTS, compareBy { it.second })
        // Tracked once instead of repeatedly probing strictMatches.size(): once any concept
        // matches strictly, the fallback path is irrelevant for the rest of the scan.
        var strictFound = false

        for (lang in languages) {
            val runtime = registry.getLanguage(lang) ?: continue
            // Use only the trailing segment of the qualified name so that natural queries
            // like "<concept> <language fragment>" work (e.g. "collections", "smodel") without
            // letting common prefixes ("jetbrains", "mps", "lang", "baseLanguage") act as
            // near-universal wildcards that would expand the match set across the whole
            // language registry.
            val langSimpleName = lang.qualifiedName.substringAfterLast('.')
            for (concept in runtime.concepts) {
                val doc = getDoc(concept.sourceNode?.resolve(repo))
                // The language-name fragment is kept out of this string so it does not have
                // to be concatenated for every concept (a language has up to hundreds);
                // subtoken matching checks it separately below.
                val alias = concept.conceptAlias ?: ""
                val desc = concept.shortDescription ?: ""
                val perConceptInfo = "${concept.name} $alias $desc $doc"

                var anyGroupAllMatch = false
                var bestGroupScore = 0
                for (group in groupSubtokens) {
                    var groupScore = 0
                    var groupAllMatch = true
                    for (subtokens in group) {
                        // An empty subtoken list comes from a too-short query word and must
                        // never match — otherwise `all { }` would be vacuously true and the
                        // word would behave as a wildcard.
                        val wordMatches = subtokens.isNotEmpty() && subtokens.all {
                            perConceptInfo.contains(it, ignoreCase = true) ||
                                langSimpleName.contains(it, ignoreCase = true)
                        }
                        if (wordMatches) groupScore++ else groupAllMatch = false
                    }
                    if (groupAllMatch) {
                        anyGroupAllMatch = true
                        break
                    }
                    if (groupScore > bestGroupScore) bestGroupScore = groupScore
                }

                if (anyGroupAllMatch) {
                    if (!strictFound) {
                        strictFound = true
                        if (rankedHeap.isNotEmpty()) {
                            // The fallback list is only consulted when no strict match was
                            // found; free the candidates accumulated before the first strict
                            // hit so we do not carry them through the rest of the scan.
                            rankedHeap.clear()
                        }
                    }
                    strictTotal++
                    // Keep counting past the cap: the count is what the truncation warning
                    // reports, and dropping the concept here is what keeps the payload bounded.
                    val tier = if (queryWords.any { it.equals(concept.name, ignoreCase = true) }) exactNameMatches
                    else otherMatches
                    if (tier.size < MAX_STRICT_RESULTS) tier.add(concept)
                } else if (!strictFound && bestGroupScore > 0) {
                    // Maintain the heap as a running top-K by score. While under capacity,
                    // accept every positive-score candidate; once full, only candidates with
                    // a strictly higher score than the current worst displace the head.
                    if (rankedHeap.size < MAX_FALLBACK_RESULTS) {
                        rankedHeap.offer(concept to bestGroupScore)
                    } else if (bestGroupScore > rankedHeap.peek().second) {
                        rankedHeap.poll()
                        rankedHeap.offer(concept to bestGroupScore)
                    }
                }
            }
        }

        if (strictFound) {
            val kept = (exactNameMatches + otherMatches).take(MAX_STRICT_RESULTS)
            return ConceptMatches(kept, strictTotal, strictFound = true)
        }
        val fallback = rankedHeap.sortedByDescending { it.second }.map { it.first }
        return ConceptMatches(fallback, fallback.size, strictFound = false)
    }

    /**
     * Adds the `sourceNode` persistent ref to [obj] (when [nodeRef] is resolvable) AND returns the
     * resolved declaration [SNode], so callers do not pay a second [SNodeReference.resolve] lookup
     * for the doc/deprecation pass. Returns null when [nodeRef] is null or does not resolve.
     */
    private fun addSourceNodeAndResolve(obj: JsonObject, nodeRef: SNodeReference?, repository: SRepository): SNode? {
        val resolved = nodeRef?.resolve(repository)
        if (resolved != null) {
            nodeRef?.let { obj.addProperty("sourceNode", PersistenceFacade.getInstance().asString(it)) }
        }
        return resolved
    }

    /**
     * One concept record at the requested detail level: the full record (concept info, features
     * with ids/docs, and a sample node) or the structural projection produced by
     * [conceptShapeJsonObject].
     */
    private fun conceptDetailsJsonObject(
        concept: SAbstractConcept,
        repository: SRepository,
        mpsProject: MPSProject,
        cache: ProjectMembershipCache,
        shapeOnly: Boolean
    ): JsonObject {
        if (shapeOnly) return conceptShapeJsonObject(concept, repository)
        val detailedInfo = conceptInfoJsonObject(concept, repository, mpsProject, cache)
        detailedInfo.add("properties", conceptPropertiesJsonArray(concept, repository))
        detailedInfo.add("references", conceptReferencesJsonArray(concept, repository, mpsProject, cache))
        detailedInfo.add("children", conceptChildrenJsonArray(concept, repository, mpsProject, cache))
        detailedInfo.add("sampleNode", conceptSampleJsonObject(concept))
        return detailedInfo
    }

    /**
     * `detail = "shape"` projection: everything needed to author a node of the concept
     * (features, their types/targets and cardinalities) and nothing else. Agents were
     * re-implementing exactly this reduction over the full record in ad-hoc scripts.
     */
    private fun conceptShapeJsonObject(concept: SAbstractConcept, repository: SRepository): JsonObject {
        val obj = JsonObject()
        obj.addProperty("qualifiedName", structureQualifiedName(concept))
        obj.addProperty("conceptReference", PersistenceFacade.getInstance().asString(concept))
        obj.addProperty("isAbstract", concept.isAbstract)
        obj.addProperty("isRootable", isRootable(concept, repository))
        val properties = JsonArray()
        for (prop in concept.properties) {
            val propObj = JsonObject()
            propObj.addProperty("name", prop.name)
            val type = prop.type
            propObj.addProperty("type", propertyTypeName(type))
            if (type is SEnumeration) {
                val values = JsonArray()
                for (literal in type.literals) values.add(literal.name ?: literal.presentation)
                propObj.add("enumerationValues", values)
                addEnumerationDefault(propObj, type)
            }
            properties.add(propObj)
        }
        obj.add("properties", properties)
        obj.add("references", linkShapeJsonArray(concept.referenceLinks))
        obj.add("children", linkShapeJsonArray(concept.containmentLinks))
        return obj
    }

    /**
     * Names the enumeration's default member next to `enumerationValues`, as `enumerationDefault`.
     * A sibling field rather than turning the array into objects, so existing consumers of the plain
     * string array keep working. Omitted when the declaration names no default member — the literal
     * order alone does not identify it, and readers used to guess the first literal (study defects
     * D5/D12). A property holding the default stores nothing, so this is also the value
     * `mps_mcp_print_node` reports with `isDefault:true`.
     */
    private fun addEnumerationDefault(target: JsonObject, type: SEnumeration) {
        val default = type.default ?: return
        target.addProperty("enumerationDefault", default.name ?: default.presentation)
    }

    private fun linkShapeJsonArray(links: Collection<SAbstractLink>): JsonArray {
        val result = JsonArray()
        for (link in links) {
            val obj = JsonObject()
            obj.addProperty("name", link.name)
            obj.addProperty("targetConcept", structureQualifiedName(link.targetConcept))
            obj.addProperty("cardinality", linkCardinality(link))
            result.add(obj)
        }
        return result
    }

    private fun linkCardinality(link: SAbstractLink): String = when (link) {
        is SContainmentLink -> getCardinality(link)
        is SReferenceLink -> getCardinality(link)
        else -> "0..1"
    }

    /**
     * Built-in primitives (string/integer/boolean) are reference-equal to the [SPrimitiveTypes]
     * constants but do not implement [SNamedElement]. Custom constrained data types and
     * enumerations do implement [SNamedElement].
     */
    private fun propertyTypeName(type: SDataType): String = when (type) {
        SPrimitiveTypes.STRING -> "string"
        SPrimitiveTypes.INTEGER -> "integer"
        SPrimitiveTypes.BOOLEAN -> "boolean"
        is SNamedElement -> type.name ?: "unknown"
        else -> "unknown"
    }

    private fun conceptPropertiesJsonArray(concept: SAbstractConcept, repository: SRepository): JsonArray {
        val result = JsonArray()
        for (prop in concept.properties) {
            val obj = JsonObject()
            obj.addProperty("name", prop.name)
            val type = prop.type
            val typeName = propertyTypeName(type)
            obj.addProperty("type", typeName)
            obj.addProperty("featureId", MetaIdHelper.getProperty(prop).serialize())
            val declarationNode = addSourceNodeAndResolve(obj, prop.sourceNode, repository)
            addDocAndDeprecated(obj, getDoc(declarationNode), getDeprecationInfo(declarationNode))
            if (type is SEnumeration) {
                val values = JsonArray()
                for (literal in type.literals) {
                    values.add(literal.name ?: literal.presentation)
                }
                obj.add("enumerationValues", values)
                addEnumerationDefault(obj, type)
            }
            result.add(obj)
        }
        return result
    }

    private fun conceptLinkJsonArray(
        repository: SRepository,
        links: Collection<SAbstractLink>,
        mpsProject: MPSProject,
        cache: ProjectMembershipCache? = null
    ): JsonArray {
        val result = JsonArray()
        for (ref in links) {
            val obj = JsonObject()
            obj.addProperty("name", ref.name)
            obj.addProperty("targetConcept", structureQualifiedName(ref.targetConcept))
            obj.addProperty("cardinality", linkCardinality(ref))
            val featureId = when (ref) {
                is SReferenceLink -> MetaIdHelper.getAssociation(ref).serialize()
                is SContainmentLink -> MetaIdHelper.getAggregation(ref).serialize()
                else -> null
            }
            featureId?.let { obj.addProperty("featureId", it) }
            val declarationNode = addSourceNodeAndResolve(obj, ref.sourceNode, repository)
            addDocAndDeprecated(obj, getDoc(declarationNode), getDeprecationInfo(declarationNode))
            addContainingProjectIfForeign(obj, mpsProject, ref.targetConcept, repository, "targetConcept", cache)
            result.add(obj)
        }
        return result
    }

    private fun conceptReferencesJsonArray(concept: SAbstractConcept, repository: SRepository, mpsProject: MPSProject, cache: ProjectMembershipCache? = null): JsonArray {
        return conceptLinkJsonArray(repository, concept.referenceLinks, mpsProject, cache)
    }

    private fun conceptChildrenJsonArray(concept: SAbstractConcept, repository: SRepository, mpsProject: MPSProject, cache: ProjectMembershipCache? = null): JsonArray {
        return conceptLinkJsonArray(repository, concept.containmentLinks, mpsProject, cache)
    }

    private fun conceptSampleJsonObject(concept: SAbstractConcept): JsonObject {
        val obj = JsonObject()
        obj.addProperty("concept", structureQualifiedName(concept))

        val properties = JsonArray()
        for (prop in concept.properties) {
            val propObj = JsonObject()
            propObj.addProperty("name", prop.name)
            val type = prop.type
            val value = when {
                prop.name == "name" -> concept.name
                type is SEnumeration -> type.literals.firstOrNull()?.let { it.name ?: it.presentation } ?: "value"
                type == SPrimitiveTypes.INTEGER -> "1"
                type == SPrimitiveTypes.BOOLEAN -> "true"
                else -> "example"
            }
            propObj.addProperty("value", value)
            properties.add(propObj)
        }
        obj.add("properties", properties)

        val references = JsonArray()
        for (ref in concept.referenceLinks) {
            val refObj = JsonObject()
            refObj.addProperty("role", ref.name)
            refObj.addProperty("target", "/* Reference to ${structureQualifiedName(ref.targetConcept)} */")
            references.add(refObj)
        }
        obj.add("references", references)

        val children = JsonArray()
        for (child in concept.containmentLinks) {
            val childObj = JsonObject()
            val nodes = JsonArray()
            childObj.addProperty("role", child.name)
            nodes.add("/* Instances of ${structureQualifiedName(child.targetConcept)} or its sub-concepts are expected here */")
            childObj.add("nodes", nodes)
            children.add(childObj)
        }
        obj.add("children", children)
        return obj
    }

    /**
     * Ranks concept candidates whose haystack subtoken-matches [simpleName], capped at [limit].
     *
     * Strict matches (every subtoken of [simpleName] found in the haystack) take priority; if
     * none exist, falls back to ranking by a compound score that weights name hits more heavily
     * than doc/alias hits. Without that weighting, a concept whose documentation happens to
     * mention several query words (e.g. `ConstraintFunctionParameter_link` whose doc reads
     * "the containment link between the parent and the child") would out-score a concept whose
     * NAME matches the query — clearly wrong for a "did you mean" hint. Concepts are still
     * surfaced in [SAbstractConcept] form so the calling envelope can format them uniformly.
     *
     * The haystack composition matches [mps_mcp_search_concepts] (concept name + alias + short
     * description + documentation + trailing language-name segment) so that namespace prefixes
     * like `jetbrains.mps.lang` do not act as universal wildcards.
     */
    private fun rankConceptSuggestions(
        simpleName: String,
        languages: Iterable<SLanguage>,
        registry: LanguageRegistry,
        repository: SRepository,
        cache: ProjectMembershipCache,
        limit: Int
    ): List<SAbstractConcept> {
        val subtokens = subtokensOf(simpleName)
        if (subtokens.isEmpty()) return emptyList()
        val strictMatches = mutableListOf<SAbstractConcept>()
        val rankedHeap = PriorityQueue<Pair<SAbstractConcept, Int>>(limit, compareBy { it.second })
        for (lang in languages) {
            val runtime = registry.getLanguage(lang) ?: continue
            val langSimpleName = lang.qualifiedName.substringAfterLast('.')
            for (concept in runtime.concepts) {
                if (cache.isFromAnotherOpenProject(concept, repository)) continue
                val name = concept.name ?: ""
                val doc = getDoc(concept.sourceNode?.resolve(repository))
                val alias = concept.conceptAlias ?: ""
                val desc = concept.shortDescription ?: ""
                val extraHaystack = "$alias $desc $doc"
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
                    strictMatches.add(concept)
                    if (strictMatches.size >= limit) return strictMatches
                } else if (strictMatches.isEmpty() && totalHits > 0) {
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
        if (strictMatches.isNotEmpty()) return strictMatches
        return rankedHeap.sortedByDescending { it.second }.map { it.first }
    }

    /**
     * Computes "did you mean" candidates for an unresolved conceptRef.
     *
     * If the input is FQN-shaped (e.g. `jetbrains.mps.lang.smodel.structure.Foo`) AND the
     * implied language (`jetbrains.mps.lang.smodel`) is loaded, suggestions are scoped to that
     * language first. If the scoped search yields no candidates (or the input isn't FQN-shaped),
     * a project-wide search runs as fallback. The simple name is what gets subtoken-matched; the
     * `<lang>.structure.` prefix is intentionally not part of the haystack — it has no
     * discriminating signal once the scope is chosen.
     */
    private fun suggestForUnresolvedConceptRef(
        ref: String,
        registry: LanguageRegistry,
        repository: SRepository,
        cache: ProjectMembershipCache
    ): List<SAbstractConcept> {
        val simpleName = ref.substringAfterLast('.')
        val candidateLanguages = languagesInProject(registry, repository, cache)
        if (ref.contains('.')) {
            val beforeLast = ref.substringBeforeLast('.')
            if (beforeLast.endsWith(".structure")) {
                val langName = beforeLast.removeSuffix(".structure")
                val targetLang = candidateLanguages.firstOrNull { it.qualifiedName == langName }
                if (targetLang != null) {
                    val scoped = rankConceptSuggestions(
                        simpleName, listOf(targetLang), registry, repository, cache,
                        MAX_SUGGESTIONS_PER_UNRESOLVED
                    )
                    if (scoped.isNotEmpty()) return scoped
                }
            }
        }
        return rankConceptSuggestions(
            simpleName, candidateLanguages, registry, repository, cache,
            MAX_SUGGESTIONS_PER_UNRESOLVED
        )
    }

    /**
     * One `mps_mcp_search_concepts` hit, at the requested detail.
     *
     * The `summary` projection is the default because search answers "which concept do I want",
     * and the answer the caller carries forward is a name it then feeds to
     * `mps_mcp_get_concept_details`. Everything a reader cannot act on from a hit list is
     * dropped — above all `doc`, which is what made a four-term query 183 KB (study defect D38).
     * `deprecated` is deliberately kept: projecting it away would let a caller pick a deprecated
     * concept off a hit list without ever seeing the flag.
     */
    private fun searchResultJsonObject(
        concept: SAbstractConcept,
        repository: SRepository,
        mpsProject: MPSProject,
        cache: ProjectMembershipCache,
        summaryOnly: Boolean
    ): JsonObject {
        if (!summaryOnly) return conceptInfoJsonObject(concept, repository, mpsProject, cache)
        val obj = JsonObject()
        obj.addProperty("name", concept.name)
        obj.addProperty("qualifiedName", structureQualifiedName(concept))
        obj.addProperty("conceptAlias", concept.conceptAlias)
        obj.addProperty("shortDescription", concept.shortDescription)
        // Omitted when empty, unlike the full record's always-present field: a hit list is read
        // for what stands out, and a deprecation must not be one blank string among fifty.
        val deprecated = getDeprecationInfo(concept.sourceNode?.resolve(repository))
        if (deprecated.isNotEmpty()) obj.addProperty("deprecated", deprecated)
        obj.addProperty("conceptReference", PersistenceFacade.getInstance().asString(concept))
        obj.addProperty("languageReference", PersistenceFacade.getInstance().asString(concept.language))
        obj.addProperty("isAbstract", concept.isAbstract)
        obj.addProperty("isInterfaceConcept", concept is SInterfaceConcept)
        obj.addProperty("isRootable", isRootable(concept, repository))
        // Same argument as `deprecated`, and stronger: a deprecated concept still works, a
        // concept served from a stale runtime descriptor produces wrong assignability answers
        // downstream. `detail:"shape"` on get_concept_details can omit this because a hollow
        // descriptor self-reveals there as all-empty features; a hit list has no such tell.
        addHollowDescriptorMarker(obj, concept)
        addContainingProjectIfForeign(obj, mpsProject, concept, repository, cache = cache)
        return obj
    }

    /**
     * The languages a query issued against this project can plausibly mean: the ones the
     * project's own modules define, plus the ones those modules use (including everything their
     * used devkits export).
     *
     * The shared module repository registers every deployed language, bundled ones included, so
     * an unscoped free-form query answers out of languages the project never touches — one
     * four-term query came back as 183 KB dominated by `jetbrains.mps.transformation.test.outputLang`
     * (study defect D38, the registry-noise reading of D4). Scoping strictly to project-*owned*
     * languages would be wrong in the other direction: in an ordinary DSL project
     * `jetbrains.mps.baseLanguage` is a library module, and dropping it would make `ClassConcept`
     * unfindable. "Owned or used" is the set that keeps recall and drops the noise.
     *
     * Module descriptors are the cheap source for "used": `languageVersions` is the record
     * `ModuleDependencyVersions` already maintains per module — and it is the *extended-language
     * closure* of what the module uses, so recall is better than `ModelDependencyResolver`, which
     * deliberately excludes extended languages. The trade-off is staleness: a language imported
     * into a model this session but not yet written through to the descriptor is missing here.
     * The auto-widen covers that case, which is a second reason to trigger it on "no strict
     * match" rather than on "no results at all".
     *
     */
    private fun languagesInProjectScope(
        project: MPSProject,
        registry: LanguageRegistry,
        repository: SRepository,
        cache: ProjectMembershipCache
    ): List<SLanguage> {
        val scoped = LinkedHashSet<SLanguage>()
        for (module in project.projectModulesWithGenerators) {
            val descriptor = (module as? AbstractModule)?.moduleDescriptor ?: continue
            scoped.addAll(descriptor.languageVersions.keys)
            for (devkitRef in descriptor.usedDevkits) {
                val devkit = devkitRef.resolve(repository) as? DevKit ?: continue
                scoped.addAll(devkit.allExportedLanguageIds)
            }
        }
        // A language module the project owns is in scope even when nothing uses it yet — that is
        // the language the caller is most likely working on right now.
        for (language in registry.allLanguages) {
            if (cache.isInCurrentProject(language, repository)) scoped.add(language)
        }
        // Same sibling-project filter the widened scope applies: a used language could itself be
        // owned by another open project, and the caller cannot edit that one either.
        return scoped.filter { !cache.isFromAnotherOpenProject(it, repository) }
    }

    /**
     * [languagesInProjectScope] with its own membership cache, for callers outside the search
     * path. Exists so the scope can be asserted directly: a regression that returned an empty
     * list would be invisible end to end, because the auto-widen would quietly restore the
     * full-registry answer.
     */
    internal fun projectSearchScope(project: MPSProject, repository: SRepository): List<SLanguage> =
        languagesInProjectScope(
            project, LanguageRegistry.getInstance(repository), repository, ProjectMembershipCache(project)
        )

    /**
     * Registered languages minus the ones owned by another open MPS project. The module
     * repository is shared across open projects, so an unfiltered candidate list can answer a
     * plain name with a same-named concept or language living in a sibling project — the caller
     * cannot edit it and following the hint silently leaves its own project. Library and stub
     * languages (owned by no open project) stay in the list.
     */
    private fun languagesInProject(
        registry: LanguageRegistry,
        repository: SRepository,
        cache: ProjectMembershipCache
    ): List<SLanguage> = registry.allLanguages.filter { !cache.isFromAnotherOpenProject(it, repository) }

    /**
     * Computes "did you mean" candidates for an unresolved languageRef by subtoken-matching the
     * trailing segment of every registered language's qualified name. Cheaper than the concept
     * ranker (only the language list, not its concepts), and the namespace tail (e.g.
     * `smodel`, `collections`) is the discriminating part of a real qualified name.
     */
    private fun suggestForUnresolvedLanguageRef(
        ref: String,
        registry: LanguageRegistry,
        repository: SRepository,
        cache: ProjectMembershipCache
    ): List<SLanguage> {
        val subtokens = subtokensOf(ref.substringAfterLast('.'))
        if (subtokens.isEmpty()) return emptyList()
        return languagesInProject(registry, repository, cache)
            .mapNotNull { lang ->
                val tail = lang.qualifiedName.substringAfterLast('.')
                val score = subtokens.count { tail.contains(it, ignoreCase = true) }
                if (score > 0) lang to score else null
            }
            .sortedByDescending { it.second }
            .take(MAX_SUGGESTIONS_PER_UNRESOLVED)
            .map { it.first }
    }

    /**
     * A `conceptRef` that names a real structure declaration which simply is not a concept —
     * above all an `EnumerationDeclaration`. `get_concept_details` can *never* return one:
     * concept resolution requires an `AbstractConceptDeclaration`, so an enumeration's qualified
     * name falls through to the "did you mean" ranker and comes back with an unrelated concept
     * from the same structure model (study defect D22: `…structure.Difficulty` was answered with
     * `…structure.Recipe`). Naming what the ref actually is, plus the tool call that reads it,
     * replaces that dead end.
     */
    private data class NonConceptDeclaration(val declaredAs: String, val route: String)

    private fun nonConceptDeclarationsFor(
        mpsProject: MPSProject,
        refs: Collection<String>
    ): Map<String, NonConceptDeclaration> {
        val found = LinkedHashMap<String, NonConceptDeclaration>()
        for (ref in refs) {
            // A node reference resolves directly; only the `r:`/`i:` shapes are tried that way,
            // because `resolveNodeReference`'s by-name fallback would answer a bare name with any
            // same-named root in the repository, not just a structure declaration.
            val byNodeRef = if (ref.startsWith("r:") || ref.startsWith("i:")) {
                resolveNodeReferencePreferringProject(mpsProject, ref)?.resolve(mpsProject.repository)
                    ?.takeUnless { isConceptDeclaration(it) }
            } else {
                null
            }
            val node = byNodeRef
                ?: resolveStructureDeclarationPreferringProject(mpsProject, ref) { !isConceptDeclaration(it) }
                ?: continue
            val declaredAs = node.concept.name ?: continue
            val route = if (node.concept.isSubConceptOf(CONCEPT_EnumerationDeclaration)) {
                "'$ref' is an $declaredAs, not a concept — mps_mcp_get_concept_details returns " +
                        "concepts and interface concepts only. Retry with mps_mcp_query_structure, " +
                        "operation GET_ENUMERATION_LITERALS, parameters " +
                        "{\"enumerationRef\":\"$ref\"} — that parameter accepts exactly this string."
            } else {
                "'$ref' is a $declaredAs, not a concept — mps_mcp_get_concept_details returns " +
                        "concepts and interface concepts only. Retry with mps_mcp_print_node, " +
                        "nodeReference set to '${PersistenceFacade.getInstance().asString(node.reference)}'."
            }
            found[ref] = NonConceptDeclaration(declaredAs, route)
        }
        return found
    }

    /**
     * Builds the `details.unresolved` JSON array surfaced in both the all-failed and the
     * partial-success envelopes. Each entry carries the original input ref, its kind, and a
     * (possibly empty) suggestion list so the agent can paste a canonical `qualifiedName` or
     * `conceptReference`/`languageReference` straight into a retry. A ref that names a
     * non-concept declaration carries `declaredAs` and `route` instead of suggestions — see
     * [NonConceptDeclaration]. A language whose project module exists but has no deployed
     * runtime carries `route` and `undeployed: true` instead of registry suggestions (D35).
     */
    private fun buildUnresolvedDetailsJson(
        unresolvedConceptRefs: Collection<String>,
        unresolvedLanguageRefs: Collection<String>,
        nonConcepts: Map<String, NonConceptDeclaration>,
        undeployedLanguageModules: Map<String, String>,
        registry: LanguageRegistry,
        repository: SRepository,
        cache: ProjectMembershipCache
    ): JsonArray {
        val facade = PersistenceFacade.getInstance()
        val arr = JsonArray()
        for (ref in unresolvedConceptRefs) {
            val entry = JsonObject()
            entry.addProperty("ref", ref)
            entry.addProperty("kind", "concept")
            val nonConcept = nonConcepts[ref]
            if (nonConcept != null) {
                entry.addProperty("declaredAs", nonConcept.declaredAs)
                entry.addProperty("route", nonConcept.route)
                entry.add("suggestions", JsonArray())
                arr.add(entry)
                continue
            }
            val suggestions = JsonArray()
            for (c in suggestForUnresolvedConceptRef(ref, registry, repository, cache)) {
                val s = JsonObject()
                s.addProperty("qualifiedName", structureQualifiedName(c))
                s.addProperty("conceptReference", facade.asString(c))
                suggestions.add(s)
            }
            entry.add("suggestions", suggestions)
            arr.add(entry)
        }
        for (ref in unresolvedLanguageRefs) {
            val entry = JsonObject()
            entry.addProperty("ref", ref)
            entry.addProperty("kind", "language")
            val undeployedName = undeployedLanguageModules[ref]
            if (undeployedName != null) {
                entry.addProperty("route", undeployedLanguageDiagnostic(ref, undeployedName))
                entry.addProperty("undeployed", true)
                entry.add("suggestions", JsonArray())
                arr.add(entry)
                continue
            }
            val suggestions = JsonArray()
            for (lang in suggestForUnresolvedLanguageRef(ref, registry, repository, cache)) {
                val s = JsonObject()
                s.addProperty("qualifiedName", lang.qualifiedName)
                s.addProperty("languageReference", facade.asString(lang))
                suggestions.add(s)
            }
            entry.add("suggestions", suggestions)
            arr.add(entry)
        }
        return arr
    }

    /**
     * Builds the partial-success envelope: resolved data is inlined or saved to a temp file by the
     * same [finalizeResult] rule as the all-resolved case, and the outer envelope additionally
     * carries `warnings` (one line per unresolved ref) and `details.unresolved` (the suggestion
     * structure built by [buildUnresolvedDetailsJson]).
     */
    private fun buildPartialSuccessResult(
        dataJson: String,
        unresolvedConceptRefs: Collection<String>,
        unresolvedLanguageRefs: Collection<String>,
        nonConcepts: Map<String, NonConceptDeclaration>,
        undeployedLanguageModules: Map<String, String>,
        unresolvedDetails: JsonArray,
        maxInlineBytes: Int
    ): String {
        val warnings = mutableListOf<String>()
        for (ref in unresolvedConceptRefs) {
            warnings.add(
                nonConcepts[ref]?.route
                    ?: "Could not resolve conceptRef '$ref' — see details.unresolved for suggestions"
            )
        }
        for (ref in unresolvedLanguageRefs) {
            val undeployedName = undeployedLanguageModules[ref]
            warnings.add(
                if (undeployedName != null) undeployedLanguageDiagnostic(ref, undeployedName)
                else "Could not resolve languageRef '$ref' — see details.unresolved for suggestions"
            )
        }
        return finalizeResult(
            dataJson,
            maxInlineBytes,
            details = mapOf("unresolved" to unresolvedDetails),
            warnings = warnings,
        )
    }

    /**
     * A language module that is in the selected project, whether or not its runtime is deployed.
     * `languageRefs` resolution goes through [LanguageRegistry], so this is the check that
     * distinguishes "unknown name" from "exists but unbuilt" (D35).
     */
    private fun findProjectLanguageModule(
        mpsProject: MPSProject,
        languageRef: String,
        lang: SLanguage?,
    ): Language? {
        val candidates = LinkedHashSet<String>()
        candidates.add(languageRef)
        lang?.qualifiedName?.let { candidates.add(it) }
        if (languageRef.startsWith("l:")) {
            val lastColon = languageRef.lastIndexOf(':')
            if (lastColon in 2 until languageRef.lastIndex) {
                candidates.add(languageRef.substring(lastColon + 1))
            }
        }
        for (candidate in candidates) {
            val module = resolveModule(mpsProject, candidate, projectOnly = true)
            if (module is Language) return module
        }
        return null
    }

    private fun undeployedLanguageDiagnostic(languageRef: String, languageName: String): String =
        "languageRef '$languageRef' names project language '$languageName' whose runtime is not deployed; " +
            "run mps_mcp_alter_nodes MAKE (rebuild=true) on the language module, " +
            "or address concepts by fully qualified name via conceptRefs"
}
