package jetbrains.mps.agents.mcp.tools.common

import com.intellij.openapi.progress.ProcessCanceledException
import jetbrains.mps.generator.CustomGenerationModuleFacet
import jetbrains.mps.generator.GenerationFacade
import jetbrains.mps.errors.MessageStatus
import jetbrains.mps.project.DevKit
import jetbrains.mps.project.Solution
import jetbrains.mps.project.validation.ValidationUtil
import jetbrains.mps.smodel.SModelInternal
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory
import org.jetbrains.mps.openapi.language.SConcept
import org.jetbrains.mps.openapi.model.SModel
import org.jetbrains.mps.openapi.model.SNode
import org.jetbrains.mps.openapi.module.SModule
import org.jetbrains.mps.openapi.module.SRepository
import kotlin.coroutines.cancellation.CancellationException

/**
 * What MPS reads from a generation plan model, and the advice that goes with attaching one, for
 * `mps_mcp_update_module` SET_GENERATION_PLAN. A plan is attached as a *model*: the DevKit's associated plan and the
 * `generator` ("Custom Generation") module facet both hold an `SModelReference`, and `GenPlanTranslator.fromGenPlanModel`
 * takes the model's first `Plan` root and its first `PlanContribution` root. Every function needs read access.
 */
internal object GenerationPlanAttachment {

    private const val LANG_HI = 0x7ab1a6fa0a114b95L
    private val LANG_LO = 0x9e4875f363d6cb00UL.toLong()
    private val PLAN: SConcept = MetaAdapterFactory.getConcept(LANG_HI, LANG_LO, 0x19443180a20717fbL, "jetbrains.mps.lang.generator.plan.structure.Plan")
    private val PLAN_CONTRIBUTION: SConcept =
        MetaAdapterFactory.getConcept(LANG_HI, LANG_LO, 0x1cc6e9754a7aa3f9L, "jetbrains.mps.lang.generator.plan.structure.PlanContribution")
    private val CONCEPT_LIST_SELECTOR: SConcept =
        MetaAdapterFactory.getConcept(LANG_HI, LANG_LO, 0x1ea8fc1842bbe7f2L, "jetbrains.mps.lang.generator.plan.structure.ConceptListSelector")
    private val FORK: SConcept = MetaAdapterFactory.getConcept(LANG_HI, LANG_LO, 0x2bf683196b12a3cbL, "jetbrains.mps.lang.generator.plan.structure.Fork")
    private val INCLUDE_PLAN: SConcept = MetaAdapterFactory.getConcept(LANG_HI, LANG_LO, 0x336c2500000e1b2fL, "jetbrains.mps.lang.generator.plan.structure.IncludePlan")
    private val FORK_PLAN = MetaAdapterFactory.getReferenceLink(LANG_HI, LANG_LO, 0x2bf683196b12a3cbL, 0x2bf683196b12a3ccL, "plan")
    private val INCLUDE_PLAN_PLAN = MetaAdapterFactory.getReferenceLink(LANG_HI, LANG_LO, 0x336c2500000e1b2fL, 0x336c2500000e1b32L, "plan")
    private val CONTRIBUTION_PLAN = MetaAdapterFactory.getReferenceLink(LANG_HI, LANG_LO, 0x1cc6e9754a7aa3f9L, 0x1cc6e9754a7aa3fbL, "plan")
    private val PLAN_FORK_AS = MetaAdapterFactory.getContainmentLink(LANG_HI, LANG_LO, 0x19443180a20717fbL, 0x177eaafe20582162L, "forkAs")

    /** The facet type id of [CustomGenerationModuleFacet], "Custom Generation" in the UI. */
    const val FACET_TYPE: String = CustomGenerationModuleFacet.FACET_TYPE

    /**
     * What a plan model gives MPS. [rejection] is set when MPS cannot use the model as a plan at all, or when building
     * the plan would throw. [planName] is the plan generation runs: the first `Plan` root, or the plan a lone
     * `PlanContribution` forks into. [contributed] marks a plan that only forks off another plan (a lone contribution,
     * a contribution to the model's own plan, or a legacy `forkAs`): its own main branch is empty.
     */
    class PlanModelInfo(
        val planName: String?,
        val contributed: Boolean,
        val rejection: String?,
        val notes: List<String>,
        /** Whether the model has a `Plan` or `PlanContribution` root, i.e. MPS does not silently fall back past it. */
        val hasPlanRoot: Boolean = true,
    )

    fun inspect(model: SModel): PlanModelInfo {
        val modelName = model.name.value
        val roots = model.rootNodes.toList()
        val plans = roots.filter { it.concept.isSubConceptOf(PLAN) }
        val contributions = roots.filter { it.concept.isSubConceptOf(PLAN_CONTRIBUTION) }
        val main = plans.firstOrNull()
        val contribution = contributions.firstOrNull()
        if (main == null && contribution == null) {
            return PlanModelInfo(
                null, false,
                "Model '$modelName' has no Plan or PlanContribution root, so MPS finds no generation plan in it. A plan is attached as " +
                    "a model: create a Plan root there first (concept jetbrains.mps.lang.generator.plan.structure.Plan).",
                emptyList(),
                hasPlanRoot = false,
            )
        }
        val contributionTarget = contribution?.getReferenceTarget(CONTRIBUTION_PLAN)
        if (main == null && contributionTarget == null) {
            return PlanModelInfo(
                null, true,
                "The PlanContribution in model '$modelName' points at no plan; set its plan reference first.",
                emptyList(),
            )
        }
        if (main != null && contribution != null && contributionTarget != main) {
            return PlanModelInfo(
                main.name, false,
                "Model '$modelName' holds Plan '${main.name}' and a PlanContribution that points at " +
                    "${contributionTarget?.name?.let { "'$it'" } ?: "no plan"}; MPS refuses that combination (\"not supported at the moment\") " +
                    "and generation would fail. Keep the PlanContribution in a model of its own.",
                emptyList(),
            )
        }
        val effective = main ?: contributionTarget
        val contributed = contribution != null || main?.getChildren(PLAN_FORK_AS)?.any() == true
        val notes = mutableListOf<String>()

        // The plans MPS walks from this model: the effective plan, its forks and includes, transitively. MPS recurses
        // into them without a guard, so a plan that reaches itself overflows the stack; a shared target is fine.
        val reachable = LinkedHashSet<SNode>()
        val cycle = findCycle(effective, ArrayDeque(), reachable)
        if (cycle != null) {
            return PlanModelInfo(
                effective?.name, contributed,
                "Plan ${cycle.joinToString(" → ") { "'${it.name}'" }} forks or includes itself; MPS follows forks and includes " +
                    "without a guard, so building the plan would overflow the stack. Break the cycle.",
                emptyList(),
            )
        }
        val selectorHosts = (reachable + listOfNotNull(contribution)).filter { it.descendants(CONCEPT_LIST_SELECTOR).any() }
        if (selectorHosts.isNotEmpty()) {
            return PlanModelInfo(
                effective?.name, contributed,
                "${selectorHosts.joinToString { "'${it.name ?: it.concept.name}'" }} use a ConceptListSelector fork filter. MPS's plan " +
                    "translator has no support for it and building the plan throws, so generation of every model under this plan would " +
                    "fail. Use a ParameterEquals filter (or the fork's gentarget) instead.",
                emptyList(),
            )
        }
        if (plans.size > 1) {
            val unreferenced = plans.drop(1).filter { it !in reachable }
            notes.add(
                "Model '$modelName' has ${plans.size} Plan roots; MPS uses the first in root order, '${main?.name}', and the others only " +
                    "as Fork or IncludePlan targets." +
                    if (unreferenced.isEmpty()) "" else " Not reached from '${main?.name}': ${unreferenced.joinToString { "'${it.name}'" }}."
            )
        }
        if (contributed) {
            notes.add(
                "'${effective?.name}' is a contributed plan (a PlanContribution or a legacy forkAs): it only forks off another plan's input, " +
                    "so on its own it gives the model a plan whose main branch is empty. It is meant for a DevKit used next to one whose " +
                    "plan is a regular Plan."
            )
        }
        return PlanModelInfo(effective?.name, contributed, null, notes)
    }

    /**
     * DevKit plan problems: the plan model's solution not among the DevKit's exported solutions (the IDE's plan picker
     * offers only those), and `ValidationUtil`'s own generation-plan problems (which look at direct exports only).
     */
    /** A path of plans from [plan] back to a plan already on [path], or null; fills [visited] with every plan reached. */
    private fun findCycle(plan: SNode?, path: ArrayDeque<SNode>, visited: MutableSet<SNode>): List<SNode>? {
        if (plan == null) return null
        if (plan in path) return path.dropWhile { it != plan } + plan
        if (!visited.add(plan)) return null
        path.addLast(plan)
        for (step in plan.descendants(FORK, INCLUDE_PLAN)) {
            val target = step.getReferenceTarget(if (step.concept.isSubConceptOf(FORK)) FORK_PLAN else INCLUDE_PLAN_PLAN)
            findCycle(target, path, visited)?.let { return it }
        }
        path.removeLast()
        return null
    }

    fun devkitWarnings(devkit: DevKit, repository: SRepository): List<String> {
        val planRef = devkit.moduleDescriptor?.associatedGenPlan ?: return emptyList()
        val warnings = mutableListOf<String>()
        val planModule = planRef.resolve(repository)?.module
        if (planModule != null && devkit.allExportedSolutions.none { it.moduleReference == planModule.moduleReference }) {
            warnings.add(
                "The plan model's module '${planModule.moduleName}' is not exported by DevKit '${devkit.moduleName}'. Make finds the " +
                    "plan without it, but the IDE's plan picker, build scripts and other projects need the export: " +
                    "mps_mcp_module_dependency ADD, DevKit → that solution."
            )
        }
        try {
            ValidationUtil.validateModule(devkit) { problem ->
                if (problem.message.contains("generation plan", ignoreCase = true)) {
                    val severity = if (problem.severity == MessageStatus.ERROR) "error" else "warning"
                    warnings.add("DevKit check $severity: ${problem.message}")
                }
                true
            }
        } catch (e: Exception) {
            // The check builds the plan (GenPlanTranslator); a plan edited into a shape MPS refuses throws here, after the
            // caller's change is already saved, so it is reported rather than failing the call.
            if (e is CancellationException || e is ProcessCanceledException) throw e
            warnings.add("DevKit check failed while reading the plan (${e.javaClass.simpleName}${e.message?.let { ": $it" } ?: ""}); " +
                "fix the plan model, then check the DevKit with mps_mcp_check_root_node_problems.")
        }
        return warnings
    }

    /** Project models that import [devkit] while their own module's Custom Generation facet plan shadows the DevKit's. */
    fun modelsShadowingDevkit(devkit: DevKit, projectModules: Iterable<SModule>): List<String> = projectModules
        .filter { module -> devkit.repository?.let { repo -> facetPlanOf(module)?.resolve(repo) }?.let { inspect(it).hasPlanRoot } == true }
        .flatMap { module -> module.models.filter { devkit.moduleReference in ((it as? SModelInternal)?.importedDevkits() ?: emptyList()) } }
        .map { it.name.value }
        .sorted()

    /** Warnings for a Solution whose Custom Generation facet now names the plan model [planModel]. */
    fun solutionWarnings(solution: Solution, planModel: SModel, repository: SRepository): List<String> {
        val warnings = mutableListOf<String>()
        val planModule = planModel.module
        if (planModule == solution) {
            if (GenerationFacade.canGenerate(planModel)) {
                warnings.add(
                    "The plan model '${planModel.name.value}' belongs to '${solution.moduleName}', so the plan also governs the plan model " +
                        "itself, which it does not cover; mark it \"Do not generate\" (mps_mcp_update_model SET_DO_NOT_GENERATE) or keep " +
                        "plans in a solution of their own."
                )
            }
        } else if (planModule != null && solution.moduleDescriptor?.dependencies?.none { it.moduleRef == planModule.moduleReference } != false) {
            warnings.add(
                "'${solution.moduleName}' does not depend on the plan model's module '${planModule.moduleName}'. Make finds the plan " +
                    "anyway, but a build script or another project that loads '${solution.moduleName}' may not; consider " +
                    "mps_mcp_module_dependency ADD '${solution.moduleName}' → '${planModule.moduleName}'."
            )
        }
        val shadowed = solution.models
            .flatMap { model -> ((model as? SModelInternal)?.importedDevkits() ?: emptyList()).map { model to it } }
            .filter { (_, dk) -> (dk.resolve(repository) as? DevKit)?.moduleDescriptor?.associatedGenPlan != null }
        if (shadowed.isNotEmpty()) {
            warnings.add(
                "The facet plan takes precedence over DevKit plans, so it shadows: " +
                    shadowed.joinToString { (model, dk) -> "${dk.moduleName} in ${model.name.value}" } + "."
            )
        }
        return warnings
    }

    /** The plan model reference of [module]'s Custom Generation facet, if it has one. */
    fun facetPlanOf(module: SModule) = (module.getFacetOfType(FACET_TYPE) as? CustomGenerationModuleFacet)?.planModelReference

    private fun SNode.descendants(vararg concepts: SConcept): Sequence<SNode> = sequence {
        val stack = ArrayDeque(this@descendants.children.toList())
        while (stack.isNotEmpty()) {
            val n = stack.removeLast()
            if (concepts.any { n.concept.isSubConceptOf(it) }) yield(n)
            stack.addAll(n.children)
        }
    }
}
