package jetbrains.mps.agents.mcp.tools

import com.google.gson.JsonArray
import com.google.gson.JsonNull
import com.google.gson.JsonObject
import com.google.gson.JsonParser
import jetbrains.mps.project.MPSProject
import org.jetbrains.mps.openapi.module.SModule
import org.jetbrains.mps.openapi.persistence.PersistenceFacade
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * End-to-end integration tests for [JetBrainsMPSRootNodeMcpToolset].
 *
 * Covers lifecycle (`create_root_node`, `insert_root_node_from_json` single/array/dry-run,
 * `update_root_node_from_json` happy + dry-run, `delete_root_node`),
 * navigation/queries (`search_root_node_by_name`, `get_current_editor_root_node` with no
 * editor open, an unknown `source`, the `console` source when the console is unavailable,
 * and the `inspector` source when the inspector is unavailable),
 * and the basic error envelopes for each.
 *
 * Concepts used are picked from `jetbrains.mps.lang.structure` so they are
 * always loaded in the test bench.
 */
class JetBrainsMPSRootNodeMcpToolsetIntegrationTest : McpIntegrationTestBase() {

    private val toolset = JetBrainsMPSRootNodeMcpToolset()

    private val scopeProbe = ScopeProbe()

    private val conceptDeclarationFqn = "jetbrains.mps.lang.structure.structure.ConceptDeclaration"

    // ── create_root_node ──────────────────────────────────────────────────────────────────

    @Test
    fun `create_root_node creates a named concept declaration in the target model`() {
        val response = runTool(toolset) {
            it.mps_mcp_create_root_node(
                modelReference = structureModelRef,
                concept = conceptDeclarationFqn,
                conceptReference = null,
                name = "MyConcept",
            )
        }
        val data = expectOk(response)
        assertEquals("MyConcept", data.get("name").asString)
        assertTrue(data.get("isRoot").asBoolean)

        readOnRepo {
            val match = structureModel.rootNodes.singleOrNull { it.name == "MyConcept" }
            assertNotNull("created root must be registered in the model: $response", match)
        }
    }

    @Test
    fun `create_root_node rejects unknown model with NOT_FOUND envelope`() {
        val response = runTool(toolset) {
            it.mps_mcp_create_root_node(
                modelReference = "r:00000000-0000-0000-0000-000000000000(no.such.model)",
                concept = conceptDeclarationFqn,
                conceptReference = null,
                name = "X",
            )
        }
        assertTrue(expectErr(response).contains("not found"))
    }

    @Test
    fun `create_root_node rejects unknown concept`() {
        val response = runTool(toolset) {
            it.mps_mcp_create_root_node(
                modelReference = structureModelRef,
                concept = "totally.unknown.concept.X",
                conceptReference = null,
                name = "Y",
            )
        }
        assertTrue(expectErr(response).contains("not found"))
    }

    // ── insert_root_node_from_json ───────────────────────────────────────────────────────

    @Test
    fun `insert_root_node_from_json with single object inserts one root`() {
        val json = """
            {
              "concept": "$conceptDeclarationFqn",
              "properties": [ { "name": "name", "value": "Single" } ]
            }
        """.trimIndent()

        val response = runTool(toolset) {
            it.mps_mcp_insert_root_node_from_json(structureModelRef, json, dryRun = false)
        }
        val data = expectOk(response)
        assertEquals("Single", data.get("name").asString)

        readOnRepo {
            assertEquals(1, structureModel.rootNodes.count { it.name == "Single" })
        }
    }

    @Test
    fun `insert_root_node_from_json single object response includes fixReferences info`() {
        // ConceptDeclaration with no references → performFixReferences should report nothing fixed.
        val json = """
            {
              "concept": "$conceptDeclarationFqn",
              "properties": [ { "name": "name", "value": "WithFixInfo" } ]
            }
        """.trimIndent()
        val response = runTool(toolset) {
            it.mps_mcp_insert_root_node_from_json(structureModelRef, json, dryRun = false)
        }
        val data = expectOk(response)
        val fix = data.get("fixReferences")
        assertNotNull("single-object insert must carry data.fixReferences: $response", fix)
        val fixObj = fix.asJsonObject
        assertEquals(0, fixObj.get("fixed").asInt)
        assertEquals(0, fixObj.get("repointed").asInt)
        assertEquals(0, fixObj.get("stillBroken").asInt)
        assertNotNull("fixReferences.message must be present", fixObj.get("message"))
    }

    @Test
    fun `insert_root_node_from_json array response carries per-node fixReferences info`() {
        val json = """
            [
              { "concept": "$conceptDeclarationFqn", "properties": [ { "name": "name", "value": "BatchA" } ] },
              { "concept": "$conceptDeclarationFqn", "properties": [ { "name": "name", "value": "BatchB" } ] }
            ]
        """.trimIndent()
        val response = runTool(toolset) {
            it.mps_mcp_insert_root_node_from_json(structureModelRef, json, dryRun = false)
        }
        val arr = parseDataArray(response)
        assertEquals(2, arr.size())
        for (i in 0 until arr.size()) {
            val entry = arr.get(i).asJsonObject
            val fix = entry.get("fixReferences")
            assertNotNull("entry $i must carry fixReferences: $entry", fix)
            val fixObj = fix.asJsonObject
            assertEquals(0, fixObj.get("fixed").asInt)
            assertEquals(0, fixObj.get("repointed").asInt)
            assertEquals(0, fixObj.get("stillBroken").asInt)
        }
    }

    @Test
    fun `insert_root_node_from_json array with forward sibling reference reports no broken refs`() {
        // Regression: when a batched root referenced a later sibling by plain name,
        // performFixReferences ran while that sibling was not yet a root, so the response
        // claimed stillBroken=1 even though the reference resolved correctly once the batch
        // finished. The two-pass attach-then-fix ordering must make the counters match the
        // observable post-batch state.
        val json = """
            [
              { "concept": "$conceptDeclarationFqn",
                "properties": [ { "name": "name", "value": "FwdChild" } ],
                "references": [ { "role": "extends", "target": "FwdParent" } ] },
              { "concept": "$conceptDeclarationFqn",
                "properties": [ { "name": "name", "value": "FwdParent" } ] }
            ]
        """.trimIndent()
        val response = runTool(toolset) {
            it.mps_mcp_insert_root_node_from_json(structureModelRef, json, dryRun = false)
        }
        val arr = parseDataArray(response)
        assertEquals(2, arr.size())
        val childEntry = arr.firstOrNull { it.asJsonObject.get("name").asString == "FwdChild" }?.asJsonObject
        assertNotNull("child entry must be present in response: $response", childEntry)
        val childFix = childEntry!!.get("fixReferences").asJsonObject
        assertEquals(
            "child's extends ref must not be reported as broken once the sibling is in the model: $response",
            0,
            childFix.get("stillBroken").asInt,
        )

        // And verify the reference truly resolved.
        readOnRepo {
            val child = structureModel.rootNodes.single { it.name == "FwdChild" }
            val parent = structureModel.rootNodes.single { it.name == "FwdParent" }
            val target = child.references.firstOrNull { it.link.name == "extends" }?.targetNode
            assertNotNull("FwdChild.extends must resolve after batched insert", target)
            assertEquals(parent.reference, target!!.reference)
        }
    }

    @Test
    fun `insert_root_node_from_json with array inserts the whole batch atomically`() {
        val json = """
            [
              { "concept": "$conceptDeclarationFqn", "properties": [ { "name": "name", "value": "A" } ] },
              { "concept": "$conceptDeclarationFqn", "properties": [ { "name": "name", "value": "B" } ] }
            ]
        """.trimIndent()

        val response = runTool(toolset) {
            it.mps_mcp_insert_root_node_from_json(structureModelRef, json, dryRun = false)
        }
        // The envelope's `data` is a JSON-string holding the inserted-node array
        val obj = JsonParser.parseString(response).asJsonObject
        assertTrue("expected ok envelope: $response", obj.get("ok").asBoolean)
        val rawData = if (obj.get("data").isJsonPrimitive) obj.get("data").asString else obj.get("data").toString()
        val arr = JsonParser.parseString(rawData).asJsonArray
        val names = arr.map { it.asJsonObject.get("name").asString }.toSet()
        assertEquals(setOf("A", "B"), names)

        readOnRepo {
            val present = structureModel.rootNodes.mapNotNull { it.name }.toSet()
            assertTrue("both inserted roots must be present: $present", present.containsAll(setOf("A", "B")))
        }
    }

    @Test
    fun `insert_root_node_from_json dryRun does not mutate the model`() {
        val before = readOnRepo { structureModel.rootNodes.mapNotNull { it.name }.toSet() }
        val json = """
            { "concept": "$conceptDeclarationFqn", "properties": [ { "name": "name", "value": "DryRoot" } ] }
        """.trimIndent()
        val response = runTool(toolset) {
            it.mps_mcp_insert_root_node_from_json(structureModelRef, json, dryRun = true)
        }
        val obj = JsonParser.parseString(response).asJsonObject
        assertTrue("expected ok envelope: $response", obj.get("ok").asBoolean)
        val raw = if (obj.get("data").isJsonPrimitive) obj.get("data").asString else obj.get("data").toString()
        val payload = JsonParser.parseString(raw).asJsonObject
        assertTrue("dryRun payload must be flagged: $raw", payload.get("dryRun").asBoolean)
        assertFalse(
            "dryRun marker must not carry fixReferences: $payload",
            payload.has("fixReferences"),
        )

        readOnRepo {
            val after = structureModel.rootNodes.mapNotNull { it.name }.toSet()
            assertEquals("dryRun must not mutate the model", before, after)
        }
    }

    @Test
    fun `insert_root_node_from_json with invalid JSON returns INVALID_JSON envelope`() {
        val response = runTool(toolset) {
            it.mps_mcp_insert_root_node_from_json(structureModelRef, "{ not really JSON", dryRun = false)
        }
        assertTrue(expectErr(response).contains("Failed to parse JSON"))
    }

    @Test
    fun `insert_root_node_from_json rejects XML-short-id-like reference target with qualified-name hint`() {
        // The string `_my_var$` trips the looksLikeMpsXmlShortId heuristic: length 8, all-valid
        // identifier chars, contains '$'. A user supplying such a string usually pasted an MPS
        // XML short ID, which is not a usable target reference. But the same shape can match a
        // legitimate JVM identifier with a trailing '$'; the error message must therefore both
        // (1) explain the rejection and (2) point at the qualified-name workaround so a real
        // name does not become unaddressable.
        val json = """
            {
              "concept": "$conceptDeclarationFqn",
              "properties": [ { "name": "name", "value": "HasShortIdRef" } ],
              "references": [ { "role": "extends", "target": "_my_var${'$'}" } ]
            }
        """.trimIndent()
        val response = runTool(toolset) {
            it.mps_mcp_insert_root_node_from_json(structureModelRef, json, dryRun = false)
        }
        val err = expectErr(response)
        assertTrue("error must surface the XML-short-id rejection: $err", err.contains("XML short ID"))
        assertTrue(
            "error must hint at the model-prefix workaround for legitimate names: $err",
            err.contains("qualify it with a model prefix"),
        )
        readOnRepo {
            val polluted = structureModel.rootNodes.any { it.name == "HasShortIdRef" }
            assertFalse("rejected insert must not leave a partial root behind", polluted)
        }
    }

    @Test
    fun `insert_root_node_from_json rejects array containing non-rootable concept and rolls back`() {
        // EnumerationMemberDeclaration is NOT a rootable concept.
        val json = """
            [
              { "concept": "$conceptDeclarationFqn", "properties": [ { "name": "name", "value": "FirstOK" } ] },
              { "concept": "jetbrains.mps.lang.structure.structure.EnumerationMemberDeclaration",
                "properties": [ { "name": "name", "value": "BadMember" } ] }
            ]
        """.trimIndent()
        val before = readOnRepo { structureModel.rootNodes.mapNotNull { it.name }.toSet() }

        val response = runTool(toolset) {
            it.mps_mcp_insert_root_node_from_json(structureModelRef, json, dryRun = false)
        }
        val msg = expectErr(response)
        assertTrue("error must mention the non-rootable concept: $msg",
            msg.contains("not a rootable concept"))

        readOnRepo {
            val after = structureModel.rootNodes.mapNotNull { it.name }.toSet()
            assertEquals(
                "failed batch insertion must not leave any of its nodes behind (atomicity)",
                before,
                after,
            )
        }
    }

    // ── update_root_node_from_json ───────────────────────────────────────────────────────

    @Test
    fun `update_root_node_from_json applies a rename and re-sets non-name properties`() {
        // updateNodeFromBlueprint is a full-root rewrite: the `name` property is applied like any
        // other (IMPL-3). Verify both: (1) a different `name` in the blueprint renames the root —
        // the envelope reflects the new name and a fresh re-resolve of the (unchanged) reference
        // confirms it — and (2) non-name properties are re-set too.
        val rootRef = createConceptRoot("Original")

        val json = """
            { "concept": "$conceptDeclarationFqn",
              "properties": [
                { "name": "name", "value": "RenamedRoot" },
                { "name": "virtualPackage", "value": "test.pkg" }
              ] }
        """.trimIndent()
        val response = runTool(toolset) {
            it.mps_mcp_update_root_node_from_json(rootRef, json, dryRun = false)
        }
        val data = expectOk(response)
        assertEquals("RenamedRoot", data.get("name").asString)
        assertEquals("test.pkg", data.get("virtualFolder").asString)

        readOnRepo {
            val node = PersistenceFacade.getInstance().createNodeReference(rootRef).resolve(structureModel.repository)
            assertNotNull(node)
            assertEquals("RenamedRoot", node!!.name)
            assertEquals("test.pkg", node.getPropertyByName("virtualPackage"))
        }
    }

    @Test
    fun `update_root_node_from_json response includes fixReferences info`() {
        val rootRef = createConceptRoot("UpdateMe")
        val json = """
            { "concept": "$conceptDeclarationFqn",
              "properties": [ { "name": "virtualPackage", "value": "after.update" } ] }
        """.trimIndent()
        val response = runTool(toolset) {
            it.mps_mcp_update_root_node_from_json(rootRef, json, dryRun = false)
        }
        val data = expectOk(response)
        assertEquals("name omitted from blueprint must be preserved", "UpdateMe", data.get("name").asString)
        val fix = data.get("fixReferences")
        assertNotNull("update response must carry data.fixReferences: $response", fix)
        val fixObj = fix.asJsonObject
        assertEquals(0, fixObj.get("fixed").asInt)
        assertEquals(0, fixObj.get("repointed").asInt)
        assertEquals(0, fixObj.get("stillBroken").asInt)
    }

    @Test
    fun `update_root_node_from_json dryRun does not mutate the model`() {
        val rootRef = createConceptRoot("KeepMe")
        val json = """
            { "concept": "$conceptDeclarationFqn",
              "properties": [ { "name": "name", "value": "Different" } ] }
        """.trimIndent()
        val response = runTool(toolset) {
            it.mps_mcp_update_root_node_from_json(rootRef, json, dryRun = true)
        }
        val obj = JsonParser.parseString(response).asJsonObject
        assertTrue("expected ok envelope: $response", obj.get("ok").asBoolean)
        val raw = if (obj.get("data").isJsonPrimitive) obj.get("data").asString else obj.get("data").toString()
        val payload = JsonParser.parseString(raw).asJsonObject
        assertTrue("dryRun payload must be flagged: $raw", payload.get("dryRun").asBoolean)
        assertFalse(
            "dryRun marker must not carry fixReferences: $payload",
            payload.has("fixReferences"),
        )

        readOnRepo {
            val node = PersistenceFacade.getInstance().createNodeReference(rootRef).resolve(structureModel.repository)
            assertEquals("KeepMe", node!!.name)
        }
    }

    @Test
    fun `update_root_node_from_json reports NOT_FOUND for unknown node`() {
        val response = runTool(toolset) {
            it.mps_mcp_update_root_node_from_json(
                "r:00000000-0000-0000-0000-000000000000(ghost)/0",
                """{ "concept": "$conceptDeclarationFqn" }""",
                dryRun = false,
            )
        }
        assertTrue(expectErr(response).contains("not found"))
    }

    // ── delete_root_node ──────────────────────────────────────────────────────────────────

    @Test
    fun `delete_root_node removes the root from its model`() {
        val rootRef = createConceptRoot("ToDelete")

        val response = runTool(toolset) { it.mps_mcp_update_root_node_from_json(rootRef, operation = RootNodeOperation.DELETE) }
        val obj = JsonParser.parseString(response).asJsonObject
        assertTrue("expected ok envelope: $response", obj.get("ok").asBoolean)
        val data = parseDataObject(obj.get("data"))
        assertEquals(rootRef, data.get("reference").asString)
        assertTrue(data.get("deleted").asBoolean)

        readOnRepo {
            assertNull(
                "node must no longer resolve",
                PersistenceFacade.getInstance().createNodeReference(rootRef).resolve(structureModel.repository),
            )
        }
    }

    @Test
    fun `delete_root_node returns NOT_FOUND envelope for unknown node`() {
        val response = runTool(toolset) {
            it.mps_mcp_update_root_node_from_json("r:00000000-0000-0000-0000-000000000000(ghost)/1", operation = RootNodeOperation.DELETE)
        }
        assertTrue(expectErr(response).contains("not found"))
    }

    // ── search_root_node_by_name ─────────────────────────────────────────────────────────

    @Test
    fun `search_root_node_by_name with single string returns matching roots`() {
        createConceptRoot("Findable")
        val response = runTool(toolset) { it.mps_mcp_search_root_node_by_name("Findable") }
        val arr = parseDataArray(response)
        val names = arr.map { it.asJsonObject.get("name").asString }
        assertTrue("results must contain the created concept: $names", names.contains("Findable"))
    }

    @Test
    fun `search_root_node_by_name accepts a JSON array of names`() {
        createConceptRoot("LookupA")
        createConceptRoot("LookupB")
        val response = runTool(toolset) {
            it.mps_mcp_search_root_node_by_name("""["LookupA","LookupB"]""")
        }
        val names = parseDataArray(response).map { it.asJsonObject.get("name").asString }.toSet()
        assertTrue("results must contain both names: $names",
            names.containsAll(setOf("LookupA", "LookupB")))
    }

    @Test
    fun `search_root_node_by_name returns empty array when nothing matches`() {
        val response = runTool(toolset) { it.mps_mcp_search_root_node_by_name("DefinitelyNotARealConceptName") }
        val arr = parseDataArray(response)
        assertEquals(0, arr.size())
    }

    // ── scope confinement (project-scoped, not instance-global) ───────────────────────────
    // A single MPS instance shares one module repository across every open project, so the
    // search scopes must be rooted at the projectPath-selected project, not GlobalScope(repository).

    @Test
    fun `all scope is rooted at the project, not the global module repository`() {
        createConceptRoot("InProjectAllRoot")
        readOnRepo {
            val allModules = scopeProbe.modulesFor(myProject, "all")
            val repoModules = myProject.repository.modules.toList()
            assertTrue(
                "'all' scope must include the project's own language module: ${allModules.map { it.moduleName }}",
                allModules.any { it.moduleReference == language.moduleReference }
            )
            // The previous GlobalScope(repository) returned the whole repository (counts equal); the
            // project-confined scope is a strict subset — the bench loads the entire platform, far
            // more than this project's visible dependency closure.
            assertTrue(
                "'all' scope (${allModules.size}) must be a strict subset of the global repository (${repoModules.size})",
                allModules.size < repoModules.size
            )
        }
    }

    @Test
    fun `editable scope contains only modules of the selected project`() {
        createConceptRoot("InProjectEditableRoot")
        readOnRepo {
            val editableModules = scopeProbe.modulesFor(myProject, "editable")
            val projectModules = myProject.projectModulesWithGenerators
            assertTrue(
                "'editable' scope must include the project's own language module",
                editableModules.any { it.moduleReference == language.moduleReference }
            )
            assertTrue(
                "every 'editable' scope module must belong to the project: ${editableModules.map { it.moduleName }}",
                editableModules.all { m -> projectModules.any { it.moduleReference == m.moduleReference } }
            )
        }
    }

    @Test
    fun `search finds a project root under both all and editable scopes`() {
        createConceptRoot("ScopedFindable")
        for (scope in listOf("all", "editable")) {
            val response = runTool(toolset) { it.mps_mcp_search_root_node_by_name("ScopedFindable", scope) }
            val names = parseDataArray(response).map { it.asJsonObject.get("name").asString }
            assertTrue("scope=$scope must find the project root: $names", names.contains("ScopedFindable"))
        }
    }

    // ── scope parameter normalisation (single reference vs. array; no crash on bad types) ─────
    // Regression for MPS-39835: buildSearchScope used JsonObject.getAsJsonArray, which casts the
    // member to JsonArray unchecked. A client that passed "models": "ref" (a bare string) instead of
    // ["ref"] — or "models": null — crashed with ClassCastException inside the read action, which
    // ActionDispatcher logged as a spurious "Action dispatch failed".

    @Test
    fun `models scope accepts a single reference string identically to a one-element array`() {
        readOnRepo {
            val single = JsonObject().apply { addProperty("models", structureModelRef) }
            val asArray = JsonObject().apply { add("models", JsonArray().apply { add(structureModelRef) }) }
            val refsFromSingle = scopeProbe.scopeModelRefsFor(myProject, "models", single)
            val refsFromArray = scopeProbe.scopeModelRefsFor(myProject, "models", asArray)
            assertTrue("a single 'models' string must resolve the structure model: $refsFromSingle", refsFromSingle.contains(structureModelRef))
            assertEquals(
                "a single reference string and a one-element array must yield the same scope",
                refsFromArray,
                refsFromSingle,
            )
        }
    }

    @Test
    fun `models scope returns a clean error instead of crashing on a non-array value`() {
        readOnRepo {
            // An unresolvable bare string must surface as a clean error (not a ClassCastException),
            // proving getAsJsonArray's unchecked cast is gone.
            val bareErr = scopeProbe.errorFor(
                myProject, "models", JsonObject().apply { addProperty("models", "no.such.model") }
            )
            assertNotNull("unresolvable single ref must be a clean error, not a crash", bareErr)
            // An explicit JSON null is treated as a missing parameter, again without crashing.
            val nullErr = scopeProbe.errorFor(
                myProject, "models", JsonObject().apply { add("models", JsonNull.INSTANCE) }
            )
            assertNotNull("explicit null 'models' must be treated as missing, not a crash", nullErr)
        }
    }

    // ── get_current_editor_root_node ──────────────────────────────────────────────────────

    @Test
    fun `get_current_editor_root_node returns an error envelope when no editor is open`() {
        // The headless test environment never opens an MPS editor, so this exercises the
        // 'no editor selected' early-return path of the tool. It's the only branch we can
        // reliably hit without a real editor.
        val response = runTool(toolset) { it.mps_mcp_get_current_editor_root_node() }
        val obj = JsonParser.parseString(response).asJsonObject
        assertFalse("expected error envelope when no editor is open: $response", obj.get("ok").asBoolean)
    }

    @Test
    fun `get_current_editor_root_node rejects an unknown source with INVALID_REQUEST`() {
        // Source validation happens before any editor/console access, so this branch is
        // deterministic in the headless fixture.
        val response = runTool(toolset) { it.mps_mcp_get_current_editor_root_node(source = "bogus") }
        val obj = JsonParser.parseString(response).asJsonObject
        assertFalse("expected error envelope for unknown source: $response", obj.get("ok").asBoolean)
        assertEquals("INVALID_REQUEST", obj.get("code").asString)
    }

    @Test
    fun `get_current_editor_root_node with console source returns an error envelope when the console is unavailable`() {
        // The headless fixture never initializes the Console tool window, so source='console'
        // exercises the console-resolution branch and must return a structured error (plugin
        // unavailable / no editable tab / empty input) rather than crashing. The happy path
        // requires a live Console and is verified manually.
        val response = runTool(toolset) { it.mps_mcp_get_current_editor_root_node(source = "console") }
        val obj = JsonParser.parseString(response).asJsonObject
        assertFalse("expected error envelope when the console is unavailable: $response", obj.get("ok").asBoolean)
    }

    @Test
    fun `get_current_editor_root_node with inspector source returns an error envelope when the inspector is unavailable`() {
        // The headless fixture never initializes the Inspector tool window, so source='inspector'
        // exercises the inspector-resolution branch and must return a structured error rather than
        // crashing. The happy path requires a live Inspector and is verified manually.
        val response = runTool(toolset) { it.mps_mcp_get_current_editor_root_node(source = "inspector") }
        val obj = JsonParser.parseString(response).asJsonObject
        assertFalse("expected error envelope when the inspector is unavailable: $response", obj.get("ok").asBoolean)
    }

}

/**
 * Exposes the protected [AbstractNodeOps.buildSearchScope] so the scope-confinement invariants can
 * be asserted directly on the resolved [org.jetbrains.mps.openapi.module.SearchScope]. Lives in the
 * same package as the toolsets so the protected member is visible.
 */
private class ScopeProbe : AbstractNodeOps() {
    fun modulesFor(project: MPSProject, scope: String): List<SModule> =
        when (val r = buildSearchScope(project, scope, JsonObject())) {
            is SearchScopeResolution.Ok -> r.scope.modules.toList()
            is SearchScopeResolution.Err -> error("buildSearchScope('$scope') failed: ${r.errJson}")
        }

    /** null when the scope resolves successfully; the error JSON otherwise. */
    fun errorFor(project: MPSProject, scope: String, params: JsonObject): String? =
        when (val r = buildSearchScope(project, scope, params)) {
            is SearchScopeResolution.Ok -> null
            is SearchScopeResolution.Err -> r.errJson
        }

    /** Stringified model references of the resolved scope; fails if the scope did not resolve. */
    fun scopeModelRefsFor(project: MPSProject, scope: String, params: JsonObject): Set<String> =
        when (val r = buildSearchScope(project, scope, params)) {
            is SearchScopeResolution.Ok ->
                r.scope.models.map { PersistenceFacade.getInstance().asString(it.reference) }.toSet()
            is SearchScopeResolution.Err -> error("expected a resolved scope, got error: ${r.errJson}")
        }
}
