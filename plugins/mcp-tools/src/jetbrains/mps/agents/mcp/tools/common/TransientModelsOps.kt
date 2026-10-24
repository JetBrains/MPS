package jetbrains.mps.agents.mcp.tools.common

import com.google.gson.JsonArray
import com.google.gson.JsonObject
import jetbrains.mps.extapi.model.ModelWithAttributes
import jetbrains.mps.extapi.model.TransientSModel
import jetbrains.mps.extapi.module.TransientSModule
import jetbrains.mps.generator.GenerationSettingsProvider
import jetbrains.mps.generator.GenerationTrace
import jetbrains.mps.generator.TransientModelsModule
import jetbrains.mps.generator.TransientModelsProvider
import jetbrains.mps.make.MakeServiceComponent
import jetbrains.mps.project.MPSProject
import org.jetbrains.mps.openapi.model.SModel
import org.jetbrains.mps.openapi.model.SModelReference
import org.jetbrains.mps.openapi.module.SModule
import org.jetbrains.mps.openapi.module.SRepository
import org.jetbrains.mps.openapi.persistence.PersistenceFacade

/** What a transient model is, as far as its stereotype, branch serial and module tell; no MPS API says. */
internal enum class TransientModelKind { INITIAL_CLONE, STEP, FORK_BRANCH, CHECKPOINT, OTHER }

/**
 * A parsed transient model stereotype. [stereotypePrefix] (`<n>_`) is the one `mps_mcp_generation` PLAN reports as a
 * step's `transientStereotypePrefix`; [minor] counts on through a branch, so it orders a branch's models by creation.
 */
internal data class TransientStereotype(
    val kind: TransientModelKind,
    val stereotypePrefix: String? = null,
    val minor: Int? = null,
)

/**
 * `mps_mcp_generation` TRANSIENT_MODELS and DROP_TRANSIENT_MODELS, plus the transient-model helpers other tools share
 * (the project's [TransientModelsProvider], the active-make refusal, the original of a transient model).
 */
internal object TransientModelsOps {

    private val STEP_STEREOTYPE = Regex("""(\d+)_(\d+)""")
    private val TRANSIENT_MODULE_SUFFIX = Regex("""@transient\d+$""")

    private const val CHECKPOINT_ATTRIBUTE = "checkpoint"
    private const val GENERATION_PLAN_ATTRIBUTE = "generation-plan"

    internal val TRANSIENT_MODELS_NOTES: List<String> = listOf(
        "A make started by any tool or by the user discards every transient model and trace first; references listed here are stale after it.",
        "A step that changes nothing writes no model, so stereotypes have gaps. Within one branch, minor orders the models by creation.",
        "stereotypePrefix is the transientStereotypePrefix of the step in mps_mcp_generation PLAN. A fork branch reuses the prefixes of " +
            "later main-branch steps, so tell its models apart by reference and branch (0 = main branch), never by name. A branch's " +
            "lowest-minor model is its input copy, named with the fork's branchInputStereotypePrefix.",
        "The checkpoints module is shared by every open project, so checkpoints lists checkpoint models of any project.",
        "Transient models are read-only: read them with mps_mcp_print_node, mps_mcp_query_nodes or mps_mcp_get_project_structure " +
            "(startingPoint = a reference listed here); write tools refuse them with NOT_EDITABLE.",
    )

    internal const val CHECKPOINTS_SHARED_WARNING =
        "The checkpoints module is shared by every open project, so their checkpoint models were dropped too; " +
            "a later make reloads persisted checkpoints from the generator caches or recreates them."

    /**
     * Classifies a transient model by its [stereotype] (`0`, `<major + 1>_<minor>`, or a checkpoint's persistence value),
     * its [branchSerial] (`TransientSModelDescriptor.getBranchSerial()`, 0 on the main branch) and whether it lives in
     * the shared `checkpoints` module. The name alone cannot tell a fork-branch model from a main-branch one.
     */
    fun parseStereotype(stereotype: String, branchSerial: Int, inCheckpointsModule: Boolean): TransientStereotype {
        if (inCheckpointsModule) return TransientStereotype(TransientModelKind.CHECKPOINT)
        if (stereotype == "0") return TransientStereotype(TransientModelKind.INITIAL_CLONE, minor = 0)
        val match = STEP_STEREOTYPE.matchEntire(stereotype) ?: return TransientStereotype(TransientModelKind.OTHER)
        val (major, minor) = match.destructured
        val kind = if (branchSerial == 0) TransientModelKind.STEP else TransientModelKind.FORK_BRANCH
        return TransientStereotype(kind, "${major}_", minor.toIntOrNull())
    }

    /** The source module's name of a transient module named `<module>@transient<N>`, or null for any other name. */
    fun originalModuleName(transientModuleName: String): String? =
        if (TRANSIENT_MODULE_SUFFIX.containsMatchIn(transientModuleName)) transientModuleName.replace(TRANSIENT_MODULE_SUFFIX, "") else null

    /** Whether [model] is one a generator made: a transient step model or a checkpoint model. */
    fun isTransient(model: SModel): Boolean = model is TransientSModel || model.module is TransientSModule

    fun provider(mpsProject: MPSProject): TransientModelsProvider =
        mpsProject.getComponent(TransientModelsProvider::class.java)
            ?: throw AbstractOps.McpNotFoundException("This project has no transient models provider")

    /** [provider]'s transient modules with published models, except the shared `checkpoints` module, which a make keeps. Needs read access. */
    fun nonCheckpointModules(provider: TransientModelsProvider): List<TransientModelsModule> {
        val checkpointsModule = provider.checkpointsModule
        return provider.modules.filter { it !== checkpointsModule }
    }

    /**
     * The generation trace the last make kept for [model], an input model or one of its transient models. A trace is
     * keyed by the input's long name in the transient module of the input's own module, so only that module is asked:
     * [TransientModelsProvider.getTrace] asks every module and would hand a model the trace of a same-named model of
     * another module. A checkpoint model, whose module names no original, still gets that repository-wide lookup.
     * Needs read access.
     */
    fun traceOf(provider: TransientModelsProvider, model: SModelReference, repository: SRepository): GenerationTrace? {
        val module = model.moduleReference ?: model.resolve(repository)?.module?.moduleReference
        if (module != null && module == provider.checkpointsModule?.moduleReference) return provider.getTrace(model)
        val transientModules = nonCheckpointModules(provider)
        transientModules.firstOrNull { it.moduleReference == module }?.let { return it.getTrace(model) }
        val moduleName = module?.moduleName ?: return null
        return transientModules.filter { it.moduleName?.let(::originalModuleName) == moduleName }.firstNotNullOfOrNull { it.getTrace(model) }
    }

    /** Those of [inputModels] the last make kept a generation trace for, by [traceOf]. Needs read access. */
    fun tracedModels(provider: TransientModelsProvider, inputModels: List<SModelReference>, repository: SRepository): List<SModelReference> =
        inputModels.filter { traceOf(provider, it, repository) != null }

    fun isMakeSessionActive(mpsProject: MPSProject): Boolean =
        mpsProject.getComponent(MakeServiceComponent::class.java)?.get()?.isSessionActive == true

    /** Refuses [operation] while a make runs: its transient modules are being replaced and must not be read or dropped. */
    fun refuseWhileMakeActive(mpsProject: MPSProject, operation: String) {
        if (isMakeSessionActive(mpsProject)) {
            throw AbstractOps.McpInvalidRequestException(
                "$operation is refused while a make session is active: the make replaces the transient models. Retry once it finished."
            )
        }
    }

    /**
     * The persistent models [model] is a transient copy of: same long name, in the module its transient module's
     * `<module>@transient<N>` name names. Empty for a checkpoint model or when the original is gone. Needs read access.
     */
    fun originalsOf(model: SModel, repository: SRepository): List<SModel> {
        val moduleName = model.module?.moduleName?.let(::originalModuleName) ?: return emptyList()
        val longName = model.name.longName
        return repository.modules
            .filter { it !is TransientSModule && it.moduleName == moduleName }
            .flatMap { module -> module.models.filter { it !is TransientSModel && it.name.longName == longName } }
    }

    /** The NOT_EDITABLE message for a write aimed at the transient [model], naming its original. Needs read access. */
    fun notEditableMessage(subject: String, model: SModel, repository: SRepository): String {
        val originals = originalsOf(model, repository)
        val hint = when {
            originals.isNotEmpty() -> "Edit the original model ${originals.joinToString(" or ") { "'${it.name.value}' (${asString(it)})" }} instead."
            else -> "Edit the model it was generated from ('${model.name.longName}') instead."
        }
        return "$subject is in the transient model '${model.name.value}', which generation made and which is read-only " +
            "(the next make discards it). $hint"
    }

    /**
     * The published transient models of [mpsProject]'s last make, grouped by original model, and the shared checkpoint
     * models. [filter], an original or a transient model, narrows both to that model's long name. Needs read access.
     */
    fun transientModelsJson(mpsProject: MPSProject, filter: SModel?): JsonObject {
        val provider = provider(mpsProject)
        val repository = mpsProject.repository
        val checkpointsModule = provider.checkpointsModule
        val filterLongName = filter?.name?.longName
        // A checkpoint model's module is the shared `checkpoints` module, which names no original module.
        val filterModuleName = filter?.module?.takeIf { it !== checkpointsModule }?.moduleName?.let { originalModuleName(it) ?: it }

        val originals = JsonArray()
        val checkpoints = JsonArray()
        for (module in provider.modules.sortedBy { it.moduleName }) {
            if (module === checkpointsModule) {
                module.models
                    .filter { filterLongName == null || it.name.longName == filterLongName }
                    .sortedBy { it.name.value }
                    .forEach { checkpoints.add(checkpointJson(it)) }
                continue
            }
            val originalModule = module.moduleName?.let(::originalModuleName)
            if (filterModuleName != null && originalModule != filterModuleName) continue
            module.models
                .filter { filterLongName == null || it.name.longName == filterLongName }
                .groupBy { it.name.longName }
                .toSortedMap()
                .forEach { (longName, models) -> originals.add(originalJson(module, originalModule, longName, models, repository)) }
        }

        val settings = mpsProject.getComponent(GenerationSettingsProvider::class.java)?.generationSettings
        return JsonObject().apply {
            settings?.let { addProperty("saveTransientModelsSetting", it.isSaveTransientModels) }
            add("originals", originals)
            add("checkpoints", checkpoints)
            add("notes", JsonArray().apply { TRANSIENT_MODELS_NOTES.forEach(::add) })
        }
    }

    private fun originalJson(
        module: TransientModelsModule,
        originalModule: String?,
        longName: String,
        models: List<SModel>,
        repository: SRepository,
    ): JsonObject = JsonObject().apply {
        addProperty("model", longName)
        val originals = originalsOf(models.first(), repository)
        when (originals.size) {
            0 -> addProperty("originalResolved", false)
            1 -> addProperty("originalModelReference", asString(originals.single()))
            else -> add("originalModelCandidates", JsonArray().apply { originals.forEach { add(asString(it)) } })
        }
        originalModule?.let { addProperty("originalModule", it) }
        addProperty("transientModule", module.moduleName)
        addProperty("transientModuleReference", PersistenceFacade.getInstance().asString(module.moduleReference))
        addProperty("traceAvailable", module.getTrace(models.first().reference) != null)
        val rows = models.map { it to describe(it) }
            .sortedWith(compareBy({ branchOf(it.first) }, { it.second.minor ?: Int.MAX_VALUE }, { it.first.name.value }))
        add("models", JsonArray().apply { rows.forEach { (model, parsed) -> add(modelJson(model, parsed)) } })
    }

    private fun describe(model: SModel): TransientStereotype =
        parseStereotype(model.name.stereotype, branchOf(model), inCheckpointsModule = false)

    private fun branchOf(model: SModel): Int = (model as? TransientModelsModule.TransientSModelDescriptor)?.branchSerial ?: 0

    private fun modelJson(model: SModel, parsed: TransientStereotype): JsonObject = JsonObject().apply {
        addProperty("name", model.name.value)
        addProperty("reference", asString(model))
        addProperty("stereotype", model.name.stereotype)
        addProperty("kind", parsed.kind.name)
        parsed.stereotypePrefix?.let { addProperty("stereotypePrefix", it) }
        parsed.minor?.let { addProperty("minor", it) }
        addProperty("branch", branchOf(model))
        addRoots(model)
    }

    /**
     * `roots`, for a loaded model only: counting the roots of a model `clearUnused` swapped out would restore it from
     * the swap, and a listing must not pull every kept model back into memory.
     */
    private fun JsonObject.addRoots(model: SModel) {
        if (!model.isLoaded) addProperty("loaded", false)
        else addProperty("roots", model.rootNodes.count())
    }

    /**
     * A checkpoint model; its attributes are lost when the model was swapped out and reloaded, the stereotype is not.
     * Like [addRoots], reads the attributes of a loaded model only: reading one loads the model.
     */
    private fun checkpointJson(model: SModel): JsonObject = JsonObject().apply {
        addProperty("name", model.name.value)
        addProperty("reference", asString(model))
        addProperty("stereotype", model.name.stereotype)
        addProperty("kind", parseStereotype(model.name.stereotype, branchOf(model), inCheckpointsModule = true).kind.name)
        val attributes = (model as? ModelWithAttributes)?.takeIf { model.isLoaded }
        val checkpoint = attributes?.getAttribute(CHECKPOINT_ATTRIBUTE)
        if (checkpoint != null) {
            addProperty("checkpoint", checkpoint)
            attributes.getAttribute(GENERATION_PLAN_ATTRIBUTE)?.let { addProperty("generationPlan", it) }
        } else {
            addProperty("attributesAvailable", false)
        }
        addRoots(model)
    }

    /** What [dropTransientModels] removed. */
    class Dropped(val json: JsonObject, val warnings: List<String>)

    /**
     * The IDE's "Remove Transient Models": unregisters [mpsProject]'s transient modules, their traces, and with
     * [includeCheckpoints] the shared `checkpoints` module. Takes its own write action, so it must run on the EDT
     * outside any read action.
     */
    fun dropTransientModels(mpsProject: MPSProject, includeCheckpoints: Boolean): Dropped {
        refuseWhileMakeActive(mpsProject, "DROP_TRANSIENT_MODELS")
        val provider = provider(mpsProject)
        class Counts(val modules: Int, val models: Int, val checkpointModels: Int)
        val before = mpsProject.modelAccess.computeReadAction {
            val checkpointsModule = provider.checkpointsModule
            val transientModules: List<SModule> = nonCheckpointModules(provider)
            Counts(
                transientModules.size,
                transientModules.sumOf { it.models.count() },
                if (checkpointsModule != null && checkpointsModule.hasPublished()) checkpointsModule.models.count() else 0,
            )
        }
        provider.removeAllTransients(includeCheckpoints)
        val checkpointsDropped = includeCheckpoints && before.checkpointModels > 0
        val json = JsonObject().apply {
            addProperty("droppedModules", before.modules)
            addProperty("droppedModels", before.models)
            addProperty("includeCheckpoints", includeCheckpoints)
            addProperty("droppedCheckpointModels", if (includeCheckpoints) before.checkpointModels else 0)
        }
        return Dropped(json, if (checkpointsDropped) listOf(CHECKPOINTS_SHARED_WARNING) else emptyList())
    }

    private fun asString(model: SModel): String = PersistenceFacade.getInstance().asString(model.reference)
}
