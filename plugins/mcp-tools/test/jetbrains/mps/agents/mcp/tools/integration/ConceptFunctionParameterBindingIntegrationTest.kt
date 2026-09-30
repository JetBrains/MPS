package jetbrains.mps.agents.mcp.tools.integration

import jetbrains.mps.agents.mcp.tools.*
import jetbrains.mps.agents.mcp.tools.common.*

import com.google.gson.Gson
import com.google.gson.JsonObject
import com.google.gson.JsonParser
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations
import jetbrains.mps.smodel.DynamicReference
import org.jetbrains.mps.openapi.model.SNode
import org.jetbrains.mps.openapi.persistence.PersistenceFacade
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * D68: `mps_mcp_parse_java_and_insert` binds the implicit parameters of the enclosing concept
 * function (here a legacy constraints property validator, whose parameters are `propertyValue` and
 * `node`), and rejects Java that ecj could only parse by repairing it.
 */
class ConceptFunctionParameterBindingIntegrationTest : McpIntegrationTestBase() {

    private val propertyValueParameter = "ConstraintsFunctionParameter_propertyValue"
    private val nodeParameter = "ConstraintsFunctionParameter_node"

    @Test
    fun `bare names and method-call receivers bind to the validator parameters`() {
        val validator = createValidators().first()
        val response = parseInto(validator, "return propertyValue != null && propertyValue.length() > 0;")
        val envelope = okEnvelope(response)
        assertTrue(
            "the binding must be reported: $response",
            warnings(envelope).any { it.contains("Bound 2 implicit parameter reference(s)") && it.contains("propertyValue") }
        )
        assertFalse("valid code must not get a syntax warning: $response", warnings(envelope).any { it.contains("syntax") })

        val concepts = bodyDescendantConcepts(validator)
        assertEquals("two propertyValue parameters: $concepts", 2, concepts.count { it == propertyValueParameter })
        assertTrue("propertyValue.length() must resolve to a real method call: $concepts", concepts.contains("InstanceMethodCallOperation"))
        assertFalse("no unresolved call may remain: $concepts", concepts.any { it.startsWith("Unknown") })
        assertEquals("no dynamic reference may remain: $response", 0, dynamicReferenceCount(validator))
    }

    @Test
    fun `a parameter call whose argument uses a parameter binds both, moving the argument`() {
        val validator = createValidators().first()
        // The outer receiver is a parameter, so the UnknownDotCall is rewritten and its argument —
        // itself a parameter call — has to be moved, not copied, to be bound as well.
        okEnvelope(parseInto(validator, "return propertyValue.startsWith(propertyValue.trim());"))
        val concepts = bodyDescendantConcepts(validator)
        assertEquals("both receivers are bound: $concepts", 2, concepts.count { it == propertyValueParameter })
        assertEquals("both calls resolve: $concepts", 2, concepts.count { it == "InstanceMethodCallOperation" })
        assertFalse("no unresolved call may remain: $concepts", concepts.any { it.startsWith("Unknown") })
    }

    @Test
    fun `a field chain on a parameter binds the head and warns about smodel access`() {
        val validator = createValidators().first()
        val response = parseInto(validator, "Object o = node.name; return true;")
        val envelope = okEnvelope(response)
        assertTrue(
            "the member-access limitation must be reported: $response",
            warnings(envelope).any { it.contains("member access") }
        )
        readOnRepo {
            val parameters = SNodeOperations.getNodeDescendants(bodyOf(validator), null, false, emptyArray())
                .filter { it.concept.name == nodeParameter }
            assertEquals("one node parameter", 1, parameters.size)
            val dot = parameters.single().parent!!
            assertEquals("the parameter is the operand of a DotExpression", "DotExpression", dot.concept.name)
            assertTrue(
                "the operation is a field reference: ${dot.children.map { it.concept.name }}",
                dot.children.any { it.concept.name == "FieldReferenceOperation" }
            )
        }
    }

    @Test
    fun `a name declared in the function is not bound`() {
        val validator = createValidators().first()
        val response = parseInto(validator, "String propertyValue = \"\"; return propertyValue.isEmpty();")
        val envelope = okEnvelope(response)
        assertTrue(
            "the shadowed name must be reported: $response",
            warnings(envelope).any { it.contains("Did not bind 'propertyValue'") }
        )
        assertFalse(bodyDescendantConcepts(validator).contains(propertyValueParameter))
    }

    @Test
    fun `a name that is not a parameter stays unresolved`() {
        val validator = createValidators().first()
        okEnvelope(parseInto(validator, "return foo != null;"))
        val concepts = bodyDescendantConcepts(validator)
        assertFalse(concepts.contains(propertyValueParameter) || concepts.contains(nodeParameter))
        assertTrue("foo stays a VariableReference: $concepts", concepts.contains("VariableReference"))
    }

    @Test
    fun `a lambda inside the function binds to the enclosing function`() {
        val validator = createValidators().first()
        okEnvelope(parseInto(validator, "Runnable r = () -> node.toString(); return true;"))
        val concepts = bodyDescendantConcepts(validator)
        assertTrue("node inside the lambda must be bound: $concepts", concepts.contains(nodeParameter))
        assertTrue("the lambda stays a closure: $concepts", concepts.contains("ClosureLiteral"))
    }

    @Test
    fun `a local of another function in the same root does not capture the parameter`() {
        val (first, second) = createValidators()
        // A `node` local in the second validator: fixDynamicReferences would bind a dynamic `node`
        // in the first validator to it, if the binder did not run before resolution.
        okEnvelope(parseInto(second, "Object node = null; return node == null;"))
        okEnvelope(parseInto(first, "return node != null;"))

        val concepts = bodyDescendantConcepts(first)
        assertTrue("node must be the first validator's parameter: $concepts", concepts.contains(nodeParameter))
        assertFalse("nothing may point at the other function's local: $concepts", concepts.contains("VariableReference"))
        assertFalse(bodyDescendantConcepts(second).contains(nodeParameter))
    }

    @Test
    fun `an EXPRESSION that is a parameter is reported as the inserted node, and nested receivers bind`() {
        val validator = createValidators().first()
        okEnvelope(parseInto(validator, "return false;"))
        val returnRef = readOnRepo {
            refOf(bodyOf(validator).children.single())
        }
        val response = runTool(JetBrainsMPSJavaMcpToolset()) {
            it.mps_mcp_parse_java_and_insert(
                """
                {
                  "code": "node",
                  "featureKind": "EXPRESSION",
                  "insert": { "mode": "child", "parentRef": "$returnRef", "role": "expression" }
                }
                """.trimIndent()
            )
        }
        val inserted = okData(response).getAsJsonArray("inserted")
        assertEquals("the reported node is the parameter: $response", nodeParameter, inserted.single().asJsonObject.get("concept").asString)
        readOnRepo {
            val insertedRef = inserted.single().asJsonObject.get("reference").asString
            val node = PersistenceFacade.getInstance().createNodeReference(insertedRef).resolve(myProject.repository)
            assertTrue("the reported reference must resolve to the attached node", node != null && node.parent != null)
        }

        okEnvelope(parseInto(validator, "String s = String.valueOf(node.getConcept());"))
        val concepts = bodyDescendantConcepts(validator)
        assertEquals("the node inside the call argument is bound too: $concepts", 2, concepts.count { it == nodeParameter })
    }

    @Test
    fun `resolveReferences false leaves the names as parsed`() {
        val validator = createValidators().first()
        val response = runTool(JetBrainsMPSJavaMcpToolset()) {
            it.mps_mcp_parse_java_and_insert(
                """
                {
                  "code": "return propertyValue != null;",
                  "featureKind": "STATEMENTS",
                  "insert": { "mode": "child", "parentRef": "$validator", "role": "body" },
                  "postProcess": { "resolveReferences": false }
                }
                """.trimIndent()
            )
        }
        okEnvelope(response)
        val concepts = bodyDescendantConcepts(validator)
        assertFalse(concepts.contains(propertyValueParameter))
        assertTrue(concepts.contains("VariableReference"))
    }

    @Test
    fun `code with a syntax error is rejected by default and nothing is inserted`() {
        val validator = createValidators().first()
        val response = parseInto(validator, "propertyValue != null && propertyValue.isEmpty();")
        val obj = JsonParser.parseString(response).asJsonObject
        assertFalse("must be rejected: $response", obj.get("ok").asBoolean)
        val error = obj.get("error").asString
        assertTrue("names the syntax error: $response", error.contains("syntax errors"))
        assertTrue("carries ecj's message with a line: $response", error.contains("line 1:"))
        assertTrue("names the opt-in: $response", error.contains("recovery: true"))
        assertEquals("nothing may be inserted", 0, readOnRepo { bodyOf(validator).children.count() })
    }

    @Test
    fun `recovery false still rejects a syntax error`() {
        val validator = createValidators().first()
        val response = runTool(JetBrainsMPSJavaMcpToolset()) {
            it.mps_mcp_parse_java_and_insert(
                """
                {
                  "code": "propertyValue != null && propertyValue.isEmpty();",
                  "featureKind": "STATEMENTS",
                  "recovery": false,
                  "insert": { "mode": "child", "parentRef": "$validator", "role": "body" }
                }
                """.trimIndent()
            )
        }
        assertTrue("names the syntax error: $response", expectErr(response).contains("syntax errors"))
        assertEquals("nothing may be inserted", 0, readOnRepo { bodyOf(validator).children.count() })
    }

    @Test
    fun `replace mode with an EXPRESSION parameter reports the parameter as the inserted node`() {
        val validator = createValidators().first()
        okEnvelope(parseInto(validator, "return false;"))
        val constantRef = readOnRepo {
            refOf(bodyOf(validator).children.single().children.single { it.containmentLink?.name == "expression" })
        }
        val response = runTool(JetBrainsMPSJavaMcpToolset()) {
            it.mps_mcp_parse_java_and_insert(
                """
                {
                  "code": "node",
                  "featureKind": "EXPRESSION",
                  "insert": { "mode": "replace", "targetRef": "$constantRef" }
                }
                """.trimIndent()
            )
        }
        val inserted = okData(response).getAsJsonArray("inserted")
        assertEquals("the reported node is the parameter: $response", nodeParameter, inserted.single().asJsonObject.get("concept").asString)
        assertFalse(bodyDescendantConcepts(validator).contains("BooleanConstant"))
    }

    @Test
    fun `an explicit recovery true accepts the repaired code with a warning`() {
        val validator = createValidators().first()
        val response = runTool(JetBrainsMPSJavaMcpToolset()) {
            it.mps_mcp_parse_java_and_insert(
                """
                {
                  "code": "propertyValue != null && propertyValue.isEmpty();",
                  "featureKind": "STATEMENTS",
                  "recovery": true,
                  "insert": { "mode": "child", "parentRef": "$validator", "role": "body" }
                }
                """.trimIndent()
            )
        }
        val envelope = okEnvelope(response)
        assertTrue(
            "the repair must be reported: $response",
            warnings(envelope).any { it.contains("syntax errors that the parser repaired") && it.contains("line 1:") }
        )
    }

    // --- fixture -----------------------------------------------------------------------------

    /**
     * A concept with two string properties and a `ConceptConstraints` root holding one legacy
     * property validator per property, each with an empty body. Returns the validators' refs.
     */
    private fun createValidators(): List<String> {
        val conceptRef = createConceptRoot(
            "Validated${System.nanoTime()}",
            propertiesJson = """[ { "name": "title", "type": "string" }, { "name": "subtitle", "type": "string" } ]"""
        )
        val propertyRefs = readOnRepo {
            val concept = resolveNodeRef(conceptRef)
            listOf("title", "subtitle").map { name ->
                refOf(concept.children.single { it.containmentLink?.name == "propertyDeclaration" && it.name == name })
            }
        }
        val constraintsModel = readOnRepo { language.models.single { it.name.longName.endsWith(".constraints") } }
        val constraintsModelRef = modelRefOf(constraintsModel)
        for (usedLanguage in listOf("jetbrains.mps.lang.constraints", "jetbrains.mps.baseLanguage")) {
            expectOk(runTool(JetBrainsMPSModelMcpToolset()) {
                it.mps_mcp_model_used_language(constraintsModelRef, usedLanguage, "language", DependencyOperation.ADD)
            })
        }

        val propertyConstraints = propertyRefs.joinToString(",") { propertyRef ->
            """
            {
              "concept": "jetbrains.mps.lang.constraints.structure.NodePropertyConstraint",
              "references": [ { "role": "applicableProperty", "target": "$propertyRef" } ],
              "children": [ { "role": "propertyValidator", "nodes": [ {
                "concept": "jetbrains.mps.lang.constraints.structure.ConstraintFunction_PropertyValidator",
                "children": [ { "role": "body", "nodes": [ { "concept": "jetbrains.mps.baseLanguage.structure.StatementList" } ] } ]
              } ] } ]
            }
            """.trimIndent()
        }
        val json = """
            {
              "concept": "jetbrains.mps.lang.constraints.structure.ConceptConstraints",
              "references": [ { "role": "concept", "target": "$conceptRef" } ],
              "children": [ { "role": "property", "nodes": [ $propertyConstraints ] } ]
            }
        """.trimIndent()
        val payload = expectOk(runTool(JetBrainsMPSRootNodeMcpToolset()) {
            it.mps_mcp_insert_root_node_from_json(constraintsModelRef, JsonOrText(json), dryRun = false, responseDetail = "summary")
        })
        val rootRef = payload.get("roots").asJsonArray.single().asJsonObject.get("reference").asString
        return readOnRepo {
            SNodeOperations.getNodeDescendants(resolveNodeRef(rootRef), null, false, emptyArray())
                .filter { it.concept.name == "ConstraintFunction_PropertyValidator" }
                .map { refOf(it) }
        }
    }

    private fun parseInto(validatorRef: String, code: String): String = runTool(JetBrainsMPSJavaMcpToolset()) {
        it.mps_mcp_parse_java_and_insert(
            """
            {
              "code": ${Gson().toJson(code)},
              "featureKind": "STATEMENTS",
              "insert": { "mode": "child", "parentRef": "$validatorRef", "role": "body" }
            }
            """.trimIndent()
        )
    }

    private fun refOf(node: SNode): String = PersistenceFacade.getInstance().asString(node.reference)

    private fun bodyOf(validatorRef: String): SNode =
        resolveNodeRef(validatorRef).children.single { it.containmentLink?.name == "body" }

    private fun bodyDescendantConcepts(validatorRef: String): List<String> = readOnRepo {
        SNodeOperations.getNodeDescendants(bodyOf(validatorRef), null, false, emptyArray()).map { it.concept.name }
    }

    private fun dynamicReferenceCount(validatorRef: String): Int = readOnRepo {
        SNodeOperations.getNodeDescendants(bodyOf(validatorRef), null, false, emptyArray())
            .sumOf { node -> node.references.count { it is DynamicReference } }
    }

    private fun okEnvelope(response: String): JsonObject {
        val obj = JsonParser.parseString(response).asJsonObject
        assertTrue("expected ok=true envelope, got: $response", obj.get("ok").asBoolean)
        return obj
    }

    private fun okData(response: String): JsonObject {
        val data = okEnvelope(response).get("data")
        return if (data.isJsonObject) data.asJsonObject else JsonParser.parseString(data.asString).asJsonObject
    }

    private fun warnings(envelope: JsonObject): List<String> =
        envelope.getAsJsonArray("warnings")?.map { it.asString }.orEmpty()
}
