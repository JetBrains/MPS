package jetbrains.mps.agents.mcp.tools

import com.google.gson.JsonElement
import com.google.gson.JsonObject
import com.google.gson.JsonParser
import jetbrains.mps.project.modules.LanguageProducer
import org.jetbrains.mps.openapi.model.SNode
import org.jetbrains.mps.openapi.persistence.PersistenceFacade
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNotEquals
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test
import kotlin.collections.listOf

/**
 * End-to-end integration tests for the JetBrainsMPSNodeMcpToolset operations that the
 * original `JetBrainsMPSNodeMcpToolsetIntegrationTest` does not yet cover:
 *  - property set/delete
 *  - reference set/delete
 *  - child replace/delete
 *  - `query_nodes` ops: `GET_PARENT`, `GET_ROOT`, `GET_MODEL_FOR_NODE`,
 *    `NODE_INDEX`, `SIBLINGS`, `GET_CHILD_ROLE`
 *  - `alter_nodes` ops: `MOVE_CHILD`, `MOVE_NODE_TO_PARENT`,
 *    `MAKE` (input validation only), `FIX_REFERENCES`,
 *  - `show_node_representation`, `print_node_json` (shallow + deep),
 *  - `check_root_node_problems` (clean root reports "no problems").
 */
class JetBrainsMPSNodeMcpToolsetExtendedIntegrationTest : McpIntegrationTestBase() {

    private val toolset = JetBrainsMPSNodeMcpToolset()

    private val propertyDeclarationFqn = "jetbrains.mps.lang.structure.structure.PropertyDeclaration"

    // ── property setters ──────────────────────────────────────────────────────────

    @Test
    fun `set_node_properties writes the listed properties in one call`() {
        val ref = createConceptRoot("PropHost")
        val response = runTool(toolset) {
            it.mps_mcp_update_node(
                NodeUpdateOperation.SET, NodeUpdateKind.PROPERTY,
                properties = listOf(
                    listOf(ref, "name", "Renamed"),
                    listOf(ref, "virtualPackage", "test.pkg"),
                ),
            )
        }
        val obj = JsonParser.parseString(response).asJsonObject
        assertTrue("expected ok envelope: $response", obj.get("ok").asBoolean)

        readOnRepo {
            val node = resolveNode(ref)
            assertEquals("Renamed", node.name)
            assertEquals("test.pkg", node.getPropertyByName("virtualPackage"))
        }
    }

    @Test
    fun `set_node_properties rejects triplets shorter than 3 elements per-row`() {
        val ref = createConceptRoot("ShortTriplet")
        val response = runTool(toolset) {
            it.mps_mcp_update_node(NodeUpdateOperation.SET, NodeUpdateKind.PROPERTY, properties = listOf(listOf(ref, "name")))
        }
        // The envelope is ok=false due to the row failure.
        val obj = JsonParser.parseString(response).asJsonObject
        assertFalse("expected ok=false envelope because of the failure: $response", obj.get("ok").asBoolean)
        val arr = obj.getAsJsonArray("data")
        assertEquals(1, arr.size())
        val rowObj = parseRowObject(arr.get(0))
        assertFalse("the short-triplet row must be an error envelope: $rowObj", rowObj.get("ok").asBoolean)
        assertTrue(rowObj.get("error").asString.contains("at least 3"))
    }

    @Test
    fun `delete_node_property clears the value`() {
        val ref = createConceptRoot("ToBlank")
        // First set virtualPackage to something
        runTool(toolset) {
            it.mps_mcp_update_node(NodeUpdateOperation.SET, NodeUpdateKind.PROPERTY, properties = listOf(listOf(ref, "virtualPackage", "before")))
        }
        readOnRepo {
            assertEquals("before", resolveNode(ref).getPropertyByName("virtualPackage"))
        }
        val response = runTool(toolset) { it.mps_mcp_update_node(NodeUpdateOperation.SET, NodeUpdateKind.PROPERTY, properties = listOf(listOf(ref, "virtualPackage", null))) }
        val obj = JsonParser.parseString(response).asJsonObject
        assertTrue("expected ok envelope: $response", obj.get("ok").asBoolean)
        readOnRepo {
            assertNull(resolveNode(ref).getPropertyByName("virtualPackage"))
        }
    }

    @Test
    fun `delete_node_property on unknown property returns NOT_FOUND envelope`() {
        val ref = createConceptRoot("NoSuchProp")
        val response = runTool(toolset) { it.mps_mcp_update_node(NodeUpdateOperation.SET, NodeUpdateKind.PROPERTY, properties = listOf(listOf(ref, "no_such_property", null))) }
        val rowError = expectBatchRowError(response, 0)
        assertTrue("inner row error must mention 'not found', got: $rowError", rowError.contains("not found"))
    }

    // ── reference setters ────────────────────────────────────────────────────────

    @Test
    fun `set_node_references and delete_node_reference round-trip on extends`() {
        val baseRef = createConceptRoot("RefBase")
        val derivedRef = createConceptRoot("RefDerived")

        // Set 'extends' = base
        val setResp = runTool(toolset) {
            it.mps_mcp_update_node(NodeUpdateOperation.SET, NodeUpdateKind.REFERENCE, references = listOf(listOf(derivedRef, "extends", baseRef)))
        }
        val setObj = JsonParser.parseString(setResp).asJsonObject
        assertTrue("expected ok envelope: $setResp", setObj.get("ok").asBoolean)
        readOnRepo {
            val target = resolveNode(derivedRef).references.firstOrNull { it.link.name == "extends" }?.targetNode
            assertNotNull("'extends' reference must be set", target)
            assertEquals(resolveNode(baseRef).reference, target!!.reference)
        }

        // Delete 'extends'
        val delResp = runTool(toolset) { it.mps_mcp_update_node(NodeUpdateOperation.SET, NodeUpdateKind.REFERENCE, references = listOf(listOf(derivedRef, "extends", null))) }
        val delObj = JsonParser.parseString(delResp).asJsonObject
        assertTrue("expected ok envelope: $delResp", delObj.get("ok").asBoolean)
        readOnRepo {
            val target = resolveNode(derivedRef).references.firstOrNull { it.link.name == "extends" }?.targetNode
            // Note: 'extends' in ConceptDeclaration is implicitly BaseConcept once cleared, so the
            // *displayed* target may not be null; checking that the explicit-on-disk reference is
            // gone is enough to confirm delete_node_reference's contract. We assert it does not
            // point to RefBase anymore, which is the user-visible effect.
            if (target != null) {
                assertNotEquals(
                    "'extends' must no longer point to RefBase after deleting a node reference",
                    resolveNode(baseRef).reference,
                    target.reference,
                )
            }
        }
    }

    @Test
    fun `delete_node_reference on unknown role returns NOT_FOUND envelope`() {
        val ref = createConceptRoot("NoSuchRole")
        val response = runTool(toolset) { it.mps_mcp_update_node(NodeUpdateOperation.SET, NodeUpdateKind.REFERENCE, references = listOf(listOf(ref, "no_such_role", null))) }
        val rowError = expectBatchRowError(response, 0)
        assertTrue("inner row error must mention 'not found', got: $rowError", rowError.contains("not found"))
    }

    @Test
    fun `set_node_references rejects triplets shorter than 3 elements per-row`() {
        val ref = createConceptRoot("ShortRefTriplet")
        val response = runTool(toolset) {
            it.mps_mcp_update_node(NodeUpdateOperation.SET, NodeUpdateKind.REFERENCE, references = listOf(listOf(ref, "extends")))
        }
        // The envelope is ok=false due to the row failure.
        val obj = JsonParser.parseString(response).asJsonObject
        assertFalse("expected ok=false envelope because of the failure: $response", obj.get("ok").asBoolean)
        val arr = obj.getAsJsonArray("data")
        assertEquals(1, arr.size())
        val rowObj = parseRowObject(arr.get(0))
        assertFalse("the short-triplet row must be an error envelope: $rowObj", rowObj.get("ok").asBoolean)
        assertTrue(rowObj.get("error").asString.contains("at least 3"))
    }

    @Test
    fun `set_node_references with an unresolvable name fails with NOT_FOUND and stores no dangling reference`() {
        // IMPL-2: a plain name that resolves to nothing must fail loudly instead of silently
        // persisting an unresolved dynamic reference. The 'extends' role must be left without a
        // dangling (null-target) reference.
        val derivedRef = createConceptRoot("RefDanglingHost")

        val response = runTool(toolset) {
            it.mps_mcp_update_node(
                NodeUpdateOperation.SET, NodeUpdateKind.REFERENCE,
                references = listOf(listOf(derivedRef, "extends", "ZZZNoSuchConceptInScope")),
            )
        }
        val rowError = expectBatchRowError(response, 0)
        assertTrue(
            "row error must explain the target did not resolve in scope: $rowError",
            rowError.contains("did not resolve") && rowError.contains("scope"),
        )

        readOnRepo {
            val extendsRefs = resolveNode(derivedRef).references.filter { it.link.name == "extends" }
            assertTrue(
                "no dangling (null-target) 'extends' reference may remain after a failed set: $extendsRefs",
                extendsRefs.all { it.targetNode != null },
            )
        }
    }

    @Test
    fun `set_node_references with an unresolvable name preserves an existing reference`() {
        val baseRef = createConceptRoot("RefPreservedBase")
        val derivedRef = createConceptRoot("RefPreservedHost")

        val seedResponse = runTool(toolset) {
            it.mps_mcp_update_node(
                NodeUpdateOperation.SET, NodeUpdateKind.REFERENCE,
                references = listOf(listOf(derivedRef, "extends", baseRef)),
            )
        }
        assertTrue(
            "expected ok envelope from seed reference set: $seedResponse",
            JsonParser.parseString(seedResponse).asJsonObject.get("ok").asBoolean,
        )

        val response = runTool(toolset) {
            it.mps_mcp_update_node(
                NodeUpdateOperation.SET, NodeUpdateKind.REFERENCE,
                references = listOf(listOf(derivedRef, "extends", "ZZZStillNoSuchConceptInScope")),
            )
        }
        val rowError = expectBatchRowError(response, 0)
        assertTrue(
            "row error must explain the target did not resolve in scope: $rowError",
            rowError.contains("did not resolve") && rowError.contains("scope"),
        )

        readOnRepo {
            val target = resolveNode(derivedRef).references.firstOrNull { it.link.name == "extends" }?.targetNode
            assertNotNull("failed reference replacement must preserve the previous 'extends' target", target)
            assertEquals(resolveNode(baseRef).reference, target!!.reference)
        }
    }

    @Test
    fun `set_node_references resolves a target given by plain name`() {
        // A plain name that denotes an in-scope node resolves to a proper reference (parity with
        // the blueprint-insert path), rather than being stored as an unresolved dynamic reference.
        val baseRef = createConceptRoot("RefByNameBase")
        val derivedRef = createConceptRoot("RefByNameDerived")

        val response = runTool(toolset) {
            it.mps_mcp_update_node(
                NodeUpdateOperation.SET, NodeUpdateKind.REFERENCE,
                references = listOf(listOf(derivedRef, "extends", "RefByNameBase")),
            )
        }
        val obj = JsonParser.parseString(response).asJsonObject
        assertTrue("expected ok envelope: $response", obj.get("ok").asBoolean)

        readOnRepo {
            val target = resolveNode(derivedRef).references.firstOrNull { it.link.name == "extends" }?.targetNode
            assertNotNull("'extends' set by plain name must resolve to a node", target)
            assertEquals(resolveNode(baseRef).reference, target!!.reference)
        }
    }

    @Test
    fun `set_node_references with a bare name matching only an out-of-scope root fails with NOT_FOUND`() {
        // IMPL-2 (scope correctness): a bare plain name must resolve within the reference role's
        // search scope, NOT via a global first-match root lookup. A concept that exists only in a
        // separate, un-imported language is out of scope for 'extends', so setting it by bare name
        // must fail with NOT_FOUND instead of silently binding the out-of-scope root globally.
        val derivedRef = createConceptRoot("RefScopeDerived")

        // A second, independent language whose structure model is NOT imported by the test
        // language's structure model — its concept is therefore out of scope here.
        val otherLangName = "test.otherlang${System.nanoTime()}"
        val otherDir = createDirInProject(otherLangName)
        var otherStructureModelRef = ""
        executeCommand {
            val otherLang = LanguageProducer(myProject).withGenerator(false).create(otherLangName, otherDir)
            val otherStructureModel = otherLang.models.single { it.name.longName.endsWith(".structure") }
            otherStructureModelRef = PersistenceFacade.getInstance().asString(otherStructureModel.reference)
        }
        val createOther = runTool {
            it.mps_mcp_alter_structure(
                MPSStructureAlterOperation.CREATE_CONCEPTS,
                """{ "structureModelRef": "$otherStructureModelRef", "conceptsJson": [ { "name": "OutOfScopeBase" } ] }""",
            )
        }
        assertTrue(
            "setup: creating the out-of-scope concept must succeed: $createOther",
            JsonParser.parseString(createOther).asJsonObject.get("ok").asBoolean,
        )

        val response = runTool(toolset) {
            it.mps_mcp_update_node(
                NodeUpdateOperation.SET, NodeUpdateKind.REFERENCE,
                references = listOf(listOf(derivedRef, "extends", "OutOfScopeBase")),
            )
        }
        val rowError = expectBatchRowError(response, 0)
        assertTrue(
            "an out-of-scope bare name must fail to resolve in scope (not bind globally): $rowError",
            rowError.contains("did not resolve") && rowError.contains("scope"),
        )

        readOnRepo {
            val extendsRefs = resolveNode(derivedRef).references.filter { it.link.name == "extends" }
            assertTrue(
                "no dangling (null-target) 'extends' reference may remain after the failed set: $extendsRefs",
                extendsRefs.all { it.targetNode != null },
            )
        }
    }

    @Test
    fun `set_node_references by bare name binds the in-scope concept when an out-of-scope namesake exists`() {
        // IMPL-2 (scope correctness, ambiguity half): when a bare name matches BOTH an in-scope
        // concept and a same-named concept in a separate, un-imported language, scope resolution
        // must bind the IN-SCOPE one — not an arbitrary global first-match. Post-fix this is
        // deterministic because the out-of-scope namesake is not in the 'extends' search scope.
        val inScopeBaseRef = createConceptRoot("AmbBase")   // same structure model → in scope for extends
        val derivedRef = createConceptRoot("AmbDerived")

        // A same-named concept in a separate, un-imported language: a global first-match lookup
        // could pick this one, but scope resolution must not.
        val otherLangName = "test.otherlang${System.nanoTime()}"
        val otherDir = createDirInProject(otherLangName)
        var otherStructureModelRef = ""
        executeCommand {
            val otherLang = LanguageProducer(myProject).withGenerator(false).create(otherLangName, otherDir)
            val otherStructureModel = otherLang.models.single { it.name.longName.endsWith(".structure") }
            otherStructureModelRef = PersistenceFacade.getInstance().asString(otherStructureModel.reference)
        }
        val createDecoy = runTool {
            it.mps_mcp_alter_structure(
                MPSStructureAlterOperation.CREATE_CONCEPTS,
                """{ "structureModelRef": "$otherStructureModelRef", "conceptsJson": [ { "name": "AmbBase" } ] }""",
            )
        }
        assertTrue(
            "setup: creating the out-of-scope namesake must succeed: $createDecoy",
            JsonParser.parseString(createDecoy).asJsonObject.get("ok").asBoolean,
        )

        val response = runTool(toolset) {
            it.mps_mcp_update_node(
                NodeUpdateOperation.SET, NodeUpdateKind.REFERENCE,
                references = listOf(listOf(derivedRef, "extends", "AmbBase")),
            )
        }
        val obj = JsonParser.parseString(response).asJsonObject
        assertTrue("expected ok envelope: $response", obj.get("ok").asBoolean)

        readOnRepo {
            val target = resolveNode(derivedRef).references.firstOrNull { it.link.name == "extends" }?.targetNode
            assertNotNull("'extends' must resolve to the in-scope concept", target)
            assertEquals(
                "bare name must bind the in-scope AmbBase, not the out-of-scope namesake",
                resolveNode(inScopeBaseRef).reference,
                target!!.reference,
            )
        }
    }

    @Test
    fun `set_node_references by a name shared by two in-scope nodes fails with an ambiguous NOT_FOUND`() {
        // MPS-39848: when a bare name matches MORE THAN ONE node in the reference role's search
        // scope, by-name resolution must refuse to guess — it fails with NOT_FOUND and an
        // *ambiguity* diagnostic that reports how many candidates were found and to disambiguate
        // with a persistent reference, distinct from the "no node named X" wording used when the
        // name matches nothing. The platform Scope contract returns null on an ambiguous name, so
        // the failure is deterministic. This reduces the scenario's two same-named `go` events to
        // two concepts named "DupBase" in one structure model, both in scope for 'extends'.
        //
        // createConceptRoot looks the new root up by name (single), so it cannot mint two roots
        // sharing a name directly; create a distinct seed and rename it to form the duplicate.
        createConceptRoot("DupBase")                    // first in-scope concept named DupBase
        val seedRef = createConceptRoot("DupBaseSeed")  // renamed below to a second DupBase
        val derivedRef = createConceptRoot("DupDerived")

        val renameResp = runTool(toolset) {
            it.mps_mcp_update_node(
                NodeUpdateOperation.SET, NodeUpdateKind.PROPERTY,
                properties = listOf(listOf(seedRef, "name", "DupBase")),
            )
        }
        assertTrue(
            "setup: renaming the seed to a duplicate name must succeed: $renameResp",
            JsonParser.parseString(renameResp).asJsonObject.get("ok").asBoolean,
        )

        val response = runTool(toolset) {
            it.mps_mcp_update_node(
                NodeUpdateOperation.SET, NodeUpdateKind.REFERENCE,
                references = listOf(listOf(derivedRef, "extends", "DupBase")),
            )
        }
        val rowError = expectBatchRowError(response, 0)
        assertTrue(
            "an ambiguous bare name must fail with an 'ambiguous' diagnostic naming the role: $rowError",
            rowError.contains("ambiguous") && rowError.contains("extends"),
        )
        assertTrue(
            "the ambiguity diagnostic should report the candidate count (2 here): $rowError",
            rowError.contains("2 nodes named"),
        )

        readOnRepo {
            val extendsRefs = resolveNode(derivedRef).references.filter { it.link.name == "extends" }
            assertTrue(
                "no dangling (null-target) 'extends' reference may remain after an ambiguous set: $extendsRefs",
                extendsRefs.all { it.targetNode != null },
            )
        }
    }

    // ── child replace / delete ───────────────────────────────────────────────────────────

    @Test
    fun `replace_node_child swaps a property declaration for a new one`() {
        val parentRef = createConceptRoot("ReplaceHost")
        // Seed one property
        addPropertyChild(parentRef, "first", "string")
        val firstChildRef = readOnRepo {
            val parent = resolveNode(parentRef)
            val p = parent.children.single { it.containmentLink?.name == "propertyDeclaration" }
            PersistenceFacade.getInstance().asString(p.reference)
        }

        val replacement = """
            {
              "concept": "$propertyDeclarationFqn",
              "properties": [ { "name": "name", "value": "second" } ]
            }
        """.trimIndent()
        val response = runTool(toolset) {
            it.mps_mcp_update_node(NodeUpdateOperation.SET, NodeUpdateKind.CHILD, childNodeRef = firstChildRef, childJson = replacement, dryRun = false)
        }
        val obj = JsonParser.parseString(response).asJsonObject
        assertTrue("expected ok envelope: $response", obj.get("ok").asBoolean)

        readOnRepo {
            val parent = resolveNode(parentRef)
            val children = parent.children.filter { it.containmentLink?.name == "propertyDeclaration" }
            assertEquals("replacement must leave exactly one property", 1, children.size)
            assertEquals("second", children.single().name)
        }
    }

    @Test
    fun `delete_node_child removes the child from its parent`() {
        val parentRef = createConceptRoot("DeleteHost")
        addPropertyChild(parentRef, "doomed", "string")
        val childRef = readOnRepo {
            val parent = resolveNode(parentRef)
            val p = parent.children.single { it.containmentLink?.name == "propertyDeclaration" }
            PersistenceFacade.getInstance().asString(p.reference)
        }

        val response = runTool(toolset) { it.mps_mcp_update_node(NodeUpdateOperation.SET, NodeUpdateKind.CHILD, childNodeRef = childRef) }
        val obj = JsonParser.parseString(response).asJsonObject
        assertTrue("expected ok envelope: $response", obj.get("ok").asBoolean)
        readOnRepo {
            val parent = resolveNode(parentRef)
            assertTrue(
                "child must be gone after deleting a node child",
                parent.children.none { it.containmentLink?.name == "propertyDeclaration" },
            )
        }
    }

    // ── query_nodes: NODE_INFO_READ family ─────────────────────────────────────────

    @Test
    fun `query_nodes GET_PARENT returns the parent node`() {
        val parentRef = createConceptRoot("ParentHost")
        addPropertyChild(parentRef, "kid", "string")
        val childRef = readOnRepo {
            val parent = resolveNode(parentRef)
            val p = parent.children.single { it.containmentLink?.name == "propertyDeclaration" }
            PersistenceFacade.getInstance().asString(p.reference)
        }

        val response = runTool(toolset) {
            it.mps_mcp_query_nodes(MPSQueryOperation.GET_PARENT, """{ "nodeReference": "$childRef" }""")
        }
        val data = expectOk(response)
        assertEquals(parentRef, data.get("reference").asString)
    }

    @Test
    fun `query_nodes GET_ROOT returns the containing root`() {
        val rootRef = createConceptRoot("RootHost")
        addPropertyChild(rootRef, "kid", "string")
        val childRef = readOnRepo {
            val p = resolveNode(rootRef).children.single { it.containmentLink?.name == "propertyDeclaration" }
            PersistenceFacade.getInstance().asString(p.reference)
        }

        val response = runTool(toolset) {
            it.mps_mcp_query_nodes(MPSQueryOperation.GET_ROOT, """{ "nodeReference": "$childRef" }""")
        }
        val data = expectOk(response)
        assertEquals(rootRef, data.get("reference").asString)
    }

    @Test
    fun `query_nodes GET_MODEL_FOR_NODE returns the containing model reference`() {
        val ref = createConceptRoot("ModelHost")
        val response = runTool(toolset) {
            it.mps_mcp_query_nodes(MPSQueryOperation.GET_MODEL_FOR_NODE, """{ "nodeReference": "$ref" }""")
        }
        val data = parseDataObject(JsonParser.parseString(response).asJsonObject.get("data"))
        // modelReferenceJson serialises both reference and a name; assert at least the reference is correct.
        assertEquals(structureModelRef, data.get("reference").asString)
    }

    @Test
    fun `query_nodes NODE_INDEX returns the position of a child within its multiple role`() {
        val parentRef = createConceptRoot("IndexHost")
        addPropertyChild(parentRef, "first", "string")
        addPropertyChild(parentRef, "second", "string")
        val secondRef = readOnRepo {
            val kids = resolveNode(parentRef).children
                .filter { it.containmentLink?.name == "propertyDeclaration" }
            val second = kids.single { it.name == "second" }
            PersistenceFacade.getInstance().asString(second.reference)
        }
        val response = runTool(toolset) {
            it.mps_mcp_query_nodes(MPSQueryOperation.NODE_INDEX, """{ "nodeReference": "$secondRef" }""")
        }
        val obj = JsonParser.parseString(response).asJsonObject
        assertTrue("expected ok envelope: $response", obj.get("ok").asBoolean)
        val raw = if (obj.get("data").isJsonPrimitive) obj.get("data").asString else obj.get("data").toString()
        assertEquals("1", raw.trim())
    }

    @Test
    fun `query_nodes NODE_INDEX on a root node is rejected`() {
        val ref = createConceptRoot("RootIndex")
        val response = runTool(toolset) {
            it.mps_mcp_query_nodes(MPSQueryOperation.NODE_INDEX, """{ "nodeReference": "$ref" }""")
        }
        assertTrue(expectErr(response).contains("root node"))
    }

    @Test
    fun `query_nodes SIBLINGS returns the children of the role`() {
        val parentRef = createConceptRoot("SibHost")
        addPropertyChild(parentRef, "a", "string")
        addPropertyChild(parentRef, "b", "string")
        val aRef = readOnRepo {
            val kids = resolveNode(parentRef).children
                .filter { it.containmentLink?.name == "propertyDeclaration" }
            val a = kids.single { it.name == "a" }
            PersistenceFacade.getInstance().asString(a.reference)
        }
        val response = runTool(toolset) {
            it.mps_mcp_query_nodes(MPSQueryOperation.SIBLINGS, """{ "nodeReference": "$aRef" }""")
        }
        val arr = parseDataArray(response)
        val names = arr.map { it.asJsonObject.get("name").asString }.toSet()
        assertEquals(setOf("a", "b"), names)
    }

    @Test
    fun `alter_nodes GET_CHILD_ROLE returns containment link info`() {
        val parentRef = createConceptRoot("RoleHost")
        addPropertyChild(parentRef, "p", "string")
        val pRef = readOnRepo {
            val p = resolveNode(parentRef).children.single { it.containmentLink?.name == "propertyDeclaration" }
            PersistenceFacade.getInstance().asString(p.reference)
        }
        val response = runTool(toolset) {
            it.mps_mcp_query_nodes(MPSQueryOperation.GET_CHILD_ROLE, """{ "nodeReference": "$pRef" }""")
        }
        val data = parseDataObject(JsonParser.parseString(response).asJsonObject.get("data"))
        assertEquals("propertyDeclaration", data.get("role").asString)
    }

    @Test
    fun `query_nodes with missing nodeReference parameter is rejected`() {
        val response = runTool(toolset) {
            it.mps_mcp_query_nodes(MPSQueryOperation.GET_PARENT, "{}")
        }
        assertTrue(expectErr(response).contains("nodeReference"))
    }

    @Test
    fun `query_nodes with invalid JSON parameters is rejected`() {
        val response = runTool(toolset) {
            it.mps_mcp_query_nodes(MPSQueryOperation.GET_PARENT, "{ not really JSON")
        }
        assertTrue(expectErr(response).contains("Invalid JSON parameters"))
    }

    // ── alter_nodes: MOVE_CHILD ─────────────────────────────────────────────────────

    @Test
    fun `alter_nodes MOVE_CHILD relocates a child within its multiple role`() {
        val parentRef = createConceptRoot("MoveHost")
        addPropertyChild(parentRef, "x", "string")
        addPropertyChild(parentRef, "y", "string")
        addPropertyChild(parentRef, "z", "string")

        val (yRef, currentNames) = readOnRepo {
            val kids = resolveNode(parentRef).children
                .filter { it.containmentLink?.name == "propertyDeclaration" }
            val y = kids.single { it.name == "y" }
            PersistenceFacade.getInstance().asString(y.reference) to kids.mapNotNull { it.name }
        }
        assertEquals(listOf("x", "y", "z"), currentNames)

        // Move 'y' (index 1) to index 0
        val params = """
            {
              "nodeReference": "$parentRef",
              "childRole": "propertyDeclaration",
              "childNodeRef": "$yRef",
              "position": 0
            }
        """.trimIndent()
        val response = runTool(toolset) {
            it.mps_mcp_alter_nodes(MPSAlterOperation.MOVE_CHILD, params)
        }
        val obj = JsonParser.parseString(response).asJsonObject
        assertTrue("expected ok envelope: $response", obj.get("ok").asBoolean)

        readOnRepo {
            val kids = resolveNode(parentRef).children
                .filter { it.containmentLink?.name == "propertyDeclaration" }
            assertEquals(listOf("y", "x", "z"), kids.mapNotNull { it.name })
        }
    }

    @Test
    fun `alter_nodes MOVE_CHILD clamps an over-range position to the last index`() {
        val parentRef = createConceptRoot("MoveHostClamp")
        addPropertyChild(parentRef, "x", "string")
        addPropertyChild(parentRef, "y", "string")

        val xRef = readOnRepo {
            val x = resolveNode(parentRef).children
                .filter { it.containmentLink?.name == "propertyDeclaration" }
                .single { it.name == "x" }
            PersistenceFacade.getInstance().asString(x.reference)
        }

        // Move 'x' (index 0) to position 5 — past the last index (count 2) — which clamps to the
        // end rather than failing, matching the insert tools. The response reports the actual
        // resulting index.
        val params = """
            {
              "nodeReference": "$parentRef",
              "childRole": "propertyDeclaration",
              "childNodeRef": "$xRef",
              "position": 5
            }
        """.trimIndent()
        val response = runTool(toolset) {
            it.mps_mcp_alter_nodes(MPSAlterOperation.MOVE_CHILD, params)
        }
        val obj = JsonParser.parseString(response).asJsonObject
        assertTrue("expected ok envelope: $response", obj.get("ok").asBoolean)
        assertEquals(
            "over-range position must clamp to the last index: $response",
            1,
            obj.getAsJsonObject("data").get("index").asInt,
        )

        readOnRepo {
            val kids = resolveNode(parentRef).children
                .filter { it.containmentLink?.name == "propertyDeclaration" }
            assertEquals(listOf("y", "x"), kids.mapNotNull { it.name })
        }
    }

    @Test
    fun `alter_nodes MOVE_CHILD rejects a negative position other than -1`() {
        val parentRef = createConceptRoot("MoveHostNeg")
        addPropertyChild(parentRef, "x", "string")
        addPropertyChild(parentRef, "y", "string")

        val yRef = readOnRepo {
            val y = resolveNode(parentRef).children
                .filter { it.containmentLink?.name == "propertyDeclaration" }
                .single { it.name == "y" }
            PersistenceFacade.getInstance().asString(y.reference)
        }

        val params = """
            {
              "nodeReference": "$parentRef",
              "childRole": "propertyDeclaration",
              "childNodeRef": "$yRef",
              "position": -2
            }
        """.trimIndent()
        val response = runTool(toolset) {
            it.mps_mcp_alter_nodes(MPSAlterOperation.MOVE_CHILD, params)
        }
        val obj = JsonParser.parseString(response).asJsonObject
        assertFalse("expected error envelope: $response", obj.get("ok").asBoolean)
        assertTrue(
            "error should explain the invalid negative position: ${obj.get("error").asString}",
            obj.get("error").asString.contains("position -2 is invalid"),
        )

        readOnRepo {
            val kids = resolveNode(parentRef).children
                .filter { it.containmentLink?.name == "propertyDeclaration" }
            assertEquals("a rejected move must not reorder the role", listOf("x", "y"), kids.mapNotNull { it.name })
        }
    }

    // ── alter_nodes: MOVE_NODE_TO_PARENT ───────────────────────────────────────────

    @Test
    fun `alter_nodes MOVE_NODE_TO_PARENT moves a child between two parents`() {
        val parentARef = createConceptRoot("MNPParentA")
        val parentBRef = createConceptRoot("MNPParentB")
        addPropertyChild(parentARef, "movee", "string")
        val moveeRef = readOnRepo {
            val p = resolveNode(parentARef).children.single { it.containmentLink?.name == "propertyDeclaration" }
            PersistenceFacade.getInstance().asString(p.reference)
        }

        val params = """
            {
              "nodeReference": "$moveeRef",
              "newParentRef": "$parentBRef",
              "role": "propertyDeclaration"
            }
        """.trimIndent()
        val response = runTool(toolset) {
            it.mps_mcp_alter_nodes(MPSAlterOperation.MOVE_NODE_TO_PARENT, params)
        }
        val obj = JsonParser.parseString(response).asJsonObject
        assertTrue("expected ok envelope: $response", obj.get("ok").asBoolean)

        readOnRepo {
            val a = resolveNode(parentARef)
            val b = resolveNode(parentBRef)
            assertTrue(
                "parent A must no longer have any propertyDeclaration",
                a.children.none { it.containmentLink?.name == "propertyDeclaration" },
            )
            val bKids = b.children.filter { it.containmentLink?.name == "propertyDeclaration" }
            assertEquals(1, bKids.size)
            assertEquals("movee", bKids.single().name)
        }
    }

    @Test
    fun `alter_nodes MOVE_NODE_TO_PARENT clamps an over-range position to an append`() {
        val parentARef = createConceptRoot("MNPClampA")
        val parentBRef = createConceptRoot("MNPClampB")
        addPropertyChild(parentARef, "movee", "string")
        addPropertyChild(parentBRef, "existing", "string")
        val moveeRef = readOnRepo {
            val p = resolveNode(parentARef).children.single { it.containmentLink?.name == "propertyDeclaration" }
            PersistenceFacade.getInstance().asString(p.reference)
        }

        // parentB already has 1 child; position 9 is past the end and must clamp to an append
        // rather than fail, with the response reporting the actual landing index.
        val params = """
            {
              "nodeReference": "$moveeRef",
              "newParentRef": "$parentBRef",
              "role": "propertyDeclaration",
              "position": 9
            }
        """.trimIndent()
        val response = runTool(toolset) {
            it.mps_mcp_alter_nodes(MPSAlterOperation.MOVE_NODE_TO_PARENT, params)
        }
        val obj = JsonParser.parseString(response).asJsonObject
        assertTrue("expected ok envelope: $response", obj.get("ok").asBoolean)
        assertEquals(
            "over-range position must clamp to the append index (1 existing child): $response",
            1,
            obj.getAsJsonObject("data").get("index").asInt,
        )

        readOnRepo {
            val bKids = resolveNode(parentBRef).children.filter { it.containmentLink?.name == "propertyDeclaration" }
            assertEquals(listOf("existing", "movee"), bKids.mapNotNull { it.name })
        }
    }

    @Test
    fun `alter_nodes MOVE_NODE_TO_PARENT rejects request without target`() {
        val ref = createConceptRoot("MNPLonely")
        val response = runTool(toolset) {
            it.mps_mcp_alter_nodes(
                MPSAlterOperation.MOVE_NODE_TO_PARENT,
                """{ "nodeReference": "$ref" }""",
            )
        }
        assertTrue(expectErr(response).contains("Either 'newParentRef' or 'modelReference'"))
    }

    // ── alter_nodes: MAKE input validation ─────────────────────────────────────────

    @Test
    fun `alter_nodes MAKE rejects wholeProject combined with explicit models or modules`() {
        val params = """
            {
              "wholeProject": true,
              "models": ["$structureModelRef"]
            }
        """.trimIndent()
        val response = runTool(toolset) {
            it.mps_mcp_alter_nodes(MPSAlterOperation.MAKE, params)
        }
        assertTrue(expectErr(response).contains("must not be provided when 'wholeProject' is true"))
    }

    @Test
    fun `alter_nodes MAKE rejects an empty scope`() {
        val response = runTool(toolset) {
            it.mps_mcp_alter_nodes(MPSAlterOperation.MAKE, "{}")
        }
        val err = expectErr(response)
        assertTrue(err.contains("No model or module references were provided"))
        assertTrue("Error should list 'models': $err", err.contains("'models'"))
        assertTrue("Error should list 'modules': $err", err.contains("'modules'"))
        assertTrue("Error should list 'wholeProject': $err", err.contains("'wholeProject'"))
    }

    @Test
    fun `alter_nodes MAKE rejects unknown parameter and lists expected keys`() {
        val response = runTool(toolset) {
            it.mps_mcp_alter_nodes(MPSAlterOperation.MAKE, """{ "target": "any.module" }""")
        }
        val err = expectErr(response)
        assertTrue("Error should name the unknown key, was: $err", err.contains("'target'"))
        assertTrue("Error should list 'models': $err", err.contains("'models'"))
        assertTrue("Error should list 'modules': $err", err.contains("'modules'"))
    }

    @Test
    fun `alter_nodes MAKE suggests close match for typo`() {
        // 'module' is one edit away from 'modules'
        val response = runTool(toolset) {
            it.mps_mcp_alter_nodes(MPSAlterOperation.MAKE, """{ "module": ["any.module"] }""")
        }
        val err = expectErr(response)
        assertTrue("Error should suggest 'modules', was: $err", err.contains("did you mean 'modules'"))
    }

    @Test
    fun `alter_nodes MAKE response carries runtimeReady alongside success`() {
        // Pins the contract change that makes `runtimeReady` a first-class response field for
        // mps_mcp_make_models. Without it, callers chaining make → scaffold_editor /
        // get_concept_details cannot tell "build succeeded and the language runtime reloaded"
        // from "build succeeded but the runtime is still stale" without scanning `details` for
        // a specific warning string, which is the very mode the user reported.
        //
        // The test harness cannot reliably force a particular MakeResult outcome (the make
        // service may not start in tests, may report success with no class-file deltas, …).
        // We therefore assert:
        //   - `runtimeReady` is always present and a boolean
        //   - when `success=true` AND `runtimeReady=false`, `details` carries the warning that
        //     justifies it (so future contributors cannot drop `runtimeReady=false` without
        //     either also dropping the warning or breaking the diagnostic chain).
        val params = """
            {
              "models": ["$structureModelRef"]
            }
        """.trimIndent()
        val response = runTool(toolset) {
            it.mps_mcp_alter_nodes(MPSAlterOperation.MAKE, params)
        }
        val obj = JsonParser.parseString(response).asJsonObject
        assertTrue("expected ok envelope (input is valid): $response", obj.get("ok").asBoolean)
        val data = parseDataObject(obj.get("data"))

        assertTrue("MAKE response must include 'runtimeReady': $data", data.has("runtimeReady"))
        val runtimeReadyElement = data.get("runtimeReady")
        assertTrue("'runtimeReady' must be a JSON boolean: $data", runtimeReadyElement.isJsonPrimitive)
        assertTrue(
            "'runtimeReady' primitive must be boolean-typed: $data",
            runtimeReadyElement.asJsonPrimitive.isBoolean,
        )
        assertTrue("MAKE response must include 'success': $data", data.has("success"))

        val success = data.get("success").asBoolean
        val runtimeReady = runtimeReadyElement.asBoolean
        if (success && !runtimeReady) {
            // The only branch in performMake that flips success=true with runtimeReady=false is
            // the latch-timeout branch, which also pushes a WARNING into `messages`. The
            // make_models response surfaces those messages as `details`. Asserting presence
            // here protects the (success ∧ ¬runtimeReady) ↔ warning-emitted invariant.
            assertTrue(
                "success=true with runtimeReady=false must carry runtime-stale 'details': $data",
                data.has("details"),
            )
            val details = data.get("details").asJsonArray
            val joined = details.joinToString("|") { it.toString() }
            assertTrue(
                "details must mention the runtime-reload warning, got: $joined",
                joined.contains("Language runtime did not reload") ||
                    joined.contains("ClassLoaderManager.reload failed"),
            )
        }
    }

    // ── alter_nodes: COPY_NODE ─────────────────────────────────────────────────────

    @Test
    fun `alter_nodes COPY_NODE creates a deep copy of a root node`() {
        val originalRef = createConceptRoot("CopyRootOriginal")
        addPropertyChild(originalRef, "child", "string")

        val response = runTool(toolset) {
            it.mps_mcp_alter_nodes(MPSAlterOperation.COPY_NODE, """{ "nodeReference": "$originalRef" }""")
        }
        val obj = JsonParser.parseString(response).asJsonObject
        assertTrue("expected ok envelope: $response", obj.get("ok").asBoolean)
        val copiedRef = obj.getAsJsonObject("data").get("reference").asString
        assertNotEquals("copy should have a different reference", originalRef, copiedRef)

        readOnRepo {
            val original = resolveNode(originalRef)
            val copied = resolveNode(copiedRef)
            assertEquals("CopyRootOriginal", copied.name)
            // Verify the copy has the same structure: one property child
            val originalKids = original.children.filter { it.containmentLink?.name == "propertyDeclaration" }
            val copiedKids = copied.children.filter { it.containmentLink?.name == "propertyDeclaration" }
            assertEquals("copy should have the same number of children", originalKids.size, copiedKids.size)
            assertEquals("child", copiedKids.single().name)
        }
    }

    @Test
    fun `alter_nodes COPY_NODE creates a deep copy of a collection child`() {
        val parentRef = createConceptRoot("CopyCollectionParent")
        addPropertyChild(parentRef, "first", "string")
        addPropertyChild(parentRef, "second", "string")

        val childRef = readOnRepo {
            val kids = resolveNode(parentRef).children
                .filter { it.containmentLink?.name == "propertyDeclaration" }
            val first = kids.single { it.name == "first" }
            PersistenceFacade.getInstance().asString(first.reference)
        }

        val response = runTool(toolset) {
            it.mps_mcp_alter_nodes(MPSAlterOperation.COPY_NODE, """{ "nodeReference": "$childRef" }""")
        }
        val obj = JsonParser.parseString(response).asJsonObject
        assertTrue("expected ok envelope: $response", obj.get("ok").asBoolean)
        val data = obj.getAsJsonObject("data")
        val copiedRef = data.get("reference").asString
        val index = data.get("index").asInt

        assertNotEquals("copy should have a different reference", childRef, copiedRef)
        assertEquals("copy should be inserted immediately after the original at index 1", 1, index)

        readOnRepo {
            val kids = resolveNode(parentRef).children
                .filter { it.containmentLink?.name == "propertyDeclaration" }
            assertEquals("parent should now have 3 children", 3, kids.size)
            assertEquals(listOf("first", "first", "second"), kids.mapNotNull { it.name })
        }
    }

    @Test
    fun `alter_nodes COPY_NODE rejects copying a single-cardinality child`() {
        // `helpURL` is a 0..1 child role on AbstractConceptDeclaration.
        val parentRef = createConceptRoot("SingleChildParent")

        val helpUrlJson = """
            {
              "concept": "jetbrains.mps.lang.resources.structure.HelpURL",
              "properties": [{"name": "url", "value": "https://example.org/help"}]
            }
        """.trimIndent()
        val addResp = runTool(toolset) {
            it.mps_mcp_update_node(
                NodeUpdateOperation.ADD, NodeUpdateKind.CHILD,
                nodeReference = parentRef, childRole = "helpURL", childJson = helpUrlJson
            )
        }
        assertTrue("setup: adding child must succeed: $addResp",
            JsonParser.parseString(addResp).asJsonObject.get("ok").asBoolean)

        val childRef = readOnRepo {
            val p = resolveNode(parentRef).children.single { it.containmentLink?.name == "helpURL" }
            PersistenceFacade.getInstance().asString(p.reference)
        }

        val response = runTool(toolset) {
            it.mps_mcp_alter_nodes(MPSAlterOperation.COPY_NODE, """{ "nodeReference": "$childRef" }""")
        }
        val err = expectErr(response)
        assertTrue("error must mention single-child role, got: $err", err.contains("single-child"))
    }

    @Test
    fun `alter_nodes COPY_NODE rejects missing nodeReference parameter`() {
        val response = runTool(toolset) {
            it.mps_mcp_alter_nodes(MPSAlterOperation.COPY_NODE, "{}")
        }
        assertTrue(expectErr(response).contains("nodeReference"))
    }

    @Test
    fun `alter_nodes COPY_NODE rejects unknown nodeReference`() {
        val response = runTool(toolset) {
            it.mps_mcp_alter_nodes(
                MPSAlterOperation.COPY_NODE,
                """{ "nodeReference": "r:00000000-0000-0000-0000-000000000000(ghost)/0" }""",
            )
        }
        assertTrue(expectErr(response).contains("not found"))
    }

    @Test
    fun `alter_nodes COPY_NODE rejects node from non-editable model`() {
        // Resolves a platform concept declaration node (BaseConcept) whose serialized model is
        // not an EditableSModel, exercising the console/non-editable rejection path.
        // Platform module models are loaded as read-only serialized models, so the check
        // `sourceModel !is EditableSModel` triggers the same error branch used for console
        // node rejection.
        val langToolset = JetBrainsMPSLanguageMcpToolset()
        val conceptResp = runTool(langToolset) {
            it.mps_mcp_get_concept_details(
                conceptRefs = listOf("jetbrains.mps.lang.core.structure.BaseConcept"),
            )
        }
        // get_concept_details saves to a temp file; unwrap both layers to get the concept array.
        val outer = JsonParser.parseString(conceptResp).asJsonObject
        assertTrue("expected ok envelope from get_concept_details: $conceptResp", outer.get("ok").asBoolean)
        val filePath = outer.get("data").asString
        val innerEnvelope = JsonParser.parseString(java.io.File(filePath).readText()).asJsonObject
        assertTrue("file envelope must be ok", innerEnvelope.get("ok").asBoolean)
        val dataArray = innerEnvelope.get("data")
        val innerArray = if (dataArray.isJsonArray) dataArray.asJsonArray
        else JsonParser.parseString(dataArray.asString).asJsonArray
        val conceptObj = innerArray.get(0).asJsonObject
        val sourceNodeRef = conceptObj.get("sourceNode").asString
        assertTrue("sourceNode reference should not be empty", sourceNodeRef.isNotEmpty())

        val response = runTool(toolset) {
            it.mps_mcp_alter_nodes(
                MPSAlterOperation.COPY_NODE,
                """{ "nodeReference": "$sourceNodeRef" }""",
            )
        }
        val err = expectErr(response)
        assertTrue(
            "expected rejection for platform node, got: $err",
            err.contains("not editable") || err.contains("Console") || err.contains("not part of the project")
        )
    }

    // ── alter_nodes: FIX_REFERENCES ────────────────────────────────────────────────

    @Test
    fun `alter_nodes FIX_REFERENCES on a clean root returns counts payload`() {
        val ref = createConceptRoot("FixHost")
        val response = runTool(toolset) {
            it.mps_mcp_alter_nodes(MPSAlterOperation.FIX_REFERENCES, """{ "nodeReference": "$ref" }""")
        }
        // ok envelope; data is a JSON string with `fixed` and `repointed` keys.
        val obj = JsonParser.parseString(response).asJsonObject
        assertTrue("expected ok envelope: $response", obj.get("ok").asBoolean)
        val raw = if (obj.get("data").isJsonPrimitive) obj.get("data").asString else obj.get("data").toString()
        val payload = JsonParser.parseString(raw).asJsonObject
        assertTrue("payload must include 'fixed' counter: $payload", payload.has("fixed"))
        assertTrue("payload must include 'repointed' counter: $payload", payload.has("repointed"))
    }

    // ── print_node_json ──────────────────────────────────────────────────────────────────

    @Test
    fun `print_node_json shallow returns a path that contains the expected content`() {
        val ref = createConceptRoot("PrintTarget")
        val response = runTool(toolset) { it.mps_mcp_print_node(ref, deep = false) }
        val path = extractFilePathFromData(response)
        val text = java.io.File(path).readText()
        assertTrue("file must contain the printed concept: $text", text.contains("PrintTarget"))
        assertTrue(text.contains("ConceptDeclaration"))
    }

    @Test
    fun `print_node_json deep includes descendant property names`() {
        val ref = createConceptRoot("DeepPrintHost")
        addPropertyChild(ref, "deepKid", "string")
        val response = runTool(toolset) { it.mps_mcp_print_node(ref, deep = true) }
        val path = extractFilePathFromData(response)
        val text = java.io.File(path).readText()
        assertTrue("deep print must include the child property name: $text", text.contains("deepKid"))
    }

    @Test
    fun `print_node_json returns NOT_FOUND envelope for unknown reference`() {
        val response = runTool(toolset) {
            it.mps_mcp_print_node("r:00000000-0000-0000-0000-000000000000(ghost)/0", deep = false)
        }
        assertTrue(expectErr(response).contains("not found"))
    }

    // ── show_node_representation ─────────────────────────────────────────────────────────

    @Test
    fun `show_node_representation returns NOT_FOUND envelope for unknown reference`() {
        // The happy path requires booting a HeadlessEditorComponent for a structure concept,
        // which loads the editor language at runtime; the failure path is independent and is
        // the only assertion that does not depend on that runtime.
        val response = runTool(toolset) {
            it.mps_mcp_print_node(
                "r:00000000-0000-0000-0000-000000000000(ghost)/0",
                format = "HTML",
                deep = false,
            )
        }
        assertTrue(expectErr(response).contains("not found"))
    }

    // ── check_root_node_problems ─────────────────────────────────────────────────────────

    @Test
    fun `check_root_node_problems returns an ok envelope for a real root`() {
        // The checker pipeline may surface real findings for a freshly-created, never-compiled
        // ConceptDeclaration (e.g. missing extends, validation, language-runtime state), so we
        // don't pin the wording. What matters is the contract: the call succeeds with either an
        // inline "no problems found" payload or a path to a JSON file with the findings.
        val ref = createConceptRoot("CheckedRoot")
        val response = runTool(toolset) { it.mps_mcp_check_root_node_problems(ref, onlyNodesWithProblems = true) }
        val obj = JsonParser.parseString(response).asJsonObject
        assertTrue("expected ok envelope: $response", obj.get("ok").asBoolean)
        val raw = if (obj.get("data").isJsonPrimitive) obj.get("data").asString else obj.get("data").toString()
        val saysClean = raw.contains("no problems found")
        val pointsToReport = raw.startsWith("/") && raw.endsWith(".json") && java.io.File(raw).exists()
        assertTrue(
            "envelope data must be either the 'no problems found' phrase or a path to a saved report: $raw",
            saysClean || pointsToReport,
        )
    }

    @Test
    fun `check_root_node_problems returns NOT_FOUND envelope for unresolvable input`() {
        val response = runTool(toolset) {
            it.mps_mcp_check_root_node_problems(
                "r:00000000-0000-0000-0000-000000000000(ghost)/0",
                onlyNodesWithProblems = true,
            )
        }
        assertTrue(expectErr(response).contains("neither node nor model"))
    }

    // ── helpers ──────────────────────────────────────────────────────────────────────────

    /** Adds a `PropertyDeclaration` child with the given name and primitive type to the parent root. */
    private fun addPropertyChild(parentRef: String, propertyName: String, type: String) {
        val childJson = """
            {
              "concept": "$propertyDeclarationFqn",
              "properties": [ { "name": "name", "value": "$propertyName" } ]
            }
        """.trimIndent()
        val resp = runTool(toolset) {
            it.mps_mcp_update_node(NodeUpdateOperation.ADD, NodeUpdateKind.CHILD, nodeReference = parentRef, childRole = "propertyDeclaration", childJson = childJson)
        }
        val obj = JsonParser.parseString(resp).asJsonObject
        assertTrue("expected ok envelope when seeding property: $resp", obj.get("ok").asBoolean)
    }

    private fun resolveNode(ref: String): SNode =
        PersistenceFacade.getInstance().createNodeReference(ref).resolve(structureModel.repository)
            ?: error("node '$ref' did not resolve")

    /**
     * `set_node_properties` returns ok=true with `data` as a JSON array of per-row envelopes
     * (each entry is itself an envelope JsonObject). Normalises a row element to a JsonObject.
     */
    private fun parseRowObject(rowElement: JsonElement): JsonObject = when {
        rowElement.isJsonObject -> rowElement.asJsonObject
        rowElement.isJsonPrimitive -> JsonParser.parseString(rowElement.asString).asJsonObject
        else -> error("unexpected row shape: $rowElement")
    }

    // ── mps_mcp_update_node: invalid parameter combinations ──────────────────────────────

    @Test
    fun `update_node ADD PROPERTY is rejected as an invalid combination`() {
        val ref = createConceptRoot("BadCombo1")
        val response = runTool(toolset) {
            it.mps_mcp_update_node(NodeUpdateOperation.ADD, NodeUpdateKind.PROPERTY, properties = listOf(listOf(ref, "name", "value")))
        }
        val err = expectErr(response)
        assertTrue("error must mention the invalid combination, got: $err", err.contains("ADD") && err.contains("PROPERTY"))
    }

    @Test
    fun `update_node ADD REFERENCE is rejected as an invalid combination`() {
        val ref = createConceptRoot("BadCombo2")
        val response = runTool(toolset) {
            it.mps_mcp_update_node(NodeUpdateOperation.ADD, NodeUpdateKind.REFERENCE, references = listOf(listOf(ref, "extends", null)))
        }
        val err = expectErr(response)
        assertTrue("error must mention the invalid combination, got: $err", err.contains("ADD") && err.contains("REFERENCE"))
    }

    @Test
    fun `update_node ADD CHILD without nodeReference is rejected`() {
        val response = runTool(toolset) {
            it.mps_mcp_update_node(NodeUpdateOperation.ADD, NodeUpdateKind.CHILD, childRole = "members", childJson = "{}")
        }
        val err = expectErr(response)
        assertTrue("error must point at the missing nodeReference, got: $err", err.contains("nodeReference"))
    }

    @Test
    fun `update_node ADD CHILD without childRole is rejected`() {
        val ref = createConceptRoot("MissingRole")
        val response = runTool(toolset) {
            it.mps_mcp_update_node(NodeUpdateOperation.ADD, NodeUpdateKind.CHILD, nodeReference = ref, childJson = "{}")
        }
        val err = expectErr(response)
        assertTrue("error must point at the missing childRole, got: $err", err.contains("childRole"))
    }

    @Test
    fun `update_node ADD CHILD without childJson is rejected`() {
        val ref = createConceptRoot("MissingJson")
        val response = runTool(toolset) {
            it.mps_mcp_update_node(NodeUpdateOperation.ADD, NodeUpdateKind.CHILD, nodeReference = ref, childRole = "propertyDeclaration")
        }
        val err = expectErr(response)
        assertTrue("error must point at the missing childJson, got: $err", err.contains("childJson"))
    }

    @Test
    fun `update_node SET CHILD without childNodeRef is rejected`() {
        val response = runTool(toolset) {
            it.mps_mcp_update_node(NodeUpdateOperation.SET, NodeUpdateKind.CHILD, childJson = "{}")
        }
        val err = expectErr(response)
        assertTrue("error must point at the missing childNodeRef, got: $err", err.contains("childNodeRef"))
    }

    @Test
    fun `update_node SET CHILD without childJson deletes the child`() {
        val parentRef = createConceptRoot("SetChildNullJson")
        addPropertyChild(parentRef, "p", "string")
        val childRef = readOnRepo {
            val p = resolveNode(parentRef).children.single { it.containmentLink?.name == "propertyDeclaration" }
            PersistenceFacade.getInstance().asString(p.reference)
        }
        val response = runTool(toolset) {
            it.mps_mcp_update_node(NodeUpdateOperation.SET, NodeUpdateKind.CHILD, childNodeRef = childRef)
        }
        val obj = JsonParser.parseString(response).asJsonObject
        assertTrue("expected ok envelope when SET CHILD with null childJson deletes the child: $response", obj.get("ok").asBoolean)
        readOnRepo {
            val parent = resolveNode(parentRef)
            assertTrue(
                "child must be gone after SET CHILD with null childJson",
                parent.children.none { it.containmentLink?.name == "propertyDeclaration" },
            )
        }
    }

    @Test
    fun `update_node SET CHILD without childJson and dryRun does not delete the child`() {
        val parentRef = createConceptRoot("SetChildNullJsonDryRun")
        addPropertyChild(parentRef, "survivor", "string")
        val childRef = readOnRepo {
            val p = resolveNode(parentRef).children.single { it.containmentLink?.name == "propertyDeclaration" }
            PersistenceFacade.getInstance().asString(p.reference)
        }
        val response = runTool(toolset) {
            it.mps_mcp_update_node(NodeUpdateOperation.SET, NodeUpdateKind.CHILD, childNodeRef = childRef, dryRun = true)
        }
        val obj = JsonParser.parseString(response).asJsonObject
        assertTrue("expected ok envelope for dryRun deletion: $response", obj.get("ok").asBoolean)
        readOnRepo {
            val parent = resolveNode(parentRef)
            val kids = parent.children.filter { it.containmentLink?.name == "propertyDeclaration" }
            assertEquals("dryRun must not delete the child", 1, kids.size)
            assertEquals("survivor", kids.single().name)
        }
    }

    @Test
    fun `update_node SET CHILD without childNodeRef and without childJson is rejected`() {
        val response = runTool(toolset) {
            it.mps_mcp_update_node(NodeUpdateOperation.SET, NodeUpdateKind.CHILD)
        }
        val err = expectErr(response)
        assertTrue("error must point at the missing childNodeRef, got: $err", err.contains("childNodeRef"))
    }

    @Test
    fun `update_node SET PROPERTY without properties is rejected`() {
        val response = runTool(toolset) {
            it.mps_mcp_update_node(NodeUpdateOperation.SET, NodeUpdateKind.PROPERTY)
        }
        val err = expectErr(response)
        assertTrue("error must point at the missing properties batch, got: $err", err.contains("properties"))
    }

    @Test
    fun `update_node SET PROPERTY with null nodeReference in a triplet is rejected per-row`() {
        val response = runTool(toolset) {
            it.mps_mcp_update_node(NodeUpdateOperation.SET, NodeUpdateKind.PROPERTY, properties = listOf(listOf(null, "name", "value")))
        }
        val err = expectBatchRowError(response, 0)
        assertTrue("row error must mention 'nodeReference', got: $err", err.contains("nodeReference"))
    }

    @Test
    fun `update_node SET PROPERTY with null propertyName in a triplet is rejected per-row`() {
        val ref = createConceptRoot("SetPropMissingName")
        val response = runTool(toolset) {
            it.mps_mcp_update_node(NodeUpdateOperation.SET, NodeUpdateKind.PROPERTY, properties = listOf(listOf(ref, null, "value")))
        }
        val err = expectBatchRowError(response, 0)
        assertTrue("row error must mention 'propertyName', got: $err", err.contains("propertyName"))
    }

    @Test
    fun `update_node SET REFERENCE without references is rejected`() {
        val response = runTool(toolset) {
            it.mps_mcp_update_node(NodeUpdateOperation.SET, NodeUpdateKind.REFERENCE)
        }
        val err = expectErr(response)
        assertTrue("error must point at the missing references batch, got: $err", err.contains("references"))
    }

    @Test
    fun `update_node SET REFERENCE with null nodeReference in a triplet is rejected per-row`() {
        val response = runTool(toolset) {
            it.mps_mcp_update_node(NodeUpdateOperation.SET, NodeUpdateKind.REFERENCE, references = listOf(listOf(null, "extends", null)))
        }
        val err = expectBatchRowError(response, 0)
        assertTrue("row error must mention 'nodeReference', got: $err", err.contains("nodeReference"))
    }

    @Test
    fun `update_node SET REFERENCE with null referenceRole in a triplet is rejected per-row`() {
        val ref = createConceptRoot("SetRefMissingRole")
        val response = runTool(toolset) {
            it.mps_mcp_update_node(NodeUpdateOperation.SET, NodeUpdateKind.REFERENCE, references = listOf(listOf(ref, null, null)))
        }
        val err = expectBatchRowError(response, 0)
        assertTrue("row error must mention 'referenceRole', got: $err", err.contains("referenceRole"))
    }

    // ── new coverage for the unified SET semantics ───────────────────────────────────────

    @Test
    fun `update_node SET PROPERTY mixed set-and-delete in one batch applies both`() {
        val ref = createConceptRoot("MixedPropBatch")
        // Seed both properties
        runTool(toolset) {
            it.mps_mcp_update_node(
                NodeUpdateOperation.SET, NodeUpdateKind.PROPERTY,
                properties = listOf(
                    listOf(ref, "name", "OriginalName"),
                    listOf(ref, "virtualPackage", "test.pkg"),
                ),
            )
        }
        // Now: rename `name` AND delete `virtualPackage` in one batch
        val response = runTool(toolset) {
            it.mps_mcp_update_node(
                NodeUpdateOperation.SET, NodeUpdateKind.PROPERTY,
                properties = listOf(
                    listOf(ref, "name", "Renamed"),
                    listOf(ref, "virtualPackage", null),
                ),
            )
        }
        val obj = JsonParser.parseString(response).asJsonObject
        assertTrue("expected ok envelope: $response", obj.get("ok").asBoolean)
        readOnRepo {
            val node = resolveNode(ref)
            assertEquals("Renamed", node.name)
            assertNull("virtualPackage must be deleted", node.getPropertyByName("virtualPackage"))
        }
    }

    @Test
    fun `update_node SET REFERENCE mixed set-and-delete in one batch applies both`() {
        val baseRef = createConceptRoot("MixedRefBase")
        val derivedARef = createConceptRoot("MixedRefDerivedA")
        val derivedBRef = createConceptRoot("MixedRefDerivedB")

        // Seed derivedA.extends = base; derivedB.extends = base
        runTool(toolset) {
            it.mps_mcp_update_node(
                NodeUpdateOperation.SET, NodeUpdateKind.REFERENCE,
                references = listOf(
                    listOf(derivedARef, "extends", baseRef),
                    listOf(derivedBRef, "extends", baseRef),
                ),
            )
        }
        // Now: keep derivedA.extends = base; delete derivedB.extends in one batch
        val response = runTool(toolset) {
            it.mps_mcp_update_node(
                NodeUpdateOperation.SET, NodeUpdateKind.REFERENCE,
                references = listOf(
                    listOf(derivedARef, "extends", baseRef),
                    listOf(derivedBRef, "extends", null),
                ),
            )
        }
        val obj = JsonParser.parseString(response).asJsonObject
        assertTrue("expected ok envelope: $response", obj.get("ok").asBoolean)
        readOnRepo {
            val aTarget = resolveNode(derivedARef).references.firstOrNull { it.link.name == "extends" }?.targetNode
            assertNotNull("derivedA.extends must still be set", aTarget)
            assertEquals(resolveNode(baseRef).reference, aTarget!!.reference)

            val bTarget = resolveNode(derivedBRef).references.firstOrNull { it.link.name == "extends" }?.targetNode
            // Like the round-trip test: if MPS reports an implicit target, just ensure it is not RefBase any more
            if (bTarget != null) {
                assertNotEquals(resolveNode(baseRef).reference, bTarget.reference)
            }
        }
    }

    @Test
    fun `update_node SET PROPERTY batch continues past a per-row failure and applies the good rows`() {
        val refA = createConceptRoot("BatchContinueA")
        val refB = createConceptRoot("BatchContinueB")
        val response = runTool(toolset) {
            it.mps_mcp_update_node(
                NodeUpdateOperation.SET, NodeUpdateKind.PROPERTY,
                properties = listOf(
                    listOf(refA, "name", "RenamedA"),
                    listOf(null, "name", "shouldFail"),
                    listOf(refB, "name", "RenamedB"),
                ),
            )
        }
        val obj = JsonParser.parseString(response).asJsonObject
        assertFalse("outer envelope must report ok=false because the middle row failed: $response", obj.get("ok").asBoolean)
        val arr = obj.getAsJsonArray("data")
        assertEquals(3, arr.size())
        assertTrue("row 0 must succeed", parseRowObject(arr.get(0)).get("ok").asBoolean)
        assertFalse("row 1 must fail", parseRowObject(arr.get(1)).get("ok").asBoolean)
        assertTrue("row 2 must succeed", parseRowObject(arr.get(2)).get("ok").asBoolean)
        readOnRepo {
            assertEquals("RenamedA", resolveNode(refA).name)
            assertEquals("RenamedB", resolveNode(refB).name)
        }
    }

    @Test
    fun `update_node SET REFERENCE batch continues past a per-row failure and applies the good rows`() {
        val baseRef = createConceptRoot("BatchRefBase")
        val derivedARef = createConceptRoot("BatchRefDerivedA")
        val derivedBRef = createConceptRoot("BatchRefDerivedB")
        val response = runTool(toolset) {
            it.mps_mcp_update_node(
                NodeUpdateOperation.SET, NodeUpdateKind.REFERENCE,
                references = listOf(
                    listOf(derivedARef, "extends", baseRef),
                    listOf(null, "extends", baseRef),
                    listOf(derivedBRef, "extends", baseRef),
                ),
            )
        }
        val obj = JsonParser.parseString(response).asJsonObject
        assertFalse("outer envelope must report ok=false because the middle row failed: $response", obj.get("ok").asBoolean)
        val arr = obj.getAsJsonArray("data")
        assertEquals(3, arr.size())
        assertTrue("row 0 must succeed", parseRowObject(arr.get(0)).get("ok").asBoolean)
        assertFalse("row 1 must fail", parseRowObject(arr.get(1)).get("ok").asBoolean)
        assertTrue("row 2 must succeed", parseRowObject(arr.get(2)).get("ok").asBoolean)
        readOnRepo {
            val baseNodeRef = resolveNode(baseRef).reference
            assertEquals(baseNodeRef, resolveNode(derivedARef).references.first { it.link.name == "extends" }.targetNode!!.reference)
            assertEquals(baseNodeRef, resolveNode(derivedBRef).references.first { it.link.name == "extends" }.targetNode!!.reference)
        }
    }

    @Test
    fun `update_node SET PROPERTY with empty-string nodeReference in a triplet is rejected per-row`() {
        val response = runTool(toolset) {
            it.mps_mcp_update_node(NodeUpdateOperation.SET, NodeUpdateKind.PROPERTY, properties = listOf(listOf("", "name", "value")))
        }
        val err = expectBatchRowError(response, 0)
        assertTrue("row error must mention 'nodeReference', got: $err", err.contains("nodeReference"))
    }

    @Test
    fun `update_node SET PROPERTY with empty-string propertyName in a triplet is rejected per-row`() {
        val ref = createConceptRoot("EmptyPropName")
        val response = runTool(toolset) {
            it.mps_mcp_update_node(NodeUpdateOperation.SET, NodeUpdateKind.PROPERTY, properties = listOf(listOf(ref, "", "value")))
        }
        val err = expectBatchRowError(response, 0)
        assertTrue("row error must mention 'propertyName', got: $err", err.contains("propertyName"))
    }

    @Test
    fun `update_node SET REFERENCE with empty-string nodeReference in a triplet is rejected per-row`() {
        val response = runTool(toolset) {
            it.mps_mcp_update_node(NodeUpdateOperation.SET, NodeUpdateKind.REFERENCE, references = listOf(listOf("", "extends", null)))
        }
        val err = expectBatchRowError(response, 0)
        assertTrue("row error must mention 'nodeReference', got: $err", err.contains("nodeReference"))
    }

    @Test
    fun `update_node SET REFERENCE with empty-string referenceRole in a triplet is rejected per-row`() {
        val ref = createConceptRoot("EmptyRefRole")
        val response = runTool(toolset) {
            it.mps_mcp_update_node(NodeUpdateOperation.SET, NodeUpdateKind.REFERENCE, references = listOf(listOf(ref, "", null)))
        }
        val err = expectBatchRowError(response, 0)
        assertTrue("row error must mention 'referenceRole', got: $err", err.contains("referenceRole"))
    }

    /**
     * Extracts the per-row error message from a batch envelope `{"ok":false,"data":[<rows>]}`.
     * Use for tests that pin per-row failure semantics in SET PROPERTY / SET REFERENCE.
     */
    private fun expectBatchRowError(response: String, rowIndex: Int): String {
        val obj = JsonParser.parseString(response).asJsonObject
        assertFalse("expected outer ok=false envelope: $response", obj.get("ok").asBoolean)
        val arr = obj.getAsJsonArray("data")
        assertTrue("batch must have at least ${rowIndex + 1} row(s): $response", arr.size() > rowIndex)
        val row = parseRowObject(arr.get(rowIndex))
        assertFalse("row $rowIndex must be an error envelope: $row", row.get("ok").asBoolean)
        return row.get("error").asString
    }
}
