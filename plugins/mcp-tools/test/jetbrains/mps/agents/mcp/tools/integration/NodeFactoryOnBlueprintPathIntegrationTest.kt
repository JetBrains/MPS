package jetbrains.mps.agents.mcp.tools.integration

import jetbrains.mps.agents.mcp.tools.*
import jetbrains.mps.agents.mcp.tools.common.*

import com.google.gson.JsonParser
import jetbrains.mps.smodel.SNodeId
import jetbrains.mps.smodel.action.NodeFactoryManager
import java.io.File
import org.jetbrains.mps.openapi.model.SNode
import org.jetbrains.mps.openapi.persistence.PersistenceFacade
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * Regression tests for study defect D47: the JSON-blueprint paths used to create nodes with
 * `SNodeFactoryOperations.createNewNode(concept, null)`, which forwards `model = null` and
 * `enclosingNode = null`, and then deleted every child the concept's node factory had produced.
 *
 * Every factory involved here is null-tolerant, so the old behaviour was a silent partial
 * initialization reported as an ordinary success envelope — which is why it survived so long.
 *
 * The tests that **fail without the fix** are the ones whose factory observably needs what was
 * being withheld:
 *
 *  - `jetbrains.mps.lang.behavior`'s `ConceptMethod` factory creates a `visibility` child (killed
 *    by the old blanket child delete) and reads the enclosing `ConceptBehavior` to decide
 *    `isAbstract` / `isVirtual` (skipped when `enclosingNode` was null);
 *  - `MigrationScript`'s lightweight-DSL initializer needs the model — it is the case that made
 *    D46's S4 task fail, and the only one where the missing model is observable rather than
 *    merely a skipped uniqueness scan.
 *
 * The `conceptId` / `propertyId` tests are **invariant guards, not regressions**: `SetStructureIds`
 * only uses the model and enclosing node for a collision scan, and a detached `SNode` already
 * carries an id (`SNode(SConcept)` calls `SModel.generateUniqueId()`), so those ids were right
 * before the fix too. They are here so a later change to the creation call cannot quietly break
 * the `conceptId == nodeId` convention the editor and `alter_structure` keep.
 */
class NodeFactoryOnBlueprintPathIntegrationTest : McpIntegrationTestBase() {

    private val rootNodeToolset = JetBrainsMPSRootNodeMcpToolset()

    private val conceptDeclarationFqn = "jetbrains.mps.lang.structure.structure.ConceptDeclaration"
    private val propertyDeclarationFqn = "jetbrains.mps.lang.structure.structure.PropertyDeclaration"
    private val conceptMethodFqn = "jetbrains.mps.lang.behavior.structure.ConceptMethodDeclaration"
    private val privateVisibilityFqn = "jetbrains.mps.baseLanguage.structure.PrivateVisibility"

    /** The numeric part of [node]'s regular node id, in the same string form `ConceptIdHelper` writes. */
    private fun regularNodeId(node: SNode): String =
        (node.nodeId as SNodeId.Regular).id.toString()

    private fun addChild(parentRef: String, role: String, childJson: String, dryRun: Boolean = false): String =
        runTool(JetBrainsMPSNodeMcpToolset()) {
            it.mps_mcp_update_node(
                NodeUpdateOperation.ADD, NodeUpdateKind.CHILD,
                nodeReference = parentRef, childRole = role, childJson = childJson, dryRun = dryRun,
            )
        }

    /** Resolves the single child of [node] in [role], or fails. */
    private fun soleChild(node: SNode, role: String): SNode {
        val link = node.concept.containmentLinks.single { it.name == role }
        return node.getChildren(link).single()
    }

    private fun childrenOf(node: SNode, role: String): List<SNode> {
        val link = node.concept.containmentLinks.single { it.name == role }
        return node.getChildren(link).toList()
    }

    // ── invariant guards: structure ids stay editor-shaped ───────────────────────────────

    @Test
    fun `blueprint insert keeps the conceptId equals nodeId convention, same as alter_structure`() {
        // SetStructureIds assigns conceptId = ConceptIdHelper.generateConceptId(model, newNode).
        // It uses the model only to scan for a colliding id; the value itself comes from the node's
        // own id, which a detached SNode already has. So this is not a D47 regression — it is the
        // convention MPS persistence relies on, pinned so a later change to how instantiateNode
        // creates nodes cannot quietly break it. The cross-check against `alter_structure` is the
        // point: the two tools must agree.
        val viaAlterStructure = createConceptRoot("ViaAlterStructure")

        val json = """
            {
              "concept": "$conceptDeclarationFqn",
              "properties": [ { "name": "name", "value": "ViaBlueprint" } ]
            }
        """.trimIndent()
        val response = runTool(rootNodeToolset) {
            it.mps_mcp_insert_root_node_from_json(structureModelRef, JsonOrText(json), dryRun = false)
        }
        expectOk(response)

        readOnRepo {
            val alterNode = resolveNodeRef(viaAlterStructure)
            val blueprintNode = structureModel.rootNodes.single { it.name == "ViaBlueprint" }
            assertEquals(regularNodeId(alterNode), alterNode.getPropertyByName("conceptId"))
            assertEquals(
                "blueprint insert must keep conceptId == nodeId, like alter_structure: $response",
                regularNodeId(blueprintNode),
                blueprintNode.getPropertyByName("conceptId"),
            )
        }
    }

    @Test
    fun `nested blueprint children keep the propertyId equals nodeId convention`() {
        // Same invariant one level down, so the recursive instantiateNode call is covered too.
        val json = """
            {
              "concept": "$conceptDeclarationFqn",
              "properties": [ { "name": "name", "value": "NestedIdProbe" } ],
              "children": [
                {
                  "role": "propertyDeclaration",
                  "nodes": [
                    {
                      "concept": "$propertyDeclarationFqn",
                      "properties": [ { "name": "name", "value": "someProp" } ]
                    }
                  ]
                }
              ]
            }
        """.trimIndent()

        val response = runTool(rootNodeToolset) {
            it.mps_mcp_insert_root_node_from_json(structureModelRef, JsonOrText(json), dryRun = false)
        }
        expectOk(response)

        readOnRepo {
            val root = structureModel.rootNodes.single { it.name == "NestedIdProbe" }
            val prop = soleChild(root, "propertyDeclaration")
            assertEquals(
                "nested child's propertyId must be derived from its node id: $response",
                regularNodeId(prop),
                prop.getPropertyByName("propertyId"),
            )
        }
    }

    // ── factory-produced children survive ───────────────────────────────────────────────

    @Test
    fun `update_node ADD CHILD keeps the visibility child the behavior factory creates`() {
        // ConceptMethod.NodeFactory_1238617792578 does setNewChild(newNode, visibility,
        // PublicVisibility). The blanket `newNode.children.forEach { it.delete() }` used to throw
        // that away, so a blueprint-added behavior method had no visibility at all while the same
        // method created in the editor was `public`.
        val behaviorRef = createConceptBehaviorRoot()

        val response = addChild(
            behaviorRef, "method",
            """{ "concept": "$conceptMethodFqn", "properties": [ { "name": "name", "value": "factoryMade" } ] }""",
        )
        expectOk(response)

        readOnRepo {
            val method = childrenOf(resolveNodeRef(behaviorRef), "method")
                .single { it.getPropertyByName("name") == "factoryMade" }
            val visibility = childrenOf(method, "visibility").singleOrNull()
            assertNotNull("the factory's visibility child must survive: $response", visibility)
            assertEquals("PublicVisibility", visibility!!.concept.name)
        }
    }

    @Test
    fun `a role the blueprint names overrides the factory instead of accumulating`() {
        // Per-role clearing: the blueprint is authoritative for `visibility`, so exactly one child
        // remains and it is the blueprint's — not the factory's PublicVisibility plus ours.
        val behaviorRef = createConceptBehaviorRoot()

        val response = addChild(
            behaviorRef, "method",
            """
            {
              "concept": "$conceptMethodFqn",
              "properties": [ { "name": "name", "value": "explicitlyPrivate" } ],
              "children": [
                { "role": "visibility", "nodes": [ { "concept": "$privateVisibilityFqn" } ] }
              ]
            }
            """.trimIndent(),
        )
        expectOk(response)

        readOnRepo {
            val method = childrenOf(resolveNodeRef(behaviorRef), "method")
                .single { it.getPropertyByName("name") == "explicitlyPrivate" }
            val visibility = childrenOf(method, "visibility")
            assertEquals("the named role must hold exactly the blueprint's child: $response", 1, visibility.size)
            assertEquals("PrivateVisibility", visibility.single().concept.name)
        }
    }

    @Test
    fun `mandatory roles the blueprint omits stay empty`() {
        // Deliberate scope limit: we run NodeFactoryManager.setupNode but NOT createNodeStructure,
        // so a role the blueprint leaves out is not silently filled with a default concrete child.
        // `returnType` is a mandatory 1-cardinality role on ConceptMethodDeclaration.
        val behaviorRef = createConceptBehaviorRoot()

        expectOk(addChild(
            behaviorRef, "method",
            """{ "concept": "$conceptMethodFqn", "properties": [ { "name": "name", "value": "noReturnType" } ] }""",
        ))

        readOnRepo {
            val method = childrenOf(resolveNodeRef(behaviorRef), "method")
                .single { it.getPropertyByName("name") == "noReturnType" }
            assertTrue(
                "an omitted mandatory role must not be auto-filled",
                childrenOf(method, "returnType").isEmpty(),
            )
        }
    }

    // ── the enclosing node reaches the factory ──────────────────────────────────────────

    @Test
    fun `behavior factory sees the enclosing behavior root and marks interface methods abstract`() {
        // The only branch in ConceptMethod.NodeFactory_1238617792578 that reads `enclosingNode`:
        // it walks up to the ConceptBehavior and, when the behavior's concept is an
        // InterfaceConceptDeclaration, sets isAbstract/isVirtual. With enclosingNode == null every
        // smodel helper on that path returns null and the branch is silently skipped.
        val behaviorRef = createInterfaceConceptBehaviorRoot()

        val response = addChild(
            behaviorRef, "method",
            """{ "concept": "$conceptMethodFqn", "properties": [ { "name": "name", "value": "onInterface" } ] }""",
        )
        expectOk(response)

        readOnRepo {
            val method = childrenOf(resolveNodeRef(behaviorRef), "method")
                .single { it.getPropertyByName("name") == "onInterface" }
            assertEquals("isAbstract must be set for a method on an interface concept: $response",
                "true", method.getPropertyByName("isAbstract"))
            assertEquals("isVirtual must be set for a method on an interface concept: $response",
                "true", method.getPropertyByName("isVirtual"))
        }
    }

    @Test
    fun `a one-call blueprint gives a nested child's factory the parent's references`() {
        // instantiateNode applies references before children precisely so this works: the method's
        // factory follows ConceptBehavior.concept to decide isAbstract/isVirtual, and with children
        // applied first that reference was still unset when the factory ran. The same content split
        // across two calls always worked, so this one-call form is the only thing that catches it.
        val interfaceRef = createInterfaceConcept()
        val behaviorModelRef = behaviorModelWithUsedLanguages()

        val json = """
            {
              "concept": "jetbrains.mps.lang.behavior.structure.ConceptBehavior",
              "references": [ { "role": "concept", "target": "$interfaceRef" } ],
              "children": [
                {
                  "role": "method",
                  "nodes": [
                    {
                      "concept": "$conceptMethodFqn",
                      "properties": [ { "name": "name", "value": "inOneCall" } ]
                    }
                  ]
                }
              ]
            }
        """.trimIndent()

        val response = runTool(rootNodeToolset) {
            it.mps_mcp_insert_root_node_from_json(behaviorModelRef, JsonOrText(json), dryRun = false, responseDetail = "summary")
        }
        val behaviorRef = expectOk(response).get("roots").asJsonArray.single().asJsonObject.get("reference").asString

        readOnRepo {
            val method = childrenOf(resolveNodeRef(behaviorRef), "method").single()
            assertEquals(
                "isAbstract must be set even when the reference and the child arrive in one call: $response",
                "true", method.getPropertyByName("isAbstract"),
            )
            assertEquals(
                "isVirtual must be set even when the reference and the child arrive in one call: $response",
                "true", method.getPropertyByName("isVirtual"),
            )
        }
    }

    // ── the model reaches the factory: MigrationScript (the D46 / D47 headline) ─────────

    @Test
    fun `inserting a MigrationScript from a blueprint sets fromVersion and bumps the language`() {
        // MigrationScript implements AutoInitDSLClass, so its factory runs Migration_Queries.init,
        // which needs `futureModel.getModule()` to reach the Language. With model == null that NPEs
        // inside the lightweight-DSL descriptor's own `catch (Exception e) { printStackTrace(); }`,
        // so fromVersion stayed 0, the language version stayed put and the superclass was never
        // wired — all reported as a plain success envelope. That silent failure is what made D46's
        // S4 task fail, and it is the reason the migrations skill tells agents that nothing is left
        // to do after creating a MigrationScript: the factory already did the bump.
        val languageName = readOnRepo { checkNotNull(language.moduleName) { "test language has no name" } }
        val migrationModelRef = run {
            val response = runTool(JetBrainsMPSModelMcpToolset()) {
                it.mps_mcp_create_model(languageName, "$languageName.migration")
            }
            expectOk(response).get("reference").asString
        }

        val versionBefore = readOnRepo { language.languageVersion }

        val json = """
            {
              "concept": "jetbrains.mps.lang.migration.structure.MigrationScript",
              "properties": [ { "name": "name", "value": "BlueprintMigration" } ]
            }
        """.trimIndent()
        val response = runTool(rootNodeToolset) {
            it.mps_mcp_insert_root_node_from_json(migrationModelRef, JsonOrText(json), dryRun = false)
        }
        val data = expectOk(response)

        readOnRepo {
            val script = resolveNodeRef(data.get("reference").asString)
            assertEquals(
                "the factory must set fromVersion to the language's version before the bump: $response",
                versionBefore.toString(),
                script.getPropertyByName("fromVersion"),
            )
            assertEquals(
                "the factory must bump the language version by exactly 1: $response",
                versionBefore + 1,
                language.languageVersion,
            )
            assertEquals(
                "the factory must wire the design-time superclass: $response",
                "ClassifierType",
                soleChild(script, "superclass").concept.name,
            )
        }
    }

    // ── PureMigrationScript's own factory (jetbrains.mps.lang.migration actions aspect) ──

    private val pureMigrationScriptFqn = "jetbrains.mps.lang.migration.structure.PureMigrationScript"

    private fun createLanguageModel(simpleName: String): String {
        val languageName = readOnRepo { checkNotNull(language.moduleName) { "test language has no name" } }
        return expectOk(runTool(JetBrainsMPSModelMcpToolset()) {
            it.mps_mcp_create_model(languageName, "$languageName.$simpleName")
        }).get("reference").asString
    }

    private fun insertPureMigrationScript(modelRef: String, name: String, fromVersion: Int? = null, dryRun: Boolean = false): String {
        val versionProperty = fromVersion?.let { """, { "name": "fromVersion", "value": "$it" }""" } ?: ""
        val json = """
            {
              "concept": "$pureMigrationScriptFqn",
              "properties": [ { "name": "name", "value": "$name" }$versionProperty ]
            }
        """.trimIndent()
        return runTool(rootNodeToolset) { it.mps_mcp_insert_root_node_from_json(modelRef, JsonOrText(json), dryRun = dryRun) }
    }

    private fun fromVersionOf(nodeRef: String): String? = readOnRepo { resolveNodeRef(nodeRef).getPropertyByName("fromVersion") }

    private fun descriptorOnDisk(): String = File(readOnRepo { checkNotNull(language.descriptorFile).path }).readText()

    @Test
    fun `inserting a PureMigrationScript sets fromVersion, bumps the language once and writes the descriptor`() {
        val migrationModelRef = createLanguageModel("migration")
        val versionBefore = readOnRepo { language.languageVersion }

        val response = insertPureMigrationScript(migrationModelRef, "BlueprintPure")
        val scriptRef = expectOk(response).get("reference").asString

        assertEquals("fromVersion must be the version before the bump: $response", versionBefore.toString(), fromVersionOf(scriptRef))
        assertEquals("the language must be bumped exactly once: $response", versionBefore + 1, readOnRepo { language.languageVersion })
        assertTrue(
            "the insert must save the bumped descriptor",
            descriptorOnDisk().contains("languageVersion=\"${versionBefore + 1}\""),
        )
    }

    @Test
    fun `a blueprint fromVersion equal to the current version still bumps once and SYNC_VERSION is a no-op`() {
        // What the migrations skill told agents before the factory existed: put the current
        // version in the blueprint and sync. The factory and the blueprint now agree.
        val migrationModelRef = createLanguageModel("migration")
        val versionBefore = readOnRepo { language.languageVersion }

        val scriptRef = expectOk(insertPureMigrationScript(migrationModelRef, "ExplicitVersion", versionBefore)).get("reference").asString

        assertEquals(versionBefore.toString(), fromVersionOf(scriptRef))
        assertEquals("exactly one bump", versionBefore + 1, readOnRepo { language.languageVersion })
        val languageName = readOnRepo { checkNotNull(language.moduleName) }
        val sync = expectOk(runTool(JetBrainsMPSModuleMcpToolset()) {
            it.mps_mcp_update_module(languageName, null, ModuleOperation.SYNC_VERSION)
        })
        assertFalse("the factory already did the sync's work: $sync", sync.get("changed").asBoolean)
        assertEquals(versionBefore + 1, readOnRepo { language.languageVersion })
    }

    @Test
    fun `a dry run of a PureMigrationScript does not bump the language`() {
        val migrationModelRef = createLanguageModel("migration")
        val versionBefore = readOnRepo { language.languageVersion }

        val response = insertPureMigrationScript(migrationModelRef, "NeverInserted", dryRun = true)

        assertTrue("expected a dryRun envelope: $response", expectOk(response).get("dryRun").asBoolean)
        assertEquals("a dry run must not bump the language version", versionBefore, readOnRepo { language.languageVersion })
    }

    @Test
    fun `a PureMigrationScript outside the migration aspect is neither versioned nor bumps the language`() {
        val otherModelRef = createLanguageModel("helpers")
        val versionBefore = readOnRepo { language.languageVersion }

        val scriptRef = expectOk(insertPureMigrationScript(otherModelRef, "NotAMigration")).get("reference").asString

        assertNull("the factory must leave fromVersion unset outside the migration aspect", fromVersionOf(scriptRef))
        assertEquals(versionBefore, readOnRepo { language.languageVersion })
    }

    @Test
    fun `create_root_node of a PureMigrationScript bumps the language`() {
        val migrationModelRef = createLanguageModel("migration")
        val versionBefore = readOnRepo { language.languageVersion }

        val response = runTool(rootNodeToolset) {
            it.mps_mcp_create_root_node(migrationModelRef, pureMigrationScriptFqn, null, "CreatedRoot")
        }
        val scriptRef = expectOk(response).get("reference").asString

        assertEquals(versionBefore.toString(), fromVersionOf(scriptRef))
        assertEquals(versionBefore + 1, readOnRepo { language.languageVersion })
    }

    @Test
    fun `a PureMigrationScript replacing a versioned unit inherits its fromVersion without a bump`() {
        // The sampleNode branch, reached by `replace with new initialized`: the replaced unit's
        // version slot carries over, so bumping would open a gap in the version sequence.
        val migrationModelRef = createLanguageModel("migration")
        val sampleRef = expectOk(insertPureMigrationScript(migrationModelRef, "Replaced", 5)).get("reference").asString
        val versionBefore = readOnRepo { language.languageVersion }

        var created: SNode? = null
        executeCommand {
            val sample = resolveNodeRef(sampleRef)
            created = NodeFactoryManager.createNode(sample.concept, sample, null, sample.model)
        }

        assertEquals("5", readOnRepo { checkNotNull(created).getPropertyByName("fromVersion") })
        assertEquals("a replacement must not bump the language", versionBefore, readOnRepo { language.languageVersion })
    }

    // ── dry run must not fire factories ─────────────────────────────────────────────────

    @Test
    fun `dry run adds no child`() {
        val behaviorRef = createConceptBehaviorRoot()
        val before = readOnRepo { childrenOf(resolveNodeRef(behaviorRef), "method").size }

        val response = addChild(
            behaviorRef, "method",
            """{ "concept": "$conceptMethodFqn", "properties": [ { "name": "name", "value": "neverAdded" } ] }""",
            dryRun = true,
        )
        val data = expectOk(response)
        assertTrue("expected a dryRun envelope: $response", data.get("dryRun").asBoolean)

        readOnRepo {
            assertEquals(before, childrenOf(resolveNodeRef(behaviorRef), "method").size)
        }
    }

    @Test
    fun `dry run does not fire the factory, so the language version is not bumped`() {
        // This is the reason dryRun withholds the model: factory side effects land on the model and
        // module — model imports, a module dependency, and `MigrationScript`'s non-idempotent
        // language-version bump — and `executeShortCommandOnEdt` does not roll a command back. A
        // "validation" call that bumped the version would be worse than the dryRun/real divergence.
        val languageName = readOnRepo { checkNotNull(language.moduleName) { "test language has no name" } }
        val migrationModelRef = expectOk(runTool(JetBrainsMPSModelMcpToolset()) {
            it.mps_mcp_create_model(languageName, "$languageName.migration")
        }).get("reference").asString

        val versionBefore = readOnRepo { language.languageVersion }
        val json = """
            {
              "concept": "jetbrains.mps.lang.migration.structure.MigrationScript",
              "properties": [ { "name": "name", "value": "NeverInserted" } ]
            }
        """.trimIndent()
        val response = runTool(rootNodeToolset) {
            it.mps_mcp_insert_root_node_from_json(migrationModelRef, JsonOrText(json), dryRun = true)
        }
        assertTrue("expected a dryRun envelope: $response", expectOk(response).get("dryRun").asBoolean)

        readOnRepo {
            assertEquals(
                "a dry run must not bump the language version: $response",
                versionBefore, language.languageVersion,
            )
        }
    }

    /** Creates an `InterfaceConceptDeclaration` root and returns its persistent reference. */
    private fun createInterfaceConcept(): String {
        val interfaceName = "TestInterface${System.nanoTime()}"
        val createParams = """
            {
              "structureModelRef": "$structureModelRef",
              "interfaceConceptsJson": [ { "name": "$interfaceName" } ]
            }
        """.trimIndent()
        val createResponse = runTool { it.mps_mcp_alter_structure(MPSStructureAlterOperation.CREATE_CONCEPTS, createParams) }
        assertTrue(
            "expected ok envelope from CREATE_CONCEPTS: $createResponse",
            JsonParser.parseString(createResponse).asJsonObject.get("ok").asBoolean,
        )
        return readOnRepo {
            val root = structureModel.rootNodes.single { it.name == interfaceName }
            PersistenceFacade.getInstance().asString(root.reference)
        }
    }

    /** The test language's behavior model, with the used languages a `ConceptBehavior` needs. */
    private fun behaviorModelWithUsedLanguages(): String {
        val behaviorModel = readOnRepo { language.models.single { it.name.longName.endsWith(".behavior") } }
        val behaviorModelRef = modelRefOf(behaviorModel)
        val modelToolset = JetBrainsMPSModelMcpToolset()
        for (usedLanguage in listOf("jetbrains.mps.lang.behavior", "jetbrains.mps.baseLanguage")) {
            expectOk(runTool(modelToolset) {
                it.mps_mcp_model_used_language(behaviorModelRef, usedLanguage, "language", DependencyOperation.ADD)
            })
        }
        return behaviorModelRef
    }

    /**
     * Like [createConceptBehaviorRoot] but wires the behavior to an `InterfaceConceptDeclaration`,
     * which is the input the behavior factory's `enclosingNode` branch keys on. Inserted with no
     * methods, so a method added afterwards exercises the two-call path.
     */
    private fun createInterfaceConceptBehaviorRoot(): String {
        val interfaceRef = createInterfaceConcept()
        val behaviorModelRef = behaviorModelWithUsedLanguages()

        val json = """
            {
              "concept": "jetbrains.mps.lang.behavior.structure.ConceptBehavior",
              "references": [ { "role": "concept", "target": "$interfaceRef" } ]
            }
        """.trimIndent()
        val payload = expectOk(runTool(rootNodeToolset) {
            it.mps_mcp_insert_root_node_from_json(behaviorModelRef, JsonOrText(json), dryRun = false, responseDetail = "summary")
        })
        return payload.get("roots").asJsonArray.single().asJsonObject.get("reference").asString
    }
}
