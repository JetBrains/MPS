package jetbrains.mps.agents.mcp.tools.integration

import jetbrains.mps.agents.mcp.tools.*
import jetbrains.mps.agents.mcp.tools.common.*

import com.google.gson.JsonArray
import com.google.gson.JsonNull
import com.google.gson.JsonObject
import com.google.gson.JsonParser
import com.google.gson.JsonPrimitive
import jetbrains.mps.project.MPSProject
import jetbrains.mps.smodel.SModelInternal
import jetbrains.mps.smodel.SNodeUtil
import jetbrains.mps.smodel.adapter.MetaAdapterByDeclaration
import jetbrains.mps.smodel.adapter.ids.MetaIdHelper
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory
import jetbrains.mps.smodel.language.LanguageRegistry
import org.jetbrains.mps.openapi.language.SConcept
import org.jetbrains.mps.openapi.model.SNode
import org.jetbrains.mps.openapi.module.SModule
import org.jetbrains.mps.openapi.persistence.PersistenceFacade
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test
import java.io.File
import java.util.UUID

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

    private val propertyDeclarationFqn = "jetbrains.mps.lang.structure.structure.PropertyDeclaration"

    /** The once-per-response rule line a dry run appends after its plain-name warnings (D81). */
    private val dryRunReferenceRule =
        "A dry run does not look up reference targets given by name, so every name is listed above, " +
            "existing and same-batch nodes included. The write resolves names in each role's scope; " +
            "check fixReferences.stillBroken in its response (or mps_mcp_check_root_node_problems)."

    /** A top-level-array blueprint of named `ConceptDeclaration` roots. */
    private fun conceptArrayJson(names: List<String>): String =
        names.joinToString(
            prefix = "[", postfix = "]",
        ) { """{ "concept": "$conceptDeclarationFqn", "properties": [ { "name": "name", "value": "$it" } ] }""" }

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
    fun `create_root_node builds from concept when conceptReference names an invented language`() {
        // Before the fix the invented reference won and failed as "not a rootable concept".
        val response = runTool(toolset) {
            it.mps_mcp_create_root_node(
                modelReference = structureModelRef,
                concept = conceptDeclarationFqn,
                conceptReference = inventedLanguageConceptRef(conceptDeclarationFqn),
                name = "FromConceptName",
            )
        }
        expectOk(response)
        readOnRepo {
            val match = structureModel.rootNodes.singleOrNull { it.name == "FromConceptName" }
            assertEquals(conceptByName(conceptDeclarationFqn), match?.concept)
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
    fun `insert_root_node_from_json names modelReference when the caller sent modelRef`() {
        // D43, round 8 S1:109: `modelRef` is the blob-key spelling of the same idea, so it is the
        // natural guess — and the bridge used to drop it with a message that never said so.
        val rootsBefore = structureRoots().size
        val response = callThroughBridge(
            toolset, "mps_mcp_insert_root_node_from_json",
            mapOf(
                "modelRef" to kotlinx.serialization.json.JsonPrimitive(structureModelRef),
                "json" to kotlinx.serialization.json.JsonPrimitive("""{"concept":"jetbrains.mps.lang.structure.structure.ConceptDeclaration"}"""),
            ),
        )
        val obj = JsonParser.parseString(response).asJsonObject
        assertFalse("expected error envelope: $response", obj.get("ok").asBoolean)
        assertEquals("INVALID_REQUEST", obj.get("code").asString)
        assertEquals(listOf("modelReference"), obj.getAsJsonObject("details").getAsJsonArray("missingParameters").map { it.asString })
        val error = obj.get("error").asString
        assertTrue("must name the key and the dropped spelling: $error",
            error.startsWith("modelReference is required.") && error.contains("'modelRef'"))
        assertEquals("nothing may be inserted", rootsBefore, structureRoots().size)
    }

    @Test
    fun `insert_root_node_from_json with single object inserts one root`() {
        val json = """
            {
              "concept": "$conceptDeclarationFqn",
              "properties": [ { "name": "name", "value": "Single" } ]
            }
        """.trimIndent()

        val response = runTool(toolset) {
            it.mps_mcp_insert_root_node_from_json(structureModelRef, JsonOrText(json), dryRun = false)
        }
        val data = expectOk(response)
        assertEquals("Single", data.get("name").asString)

        readOnRepo {
            assertEquals(1, structureModel.rootNodes.count { it.name == "Single" })
        }
    }

    // ── blueprint list fields given as objects (D87) ─────────────────────────────────────

    private val blueprintShapeSentence =
        "Blueprint fields are arrays, not maps: properties:[{name,value}], references:[{role,target}], " +
            "children:[{role,nodes:[…]}] (mps-node-editing references/json-format.md)."

    /** Inserts [json] and returns the rejection message, asserting that no root was added. */
    private fun rejectedInsert(json: String): String {
        val rootsBefore = readOnRepo { structureModel.rootNodes.count() }
        val msg = expectErr(runTool(toolset) {
            it.mps_mcp_insert_root_node_from_json(structureModelRef, JsonOrText(json), dryRun = false)
        })
        assertEquals("a rejected blueprint must not insert a root: $msg", rootsBefore, readOnRepo { structureModel.rootNodes.count() })
        return msg
    }

    @Test
    fun `insert_root_node_from_json rewrites a properties map into the array form`() {
        val msg = rejectedInsert("""{ "concept": "$conceptDeclarationFqn", "properties": { "name": "MapForm", "conceptId": 10 } }""")
        assertTrue(msg, msg.startsWith("Failed to instantiate node from JSON: 'properties' at $ must be an array of {\"name\",\"value\"} objects, not a map."))
        // A number is echoed as the string the reader accepts.
        assertTrue(msg, msg.contains("""Write it as "properties":[{"name":"name","value":"MapForm"},{"name":"conceptId","value":"10"}]."""))
        assertTrue(msg, msg.endsWith(blueprintShapeSentence))

        // The array form of the same blueprint is accepted.
        expectOk(runTool(toolset) {
            it.mps_mcp_insert_root_node_from_json(structureModelRef, JsonOrText(
                """{ "concept": "$conceptDeclarationFqn", "properties": [ { "name": "name", "value": "MapForm" } ] }"""
            ), dryRun = false)
        })
    }

    @Test
    fun `insert_root_node_from_json never cuts an echoed value inside its quotes`() {
        // The message says "Write it as", so a pasted echo must not store a truncated value with ok:true.
        val medium = "Simmer the oats in milk, stirring until creamy"
        val huge = "x".repeat(250)
        val msg = rejectedInsert("""{ "concept": "$conceptDeclarationFqn", "properties": { "shortDescription": "$medium", "notes": "$huge" } }""")
        assertTrue(msg, msg.contains("""{"name":"shortDescription","value":"$medium"}"""))
        assertTrue(msg, msg.contains("""{"name":"notes","value":…}"""))
        assertFalse(msg, msg.contains("xxxxx"))
    }

    @Test
    fun `insert_root_node_from_json treats a lone name key as a properties map`() {
        val msg = rejectedInsert("""{ "concept": "$conceptDeclarationFqn", "properties": { "name": "LoneName" } }""")
        assertTrue(msg, msg.contains("""not a map. Write it as "properties":[{"name":"name","value":"LoneName"}]."""))
    }

    @Test
    fun `insert_root_node_from_json says wrap it for a single properties entry`() {
        val msg = rejectedInsert("""{ "concept": "$conceptDeclarationFqn", "properties": { "name": "name", "value": "Solo" } }""")
        assertTrue(msg, msg.contains("""'properties' at $ must be a JSON array; this object is a single entry with the [ ] missing: write "properties":[{…}]."""))
        assertFalse("a single entry must not be rewritten as a map: $msg", msg.contains("not a map."))
    }

    @Test
    fun `insert_root_node_from_json says wrap it for a single references entry given by targetReference`() {
        val baseConcept = "r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)/1133920641626"
        val msg = rejectedInsert(
            """{ "concept": "$conceptDeclarationFqn", "properties": [ { "name": "name", "value": "RefSolo" } ],
                 "references": { "role": "extends", "targetReference": "$baseConcept", "declared": true } }"""
        )
        assertTrue(msg, msg.contains("""'references' at $ must be a JSON array; this object is a single entry with the [ ] missing: write "references":[{…}]."""))
    }

    @Test
    fun `insert_root_node_from_json reports a properties map and a children map in one rejection`() {
        val msg = rejectedInsert(
            """{ "concept": "$conceptDeclarationFqn", "properties": { "name": "TwoMaps" },
                 "children": { "propertyDeclaration": [ { "concept": "$propertyDeclarationFqn" } ] } }"""
        )
        assertTrue(msg, msg.contains("'properties' at $ must be an array"))
        // Child blueprints are not echoed, only the role.
        assertTrue(msg, msg.contains("""'children' at $ must be an array of {"role","nodes"} objects, not a map. Write it as "children":[{"role":"propertyDeclaration","nodes":[…]}]."""))
    }

    @Test
    fun `insert_root_node_from_json says a single node still goes in an array`() {
        val msg = rejectedInsert(
            """{ "concept": "$conceptDeclarationFqn", "properties": [ { "name": "name", "value": "NodesObject" } ],
                 "children": [ { "role": "propertyDeclaration", "nodes": { "concept": "$propertyDeclarationFqn" } } ] }"""
        )
        assertTrue(msg, msg.contains("""'nodes' at $.children[0] must be a JSON array, but got an object: a single node still goes in an array, "nodes":[{…}]."""))
        assertFalse(msg, msg.contains("not a map"))

        val stringMsg = rejectedInsert(
            """{ "concept": "$conceptDeclarationFqn", "properties": [ { "name": "name", "value": "NodesString" } ],
                 "children": [ { "role": "propertyDeclaration", "nodes": "amount" } ] }"""
        )
        assertTrue(stringMsg, stringMsg.contains("'nodes' at $.children[0] must be a JSON array of node blueprints, but got a string."))
    }

    @Test
    fun `update_root_node_from_json rejects a properties map and leaves the root unchanged`() {
        expectOk(runTool(toolset) {
            it.mps_mcp_insert_root_node_from_json(structureModelRef, JsonOrText(
                """{ "concept": "$conceptDeclarationFqn", "properties": [ { "name": "name", "value": "KeepMe" } ],
                     "children": [ { "role": "propertyDeclaration", "nodes": [ { "concept": "$propertyDeclarationFqn",
                       "properties": [ { "name": "name", "value": "kept" } ] } ] } ] }"""
            ), dryRun = false)
        })
        val rootRef = readOnRepo {
            PersistenceFacade.getInstance().asString(structureModel.rootNodes.single { it.name == "KeepMe" }.reference)
        }
        val msg = expectErr(runTool(toolset) {
            it.mps_mcp_update_root_node_from_json(rootRef, JsonOrText(
                """{ "concept": "$conceptDeclarationFqn", "properties": { "name": "Renamed" } }"""
            ), dryRun = false)
        })
        assertTrue(msg, msg.contains("""'properties' at $ must be an array of {"name","value"} objects, not a map."""))
        readOnRepo {
            val root = structureModel.rootNodes.single { PersistenceFacade.getInstance().asString(it.reference) == rootRef }
            assertEquals("KeepMe", root.name)
            assertEquals("a rejected rewrite must keep the children", 1, root.children.count { it.containmentLink?.name == "propertyDeclaration" })
        }
    }

    @Test
    fun `update_root_node_from_json reports a references map before a children map`() {
        // The update path checks children before references; the rejection still lists the fields in blueprint order.
        expectOk(runTool(toolset) {
            it.mps_mcp_insert_root_node_from_json(structureModelRef, JsonOrText(
                """{ "concept": "$conceptDeclarationFqn", "properties": [ { "name": "name", "value": "OrderedMaps" } ] }"""
            ), dryRun = false)
        })
        val rootRef = readOnRepo {
            PersistenceFacade.getInstance().asString(structureModel.rootNodes.single { it.name == "OrderedMaps" }.reference)
        }
        val baseConcept = "r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)/1133920641626"
        val msg = expectErr(runTool(toolset) {
            it.mps_mcp_update_root_node_from_json(rootRef, JsonOrText(
                """{ "concept": "$conceptDeclarationFqn", "properties": [ { "name": "name", "value": "OrderedMaps" } ],
                     "references": { "extends": "$baseConcept" },
                     "children": { "propertyDeclaration": [ { "concept": "$propertyDeclarationFqn" } ] } }"""
            ), dryRun = false)
        })
        val references = msg.indexOf("'references' at $ must be an array")
        val children = msg.indexOf("'children' at $ must be an array")
        assertTrue(msg, references >= 0 && children >= 0)
        assertTrue("references must be reported before children: $msg", references < children)
        assertFalse(msg, msg.contains("'properties' at $"))
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
            it.mps_mcp_insert_root_node_from_json(structureModelRef, JsonOrText(json), dryRun = false)
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
            it.mps_mcp_insert_root_node_from_json(structureModelRef, JsonOrText(json), dryRun = false)
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
            it.mps_mcp_insert_root_node_from_json(structureModelRef, JsonOrText(json), dryRun = false)
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
            it.mps_mcp_insert_root_node_from_json(structureModelRef, JsonOrText(json), dryRun = false)
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
    fun `insert_root_node_from_json summarizes a batch of ten or more roots by default`() {
        // R4 / study hotspot 5: the full form answered a 63 KB blueprint with 33 KB of node
        // envelopes, `conceptDoc` repeated per root.
        val names = (1..10).map { "BulkSummary$it" }
        val response = runTool(toolset) {
            it.mps_mcp_insert_root_node_from_json(structureModelRef, JsonOrText(conceptArrayJson(names)), dryRun = false)
        }

        val data = expectOk(response)
        assertEquals(10, data.get("inserted").asInt)
        val roots = data.getAsJsonArray("roots").map { it.asJsonObject }
        assertEquals(names, roots.map { it.get("name").asString })
        for (root in roots) {
            assertEquals(
                "a summary entry is {name, reference, concept}: $root",
                setOf("name", "reference", "concept"), root.keySet(),
            )
        }
        assertTrue("the summary must keep the aggregate fix-references counters: $data", data.has("fixReferences"))
        assertEquals(0, data.getAsJsonObject("fixReferences").get("stillBroken").asInt)

        readOnRepo {
            val present = structureModel.rootNodes.mapNotNull { it.name }.toSet()
            assertTrue("every summarized root must really exist: $present", present.containsAll(names))
        }
    }

    @Test
    fun `insert_root_node_from_json responseDetail full forces the per-root envelopes`() {
        val names = (1..10).map { "BulkFull$it" }
        val response = runTool(toolset) {
            it.mps_mcp_insert_root_node_from_json(
                structureModelRef, JsonOrText(conceptArrayJson(names)), dryRun = false, responseDetail = "full",
            )
        }

        val arr = parseDataArray(response)
        assertEquals(10, arr.size())
        for (entry in arr.map { it.asJsonObject }) {
            assertTrue("responseDetail=full keeps the complete node envelope: $entry", entry.has("conceptDoc"))
            assertTrue("responseDetail=full keeps the per-root fixReferences: $entry", entry.has("fixReferences"))
        }
    }

    @Test
    fun `insert_root_node_from_json keeps the full envelopes for a small batch and summarizes on request`() {
        val small = runTool(toolset) {
            it.mps_mcp_insert_root_node_from_json(structureModelRef, JsonOrText(conceptArrayJson(listOf("SmallA", "SmallB"))), dryRun = false)
        }
        val arr = parseDataArray(small)
        assertEquals(2, arr.size())
        assertTrue("below ten roots the default stays full: $small", arr.first().asJsonObject.has("conceptDoc"))

        val requested = runTool(toolset) {
            it.mps_mcp_insert_root_node_from_json(
                structureModelRef,
                JsonOrText("""{ "concept": "$conceptDeclarationFqn", "properties": [ { "name": "name", "value": "SmallSummary" } ] }"""),
                dryRun = false,
                responseDetail = "summary",
            )
        }
        val data = expectOk(requested)
        assertEquals("summary can be requested for a single root too", 1, data.get("inserted").asInt)
        assertEquals("SmallSummary", data.getAsJsonArray("roots").single().asJsonObject.get("name").asString)
    }

    @Test
    fun `insert_root_node_from_json rejects an unknown responseDetail without inserting`() {
        val before = readOnRepo { structureModel.rootNodes.count() }
        val response = runTool(toolset) {
            it.mps_mcp_insert_root_node_from_json(
                structureModelRef,
                JsonOrText("""{ "concept": "$conceptDeclarationFqn", "properties": [ { "name": "name", "value": "NotInserted" } ] }"""),
                dryRun = false,
                responseDetail = "brief",
            )
        }

        val error = expectErr(response)
        assertTrue("the error must list the allowed values: $error", error.contains("summary") && error.contains("full"))
        assertEquals("nothing may be inserted", before, readOnRepo { structureModel.rootNodes.count() })
    }

    @Test
    fun `insert_root_node_from_json dryRun does not mutate the model`() {
        val before = readOnRepo { structureModel.rootNodes.mapNotNull { it.name }.toSet() }
        val json = """
            { "concept": "$conceptDeclarationFqn", "properties": [ { "name": "name", "value": "DryRoot" } ] }
        """.trimIndent()
        val response = runTool(toolset) {
            it.mps_mcp_insert_root_node_from_json(structureModelRef, JsonOrText(json), dryRun = true)
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

        assertFalse("a blueprint without references must not warn: $response", obj.has("warnings"))

        readOnRepo {
            val after = structureModel.rootNodes.mapNotNull { it.name }.toSet()
            assertEquals("dryRun must not mutate the model", before, after)
        }
    }

    @Test
    fun `insert_root_node_from_json dryRun warns about a reference a real run would make dynamic`() {
        // A bare name does not resolve up front: a real run stores it as a dynamic reference for
        // the fix-references pass, which a dry run skips, so the dry run must not report a plain success.
        val json = """
            { "concept": "$conceptDeclarationFqn",
              "properties": [ { "name": "name", "value": "DryWithRef" } ],
              "references": [ { "role": "extends", "target": "BaseConcept" } ] }
        """.trimIndent()
        val response = runTool(toolset) {
            it.mps_mcp_insert_root_node_from_json(structureModelRef, JsonOrText(json), dryRun = true)
        }
        val obj = JsonParser.parseString(response).asJsonObject
        assertTrue("expected ok envelope: $response", obj.get("ok").asBoolean)
        assertEquals(
            listOf("Dry run at $.references[0]: target 'BaseConcept' is a name, not looked up.", dryRunReferenceRule),
            obj.getAsJsonArray("warnings")?.map { it.asString },
        )
    }

    @Test
    fun `insert_root_node_from_json dryRun explains name targets once however many there are`() {
        // D81: the per-reference line stays short and the rule is appended once, so a bulk blueprint
        // with many name targets does not repeat it. A same-batch name is listed like any other.
        val json = """
            [
              { "concept": "$conceptDeclarationFqn",
                "properties": [ { "name": "name", "value": "RuleOnceA" } ],
                "references": [ { "role": "extends", "target": "BaseConcept" } ] },
              { "concept": "$conceptDeclarationFqn",
                "properties": [ { "name": "name", "value": "RuleOnceB" } ],
                "references": [ { "role": "extends", "target": "RuleOnceA" } ] }
            ]
        """.trimIndent()
        val response = runTool(toolset) {
            it.mps_mcp_insert_root_node_from_json(structureModelRef, JsonOrText(json), dryRun = true)
        }
        val obj = JsonParser.parseString(response).asJsonObject
        assertTrue("expected ok envelope: $response", obj.get("ok").asBoolean)
        assertEquals(
            listOf(
                "Dry run at $.references[0]: target 'BaseConcept' is a name, not looked up.",
                "Dry run at $.references[0]: target 'RuleOnceA' is a name, not looked up.",
                dryRunReferenceRule,
            ),
            obj.getAsJsonArray("warnings")?.map { it.asString },
        )
    }

    @Test
    fun `insert_root_node_from_json dryRun flags a dotted target that matches no root as likely broken`() {
        val json = """
            { "concept": "$conceptDeclarationFqn",
              "properties": [ { "name": "name", "value": "DottedNoMatch" } ],
              "references": [ { "role": "extends", "target": "no.such.Model.NoSuchRoot" } ] }
        """.trimIndent()
        val response = runTool(toolset) {
            it.mps_mcp_insert_root_node_from_json(structureModelRef, JsonOrText(json), dryRun = true)
        }
        val obj = JsonParser.parseString(response).asJsonObject
        assertTrue("expected ok envelope: $response", obj.get("ok").asBoolean)
        assertEquals(
            listOf("Dry run at $.references[0]: target 'no.such.Model.NoSuchRoot' matches no Model.Root and no root of that name; " +
                "it will very likely stay broken. Use an r:/i: reference, or Model.Root with the model's long name."),
            obj.getAsJsonArray("warnings")?.map { it.asString },
        )
    }

    @Test
    fun `insert_root_node_from_json dryRun warns about a stale node id that the real insert leaves broken`() {
        // D81: a well-formed r: ref that names no node used to pass a dry run silently. Pin both halves:
        // the dry run warns, and the real insert of the same blueprint reports it stillBroken.
        val existing = createConceptRoot("StaleIdTarget")
        val staleRef = existing.substringBeforeLast('/') + "/9187654321098765"
        val json = """
            { "concept": "$conceptDeclarationFqn",
              "properties": [ { "name": "name", "value": "StaleIdOwner" } ],
              "references": [ { "role": "extends", "target": "$staleRef" } ] }
        """.trimIndent()
        val dry = JsonParser.parseString(runTool(toolset) {
            it.mps_mcp_insert_root_node_from_json(structureModelRef, JsonOrText(json), dryRun = true)
        }).asJsonObject
        assertTrue("expected ok envelope: $dry", dry.get("ok").asBoolean)
        assertEquals(
            listOf("Dry run at $.references[0]: target '$staleRef' names no node; the write will leave it broken."),
            dry.getAsJsonArray("warnings")?.map { it.asString },
        )

        val data = expectOk(runTool(toolset) {
            it.mps_mcp_insert_root_node_from_json(structureModelRef, JsonOrText(json), dryRun = false)
        })
        assertEquals("the stale id must be reported broken: $data", 1, data.getAsJsonObject("fixReferences").get("stillBroken").asInt)
    }

    @Test
    fun `insert_root_node_from_json with invalid JSON returns INVALID_JSON envelope`() {
        val response = runTool(toolset) {
            it.mps_mcp_insert_root_node_from_json(structureModelRef, JsonOrText("{ not really JSON"), dryRun = false)
        }
        val envelope = JsonParser.parseString(response).asJsonObject
        assertFalse(envelope.get("ok").asBoolean)
        assertEquals("INVALID_JSON", envelope.get("code").asString)
    }

    @Test
    fun `insert_root_node_from_json diagnoses incomplete nested child without inserting`() {
        val before = structureRoots().size
        val prefix = """[{"concept":"$conceptDeclarationFqn"},""" +
                """{"concept":"$conceptDeclarationFqn","children":[{"role":"propertyDeclaration","nodes":[""" +
                """{"concept":"$propertyDeclarationFqn","properties":[{"name":"name","value":""""
        val json = prefix + "x".repeat(1245 - prefix.length)

        val response = runTool(toolset) {
            it.mps_mcp_insert_root_node_from_json(structureModelRef, JsonOrText(json), dryRun = false)
        }

        assertIncompleteJson(response, json.length, expectedColumn = json.length + 1)
        assertEquals("parse failure must not insert any root", before, structureRoots().size)
    }

    @Test
    fun `insert_root_node_from_json builds a child from concept when its conceptReference language is invented`() {
        val invented = UUID.randomUUID()
        val badRef = inventedLanguageConceptRef(propertyDeclarationFqn, invented)
        val response = runTool(toolset) {
            it.mps_mcp_insert_root_node_from_json(structureModelRef, JsonOrText(conceptWithPropertyChild("InventedLangPair", propertyDeclarationFqn, badRef)), dryRun = false)
        }
        val obj = JsonParser.parseString(response).asJsonObject
        assertTrue("expected ok envelope: $response", obj.get("ok").asBoolean)
        val warnings = obj.getAsJsonArray("warnings")?.map { it.asString }.orEmpty()
        assertTrue("a warning must name the ignored reference: $warnings", warnings.any { it.contains(badRef) })
        readOnRepo {
            val root = structureModel.rootNodes.single { it.name == "InventedLangPair" }
            assertEquals(conceptByName(propertyDeclarationFqn), root.children.single().concept)
        }
        assertLanguageNotImported(invented)
    }

    @Test
    fun `insert_root_node_from_json rejects a child whose only conceptReference language is invented`() {
        val invented = UUID.randomUUID()
        val before = structureRoots().size
        val response = runTool(toolset) {
            it.mps_mcp_insert_root_node_from_json(structureModelRef, JsonOrText(conceptWithPropertyChild("InventedLangOnly", null, inventedLanguageConceptRef(propertyDeclarationFqn, invented))), dryRun = false)
        }
        assertConceptReferenceNotFound(expectErr(response))
        assertEquals("a failed insert must not add a root", before, structureRoots().size)
        assertLanguageNotImported(invented)
    }

    @Test
    fun `insert_root_node_from_json dryRun reports an invented-language conceptReference as not found`() {
        val invented = UUID.randomUUID()
        val response = runTool(toolset) {
            it.mps_mcp_insert_root_node_from_json(structureModelRef, JsonOrText(conceptWithPropertyChild("InventedLangDry", null, inventedLanguageConceptRef(propertyDeclarationFqn, invented))), dryRun = true)
        }
        assertConceptReferenceNotFound(expectErr(response))
        assertLanguageNotImported(invented)
    }

    @Test
    fun `insert_root_node_from_json builds a child from concept when its conceptReference concept id is invented`() {
        // A real language id with an unused concept id: the registered-language path used to keep it
        // as a last-resort fallback even though it has no descriptor.
        val badRef = inventedConceptIdRef()
        val response = runTool(toolset) {
            it.mps_mcp_insert_root_node_from_json(structureModelRef, JsonOrText(conceptWithPropertyChild("InventedIdPair", propertyDeclarationFqn, badRef)), dryRun = false)
        }
        val obj = JsonParser.parseString(response).asJsonObject
        assertTrue("expected ok envelope: $response", obj.get("ok").asBoolean)
        val warnings = obj.getAsJsonArray("warnings")?.map { it.asString }.orEmpty()
        assertTrue("a warning must name the ignored reference: $warnings", warnings.any { it.contains(badRef) })
        readOnRepo {
            val root = structureModel.rootNodes.single { it.name == "InventedIdPair" }
            assertEquals(conceptByName(propertyDeclarationFqn), root.children.single().concept)
        }
    }

    @Test
    fun `insert_root_node_from_json rejects a child whose only conceptReference concept id is invented`() {
        val before = structureRoots().size
        val response = runTool(toolset) {
            it.mps_mcp_insert_root_node_from_json(structureModelRef, JsonOrText(conceptWithPropertyChild("InventedIdOnly", null, inventedConceptIdRef())), dryRun = false)
        }
        // Before the fix the descriptor-less concept won and failed the child role check instead.
        assertConceptReferenceNotFound(expectErr(response))
        assertEquals("a failed insert must not add a root", before, structureRoots().size)
    }

    @Test
    fun `insert_root_node_from_json resolves a child from a real conceptReference alone`() {
        val realRef = readOnRepo { PersistenceFacade.getInstance().asString(conceptByName(propertyDeclarationFqn)) }
        val response = runTool(toolset) {
            it.mps_mcp_insert_root_node_from_json(structureModelRef, JsonOrText(conceptWithPropertyChild("RealRefOnly", null, realRef)), dryRun = false)
        }
        val obj = JsonParser.parseString(response).asJsonObject
        assertTrue("expected ok envelope: $response", obj.get("ok").asBoolean)
        assertFalse("a resolving reference must not warn: $response", obj.has("warnings"))
        readOnRepo {
            val root = structureModel.rootNodes.single { it.name == "RealRefOnly" }
            assertEquals(conceptByName(propertyDeclarationFqn), root.children.single().concept)
        }
    }

    @Test
    fun `insert_root_node_from_json resolves a conceptReference declared in an unbuilt language`() {
        // The concept exists only as a declaration in the never-built fixture language, so it resolves
        // through the structure model and its language through the Language module, not the registry.
        val conceptName = "UnbuiltRootable${System.nanoTime()}"
        val declaration = createRootableConcept(conceptName)
        val conceptRef = readOnRepo { PersistenceFacade.getInstance().asString(MetaAdapterByDeclaration.getConcept(declaration)) }
        val solution = createSolution()
        val target = createModel(solution, "test.unbuiltref${System.nanoTime()}")

        val response = runTool(toolset) {
            it.mps_mcp_insert_root_node_from_json(modelRefOf(target), JsonOrText("""{ "conceptReference": "$conceptRef" }"""), dryRun = false)
        }
        expectOk(response)
        readOnRepo {
            val root = target.rootNodes.single()
            assertEquals(conceptName, root.concept.name)
            val imported = (target as SModelInternal).importedLanguageIds()
                .single { it.sourceModuleReference.moduleId == language.moduleReference.moduleId }
            assertEquals(language.moduleName, imported.qualifiedName)
        }
    }

    @Test
    fun `insert_root_node_from_json refuses a concept whose kept languageId no loaded language owns`() {
        // A concept moved between languages keeps its old `languageId`. Its declaration still resolves,
        // but the concept's language is then an id nobody owns, and importing it would persist an
        // invented language: the write-site guard in AbstractNodeOps.createNode must refuse, on a dry run too.
        val keptLanguage = UUID.randomUUID()
        val conceptName = "MovedRootable${System.nanoTime()}"
        val declaration = createRootableConcept(conceptName)
        executeCommand { declaration.setProperty(SNodeUtil.property_AbstractConcept_LangId, keptLanguage.toString()) }
        val conceptRef = readOnRepo { PersistenceFacade.getInstance().asString(MetaAdapterByDeclaration.getConcept(declaration)) }
        val solution = createSolution()
        val target = createModel(solution, "test.movedref${System.nanoTime()}")

        for (dryRun in listOf(true, false)) {
            val response = runTool(toolset) {
                it.mps_mcp_insert_root_node_from_json(modelRefOf(target), JsonOrText("""{ "conceptReference": "$conceptRef" }"""), dryRun = dryRun)
            }
            val err = expectErr(response)
            assertTrue("dryRun=$dryRun must name the unloaded language: $err", err.contains("is not a loaded language"))
        }
        readOnRepo {
            assertTrue("a refused insert must not add a root", target.rootNodes.none())
            val ids = (target as SModelInternal).importedLanguageIds().map { MetaIdHelper.getLanguage(it).idValue }
            assertFalse("the kept language id must not be imported: $ids", ids.contains(keptLanguage))
        }
    }

    /** Creates a rootable `ConceptDeclaration` named [name] in the fixture's structure model and returns it. */
    private fun createRootableConcept(name: String): SNode {
        val params = """
            { "structureModelRef": "$structureModelRef",
              "conceptsJson": [ { "name": "$name", "rootable": true } ] }
        """.trimIndent()
        expectOk(runTool { it.mps_mcp_alter_structure(MPSStructureAlterOperation.CREATE_CONCEPTS, params) })
        return readOnRepo { structureModel.rootNodes.single { it.name == name } }
    }

    private fun assertConceptReferenceNotFound(err: String) =
        assertTrue("expected the concept-reference not-found failure: $err", err.contains("Concept reference '") && err.contains("not found"))

    /** A `ConceptDeclaration` root named [rootName] with one `propertyDeclaration` child. */
    private fun conceptWithPropertyChild(rootName: String, childConcept: String?, childConceptReference: String): String {
        val child = JsonObject().apply {
            childConcept?.let { addProperty("concept", it) }
            addProperty("conceptReference", childConceptReference)
            add("properties", JsonParser.parseString("""[{"name":"name","value":"p"}]"""))
        }
        return """
            { "concept": "$conceptDeclarationFqn",
              "properties": [ { "name": "name", "value": "$rootName" } ],
              "children": [ { "role": "propertyDeclaration", "nodes": [ $child ] } ] }
        """.trimIndent()
    }

    /** A `c:` reference to [conceptFqn]'s real concept id under a language id no module owns. */
    private fun inventedLanguageConceptRef(conceptFqn: String, language: UUID = UUID.randomUUID()): String = readOnRepo {
        val real = conceptByName(conceptFqn)
        PersistenceFacade.getInstance().asString(
            MetaAdapterFactory.getConcept(
                language.mostSignificantBits, language.leastSignificantBits,
                MetaIdHelper.getConcept(real).idValue, conceptFqn,
            )
        )
    }

    /** A `c:` reference under the real `jetbrains.mps.lang.structure` language id with an unused concept id. */
    private fun inventedConceptIdRef(): String = readOnRepo {
        val structureLanguageId = MetaIdHelper.getLanguage(conceptByName(propertyDeclarationFqn).language).idValue
        PersistenceFacade.getInstance().asString(
            MetaAdapterFactory.getConcept(
                structureLanguageId.mostSignificantBits, structureLanguageId.leastSignificantBits,
                0x7ffffff0_0000_0001L, "jetbrains.mps.lang.structure.structure.NoSuchConcept${System.nanoTime()}",
            )
        )
    }

    private fun conceptByName(conceptFqn: String): SConcept =
        LanguageRegistry.getInstance(myProject.repository).getLanguage("jetbrains.mps.lang.structure")!!
            .concepts.single { "${it.language.qualifiedName}.structure.${it.name}" == conceptFqn } as SConcept

    private fun assertLanguageNotImported(language: UUID) = readOnRepo {
        val ids = (structureModel as SModelInternal).importedLanguageIds().map { MetaIdHelper.getLanguage(it).idValue }
        assertFalse("invented language $language must not be imported: $ids", ids.contains(language))
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
            it.mps_mcp_insert_root_node_from_json(structureModelRef, JsonOrText(json), dryRun = false)
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
            it.mps_mcp_insert_root_node_from_json(structureModelRef, JsonOrText(json), dryRun = false)
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
            it.mps_mcp_update_root_node_from_json(rootRef, JsonOrText(json), dryRun = false)
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
            it.mps_mcp_update_root_node_from_json(rootRef, JsonOrText(json), dryRun = false)
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
            it.mps_mcp_update_root_node_from_json(rootRef, JsonOrText(json), dryRun = true)
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

        assertFalse("a blueprint without references must not warn: $response", obj.has("warnings"))

        readOnRepo {
            val node = PersistenceFacade.getInstance().createNodeReference(rootRef).resolve(structureModel.repository)
            assertEquals("KeepMe", node!!.name)
        }
    }

    @Test
    fun `update_root_node_from_json dryRun warns about a stale node id`() {
        // Top-level references are staged in updateNodeFromBlueprint, not applyReferenceUpdate, so the
        // stale-pointer branch there needs its own check.
        val rootRef = createConceptRoot("StaleIdUpdateOwner")
        val staleRef = rootRef.substringBeforeLast('/') + "/9187654321098766"
        val json = """
            { "concept": "$conceptDeclarationFqn",
              "properties": [ { "name": "name", "value": "StaleIdUpdateOwner" } ],
              "references": [ { "role": "extends", "target": "$staleRef" } ] }
        """.trimIndent()
        val obj = JsonParser.parseString(runTool(toolset) {
            it.mps_mcp_update_root_node_from_json(rootRef, JsonOrText(json), dryRun = true)
        }).asJsonObject
        assertTrue("expected ok envelope: $obj", obj.get("ok").asBoolean)
        assertEquals(
            listOf("Dry run at $.references[0]: target '$staleRef' names no node; the write will leave it broken."),
            obj.getAsJsonArray("warnings")?.map { it.asString },
        )
    }

    @Test
    fun `update_root_node_from_json dryRun warns about a reference a real run would make dynamic`() {
        // Top-level references are staged outside applyReferenceUpdate, so they need their own
        // warning to match the staged children's, which go through AbstractNodeOps.createNode.
        val rootRef = createConceptRoot("KeepMeToo")
        val json = """
            { "concept": "$conceptDeclarationFqn",
              "properties": [ { "name": "name", "value": "KeepMeToo" } ],
              "references": [ { "role": "extends", "target": "BaseConcept" } ] }
        """.trimIndent()
        val response = runTool(toolset) {
            it.mps_mcp_update_root_node_from_json(rootRef, JsonOrText(json), dryRun = true)
        }
        val obj = JsonParser.parseString(response).asJsonObject
        assertTrue("expected ok envelope: $response", obj.get("ok").asBoolean)
        assertEquals(
            listOf("Dry run at $.references[0]: target 'BaseConcept' is a name, not looked up.", dryRunReferenceRule),
            obj.getAsJsonArray("warnings")?.map { it.asString },
        )
    }

    @Test
    fun `update_root_node_from_json accepts a one-object array`() {
        val rootRef = createConceptRoot("ArrayUpdateBefore")
        val json = """[{"concept":"$conceptDeclarationFqn","properties":[{"name":"name","value":"ArrayUpdateAfter"}]}]"""

        val response = runTool(toolset) {
            it.mps_mcp_update_root_node_from_json(rootRef, JsonOrText(json), dryRun = false)
        }

        assertEquals("ArrayUpdateAfter", expectOk(response).get("name").asString)
        assertEquals("ArrayUpdateAfter", readOnRepo {
            PersistenceFacade.getInstance().createNodeReference(rootRef).resolve(structureModel.repository)!!.name
        })
    }

    @Test
    fun `update_root_node_from_json diagnoses incomplete top-level array without mutation`() {
        val rootRef = createConceptRoot("UnchangedAfterBadArray")
        val json = """[{"concept":"$conceptDeclarationFqn","properties":[]}"""

        val response = runTool(toolset) {
            it.mps_mcp_update_root_node_from_json(rootRef, JsonOrText(json), dryRun = false)
        }

        assertIncompleteJson(response, json.length, expectedColumn = json.length + 1)
        assertEquals("UnchangedAfterBadArray", readOnRepo {
            PersistenceFacade.getInstance().createNodeReference(rootRef).resolve(structureModel.repository)!!.name
        })
    }

    @Test
    fun `root JSON distinguishes inline boundary from temp-file input`() {
        val minimal = """{"concept":"$conceptDeclarationFqn"}"""
        val inlineAtLimit = minimal.padEnd(4096, ' ')
        val accepted = runTool(toolset) {
            it.mps_mcp_insert_root_node_from_json(structureModelRef, JsonOrText(inlineAtLimit), dryRun = true)
        }
        assertTrue(
            "4096 valid inline characters must reach parsing: $accepted",
            JsonParser.parseString(accepted).asJsonObject.get("ok").asBoolean,
        )

        val inlineOverLimit = minimal.padEnd(4097, ' ')
        val rejected = runTool(toolset) {
            it.mps_mcp_insert_root_node_from_json(structureModelRef, JsonOrText(inlineOverLimit), dryRun = true)
        }
        assertTrue(expectErr(rejected).contains("Direct JSON input is too large (4097 chars)"))

        val validFile = File.createTempFile("mps-root-valid-", ".json")
        val incompleteFile = File.createTempFile("mps-root-incomplete-", ".json")
        try {
            validFile.writeText(minimal.padEnd(4200, ' '))
            val fromFile = runTool(toolset) {
                it.mps_mcp_insert_root_node_from_json(structureModelRef, JsonOrText(validFile.absolutePath), dryRun = true)
            }
            assertTrue(
                "valid file over 4096 characters must work: $fromFile",
                JsonParser.parseString(fromFile).asJsonObject.get("ok").asBoolean,
            )

            val incomplete = ("""{"concept":"$conceptDeclarationFqn","properties":[{"name":"name","value":"""" +
                    "x".repeat(4200)).take(4200)
            incompleteFile.writeText(incomplete)
            val malformedFromFile = runTool(toolset) {
                it.mps_mcp_insert_root_node_from_json(structureModelRef, JsonOrText(incompleteFile.absolutePath), dryRun = true)
            }
            assertIncompleteJson(malformedFromFile, incomplete.length, expectedColumn = incomplete.length + 1)
        } finally {
            validFile.delete()
            incompleteFile.delete()
        }
    }

    @Test
    fun `update_root_node_from_json reports NOT_FOUND for unknown node`() {
        val response = runTool(toolset) {
            it.mps_mcp_update_root_node_from_json(
                "r:00000000-0000-0000-0000-000000000000(ghost)/0",
                JsonOrText("""{ "concept": "$conceptDeclarationFqn" }"""),
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
        val response = runTool(toolset) { it.mps_mcp_search_root_node_by_name(JsonOrText("Findable")) }
        val arr = parseDataArray(response)
        val names = arr.map { it.asJsonObject.get("name").asString }
        assertTrue("results must contain the created concept: $names", names.contains("Findable"))
    }

    @Test
    fun `search_root_node_by_name accepts a JSON array of names`() {
        createConceptRoot("LookupA")
        createConceptRoot("LookupB")
        val response = runTool(toolset) {
            it.mps_mcp_search_root_node_by_name(JsonOrText("""["LookupA","LookupB"]"""))
        }
        val names = parseDataArray(response).map { it.asJsonObject.get("name").asString }.toSet()
        assertTrue("results must contain both names: $names",
            names.containsAll(setOf("LookupA", "LookupB")))
    }

    @Test
    fun `search_root_node_by_name returns empty array when nothing matches`() {
        val response = runTool(toolset) { it.mps_mcp_search_root_node_by_name(JsonOrText("DefinitelyNotARealConceptName")) }
        val arr = parseDataArray(response)
        assertEquals(0, arr.size())
    }

    @Test
    fun `search_root_node_by_name rejects a blank or missing names instead of answering an empty array`() {
        // A blank `names` used to answer ok:true with `[]`, which reads as "no such root" rather
        // than "you did not say what to look for" — and `null` decodes to the empty string, so a
        // caller who sent the wrong key (name/q/searchTexts) hit exactly this. D43: this is now the
        // shared rejectMissingParameters path, checked before any MPS work runs.
        for (blank in listOf(JsonOrText(""), JsonOrText("   "))) {
            val response = runTool(toolset) { it.mps_mcp_search_root_node_by_name(blank) }
            val obj = JsonParser.parseString(response).asJsonObject
            assertFalse("blank names must be rejected: $response", obj.get("ok").asBoolean)
            assertEquals("INVALID_REQUEST", obj.get("code").asString)
            assertEquals(
                listOf("names"),
                obj.getAsJsonObject("details").getAsJsonArray("missingParameters").map { it.asString },
            )
            val error = obj.get("error").asString
            assertTrue("$error must name the key", error.startsWith("names is required."))
            assertTrue("$error must offer the retry line", error.contains("Retry with names set to"))
        }
    }

    @Test
    fun `search_root_node_by_name rejects a JSON array of only-blank names after parsing`() {
        // names.text is a nonblank JSON array here, so rejectMissingParameters (which only sees
        // the raw text) lets it through; the tool's own residual check catches the parsed-empty
        // set once parseStringOrJsonArray discards every blank entry.
        val response = runTool(toolset) { it.mps_mcp_search_root_node_by_name(JsonOrText("""["", "  "]""")) }
        val obj = JsonParser.parseString(response).asJsonObject
        assertFalse("an all-blank names array must be rejected: $response", obj.get("ok").asBoolean)
        assertEquals("INVALID_REQUEST", obj.get("code").asString)
        val error = obj.get("error").asString
        assertTrue("$error must explain why", error.contains("resolved to no usable name"))
        assertTrue("$error must offer the retry line", error.contains("Retry with names set to"))
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
            val response = runTool(toolset) { it.mps_mcp_search_root_node_by_name(JsonOrText("ScopedFindable"), scope) }
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

    @Test
    fun `explicit scopes reject every missing empty or malformed selector`() {
        val rootRef = createConceptRoot("ScopeShapeRoot")
        readOnRepo {
            val moduleRef = PersistenceFacade.getInstance().asString(language.moduleReference)
            val validRefs = mapOf("models" to structureModelRef, "modules" to moduleRef, "roots" to rootRef)
            for ((scope, validRef) in validRefs) {
                val invalidParameters = listOf(
                    JsonObject(),
                    JsonObject().apply { add(scope, JsonNull.INSTANCE) },
                    JsonObject().apply { add(scope, JsonObject()) },
                    JsonObject().apply { addProperty(scope, 42) },
                    JsonObject().apply { addProperty(scope, true) },
                    JsonObject().apply { add(scope, JsonArray()) },
                    JsonObject().apply { addProperty(scope, "  ") },
                )
                for (params in invalidParameters) {
                    assertInvalidScope(scopeProbe.errorFor(myProject, scope, params), scope)
                }

                val invalidElements = listOf(
                    JsonNull.INSTANCE,
                    JsonObject(),
                    JsonArray(),
                    JsonPrimitive(42),
                    JsonPrimitive(true),
                    JsonPrimitive("  "),
                )
                for (invalidElement in invalidElements) {
                    val params = JsonObject().apply {
                        add(scope, JsonArray().apply {
                            add(validRef)
                            add(invalidElement)
                        })
                    }
                    assertInvalidScope(scopeProbe.errorFor(myProject, scope, params), "$scope[1]")
                }
            }
        }
    }

    @Test
    fun `explicit scopes reject every unresolved reference without narrowing to a subset`() {
        val rootRef = createConceptRoot("ScopeResolutionRoot")
        readOnRepo {
            val moduleRef = PersistenceFacade.getInstance().asString(language.moduleReference)
            val refs = mapOf("models" to structureModelRef, "modules" to moduleRef, "roots" to rootRef)
            for ((scope, validRef) in refs) {
                val missingRef = "definitely.missing.$scope"
                val combinations = listOf(
                    listOf(validRef, missingRef),
                    listOf(missingRef, validRef),
                    listOf(missingRef),
                )
                for (combination in combinations) {
                    val params = JsonObject().apply {
                        add(scope, JsonArray().apply { combination.forEach { add(it) } })
                    }
                    val error = scopeProbe.errorFor(myProject, scope, params)
                    assertInvalidScope(error, scope)
                    assertTrue("error must name the unresolved reference: $error", error!!.contains(missingRef))
                }
            }
        }
    }

    @Test
    fun `explicit scopes accept bare arrays duplicates and aliases of the same target`() {
        val rootName = "ScopeAliasRoot"
        val rootRef = createConceptRoot(rootName)
        val childRef = addScopePropertyChild(rootRef)
        readOnRepo {
            val facade = PersistenceFacade.getInstance()
            val moduleRef = facade.asString(language.moduleReference)
            val aliases = mapOf(
                "models" to (structureModelRef to structureModel.name.longName),
                "modules" to (moduleRef to language.moduleName!!),
                "roots" to (rootRef to rootName),
            )
            for ((scope, refs) in aliases) {
                val accepted = listOf(
                    JsonPrimitive(refs.first),
                    JsonArray().apply { add(refs.first) },
                    JsonArray().apply {
                        add(refs.first)
                        add(refs.first)
                    },
                    JsonArray().apply {
                        add(refs.first)
                        add(refs.second)
                    },
                )
                for (value in accepted) {
                    val params = JsonObject().apply { add(scope, value) }
                    val expected = when (scope) {
                        "models" -> setOf(structureModelRef)
                        "modules" -> setOf(moduleRef)
                        else -> setOf(rootRef)
                    }
                    assertEquals(
                        "scope=$scope must resolve exactly the requested target for $value",
                        expected,
                        scopeProbe.selectedRefsFor(myProject, scope, params),
                    )
                }
            }

            val childParams = JsonObject().apply { addProperty("roots", childRef) }
            assertEquals(
                "a child selector must confine the scope to its containing root",
                setOf(rootRef),
                scopeProbe.selectedRefsFor(myProject, "roots", childParams),
            )
        }
    }

    @Test
    fun `explicit scopes preserve two distinct valid targets`() {
        val firstRootRef = createConceptRoot("ScopePairFirst")
        val secondRootRef = createConceptRoot("ScopePairSecond")
        val secondSolution = createSolution()
        val secondModel = createModel(secondSolution, "scope.pair.model${System.nanoTime()}")

        readOnRepo {
            val facade = PersistenceFacade.getInstance()
            val firstModuleRef = facade.asString(language.moduleReference)
            val secondModuleRef = facade.asString(secondSolution.moduleReference)
            val selectors = mapOf(
                "models" to listOf(structureModelRef, facade.asString(secondModel.reference)),
                "modules" to listOf(firstModuleRef, secondModuleRef),
                "roots" to listOf(firstRootRef, secondRootRef),
            )
            for ((scope, references) in selectors) {
                val params = JsonObject().apply {
                    add(scope, JsonArray().apply { references.forEach { add(it) } })
                }
                assertEquals(
                    "scope=$scope must preserve both requested targets",
                    references.toSet(),
                    scopeProbe.selectedRefsFor(myProject, scope, params),
                )
            }
        }
    }

    @Test
    fun `root name search rejects partial scope resolution and an encoded empty array`() {
        createConceptRoot("ScopedRootSearch")
        val partial = runTool(toolset) {
            it.mps_mcp_search_root_node_by_name(
                JsonOrText("ScopedRootSearch"),
                scope = "models",
                models = JsonOrText("[\"$structureModelRef\",\"definitely.missing.model\"]"),
            )
        }
        assertInvalidScope(partial, "definitely.missing.model")
        assertFalse(JsonParser.parseString(partial).asJsonObject.has("warnings"))

        val empty = runTool(toolset) {
            it.mps_mcp_search_root_node_by_name(JsonOrText("ScopedRootSearch"), scope = "models", models = JsonOrText("[]"))
        }
        assertInvalidScope(empty, "models")
    }

    private fun assertInvalidScope(errorJson: String?, expectedText: String) {
        assertNotNull("expected a scope error naming '$expectedText'", errorJson)
        val envelope = JsonParser.parseString(errorJson).asJsonObject
        assertFalse("expected error envelope: $errorJson", envelope.get("ok").asBoolean)
        assertEquals("INVALID_REQUEST", envelope.get("code").asString)
        assertTrue("error must name '$expectedText': $errorJson", envelope.get("error").asString.contains(expectedText))
        assertFalse("scope errors must not return warnings: $errorJson", envelope.has("warnings"))
    }

    private fun assertIncompleteJson(response: String, length: Int, expectedColumn: Int) {
        val envelope = JsonParser.parseString(response).asJsonObject
        assertFalse("expected error envelope: $response", envelope.get("ok").asBoolean)
        assertEquals("INVALID_JSON", envelope.get("code").asString)
        val error = envelope.get("error").asString
        assertTrue("expected received length: $error", error.contains("received $length chars (inline limit 4096)"))
        assertTrue("expected Gson location: $error", error.contains("at line 1 column $expectedColumn"))
        assertTrue("expected brace hint: $error", error.contains("unbalanced"))
        assertTrue("expected temp-file hint: $error", error.contains("absolute temp-file path"))
        assertFalse("syntax diagnosis must not claim the inline guard fired: $error", error.contains("Direct JSON input is too large"))
    }

    private fun addScopePropertyChild(parentRef: String): String {
        val name = "scopeChild"
        val childJson = """
            {
              "concept": "$propertyDeclarationFqn",
              "properties": [ { "name": "name", "value": "$name" } ]
            }
        """.trimIndent()
        val response = runTool(JetBrainsMPSNodeMcpToolset()) {
            it.mps_mcp_update_node(
                NodeUpdateOperation.ADD,
                NodeUpdateKind.CHILD,
                nodeReference = parentRef,
                childRole = "propertyDeclaration",
                childJson = childJson,
            )
        }
        expectOk(response)
        return readOnRepo {
            val parent = PersistenceFacade.getInstance().createNodeReference(parentRef).resolve(myProject.repository)
                ?: error("parent '$parentRef' did not resolve")
            val child = parent.children.single { it.name == name }
            PersistenceFacade.getInstance().asString(child.reference)
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

    // ── D43: missing-required-parameter rejections through the real bridge ────────────────
    // These go through callThroughBridge, not runTool: only the bridge's own argument binding
    // can observe a wrong-key spelling being silently dropped before the tool body runs.

    @Test
    fun `open_node names nodeReference when the caller sent a plausible wrong key`() {
        val response = callThroughBridge(
            toolset, "mps_mcp_open_node",
            mapOf("nodeRef" to kotlinx.serialization.json.JsonPrimitive("r:00000000-0000-0000-0000-000000000000(ghost)/0")),
        )
        val obj = JsonParser.parseString(response).asJsonObject
        assertFalse("expected error envelope: $response", obj.get("ok").asBoolean)
        assertEquals("INVALID_REQUEST", obj.get("code").asString)
        assertEquals(listOf("nodeReference"), obj.getAsJsonObject("details").getAsJsonArray("missingParameters").map { it.asString })
        val error = obj.get("error").asString
        assertTrue(
            "must name the key and the dropped spelling: $error",
            error.startsWith("nodeReference is required.") && error.contains("'nodeRef'"),
        )
    }

    @Test
    fun `open_node succeeds once retried with the correct key`() {
        val rootRef = createConceptRoot("OpenMe")
        val response = callThroughBridge(
            toolset, "mps_mcp_open_node",
            mapOf("nodeReference" to kotlinx.serialization.json.JsonPrimitive(rootRef)),
        )
        assertTrue(expectOk(response).get("present").asBoolean)
    }

    @Test
    fun `create_root_node names the missing concept when the caller sent conceptName`() {
        val rootsBefore = structureRoots().size
        val response = callThroughBridge(
            toolset, "mps_mcp_create_root_node",
            mapOf(
                "modelReference" to kotlinx.serialization.json.JsonPrimitive(structureModelRef),
                "conceptName" to kotlinx.serialization.json.JsonPrimitive(conceptDeclarationFqn),
                "name" to kotlinx.serialization.json.JsonPrimitive("ShouldNotBeCreated"),
            ),
        )
        val obj = JsonParser.parseString(response).asJsonObject
        assertFalse("expected error envelope: $response", obj.get("ok").asBoolean)
        assertEquals("INVALID_REQUEST", obj.get("code").asString)
        assertEquals(listOf("concept"), obj.getAsJsonObject("details").getAsJsonArray("missingParameters").map { it.asString })
        val error = obj.get("error").asString
        assertTrue(
            "must name the key and offer conceptReference as the alternative: $error",
            error.startsWith("concept is required.") && error.contains("conceptReference"),
        )
        assertEquals("nothing may be created", rootsBefore, structureRoots().size)
    }

    @Test
    fun `create_root_node accepts conceptReference alone without concept`() {
        // Resolve a real 'c:...' persistent concept reference from an ordinary create, then
        // replay it as the sole concept identifier to prove the either-of accepts it.
        val first = runTool(toolset) {
            it.mps_mcp_create_root_node(
                modelReference = structureModelRef,
                concept = conceptDeclarationFqn,
                conceptReference = null,
                name = "ConceptRefSeed",
            )
        }
        val conceptRef = expectOk(first).get("conceptReference").asString

        val response = callThroughBridge(
            toolset, "mps_mcp_create_root_node",
            mapOf(
                "modelReference" to kotlinx.serialization.json.JsonPrimitive(structureModelRef),
                "conceptReference" to kotlinx.serialization.json.JsonPrimitive(conceptRef),
                "name" to kotlinx.serialization.json.JsonPrimitive("ViaConceptReference"),
            ),
        )
        val obj = JsonParser.parseString(response).asJsonObject
        assertTrue("conceptReference alone must be accepted: $response", obj.get("ok").asBoolean)
    }

    @Test
    fun `update_root_node_from_json names nodeReference when the caller sent node`() {
        val response = callThroughBridge(
            toolset, "mps_mcp_update_root_node_from_json",
            mapOf(
                "node" to kotlinx.serialization.json.JsonPrimitive("r:00000000-0000-0000-0000-000000000000(ghost)/2"),
                "json" to kotlinx.serialization.json.JsonPrimitive("""{ "concept": "$conceptDeclarationFqn" }"""),
            ),
        )
        val obj = JsonParser.parseString(response).asJsonObject
        assertFalse("expected error envelope: $response", obj.get("ok").asBoolean)
        assertEquals("INVALID_REQUEST", obj.get("code").asString)
        assertEquals(listOf("nodeReference"), obj.getAsJsonObject("details").getAsJsonArray("missingParameters").map { it.asString })
        val error = obj.get("error").asString
        assertTrue(
            "must name the key and the dropped spelling: $error",
            error.startsWith("nodeReference is required.") && error.contains("'node'"),
        )
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

    fun selectedRefsFor(project: MPSProject, scope: String, params: JsonObject): Set<String> {
        val facade = PersistenceFacade.getInstance()
        return when (val r = buildSearchScope(project, scope, params)) {
            is SearchScopeResolution.Ok -> when (scope) {
                "models" -> r.scope.models.map { facade.asString(it.reference) }.toSet()
                "modules" -> r.scope.modules.map { facade.asString(it.moduleReference) }.toSet()
                "roots" -> r.rootFilter.orEmpty().map { facade.asString(it) }.toSet()
                else -> error("unsupported explicit scope '$scope'")
            }
            is SearchScopeResolution.Err -> error("expected a resolved scope, got error: ${r.errJson}")
        }
    }
}
