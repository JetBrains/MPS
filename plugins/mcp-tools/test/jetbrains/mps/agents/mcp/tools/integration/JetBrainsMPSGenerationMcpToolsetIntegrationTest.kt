package jetbrains.mps.agents.mcp.tools.integration

import jetbrains.mps.agents.mcp.tools.*
import jetbrains.mps.agents.mcp.tools.common.*

import com.google.gson.JsonObject
import com.google.gson.JsonParser
import jetbrains.mps.generator.CustomGenerationModuleFacet
import jetbrains.mps.project.Solution
import jetbrains.mps.smodel.SNodeUtil
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory
import jetbrains.mps.smodel.language.LanguageRegistry
import org.jetbrains.mps.openapi.language.SConcept
import org.jetbrains.mps.openapi.model.SModel
import org.jetbrains.mps.openapi.model.SNode
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test
import kotlinx.serialization.json.JsonObject as McpJsonObject
import kotlinx.serialization.json.JsonPrimitive as McpJsonPrimitive

/**
 * `mps_mcp_generation` PLAN: the default plan of a BaseLanguage model, a model whose only language has no generator,
 * and an explicit plan attached through the `generator` module facet with a checkpoint and a fork.
 */
class JetBrainsMPSGenerationMcpToolsetIntegrationTest : McpIntegrationTestBase() {

    private val toolset = JetBrainsMPSGenerationMcpToolset()

    private fun plan(parameters: String): String =
        runTool(toolset) { it.mps_mcp_generation("PLAN", JsonOrText(parameters)) }

    private fun languageRuntime(namespace: String) =
        checkNotNull(LanguageRegistry.getInstance(myProject.repository).getLanguage(namespace)) { "$namespace is not deployed" }

    private fun concept(namespace: String, name: String): SConcept = readOnRepo {
        languageRuntime(namespace).identity.concepts.filterIsInstance<SConcept>().single { it.name == name }
    }

    /** A model of [solution] holding one root of [concept]. */
    private fun modelWithRoot(solution: Solution, modelName: String, concept: SConcept): SModel {
        val model = createModel(solution, modelName)
        executeCommand {
            val root = jetbrains.mps.smodel.SNode(concept)
            root.setProperty(SNodeUtil.property_INamedConcept_name, "Root")
            model.addRootNode(root)
        }
        return model
    }

    private fun steps(data: JsonObject) = data.getAsJsonArray("steps").map { it.asJsonObject }

    private fun coverage(data: JsonObject, language: String): String? =
        data.getAsJsonArray("usedLanguages").map { it.asJsonObject }
            .singleOrNull { it.get("language").asString == language }?.get("coverage")?.asString

    @Test
    fun `PLAN of a BaseLanguage model is the default plan with the BaseLanguage generator`() {
        val model = modelWithRoot(createSolution(), "test.gen.bl", concept(BASE_LANGUAGE, "ClassConcept"))
        // Through the bridge with `parameters` as a real JSON object, the wire shape a client sends.
        val (response, records) = captureLogRecords {
            callThroughBridge(
                toolset, "mps_mcp_generation",
                mapOf(
                    "operation" to McpJsonPrimitive("PLAN"),
                    "parameters" to McpJsonObject(mapOf("model" to McpJsonPrimitive(modelRefOf(model)))),
                ),
            )
        }
        assertNoProblemsLogged(records)
        val data = payloadObjectFromOkData(response)
        assertEquals("DEFAULT", data.get("planSource").asString)
        assertFalse(data.has("explicitPlanOrigin"))
        assertFalse(data.get("externalPlanIgnored").asBoolean)
        assertTrue(data.get("generatable").asBoolean)
        assertEquals(modelRefOf(model), data.get("modelReference").asString)

        val steps = steps(data)
        assertTrue("a default plan has transform steps only: $steps", steps.isNotEmpty() && steps.all { it.get("kind").asString == "TRANSFORM" })
        assertEquals("1_", steps.first().get("transientStereotypePrefix").asString)
        val transformations = steps.flatMap { step -> step.getAsJsonArray("transformations").map { it.asJsonObject } }
        val baseLanguageStep = transformations.firstOrNull { it.get("sourceLanguage").asString == BASE_LANGUAGE }
        assertTrue("some step applies the BaseLanguage generator: $transformations", baseLanguageStep != null)
        assertTrue(baseLanguageStep!!.getAsJsonArray("mappingConfigurations").size() > 0)

        assertEquals("IN_PLAN", coverage(data, BASE_LANGUAGE))
        assertTrue(data.getAsJsonArray("generators").any { it.asJsonObject.get("sourceLanguage").asString == BASE_LANGUAGE })
        assertTrue("a default plan reports priority conflicts", data.has("conflicts") && data.has("ignoredPriorityRules"))
        assertTrue(data.getAsJsonArray("engagedGeneratorTrace").size() > 0)
        assertTrue(data.getAsJsonArray("notes").any { it.asString == GenerationOps.PLAN_NOTES.first() })

        val byName = expectOk(plan("""{"modelRef":"test.gen.bl"}"""))
        assertEquals("the full name and the modelRef spelling address the same model", modelRefOf(model), byName.get("modelReference").asString)
    }

    @Test
    fun `PLAN of a model whose language has no generator reports NO_GENERATORS`() {
        val namespace = readOnRepo {
            val registry = LanguageRegistry.getInstance(myProject.repository)
            registry.allLanguages
                .filter { language ->
                    registry.getLanguage(language)?.generators?.isEmpty() == true &&
                        language.concepts.any { it is SConcept && !it.isAbstract }
                }
                .map { it.qualifiedName }
                .minByOrNull { if (it == "jetbrains.mps.lang.text") "" else it }
        } ?: error("no deployed language without generators")
        val concept = readOnRepo { languageRuntime(namespace).identity.concepts.filterIsInstance<SConcept>().first { !it.isAbstract } }
        val model = modelWithRoot(createSolution(), "test.gen.nogen", concept)

        val data = expectOk(plan("""{"model":"${modelRefOf(model)}"}"""))
        assertEquals("DEFAULT", data.get("planSource").asString)
        assertEquals("NO_GENERATORS", coverage(data, namespace))
        // Generators of the languages it extends can still be engaged, so the plan need not be empty.
        val sources = steps(data).flatMap { step -> step.getAsJsonArray("transformations").map { it.asJsonObject.get("sourceLanguage").asString } }
        assertFalse("no step applies a generator of $namespace: $sources", namespace in sources)
        assertFalse(data.getAsJsonArray("generators").any { it.asJsonObject.get("sourceLanguage").asString == namespace })
    }

    @Test
    fun `PLAN follows an explicit plan attached through the generator facet`() {
        val solution = createSolution()
        val planModel = createModel(solution, "test.gen.plans")
        executeCommand {
            val main = planNode("MainPlan")
            val branch = planNode("BranchPlan")
            main.addChild(PLAN_STEPS, transformNode(languageRuntime(BASE_LANGUAGE).identity))
            main.addChild(PLAN_STEPS, checkpointNode("cp1"))
            main.addChild(PLAN_STEPS, jetbrains.mps.smodel.SNode(FORK).apply { setReferenceTarget(FORK_PLAN, branch) })
            branch.addChild(PLAN_STEPS, checkpointNode("branchCp"))
            // GenPlanTranslator reads the model's first Plan root.
            planModel.addRootNode(main)
            planModel.addRootNode(branch)
        }
        val facetResponse = runTool(JetBrainsMPSModuleMcpToolset()) {
            it.mps_mcp_update_module_facet(
                solution.moduleName!!, CustomGenerationModuleFacet.FACET_TYPE, true,
                JsonOrText("""{"planModel":"${modelRefOf(planModel)}"}"""),
            )
        }
        expectOk(facetResponse)
        val model = modelWithRoot(solution, "test.gen.input", concept(BASE_LANGUAGE, "ClassConcept"))

        val data = expectOk(plan("""{"model":"${modelRefOf(model)}"}"""))
        assertEquals(data.toString(), "EXPLICIT", data.get("planSource").asString)
        assertEquals("FACET", data.get("explicitPlanOrigin").asString)
        val diagnostics = data.getAsJsonArray("planDiagnostics").map { it.asJsonObject }
        assertTrue("the extractor's own messages are relayed: $diagnostics", diagnostics.isNotEmpty())
        assertTrue(
            "the facet message names the module: $diagnostics",
            diagnostics.any { it.get("reference")?.asString == readOnRepo { org.jetbrains.mps.openapi.persistence.PersistenceFacade.getInstance().asString(solution.moduleReference) } },
        )
        assertFalse("priority conflicts come with a default plan only", data.has("conflicts"))

        val steps = steps(data)
        assertEquals(steps.toString(), listOf("TRANSFORM", "CHECKPOINT", "FORK"), steps.map { it.get("kind").asString })
        val transform = steps[0]
        assertEquals("1_", transform.get("transientStereotypePrefix").asString)
        assertTrue(
            "the explicit transform applies the BaseLanguage generator: $transform",
            transform.getAsJsonArray("transformations").any { it.asJsonObject.get("sourceLanguage").asString == BASE_LANGUAGE },
        )
        val checkpoint = steps[1]
        assertEquals("cp1", checkpoint.get("name").asString)
        assertEquals("MainPlan", checkpoint.get("plan").asString)
        assertTrue(checkpoint.get("persisted").asBoolean)
        assertEquals("test.gen.input@cp1", checkpoint.get("checkpointModelName").asString)
        val fork = steps[2]
        assertFalse(fork.get("hasCondition").asBoolean)
        assertEquals("3_", fork.get("branchInputStereotypePrefix").asString)
        val branchSteps = fork.getAsJsonArray("branch").map { it.asJsonObject }
        assertEquals(listOf("CHECKPOINT"), branchSteps.map { it.get("kind").asString })
        assertEquals("BranchPlan", branchSteps.single().get("plan").asString)

        val ignored = expectOk(plan("""{"model":"${modelRefOf(model)}","ignoreExternalPlan":true}"""))
        assertEquals("DEFAULT", ignored.get("planSource").asString)
        assertTrue(ignored.get("externalPlanIgnored").asBoolean)
        assertEquals("the ignored plan's origin is still named", "FACET", ignored.get("explicitPlanOrigin").asString)
        assertTrue(steps(ignored).all { it.get("kind").asString == "TRANSFORM" })
    }

    @Test
    fun `PLAN of a model using a language that is not deployed computes no plan and logs nothing`() {
        // The test's own language was never made, so no runtime of it is deployed.
        val languageUuid = (language.moduleReference.moduleId as jetbrains.mps.project.ModuleId.Regular).uuid
        val undeployed = MetaAdapterFactory.getConcept(
            languageUuid.mostSignificantBits, languageUuid.leastSignificantBits, 0x1L, "${language.moduleName}.structure.Thing",
        )
        val model = modelWithRoot(createSolution(), "test.gen.undeployed", undeployed)

        val (response, records) = captureLogRecords { plan("""{"model":"${modelRefOf(model)}"}""") }
        assertNoProblemsLogged(records)
        val envelope = JsonParser.parseString(response).asJsonObject
        val data = expectOk(response)
        assertFalse(data.get("planComputed").asBoolean)
        assertEquals(listOf(language.moduleName), data.getAsJsonArray("notDeployedLanguages").map { it.asString })
        assertFalse(data.has("steps"))
        assertTrue(envelope.toString(), envelope.getAsJsonArray("warnings").any { it.asString.contains("mps_mcp_alter_nodes MAKE") })
    }

    @Test
    fun `PLAN rejects a missing, unknown or misspelled input`() {
        assertMissingParameterKeys(runTool(toolset) { it.mps_mcp_generation() }, listOf("operation", "parameters"))
        assertMissingParameterKeys(plan("""{"ignoreExternalPlan":true}"""), listOf("model"))

        val unknownOperation = JsonParser.parseString(runTool(toolset) { it.mps_mcp_generation("NO_SUCH_OPERATION", JsonOrText("{}")) }).asJsonObject
        assertEquals("INVALID_REQUEST", unknownOperation.get("code").asString)
        assertTrue(
            "only implemented operations are offered: $unknownOperation",
            unknownOperation.get("error").asString.endsWith("Valid operations: PLAN, TRACE, TRANSIENT_MODELS, DROP_TRANSIENT_MODELS."),
        )

        val misspelled = JsonParser.parseString(plan("""{"model":"x","ignoreExternalPlans":true}""")).asJsonObject
        assertEquals("INVALID_REQUEST", misspelled.get("code").asString)
        assertTrue(misspelled.get("error").asString, misspelled.get("error").asString.contains("ignoreExternalPlan"))

        val (missing, records) = captureLogRecords { plan("""{"model":"no.such.model"}""") }
        assertNoProblemsLogged(records)
        assertPastMissingParameterKeys("PLAN", missing)
        assertEquals("NOT_FOUND", JsonParser.parseString(missing).asJsonObject.get("code").asString)
        assertNull(JsonParser.parseString(missing).asJsonObject.get("data"))
    }

    private fun planNode(name: String): SNode =
        jetbrains.mps.smodel.SNode(PLAN).apply { setProperty(SNodeUtil.property_INamedConcept_name, name) }

    private fun transformNode(language: org.jetbrains.mps.openapi.language.SLanguage): SNode = jetbrains.mps.smodel.SNode(TRANSFORM).apply {
        addChild(TRANSFORM_LANGUAGES, jetbrains.mps.smodel.SNode(LANGUAGE_ID).apply {
            setProperty(LANGUAGE_ID_ID, jetbrains.mps.smodel.adapter.ids.MetaIdHelper.getLanguage(language).serialize())
            setProperty(LANGUAGE_ID_NAMESPACE, language.qualifiedName)
        })
    }

    private fun checkpointNode(name: String): SNode = jetbrains.mps.smodel.SNode(CHECKPOINT).apply {
        addChild(CHECKPOINT_SPEC, jetbrains.mps.smodel.SNode(IN_PLACE_CHECKPOINT_SPEC).apply {
            setProperty(SNodeUtil.property_INamedConcept_name, name)
        })
    }

    private companion object {
        const val BASE_LANGUAGE = "jetbrains.mps.baseLanguage"

        // jetbrains.mps.lang.generator.plan, as GenPlanTranslator reads it.
        const val PLAN_LANG_HI = 0x7ab1a6fa0a114b95L
        val PLAN_LANG_LO = 0x9e4875f363d6cb00uL.toLong()
        val PLAN: SConcept = MetaAdapterFactory.getConcept(PLAN_LANG_HI, PLAN_LANG_LO, 0x19443180a20717fbL, "jetbrains.mps.lang.generator.plan.structure.Plan")
        val CHECKPOINT: SConcept = MetaAdapterFactory.getConcept(PLAN_LANG_HI, PLAN_LANG_LO, 0x19443180a2071801L, "jetbrains.mps.lang.generator.plan.structure.Checkpoint")
        val IN_PLACE_CHECKPOINT_SPEC: SConcept = MetaAdapterFactory.getConcept(PLAN_LANG_HI, PLAN_LANG_LO, 0x340cd07aed7ca161L, "jetbrains.mps.lang.generator.plan.structure.InPlaceCheckpointSpec")
        val FORK: SConcept = MetaAdapterFactory.getConcept(PLAN_LANG_HI, PLAN_LANG_LO, 0x2bf683196b12a3cbL, "jetbrains.mps.lang.generator.plan.structure.Fork")
        val PLAN_STEPS = MetaAdapterFactory.getContainmentLink(PLAN_LANG_HI, PLAN_LANG_LO, 0x19443180a20717fbL, 0x19443180a2071807L, "steps")
        val CHECKPOINT_SPEC = MetaAdapterFactory.getContainmentLink(PLAN_LANG_HI, PLAN_LANG_LO, 0x19443180a2071801L, 0x340cd07aed7cb2d2L, "cpSpec")
        val TRANSFORM: SConcept = MetaAdapterFactory.getConcept(PLAN_LANG_HI, PLAN_LANG_LO, 0x19443180a2071802L, "jetbrains.mps.lang.generator.plan.structure.Transform")
        val TRANSFORM_LANGUAGES = MetaAdapterFactory.getContainmentLink(PLAN_LANG_HI, PLAN_LANG_LO, 0x19443180a2071802L, 0x28dd6d5a7549fa8dL, "languages")

        // jetbrains.mps.lang.smodel's LanguageId, the language reference a plan's Transform step holds.
        const val SMODEL_LANG_HI = 0x7866978ea0f04cc7L
        val SMODEL_LANG_LO = 0x81bc4d213d9375e1uL.toLong()
        val LANGUAGE_ID: SConcept = MetaAdapterFactory.getConcept(SMODEL_LANG_HI, SMODEL_LANG_LO, 0x312abca18ab8c8c0L, "jetbrains.mps.lang.smodel.structure.LanguageId")
        val LANGUAGE_ID_ID = MetaAdapterFactory.getProperty(SMODEL_LANG_HI, SMODEL_LANG_LO, 0x312abca18ab8c8c0L, 0x312abca18ab8ccd8L, "languageId")
        val LANGUAGE_ID_NAMESPACE = MetaAdapterFactory.getProperty(SMODEL_LANG_HI, SMODEL_LANG_LO, 0x312abca18ab8c8c0L, 0x312abca18ab8ccd7L, "namespace")
        val FORK_PLAN = MetaAdapterFactory.getReferenceLink(PLAN_LANG_HI, PLAN_LANG_LO, 0x2bf683196b12a3cbL, 0x2bf683196b12a3ccL, "plan")
    }
}
