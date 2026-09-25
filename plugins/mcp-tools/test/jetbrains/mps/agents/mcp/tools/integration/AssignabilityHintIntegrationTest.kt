package jetbrains.mps.agents.mcp.tools.integration

import jetbrains.mps.agents.mcp.tools.*
import jetbrains.mps.agents.mcp.tools.common.*

import com.google.gson.JsonArray
import com.google.gson.JsonObject
import com.google.gson.JsonParser
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations
import jetbrains.mps.smodel.SNodeUtil
import org.jetbrains.mps.openapi.model.SModel
import org.jetbrains.mps.openapi.model.SNode
import org.jetbrains.mps.openapi.persistence.PersistenceFacade
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * Next-step hints on concept-assignability errors (study D51/D52, plan
 * `docs/d51-d52-assignability-hints-plan.md`): a rejected child names the wrapper that would accept
 * it, a rejected reference target names the nodes that would fit, and a `featureId` given as a
 * reference target is rejected instead of being stored as a dynamic reference.
 *
 * Error codes follow the pre-existing split: a failure inside a blueprint is rewrapped as
 * `INVALID_REQUEST`, a failure of the top-level node or of SET REFERENCE is `INVALID_REFERENCE`.
 */
class AssignabilityHintIntegrationTest : McpIntegrationTestBase() {

    private val bl = "jetbrains.mps.baseLanguage.structure"
    private val nameFeatureId = "ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001"
    private val nameDeclarationSuffix = "(jetbrains.mps.lang.core.structure)/1169194664001"

    private val arrayCreatorJson = """
        {
          "concept": "$bl.ArrayCreatorWithInitializer",
          "children": [
            { "role": "componentType", "nodes": [ { "concept": "$bl.StringType" } ] },
            { "role": "initValue", "nodes": [ { "concept": "$bl.StringLiteral", "properties": [ { "name": "value", "value": "" } ] } ] }
          ]
        }
    """.trimIndent()

    private fun classWithReturnJson(returnedExpressionJson: String) = """
        {
          "concept": "$bl.ClassConcept",
          "name": "D51Probe",
          "children": [ { "role": "member", "nodes": [ {
            "concept": "$bl.InstanceMethodDeclaration",
            "name": "values",
            "children": [
              { "role": "returnType", "nodes": [ { "concept": "$bl.ArrayType", "children": [
                { "role": "componentType", "nodes": [ { "concept": "$bl.StringType" } ] } ] } ] },
              { "role": "body", "nodes": [ { "concept": "$bl.StatementList", "children": [
                { "role": "statement", "nodes": [ { "concept": "$bl.ReturnStatement", "children": [
                  { "role": "expression", "nodes": [ $returnedExpressionJson ] } ] } ] } ] } ] }
            ]
          } ] } ]
        }
    """.trimIndent()

    // ── fixtures ──────────────────────────────────────────────────────────────────────────

    private fun createJavaModel(): SModel {
        val solution = createSolution()
        return createModel(solution, "${solution.moduleName}.code")
    }

    /** `class Probe { int m() { return 1; } void v() { int x = 0; } }`, parsed into a fresh model. */
    private fun parseProbeClass(): SNode {
        val javaModel = createJavaModel()
        val response = runTool(JetBrainsMPSJavaMcpToolset()) {
            it.mps_mcp_parse_java_and_insert(
                """
                {
                  "code": "class Probe { int m() { return 1; } void v() { int x = 0; } }",
                  "featureKind": "CLASS",
                  "insert": { "mode": "root", "modelRef": "${modelRefOf(javaModel)}" }
                }
                """.trimIndent()
            )
        }
        assertTrue("expected the probe class to parse: $response", envelope(response).get("ok").asBoolean)
        return readOnRepo { javaModel.rootNodes.single() }
    }

    private fun descendant(root: SNode, conceptName: String): SNode = readOnRepo {
        SNodeOperations.getNodeDescendants(root, null, false, emptyArray()).first { it.concept.name == conceptName }
    }

    private fun refOf(node: SNode): String = readOnRepo { PersistenceFacade.getInstance().asString(node.reference) }

    private fun envelope(response: String): JsonObject = JsonParser.parseString(response).asJsonObject

    private fun addChild(parentRef: String, role: String, childJson: String, dryRun: Boolean = true): String =
        runTool(JetBrainsMPSNodeMcpToolset()) {
            it.mps_mcp_update_node(
                NodeUpdateOperation.ADD, NodeUpdateKind.CHILD,
                nodeReference = parentRef, childRole = role, childJson = childJson, dryRun = dryRun,
            )
        }

    private fun setReference(nodeRef: String, role: String, target: String): JsonObject {
        val response = runTool(JetBrainsMPSNodeMcpToolset()) {
            it.mps_mcp_update_node(NodeUpdateOperation.SET, NodeUpdateKind.REFERENCE, references = listOf(listOf(nodeRef, role, target)))
        }
        assertFalse("expected the SET REFERENCE batch to fail: $response", envelope(response).get("ok").asBoolean)
        val row = envelope(response).getAsJsonArray("data")[0]
        return if (row.isJsonObject) row.asJsonObject else JsonParser.parseString(row.asString).asJsonObject
    }

    private fun updateRoot(rootRef: String, json: String): String = runTool(JetBrainsMPSRootNodeMcpToolset()) {
        it.mps_mcp_update_root_node_from_json(rootRef, json, dryRun = true, operation = RootNodeOperation.UPDATE)
    }

    /** Asserts an error envelope with [code] and returns it. */
    private fun expectError(response: String, code: String): JsonObject {
        val obj = envelope(response)
        assertFalse("expected an error envelope: $response", obj.get("ok").asBoolean)
        assertEquals("unexpected code: $response", code, obj.get("code").asString)
        return obj
    }

    private fun wrapperCandidates(obj: JsonObject): JsonArray {
        val details = obj.getAsJsonObject("details") ?: error("expected details.wrapperCandidates: $obj")
        return details.getAsJsonArray("wrapperCandidates")
    }

    private fun targetCandidates(obj: JsonObject): List<JsonObject> {
        val details = obj.getAsJsonObject("details") ?: error("expected details.targetCandidates: $obj")
        return details.getAsJsonArray("targetCandidates").map { it.asJsonObject }
    }

    private fun JsonArray.conceptNames(): List<String> = map { it.asJsonObject.get("concept").asString }

    // ── wrapper hints ─────────────────────────────────────────────────────────────────────

    @Test
    fun `D51 array creator as a return expression names GenericNewExpression, and its paste shape is accepted`() {
        val javaModelRef = modelRefOf(createJavaModel())
        val response = runTool(JetBrainsMPSRootNodeMcpToolset()) {
            it.mps_mcp_insert_root_node_from_json(javaModelRef, JsonOrText(classWithReturnJson(arrayCreatorJson)), dryRun = true)
        }

        val obj = expectError(response, "INVALID_REQUEST")
        val message = obj.get("error").asString
        for (fact in listOf(
            "Concept assignability error at JSON path '$.children[0].nodes[0].children[1].nodes[0].children[0].nodes[0].children[0].nodes[0]'",
            "Actual concept: 'ArrayCreatorWithInitializer'",
            "Expected concept(s): 'Expression'",
            "Parent concept: 'ReturnStatement'",
            "Role: 'expression'",
        )) {
            assertTrue("message must keep '$fact': $message", message.contains(fact))
        }
        assertTrue(message, message.contains(" - Wrap it: 'GenericNewExpression' is an 'Expression' whose child role 'creator' (1, AbstractCreator)"))

        val candidates = wrapperCandidates(obj)
        assertEquals("exactly one wrapper: $candidates", 1, candidates.size())
        val first = candidates[0].asJsonObject
        assertEquals("$bl.GenericNewExpression", first.get("concept").asString)
        assertEquals("creator", first.get("role").asString)
        assertEquals("1", first.get("cardinality").asString)
        assertTrue(first.get("conceptReference").asString.startsWith("c:f3061a53-9226-4cc5-a443-f952ceaf5816/1145552977093:"))
        assertEquals(1, obj.getAsJsonObject("details").get("wrapperCandidatesTotal").asInt)

        val pasteShape = message.lines().last().trim().replace("<the node at this path>", arrayCreatorJson)
        val retry = runTool(JetBrainsMPSRootNodeMcpToolset()) {
            it.mps_mcp_insert_root_node_from_json(javaModelRef, JsonOrText(classWithReturnJson(pasteShape)), dryRun = true)
        }
        assertTrue("the suggested shape must be accepted: $retry", envelope(retry).get("ok").asBoolean)
    }

    @Test
    fun `every AbstractCreator gets the single GenericNewExpression wrapper`() {
        val returnRef = refOf(descendant(parseProbeClass(), "ReturnStatement"))
        for (creator in listOf("$bl.AnonymousClassCreator", "jetbrains.mps.lang.smodel.structure.SNodeCreator")) {
            val obj = expectError(addChild(returnRef, "expression", """{ "concept": "$creator" }"""), "INVALID_REFERENCE")
            val candidates = wrapperCandidates(obj)
            assertEquals("$creator: $candidates", listOf("$bl.GenericNewExpression"), candidates.conceptNames())
            assertEquals("$creator: $candidates", "creator", candidates[0].asJsonObject.get("role").asString)
        }
    }

    @Test
    fun `an expression given as a statement ranks ExpressionStatement first and drops incomplete wrappers`() {
        val statementListRef = refOf(descendant(parseProbeClass(), "StatementList"))

        val obj = expectError(addChild(statementListRef, "statement", """{ "concept": "$bl.IntegerConstant" }"""), "INVALID_REFERENCE")

        val names = wrapperCandidates(obj).conceptNames()
        assertEquals("$bl.ExpressionStatement", names.first())
        assertFalse("IfStatement has other mandatory roles: $names", names.contains("$bl.IfStatement"))
        assertTrue(obj.get("error").asString, obj.get("error").asString.contains(" - Possible wrappers ("))
    }

    @Test
    fun `an operation given as an expression falls back to DotExpression and names the missing operand`() {
        val returnRef = refOf(descendant(parseProbeClass(), "ReturnStatement"))

        val obj = expectError(addChild(returnRef, "expression", """{ "concept": "$bl.InstanceMethodCallOperation" }"""), "INVALID_REFERENCE")

        val candidates = wrapperCandidates(obj)
        assertEquals(listOf("$bl.DotExpression"), candidates.conceptNames())
        val dot = candidates[0].asJsonObject
        assertEquals("operation", dot.get("role").asString)
        assertEquals("operand", dot.getAsJsonArray("alsoRequired").single().asJsonObject.get("role").asString)
        val message = obj.get("error").asString
        assertTrue(message, message.contains("it also needs 'operand' (1, Expression)"))
        assertTrue(message, message.contains(""""children":[{"role":"operand","nodes":[<operand>]},{"role":"operation","nodes":[<the node at this path>]}]"""))

        // A type has 10 incomplete wrappers in this scope (CastExpression, InstanceOfExpression, …): no hint at all.
        val type = expectError(addChild(returnRef, "expression", """{ "concept": "$bl.ClassifierType" }"""), "INVALID_REFERENCE")
        assertNull("too many incomplete wrappers must yield no hint: $type", type.get("details"))
    }

    @Test
    fun `a concept no wrapper accepts keeps today's message and has no details`() {
        val returnRef = refOf(descendant(parseProbeClass(), "ReturnStatement"))

        val obj = expectError(addChild(returnRef, "expression", """{ "concept": "$bl.PublicVisibility" }"""), "INVALID_REFERENCE")

        assertEquals(
            "Concept assignability error at JSON path '$':\n" +
                " - Actual concept: 'PublicVisibility'\n" +
                " - Expected concept(s): 'Expression'\n" +
                " - Parent concept: 'ReturnStatement'\n" +
                " - Role: 'expression'",
            obj.get("error").asString
        )
        assertNull(obj.get("details"))
    }

    @Test
    fun `SET CHILD keeps the nested wrapper hint through its rewrap`() {
        val returnStatement = descendant(parseProbeClass(), "ReturnStatement")
        val replacement = """
            { "concept": "$bl.ReturnStatement", "children": [ { "role": "expression", "nodes": [ $arrayCreatorJson ] } ] }
        """.trimIndent()

        val response = runTool(JetBrainsMPSNodeMcpToolset()) {
            it.mps_mcp_update_node(
                NodeUpdateOperation.SET, NodeUpdateKind.CHILD,
                childNodeRef = refOf(returnStatement), childJson = replacement, dryRun = true,
            )
        }

        val obj = expectError(response, "INVALID_REQUEST")
        assertTrue(obj.get("error").asString.startsWith("Failed to instantiate new child node from JSON: Concept assignability error"))
        assertEquals(listOf("$bl.GenericNewExpression"), wrapperCandidates(obj).conceptNames())
    }

    @Test
    fun `update_root_node_from_json names the wrapper for a top-level child`() {
        val probe = parseProbeClass()
        val json = """
            { "concept": "$bl.ClassConcept", "name": "Probe",
              "children": [ { "role": "classInitializer", "nodes": [ { "concept": "$bl.StatementList" } ] } ] }
        """.trimIndent()

        val obj = expectError(updateRoot(refOf(probe), json), "INVALID_REFERENCE")

        val candidates = wrapperCandidates(obj)
        assertEquals(listOf("$bl.StaticInitializer"), candidates.conceptNames())
        assertEquals("statementList", candidates[0].asJsonObject.get("role").asString)
    }

    // ── reference-target hints ────────────────────────────────────────────────────────────

    private val servingsProperty = """[ { "name": "servings", "type": "integer" } ]"""

    private fun conceptOf(behaviorRef: String): SNode = readOnRepo {
        resolveNodeRef(behaviorRef).references.single { it.link.name == "concept" }.targetNode!!
    }

    /**
     * A behavior method `String label() { return this.<feature>; }` whose [operation] (`SPropertyAccess` by
     * default) references [featureTarget] in [role].
     */
    private fun labelMethodJson(
        featureTarget: String,
        operation: String = "jetbrains.mps.lang.smodel.structure.SPropertyAccess",
        role: String = "property"
    ) = """
        {
          "concept": "jetbrains.mps.lang.behavior.structure.ConceptMethodDeclaration",
          "name": "label",
          "children": [
            { "role": "returnType", "nodes": [ { "concept": "$bl.StringType" } ] },
            { "role": "body", "nodes": [ { "concept": "$bl.StatementList", "children": [
              { "role": "statement", "nodes": [ { "concept": "$bl.ReturnStatement", "children": [
                { "role": "expression", "nodes": [ { "concept": "$bl.DotExpression", "children": [
                  { "role": "operand", "nodes": [ { "concept": "jetbrains.mps.lang.behavior.structure.ThisNodeExpression" } ] },
                  { "role": "operation", "nodes": [ {
                    "concept": "$operation",
                    "references": [ { "role": "$role", "target": "$featureTarget" } ]
                  } ] }
                ] } ] }
              ] } ] }
            ] } ] }
          ]
        }
    """.trimIndent()

    @Test
    fun `D52 a concept given as a property target lists its own and inherited properties`() {
        val behaviorRef = createConceptBehaviorRoot(
            implements = "jetbrains.mps.lang.core.structure.INamedConcept", propertiesJson = servingsProperty
        )
        val concept = conceptOf(behaviorRef)
        // An explicit `extends BaseConcept`, so the walk reaches BaseConcept and has to skip it.
        val baseConceptDecl = readOnRepo { PersistenceFacade.getInstance().asString(SNodeUtil.concept_BaseConcept.sourceNode!!) }
        val extended = runTool(JetBrainsMPSNodeMcpToolset()) {
            it.mps_mcp_update_node(NodeUpdateOperation.SET, NodeUpdateKind.REFERENCE, references = listOf(listOf(refOf(concept), "extends", baseConceptDecl)))
        }
        assertTrue("expected extends to be set: $extended", envelope(extended).get("ok").asBoolean)

        val obj = expectError(addChild(behaviorRef, "method", labelMethodJson(refOf(concept))), "INVALID_REQUEST")

        val message = obj.get("error").asString
        assertTrue(message, message.contains("Target '${readOnRepo { concept.name }}' is a ConceptDeclaration; role 'property' wants one of its PropertyDeclarations"))
        val candidates = targetCandidates(obj)
        assertEquals("the own property comes first: $candidates", "servings", candidates.first().get("name").asString)
        assertTrue("INamedConcept.name must be offered: $candidates", candidates.any { it.get("reference").asString.endsWith(nameDeclarationSuffix) })
        assertFalse("BaseConcept's properties are never offered: $candidates", candidates.any { it.get("name").asString == "shortDescription" })

        // The suggested target is accepted.
        val servingsRef = candidates.first().get("reference").asString
        assertTrue(envelope(addChild(behaviorRef, "method", labelMethodJson(servingsRef))).get("ok").asBoolean)
    }

    @Test
    fun `a concept with many features lists ten, points at the rest, and describes link candidates`() {
        val properties = (1..11).joinToString(",", "[", "]") { """{ "name": "p$it", "type": "integer" }""" }
        val behaviorRef = createConceptBehaviorRoot(
            implements = "jetbrains.mps.lang.core.structure.INamedConcept",
            propertiesJson = properties,
            childrenJson = """[ { "role": "items", "target": "jetbrains.mps.lang.core.structure.BaseConcept", "multiple": true, "optional": true } ]"""
        )
        val conceptRef = refOf(conceptOf(behaviorRef))

        val obj = expectError(addChild(behaviorRef, "method", labelMethodJson(conceptRef)), "INVALID_REQUEST")
        val message = obj.get("error").asString
        assertTrue(message, message.contains("   … 2 more: see details.targetCandidates, or mps_mcp_get_concept_details on '"))
        assertEquals(12, obj.getAsJsonObject("details").get("targetCandidatesTotal").asInt)
        assertEquals((1..11).map { "p$it" } + "name", targetCandidates(obj).map { it.get("name").asString })

        val links = expectError(
            addChild(behaviorRef, "method", labelMethodJson(conceptRef, "jetbrains.mps.lang.smodel.structure.SLinkListAccess", "link")),
            "INVALID_REQUEST"
        )
        val items = targetCandidates(links).single()
        assertEquals("items", items.get("name").asString)
        assertEquals("containment", items.get("metaclass").asString)
        assertEquals("0..n", items.get("cardinality").asString)
        assertTrue(links.get("error").asString, links.get("error").asString.contains("wants one of its LinkDeclarations"))
    }

    @Test
    fun `update_root_node_from_json hints a staged reference target and rejects a staged featureId`() {
        val behaviorRef = createConceptBehaviorRoot(propertiesJson = servingsProperty)
        val concept = conceptOf(behaviorRef)
        val servingsRef = readOnRepo { PersistenceFacade.getInstance().asString(concept.children.single { it.name == "servings" }.reference) }
        fun behaviorJson(conceptTarget: String) = """
            { "concept": "jetbrains.mps.lang.behavior.structure.ConceptBehavior",
              "references": [ { "role": "concept", "target": "$conceptTarget" } ],
              "children": [ { "role": "constructor", "nodes": [ {
                "concept": "jetbrains.mps.lang.behavior.structure.ConceptConstructorDeclaration",
                "children": [ { "role": "body", "nodes": [ { "concept": "$bl.StatementList" } ] } ]
              } ] } ] }
        """.trimIndent()

        val wrongTarget = expectError(updateRoot(behaviorRef, behaviorJson(servingsRef)), "INVALID_REFERENCE")
        val candidate = targetCandidates(wrongTarget).single()
        assertEquals(readOnRepo { concept.name }, candidate.get("name").asString)
        assertEquals("ancestor", candidate.get("relation").asString)

        val featureId = expectError(updateRoot(behaviorRef, behaviorJson(nameFeatureId)), "INVALID_REFERENCE")
        assertTrue(featureId.get("error").asString, featureId.get("error").asString.contains("'$nameFeatureId' is a featureId"))
    }

    /** Inserts the label method for real, targeting `servings`, and returns its `SPropertyAccess`. */
    private fun insertedPropertyAccess(behaviorRef: String): SNode {
        val servingsRef = readOnRepo {
            PersistenceFacade.getInstance().asString(conceptOf(behaviorRef).children.single { it.name == "servings" }.reference)
        }
        val inserted = addChild(behaviorRef, "method", labelMethodJson(servingsRef), dryRun = false)
        assertTrue("expected the label method to insert: $inserted", envelope(inserted).get("ok").asBoolean)
        return readOnRepo {
            SNodeOperations.getNodeDescendants(resolveNodeRef(behaviorRef), null, false, emptyArray())
                .single { it.concept.name == "SPropertyAccess" }
        }
    }

    private fun propertyTargetName(propertyAccess: SNode): String? =
        readOnRepo { propertyAccess.references.single { it.link.name == "property" }.targetNode?.name }

    @Test
    fun `D52 through SET REFERENCE carries the same target candidates`() {
        val behaviorRef = createConceptBehaviorRoot(
            implements = "jetbrains.mps.lang.core.structure.INamedConcept", propertiesJson = servingsProperty
        )
        val propertyAccess = insertedPropertyAccess(behaviorRef)

        val row = setReference(refOf(propertyAccess), "property", refOf(conceptOf(behaviorRef)))

        assertEquals("INVALID_REFERENCE", row.get("code").asString)
        val candidates = targetCandidates(row)
        assertEquals("servings", candidates.first().get("name").asString)
        assertTrue(candidates.any { it.get("reference").asString.endsWith(nameDeclarationSuffix) })
        assertEquals("the rejected SET must leave the reference alone", "servings", propertyTargetName(propertyAccess))
    }

    @Test
    fun `a statement given as a variable target points at the declaration inside it`() {
        val declarationStatement = descendant(parseProbeClass(), "LocalVariableDeclarationStatement")
        val statementListRef = refOf(readOnRepo { declarationStatement.parent!! })
        val json = """
            { "concept": "$bl.ExpressionStatement", "children": [ { "role": "expression", "nodes": [ {
              "concept": "$bl.VariableReference",
              "references": [ { "role": "variableDeclaration", "target": "${refOf(declarationStatement)}" } ]
            } ] } ] }
        """.trimIndent()

        val obj = expectError(addChild(statementListRef, "statement", json), "INVALID_REQUEST")

        val candidate = targetCandidates(obj).single()
        assertEquals("x", candidate.get("name").asString)
        assertEquals("LocalVariableDeclaration", candidate.get("concept").asString)
        assertEquals("descendant", candidate.get("relation").asString)
    }

    // ── featureId as a reference target ───────────────────────────────────────────────────

    @Test
    fun `a featureId as a blueprint reference target is rejected, dry run and real, and nothing is stored`() {
        val behaviorRef = createConceptBehaviorRoot(implements = "jetbrains.mps.lang.core.structure.INamedConcept")

        for (dryRun in listOf(true, false)) {
            val obj = expectError(addChild(behaviorRef, "method", labelMethodJson(nameFeatureId), dryRun), "INVALID_REQUEST")
            val message = obj.get("error").asString
            assertTrue("dryRun=$dryRun: $message", message.contains("'$nameFeatureId' is a featureId"))
            assertTrue("dryRun=$dryRun: $message", message.contains("property 'name' of concept 'INamedConcept'"))
            assertTrue("dryRun=$dryRun: $message", message.contains(nameDeclarationSuffix))
        }
        readOnRepo {
            assertTrue(
                "no method may be stored",
                resolveNodeRef(behaviorRef).children.none { it.containmentLink?.name == "method" }
            )
        }
    }

    @Test
    fun `a featureId as a SET REFERENCE target is rejected and the reference is kept`() {
        val behaviorRef = createConceptBehaviorRoot(
            implements = "jetbrains.mps.lang.core.structure.INamedConcept", propertiesJson = servingsProperty
        )
        val propertyAccess = insertedPropertyAccess(behaviorRef)

        val row = setReference(refOf(propertyAccess), "property", nameFeatureId)

        assertEquals("INVALID_REFERENCE", row.get("code").asString)
        assertTrue(row.get("error").asString, row.get("error").asString.contains(nameDeclarationSuffix))
        assertEquals("servings", propertyTargetName(propertyAccess))

        // A featureId-shaped string whose number overflows a long is still a clean rejection, not an internal error.
        val overflowing = "ceab5195-25ea-4f22-9b92-103b95ca8c0c/99999999999999999999/1"
        val overflowRow = setReference(refOf(propertyAccess), "property", overflowing)
        assertEquals("INVALID_REFERENCE", overflowRow.get("code").asString)
        assertTrue(overflowRow.get("error").asString, overflowRow.get("error").asString.contains("Pass the feature declaration's `sourceNode`"))
        assertEquals("servings", propertyTargetName(propertyAccess))
    }
}
