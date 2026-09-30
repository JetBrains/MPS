package jetbrains.mps.agents.mcp.tools.integration

import jetbrains.mps.agents.mcp.tools.*
import jetbrains.mps.agents.mcp.tools.common.*

import com.google.gson.Gson
import com.google.gson.JsonObject
import com.google.gson.JsonParser
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations
import jetbrains.mps.checkers.ModelPropertiesChecker
import jetbrains.mps.errors.MessageStatus
import jetbrains.mps.progress.EmptyProgressMonitor
import jetbrains.mps.smodel.DynamicReference
import jetbrains.mps.smodel.ModelImports
import jetbrains.mps.smodel.SModelInternal
import org.jetbrains.mps.openapi.model.SModel
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
    private val downcast = "SemanticDowncastExpression"

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
        val response = parseInto(validator, "Runnable r = () -> node.toString(); return true;")
        okEnvelope(response)
        val concepts = bodyDescendantConcepts(validator)
        assertTrue("node inside the lambda must be bound: $concepts", concepts.contains(nodeParameter))
        assertTrue("the lambda stays a closure: $concepts", concepts.contains("ClosureLiteral"))
        assertTrue("the call inside the lambda resolves through a downcast: $concepts", concepts.contains(downcast))
        assertFalse("no unresolved call may remain: $concepts", concepts.any { it.startsWith("Unknown") })
        assertNoErrors(response)
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
        assertTrue("the call in the argument resolves through a downcast: $concepts", concepts.contains(downcast))
        assertTrue("... to an instance method call: $concepts", concepts.contains("InstanceMethodCallOperation"))
        assertFalse("no unresolved call may remain: $concepts", concepts.any { it.startsWith("Unknown") })
    }

    // --- Java API calls on smodel-typed parameters (node<> is only weakly a subtype of SNode) ------

    @Test
    fun `a Java API call on the node parameter resolves through a semantic downcast`() {
        val validator = createValidators().first()
        val response = parseInto(validator, "return node.toString() != null;")
        val envelope = okEnvelope(response)
        assertTrue(
            "the downcast must be reported: $response",
            warnings(envelope).any { it.contains("Resolved 1 Java API call(s) on smodel-typed receivers") }
        )
        val concepts = bodyDescendantConcepts(validator)
        assertFalse("no unresolved call may remain: $concepts", concepts.any { it.startsWith("Unknown") })
        readOnRepo {
            val cast = descendantsOf(bodyOf(validator), downcast).single()
            assertEquals("the downcast wraps the parameter", nodeParameter, cast.children.single().concept.name)
            val dot = cast.parent!!
            assertEquals("the downcast is the operand of a DotExpression", "DotExpression", dot.concept.name)
            assertEquals("operand", cast.containmentLink!!.name)
            assertEquals("toString", resolvedMethodOf(dot).name)
        }
        assertNoErrors(response)
    }

    @Test
    fun `a downcast call imports smodel into a model that lacks it`() {
        val validator = createValidators(withoutAspectDevkit = true).first()
        assertFalse(constraintsModelLanguages().contains("jetbrains.mps.lang.smodel"))
        val modelErrorsBefore = modelErrors()
        // getChildren() is declared on SNode itself (toString() would resolve to java.lang.Object).
        val response = parseInto(validator, "return node.getChildren() != null;")
        okEnvelope(response)
        assertTrue("the downcast resolves: ${bodyDescendantConcepts(validator)}", bodyDescendantConcepts(validator).contains(downcast))
        assertTrue("its language is imported", constraintsModelLanguages().contains("jetbrains.mps.lang.smodel"))
        assertNoErrors(response)
        // The resolved method lives in the MPS.OpenAPI java stubs, which the fixture language does not
        // declare as a dependency: the model import is added, and it must be visible from the module.
        val imports = readOnRepo { ModelImports(constraintsModel()).importedModels.map { it.name.longName } }
        assertTrue("the stub model is imported: $imports", imports.contains("org.jetbrains.mps.openapi.model"))
        assertEquals("the insert must not add model-level errors", modelErrorsBefore, modelErrors())
    }

    @Test
    fun `a hit and a miss in one insert keep the smodel import the hit needs`() {
        val validator = createValidators(withoutAspectDevkit = true).first()
        okEnvelope(parseInto(validator, "return node.toString() != null && node.bar() != null;"))
        assertTrue("the hit keeps smodel imported", constraintsModelLanguages().contains("jetbrains.mps.lang.smodel"))
        assertEquals("one downcast, on toString", 1, bodyDescendantConcepts(validator).count { it == downcast })
        assertUnresolvedOnPlainParameter(validator, expectedUnknownCalls = 1)
    }

    @Test
    fun `importUsedLanguages false resolves the call when the model imports smodel directly`() {
        val validator = createValidators(withoutAspectDevkit = true).first()
        expectOk(runTool(JetBrainsMPSModelMcpToolset()) {
            it.mps_mcp_model_used_language(
                modelRefOf(constraintsModel()), "jetbrains.mps.lang.smodel", "language", DependencyOperation.ADD
            )
        })
        val languagesBefore = constraintsModelLanguages()
        val response = runTool(JetBrainsMPSJavaMcpToolset()) {
            it.mps_mcp_parse_java_and_insert(
                """
                {
                  "code": "return node.toString() != null;",
                  "featureKind": "STATEMENTS",
                  "insert": { "mode": "child", "parentRef": "$validator", "role": "body" },
                  "postProcess": { "importUsedLanguages": false }
                }
                """.trimIndent()
            )
        }
        okEnvelope(response)
        val concepts = bodyDescendantConcepts(validator)
        assertTrue("the downcast resolves: $concepts", concepts.contains(downcast))
        assertFalse("no unresolved call may remain: $concepts", concepts.any { it.startsWith("Unknown") })
        assertEquals("the used languages are unchanged", languagesBefore, constraintsModelLanguages())
    }

    @Test
    fun `an Object method on the node parameter resolves through the SNode interface`() {
        val validator = createValidators().first()
        val response = parseInto(validator, "return node.hashCode() > 0;")
        okEnvelope(response)
        readOnRepo {
            val dot = descendantsOf(bodyOf(validator), downcast).single().parent!!
            assertEquals("hashCode", resolvedMethodOf(dot).name)
        }
        assertNoErrors(response)
    }

    @Test
    fun `the argument of a downcast call is bound and resolved too`() {
        val validator = createValidators().first()
        val response = parseInto(validator, "return node.equals(propertyValue);")
        okEnvelope(response)
        val concepts = bodyDescendantConcepts(validator)
        assertEquals("node is bound: $concepts", 1, concepts.count { it == nodeParameter })
        assertEquals("propertyValue is bound: $concepts", 1, concepts.count { it == propertyValueParameter })
        assertEquals("one downcast: $concepts", 1, concepts.count { it == downcast })
        assertFalse("no unresolved call may remain: $concepts", concepts.any { it.startsWith("Unknown") })
        assertNoErrors(response)
    }

    @Test
    fun `a call chained on a downcast call resolves`() {
        val validator = createValidators().first()
        val response = parseInto(validator, "return node.toString().length() > 0;")
        okEnvelope(response)
        val concepts = bodyDescendantConcepts(validator)
        assertEquals("both calls resolve: $concepts", 2, concepts.count { it == "InstanceMethodCallOperation" })
        assertFalse("no unresolved call may remain: $concepts", concepts.any { it.startsWith("Unknown") })
        assertNoErrors(response)
    }

    @Test
    fun `a method SNode does not have stays unresolved, without a downcast or a smodel import`() {
        val validator = createValidators(withoutAspectDevkit = true).first()
        val languagesBefore = constraintsModelLanguages()
        val response = parseInto(validator, "return node.bar() != null;")
        val envelope = okEnvelope(response)
        assertFalse("nothing was resolved: $response", warnings(envelope).any { it.contains("semantic downcast") })
        assertUnresolvedOnPlainParameter(validator, expectedUnknownCalls = 1)
        assertEquals("the used languages are unchanged", languagesBefore, constraintsModelLanguages())
    }

    @Test
    fun `an unresolved call copied into a resolved outer call loses its downcast`() {
        val validator = createValidators().first()
        // The outer call resolves first and copies its argument, the wrapped inner call included,
        // so the inner miss is unwrapped structurally, not by the identity of its wrapper.
        okEnvelope(parseInto(validator, "return node.equals(node.bar());"))
        readOnRepo {
            val dot = descendantsOf(bodyOf(validator), downcast).single().parent!!
            assertEquals("the outer call resolves", "equals", resolvedMethodOf(dot).name)
        }
        assertUnresolvedOnPlainParameter(validator, expectedUnknownCalls = 1)
    }

    @Test
    fun `an unresolved call in the argument of a static call leaves no downcast or smodel import`() {
        val validator = createValidators(withoutAspectDevkit = true).first()
        val languagesBefore = constraintsModelLanguages()
        okEnvelope(parseInto(validator, "return String.valueOf(node.bar()) != null;"))
        assertUnresolvedOnPlainParameter(validator, expectedUnknownCalls = 1)
        assertFalse(bodyDescendantConcepts(validator).contains(downcast))
        assertEquals("the used languages are unchanged", languagesBefore, constraintsModelLanguages())
    }

    @Test
    fun `an overloaded SNode method is chosen by argument count`() {
        val validator = createValidators().first()
        // getChildren(SContainmentLink) is declared before getChildren(), so the first method by name
        // has the wrong arity and the final overload pass has to repoint the call.
        val response = parseInto(validator, "return node.getChildren() != null;")
        okEnvelope(response)
        readOnRepo {
            val method = resolvedMethodOf(descendantsOf(bodyOf(validator), downcast).single().parent!!)
            assertEquals("getChildren", method.name)
            assertEquals("the no-argument overload", 0, method.children.count { it.containmentLink?.name == "parameter" })
        }
        assertNoErrors(response)
    }

    @Test
    fun `a Java call on the concept parameter resolves without a downcast`() {
        // concept<> is a strong subtype of SAbstractConcept, so MPS's own resolution finishes the call.
        val canBeChild = createCanBeChild()
        val response = parseInto(canBeChild, "return childConcept.getName() != null;")
        okEnvelope(response)
        val concepts = bodyDescendantConcepts(canBeChild)
        assertTrue("childConcept is bound: $concepts", concepts.contains("ConstraintFunctionParameter_childConcept"))
        assertTrue("the call resolves: $concepts", concepts.contains("InstanceMethodCallOperation"))
        assertFalse("no downcast is needed: $concepts", concepts.contains(downcast))
        assertFalse("no unresolved call may remain: $concepts", concepts.any { it.startsWith("Unknown") })
        assertNoErrors(response)
    }

    @Test
    fun `importUsedLanguages false leaves the call unresolved when the model lacks smodel`() {
        val validator = createValidators(withoutAspectDevkit = true).first()
        val languagesBefore = constraintsModelLanguages()
        assertFalse("the fixture does not use smodel", languagesBefore.contains("jetbrains.mps.lang.smodel"))
        val response = runTool(JetBrainsMPSJavaMcpToolset()) {
            it.mps_mcp_parse_java_and_insert(
                """
                {
                  "code": "return node.toString() != null;",
                  "featureKind": "STATEMENTS",
                  "insert": { "mode": "child", "parentRef": "$validator", "role": "body" },
                  "postProcess": { "importUsedLanguages": false }
                }
                """.trimIndent()
            )
        }
        val envelope = okEnvelope(response)
        assertTrue(
            "the skipped call must be reported: $response",
            warnings(envelope).any { it.contains("Left 1 method call(s)") && it.contains("jetbrains.mps.lang.smodel") }
        )
        assertUnresolvedOnPlainParameter(validator, expectedUnknownCalls = 1)
        assertEquals("the used languages are unchanged", languagesBefore, constraintsModelLanguages())
    }

    @Test
    fun `an EXPRESSION that is a downcast call is reported as the attached resolved node`() {
        val validator = createValidators().first()
        okEnvelope(parseInto(validator, "return false;"))
        val returnRef = readOnRepo { refOf(bodyOf(validator).children.single()) }
        val response = runTool(JetBrainsMPSJavaMcpToolset()) {
            it.mps_mcp_parse_java_and_insert(
                """
                {
                  "code": "node.toString()",
                  "featureKind": "EXPRESSION",
                  "insert": { "mode": "child", "parentRef": "$returnRef", "role": "expression" }
                }
                """.trimIndent()
            )
        }
        val inserted = okData(response).getAsJsonArray("inserted").single().asJsonObject
        assertEquals("the reported node is the resolved call: $response", "DotExpression", inserted.get("concept").asString)
        readOnRepo {
            val node = PersistenceFacade.getInstance().createNodeReference(inserted.get("reference").asString)
                .resolve(myProject.repository)
            assertTrue("the reported reference must resolve to the attached node", node != null && node.parent != null)
        }
        assertFalse(bodyDescendantConcepts(validator).any { it.startsWith("Unknown") })
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
    private fun createValidators(withoutAspectDevkit: Boolean = false): List<String> {
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
        val constraintsModelRef = prepareConstraintsModel(withoutAspectDevkit)

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

    /**
     * A concept and a `ConceptConstraints` root holding a legacy `canBeChild` function with an empty
     * body (parameters `node`, `parentNode`, `childConcept`, `link`). Returns the function's ref.
     */
    private fun createCanBeChild(): String {
        val conceptRef = createConceptRoot("Placed${System.nanoTime()}")
        val constraintsModelRef = prepareConstraintsModel()
        val json = """
            {
              "concept": "jetbrains.mps.lang.constraints.structure.ConceptConstraints",
              "references": [ { "role": "concept", "target": "$conceptRef" } ],
              "children": [ { "role": "canBeChild", "nodes": [ {
                "concept": "jetbrains.mps.lang.constraints.structure.ConstraintFunction_CanBeAChild",
                "children": [ { "role": "body", "nodes": [ { "concept": "jetbrains.mps.baseLanguage.structure.StatementList" } ] } ]
              } ] } ]
            }
        """.trimIndent()
        val payload = expectOk(runTool(JetBrainsMPSRootNodeMcpToolset()) {
            it.mps_mcp_insert_root_node_from_json(constraintsModelRef, JsonOrText(json), dryRun = false, responseDetail = "summary")
        })
        val rootRef = payload.get("roots").asJsonArray.single().asJsonObject.get("reference").asString
        return readOnRepo {
            refOf(descendantsOf(resolveNodeRef(rootRef), "ConstraintFunction_CanBeAChild").single())
        }
    }

    /**
     * The language's constraints model, directly using lang.constraints and baseLanguage. The aspect
     * devkit it is created with provides smodel; [withoutAspectDevkit] removes it, so that smodel is
     * not available unless the insert imports it (a devkit-provided language is never imported directly,
     * so a used-language assertion against the devkit fixture proves nothing).
     */
    private fun prepareConstraintsModel(withoutAspectDevkit: Boolean = false): String {
        val constraintsModelRef = modelRefOf(constraintsModel())
        for (usedLanguage in listOf("jetbrains.mps.lang.constraints", "jetbrains.mps.baseLanguage")) {
            expectOk(runTool(JetBrainsMPSModelMcpToolset()) {
                it.mps_mcp_model_used_language(constraintsModelRef, usedLanguage, "language", DependencyOperation.ADD)
            })
        }
        if (withoutAspectDevkit) {
            expectOk(runTool(JetBrainsMPSModelMcpToolset()) {
                it.mps_mcp_model_used_language(
                    constraintsModelRef, "jetbrains.mps.devkit.aspect.constraints", "devkit", DependencyOperation.DELETE
                )
            })
            assertTrue(
                "the fixture must have no devkit left",
                readOnRepo { (constraintsModel() as SModelInternal).importedDevkits().isEmpty() }
            )
        }
        return constraintsModelRef
    }

    private fun constraintsModel(): SModel = readOnRepo { language.models.single { it.name.longName.endsWith(".constraints") } }

    private fun constraintsModelLanguages(): Set<String> = readOnRepo {
        (constraintsModel() as SModelInternal).importedLanguageIds().map { it.qualifiedName }.toSet()
    }

    private fun descendantsOf(node: SNode, conceptName: String): List<SNode> =
        SNodeOperations.getNodeDescendants(node, null, false, emptyArray()).filter { it.concept.name == conceptName }

    // The method an InstanceMethodCallOperation under [dot] points to.
    private fun resolvedMethodOf(dot: SNode): SNode {
        val call = dot.children.single { it.concept.name == "InstanceMethodCallOperation" }
        return checkNotNull(call.references.single { it.link.name == "baseMethodDeclaration" }.targetNode) {
            "the call's method reference must resolve"
        }
    }

    // [expectedUnknownCalls] calls stay UnknownInstanceMethodCall on the bare node parameter, and no
    // downcast is left as the receiver of an unresolved call.
    private fun assertUnresolvedOnPlainParameter(validatorRef: String, expectedUnknownCalls: Int) = readOnRepo {
        val unknown = descendantsOf(bodyOf(validatorRef), "UnknownInstanceMethodCall")
        assertEquals("unresolved calls: ${unknown.map { it.concept.name }}", expectedUnknownCalls, unknown.size)
        for (call in unknown) {
            val operand = call.children.single { it.containmentLink?.name == "operand" }
            assertEquals("the receiver is the bare parameter", nodeParameter, operand.concept.name)
        }
    }

    // Model-level errors (imports not visible from the module, missing languages, ...), as messages.
    private fun modelErrors(): List<String> = readOnRepo {
        val errors = ArrayList<String>()
        ModelPropertiesChecker(myProject.platform).check(constraintsModel(), myProject.repository, { item ->
            if (item.severity == MessageStatus.ERROR) errors.add(item.message)
        }, EmptyProgressMonitor())
        errors
    }

    private fun assertNoErrors(response: String) {
        val problems = okData(response).getAsJsonArray("problems")
        assertTrue(
            "the insert must not leave error-severity problems: $problems",
            problems.none { it.asJsonObject.get("severity").asString == "error" }
        )
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
