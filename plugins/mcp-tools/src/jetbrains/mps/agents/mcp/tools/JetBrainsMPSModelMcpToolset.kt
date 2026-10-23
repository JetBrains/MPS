package jetbrains.mps.agents.mcp.tools

import jetbrains.mps.agents.mcp.tools.common.*

// MPS APIs used for CRUD
import com.google.gson.JsonObject
import com.google.gson.JsonParser
import com.intellij.mcpserver.annotations.McpDescription
import com.intellij.mcpserver.annotations.McpTool
import jetbrains.mps.model.ModelDeleteHelper
import jetbrains.mps.project.AbstractModule
import jetbrains.mps.project.DevKit
import jetbrains.mps.project.MPSProject
import jetbrains.mps.project.ModelsAutoImportsManager
import jetbrains.mps.smodel.SModelInternal
import jetbrains.mps.smodel.language.LanguageAspectSupport
import org.jetbrains.mps.openapi.language.SLanguage
import org.jetbrains.mps.openapi.model.EditableSModel
import org.jetbrains.mps.openapi.model.SModel
import org.jetbrains.mps.openapi.model.SModelName
import org.jetbrains.mps.openapi.model.SModelReference
import org.jetbrains.mps.openapi.model.SNodeUtil
import org.jetbrains.mps.openapi.module.SModuleReference
import org.jetbrains.mps.openapi.module.SDependencyScope
import org.jetbrains.mps.openapi.persistence.PersistenceFacade
import javax.lang.model.SourceVersion

// MCP tool methods use snake_case names because they are part of the public MCP protocol
// surface, and they are invoked via reflection by the MCP server framework, so static
// analysis flags them as "never used".
@Suppress("FunctionName", "unused")
class JetBrainsMPSModelMcpToolset : AbstractNodeOps() {

    @McpTool
    @McpDescription(
        """
        Adds or deletes one or more imports to an MPS model and ensures the containing module has a `Default` dependency on each target's module. Already-imported targets are skipped when adding. `targetModels` accepts a single name/reference or a JSON array. ADD returns `{ "added": N, "alreadyPresent": M }`; DELETE returns `{ "removed": true|false }` where `removed:false` means the import was not present — a successful idempotent no-op, not a failure. A model never imports itself, so when source and target resolve to the same model the ADD is dropped (no import is written) and DELETE returns `removed:false`.
        `modelReference: "console"` targets the model of the MPS Console's current editable tab, so typed Java inserted with `mps_mcp_parse_java_and_insert` (`insert.mode:"console"`) can resolve MPS classes. Console writes are not saved, return `"console": true` and a lifetime warning (Console > Clear, a plugin reload or project close drops the imports), and DELETE warns when the console still references the model, since the console may then add the import back (execute and paste re-derive imports from the input and history, Clear from the input only).
        Supported operations: ADD or DELETE.
    """
    )
    suspend fun mps_mcp_model_dependency(
        @McpDescription("Required. Source model: a persistent model reference (preferred), the model's long/short name resolved in the project selected by projectPath, or `\"console\"` for the MPS Console model (a project model named `console` then needs its persistent reference).")
        modelReference: String = "",
        @McpDescription("Required. Target model name(s) or reference(s). Single string or JSON array: [\"model1\", \"model2\"] (a real array or the array written as a string)")
        targetModels: JsonOrText = JsonOrText.EMPTY,
        @McpDescription("Operation to perform: ADD or DELETE")
        operation: String = "ADD"
    ): String {
        rejectMissingParameters(
            "mps_mcp_model_dependency",
            RequiredParameter("modelReference", modelReference, "the source model's persistent reference or name"),
            RequiredParameter("targetModels", targetModels.text, "the target model's name/reference, or a JSON array of them"),
        )?.let { return it }
        val op = resolveOperationOrNull<DependencyOperation>(operation)
            ?: return unknownOperation<DependencyOperation>(operation)
        return mps_mcp_model_dependency(modelReference, targetModels.text, op)
    }

    /** Internal enum-typed entry point for [mps_mcp_model_dependency]; see [resolveOperationOrNull]. */
    suspend fun mps_mcp_model_dependency(
        modelReference: String,
        targetModels: String,
        operation: DependencyOperation,
    ): String = withMpsProject("Adding MPS model dependency") { mpsProject ->
        val targetList: List<String> = try {
            val elem = JsonParser.parseString(targetModels)
            when {
                elem.isJsonArray -> elem.asJsonArray.map { it.asString }
                elem.isJsonPrimitive && elem.asJsonPrimitive.isString -> listOf(elem.asString)
                else -> return@withMpsProject errJson("Invalid JSON for targetModels: expected a JSON array or a string")
            }
        } catch (e: Exception) {
            rethrowIfCancellation(e)
            listOf(targetModels)
        }

        if (operation == DependencyOperation.DELETE) {
            val results = mutableListOf<String>()
            var allSucceeded = true
            for (targetModel in targetList) {
                val itemResult = removeModelDependency(modelReference, targetModel)
                results.add(itemResult)
                if (!itemResult.startsWith("{\"ok\":true")) {
                    allSucceeded = false
                }
            }
            val array = "[" + results.joinToString(",") + "]"
            return@withMpsProject "{" + "\"ok\":$allSucceeded,\"data\":" + array + "}"
        }

        executeShortCommandOnEdt(mpsProject) {
            when (val r = resolveEditableModelAllowingConsole(mpsProject, modelReference)) {
                is ConsoleAwareModelResolution.Ok -> addModelImports(mpsProject, r.model, targetList, console = r.console != null)
                is ConsoleAwareModelResolution.Err -> r.errJson
            }
        }
    }

    /**
     * The ADD half of [mps_mcp_model_dependency] on an already resolved [model]; must run inside a
     * command. A [console] model is never saved and its response carries the console lifetime warning.
     */
    internal fun addModelImports(mpsProject: MPSProject, model: EditableSModel, targetList: List<String>, console: Boolean): String {
        if (model !is SModelInternal) {
            return errJson("Model is not editable or doesn't support imports: ${model.name}")
        }

        val module = model.module

        // Two-pass: resolve and validate ALL targets before mutating anything. A failure
        // mid-batch used to leave already-applied imports/module-dependency changes in
        // memory while reporting an error to the caller — half-applied state that wasn't
        // ever saved to disk but was visible to subsequent operations within the same
        // session. Resolving up front converts the operation into an all-or-nothing batch.
        val resolvedTargets = mutableListOf<SModel>()
        for (targetModel in targetList) {
            // Resolve the input (which may be a persistent r:UUID(name) reference OR a bare
            // qualified name) to an actual SModel and use that model's reference. This is
            // critical: PersistenceFacade.createModelReference does NOT throw on a bare name
            // — it returns a name-only SModelReference with no UUID, which would then be
            // serialized into the .mps file as a malformed <import ref="<name>"/> entry and
            // would also fail to match existing UUID-bearing imports in the duplicate check.
            val targetModelResolved = resolveModelPreferringProject(mpsProject, targetModel)
                ?: return errJson("Target model not found: $targetModel")
            resolvedTargets += targetModelResolved
        }

        var added = 0
        var alreadyPresent = 0
        var moduleDirty = false

        for (targetModelResolved in resolvedTargets) {
            val targetRef = targetModelResolved.reference

            if (model.modelImports.contains(targetRef)) {
                alreadyPresent++
            } else {
                model.addModelImport(targetRef)
                added++
            }

            // Add module dependency. We do this even when the model import is already present,
            // because the module-level dependency may still be missing (e.g. a user previously
            // imported the model manually without registering the module dependency).
            val targetModule = targetModelResolved.module
            if (targetModule != null && targetModule != module && module is AbstractModule) {
                val targetModuleRef = targetModule.moduleReference
                // Find the existing dependency on the underlying ModuleDescriptor (the mutable
                // jetbrains.mps.project.structure.modules.Dependency, not the OpenAPI SDependency
                // view exposed via declaredDependencies).
                val existingDep = module.moduleDescriptor
                    ?.dependencies
                    ?.firstOrNull { it.moduleRef.moduleId == targetModuleRef.moduleId }
                if (existingDep == null) {
                    // No prior dependency — addDependency creates one with DEFAULT scope.
                    module.addDependency(targetModuleRef, false)
                    moduleDirty = true
                } else if (existingDep.scope != SDependencyScope.DEFAULT) {
                    // A non-Default scope (e.g. Generation Target, Runtime) would not satisfy
                    // the model-import contract from this tool, which advertises that it adds
                    // a "Default" dependency. Promote the existing dep to Default so the
                    // imported model is reachable through normal module classpath resolution.
                    existingDep.scope = SDependencyScope.DEFAULT
                    module.setChanged()
                    moduleDirty = true
                }
            }
        }

        // The console model and its module are temporary: save() is a no-op on both, so skip it.
        if (added > 0 && !console) {
            model.save()
        }
        // Only save the module descriptor when a module-level change actually happened
        // (new module dependency added, or an existing one promoted to DEFAULT scope).
        // A pure model-import-only update doesn't touch the module descriptor.
        if (moduleDirty && !console) {
            (module as? AbstractModule)?.save()
        }

        return consoleAwareOk(console, jsonObject {
            addProperty("added", added)
            addProperty("alreadyPresent", alreadyPresent)
        })
    }

    private suspend fun removeModelDependency(modelReference: String, targetModelRef: String
    ): String = withMpsProject("Removing MPS model dependency") { mpsProject ->
        executeShortCommandOnEdt(mpsProject) {
            when (val r = resolveEditableModelAllowingConsole(mpsProject, modelReference)) {
                is ConsoleAwareModelResolution.Ok -> removeModelImport(mpsProject, r.model, targetModelRef, console = r.console != null)
                is ConsoleAwareModelResolution.Err -> r.errJson
            }
        }
    }

    /** The per-target DELETE half of [mps_mcp_model_dependency] on an already resolved [model]; must run inside a command. */
    internal fun removeModelImport(mpsProject: MPSProject, model: EditableSModel, targetModelRef: String, console: Boolean): String {
        if (model !is SModelInternal) {
            return errJson("Model is not editable or doesn't support imports: ${model.name}")
        }

        // Resolve the target as ADD does: a bare name gives createModelReference a name-only
        // reference that never equals the stored, id-bearing import. The parse fallback still
        // removes an import whose target model is gone from the repository.
        val targetRef = resolveModelPreferringProject(mpsProject, targetModelRef)?.reference
            ?: tryCreateReference { PersistenceFacade.getInstance().createModelReference(targetModelRef) }
            ?: return errJson("Invalid target model reference: $targetModelRef")

        // Precheck so the response can tell the caller whether anything actually changed.
        // deleteModelImport() itself is silently idempotent — without this check, a typo in
        // the targetRef would look indistinguishable from a successful removal.
        val wasPresent = model.modelImports.contains(targetRef)
        if (wasPresent) {
            model.deleteModelImport(targetRef)
            if (!console) model.save()
        }
        val rederived = console && wasPresent && referencesModel(model, targetRef)
        return consoleAwareOk(
            console, jsonObject { addProperty("removed", wasPresent) },
            listOfNotNull(if (rederived) CONSOLE_REDERIVED_IMPORT_WARNING else null),
        )
    }

    @McpTool
    @McpDescription(
        """
        Adds or deletes a used language or devkit to an MPS model (`kind` = `"language"` or `"devkit"`). If the language being added is already provided by an imported DevKit, the call is a no-op and `providedByDevKit` reports the supplying DevKit. `modelReference: "console"` targets the MPS Console model, as in `mps_mcp_model_dependency`; deleting one of the console's built-in devkits (`jetbrains.mps.console.devkit` and the devkits extending it) is refused.
        Supported operations: ADD or DELETE. 
    """
    )
    suspend fun mps_mcp_model_used_language(
        @McpDescription("Required. Target model: a persistent model reference (preferred), the model's long/short name resolved in the project selected by projectPath, or `\"console\"` for the MPS Console model (a project model named `console` then needs its persistent reference).")
        modelReference: String = "",
        @McpDescription("Required. Language or devkit to add/remove. Accepts a persistent reference (`l:<uuid>:<qualifiedName>` for a language, `<uuid>(<name>)` for a devkit) or a plain qualified name. A plain name resolves against languages/devkits loaded in the project; a Language module that was created but never built is also resolved by name via the project repository. On ADD, a persistent language reference is accepted only when its uuid is a deployed language or a loaded Language module; an unresolved id is rejected with `Language not found` and nothing is stored. The stored name is the language's own qualified name, not the one written in the reference.")
        usedLanguage: String = "",
        @McpDescription("Required. Kind: 'language' or 'devkit'")
        kind: String = "",
        @McpDescription("Operation to perform: ADD or DELETE")
        operation: String = "ADD"
    ): String {
        rejectMissingParameters(
            "mps_mcp_model_used_language",
            RequiredParameter("modelReference", modelReference, "the target model's persistent reference or name"),
            RequiredParameter("usedLanguage", usedLanguage, "the language or devkit's persistent reference or qualified name"),
            RequiredParameter("kind", kind, "'language' or 'devkit'"),
        )?.let { return it }
        val op = resolveOperationOrNull<DependencyOperation>(operation)
            ?: return unknownOperation<DependencyOperation>(operation)
        return mps_mcp_model_used_language(modelReference, usedLanguage, kind, op)
    }

    /** Internal enum-typed entry point for [mps_mcp_model_used_language]; see [resolveOperationOrNull]. */
    suspend fun mps_mcp_model_used_language(
        modelReference: String,
        usedLanguage: String,
        kind: String,
        operation: DependencyOperation,
    ): String = withMpsProject("Adding MPS model used language") { mpsProject ->
        if (operation == DependencyOperation.DELETE) {
            return@withMpsProject removeModelUsedLanguage(modelReference, usedLanguage, kind)
        }

        executeShortCommandOnEdt(mpsProject) {
            when (val r = resolveEditableModelAllowingConsole(mpsProject, modelReference)) {
                is ConsoleAwareModelResolution.Ok -> addUsedLanguage(mpsProject, r.model, usedLanguage, kind, console = r.console != null)
                is ConsoleAwareModelResolution.Err -> r.errJson
            }
        }
    }

    /** The ADD half of [mps_mcp_model_used_language] on an already resolved [model]; must run inside a command. */
    internal fun addUsedLanguage(mpsProject: MPSProject, model: EditableSModel, usedLanguage: String, kind: String, console: Boolean): String {
        if (model !is SModelInternal) {
            return errJson("Model is not editable or doesn't support used languages: ${model.name}")
        }

        return when (kind) {
            "language" -> {
                val lang = resolveLanguagePreferringProject(mpsProject, usedLanguage)
                // A freshly-created Language module that has never been built has no
                // LanguageRuntime, so it is absent from LanguageRegistry.allLanguages above.
                // Fall back to resolving the Language *module* by name in the project
                // repository and adapting it to an SLanguage via its module id (no runtime
                // needed) — this lets an unbuilt language be imported by plain name.
                // A rejected `l:` string also reaches this fallback; it matches no module and yields null.
                ?: (resolveModule(mpsProject, usedLanguage, projectOnly = true) as? jetbrains.mps.smodel.Language)
                    ?.let { jetbrains.mps.smodel.adapter.MetaAdapterByDeclaration.getLanguage(it) }
                ?: return errJson("Language not found: $usedLanguage")

                // k: when the language is already supplied by an imported DevKit, addLanguage
                // would be a no-op (DevKit-exported languages are already in scope), so we
                // skip both the addLanguage call and the model.save() that follows. The
                // structured response lets the caller distinguish "added now" from "already
                // available via DevKit", which matters for tooling that reports the diff.
                for (dkRef in model.importedDevkits()) {
                    val dk = dkRef.resolve(mpsProject.repository) as? DevKit ?: continue
                    if (dk.allExportedLanguageIds.contains(lang)) {
                        return consoleAwareOk(console, jsonObject {
                            addProperty("added", false)
                            addProperty("providedByDevKit", true)
                            addProperty("devKit", dk.moduleName)
                        })
                    }
                }
                model.addLanguage(lang)
                if (!console) model.save()
                consoleAwareOk(console, jsonObject {
                    addProperty("added", true)
                    addProperty("providedByDevKit", false)
                })
            }

            "devkit" -> {
                val devkitRef = (resolveModulePreferringProject(mpsProject, usedLanguage) as? DevKit)?.moduleReference
                ?: return errJson("Devkit not found: $usedLanguage")

                if (model.importedDevkits().contains(devkitRef)) {
                    return consoleAwareOk(console, jsonObject {
                        addProperty("added", false)
                        addProperty("alreadyPresent", true)
                    })
                }

                model.addDevKit(devkitRef)
                if (!console) model.save()
                consoleAwareOk(console, jsonObject {
                    addProperty("added", true)
                    addProperty("alreadyPresent", false)
                })
            }

            else -> errJson("Invalid kind: $kind. Must be 'language' or 'devkit'.")
        }
    }

    private suspend fun removeModelUsedLanguage(modelReference: String, usedLanguageRef: String, kind: String
    ): String = withMpsProject("Removing MPS model used language") { mpsProject ->
        executeShortCommandOnEdt(mpsProject) {
            when (val r = resolveEditableModelAllowingConsole(mpsProject, modelReference)) {
                is ConsoleAwareModelResolution.Ok -> {
                    val console = r.console != null
                    val builtInDevkits = if (console) consoleBuiltInDevkits(mpsProject.repository) else emptySet()
                    removeUsedLanguage(mpsProject, r.model, usedLanguageRef, kind, console, builtInDevkits)
                }
                is ConsoleAwareModelResolution.Err -> r.errJson
            }
        }
    }

    /**
     * The DELETE half of [mps_mcp_model_used_language] on an already resolved [model]; must run
     * inside a command. A devkit in [protectedDevkits] (the console's built-ins) is refused.
     */
    internal fun removeUsedLanguage(
        mpsProject: MPSProject,
        model: EditableSModel,
        usedLanguageRef: String,
        kind: String,
        console: Boolean,
        protectedDevkits: Set<SModuleReference> = emptySet(),
    ): String {
        if (model !is SModelInternal) {
            return errJson("Model is not editable or doesn't support used languages: ${model.name}")
        }

        return when (kind) {
            "language" -> {
                // Symmetric with mps_mcp_model_used_language: accept either a persistent
                // l:UUID:name reference OR a bare qualified name. For the bare-name fallback we
                // search the model's OWN imported languages rather than the global
                // LanguageRegistry — that locates the exact SLanguage instance the model
                // currently holds, which is what deleteLanguageId compares against, and avoids
                // picking up an unrelated SLanguage that happens to share the qualifiedName.
                val lang = tryCreateReference {
                    PersistenceFacade.getInstance().createLanguage(usedLanguageRef)
                }
                    ?: model.importedLanguageIds().find { it.qualifiedName == usedLanguageRef }
                    ?: return errJson("Language not found in model's used languages: $usedLanguageRef")

                // deleteLanguageId is silently idempotent, so precompute membership to give the
                // caller a meaningful `removed` flag (matches mps_mcp_model_dependency).
                val wasPresent = model.importedLanguageIds().any { it == lang }
                if (wasPresent) {
                    model.deleteLanguageId(lang)
                    if (!console) model.save()
                }
                val rederived = console && wasPresent && usesLanguageNotFromDevkit(mpsProject, model, lang)
                consoleAwareOk(
                    console, jsonObject { addProperty("removed", wasPresent) },
                    listOfNotNull(if (rederived) CONSOLE_REDERIVED_LANGUAGE_WARNING else null),
                )
            }

            "devkit" -> {
                val devkitRef = tryCreateReference {
                    PersistenceFacade.getInstance().createModuleReference(usedLanguageRef)
                }
                    // Same name-fallback strategy as the language branch: search the model's
                    // OWN imported devkits, resolving each through the repository so we can
                    // compare by moduleName.
                    ?: model.importedDevkits().firstOrNull { dkRef ->
                        (dkRef.resolve(mpsProject.repository) as? DevKit)?.moduleName == usedLanguageRef
                    }
                    ?: return errJson("Devkit not found in model's used devkits: $usedLanguageRef")

                if (protectedDevkits.any { it.moduleId == devkitRef.moduleId }) {
                    return errJson(
                        "Devkit '$usedLanguageRef' is a built-in MPS Console devkit (jetbrains.mps.console.devkit or a devkit " +
                            "extending it) and cannot be removed: the console languages would be missing until Console > Clear.",
                        McpErrorCode.INVALID_REQUEST,
                    )
                }

                val wasPresent = model.importedDevkits().any { it == devkitRef }
                if (wasPresent) {
                    model.deleteDevKit(devkitRef)
                    if (!console) model.save()
                }
                consoleAwareOk(console, jsonObject { addProperty("removed", wasPresent) })
            }

            else -> errJson("Invalid kind: $kind. Must be 'language' or 'devkit'.")
        }
    }

    /**
     * The success envelope of the import and used-language writes. A [console] write is marked with
     * `"console": true` and carries the console lifetime warning ahead of [extraWarnings].
     */
    private fun consoleAwareOk(console: Boolean, payload: JsonObject, extraWarnings: List<String> = emptyList()): String {
        if (!console) return okJson(payload, warnings = extraWarnings)
        payload.addProperty("console", true)
        return okJson(payload, warnings = listOf(CONSOLE_LIFETIME_WARNING) + extraWarnings)
    }

    /**
     * Whether a node in [model] (the console input or history) has a concept of [language] that no
     * imported devkit provides; `ModelDependencyUpdate.updateUsedLanguages` re-adds only those.
     */
    private fun <M> usesLanguageNotFromDevkit(mpsProject: MPSProject, model: M, language: SLanguage): Boolean
        where M : SModel, M : SModelInternal {
        val fromDevkit = model.importedDevkits().any { ref ->
            (ref.resolve(mpsProject.repository) as? DevKit)?.allExportedLanguageIds?.contains(language) == true
        }
        return !fromDevkit && SNodeUtil.getDescendants(model).any { it.concept.language == language }
    }

    /** Whether a reference in [model] (the console input or history) points into [target]. */
    private fun referencesModel(model: SModel, target: SModelReference): Boolean =
        SNodeUtil.getDescendants(model).any { node -> node.references.any { it.targetSModelReference == target } }


    // ---- CREATE ----
    @McpTool
    @McpDescription(
        """
        Creates a new, empty MPS model in the given module. Returns the model info envelope (`name`, `reference`, `moduleReference`, `isReadOnly`).
        Language aspect models use the qualified name form `<langModule>.<aspectId>` (case-sensitive, no stereotype, e.g. `myLang.textGen`); generator/genplan/tests/descriptor models use `name@stereotype` (e.g. `myTests@tests`). See the `mps-mcp-workflow` skill's `aspect-model-stereotypes.md` for the full table.
        For recognized language aspect models, the tool auto-populates the aspect's default used languages, used devkits, and model imports (mirroring the MPS "New Aspect Model" action). Body-specific extras (e.g. `jetbrains.mps.lang.smodel`, `closures`, `collections` used inside method bodies) are NOT added automatically — the caller adds those via `mps_mcp_model_used_language` / `mps_mcp_model_dependency` as needed.
    """
    )
    suspend fun mps_mcp_create_model(
        @McpDescription("Required. The owning module: its name or its module reference — both are accepted under this key.") moduleName: String = "",
        @McpDescription("Required. Model name. For a language aspect model use the case-sensitive aspect id, e.g. `myLang.textGen`. For generator/genplan/tests/descriptor models append `@stereotype`, e.g. `myTests@tests`.") modelName: String = ""
    ): String = rejectMissingParameters(
        "mps_mcp_create_model",
        RequiredParameter("moduleName", moduleName, "the owning module's name or its module reference"),
        RequiredParameter("modelName", modelName, "the new model's name, e.g. `myLang.textGen` or `myTests@tests`"),
    ) ?: withMpsProject("Create MPS model") { mpsProject ->
        executeShortCommandOnEdt(mpsProject) {
            val module = resolveModule(mpsProject, moduleName, projectOnly = true)
                ?: return@executeShortCommandOnEdt errJson("Module '$moduleName' not found", McpErrorCode.NOT_FOUND)
            validateModelName(modelName)?.let {
                return@executeShortCommandOnEdt errJson(it, McpErrorCode.INVALID_REQUEST)
            }
            val modelNameObj = SModelName(modelName)
            val root = module.modelRoots.find { it.canCreateModel(modelNameObj) }
                ?: return@executeShortCommandOnEdt errJson("No suitable model root found in module '$moduleName' to create model '$modelName'", McpErrorCode.INVALID_REQUEST)
            val model = root.createModel(modelNameObj)
                ?: return@executeShortCommandOnEdt errJson("Failed to create model", McpErrorCode.INVALID_REQUEST)
            if (model is EditableSModel) {
                model.save()
            }
            // Mirror NewAspectModelByDescriptor_Action -> LanguageAspectDescriptorBase.create():
            // if the new model is a recognized language aspect model, populate the aspect's
            // default used languages / devkits / imports through ModelsAutoImportsManager so
            // it is immediately usable (just like the MPS "New Aspect Model" GUI action).
            // isAspectModel returns false for non-aspect models, preserving prior behavior.
            if (LanguageAspectSupport.isAspectModel(model)) {
                val autoImports = mpsProject.platform.findComponent(ModelsAutoImportsManager::class.java)
                if (autoImports != null) {
                    autoImports.performImports(module, model)
                    if (model is EditableSModel) {
                        model.save()
                    }
                }
            }
            okJson(modelInfoJson(model, mpsProject))
        }
    }

    // ---- UPDATE / DELETE ----
    @McpTool
    @McpDescription(
        """
        Updates an MPS model. Currently supports renaming. Returns the updated model info envelope.
        Deletes an MPS model, including its underlying data source (e.g. the .mps file on disk).
    """
    )
    suspend fun mps_mcp_update_model(
        @McpDescription("Required. Target model: a persistent model reference (preferred), or the model's long/short name resolved in the project selected by projectPath.")
        modelReference: String = "",
        @McpDescription("New model name")
        newModelName: String = "",
        @McpDescription("Operation to perform: RENAME or DELETE")
        operation: String = "RENAME"
    ): String {
        rejectMissingParameters(
            "mps_mcp_update_model",
            RequiredParameter("modelReference", modelReference, "the target model's persistent reference or name"),
        )?.let { return it }
        val op = resolveOperationOrNull<ModelOperation>(operation)
            ?: return unknownOperation<ModelOperation>(operation)
        return mps_mcp_update_model(modelReference, newModelName, op)
    }

    /** Internal enum-typed entry point for [mps_mcp_update_model]; see [resolveOperationOrNull]. */
    suspend fun mps_mcp_update_model(
        modelReference: String,
        newModelName: String = "",
        operation: ModelOperation,
    ): String = when (operation) {
        ModelOperation.RENAME -> withMpsProject("Update MPS model") { mpsProject ->
            executeShortCommandOnEdt(mpsProject) {
                val model = when (val r = resolveEditableModel(mpsProject, modelReference)) {
                    is EditableModelResolution.Ok -> r.model
                    is EditableModelResolution.Err -> return@executeShortCommandOnEdt r.errJson
                }
                validateModelName(newModelName)?.let {
                    return@executeShortCommandOnEdt errJson(it, McpErrorCode.INVALID_REQUEST)
                }
                model.rename(newModelName, true)
                model.save()
                okJson(modelInfoJson(model, mpsProject))
            }
        }
        ModelOperation.DELETE -> deleteModel(modelReference)
    }

    private suspend fun deleteModel(
        modelReference: String
    ): String = withMpsProject("Delete MPS model") { mpsProject ->
        executeShortCommandOnEdt(mpsProject) {
            val model = when (val r = resolveEditableModel(mpsProject, modelReference)) {
                is EditableModelResolution.Ok -> r.model
                is EditableModelResolution.Err -> return@executeShortCommandOnEdt r.errJson
            }
            val modelName = model.name.value
            val module = model.module
            if (module is AbstractModule) {
                // ModelDeleteHelper performs the canonical model deletion: it removes any
                // generated artifacts, unregisters the model from its module, and deletes
                // the underlying data source (e.g. the .mps file on disk). Calling only
                // unregisterModel leaves the model file behind, which the project would
                // then re-import on the next refresh.
                ModelDeleteHelper(model).delete()
                // ModelDeleteHelper.delete() walks unregisterModel -> changeModelSet; neither
                // path calls setChanged() on the owning module. For a plain Solution that's
                // usually fine because the model registry rebuilds from the on-disk model roots
                // on the next refresh and the descriptor doesn't enumerate models.
                //
                // We still call setChanged()+save() defensively for two reasons:
                //   1. DevKit-like modules can enumerate models or model-derived metadata in
                //      their descriptor; without a descriptor rewrite the stale entry can
                //      come back on the next project load.
                //   2. Some module subclasses cache derived state (model lists, generation
                //      outputs) that only gets persisted via the descriptor save path.
                //
                // The cost is one descriptor write per delete, which is negligible compared
                // to the file system I/O that ModelDeleteHelper already performs.
                module.setChanged()
                module.save()
                okJson(jsonObject {
                    addProperty("name", modelName)
                    addProperty("deleted", true)
                })
            } else {
                errJson("Deletion not supported for this module type", McpErrorCode.INVALID_REQUEST)
            }
        }
    }

    /**
     * Validates a model name the same way [JetBrainsMPSModuleMcpToolset.validateModuleName]
     * validates module names (Java-package qualified name rules) plus an extra prohibition
     * on '/'. Returns a user-facing error message when invalid, or null when valid.
     */
    private fun validateModelName(name: String): String? {
        if (name.isEmpty()) {
            return "Model name must not be empty"
        }
        val atIndex = name.lastIndexOf('@')
        val longName = if (atIndex == -1) name else name.substring(0, atIndex)
        val stereotype = if (atIndex == -1) "" else name.substring(atIndex + 1)

        if (longName.isEmpty()) {
            return "Model name must not be empty"
        }
        if (!Character.isJavaIdentifierStart(longName[0])) {
            return "Model name can't start with '${longName[0]}'"
        }
        val lastChar = name[name.length - 1]
        if (!Character.isJavaIdentifierPart(lastChar)) {
            return "Model name can't end with '$lastChar'"
        }
        if (!SourceVersion.isName(longName)) {
            return "Model name should be a valid Java package qualified name"
        }
        if (name.contains('/')) {
            return "Model name must not contain '/'"
        }
        if (atIndex != -1) {
            if (stereotype.isEmpty()) {
                return "Stereotype must not be empty if '@' is present"
            }
            if (stereotype.contains('@')) {
                return "Stereotype must not contain '@'"
            }
        }
        return null
    }

    private companion object {
        const val CONSOLE_LIFETIME_WARNING =
            "Console model imports and used languages last until Console > Clear, a plugin reload or project close; " +
                "module dependencies stay until the console module is recreated. On reopen, only imports referenced " +
                "by history commands are restored."
        const val CONSOLE_REDERIVED_IMPORT_WARNING =
            "The console still references this model, so it may add the import back: the next execute or paste " +
                "re-derives imports from the input and history, Clear from the input only."
        const val CONSOLE_REDERIVED_LANGUAGE_WARNING =
            "The console still uses this language, so it may add it back: the next execute or paste re-derives " +
                "used languages from the input and history, Clear from the input only."
    }

}

enum class ModelOperation {
    RENAME,
    DELETE
}
