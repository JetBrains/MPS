package jetbrains.mps.agents.mcp.tools.integration

import jetbrains.mps.agents.mcp.tools.*
import jetbrains.mps.agents.mcp.tools.common.*

import com.google.gson.JsonArray
import com.google.gson.JsonElement
import com.google.gson.JsonParser
import com.intellij.mcpserver.annotations.McpTool
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory
import jetbrains.mps.smodel.language.LanguageRegistry
import org.jetbrains.mps.openapi.language.SLanguage
import org.jetbrains.mps.openapi.persistence.PersistenceFacade
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test
import java.io.File
import kotlin.reflect.full.declaredFunctions
import kotlin.reflect.full.findAnnotation
import kotlin.reflect.full.valueParameters
import kotlinx.serialization.json.JsonArray as McpJsonArray
import kotlinx.serialization.json.JsonElement as McpJsonElement
import kotlinx.serialization.json.JsonPrimitive as McpJsonPrimitive

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
    fun `get-concept-details detail shape returns only the structural projection`() {
        val response = runTool(JetBrainsMPSLanguageMcpToolset()) {
            it.mps_mcp_get_concept_details(
                conceptRefs = listOf("jetbrains.mps.lang.structure.structure.ConceptDeclaration"),
                detail = "shape",
            )
        }

        val concept = payloadArrayFromOkData(response).single().asJsonObject
        assertEquals(
            "shape must carry exactly the projection fields and nothing else",
            setOf("qualifiedName", "conceptReference", "isAbstract", "isRootable", "properties", "references", "children"),
            concept.keySet(),
        )
        assertEquals(
            "jetbrains.mps.lang.structure.structure.ConceptDeclaration",
            concept.get("qualifiedName").asString,
        )
        val properties = concept.getAsJsonArray("properties").map { it.asJsonObject }
        assertTrue("ConceptDeclaration must expose properties in the shape: $concept", properties.isNotEmpty())
        for (property in properties) {
            assertTrue(
                "a shape property must be {name, type} (+ enumerationValues/enumerationDefault for an enum); got=$property",
                property.keySet().all {
                    it == "name" || it == "type" || it == "enumerationValues" || it == "enumerationDefault"
                },
            )
        }
        for (block in listOf("references", "children")) {
            for (link in concept.getAsJsonArray(block).map { it.asJsonObject }) {
                assertEquals(
                    "a shape $block entry must be {name, targetConcept, cardinality}; got=$link",
                    setOf("name", "targetConcept", "cardinality"), link.keySet(),
                )
            }
        }
        // The shape projection is what a worker should be able to answer "is this role
        // multi-valued?" from, without escalating to detail="full" — which the tool description
        // now promises ("cardinality is identical at both levels"). Pin that by comparing the two
        // projections role by role; asserting only that a reference reads 0..1/1 would be a
        // tautology, since linkCardinality dispatches on the Kotlin link type.
        val fullResponse = runTool(JetBrainsMPSLanguageMcpToolset()) {
            it.mps_mcp_get_concept_details(
                conceptRefs = listOf("jetbrains.mps.lang.structure.structure.ConceptDeclaration"),
                detail = "full",
            )
        }
        val full = payloadArrayFromOkData(fullResponse).single().asJsonObject
        for (block in listOf("references", "children")) {
            val shapeCardinalities = concept.getAsJsonArray(block)
                .associate { it.asJsonObject.get("name").asString to it.asJsonObject.get("cardinality").asString }
            val fullCardinalities = full.getAsJsonArray(block)
                .associate { it.asJsonObject.get("name").asString to it.asJsonObject.get("cardinality").asString }
            assertTrue("ConceptDeclaration must expose $block: $concept", shapeCardinalities.isNotEmpty())
            assertEquals(
                "$block must report the same number of roles at both detail levels",
                full.getAsJsonArray(block).size(), concept.getAsJsonArray(block).size(),
            )
            assertEquals("$block cardinality must be identical at both detail levels", fullCardinalities, shapeCardinalities)
        }
    }

    @Test
    fun `get-concept-details names the default member of an enum property`() {
        // R8b / study defects D5+D12: `enumerationValues` alone does not say which literal a
        // property holding the default is at, and readers guessed the first one.
        // `LinkDeclaration.metaClass` is a bundled enum property whose enumeration declares a
        // default, so the expectation is taken from the loaded language, not hard-coded.
        val conceptFqn = "jetbrains.mps.lang.structure.structure.LinkDeclaration"
        val expected = readOnRepo {
            val concept = MetaAdapterFactory.getConcept(
                0xc72da2b97cce4447uL.toLong(), 0x8389f407dc1158b7uL.toLong(), 0xf979bd086aL,
                conceptFqn,
            )
            concept.properties
                .mapNotNull { prop ->
                    val enumeration = prop.type as? org.jetbrains.mps.openapi.language.SEnumeration ?: return@mapNotNull null
                    val default = enumeration.default ?: return@mapNotNull null
                    prop.name to (default.name ?: default.presentation)
                }
                .toMap()
        }
        assertTrue(
            "test precondition: LinkDeclaration must declare an enum property with a default member",
            expected.isNotEmpty(),
        )

        for (detail in listOf("full", "shape")) {
            val response = runTool(JetBrainsMPSLanguageMcpToolset()) {
                it.mps_mcp_get_concept_details(conceptRefs = listOf(conceptFqn), detail = detail)
            }
            val properties = payloadArrayFromOkData(response).single().asJsonObject
                .getAsJsonArray("properties")
                .associate { entry -> entry.asJsonObject.get("name").asString to entry.asJsonObject }
            for ((name, default) in expected) {
                val entry = properties[name]
                assertTrue("detail=$detail must list the enum property '$name': $properties", entry != null)
                assertTrue("detail=$detail must keep enumerationValues: $entry", entry!!.has("enumerationValues"))
                assertEquals(
                    "detail=$detail must name the declared default member of '$name'",
                    default, entry.get("enumerationDefault").asString,
                )
            }
            val nonEnum = properties.values.firstOrNull { !it.has("enumerationValues") }
            assertTrue(
                "a non-enum property must not carry enumerationDefault: $nonEnum",
                nonEnum == null || !nonEnum.has("enumerationDefault"),
            )
        }
    }

    @Test
    fun `get-concept-details rejects an unknown detail level`() {
        val response = runTool(JetBrainsMPSLanguageMcpToolset()) {
            it.mps_mcp_get_concept_details(
                conceptRefs = listOf("jetbrains.mps.lang.core.structure.BaseConcept"),
                detail = "brief",
            )
        }

        val error = expectErr(response)
        assertTrue("error must list the allowed detail levels: $error", error.contains("full") && error.contains("shape"))
    }

    @Test
    fun `get-concept-details falls back to a temp-file path above maxInlineBytes`() {
        val response = runTool(JetBrainsMPSLanguageMcpToolset()) {
            it.mps_mcp_get_concept_details(
                conceptRefs = listOf("jetbrains.mps.lang.core.structure.BaseConcept"),
                maxInlineBytes = 1,
            )
        }

        val envelope = JsonParser.parseString(response).asJsonObject
        assertTrue("expected ok envelope: $response", envelope.get("ok").asBoolean)
        val path = envelope.get("data").asString
        assertTrue("`data` must be a temp-file path when the result exceeds maxInlineBytes: $path", File(path).isFile)
        assertEquals(
            listOf("jetbrains.mps.lang.core.structure.BaseConcept"),
            payloadArrayFromOkData(response).map { it.asJsonObject.get("qualifiedName").asString },
        )
    }

    @Test
    fun `get-concept-details accepts a single concept reference string`() {
        val response = runTool(JetBrainsMPSLanguageMcpToolset()) {
            it.mps_mcp_get_concept_details(
                conceptRefs = JsonOrText("jetbrains.mps.lang.core.structure.BaseConcept"),
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
                conceptRefs = JsonOrText("[\"jetbrains.mps.lang.core.structure.BaseConcept\"]"),
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
            it.mps_mcp_get_concept_details(conceptRefs = JsonOrText(""))
        }

        val obj = JsonParser.parseString(response).asJsonObject
        assertFalse("expected error envelope: $response", obj.get("ok").asBoolean)
        val error = obj.get("error").asString
        assertTrue(
            "an empty string must preserve the existing empty-input error: $response",
            error.contains("No concepts nor languages"),
        )
        // A worker that passed the singular `conceptReference` (the spelling print_node and
        // scaffold_editor use) got this error without being told either the offending key or the
        // right one, so the message must name both spellings.
        assertTrue("the error must name the accepted parameter: $response", error.contains("conceptRefs"))
        assertTrue("the error must name the rejected spelling: $response", error.contains("conceptReference"))
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

    // ── D20: `conceptRefs` and the fully-qualified-name form ───────────────────────────────
    // Study round 3 recorded D20 as "a fully-qualified concept name in `conceptRefs` raises an
    // unhandled `Index -1 out of bounds for length 0`". The three tests below split that claim
    // into its two independent halves, because they have different answers:
    //   1. the FQN form itself resolves — for a plain concept, an interface concept, and a
    //      concept in a project language that was never compiled (the shape the study's
    //      in-session `mcp.study.recipes` language had);
    //   2. the crash is caused by the *wire shape* of the argument, not by its value: a real
    //      JSON array sent for the `String`-typed `conceptRefs` parameter dies in the platform's
    //      argument decoder before the tool body runs.

    @Test
    fun `get-concept-details resolves a fully qualified name for a plain and an interface concept`() {
        val plainFqn = "jetbrains.mps.lang.structure.structure.ConceptDeclaration"
        val interfaceFqn = "jetbrains.mps.lang.core.structure.INamedConcept"

        val response = runTool(JetBrainsMPSLanguageMcpToolset()) {
            it.mps_mcp_get_concept_details(conceptRefs = listOf(plainFqn, interfaceFqn))
        }

        val byQualifiedName = readConceptArrayFromOkPath(response)
            .associate { it.asJsonObject.get("qualifiedName").asString to it.asJsonObject }
        assertEquals(
            "both FQN forms must resolve; the tool prints exactly these strings as qualifiedName",
            setOf(plainFqn, interfaceFqn), byQualifiedName.keys,
        )
        assertFalse(
            "a ConceptDeclaration must not be reported as an interface concept",
            byQualifiedName.getValue(plainFqn).get("isInterfaceConcept").asBoolean,
        )
        assertTrue(
            "an InterfaceConceptDeclaration resolved by FQN must be reported as an interface concept",
            byQualifiedName.getValue(interfaceFqn).get("isInterfaceConcept").asBoolean,
        )
    }

    @Test
    fun `get-concept-details resolves a fully qualified name in a project language that was never compiled`() {
        // The closest fixture available to the "language registered but runtime descriptor hollow"
        // case the round-3 plan suspected: `createConceptRoot` writes a ConceptDeclaration into the
        // test language's structure model without a make, so the language has no compiled runtime
        // and is absent from the LanguageRegistry. Resolution must still succeed, through
        // `resolveConceptNodeInModules` step 3 (split on the last dot, match `<model>.structure`).
        // That the fixture language is absent from the LanguageRegistry is pinned independently by
        // `get-concept-details warns when a persistent languageRef resolves syntactically but is
        // not loaded in LanguageRegistry` below.
        createConceptRoot("D20UncompiledProbe")
        val fqn = readOnRepo { structureModel.name.longName + ".D20UncompiledProbe" }

        val response = runTool(JetBrainsMPSLanguageMcpToolset()) {
            it.mps_mcp_get_concept_details(conceptRefs = JsonOrText(fqn))
        }

        val concept = readConceptArrayFromOkPath(response).single().asJsonObject
        assertEquals("D20UncompiledProbe", concept.get("name").asString)
        assertTrue(
            "an uncompiled concept resolved by FQN must still carry the documented detail blocks: $concept",
            concept.has("properties") && concept.has("references") &&
                    concept.has("children") && concept.has("sampleNode"),
        )
    }

    @Test
    fun `get-concept-details serves a hollow runtime descriptor by concept reference and rejects it by FQN`() {
        // The plan's third D20 candidate: a concept whose language *is* registered but whose
        // runtime descriptor is hollow. Forged the same way `ScaffoldEditorStalenessTest.
        // `checkScaffoldingStaleness flags a hollow runtime descriptor …`` does — an unknown
        // concept id inside the loaded `jetbrains.mps.lang.editor` language makes
        // `PersistenceFacade.createConcept` hand back a bare facade with null sourceNode and
        // empty members, which is exactly what `isHollowDescriptor` catches.
        //
        // Neither address form throws, which is the point: the hollow descriptor is *not* D20's
        // trigger. The `c:` form is served with the documented staleness marker; the plain
        // qualified name cannot resolve at all (no structure root carries it, and
        // `facade.createConcept` rejects a non-`c:` string), so it comes back as an ordinary
        // NOT_FOUND envelope.
        val hollowConceptRef =
            "c:18bc6592-03a6-4e29-a83a-7ff23bde13ba/9999999999:jetbrains.mps.lang.editor.structure.BogusConcept"

        val byReference = runTool(JetBrainsMPSLanguageMcpToolset()) {
            it.mps_mcp_get_concept_details(conceptRefs = JsonOrText(hollowConceptRef))
        }
        val hollow = readConceptArrayFromOkPath(byReference).single().asJsonObject
        assertEquals(
            "a hollow runtime descriptor must be flagged, not served as a real concept: $hollow",
            "hollow", hollow.get("descriptorStatus").asString,
        )
        assertTrue(
            "the hollow marker must carry the rebuild recovery action: $hollow",
            hollow.get("descriptorRecoveryAction").asString.contains("rebuild"),
        )

        val byQualifiedName = runTool(JetBrainsMPSLanguageMcpToolset()) {
            it.mps_mcp_get_concept_details(conceptRefs = JsonOrText("jetbrains.mps.lang.editor.structure.BogusConcept"))
        }
        val envelope = JsonParser.parseString(byQualifiedName).asJsonObject
        assertFalse("a hollow concept has no FQN route, so this must fail: $byQualifiedName", envelope.get("ok").asBoolean)
        assertEquals(
            "the failure must be a classified envelope, never a raw exception",
            "NOT_FOUND", envelope.get("code").asString,
        )
    }

    @Test
    fun `get-concept-details accepts conceptRefs as a real JSON array and as the array written as a string`() {
        // D20's actual mechanism and its fix, exercised through the same path a real MCP client
        // takes. `conceptRefs` used to be declared `String`, while the tool description said "or a
        // JSON array of them" — a client that read that literally sent a JSON array and
        // `CallableBridge.call` handed it to `String.serializer()`, which made `TaggedDecoder.popTag`
        // pop an empty tag stack: `IndexOutOfBoundsException: Index -1 out of bounds for length 0`,
        // thrown during argument binding, before the tool body ran.
        //
        // The parameter is now `JsonOrText`, whose serializer keeps the published schema at
        // `{"type":"string"}` (pinned by `McpJsonOrTextWireShapeTest`) while decoding either shape.
        val plainFqn = "jetbrains.mps.lang.core.structure.BaseConcept"
        val interfaceFqn = "jetbrains.mps.lang.core.structure.INamedConcept"

        fun call(conceptRefs: McpJsonElement): List<String> =
            payloadArrayFromOkData(
                callThroughBridge(
                    JetBrainsMPSLanguageMcpToolset(),
                    "mps_mcp_get_concept_details",
                    mapOf("conceptRefs" to conceptRefs),
                )
            ).map { it.asJsonObject.get("qualifiedName").asString }

        assertEquals(
            "the array-as-string shape the round-3 worker used must keep working",
            listOf(plainFqn),
            call(McpJsonPrimitive("[\"$plainFqn\"]")),
        )
        assertEquals(
            "a real JSON array — the shape the round-3 evaluator sent, which used to crash the " +
                    "platform's argument decoder — must now resolve",
            listOf(plainFqn, interfaceFqn),
            call(McpJsonArray(listOf(McpJsonPrimitive(plainFqn), McpJsonPrimitive(interfaceFqn)))),
        )
        assertEquals(
            "a single bare value must stay byte-identical to the pre-fix behaviour",
            listOf(plainFqn),
            call(McpJsonPrimitive(plainFqn)),
        )
    }

    @Test
    fun `get-concept-details rejects every singular near-miss with a copy-pasteable retry line`() {
        // M5b, widened for study D27. None of these four spellings is a declared parameter, so the
        // bridge drops the unknown request key and the Kotlin default applies — every one of them
        // arrives here as "no input at all", and the message cannot know which was sent. It
        // therefore has to name all four; the round-3 wording listed only the '-erence' pair, so a
        // caller who sent `conceptRef` (the canonical key inside the blob-taking tools) never saw
        // their own spelling. The singular quoting matters: 'conceptRef' without the quotes is a
        // substring of the 'conceptRefs' this same message names, so it would assert nothing.
        for (nearMiss in listOf("conceptRef", "conceptReference", "languageRef", "languageReference")) {
            val response = callThroughBridge(
                JetBrainsMPSLanguageMcpToolset(),
                "mps_mcp_get_concept_details",
                mapOf(nearMiss to McpJsonPrimitive("jetbrains.mps.lang.core.structure.BaseConcept")),
            )

            val envelope = JsonParser.parseString(response).asJsonObject
            assertFalse("'$nearMiss' must not silently succeed: $response", envelope.get("ok").asBoolean)
            assertEquals("INVALID_REQUEST", envelope.get("code").asString)
            val error = envelope.get("error").asString
            assertTrue("the message must still name the accepted keys: $error", error.contains("'conceptRefs'"))
            assertTrue("the message must name the accepted plural languageRefs: $error", error.contains("'languageRefs'"))
            assertTrue("the message must name the '$nearMiss' near-miss: $error", error.contains("'$nearMiss'"))
            assertTrue(
                "the message must end with a copy-pasteable retry line: $error",
                error.contains(
                    "Retry with conceptRefs set to the value you passed as conceptRef/conceptReference " +
                            "(or languageRefs for languageRef/languageReference)."
                ),
            )
        }
    }

    @Test
    fun `search-concepts rejects a missing searchTexts with a copy-pasteable retry line`() {
        // M5b for the round-3 `query`/`searchTexts` near-miss (S1-sonnet-1:56-58).
        val response = callThroughBridge(
            JetBrainsMPSLanguageMcpToolset(),
            "mps_mcp_search_concepts",
            mapOf("query" to McpJsonPrimitive("ConceptDeclaration")),
        )

        val envelope = JsonParser.parseString(response).asJsonObject
        assertFalse("an unknown top-level key must not silently succeed: $response", envelope.get("ok").asBoolean)
        assertEquals("INVALID_REQUEST", envelope.get("code").asString)
        val error = envelope.get("error").asString
        assertTrue("the message must still name the accepted key: $error", error.contains("searchTexts is required"))
        assertTrue(
            "the message must end with a copy-pasteable retry line: $error",
            error.contains("Retry with searchTexts set to the value you passed as query/q/text."),
        )
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
        // wrapper must keep its default (`JsonOrText.EMPTY` since the D20 conversion, `= ""`
        // before it); otherwise every documented language-only call (conceptRefs omitted,
        // languageRefs provided) throws before the body's either/or guard ever runs.
        // The registered overload is the `@McpTool`-annotated one (the other entry point takes
        // List<String> and is not registered); its remaining parameters (detail, maxInlineBytes)
        // are projections/limits and must be optional for the same reason.
        val fn = JetBrainsMPSLanguageMcpToolset::class.declaredFunctions
            .single { function ->
                function.name == "mps_mcp_get_concept_details" &&
                        function.findAnnotation<McpTool>() != null
            }
        for (parameter in fn.valueParameters) {
            assertTrue(
                "'${parameter.name}' must have a Kotlin default (KParameter.isOptional) so CallableBridge accepts " +
                    "calls that omit it instead of throwing 'No argument is passed for required parameter'",
                parameter.isOptional
            )
        }
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
        val error = obj.get("error").asString
        assertTrue(
            "a genuine unknown language may still point at search_concepts: $error",
            error.contains("mps_mcp_search_concepts"),
        )
        assertFalse(
            "an unknown language is not an undeployed project module: $error",
            error.contains("runtime is not deployed"),
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
    fun `get-concept-details languageRefs of an unbuilt project language names MAKE not search_concepts`() {
        // Study D35: languageRefs cannot enumerate a project language whose runtime is not
        // deployed (qualified name and l:<uuid>:<name> both fail), while conceptRefs with a
        // fully qualified concept name still works. The rejection must name MAKE / conceptRefs
        // and must not send the caller to mps_mcp_search_concepts.
        val languageName = readOnRepo { language.moduleName!! }
        val persistentRef = readOnRepo {
            PersistenceFacade.getInstance().asString(MetaAdapterFactory.getLanguage(language.moduleReference))
        }
        for (ref in listOf(languageName, persistentRef)) {
            val response = runTool(JetBrainsMPSLanguageMcpToolset()) {
                it.mps_mcp_get_concept_details(
                    conceptRefs = emptyList(),
                    languageRefs = listOf(ref),
                )
            }
            val obj = JsonParser.parseString(response).asJsonObject
            assertFalse("expected error envelope for unbuilt languageRefs='$ref': $response", obj.get("ok").asBoolean)
            val error = obj.get("error").asString
            assertTrue("error must name the languageRef: $error", error.contains(ref))
            assertTrue("error must diagnose missing runtime: $error", error.contains("runtime is not deployed"))
            assertTrue("error must recommend MAKE: $error", error.contains("mps_mcp_alter_nodes MAKE"))
            assertTrue("error must recommend conceptRefs: $error", error.contains("conceptRefs"))
            assertFalse(
                "unbuilt project language must not send the caller to search_concepts: $error",
                error.contains("mps_mcp_search_concepts"),
            )
            val entry = unresolvedDetailsOf(obj).singleEntryFor(ref)
            assertEquals("language", entry.get("kind").asString)
            assertTrue("undeployed flag: $entry", entry.get("undeployed").asBoolean)
            assertTrue(
                "route must recommend MAKE / conceptRefs: ${entry.get("route").asString}",
                entry.get("route").asString.contains("mps_mcp_alter_nodes MAKE") &&
                    entry.get("route").asString.contains("conceptRefs"),
            )
            assertEquals(
                "registry suggestions are a dead end for an unbuilt language",
                0,
                entry.get("suggestions").asJsonArray.size(),
            )
        }
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
        assertTrue(
            "warning must diagnose missing runtime rather than a search miss; got=$warningTexts",
            warningTexts.any { it.contains("runtime is not deployed") && it.contains("mps_mcp_alter_nodes MAKE") },
        )
        assertTrue(
            "warning must not send the caller to search_concepts; got=$warningTexts",
            warningTexts.none { it.contains("mps_mcp_search_concepts") },
        )
        val entry = unresolvedDetailsOf(obj).singleEntryFor(unloadedLanguageRef)
        assertEquals("language", entry.get("kind").asString)
        assertTrue("undeployed flag: $entry", entry.get("undeployed").asBoolean)
        val suggestionRefs = entry.get("suggestions").asJsonArray
            .map { it.asJsonObject.get("languageReference")?.asString }
        assertTrue(
            "the unloaded language should not suggest itself from the registry-backed candidate list; got=$suggestionRefs",
            suggestionRefs.none { it == unloadedLanguageRef }
        )
    }

    @Test
    fun `get-concept-details routes a qualified enumeration name to GET_ENUMERATION_LITERALS`() {
        // Study defect D22: an EnumerationDeclaration's qualified name used to be answered with a
        // "did you mean" suggestion for an unrelated *concept* from the same structure model, which
        // is a dead end — concept resolution requires an AbstractConceptDeclaration, so this tool
        // can never return an enumeration. It must name what the ref actually is and the call that
        // reads it instead.
        createEnumInTestLanguage("RoutedDifficulty")
        val enumFqn = readOnRepo { "${structureModel.name.longName}.RoutedDifficulty" }

        val response = runTool(JetBrainsMPSLanguageMcpToolset()) {
            it.mps_mcp_get_concept_details(conceptRefs = listOf(enumFqn))
        }

        val obj = JsonParser.parseString(response).asJsonObject
        assertFalse("expected error envelope: $response", obj.get("ok").asBoolean)
        val error = obj.get("error").asString
        assertTrue("error must say what the ref is: $error", error.contains("is an EnumerationDeclaration"))
        assertTrue("error must name the working tool: $error", error.contains("mps_mcp_query_structure"))
        assertTrue("error must name the operation: $error", error.contains("GET_ENUMERATION_LITERALS"))
        assertTrue("error must name the parameter: $error", error.contains("enumerationRef"))

        val entry = unresolvedDetailsOf(obj).singleEntryFor(enumFqn)
        assertEquals("EnumerationDeclaration", entry.get("declaredAs").asString)
        assertTrue("entry must carry the route: $entry", entry.get("route").asString.contains("GET_ENUMERATION_LITERALS"))
        assertEquals(
            "a non-concept declaration must not be answered with concept suggestions",
            0, entry.get("suggestions").asJsonArray.size(),
        )
    }

    @Test
    fun `get-concept-details carries the enumeration route as a warning on a partial batch`() {
        createEnumInTestLanguage("PartialDifficulty")
        val enumFqn = readOnRepo { "${structureModel.name.longName}.PartialDifficulty" }

        val response = runTool(JetBrainsMPSLanguageMcpToolset()) {
            it.mps_mcp_get_concept_details(
                conceptRefs = listOf("jetbrains.mps.lang.core.structure.BaseConcept", enumFqn),
            )
        }

        val obj = JsonParser.parseString(response).asJsonObject
        assertTrue("expected partial success: $response", obj.get("ok").asBoolean)
        val warnings = obj.get("warnings").asJsonArray.map { it.asString }
        assertTrue(
            "the enumeration route must reach the caller as a warning; got=$warnings",
            warnings.any { it.contains("GET_ENUMERATION_LITERALS") && it.contains(enumFqn) },
        )
        val entry = unresolvedDetailsOf(obj).singleEntryFor(enumFqn)
        assertEquals("EnumerationDeclaration", entry.get("declaredAs").asString)
    }

    @Test
    fun `get-concept-details routes an enumeration node reference to GET_ENUMERATION_LITERALS too`() {
        // The routing must be input-shape independent: an enumeration's node reference resolves in
        // resolveConceptNodeInModules' node-reference step, and MetaAdapterByDeclaration.getConcept
        // then returns null for it, so this shape lands in the same unresolved path.
        createEnumInTestLanguage("NodeRefDifficulty")
        val enumNodeRef = readOnRepo {
            val root = structureModel.rootNodes.single { it.name == "NodeRefDifficulty" }
            PersistenceFacade.getInstance().asString(root.reference)
        }

        val response = runTool(JetBrainsMPSLanguageMcpToolset()) {
            it.mps_mcp_get_concept_details(conceptRefs = listOf(enumNodeRef))
        }

        val obj = JsonParser.parseString(response).asJsonObject
        assertFalse("expected error envelope: $response", obj.get("ok").asBoolean)
        val entry = unresolvedDetailsOf(obj).singleEntryFor(enumNodeRef)
        assertEquals("EnumerationDeclaration", entry.get("declaredAs").asString)
        assertTrue(
            "the route must carry the node reference the caller already holds: $entry",
            entry.get("route").asString.contains(enumNodeRef),
        )
    }

    /** Creates an `EnumerationDeclaration` root in this test's writable structure model. */
    private fun createEnumInTestLanguage(name: String) {
        val response = runTool {
            it.mps_mcp_alter_structure(
                MPSStructureAlterOperation.CREATE_ENUM,
                """{"structureModelRef":"$structureModelRef","enumName":"$name","valuesJson":[{"enumName":"EASY","enumPresentation":"Easy"}]}"""
            )
        }
        assertTrue("CREATE_ENUM must succeed: $response", JsonParser.parseString(response).asJsonObject.get("ok").asBoolean)
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
        // registry a strict match, which the cap would still surface as MAX_STRICT_RESULTS (50)
        // hits — well above the fallback bound asserted below. Anchors:
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
            "common namespace prefix must not trigger the strict path; got ${results.size()} concepts",
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
            it.mps_mcp_search_concepts(searchTexts = JsonOrText("ConceptDeclaration"))
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
            it.mps_mcp_search_concepts(searchTexts = JsonOrText("[\"ConceptDeclaration\"]"))
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

    // ── D38/P9: projection, capping and scoping of search_concepts ──────────────────────────

    @Test
    fun `search-concepts returns the compact record by default and the full one on request`() {
        // The default projection is what every caller that does not opt in receives, so the
        // regression that matters is `doc` (and the other full-record-only fields) creeping back
        // into it — that field is what made a four-term query 183 KB (study defect D38).
        val summary = runTool(JetBrainsMPSLanguageMcpToolset()) {
            it.mps_mcp_search_concepts(searchTexts = listOf("ConceptDeclaration"))
        }
        val summaryRecord = recordFor(readSearchArray(summary), "jetbrains.mps.lang.structure.structure.ConceptDeclaration")
        for (projectedAway in listOf("doc", "sourceNode", "virtualFolder", "superConcept", "superInterfaces", "superInterfaceDetails")) {
            assertFalse(
                "the default summary record must not carry '$projectedAway': $summaryRecord",
                summaryRecord.has(projectedAway)
            )
        }
        for (kept in listOf("name", "qualifiedName", "conceptReference", "languageReference", "isAbstract", "isRootable")) {
            assertTrue("the summary record must still carry '$kept': $summaryRecord", summaryRecord.has(kept))
        }

        val full = runTool(JetBrainsMPSLanguageMcpToolset()) {
            it.mps_mcp_search_concepts(searchTexts = listOf("ConceptDeclaration"), detail = "full")
        }
        val fullRecord = recordFor(readSearchArray(full), "jetbrains.mps.lang.structure.structure.ConceptDeclaration")
        assertTrue("detail=full must restore the complete record: $fullRecord", fullRecord.has("doc"))
        assertTrue("detail=full must restore the complete record: $fullRecord", fullRecord.has("sourceNode"))
        assertTrue(
            "the summary record must be smaller than the full one",
            summaryRecord.toString().length < fullRecord.toString().length
        )
    }

    @Test
    fun `search-concepts rejects an unknown detail and an unknown scope by naming the allowed values`() {
        val badDetail = runTool(JetBrainsMPSLanguageMcpToolset()) {
            it.mps_mcp_search_concepts(searchTexts = listOf("ConceptDeclaration"), detail = "shape")
        }
        val detailError = JsonParser.parseString(badDetail).asJsonObject
        assertFalse("expected error envelope: $badDetail", detailError.get("ok").asBoolean)
        assertTrue(
            "the rejection must name the value and the allowed set: ${detailError.get("error").asString}",
            detailError.get("error").asString.let { it.contains("'shape'") && it.contains("summary") && it.contains("full") }
        )

        val badScope = runTool(JetBrainsMPSLanguageMcpToolset()) {
            it.mps_mcp_search_concepts(searchTexts = listOf("ConceptDeclaration"), scope = "global")
        }
        val scopeError = JsonParser.parseString(badScope).asJsonObject
        assertFalse("expected error envelope: $badScope", scopeError.get("ok").asBoolean)
        assertTrue(
            "the rejection must name the value and the allowed set: ${scopeError.get("error").asString}",
            scopeError.get("error").asString.let { it.contains("'global'") && it.contains("project") && it.contains("all") }
        )
    }

    @Test
    fun `search-concepts rejects scope all combined with modelReference naming both keys`() {
        // Silently honouring one of the two would be the D14b failure mode: the caller believes
        // it narrowed (or widened) the search and the tool did the opposite.
        val response = runTool(JetBrainsMPSLanguageMcpToolset()) {
            it.mps_mcp_search_concepts(
                searchTexts = listOf("ConceptDeclaration"),
                modelReference = structureModelRef,
                scope = "all",
            )
        }

        val obj = JsonParser.parseString(response).asJsonObject
        assertFalse("expected error envelope: $response", obj.get("ok").asBoolean)
        val error = obj.get("error").asString
        assertTrue("the rejection must name 'scope': $error", error.contains("scope"))
        assertTrue("the rejection must name 'modelReference': $error", error.contains("modelReference"))
    }

    @Test
    fun `search-concepts honours maxInlineBytes on both sides of the threshold`() {
        val inline = runTool(JetBrainsMPSLanguageMcpToolset()) {
            it.mps_mcp_search_concepts(searchTexts = listOf("ConceptDeclaration"))
        }
        assertTrue(
            "a small default-threshold result must be inline: $inline",
            JsonParser.parseString(inline).asJsonObject.get("data").isJsonArray
        )

        val spilled = runTool(JetBrainsMPSLanguageMcpToolset()) {
            it.mps_mcp_search_concepts(searchTexts = listOf("ConceptDeclaration"), maxInlineBytes = 1)
        }
        val spilledEnvelope = JsonParser.parseString(spilled).asJsonObject
        assertTrue("expected ok envelope: $spilled", spilledEnvelope.get("ok").asBoolean)
        assertTrue(
            "maxInlineBytes=1 must push the payload to a temp file: $spilled",
            spilledEnvelope.get("data").isJsonPrimitive
        )
        // The helper follows the temp-file path, so the content must still be the same array.
        assertTrue(
            "the spilled payload must still be the result array",
            readSearchArray(spilled).size() > 0
        )
    }

    @Test
    fun `search-concepts caps strict matches and reports how many it is not showing`() {
        // "concept" strictly matches far more than MAX_STRICT_RESULTS across the bootstrapped
        // languages. Before the cap, every one of them was serialized — the uncapped strict path
        // is what produced the 183 KB envelope the study measured.
        val response = runTool(JetBrainsMPSLanguageMcpToolset()) {
            it.mps_mcp_search_concepts(searchTexts = listOf("concept"), scope = "all")
        }

        val envelope = JsonParser.parseString(response).asJsonObject
        assertTrue("expected ok envelope: $response", envelope.get("ok").asBoolean)
        val results = readSearchArray(response)
        assertTrue(
            "the strict path must never return more than MAX_STRICT_RESULTS; got ${results.size()}",
            results.size() <= JetBrainsMPSLanguageMcpToolset.MAX_STRICT_RESULTS
        )

        // Asserted as a biconditional rather than skipped when the registry is small: both
        // directions pin `strictTruncated`, and neither can pass by not running.
        val details = envelope.get("details")?.asJsonObject
        val narrowingWarning = warningsOf(envelope).any { it.contains("Narrow the query") }
        if (results.size() == JetBrainsMPSLanguageMcpToolset.MAX_STRICT_RESULTS) {
            assertTrue("a truncated result must carry details: $response", details != null)
            assertTrue("a truncated result must report the real total: $details", details!!.has("totalStrictMatches"))
            assertTrue(
                "the reported total must exceed what was returned: $details",
                details.get("totalStrictMatches").asInt > results.size()
            )
            assertTrue("a truncated result must be flagged: $details", details.get("truncated").asBoolean)
            assertTrue("a truncated result must tell the caller how to narrow: $response", narrowingWarning)
        } else {
            assertFalse(
                "an untruncated result must not claim truncation: $details",
                details != null && details.has("truncated")
            )
            assertFalse("an untruncated result must not warn about narrowing: $response", narrowingWarning)
        }
    }

    @Test
    fun `search-concepts floats an exact name match above the strict cap`() {
        // The cap keeps the first N in registry scan order, which is arbitrary relative to
        // relevance. Without the exact-name tier, a query naming a concept could come back as
        // fifty unrelated concepts that merely mention the word — and "narrow the query" is no
        // advice at all when the name already is the query. "Statement" matches far more than
        // the cap through docs and compound names; the concept literally called Statement must
        // survive regardless, and must come first.
        val response = runTool(JetBrainsMPSLanguageMcpToolset()) {
            it.mps_mcp_search_concepts(searchTexts = listOf("Statement"), scope = "all")
        }

        val records = readSearchArray(response).map { it.asJsonObject }
        assertTrue(
            "a concept whose name is exactly the query must never be the one the cap drops; got ${records.size} results",
            records.any { it.get("name").asString == "Statement" }
        )
        val lastExact = records.indexOfLast { it.get("name").asString == "Statement" }
        val firstOther = records.indexOfFirst { it.get("name").asString != "Statement" }
        if (firstOther >= 0) {
            assertTrue(
                "exact name matches must be ordered ahead of the rest; lastExact=$lastExact firstOther=$firstOther",
                lastExact < firstOther
            )
        }
    }

    @Test
    fun `search-concepts widens to the whole registry when the project scope matches nothing`() {
        // The project scope must not create a dead end: a concept outside the project's own and
        // used languages still comes back, with a warning saying the scope was widened. Whether
        // the narrow pass hits at all depends on what this test project's one produced language
        // module records as used, so the test asserts the invariants that hold either way:
        //   - the default scope reaches the concept, narrow pass or widened;
        //   - when the widening fires, the answer is exactly the scope='all' answer, and the
        //     warning names the escape hatch;
        //   - scope='all' never widens, because it is already the widest.
        val defaultScope = runTool(JetBrainsMPSLanguageMcpToolset()) {
            it.mps_mcp_search_concepts(searchTexts = listOf("ConceptDeclaration"))
        }
        val envelope = JsonParser.parseString(defaultScope).asJsonObject
        assertTrue("expected ok envelope: $defaultScope", envelope.get("ok").asBoolean)

        val defaultNames = readSearchArray(defaultScope).map { it.asJsonObject.get("qualifiedName").asString }.toSet()
        assertTrue(
            "the default scope must reach ConceptDeclaration, narrow pass or widened; got=$defaultNames",
            defaultNames.contains("jetbrains.mps.lang.structure.structure.ConceptDeclaration")
        )

        // Deterministic, not environment-dependent: LanguageProducer.create ends with
        // ModuleDependencyVersions.update, so the fixture language's descriptor records
        // jetbrains.mps.lang.structure and the narrow pass finds ConceptDeclaration on its own.
        // Asserting the *absence* of the widening is what proves the project scope is populated
        // — a scope helper that returned an empty list would widen here and still answer
        // correctly, so only this assertion can tell the two apart.
        assertTrue(
            "the project scope must reach ConceptDeclaration without widening: ${warningsOf(envelope)}",
            warningsOf(envelope).none { it.contains("widened") }
        )

        val all = runTool(JetBrainsMPSLanguageMcpToolset()) {
            it.mps_mcp_search_concepts(searchTexts = listOf("ConceptDeclaration"), scope = "all")
        }
        assertTrue(
            "scope='all' is already the widest and must never report a widening: ${warningsOf(JsonParser.parseString(all).asJsonObject)}",
            warningsOf(JsonParser.parseString(all).asJsonObject).none { it.contains("widened") }
        )
    }

    @Test
    fun `search-concepts project scope is a populated strict subset of the registry`() {
        // The end-to-end tests cannot see this: if languagesInProjectScope returned an empty
        // list, every project-scoped search would simply auto-widen and answer correctly, and
        // the whole narrowing feature would be a green no-op. Assert the set directly.
        val (scoped, all) = readOnRepo<Pair<List<SLanguage>, Set<SLanguage>>> {
            val repository = myProject.repository
            JetBrainsMPSLanguageMcpToolset().projectSearchScope(myProject, repository) to
                    LanguageRegistry.getInstance(repository).allLanguages.toSet()
        }

        assertTrue("the project scope must not be empty", scoped.isNotEmpty())
        assertTrue(
            "the project scope must contain a language the fixture module uses; got=${scoped.map { it.qualifiedName }}",
            scoped.any { it.qualifiedName == "jetbrains.mps.lang.structure" }
        )
        assertTrue(
            "the project scope must be a subset of the registry; extra=${scoped.filter { it !in all }.map { l -> l.qualifiedName }}",
            all.containsAll(scoped)
        )
        assertTrue(
            "the project scope must be strictly smaller than the registry, otherwise it narrows nothing; " +
                    "scoped=${scoped.size} all=${all.size}",
            scoped.size < all.size
        )
    }

    @Test
    fun `search-concepts scope project never returns more than scope all`() {
        // The scoping predicate cannot be demonstrated end to end in this checkout — every
        // bundled language is a module of the MPS project itself, so "owned or used" is very
        // nearly the whole registry here (recorded in study/docs-defects.md D38). What does hold
        // unconditionally is containment: the project scope is a subset of the full registry, so
        // a regression that widened the project scope past `all`, or narrowed `all`, fails here.
        // The filter itself is pinned by the ProjectMembershipCache predicate tests.
        // "ConceptDeclaration" deliberately, not a common word: both sides must stay under
        // MAX_STRICT_RESULTS or the comparison is between two differently ordered truncations
        // and says nothing about containment. A word like "Declaration" caps out on both sides
        // and would make the assertion unreachable.
        val scoped = runTool(JetBrainsMPSLanguageMcpToolset()) {
            it.mps_mcp_search_concepts(searchTexts = listOf("ConceptDeclaration"), scope = "project")
        }
        val all = runTool(JetBrainsMPSLanguageMcpToolset()) {
            it.mps_mcp_search_concepts(searchTexts = listOf("ConceptDeclaration"), scope = "all")
        }

        val scopedNames = readSearchArray(scoped).map { it.asJsonObject.get("qualifiedName").asString }.toSet()
        val allNames = readSearchArray(all).map { it.asJsonObject.get("qualifiedName").asString }.toSet()
        assertTrue(
            "the fixture must keep both sides under the cap for this comparison to mean anything; " +
                    "scoped=${scopedNames.size} all=${allNames.size}",
            scopedNames.size < JetBrainsMPSLanguageMcpToolset.MAX_STRICT_RESULTS &&
                    allNames.size < JetBrainsMPSLanguageMcpToolset.MAX_STRICT_RESULTS
        )
        assertTrue(
            "scope=project must be a subset of scope=all; extra=${scopedNames - allNames}",
            allNames.containsAll(scopedNames)
        )
    }

    private fun recordFor(results: JsonArray, qualifiedName: String) =
        results.map { it.asJsonObject }.single { it.get("qualifiedName").asString == qualifiedName }

    private fun warningsOf(envelope: com.google.gson.JsonObject): List<String> =
        envelope.get("warnings")?.asJsonArray?.map { it.asString } ?: emptyList()

    /**
     * `mps_mcp_get_concept_details` returns the concept array inline when it fits in
     * `maxInlineBytes` and as a temp-file path otherwise; the base helper accepts both shapes.
     */
    private fun readConceptArrayFromOkPath(response: String): JsonArray = payloadArrayFromOkData(response)

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
