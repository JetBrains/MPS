package jetbrains.mps.agents.mcp.tools

import com.google.gson.JsonParser
import com.intellij.mcpserver.McpToolset
import com.intellij.mcpserver.annotations.McpDescription
import com.intellij.mcpserver.annotations.McpTool
import kotlinx.serialization.json.JsonArray
import kotlinx.serialization.json.JsonElement
import kotlinx.serialization.json.JsonObject
import kotlinx.serialization.json.JsonPrimitive
import kotlinx.serialization.json.jsonPrimitive
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test
import kotlin.reflect.full.declaredFunctions
import kotlin.reflect.full.findAnnotation
import kotlin.reflect.full.valueParameters

/**
 * Wire-shape contract for every top-level MCP parameter that documents a JSON array
 * (study defect D20, remedy M5a).
 *
 * The defect was in the platform's argument binding, not in any MPS tool body:
 * `CallableBridge.call` resolves `serializerOrNull(parameter.type)` per Kotlin parameter and hands
 * it the request's raw [JsonElement], so a parameter declared `String` got `StringSerializer` and
 * died with `IndexOutOfBoundsException: Index -1 out of bounds for length 0` (an empty tag-stack
 * pop in `TaggedDecoder`) the moment a client sent the JSON array its own description promised.
 * No MPS frame was on the stack, so no `try`/`catch` in a toolset could have turned it into an
 * `ok:false` envelope — the parameter's declared *type* is the only lever. Those parameters are
 * now [JsonOrText].
 *
 * Two things are asserted here, and they are equally load-bearing:
 *  1. **The published schema is unchanged.** `JsonOrText` was chosen over the obvious
 *     `kotlinx.serialization.json.JsonElement` precisely because the MCP schema is generated from
 *     the Kotlin type: `JsonElement` emits `{"type":"object","required":[],"properties":{}}`, which
 *     both bloats the per-turn tool listing every session pays for and actively misdescribes a
 *     string parameter. `JsonOrText`'s serializer descriptor is a `PrimitiveKind.STRING`, so the
 *     schema stays `{"type":"string"}`. `every documented-array parameter still publishes a plain
 *     string schema` is the regression gate for that.
 *  2. **Both wire shapes decode, and a plain string is unchanged.** Covered per *binding shape*
 *     rather than per parameter, because the decode is entirely [JsonOrTextSerializer] plus
 *     `KParameter.isOptional` — once the three shapes a converted parameter can have are pinned,
 *     no individual parameter can behave differently:
 *       - required non-null: `search_root_node_by_name.names`, `model_dependency.targetModels`,
 *         `insert_root_node_from_json.json`;
 *       - optional with a non-null default: `get_concept_details.conceptRefs` / `.languageRefs`
 *         (in [JetBrainsMPSLanguageMcpToolsetIntegrationTest]), `search_concepts.searchTexts`;
 *       - nullable optional: `search_root_node_by_name.models`, `create_module.facets`.
 *     The four `scaffold_editor` include-selectors and
 *     `update_root_node_from_json.json` / `insert_console_command_from_json.json` are deliberately
 *     not re-tested here: they share a binding shape with a parameter above and route through the
 *     same `parseNullableStringOrJsonArray` / `readNodeJsonOrFile` call, so a separate case would
 *     assert the serializer twice rather than anything new.
 *
 * **Keep this class registered next to the other node-writing toolset tests in
 * [McpToolsIntegrationTestSuite], not at the end.** Registered last, the two tests that create a
 * `ConceptDeclaration` root fail in fixture setup — `CREATE_CONCEPTS` ends in a bare
 * `UnsupportedOperationException` and name-based concept resolution reaches a null-named
 * declaration node (`MetaAdapterByDeclaration: concept or property is created for a node with
 * name==null`) — while the same fixtures work from this position. That is suite-state degradation
 * across the shared MPS environment, unrelated to [JsonOrText]: the failing calls
 * (`mps_mcp_create_root_node`'s `concept` / `conceptReference`, and the blueprint's `concept`
 * field) are all still plain `String`.
 */
class McpJsonOrTextWireShapeTest : McpIntegrationTestBase() {

    private val conceptDeclarationFqn = "jetbrains.mps.lang.structure.structure.ConceptDeclaration"

    /**
     * Every registered `@McpTool` parameter declared [JsonOrText] or `JsonOrText?`, discovered by
     * reflection rather than hard-coded, so a newly converted parameter is covered automatically
     * and a newly *added* documented-array parameter that was left as `String` shows up in
     * [documented-array parameters are all JsonOrText, never String].
     */
    private fun jsonOrTextParameters(): List<Triple<McpToolset, String, String>> =
        allToolsets().flatMap { toolset ->
            toolset::class.declaredFunctions
                .filter { it.findAnnotation<McpTool>() != null }
                .flatMap { function ->
                    function.valueParameters
                        .filter { it.type.classifier == JsonOrText::class }
                        .map { Triple(toolset, function.name, it.name!!) }
                }
        }

    private fun allToolsets(): List<McpToolset> = listOf(
        JetBrainsMPSLanguageMcpToolset(),
        JetBrainsMPSRootNodeMcpToolset(),
        JetBrainsMPSModelMcpToolset(),
        JetBrainsMPSModuleMcpToolset(),
        JetBrainsMPSEditorMcpToolset(),
        JetBrainsMPSConsoleMcpToolset(),
        JetBrainsMPSNodeMcpToolset(),
        JetBrainsMPSLanguageStructureMcpToolset(),
        JetBrainsMPSJavaMcpToolset(),
        JetBrainsMPSIntentionsMcpToolset(),
        JetBrainsMPSProjectMcpToolset(),
        JetBrainsMPSRunConfigurationMcpToolset(),
    )

    @Test
    fun `every documented-array parameter still publishes a plain string schema`() {
        val converted = jsonOrTextParameters()
        // Lower bound, not an exact count: 15 is what the D20 sweep converted, and a later
        // parameter correctly declared JsonOrText must not fail this test. Shrinking below 15
        // means a conversion was reverted. The real invariant — no String parameter may promise a
        // JSON array — is enforced by `documented-array parameters are all JsonOrText, never
        // String` below, which also covers a revert whose description wording changed too.
        assertTrue(
            "expected at least the 15 parameters converted by the D20 sweep, got " +
                    "${converted.size}: ${converted.map { it.second + "." + it.third }}",
            converted.size >= 15,
        )

        for ((toolset, toolName, parameterName) in converted) {
            val schema = publishedInputSchema(toolset, toolName)
            val property = schema.propertiesSchema[parameterName] as? JsonObject
                ?: error("$toolName.$parameterName is missing from the published schema: ${schema.propertiesSchema}")

            assertEquals(
                "$toolName.$parameterName must still publish {\"type\":\"string\"} — a wider schema is " +
                        "paid by every session's tool listing, and would tell a client not to send a string",
                "string", property.getValue("type").jsonPrimitive.content,
            )
            assertEquals(
                "a JsonOrText parameter must publish exactly type+description, nothing more: $property",
                setOf("type", "description"), property.keys,
            )

            val declared = toolset::class.declaredFunctions
                .single { it.name == toolName && it.findAnnotation<McpTool>() != null }
            val parameter = declared.valueParameters.single { it.name == parameterName }
            assertEquals(
                "$toolName.$parameterName must publish its own @McpDescription verbatim",
                parameter.findAnnotation<McpDescription>()!!.description,
                property.getValue("description").jsonPrimitive.content,
            )
            assertEquals(
                "$toolName.$parameterName must keep its optionality: the bridge only skips an absent " +
                        "argument when the Kotlin parameter isOptional",
                !parameter.isOptional, parameterName in schema.requiredProperties,
            )
        }
    }

    @Test
    fun `documented-array parameters are all JsonOrText, never String`() {
        // Guards against the defect reappearing on a newly added parameter: a `String` parameter
        // whose description promises a JSON array is exactly D20.
        val offenders = mutableListOf<String>()
        for (toolset in allToolsets()) {
            for (function in toolset::class.declaredFunctions.filter { it.findAnnotation<McpTool>() != null }) {
                for (parameter in function.valueParameters) {
                    if (parameter.type.classifier != String::class) continue
                    val description = parameter.findAnnotation<McpDescription>()?.description ?: continue
                    val promisesArray = description.contains("JSON array", ignoreCase = true) ||
                            description.contains("JSON-array", ignoreCase = true) ||
                            description.contains("array of", ignoreCase = true) ||
                            description.contains("[\"")
                    if (promisesArray) offenders.add("${function.name}.${parameter.name}")
                }
            }
        }
        assertTrue(
            "these parameters promise a JSON array but are declared String, so a client that sends " +
                    "one crashes the platform's argument decoder (D20) — declare them JsonOrText: $offenders",
            offenders.isEmpty(),
        )
    }

    // ── required non-null parameters ──────────────────────────────────────────────────────

    /**
     * Creates a named `ConceptDeclaration` root directly, rather than through `CREATE_CONCEPTS`,
     * whose build step this class does not need — nothing here reads a compiled runtime
     * descriptor, and the build is what made the fixture fragile when this class was registered
     * at the end of the suite (see the class comment).
     */
    private fun createNamedRoot(name: String) {
        val response = runTool(JetBrainsMPSRootNodeMcpToolset()) {
            it.mps_mcp_create_root_node(
                modelReference = structureModelRef,
                concept = conceptDeclarationFqn,
                conceptReference = null,
                name = name,
            )
        }
        assertEquals("creating the fixture root must succeed: $response", name, expectOk(response).get("name").asString)
    }

    @Test
    fun `search-root-node-by-name accepts names as a real JSON array`() {
        createNamedRoot("WireShapeAlpha")
        createNamedRoot("WireShapeBeta")

        fun found(names: JsonElement, extra: Map<String, JsonElement> = emptyMap()): Set<String> =
            parseDataArray(
                callThroughBridge(
                    JetBrainsMPSRootNodeMcpToolset(),
                    "mps_mcp_search_root_node_by_name",
                    mapOf("names" to names) + extra,
                )
            ).map { parseDataObject(it).get("name").asString }.toSet()

        val expected = setOf("WireShapeAlpha", "WireShapeBeta")
        assertEquals(
            "the array-as-string shape must keep working",
            expected, found(JsonPrimitive("""["WireShapeAlpha","WireShapeBeta"]""")),
        )
        assertEquals(
            "a real JSON array must resolve",
            expected,
            found(JsonArray(listOf(JsonPrimitive("WireShapeAlpha"), JsonPrimitive("WireShapeBeta")))),
        )
        assertEquals(
            "a single bare name must stay unchanged",
            setOf("WireShapeAlpha"), found(JsonPrimitive("WireShapeAlpha")),
        )
        // `models` is the nullable-optional shape, exercised alongside a real-array `names`.
        assertEquals(
            "a real JSON array in the nullable models selector must resolve",
            expected,
            found(
                JsonArray(listOf(JsonPrimitive("WireShapeAlpha"), JsonPrimitive("WireShapeBeta"))),
                mapOf(
                    "scope" to JsonPrimitive("models"),
                    "models" to JsonArray(listOf(JsonPrimitive(structureModelRef))),
                ),
            ),
        )
    }

    @Test
    fun `model-dependency accepts targetModels as a real JSON array`() {
        val solution = createSolution()
        val source = createModel(solution, "wire.shape.source${System.nanoTime()}")
        val firstTarget = createModel(solution, "wire.shape.target.a${System.nanoTime()}")
        val secondTarget = createModel(solution, "wire.shape.target.b${System.nanoTime()}")

        val args = mapOf(
            "modelReference" to JsonPrimitive(modelRefOf(source)),
            "targetModels" to JsonArray(
                listOf(JsonPrimitive(modelRefOf(firstTarget)), JsonPrimitive(modelRefOf(secondTarget))),
            ),
        )
        val response = callThroughBridge(JetBrainsMPSModelMcpToolset(), "mps_mcp_model_dependency", args)
        assertEquals(
            "both targets of a real JSON array must be imported: $response",
            2, expectOk(response).get("added").asInt,
        )

        // A second identical ADD proves the imports really landed (the tool reports an existing
        // import as alreadyPresent), without reaching for SModelInternal from the test.
        val again = callThroughBridge(JetBrainsMPSModelMcpToolset(), "mps_mcp_model_dependency", args)
        assertEquals(
            "re-adding the same real JSON array must be a no-op for both entries: $again",
            2, expectOk(again).get("alreadyPresent").asInt,
        )
    }

    @Test
    fun `insert-root-node-from-json accepts a real top-level JSON array of blueprints`() {
        fun blueprint(name: String): JsonObject = JsonObject(
            mapOf(
                "concept" to JsonPrimitive(conceptDeclarationFqn),
                "properties" to JsonArray(
                    listOf(
                        JsonObject(
                            mapOf("name" to JsonPrimitive("name"), "value" to JsonPrimitive(name)),
                        )
                    )
                ),
            )
        )

        val response = callThroughBridge(
            JetBrainsMPSRootNodeMcpToolset(),
            "mps_mcp_insert_root_node_from_json",
            mapOf(
                "modelReference" to JsonPrimitive(structureModelRef),
                "json" to JsonArray(listOf(blueprint("WireArrayA"), blueprint("WireArrayB"))),
                "dryRun" to JsonPrimitive(false),
            ),
        )

        // Under 10 roots the tool answers `responseDetail=full`, i.e. one node envelope per root
        // rather than the `{inserted, roots}` summary.
        val inserted = parseDataArray(response).map { parseDataObject(it).get("name").asString }
        assertEquals("a real top-level array must insert both roots: $response", listOf("WireArrayA", "WireArrayB"), inserted)
        readOnRepo {
            val present = structureModel.rootNodes.mapNotNull { it.name }.toSet()
            assertTrue("both roots must exist: $present", present.containsAll(setOf("WireArrayA", "WireArrayB")))
        }
    }

    // ── optional parameter with a non-null default ────────────────────────────────────────

    @Test
    fun `search-concepts accepts searchTexts as a real JSON array`() {
        fun names(searchTexts: JsonElement): Set<String> =
            payloadArrayFromOkData(
                callThroughBridge(
                    JetBrainsMPSLanguageMcpToolset(),
                    "mps_mcp_search_concepts",
                    mapOf("searchTexts" to searchTexts),
                )
            ).map { it.asJsonObject.get("qualifiedName").asString }.toSet()

        assertTrue(
            "a real JSON array must search",
            conceptDeclarationFqn in names(JsonArray(listOf(JsonPrimitive("ConceptDeclaration")))),
        )
        assertTrue(
            "the array-as-string shape must keep working",
            conceptDeclarationFqn in names(JsonPrimitive("""["ConceptDeclaration"]""")),
        )
        assertTrue(
            "a single bare term must stay unchanged",
            conceptDeclarationFqn in names(JsonPrimitive("ConceptDeclaration")),
        )
    }

    // ── nullable optional parameter ───────────────────────────────────────────────────────

    @Test
    fun `create-module accepts facets as a real JSON array and treats an omitted facets as before`() {
        val withFacets = "wire.shape.facets${System.nanoTime()}"
        val response = callThroughBridge(
            JetBrainsMPSModuleMcpToolset(),
            "mps_mcp_create_module",
            mapOf(
                "type" to JsonPrimitive("solution"),
                "name" to JsonPrimitive(withFacets),
                "directory" to JsonPrimitive(freshPathInProject(withFacets)),
                "facets" to JsonArray(listOf(JsonPrimitive("tests"))),
            ),
        )
        val facets = expectOk(response).getAsJsonArray("facets").map { it.asString }.toSet()
        assertTrue("a real JSON array of facet types must be attached: $response", "tests" in facets)

        val withoutFacets = "wire.shape.nofacets${System.nanoTime()}"
        val plain = callThroughBridge(
            JetBrainsMPSModuleMcpToolset(),
            "mps_mcp_create_module",
            mapOf(
                "type" to JsonPrimitive("solution"),
                "name" to JsonPrimitive(withoutFacets),
                "directory" to JsonPrimitive(freshPathInProject(withoutFacets)),
            ),
        )
        assertFalse(
            "an omitted nullable selector must still mean \"no extra facets\": $plain",
            "tests" in expectOk(plain).getAsJsonArray("facets").map { it.asString }.toSet(),
        )
    }

    // ── malformed values ─────────────────────────────────────────────────────────────────

    @Test
    fun `a malformed JSON value yields an ok false envelope instead of an exception`() {
        // Every shape here used to be unreachable: the request died in the platform's decoder. The
        // tool body now receives the value's JSON text, which `parseStringOrJsonArray` degrades to
        // a single bare ref, so each one lands on the ordinary unresolved-ref envelope.
        val malformed = mapOf(
            "an array of objects" to JsonArray(listOf(JsonObject(mapOf("a" to JsonPrimitive(1))))),
            "a JSON object" to JsonObject(mapOf("conceptRef" to JsonPrimitive("BaseConcept"))),
            "a number" to JsonPrimitive(7),
            "a boolean" to JsonPrimitive(true),
            "a nested array" to JsonArray(listOf(JsonArray(listOf(JsonPrimitive("x"))))),
        )

        for ((label, value) in malformed) {
            val response = callThroughBridge(
                JetBrainsMPSLanguageMcpToolset(),
                "mps_mcp_get_concept_details",
                mapOf("conceptRefs" to value),
            )
            val envelope = JsonParser.parseString(response).asJsonObject
            assertFalse("$label must not resolve: $response", envelope.get("ok").asBoolean)
            assertEquals(
                "$label must produce a classified envelope, never a raw exception",
                "NOT_FOUND", envelope.get("code").asString,
            )
            assertTrue(
                "$label must still report the input back as an unresolved ref: $response",
                envelope.getAsJsonObject("details").getAsJsonArray("unresolved").size() > 0,
            )
        }
    }

    @Test
    fun `an explicit JSON null is treated as an omitted value`() {
        // The nullable wrapper intercepts null before JsonOrTextSerializer for `JsonOrText?`, and
        // JsonOrTextSerializer maps it to the empty string for a non-null JsonOrText, so both
        // behave exactly like an absent argument.
        val nullableOmitted = callThroughBridge(
            JetBrainsMPSRootNodeMcpToolset(),
            "mps_mcp_search_root_node_by_name",
            mapOf(
                "names" to JsonPrimitive("DefinitelyNotAnExistingRootName"),
                "models" to kotlinx.serialization.json.JsonNull,
            ),
        )
        assertEquals(
            "an explicit null in a nullable selector must behave as omitted (default scope), not error: $nullableOmitted",
            0, parseDataArray(nullableOmitted).size(),
        )

        val nonNullOmitted = callThroughBridge(
            JetBrainsMPSLanguageMcpToolset(),
            "mps_mcp_get_concept_details",
            mapOf("conceptRefs" to kotlinx.serialization.json.JsonNull),
        )
        val envelope = JsonParser.parseString(nonNullOmitted).asJsonObject
        assertFalse("no refs at all must be rejected: $nonNullOmitted", envelope.get("ok").asBoolean)
        assertTrue(
            "an explicit null must take the empty-input path, i.e. the same message as an omitted " +
                    "conceptRefs: $nonNullOmitted",
            envelope.get("error").asString.contains("No concepts nor languages have been provided"),
        )
    }
}
