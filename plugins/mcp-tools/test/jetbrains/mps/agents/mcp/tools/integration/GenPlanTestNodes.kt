package jetbrains.mps.agents.mcp.tools.integration

import jetbrains.mps.smodel.SNodeUtil
import jetbrains.mps.smodel.adapter.ids.MetaIdHelper
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory
import org.jetbrains.mps.openapi.language.SConcept
import org.jetbrains.mps.openapi.language.SLanguage
import org.jetbrains.mps.openapi.model.SNode

/**
 * Detached `jetbrains.mps.lang.generator.plan` nodes for the generation tests' explicit plans, and the metamodel
 * handles they need: the plan language as `GenPlanTranslator` reads it, and smodel's `LanguageId`.
 */
internal object GenPlanTestNodes {
    private const val PLAN_LANG_HI = 0x7ab1a6fa0a114b95L
    private val PLAN_LANG_LO = 0x9e4875f363d6cb00uL.toLong()
    private val PLAN: SConcept = MetaAdapterFactory.getConcept(PLAN_LANG_HI, PLAN_LANG_LO, 0x19443180a20717fbL, "jetbrains.mps.lang.generator.plan.structure.Plan")
    private val CHECKPOINT: SConcept = MetaAdapterFactory.getConcept(PLAN_LANG_HI, PLAN_LANG_LO, 0x19443180a2071801L, "jetbrains.mps.lang.generator.plan.structure.Checkpoint")
    private val IN_PLACE_CHECKPOINT_SPEC: SConcept = MetaAdapterFactory.getConcept(PLAN_LANG_HI, PLAN_LANG_LO, 0x340cd07aed7ca161L, "jetbrains.mps.lang.generator.plan.structure.InPlaceCheckpointSpec")
    private val CHECKPOINT_SPEC = MetaAdapterFactory.getContainmentLink(PLAN_LANG_HI, PLAN_LANG_LO, 0x19443180a2071801L, 0x340cd07aed7cb2d2L, "cpSpec")
    private val TRANSFORM: SConcept = MetaAdapterFactory.getConcept(PLAN_LANG_HI, PLAN_LANG_LO, 0x19443180a2071802L, "jetbrains.mps.lang.generator.plan.structure.Transform")
    private val TRANSFORM_LANGUAGES = MetaAdapterFactory.getContainmentLink(PLAN_LANG_HI, PLAN_LANG_LO, 0x19443180a2071802L, 0x28dd6d5a7549fa8dL, "languages")
    private val FORK: SConcept = MetaAdapterFactory.getConcept(PLAN_LANG_HI, PLAN_LANG_LO, 0x2bf683196b12a3cbL, "jetbrains.mps.lang.generator.plan.structure.Fork")
    private val FORK_PLAN = MetaAdapterFactory.getReferenceLink(PLAN_LANG_HI, PLAN_LANG_LO, 0x2bf683196b12a3cbL, 0x2bf683196b12a3ccL, "plan")

    /** A plan's `steps`. */
    val PLAN_STEPS = MetaAdapterFactory.getContainmentLink(PLAN_LANG_HI, PLAN_LANG_LO, 0x19443180a20717fbL, 0x19443180a2071807L, "steps")

    // jetbrains.mps.lang.smodel's LanguageId, the language reference a plan's Transform step holds.
    private const val SMODEL_LANG_HI = 0x7866978ea0f04cc7L
    private val SMODEL_LANG_LO = 0x81bc4d213d9375e1uL.toLong()
    private val LANGUAGE_ID: SConcept = MetaAdapterFactory.getConcept(SMODEL_LANG_HI, SMODEL_LANG_LO, 0x312abca18ab8c8c0L, "jetbrains.mps.lang.smodel.structure.LanguageId")
    private val LANGUAGE_ID_ID = MetaAdapterFactory.getProperty(SMODEL_LANG_HI, SMODEL_LANG_LO, 0x312abca18ab8c8c0L, 0x312abca18ab8ccd8L, "languageId")
    private val LANGUAGE_ID_NAMESPACE = MetaAdapterFactory.getProperty(SMODEL_LANG_HI, SMODEL_LANG_LO, 0x312abca18ab8c8c0L, 0x312abca18ab8ccd7L, "namespace")

    fun planNode(name: String): SNode =
        jetbrains.mps.smodel.SNode(PLAN).apply { setProperty(SNodeUtil.property_INamedConcept_name, name) }

    /** A Transform step that applies the generators of [languages]. */
    fun transformNode(vararg languages: SLanguage): SNode = jetbrains.mps.smodel.SNode(TRANSFORM).apply {
        for (language in languages) {
            addChild(TRANSFORM_LANGUAGES, jetbrains.mps.smodel.SNode(LANGUAGE_ID).apply {
                setProperty(LANGUAGE_ID_ID, MetaIdHelper.getLanguage(language).serialize())
                setProperty(LANGUAGE_ID_NAMESPACE, language.qualifiedName)
            })
        }
    }

    fun checkpointNode(name: String): SNode = jetbrains.mps.smodel.SNode(CHECKPOINT).apply {
        addChild(CHECKPOINT_SPEC, jetbrains.mps.smodel.SNode(IN_PLACE_CHECKPOINT_SPEC).apply {
            setProperty(SNodeUtil.property_INamedConcept_name, name)
        })
    }

    private val FORK_FILTER = MetaAdapterFactory.getContainmentLink(PLAN_LANG_HI, PLAN_LANG_LO, 0x2bf683196b12a3cbL, 0x1ea8fc1842bbe7efL, "filter")
    private val CONCEPT_LIST_SELECTOR: SConcept =
        MetaAdapterFactory.getConcept(PLAN_LANG_HI, PLAN_LANG_LO, 0x1ea8fc1842bbe7f2L, "jetbrains.mps.lang.generator.plan.structure.ConceptListSelector")
    private val PLAN_CONTRIBUTION: SConcept =
        MetaAdapterFactory.getConcept(PLAN_LANG_HI, PLAN_LANG_LO, 0x1cc6e9754a7aa3f9L, "jetbrains.mps.lang.generator.plan.structure.PlanContribution")
    private val PLAN_CONTRIBUTION_PLAN = MetaAdapterFactory.getReferenceLink(PLAN_LANG_HI, PLAN_LANG_LO, 0x1cc6e9754a7aa3f9L, 0x1cc6e9754a7aa3fbL, "plan")

    /** A Fork step that runs [plan] on a copy of the model. */
    fun forkNode(plan: SNode): SNode = jetbrains.mps.smodel.SNode(FORK).apply { setReferenceTarget(FORK_PLAN, plan) }

    /** A Fork step into [plan] filtered by a ConceptListSelector, which MPS's plan translator cannot build. */
    fun conceptListForkNode(plan: SNode): SNode = forkNode(plan).apply { addChild(FORK_FILTER, jetbrains.mps.smodel.SNode(CONCEPT_LIST_SELECTOR)) }

    /** A PlanContribution root that forks into [plan]. */
    fun contributionNode(plan: SNode): SNode =
        jetbrains.mps.smodel.SNode(PLAN_CONTRIBUTION).apply { setReferenceTarget(PLAN_CONTRIBUTION_PLAN, plan) }
}
