package jetbrains.mps.agents.mcp.tools.integration

import jetbrains.mps.agents.mcp.tools.*
import jetbrains.mps.agents.mcp.tools.common.*

import com.google.gson.JsonObject
import com.google.gson.JsonParser
import jetbrains.mps.extapi.module.TransientSModule
import jetbrains.mps.generator.CustomGenerationModuleFacet
import jetbrains.mps.generator.TransientModelsProvider
import jetbrains.mps.make.MakeServiceComponent
import jetbrains.mps.make.MakeSession
import jetbrains.mps.messages.IMessageHandler
import jetbrains.mps.project.MPSProject
import jetbrains.mps.smodel.SModelInternal
import jetbrains.mps.smodel.SNodeUtil
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory
import jetbrains.mps.smodel.language.LanguageRegistry
import org.jetbrains.mps.openapi.language.SConcept
import org.jetbrains.mps.openapi.model.SModel
import org.jetbrains.mps.openapi.model.SNode
import org.jetbrains.mps.openapi.persistence.PersistenceFacade
import org.junit.After
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Assume.assumeTrue
import org.junit.Test

/**
 * `mps_mcp_generation` TRANSIENT_MODELS and DROP_TRANSIENT_MODELS on the transient models of a real make, and the
 * read and write tools on them: `get_project_structure` and `print_node` read them, write tools refuse them with
 * NOT_EDITABLE, and name lookups never bind to them.
 */
class JetBrainsMPSGenerationTransientModelsIntegrationTest : McpIntegrationTestBase() {

    private val toolset = JetBrainsMPSGenerationMcpToolset()

    private fun generation(operation: String, parameters: String = "{}"): String =
        runTool(toolset) { it.mps_mcp_generation(operation, JsonOrText(parameters)) }

    /** Makes [models] keeping their transient models, leaving the global setting as it was. */
    private fun makeKeepingTransients(vararg models: SModel) {
        val refs = models.joinToString(", ") { "\"${modelRefOf(it)}\"" }
        val response = runTool(JetBrainsMPSNodeMcpToolset()) {
            it.mps_mcp_alter_nodes(MPSAlterOperation.MAKE, """{ "models": [$refs], "rebuild": true, "saveTransientModels": true }""")
        }
        val data = expectOk(response)
        assertTrue("the make must succeed: $data", data.get("success").asBoolean)
        assertTrue("the make kept its transient models: $data", data.getAsJsonObject("transientModels").get("saved").asBoolean)
    }

    private fun originals(data: JsonObject) = data.getAsJsonArray("originals").map { it.asJsonObject }

    private fun models(original: JsonObject) = original.getAsJsonArray("models").map { it.asJsonObject }

    private fun structureLongName() = readOnRepo { structureModel.name.longName }

    private fun originalOfStructure(data: JsonObject): JsonObject =
        originals(data).singleOrNull { it.get("model").asString == structureLongName() }
            ?: error("the structure model's transient models are listed: $data")

    @After
    fun dropTransientModels() {
        generation("DROP_TRANSIENT_MODELS")
    }

    @Test
    fun `TRANSIENT_MODELS lists the kept models of a make with their stereotype parsed`() {
        createConceptRoot("Thing")
        makeKeepingTransients(structureModel)

        val data = expectOk(generation("TRANSIENT_MODELS"))
        assertTrue(data.has("saveTransientModelsSetting"))
        assertTrue(data.getAsJsonArray("notes").size() > 0)
        val original = originalOfStructure(data)
        assertEquals(structureModelRef, original.get("originalModelReference").asString)
        assertEquals(readOnRepo { language.moduleName }, original.get("originalModule").asString)
        assertTrue("a kept make has a trace: $original", original.get("traceAvailable").asBoolean)
        assertTrue(original.get("transientModule").asString.startsWith("${readOnRepo { language.moduleName }}@transient"))

        val models = models(original)
        assertEquals("the input clone comes first: $models", "INITIAL_CLONE", models.first().get("kind").asString)
        assertEquals("${structureLongName()}@0", models.first().get("name").asString)
        val steps = models.drop(1)
        assertTrue("step models follow: $models", steps.isNotEmpty() && steps.all { it.get("kind").asString == "STEP" })
        assertTrue(models.all { it.get("branch").asInt == 0 })
        for (step in steps) {
            val stereotype = step.get("stereotype").asString
            assertEquals(stereotype.substringBefore('_') + "_", step.get("stereotypePrefix").asString)
            assertEquals(stereotype.substringAfter('_').toInt(), step.get("minor").asInt)
        }
        assertEquals("minor orders a branch's models", steps.map { it.get("minor").asInt }.sorted(), steps.map { it.get("minor").asInt })
        readOnRepo {
            for (model in models) {
                val resolved = PersistenceFacade.getInstance().createModelReference(model.get("reference").asString).resolve(myProject.repository)
                assertNotNull("${model.get("name")} resolves", resolved)
                // A model swapped out after the make reports loaded:false instead of a root count.
                if (model.has("roots")) assertEquals(model.get("roots").asInt, resolved!!.rootNodes.count())
                else assertFalse(model.get("loaded").asBoolean)
            }
        }

        // Filtered by the original and by one of its transient models: the same group.
        val byOriginal = expectOk(generation("TRANSIENT_MODELS", """{"model":"$structureModelRef"}"""))
        assertEquals(listOf(structureLongName()), originals(byOriginal).map { it.get("model").asString })
        val byTransient = expectOk(generation("TRANSIENT_MODELS", """{"modelReference":"${steps.last().get("reference").asString}"}"""))
        assertEquals(models.map { it.get("reference").asString }, models(originals(byTransient).single()).map { it.get("reference").asString })
        val unrelated = expectOk(generation("TRANSIENT_MODELS", """{"model":"${modelRefOf(createModel(createSolution(), "test.tm.unrelated"))}"}"""))
        assertTrue("a model that was not made has no transient models: $unrelated", originals(unrelated).isEmpty())
    }

    @Test
    fun `read tools accept a transient model and write tools refuse it with NOT_EDITABLE`() {
        createConceptRoot("Thing")
        makeKeepingTransients(structureModel)
        val original = originalOfStructure(expectOk(generation("TRANSIENT_MODELS")))
        val modelRef = models(original).last().get("reference").asString
        val (rootRef, rootCount) = readOnRepo {
            val model = PersistenceFacade.getInstance().createModelReference(modelRef).resolve(myProject.repository)!!
            PersistenceFacade.getInstance().asString(model.rootNodes.first().reference) to model.rootNodes.count()
        }

        val projectTools = JetBrainsMPSProjectMcpToolset()
        val modelDump = expectOk(runTool(projectTools) { it.mps_mcp_get_project_structure(startingPoint = modelRef, includeRootNodes = true) })
        assertEquals(modelRef, modelDump.get("reference").asString)
        assertTrue("a transient model is marked: $modelDump", modelDump.get("transient").asBoolean)
        assertTrue(modelDump.getAsJsonArray("rootNodes").size() > 0)
        val moduleRef = original.get("transientModuleReference").asString
        val moduleDump = expectOk(runTool(projectTools) { it.mps_mcp_get_project_structure(startingPoint = moduleRef) })
        assertEquals("transient", moduleDump.get("kind").asString)
        assertTrue(moduleDump.get("transient").asBoolean)
        val nodeDump = expectOk(runTool(projectTools) { it.mps_mcp_get_project_structure(startingPoint = rootRef) })
        assertEquals(rootRef, nodeDump.get("reference").asString)
        val listing = expectOk(runTool(projectTools) { it.mps_mcp_get_project_structure(includeStubModules = true, moduleKind = "transient") })
        assertTrue(
            "includeStubModules lists the transient module under kind transient: $listing",
            listing.getAsJsonArray("modules").any { it.asJsonObject.get("reference").asString == moduleRef },
        )
        val plainListing = runTool(projectTools) { it.mps_mcp_get_project_structure() }
        assertFalse("a project dump does not list transient modules", plainListing.contains(moduleRef))

        val printed = expectOk(runTool(JetBrainsMPSNodeMcpToolset()) { it.mps_mcp_print_node(rootRef) })
        assertEquals(rootRef, printed.get("reference").asString)

        val rootTools = JetBrainsMPSRootNodeMcpToolset()
        val nodeWrite = JsonParser.parseString(runTool(rootTools) { it.mps_mcp_update_root_node_from_json(rootRef, JsonOrText("{}")) }).asJsonObject
        assertEquals(nodeWrite.toString(), "NOT_EDITABLE", nodeWrite.get("code").asString)
        val nodeError = nodeWrite.get("error").asString
        assertTrue("the refusal says the model is transient: $nodeError", nodeError.contains("transient model"))
        assertTrue("the refusal names the original: $nodeError", nodeError.contains(structureModelRef))
        val modelWrite = JsonParser.parseString(
            runTool(rootTools) { it.mps_mcp_create_root_node(modelRef, concept = "jetbrains.mps.lang.structure.structure.ConceptDeclaration", name = "X") }
        ).asJsonObject
        assertEquals(modelWrite.toString(), "NOT_EDITABLE", modelWrite.get("code").asString)
        val nodeTools = JetBrainsMPSNodeMcpToolset()
        val copy = JsonParser.parseString(
            runTool(nodeTools) { it.mps_mcp_alter_nodes(MPSAlterOperation.COPY_NODE, """{"nodeReference":"$rootRef"}""") }
        ).asJsonObject
        assertEquals("COPY_NODE writes into the source's model: $copy", "NOT_EDITABLE", copy.get("code").asString)
        val fixes = JsonParser.parseString(
            runTool(nodeTools) { it.mps_mcp_check_root_node_problems(rootRef, autoApplyQuickFixes = true) }
        ).asJsonObject
        assertEquals(fixes.toString(), "NOT_EDITABLE", fixes.get("code").asString)
        readOnRepo {
            val model = PersistenceFacade.getInstance().createModelReference(modelRef).resolve(myProject.repository)!!
            assertTrue("nothing was added", model.rootNodes.none { it.name == "X" })
            assertEquals("nothing was copied", rootCount, model.rootNodes.count())
        }
    }

    @Test
    fun `name lookups never bind to a transient copy`() {
        val conceptRef = createConceptRoot("Thing")
        makeKeepingTransients(structureModel)
        val longName = structureLongName()
        val ops = LookupOps()
        readOnRepo {
            val repository = myProject.repository
            assertTrue("the make published transient copies", repository.modules.any { it is TransientSModule && it.models.any { m -> m.name.longName == longName } })
            assertTrue(ops.lookupModules(myProject).none { it is TransientSModule })
            assertEquals(structureModel, ops.model(myProject, longName))
            assertEquals(conceptRef, ops.root(myProject, "$longName.Thing"))
            assertEquals(conceptRef, ops.root(myProject, "Thing"))
            assertEquals(conceptRef, ops.concept(myProject, "$longName.Thing"))
            assertEquals(conceptRef, ops.concept(myProject, "Thing"))
            assertNull("a transient model has no name to be found by", ops.model(myProject, "$longName@0"))
        }
        // With the original gone, the transient copies are the only roots of that name left in this language.
        executeCommand { structureModel.removeRootNode(structureModel.rootNodes.single { it.name == "Thing" }) }
        readOnRepo {
            val repository = myProject.repository
            fun inTransientModel(ref: String?) = ref != null &&
                PersistenceFacade.getInstance().createNodeReference(ref).resolve(repository)?.model?.module is TransientSModule
            assertTrue(
                "the transient copies still hold Thing",
                repository.modules.any { m -> m is TransientSModule && m.models.any { it.name.longName == longName && it.rootNodes.any { r -> r.name == "Thing" } } },
            )
            assertNull(ops.root(myProject, "$longName.Thing"))
            assertFalse(inTransientModel(ops.root(myProject, "Thing")))
            assertNull(ops.concept(myProject, "$longName.Thing"))
            assertFalse(inTransientModel(ops.concept(myProject, "Thing")))
        }
    }

    @Test
    fun `DROP_TRANSIENT_MODELS frees them and both operations are refused during a make`() {
        createConceptRoot("Thing")
        makeKeepingTransients(structureModel)
        val listed = models(originalOfStructure(expectOk(generation("TRANSIENT_MODELS"))))
        val modelRef = listed.first().get("reference").asString

        val makeService = myProject.getComponent(MakeServiceComponent::class.java)?.get()
        assertNotNull(makeService)
        val session = MakeSession(myProject, IMessageHandler.NULL_HANDLER, false)
        assumeTrue("the test environment could not open a make session", makeService!!.openNewSession(session))
        try {
            for (operation in listOf("TRANSIENT_MODELS", "DROP_TRANSIENT_MODELS")) {
                val (response, records) = captureLogRecords { generation(operation) }
                assertNoProblemsLogged(records)
                val refused = JsonParser.parseString(response).asJsonObject
                assertEquals(refused.toString(), "INVALID_REQUEST", refused.get("code").asString)
                assertTrue(refused.get("error").asString.contains("make session is active"))
            }
        } finally {
            makeService.closeSession(session)
        }
        readOnRepo { assertNotNull("the refused drop kept the models", PersistenceFacade.getInstance().createModelReference(modelRef).resolve(myProject.repository)) }

        val dropped = expectOk(generation("DROP_TRANSIENT_MODELS", """{"includeCheckpoints":false}"""))
        assertTrue("$dropped", dropped.get("droppedModules").asInt >= 1)
        assertTrue("$dropped", dropped.get("droppedModels").asInt >= listed.size)
        assertFalse(dropped.get("includeCheckpoints").asBoolean)
        assertEquals(0, dropped.get("droppedCheckpointModels").asInt)
        assertTrue("nothing is left: $dropped", originals(expectOk(generation("TRANSIENT_MODELS"))).isEmpty())
        readOnRepo { assertNull("a dropped model no longer resolves", PersistenceFacade.getInstance().createModelReference(modelRef).resolve(myProject.repository)) }
        val again = expectOk(generation("DROP_TRANSIENT_MODELS"))
        assertEquals("a second drop finds nothing: $again", 0, again.get("droppedModels").asInt)
    }

    @Test
    fun `TRANSIENT_MODELS tells a fork branch's models from the main branch's by branch serial`() {
        val solution = createSolution()
        val planModel = createModel(solution, "test.tm.plans")
        val languages = listOf(languageRuntime(COLLECTIONS).identity, languageRuntime(BASE_LANGUAGE).identity)
        executeCommand {
            // A fork as the first step (majorStep 0): the branch numbers its models 1_<minor> with minors above 100,
            // the main branch's transform after the fork writes 2_<minor>.
            val main = planNode("MainPlan")
            val branch = planNode("BranchPlan")
            main.addChild(PLAN_STEPS, jetbrains.mps.smodel.SNode(FORK).apply { setReferenceTarget(FORK_PLAN, branch) })
            main.addChild(PLAN_STEPS, transformNode(languages))
            branch.addChild(PLAN_STEPS, transformNode(languages))
            planModel.addRootNode(main)
            planModel.addRootNode(branch)
        }
        expectOk(runTool(JetBrainsMPSModuleMcpToolset()) {
            it.mps_mcp_update_module_facet(
                solution.moduleName!!, CustomGenerationModuleFacet.FACET_TYPE, true,
                JsonOrText("""{"planModel":"${modelRefOf(planModel)}"}"""),
            )
        })
        val model = createModel(solution, "test.tm.input")
        executeCommand {
            languages.forEach { (model as SModelInternal).addLanguage(it) }
            // A `list<string>` field: the collections generator reduces it, so each transform step writes a model.
            val listType = jetbrains.mps.smodel.SNode(concept(COLLECTIONS, "ListType"))
            listType.addChild(link(listType, "elementType"), jetbrains.mps.smodel.SNode(concept(BASE_LANGUAGE, "StringType")))
            val field = jetbrains.mps.smodel.SNode(concept(BASE_LANGUAGE, "FieldDeclaration"))
            field.setProperty(SNodeUtil.property_INamedConcept_name, "items")
            field.addChild(link(field, "type"), listType)
            val root = jetbrains.mps.smodel.SNode(concept(BASE_LANGUAGE, "ClassConcept"))
            root.setProperty(SNodeUtil.property_INamedConcept_name, "Root")
            root.addChild(link(root, "member"), field)
            model.addRootNode(root)
        }
        // The make need not succeed: generation keeps its transient models either way.
        runTool(JetBrainsMPSNodeMcpToolset()) {
            it.mps_mcp_alter_nodes(MPSAlterOperation.MAKE, """{ "models": ["${modelRefOf(model)}"], "rebuild": true, "saveTransientModels": true }""")
        }

        val data = expectOk(generation("TRANSIENT_MODELS", """{"model":"${modelRefOf(model)}"}"""))
        val models = models(originals(data).single())
        val branchModels = models.filter { it.get("branch").asInt > 0 }
        assertTrue("the fork branch kept models: $models", branchModels.isNotEmpty())
        assertTrue("$branchModels", branchModels.all { it.get("kind").asString == "FORK_BRANCH" })
        assertTrue("a branch at majorStep 0 writes 1_ models: $branchModels", branchModels.all { it.get("stereotypePrefix").asString == "1_" })
        // The branch input copy is <forkPrefix><minor + 100>, the branch's lowest minor; its steps count on from there.
        assertEquals("the branch input copy comes first: $branchModels", "1_100", branchModels.first().get("stereotype").asString)
        assertTrue("the branch's steps follow: $branchModels", branchModels.drop(1).isNotEmpty() && branchModels.drop(1).all { it.get("minor").asInt > 100 })
        val mainModels = models.filter { it.get("branch").asInt == 0 }
        assertTrue("$mainModels", mainModels.all { it.get("kind").asString in setOf("INITIAL_CLONE", "STEP") })
        assertTrue("the main branch's transform after the fork writes 2_ models: $mainModels", mainModels.any { it.get("stereotypePrefix")?.asString == "2_" })
        assertEquals("the main branch is listed before the fork branch", models.sortedBy { it.get("branch").asInt }, models)
    }

    @Test
    fun `MAKE droppedPrevious does not count the checkpoint models a make keeps`() {
        val solution = createSolution()
        val planModel = createModel(solution, "test.tm.cpplans")
        val languages = listOf(languageRuntime(BASE_LANGUAGE).identity)
        executeCommand {
            val main = planNode("CheckpointPlan")
            main.addChild(PLAN_STEPS, transformNode(languages))
            main.addChild(PLAN_STEPS, checkpointNode("cp1"))
            planModel.addRootNode(main)
        }
        expectOk(runTool(JetBrainsMPSModuleMcpToolset()) {
            it.mps_mcp_update_module_facet(
                solution.moduleName!!, CustomGenerationModuleFacet.FACET_TYPE, true,
                JsonOrText("""{"planModel":"${modelRefOf(planModel)}"}"""),
            )
        })
        val model = createModel(solution, "test.tm.cpinput")
        executeCommand {
            languages.forEach { (model as SModelInternal).addLanguage(it) }
            val root = jetbrains.mps.smodel.SNode(concept(BASE_LANGUAGE, "ClassConcept"))
            root.setProperty(SNodeUtil.property_INamedConcept_name, "Root")
            model.addRootNode(root)
        }
        // The make need not succeed: a failed generation still publishes its checkpoint model.
        fun make(): JsonObject = expectOk(runTool(JetBrainsMPSNodeMcpToolset()) {
            it.mps_mcp_alter_nodes(MPSAlterOperation.MAKE, """{ "models": ["${modelRefOf(model)}"], "rebuild": true, "saveTransientModels": true }""")
        }).getAsJsonObject("transientModels")

        make()
        val checkpointName = "${readOnRepo { model.name.longName }}@cp1"
        val kept = expectOk(generation("TRANSIENT_MODELS"))
        assertTrue(
            "the checkpoint step published its model: $kept",
            kept.getAsJsonArray("checkpoints").any { it.asJsonObject.get("name").asString == checkpointName },
        )
        assertTrue("the make kept per-make transient models too: $kept", originals(kept).isNotEmpty())

        expectOk(generation("DROP_TRANSIENT_MODELS", """{"includeCheckpoints":false}"""))
        val onlyCheckpoints = expectOk(generation("TRANSIENT_MODELS"))
        assertTrue("no per-make transient models are left: $onlyCheckpoints", originals(onlyCheckpoints).isEmpty())
        assertTrue(
            "the checkpoint model survived the drop: $onlyCheckpoints",
            onlyCheckpoints.getAsJsonArray("checkpoints").any { it.asJsonObject.get("name").asString == checkpointName },
        )
        readOnRepo {
            // What makes the exclusion matter: the provider still lists the checkpoints module.
            val provider = myProject.getComponent(TransientModelsProvider::class.java)!!
            assertEquals(listOf(provider.checkpointsModule), provider.modules.toList())
        }

        val afterCheckpointsOnly = make()
        assertFalse("the kept checkpoint models are not reported dropped: $afterCheckpointsOnly", afterCheckpointsOnly.get("droppedPrevious").asBoolean)
        assertTrue("the make kept per-make transient models: $afterCheckpointsOnly", afterCheckpointsOnly.getAsJsonArray("modules").size() > 0)
        assertTrue(
            "the checkpoints module is not reported as a per-make module: $afterCheckpointsOnly",
            afterCheckpointsOnly.getAsJsonArray("modules").none { it.asJsonObject.get("module").asString == "checkpoints" },
        )

        val afterPerMake = make()
        assertTrue("the previous make's transient models are reported dropped: $afterPerMake", afterPerMake.get("droppedPrevious").asBoolean)
    }

    private class LookupOps : AbstractOps() {
        fun lookupModules(project: MPSProject) = nameLookupModules(project.repository)
        fun model(project: MPSProject, name: String): SModel? = resolveModel(project.repository, name)
        fun root(project: MPSProject, name: String): String? =
            resolveNodeReference(project.repository, name)?.let { PersistenceFacade.getInstance().asString(it) }
        fun concept(project: MPSProject, name: String): String? =
            resolveConceptNode(project.repository, name)?.let { PersistenceFacade.getInstance().asString(it.reference) }
    }

    private fun languageRuntime(namespace: String) =
        checkNotNull(LanguageRegistry.getInstance(myProject.repository).getLanguage(namespace)) { "$namespace is not deployed" }

    private fun concept(namespace: String, name: String): SConcept = readOnRepo {
        languageRuntime(namespace).identity.concepts.filterIsInstance<SConcept>().single { it.name == name }
    }

    private fun planNode(name: String): SNode =
        jetbrains.mps.smodel.SNode(PLAN).apply { setProperty(SNodeUtil.property_INamedConcept_name, name) }

    private fun transformNode(languages: List<org.jetbrains.mps.openapi.language.SLanguage>): SNode = jetbrains.mps.smodel.SNode(TRANSFORM).apply {
        for (language in languages) {
            addChild(TRANSFORM_LANGUAGES, jetbrains.mps.smodel.SNode(LANGUAGE_ID).apply {
                setProperty(LANGUAGE_ID_ID, jetbrains.mps.smodel.adapter.ids.MetaIdHelper.getLanguage(language).serialize())
                setProperty(LANGUAGE_ID_NAMESPACE, language.qualifiedName)
            })
        }
    }

    private fun checkpointNode(name: String): SNode = jetbrains.mps.smodel.SNode(CHECKPOINT).apply {
        addChild(CHECKPOINT_SPEC, jetbrains.mps.smodel.SNode(IN_PLACE_CHECKPOINT_SPEC).apply {
            setProperty(SNodeUtil.property_INamedConcept_name, name)
        })
    }

    private fun link(node: SNode, name: String) = node.concept.containmentLinks.single { it.name == name }

    private companion object {
        const val BASE_LANGUAGE = "jetbrains.mps.baseLanguage"
        const val COLLECTIONS = "jetbrains.mps.baseLanguage.collections"

        // jetbrains.mps.lang.generator.plan and smodel's LanguageId, as in JetBrainsMPSGenerationMcpToolsetIntegrationTest.
        const val PLAN_LANG_HI = 0x7ab1a6fa0a114b95L
        val PLAN_LANG_LO = 0x9e4875f363d6cb00uL.toLong()
        val PLAN: SConcept = MetaAdapterFactory.getConcept(PLAN_LANG_HI, PLAN_LANG_LO, 0x19443180a20717fbL, "jetbrains.mps.lang.generator.plan.structure.Plan")
        val FORK: SConcept = MetaAdapterFactory.getConcept(PLAN_LANG_HI, PLAN_LANG_LO, 0x2bf683196b12a3cbL, "jetbrains.mps.lang.generator.plan.structure.Fork")
        val PLAN_STEPS = MetaAdapterFactory.getContainmentLink(PLAN_LANG_HI, PLAN_LANG_LO, 0x19443180a20717fbL, 0x19443180a2071807L, "steps")
        val TRANSFORM: SConcept = MetaAdapterFactory.getConcept(PLAN_LANG_HI, PLAN_LANG_LO, 0x19443180a2071802L, "jetbrains.mps.lang.generator.plan.structure.Transform")
        val TRANSFORM_LANGUAGES = MetaAdapterFactory.getContainmentLink(PLAN_LANG_HI, PLAN_LANG_LO, 0x19443180a2071802L, 0x28dd6d5a7549fa8dL, "languages")
        val CHECKPOINT: SConcept = MetaAdapterFactory.getConcept(PLAN_LANG_HI, PLAN_LANG_LO, 0x19443180a2071801L, "jetbrains.mps.lang.generator.plan.structure.Checkpoint")
        val IN_PLACE_CHECKPOINT_SPEC: SConcept = MetaAdapterFactory.getConcept(PLAN_LANG_HI, PLAN_LANG_LO, 0x340cd07aed7ca161L, "jetbrains.mps.lang.generator.plan.structure.InPlaceCheckpointSpec")
        val CHECKPOINT_SPEC = MetaAdapterFactory.getContainmentLink(PLAN_LANG_HI, PLAN_LANG_LO, 0x19443180a2071801L, 0x340cd07aed7cb2d2L, "cpSpec")
        val FORK_PLAN = MetaAdapterFactory.getReferenceLink(PLAN_LANG_HI, PLAN_LANG_LO, 0x2bf683196b12a3cbL, 0x2bf683196b12a3ccL, "plan")

        const val SMODEL_LANG_HI = 0x7866978ea0f04cc7L
        val SMODEL_LANG_LO = 0x81bc4d213d9375e1uL.toLong()
        val LANGUAGE_ID: SConcept = MetaAdapterFactory.getConcept(SMODEL_LANG_HI, SMODEL_LANG_LO, 0x312abca18ab8c8c0L, "jetbrains.mps.lang.smodel.structure.LanguageId")
        val LANGUAGE_ID_ID = MetaAdapterFactory.getProperty(SMODEL_LANG_HI, SMODEL_LANG_LO, 0x312abca18ab8c8c0L, 0x312abca18ab8ccd8L, "languageId")
        val LANGUAGE_ID_NAMESPACE = MetaAdapterFactory.getProperty(SMODEL_LANG_HI, SMODEL_LANG_LO, 0x312abca18ab8c8c0L, 0x312abca18ab8ccd7L, "namespace")
    }
}
