package jetbrains.mps.agents.mcp.tools.integration

import jetbrains.mps.agents.mcp.tools.*
import jetbrains.mps.agents.mcp.tools.common.*

import com.google.gson.JsonObject
import com.google.gson.JsonParser
import jetbrains.mps.project.MPSProject
import jetbrains.mps.project.Solution
import jetbrains.mps.project.modules.LanguageProducer
import jetbrains.mps.project.modules.SolutionProducer
import jetbrains.mps.smodel.Language
import jetbrains.mps.smodel.SModelInternal
import jetbrains.mps.smodel.adapter.MetaAdapterByDeclaration
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory
import org.jetbrains.mps.openapi.language.SAbstractConcept
import org.jetbrains.mps.openapi.language.SLanguage
import org.jetbrains.mps.openapi.model.SModel
import org.jetbrains.mps.openapi.module.SRepository
import org.jetbrains.mps.openapi.persistence.PersistenceFacade
import org.junit.After
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertTrue
import org.junit.Test
import java.io.File

/**
 * Regression coverage for project-selected resolution in a shared MPS module repository.
 *
 * The test creates same-named modules/models in two open projects. Tools invoked as project A
 * must prefer project A's modules/models over project B's, even though both are visible through
 * the same global repository.
 */
class ProjectResolutionCrossProjectTest : McpIntegrationTestBase() {

    private val moduleToolset = JetBrainsMPSModuleMcpToolset()
    private val modelToolset = JetBrainsMPSModelMcpToolset()
    private val languageToolset = JetBrainsMPSLanguageMcpToolset()
    private val nodeToolset = JetBrainsMPSNodeMcpToolset()
    private val projectToolset = JetBrainsMPSProjectMcpToolset()
    private val rootNodeToolset = JetBrainsMPSRootNodeMcpToolset()

    private val conceptDeclarationFqn = "jetbrains.mps.lang.structure.structure.ConceptDeclaration"

    private var projectB: MPSProject? = null

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
            it.mps_mcp_insert_root_node_from_json(modelRef, JsonOrText("""{ "concept": "$conceptName" }"""), dryRun = false)
        }
        val createdRef = expectOk(response).get("reference").asString

        // The created root's concept identifies its owning language by module id. We compare the
        // SLanguage rather than the structure declaration node: these languages are created in
        // memory and never generated, so the runtime concept has no resolvable `sourceNode`.
        val createdConceptLanguage = readIn(myProject) { resolveNode(createdRef).concept.language }
        assertEquals(
            "created root must use the selected project's same-named concept",
            readIn(myProject) { MetaAdapterByDeclaration.getLanguage(aLanguage) },
            createdConceptLanguage,
        )
        assertFalse(
            "created root must not use the sibling project's same-named concept",
            createdConceptLanguage == readIn(projectB) { MetaAdapterByDeclaration.getLanguage(bLanguage) },
        )
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
        val created = expectOk(response)
        assertForeignProjectMarker(created, projectB, "concept")
        val createdRef = created.get("reference").asString

        readIn(myProject) {
            assertEquals(bLanguageRef, PersistenceFacade.getInstance().asString(resolveNode(createdRef).concept.language))
            assertTrue(
                "inserting a foreign-concept root must import the foreign language into the target model",
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

    @Test
    fun `name-suggestion candidates exclude concepts owned by a sibling project`() {
        // D4: `unresolved[].suggestions` are ranked over the shared module repository, so without
        // this membership filter a plain concept name can be answered with a same-named concept
        // from another open project. The ranker consults only languages loaded in the
        // LanguageRegistry — which in the headless fixture are all read-only libraries — so the
        // filter's predicate is pinned directly here instead of through a tool call.
        val projectB = openProjectB()
        val sharedName = "mcp.test.suggestscope${System.nanoTime()}"
        val bLanguage = createLanguageIn(projectB, sharedName)
        val aLanguage = createLanguageIn(myProject, sharedName)
        val bConceptRef = createConceptRootIn(projectB, structureModelOf(projectB, bLanguage), "SuggestScopeConcept")
        val aConceptRef = createConceptRootIn(myProject, structureModelOf(myProject, aLanguage), "SuggestScopeConcept")

        val probe = object : AbstractOps() {
            fun isForeign(project: MPSProject, concept: SAbstractConcept, repository: SRepository): Boolean =
                ProjectMembershipCache(project).isFromAnotherOpenProject(concept, repository)
        }

        readIn(myProject) {
            val repository = myProject.repository
            val aConcept = MetaAdapterByDeclaration.getConcept(
                resolveNode(myProject, aConceptRef) ?: error("concept A did not resolve")
            )
            val bConcept = MetaAdapterByDeclaration.getConcept(
                resolveNode(projectB, bConceptRef) ?: error("concept B did not resolve")
            )
            assertFalse(
                "a concept of the selected project must remain a suggestion candidate",
                probe.isForeign(myProject, aConcept, repository),
            )
            assertTrue(
                "a same-named concept owned by a sibling project must be dropped as a candidate",
                probe.isForeign(myProject, bConcept, repository),
            )
            val libraryConcept = aConcept.superConcept ?: error("a created concept must extend BaseConcept")
            assertFalse(
                "a read-only library concept is owned by no open project and stays a candidate",
                probe.isForeign(myProject, libraryConcept, repository),
            )
        }
    }

    @Test
    fun `search scope predicate separates own languages from library and sibling ones`() {
        // D38/P9: `search_concepts scope="project"` is built on this predicate — "defined by a
        // module of the selected project" — unioned with what those modules use. It is NOT the
        // negation of isFromAnotherOpenProject: a read-only library language is neither foreign
        // nor in the project, and conflating the two would either re-admit the whole registry
        // (the 183 KB noise the scope exists to remove) or drop `jetbrains.mps.baseLanguage` in
        // a project that merely uses it.
        //
        // Same fixture limitation as the suggestion test below: a language produced by
        // LanguageProducer has no compiled runtime, so the predicate is pinned directly rather
        // than through a search call.
        val projectB = openProjectB()
        val aLanguage = createLanguageIn(myProject, "mcp.test.scopeown${System.nanoTime()}")
        val bLanguage = createLanguageIn(projectB, "mcp.test.scopesibling${System.nanoTime()}")

        val probe = object : AbstractOps() {
            fun isOwn(project: MPSProject, language: SLanguage, repository: SRepository): Boolean =
                ProjectMembershipCache(project).isInCurrentProject(language, repository)

            fun isForeign(project: MPSProject, language: SLanguage, repository: SRepository): Boolean =
                ProjectMembershipCache(project).isFromAnotherOpenProject(language, repository)
        }

        readIn(myProject) {
            val repository = myProject.repository
            val ownLanguage = MetaAdapterFactory.getLanguage(aLanguage.moduleReference)
            val siblingLanguage = MetaAdapterFactory.getLanguage(bLanguage.moduleReference)
            // A bundled language the fixture loads read-only: owned by no open project. Asserted
            // to resolve first, so the two "false" checks below cannot pass vacuously on a
            // language that simply is not there.
            val baseLanguageRef = PersistenceFacade.getInstance()
                .createModuleReference("f3061a53-9226-4cc5-a443-f952ceaf5816(jetbrains.mps.baseLanguage)")
            assertNotNull("the fixture must load jetbrains.mps.baseLanguage read-only", baseLanguageRef.resolve(repository))
            val libraryLanguage = MetaAdapterFactory.getLanguage(baseLanguageRef)

            assertTrue(
                "a language the selected project defines must be in its search scope",
                probe.isOwn(myProject, ownLanguage, repository),
            )
            assertFalse(
                "a language defined by a sibling project must not be in the search scope",
                probe.isOwn(myProject, siblingLanguage, repository),
            )
            assertTrue(
                "a sibling project's language must still read as foreign",
                probe.isForeign(myProject, siblingLanguage, repository),
            )
            // The asymmetry the scope helper depends on: a library language is not "in the
            // project" (so it enters the scope only by being used) and not foreign either (so
            // the sibling filter never drops it).
            assertFalse(
                "a read-only library language is owned by no open project",
                probe.isOwn(myProject, libraryLanguage, repository),
            )
            assertFalse(
                "a read-only library language must not read as foreign",
                probe.isForeign(myProject, libraryLanguage, repository),
            )
        }
    }

    @Test
    fun `get concept details suggestions never name a concept from a sibling project`() {
        // D4, end-to-end half. The test above pins the membership *predicate*; this one drives the
        // whole `get_concept_details` unresolved path as project A and asserts that nothing in
        // `details.unresolved[].suggestions` comes out of project B's namespace.
        //
        // Fixture limitation, stated rather than hidden: the suggestion ranker iterates
        // `LanguageRegistry.allLanguages`, and a language created by `LanguageProducer` has no
        // compiled runtime, so project B's language is not a candidate here for two reasons at
        // once (unregistered *and* filtered). This test therefore guards the end-to-end wiring —
        // that suggestions are scoped at all, and that no other code path re-widens them — while
        // the predicate test above is what pins the filter itself.
        val projectB = openProjectB()
        val bLanguageName = "mcp.test.siblingsuggest${System.nanoTime()}"
        val bLanguage = createLanguageIn(projectB, bLanguageName)
        createConceptRootIn(projectB, structureModelOf(projectB, bLanguage), "SiblingOnlyProbeConcept")

        val response = runTool(languageToolset) {
            it.mps_mcp_get_concept_details(conceptRefs = listOf("SiblingOnlyProbeConceptZzq"))
        }

        val envelope = JsonParser.parseString(response).asJsonObject
        assertFalse("a name that exists in neither project must fail loudly: $response", envelope.get("ok").asBoolean)
        val suggestions = envelope.getAsJsonObject("details").getAsJsonArray("unresolved")
            .flatMap { entry -> entry.asJsonObject.getAsJsonArray("suggestions").map { it.asJsonObject } }
            .map { it.get("qualifiedName").asString }
        assertTrue(
            "no suggestion may come from the sibling project's language; got=$suggestions",
            suggestions.none { it.startsWith("$bLanguageName.") },
        )
        assertTrue(
            "no suggestion may name the sibling-only concept; got=$suggestions",
            suggestions.none { it.substringAfterLast('.') == "SiblingOnlyProbeConcept" },
        )
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
        val response = runToolForProject(project, JetBrainsMPSLanguageStructureMcpToolset()) {
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
