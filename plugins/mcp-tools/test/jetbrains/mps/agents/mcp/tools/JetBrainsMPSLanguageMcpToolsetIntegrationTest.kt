package jetbrains.mps.agents.mcp.tools

import com.google.gson.JsonArray
import com.google.gson.JsonElement
import com.google.gson.JsonParser
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory
import org.jetbrains.mps.openapi.persistence.PersistenceFacade
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test
import java.io.File
import kotlin.reflect.full.declaredFunctions
import kotlin.reflect.full.valueParameters

/**
 * End-to-end integration tests for [JetBrainsMPSLanguageMcpToolset].
 *
 * Covers the two query tools:
 *  - `mps_mcp_get_concept_details` — single-concept lookup, language-wide lookup, and the
 *    empty-input rejection;
 *  - `mps_mcp_search_concepts` — happy path, no-match path, and the empty-search-string path
 *    (returns an empty array).
 *
 * `BaseConcept` and `ConceptDeclaration` are convenient fixtures: the former is shipped with
 * `jetbrains.mps.lang.core` and the latter with `jetbrains.mps.lang.structure`. Both languages
 * are loaded as part of the standard MPS bootstrap that [McpToolsIntegrationTestSuite] performs,
 * so they exist regardless of the test's writable language module.
 */
class JetBrainsMPSLanguageMcpToolsetIntegrationTest : McpIntegrationTestBase() {

    @Test
    fun `get-concept-details returns concept JSON for an explicit conceptRef`() {
        val response = runTool(JetBrainsMPSLanguageMcpToolset()) {
            it.mps_mcp_get_concept_details(
                conceptRefs = listOf("jetbrains.mps.lang.core.structure.BaseConcept"),
            )
        }

        val concepts = readConceptArrayFromOkPath(response)
        val names = concepts.map { it.asJsonObject.get("qualifiedName").asString }
        assertEquals(
            "explicit conceptRef should resolve to exactly the requested concept",
            listOf("jetbrains.mps.lang.core.structure.BaseConcept"), names
        )

        val baseConcept = concepts.first().asJsonObject
        assertEquals("BaseConcept", baseConcept.get("name").asString)
        assertTrue(
            "BaseConcept JSON must carry the detail blocks the docstring documents",
            baseConcept.has("properties") &&
                    baseConcept.has("references") &&
                    baseConcept.has("children") &&
                    baseConcept.has("sampleNode")
        )
    }

    @Test
    fun `get-concept-details accepts a single concept reference string`() {
        val response = runTool(JetBrainsMPSLanguageMcpToolset()) {
            it.mps_mcp_get_concept_details(
                conceptRefs = "jetbrains.mps.lang.core.structure.BaseConcept",
            )
        }

        val qualifiedNames = readConceptArrayFromOkPath(response)
            .map { it.asJsonObject.get("qualifiedName").asString }
        assertEquals(
            "a single concept reference string must resolve like a one-element list",
            listOf("jetbrains.mps.lang.core.structure.BaseConcept"),
            qualifiedNames,
        )
    }

    @Test
    fun `get-concept-details accepts a JSON array string`() {
        val response = runTool(JetBrainsMPSLanguageMcpToolset()) {
            it.mps_mcp_get_concept_details(
                conceptRefs = "[\"jetbrains.mps.lang.core.structure.BaseConcept\"]",
            )
        }

        val qualifiedNames = readConceptArrayFromOkPath(response)
            .map { it.asJsonObject.get("qualifiedName").asString }
        assertEquals(
            "a JSON array string must resolve like a one-element list",
            listOf("jetbrains.mps.lang.core.structure.BaseConcept"),
            qualifiedNames,
        )
    }

    @Test
    fun `get-concept-details keeps an empty string request as the existing empty-input error`() {
        val response = runTool(JetBrainsMPSLanguageMcpToolset()) {
            it.mps_mcp_get_concept_details(conceptRefs = "")
        }

        val obj = JsonParser.parseString(response).asJsonObject
        assertFalse("expected error envelope: $response", obj.get("ok").asBoolean)
        assertTrue(
            "an empty string must preserve the existing empty-input error: $response",
            obj.get("error").asString.contains("No concepts nor languages"),
        )
    }

    @Test
    fun `get-concept-details emits a featureId and sourceNode on each property reference and child`() {
        // The id-harvesting fix: every property/reference/child entry must carry the encoded
        // featureId (so $PROPERTY$/SPropertyAccess can be built without deep print_node calls) and
        // the declaration's persistent sourceNode ref. ConceptDeclaration is a rich fixture — it
        // has properties (e.g. `abstract`, `final`), references, and children — so the union of the
        // three arrays is guaranteed non-empty.
        val response = runTool(JetBrainsMPSLanguageMcpToolset()) {
            it.mps_mcp_get_concept_details(
                conceptRefs = listOf("jetbrains.mps.lang.structure.structure.ConceptDeclaration"),
            )
        }

        val concept = readConceptArrayFromOkPath(response).first().asJsonObject
        val features = listOf("properties", "references", "children").flatMap { block ->
            concept.get(block).asJsonArray.map { it.asJsonObject }
        }
        assertTrue("ConceptDeclaration must expose at least one feature; got none", features.isNotEmpty())
        for (feature in features) {
            val name = feature.get("name").asString
            assertTrue(
                "feature '$name' must carry a featureId so macros/smodel accesses can be built without deep print_node",
                feature.has("featureId")
            )
            val featureId = feature.get("featureId").asString
            // The 3-segment <langUUID>/<conceptId>/<featureId> encoding from SPropertyId/
            // S{Reference,Containment}LinkId.serialize().
            assertEquals(
                "featureId for '$name' must be the 3-segment <langUUID>/<conceptId>/<featureId> form; got '$featureId'",
                2, featureId.count { it == '/' }
            )
            // MetaIdHelper.get{Property,Association,Aggregation} returns the all-zero INVALID_*
            // constant when the feature is not a recognized adapter; that serializes to
            // "00000000-0000-0000-0000-000000000000/0/0" — exactly 2 slashes, so the segment count
            // alone would not catch it. Reject the INVALID prefix so a regression that stops
            // resolving real ids fails here rather than shipping useless all-zero featureIds.
            assertFalse(
                "featureId for '$name' must encode a real id, not the all-zero INVALID prefix; got '$featureId'",
                featureId.startsWith("00000000-0000-0000-0000-000000000000/")
            )
            assertTrue(
                "feature '$name' must carry the declaration's sourceNode ref",
                feature.has("sourceNode")
            )
            assertTrue(
                "feature '$name' must carry a non-blank declaration sourceNode ref; got=${feature.get("sourceNode")}",
                feature.get("sourceNode").asString.isNotBlank()
            )
        }
    }

    @Test
    fun `get-concept-details expands an entire language into its concept set`() {
        val response = runTool(JetBrainsMPSLanguageMcpToolset()) {
            it.mps_mcp_get_concept_details(
                conceptRefs = emptyList(),
                languageRefs = listOf("jetbrains.mps.lang.core"),
            )
        }

        val concepts = readConceptArrayFromOkPath(response)
        val qualifiedNames = concepts.map { it.asJsonObject.get("qualifiedName").asString }.toSet()
        assertTrue(
            "the lang.core expansion must contain BaseConcept; got=$qualifiedNames",
            qualifiedNames.contains("jetbrains.mps.lang.core.structure.BaseConcept")
        )
        assertTrue(
            "expanding a full language should yield more than a single concept; got=${qualifiedNames.size}",
            qualifiedNames.size > 1
        )
    }

    @Test
    fun `get-concept-details declares conceptRefs optional so language-only calls survive the MCP bridge`() {
        // Regression guard for the bridge contract, which the runTool-based cases above cannot
        // reach: runTool invokes the Kotlin method directly, but real MCP calls go through
        // com.intellij.mcpserver.impl.util.CallableBridge. The bridge builds the argument map from
        // the request JSON and rejects any parameter that is absent from the JSON and not
        // KParameter.isOptional with "No argument is passed for required parameter 'conceptRefs'".
        // A Kotlin parameter is isOptional only when it has a default value, so the registered
        // String-typed wrapper must keep its `= ""` default; otherwise every documented
        // language-only call (conceptRefs omitted, languageRefs provided) throws before the
        // body's either/or guard ever runs.
        val fn = JetBrainsMPSLanguageMcpToolset::class.declaredFunctions
            .single { function ->
                function.name == "mps_mcp_get_concept_details" &&
                        function.valueParameters.all { it.type.classifier == String::class }
            }
        val conceptRefs = fn.valueParameters.single { it.name == "conceptRefs" }
        assertTrue(
            "conceptRefs must have a Kotlin default (KParameter.isOptional) so CallableBridge accepts " +
                "language-only calls instead of throwing 'No argument is passed for required parameter conceptRefs'",
            conceptRefs.isOptional
        )
    }

    @Test
    fun `get-concept-details rejects empty input as an error envelope`() {
        val response = runTool(JetBrainsMPSLanguageMcpToolset()) {
            it.mps_mcp_get_concept_details(
                conceptRefs = emptyList(),
                languageRefs = emptyList(),
            )
        }

        val obj = JsonParser.parseString(response).asJsonObject
        assertFalse("expected error envelope: $response", obj.get("ok").asBoolean)
        val message = obj.get("error").asString
        assertTrue(
            "error should mention the missing input: $message",
            message.contains("No concepts nor languages")
        )
    }

    @Test
    fun `get-concept-details fails loudly with suggestions when all conceptRefs are unresolvable`() {
        // The agent typed a plausible-looking FQN that doesn't actually exist
        // (jetbrains.mps.lang.smodel really defines SPropertyAccess, not Node_GetPropertyOperation).
        // Previously this returned an empty array silently; the contract now is to fail with
        // 'ok':false + NOT_FOUND and surface candidate concepts in details.unresolved so the
        // agent can browse near-neighbors in the implied language without another guess.
        val bogusFqn = "jetbrains.mps.lang.smodel.structure.Node_GetPropertyOperation"
        val response = runTool(JetBrainsMPSLanguageMcpToolset()) {
            it.mps_mcp_get_concept_details(conceptRefs = listOf(bogusFqn))
        }

        val obj = JsonParser.parseString(response).asJsonObject
        assertFalse("expected error envelope: $response", obj.get("ok").asBoolean)
        assertTrue(
            "error must name the unresolved ref so the user knows what failed: ${obj.get("error").asString}",
            obj.get("error").asString.contains(bogusFqn)
        )
        assertTrue(
            "error envelope must carry the NOT_FOUND code so callers can branch on it: $response",
            obj.has("code") && obj.get("code").asString == "NOT_FOUND"
        )
        val unresolved = unresolvedDetailsOf(obj)
        val entries = (0 until unresolved.size()).map { unresolved.get(it).asJsonObject }
        val byRef = entries.first { it.get("ref").asString == bogusFqn }
        assertEquals("concept", byRef.get("kind").asString)
        val suggestionFqns = byRef.get("suggestions").asJsonArray
            .map { it.asJsonObject.get("qualifiedName").asString }
        // Pin the contract, not a specific top candidate: FQN-shaped input must scope all
        // suggestions to the implied structure language. The exact ordering depends on registry
        // iteration and subtoken-overlap heuristics and would flake; what we owe the caller is
        // "non-empty list of in-scope structural neighbors" so they can recover with one
        // mps_mcp_search_concepts call (or by recognizing the right concept by sight).
        assertTrue(
            "FQN-shaped input must yield at least one suggestion; got=$suggestionFqns",
            suggestionFqns.isNotEmpty()
        )
        assertTrue(
            "every suggestion must come from the implied language to make the namespace " +
                "scoping signal trustworthy; got=$suggestionFqns",
            suggestionFqns.all { it.startsWith("jetbrains.mps.lang.smodel.structure.") }
        )
        assertTrue(
            "suggestion list must be capped at MAX_SUGGESTIONS_PER_UNRESOLVED=" +
                "${JetBrainsMPSLanguageMcpToolset.MAX_SUGGESTIONS_PER_UNRESOLVED}; got=${suggestionFqns.size}",
            suggestionFqns.size <= JetBrainsMPSLanguageMcpToolset.MAX_SUGGESTIONS_PER_UNRESOLVED
        )
    }

    @Test
    fun `get-concept-details warns on a partially unresolved batch and still returns resolved data`() {
        // One valid ref + one bogus ref. Pre-fix the bogus ref would have been silently dropped;
        // post-fix the call still succeeds (BaseConcept's data is preserved) but the envelope must
        // surface a warning and an unresolved entry so a follow-up attempt by the agent has the
        // suggestion to work from.
        val bogusRef = "jetbrains.mps.lang.smodel.structure.Node_GetPropertyOperation"
        val response = runTool(JetBrainsMPSLanguageMcpToolset()) {
            it.mps_mcp_get_concept_details(
                conceptRefs = listOf(
                    "jetbrains.mps.lang.core.structure.BaseConcept",
                    bogusRef,
                )
            )
        }

        // The resolved-data half of the envelope must still be intact — partial unresolved input
        // must not invalidate the part of the request that worked.
        val concepts = readConceptArrayFromOkPath(response)
        val resolvedNames = concepts.map { it.asJsonObject.get("qualifiedName").asString }
        assertEquals(
            "resolved concept must still be in the data file when one of the refs failed",
            listOf("jetbrains.mps.lang.core.structure.BaseConcept"), resolvedNames
        )

        val obj = JsonParser.parseString(response).asJsonObject
        val warnings = obj.get("warnings").asJsonArray
        val warningTexts = (0 until warnings.size()).map { warnings.get(it).asString }
        assertTrue(
            "partial-success envelope must carry a warning per unresolved ref so the agent " +
                "doesn't have to diff the resolved set against the input list; got=$warningTexts",
            warningTexts.any { it.contains(bogusRef) }
        )
        val unresolved = unresolvedDetailsOf(obj)
        val entries = (0 until unresolved.size()).map { unresolved.get(it).asJsonObject }
        assertEquals(
            "details.unresolved must contain exactly the failed refs",
            listOf(bogusRef), entries.map { it.get("ref").asString }
        )
    }

    @Test
    fun `get-concept-details suggests the real concept family when the input uses a stale FQN family`() {
        // CanBeAChildBlock_ParentParameter doesn't exist (the real concept is
        // ConstraintFunctionParameter_parentNode). Pin two things the agent's report cited as
        // missing:
        //  1. The envelope fails loudly (not silently empty).
        //  2. The suggestion list reveals the *real* family pattern, ConstraintFunctionParameter_*.
        // We don't assert a specific top hit (registry-order tiebreaks make that brittle); the
        // useful signal is that a couple of ConstraintFunctionParameter_* entries appear so the
        // agent can infer the canonical name on its own.
        val staleFqn = "jetbrains.mps.lang.constraints.structure.CanBeAChildBlock_ParentParameter"
        val response = runTool(JetBrainsMPSLanguageMcpToolset()) {
            it.mps_mcp_get_concept_details(conceptRefs = listOf(staleFqn))
        }

        val obj = JsonParser.parseString(response).asJsonObject
        assertFalse("expected error envelope: $response", obj.get("ok").asBoolean)
        val unresolved = unresolvedDetailsOf(obj)
        val entry = unresolved.get(0).asJsonObject
        val suggestionFqns = entry.get("suggestions").asJsonArray
            .map { it.asJsonObject.get("qualifiedName").asString }
        assertTrue(
            "every suggestion must come from the implied language so the namespace-scope " +
                "signal is trustworthy; got=$suggestionFqns",
            suggestionFqns.isNotEmpty() &&
                suggestionFqns.all { it.startsWith("jetbrains.mps.lang.constraints.structure.") }
        )
        val correctFamilyCount = suggestionFqns.count {
            it.startsWith("jetbrains.mps.lang.constraints.structure.ConstraintFunctionParameter_")
        }
        assertTrue(
            "at least one ConstraintFunctionParameter_* must surface so the agent can recognise " +
                "the real family pattern (the doc previously said CanBeAChildBlock_*, which " +
                "doesn't exist); got=$suggestionFqns",
            correctFamilyCount >= 1
        )
        assertTrue(
            "suggestion list must be capped at MAX_SUGGESTIONS_PER_UNRESOLVED=" +
                "${JetBrainsMPSLanguageMcpToolset.MAX_SUGGESTIONS_PER_UNRESOLVED}; got=${suggestionFqns.size}",
            suggestionFqns.size <= JetBrainsMPSLanguageMcpToolset.MAX_SUGGESTIONS_PER_UNRESOLVED
        )
    }

    @Test
    fun `get-concept-details fails loudly with suggestions when all languageRefs are unresolvable`() {
        val bogusLanguageRef = "jetbrains.mps.lang.smodl"
        val response = runTool(JetBrainsMPSLanguageMcpToolset()) {
            it.mps_mcp_get_concept_details(
                conceptRefs = emptyList(),
                languageRefs = listOf(bogusLanguageRef),
            )
        }

        val obj = JsonParser.parseString(response).asJsonObject
        assertFalse("expected error envelope: $response", obj.get("ok").asBoolean)
        assertTrue(
            "error must name the unresolved languageRef so the caller knows what failed: ${obj.get("error").asString}",
            obj.get("error").asString.contains(bogusLanguageRef)
        )
        assertTrue(
            "error envelope must carry the NOT_FOUND code so callers can branch on it: $response",
            obj.has("code") && obj.get("code").asString == "NOT_FOUND"
        )
        val entry = unresolvedDetailsOf(obj).singleEntryFor(bogusLanguageRef)
        assertEquals("language", entry.get("kind").asString)
        val suggestionFqns = entry.get("suggestions").asJsonArray
            .map { it.asJsonObject.get("qualifiedName").asString }
        assertTrue(
            "suggestion list must be capped at MAX_SUGGESTIONS_PER_UNRESOLVED=" +
                "${JetBrainsMPSLanguageMcpToolset.MAX_SUGGESTIONS_PER_UNRESOLVED}; got=${suggestionFqns.size}",
            suggestionFqns.size <= JetBrainsMPSLanguageMcpToolset.MAX_SUGGESTIONS_PER_UNRESOLVED
        )
    }

    @Test
    fun `get-concept-details warns when a persistent languageRef resolves syntactically but is not loaded in LanguageRegistry`() {
        val unloadedLanguageRef: String = readOnRepo {
            PersistenceFacade.getInstance().asString(MetaAdapterFactory.getLanguage(language.moduleReference))
        }
        val response = runTool(JetBrainsMPSLanguageMcpToolset()) {
            it.mps_mcp_get_concept_details(
                conceptRefs = listOf("jetbrains.mps.lang.core.structure.BaseConcept"),
                languageRefs = listOf(unloadedLanguageRef),
            )
        }

        val concepts = readConceptArrayFromOkPath(response)
        val resolvedNames = concepts.map { it.asJsonObject.get("qualifiedName").asString }
        assertEquals(
            "resolved concept data must still be returned when an unloaded runtime language is also requested",
            listOf("jetbrains.mps.lang.core.structure.BaseConcept"), resolvedNames
        )

        val obj = JsonParser.parseString(response).asJsonObject
        val warningTexts = obj.get("warnings").asJsonArray.map { it.asString }
        assertTrue(
            "partial-success envelope must warn about the unresolved runtime language; got=$warningTexts",
            warningTexts.any { it.contains(unloadedLanguageRef) }
        )
        val entry = unresolvedDetailsOf(obj).singleEntryFor(unloadedLanguageRef)
        assertEquals("language", entry.get("kind").asString)
        val suggestionRefs = entry.get("suggestions").asJsonArray
            .map { it.asJsonObject.get("languageReference").asString }
        assertTrue(
            "the unloaded language should not suggest itself from the registry-backed candidate list; got=$suggestionRefs",
            suggestionRefs.none { it == unloadedLanguageRef }
        )
    }

    /**
     * Unwraps the `details.unresolved` JSON array that both the all-failed and the partial-success
     * envelopes carry. Lives here (not on the toolset under test) so a regression that moves the
     * data to a different path fails the assertion site rather than getting silently absorbed.
     */
    private fun unresolvedDetailsOf(envelope: com.google.gson.JsonObject): JsonArray {
        assertTrue("envelope must carry details: $envelope", envelope.has("details"))
        val details = envelope.get("details").asJsonObject
        assertTrue("details must carry an unresolved array: $details", details.has("unresolved"))
        return details.get("unresolved").asJsonArray
    }

    private fun JsonArray.singleEntryFor(ref: String) =
        (0 until size()).map { get(it).asJsonObject }.single { it.get("ref").asString == ref }

    @Test
    fun `search-concepts finds a known concept by name`() {
        val response = runTool(JetBrainsMPSLanguageMcpToolset()) {
            it.mps_mcp_search_concepts(searchTexts = listOf("ConceptDeclaration"))
        }

        val results = readSearchArray(response)
        val qualifiedNames = results.map { it.asJsonObject.get("qualifiedName").asString }.toSet()
        assertTrue(
            "search for 'ConceptDeclaration' must match the lang.structure concept; got=$qualifiedNames",
            qualifiedNames.contains("jetbrains.mps.lang.structure.structure.ConceptDeclaration")
        )
    }

    @Test
    fun `search-concepts can match a term that only appears in the owning language qualified name`() {
        // Only the last segment of the language qualified name is folded into the haystack, so
        // "structure" matches lang.structure concepts and the namespace-prefix terms ("lang",
        // "jetbrains", "mps") do NOT degenerate into universal wildcards. ConceptDeclaration's
        // own name/alias/short description does not contain "structure", so reaching it here
        // exercises the language-name folding specifically.
        val response = runTool(JetBrainsMPSLanguageMcpToolset()) {
            it.mps_mcp_search_concepts(searchTexts = listOf("ConceptDeclaration structure"))
        }

        val results = readSearchArray(response)
        val qualifiedNames = results.map { it.asJsonObject.get("qualifiedName").asString }.toSet()
        assertTrue(
            "language-name term must let the search reach the lang.structure concept; got=$qualifiedNames",
            qualifiedNames.contains("jetbrains.mps.lang.structure.structure.ConceptDeclaration")
        )
    }

    @Test
    fun `search-concepts errors out when a sole search string is unmatchable`() {
        // "x" is shorter than MIN_SUBTOKEN_LENGTH. Failing the call (rather than returning an
        // empty array) makes the unusable input visible to the caller — the error message must
        // name the offending word so the caller can fix it.
        val response = runTool(JetBrainsMPSLanguageMcpToolset()) {
            it.mps_mcp_search_concepts(searchTexts = listOf("x"))
        }

        val obj = JsonParser.parseString(response).asJsonObject
        assertFalse("expected error envelope for unmatchable query: $response", obj.get("ok").asBoolean)
        val error = obj.get("error").asString
        assertTrue(
            "error must call out the too-short input: $error",
            error.contains("at least 2 characters")
        )
        assertTrue(
            "error must name the offending word 'x': $error",
            error.contains("'x'")
        )
    }

    @Test
    fun `search-concepts also errors out when only some search strings are unmatchable`() {
        // Symmetric to the all-unmatchable case: mixing a typo word like "x" with a legitimate
        // search string would have silently dropped the typo and returned results that looked
        // like the typo found something. The toolset instead fails loudly so the typo is
        // visible to the caller — and the error must name the offending word.
        val response = runTool(JetBrainsMPSLanguageMcpToolset()) {
            it.mps_mcp_search_concepts(searchTexts = listOf("ConceptDeclaration", "x"))
        }

        val obj = JsonParser.parseString(response).asJsonObject
        assertFalse("expected error envelope when any search string is unmatchable: $response", obj.get("ok").asBoolean)
        val error = obj.get("error").asString
        assertTrue(
            "error must name the offending word 'x': $error",
            error.contains("'x'")
        )
    }

    @Test
    fun `search-concepts does not let common namespace prefixes act as universal wildcards`() {
        // "jetbrains" is a prefix of every bundled language's qualified name. The implementation
        // folds only the LAST segment of the qualified name into the haystack, so "jetbrains"
        // can match a concept ONLY if it happens to appear inside that concept's own name,
        // alias, short description, or documentation — which is rare. A regression that folded
        // the full qualified name into the haystack would instead make every concept in the
        // registry a strict match (the strict path is uncapped, so the result would balloon to
        // thousands). Anchors:
        //   1. Result is bounded by MAX_FALLBACK_RESULTS — impossible if the strict path
        //      matched on the namespace prefix.
        //   2. A short list of well-known, namespace-agnostic concepts (BaseConcept,
        //      ConceptDeclaration, ClassConcept) is NOT in the result. None of them has any
        //      reason to mention "jetbrains" in its own name/alias/short description/doc, so a
        //      regression that re-introduced even a partial qualified-name fold (e.g.
        //      "mps.lang.structure" → strict-matches every structure concept) would surface
        //      here as one of these landing in the result.
        val response = runTool(JetBrainsMPSLanguageMcpToolset()) {
            it.mps_mcp_search_concepts(searchTexts = listOf("jetbrains"))
        }

        val results = readSearchArray(response)
        assertTrue(
            "common namespace prefix must not trigger the uncapped strict path; got ${results.size()} concepts",
            results.size() <= JetBrainsMPSLanguageMcpToolset.MAX_FALLBACK_RESULTS
        )
        val qualifiedNames = results.map { it.asJsonObject.get("qualifiedName").asString }.toSet()
        val mustNotAppear = setOf(
            "jetbrains.mps.lang.core.structure.BaseConcept",
            "jetbrains.mps.lang.structure.structure.ConceptDeclaration",
            "jetbrains.mps.baseLanguage.structure.ClassConcept",
        )
        val leakedAnchors = mustNotAppear.intersect(qualifiedNames)
        assertTrue(
            "namespace prefix must not act as a wildcard reaching well-known concepts; leaked=$leakedAnchors, full=$qualifiedNames",
            leakedAnchors.isEmpty()
        )
    }

    @Test
    fun `search-concepts decomposes a query word on camelCase boundaries`() {
        // "DeclarationConcept" is not a substring of any concept name, but its subtokens
        // ["Declaration","Concept"] both appear inside "ConceptDeclaration". Subtoken splitting
        // is what lets the discovery search find the concept even when the user types the
        // parts in the wrong order.
        val response = runTool(JetBrainsMPSLanguageMcpToolset()) {
            it.mps_mcp_search_concepts(searchTexts = listOf("DeclarationConcept"))
        }

        val results = readSearchArray(response)
        val qualifiedNames = results.map { it.asJsonObject.get("qualifiedName").asString }.toSet()
        assertTrue(
            "camelCase-split subtokens must reach ConceptDeclaration; got=$qualifiedNames",
            qualifiedNames.contains("jetbrains.mps.lang.structure.structure.ConceptDeclaration")
        )
    }

    @Test
    fun `search-concepts falls back to ranking when no strict AND match exists`() {
        // The query mixes a known concept name with a nonsense word that cannot appear in any
        // haystack. The strict path therefore cannot match (the second word fails for every
        // concept), so any non-empty result is proof that the ranking fallback ran. The
        // assertions below pin three properties of that fallback: ConceptDeclaration is in the
        // result, the result is bounded by MAX_FALLBACK_RESULTS, and none of the returned
        // concepts' serialized payloads contain the nonsense word (which would only happen if
        // the strict branch ever returned them — i.e. a regression in the AND-match logic).
        val nonsense = "zzznevergonnamatchanywherezzz"
        val response = runTool(JetBrainsMPSLanguageMcpToolset()) {
            it.mps_mcp_search_concepts(
                searchTexts = listOf("ConceptDeclaration $nonsense"),
            )
        }

        val results = readSearchArray(response)
        val qualifiedNames = results.map { it.asJsonObject.get("qualifiedName").asString }.toSet()
        assertTrue(
            "ranking fallback must keep ConceptDeclaration in the top results; got=$qualifiedNames",
            qualifiedNames.contains("jetbrains.mps.lang.structure.structure.ConceptDeclaration")
        )
        assertTrue(
            "ranking fallback must be bounded by MAX_FALLBACK_RESULTS=${JetBrainsMPSLanguageMcpToolset.MAX_FALLBACK_RESULTS}; got ${results.size()}",
            results.size() <= JetBrainsMPSLanguageMcpToolset.MAX_FALLBACK_RESULTS
        )
        val anyContainsNonsense = (0 until results.size()).any { i ->
            results.get(i).toString().contains(nonsense, ignoreCase = true)
        }
        assertFalse(
            "fallback path must not have included the nonsense word as a strict match",
            anyContainsNonsense
        )
    }

    @Test
    fun `search-concepts returns an empty array when all search terms are blank`() {
        val response = runTool(JetBrainsMPSLanguageMcpToolset()) {
            it.mps_mcp_search_concepts(searchTexts = listOf("", "   "))
        }

        val results = readSearchArray(response)
        assertEquals(
            "blank-only search terms must short-circuit to an empty result array",
            0, results.size()
        )
    }

    @Test
    fun `search-concepts accepts a single search string, not only a JSON array`() {
        // The registered String-typed overload must wrap a bare single value into a one-element
        // list so a client is not forced to send a JSON array for the common single-term case.
        val response = runTool(JetBrainsMPSLanguageMcpToolset()) {
            it.mps_mcp_search_concepts(searchTexts = "ConceptDeclaration")
        }

        val qualifiedNames = readSearchArray(response)
            .map { it.asJsonObject.get("qualifiedName").asString }.toSet()
        assertTrue(
            "a single bare search string must find ConceptDeclaration; got=$qualifiedNames",
            qualifiedNames.contains("jetbrains.mps.lang.structure.structure.ConceptDeclaration")
        )
    }

    @Test
    fun `search-concepts accepts a JSON array string`() {
        val response = runTool(JetBrainsMPSLanguageMcpToolset()) {
            it.mps_mcp_search_concepts(searchTexts = "[\"ConceptDeclaration\"]")
        }

        val qualifiedNames = readSearchArray(response)
            .map { it.asJsonObject.get("qualifiedName").asString }.toSet()
        assertTrue(
            "a JSON array string must find ConceptDeclaration; got=$qualifiedNames",
            qualifiedNames.contains("jetbrains.mps.lang.structure.structure.ConceptDeclaration")
        )
    }

    @Test
    fun `search-concepts with an omitted searchTexts returns a classified INVALID_REQUEST error`() {
        // An omitted required parameter used to reach the MCP framework's reflective bridge and
        // crash with a raw IllegalStateException before the tool body ran. The defaulted String
        // parameter plus body validation now turns that into a clean error envelope instead.
        val response = runTool(JetBrainsMPSLanguageMcpToolset()) {
            it.mps_mcp_search_concepts()
        }

        val obj = JsonParser.parseString(response).asJsonObject
        assertFalse("expected error envelope: $response", obj.get("ok").asBoolean)
        assertEquals(
            "missing searchTexts must be classified INVALID_REQUEST",
            AbstractOps.McpErrorCode.INVALID_REQUEST.name, obj.get("code").asString
        )
        assertTrue(
            "error must name the missing parameter: ${obj.get("error").asString}",
            obj.get("error").asString.contains("searchTexts")
        )
    }

    @Test
    fun `search-concepts scoped to a real model resolves through that model's used languages`() {
        // The base class creates a writable language with a structure model loaded into the test
        // project. Scoping the search by that model exercises the modelReference branch end to
        // end: createModelReference succeeds, the model resolves, ModelDependencyResolver yields
        // a non-empty language set, and the search still reaches ConceptDeclaration through
        // jetbrains.mps.lang.structure (which any structure model depends on).
        val response = runTool(JetBrainsMPSLanguageMcpToolset()) {
            it.mps_mcp_search_concepts(
                searchTexts = listOf("ConceptDeclaration"),
                modelReference = structureModelRef,
            )
        }

        val results = readSearchArray(response)
        val qualifiedNames = results.map { it.asJsonObject.get("qualifiedName").asString }.toSet()
        assertTrue(
            "model-scoped search must still reach ConceptDeclaration via the structure language; got=$qualifiedNames",
            qualifiedNames.contains("jetbrains.mps.lang.structure.structure.ConceptDeclaration")
        )
    }

    @Test
    fun `search-concepts scoped to a well-formed but unresolved model reference returns Model not found wording`() {
        // This reference parses cleanly but
        // does not resolve to any model in the test project. The toolset must surface that
        // specific error rather than collapsing it into a generic failure or silently falling
        // back to the all-languages search.
        val response = runTool(JetBrainsMPSLanguageMcpToolset()) {
            it.mps_mcp_search_concepts(
                searchTexts = listOf("ConceptDeclaration"),
                modelReference = "r:00000000-0000-0000-0000-000000000000(no.such.model)",
            )
        }

        val obj = JsonParser.parseString(response).asJsonObject
        assertFalse("expected error envelope: $response", obj.get("ok").asBoolean)
        val error = obj.get("error").asString
        assertTrue(
            "error must distinguish unresolved-but-valid references with 'Model ... not found': $error",
            error.contains("not found")
        )
    }

    @Test
    fun `search-concepts scoped to an invalid model reference returns Invalid model reference wording`() {
        // This reference does not parse, so it is treated as a model name, which does not resolve.
        val response = runTool(JetBrainsMPSLanguageMcpToolset()) {
            it.mps_mcp_search_concepts(
                searchTexts = listOf("ConceptDeclaration"),
                modelReference = "this is not a model reference",
            )
        }

        val obj = JsonParser.parseString(response).asJsonObject
        assertFalse("expected error envelope: $response", obj.get("ok").asBoolean)
        assertTrue(
            "error should call out the invalid model reference: ${obj.get("error").asString}",
            obj.get("error").asString.contains("not found")
        )
    }

    /**
     * `mps_mcp_get_concept_details` always saves to a temp file and returns the path. The
     * file content is itself an ok envelope whose `data` is the concept array; unwrap both
     * layers and hand back the array.
     */
    private fun readConceptArrayFromOkPath(response: String): JsonArray {
        val obj = JsonParser.parseString(response).asJsonObject
        assertTrue("expected ok=true envelope, got: $response", obj.get("ok").asBoolean)
        val path = obj.get("data").asString
        val content = File(path).readText()
        val fileEnvelope = JsonParser.parseString(content).asJsonObject
        assertTrue("file envelope must be ok: $content", fileEnvelope.get("ok").asBoolean)
        return unwrapArray(fileEnvelope.get("data"))
    }

    /**
     * `mps_mcp_search_concepts` inlines the result when small and falls back to a temp file
     * when the array exceeds the 20kB threshold. Accept both shapes so the test does not
     * accidentally fail when the registered language set grows.
     */
    private fun readSearchArray(response: String): JsonArray {
        val obj = JsonParser.parseString(response).asJsonObject
        assertTrue("expected ok=true envelope, got: $response", obj.get("ok").asBoolean)
        val data = obj.get("data")
        if (data.isJsonArray) return data.asJsonArray
        if (data.isJsonPrimitive) {
            // Primitive `data` is the temp-file fallback path used when the result exceeds
            // the 20kB inline threshold. An inline array literal would deserialize to a
            // JsonArray above; anything else would mean `okJson` changed shape.
            val path = data.asString
            check(!path.startsWith("[")) {
                "okJson contract changed: an inline array literal must surface as JsonArray, not JsonPrimitive"
            }
            val content = File(path).readText()
            val fileEnvelope = JsonParser.parseString(content).asJsonObject
            assertTrue("file envelope must be ok: $content", fileEnvelope.get("ok").asBoolean)
            return unwrapArray(fileEnvelope.get("data"))
        }
        error("unexpected data shape in $response")
    }

    private fun unwrapArray(element: JsonElement): JsonArray =
        when {
            element.isJsonArray -> element.asJsonArray
            element.isJsonPrimitive -> JsonParser.parseString(element.asString).asJsonArray
            else -> error("unexpected concept-array shape: $element")
        }
}
