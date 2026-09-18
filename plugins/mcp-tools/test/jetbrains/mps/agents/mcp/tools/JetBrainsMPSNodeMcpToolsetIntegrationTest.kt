package jetbrains.mps.agents.mcp.tools

import com.google.gson.JsonElement
import com.google.gson.JsonNull
import com.google.gson.JsonObject
import com.google.gson.JsonParser
import org.jetbrains.mps.openapi.model.SNode
import org.jetbrains.mps.openapi.persistence.PersistenceFacade
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * End-to-end integration tests for [JetBrainsMPSNodeMcpToolset].
 *
 * Covers:
 *  - `mps_mcp_query_nodes(FIND_USAGES)`: a `Base`/`Derived` concept pair routed through
 *    the structure toolset so the `extends` reference is wired by the same code paths users
 *    hit at runtime; we then ask find-usages for `Base` and assert that `Derived` shows up.
 *  - `mps_mcp_query_nodes(FIND_INSTANCES)`: the canonical home of instance search (moved here
 *    from the structure toolset), including the `propertyFilter` narrowing.
 */
class JetBrainsMPSNodeMcpToolsetIntegrationTest : McpIntegrationTestBase() {

    @Test
    fun `find-usages with null scope defaults to editable and returns the usage`() {
        val createParams = """
            {
              "structureModelRef": "$structureModelRef",
              "conceptsJson": [
                { "name": "Base" },
                { "name": "Derived", "extends": "Base" }
              ]
            }
        """.trimIndent()

        val createResponse = runTool { toolset ->
            toolset.mps_mcp_alter_structure(MPSStructureAlterOperation.CREATE_CONCEPTS, createParams)
        }
        assertOk(createResponse)

        val baseRef = readOnRepo {
            val base = structureModel.rootNodes.single { it.name == "Base" }
            PersistenceFacade.getInstance().asString(base.reference)
        }

        val findParams = """
            {
              "nodeReference": "$baseRef",
              "scope": null
            }
        """.trimIndent()

        val findResponse = runTool(JetBrainsMPSNodeMcpToolset()) {
            it.mps_mcp_query_nodes(MPSQueryOperation.FIND_USAGES, findParams)
        }

        val obj = JsonParser.parseString(findResponse).asJsonObject
        assertTrue("expected ok envelope: $findResponse", obj.get("ok").asBoolean)
        val data = obj.get("data")
        assertNotNull("ok envelope must carry data: $findResponse", data)
        // The envelope wraps a JSON-array string in `data` (okJson(String)). Parse it.
        val rawData = if (data.isJsonPrimitive) data.asString else data.toString()
        val results = JsonParser.parseString(rawData).asJsonArray
        val resultNames = results.map { it.asJsonObject.get("name").asString }.toSet()
        assertEquals(
            "find-usages on Base in this fixture should report exactly the Derived subconcept; got=$resultNames",
            setOf("Derived"),
            resultNames
        )
    }

    @Test
    fun `find-instances scoped to one model returns the nodes of the concept`() {
        createAlphaBetaGamma()

        val findParams = """
            {
              "conceptRef": "jetbrains.mps.lang.structure.structure.ConceptDeclaration",
              "scope": "models",
              "models": [ "$structureModelRef" ]
            }
        """.trimIndent()

        val response = runTool(JetBrainsMPSNodeMcpToolset()) {
            it.mps_mcp_query_nodes(MPSQueryOperation.FIND_INSTANCES, findParams)
        }

        assertEquals(
            "find-instances scoped to the test structure model should return exactly the three new concepts",
            setOf("Alpha", "Beta", "Gamma"),
            parseResultNames(response)
        )
    }

    @Test
    fun `find-instances with propertyFilter returns only nodes whose property matches`() {
        createAlphaBetaGamma()

        val findParams = """
            {
              "conceptRef": "jetbrains.mps.lang.structure.structure.ConceptDeclaration",
              "scope": "models",
              "models": [ "$structureModelRef" ],
              "propertyFilter": { "name": "name", "value": "Beta" }
            }
        """.trimIndent()

        val response = runTool(JetBrainsMPSNodeMcpToolset()) {
            it.mps_mcp_query_nodes(MPSQueryOperation.FIND_INSTANCES, findParams)
        }

        assertEquals(
            "propertyFilter name=Beta should narrow the result to the single matching concept",
            setOf("Beta"),
            parseResultNames(response)
        )
    }

    @Test
    fun `find-instances null scope matches omitted and explicit editable by node identity`() {
        val uniqueName = "ScopeDefault_${System.nanoTime()}"
        val createParams = """
            {
              "structureModelRef": "$structureModelRef",
              "conceptsJson": [ { "name": "$uniqueName" } ]
            }
        """.trimIndent()
        assertOk(runTool { it.mps_mcp_alter_structure(MPSStructureAlterOperation.CREATE_CONCEPTS, createParams) })
        val createdRef = readOnRepo {
            val created = structureModel.rootNodes.single { it.name == uniqueName }
            PersistenceFacade.getInstance().asString(created.reference)
        }

        val variants = listOf(
            "omitted" to JsonObject(),
            "null" to JsonObject().apply { add("scope", JsonNull.INSTANCE) },
            "editable" to JsonObject().apply { addProperty("scope", "editable") },
        )
        for ((label, params) in variants) {
            params.addProperty("conceptRef", "jetbrains.mps.lang.structure.structure.ConceptDeclaration")
            params.add("propertyFilter", JsonObject().apply {
                addProperty("name", "name")
                addProperty("value", uniqueName)
            })
            val response = runTool(JetBrainsMPSNodeMcpToolset()) {
                it.mps_mcp_query_nodes(MPSQueryOperation.FIND_INSTANCES, params.toString())
            }
            assertEquals(
                "$label scope must select exactly the created node",
                setOf(createdRef),
                parseResultReferences(response),
            )
        }
    }

    @Test
    fun `required string null follows the existing missing-parameter path`() {
        val response = runTool(JetBrainsMPSNodeMcpToolset()) {
            it.mps_mcp_query_nodes(MPSQueryOperation.GET_PARENT, """{"nodeReference":null}""")
        }
        val envelope = JsonParser.parseString(response).asJsonObject
        assertFalse("expected error envelope: $response", envelope.get("ok").asBoolean)
        assertEquals("Parameter 'nodeReference' is missing", envelope.get("error").asString)
    }

    @Test
    fun `non-null string coercion and failure envelopes remain compatible`() {
        for (nodeReference in listOf("42", "[42]")) {
            val response = runTool(JetBrainsMPSNodeMcpToolset()) {
                it.mps_mcp_query_nodes(MPSQueryOperation.GET_PARENT, """{"nodeReference":$nodeReference}""")
            }
            val envelope = JsonParser.parseString(response).asJsonObject
            assertFalse("expected error envelope: $response", envelope.get("ok").asBoolean)
            assertEquals("NOT_FOUND", envelope.get("code").asString)
            assertTrue("coerced reference must remain visible: $response", envelope.get("error").asString.contains("42"))
        }

        val response = runTool(JetBrainsMPSNodeMcpToolset()) {
            it.mps_mcp_query_nodes(MPSQueryOperation.GET_PARENT, """{"nodeReference":{}}""")
        }
        val envelope = JsonParser.parseString(response).asJsonObject
        assertFalse("expected error envelope: $response", envelope.get("ok").asBoolean)
        assertEquals("INTERNAL_ERROR", envelope.get("code").asString)
    }

    @Test
    fun `find-instances treats an explicit null propertyFilter as no filter`() {
        createAlphaBetaGamma()

        val findParams = """
            {
              "conceptRef": "jetbrains.mps.lang.structure.structure.ConceptDeclaration",
              "scope": "models",
              "models": [ "$structureModelRef" ],
              "propertyFilter": null
            }
        """.trimIndent()

        val response = runTool(JetBrainsMPSNodeMcpToolset()) {
            it.mps_mcp_query_nodes(MPSQueryOperation.FIND_INSTANCES, findParams)
        }

        assertEquals(
            "an explicit JSON null propertyFilter must mean 'no filter', not INVALID_REQUEST",
            setOf("Alpha", "Beta", "Gamma"),
            parseResultNames(response)
        )
    }

    @Test
    fun `find-instances rejects a malformed propertyFilter`() {
        val findParams = """
            {
              "conceptRef": "jetbrains.mps.lang.structure.structure.ConceptDeclaration",
              "propertyFilter": { "name": "name" }
            }
        """.trimIndent()

        val response = runTool(JetBrainsMPSNodeMcpToolset()) {
            it.mps_mcp_query_nodes(MPSQueryOperation.FIND_INSTANCES, findParams)
        }

        val obj = JsonParser.parseString(response).asJsonObject
        assertFalse("propertyFilter without 'value' must be rejected: $response", obj.get("ok").asBoolean)
    }

    @Test
    fun `find-instances rejects a partially resolved model scope`() {
        val findParams = """
            {
              "conceptRef": "jetbrains.mps.lang.structure.structure.ConceptDeclaration",
              "scope": "models",
              "models": [ "$structureModelRef", "definitely.missing.model" ]
            }
        """.trimIndent()

        val response = runTool(JetBrainsMPSNodeMcpToolset()) {
            it.mps_mcp_query_nodes(MPSQueryOperation.FIND_INSTANCES, findParams)
        }
        assertInvalidRequest(response, "models", "definitely.missing.model")
    }

    @Test
    fun `find-usages rejects a partially resolved module scope`() {
        val targetRef = createConceptRoot("PartialUsageTarget")
        val moduleRef = readOnRepo { PersistenceFacade.getInstance().asString(language.moduleReference) }
        val findParams = """
            {
              "nodeReference": "$targetRef",
              "scope": "modules",
              "modules": [ "$moduleRef", "definitely.missing.module" ]
            }
        """.trimIndent()

        val response = runTool(JetBrainsMPSNodeMcpToolset()) {
            it.mps_mcp_query_nodes(MPSQueryOperation.FIND_USAGES, findParams)
        }
        assertInvalidRequest(response, "modules", "definitely.missing.module")
    }

    @Test
    fun `scope validation errors do not escape the background read action`() {
        val rootRef = createConceptRoot("ScopeLogTarget")
        val conceptReference = readOnRepo {
            val facade = PersistenceFacade.getInstance()
            val root = facade.createNodeReference(rootRef).resolve(myProject.repository)
                ?: error("test root did not resolve")
            facade.asString(root.concept)
        }
        val malformedParams = listOf(
            """
                {
                  "conceptRef": "jetbrains.mps.lang.structure.structure.ConceptDeclaration",
                  "scope": "models",
                  "models": { "ref": "$structureModelRef" }
                }
            """.trimIndent() to "models",
            """
                {
                  "conceptRef": "jetbrains.mps.lang.structure.structure.ConceptDeclaration",
                  "scope": "roots",
                  "roots": [ "$conceptReference" ]
                }
            """.trimIndent() to "roots",
        )

        for ((params, expectedParameter) in malformedParams) {
            val (response, messages) = captureLogMessages {
                runTool(JetBrainsMPSNodeMcpToolset()) {
                    it.mps_mcp_query_nodes(MPSQueryOperation.FIND_INSTANCES, params)
                }
            }
            assertInvalidRequest(response, expectedParameter)
            assertTrue(
                "scope validation must not log an action-dispatch failure: $messages",
                messages.none { it.contains("Action dispatch failed") || it.contains("Unexpected failure in MCP tool") },
            )
        }
    }

    /** Three fresh ConceptDeclaration roots in the test's structure model. */
    private fun createAlphaBetaGamma() {
        val createParams = """
            {
              "structureModelRef": "$structureModelRef",
              "conceptsJson": [
                { "name": "Alpha" },
                { "name": "Beta" },
                { "name": "Gamma" }
              ]
            }
        """.trimIndent()
        assertOk(runTool { it.mps_mcp_alter_structure(MPSStructureAlterOperation.CREATE_CONCEPTS, createParams) })
    }

    /** Parses an ok envelope whose `data` is a JSON-array string and returns the result names. */
    private fun parseResultNames(response: String): Set<String> {
        val obj = JsonParser.parseString(response).asJsonObject
        assertTrue("expected ok envelope: $response", obj.get("ok").asBoolean)
        val data = obj.get("data")
        val rawData = if (data.isJsonPrimitive) data.asString else data.toString()
        return JsonParser.parseString(rawData).asJsonArray.map { it.asJsonObject.get("name").asString }.toSet()
    }

    /** Parses an ok envelope whose `data` is a JSON-array string and returns the result references. */
    private fun parseResultReferences(response: String): Set<String> {
        val obj = JsonParser.parseString(response).asJsonObject
        assertTrue("expected ok envelope: $response", obj.get("ok").asBoolean)
        val data = obj.get("data")
        val rawData = if (data.isJsonPrimitive) data.asString else data.toString()
        return JsonParser.parseString(rawData).asJsonArray
            .map { it.asJsonObject.get("reference").asString }
            .toSet()
    }

    private fun assertInvalidRequest(response: String, vararg expectedText: String) {
        val envelope = JsonParser.parseString(response).asJsonObject
        assertFalse("expected error envelope: $response", envelope.get("ok").asBoolean)
        assertEquals("INVALID_REQUEST", envelope.get("code").asString)
        val error = envelope.get("error").asString
        for (text in expectedText) {
            assertTrue("error must name '$text': $response", error.contains(text))
        }
        assertFalse("scope errors must not return warnings: $response", envelope.has("warnings"))
    }

    // ── FIND_INSTANCES `conceptRefs` + `detail:"count"` (study remedy M1) ───────────────────
    //
    // The counting fixture leans on the structure language's own concept hierarchy so that the
    // requested set genuinely overlaps: `ConceptDeclaration` and `InterfaceConceptDeclaration`
    // are both subconcepts of the abstract `AbstractConceptDeclaration`. A wrong count cannot be
    // detected by anything downstream, so each test below pins one specific way of getting it
    // wrong rather than just the happy path.

    @Test
    fun `find-instances count reports one row per requested concept in input order`() {
        createCountFixture()

        val response = countResponse(
            """[ "$INTERFACE_CONCEPT_DECL", "$CONCEPT_DECL", "$ENUMERATION_DECL" ]"""
        )

        assertEquals(
            "rows must mirror the request, including a zero row for a concept with no instances",
            listOf(INTERFACE_CONCEPT_DECL to 1, CONCEPT_DECL to 3, ENUMERATION_DECL to 0),
            countRows(response),
        )
        for (row in parseDataArray(response)) {
            assertTrue(
                "every row must carry the concept's persistent reference: $row",
                row.asJsonObject.get("conceptReference").asString.startsWith("c:"),
            )
        }
    }

    @Test
    fun `find-instances count counts a subconcept instance for its requested superconcept`() {
        createCountFixture()

        val rows = countRows(
            countResponse("""[ "$CONCEPT_DECL", "$ABSTRACT_CONCEPT_DECL", "$INTERFACE_CONCEPT_DECL" ]""")
        )

        // The fixture holds 4 declaration roots: Alpha/Beta/Gamma plus the IMarker interface.
        // AbstractConceptDeclaration has no direct instances, so its 4 are entirely subconcept
        // instances — and the rows sum to 8 over 4 distinct nodes, which is the documented overlap.
        assertEquals(
            listOf(CONCEPT_DECL to 3, ABSTRACT_CONCEPT_DECL to 4, INTERFACE_CONCEPT_DECL to 1),
            rows,
        )
        assertEquals("overlapping rows must not be expected to sum to a node total", 8, rows.sumOf { it.second })
    }

    @Test
    fun `find-instances count agrees with the node list of the same query`() {
        createCountFixture()

        for (conceptRef in listOf(CONCEPT_DECL, ABSTRACT_CONCEPT_DECL, INTERFACE_CONCEPT_DECL)) {
            val nodes = parseResultReferences(
                runTool(JetBrainsMPSNodeMcpToolset()) {
                    it.mps_mcp_query_nodes(MPSQueryOperation.FIND_INSTANCES, findParams(""""$conceptRef""""))
                }
            )
            assertEquals(
                "the count of '$conceptRef' must equal the number of nodes the same query returns",
                nodes.size,
                countRows(countResponse(""""$conceptRef"""")).single().second,
            )
        }
    }

    @Test
    fun `find-instances count with exact excludes subconcept instances`() {
        createCountFixture()

        assertEquals(
            "exact:true must drop the subconcept instances an abstract concept has no others of",
            listOf(ABSTRACT_CONCEPT_DECL to 0, CONCEPT_DECL to 3),
            countRows(countResponse("""[ "$ABSTRACT_CONCEPT_DECL", "$CONCEPT_DECL" ]""", extra = ""","exact": true""")),
        )
        assertEquals(
            "exact:false is the default and keeps them",
            listOf(ABSTRACT_CONCEPT_DECL to 4, CONCEPT_DECL to 3),
            countRows(countResponse("""[ "$ABSTRACT_CONCEPT_DECL", "$CONCEPT_DECL" ]""")),
        )
    }

    @Test
    fun `find-instances count of one concept is unchanged by batching others alongside it`() {
        createCountFixture()

        // Guards the two ways batching could corrupt a count: a node reported once per matching
        // concept being tallied more than once, and one concept's index coverage deciding whether
        // another concept gets the fallback walk.
        val alone = countRows(countResponse(""""$ABSTRACT_CONCEPT_DECL""""))
        val batched = countRows(
            countResponse("""[ "$CONCEPT_DECL", "$ABSTRACT_CONCEPT_DECL", "$ENUMERATION_DECL" ]""")
        )

        assertEquals(listOf(ABSTRACT_CONCEPT_DECL to 4), alone)
        assertEquals(alone.single(), batched.single { it.first == ABSTRACT_CONCEPT_DECL })
    }

    @Test
    fun `find-instances count keeps a row per repeated reference`() {
        createCountFixture()

        assertEquals(
            "a repeated reference keeps its own row and is not counted twice into one",
            listOf(CONCEPT_DECL to 3, CONCEPT_DECL to 3),
            countRows(countResponse("""[ "$CONCEPT_DECL", "$CONCEPT_DECL" ]""")),
        )
    }

    @Test
    fun `find-instances count honours propertyFilter`() {
        createCountFixture()

        assertEquals(
            listOf(CONCEPT_DECL to 1, ABSTRACT_CONCEPT_DECL to 1),
            countRows(
                countResponse(
                    """[ "$CONCEPT_DECL", "$ABSTRACT_CONCEPT_DECL" ]""",
                    extra = ""","propertyFilter": { "name": "name", "value": "Beta" }""",
                )
            ),
        )
    }

    @Test
    fun `find-instances accepts several conceptRefs as the union of their instances`() {
        createCountFixture()

        val response = runTool(JetBrainsMPSNodeMcpToolset()) {
            it.mps_mcp_query_nodes(
                MPSQueryOperation.FIND_INSTANCES,
                findParams("""[ "$CONCEPT_DECL", "$INTERFACE_CONCEPT_DECL" ]"""),
            )
        }

        assertEquals(setOf("Alpha", "Beta", "Gamma", "IMarker"), parseResultNames(response))
    }

    @Test
    fun `find-instances conceptRefs accepts a single reference as well as an array`() {
        createCountFixture()

        assertEquals(setOf("Alpha", "Beta", "Gamma"), parseResultNames(
            runTool(JetBrainsMPSNodeMcpToolset()) {
                it.mps_mcp_query_nodes(MPSQueryOperation.FIND_INSTANCES, findParams(""""$CONCEPT_DECL""""))
            }
        ))
    }

    @Test
    fun `find-instances rejects conceptRefs together with either singular spelling`() {
        for (singular in listOf("conceptRef", "conceptReference")) {
            val response = runTool(JetBrainsMPSNodeMcpToolset()) {
                it.mps_mcp_query_nodes(
                    MPSQueryOperation.FIND_INSTANCES,
                    """{ "conceptRefs": [ "$CONCEPT_DECL" ], "$singular": "$CONCEPT_DECL" }""",
                )
            }
            assertInvalidRequest(response, "'conceptRefs'", "'$singular'", "Keep 'conceptRefs'")
        }
    }

    @Test
    fun `find-instances names both concept selectors when neither is given`() {
        val response = runTool(JetBrainsMPSNodeMcpToolset()) {
            it.mps_mcp_query_nodes(MPSQueryOperation.FIND_INSTANCES, """{ "scope": "editable" }""")
        }
        assertInvalidRequest(response, "'conceptRef'", "'conceptRefs'")
    }

    @Test
    fun `find-instances rejects an empty conceptRefs array`() {
        val response = runTool(JetBrainsMPSNodeMcpToolset()) {
            it.mps_mcp_query_nodes(MPSQueryOperation.FIND_INSTANCES, """{ "conceptRefs": [] }""")
        }
        assertInvalidRequest(response, "conceptRefs", "nonempty array")
    }

    @Test
    fun `find-instances rejects detail count together with sampleOnly`() {
        val response = runTool(JetBrainsMPSNodeMcpToolset()) {
            it.mps_mcp_query_nodes(
                MPSQueryOperation.FIND_INSTANCES,
                """{ "conceptRef": "$CONCEPT_DECL", "detail": "count", "sampleOnly": true }""",
            )
        }
        assertInvalidRequest(response, "sampleOnly")
    }

    @Test
    fun `find-instances rejects an unknown detail value`() {
        val response = runTool(JetBrainsMPSNodeMcpToolset()) {
            it.mps_mcp_query_nodes(
                MPSQueryOperation.FIND_INSTANCES,
                """{ "conceptRef": "$CONCEPT_DECL", "detail": "counts" }""",
            )
        }
        assertInvalidRequest(response, "Invalid detail 'counts'", "nodes", "count")
    }

    @Test
    fun `find-instances count rejects an unresolvable concept without dropping the row`() {
        createCountFixture()

        val response = runTool(JetBrainsMPSNodeMcpToolset()) {
            it.mps_mcp_query_nodes(
                MPSQueryOperation.FIND_INSTANCES,
                findParams("""[ "$CONCEPT_DECL", "definitely.missing.structure.Nope" ]""", ""","detail": "count""""),
            )
        }
        val envelope = JsonParser.parseString(response).asJsonObject
        assertFalse("one unresolvable concept must reject the whole query: $response", envelope.get("ok").asBoolean)
        assertEquals("NOT_FOUND", envelope.get("code").asString)
        assertTrue(envelope.get("error").asString.contains("definitely.missing.structure.Nope"))
    }

    @Test
    fun `find-instances with rootsOnly true returns only root nodes and excludes child nodes on mixed-depth concept`() {
        createColorEnum()

        val withoutRootsOnly = runTool(JetBrainsMPSNodeMcpToolset()) {
            it.mps_mcp_query_nodes(
                MPSQueryOperation.FIND_INSTANCES,
                findParams(""""$INAMED_CONCEPT""""),
            )
        }
        val withRootsOnly = runTool(JetBrainsMPSNodeMcpToolset()) {
            it.mps_mcp_query_nodes(
                MPSQueryOperation.FIND_INSTANCES,
                findParams(""""$INAMED_CONCEPT"""", extra = ""","rootsOnly": true"""),
            )
        }

        val allNames = parseResultNames(withoutRootsOnly)
        assertTrue("without rootsOnly must include root enum 'Color': $allNames", allNames.contains("Color"))
        assertTrue("without rootsOnly must include child members: $allNames", allNames.containsAll(setOf("RED", "GREEN", "BLUE")))

        val rootNames = parseResultNames(withRootsOnly)
        assertTrue("with rootsOnly must include root enum 'Color': $rootNames", rootNames.contains("Color"))
        assertFalse("with rootsOnly must exclude child member RED: $rootNames", rootNames.contains("RED"))
        assertFalse("with rootsOnly must exclude child member GREEN: $rootNames", rootNames.contains("GREEN"))
        assertFalse("with rootsOnly must exclude child member BLUE: $rootNames", rootNames.contains("BLUE"))

        readOnRepo {
            val rootRefs = parseResultReferences(withRootsOnly)
            for (refStr in rootRefs) {
                val node = PersistenceFacade.getInstance().createNodeReference(refStr).resolve(structureModel.repository)
                assertNotNull("root node should resolve", node)
                assertNull("node '${node?.name}' must be a root node (parent == null)", node?.parent)
            }
        }
    }

    @Test
    fun `find-instances with rootsOnly true filters out child nodes for child concepts`() {
        createColorEnum()
        val memberConcept = ENUMERATION_MEMBER_DECL

        val withoutRootsOnly = runTool(JetBrainsMPSNodeMcpToolset()) {
            it.mps_mcp_query_nodes(
                MPSQueryOperation.FIND_INSTANCES,
                findParams(""""$memberConcept""""),
            )
        }
        val explicitFalse = runTool(JetBrainsMPSNodeMcpToolset()) {
            it.mps_mcp_query_nodes(
                MPSQueryOperation.FIND_INSTANCES,
                findParams(""""$memberConcept"""", extra = ""","rootsOnly": false"""),
            )
        }
        val explicitNull = runTool(JetBrainsMPSNodeMcpToolset()) {
            it.mps_mcp_query_nodes(
                MPSQueryOperation.FIND_INSTANCES,
                findParams(""""$memberConcept"""", extra = ""","rootsOnly": null"""),
            )
        }
        val withRootsOnly = runTool(JetBrainsMPSNodeMcpToolset()) {
            it.mps_mcp_query_nodes(
                MPSQueryOperation.FIND_INSTANCES,
                findParams(""""$memberConcept"""", extra = ""","rootsOnly": true"""),
            )
        }

        assertEquals(setOf("RED", "GREEN", "BLUE"), parseResultNames(withoutRootsOnly))
        assertEquals(setOf("RED", "GREEN", "BLUE"), parseResultNames(explicitFalse))
        assertEquals(setOf("RED", "GREEN", "BLUE"), parseResultNames(explicitNull))
        assertEquals(emptySet<String>(), parseResultNames(withRootsOnly))
    }

    @Test
    fun `find-instances count with rootsOnly true counts only root nodes`() {
        createColorEnum()
        val memberConcept = ENUMERATION_MEMBER_DECL

        val rowsWithoutRootsOnly = countRows(countResponse("""[ "$ENUMERATION_DECL", "$memberConcept" ]"""))
        assertEquals(listOf(ENUMERATION_DECL to 1, memberConcept to 3), rowsWithoutRootsOnly)

        val rowsWithRootsOnly = countRows(countResponse("""[ "$ENUMERATION_DECL", "$memberConcept" ]""", extra = ""","rootsOnly": true"""))
        assertEquals(listOf(ENUMERATION_DECL to 1, memberConcept to 0), rowsWithRootsOnly)
    }

    @Test
    fun `find-instances with rootsOnly true composes with all valid scopes`() {
        val uniqueName = "RootsOnlyScope_${System.nanoTime()}"
        val createParams = """
            {
              "structureModelRef": "$structureModelRef",
              "conceptsJson": [ { "name": "$uniqueName" } ]
            }
        """.trimIndent()
        assertOk(runTool { it.mps_mcp_alter_structure(MPSStructureAlterOperation.CREATE_CONCEPTS, createParams) })
        val moduleRef = readOnRepo { PersistenceFacade.getInstance().asString(language.moduleReference) }

        val modelsScoped = runTool(JetBrainsMPSNodeMcpToolset()) {
            it.mps_mcp_query_nodes(
                MPSQueryOperation.FIND_INSTANCES,
                """
                {
                  "conceptRef": "$CONCEPT_DECL",
                  "scope": "models",
                  "models": [ "$structureModelRef" ],
                  "rootsOnly": true,
                  "propertyFilter": { "name": "name", "value": "$uniqueName" }
                }
                """.trimIndent()
            )
        }
        assertEquals(setOf(uniqueName), parseResultNames(modelsScoped))

        val modulesScoped = runTool(JetBrainsMPSNodeMcpToolset()) {
            it.mps_mcp_query_nodes(
                MPSQueryOperation.FIND_INSTANCES,
                """
                {
                  "conceptRef": "$CONCEPT_DECL",
                  "scope": "modules",
                  "modules": [ "$moduleRef" ],
                  "rootsOnly": true,
                  "propertyFilter": { "name": "name", "value": "$uniqueName" }
                }
                """.trimIndent()
            )
        }
        assertEquals(setOf(uniqueName), parseResultNames(modulesScoped))

        val editableScoped = runTool(JetBrainsMPSNodeMcpToolset()) {
            it.mps_mcp_query_nodes(
                MPSQueryOperation.FIND_INSTANCES,
                """
                {
                  "conceptRef": "$CONCEPT_DECL",
                  "scope": "editable",
                  "rootsOnly": true,
                  "propertyFilter": { "name": "name", "value": "$uniqueName" }
                }
                """.trimIndent()
            )
        }
        assertEquals(setOf(uniqueName), parseResultNames(editableScoped))

        val allScoped = runTool(JetBrainsMPSNodeMcpToolset()) {
            it.mps_mcp_query_nodes(
                MPSQueryOperation.FIND_INSTANCES,
                """
                {
                  "conceptRef": "$CONCEPT_DECL",
                  "scope": "all",
                  "rootsOnly": true,
                  "propertyFilter": { "name": "name", "value": "$uniqueName" }
                }
                """.trimIndent()
            )
        }
        assertEquals(setOf(uniqueName), parseResultNames(allScoped))

        // Also verify that child concepts with rootsOnly: true return empty across modules and all scopes
        val modulesChildScoped = runTool(JetBrainsMPSNodeMcpToolset()) {
            it.mps_mcp_query_nodes(
                MPSQueryOperation.FIND_INSTANCES,
                """
                {
                  "conceptRef": "$ENUMERATION_MEMBER_DECL",
                  "scope": "modules",
                  "modules": [ "$moduleRef" ],
                  "rootsOnly": true
                }
                """.trimIndent()
            )
        }
        assertEquals(emptySet<String>(), parseResultNames(modulesChildScoped))

        val allChildScoped = runTool(JetBrainsMPSNodeMcpToolset()) {
            it.mps_mcp_query_nodes(
                MPSQueryOperation.FIND_INSTANCES,
                """
                {
                  "conceptRef": "$ENUMERATION_MEMBER_DECL",
                  "scope": "all",
                  "rootsOnly": true
                }
                """.trimIndent()
            )
        }
        assertEquals(emptySet<String>(), parseResultNames(allChildScoped))
    }

    @Test
    fun `find-instances with scope roots and rootsOnly true returns only the specified roots and excludes descendant instances`() {
        val enumRef = createColorEnum()

        // 1. Mixed-depth concept (INamedConcept):
        // Without rootsOnly: returns the root enum ("Color") AND its 3 member children ("RED", "GREEN", "BLUE")
        val withoutRootsOnly = runTool(JetBrainsMPSNodeMcpToolset()) {
            it.mps_mcp_query_nodes(
                MPSQueryOperation.FIND_INSTANCES,
                """
                {
                  "conceptRef": "$INAMED_CONCEPT",
                  "scope": "roots",
                  "roots": [ "$enumRef" ]
                }
                """.trimIndent()
            )
        }
        assertEquals(setOf("Color", "RED", "GREEN", "BLUE"), parseResultNames(withoutRootsOnly))

        // With rootsOnly: true: returns ONLY the root enum ("Color"), excluding all child descendants!
        val withRootsOnly = runTool(JetBrainsMPSNodeMcpToolset()) {
            it.mps_mcp_query_nodes(
                MPSQueryOperation.FIND_INSTANCES,
                """
                {
                  "conceptRef": "$INAMED_CONCEPT",
                  "scope": "roots",
                  "roots": [ "$enumRef" ],
                  "rootsOnly": true
                }
                """.trimIndent()
            )
        }
        assertEquals(setOf("Color"), parseResultNames(withRootsOnly))

        // 2. Child-only concept (EnumerationMemberDeclaration):
        // Without rootsOnly: returns the 3 member children ("RED", "GREEN", "BLUE")
        val childWithoutRootsOnly = runTool(JetBrainsMPSNodeMcpToolset()) {
            it.mps_mcp_query_nodes(
                MPSQueryOperation.FIND_INSTANCES,
                """
                {
                  "conceptRef": "$ENUMERATION_MEMBER_DECL",
                  "scope": "roots",
                  "roots": [ "$enumRef" ]
                }
                """.trimIndent()
            )
        }
        assertEquals(setOf("RED", "GREEN", "BLUE"), parseResultNames(childWithoutRootsOnly))

        // With rootsOnly: true: returns empty because the children are descendants, not roots!
        val childWithRootsOnly = runTool(JetBrainsMPSNodeMcpToolset()) {
            it.mps_mcp_query_nodes(
                MPSQueryOperation.FIND_INSTANCES,
                """
                {
                  "conceptRef": "$ENUMERATION_MEMBER_DECL",
                  "scope": "roots",
                  "roots": [ "$enumRef" ],
                  "rootsOnly": true
                }
                """.trimIndent()
            )
        }
        assertEquals(emptySet<String>(), parseResultNames(childWithRootsOnly))
    }

    @Test
    fun `find-instances rejects non-boolean rootsOnly`() {
        for (invalidValue in listOf("\"notABoolean\"", "123", "[]", "{}")) {
            val response = runTool(JetBrainsMPSNodeMcpToolset()) {
                it.mps_mcp_query_nodes(
                    MPSQueryOperation.FIND_INSTANCES,
                    """{ "conceptRef": "$CONCEPT_DECL", "rootsOnly": $invalidValue }""",
                )
            }
            assertInvalidRequest(response, "rootsOnly", "boolean")
        }
    }

    @Test
    fun `find-instances with scope roots and missing roots gives actionable error pointing to rootsOnly`() {
        for (params in listOf(
            """{ "conceptRef": "$CONCEPT_DECL", "scope": "roots" }""",
            """{ "conceptRef": "$CONCEPT_DECL", "scope": "roots", "roots": null }"""
        )) {
            val response = runTool(JetBrainsMPSNodeMcpToolset()) {
                it.mps_mcp_query_nodes(MPSQueryOperation.FIND_INSTANCES, params)
            }
            assertInvalidRequest(
                response,
                "Parameter 'roots' is missing for scope 'roots'",
                "Scope 'roots' searches within the subtrees of the specified roots",
                "'rootsOnly': true"
            )
        }

        val malformedResponse = runTool(JetBrainsMPSNodeMcpToolset()) {
            it.mps_mcp_query_nodes(
                MPSQueryOperation.FIND_INSTANCES,
                """{ "conceptRef": "$CONCEPT_DECL", "scope": "roots", "roots": [] }"""
            )
        }
        assertInvalidRequest(malformedResponse, "Parameter 'roots' must be a nonempty array of nonblank strings")
    }

    @Test
    fun `find-instances with sampleOnly and rootsOnly true returns only root sample on mixed-depth concept`() {
        createColorEnum()

        // 1. On mixed-depth concept (INamedConcept) where children outnumber roots (Color vs RED, GREEN, BLUE):
        // Running sampleOnly with rootsOnly: true must always pick a root node, never a child.
        val sampleResponse = runTool(JetBrainsMPSNodeMcpToolset()) {
            it.mps_mcp_query_nodes(
                MPSQueryOperation.FIND_INSTANCES,
                findParams(""""$INAMED_CONCEPT"""", extra = ""","sampleOnly": true, "rootsOnly": true"""),
            )
        }
        val sampleNames = parseResultNames(sampleResponse)
        assertEquals(1, sampleNames.size)
        val sampleRefs = parseResultReferences(sampleResponse)
        readOnRepo {
            val node = PersistenceFacade.getInstance().createNodeReference(sampleRefs.single()).resolve(structureModel.repository)
            assertNotNull("sampled node must resolve", node)
            assertNull("sampled node ${node?.name} must be a root node (parent == null)", node?.parent)
        }
        assertFalse("sample must not be a child member: $sampleNames", sampleNames.single() in setOf("RED", "GREEN", "BLUE"))

        // 2. On child-only concept (EnumerationMemberDeclaration):
        // sampleOnly without rootsOnly returns 1 child sample
        val childSampleWithoutRootsOnly = runTool(JetBrainsMPSNodeMcpToolset()) {
            it.mps_mcp_query_nodes(
                MPSQueryOperation.FIND_INSTANCES,
                findParams(""""$ENUMERATION_MEMBER_DECL"""", extra = ""","sampleOnly": true"""),
            )
        }
        assertEquals(1, parseResultNames(childSampleWithoutRootsOnly).size)

        // sampleOnly with rootsOnly: true returns empty because all candidate instances are children
        val childSampleWithRootsOnly = runTool(JetBrainsMPSNodeMcpToolset()) {
            it.mps_mcp_query_nodes(
                MPSQueryOperation.FIND_INSTANCES,
                findParams(""""$ENUMERATION_MEMBER_DECL"""", extra = ""","sampleOnly": true, "rootsOnly": true"""),
            )
        }
        assertEquals(emptySet<String>(), parseResultNames(childSampleWithRootsOnly))
    }

    @Test
    fun `find-usages with rootsOnly true returns only root source nodes`() {
        val uniqueSuffix = System.nanoTime()
        val baseName = "Base_$uniqueSuffix"
        val derivedName = "Derived_$uniqueSuffix"
        val holderName = "Holder_$uniqueSuffix"
        val createParams = """
            {
              "structureModelRef": "$structureModelRef",
              "conceptsJson": [
                { "name": "$baseName" },
                { "name": "$derivedName", "extends": "$baseName" },
                {
                  "name": "$holderName",
                  "references": [ { "role": "refToBase", "target": "$baseName", "optional": true } ]
                }
              ]
            }
        """.trimIndent()
        assertOk(runTool { it.mps_mcp_alter_structure(MPSStructureAlterOperation.CREATE_CONCEPTS, createParams) })

        val baseRef = readOnRepo {
            val base = structureModel.rootNodes.single { it.name == baseName }
            PersistenceFacade.getInstance().asString(base.reference)
        }

        val withoutRootsOnly = runTool(JetBrainsMPSNodeMcpToolset()) {
            it.mps_mcp_query_nodes(
                MPSQueryOperation.FIND_USAGES,
                """
                {
                  "nodeReference": "$baseRef",
                  "scope": "models",
                  "models": [ "$structureModelRef" ]
                }
                """.trimIndent()
            )
        }
        val withRootsOnly = runTool(JetBrainsMPSNodeMcpToolset()) {
            it.mps_mcp_query_nodes(
                MPSQueryOperation.FIND_USAGES,
                """
                {
                  "nodeReference": "$baseRef",
                  "scope": "models",
                  "models": [ "$structureModelRef" ],
                  "rootsOnly": true
                }
                """.trimIndent()
            )
        }

        val allUsageRefs = parseResultReferences(withoutRootsOnly)
        assertTrue("all usages must include at least two results: $allUsageRefs", allUsageRefs.size >= 2)

        val rootUsageNames = parseResultNames(withRootsOnly)
        assertEquals(setOf(derivedName), rootUsageNames)
    }

    /**
     * Three `ConceptDeclaration` roots plus one `InterfaceConceptDeclaration` root — four nodes
     * whose concepts overlap under `AbstractConceptDeclaration`.
     */
    private fun createCountFixture() {
        val createParams = """
            {
              "structureModelRef": "$structureModelRef",
              "conceptsJson": [
                { "name": "Alpha" },
                { "name": "Beta" },
                { "name": "Gamma" }
              ],
              "interfaceConceptsJson": [ { "name": "IMarker" } ]
            }
        """.trimIndent()
        assertOk(runTool { it.mps_mcp_alter_structure(MPSStructureAlterOperation.CREATE_CONCEPTS, createParams) })
    }

    /** FIND_INSTANCES parameters scoped to the test's structure model, with [conceptRefs] verbatim. */
    private fun findParams(conceptRefs: String, extra: String = ""): String = """
        {
          "conceptRefs": $conceptRefs,
          "scope": "models",
          "models": [ "$structureModelRef" ]$extra
        }
    """.trimIndent()

    private fun countResponse(conceptRefs: String, extra: String = ""): String =
        runTool(JetBrainsMPSNodeMcpToolset()) {
            it.mps_mcp_query_nodes(
                MPSQueryOperation.FIND_INSTANCES,
                findParams(conceptRefs, ""","detail": "count"$extra"""),
            )
        }

    /** The `[{concept, conceptReference, count}]` rows of a `detail:"count"` response, in order. */
    private fun countRows(response: String): List<Pair<String, Int>> =
        parseDataArray(response).map {
            val row = it.asJsonObject
            row.get("concept").asString to row.get("count").asInt
        }

    @Test
    fun `add-node-child without position appends and returns the new child's reference`() {
        val enumRef = createColorEnum()

        val (childRef, parentRef) = addMember(enumRef, name = "YELLOW")

        assertEquals(enumRef, parentRef)
        readOnRepo {
            assertEquals(
                listOf("RED", "GREEN", "BLUE", "YELLOW"),
                membersOf(enumRef).mapNotNull { it.name }
            )
            // Acceptance criterion 5: the returned reference resolves to the new child.
            val resolvedChild = PersistenceFacade.getInstance()
                .createNodeReference(childRef)
                .resolve(structureModel.repository)
            assertNotNull("data.reference should resolve to the inserted child", resolvedChild)
            assertEquals("YELLOW", resolvedChild!!.name)
            assertEquals("members", resolvedChild.containmentLink?.name)
        }
    }

    @Test
    fun `add-node-child with position 0 inserts at head and shifts existing children right`() {
        val enumRef = createColorEnum()

        val (newRef, _) = addMember(enumRef, name = "ALPHA", position = 0)

        readOnRepo {
            assertEquals(
                listOf("ALPHA", "RED", "GREEN", "BLUE"),
                membersOf(enumRef).mapNotNull { it.name }
            )
            assertEquals("ALPHA", resolveChildName(newRef))
        }
    }

    @Test
    fun `add-node-child with position in the middle inserts at the requested index`() {
        val enumRef = createColorEnum()

        // Three existing children: insert BETA at index 1, between RED and GREEN.
        val (newRef, _) = addMember(enumRef, name = "BETA", position = 1)

        readOnRepo {
            assertEquals(
                listOf("RED", "BETA", "GREEN", "BLUE"),
                membersOf(enumRef).mapNotNull { it.name }
            )
            assertEquals("BETA", resolveChildName(newRef))
        }
    }

    @Test
    fun `add-node-child with position -1 appends at end`() {
        val enumRef = createColorEnum()

        val (newRef, _) = addMember(enumRef, name = "GAMMA", position = -1)

        readOnRepo {
            assertEquals(
                listOf("RED", "GREEN", "BLUE", "GAMMA"),
                membersOf(enumRef).mapNotNull { it.name }
            )
            assertEquals("GAMMA", resolveChildName(newRef))
        }
    }

    @Test
    fun `add-node-child with position equal to current count appends at end`() {
        val enumRef = createColorEnum()

        // The enum has 3 existing members, so position = 3 == N must be accepted as append.
        val (newRef, _) = addMember(enumRef, name = "DELTA", position = 3)

        readOnRepo {
            assertEquals(
                listOf("RED", "GREEN", "BLUE", "DELTA"),
                membersOf(enumRef).mapNotNull { it.name }
            )
            assertEquals("DELTA", resolveChildName(newRef))
        }
    }

    @Test
    fun `add-node-child clamps a position past the current count to an append`() {
        val enumRef = createColorEnum()

        // 3 existing children; position 4 is past the end and must clamp to an append rather
        // than fail, with the response reporting the actual landing index (matches
        // mps_mcp_parse_java_and_insert).
        val response = runTool(JetBrainsMPSNodeMcpToolset()) {
            it.mps_mcp_update_node(NodeUpdateOperation.ADD, NodeUpdateKind.CHILD, nodeReference = enumRef, childRole = "members", childJson = memberJson("ZETA"), position = 4)
        }

        val obj = JsonParser.parseString(response).asJsonObject
        assertTrue("expected ok envelope: $response", obj.get("ok").asBoolean)
        assertEquals(
            "over-range position must clamp to the append index (3 existing members): $response",
            3,
            obj.get("data").asNodeInfo().get("index").asInt,
        )

        readOnRepo {
            assertEquals(
                listOf("RED", "GREEN", "BLUE", "ZETA"),
                membersOf(enumRef).mapNotNull { it.name }
            )
        }
    }

    @Test
    fun `add-node-child rejects position less than -1 and leaves model unchanged`() {
        val enumRef = createColorEnum()

        val before = readOnRepo { membersOf(enumRef).mapNotNull { it.name } }
        val response = runTool(JetBrainsMPSNodeMcpToolset()) {
            it.mps_mcp_update_node(NodeUpdateOperation.ADD, NodeUpdateKind.CHILD, nodeReference = enumRef, childRole = "members", childJson = memberJson("EPSILON"), position = -2)
        }

        val obj = JsonParser.parseString(response).asJsonObject
        assertFalse("expected error envelope: $response", obj.get("ok").asBoolean)
        assertTrue(
            "error should explain the invalid negative position: ${obj.get("error").asString}",
            obj.get("error").asString.contains("position -2 is invalid")
        )

        readOnRepo {
            assertEquals("model must be unchanged after rejected insertion", before,
                membersOf(enumRef).mapNotNull { it.name })
        }
    }

    @Test
    fun `add-node-child rejects non-zero position on single-cardinality role`() {
        // helpURL on AbstractConceptDeclaration is a 0..1 child link.
        val fooRef = createFooConcept()

        val helpUrlJson = """
            {
              "concept": "jetbrains.mps.lang.resources.structure.HelpURL"
            }
        """.trimIndent()

        val response = runTool(JetBrainsMPSNodeMcpToolset()) {
            it.mps_mcp_update_node(NodeUpdateOperation.ADD, NodeUpdateKind.CHILD, nodeReference = fooRef, childRole = "helpURL", childJson = helpUrlJson, position = 1)
        }

        val obj = JsonParser.parseString(response).asJsonObject
        assertFalse("expected error envelope: $response", obj.get("ok").asBoolean)
        val msg = obj.get("error").asString
        assertTrue("error should call out single-cardinality role: $msg",
            msg.contains("not applicable to single-cardinality role"))
        assertTrue("error should mention the role: $msg", msg.contains("helpURL"))
        assertTrue("error should echo the rejected position value: $msg", msg.contains("position 1"))
        assertTrue("error should list the allowed values: $msg", msg.contains("-1 or 0"))

        readOnRepo {
            val foo = PersistenceFacade.getInstance().createNodeReference(fooRef).resolve(structureModel.repository)
            assertNotNull(foo)
            assertNull("rejected single-cardinality insertion must not add a child",
                foo!!.children.firstOrNull { it.containmentLink?.name == "helpURL" })
        }
    }

    @Test
    fun `add-node-child with position 0 on occupied single-cardinality role still replaces the existing child`() {
        // helpURL is a 0..1 child link on AbstractConceptDeclaration. After seeding it once,
        // calling add_node_child again with position=0 must replace the existing child (today's
        // behaviour for 0..1) rather than reject or accumulate.
        val fooRef = createFooConcept()

        val firstUrl = """https://example.org/first"""
        val secondUrl = """https://example.org/second"""

        // Seed: add the first HelpURL with no position (today's replace-or-add path).
        val firstAdd = runTool(JetBrainsMPSNodeMcpToolset()) {
            it.mps_mcp_update_node(NodeUpdateOperation.ADD, NodeUpdateKind.CHILD, nodeReference = fooRef, childRole = "helpURL", childJson = helpUrlJson(firstUrl))
        }
        assertOk(firstAdd)
        val firstChildRef = parseChildRef(firstAdd)

        // Sanity-check the seed: exactly one helpURL child, with the first url.
        readOnRepo {
            val foo = PersistenceFacade.getInstance().createNodeReference(fooRef)
                .resolve(structureModel.repository)!!
            val helpKids = foo.children.filter { it.containmentLink?.name == "helpURL" }
            assertEquals(1, helpKids.size)
            assertEquals(firstUrl, helpKids.single().getPropertyByName("url"))
        }

        // Replace with position=0 — must succeed and swap the child cleanly.
        val secondAdd = runTool(JetBrainsMPSNodeMcpToolset()) {
            it.mps_mcp_update_node(NodeUpdateOperation.ADD, NodeUpdateKind.CHILD, nodeReference = fooRef, childRole = "helpURL", childJson = helpUrlJson(secondUrl), position = 0)
        }
        assertOk(secondAdd)
        val secondChildRef = parseChildRef(secondAdd)
        assertFalse(
            "replacement must produce a new node, not return the previous child's reference",
            secondChildRef == firstChildRef
        )

        readOnRepo {
            val foo = PersistenceFacade.getInstance().createNodeReference(fooRef)
                .resolve(structureModel.repository)!!
            val helpKids = foo.children.filter { it.containmentLink?.name == "helpURL" }
            assertEquals("0..1 replacement must leave exactly one child", 1, helpKids.size)
            assertEquals(secondUrl, helpKids.single().getPropertyByName("url"))
            // The first child should be gone from the model.
            assertNull(
                "first helpURL should be detached after replacement",
                PersistenceFacade.getInstance().createNodeReference(firstChildRef)
                    .resolve(structureModel.repository)
            )
        }
    }

    @Test
    fun `add-node-child response carries data fixReferences with zero counts for a leaf insert`() {
        // EnumerationMemberDeclaration has no references, so performFixReferences finds nothing
        // and returns the "No references found" message. The response should now expose those
        // counters under data.fixReferences instead of dropping them.
        val enumRef = createColorEnum()
        val response = runTool(JetBrainsMPSNodeMcpToolset()) {
            it.mps_mcp_update_node(NodeUpdateOperation.ADD, NodeUpdateKind.CHILD, nodeReference = enumRef, childRole = "members", childJson = memberJson("MAGENTA"))
        }
        val data = expectOk(response)
        val fix = data.get("fixReferences")
        assertNotNull("response must expose data.fixReferences: $response", fix)
        val fixObj = fix.asJsonObject
        assertEquals(0, fixObj.get("fixed").asInt)
        assertEquals(0, fixObj.get("repointed").asInt)
        assertEquals(0, fixObj.get("stillBroken").asInt)
        assertTrue(
            "fixReferences.message should describe the no-references case: $fixObj",
            fixObj.get("message").asString.contains("No references found"),
        )
    }

    @Test
    fun `add-node-child rejects unknown property name on target concept`() {
        val enumRef = createColorEnum()
        val badJson = """
            {
              "concept": "jetbrains.mps.lang.structure.structure.EnumerationMemberDeclaration",
              "properties": [
                { "name": "name", "value": "BOGUS" },
                { "name": "totallyMadeUpProperty", "value": "X" }
              ]
            }
        """.trimIndent()

        val response = runTool(JetBrainsMPSNodeMcpToolset()) {
            it.mps_mcp_update_node(NodeUpdateOperation.ADD, NodeUpdateKind.CHILD, nodeReference = enumRef, childRole = "members", childJson = badJson)
        }
        val obj = JsonParser.parseString(response).asJsonObject
        assertFalse("expected error envelope: $response", obj.get("ok").asBoolean)
        val msg = obj.get("error").asString
        assertTrue("error must name the bogus property: $msg", msg.contains("totallyMadeUpProperty"))
        assertTrue("error must name the target concept: $msg", msg.contains("EnumerationMemberDeclaration"))

        readOnRepo {
            assertEquals(
                "rejected insertion must not add a child",
                listOf("RED", "GREEN", "BLUE"),
                membersOf(enumRef).mapNotNull { it.name },
            )
        }
    }

    @Test
    fun `set-node-child rejects the string null and says how to express the null`() {
        // The docs say `childJson = null` deletes the child; a worker sent the 4-character string
        // and got "neither a valid JSON object/array nor an existing file path" with no way out.
        val enumRef = createColorEnum()
        val greenRef = readOnRepo {
            PersistenceFacade.getInstance().asString(membersOf(enumRef).single { it.name == "GREEN" }.reference)
        }

        val response = runTool(JetBrainsMPSNodeMcpToolset()) {
            it.mps_mcp_update_node(NodeUpdateOperation.SET, NodeUpdateKind.CHILD, childNodeRef = greenRef, childJson = "null")
        }
        val obj = JsonParser.parseString(response).asJsonObject
        assertFalse("expected error envelope: $response", obj.get("ok").asBoolean)
        val msg = obj.get("error").asString
        // Pin the two facts, not the grammar: omit the parameter, or send a real JSON null.
        assertTrue("error must say to omit the parameter: $msg", msg.contains("omit", ignoreCase = true))
        assertTrue("error must name the JSON null form: $msg", msg.contains("JSON null"))

        readOnRepo {
            assertEquals(
                "the rejected call must neither replace nor delete the child",
                listOf("RED", "GREEN", "BLUE"),
                membersOf(enumRef).mapNotNull { it.name },
            )
        }
    }

    @Test
    fun `add-node-child rejects unknown child role on target concept`() {
        val enumRef = createColorEnum()
        // EnumerationMemberDeclaration has no containment links, so any `children` entry is invalid.
        val badJson = """
            {
              "concept": "jetbrains.mps.lang.structure.structure.EnumerationMemberDeclaration",
              "properties": [ { "name": "name", "value": "STRAY" } ],
              "children": [
                { "role": "definitelyNotARealRole", "nodes": [
                  { "concept": "jetbrains.mps.lang.structure.structure.PropertyDeclaration" }
                ] }
              ]
            }
        """.trimIndent()

        val response = runTool(JetBrainsMPSNodeMcpToolset()) {
            it.mps_mcp_update_node(NodeUpdateOperation.ADD, NodeUpdateKind.CHILD, nodeReference = enumRef, childRole = "members", childJson = badJson)
        }
        val obj = JsonParser.parseString(response).asJsonObject
        assertFalse("expected error envelope: $response", obj.get("ok").asBoolean)
        val msg = obj.get("error").asString
        assertTrue("error must name the bogus role: $msg", msg.contains("definitelyNotARealRole"))
        assertTrue("error must mention 'child role': $msg", msg.contains("child role"))

        readOnRepo {
            assertEquals(
                listOf("RED", "GREEN", "BLUE"),
                membersOf(enumRef).mapNotNull { it.name },
            )
        }
    }

    @Test
    fun `add-node-child rejects unknown reference role on target concept`() {
        val enumRef = createColorEnum()
        val badJson = """
            {
              "concept": "jetbrains.mps.lang.structure.structure.EnumerationMemberDeclaration",
              "properties": [ { "name": "name", "value": "GHOST" } ],
              "references": [
                { "role": "ghostRefRole", "target": "anything" }
              ]
            }
        """.trimIndent()

        val response = runTool(JetBrainsMPSNodeMcpToolset()) {
            it.mps_mcp_update_node(NodeUpdateOperation.ADD, NodeUpdateKind.CHILD, nodeReference = enumRef, childRole = "members", childJson = badJson)
        }
        val obj = JsonParser.parseString(response).asJsonObject
        assertFalse("expected error envelope: $response", obj.get("ok").asBoolean)
        val msg = obj.get("error").asString
        assertTrue("error must name the bogus reference role: $msg", msg.contains("ghostRefRole"))
        assertTrue("error must mention 'reference role': $msg", msg.contains("reference role"))

        readOnRepo {
            assertEquals(
                listOf("RED", "GREEN", "BLUE"),
                membersOf(enumRef).mapNotNull { it.name },
            )
        }
    }

    @Test
    fun `add-node-child dryRun with valid position does not mutate the model`() {
        val enumRef = createColorEnum()

        val before = readOnRepo { membersOf(enumRef).mapNotNull { it.name } }
        val response = runTool(JetBrainsMPSNodeMcpToolset()) {
            it.mps_mcp_update_node(NodeUpdateOperation.ADD, NodeUpdateKind.CHILD, nodeReference = enumRef, childRole = "members", childJson = memberJson("DRY"), position = 0, dryRun = true)
        }

        val obj = JsonParser.parseString(response).asJsonObject
        assertTrue("expected ok envelope: $response", obj.get("ok").asBoolean)
        // dryRun envelope contains an embedded JSON string with "dryRun":true.
        val data = obj.get("data")
        val raw = if (data.isJsonPrimitive) data.asString else data.toString()
        val payload = JsonParser.parseString(raw).asJsonObject
        assertTrue("dryRun payload should be flagged: $payload",
            payload.get("dryRun")?.asBoolean == true)
        // dryRun never calls performFixReferences, so the marker payload must not carry
        // fixReferences. Locks in the contract so a future refactor doesn't quietly run
        // ScopeResolver under a dryRun flag.
        assertFalse(
            "dryRun payload must not expose fixReferences: $payload",
            payload.has("fixReferences"),
        )

        readOnRepo {
            assertEquals("dryRun must not mutate the model", before,
                membersOf(enumRef).mapNotNull { it.name })
        }
    }

    @Test
    fun `add-node-child dryRun with invalid position returns error and does not mutate the model`() {
        val enumRef = createColorEnum()

        val before = readOnRepo { membersOf(enumRef).mapNotNull { it.name } }
        val response = runTool(JetBrainsMPSNodeMcpToolset()) {
            // position -2 is invalid (only -1 is the append sentinel); an over-range positive
            // value would now clamp, so a negative value is used to exercise the validation path
            // under dryRun.
            it.mps_mcp_update_node(NodeUpdateOperation.ADD, NodeUpdateKind.CHILD, nodeReference = enumRef, childRole = "members", childJson = memberJson("DRY"), position = -2, dryRun = true)
        }

        val obj = JsonParser.parseString(response).asJsonObject
        assertFalse("dryRun with bad position should fail: $response", obj.get("ok").asBoolean)
        assertTrue(obj.get("error").asString.contains("position -2 is invalid"))

        readOnRepo {
            assertEquals("model must be unchanged after rejected dryRun", before,
                membersOf(enumRef).mapNotNull { it.name })
        }
    }

    // ── fixtures & helpers ─────────────────────────────────────────────────────────────────

    /** Creates `Color` enum with members `[RED, GREEN, BLUE]` and returns its node reference. */
    private fun createColorEnum(): String {
        val params = """
            {
              "structureModelRef": "$structureModelRef",
              "enumName": "Color",
              "valuesJson": [
                { "enumName": "RED" },
                { "enumName": "GREEN" },
                { "enumName": "BLUE" }
              ]
            }
        """.trimIndent()
        assertOk(runTool { toolset ->
            toolset.mps_mcp_alter_structure(MPSStructureAlterOperation.CREATE_ENUM, params)
        })
        return readOnRepo {
            val enumNode = structureModel.rootNodes.single { it.name == "Color" }
            PersistenceFacade.getInstance().asString(enumNode.reference)
        }
    }

    /** Creates a `Foo` ConceptDeclaration with no extra members and returns its node reference. */
    private fun createFooConcept(): String {
        val params = """
            {
              "structureModelRef": "$structureModelRef",
              "conceptsJson": [
                { "name": "Foo" }
              ]
            }
        """.trimIndent()
        assertOk(runTool { it.mps_mcp_alter_structure(MPSStructureAlterOperation.CREATE_CONCEPTS, params) })
        return readOnRepo {
            val foo = structureModel.rootNodes.single { it.name == "Foo" }
            PersistenceFacade.getInstance().asString(foo.reference)
        }
    }

    /** Builds the minimum-viable JSON blueprint for an EnumerationMemberDeclaration. */
    private fun memberJson(name: String): String = """
        {
          "concept": "jetbrains.mps.lang.structure.structure.EnumerationMemberDeclaration",
          "properties": [
            { "name": "name",     "value": "$name" },
            { "name": "memberId", "value": "${name.hashCode().toLong().and(Long.MAX_VALUE)}" }
          ]
        }
    """.trimIndent()

    /** Builds a HelpURL blueprint with the given url. */
    private fun helpUrlJson(url: String): String = """
        {
          "concept": "jetbrains.mps.lang.resources.structure.HelpURL",
          "properties": [
            { "name": "url", "value": "$url" }
          ]
        }
    """.trimIndent()

    /** Reads `data.reference` from an add_node_child success envelope. */
    private fun parseChildRef(response: String): String {
        val data = JsonParser.parseString(response).asJsonObject.get("data").asNodeInfo()
        return data.get("reference").asString
    }

    /**
     * Adds a member to the given enum and returns `(newChildRef, parentRefFromResponse)`.
     * Asserts ok and parses the new envelope shape: `data` is now the *child* nodeInfo, with
     * `parentReference` pointing back at the enum.
     */
    private fun addMember(enumRef: String, name: String, position: Int? = null): Pair<String, String> {
        val response = runTool(JetBrainsMPSNodeMcpToolset()) {
            it.mps_mcp_update_node(NodeUpdateOperation.ADD, NodeUpdateKind.CHILD, nodeReference = enumRef, childRole = "members", childJson = memberJson(name), position = position)
        }
        assertOk(response)
        val obj = JsonParser.parseString(response).asJsonObject
        val data = obj.get("data").asNodeInfo()
        val childRef = data.get("reference").asString
        val parentRef = data.get("parentReference").asString
        return childRef to parentRef
    }

    private fun membersOf(enumRef: String): List<SNode> {
        val node = PersistenceFacade.getInstance().createNodeReference(enumRef)
            .resolve(structureModel.repository) ?: error("enum '$enumRef' not found")
        return node.children.filter { it.containmentLink?.name == "members" }
    }

    private fun resolveChildName(ref: String): String? {
        val node = PersistenceFacade.getInstance().createNodeReference(ref)
            .resolve(structureModel.repository)
        return node?.name
    }

    @Test
    fun `update_node with unknown operation returns INVALID_REQUEST instead of crashing`() {
        // Regression: an operation outside NodeUpdateOperation must be a classified error, not a
        // kotlinx SerializationException escaping the framework's pre-call enum decode.
        val response = runTool(JetBrainsMPSNodeMcpToolset()) {
            it.mps_mcp_update_node("UPSERT", "CHILD", nodeReference = "x", childRole = "y", childJson = "{}")
        }
        val obj = JsonParser.parseString(response).asJsonObject
        assertFalse("expected error envelope: $response", obj.get("ok").asBoolean)
        assertEquals("INVALID_REQUEST", obj.get("code").asString)
        assertTrue("error should list valid operations: ${obj.get("error").asString}", obj.get("error").asString.contains("ADD"))
    }

    @Test
    fun `update_node with unknown kind returns INVALID_REQUEST instead of crashing`() {
        // `kind` is the second enum selector on this tool; it must be validated as a String too.
        val response = runTool(JetBrainsMPSNodeMcpToolset()) {
            it.mps_mcp_update_node("ADD", "ATTRIBUTE", nodeReference = "x", childRole = "y", childJson = "{}")
        }
        val obj = JsonParser.parseString(response).asJsonObject
        assertFalse("expected error envelope: $response", obj.get("ok").asBoolean)
        assertEquals("INVALID_REQUEST", obj.get("code").asString)
        assertTrue("error should list valid kinds: ${obj.get("error").asString}", obj.get("error").asString.contains("CHILD"))
    }

    /** node-info responses arrive as a JSON-string inside the `data` field; normalise either form. */
    private fun JsonElement.asNodeInfo(): JsonObject {
        return if (isJsonPrimitive) JsonParser.parseString(asString).asJsonObject else asJsonObject
    }

    private fun assertOk(response: String) {
        val obj = JsonParser.parseString(response).asJsonObject
        assertTrue("expected ok=true envelope, got: $response", obj.get("ok").asBoolean)
    }

    private companion object {
        // The structure language's own hierarchy, used as the FIND_INSTANCES counting fixture:
        // ConceptDeclaration and InterfaceConceptDeclaration are both subconcepts of the abstract
        // AbstractConceptDeclaration, so a request naming several of them genuinely overlaps.
        private const val CONCEPT_DECL = "jetbrains.mps.lang.structure.structure.ConceptDeclaration"
        private const val INTERFACE_CONCEPT_DECL = "jetbrains.mps.lang.structure.structure.InterfaceConceptDeclaration"
        private const val ABSTRACT_CONCEPT_DECL = "jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration"
        private const val ENUMERATION_DECL = "jetbrains.mps.lang.structure.structure.EnumerationDeclaration"
        private const val ENUMERATION_MEMBER_DECL = "jetbrains.mps.lang.structure.structure.EnumerationMemberDeclaration"
        private const val INAMED_CONCEPT = "jetbrains.mps.lang.core.structure.INamedConcept"
    }
}
