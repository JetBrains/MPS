package jetbrains.mps.agents.mcp.tools

import com.google.gson.JsonParser
import jetbrains.mps.project.MPSProject
import jetbrains.mps.project.modules.LanguageProducer
import org.jetbrains.mps.openapi.persistence.PersistenceFacade
import org.junit.After
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * Cross-project WRITE-refusal test for the MCP write tools — the write-side counterpart to
 * [SearchRootNodeCrossProjectTest] (which covers the read/search side).
 *
 * A single MPS instance shares one module repository across every open project
 * ([jetbrains.mps.project.ProjectRepository] delegates `getModule`/`getModel` to the global
 * `MPSModuleRepository`), so a reference- or name-based resolve issued by a write tool selected
 * for project A can land on a model/node owned by a *different* open project. The editable
 * resolvers guard against that: `resolveEditableModel` / `resolveEditableNodeAndModel` call
 * `isModuleInProject` and, on a foreign target, return the `crossProjectErr` refusal instead of
 * mutating it. This test opens a second project and asserts a write tool selected for project A
 * refuses both a model (via `mps_mcp_insert_root_node_from_json`) and a node (via
 * `mps_mcp_update_root_node_from_json`) owned by project B, while the same calls selected for
 * project B are accepted — proving the refusal is the cross-project guard and not a stale or
 * unresolvable reference.
 *
 * Project A is the base fixture's [myProject]; project B is a second project created here and
 * closed in [closeProjectB].
 */
class WriteToolCrossProjectTest : McpIntegrationTestBase() {

    private val rootNodeToolset = JetBrainsMPSRootNodeMcpToolset()

    private val conceptDeclarationFqn = "jetbrains.mps.lang.structure.structure.ConceptDeclaration"

    private var projectB: MPSProject? = null

    @After
    fun closeProjectB() {
        projectB?.let { mcpEnvironment.closeProject(it) }
        projectB = null
    }

    @Test
    fun `insert_root_node_from_json refuses a model owned by another open project`() {
        val b = openProjectB()
        val bStructureModelRef = createLanguageWithStructureModelIn(b, "test.langB${System.nanoTime()}")

        val json = """
            {
              "concept": "$conceptDeclarationFqn",
              "properties": [ { "name": "name", "value": "InsertedAcrossProjects" } ]
            }
        """.trimIndent()

        // Write tool selected for project A, targeting project B's model → refused by the guard.
        val asA = runTool(rootNodeToolset) {
            it.mps_mcp_insert_root_node_from_json(bStructureModelRef, JsonOrText(json), dryRun = false)
        }
        assertCrossProjectRefusal(asA)

        // Positive control: the SAME call selected for project B succeeds, proving the model
        // reference is valid and resolvable — i.e. the refusal above is specifically the
        // cross-project guard, not a NOT_FOUND.
        val asB = runToolForProject(b, rootNodeToolset) {
            it.mps_mcp_insert_root_node_from_json(bStructureModelRef, JsonOrText(json), dryRun = false)
        }
        assertOk("project B must be allowed to write its own model", asB)
    }

    @Test
    fun `update_root_node_from_json refuses a node owned by another open project`() {
        val b = openProjectB()
        val bStructureModelRef = createLanguageWithStructureModelIn(b, "test.langB${System.nanoTime()}")
        val bRootRef = createConceptRootIn(b, bStructureModelRef, "RootOnlyInProjectB")

        val json = """
            { "concept": "$conceptDeclarationFqn",
              "properties": [ { "name": "virtualPackage", "value": "across.projects" } ] }
        """.trimIndent()

        // Write tool selected for project A, targeting project B's node → refused by the guard.
        val asA = runTool(rootNodeToolset) {
            it.mps_mcp_update_root_node_from_json(bRootRef, JsonOrText(json), dryRun = false)
        }
        assertCrossProjectRefusal(asA)

        // Positive control: the SAME node update selected for project B succeeds.
        val asB = runToolForProject(b, rootNodeToolset) {
            it.mps_mcp_update_root_node_from_json(bRootRef, JsonOrText(json), dryRun = false)
        }
        assertOk("project B must be allowed to write its own node", asB)
    }

    private fun openProjectB(): MPSProject =
        (mcpEnvironment.createEmptyProject() as MPSProject).also { projectB = it }

    private fun assertCrossProjectRefusal(response: String) {
        val err = expectErr(response)
        assertTrue(
            "expected a cross-project write refusal, got: $err",
            err.contains("not part of the project selected by projectPath"),
        )
    }

    private fun assertOk(message: String, response: String) {
        assertTrue("$message: $response", JsonParser.parseString(response).asJsonObject.get("ok").asBoolean)
    }

    /** Creates a language with a `.structure` model in [project] and returns the model's reference. */
    private fun createLanguageWithStructureModelIn(project: MPSProject, name: String): String {
        val dir = createDirIn(project, name)
        var modelRef = ""
        executeCommandIn(project) {
            val lang = LanguageProducer(project).withGenerator(false).create(name, dir)
            val structure = lang.models.single { it.name.longName.endsWith(".structure") }
            modelRef = PersistenceFacade.getInstance().asString(structure.reference)
        }
        return modelRef
    }

    /**
     * Creates a named `ConceptDeclaration` root in [structureModelRef] as [project] and returns
     * its persistent SNodeReference.
     */
    private fun createConceptRootIn(project: MPSProject, structureModelRef: String, name: String): String {
        val params = """
            {
              "structureModelRef": "$structureModelRef",
              "conceptsJson": [ { "name": "$name" } ]
            }
        """.trimIndent()
        val resp = runToolForProject(project, JetBrainsMPSLanguageStructureMcpToolset()) {
            it.mps_mcp_alter_structure(MPSStructureAlterOperation.CREATE_CONCEPTS, params)
        }
        assertTrue(
            "CREATE_CONCEPTS in the second project must succeed: $resp",
            JsonParser.parseString(resp).asJsonObject.get("ok").asBoolean,
        )
        return project.modelAccess.computeReadAction<String> {
            val model = PersistenceFacade.getInstance().createModelReference(structureModelRef).resolve(project.repository)
                ?: error("structure model '$structureModelRef' not resolvable in the second project")
            val root = model.rootNodes.single { it.name == name }
            PersistenceFacade.getInstance().asString(root.reference)
        }
    }
}
