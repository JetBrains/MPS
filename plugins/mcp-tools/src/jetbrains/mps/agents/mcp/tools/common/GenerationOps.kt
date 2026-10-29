package jetbrains.mps.agents.mcp.tools.common

import com.google.gson.JsonArray
import com.google.gson.JsonObject
import com.intellij.openapi.progress.ProcessCanceledException
import jetbrains.mps.generator.GenPlanExtractor
import jetbrains.mps.generator.GenerationFacade
import jetbrains.mps.generator.ModelGenerationPlan
import jetbrains.mps.generator.impl.plan.Conflict
import jetbrains.mps.generator.impl.plan.EngagedGeneratorCollector
import jetbrains.mps.generator.impl.plan.GenerationPartitioningUtil
import jetbrains.mps.generator.impl.plan.GenerationPlan
import jetbrains.mps.generator.runtime.TemplateModule
import jetbrains.mps.messages.IMessage
import jetbrains.mps.messages.IMessageHandler
import jetbrains.mps.messages.MessageKind
import jetbrains.mps.project.DevKit
import jetbrains.mps.smodel.SModelInternal
import jetbrains.mps.smodel.language.LanguageRegistry
import org.jetbrains.mps.openapi.model.SModel
import org.jetbrains.mps.openapi.model.SModelReference
import org.jetbrains.mps.openapi.model.SNodeReference
import org.jetbrains.mps.openapi.module.SModuleReference
import org.jetbrains.mps.openapi.module.SRepository
import org.jetbrains.mps.openapi.persistence.PersistenceFacade
import kotlin.coroutines.cancellation.CancellationException

/** Where the plan [GenerationOps.planJson] renders came from: the model's external plan, or the one computed from its languages. */
internal enum class PlanSource { EXPLICIT, DEFAULT }

/** Which mechanism attaches a model's external plan; no MPS API says, so [GenerationOps] probes the owning module. */
internal enum class ExplicitPlanOrigin { FACET, DEVKIT }

/** How a deployed language the model uses is covered by the plan's generators, as the console's `#showGenPlan` classifies it. */
internal enum class LanguageCoverage { IN_PLAN, NOT_IN_PLAN, NO_GENERATORS }

/** The renderers behind `mps_mcp_generation`. Every function needs read access to the model's repository. */
internal object GenerationOps {

    /** The rendered plan and the envelope warnings its computation raised. */
    class Rendered(val json: JsonObject, val warnings: List<String>)

    internal val PLAN_NOTES: List<String> = listOf(
        "The plan is computed now, from the model's current content and the generators deployed now; the plan the last make used is not retained.",
        "Mapping configurations with an isApplicable condition and fork conditions are evaluated at generation time; the static plan lists all of them.",
        "A TRANSFORM step whose transientStereotypePrefix is P writes its transient models as <model long name>@P<minor> when a make keeps " +
            "transient models; minor counts on through a branch rather than restarting per step. Every step consumes an index; CHECKPOINT " +
            "steps write no step model, and a FORK writes its branch's input copy as <branchInputStereotypePrefix><minor + 100>, after which " +
            "the branch numbers its steps on from the fork's own index with minors of 101 and up (above 200 in a nested branch). " +
            "Prefixes can therefore repeat across branches (prefixShared:true): tell such models apart by reference and branch, not by name.",
    )

    internal const val EMPTY_TRANSFORM_NOTE =
        "A TRANSFORM step with no transformations ends its branch: generation stops after it and later steps of that branch do not run."

    internal const val FORK_CONDITION_NOTE =
        "Fork conditions cannot be printed (conditionPrintable:false); a branch with a condition runs only when it holds at generation time."

    /**
     * The generation plan of [model] as make would use it: the external plan of a `generator` module facet or an imported
     * devkit when there is one and [ignoreExternalPlan] is false, otherwise the default plan computed from the model's
     * languages. Mirrors the console's `#showGenPlan` (`ShowGenPlan__BehaviorDescriptor`, `PartitioningHelper`).
     */
    fun planJson(model: SModel, repository: SRepository, ignoreExternalPlan: Boolean, compact: Boolean = false): Rendered {
        val warnings = mutableListOf<String>()
        val result = JsonObject()
        result.addProperty("model", model.name.value)
        result.addProperty("modelReference", PersistenceFacade.getInstance().asString(model.reference))
        val generatable = GenerationFacade.canGenerate(model)
        result.addProperty("generatable", generatable)
        if (!generatable) {
            warnings.add("Model '${model.name.value}' is not generatable (e.g. a stub or a do-not-generate model), so make skips it; the plan is what generation would use.")
        }

        val languageRegistry = LanguageRegistry.getInstance(repository)
        val collector = EngagedGeneratorCollector(languageRegistry, model)
        // Every plan computation logs an error per used language that is not deployed, so none is attempted then.
        // A missing language an engaged generator needs still logs; that is a broken deployment, left as the console has it.
        val notDeployed = collector.directlyUsedLanguages.filter { languageRegistry.getLanguage(it) == null }.map { it.qualifiedName }.sorted()
        if (notDeployed.isNotEmpty()) {
            result.addProperty("planComputed", false)
            result.add("notDeployedLanguages", stringArray(notDeployed))
            warnings.add(
                "The model uses languages that are not deployed (${notDeployed.joinToString(", ")}), so no plan was computed: build them with " +
                    "mps_mcp_alter_nodes MAKE first, then ask again."
            )
            return Rendered(result, warnings)
        }
        result.addProperty("planComputed", true)
        val sources = explicitPlanSources(model, repository, ignoreExternalPlan, warnings)
        if (sources.size() > 0) result.add("explicitPlanSources", sources)

        renderPlan(model, repository, ignoreExternalPlan, compact, collector, languageRegistry, result, warnings)
        return Rendered(result, warnings)
    }

    private fun renderPlan(
        model: SModel,
        repository: SRepository,
        ignoreExternalPlan: Boolean,
        compact: Boolean,
        collector: EngagedGeneratorCollector,
        languageRegistry: LanguageRegistry,
        result: JsonObject,
        warnings: MutableList<String>,
    ) {
        val diagnostics = JsonArray()
        val seen = HashSet<String>()
        val extractor = GenPlanExtractor(repository, object : IMessageHandler {
            override fun handle(msg: IMessage) {
                if (!seen.add(msg.text)) return
                diagnostics.add(diagnosticJson(msg))
                if (msg.kind == MessageKind.ERROR || msg.kind == MessageKind.WARNING) {
                    warnings.add("Plan lookup ${msg.kind.name.lowercase()}: ${msg.text}")
                }
            }
        })
        var hasExternalPlan: Boolean
        var externalPlan: ModelGenerationPlan?
        try {
            hasExternalPlan = extractor.hasPlan(model)
            // Asked for even when ignored, as the console does, for the diagnostics it reports.
            externalPlan = if (hasExternalPlan) extractor.getPlan(model) else null
        } catch (e: Throwable) {
            // A plan MPS cannot build (a ConceptListSelector fork filter, a Plan next to a PlanContribution of another plan,
            // DevKit plans that are all contributions, a plan that includes itself) throws while the extractor builds it, an
            // AssertionError when assertions are on and a StackOverflowError for the cycle; make fails the same way.
            if (e is CancellationException || e is ProcessCanceledException || (e is VirtualMachineError && e !is StackOverflowError)) throw e
            val reason = e.javaClass.simpleName + (e.message?.let { ": $it" } ?: "")
            result.addProperty("planError", reason)
            warnings.add(
                "Building the attached generation plan failed ($reason); make fails the same way. Check the plan models in " +
                    "explicitPlanSources (see the mps-aspect-generation-plan skill)" +
                    (if (ignoreExternalPlan) "; the default plan below ignores it." else "; ignoreExternalPlan:true shows the default plan.")
            )
            if (!ignoreExternalPlan) {
                result.addProperty("planComputed", false)
                result.add("planDiagnostics", diagnostics)
                return
            }
            hasExternalPlan = true
            externalPlan = null
        }
        val useExternalPlan = externalPlan != null && !ignoreExternalPlan
        val plan: ModelGenerationPlan = if (useExternalPlan) externalPlan!! else GenerationPlan(model)

        // getGenerators() runs the engagement walk that dump() prints.
        collector.generators
        val trace = mutableListOf<String>()
        collector.dump { trace.add(it.trim()) }

        result.addProperty("planSource", (if (useExternalPlan) PlanSource.EXPLICIT else PlanSource.DEFAULT).name)
        if (hasExternalPlan && !result.has("planError")) {
            result.addProperty("explicitPlanOrigin", explicitPlanOrigin(model).name)
        }
        result.addProperty("externalPlanIgnored", hasExternalPlan && ignoreExternalPlan)
        result.add("planDiagnostics", diagnostics)

        val steps = stepsJson(plan.steps, model.name.longName, compact)
        result.add("steps", steps.array)
        if (!compact) {
            result.add("generators", JsonArray().apply { plan.generators.sortedBy { it.moduleReference.moduleName }.forEach { add(generatorJson(it)) } })
        }

        val covered = plan.generators.map { it.sourceLanguage.identity }.toSet()
        val usedLanguages = JsonArray()
        for (language in collector.directlyUsedLanguages.sortedBy { it.qualifiedName }) {
            val runtime = languageRegistry.getLanguage(language)
            val coverage = when {
                language in covered -> LanguageCoverage.IN_PLAN
                // Every used language is deployed by now (see notDeployed above).
                runtime == null || runtime.generators.isEmpty() -> LanguageCoverage.NO_GENERATORS
                else -> LanguageCoverage.NOT_IN_PLAN
            }
            usedLanguages.add(JsonObject().apply {
                addProperty("language", language.qualifiedName)
                addProperty("coverage", coverage.name)
            })
        }
        result.add("usedLanguages", usedLanguages)

        if (plan is GenerationPlan) {
            if (compact) {
                result.addProperty("conflictCount", plan.conflicts.size)
                result.addProperty("ignoredPriorityRuleCount", plan.ignoredPriorityRules.size)
            } else {
                result.add("conflicts", conflictsJson(plan.conflicts))
                result.add("ignoredPriorityRules", conflictsJson(plan.ignoredPriorityRules))
            }
        }
        if (compact) return
        result.add("engagedGeneratorTrace", stringArray(trace))

        val notes = PLAN_NOTES.toMutableList()
        if (steps.hasEmptyTransform) notes.add(EMPTY_TRANSFORM_NOTE)
        if (steps.hasForkCondition) notes.add(FORK_CONDITION_NOTE)
        result.add("notes", stringArray(notes))
    }

    /**
     * Every plan attached to [model], in the order [GenPlanExtractor] consults them: its module's Custom Generation facet,
     * then the plans of the devkits the model imports directly (a plan of an extended devkit is not inherited). A facet
     * plan whose model resolves to a model with roots shadows every DevKit plan; otherwise MPS falls back silently, which
     * is reported in [warnings].
     */
    private fun explicitPlanSources(model: SModel, repository: SRepository, ignoreExternalPlan: Boolean, warnings: MutableList<String>): JsonArray {
        val array = JsonArray()
        val module = model.module
        val facetRef = module?.let { GenerationPlanAttachment.facetPlanOf(it) }
        val facetModel = facetRef?.resolve(repository)
        val facetInfo = facetModel?.let { GenerationPlanAttachment.inspect(it) }
        // CustomGenerationModuleFacet.getPlan gives null, so MPS goes on to the devkits, unless the model has a plan root.
        val facetApplies = facetInfo?.hasPlanRoot == true
        if (facetRef != null) {
            array.add(planSourceJson("FACET", module.moduleName ?: "", facetRef, facetInfo, facetApplies && !ignoreExternalPlan))
            if (!facetApplies) {
                warnings.add(
                    "The Custom Generation facet of '${module.moduleName}' names plan model '${facetRef.modelName}', which " +
                        (if (facetModel == null) "does not resolve" else "has no Plan or PlanContribution root") + "; MPS ignores it " +
                        "silently and falls back to DevKit plans or the default plan."
                )
            }
        }
        for (dkRef in (model as? SModelInternal)?.importedDevkits().orEmpty()) {
            val planRef = (dkRef.resolve(repository) as? DevKit)?.moduleDescriptor?.associatedGenPlan ?: continue
            val info = planRef.resolve(repository)?.let { GenerationPlanAttachment.inspect(it) }
            val applied = !facetApplies && info?.hasPlanRoot == true && !ignoreExternalPlan
            array.add(planSourceJson("DEVKIT", dkRef.moduleName ?: "", planRef, info, applied))
        }
        return array
    }

    /** One attached plan; [info] is null when the plan model does not resolve. `applied` is false when ignored or shadowed. */
    private fun planSourceJson(via: String, by: String, planRef: SModelReference, info: GenerationPlanAttachment.PlanModelInfo?, applied: Boolean) =
        JsonObject().apply {
            addProperty("via", via)
            addProperty("by", by)
            addProperty("planModel", planRef.modelName)
            addProperty("planModelReference", PersistenceFacade.getInstance().asString(planRef))
            if (info == null) {
                addProperty("resolved", false)
            } else {
                info.planName?.let { addProperty("planName", it) }
                if (info.contributed) addProperty("contribution", true)
                info.rejection?.let { addProperty("problem", it) }
            }
            addProperty("applied", applied)
        }

    /**
     * `FACET` when the first plan-providing facet of the model's module gives it a plan, which is the precedence
     * [GenPlanExtractor] applies; otherwise the plan comes from an imported devkit.
     */
    private fun explicitPlanOrigin(model: SModel): ExplicitPlanOrigin {
        val facet = model.module?.facets?.filterIsInstance<ModelGenerationPlan.Provider>()?.firstOrNull()
        return if (facet?.getPlan(model) != null) ExplicitPlanOrigin.FACET else ExplicitPlanOrigin.DEVKIT
    }

    /** A message [GenPlanExtractor] reported, with the reference of the plan node, model or module it names. */
    private fun diagnosticJson(msg: IMessage): JsonObject = JsonObject().apply {
        addProperty("kind", msg.kind.name)
        addProperty("text", msg.text)
        val persistence = PersistenceFacade.getInstance()
        when (val hint = msg.hintObject) {
            is SNodeReference -> addProperty("reference", persistence.asString(hint))
            is SModelReference -> addProperty("reference", persistence.asString(hint))
            is SModuleReference -> addProperty("reference", persistence.asString(hint))
        }
    }

    /** The rendered steps, and whether any of them needs the empty-transform or fork-condition note. */
    class RenderedSteps(val array: JsonArray, val hasEmptyTransform: Boolean, val hasForkCondition: Boolean)

    /**
     * [steps] as JSON. Each step's `index` is 1-based within its branch; `transientStereotypePrefix` is
     * `<majorStep + 1>_`, the stereotype prefix `GenerationSession` gives the step's transient models, where the
     * main branch's majorStep is the step's position and a fork branch starts counting at its fork's majorStep.
     * [modelLongName] names the checkpoint models.
     */
    fun stepsJson(steps: List<ModelGenerationPlan.Step>, modelLongName: String, compact: Boolean = false): RenderedSteps {
        val prefixCounts = HashMap<String, Int>()
        countTransformPrefixes(steps, 0, prefixCounts)
        val flags = Flags(compact)
        val array = branchJson(steps, 0, modelLongName, flags) { (prefixCounts[it] ?: 0) > 1 }
        return RenderedSteps(array, flags.emptyTransform, flags.forkCondition)
    }

    private class Flags(val compact: Boolean) {
        var emptyTransform = false
        var forkCondition = false
    }

    private fun countTransformPrefixes(steps: List<ModelGenerationPlan.Step>, firstMajorStep: Int, counts: MutableMap<String, Int>) {
        for ((position, step) in steps.withIndex()) {
            val majorStep = firstMajorStep + position
            when (step) {
                is ModelGenerationPlan.Transform -> counts.merge(prefix(majorStep), 1, Int::plus)
                is ModelGenerationPlan.Fork -> countTransformPrefixes(step.branch, majorStep, counts)
            }
        }
    }

    private fun prefix(majorStep: Int) = "${majorStep + 1}_"

    private fun branchJson(
        steps: List<ModelGenerationPlan.Step>,
        firstMajorStep: Int,
        modelLongName: String,
        flags: Flags,
        shared: (String) -> Boolean,
    ): JsonArray {
        val array = JsonArray()
        for ((position, step) in steps.withIndex()) {
            val majorStep = firstMajorStep + position
            val obj = JsonObject()
            obj.addProperty("index", position + 1)
            when (step) {
                is ModelGenerationPlan.Transform -> {
                    obj.addProperty("kind", "TRANSFORM")
                    val prefix = prefix(majorStep)
                    obj.addProperty("transientStereotypePrefix", prefix)
                    if (shared(prefix)) obj.addProperty("prefixShared", true)
                    if (step.transformations.isEmpty()) flags.emptyTransform = true
                    obj.add("transformations", transformationsJson(step, flags.compact))
                }
                is ModelGenerationPlan.Checkpoint -> {
                    obj.addProperty("kind", "CHECKPOINT")
                    obj.addProperty("name", step.name)
                    obj.addProperty("plan", step.identity.plan.name)
                    obj.addProperty("persisted", step.isPersisted)
                    if (step.isPersisted) obj.addProperty("checkpointModelName", "$modelLongName@${step.identity.persistenceValue}")
                }
                is ModelGenerationPlan.Fork -> {
                    obj.addProperty("kind", "FORK")
                    val hasCondition = step.condition != null
                    obj.addProperty("hasCondition", hasCondition)
                    if (hasCondition) {
                        obj.addProperty("conditionPrintable", false)
                        flags.forkCondition = true
                    }
                    obj.addProperty("branchInputStereotypePrefix", prefix(majorStep))
                    obj.add("branch", branchJson(step.branch, majorStep, modelLongName, flags, shared))
                }
                else -> {
                    obj.addProperty("kind", "UNKNOWN")
                    obj.addProperty("stepClass", step.javaClass.name)
                }
            }
            array.add(obj)
        }
        return array
    }

    /**
     * One entry per label `GenerationPartitioningUtil` gives the step, as the console prints it: `<templateModel>.*`
     * when the step applies every mapping configuration of that template model, `<templateModel>.<mc>` otherwise.
     */
    private fun transformationsJson(step: ModelGenerationPlan.Transform, compact: Boolean): JsonArray {
        val array = JsonArray()
        val persistence = PersistenceFacade.getInstance()
        for (labelled in GenerationPartitioningUtil.toStrings(step.transformations)) {
            val label = labelled.o1
            val templateModel = labelled.o2.model
            val module = templateModel.module
            val configurations = if (label.endsWith(".*")) step.transformations.filter { it.model == templateModel } else listOf(labelled.o2)
            array.add(JsonObject().apply {
                addProperty("label", label)
                addProperty("templateModel", templateModel.longName)
                addProperty("generatorModule", module.moduleReference.moduleName)
                addProperty("sourceLanguage", module.sourceLanguage.namespace)
                if (compact) return@apply
                addProperty("templateModelReference", persistence.asString(templateModel.sModelReference))
                add("mappingConfigurations", JsonArray().apply {
                    configurations.sortedBy { it.name }.forEach { mc ->
                        add(JsonObject().apply {
                            addProperty("name", mc.name)
                            mc.mappingNode?.let { addProperty("reference", persistence.asString(it)) }
                        })
                    }
                })
            })
        }
        return array
    }

    private fun generatorJson(generator: TemplateModule): JsonObject = JsonObject().apply {
        addProperty("module", generator.moduleReference.moduleName)
        addProperty("moduleReference", PersistenceFacade.getInstance().asString(generator.moduleReference))
        addProperty("alias", generator.alias)
        addProperty("sourceLanguage", generator.sourceLanguage.namespace)
        add("targetLanguages", stringArray(generator.targetLanguages.map { it.qualifiedName }.sorted()))
    }

    private fun conflictsJson(conflicts: List<Conflict>): JsonArray = JsonArray().apply {
        for (conflict in conflicts) {
            add(JsonObject().apply {
                addProperty("text", conflict.text)
                conflict.origin?.let { addProperty("origin", it.moduleName) }
                add("rules", stringArray(conflict.rules.map { it.toString() }.sorted()))
            })
        }
    }

    private fun stringArray(values: Iterable<String>): JsonArray = JsonArray().apply { values.forEach(::add) }
}
