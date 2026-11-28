package jetbrains.mps.agents.mcp.tools.integration

import jetbrains.mps.agents.mcp.tools.*
import jetbrains.mps.agents.mcp.tools.common.*

import com.google.gson.JsonObject
import com.google.gson.JsonParser
import jetbrains.mps.extapi.model.SModelBase
import jetbrains.mps.project.MPSProject
import jetbrains.mps.project.ModuleId
import jetbrains.mps.project.Solution
import jetbrains.mps.project.modules.LanguageProducer
import jetbrains.mps.project.modules.SolutionProducer
import jetbrains.mps.smodel.Language
import jetbrains.mps.smodel.SModelInternal
import jetbrains.mps.smodel.loading.ModelLoadingState
import jetbrains.mps.smodel.adapter.MetaAdapterByDeclaration
import jetbrains.mps.smodel.adapter.ids.MetaIdHelper
import jetbrains.mps.smodel.language.LanguageRegistry
import org.jetbrains.mps.openapi.language.SAbstractConcept
import org.jetbrains.mps.openapi.language.SConcept
import org.jetbrains.mps.openapi.language.SLanguage
import org.jetbrains.mps.openapi.model.EditableSModel
import org.jetbrains.mps.openapi.model.SModel
import org.jetbrains.mps.openapi.module.SModule
import org.jetbrains.mps.openapi.module.SRepository
import org.jetbrains.mps.openapi.persistence.PersistenceFacade
import org.junit.After
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNotEquals
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test
import java.io.File
import java.nio.file.Paths

/**
 * Regression coverage for project-selected resolution in a shared MPS module repository.
 *
 * The test creates same-named modules/models in two open projects. Tools invoked as project A
 * must prefer project A's modules/models over project B's, even though both are visible through
 * the same global repository.
 */
class ProjectResolutionCrossProjectTest : McpIntegrationTestBase() {

    private val moduleToolset = MPSModuleMcpToolset()
    private val modelToolset = MPSModelMcpToolset()
    private val languageToolset = MPSLanguageMcpToolset()
    private val nodeToolset = MPSNodeMcpToolset()
    private val projectToolset = MPSProjectMcpToolset()
    private val rootNodeToolset = MPSRootNodeMcpToolset()

    private val conceptDeclarationFqn = "jetbrains.mps.lang.structure.structure.ConceptDeclaration"

    private var projectB: MPSProject? = null

    private companion object {
        const val MAX_SUGGESTIONS = MPSLanguageMcpToolset.MAX_SUGGESTIONS_PER_UNRESOLVED
        const val CLASS_CONCEPT = "jetbrains.mps.baseLanguage.structure.ClassConcept"
        const val BASE_LANGUAGE = "jetbrains.mps.baseLanguage"
    }

    @After
    fun closeProjectB() {
        projectB?.let { mcpEnvironment.closeProject(it) }
        projectB = null
    }

    @Test
    fun `create generator resolves parent language in selected project`() {
        val projectB = openProjectB()
        val languageName = "mcp.test.statechart${System.nanoTime()}"
        val bLanguage = createLanguageIn(projectB, languageName)
        val aLanguage = createLanguageIn(myProject, languageName)

        val response = runTool(moduleToolset) {
            it.mps_mcp_create_module("generator", "ignored", "", null, languageName, false, false, false)
        }
        val created = expectOk(response)
        assertEquals("$languageName.generator", created.get("name").asString)

        readIn(myProject) {
            val aGenerator = aLanguage.generators.singleOrNull { it.moduleName == "$languageName.generator" }
            assertNotNull("generator must be attached to the selected project's parent language", aGenerator)
        }
        readIn(projectB) {
            assertTrue(
                "generator must not be attached to the sibling project's same-named language",
                bLanguage.generators.none { it.moduleName == "$languageName.generator" },
            )
        }
    }

    /**
     * T7 (MPS-40232). DELETE resolves only modules of the selected project, both by name and by module reference,
     * although the reference resolves the sibling's generator through the shared repository. Should that gate
     * weaken, ModuleDeleteHelper would edit the sibling project's language.
     */
    @Test
    fun `delete of a sibling project language-owned generator is not found`() {
        val projectB = openProjectB()
        val languageName = "mcp.test.siblingGen${System.nanoTime()}"
        var bLanguage: Language? = null
        executeCommandIn(projectB) {
            bLanguage = LanguageProducer(projectB).create(languageName, createDirIn(projectB, uniqueDirName(languageName)))
        }
        val language = checkNotNull(bLanguage)
        val (generator, generatorRef, languageDir) = readIn(projectB) {
            val g = language.ownedGenerators.single()
            Triple(g, PersistenceFacade.getInstance().asString(g.moduleReference), File(language.moduleSourceDir.path))
        }
        val mpl = File(languageDir, "$languageName.mpl")
        val mplBefore = mpl.readBytes()
        assertNotNull("test precondition: the reference resolves through the shared repository",
            readIn(myProject) { PersistenceFacade.getInstance().createModuleReference(generatorRef).resolve(myProject.repository) })
        try {
            for (target in listOf(readIn(projectB) { generator.moduleName!! }, generatorRef)) {
                val response = runTool(moduleToolset) {
                    it.mps_mcp_update_module(target, operation = ModuleOperation.DELETE, deleteFiles = true)
                }
                assertEquals("a sibling project's generator must not resolve via '$target': $response",
                    "NOT_FOUND", JsonParser.parseString(response).asJsonObject.get("code")?.asString)
            }
            readIn(projectB) {
                assertTrue("the sibling project must keep the generator", projectB.isProjectModule(generator))
                assertTrue("the sibling language must still declare the generator",
                    language.moduleDescriptor.generators.any { it.moduleReference == generator.moduleReference })
            }
            assertTrue("the sibling language descriptor must not be rewritten", mplBefore.contentEquals(mpl.readBytes()))
            assertTrue("the sibling generator folder must survive", File(languageDir, "generator").isDirectory)
        } finally {
            // each generator right before its language, so that the .mpl file listener is released (MPS-40228)
            executeCommandIn(projectB) {
                projectB.removeModule(generator)
                projectB.removeModule(language)
            }
        }
    }

    @Test
    fun `module dependency resolves same-named target in selected project`() {
        val projectB = openProjectB()
        val targetName = "mcp.test.target${System.nanoTime()}"
        val bTarget = createLanguageIn(projectB, targetName)
        val aTarget = createLanguageIn(myProject, targetName)
        val source = createSolutionIn(myProject, "mcp.test.source${System.nanoTime()}")

        val response = runTool(moduleToolset) {
            it.mps_mcp_module_dependency(source.moduleName!!, targetName, DependencyOperation.ADD, null, false)
        }
        expectOk(response)

        readIn(myProject) {
            val dependencies = source.moduleDescriptor.dependencies.map { it.moduleRef }.toSet()
            assertTrue(
                "dependency must point to the selected project's same-named target",
                aTarget.moduleReference in dependencies,
            )
            assertFalse(
                "dependency must not point to the sibling project's same-named target",
                bTarget.moduleReference in dependencies,
            )
        }
    }

    @Test
    fun `module dependency accepts explicit sibling project module reference`() {
        val projectB = openProjectB()
        val bTarget = createLanguageIn(projectB, "mcp.test.explicitModuleTarget${System.nanoTime()}")
        val bTargetRef = readIn(projectB) { PersistenceFacade.getInstance().asString(bTarget.moduleReference) }
        val source = createSolutionIn(myProject, "mcp.test.explicitModuleSource${System.nanoTime()}")

        val response = runTool(moduleToolset) {
            it.mps_mcp_module_dependency(source.moduleName!!, bTargetRef, DependencyOperation.ADD, null, false)
        }
        expectOk(response)

        readIn(myProject) {
            val dependencies = source.moduleDescriptor.dependencies.map { it.moduleRef }.toSet()
            assertTrue(
                "explicit sibling project module reference must be accepted as a read-only dependency target",
                bTarget.moduleReference in dependencies,
            )
        }
    }

    @Test
    fun `facet read tools mark explicit sibling project module reference`() {
        val projectB = openProjectB()
        val bSolution = createSolutionIn(projectB, "mcp.test.facetTarget${System.nanoTime()}")
        val bSolutionRef = readIn(projectB) { PersistenceFacade.getInstance().asString(bSolution.moduleReference) }

        val facets = expectOk(runTool(moduleToolset) {
            it.mps_mcp_get_module_facets(bSolutionRef)
        })
        assertForeignProjectMarker(facets.getAsJsonObject("module"), projectB)

        val facetTypes = expectOk(runTool(moduleToolset) {
            it.mps_mcp_list_facet_types(bSolutionRef)
        })
        assertForeignProjectMarker(facetTypes.getAsJsonObject("module"), projectB)
    }

    @Test
    fun `model dependency accepts explicit sibling project model reference`() {
        val projectB = openProjectB()
        val bSolution = createSolutionIn(projectB, "mcp.test.explicitModelTarget${System.nanoTime()}")
        val bModel = createModelIn(projectB, bSolution, "mcp.test.explicitModelTarget.model${System.nanoTime()}")
        val bModelRef = readIn(projectB) { PersistenceFacade.getInstance().asString(bModel.reference) }
        val aSolution = createSolutionIn(myProject, "mcp.test.explicitModelSource${System.nanoTime()}")
        val aModel = createModel(aSolution, "mcp.test.explicitModelSource.model${System.nanoTime()}")
        val aModelRef = readIn(myProject) { PersistenceFacade.getInstance().asString(aModel.reference) }

        val response = runTool(modelToolset) {
            it.mps_mcp_model_dependency(aModelRef, bModelRef, DependencyOperation.ADD)
        }
        expectOk(response)

        readIn(myProject) {
            val modelImports = (aModel as SModelInternal).modelImports
            assertTrue(
                "explicit sibling project model reference must be accepted as a read-only model import",
                bModel.reference in modelImports,
            )
            val dependencies = aSolution.moduleDescriptor.dependencies.map { it.moduleRef }.toSet()
            assertTrue(
                "importing a sibling project model must add the sibling module dependency",
                bSolution.moduleReference in dependencies,
            )
        }
    }

    @Test
    fun `root search explicit model and module scopes resolve same-named targets in selected project`() {
        val projectB = openProjectB()
        val languageName = "mcp.test.scope${System.nanoTime()}"
        val bLanguage = createLanguageIn(projectB, languageName)
        val aLanguage = createLanguageIn(myProject, languageName)
        val aStructure = structureModelOf(myProject, aLanguage)
        val bStructure = structureModelOf(projectB, bLanguage)

        createConceptRootIn(myProject, aStructure, "RootOnlyInProjectA")
        createConceptRootIn(projectB, bStructure, "RootOnlyInProjectB")

        val names = """["RootOnlyInProjectA","RootOnlyInProjectB"]"""
        val asModelScope = searchNames(runTool(rootNodeToolset) {
            it.mps_mcp_search_root_node_by_name(JsonOrText(names), scope = "models", models = JsonOrText("$languageName.structure"))
        })
        assertEquals(setOf("RootOnlyInProjectA"), asModelScope)

        val asModuleScope = searchNames(runTool(rootNodeToolset) {
            it.mps_mcp_search_root_node_by_name(JsonOrText(names), scope = "modules", modules = JsonOrText(languageName))
        })
        assertEquals(setOf("RootOnlyInProjectA"), asModuleScope)
    }

    @Test
    fun `insert root from JSON resolves same-named concept in selected project`() {
        val projectB = openProjectB()
        val languageName = "mcp.test.jsonconcept${System.nanoTime()}"
        val bLanguage = createLanguageIn(projectB, languageName)
        val aLanguage = createLanguageIn(myProject, languageName)
        val bStructure = structureModelOf(projectB, bLanguage)
        val aStructure = structureModelOf(myProject, aLanguage)
        val conceptName = "JsonRoot"

        createConceptRootIn(projectB, bStructure, conceptName, rootable = true)
        createConceptRootIn(myProject, aStructure, conceptName, rootable = true)

        val solution = createSolutionIn(myProject, "mcp.test.jsonconcept.target${System.nanoTime()}")
        val model = createModel(solution, "mcp.test.jsonconcept.model${System.nanoTime()}")
        val modelRef = readIn(myProject) { PersistenceFacade.getInstance().asString(model.reference) }
        val response = runTool(rootNodeToolset) {
            it.mps_mcp_insert_root_node_from_json(modelRef, JsonOrText("""{ "concept": "$languageName.structure.$conceptName" }"""), dryRun = false)
        }
        // Neither language is built, so the insert is refused (D112); the refusal names the language
        // the concept resolved to, which must be the selected project's, not the sibling's.
        expectLanguageNotBuilt(response, aLanguage)
        readIn(myProject) { assertTrue("a refused insert must not add a root", model.rootNodes.none()) }
    }

    @Test
    fun `insert root from JSON resolves explicit ModelRoot reference target in selected project`() {
        val projectB = openProjectB()
        val languageName = "mcp.test.jsontarget${System.nanoTime()}"
        val bLanguage = createLanguageIn(projectB, languageName)
        val aLanguage = createLanguageIn(myProject, languageName)
        val bStructure = structureModelOf(projectB, bLanguage)
        val aStructure = structureModelOf(myProject, aLanguage)

        createConceptRootIn(projectB, bStructure, "Base")
        val aBaseRef = createConceptRootIn(myProject, aStructure, "Base")
        val aStructureRef = readIn(myProject) { PersistenceFacade.getInstance().asString(aStructure.reference) }
        val json = """
            {
              "concept": "$conceptDeclarationFqn",
              "properties": [ { "name": "name", "value": "DerivedFromJson" } ],
              "references": [ { "role": "extends", "targetReference": "$languageName.structure.Base" } ]
            }
        """.trimIndent()

        val response = runTool(rootNodeToolset) {
            it.mps_mcp_insert_root_node_from_json(aStructureRef, JsonOrText(json), dryRun = false)
        }
        val derivedRef = expectOk(response).get("reference").asString

        assertEquals(aBaseRef, readIn(myProject) { referenceTarget(derivedRef, "extends") })
    }

    @Test
    fun `update node reference resolves explicit ModelRoot target in selected project`() {
        val projectB = openProjectB()
        val languageName = "mcp.test.reftarget${System.nanoTime()}"
        val bLanguage = createLanguageIn(projectB, languageName)
        val aLanguage = createLanguageIn(myProject, languageName)
        val bStructure = structureModelOf(projectB, bLanguage)
        val aStructure = structureModelOf(myProject, aLanguage)

        createConceptRootIn(projectB, bStructure, "Base")
        val aBaseRef = createConceptRootIn(myProject, aStructure, "Base")
        val derivedRef = createConceptRootIn(myProject, aStructure, "Derived")

        val response = runTool(nodeToolset) {
            it.mps_mcp_update_node(
                NodeUpdateOperation.SET,
                NodeUpdateKind.REFERENCE,
                references = listOf(listOf(derivedRef, "extends", "$languageName.structure.Base")),
            )
        }
        // SET REFERENCE returns a batch envelope whose `data` is an array of per-triplet results,
        // so assert the envelope's `ok` directly rather than via expectOk (which expects an object).
        val batch = JsonParser.parseString(response).asJsonObject
        assertTrue("batch reference update must succeed: $response", batch.get("ok").asBoolean)

        assertEquals(aBaseRef, readIn(myProject) { referenceTarget(derivedRef, "extends") })
    }

    @Test
    fun `project structure includeStubModules prefers selected project and marks sibling project`() {
        val projectB = openProjectB()
        val languageName = "mcp.test.structure${System.nanoTime()}"
        val bLanguage = createLanguageIn(projectB, languageName)
        val aLanguage = createLanguageIn(myProject, languageName)
        val bStructure = structureModelOf(projectB, bLanguage)
        val aStructure = structureModelOf(myProject, aLanguage)

        createConceptRootIn(projectB, bStructure, "SharedRoot")
        val aSharedRef = createConceptRootIn(myProject, aStructure, "SharedRoot")
        createConceptRootIn(projectB, bStructure, "SiblingOnlyRoot")

        val sharedResponse = runTool(projectToolset) {
            it.mps_mcp_get_project_structure(
                includeStubModules = true,
                startingPoint = "$languageName.structure.SharedRoot",
            )
        }
        val sharedPayload = readJsonObjectFromOkPath(sharedResponse)
        assertEquals(aSharedRef, sharedPayload.get("reference").asString)
        assertFalse(
            "same-named starting point must still prefer the selected project",
            sharedPayload.has("containingProject"),
        )

        val siblingOnlyResponse = runTool(projectToolset) {
            it.mps_mcp_get_project_structure(
                includeStubModules = true,
                startingPoint = "$languageName.structure.SiblingOnlyRoot",
            )
        }
        val siblingPayload = readJsonObjectFromOkPath(siblingOnlyResponse)
        assertEquals("SiblingOnlyRoot", siblingPayload.get("name").asString)
        assertForeignProjectMarker(siblingPayload, projectB)
    }

    @Test
    fun `project structure includeStubModules still resolves library module with sibling project open`() {
        openProjectB()

        val response = runTool(projectToolset) {
            it.mps_mcp_get_project_structure(
                includeStubModules = true,
                startingPoint = "jetbrains.mps.lang.core",
            )
        }

        val payload = readJsonObjectFromOkPath(response)
        assertEquals("jetbrains.mps.lang.core", payload.get("name").asString)
        assertEquals("Language", payload.get("kind").asString)
    }

    @Test
    fun `model used language accepts explicit sibling project language reference`() {
        val projectB = openProjectB()
        val bLanguage = createLanguageIn(projectB, "mcp.test.explicitLang${System.nanoTime()}")
        val solution = createSolutionIn(myProject, "mcp.test.explicitLang.target${System.nanoTime()}")
        val model = createModel(solution, "mcp.test.explicitLang.model${System.nanoTime()}")
        val modelRef = readIn(myProject) { PersistenceFacade.getInstance().asString(model.reference) }
        val bLanguageRef = readIn(projectB) { PersistenceFacade.getInstance().asString(MetaAdapterByDeclaration.getLanguage(bLanguage)) }

        val response = runTool(modelToolset) {
            it.mps_mcp_model_used_language(modelRef, bLanguageRef, "language")
        }
        val payload = expectOk(response)
        assertTrue("explicit sibling language ref must be imported: $payload", payload.get("added").asBoolean)

        assertTrue(
            "sibling language must be imported into the selected project model",
            readIn(myProject) { (model as SModelInternal).importedLanguageIds().any { PersistenceFacade.getInstance().asString(it) == bLanguageRef } },
        )
    }

    @Test
    fun `model used devkit accepts explicit sibling project module reference`() {
        val projectB = openProjectB()
        val bDevkitRef = createDevKitIn(projectB, "mcp.test.explicitDevkit${System.nanoTime()}")
        val solution = createSolutionIn(myProject, "mcp.test.explicitDevkit.target${System.nanoTime()}")
        val model = createModel(solution, "mcp.test.explicitDevkit.model${System.nanoTime()}")
        val modelRef = readIn(myProject) { PersistenceFacade.getInstance().asString(model.reference) }

        val response = runTool(modelToolset) {
            it.mps_mcp_model_used_language(modelRef, bDevkitRef, "devkit")
        }
        val payload = expectOk(response)
        assertTrue("explicit sibling devkit ref must be imported: $payload", payload.get("added").asBoolean)

        assertTrue(
            "sibling devkit must be imported into the selected project model",
            readIn(myProject) { (model as SModelInternal).importedDevkits().any { PersistenceFacade.getInstance().asString(it) == bDevkitRef } },
        )
    }

    @Test
    fun `insert root from JSON accepts explicit sibling project concept reference`() {
        val projectB = openProjectB()
        val bLanguage = createLanguageIn(projectB, "mcp.test.foreignConcept${System.nanoTime()}")
        val bStructure = structureModelOf(projectB, bLanguage)
        val bConceptDeclarationRef = createConceptRootIn(projectB, bStructure, "ForeignRoot", rootable = true)
        val bConceptRef = conceptReferenceForDeclaration(projectB, bConceptDeclarationRef)
        val bLanguageRef = readIn(projectB) { PersistenceFacade.getInstance().asString(MetaAdapterByDeclaration.getLanguage(bLanguage)) }

        val solution = createSolutionIn(myProject, "mcp.test.foreignConcept.target${System.nanoTime()}")
        val model = createModel(solution, "mcp.test.foreignConcept.model${System.nanoTime()}")
        val modelRef = readIn(myProject) { PersistenceFacade.getInstance().asString(model.reference) }

        val response = runTool(rootNodeToolset) {
            it.mps_mcp_insert_root_node_from_json(modelRef, JsonOrText("""{ "conceptReference": "$bConceptRef" }"""), dryRun = false)
        }
        // The sibling language is not built, so the insert is refused (D112); the refusal naming it
        // shows the explicit sibling-project reference was accepted and resolved.
        expectLanguageNotBuilt(response, bLanguage)

        readIn(myProject) {
            assertTrue("a refused insert must not add a root", model.rootNodes.none())
            assertFalse(
                "a refused insert must not import the foreign language",
                (model as SModelInternal).importedLanguageIds().any { PersistenceFacade.getInstance().asString(it) == bLanguageRef },
            )
        }
    }

    @Test
    fun `update node reference accepts explicit sibling project target node`() {
        val projectB = openProjectB()
        val languageName = "mcp.test.foreignReference${System.nanoTime()}"
        val bLanguage = createLanguageIn(projectB, languageName)
        val aLanguage = createLanguageIn(myProject, "mcp.test.foreignReference.source${System.nanoTime()}")
        val bStructure = structureModelOf(projectB, bLanguage)
        val aStructure = structureModelOf(myProject, aLanguage)

        val bBaseRef = createConceptRootIn(projectB, bStructure, "ForeignBase")
        val derivedRef = createConceptRootIn(myProject, aStructure, "Derived")

        val response = runTool(nodeToolset) {
            it.mps_mcp_update_node(
                NodeUpdateOperation.SET,
                NodeUpdateKind.REFERENCE,
                references = listOf(listOf(derivedRef, "extends", bBaseRef)),
            )
        }
        val batch = JsonParser.parseString(response).asJsonObject
        assertTrue("batch reference update to sibling project target must succeed: $response", batch.get("ok").asBoolean)

        assertEquals(bBaseRef, readIn(myProject) { referenceTarget(derivedRef, "extends") })
        readIn(myProject) {
            assertTrue(
                "setting a reference to a sibling project node must import the target model",
                (aStructure as SModelInternal).modelImports.contains(bStructure.reference),
            )
        }

        val printed = readJsonObjectFromOkPath(runTool(nodeToolset) {
            it.mps_mcp_print_node(derivedRef, deep = false)
        })
        val extendsReference = printed.getAsJsonArray("references")
            .map { it.asJsonObject }
            .single { it.get("role").asString == "extends" }
        assertForeignProjectMarker(extendsReference, projectB, "target")

    }

    @Test
    fun `search concepts accepts sibling-only model reference`() {
        val projectB = openProjectB()
        val bLanguage = createLanguageIn(projectB, "mcp.test.searchmodel${System.nanoTime()}")
        val bStructureRef = readIn(projectB) {
            PersistenceFacade.getInstance().asString(structureModelOf(projectB, bLanguage).reference)
        }

        val response = runTool(languageToolset) {
            it.mps_mcp_search_concepts(listOf("ConceptDeclaration"), modelReference = bStructureRef)
        }

        val resultNames = parseDataArray(response).map { it.asJsonObject.get("name").asString }.toSet()
        assertTrue("sibling-only modelReference must be accepted as a read-only concept-search scope: $response", "ConceptDeclaration" in resultNames)
    }

    // ── D130: provenance, scope split and origin ordering ─────────────────────────────────────────
    //
    // Fixtures, unless a test says otherwise: languages made by LanguageProducer, so they have no
    // runtime and every concept is read from its structure-model declaration (D112); project B is
    // a second empty project opened beside A and closed in @After. Unique letter-only tokens
    // ("Zq" + 8 random letters) keep each query's match set to the concepts the test creates, so
    // exact assertions on order and counts do not depend on the bundled language set.

    @Test
    fun `search scope project omits an unused sibling language until a loaded model imports its exact id`() {
        // Fixture: two same-named, different-id languages in B, one concept each; an A solution
        // model that is loaded and never saved.
        val projectB = openProjectB()
        val token = uniqueToken()
        val sharedName = "mcp.test.scopesplit${System.nanoTime()}"
        val bUsed = createLanguageIn(projectB, sharedName)
        val bTwin = createLanguageIn(projectB, sharedName)
        createConceptRootIn(projectB, structureModelOf(projectB, bUsed), "${token}Used")
        createConceptRootIn(projectB, structureModelOf(projectB, bTwin), "${token}Twin")
        val bUsedLanguage = readIn(projectB) { MetaAdapterByDeclaration.getLanguage(bUsed) }
        val bTwinLanguage = readIn(projectB) { MetaAdapterByDeclaration.getLanguage(bTwin) }
        assertEquals("precondition: the two languages share a name", bUsedLanguage.qualifiedName, bTwinLanguage.qualifiedName)
        assertNotEquals("precondition: the two languages have different ids", bUsedLanguage, bTwinLanguage)
        val (solution, model) = createLoadedModelInA()

        readIn(myProject) {
            val scope = languageToolset.projectSearchScope(myProject, myProject.repository)
            assertFalse("an unused sibling language must not be in project scope", bUsedLanguage in scope)
            assertFalse("an unused sibling language must not be in project scope", bTwinLanguage in scope)
        }
        val firstPass = search(listOf("${token}Used"))
        assertTrue("the miss must widen, so the sibling hit was absent from the first pass: ${firstPass.warnings}", firstPass.widened)
        val all = search(listOf("${token}Used"), scope = "all")
        assertFalse("scope all must not widen: ${all.warnings}", all.widened)
        assertForeignProjectMarker(all.single("${token}Used"), projectB)

        executeCommandIn(myProject) { (model as SModelInternal).addLanguage(bUsedLanguage) }
        readIn(myProject) {
            assertTrue("precondition: the A model is still fully loaded", (model as SModelBase).isLoaded)
            assertFalse(
                "precondition: the import is not stamped in the module descriptor yet, so only the loaded model can supply it",
                bUsedLanguage in solution.moduleDescriptor.languageVersions.keys,
            )
            val scope = languageToolset.projectSearchScope(myProject, myProject.repository)
            assertTrue("a language imported into a loaded model must be in project scope without a save", bUsedLanguage in scope)
            assertFalse("a same-named language with another id must not become used", bTwinLanguage in scope)
        }
        val afterImport = search(listOf("${token}Used"))
        assertFalse("the imported language must answer the first pass: ${afterImport.warnings}", afterImport.widened)
        assertForeignProjectMarker(afterImport.single("${token}Used"), projectB)
        val twin = search(listOf("${token}Twin"))
        assertTrue("the same-named twin must still need the widening: ${twin.warnings}", twin.widened)
    }

    @Test
    fun `search scope project widens a miss to sibling languages with markers and a strict own hit prevents it`() {
        // Fixture: an unused B language with two concepts; later one concept in A's fixture language.
        val projectB = openProjectB()
        val token = uniqueToken()
        val bLanguage = createLanguageIn(projectB, "mcp.test.widen${System.nanoTime()}")
        createConceptsIn(projectB, structureModelOf(projectB, bLanguage), listOf("${token}Beta", "${token}Gamma"))

        val widened = search(listOf(token))
        assertTrue("a project miss must widen: ${widened.warnings}", widened.widened)
        assertEquals(setOf("${token}Beta", "${token}Gamma"), widened.hits.map { it.get("name").asString }.toSet())
        widened.hits.forEach { assertForeignProjectMarker(it, projectB) }

        createConceptRootIn(myProject, structureModel, "${token}Alpha")
        val strict = search(listOf(token))
        assertFalse("a strict project hit must prevent the widening: ${strict.warnings}", strict.widened)
        assertEquals(listOf("${token}Alpha"), strict.hits.map { it.get("name").asString })
        assertFalse("an own hit carries no marker: ${strict.hits}", strict.hits.single().has("containingProject"))
    }

    @Test
    fun `search orders strict tiers and fallback by origin inside match quality`() {
        // Fixture: A language `zz` (defined), B language `mm` imported into a loaded A model (used),
        // B language `aa` (other). The qualified-name order is the reverse of the origin order, so
        // only the origin key can produce the expected sequence. Languages are created (and so
        // scanned) other, own, used, and each language's concepts in reverse name order, so neither
        // scan order nor creation order matches the expected sequence either.
        val projectB = openProjectB()
        val t = uniqueToken()
        val u = uniqueToken()
        val v = uniqueToken()
        val nano = System.nanoTime()
        val other = createLanguageIn(projectB, "mcp.test.aa$nano")
        val own = createLanguageIn(myProject, "mcp.test.zz$nano")
        val used = createLanguageIn(projectB, "mcp.test.mm$nano")
        createConceptsIn(projectB, structureModelOf(projectB, other), listOf("${t}Item$u", "${t}ItemMore", "${t}Item"))
        createConceptsIn(myProject, structureModelOf(myProject, own), listOf("${t}ItemMore", "${t}Item"))
        createConceptsIn(projectB, structureModelOf(projectB, used), listOf("${t}ItemMore", "${t}Item"))
        importIntoLoadedModelOfA(readIn(projectB) { MetaAdapterByDeclaration.getLanguage(used) })
        assertOriginTiers(own to ConceptSuggestions.ORIGIN_DEFINED, used to ConceptSuggestions.ORIGIN_USED, other to ConceptSuggestions.ORIGIN_OTHER)
        assertScannedBefore(other, own)
        assertScannedBefore(own, used)

        val strict = search(listOf("${t}Item"), scope = "all").qualifiedNames()
        val expectedStrict = listOf(qn(own, "${t}Item"), qn(used, "${t}Item"), qn(other, "${t}Item")) +
            listOf(qn(own, "${t}ItemMore"), qn(used, "${t}ItemMore")) +
            listOf(qn(other, "${t}ItemMore"), qn(other, "${t}Item$u")).sorted()
        assertEquals("exact-name tier first, each tier by origin then qualified name", expectedStrict, strict)

        // Three words, none matched by one concept: no strict match. `${t}Item$u` matches two words
        // (score 2), every other concept one; score stays primary, origin and name break ties.
        val fallback = search(listOf("${t}Item $u $v"), scope = "all").qualifiedNames()
        val expectedFallback = listOf(qn(other, "${t}Item$u"), qn(own, "${t}Item"), qn(own, "${t}ItemMore"),
            qn(used, "${t}Item"), qn(used, "${t}ItemMore"), qn(other, "${t}Item"), qn(other, "${t}ItemMore"))
        assertEquals(expectedFallback, fallback)
    }

    @Test
    fun `search and suggestion caps apply after the origin order`() {
        // Fixture: 55 concepts in an unused B language `aa`, one in A language `zz` whose qualified
        // name sorts after all of them. B's language is created first and asserted to be scanned
        // first, so a cap applied in name order or in scan order, or an equal-score heap that
        // ignores origin, would drop A's concept.
        val projectB = openProjectB()
        val t = uniqueToken()
        val u = uniqueToken()
        val nano = System.nanoTime()
        val other = createLanguageIn(projectB, "mcp.test.aa$nano")
        val own = createLanguageIn(myProject, "mcp.test.zz$nano")
        assertScannedBefore(other, own)
        val bNames = (0 until 55).map { i -> "$t${'A' + i / 26}${'a' + i % 26}" }
        createConceptsIn(projectB, structureModelOf(projectB, other), bNames)
        createConceptRootIn(myProject, structureModelOf(myProject, own), "${t}Own")
        val ownQn = qn(own, "${t}Own")
        assertTrue("precondition: the own concept sorts last by name", bNames.all { qn(other, it) < ownQn })
        assertTrue("precondition: B alone exceeds the strict cap", bNames.size > MPSLanguageMcpToolset.MAX_STRICT_RESULTS)

        val strict = search(listOf(t), scope = "all")
        assertEquals(MPSLanguageMcpToolset.MAX_STRICT_RESULTS, strict.hits.size)
        assertEquals(bNames.size + 1, strict.details?.get("totalStrictMatches")?.asInt)
        assertEquals("the own strict match must survive the cap, first", ownQn, strict.qualifiedNames().first())

        val fallback = search(listOf("$t $u"), scope = "all")
        assertEquals(MPSLanguageMcpToolset.MAX_FALLBACK_RESULTS, fallback.hits.size)
        assertEquals("the own equal-score candidate must survive the fallback heap, first", ownQn, fallback.qualifiedNames().first())

        // The suggestion ranker's fallback heap: two subtokens, every candidate hits one.
        val suggestions = conceptSuggestionsFor("$t$u")
        assertEquals(MPSLanguageMcpToolset.MAX_SUGGESTIONS_PER_UNRESOLVED, suggestions.size)
        assertEquals("the own candidate must survive the suggestion heap, first", ownQn, suggestions.first().get("qualifiedName").asString)
        suggestions.drop(1).forEach { assertForeignProjectMarker(it, projectB) }
    }

    @Test
    fun `get concept details suggests a sibling concept marked after an equally good own one`() {
        // D4 replacement. Fixture: the same concept name in A language `zz` and unused B language
        // `aa`; the miss differs in case only, so both are exact-tier (case-insensitive) hits.
        val projectB = openProjectB()
        val t = uniqueToken()
        val nano = System.nanoTime()
        val own = createLanguageIn(myProject, "mcp.test.zz$nano")
        val other = createLanguageIn(projectB, "mcp.test.aa$nano")
        createConceptRootIn(myProject, structureModelOf(myProject, own), "${t}Sug")
        createConceptRootIn(projectB, structureModelOf(projectB, other), "${t}Sug")
        val miss = "${t.lowercase()}Sug"

        val suggestions = conceptSuggestionsFor(miss)
        assertEquals(listOf(qn(own, "${t}Sug"), qn(other, "${t}Sug")), suggestions.map { it.get("qualifiedName").asString }.take(2))
        assertFalse("the own suggestion carries no marker: $suggestions", suggestions[0].has("containingProject"))
        assertForeignProjectMarker(suggestions[1], projectB)

        // The implied-language key still outranks origin.
        val implied = conceptSuggestionsFor("${other.moduleName}.structure.$miss")
        assertEquals(qn(other, "${t}Sug"), implied.first().get("qualifiedName").asString)
        assertForeignProjectMarker(implied.first(), projectB)
    }

    @Test
    fun `get concept details resolves a shared plain name in the selected project first`() {
        // D4 replacement. Fixture: an exact-case concept name defined in both projects.
        val projectB = openProjectB()
        val t = uniqueToken()
        val own = createLanguageIn(myProject, "mcp.test.sharedown${System.nanoTime()}")
        val other = createLanguageIn(projectB, "mcp.test.sharedsibling${System.nanoTime()}")
        createConceptRootIn(myProject, structureModelOf(myProject, own), "${t}Shared")
        createConceptRootIn(projectB, structureModelOf(projectB, other), "${t}Shared")

        val concept = payloadArrayFromOkData(runTool(languageToolset) {
            it.mps_mcp_get_concept_details(conceptRefs = listOf("${t}Shared"))
        }).single().asJsonObject
        assertEquals(qn(own, "${t}Shared"), concept.get("qualifiedName").asString)
        assertFalse("the selected project's concept carries no marker: $concept", concept.has("containingProject"))
    }

    @Test
    fun `get concept details language suggestions sort by score then origin then name`() {
        // Fixture: three languages whose last segment holds the query's tokens: B `mm` matches both
        // (score 2), A `zz` and unused B `aa` one each.
        val projectB = openProjectB()
        val l = uniqueToken()
        val x = uniqueToken()
        val nano = System.nanoTime()
        val own = createLanguageIn(myProject, "mcp.test.zz$nano.${l.lowercase()}")
        val other = createLanguageIn(projectB, "mcp.test.aa$nano.${l.lowercase()}")
        val best = createLanguageIn(projectB, "mcp.test.mm$nano.${l.lowercase()}${x.lowercase()}")

        val response = runTool(languageToolset) {
            it.mps_mcp_get_concept_details(conceptRefs = emptyList(), languageRefs = listOf("mcp.test.nowhere.$l$x"))
        }
        val entry = unresolvedEntries(response).single()
        assertEquals("language", entry.get("kind").asString)
        val suggestions = entry.getAsJsonArray("suggestions").map { it.asJsonObject }
        assertEquals(
            listOf(best.moduleName, own.moduleName, other.moduleName),
            suggestions.map { it.get("qualifiedName").asString }.take(3),
        )
        assertForeignProjectMarker(suggestions[0], projectB)
        assertFalse("the own language suggestion carries no marker: $suggestions", suggestions[1].has("containingProject"))
        assertForeignProjectMarker(suggestions[2], projectB)
    }

    @Test
    fun `get concept details keeps the own near miss beside sibling exact hits`() {
        // Fixture: A defines `${t}Bar`, B defines `${t}` in one language and then in five; the miss
        // is `${t}` with a lower-case first letter (case-only exact match on B's concepts).
        val projectB = openProjectB()
        val t = uniqueToken()
        val nano = System.nanoTime()
        val own = createLanguageIn(myProject, "mcp.test.nearown$nano")
        createConceptRootIn(myProject, structureModelOf(myProject, own), "${t}Bar")
        val siblings = (0 until MAX_SUGGESTIONS).map { i -> createLanguageIn(projectB, "mcp.test.nearsibling$nano.l$i") }
        createConceptRootIn(projectB, structureModelOf(projectB, siblings[0]), t)
        val ownBar = qn(own, "${t}Bar")

        val one = conceptSuggestionsFor(t.lowercase())
        assertEquals(listOf(qn(siblings[0], t), ownBar), one.map { it.get("qualifiedName").asString })
        assertForeignProjectMarker(one[0], projectB)
        assertFalse("the own near miss carries no marker", one[1].has("containingProject"))

        siblings.drop(1).forEach { createConceptRootIn(projectB, structureModelOf(projectB, it), t) }
        val full = conceptSuggestionsFor(t.lowercase()).map { it.get("qualifiedName").asString }
        assertEquals(MAX_SUGGESTIONS, full.size)
        assertEquals("the own near miss takes the last slot when sibling exact hits fill the limit", ownBar, full.last())
        assertEquals(siblings.take(MAX_SUGGESTIONS - 1).map { qn(it, t) }, full.dropLast(1))

        // A ref naming A's language is served by the scoped rule: the near miss appears once.
        val scoped = conceptSuggestionsFor("${own.moduleName}.structure.${t.lowercase()}").map { it.get("qualifiedName").asString }
        assertEquals("no duplicate candidate: $scoped", 1, scoped.count { it == ownBar })
    }

    @Test
    fun `get concept details runs no near-miss scan when an own exact hit exists`() {
        // Fixture: A defines both `${t}` and `${t}Bar`; B defines `${t}`.
        val projectB = openProjectB()
        val t = uniqueToken()
        val nano = System.nanoTime()
        val own = createLanguageIn(myProject, "mcp.test.zz$nano")
        val other = createLanguageIn(projectB, "mcp.test.aa$nano")
        createConceptsIn(myProject, structureModelOf(myProject, own), listOf(t, "${t}Bar"))
        createConceptRootIn(projectB, structureModelOf(projectB, other), t)

        val suggestions = conceptSuggestionsFor(t.lowercase()).map { it.get("qualifiedName").asString }
        assertEquals(listOf(qn(own, t), qn(other, t)), suggestions)
    }

    @Test
    fun `rejection hint marks a sibling concept and following it still targets the selected project`() {
        // Fixture: a rootable concept in an unused, never-built B language; an empty A model. The
        // case-only miss goes through the rootable-concept rejection (REJECTION-mode suggestions).
        val projectB = openProjectB()
        val t = uniqueToken()
        val bLanguage = createLanguageIn(projectB, "mcp.test.hint${System.nanoTime()}")
        val bStructure = structureModelOf(projectB, bLanguage)
        createConceptRootIn(projectB, bStructure, "${t}Hint", rootable = true)
        val bRootsBefore = readIn(projectB) { bStructure.rootNodes.count() }
        val (_, model) = createLoadedModelInA()
        val modelRef = readIn(myProject) { modelRefOf(model) }
        val bLanguageId = readIn(projectB) { MetaAdapterByDeclaration.getLanguage(bLanguage) }
        val importsBefore = readIn(myProject) { (model as SModelInternal).importedLanguageIds().toSet() }
        assertFalse("precondition: the A model does not import B's language", bLanguageId in importsBefore)

        val rejected = JsonParser.parseString(runTool(rootNodeToolset) {
            it.mps_mcp_insert_root_node_from_json(modelRef, JsonOrText("""{ "concept": "${t.lowercase()}Hint" }"""), dryRun = false)
        }).asJsonObject
        assertFalse("a miss must be rejected: $rejected", rejected.get("ok").asBoolean)
        val suggestion = rejected.getAsJsonObject("details").getAsJsonArray("suggestions").map { it.asJsonObject }
            .single { it.get("qualifiedName").asString == qn(bLanguage, "${t}Hint") }
        assertForeignProjectMarker(suggestion, projectB)
        assertTrue("the message must name the sibling project: $rejected",
            rejected.get("error").asString.contains("${qn(bLanguage, "${t}Hint")} (project ${projectB.name})"))

        // Following the suggestion writes into A's model; the never-built language is refused, with
        // the MAKE advice naming B as the project to build from.
        val retry = runTool(rootNodeToolset) {
            it.mps_mcp_insert_root_node_from_json(modelRef, JsonOrText("""{ "concept": "${suggestion.get("qualifiedName").asString}" }"""), dryRun = false)
        }
        val refusal = expectLanguageNotBuilt(retry, bLanguage)
        val recovery = refusal.getAsJsonObject("details").getAsJsonObject("languageBuild").getAsJsonObject("recovery")
        assertEquals(baseDirOf(projectB), recovery.get("projectPath")?.asString)
        assertTrue("the recovery sentence must name B's projectPath: $retry", refusal.get("error").asString.contains("projectPath:\"${baseDirOf(projectB)}\""))
        readIn(myProject) {
            assertTrue("a refused insert must not add a root", model.rootNodes.none())
            assertEquals("a refused insert must not import", importsBefore, (model as SModelInternal).importedLanguageIds().toSet())
        }
        readIn(projectB) { assertEquals("the sibling model must be untouched", bRootsBefore, bStructure.rootNodes.count()) }
    }

    @Test
    fun `scope all and languageRefs read a never-built sibling language from its declarations`() {
        // Fixture: one concept in an unused, never-built B language; an empty, loaded A model.
        val projectB = openProjectB()
        val t = uniqueToken()
        val bLanguage = createLanguageIn(projectB, "mcp.test.decl${System.nanoTime()}")
        createConceptRootIn(projectB, structureModelOf(projectB, bLanguage), "${t}Decl")
        val bName = readIn(projectB) { bLanguage.moduleName!! }
        val bRef = readIn(projectB) { PersistenceFacade.getInstance().asString(MetaAdapterByDeclaration.getLanguage(bLanguage)) }
        val conceptQn = qn(bLanguage, "${t}Decl")

        val all = search(listOf("${t}Decl"), scope = "all")
        val hit = all.single("${t}Decl")
        assertEquals("declaration", hit.get("source").asString)
        assertForeignProjectMarker(hit, projectB)
        assertEquals(baseDirOf(projectB), all.details?.getAsJsonObject("languageBuild")?.getAsJsonObject("recovery")?.get("projectPath")?.asString)

        for (languageRef in listOf(bRef, bName)) {
            val response = runTool(languageToolset) {
                it.mps_mcp_get_concept_details(conceptRefs = emptyList(), languageRefs = listOf(languageRef))
            }
            val concepts = payloadArrayFromOkData(response).map { it.asJsonObject }
            val record = concepts.single { it.get("qualifiedName").asString == conceptQn }
            assertForeignProjectMarker(record, projectB)
            val build = JsonParser.parseString(response).asJsonObject.getAsJsonObject("details").getAsJsonObject("languageBuild")
            assertEquals("languageRefs '$languageRef': $response", baseDirOf(projectB), build.getAsJsonObject("recovery").get("projectPath").asString)
        }

        // A's own unbuilt language is built from A: no projectPath.
        createConceptRootIn(myProject, structureModel, "${t}OwnDecl")
        val ownBuild = JsonParser.parseString(runTool(languageToolset) {
            it.mps_mcp_get_concept_details(conceptRefs = emptyList(), languageRefs = listOf(language.moduleName!!))
        }).asJsonObject.getAsJsonObject("details").getAsJsonObject("languageBuild")
        assertFalse("an own language's recovery must not name a projectPath: $ownBuild", ownBuild.getAsJsonObject("recovery").has("projectPath"))

        val (_, model) = createLoadedModelInA()
        val imported = expectOk(runTool(modelToolset) {
            it.mps_mcp_model_used_language(readIn(myProject) { modelRefOf(model) }, bName, "language")
        })
        assertTrue("a plain-name import of a never-built sibling language must succeed: $imported", imported.get("added").asBoolean)
        val project = search(listOf("${t}Decl"))
        assertFalse("the imported language must answer the first pass: ${project.warnings}", project.widened)
        assertForeignProjectMarker(project.single("${t}Decl"), projectB)
    }

    @Test
    fun `project scope search does not load an unloaded model of the project`() {
        // Fixture: an A solution model that imports a language, was saved and then unloaded.
        val (_, model) = createLoadedModelInA()
        executeCommand { (model as SModelInternal).addLanguage(MetaAdapterByDeclaration.getLanguage(language)) }
        readIn(myProject) { assertTrue("precondition: the written model is fully loaded", (model as SModelBase).isLoaded) }
        executeCommand { (model as EditableSModel).save() }
        executeCommand { (model as SModelBase).unload() }
        readIn(myProject) {
            assertEquals("precondition: the model is unloaded", ModelLoadingState.NOT_LOADED, (model as SModelBase).loadingState)
        }
        search(listOf("ConceptDeclaration"))
        readIn(myProject) {
            assertEquals("the used set must not load the model", ModelLoadingState.NOT_LOADED, (model as SModelBase).loadingState)
        }
    }

    @Test
    fun `a devkit exporting a sibling language puts it in project scope once a loaded model imports the devkit`() {
        // Fixture: a B devkit exporting a never-built B language; a loaded, never-saved A model.
        val projectB = openProjectB()
        val bLanguage = createLanguageIn(projectB, "mcp.test.devkitlang${System.nanoTime()}")
        val bLanguageRef = readIn(projectB) { PersistenceFacade.getInstance().asString(bLanguage.moduleReference) }
        val devkitName = "mcp.test.devkitexport${System.nanoTime()}"
        val devkitRef = createDevKitIn(projectB, devkitName)
        expectOk(runToolForProject(projectB, moduleToolset) {
            it.mps_mcp_module_dependency(devkitName, bLanguageRef, DependencyOperation.ADD, null, false)
        })
        val language = readIn(projectB) { MetaAdapterByDeclaration.getLanguage(bLanguage) }
        val (solution, model) = createLoadedModelInA()
        readIn(myProject) {
            assertFalse("precondition: not in scope before the import",
                language in languageToolset.projectSearchScope(myProject, myProject.repository))
        }

        executeCommandIn(myProject) {
            (model as SModelInternal).addDevKit(PersistenceFacade.getInstance().createModuleReference(devkitRef))
        }
        readIn(myProject) {
            assertTrue("precondition: the model stays loaded", (model as SModelBase).isLoaded)
            assertTrue("precondition: the descriptor does not list the devkit yet",
                solution.moduleDescriptor.usedDevkits.none { PersistenceFacade.getInstance().asString(it) == devkitRef })
            assertTrue("a devkit-exported language of a loaded model's devkit must be in project scope",
                language in languageToolset.projectSearchScope(myProject, myProject.repository))
        }
    }

    @Test
    fun `markers appear exactly on sibling-owned records and the shared helper pins them`() {
        // Fixture: one concept in A's fixture language and one in an unused B language; the
        // library concept BaseConcept and language jetbrains.mps.lang.core.
        val projectB = openProjectB()
        val t = uniqueToken()
        val bLanguage = createLanguageIn(projectB, "mcp.test.markers${System.nanoTime()}")
        val bConceptRef = createConceptRootIn(projectB, structureModelOf(projectB, bLanguage), "${t}Sibling")
        val aConceptRef = createConceptRootIn(myProject, structureModel, "${t}Own")

        val hits = search(listOf(t), scope = "all")
        assertForeignProjectMarker(hits.single("${t}Sibling"), projectB)
        assertFalse("an own record carries no marker", hits.single("${t}Own").has("containingProject"))
        val library = search(listOf("ConceptDeclaration"), scope = "all").hits
            .single { it.get("qualifiedName").asString == conceptDeclarationFqn }
        assertFalse("a library record carries no marker: $library", library.has("containingProject"))
        assertFalse("a library record carries no editable flag: $library", library.has("editableFromCurrentProject"))

        readIn(myProject) {
            val repository = myProject.repository
            val aConcept = MetaAdapterByDeclaration.getConcept(resolveNode(myProject, aConceptRef) ?: error("concept A did not resolve"))
            val bConcept = MetaAdapterByDeclaration.getConcept(resolveNode(projectB, bConceptRef) ?: error("concept B did not resolve"))
            val libraryConcept = aConcept.superConcept ?: error("a created concept must extend BaseConcept")
            assertForeignProjectMarker(probe.markConcept(myProject, bConcept, repository), projectB)
            assertEquals(JsonObject(), probe.markConcept(myProject, aConcept, repository))
            assertEquals(JsonObject(), probe.markConcept(myProject, libraryConcept, repository))
            assertForeignProjectMarker(probe.markLanguage(myProject, MetaAdapterByDeclaration.getLanguage(bLanguage), repository), projectB)
            assertEquals(JsonObject(), probe.markLanguage(myProject, MetaAdapterByDeclaration.getLanguage(language), repository))
            assertEquals(JsonObject(), probe.markLanguage(myProject, libraryConcept.language, repository))
        }
    }

    @Test
    fun `a built language another project registers is marked on search and reported when a blueprint imports it`() {
        // Fixture: a built library language that A neither defines nor uses, additionally
        // registered as a module of B (ProjectBase.addModule), so its concepts have a runtime and B
        // as owner. Removed from B in `finally`, after which the marker must be gone.
        val projectB = openProjectB()
        val lent = lendBuiltLanguageTo(projectB)
        var primary: Throwable? = null
        try {
            val conceptName = lent.rootConcept.name
            val conceptQn = readIn(myProject) { AbstractOps.structureQualifiedName(lent.rootConcept) }
            val runtimeHit = search(listOf(conceptName), scope = "all").hits.single { it.get("qualifiedName").asString == conceptQn }
            assertFalse("a built language's hit is runtime-backed: $runtimeHit", runtimeHit.has("source"))
            assertForeignProjectMarker(runtimeHit, projectB)

            val (_, model) = createLoadedModelInA()
            val modelRef = readIn(myProject) { modelRefOf(model) }
            val dryRun = JsonParser.parseString(runTool(rootNodeToolset) {
                it.mps_mcp_insert_root_node_from_json(modelRef, JsonOrText("""{ "concept": "$conceptQn" }"""), dryRun = true)
            }).asJsonObject
            assertTrue("dry run must succeed: $dryRun", dryRun.get("ok").asBoolean)
            assertAddedLanguage(dryRun, lent.language, projectB)
            readIn(myProject) {
                assertFalse("a dry run must not import", (model as SModelInternal).importedLanguageIds().contains(lent.language))
            }

            val inserted = JsonParser.parseString(runTool(rootNodeToolset) {
                it.mps_mcp_insert_root_node_from_json(modelRef, JsonOrText("""{ "concept": "$conceptQn" }"""), dryRun = false)
            }).asJsonObject
            assertTrue("creating a sibling-language node in A must be accepted: $inserted", inserted.get("ok").asBoolean)
            assertAddedLanguage(inserted, lent.language, projectB)
            val rootRef = readIn(myProject) {
                assertTrue("the import must have happened", (model as SModelInternal).importedLanguageIds().contains(lent.language))
                PersistenceFacade.getInstance().asString(model.rootNodes.single().reference)
            }

            // MOVE keeps addedUsedLanguages a list of qualified-name strings.
            val (_, target) = createLoadedModelInA()
            val moved = JsonParser.parseString(runTool(nodeToolset) {
                it.mps_mcp_alter_nodes(MPSAlterOperation.MOVE_NODE_TO_PARENT,
                    """{"nodeReference":"$rootRef","modelReference":"${readIn(myProject) { modelRefOf(target) }}"}""")
            }).asJsonObject
            assertTrue("move must succeed: $moved", moved.get("ok").asBoolean)
            val names = moved.getAsJsonObject("details").getAsJsonArray("addedUsedLanguages")
            assertTrue("MOVE's list holds strings: $names", names.all { it.isJsonPrimitive && it.asJsonPrimitive.isString })
            assertTrue(names.toString(), lent.language.qualifiedName in names.map { it.asString })
            assertAddedLanguage(moved, lent.language, projectB)
        } catch (t: Throwable) {
            primary = t
            throw t
        } finally {
            // A release failure must not hide the test's own failure.
            try {
                releaseLentLanguage(projectB, lent)
            } catch (t: Throwable) {
                primary?.addSuppressed(t) ?: throw t
            }
        }
        val afterRelease = search(listOf(lent.rootConcept.name), scope = "all").hits
            .single { it.get("qualifiedName").asString == readIn(myProject) { AbstractOps.structureQualifiedName(lent.rootConcept) } }
        assertFalse("once B no longer registers the module its hits are unmarked: $afterRelease", afterRelease.has("containingProject"))
    }

    @Test
    fun `a failed blueprint batch removes the languages its earlier elements imported`() {
        // Fixture: an empty A solution model that imports no BaseLanguage; a two-root array whose
        // first root is a built library concept (its language would be imported) and whose second
        // names a concept that does not exist, so the batch fails after the first import.
        val (_, model) = createLoadedModelInA()
        val modelRef = readIn(myProject) { modelRefOf(model) }
        val classConcept = CLASS_CONCEPT
        val before = readIn(myProject) {
            val imported = (model as SModelInternal).importedLanguageIds().toSet()
            assertFalse("precondition: the model must not import BaseLanguage yet",
                imported.any { it.qualifiedName == "jetbrains.mps.baseLanguage" })
            imported
        }

        val response = runTool(rootNodeToolset) {
            it.mps_mcp_insert_root_node_from_json(
                modelRef,
                JsonOrText("""[ { "concept": "$classConcept", "properties": [ { "name": "name", "value": "Rollback" } ] }, { "concept": "${uniqueToken()}Nope" } ]"""),
                dryRun = false,
            )
        }
        assertFalse("the batch must fail: $response", JsonParser.parseString(response).asJsonObject.get("ok").asBoolean)
        readIn(myProject) {
            assertTrue("a failed batch must add no root", model.rootNodes.none())
            assertEquals("a failed batch must leave the model's languages as they were",
                before, (model as SModelInternal).importedLanguageIds().toSet())
        }
    }

    @Test
    fun `a batch whose later root fails inside instantiation removes the languages it imported`() {
        // Fixture: an empty A model without BaseLanguage; the second root resolves (rootable) but
        // fails while its nested child is instantiated, after the first root imported BaseLanguage.
        val (_, model) = createLoadedModelInA()
        val before = importsWithoutBaseLanguage(model)
        val badRoot = """{ "concept": "$CLASS_CONCEPT", "properties": [ { "name": "name", "value": "Bad" } ],
            "children": [ { "role": "member", "nodes": [ ${fieldWithFailingType()} ] } ] }"""
        val response = runTool(rootNodeToolset) {
            it.mps_mcp_insert_root_node_from_json(modelRefIn(model),
                JsonOrText("""[ { "concept": "$CLASS_CONCEPT", "properties": [ { "name": "name", "value": "Good" } ] }, $badRoot ]"""),
                dryRun = false)
        }
        assertFalse("the batch must fail: $response", JsonParser.parseString(response).asJsonObject.get("ok").asBoolean)
        assertImportsUnchanged(model, before)
        readIn(myProject) { assertTrue("a failed batch must add no root", model.rootNodes.none()) }
    }

    @Test
    fun `update node ADD CHILD with a failing nested child removes the language it imported`() {
        // Fixture: a ClassConcept root whose model no longer imports BaseLanguage (import deleted
        // after the insert); the added FieldDeclaration imports it again before its type fails.
        val (model, classRef) = classRootWithoutBaseLanguageImport()
        val before = importsWithoutBaseLanguage(model)
        val response = runTool(nodeToolset) {
            it.mps_mcp_update_node(NodeUpdateOperation.ADD, NodeUpdateKind.CHILD, nodeReference = classRef,
                childRole = "member", childJson = fieldWithFailingType())
        }
        assertFalse("the add must fail: $response", JsonParser.parseString(response).asJsonObject.get("ok").asBoolean)
        assertImportsUnchanged(model, before)
    }

    @Test
    fun `update root from JSON with a failing child removes the language it imported`() {
        // Fixture: as for ADD CHILD; the rewritten root's member fails inside its nested type.
        val (model, classRef) = classRootWithoutBaseLanguageImport()
        val before = importsWithoutBaseLanguage(model)
        val response = runTool(rootNodeToolset) {
            it.mps_mcp_update_root_node_from_json(classRef,
                """{ "concept": "$CLASS_CONCEPT", "properties": [ { "name": "name", "value": "Host" } ],
                    "children": [ { "role": "member", "nodes": [ ${fieldWithFailingType()} ] } ] }""",
                dryRun = false, operation = RootNodeOperation.UPDATE)
        }
        assertFalse("the update must fail: $response", JsonParser.parseString(response).asJsonObject.get("ok").asBoolean)
        assertImportsUnchanged(model, before)
    }

    @Test
    fun `update node ADD CHILD reports the language it imports on dry run and on write`() {
        // Fixture: as for the failing ADD CHILD, with a valid FieldDeclaration. BaseLanguage is a
        // library language, so the detail object carries no foreign marker (the marker itself is
        // the shared helper the insert-root and MOVE assertions pin).
        val (model, classRef) = classRootWithoutBaseLanguageImport()
        importsWithoutBaseLanguage(model)
        val field = """{ "concept": "jetbrains.mps.baseLanguage.structure.FieldDeclaration", "properties": [ { "name": "name", "value": "f" } ] }"""
        for (dryRun in listOf(true, false)) {
            val envelope = JsonParser.parseString(runTool(nodeToolset) {
                it.mps_mcp_update_node(NodeUpdateOperation.ADD, NodeUpdateKind.CHILD, nodeReference = classRef,
                    childRole = "member", childJson = field, dryRun = dryRun)
            }).asJsonObject
            assertTrue("dryRun=$dryRun must succeed: $envelope", envelope.get("ok").asBoolean)
            val details = envelope.getAsJsonObject("details") ?: error("dryRun=$dryRun: expected details: $envelope")
            assertTrue("dryRun=$dryRun: $envelope", BASE_LANGUAGE in details.getAsJsonArray("addedUsedLanguages").map { it.asString })
            val entry = details.getAsJsonArray("addedUsedLanguageDetails").map { it.asJsonObject }
                .single { it.get("qualifiedName").asString == BASE_LANGUAGE }
            assertTrue("dryRun=$dryRun: languageReference: $entry", entry.get("languageReference").asString.startsWith("l:"))
            assertFalse("a library language carries no marker: $entry", entry.has("containingProject"))
            val imported = readIn(myProject) { (model as SModelInternal).importedLanguageIds().any { it.qualifiedName == BASE_LANGUAGE } }
            assertEquals("dryRun=$dryRun: the import happens only on a real write", !dryRun, imported)
        }
    }

    @Test
    fun `get concept details ranks a name hit of a sibling above an alias hit of the project`() {
        // Fixture: A concept `${t}Other` whose alias is the miss exactly; unused B concept `${t}Al`
        // whose name matches the miss up to case. The alias key precedes both case and origin.
        val projectB = openProjectB()
        val t = uniqueToken()
        val nano = System.nanoTime()
        val own = createLanguageIn(myProject, "mcp.test.zz$nano")
        val other = createLanguageIn(projectB, "mcp.test.aa$nano")
        val miss = "${t.lowercase()}Al"
        createConceptsIn(myProject, structureModelOf(myProject, own), listOf("${t}Other"), aliases = mapOf("${t}Other" to miss))
        createConceptRootIn(projectB, structureModelOf(projectB, other), "${t}Al")

        val suggestions = conceptSuggestionsFor(miss)
        assertEquals(listOf(qn(other, "${t}Al"), qn(own, "${t}Other")), suggestions.map { it.get("qualifiedName").asString }.take(2))
        assertForeignProjectMarker(suggestions[0], projectB)
        val ownAlias = readIn(myProject) {
            structureModelOf(myProject, own).rootNodes.single { it.name == "${t}Other" }.getPropertyByName("conceptAlias")
        }
        assertEquals("precondition: the own candidate is the alias hit", miss, ownAlias)
    }

    @Test
    fun `get concept details marks a sibling-project concept reached by plain name`() {
        // The other side of D4: a plain concept name that exists ONLY in project B is still
        // reachable, because `resolveConceptNodePreferringProject` falls back from the selected
        // project's modules to the shared repository. That is the same read-only cross-project
        // access the module/model tools document — so the contract is not "never reached" but
        // "never reported as if it belonged to the caller's project".
        val projectB = openProjectB()
        val bLanguage = createLanguageIn(projectB, "mcp.test.siblingreach${System.nanoTime()}")
        val conceptName = "SiblingReachProbeConcept"
        createConceptRootIn(projectB, structureModelOf(projectB, bLanguage), conceptName)

        val response = runTool(languageToolset) {
            it.mps_mcp_get_concept_details(conceptRefs = listOf(conceptName))
        }

        val concept = payloadArrayFromOkData(response).single().asJsonObject
        assertEquals(conceptName, concept.get("name").asString)
        assertForeignProjectMarker(concept, projectB)
    }

    /** Reads `ProjectMembershipCache` answers and pins the shared marker helper, as a test-local subclass. */
    private val probe = object : AbstractOps() {
        fun tier(project: MPSProject, language: SLanguage): Int = ProjectMembershipCache(project).originTier(language)

        fun ownerOf(project: MPSProject, module: SModule): MPSProject? = ProjectMembershipCache(project).ownerOf(module)

        fun scanOrder(project: MPSProject): List<SLanguage> =
            conceptSuggestions(project.repository, ProjectMembershipCache(project)).allLanguages()

        fun markConcept(project: MPSProject, concept: SAbstractConcept, repository: SRepository): JsonObject =
            JsonObject().also { addContainingProjectIfForeign(it, project, concept, repository) }

        fun markLanguage(project: MPSProject, language: SLanguage, repository: SRepository): JsonObject =
            JsonObject().also { addContainingProjectIfForeign(it, project, language, repository) }
    }

    private class SearchResult(val hits: List<JsonObject>, val warnings: List<String>, val details: JsonObject?) {
        val widened: Boolean get() = warnings.any { it.contains("widened") }
        fun qualifiedNames(): List<String> = hits.map { it.get("qualifiedName").asString }
        fun single(name: String): JsonObject = hits.singleOrNull { it.get("name").asString == name }
            ?: error("expected exactly one hit named '$name' in ${qualifiedNames()}")
    }

    /** `search_concepts` as [myProject], inline (no temp file), with the envelope's warnings and details. */
    private fun search(texts: List<String>, scope: String? = null): SearchResult {
        val response = runTool(languageToolset) { it.mps_mcp_search_concepts(texts, scope = scope, maxInlineBytes = 10_000_000) }
        val envelope = JsonParser.parseString(response).asJsonObject
        assertTrue("expected ok envelope: $response", envelope.get("ok").asBoolean)
        return SearchResult(
            payloadArrayFromOkData(response).map { it.asJsonObject },
            envelope.get("warnings")?.asJsonArray?.map { it.asString }.orEmpty(),
            envelope.getAsJsonObject("details"),
        )
    }

    private fun unresolvedEntries(response: String): List<JsonObject> {
        val envelope = JsonParser.parseString(response).asJsonObject
        assertFalse("expected the all-unresolved error envelope: $response", envelope.get("ok").asBoolean)
        return envelope.getAsJsonObject("details").getAsJsonArray("unresolved").map { it.asJsonObject }
    }

    /** `details.unresolved[0].suggestions` of a `get_concept_details` miss on [ref], as [myProject]. */
    private fun conceptSuggestionsFor(ref: String): List<JsonObject> {
        val response = runTool(languageToolset) { it.mps_mcp_get_concept_details(conceptRefs = listOf(ref)) }
        return unresolvedEntries(response).single().getAsJsonArray("suggestions").map { it.asJsonObject }
    }

    /** "Zq" plus eight random lower-case letters: one camelCase subtoken no bundled concept or language contains. */
    private fun uniqueToken(): String = "Zq" + (1..8).map { 'a' + random.nextInt(26) }.joinToString("")

    private val random = java.util.Random()

    private fun qn(language: Language, conceptName: String): String =
        "${readIn(language.repository ?: myProject.repository) { language.moduleName }}.structure.$conceptName"

    private fun <T> readIn(repository: SRepository, block: () -> T): T = repository.modelAccess.computeReadAction<T> { block() }

    private fun baseDirOf(project: MPSProject): String =
        Paths.get(project.project.basePath!!).toAbsolutePath().normalize().toString()

    /** A new A solution with one model, never saved. Its data is created lazily, so it is fully loaded once written to. */
    private fun createLoadedModelInA(): Pair<Solution, SModel> {
        val solution = createSolutionIn(myProject, "mcp.test.consumer${System.nanoTime()}")
        val model = createModel(solution, "mcp.test.consumer.model${System.nanoTime()}")
        return solution to model
    }

    private fun importIntoLoadedModelOfA(language: SLanguage) {
        val (_, model) = createLoadedModelInA()
        executeCommandIn(myProject) { (model as SModelInternal).addLanguage(language) }
        readIn(myProject) { assertTrue("precondition: the importing model is fully loaded", (model as SModelBase).isLoaded) }
    }

    /** Precondition: the free-form scan ([ConceptSuggestions.allLanguages]) reaches [first] before [second]. */
    private fun assertScannedBefore(first: Language, second: Language) = readIn(myProject) {
        val order = probe.scanOrder(myProject)
        val i = order.indexOf(MetaAdapterByDeclaration.getLanguage(first))
        val j = order.indexOf(MetaAdapterByDeclaration.getLanguage(second))
        assertTrue("precondition: both languages are scanned (${first.moduleName}=$i, ${second.moduleName}=$j)", i >= 0 && j >= 0)
        assertTrue("precondition: ${first.moduleName} is scanned before ${second.moduleName} ($i, $j)", i < j)
    }

    private fun assertOriginTiers(vararg expected: Pair<Language, Int>) = readIn(myProject) {
        for ((module, tier) in expected) {
            assertEquals("precondition: origin tier of ${module.moduleName}", tier, probe.tier(myProject, MetaAdapterByDeclaration.getLanguage(module)))
        }
    }

    private fun createConceptsIn(project: MPSProject, structureModel: SModel, names: List<String>, aliases: Map<String, String> = emptyMap()) {
        val structureModelRef = readIn(project) { PersistenceFacade.getInstance().asString(structureModel.reference) }
        val concepts = names.joinToString(",") { name ->
            val alias = aliases[name]?.let { """, "conceptAlias": "$it"""" } ?: ""
            """{ "name": "$name", "rootable": false$alias }"""
        }
        val response = runToolForProject(project, MPSLanguageStructureMcpToolset()) {
            it.mps_mcp_alter_structure(MPSStructureAlterOperation.CREATE_CONCEPTS,
                """{ "structureModelRef": "$structureModelRef", "conceptsJson": [ $concepts ] }""")
        }
        assertTrue("CREATE_CONCEPTS must succeed: $response", JsonParser.parseString(response).asJsonObject.get("ok").asBoolean)
        readIn(project) {
            val created = structureModel.rootNodes.map { it.name }.toSet()
            assertTrue("every concept must be created: ${names - created}", created.containsAll(names))
        }
    }

    /** `details.addedUsedLanguages` names [language] and `details.addedUsedLanguageDetails` lists it with [owner]'s marker. */
    private fun assertAddedLanguage(envelope: JsonObject, language: SLanguage, owner: MPSProject) {
        val details = envelope.getAsJsonObject("details") ?: error("expected details: $envelope")
        assertTrue("addedUsedLanguages: $envelope", language.qualifiedName in details.getAsJsonArray("addedUsedLanguages").map { it.asString })
        val entry = details.getAsJsonArray("addedUsedLanguageDetails").map { it.asJsonObject }
            .single { it.get("qualifiedName").asString == language.qualifiedName }
        assertEquals(PersistenceFacade.getInstance().asString(language), entry.get("languageReference").asString)
        assertForeignProjectMarker(entry, owner)
    }

    private class LentLanguage(val module: Language, val language: SLanguage, val rootConcept: SConcept)

    /**
     * Registers a built library language, which [myProject] neither defines nor uses and no open
     * project owns, as a module of [project] too: the only way the headless fixture gets a foreign
     * language with a runtime. `jetbrains.mps.core.xml` when it qualifies, else the first qualifying
     * language by name. Undo with [releaseLentLanguage]; the library keeps the module registered.
     */
    private fun lendBuiltLanguageTo(project: MPSProject): LentLanguage {
        val lent = readIn(myProject) {
            val repository = myProject.repository
            val registry = LanguageRegistry.getInstance(repository)
            val candidates = registry.allLanguages.sortedBy { it.qualifiedName }.mapNotNull { language ->
                val module = repository.getModule(ModuleId.regular(MetaIdHelper.getLanguage(language).idValue)) as? Language
                    ?: return@mapNotNull null
                if (probe.ownerOf(myProject, module) != null) return@mapNotNull null
                if (probe.tier(myProject, language) != ConceptSuggestions.ORIGIN_OTHER) return@mapNotNull null
                val root = (registry.getLanguage(language)?.concepts ?: emptyList<SAbstractConcept>()).filterIsInstance<SConcept>()
                    .filter { it.isRootable && !it.isAbstract && it.sourceNode?.resolve(repository) != null }
                    .minByOrNull { it.name } ?: return@mapNotNull null
                LentLanguage(module, language, root)
            }
            candidates.firstOrNull { it.language.qualifiedName == "jetbrains.mps.core.xml" }
                ?: candidates.firstOrNull()
                ?: error("the fixture must load a built library language A does not use")
        }
        executeCommandIn(project) { project.addModule(lent.module) }
        readIn(myProject) {
            assertEquals("precondition: B now registers ${lent.language.qualifiedName}", project.project, probe.ownerOf(myProject, lent.module)?.project)
        }
        return lent
    }

    private fun releaseLentLanguage(project: MPSProject, lent: LentLanguage) {
        executeCommandIn(project) { project.removeModule(lent.module) }
        readIn(myProject) {
            assertNotNull("the library must keep the module registered",
                myProject.repository.getModule(lent.module.moduleReference.moduleId))
            assertNull("no open project may own the module any more", probe.ownerOf(myProject, lent.module))
        }
    }

    private fun modelRefIn(model: SModel): String = readIn(myProject) { modelRefOf(model) }

    /** A FieldDeclaration blueprint whose `type` names a concept that does not exist: fails after its own language is imported. */
    private fun fieldWithFailingType(): String =
        """{ "concept": "jetbrains.mps.baseLanguage.structure.FieldDeclaration", "properties": [ { "name": "name", "value": "f" } ],
            "children": [ { "role": "type", "nodes": [ { "concept": "${uniqueToken()}Nope" } ] } ] }"""

    /** Precondition for the undo tests: [model] does not import BaseLanguage. Returns its imports. */
    private fun importsWithoutBaseLanguage(model: SModel): Set<SLanguage> = readIn(myProject) {
        val imported = (model as SModelInternal).importedLanguageIds().toSet()
        assertFalse("precondition: the model must not import BaseLanguage yet: $imported", imported.any { it.qualifiedName == BASE_LANGUAGE })
        imported
    }

    private fun assertImportsUnchanged(model: SModel, before: Set<SLanguage>) = readIn(myProject) {
        assertEquals("a failed write must leave the model's languages as they were",
            before, (model as SModelInternal).importedLanguageIds().toSet())
    }

    /** An A model with one ClassConcept root, whose BaseLanguage import is then deleted again. */
    private fun classRootWithoutBaseLanguageImport(): Pair<SModel, String> {
        val (_, model) = createLoadedModelInA()
        val inserted = expectOk(runTool(rootNodeToolset) {
            it.mps_mcp_insert_root_node_from_json(modelRefIn(model),
                JsonOrText("""{ "concept": "$CLASS_CONCEPT", "properties": [ { "name": "name", "value": "Host" } ] }"""), dryRun = false)
        })
        executeCommandIn(myProject) {
            val internal = model as SModelInternal
            internal.importedLanguageIds().filter { it.qualifiedName == BASE_LANGUAGE }.forEach { internal.deleteLanguageId(it) }
        }
        return model to inserted.get("reference").asString
    }

    private fun openProjectB(): MPSProject =
        (mcpEnvironment.createEmptyProject() as MPSProject).also { projectB = it }

    private fun createLanguageIn(project: MPSProject, name: String): Language {
        var result: Language? = null
        executeCommandIn(project) {
            result = LanguageProducer(project).withGenerator(false).create(name, createDirIn(project, uniqueDirName(name)))
        }
        return checkNotNull(result) { "LanguageProducer returned null for $name" }
    }

    private fun createSolutionIn(project: MPSProject, name: String): Solution {
        var result: Solution? = null
        executeCommandIn(project) {
            result = SolutionProducer(project).create(name, createDirIn(project, uniqueDirName(name)))
        }
        return checkNotNull(result) { "SolutionProducer returned null for $name" }
    }

    private fun createModelIn(project: MPSProject, module: Solution, modelName: String): SModel {
        var result: SModel? = null
        executeCommandIn(project) {
            val name = org.jetbrains.mps.openapi.model.SModelName(modelName)
            val root = module.modelRoots.first { it.canCreateModel(name) }
            result = root.createModel(name) ?: error("Failed to create model '$modelName'")
        }
        return checkNotNull(result) { "Failed to create model '$modelName'" }
    }

    private fun createDevKitIn(project: MPSProject, name: String): String {
        val response = runToolForProject(project, moduleToolset) {
            it.mps_mcp_create_module("devkit", name, freshPathIn(project, uniqueDirName(name)), null, null, false, false, false)
        }
        return expectOk(response).get("reference").asString
    }

    private fun structureModelOf(project: MPSProject, language: Language): SModel =
        readIn(project) { language.models.single { it.name.longName.endsWith(".structure") } }

    private fun createConceptRootIn(project: MPSProject, structureModel: SModel, name: String, rootable: Boolean = false): String {
        val structureModelRef = readIn(project) {
            PersistenceFacade.getInstance().asString(structureModel.reference)
        }
        val params = """
            {
              "structureModelRef": "$structureModelRef",
              "conceptsJson": [ { "name": "$name", "rootable": $rootable } ]
            }
        """.trimIndent()
        val response = runToolForProject(project, MPSLanguageStructureMcpToolset()) {
            it.mps_mcp_alter_structure(MPSStructureAlterOperation.CREATE_CONCEPTS, params)
        }
        assertTrue(
            "CREATE_CONCEPTS must succeed in ${project.projectFile}: $response",
            JsonParser.parseString(response).asJsonObject.get("ok").asBoolean,
        )
        return readIn(project) {
            PersistenceFacade.getInstance().asString(structureModel.rootNodes.single { it.name == name }.reference)
        }
    }

    private fun searchNames(response: String): Set<String> =
        parseDataArray(response).map { it.asJsonObject.get("name").asString }.toSet()

    private fun referenceTarget(nodeRef: String, role: String): String? {
        val target = resolveNode(nodeRef).references.firstOrNull { it.link.name == role }?.targetNode
        return target?.let { PersistenceFacade.getInstance().asString(it.reference) }
    }

    private fun resolveNode(nodeRef: String) =
        resolveNode(myProject, nodeRef)
            ?: error("Node '$nodeRef' did not resolve")

    private fun resolveNode(project: MPSProject, nodeRef: String) =
        PersistenceFacade.getInstance().createNodeReference(nodeRef).resolve(project.repository)

    private fun conceptReferenceForDeclaration(project: MPSProject, conceptDeclarationRef: String): String =
        readIn(project) {
            val conceptDeclaration = resolveNode(project, conceptDeclarationRef)
                ?: error("Concept declaration '$conceptDeclarationRef' did not resolve")
            PersistenceFacade.getInstance().asString(MetaAdapterByDeclaration.getConcept(conceptDeclaration))
        }

    private fun assertForeignProjectMarker(obj: JsonObject, project: MPSProject, prefix: String = "") {
        val containingProjectField = if (prefix.isEmpty()) "containingProject" else "${prefix}ContainingProject"
        val editableField = if (prefix.isEmpty()) "editableFromCurrentProject" else "${prefix}EditableFromCurrentProject"
        assertTrue("$containingProjectField must be present in $obj", obj.has(containingProjectField))
        assertEquals(project.name, obj.getAsJsonObject(containingProjectField).get("name").asString)
        assertTrue(
            "$containingProjectField must include the project base directory",
            obj.getAsJsonObject(containingProjectField).get("mpsProjectBaseDirectory").asString.isNotBlank(),
        )
        assertTrue("$editableField must be present in $obj", obj.has(editableField))
        assertFalse("$editableField must be false for foreign project elements", obj.get(editableField).asBoolean)
    }

    private fun readJsonObjectFromOkPath(response: String): JsonObject = payloadObjectFromOkData(response)

    private fun <T> readIn(project: MPSProject, block: () -> T): T =
        project.modelAccess.computeReadAction<T> { block() }

    private fun uniqueDirName(moduleName: String): String =
        moduleName.replace('.', '_') + "_" + System.nanoTime()

    private fun freshPathIn(project: MPSProject, subName: String): String =
        File(project.projectFile.canonicalFile, subName).absolutePath
}
