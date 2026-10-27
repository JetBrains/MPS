package jetbrains.mps.agents.mcp.tools.common

import jetbrains.mps.agents.mcp.tools.common.AbstractOps.McpLanguageNotBuiltException
import jetbrains.mps.generator.ModelGenerationStatusManager
import jetbrains.mps.project.MPSProject
import jetbrains.mps.project.ModuleId
import jetbrains.mps.smodel.Language
import jetbrains.mps.smodel.adapter.ids.MetaIdHelper
import jetbrains.mps.smodel.language.LanguageRegistry
import org.jetbrains.mps.openapi.language.SAbstractConcept
import org.jetbrains.mps.openapi.model.SModel
import org.jetbrains.mps.openapi.model.SNode
import org.jetbrains.mps.openapi.persistence.PersistenceFacade

/**
 * Whether a concept's language runtime can be trusted for it. An id-based concept adapter never
 * fails: without a runtime descriptor it answers `isAbstract = true`, no features, no source node
 * and `isSubConceptOf = false`, so every consumer that reads features off a concept must ask here
 * first (study defect D112, `docs/d112-language-readiness-plan.md`).
 */
sealed class ConceptReadiness {
    /** A runtime descriptor exists and the structure model has not changed since it was generated. */
    object Ready : ConceptReadiness()

    /** Neither a runtime descriptor nor a structure-model declaration: an invented reference, not a build state. */
    object Undeclared : ConceptReadiness()

    /** The runtime cannot serve this concept; [module] is the project language to rebuild when it is in the repository. */
    sealed class NotBuilt(val languageName: String, val module: Language?) : ConceptReadiness() {
        abstract val status: String

        /** `LanguageRegistry` has no runtime for the language: never made, or its `classes_gen` is gone. */
        class NoRuntime(languageName: String, module: Language?) : NotBuilt(languageName, module) {
            override val status = "no_runtime"
        }

        /** The runtime is loaded but does not know this concept id: the concept was created after the last build. */
        class ConceptNotInRuntime(languageName: String, module: Language?) : NotBuilt(languageName, module) {
            override val status = "concept_not_in_runtime"
        }

        /** A descriptor exists, but the structure model was edited since it was generated. */
        class Stale(languageName: String, module: Language?, val structureModel: SModel) : NotBuilt(languageName, module) {
            override val status = "stale"
        }
    }
}

object LanguageReadiness {
    const val MAKE_CHANGES_NO_MODEL_NOTE: String =
        "A MAKE writes only generated output (source_gen/classes_gen) and changes no model, so it is allowed where model edits are not."

    /**
     * Classifies [concept]. [declaration] is its `ConceptDeclaration` / `InterfaceConceptDeclaration` node
     * when the caller has one (it may be null for a concept resolved from the runtime); it decides the
     * module, because a moved concept keeps its old `languageId`. Must run inside a read action.
     */
    fun of(concept: SAbstractConcept, declaration: SNode?, project: MPSProject): ConceptReadiness =
        classify(concept, declaration, project, checkStale = true)

    /** Like [of], but skips the structure-model staleness check (for callers that handle Stale through a feature lookup). */
    fun ofIgnoringStaleness(concept: SAbstractConcept, declaration: SNode?, project: MPSProject): ConceptReadiness =
        classify(concept, declaration, project, checkStale = false)

    private fun classify(concept: SAbstractConcept, declaration: SNode?, project: MPSProject, checkStale: Boolean): ConceptReadiness {
        // No descriptor and no declaration: an invented reference, which no build can help.
        if (!concept.isValid && declaration == null) return ConceptReadiness.Undeclared
        val repository = project.repository
        val declaringModule = declaration?.model?.module as? Language
        val module = declaringModule
            ?: repository.getModule(ModuleId.regular(MetaIdHelper.getLanguage(concept.language).idValue)) as? Language
        val languageName = module?.moduleName ?: concept.language.qualifiedName
        val runtimeLanguage = declaringModule?.let { jetbrains.mps.smodel.adapter.MetaAdapterByDeclaration.getLanguage(it) } ?: concept.language
        if (LanguageRegistry.getInstance(repository).getLanguage(runtimeLanguage) == null) {
            return ConceptReadiness.NotBuilt.NoRuntime(languageName, module)
        }
        if (!concept.isValid) return ConceptReadiness.NotBuilt.ConceptNotInRuntime(languageName, module)
        if (!checkStale) return ConceptReadiness.Ready
        val structureModel = (declaration ?: concept.sourceNode?.resolve(repository))?.model ?: return ConceptReadiness.Ready
        val statusManager = project.getComponent(ModelGenerationStatusManager::class.java) ?: return ConceptReadiness.Ready
        return if (statusManager.generationRequired(structureModel)) ConceptReadiness.NotBuilt.Stale(languageName, module, structureModel)
        else ConceptReadiness.Ready
    }

    /** Classifies a language module as a whole: [ConceptReadiness.NotBuilt.NoRuntime], [ConceptReadiness.NotBuilt.Stale] or [ConceptReadiness.Ready]. */
    fun ofLanguage(module: Language, project: MPSProject): ConceptReadiness {
        val repository = project.repository
        val language = jetbrains.mps.smodel.adapter.MetaAdapterByDeclaration.getLanguage(module)
        if (LanguageRegistry.getInstance(repository).getLanguage(language) == null) {
            return ConceptReadiness.NotBuilt.NoRuntime(module.moduleName ?: language.qualifiedName, module)
        }
        val structureModel = module.structureModelDescriptor ?: return ConceptReadiness.Ready
        val statusManager = project.getComponent(ModelGenerationStatusManager::class.java) ?: return ConceptReadiness.Ready
        return if (statusManager.generationRequired(structureModel)) ConceptReadiness.NotBuilt.Stale(module.moduleName ?: language.qualifiedName, module, structureModel)
        else ConceptReadiness.Ready
    }

    /** The `languageBuild` block every surface emits (`details.languageBuild`). */
    fun languageBuildDetails(notBuilt: ConceptReadiness.NotBuilt): Map<String, Any?> {
        val moduleRef = notBuilt.module?.let { PersistenceFacade.getInstance().asString(it.moduleReference) }
        return linkedMapOf(
            "language" to notBuilt.languageName,
            "module" to moduleRef,
            "status" to notBuilt.status,
            "recovery" to linkedMapOf(
                "tool" to "mps_mcp_alter_nodes",
                "operation" to "MAKE",
                "parameters" to linkedMapOf("modules" to listOf(moduleRef ?: notBuilt.languageName), "rebuild" to true),
            ),
            "note" to MAKE_CHANGES_NO_MODEL_NOTE,
        )
    }

    /** One sentence describing [notBuilt] for a message or warning. */
    fun describe(notBuilt: ConceptReadiness.NotBuilt): String = when (notBuilt) {
        is ConceptReadiness.NotBuilt.NoRuntime -> "language '${notBuilt.languageName}' has no built runtime"
        is ConceptReadiness.NotBuilt.ConceptNotInRuntime -> "the built runtime of language '${notBuilt.languageName}' does not know this concept yet"
        is ConceptReadiness.NotBuilt.Stale -> "the structure model of language '${notBuilt.languageName}' changed since its runtime was built"
    }

    /** The recovery sentence every surface uses. */
    fun recoverySentence(notBuilt: ConceptReadiness.NotBuilt): String {
        val target = notBuilt.module?.let { PersistenceFacade.getInstance().asString(it.moduleReference) } ?: notBuilt.languageName
        return "Run mps_mcp_alter_nodes MAKE with modules:[\"$target\"] and rebuild:true, then retry. $MAKE_CHANGES_NO_MODEL_NOTE"
    }

    /** The marker fields a concept record carries when it is served while [notBuilt]. */
    fun recordMarkers(notBuilt: ConceptReadiness.NotBuilt, fromDeclaration: Boolean): Map<String, Any?> = linkedMapOf(
        "descriptorStatus" to "hollow",
        "runtimeStatus" to notBuilt.status,
        "languageModule" to (notBuilt.module?.let { PersistenceFacade.getInstance().asString(it.moduleReference) } ?: notBuilt.languageName),
        "descriptorRecoveryAction" to recoverySentence(notBuilt),
        "source" to if (fromDeclaration) "declaration" else "runtime",
    )

    /**
     * The refusal a writer throws instead of acting on a fail-safe adapter. [subject] names what was
     * attempted, e.g. `"Concept 'x.structure.Chart' at $.children[0]"` or `"Property 'initial' of concept 'Chart'"`.
     */
    fun notBuilt(subject: String, notBuilt: ConceptReadiness.NotBuilt, consequence: String): McpLanguageNotBuiltException =
        McpLanguageNotBuiltException(
            "$subject: ${describe(notBuilt)}; $consequence. ${recoverySentence(notBuilt)}",
            mapOf("languageBuild" to languageBuildDetails(notBuilt)),
        )
}
