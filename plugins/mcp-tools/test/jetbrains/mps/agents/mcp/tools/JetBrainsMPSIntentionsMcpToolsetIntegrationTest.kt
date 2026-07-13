package jetbrains.mps.agents.mcp.tools

import com.google.gson.JsonArray
import com.google.gson.JsonObject
import com.google.gson.JsonParser
import jetbrains.mps.intentions.IntentionsManager
import org.jetbrains.mps.openapi.persistence.PersistenceFacade
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test
import java.io.File

/**
 * End-to-end integration tests for [JetBrainsMPSIntentionsMcpToolset] and the `quickFixes` /
 * `autoApplyQuickFixes` enrichment of `mps_mcp_check_root_node_problems`.
 *
 * The reliable, bundled checking-rule fix these tests lean on is
 * `jetbrains.mps.lang.structure.typesystem.GenerateConceptIds_QuickFix`, attached to the
 * "Concept id is not defined" error emitted by `check_AbstractConceptDeclaration_Ids`. A concept
 * with a blank `conceptId` provokes it deterministically; applying the fix regenerates the id.
 *
 * Not covered end-to-end (no deterministic bundled fixture exists): the Ambiguous error path of
 * `mps_mcp_apply_intention` (unit-tested in [IntentionsCandidateSelectionTest]) and the auto-apply
 * execution loop (unit-tested in [AbstractOpsAutoApplyQuickFixesTest]).
 */
class JetBrainsMPSIntentionsMcpToolsetIntegrationTest : McpIntegrationTestBase() {

    private val generateIdsFixFqn = "jetbrains.mps.lang.structure.typesystem.GenerateConceptIds_QuickFix"

    // Two bundled intentions on ConceptDeclaration used as fixtures: ToggleConceptAbstract flips the
    // `abstract` flag and is current-node-only; MakeRootable is available-in-child-nodes, so it lets
    // us prove ancestor listing from a child node.
    private val toggleAbstractIntentionId = "jetbrains.mps.lang.structure.intentions.ToggleConceptAbstract_Intention"

    // ── helpers ────────────────────────────────────────────────────────────────────────

    /** Blanks the `conceptId` of the concept at [conceptRef] to provoke the missing-id checker error. */
    private fun clearConceptId(conceptRef: String) {
        executeCommand {
            val node = PersistenceFacade.getInstance().createNodeReference(conceptRef).resolve(myProject.repository)
                ?: error("could not resolve $conceptRef")
            val prop = node.concept.properties.first { it.name == "conceptId" }
            node.setProperty(prop, null)
        }
    }

    private fun conceptIdOf(conceptRef: String): String? = readOnRepo {
        val node = PersistenceFacade.getInstance().createNodeReference(conceptRef).resolve(myProject.repository)!!
        node.getPropertyByName("conceptId")
    }

    /**
     * The intentions list tool saves its array to a temp file wrapped in the standard
     * `{"ok":true,"data":[...]}` envelope (via `saveToTempFile` → `okJson`); read and unwrap it.
     */
    private fun listEntries(response: String): JsonArray {
        val path = extractFilePathFromData(response)
        return JsonParser.parseString(File(path).readText()).asJsonObject.getAsJsonArray("data")
    }

    private fun JsonArray.objects(): List<JsonObject> = map { it.asJsonObject }

    private fun listOn(nodeRef: String, includeAncestors: Boolean = true, includeQuickFixes: Boolean = true): List<JsonObject> =
        listEntries(runTool(JetBrainsMPSIntentionsMcpToolset()) {
            it.mps_mcp_list_node_intentions(nodeRef, includeAncestors = includeAncestors, includeQuickFixes = includeQuickFixes)
        }).objects()

    private fun booleanProp(nodeRef: String, propertyName: String): Boolean = readOnRepo {
        val node = PersistenceFacade.getInstance().createNodeReference(nodeRef).resolve(myProject.repository)!!
        node.getPropertyByName(propertyName) == "true"
    }

    /** Adds a PropertyDeclaration child under [conceptRef] and returns the child's persistent ref. */
    private fun addPropertyChildAndGetRef(conceptRef: String): String {
        val childJson = """
            { "concept": "jetbrains.mps.lang.structure.structure.PropertyDeclaration",
              "properties": [ { "name": "name", "value": "p1" } ] }
        """.trimIndent()
        val resp = runTool(JetBrainsMPSNodeMcpToolset()) {
            it.mps_mcp_update_node(NodeUpdateOperation.ADD, NodeUpdateKind.CHILD, nodeReference = conceptRef, childRole = "propertyDeclaration", childJson = childJson)
        }
        assertTrue("seeding a property child should succeed: $resp", JsonParser.parseString(resp).asJsonObject.get("ok").asBoolean)
        return readOnRepo {
            val concept = PersistenceFacade.getInstance().createNodeReference(conceptRef).resolve(myProject.repository)!!
            val child = concept.children.first()
            PersistenceFacade.getInstance().asString(child.reference)
        }
    }

    // ── tests ──────────────────────────────────────────────────────────────────────────

    @Test
    fun `list surfaces the missing-concept-id quick fix on the concept`() {
        val conceptRef = createConceptRoot("Foo")
        clearConceptId(conceptRef)

        val response = runTool(JetBrainsMPSIntentionsMcpToolset()) {
            it.mps_mcp_list_node_intentions(conceptRef)
        }
        val entries = listEntries(response).objects()

        val quickFix = entries.singleOrNull {
            it.get("type").asString == "quickFix" && it.get("id")?.asString == generateIdsFixFqn
        }
        assertTrue("expected a GenerateConceptIds quickFix entry; got: $entries", quickFix != null)
        assertEquals("ERROR", quickFix!!.get("kind").asString)
        assertEquals(conceptRef, quickFix.get("targetNode").asString)
        assertFalse("the id fix is not auto-applicable", quickFix.get("autoApplicable").asBoolean)
    }

    @Test
    fun `list returns well-formed intention entries including a known bundled intention`() {
        val conceptRef = createConceptRoot("Bar")
        val entries = listOn(conceptRef, includeQuickFixes = false)

        // Guard against a regression that silently returns nothing from the headless IntentionsManager.
        assertFalse("intention listing must not be empty for a concept", entries.isEmpty())
        // Every entry must carry the identifying fields the apply tool needs.
        for (entry in entries) {
            assertTrue("entry missing type: $entry", entry.has("type"))
            assertTrue("entry missing id: $entry", entry.has("id"))
            assertTrue("entry missing kind: $entry", entry.has("kind"))
            assertTrue("entry missing targetNode: $entry", entry.has("targetNode"))
        }
        val toggleAbstract = entries.singleOrNull {
            it.get("type").asString == "intention" && it.get("id").asString == toggleAbstractIntentionId
        }
        assertTrue(
            "a known bundled intention (ToggleConceptAbstract) should be offered on a concept; got $entries",
            toggleAbstract != null,
        )
        assertEquals("NORMAL", toggleAbstract!!.get("kind").asString)
    }

    @Test
    fun `apply a bundled intention toggles the concept abstract flag`() {
        val conceptRef = createConceptRoot("Togg")
        assertFalse("fresh concept starts non-abstract", booleanProp(conceptRef, "abstract"))

        val response = runTool(JetBrainsMPSIntentionsMcpToolset()) {
            it.mps_mcp_apply_intention(conceptRef, toggleAbstractIntentionId)
        }
        val data = expectOk(response)
        assertTrue("apply should report applied=true: $response", data.get("applied").asBoolean)
        assertEquals("intention", data.get("type").asString)
        // The intention actually ran: the `abstract` flag flipped on the model node.
        assertTrue("ToggleConceptAbstract must set abstract=true", booleanProp(conceptRef, "abstract"))
    }

    @Test
    fun `includeDisabled controls whether disabled intentions are listed`() {
        val conceptRef = createConceptRoot("Dis")
        val manager = IntentionsManager.getInstance()
        manager.disableIntention(toggleAbstractIntentionId)
        try {
            val hidden = listOn(conceptRef, includeQuickFixes = false).any {
                it.get("id").asString == toggleAbstractIntentionId
            }
            assertFalse("a disabled intention must be hidden with includeDisabled=false (default)", hidden)

            val shown = listEntries(runTool(JetBrainsMPSIntentionsMcpToolset()) {
                it.mps_mcp_list_node_intentions(conceptRef, includeDisabled = true, includeQuickFixes = false)
            }).objects().any { it.get("id").asString == toggleAbstractIntentionId }
            assertTrue("includeDisabled=true must surface the disabled intention", shown)
        } finally {
            manager.enableIntention(toggleAbstractIntentionId)
        }
    }

    @Test
    fun `includeAncestors adds ancestor-node intentions`() {
        val conceptRef = createConceptRoot("Anc")
        val childRef = addPropertyChildAndGetRef(conceptRef)

        // MakeRootable is available-in-child-nodes and applies to the ancestor ConceptDeclaration.
        val withAncestors = listOn(childRef, includeAncestors = true)
        assertTrue(
            "with includeAncestors=true, entries should include ones targeting the ancestor concept; got $withAncestors",
            withAncestors.any { it.get("targetNode").asString == conceptRef },
        )

        val withoutAncestors = listOn(childRef, includeAncestors = false)
        assertTrue(
            "with includeAncestors=false, no entry should target the ancestor concept; got $withoutAncestors",
            withoutAncestors.none { it.get("targetNode").asString == conceptRef },
        )
    }

    @Test
    fun `check report carries quickFixes and apply_intention repairs the missing id`() {
        val conceptRef = createConceptRoot("Baz")
        clearConceptId(conceptRef)

        // 1. the check report must expose the fix on the problem
        val checkResponse = runTool(JetBrainsMPSNodeMcpToolset()) {
            it.mps_mcp_check_root_node_problems(conceptRef)
        }
        val reportText = File(extractFilePathFromData(checkResponse)).readText()
        assertTrue("check report should list quickFixes: $reportText", reportText.contains("\"quickFixes\""))
        assertTrue("check report should name the fix: $reportText", reportText.contains(generateIdsFixFqn))

        // 2. apply it by id and assert the response
        val applyResponse = runTool(JetBrainsMPSIntentionsMcpToolset()) {
            it.mps_mcp_apply_intention(conceptRef, generateIdsFixFqn)
        }
        val data = expectOk(applyResponse)
        assertTrue("apply should report applied=true: $applyResponse", data.get("applied").asBoolean)
        assertEquals("quickFix", data.get("type").asString)

        // 3. the id is regenerated → the problem is gone
        val newId = conceptIdOf(conceptRef)
        assertTrue("conceptId should be regenerated, was '$newId'", !newId.isNullOrBlank())
    }

    @Test
    fun `auto-apply mode returns an appliedQuickFixes detail`() {
        val conceptRef = createConceptRoot("Qux")
        clearConceptId(conceptRef)

        val response = runTool(JetBrainsMPSNodeMcpToolset()) {
            it.mps_mcp_check_root_node_problems(conceptRef, autoApplyQuickFixes = true)
        }
        val envelope = JsonParser.parseString(response).asJsonObject
        assertTrue("expected ok envelope: $response", envelope.get("ok").asBoolean)
        // The problem survives (the id fix is not auto-applicable), so `data` is a report temp-file
        // path; extract it so the base class deletes the file after the test.
        extractFilePathFromData(response)
        // The bundled id fix is not auto-applicable, so the list may be empty — but the mechanism
        // must run and the detail must be present as an array (serialization + command path). The
        // execution path itself (apply/retry/termination/throw containment) is unit-tested in
        // AbstractOpsAutoApplyQuickFixesTest.
        val details = envelope.getAsJsonObject("details")
        assertTrue("auto-apply must report a details.appliedQuickFixes array: $response",
            details != null && details.get("appliedQuickFixes").isJsonArray)
    }

    @Test
    fun `apply with an unknown id yields NOT_FOUND with a re-list hint`() {
        val conceptRef = createConceptRoot("Quux")
        val response = runTool(JetBrainsMPSIntentionsMcpToolset()) {
            it.mps_mcp_apply_intention(conceptRef, "com.nonexistent.lang.intentions.Nope_Intention")
        }
        val error = expectErr(response)
        assertTrue("error should hint to re-list: $error", error.contains("mps_mcp_list_node_intentions"))
        val code = JsonParser.parseString(response).asJsonObject.get("code").asString
        assertEquals("NOT_FOUND", code)
    }
}
