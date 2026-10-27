package jetbrains.mps.agents.mcp.tools

import jetbrains.mps.agents.mcp.tools.common.*
import jetbrains.mps.agents.mcp.tools.languages.ConceptDeclarationView
import jetbrains.mps.agents.mcp.tools.languages.StructureDeclarations
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

    }

    @McpTool
    @McpDescription(
        """
        Returns detailed info for the listed concepts and/or for every concept of the listed languages. `data` is inline when the serialized result is <= `maxInlineBytes` (default 20000), otherwise a temp-file path. `detail = "shape"` returns only the structural projection of each concept (`qualifiedName`, `conceptReference`, `isAbstract`, `isRootable`, plus `properties`/`references`/`children` with type, enum literals, target concept and cardinality) — no docs, no `sampleNode`, no aspect details; `detail = "full"` (default) returns everything described below. `cardinality` is identical at both levels — never escalate to `"full"` for it; a `references` entry always reads `0..1` or `1` (MPS references are single-valued). To learn the shapes of the concepts a concept's child/reference roles target, pass `languageRefs`: one call returns every concept of the language, which is cheaper than a refinement call per target. Each entry in `properties`, `references`, and `children` carries `featureId` (the encoded `<langUUID>/<conceptId>/<featureId>` triple a `PROPERTY`/`REF` macro stores as `propertyId`/`linkId`; not a node ref, so never a blueprint reference `target`) and `sourceNode` (the feature declaration's persistent ref, e.g. `r:...(...structure)/<id>` — the `target` of smodel `SPropertyAccess.property` / `SLinkAccess.link` / `SLinkListAccess.link`; an inherited feature's ref is in the declaring concept's model; `applicableConcept` takes the concept's own `sourceNode`, not a feature's) — so the ids no longer need harvesting via deep `print_node` calls. Unresolved refs are surfaced in `warnings` (partial success) or in an error envelope with `details.unresolved` suggestions (everything failed); use `mps_mcp_search_concepts` for free-form lookup of unknown names. `languageRefs` on a project language returns the union of its built runtime's concepts and its structure model's concept declarations, so concepts added since the last build are included and a language that was never built is answered from its declarations. The `qualifiedName` field is the unambiguous form to use as `concept` in JSON blueprints. A concept whose language has no built runtime, or that was created after the last build, is read from its structure-model declaration: the record is correct and marked `source: "declaration"`, `descriptorStatus: "hollow"`, `runtimeStatus` and `descriptorRecoveryAction`, and the envelope carries a warning plus `details.languageBuild` with the exact `mps_mcp_alter_nodes` MAKE call (`rebuild = true` on the language module; `mps_mcp_reload_all` alone is not sufficient). See `mps-language-analysis/references/concept-details.md` for the result schema and the unresolved-ref policy. For details on the canonical structure-to-aspect editing and compilation prerequisite chain, see the Critical Directives in the `mps-mcp-workflow` skill.
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
                val conceptSet = LinkedHashSet<SAbstractConcept>()
                // The declaration node per concept: it decides the module for the readiness check and
                // is the record's source when the runtime cannot serve the concept (D112).
                val declarations = HashMap<SAbstractConcept, SNode?>()
                // LinkedHashSet so the warning order matches input order, but duplicate refs
                // (copy-paste, scripted retries) collapse into a single warning + suggestion entry
                // instead of repeating the same payload several times in the response.
                val unresolvedConceptRefs = LinkedHashSet<String>()
                val unresolvedLanguageRefs = LinkedHashSet<String>()
                // One entry per language whose runtime could not serve every requested concept.
                val notBuilt = LinkedHashMap<String, ConceptReadiness.NotBuilt>()

                for (conceptRef in conceptRefs) {
                    val concept = resolveConceptPreferringProject(mpsProject, conceptRef)
                    if (concept == null) {
                        unresolvedConceptRefs.add(conceptRef)
                        continue
                    }
                    conceptSet.add(concept)
                    declarations.putIfAbsent(
                        concept,
                        concept.sourceNode?.resolve(repo) ?: if (concept.isValid) null else resolveConceptNodePreferringProject(mpsProject, conceptRef),
                    )
                }

                for (languageRef in languageRefs) {
                    val lang = resolveLanguagePreferringProject(mpsProject, languageRef)
                    val runtime = lang?.let { registry.getLanguage(it) }
                    val module = findProjectLanguageModule(mpsProject, languageRef, lang)
                    if (runtime == null && module == null) {
                        unresolvedLanguageRefs.add(languageRef)
                        continue
                    }
                    runtime?.concepts?.forEach { c ->
                        conceptSet.add(c)
                        declarations.putIfAbsent(c, c.sourceNode?.resolve(repo))
                    }
                    // The structure model is the union's other half: the concepts created since the
                    // last build, or every concept when the language was never built.
                    module?.structureModelDescriptor?.rootNodes?.forEach { root ->
                        val concept = StructureDeclarations.conceptOf(root) ?: return@forEach
                        conceptSet.add(concept)
                        declarations[concept] = root
                    }
                    if (runtime == null) {
                        val name = module!!.moduleName ?: languageRef
                        notBuilt.putIfAbsent(name, ConceptReadiness.NotBuilt.NoRuntime(name, module))
                    }
                }

                val cache = ProjectMembershipCache(mpsProject)
                for (concept in conceptSet) {
                    val declaration = declarations[concept]
                    val readiness = LanguageReadiness.of(concept, declaration, mpsProject)
                    if (readiness is ConceptReadiness.NotBuilt) notBuilt.putIfAbsent(readiness.languageName, readiness)
                    // Stale keeps the runtime record (correct, possibly behind); the other two states
                    // have no descriptor to read, so the declaration is the record's source.
                    val unserved = readiness is ConceptReadiness.NotBuilt && readiness !is ConceptReadiness.NotBuilt.Stale
                    val view = if (unserved) ConceptDeclarationView.of(declaration) else null
                    val record = if (view != null) declarationRecordJsonObject(view, repo, mpsProject, cache, shapeOnly)
                    else conceptDetailsJsonObject(concept, repo, mpsProject, cache, shapeOnly)
                    if (unserved) addReadinessMarkers(record, readiness as ConceptReadiness.NotBuilt, fromDeclaration = view != null)
                    results.add(record)
                }

                val payload = results.toString()
                // Stale is reported in details only: the runtime record is correct, just possibly behind.
                val buildWarnings = notBuilt.values.filter { it !is ConceptReadiness.NotBuilt.Stale }.map { languageBuildWarning(it) }
                val buildDetails = languageBuildDetails(notBuilt.values)

                val anyUnresolved = unresolvedConceptRefs.isNotEmpty() || unresolvedLanguageRefs.isNotEmpty()
                if (!anyUnresolved) {
                    return@executeShortReadOnEdt finalizeResult(payload, maxInlineBytes, details = buildDetails, warnings = buildWarnings)
                }

                val nonConcepts = nonConceptDeclarationsFor(mpsProject, unresolvedConceptRefs)
                val unresolvedJson = buildUnresolvedDetailsJson(
                    unresolvedConceptRefs, unresolvedLanguageRefs, nonConcepts, repo, cache,
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
                        for (ref in unresolvedConceptRefs) {
                            nonConcepts[ref]?.let { append(" ").append(it.route) }
                        }
                        val unknownConcepts = unresolvedConceptRefs.any { it !in nonConcepts }
                        if (unresolvedLanguageRefs.isNotEmpty() || unknownConcepts) {
                            append(". ").append(SEARCH_CONCEPTS_HINT)
                        }
                    }
                    return@executeShortReadOnEdt errJson(
                        message,
                        McpErrorCode.NOT_FOUND,
                        details = buildDetails + mapOf("unresolved" to unresolvedJson),
                    )
                }

                // Partial success — return resolved data plus warnings and suggestions.
                buildPartialSuccessResult(
                    payload,
                    unresolvedConceptRefs,
                    unresolvedLanguageRefs,
                    nonConcepts,
                    unresolvedJson,
                    maxInlineBytes,
                    buildWarnings,
                    buildDetails,
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
            val catalog = conceptSuggestions(repo, cache)
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
                catalog.languagesInProject()
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
                group.map { ConceptSuggestions.subtokensOf(it) }
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
                    "Search words must have at least ${ConceptSuggestions.MIN_SUBTOKEN_LENGTH} characters; the following are too short and would never match: $offenders. Remove or extend them and retry."
                )
            }

            // Original query words, used to float an exact name match above the cap.
            val queryWords = termGroups.flatten().toSet()
            var matches = matchConcepts(languages, catalog, groupSubtokens, queryWords)
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
                val allLanguages = catalog.languagesInProject()
                val widened = if (allLanguages.toSet() == languages.toSet()) matches
                else matchConcepts(allLanguages, catalog, groupSubtokens, queryWords)
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
            val notBuilt = LinkedHashMap<String, ConceptReadiness.NotBuilt>()
            for (concept in matches.concepts) {
                results.add(searchResultJsonObject(concept, repo, mpsProject, cache, summaryOnly, notBuilt))
            }
            warnings.addAll(notBuilt.values.filter { it !is ConceptReadiness.NotBuilt.Stale }.map { languageBuildWarning(it) })
            details.putAll(languageBuildDetails(notBuilt.values))
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
        catalog: ConceptSuggestions,
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
            val entries = catalog.conceptsWithDeclarations(lang)
            if (entries.isEmpty()) continue
            // Use only the trailing segment of the qualified name so that natural queries
            // like "<concept> <language fragment>" work (e.g. "collections", "smodel") without
            // letting common prefixes ("jetbrains", "mps", "lang", "baseLanguage") act as
            // near-universal wildcards that would expand the match set across the whole
            // language registry.
            val langSimpleName = lang.qualifiedName.substringAfterLast('.')
            for ((concept, declaration) in entries) {
                // The language-name fragment is kept out of this string so it does not have
                // to be concatenated for every concept (a language has up to hundreds);
                // subtoken matching checks it separately below.
                val perConceptInfo = catalog.conceptMatchText(concept, declaration)

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
        val detailedInfo = conceptInfoJsonObject(concept, repository, mpsProject, cache, markReadiness = false)
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

    // ---- records read from the structure model (D112) ----

    private fun declarationRecordJsonObject(
        view: ConceptDeclarationView,
        repository: SRepository,
        mpsProject: MPSProject,
        cache: ProjectMembershipCache,
        shapeOnly: Boolean
    ): JsonObject =
        if (shapeOnly) declarationShapeJsonObject(view) else declarationFullJsonObject(view, repository, mpsProject, cache)

    private fun declarationShapeJsonObject(view: ConceptDeclarationView): JsonObject {
        val obj = JsonObject()
        obj.addProperty("qualifiedName", view.qualifiedName)
        obj.addProperty("conceptReference", view.conceptReference())
        obj.addProperty("isAbstract", view.isAbstract)
        obj.addProperty("isRootable", view.isRootable)
        val properties = JsonArray()
        for (p in view.properties) {
            val o = JsonObject()
            o.addProperty("name", p.name)
            o.addProperty("type", p.typeName)
            addDeclaredEnumeration(o, p)
            properties.add(o)
        }
        obj.add("properties", properties)
        obj.add("references", declarationLinkShapeJsonArray(view.referenceLinks))
        obj.add("children", declarationLinkShapeJsonArray(view.containmentLinks))
        return obj
    }

    private fun declarationLinkShapeJsonArray(links: List<ConceptDeclarationView.Link>): JsonArray {
        val result = JsonArray()
        for (link in links) {
            val o = JsonObject()
            o.addProperty("name", link.role)
            o.addProperty("targetConcept", declaredTargetName(link.target))
            o.addProperty("cardinality", link.cardinality)
            result.add(o)
        }
        return result
    }

    private fun declarationFullJsonObject(
        view: ConceptDeclarationView,
        repository: SRepository,
        mpsProject: MPSProject,
        cache: ProjectMembershipCache
    ): JsonObject {
        val obj = declarationInfoJsonObject(view, repository, mpsProject, cache)
        obj.add("properties", declarationPropertiesJsonArray(view))
        obj.add("references", declarationLinksJsonArray(view.referenceLinks, repository, mpsProject, cache))
        obj.add("children", declarationLinksJsonArray(view.containmentLinks, repository, mpsProject, cache))
        obj.add("sampleNode", declarationSampleJsonObject(view))
        return obj
    }

    /** The declaration-read counterpart of [conceptInfoJsonObject]. */
    private fun declarationInfoJsonObject(
        view: ConceptDeclarationView,
        repository: SRepository,
        mpsProject: MPSProject,
        cache: ProjectMembershipCache
    ): JsonObject {
        val facade = PersistenceFacade.getInstance()
        val obj = JsonObject()
        obj.addProperty("name", view.name)
        obj.addProperty("qualifiedName", view.qualifiedName)
        obj.addProperty("conceptAlias", view.conceptAlias)
        obj.addProperty("shortDescription", view.shortDescription)
        addDocAndDeprecated(obj, getDoc(view.declaration), getDeprecationInfo(view.declaration))
        obj.addProperty("conceptReference", view.conceptReference())
        obj.addProperty("languageReference", view.languageReference())
        val superConcept = view.superConceptDeclaration?.let { MetaAdapterByDeclaration.getConcept(it) }
        obj.addProperty("superConcept", superConcept?.let { facade.asString(it) } ?: "")
        superConcept?.let { addContainingProjectIfForeign(obj, mpsProject, it, repository, "superConcept", cache) }
        val superInterfaces = JsonArray()
        val superInterfaceDetails = JsonArray()
        for (decl in view.superInterfaceDeclarations) {
            val intf = MetaAdapterByDeclaration.getConcept(decl) ?: continue
            val ref = facade.asString(intf)
            superInterfaces.add(ref)
            val detail = namedReferenceJsonObject(intf.name, ref)
            addContainingProjectIfForeign(detail, mpsProject, intf, repository, cache = cache)
            superInterfaceDetails.add(detail)
        }
        obj.add("superInterfaces", superInterfaces)
        obj.add("superInterfaceDetails", superInterfaceDetails)
        obj.addProperty("sourceNode", view.sourceNodeReference())
        obj.addProperty("isAbstract", view.isAbstract)
        obj.addProperty("isInterfaceConcept", view.isInterface)
        obj.addProperty("isRootable", view.isRootable)
        obj.addProperty("virtualFolder", view.virtualFolder)
        obj.addProperty("present", true)
        addContainingProjectIfForeign(obj, mpsProject, view.concept, repository, cache = cache)
        return obj
    }

    private fun declarationPropertiesJsonArray(view: ConceptDeclarationView): JsonArray {
        val result = JsonArray()
        for (p in view.properties) {
            val o = JsonObject()
            o.addProperty("name", p.name)
            o.addProperty("type", p.typeName)
            o.addProperty("featureId", p.featureId)
            o.addProperty("sourceNode", PersistenceFacade.getInstance().asString(p.declaration.reference))
            addDocAndDeprecated(o, getDoc(p.declaration), getDeprecationInfo(p.declaration))
            addDeclaredEnumeration(o, p)
            result.add(o)
        }
        return result
    }

    private fun declarationLinksJsonArray(
        links: List<ConceptDeclarationView.Link>,
        repository: SRepository,
        mpsProject: MPSProject,
        cache: ProjectMembershipCache
    ): JsonArray {
        val result = JsonArray()
        for (link in links) {
            val o = JsonObject()
            o.addProperty("name", link.role)
            o.addProperty("targetConcept", declaredTargetName(link.target))
            o.addProperty("cardinality", link.cardinality)
            o.addProperty("featureId", link.featureId)
            o.addProperty("sourceNode", PersistenceFacade.getInstance().asString(link.declaration.reference))
            addDocAndDeprecated(o, getDoc(link.declaration), getDeprecationInfo(link.declaration))
            link.target?.let { MetaAdapterByDeclaration.getConcept(it) }
                ?.let { addContainingProjectIfForeign(o, mpsProject, it, repository, "targetConcept", cache) }
            result.add(o)
        }
        return result
    }

    private fun declarationSampleJsonObject(view: ConceptDeclarationView): JsonObject {
        val obj = JsonObject()
        obj.addProperty("concept", view.qualifiedName)
        val properties = JsonArray()
        for (p in view.properties) {
            val o = JsonObject()
            o.addProperty("name", p.name)
            o.addProperty(
                "value",
                when {
                    p.name == "name" -> view.name
                    p.enumerationValues != null -> p.enumerationValues.firstOrNull() ?: "value"
                    p.typeName == "integer" -> "1"
                    p.typeName == "boolean" -> "true"
                    else -> "example"
                },
            )
            properties.add(o)
        }
        obj.add("properties", properties)
        val references = JsonArray()
        for (link in view.referenceLinks) {
            val o = JsonObject()
            o.addProperty("role", link.role)
            o.addProperty("target", "/* Reference to ${declaredTargetName(link.target)} */")
            references.add(o)
        }
        obj.add("references", references)
        val children = JsonArray()
        for (link in view.containmentLinks) {
            val o = JsonObject()
            o.addProperty("role", link.role)
            val nodes = JsonArray()
            nodes.add("/* Instances of ${declaredTargetName(link.target)} or its sub-concepts are expected here */")
            o.add("nodes", nodes)
            children.add(o)
        }
        obj.add("children", children)
        return obj
    }

    private fun addDeclaredEnumeration(obj: JsonObject, p: ConceptDeclarationView.Property) {
        val values = p.enumerationValues ?: return
        val arr = JsonArray()
        values.forEach { arr.add(it) }
        obj.add("enumerationValues", arr)
        p.enumerationDefault?.let { obj.addProperty("enumerationDefault", it) }
    }

    private fun declaredTargetName(target: SNode?): String =
        target?.let { MetaAdapterByDeclaration.getConcept(it) }?.let { structureQualifiedName(it) } ?: ""

    private fun addReadinessMarkers(obj: JsonObject, notBuilt: ConceptReadiness.NotBuilt, fromDeclaration: Boolean) {
        for ((key, value) in LanguageReadiness.recordMarkers(notBuilt, fromDeclaration)) obj.addProperty(key, value as String)
    }

    private fun languageBuildWarning(notBuilt: ConceptReadiness.NotBuilt): String =
        LanguageReadiness.describe(notBuilt).replaceFirstChar { it.uppercase() } +
            "; its records were read from the structure model. " + LanguageReadiness.recoverySentence(notBuilt)

    /** `details.languageBuild` (the first affected language) plus `languageBuilds` when there are several. */
    private fun languageBuildDetails(all: Collection<ConceptReadiness.NotBuilt>): Map<String, Any?> {
        if (all.isEmpty()) return emptyMap()
        val blocks = all.map { LanguageReadiness.languageBuildDetails(it) }
        return if (blocks.size == 1) mapOf("languageBuild" to blocks.single())
        else mapOf("languageBuild" to blocks.first(), "languageBuilds" to blocks)
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
     *
     * A concept the runtime cannot serve is read from its declaration and marked (D112);
     * [notBuilt] collects the affected languages for the envelope.
     */
    private fun searchResultJsonObject(
        concept: SAbstractConcept,
        repository: SRepository,
        mpsProject: MPSProject,
        cache: ProjectMembershipCache,
        summaryOnly: Boolean,
        notBuilt: MutableMap<String, ConceptReadiness.NotBuilt>
    ): JsonObject {
        val declaration = concept.sourceNode?.resolve(repository)
            ?: if (concept.isValid) null else resolveConceptNodePreferringProject(mpsProject, PersistenceFacade.getInstance().asString(concept))
        val readiness = LanguageReadiness.of(concept, declaration, mpsProject)
        if (readiness is ConceptReadiness.NotBuilt) notBuilt.putIfAbsent(readiness.languageName, readiness)
        val unserved = readiness is ConceptReadiness.NotBuilt && readiness !is ConceptReadiness.NotBuilt.Stale
        val view = if (unserved) ConceptDeclarationView.of(declaration) else null
        val obj = when {
            view != null && summaryOnly -> declarationSummaryJsonObject(view, repository, mpsProject, cache)
            view != null -> declarationInfoJsonObject(view, repository, mpsProject, cache)
            else -> runtimeSearchResultJsonObject(concept, repository, mpsProject, cache, summaryOnly)
        }
        if (unserved) addReadinessMarkers(obj, readiness as ConceptReadiness.NotBuilt, fromDeclaration = view != null)
        return obj
    }

    private fun declarationSummaryJsonObject(
        view: ConceptDeclarationView,
        repository: SRepository,
        mpsProject: MPSProject,
        cache: ProjectMembershipCache
    ): JsonObject {
        val obj = JsonObject()
        obj.addProperty("name", view.name)
        obj.addProperty("qualifiedName", view.qualifiedName)
        obj.addProperty("conceptAlias", view.conceptAlias)
        obj.addProperty("shortDescription", view.shortDescription)
        val deprecated = getDeprecationInfo(view.declaration)
        if (deprecated.isNotEmpty()) obj.addProperty("deprecated", deprecated)
        obj.addProperty("conceptReference", view.conceptReference())
        obj.addProperty("languageReference", view.languageReference())
        obj.addProperty("isAbstract", view.isAbstract)
        obj.addProperty("isInterfaceConcept", view.isInterface)
        obj.addProperty("isRootable", view.isRootable)
        addContainingProjectIfForeign(obj, mpsProject, view.concept, repository, cache = cache)
        return obj
    }

    private fun runtimeSearchResultJsonObject(
        concept: SAbstractConcept,
        repository: SRepository,
        mpsProject: MPSProject,
        cache: ProjectMembershipCache,
        summaryOnly: Boolean
    ): JsonObject {
        if (!summaryOnly) return conceptInfoJsonObject(concept, repository, mpsProject, cache, markReadiness = false)
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
        // the language the caller is most likely working on right now — and even when it has no
        // built runtime (its concepts are then read from the structure model, D112).
        for (language in registry.allLanguages) {
            if (cache.isInCurrentProject(language, repository)) scoped.add(language)
        }
        for (module in project.projectModules) {
            if (module is Language) scoped.add(MetaAdapterByDeclaration.getLanguage(module))
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
     * Computes "did you mean" candidates for an unresolved languageRef by subtoken-matching the
     * trailing segment of every registered language's qualified name. Cheaper than the concept
     * ranker (only the language list, not its concepts), and the namespace tail (e.g.
     * `smodel`, `collections`) is the discriminating part of a real qualified name.
     */
    private fun suggestForUnresolvedLanguageRef(
        ref: String,
        repository: SRepository,
        cache: ProjectMembershipCache
    ): List<SLanguage> {
        val subtokens = ConceptSuggestions.subtokensOf(ref.substringAfterLast('.'))
        if (subtokens.isEmpty()) return emptyList()
        return conceptSuggestions(repository, cache).languagesInProject()
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
     * [NonConceptDeclaration]. A project language without a built runtime is not unresolved: it is
     * answered from its structure model (D35, D112).
     */
    private fun buildUnresolvedDetailsJson(
        unresolvedConceptRefs: Collection<String>,
        unresolvedLanguageRefs: Collection<String>,
        nonConcepts: Map<String, NonConceptDeclaration>,
        repository: SRepository,
        cache: ProjectMembershipCache
    ): JsonArray {
        val facade = PersistenceFacade.getInstance()
        val catalog = conceptSuggestions(repository, cache)
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
            for (c in catalog.suggest(ref, MAX_SUGGESTIONS_PER_UNRESOLVED, ConceptSuggestions.Mode.DETAILS)) {
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
            val suggestions = JsonArray()
            for (lang in suggestForUnresolvedLanguageRef(ref, repository, cache)) {
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
        unresolvedDetails: JsonArray,
        maxInlineBytes: Int,
        extraWarnings: List<String>,
        extraDetails: Map<String, Any?>,
    ): String {
        val warnings = extraWarnings.toMutableList()
        for (ref in unresolvedConceptRefs) {
            warnings.add(
                nonConcepts[ref]?.route
                    ?: "Could not resolve conceptRef '$ref' — see details.unresolved for suggestions"
            )
        }
        for (ref in unresolvedLanguageRefs) {
            warnings.add("Could not resolve languageRef '$ref' — see details.unresolved for suggestions")
        }
        return finalizeResult(
            dataJson,
            maxInlineBytes,
            details = extraDetails + mapOf("unresolved" to unresolvedDetails),
            warnings = warnings,
        )
    }

    /**
     * A language module that is in the selected project, whether or not its runtime is built: the
     * source of the structure-model half of a `languageRefs` answer (D35, D112).
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

}
