package jetbrains.mps.agents.mcp.tools.integration

import jetbrains.mps.agents.mcp.tools.*
import jetbrains.mps.agents.mcp.tools.common.*

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
 * End-to-end integration tests for [JetBrainsMPSLanguageStructureMcpToolset]: concept/interface
 * creation, enum creation, rollback on errors, and read-only structure queries.
 *
 * These complement the schema-only / reflection-stub tests by running the toolset against a
 * real [jetbrains.mps.project.MPSProject] with a real `structure` model produced by
 * [jetbrains.mps.project.modules.LanguageProducer].
 */
class JetBrainsMPSLanguageStructureMcpToolsetIntegrationTest : McpIntegrationTestBase() {

    /** A well-formed but deliberately unresolvable node/concept reference for NOT_FOUND tests. */
    private val unresolvableNodeRef = "r:00000000-0000-0000-0000-000000000000(ghost)/0"

    @Test
    fun `concept happy path creates root with properties and links`() {
        val parameters = """
            {
              "structureModelRef": "$structureModelRef",
              "conceptsJson": [
                {
                  "name": "Foo",
                  "properties": [
                    { "name": "title", "type": "string" },
                    { "name": "count", "type": "integer" }
                  ],
                  "children":   [ { "role": "kid", "target": "Foo", "multiple": true,  "optional": true } ],
                  "references": [ { "role": "ref", "target": "Foo", "optional": true } ]
                }
              ]
            }
        """.trimIndent()

        val response = runTool { toolset ->
            toolset.mps_mcp_alter_structure(MPSStructureAlterOperation.CREATE_CONCEPTS, parameters)
        }

        assertOk(response)

        val foo = expectSingleRoot("Foo")
        readOnRepo {
            val props = foo.getChildrenByName("propertyDeclaration")
            assertEquals(2, props.size)
            assertEquals(setOf("title", "count"), props.mapNotNull { it.name }.toSet())
            val links = foo.getChildrenByName("linkDeclaration")
            assertEquals("expected one child link + one reference link", 2, links.size)
            assertEquals(setOf("kid", "ref"), links.mapNotNull { it.getPropertyByName("role") }.toSet())
        }
    }

    @Test
    fun `concept error path rolls back created nodes`() {
        val parameters = """
            {
              "structureModelRef": "$structureModelRef",
              "conceptsJson": [
                {
                  "name": "Bar",
                  "extends": "this.does.not.exist.Concept"
                }
              ]
            }
        """.trimIndent()

        val response = runTool { toolset ->
            toolset.mps_mcp_alter_structure(MPSStructureAlterOperation.CREATE_CONCEPTS, parameters)
        }

        val obj = JsonParser.parseString(response).asJsonObject
        assertFalse("expected error envelope: $response", obj.get("ok").asBoolean)
        val message = obj.get("error").asString
        assertTrue("error should mention failed extends ref: $message", message.contains("this.does.not.exist.Concept"))

        readOnRepo {
            val rootsByName = structureModel.rootNodes.mapNotNull { it.name }.toList()
            assertFalse("rollback should remove the created Bar concept; roots=$rootsByName", rootsByName.contains("Bar"))
        }
    }

    @Test
    fun `interface concept happy path creates two interfaces with extends link`() {
        val parameters = """
            {
              "structureModelRef": "$structureModelRef",
              "interfaceConceptsJson": [
                { "name": "IBase" },
                { "name": "IDerived", "extendedInterfaces": ["IBase"] }
              ]
            }
        """.trimIndent()

        val response = runTool { toolset ->
            toolset.mps_mcp_alter_structure(MPSStructureAlterOperation.CREATE_CONCEPTS, parameters)
        }

        assertOk(response)

        val derived = expectSingleRoot("IDerived")
        readOnRepo {
            // The "extends" containment on InterfaceConceptDeclaration holds InterfaceConceptReference children.
            val extendsRefs = derived.getChildrenByName("extends")
            assertEquals(1, extendsRefs.size)
            val target = extendsRefs.first().getReferenceTargetByName("intfc")
            assertNotNull("extends target should resolve", target)
            assertEquals("IBase", target!!.name)
        }
    }

    // ── CREATE_CONCEPTS with make=true: runtime-readiness signalling ──────────────────────
    //
    // The structure response surfaces a single tri-state `makeStatus` ∈ {"success",
    // "runtime_stale", "failed", "skipped"} — no separate `runtimeReady` boolean. The MAKE
    // op response keeps the boolean form (the make IS its response). The asymmetry is
    // intentional and pinned below.
    //
    // The test harness cannot reliably force a specific make outcome (the MPS make service
    // may not even start), so we assert invariants that hold across all terminal states.

    @Test
    fun `CREATE_CONCEPTS with make=true reports a single tri-state makeStatus`() {
        val parameters = """
            {
              "structureModelRef": "$structureModelRef",
              "make": true,
              "conceptsJson": [ { "name": "MakeMe_${System.nanoTime()}" } ]
            }
        """.trimIndent()

        val response = runTool { toolset ->
            toolset.mps_mcp_alter_structure(MPSStructureAlterOperation.CREATE_CONCEPTS, parameters)
        }
        val data = expectOk(response)

        // `makeStatus` is the sole field conveying the make sub-operation outcome.
        assertTrue("response must include 'makeStatus' when make=true: $data", data.has("makeStatus"))
        assertTrue("response must include 'makeMessage' when make=true: $data", data.has("makeMessage"))
        assertFalse(
            "structure response must NOT emit 'runtimeReady' alongside 'makeStatus': $data",
            data.has("runtimeReady"),
        )

        val makeStatus = data.get("makeStatus").asString
        assertTrue(
            "makeStatus must be a documented value, got '$makeStatus': $data",
            makeStatus in setOf("success", "runtime_stale", "failed", "skipped"),
        )
    }

    @Test
    fun `CREATE_CONCEPTS without make omits all make-related fields`() {
        // The make path is opt-in. When `make` is absent or false, the response must not
        // synthesise any of the make-related fields — silently emitting `makeStatus="skipped"`
        // would confuse callers that branch on field presence.
        val parameters = """
            {
              "structureModelRef": "$structureModelRef",
              "conceptsJson": [ { "name": "NoMake_${System.nanoTime()}" } ]
            }
        """.trimIndent()

        val response = runTool { toolset ->
            toolset.mps_mcp_alter_structure(MPSStructureAlterOperation.CREATE_CONCEPTS, parameters)
        }
        val data = expectOk(response)

        assertFalse("'makeStatus' must be absent when make is omitted: $data", data.has("makeStatus"))
        assertFalse("'makeMessage' must be absent when make is omitted: $data", data.has("makeMessage"))
        assertFalse("'makeDetails' must be absent when make is omitted: $data", data.has("makeDetails"))
        assertFalse(
            "no `runtimeReady` either — structure response uses only `makeStatus`: $data",
            data.has("runtimeReady"),
        )
    }

    @Test
    fun `enum happy path creates enum with literals and default member`() {
        val parameters = """
            {
              "structureModelRef": "$structureModelRef",
              "enumName": "Color",
              "valuesJson": [
                { "enumName": "RED",   "enumPresentation": "Red"   },
                { "enumName": "GREEN", "enumPresentation": "Green" },
                { "enumName": "BLUE",  "enumPresentation": "Blue"  }
              ],
              "defaultEnumName": "GREEN"
            }
        """.trimIndent()

        val response = runTool { toolset ->
            toolset.mps_mcp_alter_structure(MPSStructureAlterOperation.CREATE_ENUM, parameters)
        }

        assertOk(response)

        val color = expectSingleRoot("Color")
        readOnRepo {
            val members = color.getChildrenByName("members")
            assertEquals(listOf("RED", "GREEN", "BLUE"), members.mapNotNull { it.name })
            assertEquals(listOf("Red", "Green", "Blue"), members.mapNotNull { it.getPropertyByName("presentation") })
            val defaultMember = color.getReferenceTargetByName("defaultMember")
            assertNotNull("default member must resolve", defaultMember)
            assertEquals("GREEN", defaultMember!!.name)
        }
    }

    @Test
    fun `enum with null defaultEnumName matches omission and retains its members`() {
        for ((enumName, defaultField) in listOf("NoDefaultOmitted" to "", "NoDefaultNull" to ",\"defaultEnumName\":null")) {
            val parameters = """
                {
                  "structureModelRef": "$structureModelRef",
                  "enumName": "$enumName",
                  "valuesJson": [
                    { "enumName": "FIRST", "enumPresentation": "First" },
                    { "enumName": "SECOND", "enumPresentation": "Second" }
                  ]$defaultField
                }
            """.trimIndent()

            assertOk(runTool {
                it.mps_mcp_alter_structure(MPSStructureAlterOperation.CREATE_ENUM, parameters)
            })
        }

        readOnRepo {
            for (enumName in listOf("NoDefaultOmitted", "NoDefaultNull")) {
                val enumeration = structureModel.rootNodes.single { it.name == enumName }
                val members = enumeration.getChildrenByName("members")
                assertEquals(listOf("FIRST", "SECOND"), members.mapNotNull { it.name })
                assertEquals(listOf("First", "Second"), members.mapNotNull { it.getPropertyByName("presentation") })
                assertNull("$enumName must not select a default member", enumeration.getReferenceTargetByName("defaultMember"))
            }
        }
    }

    @Test
    fun `enum name collides with an existing concept and is rejected`() {
        // Structure models share one root-name space across concepts and data types: an enum
        // 'Foo' must not be creatable alongside an existing concept 'Foo'.
        val sharedName = "Shared_${System.nanoTime()}"
        assertOk(runTool { toolset ->
            toolset.mps_mcp_alter_structure(
                MPSStructureAlterOperation.CREATE_CONCEPTS,
                """{ "structureModelRef": "$structureModelRef", "conceptsJson": [ { "name": "$sharedName" } ] }""",
            )
        })

        val enumParams = """
            {
              "structureModelRef": "$structureModelRef",
              "enumName": "$sharedName",
              "valuesJson": [ { "enumName": "ONE" } ]
            }
        """.trimIndent()
        val response = runTool { toolset ->
            toolset.mps_mcp_alter_structure(MPSStructureAlterOperation.CREATE_ENUM, enumParams)
        }
        val err = expectErr(response)
        assertTrue(
            "error must name the existing root and identify it as an Enumeration validation failure: $err",
            err.contains(sharedName) && err.contains("already exists"),
        )

        readOnRepo {
            val matches = structureModel.rootNodes.filter { it.name == sharedName }
            assertEquals(
                "only the original concept should remain; the colliding enum must not be persisted",
                1,
                matches.size,
            )
            assertTrue(
                "the surviving root must be the ConceptDeclaration we seeded, not an enum",
                matches.single().concept.name == "ConceptDeclaration",
            )
        }
    }

    @Test
    fun `concept name collides with an existing enum and is rejected`() {
        // Symmetric to the previous test.
        val sharedName = "Shared_${System.nanoTime()}"
        assertOk(runTool { toolset ->
            toolset.mps_mcp_alter_structure(
                MPSStructureAlterOperation.CREATE_ENUM,
                """
                {
                  "structureModelRef": "$structureModelRef",
                  "enumName": "$sharedName",
                  "valuesJson": [ { "enumName": "FIRST" } ]
                }
                """.trimIndent(),
            )
        })

        val conceptParams = """
            { "structureModelRef": "$structureModelRef", "conceptsJson": [ { "name": "$sharedName" } ] }
        """.trimIndent()
        val response = runTool { toolset ->
            toolset.mps_mcp_alter_structure(MPSStructureAlterOperation.CREATE_CONCEPTS, conceptParams)
        }
        val err = expectErr(response)
        assertTrue(
            "error must name the existing enum root and call out the collision: $err",
            err.contains(sharedName) && err.contains("already exists"),
        )

        readOnRepo {
            val matches = structureModel.rootNodes.filter { it.name == sharedName }
            assertEquals("only the original enum should remain", 1, matches.size)
            assertTrue(
                "the surviving root must still be the EnumerationDeclaration we seeded",
                matches.single().concept.name == "EnumerationDeclaration",
            )
        }
    }

    @Test
    fun `enum with invalid name is rejected before any node is created`() {
        // Enum creation must run through the same validateRootNodeName pipeline as concepts.
        val response = runTool { toolset ->
            toolset.mps_mcp_alter_structure(
                MPSStructureAlterOperation.CREATE_ENUM,
                """
                {
                  "structureModelRef": "$structureModelRef",
                  "enumName": "bad name with spaces",
                  "valuesJson": [ { "enumName": "X" } ]
                }
                """.trimIndent(),
            )
        }
        val err = expectErr(response)
        // Accept either the "uppercase" or "invalid characters" diagnostic — both come from
        // the same validator and the ordering is an implementation detail.
        assertTrue(
            "error must surface the validator's diagnostic, got: $err",
            err.contains("Enumeration") &&
                (err.contains("uppercase") || err.contains("invalid characters")),
        )
        readOnRepo {
            assertTrue(
                "no enum root should have been created on a validation failure",
                structureModel.rootNodes.none {
                    it.concept.name == "EnumerationDeclaration" && it.name?.contains("bad") == true
                },
            )
        }
    }

    @Test
    fun `enum error path rejects duplicate enum names and leaves model untouched`() {
        // First create the enum.
        val firstParams = """
            {
              "structureModelRef": "$structureModelRef",
              "enumName": "Mode",
              "valuesJson": [ { "enumName": "ON" } ]
            }
        """.trimIndent()
        assertOk(runTool { toolset ->
            toolset.mps_mcp_alter_structure(MPSStructureAlterOperation.CREATE_ENUM, firstParams)
        })

        // Now try again with the same name.
        val secondParams = """
            {
              "structureModelRef": "$structureModelRef",
              "enumName": "Mode",
              "valuesJson": [ { "enumName": "OFF" } ]
            }
        """.trimIndent()

        val response = runTool { toolset ->
            toolset.mps_mcp_alter_structure(MPSStructureAlterOperation.CREATE_ENUM, secondParams)
        }

        val obj = JsonParser.parseString(response).asJsonObject
        assertFalse("expected error envelope: $response", obj.get("ok").asBoolean)
        assertTrue(
            "error should mention duplicate enum name: ${obj.get("error").asString}",
            obj.get("error").asString.contains("Mode")
        )

        readOnRepo {
            val modes = structureModel.rootNodes.filter { it.name == "Mode" }
            assertEquals("only the original Mode enum should remain", 1, modes.size)
            val members = modes.first().getChildrenByName("members")
            assertEquals(listOf("ON"), members.mapNotNull { it.name })
        }
    }

    @Test
    fun `find-instances via query_structure (compat path) still returns the created concepts`() {
        // FIND_INSTANCES moved to mps_mcp_query_nodes; mps_mcp_query_structure keeps accepting
        // it (unadvertised) so pre-move skill copies in other projects continue to work. This
        // test pins that compat path: three new ConceptDeclaration roots, FIND_INSTANCES scoped
        // to the model must report all three and nothing else.
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
        waitForSmartMode()

        val findParams = """
            {
              "conceptRef": "jetbrains.mps.lang.structure.structure.ConceptDeclaration",
              "scope": "models",
              "models": [ "$structureModelRef" ]
            }
        """.trimIndent()

        val response = runTool {
            it.mps_mcp_query_structure(MPSStructureQueryOperation.FIND_INSTANCES, findParams)
        }

        val obj = JsonParser.parseString(response).asJsonObject
        assertTrue("expected ok envelope: $response", obj.get("ok").asBoolean)
        // The structure toolset wraps the results array as a JSON-string in `data`.
        val data = obj.get("data")
        val raw = if (data.isJsonPrimitive) data.asString else data.toString()
        val results = JsonParser.parseString(raw).asJsonArray
        val names = results.map { it.asJsonObject.get("name").asString }.toSet()
        assertEquals(
            "find-instances scoped to the test structure model should return exactly the three new concepts; got=$names",
            setOf("Alpha", "Beta", "Gamma"),
            names
        )
    }

    @Test
    fun `find-instances via query_structure (compat path) also serves conceptRefs and detail count`() {
        // The compat dispatch shares one implementation with mps_mcp_query_nodes, so the batched
        // selector and the count projection must be reachable through it too — otherwise a skill
        // copy that learned the new keys would be told they do not exist.
        val createParams = """
            {
              "structureModelRef": "$structureModelRef",
              "conceptsJson": [ { "name": "Alpha" }, { "name": "Beta" } ],
              "interfaceConceptsJson": [ { "name": "IMarker" } ]
            }
        """.trimIndent()
        assertOk(runTool { it.mps_mcp_alter_structure(MPSStructureAlterOperation.CREATE_CONCEPTS, createParams) })
        waitForSmartMode()

        val findParams = """
            {
              "conceptRefs": [
                "jetbrains.mps.lang.structure.structure.ConceptDeclaration",
                "jetbrains.mps.lang.structure.structure.InterfaceConceptDeclaration"
              ],
              "detail": "count",
              "scope": "models",
              "models": [ "$structureModelRef" ]
            }
        """.trimIndent()

        val response = runTool {
            it.mps_mcp_query_structure(MPSStructureQueryOperation.FIND_INSTANCES, findParams)
        }

        val rows = parseDataArray(response).map {
            it.asJsonObject.get("concept").asString to it.asJsonObject.get("count").asInt
        }
        assertEquals(
            listOf(
                "jetbrains.mps.lang.structure.structure.ConceptDeclaration" to 2,
                "jetbrains.mps.lang.structure.structure.InterfaceConceptDeclaration" to 1,
            ),
            rows,
        )
    }

    @Test
    fun `find-instances via query_structure rejects a partially resolved model scope`() {
        val findParams = """
            {
              "conceptRef": "jetbrains.mps.lang.structure.structure.ConceptDeclaration",
              "scope": "models",
              "models": [ "$structureModelRef", "definitely.missing.model" ]
            }
        """.trimIndent()

        val response = runTool {
            it.mps_mcp_query_structure(MPSStructureQueryOperation.FIND_INSTANCES, findParams)
        }
        val envelope = JsonParser.parseString(response).asJsonObject
        assertFalse("expected error envelope: $response", envelope.get("ok").asBoolean)
        assertEquals("INVALID_REQUEST", envelope.get("code").asString)
        assertTrue(envelope.get("error").asString.contains("definitely.missing.model"))
        assertFalse("scope errors must not return warnings: $response", envelope.has("warnings"))
    }

    @Test
    fun `required string null follows the existing missing-parameter path`() {
        val response = runTool {
            it.mps_mcp_query_structure(
                MPSStructureQueryOperation.IS_SUBCONCEPT_OF,
                """{"conceptRef":null,"superConceptRef":"anything"}""",
            )
        }
        val envelope = JsonParser.parseString(response).asJsonObject
        assertFalse("expected error envelope: $response", envelope.get("ok").asBoolean)
        assertEquals(
            "conceptRef is required in 'parameters' for IS_SUBCONCEPT_OF. " +
                "Retry with conceptRef set to the concept's reference or fully qualified name.",
            envelope.get("error").asString,
        )
    }

    @Test
    fun `every structure operation rejects every absent required key in one rejection`() {
        // Per operation: what `{}` lacks, and the keys of a payload carrying just the required
        // ones, all unresolvable. The coverage asserts make a new operation fail here until listed.
        val queries = mapOf(
            MPSStructureQueryOperation.GET_ENUMERATION_LITERALS to listOf("nodeReference", "propertyName"),
            MPSStructureQueryOperation.FIND_INSTANCES to listOf("one of conceptRef/conceptRefs"),
            MPSStructureQueryOperation.IS_SUBCONCEPT_OF to listOf("conceptRef", "superConceptRef"),
            MPSStructureQueryOperation.GET_SUB_CONCEPTS to listOf("conceptRef"),
            MPSStructureQueryOperation.GET_ASSIGNABLE_CONCEPTS to listOf("conceptRef"),
            MPSStructureQueryOperation.GET_ALL_SUPERCONCEPTS to listOf("conceptRef"),
            MPSStructureQueryOperation.LIST_CONCEPT_ASPECTS to listOf("conceptRef"),
            MPSStructureQueryOperation.GET_ASSIGNABLE_REFERENCES to listOf("contextNode", "referenceRole"),
            MPSStructureQueryOperation.IS_SMART_REFERENCE to listOf("conceptRef"),
        )
        assertEquals(MPSStructureQueryOperation.entries.toSet(), queries.keys)
        for ((operation, missing) in queries) {
            assertMissingParameterKeys(runTool { it.mps_mcp_query_structure(operation, "{}") }, missing)
            assertPastMissingParameterKeys(operation.name, runTool { it.mps_mcp_query_structure(operation, onlyRequired(missing)) })
        }

        val alterations = mapOf(
            MPSStructureAlterOperation.CREATE_CONCEPTS to
                listOf("structureModelRef", "one of conceptsJson/interfaceConceptsJson/conceptNames"),
            MPSStructureAlterOperation.CREATE_ENUM to listOf("structureModelRef", "enumName", "valuesJson"),
            MPSStructureAlterOperation.UPDATE_CONCEPT_PROPERTY to listOf("conceptRef", "propertyName"),
            MPSStructureAlterOperation.RENAME_CONCEPT_PROPERTY to listOf("conceptRef", "oldName", "newName"),
            MPSStructureAlterOperation.UPDATE_CONCEPT_CHILD to listOf("conceptRef", "role"),
            MPSStructureAlterOperation.RENAME_CONCEPT_CHILD to listOf("conceptRef", "oldRole", "newRole"),
            MPSStructureAlterOperation.UPDATE_CONCEPT_REFERENCE to listOf("conceptRef", "role"),
            MPSStructureAlterOperation.RENAME_CONCEPT_REFERENCE to listOf("conceptRef", "oldRole", "newRole"),
        )
        assertEquals(MPSStructureAlterOperation.entries.toSet(), alterations.keys)
        for ((operation, missing) in alterations) {
            assertMissingParameterKeys(runTool { it.mps_mcp_alter_structure(operation, "{}") }, missing)
            // Unresolvable references, so no operation reaches the model: the deletion forms of the
            // UPDATE_* operations and CREATE_* stop at resolution.
            assertPastMissingParameterKeys(operation.name, runTool { it.mps_mcp_alter_structure(operation, onlyRequired(missing)) })
        }
    }

    @Test
    fun `GET_ENUMERATION_LITERALS requires its property form only without enumerationRef`() {
        fun literals(parameters: String) =
            runTool { it.mps_mcp_query_structure(MPSStructureQueryOperation.GET_ENUMERATION_LITERALS, parameters) }
        val envelope = JsonParser.parseString(literals("""{"nodeReference":"$unresolvableNodeRef"}""")).asJsonObject
        assertEquals(
            "propertyName is required in 'parameters' for GET_ENUMERATION_LITERALS. Retry with propertyName set to " +
                "the name of an enumeration-typed property of nodeReference's concept.",
            envelope.get("error").asString,
        )
        assertPastMissingParameterKeys("GET_ENUMERATION_LITERALS", literals("""{"enumerationRef":"$unresolvableNodeRef"}"""))
    }

    @Test
    fun `RENAME_CONCEPT_CHILD names both missing keys with the retry for each`() {
        val envelope = JsonParser.parseString(
            runTool { it.mps_mcp_alter_structure(MPSStructureAlterOperation.RENAME_CONCEPT_CHILD, """{"oldRole":"a"}""") }
        ).asJsonObject
        assertEquals(
            "conceptRef and newRole are required in 'parameters' for RENAME_CONCEPT_CHILD. Retry with " +
                "conceptRef set to the concept's reference or fully qualified name; newRole set to the role's new name.",
            envelope.get("error").asString,
        )
    }

    /**
     * A payload satisfying every requirement in [missing] with a value that resolves to nothing;
     * a choice (`one of a/b`) is satisfied by its last alternative.
     */
    private fun onlyRequired(missing: List<String>): String = missing.joinToString(",", "{", "}") { name ->
        val key = name.substringAfterLast('/').removePrefix("one of ")
        val value = when (key) {
            "valuesJson" -> "[]"
            "conceptNames" -> "[\"NoSuchConcept\"]"
            "nodeReference", "contextNode" -> "\"$unresolvableNodeRef\""
            "structureModelRef" -> "\"${unresolvableNodeRef.substringBeforeLast('/')}\""
            "conceptRef", "conceptRefs", "superConceptRef" -> "\"no.such.language.structure.NoSuchConcept\""
            else -> "\"x\""
        }
        "\"$key\":$value"
    }

    @Test
    fun `structure query preserves non-null string coercion and failure envelopes`() {
        for (conceptRef in listOf("42", "[42]")) {
            val response = runTool {
                it.mps_mcp_query_structure(
                    MPSStructureQueryOperation.IS_SUBCONCEPT_OF,
                    """{"conceptRef":$conceptRef,"superConceptRef":"anything"}""",
                )
            }
            val envelope = JsonParser.parseString(response).asJsonObject
            assertFalse("expected error envelope: $response", envelope.get("ok").asBoolean)
            assertEquals("NOT_FOUND", envelope.get("code").asString)
            assertTrue("coerced reference must remain visible: $response", envelope.get("error").asString.contains("42"))
        }

        val response = runTool {
            it.mps_mcp_query_structure(
                MPSStructureQueryOperation.IS_SUBCONCEPT_OF,
                """{"conceptRef":{},"superConceptRef":"anything"}""",
            )
        }
        val envelope = JsonParser.parseString(response).asJsonObject
        assertFalse("expected error envelope: $response", envelope.get("ok").asBoolean)
        assertEquals("INTERNAL_ERROR", envelope.get("code").asString)
    }

    // ── UPDATE_CONCEPT_PROPERTY ───────────────────────────────────────────────────────

    @Test
    fun `UPDATE_CONCEPT_PROPERTY adds a new property on a concept that had none`() {
        val conceptRef = createConceptRoot("HostA")
        val params = """{"conceptRef":"$conceptRef","propertyName":"title","dataType":"string"}"""
        val response = runTool { it.mps_mcp_alter_structure(MPSStructureAlterOperation.UPDATE_CONCEPT_PROPERTY, params) }
        assertOk(response)

        val host = expectSingleRoot("HostA")
        readOnRepo {
            val props = host.getChildrenByName("propertyDeclaration")
            assertEquals(1, props.size)
            assertEquals("title", props.first().name)
        }
    }

    @Test
    fun `UPDATE_CONCEPT_PROPERTY deletes the property for omitted empty or null dataType`() {
        for ((suffix, dataType) in listOf("Omitted" to null, "Empty" to "\"\"", "Null" to "null")) {
            val hostName = "HostB$suffix"
            val conceptRef = createConceptRoot(hostName)
            assertOk(runTool {
                it.mps_mcp_alter_structure(
                    MPSStructureAlterOperation.UPDATE_CONCEPT_PROPERTY,
                    """{"conceptRef":"$conceptRef","propertyName":"toRemove","dataType":"integer"}""",
                )
            })
            val deleteParams = dataType?.let { value ->
                """{"conceptRef":"$conceptRef","propertyName":"toRemove","dataType":$value}"""
            } ?: """{"conceptRef":"$conceptRef","propertyName":"toRemove"}"""
            assertOk(runTool {
                it.mps_mcp_alter_structure(
                    MPSStructureAlterOperation.UPDATE_CONCEPT_PROPERTY,
                    deleteParams,
                )
            })
            readOnRepo {
                val host = structureModel.rootNodes.single { it.name == hostName }
                assertTrue("property must be gone for dataType=$dataType", host.getChildrenByName("propertyDeclaration").isEmpty())
            }
        }
    }

    @Test
    fun `UPDATE_CONCEPT_PROPERTY on an existing property rewrites its dataType`() {
        val conceptRef = createConceptRoot("HostUpd")
        // Seed with dataType=string.
        assertOk(runTool {
            it.mps_mcp_alter_structure(
                MPSStructureAlterOperation.UPDATE_CONCEPT_PROPERTY,
                """{"conceptRef":"$conceptRef","propertyName":"flexible","dataType":"string"}"""
            )
        })
        val seededRef = readOnRepo {
            val host = structureModel.rootNodes.single { it.name == "HostUpd" }
            val prop = host.getChildrenByName("propertyDeclaration").single()
            assertEquals("string", prop.getReferenceTargetByName("dataType")?.name)
            PersistenceFacade.getInstance().asString(prop.reference)
        }

        // Re-run with a different dataType — the existing property must be reused (same node
        // identity) and its dataType reference must now point at `integer`.
        assertOk(runTool {
            it.mps_mcp_alter_structure(
                MPSStructureAlterOperation.UPDATE_CONCEPT_PROPERTY,
                """{"conceptRef":"$conceptRef","propertyName":"flexible","dataType":"integer"}"""
            )
        })
        readOnRepo {
            val host = structureModel.rootNodes.single { it.name == "HostUpd" }
            val props = host.getChildrenByName("propertyDeclaration")
            assertEquals("must still be exactly one property — the existing node should be reused", 1, props.size)
            val updatedRef = PersistenceFacade.getInstance().asString(props.single().reference)
            assertEquals("the property node identity must be preserved on update", seededRef, updatedRef)
            assertEquals("integer", props.single().getReferenceTargetByName("dataType")?.name)
        }
    }

    @Test
    fun `UPDATE_CONCEPT_PROPERTY on unknown concept returns error envelope`() {
        val response = runTool {
            it.mps_mcp_alter_structure(
                MPSStructureAlterOperation.UPDATE_CONCEPT_PROPERTY,
                """{"conceptRef":"$unresolvableNodeRef","propertyName":"x","dataType":"string"}"""
            )
        }
        assertTrue(expectErr(response).contains("not found"))
    }

    @Test
    fun `UPDATE_CONCEPT_PROPERTY delete of unknown property returns error envelope`() {
        val conceptRef = createConceptRoot("HostC")
        val response = runTool {
            it.mps_mcp_alter_structure(
                MPSStructureAlterOperation.UPDATE_CONCEPT_PROPERTY,
                """{"conceptRef":"$conceptRef","propertyName":"missing","dataType":""}"""
            )
        }
        assertTrue(expectErr(response).contains("missing"))
    }

    // ── UPDATE_CONCEPT_CHILD ──────────────────────────────────────────────────────────

    @Test
    fun `UPDATE_CONCEPT_CHILD adds a multi-cardinality child link`() {
        val ownerRef = createConceptRoot("Owner1")
        val targetRef = createConceptRoot("Target1")
        val params = """
            {"conceptRef":"$ownerRef","role":"kids","targetConcept":"$targetRef","multiple":true,"optional":true}
        """.trimIndent()
        assertOk(runTool { it.mps_mcp_alter_structure(MPSStructureAlterOperation.UPDATE_CONCEPT_CHILD, params) })

        val owner = expectSingleRoot("Owner1")
        readOnRepo {
            val links = owner.getChildrenByName("linkDeclaration")
            assertEquals(1, links.size)
            val link = links.first()
            assertEquals("kids", link.getPropertyByName("role"))
            val target = link.getReferenceTargetByName("target")
            assertEquals("Target1", target?.name)
            // multiple=true + optional=true must select the `_0__n` source cardinality literal,
            // and a child link must carry `metaClass=aggregation`. Asserting both guards against
            // a regression that ignores either flag. Enum properties are stored as
            // `<enumDeclarationId>/<literalName>`, so check the literal-name suffix.
            assertEnumLiteralIs("_0__n", link.getPropertyByName("sourceCardinality"))
            assertEnumLiteralIs("aggregation", link.getPropertyByName("metaClass"))
        }
    }

    @Test
    fun `UPDATE_CONCEPT_CHILD deletes the existing link for omitted empty or null targetConcept`() {
        for ((suffix, targetConcept) in listOf("Omitted" to null, "Empty" to "\"\"", "Null" to "null")) {
            val ownerName = "Owner2$suffix"
            val ownerRef = createConceptRoot(ownerName)
            val targetRef = createConceptRoot("Target2$suffix")
            assertOk(runTool {
                it.mps_mcp_alter_structure(
                    MPSStructureAlterOperation.UPDATE_CONCEPT_CHILD,
                    """{"conceptRef":"$ownerRef","role":"kid","targetConcept":"$targetRef","multiple":false,"optional":true}""",
                )
            })
            val deleteParams = targetConcept?.let { value ->
                """{"conceptRef":"$ownerRef","role":"kid","targetConcept":$value}"""
            } ?: """{"conceptRef":"$ownerRef","role":"kid"}"""
            assertOk(runTool {
                it.mps_mcp_alter_structure(
                    MPSStructureAlterOperation.UPDATE_CONCEPT_CHILD,
                    deleteParams,
                )
            })
            readOnRepo {
                val owner = structureModel.rootNodes.single { it.name == ownerName }
                assertTrue("child link must be gone for targetConcept=$targetConcept", owner.getChildrenByName("linkDeclaration").isEmpty())
            }
        }
    }

    // ── UPDATE_CONCEPT_REFERENCE ──────────────────────────────────────────────────────

    @Test
    fun `UPDATE_CONCEPT_REFERENCE adds a mandatory reference link`() {
        val ownerRef = createConceptRoot("Owner3")
        val targetRef = createConceptRoot("Target3")
        val params = """
            {"conceptRef":"$ownerRef","role":"ref","targetConcept":"$targetRef","optional":false}
        """.trimIndent()
        assertOk(runTool { it.mps_mcp_alter_structure(MPSStructureAlterOperation.UPDATE_CONCEPT_REFERENCE, params) })

        val owner = expectSingleRoot("Owner3")
        readOnRepo {
            val links = owner.getChildrenByName("linkDeclaration")
            assertEquals(1, links.size)
            val link = links.first()
            assertEquals("ref", link.getPropertyByName("role"))
            val target = link.getReferenceTargetByName("target")
            assertEquals("Target3", target?.name)
            // optional=false on a reference must select the mandatory `_1` cardinality literal.
            // (LinkDeclaration's `metaClass` defaults to `reference`, so a regression that wires
            // it correctly is indistinguishable from one that skips the call entirely — the
            // distinguishing case for metaClass is exercised by the child-link test above.)
            assertEnumLiteralIs("_1", link.getPropertyByName("sourceCardinality"))
        }
    }

    @Test
    fun `UPDATE_CONCEPT_REFERENCE deletes the existing link for omitted empty or null targetConcept`() {
        for ((suffix, targetConcept) in listOf("Omitted" to null, "Empty" to "\"\"", "Null" to "null")) {
            val ownerName = "Owner${suffix}Reference"
            val ownerRef = createConceptRoot(ownerName)
            val targetRef = createConceptRoot("Target${suffix}Reference")
            assertOk(runTool {
                it.mps_mcp_alter_structure(
                    MPSStructureAlterOperation.UPDATE_CONCEPT_REFERENCE,
                    """{"conceptRef":"$ownerRef","role":"ref","targetConcept":"$targetRef"}""",
                )
            })
            val deleteParams = targetConcept?.let { value ->
                """{"conceptRef":"$ownerRef","role":"ref","targetConcept":$value}"""
            } ?: """{"conceptRef":"$ownerRef","role":"ref"}"""
            assertOk(runTool {
                it.mps_mcp_alter_structure(
                    MPSStructureAlterOperation.UPDATE_CONCEPT_REFERENCE,
                    deleteParams,
                )
            })
            readOnRepo {
                val owner = structureModel.rootNodes.single { it.name == ownerName }
                assertTrue("reference link must be gone for targetConcept=$targetConcept", owner.getChildrenByName("linkDeclaration").isEmpty())
            }
        }
    }

    @Test
    fun `UPDATE_CONCEPT_REFERENCE delete of unknown role returns error envelope`() {
        val ownerRef = createConceptRoot("Owner4")
        val response = runTool {
            it.mps_mcp_alter_structure(
                MPSStructureAlterOperation.UPDATE_CONCEPT_REFERENCE,
                """{"conceptRef":"$ownerRef","role":"missing","targetConcept":""}"""
            )
        }
        assertTrue(expectErr(response).contains("missing"))
    }

    @Test
    fun `UPDATE_CONCEPT_REFERENCE rejects multiple true and names the wrapper idiom`() {
        val ownerRef = createConceptRoot("Owner5")
        val targetRef = createConceptRoot("Target5")
        val response = runTool {
            it.mps_mcp_alter_structure(
                MPSStructureAlterOperation.UPDATE_CONCEPT_REFERENCE,
                """{"conceptRef":"$ownerRef","role":"refs","targetConcept":"$targetRef","multiple":true}"""
            )
        }
        val error = expectErr(response)
        assertTrue("error must state the rule: $error", error.contains("single-valued"))
        assertTrue("error must name the workaround: $error", error.contains("smart-reference wrapper concept"))
        assertEquals("INVALID_REQUEST", JsonParser.parseString(response).asJsonObject.get("code").asString)
        readOnRepo {
            val owner = structureModel.rootNodes.single { it.name == "Owner5" }
            assertTrue("rejected call must not create a link", owner.getChildrenByName("linkDeclaration").isEmpty())
        }
    }

    @Test
    fun `an explicit null boolean parameter takes the default instead of failing`() {
        // `{"dryRun": null}` used to throw out of `?.asBoolean` — Kotlin's `?.` does not
        // short-circuit a JsonNull — and answered INTERNAL_ERROR with a WARN in the log.
        val ownerRef = createConceptRoot("NullBool")
        val targetRef = createConceptRoot("NullBoolTarget")
        assertOk(runTool {
            it.mps_mcp_alter_structure(
                MPSStructureAlterOperation.UPDATE_CONCEPT_CHILD,
                """{"conceptRef":"$ownerRef","role":"kid","targetConcept":"$targetRef","multiple":null,"dryRun":null}"""
            )
        })
        readOnRepo {
            val owner = structureModel.rootNodes.single { it.name == "NullBool" }
            // dryRun defaulted to false, so the write really happened.
            val link = owner.getChildrenByName("linkDeclaration").single()
            assertEquals("kid", link.getPropertyByName("role"))
            // multiple defaulted to false: 0..1 is sourceCardinality's default literal, which MPS
            // stores as nothing (the 0..n case is pinned by the quoted-boolean test below).
            assertNull(link.getPropertyByName("sourceCardinality"))
        }
    }

    @Test
    fun `a quoted boolean parameter is accepted`() {
        // MCP clients routinely stringify booleans, and this worked before the typed readers
        // landed; keep it working rather than turning a live call into an error.
        val ownerRef = createConceptRoot("QuotedBool")
        val targetRef = createConceptRoot("QuotedBoolTarget")
        assertOk(runTool {
            it.mps_mcp_alter_structure(
                MPSStructureAlterOperation.UPDATE_CONCEPT_CHILD,
                """{"conceptRef":"$ownerRef","role":"kids","targetConcept":"$targetRef","multiple":"true"}"""
            )
        })
        readOnRepo {
            val owner = structureModel.rootNodes.single { it.name == "QuotedBool" }
            val link = owner.getChildrenByName("linkDeclaration").single()
            assertEnumLiteralIs("_0__n", link.getPropertyByName("sourceCardinality"))
        }
    }

    @Test
    fun `a numeric boolean parameter is rejected by name instead of read as false`() {
        // The silent-wrong-value case: gson's asBoolean read 1 as false, so the caller got
        // ok:true and a 0..1 child where it asked for 0..n.
        val ownerRef = createConceptRoot("NumericBool")
        val targetRef = createConceptRoot("NumericBoolTarget")
        val response = runTool {
            it.mps_mcp_alter_structure(
                MPSStructureAlterOperation.UPDATE_CONCEPT_CHILD,
                """{"conceptRef":"$ownerRef","role":"kid","targetConcept":"$targetRef","multiple":1}"""
            )
        }
        val error = expectErr(response)
        assertTrue("error must name the offending key: $error", error.contains("parameters.multiple"))
        assertTrue("error must state the expected type: $error", error.contains("must be a boolean"))
        assertEquals("INVALID_REQUEST", JsonParser.parseString(response).asJsonObject.get("code").asString)
        readOnRepo {
            val owner = structureModel.rootNodes.single { it.name == "NumericBool" }
            assertTrue("rejected call must not create a link", owner.getChildrenByName("linkDeclaration").isEmpty())
        }
    }

    @Test
    fun `CREATE_CONCEPTS rejects multiple on a references entry`() {
        // The bulk path shares one link parser with `children`, so it used to accept `multiple`
        // on a reference and then drop it — the same silent 0..1 result as UPDATE_CONCEPT_REFERENCE.
        val parameters = """
            {
              "structureModelRef": "$structureModelRef",
              "conceptsJson": [
                {
                  "name": "BulkRefOwner",
                  "references": [ { "role": "refs", "target": "BulkRefOwner", "multiple": true } ]
                }
              ]
            }
        """.trimIndent()
        val response = runTool { it.mps_mcp_alter_structure(MPSStructureAlterOperation.CREATE_CONCEPTS, parameters) }

        val error = expectErr(response)
        assertTrue("error must state the rule: $error", error.contains("single-valued"))
        assertTrue("error must name the workaround: $error", error.contains("smart-reference wrapper concept"))
        assertTrue("error must name the offending path: $error", error.contains("references[0].multiple"))
        readOnRepo {
            assertTrue(
                "rejected blueprint must create nothing",
                structureModel.rootNodes.none { it.name == "BulkRefOwner" },
            )
        }
    }

    @Test
    fun `UPDATE_CONCEPT_REFERENCE accepts multiple false`() {
        val ownerRef = createConceptRoot("Owner6")
        val targetRef = createConceptRoot("Target6")
        assertOk(runTool {
            it.mps_mcp_alter_structure(
                MPSStructureAlterOperation.UPDATE_CONCEPT_REFERENCE,
                """{"conceptRef":"$ownerRef","role":"ref","targetConcept":"$targetRef","multiple":false}"""
            )
        })
        readOnRepo {
            val owner = structureModel.rootNodes.single { it.name == "Owner6" }
            val link = owner.getChildrenByName("linkDeclaration").single()
            assertEquals("ref", link.getPropertyByName("role"))
            assertEquals("Target6", link.getReferenceTargetByName("target")?.name)
            // `_0__1` is `sourceCardinality`'s default literal, and MPS stores nothing for a
            // property sitting at its enumeration's default — so "absent" IS 0..1 here. The
            // mandatory case above is the one that stores a literal (`_1`).
            assertNull(link.getPropertyByName("sourceCardinality"))
        }
    }

    // ── RENAME_CONCEPT_PROPERTY ───────────────────────────────────────────────────────

    @Test
    fun `RENAME_CONCEPT_PROPERTY renames the existing property`() {
        val conceptRef = createConceptRoot("RenameP1")
        assertOk(runTool {
            it.mps_mcp_alter_structure(
                MPSStructureAlterOperation.UPDATE_CONCEPT_PROPERTY,
                """{"conceptRef":"$conceptRef","propertyName":"oldName","dataType":"string"}"""
            )
        })
        assertOk(runTool {
            it.mps_mcp_alter_structure(
                MPSStructureAlterOperation.RENAME_CONCEPT_PROPERTY,
                """{"conceptRef":"$conceptRef","oldName":"oldName","newName":"newName"}"""
            )
        })
        readOnRepo {
            val host = structureModel.rootNodes.single { it.name == "RenameP1" }
            val props = host.getChildrenByName("propertyDeclaration")
            assertEquals(1, props.size)
            assertEquals("newName", props.first().name)
        }
    }

    @Test
    fun `RENAME_CONCEPT_PROPERTY on unknown property returns error envelope`() {
        val conceptRef = createConceptRoot("RenameP2")
        val response = runTool {
            it.mps_mcp_alter_structure(
                MPSStructureAlterOperation.RENAME_CONCEPT_PROPERTY,
                """{"conceptRef":"$conceptRef","oldName":"nope","newName":"other"}"""
            )
        }
        assertTrue(expectErr(response).contains("nope"))
    }

    // ── RENAME_CONCEPT_CHILD ──────────────────────────────────────────────────────────

    @Test
    fun `RENAME_CONCEPT_CHILD renames the existing child role`() {
        val ownerRef = createConceptRoot("RenameC1")
        val targetRef = createConceptRoot("RenameC1Target")
        assertOk(runTool {
            it.mps_mcp_alter_structure(
                MPSStructureAlterOperation.UPDATE_CONCEPT_CHILD,
                """{"conceptRef":"$ownerRef","role":"oldRole","targetConcept":"$targetRef","multiple":true,"optional":true}"""
            )
        })
        assertOk(runTool {
            it.mps_mcp_alter_structure(
                MPSStructureAlterOperation.RENAME_CONCEPT_CHILD,
                """{"conceptRef":"$ownerRef","oldRole":"oldRole","newRole":"newRole"}"""
            )
        })
        readOnRepo {
            val owner = structureModel.rootNodes.single { it.name == "RenameC1" }
            val links = owner.getChildrenByName("linkDeclaration")
            assertEquals(1, links.size)
            assertEquals("newRole", links.first().getPropertyByName("role"))
        }
    }

    @Test
    fun `RENAME_CONCEPT_CHILD on unknown role returns error envelope`() {
        val ownerRef = createConceptRoot("RenameC2")
        val response = runTool {
            it.mps_mcp_alter_structure(
                MPSStructureAlterOperation.RENAME_CONCEPT_CHILD,
                """{"conceptRef":"$ownerRef","oldRole":"absent","newRole":"other"}"""
            )
        }
        assertTrue(expectErr(response).contains("absent"))
    }

    // ── RENAME_CONCEPT_REFERENCE ──────────────────────────────────────────────────────

    @Test
    fun `RENAME_CONCEPT_REFERENCE renames the existing reference role`() {
        val ownerRef = createConceptRoot("RenameR1")
        val targetRef = createConceptRoot("RenameR1Target")
        assertOk(runTool {
            it.mps_mcp_alter_structure(
                MPSStructureAlterOperation.UPDATE_CONCEPT_REFERENCE,
                """{"conceptRef":"$ownerRef","role":"oldRef","targetConcept":"$targetRef","optional":true}"""
            )
        })
        assertOk(runTool {
            it.mps_mcp_alter_structure(
                MPSStructureAlterOperation.RENAME_CONCEPT_REFERENCE,
                """{"conceptRef":"$ownerRef","oldRole":"oldRef","newRole":"newRef"}"""
            )
        })
        readOnRepo {
            val owner = structureModel.rootNodes.single { it.name == "RenameR1" }
            val links = owner.getChildrenByName("linkDeclaration")
            assertEquals(1, links.size)
            assertEquals("newRef", links.first().getPropertyByName("role"))
        }
    }

    // ── IS_SUBCONCEPT_OF ──────────────────────────────────────────────────────────────

    @Test
    fun `IS_SUBCONCEPT_OF returns true for ConceptDeclaration ⇒ AbstractConceptDeclaration`() {
        val response = runTool {
            it.mps_mcp_query_structure(
                MPSStructureQueryOperation.IS_SUBCONCEPT_OF,
                """{"conceptRef":"jetbrains.mps.lang.structure.structure.ConceptDeclaration","superConceptRef":"jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration"}"""
            )
        }
        // The dispatcher emits `okJson(boolean.toString())`, so `data` is a JSON boolean primitive.
        assertTrue("expected data=true, got: $response", expectDataBoolean(response))
    }

    @Test
    fun `IS_SUBCONCEPT_OF returns false for unrelated concepts`() {
        val response = runTool {
            it.mps_mcp_query_structure(
                MPSStructureQueryOperation.IS_SUBCONCEPT_OF,
                """{"conceptRef":"jetbrains.mps.lang.structure.structure.PropertyDeclaration","superConceptRef":"jetbrains.mps.lang.structure.structure.LinkDeclaration"}"""
            )
        }
        assertFalse("expected data=false, got: $response", expectDataBoolean(response))
    }

    @Test
    fun `IS_SUBCONCEPT_OF returns error envelope when the concept is unknown`() {
        val response = runTool {
            it.mps_mcp_query_structure(
                MPSStructureQueryOperation.IS_SUBCONCEPT_OF,
                """{"conceptRef":"this.does.not.exist","superConceptRef":"jetbrains.mps.lang.core.structure.BaseConcept"}"""
            )
        }
        assertTrue(expectErr(response).contains("this.does.not.exist"))
    }

    // ── GET_SUB_CONCEPTS / GET_ASSIGNABLE_CONCEPTS / GET_ALL_SUPERCONCEPTS ─────────────

    @Test
    fun `GET_SUB_CONCEPTS of AbstractConceptDeclaration includes ConceptDeclaration and InterfaceConceptDeclaration`() {
        val response = runTool {
            it.mps_mcp_query_structure(
                MPSStructureQueryOperation.GET_SUB_CONCEPTS,
                """
                {
                  "conceptRef":"jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration",
                  "languageRefs":["jetbrains.mps.lang.structure"]
                }
                """.trimIndent()
            )
        }
        val arr = parseDataArray(response)
        val names = arr.map { it.asJsonObject.get("name").asString }.toSet()
        assertTrue("sub-concepts must contain ConceptDeclaration; got=$names", names.contains("ConceptDeclaration"))
        assertTrue("sub-concepts must contain InterfaceConceptDeclaration; got=$names", names.contains("InterfaceConceptDeclaration"))
    }

    @Test
    fun `GET_ASSIGNABLE_CONCEPTS of AbstractConceptDeclaration omits the abstract root itself`() {
        val response = runTool {
            it.mps_mcp_query_structure(
                MPSStructureQueryOperation.GET_ASSIGNABLE_CONCEPTS,
                """
                {
                  "conceptRef":"jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration",
                  "languageRefs":["jetbrains.mps.lang.structure"]
                }
                """.trimIndent()
            )
        }
        val arr = parseDataArray(response)
        val names = arr.map { it.asJsonObject.get("name").asString }.toSet()
        assertFalse("assignable must drop the abstract root; got=$names", names.contains("AbstractConceptDeclaration"))
        assertTrue("assignable must still contain concrete ConceptDeclaration; got=$names", names.contains("ConceptDeclaration"))
    }

    @Test
    fun `GET_ALL_SUPERCONCEPTS of ConceptDeclaration includes AbstractConceptDeclaration and BaseConcept`() {
        val response = runTool {
            it.mps_mcp_query_structure(
                MPSStructureQueryOperation.GET_ALL_SUPERCONCEPTS,
                """{"conceptRef":"jetbrains.mps.lang.structure.structure.ConceptDeclaration"}"""
            )
        }
        val arr = parseDataArray(response)
        val names = arr.map { it.asJsonObject.get("name").asString }.toSet()
        assertTrue("must include AbstractConceptDeclaration; got=$names", names.contains("AbstractConceptDeclaration"))
        assertTrue("must include BaseConcept; got=$names", names.contains("BaseConcept"))
    }

    @Test
    fun `GET_ALL_SUPERCONCEPTS returns error envelope when concept is unknown`() {
        val response = runTool {
            it.mps_mcp_query_structure(
                MPSStructureQueryOperation.GET_ALL_SUPERCONCEPTS,
                """{"conceptRef":"this.does.not.exist"}"""
            )
        }
        assertTrue(expectErr(response).contains("this.does.not.exist"))
    }

    // ── GET_ENUMERATION_LITERALS ──────────────────────────────────────────────────────

    @Test
    fun `GET_ENUMERATION_LITERALS lists metaClass literals for a LinkDeclaration`() {
        // UPDATE_CONCEPT_CHILD creates a LinkDeclaration whose `metaClass` is an enumeration property.
        val ownerRef = createConceptRoot("EnumLitOwner")
        val targetRef = createConceptRoot("EnumLitTarget")
        assertOk(runTool {
            it.mps_mcp_alter_structure(
                MPSStructureAlterOperation.UPDATE_CONCEPT_CHILD,
                """{"conceptRef":"$ownerRef","role":"kid","targetConcept":"$targetRef","multiple":false,"optional":true}"""
            )
        })

        val linkRef = readOnRepo {
            val owner = structureModel.rootNodes.single { it.name == "EnumLitOwner" }
            val link = owner.getChildrenByName("linkDeclaration").single()
            PersistenceFacade.getInstance().asString(link.reference)
        }

        val response = runTool {
            it.mps_mcp_query_structure(
                MPSStructureQueryOperation.GET_ENUMERATION_LITERALS,
                """{"nodeReference":"$linkRef","propertyName":"metaClass"}"""
            )
        }
        val arr = parseDataArray(response)
        val literalNames = arr.map { it.asJsonObject.get("value").asString }.toSet()
        // `metaClass` enumeration has at minimum `aggregation` and `reference` literals — those
        // are the two values [setLinkMetaClass] selects between.
        assertTrue("expected 'aggregation' among $literalNames", literalNames.contains("aggregation"))
        assertTrue("expected 'reference' among $literalNames", literalNames.contains("reference"))
    }

    @Test
    fun `GET_ENUMERATION_LITERALS with null enumerationRef uses the property form`() {
        val ownerRef = createConceptRoot("EnumLitNullOwner")
        val targetRef = createConceptRoot("EnumLitNullTarget")
        assertOk(runTool {
            it.mps_mcp_alter_structure(
                MPSStructureAlterOperation.UPDATE_CONCEPT_CHILD,
                """{"conceptRef":"$ownerRef","role":"kid","targetConcept":"$targetRef"}""",
            )
        })
        val linkRef = readOnRepo {
            val owner = structureModel.rootNodes.single { it.name == "EnumLitNullOwner" }
            val link = owner.getChildrenByName("linkDeclaration").single()
            PersistenceFacade.getInstance().asString(link.reference)
        }

        val omittedResponse = runTool {
            it.mps_mcp_query_structure(
                MPSStructureQueryOperation.GET_ENUMERATION_LITERALS,
                """{"nodeReference":"$linkRef","propertyName":"metaClass"}""",
            )
        }
        val nullResponse = runTool {
            it.mps_mcp_query_structure(
                MPSStructureQueryOperation.GET_ENUMERATION_LITERALS,
                """{"enumerationRef":null,"nodeReference":"$linkRef","propertyName":"metaClass"}""",
            )
        }
        val omittedLiterals = parseDataArray(omittedResponse)
        val nullLiterals = parseDataArray(nullResponse)
        assertEquals("explicit null must select the same property form as omission", omittedLiterals, nullLiterals)
        val names = nullLiterals.map { it.asJsonObject.get("value").asString }.toSet()
        assertTrue("expected aggregation among $names", names.contains("aggregation"))
        assertTrue("expected reference among $names", names.contains("reference"))
    }

    @Test
    fun `GET_ENUMERATION_LITERALS rejects a non-enum property`() {
        val conceptRef = createConceptRoot("EnumLitMiss")
        val response = runTool {
            it.mps_mcp_query_structure(
                MPSStructureQueryOperation.GET_ENUMERATION_LITERALS,
                """{"nodeReference":"$conceptRef","propertyName":"name"}"""
            )
        }
        assertTrue(expectErr(response).contains("not an enumeration"))
    }

    @Test
    fun `GET_ENUMERATION_LITERALS returns NOT_FOUND for an unknown node`() {
        val response = runTool {
            it.mps_mcp_query_structure(
                MPSStructureQueryOperation.GET_ENUMERATION_LITERALS,
                """{"nodeReference":"$unresolvableNodeRef","propertyName":"name"}"""
            )
        }
        assertTrue(expectErr(response).contains("not found"))
    }

    @Test
    fun `GET_ENUMERATION_LITERALS via enum declaration ref succeeds`() {
        // Build a fresh enum and look up its literals by passing the enum declaration node directly,
        // without needing an instance node that uses the enum as a property type.
        val enumParams = """
            {
              "structureModelRef": "$structureModelRef",
              "enumName": "EnumLitDirect",
              "valuesJson": [
                { "enumName": "RED",   "enumPresentation": "Red"   },
                { "enumName": "GREEN", "enumPresentation": "Green" },
                { "enumName": "BLUE",  "enumPresentation": "Blue"  }
              ]
            }
        """.trimIndent()
        assertOk(runTool { it.mps_mcp_alter_structure(MPSStructureAlterOperation.CREATE_ENUM, enumParams) })

        val enumRef = readOnRepo {
            PersistenceFacade.getInstance().asString(expectSingleRoot("EnumLitDirect").reference)
        }

        val response = runTool {
            it.mps_mcp_query_structure(
                MPSStructureQueryOperation.GET_ENUMERATION_LITERALS,
                """{"enumerationRef":"$enumRef"}"""
            )
        }
        val arr = parseDataArray(response)
        val values = arr.map { it.asJsonObject.get("value").asString }
        val presentations = arr.map { it.asJsonObject.get("presentation").asString }
        assertEquals(listOf("RED", "GREEN", "BLUE"), values)
        assertEquals(listOf("Red", "Green", "Blue"), presentations)
    }

    @Test
    fun `GET_ENUMERATION_LITERALS rejects an enumerationRef pointing at a non-enum declaration`() {
        val conceptRef = createConceptRoot("EnumLitNotEnum")
        val response = runTool {
            it.mps_mcp_query_structure(
                MPSStructureQueryOperation.GET_ENUMERATION_LITERALS,
                """{"enumerationRef":"$conceptRef"}"""
            )
        }
        assertTrue(expectErr(response).contains("not an EnumerationDeclaration"))
    }

    @Test
    fun `GET_ENUMERATION_LITERALS resolves an enumerationRef given as a qualified name`() {
        // Study defect D22: a qualified enumeration name resolved nowhere in the tool surface —
        // get_concept_details can never return an EnumerationDeclaration, and this route took a
        // node reference only. Both the model-qualified and the language-qualified form must work,
        // because both are shapes a caller reads off a roots dump or a `qualifiedName` field.
        createEnum("EnumLitByName", listOf("LOW" to "Low", "HIGH" to "High"))
        val modelLongName = readOnRepo { structureModel.name.longName }
        val languageName = readOnRepo { language.moduleName!! }

        for (ref in listOf("$modelLongName.EnumLitByName", "$languageName.EnumLitByName", "EnumLitByName")) {
            val response = runTool {
                it.mps_mcp_query_structure(
                    MPSStructureQueryOperation.GET_ENUMERATION_LITERALS,
                    """{"enumerationRef":"$ref"}"""
                )
            }
            val values = parseDataArray(response).map { it.asJsonObject.get("value").asString }
            assertEquals("enumerationRef '$ref' must resolve", listOf("LOW", "HIGH"), values)
        }
    }

    @Test
    fun `GET_ENUMERATION_LITERALS rejects a qualified concept name as enumerationRef`() {
        createConceptRoot("EnumLitNotEnumByName")
        val modelLongName = readOnRepo { structureModel.name.longName }
        val response = runTool {
            it.mps_mcp_query_structure(
                MPSStructureQueryOperation.GET_ENUMERATION_LITERALS,
                """{"enumerationRef":"$modelLongName.EnumLitNotEnumByName"}"""
            )
        }
        val message = expectErr(response)
        assertTrue(message, message.contains("not an EnumerationDeclaration"))
        assertTrue("must name the offending parameter: $message", message.contains("'enumerationRef'"))
    }

    @Test
    fun `GET_ENUMERATION_LITERALS names both accepted forms when enumerationRef does not resolve`() {
        // The two input forms must stay distinguishable: this branch names 'enumerationRef' and
        // points at the property form, while the property form's own failures name
        // 'nodeReference'/'propertyName'.
        val byDeclaration = expectErr(runTool {
            it.mps_mcp_query_structure(
                MPSStructureQueryOperation.GET_ENUMERATION_LITERALS,
                """{"enumerationRef":"no.such.enum.Nope"}"""
            )
        })
        assertTrue(byDeclaration, byDeclaration.contains("'enumerationRef'"))
        assertTrue("must name the node-reference form: $byDeclaration", byDeclaration.contains("r:..."))
        assertTrue("must name the qualified-name form: $byDeclaration", byDeclaration.contains("qualified name"))
        assertTrue("must name the property form: $byDeclaration", byDeclaration.contains("'propertyName'"))

        val byProperty = expectErr(runTool {
            it.mps_mcp_query_structure(
                MPSStructureQueryOperation.GET_ENUMERATION_LITERALS,
                """{"nodeReference":"$unresolvableNodeRef","propertyName":"name"}"""
            )
        })
        assertFalse(
            "the property form must not answer with the enumerationRef message: $byProperty",
            byProperty.contains("'enumerationRef'"),
        )
    }

    // ── blob-key aliases (`…Ref` / `…Reference`) ──────────────────────────────────────

    @Test
    fun `structure blob keys accept both the Ref and the Reference spelling`() {
        val fooRef = createConceptRoot("AliasFoo")

        // CREATE_CONCEPTS: structureModelRef / structureModelReference
        assertOk(runTool {
            it.mps_mcp_alter_structure(
                MPSStructureAlterOperation.CREATE_CONCEPTS,
                """{"structureModelReference":"$structureModelRef","conceptsJson":[{"name":"AliasCreated"}]}"""
            )
        })
        assertEquals("AliasCreated", readOnRepo { expectSingleRoot("AliasCreated").name })

        // IS_SUBCONCEPT_OF: conceptRef / conceptReference and superConceptRef / superConceptReference
        assertTrue(expectDataBoolean(runTool {
            it.mps_mcp_query_structure(
                MPSStructureQueryOperation.IS_SUBCONCEPT_OF,
                """{"conceptReference":"$fooRef","superConceptReference":"jetbrains.mps.lang.core.structure.BaseConcept"}"""
            )
        }))

        // GET_ENUMERATION_LITERALS: enumerationRef / enumerationReference
        createEnum("AliasEnum", listOf("ONE" to "One"))
        val aliasEnumRef = readOnRepo {
            PersistenceFacade.getInstance().asString(expectSingleRoot("AliasEnum").reference)
        }
        assertEquals(
            listOf("ONE"),
            parseDataArray(runTool {
                it.mps_mcp_query_structure(
                    MPSStructureQueryOperation.GET_ENUMERATION_LITERALS,
                    """{"enumerationReference":"$aliasEnumRef"}"""
                )
            }).map { it.asJsonObject.get("value").asString },
        )
    }

    @Test
    fun `structure blob keys reject two spellings of the same parameter`() {
        val fooRef = createConceptRoot("AliasConflict")
        val message = expectErr(runTool {
            it.mps_mcp_query_structure(
                MPSStructureQueryOperation.GET_ALL_SUPERCONCEPTS,
                """{"conceptRef":"$fooRef","conceptReference":"$fooRef"}"""
            )
        })
        assertTrue(message, message.contains("'conceptRef'") && message.contains("'conceptReference'"))
        assertTrue("must name the winner: $message", message.contains("Keep 'conceptRef'"))
    }

    // ── LIST_CONCEPT_ASPECTS ──────────────────────────────────────────────────────────

    @Test
    fun `LIST_CONCEPT_ASPECTS on a newly created concept returns an empty array`() {
        // The created concept lives in the test's structure model and is not referenced from any
        // aspect model — the result must be an empty JSON array.
        val conceptRef = createConceptRoot("AspectFree")
        val response = runTool {
            it.mps_mcp_query_structure(
                MPSStructureQueryOperation.LIST_CONCEPT_ASPECTS,
                """{"conceptRef":"$conceptRef"}"""
            )
        }
        val arr = parseDataArray(response)
        assertEquals("expected no aspect-model entries; got $arr", 0, arr.size())
    }

    @Test
    fun `LIST_CONCEPT_ASPECTS on an unknown concept returns error envelope`() {
        val response = runTool {
            it.mps_mcp_query_structure(
                MPSStructureQueryOperation.LIST_CONCEPT_ASPECTS,
                """{"conceptRef":"this.does.not.exist"}"""
            )
        }
        assertTrue(expectErr(response).contains("this.does.not.exist"))
    }

    // ── Plural conceptRefs on single-concept queries (study D55) ──────────────────────

    @Test
    fun `single-concept queries accept conceptRefs as one value without a warning`() {
        val conceptRef = createConceptRoot("PluralSingle")
        for (value in listOf("\"$conceptRef\"", "[\"$conceptRef\"]")) {
            val response = runTool {
                it.mps_mcp_query_structure(
                    MPSStructureQueryOperation.LIST_CONCEPT_ASPECTS,
                    """{"conceptRefs":$value}"""
                )
            }
            assertEquals(response, 0, parseDataArray(response).size())
            assertFalse("one value is not a collapse: $response", JsonParser.parseString(response).asJsonObject.has("warnings"))
        }
    }

    @Test
    fun `single-concept queries use the first of several conceptRefs and warn about the rest`() {
        val first = createConceptRoot("PluralFirst")
        val second = createConceptRoot("PluralSecond")
        val response = runTool {
            it.mps_mcp_query_structure(
                MPSStructureQueryOperation.IS_SUBCONCEPT_OF,
                """{"conceptRefs":["$first","$second"],"superConceptRef":"jetbrains.mps.lang.core.structure.BaseConcept"}"""
            )
        }
        assertTrue(expectDataBoolean(response))
        val warnings = JsonParser.parseString(response).asJsonObject.getAsJsonArray("warnings")
        assertNotNull("expected a warning for the ignored concept: $response", warnings)
        assertEquals(response, 1, warnings.size())
        val warning = warnings[0].asString
        assertTrue(warning, warning.contains("IS_SUBCONCEPT_OF takes a single 'conceptRef'"))
        assertTrue(warning, warning.contains("'$first'"))
        assertTrue(warning, warning.contains("the other value was ignored"))

        // The warning rides along on a failure envelope too, returned or thrown: the caller learns
        // the lookup that failed was only the first of its values.
        val notFound = runTool {
            it.mps_mcp_query_structure(
                MPSStructureQueryOperation.LIST_CONCEPT_ASPECTS,
                """{"conceptRefs":["this.does.not.exist","$second"]}"""
            )
        }
        assertTrue(expectErr(notFound).contains("this.does.not.exist"))
        assertEquals(notFound, 1, JsonParser.parseString(notFound).asJsonObject.getAsJsonArray("warnings")?.size())
        val badBoolean = runTool {
            it.mps_mcp_query_structure(
                MPSStructureQueryOperation.LIST_CONCEPT_ASPECTS,
                """{"conceptRefs":["$first","$second"],"includeInherited":"yes"}"""
            )
        }
        assertTrue(expectErr(badBoolean).contains("'parameters.includeInherited' must be a boolean"))
        assertEquals(badBoolean, 1, JsonParser.parseString(badBoolean).asJsonObject.getAsJsonArray("warnings")?.size())
    }

    @Test
    fun `GET_SUB_CONCEPTS combines a collapsed conceptRefs with languageRefs`() {
        val parent = createConceptRoot("PluralParent")
        val response = runTool {
            it.mps_mcp_query_structure(
                MPSStructureQueryOperation.GET_SUB_CONCEPTS,
                """{"conceptRefs":["jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration","$parent"],""" +
                    """"languageRefs":["jetbrains.mps.lang.structure"]}"""
            )
        }
        val names = parseDataArray(response).map { it.asJsonObject.get("name").asString }.toSet()
        assertTrue("the first concept's subconcepts, in the listed language: $names", names.contains("ConceptDeclaration"))
        assertEquals(response, 1, JsonParser.parseString(response).asJsonObject.getAsJsonArray("warnings")?.size())
    }

    @Test
    fun `the registered query_structure tool collapses a real conceptRefs array`() {
        val first = createConceptRoot("PluralWire")
        val response = runTool {
            it.mps_mcp_query_structure(
                "GET_ALL_SUPERCONCEPTS",
                JsonOrText("""{"conceptRefs":["$first","jetbrains.mps.lang.core.structure.BaseConcept"]}"""),
            )
        }
        assertTrue(response, parseDataArray(response).any { it.asJsonObject.get("name")?.asString?.endsWith("BaseConcept") == true })
        assertEquals(response, 1, JsonParser.parseString(response).asJsonObject.getAsJsonArray("warnings")?.size())
    }

    @Test
    fun `single-concept queries reject an empty conceptRefs and conceptRefs beside conceptRef`() {
        val conceptRef = createConceptRoot("PluralRejected")
        val empty = expectErr(runTool {
            it.mps_mcp_query_structure(MPSStructureQueryOperation.GET_ALL_SUPERCONCEPTS, """{"conceptRefs":[]}""")
        })
        assertTrue(empty, empty.contains("'parameters.conceptRefs' must be a nonempty array of nonblank strings"))

        // FIND_INSTANCES' shape rule, not the singular key's legacy asString leniency.
        val nullFirst = expectErr(runTool {
            it.mps_mcp_query_structure(MPSStructureQueryOperation.GET_ALL_SUPERCONCEPTS, """{"conceptRefs":[null,"$conceptRef"]}""")
        })
        assertTrue(nullFirst, nullFirst.contains("'parameters.conceptRefs[0]' must be a nonblank string"))

        val both = expectErr(runTool {
            it.mps_mcp_query_structure(
                MPSStructureQueryOperation.IS_SMART_REFERENCE,
                """{"conceptRef":"$conceptRef","conceptRefs":["$conceptRef"]}"""
            )
        })
        assertTrue("must name the winner: $both", both.contains("Keep 'conceptRef'"))
    }

    @Test
    fun `structure alterations keep rejecting conceptRefs`() {
        val conceptRef = createConceptRoot("PluralAlter")
        val message = expectErr(runTool {
            it.mps_mcp_alter_structure(
                MPSStructureAlterOperation.UPDATE_CONCEPT_PROPERTY,
                """{"conceptRefs":["$conceptRef"],"propertyName":"p","dataType":"string"}"""
            )
        })
        assertTrue(message, message.contains("'conceptRefs' (did you mean 'conceptRef'?)"))
    }

    // ── Persistence: concept-mutation methods flush to disk ───────────────────────────
    //
    // These tests read the structure-model .mps file from disk after calling a mutation
    // tool to prove that save() was actually invoked and the changes were written.
    // Checking file content is a direct proxy for "persisted" that no in-memory assertion
    // can substitute.

    @Test
    fun `UPDATE_CONCEPT_PROPERTY persists the added property to the structure model file`() {
        val conceptRef = createConceptRoot("DiskPersistProp")
        assertOk(runTool {
            it.mps_mcp_alter_structure(
                MPSStructureAlterOperation.UPDATE_CONCEPT_PROPERTY,
                """{"conceptRef":"$conceptRef","propertyName":"diskVerified","dataType":"string"}"""
            )
        })

        val structureFile = structureModelFile()
        assertTrue("structure model file must exist at $structureFile", structureFile.exists())
        assertTrue(
            "structure model file must contain 'diskVerified' — model.save() was not called",
            structureFile.readText().contains("diskVerified"),
        )
    }

    @Test
    fun `RENAME_CONCEPT_PROPERTY persists the renamed property to the structure model file`() {
        val conceptRef = createConceptRoot("DiskPersistRename")
        assertOk(runTool {
            it.mps_mcp_alter_structure(
                MPSStructureAlterOperation.UPDATE_CONCEPT_PROPERTY,
                """{"conceptRef":"$conceptRef","propertyName":"beforeRename","dataType":"string"}"""
            )
        })
        assertOk(runTool {
            it.mps_mcp_alter_structure(
                MPSStructureAlterOperation.RENAME_CONCEPT_PROPERTY,
                """{"conceptRef":"$conceptRef","oldName":"beforeRename","newName":"afterRename"}"""
            )
        })

        val content = structureModelFile().readText()
        assertTrue(
            "structure model file must contain 'afterRename' — model.save() was not called",
            content.contains("afterRename"),
        )
        assertFalse(
            "structure model file must not contain 'beforeRename' after the rename",
            content.contains("beforeRename"),
        )
    }

    // ── IS_SMART_REFERENCE ────────────────────────────────────────────────────────────

    @Test
    fun `IS_SMART_REFERENCE returns false for a concept without references`() {
        val conceptRef = createConceptRoot("NoRefs")
        val response = runTool {
            it.mps_mcp_query_structure(
                MPSStructureQueryOperation.IS_SMART_REFERENCE,
                """{"conceptRef":"$conceptRef"}"""
            )
        }
        val data = expectOk(response)
        assertFalse(data.get("isSmartReference").asBoolean)
    }

    @Test
    fun `IS_SMART_REFERENCE returns error envelope for an unknown concept`() {
        val response = runTool {
            it.mps_mcp_query_structure(
                MPSStructureQueryOperation.IS_SMART_REFERENCE,
                """{"conceptRef":"this.does.not.exist"}"""
            )
        }
        assertTrue(expectErr(response).contains("this.does.not.exist"))
    }

    // ── GET_ASSIGNABLE_REFERENCES ─────────────────────────────────────────────────────

    @Test
    fun `GET_ASSIGNABLE_REFERENCES returns error envelope when contextNode is missing`() {
        // Both 'contextNode' and 'referenceRole' are required; the dispatcher's missing-key check
        // reports an absent one before the service runs. The service itself is covered by
        // AssignableReferenceServiceTest at the unit level.
        val response = runTool {
            it.mps_mcp_query_structure(
                MPSStructureQueryOperation.GET_ASSIGNABLE_REFERENCES,
                """{"referenceRole":"someRef"}"""
            )
        }
        assertTrue(expectErr(response).contains("contextNode"))
    }

    // ── `parameters` blob key validation (study defects D14b / D18b) ────────────────────────

    @Test
    fun `query_structure rejects an unrecognised parameters key instead of dropping it`() {
        val response = runTool {
            it.mps_mcp_query_structure(MPSStructureQueryOperation.IS_SMART_REFERENCE, """{"conceptReferece":"X"}""")
        }
        val obj = JsonParser.parseString(response).asJsonObject
        assertFalse("expected error envelope: $response", obj.get("ok").asBoolean)
        assertEquals("INVALID_REQUEST", obj.get("code").asString)
        val error = obj.get("error").asString
        assertTrue("error must name the key that was sent: $error", error.contains("'conceptReferece'"))
        assertTrue("error must name the key that was meant: $error", error.contains("conceptRef"))
    }

    @Test
    fun `alter_structure rejects dryRun on an operation that does not honour it`() {
        // Only CREATE_CONCEPTS and CREATE_ENUM implement dryRun. Every other operation read the
        // flag off the blob and mutated anyway — a silent no-op that hid caller misuse, the same
        // one mps_mcp_parse_java_and_insert already rejects.
        val conceptRef = createConceptRoot("DryRunProbe")
        val response = runTool {
            it.mps_mcp_alter_structure(
                MPSStructureAlterOperation.UPDATE_CONCEPT_PROPERTY,
                """{"conceptRef":"$conceptRef","propertyName":"p","dataType":"string","dryRun":true}""",
            )
        }
        val obj = JsonParser.parseString(response).asJsonObject
        assertFalse("expected error envelope: $response", obj.get("ok").asBoolean)
        assertEquals("INVALID_REQUEST", obj.get("code").asString)
        assertTrue("error must name dryRun: ${obj.get("error").asString}", obj.get("error").asString.contains("'dryRun'"))
    }

    @Test
    fun `alter_structure tolerates projectPath inside parameters`() {
        val conceptRef = createConceptRoot("ProjectPathProbe")
        val response = runTool {
            it.mps_mcp_alter_structure(
                MPSStructureAlterOperation.UPDATE_CONCEPT_PROPERTY,
                """{"conceptRef":"$conceptRef","propertyName":"p","dataType":"string","projectPath":"/wherever"}""",
            )
        }
        assertOk(response)
    }

    @Test
    fun `query_structure with unknown operation returns INVALID_REQUEST instead of crashing`() {
        // Regression for the kotlinx SerializationException that escaped argument binding when a
        // caller passed an operation outside MPSStructureQueryOperation (e.g. the hallucinated
        // "LIST_CONCEPTS"). The String-typed tool overload must turn this into a classified error.
        val response = runTool { it.mps_mcp_query_structure("LIST_CONCEPTS", JsonOrText("{}")) }
        val obj = JsonParser.parseString(response).asJsonObject
        assertFalse("expected error envelope: $response", obj.get("ok").asBoolean)
        assertEquals("INVALID_REQUEST", obj.get("code").asString)
        val error = obj.get("error").asString
        assertTrue("error should quote the bad value: $error", error.contains("LIST_CONCEPTS"))
        assertTrue("error should list the valid operations: $error", error.contains("LIST_CONCEPT_ASPECTS"))
    }

    @Test
    fun `query_structure resolves the operation string case-insensitively`() {
        // The framework's enum decode was case-insensitive; the String overload must preserve that.
        // The concept refs are unresolvable, so a NOT_FOUND is expected — the point is that the
        // lower-case operation still dispatched to IS_SUBCONCEPT_OF rather than being reported unknown.
        val response = runTool {
            it.mps_mcp_query_structure(
                "is_subconcept_of",
                JsonOrText("""{"conceptRef":"$unresolvableNodeRef","superConceptRef":"$unresolvableNodeRef"}""")
            )
        }
        val error = expectErr(response)
        assertFalse("operation should have resolved, not be reported unknown: $error", error.contains("Unknown operation"))
    }

    @Test
    fun `alter_structure with unknown operation returns INVALID_REQUEST instead of crashing`() {
        val response = runTool { it.mps_mcp_alter_structure("MAKE_EVERYTHING", JsonOrText("{}")) }
        val obj = JsonParser.parseString(response).asJsonObject
        assertFalse("expected error envelope: $response", obj.get("ok").asBoolean)
        assertEquals("INVALID_REQUEST", obj.get("code").asString)
        assertTrue("error should list the valid operations: ${obj.get("error").asString}",
                   obj.get("error").asString.contains("CREATE_CONCEPTS"))
    }

    // ── D43: required parameters are answered by the tool, not the binder ────────────────

    /** Asserts a D43 missing-parameter envelope and returns its `error` text. */
    private fun assertMissingParameters(response: String, vararg expected: String): String {
        val obj = JsonParser.parseString(response).asJsonObject
        assertFalse("expected error envelope: $response", obj.get("ok").asBoolean)
        assertEquals("INVALID_REQUEST", obj.get("code").asString)
        assertEquals(
            expected.toList(),
            obj.getAsJsonObject("details").getAsJsonArray("missingParameters").map { it.asString },
        )
        val error = obj.get("error").asString
        assertFalse(
            "the platform's missing-argument line must not reach the caller: $error",
            error.contains("No argument is passed for required parameter"),
        )
        return error
    }

    @Test
    fun `query_structure with its arguments at the top level names parameters and the operation's keys`() {
        // The blob-less call a caller makes when it reads `conceptRef` as a tool parameter: the
        // binder drops the key, and the rejection has to say where it belongs.
        val error = assertMissingParameters(
            callThroughBridge(
                JetBrainsMPSLanguageStructureMcpToolset(), "mps_mcp_query_structure",
                mapOf(
                    "operation" to kotlinx.serialization.json.JsonPrimitive("IS_SMART_REFERENCE"),
                    "conceptRef" to kotlinx.serialization.json.JsonPrimitive(unresolvableNodeRef),
                ),
            ),
            "parameters",
        )
        assertTrue(error, error.startsWith("parameters is required."))
        assertTrue("must name the operation's keys: $error", error.contains("IS_SMART_REFERENCE's arguments") && error.contains("conceptRef"))
        assertTrue("must say they go inside the object: $error", error.contains("rather than at the top level"))
        assertTrue("must name the near-miss spellings: $error", error.contains("'params'"))
    }

    @Test
    fun `query_structure reports a missing operation as missing, not unknown`() {
        val error = assertMissingParameters(
            callThroughBridge(
                JetBrainsMPSLanguageStructureMcpToolset(), "mps_mcp_query_structure",
                mapOf(
                    "op" to kotlinx.serialization.json.JsonPrimitive("IS_SMART_REFERENCE"),
                    "parameters" to kotlinx.serialization.json.JsonPrimitive("""{"conceptRef":"$unresolvableNodeRef"}"""),
                ),
            ),
            "operation",
        )
        assertTrue(error, error.startsWith("operation is required."))
        assertFalse("a blank selector is not an unknown one: $error", error.contains("Unknown operation"))
        assertTrue("must name the dropped spelling: $error", error.contains("'op'"))
        assertTrue("must list the valid operations: $error", error.contains("IS_SUBCONCEPT_OF"))
    }

    @Test
    fun `alter_structure names parameters when the caller sent params`() {
        val rootsBefore = structureRoots().size
        val error = assertMissingParameters(
            callThroughBridge(
                JetBrainsMPSLanguageStructureMcpToolset(), "mps_mcp_alter_structure",
                mapOf(
                    "operation" to kotlinx.serialization.json.JsonPrimitive("CREATE_CONCEPTS"),
                    "params" to kotlinx.serialization.json.JsonPrimitive(
                        """{"structureModelRef":"$structureModelRef","conceptNames":["NeverCreated"]}"""
                    ),
                ),
            ),
            "parameters",
        )
        assertTrue(error, error.startsWith("parameters is required."))
        assertTrue("must name the dropped spelling: $error", error.contains("'params'"))
        assertTrue("must name the operation's keys: $error", error.contains("structureModelRef") && error.contains("conceptsJson"))
        assertEquals("nothing may be created", rootsBefore, structureRoots().size)
    }

    @Test
    fun `alter_structure with nothing reports both missing keys at once`() {
        val error = assertMissingParameters(
            callThroughBridge(JetBrainsMPSLanguageStructureMcpToolset(), "mps_mcp_alter_structure", emptyMap()),
            "operation", "parameters",
        )
        assertTrue(error, error.startsWith("operation and parameters are required."))
    }

    @Test
    fun `alter_structure answers an unknown operation before a blank parameters blob`() {
        val response = callThroughBridge(
            JetBrainsMPSLanguageStructureMcpToolset(), "mps_mcp_alter_structure",
            mapOf("operation" to kotlinx.serialization.json.JsonPrimitive("DELETE_CONCEPT")),
        )
        val obj = JsonParser.parseString(response).asJsonObject
        assertFalse("expected error envelope: $response", obj.get("ok").asBoolean)
        assertEquals("INVALID_REQUEST", obj.get("code").asString)
        assertTrue(response, obj.get("error").asString.contains("Unknown operation 'DELETE_CONCEPT'"))
    }

    /**
     * Returns the java.io.File for the test language's structure model on disk.
     * The path follows the MPS convention: `<moduleDir>/languageModels/<longModelName>.mps`.
     */
    private fun structureModelFile(): java.io.File {
        val moduleRoot = java.io.File(myProject.projectFile.canonicalFile, language.moduleName!!)
        return java.io.File(java.io.File(moduleRoot, "models"), "${structureModel.name.longName}.mps")
    }

    private fun assertOk(response: String) {
        val obj = JsonParser.parseString(response).asJsonObject
        assertTrue("expected ok=true envelope, got: $response", obj.get("ok").asBoolean)
        assertNull("ok envelope should not carry an error: $response", obj.get("error"))
    }

    /** Creates an `EnumerationDeclaration` root named [name] with the given value/presentation pairs. */
    private fun createEnum(name: String, values: List<Pair<String, String>>) {
        val valuesJson = values.joinToString(",") { (value, presentation) ->
            """{"enumName":"$value","enumPresentation":"$presentation"}"""
        }
        assertOk(runTool {
            it.mps_mcp_alter_structure(
                MPSStructureAlterOperation.CREATE_ENUM,
                """{"structureModelRef":"$structureModelRef","enumName":"$name","valuesJson":[$valuesJson]}"""
            )
        })
    }

    private fun expectSingleRoot(name: String): SNode = readOnRepo {
        val matches = structureModel.rootNodes.filter { it.name == name }
        assertEquals("expected exactly one root named '$name', got ${matches.size}", 1, matches.size)
        matches.first()
    }

    private fun SNode.getChildrenByName(linkName: String): List<SNode> =
        children.filter { it.containmentLink?.name == linkName }

    private fun SNode.getReferenceTargetByName(linkName: String): SNode? =
        references.firstOrNull { it.link.name == linkName }?.targetNode

    /**
     * MPS stores enum property values on persisted nodes as `<enumDeclarationId>/<literalName>`
     * (e.g. `fLJekj4/_1`). Tests want to assert the literal-name part; this helper strips the
     * declaration prefix when present and compares.
     */
    private fun assertEnumLiteralIs(expected: String, raw: String?) {
        assertNotNull("expected enum literal '$expected', got null", raw)
        val literal = raw!!.substringAfterLast('/')
        assertEquals(expected, literal)
    }
}
