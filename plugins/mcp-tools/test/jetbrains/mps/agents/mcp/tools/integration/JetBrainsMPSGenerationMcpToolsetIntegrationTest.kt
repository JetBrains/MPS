package jetbrains.mps.agents.mcp.tools.integration

import jetbrains.mps.agents.mcp.tools.*
import jetbrains.mps.agents.mcp.tools.common.*
import jetbrains.mps.agents.mcp.tools.integration.GenPlanTestNodes.PLAN_STEPS
import jetbrains.mps.agents.mcp.tools.integration.GenPlanTestNodes.checkpointNode
import jetbrains.mps.agents.mcp.tools.integration.GenPlanTestNodes.conceptListForkNode
import jetbrains.mps.agents.mcp.tools.integration.GenPlanTestNodes.forkNode
import jetbrains.mps.agents.mcp.tools.integration.GenPlanTestNodes.planNode
import jetbrains.mps.agents.mcp.tools.integration.GenPlanTestNodes.transformNode

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
            main.addChild(PLAN_STEPS, forkNode(branch))
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
        val source = data.getAsJsonArray("explicitPlanSources").single().asJsonObject
        assertEquals(source.toString(), "FACET", source.get("via").asString)
        assertEquals(solution.moduleName, source.get("by").asString)
        assertEquals("the plan MPS runs is the model's first Plan root", "MainPlan", source.get("planName").asString)
        assertTrue(source.get("applied").asBoolean)

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

    private companion object {
        const val BASE_LANGUAGE = "jetbrains.mps.baseLanguage"
    }

    /** A solution whose Custom Generation facet names a plan model built by [build]; returns a BaseLanguage model of it. */
    private fun modelUnderFacetPlan(build: (SModel) -> Unit): SModel {
        val solution = createSolution()
        val planModel = createModel(solution, "test.gen.plans")
        executeCommand { build(planModel) }
        expectOk(runTool(JetBrainsMPSModuleMcpToolset()) {
            it.mps_mcp_update_module_facet(
                solution.moduleName!!, CustomGenerationModuleFacet.FACET_TYPE, true,
                JsonOrText("""{"planModel":"${modelRefOf(planModel)}"}"""),
            )
        })
        return modelWithRoot(solution, "test.gen.input", concept(BASE_LANGUAGE, "ClassConcept"))
    }

    @Test
    fun `PLAN detail steps keeps the steps and drops the bulky sections`() {
        val model = modelUnderFacetPlan { planModel ->
            planModel.addRootNode(planNode("MainPlan").apply {
                addChild(PLAN_STEPS, transformNode(languageRuntime(BASE_LANGUAGE).identity))
                addChild(PLAN_STEPS, checkpointNode("cp1"))
            })
        }
        val full = expectOk(plan("""{"model":"${modelRefOf(model)}"}"""))
        val compact = expectOk(plan("""{"model":"${modelRefOf(model)}","detail":"steps"}"""))
        assertEquals(steps(full).map { it.get("kind").asString }, steps(compact).map { it.get("kind").asString })
        assertEquals("EXPLICIT", compact.get("planSource").asString)
        assertTrue(compact.has("explicitPlanSources"))
        assertTrue(compact.has("usedLanguages"))
        for (key in listOf("engagedGeneratorTrace", "generators", "notes")) {
            assertTrue("full keeps $key", full.has(key))
            assertFalse("steps drops $key: $compact", compact.has(key))
        }
        val transformation = steps(compact)[0].getAsJsonArray("transformations")[0].asJsonObject
        assertTrue(transformation.has("generatorModule"))
        assertFalse(transformation.has("mappingConfigurations"))
        assertTrue(compact.toString().length < full.toString().length)
        expectErr(plan("""{"model":"${modelRefOf(model)}","detail":"everything"}"""))
    }

    @Test
    fun `PLAN reports a plan MPS cannot build instead of failing`() {
        // A ConceptListSelector fork filter makes GenPlanTranslator pop an empty condition stack.
        val model = modelUnderFacetPlan { planModel ->
            val branch = planNode("BranchPlan").apply { addChild(PLAN_STEPS, checkpointNode("b")) }
            planModel.addRootNode(planNode("MainPlan").apply {
                addChild(PLAN_STEPS, transformNode(languageRuntime(BASE_LANGUAGE).identity))
                addChild(PLAN_STEPS, conceptListForkNode(branch))
            })
            planModel.addRootNode(branch)
        }
        val response = plan("""{"model":"${modelRefOf(model)}"}""")
        val data = expectOk(response)
        assertFalse(response, data.get("planComputed").asBoolean)
        assertTrue(response, data.has("planError"))
        assertTrue("the attached plan is still named: $response", data.has("explicitPlanSources"))
        val problem = data.getAsJsonArray("explicitPlanSources")[0].asJsonObject.get("problem")?.asString
        assertTrue("the source carries the ConceptListSelector diagnosis: $response", problem?.contains("ConceptListSelector") == true)

        val ignored = plan("""{"model":"${modelRefOf(model)}","ignoreExternalPlan":true}""")
        val fallback = expectOk(ignored)
        assertTrue("ignoring the broken plan shows the default one: $ignored", fallback.get("planComputed").asBoolean)
        assertEquals("DEFAULT", fallback.get("planSource").asString)
        assertTrue(fallback.has("planError"))
        assertTrue(steps(fallback).isNotEmpty())
    }

    @Test
    fun `PLAN lists a shadowed devkit plan after the facet plan that applies`() {
        val plans = createSolution()
        fun planModel(name: String, plan: String): SModel = createModel(plans, name).also { m ->
            executeCommand {
                m.addRootNode(planNode(plan).apply { addChild(PLAN_STEPS, transformNode(languageRuntime(BASE_LANGUAGE).identity)) })
            }
        }
        val kitModel = planModel("test.gen.kit", "KitPlan")
        val facetModel = planModel("test.gen.facet", "FacetPlan")
        val modules = JetBrainsMPSModuleMcpToolset()
        val dkName = "test.gen.devkit${System.nanoTime()}"
        expectOk(runTool(modules) { it.mps_mcp_create_module("devkit", dkName, freshPathInProject(dkName), null, null, false, false, false) })
        expectOk(runTool(modules) { it.mps_mcp_update_module(dkName, null, "SET_GENERATION_PLAN", false, modelRefOf(kitModel)) })
        val devkitRef = readOnRepo { myProject.projectModules.single { it.moduleName == dkName }.moduleReference }

        val solution = createSolution()
        val model = modelWithRoot(solution, "test.gen.input", concept(BASE_LANGUAGE, "ClassConcept"))
        executeCommand { (model as jetbrains.mps.smodel.SModelInternal).addDevKit(devkitRef) }

        val viaDevkit = expectOk(plan("""{"model":"${modelRefOf(model)}","detail":"steps"}"""))
        assertEquals("DEVKIT", viaDevkit.get("explicitPlanOrigin").asString)
        val kit = viaDevkit.getAsJsonArray("explicitPlanSources").single().asJsonObject
        assertEquals(listOf("DEVKIT", dkName, "KitPlan", "true"), listOf("via", "by", "planName", "applied").map { kit.get(it).asString })

        expectOk(runTool(modules) { it.mps_mcp_update_module(solution.moduleName!!, null, "SET_GENERATION_PLAN", false, modelRefOf(facetModel)) })
        val both = expectOk(plan("""{"model":"${modelRefOf(model)}","detail":"steps"}"""))
        val sources = both.getAsJsonArray("explicitPlanSources").map { it.asJsonObject }
        assertEquals("the facet is consulted first", listOf("FACET", "DEVKIT"), sources.map { it.get("via").asString })
        assertEquals(listOf(true, false), sources.map { it.get("applied").asBoolean })
        assertEquals("FACET", both.get("explicitPlanOrigin").asString)

        val ignored = expectOk(plan("""{"model":"${modelRefOf(model)}","ignoreExternalPlan":true,"detail":"steps"}"""))
        assertTrue("nothing applies when the attached plans are ignored", ignored.getAsJsonArray("explicitPlanSources").all { !it.asJsonObject.get("applied").asBoolean })
    }
}
