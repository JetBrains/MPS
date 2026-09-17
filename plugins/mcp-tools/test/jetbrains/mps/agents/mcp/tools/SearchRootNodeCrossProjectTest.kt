package jetbrains.mps.agents.mcp.tools

import com.google.gson.JsonParser
import jetbrains.mps.project.MPSProject
import jetbrains.mps.project.modules.LanguageProducer
import org.jetbrains.mps.openapi.persistence.PersistenceFacade
import org.junit.After
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * Cross-project retrieval test for `mps_mcp_search_root_node_by_name`.
 *
 * A single MPS instance shares one module repository across every open project, so a search must
 * return only the roots of the project selected by `projectPath`. Before the scope fix the search
 * ran over a `GlobalScope(repository)` and leaked roots from sibling projects; this test opens a
 * second project and asserts each project's search sees its own root and not the other's — i.e. it
 * fails on the pre-fix behaviour and passes on the project-confined scope.
 *
 * Project A is the base fixture's [myProject]; project B is a second empty project created here and
 * closed in [closeProjectB].
 */
class SearchRootNodeCrossProjectTest : McpIntegrationTestBase() {

    private val searchToolset = JetBrainsMPSRootNodeMcpToolset()

    private var projectB: MPSProject? = null

    @After
    fun closeProjectB() {
        projectB?.let { mcpEnvironment.closeProject(it) }
        projectB = null
    }

    @Test
    fun `search returns only roots of the project selected by projectPath`() {
        // A root in project A (the base fixture's project).
        createConceptRoot("RootOnlyInProjectA")

        // A second open project with its own language, structure model and root.
        val b = mcpEnvironment.createEmptyProject() as MPSProject
        projectB = b
        val bStructureModelRef = createLanguageWithStructureModelIn(b, "test.langB${System.nanoTime()}")
        createConceptRootIn(b, bStructureModelRef, "RootOnlyInProjectB")

        val bothNames = """["RootOnlyInProjectA","RootOnlyInProjectB"]"""

        // Searching as project A must see only A's root.
        val asA = searchNames(runTool(searchToolset) { it.mps_mcp_search_root_node_by_name(JsonOrText(bothNames)) })
        assertTrue("project A search must include A's own root: $asA", asA.contains("RootOnlyInProjectA"))
        assertFalse("project A search must NOT leak project B's root: $asA", asA.contains("RootOnlyInProjectB"))

        // Searching as project B must see only B's root.
        val asB = searchNames(runToolForProject(b, searchToolset) { it.mps_mcp_search_root_node_by_name(JsonOrText(bothNames)) })
        assertTrue("project B search must include B's own root: $asB", asB.contains("RootOnlyInProjectB"))
        assertFalse("project B search must NOT leak project A's root: $asB", asB.contains("RootOnlyInProjectA"))
    }

    private fun searchNames(response: String): Set<String> =
        parseDataArray(response).map { it.asJsonObject.get("name").asString }.toSet()

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

    /** Creates a named `ConceptDeclaration` root in [structureModelRef], invoked as [project]. */
    private fun createConceptRootIn(project: MPSProject, structureModelRef: String, name: String) {
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
            JsonParser.parseString(resp).asJsonObject.get("ok").asBoolean
        )
    }
}
