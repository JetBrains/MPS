package jetbrains.mps.agents.mcp.tools

import jetbrains.mps.agents.mcp.tools.common.*

import com.google.gson.JsonArray
import com.google.gson.JsonObject
import com.intellij.mcpserver.annotations.McpDescription
import com.intellij.mcpserver.annotations.McpTool
import jetbrains.mps.project.MPSProject
import jetbrains.mps.smodel.language.LanguageRegistry
import jetbrains.mps.smodel.adapter.MetaAdapterByDeclaration
import org.jetbrains.mps.openapi.language.SAbstractConcept
import jetbrains.mps.smodel.adapter.structure.types.SPrimitiveTypes
import org.jetbrains.mps.openapi.language.SEnumeration
import org.jetbrains.mps.openapi.language.SNamedElement
import org.jetbrains.mps.openapi.language.SLanguage
import org.jetbrains.mps.openapi.module.SRepository
import org.jetbrains.mps.openapi.persistence.PersistenceFacade
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

        // Copy-pasteable retry lines (study remedy M5b). Both observed incidents showed the agent
        // fetching the tool schema even though the rejection already named the right key, so the
        // message ends with the literal edit to make rather than only the key's name.
        const val RETRY_WITH_CONCEPT_REFS =
            "Retry with conceptRefs set to the value you passed as conceptReference " +
                    "(or languageRefs for languageReference)."
        const val RETRY_WITH_SEARCH_TEXTS =
            "Retry with searchTexts set to the value you passed as query/q/text."

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
        Returns detailed info for the listed concepts and/or for every concept of the listed languages. `data` is inline when the serialized result is <= `maxInlineBytes` (default 20000), otherwise a temp-file path. `detail = "shape"` returns only the structural projection of each concept (`qualifiedName`, `conceptReference`, `isAbstract`, `isRootable`, plus `properties`/`references`/`children` with type, enum literals, target concept and cardinality) — no docs, no `sampleNode`, no aspect details; `detail = "full"` (default) returns everything described below. `cardinality` is identical at both levels — never escalate to `"full"` for it; a `references` entry always reads `0..1` or `1` (MPS references are single-valued). To learn the shapes of the concepts a concept's child/reference roles target, pass `languageRefs`: one call returns every concept of the language, which is cheaper than a refinement call per target. Each entry in `properties`, `references`, and `children` carries `featureId` (the encoded `<langUUID>/<conceptId>/<featureId>` triple to paste into `PROPERTY`/`REF` macros and smodel `SPropertyAccess`/`SLinkAccess`) and `sourceNode` (the declaration node's persistent ref, e.g. `r:...(...structure)/<id>`; this is the right node-ref *form* for APIs that expect a structure declaration such as `applicableConcept`, but a feature declaration ref is informational only and is not itself a valid `applicableConcept` target) — so the ids no longer need harvesting via deep `print_node` calls. Unresolved refs are surfaced in `warnings` (partial success) or in an error envelope with `details.unresolved` suggestions (everything failed); use `mps_mcp_search_concepts` for free-form lookup. The `qualifiedName` field is the unambiguous form to use as `concept` in JSON blueprints. If a concept was just created via `CREATE_CONCEPTS` and the response carried `makeStatus: "runtime_stale"`, the runtime descriptor returned here may be hollow (empty properties/references/children, `isAbstract: true`); each affected entry is marked with `descriptorStatus: "hollow"` and a `descriptorRecoveryAction` string — `mps_mcp_reload_all` alone is not sufficient, a clean rebuild via `mps_mcp_alter_nodes` MAKE with `rebuild = true` targeting the language module (not just the structure model) is required. See `mps-language-analysis/references/concept-details.md` for the result schema and the unresolved-ref policy. For details on the canonical structure-to-aspect editing and compilation prerequisite chain, see the Critical Directives in the `mps-mcp-workflow` skill.
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
            return errJson(
                "No concepts nor languages have been provided. This tool takes the plural " +
                        "'conceptRefs' and/or 'languageRefs' (a single value or a JSON array of them); " +
                        "the singular 'conceptReference'/'languageReference' spellings used by other " +
                        "tools are not recognised here. " + RETRY_WITH_CONCEPT_REFS,
                McpErrorCode.INVALID_REQUEST,
            )
        }
        val shapeOnly = when (detail.trim().lowercase()) {
            DETAIL_FULL -> false
            DETAIL_SHAPE -> true
            else -> return errJson(
                "Invalid detail '$detail'. Allowed values: $DETAIL_FULL, $DETAIL_SHAPE",
                McpErrorCode.INVALID_REQUEST,
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
                        // silently missing concepts. The runtime-null case is rare but real (e.g.
                        // a language declared but not loaded into the registry).
                        unresolvedLanguageRefs.add(languageRef)
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
                    unresolvedConceptRefs, unresolvedLanguageRefs, nonConcepts, registry, repo, cache
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
                        append(". See details.unresolved for suggestions, or use mps_mcp_search_concepts.")
                        for (ref in unresolvedConceptRefs) {
                            nonConcepts[ref]?.let { append(" ").append(it.route) }
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
                    unresolvedJson,
                    maxInlineBytes,
                )
            }
        }
    }

    @McpTool
    @McpDescription(
        """
        Searches for concepts and interface concepts by free-form text. Multi-word search strings are AND-combined; multiple search strings are OR-combined. Each word is split on camelCase / underscore / digit boundaries; subtokens shorter than 2 characters are rejected with an explicit error naming the offending words. Pass `modelReference` to restrict to languages used by that model (recommended first attempt); fall back to a global search if nothing is found. Returns a list of concept info records inline, or a path to a temp file when the payload is large. The `qualifiedName` field is the unambiguous form to use as `concept` in JSON blueprints. See `mps-language-analysis/references/search-concepts.md` for the matching algorithm, fallback ranking, result schema, and `modelReference` error strings.
    """
    )
    suspend fun mps_mcp_search_concepts(
        @McpDescription("The text(s) to search for. Either a single search string or a JSON array: [\"Term1\", \"Term2\"] (a real array or the array written as a string). Multiple words within a string are AND-combined (all required); multiple strings are OR-combined.") searchTexts: JsonOrText = JsonOrText.EMPTY,
        @McpDescription("Optional model reference (preferred) or model name to limit search to languages used by this model") modelReference: String? = null
    ): String {
        val terms = parseStringOrJsonArray(searchTexts)
        if (terms.all { it.isBlank() }) {
            return errJson(
                "searchTexts is required: provide a single search string or a JSON array of strings. " +
                        RETRY_WITH_SEARCH_TEXTS,
                McpErrorCode.INVALID_REQUEST,
            )
        }
        return mps_mcp_search_concepts(terms, modelReference)
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
        modelReference: String? = null
    ): String = withMpsProject("Searching for MPS concepts") { mpsProject ->
        executeShortReadOnEdt(mpsProject) {
            val repo = mpsProject.repository
            val registry = LanguageRegistry.getInstance(repo)
            val cache = ProjectMembershipCache(mpsProject)
            val languages: Iterable<SLanguage> = if (modelReference != null) {
                val model = resolveModelPreferringProject(mpsProject, modelReference)
                    ?: return@executeShortReadOnEdt errJson("Model not found: $modelReference")
                val mdr = ModelDependencyResolver(registry, repo)
                mdr.usedLanguages(model)
            } else {
                // Global search: drop languages owned by another open project so a free-form query
                // cannot answer with a same-named concept from a sibling project (the repository is
                // shared). An explicit `modelReference` is an explicit scope and is honoured as given.
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

            val strictMatches = JsonArray()
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
                        strictMatches.add(conceptInfoJsonObject(concept, repo, mpsProject, cache))
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

            val results: JsonArray = if (strictFound) {
                strictMatches
            } else {
                val arr = JsonArray()
                for ((concept, _) in rankedHeap.sortedByDescending { it.second }) {
                    arr.add(conceptInfoJsonObject(concept, repo, mpsProject, cache))
                }
                arr
            }
            finalizeResult(results.toString())
        }
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
     * [NonConceptDeclaration].
     */
    private fun buildUnresolvedDetailsJson(
        unresolvedConceptRefs: Collection<String>,
        unresolvedLanguageRefs: Collection<String>,
        nonConcepts: Map<String, NonConceptDeclaration>,
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
        for (ref in unresolvedLanguageRefs) warnings.add("Could not resolve languageRef '$ref' — see details.unresolved for suggestions")
        return finalizeResult(
            dataJson,
            maxInlineBytes,
            details = mapOf("unresolved" to unresolvedDetails),
            warnings = warnings,
        )
    }
}
