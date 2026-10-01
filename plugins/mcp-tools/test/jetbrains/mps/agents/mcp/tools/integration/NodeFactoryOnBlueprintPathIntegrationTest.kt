package jetbrains.mps.agents.mcp.tools.integration

import jetbrains.mps.agents.mcp.tools.*
import jetbrains.mps.agents.mcp.tools.common.*

import com.google.gson.JsonParser
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations
import jetbrains.mps.smodel.SNodeId
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory
import jetbrains.mps.smodel.action.NodeFactoryManager
import java.io.File
import org.jetbrains.mps.openapi.model.SNode
import org.jetbrains.mps.openapi.model.SNodeAccessUtil
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

    private fun setChild(childRef: String, childJson: String, dryRun: Boolean = false): String =
        runTool(JetBrainsMPSNodeMcpToolset()) {
            it.mps_mcp_update_node(
                NodeUpdateOperation.SET, NodeUpdateKind.CHILD,
                childNodeRef = childRef, childJson = childJson, dryRun = dryRun,
            )
        }

    private fun updateRoot(rootRef: String, json: String, dryRun: Boolean = false): String =
        runTool(rootNodeToolset) { it.mps_mcp_update_root_node_from_json(rootRef, JsonOrText(json), dryRun = dryRun) }

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
        // convention MPS persistence relies on, pinned so a later change to how the blueprint path
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
        // Same invariant one level down, so a nested child built by fillChildren is covered too.
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
        // createNode applies references before fillChildren builds the children precisely so this
        // works: the method's factory follows ConceptBehavior.concept to decide isAbstract/isVirtual,
        // and with children applied first that reference was still unset when the factory ran. The
        // same content split across two calls always worked, so this one-call form is the only thing
        // that catches it.
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

    // ── a nested child's factory sees its ancestors (editor parity) ──────────────────────
    //
    // EDTL_node_factories.NodeFactory_1158947460472, registered for CellModel_Property, walks
    // `getNodeAncestor(enclosingNode, CellModel_RefCell, inclusive = true)` and sets readOnly when a
    // RefCell is found: a property cell inside a reference cell's inline editor is read-only. In the
    // editor the new cell's enclosing node is always attached, so the walk works at any depth.
    // MPS-40226: the blueprint tools used to attach each child only after the child's own subtree was
    // built, and the blueprint's top node only after all of it, so a factory two or more levels below
    // the attached target saw an enclosing node whose parent was still null. The tree is now built
    // top-down, and ADD CHILD, SET CHILD and update_root attach the top node before filling it.

    private val editorLang = "jetbrains.mps.lang.editor.structure"
    private val conceptEditorFqn = "$editorLang.ConceptEditorDeclaration"
    private val refCellFqn = "$editorLang.CellModel_RefCell"
    private val inlineEditorFqn = "$editorLang.InlineEditorComponent"
    private val propertyCellFqn = "$editorLang.CellModel_Property"

    private fun nodeRefOf(node: SNode): String = PersistenceFacade.getInstance().asString(node.reference)

    private fun editorModelRef(): String =
        modelRefOf(readOnRepo { language.models.single { it.name.longName.endsWith(".editor") } })

    /** `{ concept: InlineEditorComponent [, cellModel: CellModel_Property] }` as a blueprint. */
    private fun inlineEditorJson(withPropertyCell: Boolean): String {
        val cellModel = if (withPropertyCell) {
            """, "children": [ { "role": "cellModel", "nodes": [ { "concept": "$propertyCellFqn" } ] } ]"""
        } else ""
        return """{ "concept": "$inlineEditorFqn"$cellModel }"""
    }

    /** An editor root whose cell model is `RefCell -> editorComponent: InlineEditorComponent [-> cellModel: Property]`. */
    private fun editorRootJson(withPropertyCell: Boolean): String = """
        {
          "concept": "$conceptEditorFqn",
          "children": [
            {
              "role": "cellModel",
              "nodes": [
                {
                  "concept": "$refCellFqn",
                  "children": [ { "role": "editorComponent", "nodes": [ ${inlineEditorJson(withPropertyCell)} ] } ]
                }
              ]
            }
          ]
        }
    """.trimIndent()

    private fun insertEditorRoot(withPropertyCell: Boolean): String {
        val response = runTool(rootNodeToolset) {
            it.mps_mcp_insert_root_node_from_json(editorModelRef(), JsonOrText(editorRootJson(withPropertyCell)), dryRun = false)
        }
        return expectOk(response).get("reference").asString
    }

    private fun refCellOf(editorRootRef: String): SNode = readOnRepo { soleChild(resolveNodeRef(editorRootRef), "cellModel") }

    private fun inlineEditorOf(editorRootRef: String): SNode = readOnRepo { soleChild(refCellOf(editorRootRef), "editorComponent") }

    private fun propertyCellReadOnly(editorRootRef: String): String? = readOnRepo {
        val propertyCell = soleChild(inlineEditorOf(editorRootRef), "cellModel")
        assertEquals("CellModel_Property", propertyCell.concept.name)
        propertyCell.getPropertyByName("readOnly")
    }

    @Test
    fun `control - ADD CHILD of a bare Property cell into an attached inline editor sets readOnly`() {
        // Depth 1 below the attached target: the factory's enclosingNode is the attached IEC, so the
        // RefCell ancestor is reachable. Passes today.
        val rootRef = insertEditorRoot(withPropertyCell = false)
        val iecRef = readOnRepo { nodeRefOf(inlineEditorOf(rootRef)) }

        val response = addChild(iecRef, "cellModel", """{ "concept": "$propertyCellFqn" }""")
        expectOk(response)

        assertEquals("the Property factory must find the enclosing RefCell: $response", "true", propertyCellReadOnly(rootRef))
    }

    @Test
    fun `ADD CHILD of an inline editor blueprint under a RefCell sets the nested Property readOnly`() {
        // Depth 2 (MPS-40226): only the caller attaching the IEC before filling it lets the Property
        // factory's walk get above the blueprint's top node.
        val rootRef = insertEditorRoot(withPropertyCell = false)
        val refCellRef = readOnRepo { nodeRefOf(refCellOf(rootRef)) }

        val response = addChild(refCellRef, "editorComponent", inlineEditorJson(withPropertyCell = true))
        expectOk(response)

        assertEquals(
            "a Property cell nested in a blueprint IEC under a RefCell must be readOnly, as in the editor: $response",
            "true", propertyCellReadOnly(rootRef),
        )
    }

    @Test
    fun `SET CHILD of an inline editor blueprint under a RefCell sets the nested Property readOnly`() {
        val rootRef = insertEditorRoot(withPropertyCell = false)
        val oldIecRef = readOnRepo { nodeRefOf(inlineEditorOf(rootRef)) }

        val response = setChild(oldIecRef, inlineEditorJson(withPropertyCell = true))
        expectOk(response)

        assertEquals(
            "a Property cell nested in a replacing blueprint IEC under a RefCell must be readOnly, as in the editor: $response",
            "true", propertyCellReadOnly(rootRef),
        )
    }

    @Test
    fun `insert_root_node_from_json of RefCell to IEC to Property sets the Property readOnly`() {
        // MPS-40226, fixed by the top-down build inside the blueprint tree alone.
        val rootRef = insertEditorRoot(withPropertyCell = true)

        assertEquals(
            "a Property cell under RefCell -> IEC in a one-call root blueprint must be readOnly, as in the editor",
            "true", propertyCellReadOnly(rootRef),
        )
    }

    @Test
    fun `sanity - the editor's own NodeFactoryManager path sets readOnly for an attached inline editor`() {
        // What the editor does: createNode with the attached IEC as enclosing node. Proves the
        // factory is loaded and effective in this test environment, independent of the blueprint path.
        val rootRef = insertEditorRoot(withPropertyCell = false)
        val propertyCellConcept = MetaAdapterFactory.getConcept(
            0x18bc659203a64e29L, 0xa83a7ff23bde13baUL.toLong(), 0xf9eb02612eL, propertyCellFqn,
        )

        var created: SNode? = null
        executeCommand {
            val iec = inlineEditorOf(rootRef)
            created = NodeFactoryManager.createNode(propertyCellConcept, null, iec, iec.model)
        }

        assertEquals("true", readOnRepo { checkNotNull(created).getPropertyByName("readOnly") })
    }

    @Test
    fun `update_root_node_from_json of a staged RefCell to IEC to Property sets the Property readOnly`() {
        // The target of update_root is always a root and a CellModel_RefCell never is, so no RefCell walk
        // reaches at or above the target: this exercises the top-down build inside the staged child
        // only. The staging's attach-then-fill is covered by analogy with ADD CHILD.
        val rootRef = insertEditorRoot(withPropertyCell = false)

        val response = updateRoot(rootRef, editorRootJson(withPropertyCell = true))
        expectOk(response)

        assertEquals("a staged Property cell under RefCell -> IEC must be readOnly: $response", "true", propertyCellReadOnly(rootRef))
    }

    @Test
    fun `an explicit readOnly false on a nested Property wins over its factory`() {
        val rootRef = insertEditorRoot(withPropertyCell = false)
        val refCellRef = readOnRepo { nodeRefOf(refCellOf(rootRef)) }
        val iec = """
            { "concept": "$inlineEditorFqn", "children": [ { "role": "cellModel", "nodes": [
              { "concept": "$propertyCellFqn", "properties": [ { "name": "readOnly", "value": "false" } ] }
            ] } ] }
        """.trimIndent()

        val response = addChild(refCellRef, "editorComponent", iec)
        expectOk(response)

        assertEquals("the blueprint's readOnly must win over the node's own factory: $response", "false", propertyCellReadOnly(rootRef))
    }

    // ── a dry run never attaches to the live target ──────────────────────────────────────

    /** The ids of all children of [nodeRef], in order: what a dry run or a failed write must leave as it was. */
    private fun childIdsOf(nodeRef: String): List<String> = readOnRepo { resolveNodeRef(nodeRef).children.map { it.nodeId.toString() } }

    @Test
    fun `a dry-run ADD CHILD with nested children leaves the target's children alone`() {
        val rootRef = insertEditorRoot(withPropertyCell = false)
        val refCellRef = readOnRepo { nodeRefOf(refCellOf(rootRef)) }
        val before = childIdsOf(refCellRef)

        val response = addChild(refCellRef, "editorComponent", inlineEditorJson(withPropertyCell = true), dryRun = true)

        assertTrue("expected a dryRun envelope: $response", expectOk(response).get("dryRun").asBoolean)
        assertEquals("a dry run must not touch the target's children: $response", before, childIdsOf(refCellRef))
    }

    @Test
    fun `a dry-run SET CHILD with nested children leaves the target's children alone`() {
        val rootRef = insertEditorRoot(withPropertyCell = false)
        val refCellRef = readOnRepo { nodeRefOf(refCellOf(rootRef)) }
        val oldIecRef = readOnRepo { nodeRefOf(inlineEditorOf(rootRef)) }
        val before = childIdsOf(refCellRef)

        val response = setChild(oldIecRef, inlineEditorJson(withPropertyCell = true), dryRun = true)

        assertTrue("expected a dryRun envelope: $response", expectOk(response).get("dryRun").asBoolean)
        assertEquals("a dry run must not touch the target's children: $response", before, childIdsOf(refCellRef))
    }

    @Test
    fun `a dry-run update_root_node_from_json with nested children leaves the root's children alone`() {
        val rootRef = insertEditorRoot(withPropertyCell = false)
        val before = childIdsOf(rootRef)

        val response = updateRoot(rootRef, editorRootJson(withPropertyCell = true), dryRun = true)

        assertTrue("expected a dryRun envelope: $response", expectOk(response).get("dryRun").asBoolean)
        assertEquals("a dry run must not touch the root's children: $response", before, childIdsOf(rootRef))
    }

    // ── a failing nested child rolls the attached top node back ───────────────────────────
    //
    // The target's children only: createNode still imports the language, and factory side effects
    // are not rolled back, so the model as a whole may differ.

    private val unknownCellJson = """{ "concept": "$editorLang.NoSuchCellModel" }"""
    private val unassignableCellJson = """{ "concept": "jetbrains.mps.baseLanguage.structure.IntegerType" }"""

    private fun inlineEditorWith(cellModelJson: String): String =
        """{ "concept": "$inlineEditorFqn", "children": [ { "role": "cellModel", "nodes": [ $cellModelJson ] } ] }"""

    @Test
    fun `a failing single-cardinality ADD CHILD keeps the old occupant and adds nothing`() {
        val rootRef = insertEditorRoot(withPropertyCell = false)
        val refCellRef = readOnRepo { nodeRefOf(refCellOf(rootRef)) }
        val oldIecId = readOnRepo { inlineEditorOf(rootRef).nodeId.toString() }
        val before = childIdsOf(refCellRef)

        val error = expectErr(addChild(refCellRef, "editorComponent", inlineEditorWith(unknownCellJson)))

        assertTrue(error, error.contains("NoSuchCellModel"))
        assertEquals("the old occupant must stay and the new child must be gone", before, childIdsOf(refCellRef))
        assertTrue(childIdsOf(refCellRef).contains(oldIecId))
    }

    @Test
    fun `a failing multiple-cardinality ADD CHILD adds nothing`() {
        val behaviorRef = createConceptBehaviorRoot()
        val before = childIdsOf(behaviorRef)
        val method = """
            { "concept": "$conceptMethodFqn", "properties": [ { "name": "name", "value": "neverAdded" } ],
              "children": [ { "role": "visibility", "nodes": [ { "concept": "jetbrains.mps.baseLanguage.structure.IntegerType" } ] } ] }
        """.trimIndent()

        val error = expectErr(addChild(behaviorRef, "method", method))

        assertTrue(error, error.contains("Concept assignability error"))
        assertEquals("a failed ADD CHILD must leave the target's children as they were", before, childIdsOf(behaviorRef))
    }

    @Test
    fun `a failing SET CHILD keeps the replaced child`() {
        val rootRef = insertEditorRoot(withPropertyCell = false)
        val refCellRef = readOnRepo { nodeRefOf(refCellOf(rootRef)) }
        val oldIecRef = readOnRepo { nodeRefOf(inlineEditorOf(rootRef)) }
        val before = childIdsOf(refCellRef)

        val error = expectErr(setChild(oldIecRef, inlineEditorWith(unassignableCellJson)))

        assertTrue(error, error.contains("Concept assignability error"))
        assertEquals("a failed SET CHILD must keep the replaced child and drop the new one", before, childIdsOf(refCellRef))
    }

    @Test
    fun `a failing update_root_node_from_json deletes the staged children and keeps the originals`() {
        val rootRef = insertEditorRoot(withPropertyCell = false)
        val before = childIdsOf(rootRef)
        val json = """
            {
              "concept": "$conceptEditorFqn",
              "children": [ { "role": "cellModel", "nodes": [ {
                "concept": "$refCellFqn",
                "children": [ { "role": "editorComponent", "nodes": [ ${inlineEditorWith(unknownCellJson)} ] } ]
              } ] } ]
            }
        """.trimIndent()

        val error = expectErr(updateRoot(rootRef, json))

        assertTrue(error, error.contains("NoSuchCellModel"))
        assertEquals("a failed rewrite must leave the root's children as they were", before, childIdsOf(rootRef))
    }

    @Test
    fun `a failing reference in update_root_node_from_json deletes the children staged before it`() {
        // References are staged after the children are built and attached, so the rollback must
        // cover a failure there too.
        val rootRef = insertEditorRoot(withPropertyCell = false)
        val before = childIdsOf(rootRef)
        val json = editorRootJson(withPropertyCell = true).trimEnd().removeSuffix("}") +
            """, "references": [ { "role": "noSuchRole", "target": "x" } ] }"""

        val error = expectErr(updateRoot(rootRef, json))

        assertTrue(error, error.contains("noSuchRole"))
        assertEquals("a failed rewrite must leave the root's children as they were", before, childIdsOf(rootRef))
    }

    // ── an omitted property keeps the node's constructor value on every blueprint path ────
    //
    // ResourceVariable's behavior constructor sets isFinal = true. Its ancestor factories run too
    // (LocalVariableDeclaration's), so these tests pin the observed value, not that no factory
    // touched it.

    private val bl = "jetbrains.mps.baseLanguage.structure"
    private val resourceVariableJson = """{ "concept": "$bl.ResourceVariable", "name": "r" }"""
    private val tryWithResourceJson =
        """{ "concept": "$bl.TryUniversalStatement", "children": [ { "role": "resource", "nodes": [ $resourceVariableJson ] } ] }"""

    /** `class ResourceProbe { void m() { try (r) {} } }` as a blueprint. */
    private val resourceProbeJson = """
        {
          "concept": "$bl.ClassConcept", "name": "ResourceProbe",
          "children": [ { "role": "member", "nodes": [ {
            "concept": "$bl.InstanceMethodDeclaration", "name": "m",
            "children": [ { "role": "body", "nodes": [ {
              "concept": "$bl.StatementList",
              "children": [ { "role": "statement", "nodes": [ $tryWithResourceJson ] } ]
            } ] } ]
          } ] } ]
        }
    """.trimIndent()

    private fun insertResourceProbe(): String = expectOk(runTool(rootNodeToolset) {
        it.mps_mcp_insert_root_node_from_json(createLanguageModel("sandbox"), JsonOrText(resourceProbeJson), dryRun = false)
    }).get("reference").asString

    private fun descendantsOf(rootRef: String, conceptName: String): List<SNode> = readOnRepo {
        SNodeOperations.getNodeDescendants(resolveNodeRef(rootRef), null, false, emptyArray()).filter { it.concept.name == conceptName }
    }

    private fun soleDescendantRef(rootRef: String, conceptName: String): String =
        readOnRepo { nodeRefOf(descendantsOf(rootRef, conceptName).single()) }

    private fun isFinalOfResourceVariables(rootRef: String): List<String?> =
        readOnRepo { descendantsOf(rootRef, "ResourceVariable").map { it.getPropertyByName("isFinal") } }

    @Test
    fun `a root insert keeps a nested ResourceVariable's constructor isFinal`() {
        val rootRef = insertResourceProbe()

        assertEquals(listOf("true"), isFinalOfResourceVariables(rootRef))
    }

    @Test
    fun `ADD CHILD of a try statement keeps its nested ResourceVariable's constructor isFinal`() {
        val rootRef = insertResourceProbe()

        expectOk(addChild(soleDescendantRef(rootRef, "StatementList"), "statement", tryWithResourceJson))

        assertEquals(listOf("true", "true"), isFinalOfResourceVariables(rootRef))
    }

    @Test
    fun `ADD CHILD of a ResourceVariable keeps its constructor isFinal`() {
        val rootRef = insertResourceProbe()

        expectOk(addChild(soleDescendantRef(rootRef, "TryUniversalStatement"), "resource", resourceVariableJson))

        assertEquals(listOf("true", "true"), isFinalOfResourceVariables(rootRef))
    }

    @Test
    fun `SET CHILD of a ResourceVariable keeps its constructor isFinal`() {
        val rootRef = insertResourceProbe()
        val oldRef = soleDescendantRef(rootRef, "ResourceVariable")

        expectOk(setChild(oldRef, resourceVariableJson))

        assertTrue("the ResourceVariable must have been replaced", soleDescendantRef(rootRef, "ResourceVariable") != oldRef)
        assertEquals(listOf("true"), isFinalOfResourceVariables(rootRef))
    }

    @Test
    fun `update_root_node_from_json keeps a new nested ResourceVariable's constructor isFinal`() {
        val rootRef = insertResourceProbe()
        val oldRef = soleDescendantRef(rootRef, "ResourceVariable")

        expectOk(updateRoot(rootRef, resourceProbeJson))

        assertTrue("the ResourceVariable must have been rebuilt", soleDescendantRef(rootRef, "ResourceVariable") != oldRef)
        assertEquals(listOf("true"), isFinalOfResourceVariables(rootRef))
    }

    @Test
    fun `invariant guard - a constructor's false boolean stays unstored`() {
        // Not a regression: NamedTupleComponentDeclaration's constructor sets final = false, which a
        // boolean stores as nothing, and the blueprint path leaves it that way today. The guard only
        // catches a future change that default-fills booleans. print_node omits an unstored false
        // boolean (the boolean type renders false as null), so it must not show `true` either.
        val tuples = "jetbrains.mps.baseLanguage.tuples.structure"
        val json = """
            { "concept": "$tuples.NamedTupleDeclaration", "name": "TupleProbe",
              "children": [ { "role": "component", "nodes": [ { "concept": "$tuples.NamedTupleComponentDeclaration", "name": "c" } ] } ] }
        """.trimIndent()
        val rootRef = expectOk(runTool(rootNodeToolset) {
            it.mps_mcp_insert_root_node_from_json(createLanguageModel("sandbox"), JsonOrText(json), dryRun = false)
        }).get("reference").asString
        val componentRef = readOnRepo { nodeRefOf(soleChild(resolveNodeRef(rootRef), "component")) }

        readOnRepo {
            val component = resolveNodeRef(componentRef)
            val finalProperty = component.concept.properties.single { it.name == "final" }
            assertFalse("final = false must not be stored", SNodeAccessUtil.hasProperty(component, finalProperty))
        }
        val printed = payloadObjectFromOkData(runTool(JetBrainsMPSNodeMcpToolset()) { it.mps_mcp_print_node(componentRef, deep = false) })
        val printedFinal = printed.getAsJsonArray("properties").map { it.asJsonObject }.singleOrNull { it.get("name").asString == "final" }
        assertTrue("print_node must show final as false or omit it: $printed", printedFinal == null || printedFinal.get("value").asString == "false")
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
