package jetbrains.mps.agents.mcp.tools.integration

import jetbrains.mps.agents.mcp.tools.*

import com.google.gson.JsonElement
import com.google.gson.JsonObject
import com.google.gson.JsonParser
import org.jetbrains.mps.openapi.persistence.PersistenceFacade
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * `mps_mcp_query_types` against BaseLanguage's lattice: `int <: long` (`int_extends_long`),
 * `String <: Object` (`subtyping_classifier`), and `int + long → long` from the overloaded
 * `PlusExpression` rules.
 */
class JetBrainsMPSTypesMcpToolsetIntegrationTest : McpIntegrationTestBase() {

    private val toolset = JetBrainsMPSTypesMcpToolset()

    @Test
    fun `IS_SUBTYPE decides on type concepts`() {
        val up = data(query(TypesQueryOperation.IS_SUBTYPE, """{"sub":${conceptOperand(INTEGER_TYPE)},"super":${conceptOperand(LONG_TYPE)}}"""))
        assertTrue("int <: long: $up", up.get("isSubtype").asBoolean)
        assertTrue("isComparable is implied by isSubtype: $up", up.get("isComparable").asBoolean)
        assertEquals("int", up.getAsJsonObject("sub").get("presentation").asString)
        assertEquals("long", up.getAsJsonObject("super").get("presentation").asString)
        val down = data(query(TypesQueryOperation.IS_SUBTYPE, """{"sub":${conceptOperand(LONG_TYPE)},"super":${conceptOperand(INTEGER_TYPE)}}"""))
        assertFalse("long is not a subtype of int: $down", down.get("isSubtype").asBoolean)
    }

    @Test
    fun `IS_SUBTYPE takes printed blueprints, stored type nodes and printed type objects`() {
        val host = createTypeHost()
        val stringType = getType(host.fieldRef("s"))
        val objectType = getType(host.fieldRef("o"))

        val byBlueprint = data(query(TypesQueryOperation.IS_SUBTYPE,
            """{"sub":{"blueprint":${stringType.get("blueprint")}},"super":{"blueprint":${objectType.get("blueprint")}}}"""))
        assertTrue("String <: Object from blueprints: $byBlueprint", byBlueprint.get("isSubtype").asBoolean)
        assertEquals("String", byBlueprint.getAsJsonObject("sub").get("presentation").asString)

        val byPrintedObject = data(query(TypesQueryOperation.IS_SUBTYPE, """{"sub":$stringType,"super":$objectType}"""))
        assertTrue("a printed type object is accepted as is: $byPrintedObject", byPrintedObject.get("isSubtype").asBoolean)

        val byTypeNode = data(query(TypesQueryOperation.IS_SUBTYPE,
            """{"sub":{"typeNodeReference":"${host.typeChildRef("s")}"},"super":{"typeNodeReference":"${host.typeChildRef("o")}"}}"""))
        assertTrue("String <: Object from stored type nodes: $byTypeNode", byTypeNode.get("isSubtype").asBoolean)
        assertNoReferenceKey(byTypeNode)

        // BaseLanguage has no rule applicable to a Type node, so a stored type has no type of its own.
        val noType = JsonParser.parseString(query(TypesQueryOperation.IS_SUBTYPE,
            """{"sub":{"nodeReference":"${host.typeChildRef("s")}"},"super":{"typeNodeReference":"${host.typeChildRef("o")}"}}""")).asJsonObject
        assertEquals("INVALID_REQUEST", noType.get("code").asString)
        assertTrue(noType.get("error").asString, noType.get("error").asString.contains("has no type"))
    }

    @Test
    fun `type operands that cannot name the type exactly are rejected`() {
        val host = createTypeHost()
        val blueprint = getType(host.fieldRef("s")).getAsJsonObject("blueprint").deepCopy()
        blueprint.remove("references")
        val stripped = JsonParser.parseString(query(TypesQueryOperation.SUPERTYPES, """{"type":{"blueprint":$blueprint}}""")).asJsonObject
        assertEquals("a ClassifierType without its classifier: $stripped", "INVALID_REQUEST", stripped.get("code").asString)
        assertTrue(stripped.get("error").asString, stripped.get("error").asString.contains("'classifier'"))

        val bareClassifierType = JsonParser.parseString(query(TypesQueryOperation.SUPERTYPES, """{"type":${conceptOperand(CLASSIFIER_TYPE)}}""")).asJsonObject
        assertEquals("INVALID_REQUEST", bareClassifierType.get("code").asString)
        assertTrue(bareClassifierType.get("error").asString, bareClassifierType.get("error").asString.contains("'classifier'"))

        val twoKeys = JsonParser.parseString(query(TypesQueryOperation.SUPERTYPES,
            """{"type":{"typeConceptRef":"$INTEGER_TYPE","nodeReference":"${host.fieldRef("i")}"}}""")).asJsonObject
        assertEquals("INVALID_REQUEST", twoKeys.get("code").asString)
        assertTrue(twoKeys.get("error").asString, twoKeys.get("error").asString.contains("parameters.type"))
    }

    @Test
    fun `SUPERTYPES walks the lattice and reports a depth cap`() {
        val response = query(TypesQueryOperation.SUPERTYPES, """{"type":${conceptOperand(INTEGER_TYPE)}}""")
        val envelope = JsonParser.parseString(response).asJsonObject
        assertFalse("int's lattice fits the default depth: $response", envelope.has("details"))
        val result = data(response)
        val transitive = result.getAsJsonArray("transitive").map { it.asJsonObject }
        assertTrue("long is a supertype of int: $result", transitive.any { it.getAsJsonObject("type").get("presentation").asString == "long" })
        assertTrue("immediate holds the depth-1 types: $result", result.getAsJsonArray("immediate").size() > 0)

        val capped = JsonParser.parseString(query(TypesQueryOperation.SUPERTYPES, """{"type":${conceptOperand(INTEGER_TYPE)},"depth":1}""")).asJsonObject
        assertTrue("int has supertypes beyond depth 1: $capped", capped.getAsJsonObject("details").get("truncated").asBoolean)
        assertTrue(payloadObjectFromOkData(capped.toString()).getAsJsonArray("transitive").all { it.asJsonObject.get("depth").asInt == 1 })
    }

    @Test
    fun `COMMON_SUPERTYPE of int and long is long`() {
        val result = data(query(TypesQueryOperation.COMMON_SUPERTYPE, """{"types":[${conceptOperand(INTEGER_TYPE)},${conceptOperand(LONG_TYPE)}]}"""))
        assertEquals(listOf("long"), result.getAsJsonArray("result").map { it.asJsonObject.get("presentation").asString })
        assertEquals(2, result.getAsJsonArray("types").size())
    }

    @Test
    fun `COERCE views a List type as a ClassifierType`() {
        val host = createTypeHost()
        val coerced = data(query(TypesQueryOperation.COERCE,
            """{"type":{"nodeReference":"${host.fieldRef("list")}"},"conceptRef":"$CLASSIFIER_TYPE"}""")).getAsJsonObject("coerced")
        assertNotNull(coerced)
        val blueprint = coerced.getAsJsonObject("blueprint")
        val classifier = blueprint.getAsJsonArray("references").map { it.asJsonObject }.single { it.get("role").asString == "classifier" }
        val target = readOnRepo {
            PersistenceFacade.getInstance().createNodeReference(classifier.get("targetReference").asString).resolve(myProject.repository)?.name
        }
        assertEquals("List", target)
        val parameters = blueprint.getAsJsonArray("children").map { it.asJsonObject }.single { it.get("role").asString == "parameter" }
        assertEquals(1, parameters.getAsJsonArray("nodes").size())

        val toInterface = JsonParser.parseString(query(TypesQueryOperation.COERCE,
            """{"type":{"nodeReference":"${host.fieldRef("list")}"},"conceptRef":"jetbrains.mps.lang.core.structure.INamedConcept"}""")).asJsonObject
        assertEquals("INVALID_REQUEST", toInterface.get("code").asString)
    }

    @Test
    fun `OPERATION_TYPE answers int plus long from a node and from a concept`() {
        val host = createTypeHost()
        val operands = """"left":${conceptOperand(INTEGER_TYPE)},"right":${conceptOperand(LONG_TYPE)}"""
        val byNode = JsonParser.parseString(query(TypesQueryOperation.OPERATION_TYPE, """{"operatorNode":"${host.plusRef}",$operands}""")).asJsonObject
        assertEquals("long", payloadObjectFromOkData(byNode.toString()).getAsJsonObject("type").get("presentation").asString)
        assertFalse("an existing operator node needs no warning: $byNode", byNode.has("warnings"))

        val byConcept = JsonParser.parseString(query(TypesQueryOperation.OPERATION_TYPE, """{"operatorConceptRef":"$PLUS_EXPRESSION",$operands}""")).asJsonObject
        assertEquals("long", payloadObjectFromOkData(byConcept.toString()).getAsJsonObject("type").get("presentation").asString)
        assertTrue("a detached operator is flagged: $byConcept",
            byConcept.getAsJsonArray("warnings").any { it.asString.contains("detached instance") })
    }

    @Test
    fun `GET_EXPECTED_TYPE answers the type the context requires`() {
        val host = createTypeHost()
        // `long l = 2L`: typeof_VariableDeclaration bounds the initializer by the declared type.
        assertEquals("long", getExpectedType(host.initializerRef("l"))?.get("presentation")?.asString)
        // `Object o = s`: the reference is a String, the slot requires an Object.
        assertEquals("String", getType(host.initializerRef("o")).get("presentation").asString)
        val expected = checkNotNull(getExpectedType(host.initializerRef("o")))
        assertEquals("Object", expected.get("presentation").asString)
        assertNoReferenceKey(expected)
        // `byte b = 1`: the rule recognises the literal as a valid byte and bounds it by int instead.
        assertEquals("int", getExpectedType(host.initializerRef("b"))?.get("presentation")?.asString)
        // A root has no context; no rule of a FieldDeclaration bounds its `type` child.
        assertNull(getExpectedType(host.rootRef))
        assertNull(getExpectedType(host.typeChildRef("l")))
    }

    @Test
    fun `the strong variants and the scalar and shape checks`() {
        val strongSupertypes = data(query(TypesQueryOperation.SUPERTYPES, """{"type":${conceptOperand(INTEGER_TYPE)},"weak":false}"""))
        assertTrue("strong subtyping still widens int to long: $strongSupertypes",
            strongSupertypes.getAsJsonArray("transitive").any { it.asJsonObject.getAsJsonObject("type").get("presentation").asString == "long" })
        val strongCoerce = data(query(TypesQueryOperation.COERCE, """{"type":${conceptOperand(INTEGER_TYPE)},"conceptRef":"$LONG_TYPE","strong":true}"""))
        assertEquals("long", strongCoerce.getAsJsonObject("coerced").get("presentation").asString)

        val rejected = listOf(
            TypesQueryOperation.SUPERTYPES to """{"type":${conceptOperand(INTEGER_TYPE)},"depth":0}""",
            TypesQueryOperation.SUPERTYPES to """{"type":${conceptOperand(INTEGER_TYPE)},"depth":33}""",
            TypesQueryOperation.COMMON_SUPERTYPE to """{"types":[${conceptOperand(INTEGER_TYPE)}]}""",
            TypesQueryOperation.OPERATION_TYPE to
                """{"operatorNode":"$DUMMY_NODE_REF","operatorConceptRef":"$PLUS_EXPRESSION","left":${conceptOperand(INTEGER_TYPE)},"right":${conceptOperand(LONG_TYPE)}}""",
        )
        for ((operation, parameters) in rejected) {
            val envelope = JsonParser.parseString(query(operation, parameters)).asJsonObject
            assertEquals("$operation $parameters: $envelope", "INVALID_REQUEST", envelope.get("code").asString)
        }
    }

    @Test
    fun `the registered tool takes parameters as a real JSON object and names an unknown operation`() {
        fun call(operation: String, parameters: String): JsonObject = JsonParser.parseString(
            callThroughBridge(
                toolset, "mps_mcp_query_types",
                mapOf(
                    "operation" to kotlinx.serialization.json.JsonPrimitive(operation),
                    "parameters" to kotlinx.serialization.json.Json.parseToJsonElement(parameters),
                ),
            )
        ).asJsonObject
        val parameters = """{"sub":${conceptOperand(INTEGER_TYPE)},"super":${conceptOperand(LONG_TYPE)}}"""
        val ok = call("is_subtype", parameters)
        assertTrue("$ok", payloadObjectFromOkData(ok.toString()).get("isSubtype").asBoolean)
        val unknown = call("IS_SUPERTYPE", parameters)
        assertEquals("INVALID_REQUEST", unknown.get("code").asString)
        assertTrue(unknown.get("error").asString, unknown.get("error").asString.contains("IS_SUBTYPE"))
    }

    @Test
    fun `every types operation rejects every absent required key in one rejection`() {
        val operand = """{"typeNodeReference":"$DUMMY_NODE_REF"}"""
        val queries = mapOf(
            TypesQueryOperation.IS_SUBTYPE to (listOf("sub", "super") to """{"sub":$operand,"super":$operand}"""),
            TypesQueryOperation.SUPERTYPES to (listOf("type") to """{"type":$operand}"""),
            TypesQueryOperation.COMMON_SUPERTYPE to (listOf("types") to """{"types":[$operand,$operand]}"""),
            TypesQueryOperation.COERCE to (listOf("type", "conceptRef") to """{"type":$operand,"conceptRef":"$CLASSIFIER_TYPE"}"""),
            TypesQueryOperation.OPERATION_TYPE to (listOf("one of operatorNode/operatorConceptRef", "left", "right") to
                """{"operatorNode":"$DUMMY_NODE_REF","left":$operand,"right":$operand}"""),
        )
        assertEquals(TypesQueryOperation.entries.toSet(), queries.keys)
        for ((operation, expectation) in queries) {
            val (missing, onlyRequired) = expectation
            assertMissingParameterKeys(query(operation, "{}"), missing)
            val response = query(operation, onlyRequired)
            assertPastMissingParameterKeys(operation.name, response)
            assertEquals("$operation: $response", "NOT_FOUND", JsonParser.parseString(response).asJsonObject.get("code").asString)
        }
    }

    // Operands are resolved inside the EDT read action; a rejection thrown there must not reach
    // ActionDispatcher, which would log it as a spurious "Action dispatch failed".
    @Test
    fun `a rejected operand is not logged as an action-dispatch failure`() {
        val rejected = listOf(
            TypesQueryOperation.SUPERTYPES to """{"type":{"typeNodeReference":"$DUMMY_NODE_REF"}}""" to "NOT_FOUND",
            TypesQueryOperation.SUPERTYPES to """{"type":${conceptOperand(CLASSIFIER_TYPE)}}""" to "INVALID_REQUEST",
        )
        for ((call, code) in rejected) {
            val (operation, parameters) = call
            val (response, messages) = captureLogMessages { query(operation, parameters) }
            assertEquals("$operation $parameters: $response", code, JsonParser.parseString(response).asJsonObject.get("code").asString)
            assertTrue(
                "a rejected operand must not log an action-dispatch failure: $messages",
                messages.none { it.contains("Action dispatch failed") || it.contains("Unexpected failure in MCP tool") },
            )
        }
    }

    private fun query(operation: TypesQueryOperation, parameters: String): String =
        runTool(toolset) { it.mps_mcp_query_types(operation, parameters) }

    private fun data(response: String): JsonObject = payloadObjectFromOkData(response)

    private fun conceptOperand(conceptFqName: String) = """{"typeConceptRef":"$conceptFqName"}"""

    private fun getType(nodeRef: String): JsonObject {
        val response = runTool(JetBrainsMPSNodeMcpToolset()) {
            it.mps_mcp_query_nodes(MPSQueryOperation.GET_TYPE, """{ "nodeReference": "$nodeRef" }""")
        }
        return payloadObjectFromOkData(response)
    }

    /** `mps_mcp_query_nodes` GET_EXPECTED_TYPE's `data`, or null when it answers `data: null`. */
    private fun getExpectedType(nodeRef: String): JsonObject? {
        val response = runTool(JetBrainsMPSNodeMcpToolset()) {
            it.mps_mcp_query_nodes(MPSQueryOperation.GET_EXPECTED_TYPE, """{ "nodeReference": "$nodeRef" }""")
        }
        val envelope = JsonParser.parseString(response).asJsonObject
        assertTrue("expected ok envelope: $response", envelope.get("ok").asBoolean)
        return if (envelope.get("data").isJsonNull) null else payloadObjectFromOkData(response)
    }

    /** The root's reference and, per field name, the field's, its `type` child's and its `initializer` child's. */
    private class TypeHost(
        val rootRef: String,
        private val fieldRefs: Map<String, String>,
        private val typeChildRefs: Map<String, String>,
        private val initializerRefs: Map<String, String>,
        val plusRef: String,
    ) {
        fun fieldRef(name: String): String = fieldRefs.getValue(name)

        fun typeChildRef(name: String): String = typeChildRefs.getValue(name)

        fun initializerRef(name: String): String = initializerRefs.getValue(name)
    }

    /** [TYPE_HOST_CODE], parsed into a fresh solution's model. */
    private fun createTypeHost(): TypeHost {
        val solution = createSolution()
        val model = createModel(solution, "${solution.moduleName}.code")
        val response = runTool(JetBrainsMPSJavaMcpToolset()) {
            it.mps_mcp_parse_java_and_insert(
                """{"code":"$TYPE_HOST_CODE","featureKind":"CLASS","insert":{"mode":"root","modelRef":"${modelRefOf(model)}"}}"""
            )
        }
        assertTrue("expected ok envelope from parse_java_and_insert: $response",
            JsonParser.parseString(response).asJsonObject.get("ok").asBoolean)
        return readOnRepo {
            val root = model.rootNodes.single { it.name == "TypeHost" }
            val fields = root.children.filter { it.concept.name == "FieldDeclaration" }.associateBy { checkNotNull(it.name) }
            val initializers = fields.mapValues { (_, field) -> field.children.single { it.containmentLink?.name == "initializer" } }
            val plus = initializers.getValue("i")
            assertEquals("PlusExpression", plus.concept.name)
            val facade = PersistenceFacade.getInstance()
            TypeHost(
                facade.asString(root.reference),
                fields.mapValues { (_, field) -> facade.asString(field.reference) },
                fields.mapValues { (_, field) -> facade.asString(field.children.single { it.containmentLink?.name == "type" }.reference) },
                initializers.mapValues { (_, initializer) -> facade.asString(initializer.reference) },
                facade.asString(plus.reference),
            )
        }
    }

    /** Type answers carry no node record `reference`, even for a stored type node. */
    private fun assertNoReferenceKey(element: JsonElement) {
        when {
            element.isJsonObject -> element.asJsonObject.entrySet().forEach { (key, value) ->
                assertFalse("unexpected node reference in $element", key == "reference")
                assertNoReferenceKey(value)
            }
            element.isJsonArray -> element.asJsonArray.forEach(::assertNoReferenceKey)
        }
    }

    private companion object {
        const val TYPE_HOST_CODE =
            "class TypeHost { int i = 1 + 2; long l = 2L; String s = \\\"\\\"; Object o = s; java.util.List<String> list = null; byte b = 1; }"
        const val INTEGER_TYPE = "jetbrains.mps.baseLanguage.structure.IntegerType"
        const val LONG_TYPE = "jetbrains.mps.baseLanguage.structure.LongType"
        const val CLASSIFIER_TYPE = "jetbrains.mps.baseLanguage.structure.ClassifierType"
        const val PLUS_EXPRESSION = "jetbrains.mps.baseLanguage.structure.PlusExpression"
        const val DUMMY_NODE_REF = "r:00000000-0000-0000-0000-000000000000(dummy)/1"
    }
}
