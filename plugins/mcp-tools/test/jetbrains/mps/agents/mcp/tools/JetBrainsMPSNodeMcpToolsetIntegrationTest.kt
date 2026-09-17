package jetbrains.mps.agents.mcp.tools

import com.google.gson.JsonElement
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
    fun `find-usages returns subconcept that extends the target`() {
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
              "scope": "editable"
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
}
