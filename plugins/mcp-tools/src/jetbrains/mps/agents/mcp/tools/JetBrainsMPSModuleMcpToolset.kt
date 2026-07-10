package jetbrains.mps.agents.mcp.tools

// MPS APIs used for CRUD
import com.google.gson.JsonArray
import com.google.gson.JsonObject
import com.google.gson.JsonParser
import com.google.gson.JsonPrimitive
import com.intellij.mcpserver.annotations.McpDescription
import com.intellij.mcpserver.annotations.McpTool
import com.intellij.openapi.application.EDT
import com.intellij.openapi.application.WriteAction
import jetbrains.mps.persistence.MementoImpl
import jetbrains.mps.module.PersistenceContextImpl
import jetbrains.mps.project.AbstractModule
import jetbrains.mps.project.MPSProject
import jetbrains.mps.project.modules.DevkitProducer
import jetbrains.mps.project.modules.LanguageAndSolutionsProducer
import jetbrains.mps.project.modules.LanguageProducer
import jetbrains.mps.project.modules.SolutionProducer
import jetbrains.mps.project.structure.modules.Dependency
import jetbrains.mps.project.structure.modules.DevkitDescriptor
import jetbrains.mps.project.structure.modules.GeneratorDescriptor
import jetbrains.mps.project.structure.modules.LanguageDescriptor
import jetbrains.mps.project.structure.modules.ModuleFacetDescriptor
import jetbrains.mps.refactoring.Renamer
import jetbrains.mps.smodel.Generator
import jetbrains.mps.smodel.Language
import jetbrains.mps.smodel.ModuleDependencyVersions
import jetbrains.mps.smodel.adapter.MetaAdapterByDeclaration
import jetbrains.mps.smodel.language.LanguageRegistry
import jetbrains.mps.vfs.IFile
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import org.jetbrains.annotations.Nullable
import org.jetbrains.mps.openapi.module.FacetsFacade
import org.jetbrains.mps.openapi.module.SDependencyScope
import org.jetbrains.mps.openapi.module.SModule
import org.jetbrains.mps.openapi.persistence.Memento
import org.jetbrains.mps.openapi.persistence.PersistenceFacade
import java.util.function.Consumer
import javax.lang.model.SourceVersion

// MCP tool methods use snake_case names because they are part of the public MCP protocol
// surface, and they are invoked via reflection by the MCP server framework, so static
// analysis flags them as "never used".
@Suppress("FunctionName", "unused")
class JetBrainsMPSModuleMcpToolset : AbstractOps() {
    @McpTool
    @McpDescription("""
        Adds or deletes a dependency of an MPS module based on the operation parameter. Supported operations: ADD or DELETE. 
        For ADD: Supported scopes: Default, Design, Compile, Runtime, Provided, Generation Target, Extends. `Extends` is routed per source kind (Language→extendedLanguages, Generator→depGenerators, DevKit→extendedDevkits; Solution and cross-kind combinations are rejected). Returns `{ "added":true }` on change, or `{ "added":false, "reason":"providedByDevKit" }` when the dependency is already supplied by a used DevKit. ADD is an upsert on a single edge: a module holds at most one dependency per source→target pair, so re-adding an existing edge updates its `scope`/`reexport` in place (no duplicate is created) — `added:true` is returned for both a fresh insert and an in-place update. See `mps-aspect-accessories/references/module-level-deps.md` for the scope-dispatch table and the "Extends typically needs a Default companion" note.
        For DELETE: Both the regular `<dependencies>` list and the per-kind `Extends` collection are probed; any removal counts as success. See `mps-aspect-accessories/references/module-level-deps.md` for the dispatch details.
    """)
    suspend fun mps_mcp_module_dependency(
        @McpDescription("Source module name or reference")
        moduleName: String,
        @McpDescription("Target module name or reference")
        targetModule: String,
        @McpDescription("Operation to perform: ADD or DELETE")
        operation: String,
        @McpDescription("Dependency scope (Default by default)")
        @Nullable scope: String? = null,
        @McpDescription("Whether to reexport the dependency (false by default)")
        reexport: Boolean = false
    ): String {
        val op = resolveOperationOrNull<DependencyOperation>(operation)
            ?: return unknownOperation<DependencyOperation>(operation)
        return mps_mcp_module_dependency(moduleName, targetModule, op, scope, reexport)
    }

    /** Internal enum-typed entry point for [mps_mcp_module_dependency]; see [resolveOperationOrNull]. */
    suspend fun mps_mcp_module_dependency(
        moduleName: String,
        targetModule: String,
        operation: DependencyOperation,
        scope: String? = null,
        reexport: Boolean = false,
    ): String = withMpsProject("Adding MPS module dependency") { mpsProject ->
        if (operation == DependencyOperation.DELETE) {
            return@withMpsProject removeModuleDependency(moduleName, targetModule)
        }
        executeShortCommandOnEdt(mpsProject) {
            val resolved = resolveAbstractModuleWithDescriptor(mpsProject, moduleName, requireWritable = true)
            if (resolved is AbstractModuleResolution.Err) {
                return@executeShortCommandOnEdt errJson(resolved.message, resolved.code, resolved.details)
            }
            val (abstractModule, descriptor) = (resolved as AbstractModuleResolution.Ok)

            val target = resolveModulePreferringProject(mpsProject, targetModule)
                ?: return@executeShortCommandOnEdt errJson("Target module $targetModule not found", McpErrorCode.NOT_FOUND)

            val targetRef = target.moduleReference
            if (abstractModule.moduleReference == targetRef) {
                return@executeShortCommandOnEdt errJson("Cannot add dependency to itself", McpErrorCode.INVALID_REQUEST)
            }

            // SDependencyScope.toString() returns the presentation ("Default"), and .name
            // returns the JVM enum constant ("DEFAULT"); both spellings are commonly seen
            // in user input, so accept either.
            val depScope = scope?.let { s ->
                SDependencyScope.entries.find { it.toString().equals(s, ignoreCase = true) || it.name.equals(s, ignoreCase = true) }
            } ?: SDependencyScope.DEFAULT

            if (depScope == SDependencyScope.EXTENDS) {
                // EXTENDS is NOT persisted as a `<dependency scope="extend">` entry. MPS keeps the extension
                // target in a separate descriptor field per module kind, and the regular `<dependencies>`
                // list is only used for non-EXTENDS scopes (see ModuleDependTableModel.getDependencies()
                // / .apply() in workbench/mps-ui). Dispatch accordingly; reject combinations that have no
                // meaning (Solution source, or source/target kind mismatch).
                when {
                    descriptor is LanguageDescriptor && target is Language ->
                        descriptor.extendedLanguages.add(targetRef)
                    descriptor is GeneratorDescriptor && target is Generator ->
                        descriptor.depGenerators.add(targetRef)
                    descriptor is DevkitDescriptor && targetIsDevkit(target) ->
                        descriptor.extendedDevkits.add(targetRef)
                    else -> return@executeShortCommandOnEdt errJson(
                        extendsRejectMessage(descriptor, target),
                        McpErrorCode.INVALID_REQUEST,
                    )
                }
                // Set.add returns false when the entry was already present — the call is still
                // idempotently successful for the caller, so we report added=true either way
                // (matches the behavior of the non-EXTENDS branch when scope/reexport are unchanged).
                abstractModule.setChanged()
                abstractModule.save()
                return@executeShortCommandOnEdt okJson(jsonObject { addProperty("added", true) })
            }

            val existing = descriptor.dependencies.find { it.moduleRef == targetRef }
            if (existing != null) {
                existing.scope = depScope
                existing.isReexport = reexport
            } else {
                val targetLang = if (target is Language) MetaAdapterByDeclaration.getLanguage(target) else null
                val providedByDevkit = isProvidedByUsedDevkit(descriptor.usedDevkits, mpsProject.repository) { dk ->
                    dk.allExportedSolutions.any { it.moduleReference == targetRef } ||
                            (targetLang != null && dk.allExportedLanguageIds.any { it == targetLang })
                }
                if (providedByDevkit) {
                    return@executeShortCommandOnEdt okJson(jsonObject {
                        addProperty("added", false)
                        addProperty("reason", "providedByDevKit")
                    })
                }
                descriptor.dependencies.add(Dependency(targetRef, depScope, reexport))
            }
            abstractModule.setChanged()
            abstractModule.save()
            okJson(jsonObject { addProperty("added", true) })
        }
    }

    private fun targetIsDevkit(target: SModule): Boolean =
        target is jetbrains.mps.project.DevKit

    private fun extendsRejectMessage(
        descriptor: jetbrains.mps.project.structure.modules.ModuleDescriptor,
        target: SModule,
    ): String {
        val srcKind = when (descriptor) {
            is LanguageDescriptor -> "Language"
            is GeneratorDescriptor -> "Generator"
            is DevkitDescriptor -> "DevKit"
            else -> "Solution"
        }
        val tgtKind = when {
            target is Language -> "Language"
            target is Generator -> "Generator"
            targetIsDevkit(target) -> "DevKit"
            else -> "Solution"
        }
        return when (srcKind) {
            "Solution" ->
                "Scope 'Extends' is not applicable to Solution modules (Solutions do not extend other modules)"
            else ->
                "Scope 'Extends' for a $srcKind source requires a $srcKind target, got $tgtKind"
        }
    }

    private suspend fun removeModuleDependency(moduleName: String, targetModule: String
    ): String = withMpsProject("Removing MPS module dependency") { mpsProject ->
        executeShortCommandOnEdt(mpsProject) {
            val resolved = resolveAbstractModuleWithDescriptor(mpsProject, moduleName, requireWritable = true)
            if (resolved is AbstractModuleResolution.Err) {
                return@executeShortCommandOnEdt errJson(resolved.message, resolved.code, resolved.details)
            }
            val (abstractModule, descriptor) = (resolved as AbstractModuleResolution.Ok)

            // Resolve target first for consistency with mps_mcp_module_dependency. Fall back to
            // a name/serialized-reference match against any of the descriptor's reference collections
            // (regular deps, extendedLanguages, depGenerators, extendedDevkits) so the user can still
            // remove an entry whose target module is no longer in the project.
            val persistence = PersistenceFacade.getInstance()
            val resolvedTargetRef = resolveModulePreferringProject(mpsProject, targetModule)?.moduleReference
            val targetRef = resolvedTargetRef
                ?: descriptor.dependencies.find {
                    it.moduleRef.moduleName == targetModule ||
                            persistence.asString(it.moduleRef) == targetModule
                }?.moduleRef
                ?: extendsCollections(descriptor)
                    .flatMap { it.asSequence() }
                    .firstOrNull {
                        it.moduleName == targetModule || persistence.asString(it) == targetModule
                    }
                ?: return@executeShortCommandOnEdt errJson(
                    "Dependency to $targetModule not found in $moduleName",
                    McpErrorCode.NOT_FOUND,
                )

            val removedFromDeps = descriptor.dependencies.removeIf { it.moduleRef == targetRef }
            val removedFromExtends = extendsCollections(descriptor)
                .map { it.remove(targetRef) }
                .fold(false) { acc, r -> acc || r }
            if (!removedFromDeps && !removedFromExtends) {
                return@executeShortCommandOnEdt errJson(
                    "Dependency to $targetModule not found in $moduleName",
                    McpErrorCode.NOT_FOUND,
                )
            }
            abstractModule.setChanged()
            abstractModule.save()
            okJson("true")
        }
    }

    /**
     * Returns the Extends-side reference collections that the given descriptor exposes
     * (empty list for descriptors that have none, e.g. SolutionDescriptor). The returned
     * collections are live and mutable.
     */
    private fun extendsCollections(
        descriptor: jetbrains.mps.project.structure.modules.ModuleDescriptor
    ): List<MutableSet<org.jetbrains.mps.openapi.module.SModuleReference>> = when (descriptor) {
        is LanguageDescriptor -> listOf(descriptor.extendedLanguages)
        is GeneratorDescriptor -> listOf(descriptor.depGenerators)
        is DevkitDescriptor -> listOf(descriptor.extendedDevkits)
        else -> emptyList()
    }

    @McpTool
    @McpDescription("""
        Creates a new, empty MPS module of the given type at the specified directory (created if missing). Types: `solution` | `language` | `devkit` | `generator`. `directory` is required for `solution`/`language`/`devkit`. `type=generator` requires `parentLanguage`; its `directory` is optional and defaults to `<parent-language-dir>/generator` when omitted or blank — a pre-existing *empty* directory at the target is reused (only a non-empty directory or a non-directory file is rejected). Creating a generator also scaffolds its `templates@generator` model with a `main` `MappingConfiguration`, so the module is immediately ready for mapping/reduction rules. `type=language` accepts the `withGenerator`/`withSandbox`/`withRuntime` companion flags. The optional `facets` value (one type or a JSON array) is allowed only for `solution`/`language` (rejected upfront for `devkit`/`generator`); unknown facet types fail before the module is produced. Returns the new module's info envelope (same shape as `mps_mcp_get_project_structure(startingPoint=<module>)`). See `mps-aspect-accessories/references/module-creation.md` for the facets policy and `module-info-fields.md` for the return-envelope fields.
    """
    )
    suspend fun mps_mcp_create_module(
        @McpDescription("Module type: solution|language|devkit|generator") type: String,
        @McpDescription("Module name or namespace. Ignored for type='generator' — the generator's name is derived as '<parentLanguage>.generator'.") name: String,
        @McpDescription("Absolute directory for the module; created by the tool if missing. Required for solution/language/devkit. Optional for 'generator': omit or leave blank to default to '<parent-language-dir>/generator'; an existing empty directory at the target is reused.") @Nullable directory: String? = null,
        @McpDescription("Optional Project View virtual folder") @Nullable virtualFolder: String? = null,
        @McpDescription("Required only when type='generator'; ignored otherwise") @Nullable parentLanguage: String? = null,
        @McpDescription("For language: also create a generator") withGenerator: Boolean = false,
        @McpDescription("For language: also create a sandbox solution") withSandbox: Boolean = false,
        @McpDescription("For language: also create a runtime solution") withRuntime: Boolean = false,
        @McpDescription("Optional additional facet type or JSON array of facet types (e.g. `tests` or [\"tests\"] for a test-container Solution). Omit or pass [] for no additional facets. See the tool description for dedup, unknown-type, and module-type-restriction rules.") @Nullable facets: String? = null
    ): String = mps_mcp_create_module(
        type,
        name,
        directory,
        virtualFolder,
        parentLanguage,
        withGenerator,
        withSandbox,
        withRuntime,
        parseNullableStringOrJsonArray(facets),
    )

    /**
     * Internal list-typed entry point for [mps_mcp_create_module]. Deliberately *not* annotated
     * with `@McpTool`: the String-typed overload above accepts either a single facet type or a
     * JSON array without requiring the MCP bridge to decode a scalar as a list. Retained as a
     * direct entry point for in-process callers and tests.
     */
    suspend fun mps_mcp_create_module(
        type: String,
        name: String,
        @Nullable directory: String? = null,
        @Nullable virtualFolder: String? = null,
        @Nullable parentLanguage: String? = null,
        withGenerator: Boolean = false,
        withSandbox: Boolean = false,
        withRuntime: Boolean = false,
        @Nullable facets: List<String>?
    ): String = withMpsProject("Create MPS module") { mpsProject ->
        // Holds either the created module or an error string. The block sets exactly one.
        var created: SModule? = null
        var error: String? = null
        // Companion modules registered alongside `created` by the producer (e.g. a
        // Language's generator/runtime/sandbox sub-modules). Rollback must un-register
        // these too, otherwise a failure to attach facets on the primary leaves
        // orphan companions in the project while the caller sees an error envelope.
        // The Language branch fills this in; other branches leave it empty.
        var companionsForRollback: List<SModule> = emptyList()

        // Pre-validate `facets` BEFORE entering the write command: an unknown facet type
        // discovered mid-command would otherwise leave a partially-created module on disk
        // and registered with the project — easier on the caller to refuse upfront.
        val requestedFacets: List<String> = facets
            ?.map { it.trim() }
            ?.filter { it.isNotEmpty() }
            ?: emptyList()
        if (requestedFacets.isNotEmpty()) {
            // Reject facets paired with module kinds that have no use for them. DevKits
            // carry no JavaModuleFacet by default and have no test/runtime semantics;
            // Generators inherit their facet shape from the parent Language and the tool
            // surface offers no canonical use case for layering extra facets on top.
            // Failing upfront beats producing a module with a meaningless facet attached.
            val normalizedTypeForFacetCheck = type.lowercase()
            if (normalizedTypeForFacetCheck == "devkit" || normalizedTypeForFacetCheck == "generator") {
                return@withMpsProject errJson(
                    "Parameter 'facets' is not supported for module type '$type'; only 'solution' and 'language' accept additional facets",
                    McpErrorCode.INVALID_REQUEST,
                )
            }
            // `FacetsFacade` is a static registry and lookups are not documented to require
            // model access, but neighboring toolset code (e.g. mps_mcp_list_facet_types)
            // already wraps facet-registry reads in a read action — do the same here to
            // stay safe if a future MPS revision starts checking for one.
            val unknown = executeShortReadOnEdt(mpsProject) {
                @Suppress("DEPRECATION")
                val ff = FacetsFacade.getInstance()
                requestedFacets.filter { ff.getFacetFactory(it) == null }
            }
            if (unknown.isNotEmpty()) {
                return@withMpsProject errJson(
                    "Unknown facet type(s): ${unknown.joinToString(", ")}",
                    McpErrorCode.INVALID_REQUEST,
                )
            }
        }

        withContext(Dispatchers.EDT) {
                mpsProject.repository.modelAccess.executeCommand {
                    val fs: jetbrains.mps.vfs.openapi.FileSystem = mpsProject.fileSystem
                    val normalizedType = type.lowercase()
                    // `directory` is optional at the protocol level (nullable, no default). Normalize a
                    // missing/blank value to the empty string so the per-kind logic below has a single
                    // shape: empty means "use the kind's default location" (only 'generator' has one),
                    // non-empty means "use exactly this path".
                    val dir = directory?.trim().orEmpty()
                    // m: only 'generator' may default directory from its parent language; for
                    // every other module kind an empty directory is a programming error that
                    // used to surface as `fs.getFile("").mkdirs()` producing a non-recoverable
                    // file system state. Reject it early with a structured error.
                    if (normalizedType != "generator" && dir.isEmpty()) {
                        error = "Parameter 'directory' must be non-empty for module type '$type'"
                        return@executeCommand
                    }
                    // The generator branch resolves AND creates its own location (the default
                    // '<parent-language-dir>/generator' or the explicit `dir`). It must NOT be
                    // pre-created here: for a non-empty `dir` that used to make the generator
                    // branch's own existence check fire on the directory this code had just
                    // created, aborting every non-empty-directory generator creation. So `dirFile`
                    // is always null for generators; the other kinds reuse an existing directory or
                    // create it here.
                    val dirFile: IFile? = if (normalizedType == "generator") {
                        null // resolved (and created) per-branch
                    } else {
                        fs.findExistingFile(dir) ?: fs.getFile(dir).also { it.mkdirs() }
                    }

                    when (normalizedType) {
                        "solution" -> {
                            try {
                                val sol = SolutionProducer(mpsProject).create(name, dirFile!!)
                                applyVirtualFolder(mpsProject, sol, virtualFolder)
                                created = sol
                            } catch (e: IllegalStateException) {
                                throw McpInvalidRequestException(e.message ?: "Collision detected during module creation")
                            } catch (e: IllegalArgumentException) {
                                throw McpInvalidRequestException(e.message ?: "Collision detected during module creation")
                            }
                        }
                        "devkit" -> {
                            try {
                                val dk = DevkitProducer(mpsProject).create(name, dirFile!!)
                                applyVirtualFolder(mpsProject, dk, virtualFolder)
                                created = dk
                            } catch (e: IllegalStateException) {
                                throw McpInvalidRequestException(e.message ?: "Collision detected during module creation")
                            } catch (e: IllegalArgumentException) {
                                throw McpInvalidRequestException(e.message ?: "Collision detected during module creation")
                            }
                        }
                        "language" -> {
                            try {
                                val lp = LanguageAndSolutionsProducer(mpsProject)
                                    .withGenerator(withGenerator)
                                    .withRuntimeSolution(withRuntime)
                                    .withSandboxSolution(withSandbox)
                                val lang = lp.create(name, dirFile!!)
                                if (virtualFolder != null) {
                                    applyVirtualFolder(mpsProject, lang, virtualFolder)
                                    lp.runtimeSolution.ifPresent { applyVirtualFolder(mpsProject, it, virtualFolder) }
                                    lp.sandboxSolution.ifPresent { applyVirtualFolder(mpsProject, it, virtualFolder) }
                                    lang.generators.forEach { applyVirtualFolder(mpsProject, it, virtualFolder) }
                                }
                                lang.save()
                                // Persist all sub-modules the producer created. Without this, an opted-in
                                // runtime/sandbox solution or generator would stay dirty in memory until a
                                // later, unrelated save flushed them — which is fragile and order-dependent.
                                lp.runtimeSolution.ifPresent { it.save() }
                                lp.sandboxSolution.ifPresent { it.save() }
                                lang.generators.forEach { it.save() }
                                created = lang
                                // Record companions so a later facet-attachment failure can
                                // unregister them alongside the Language. Without this, the
                                // create-call's "no partial state is left behind" guarantee
                                // would not hold for `withGenerator`/`withRuntime`/`withSandbox`.
                                val companions = mutableListOf<SModule>()
                                lp.runtimeSolution.ifPresent { companions.add(it) }
                                lp.sandboxSolution.ifPresent { companions.add(it) }
                                lang.generators.forEach { companions.add(it) }
                                companionsForRollback = companions
                            } catch (e: IllegalStateException) {
                                throw McpInvalidRequestException(e.message ?: "Collision detected during module creation")
                            } catch (e: IllegalArgumentException) {
                                throw McpInvalidRequestException(e.message ?: "Collision detected during module creation")
                            }
                        }
                        "generator" -> {
                            val parentLangName = parentLanguage
                            if (parentLangName.isNullOrBlank()) {
                                error = "Generator creation requires 'parentLanguage'"
                                return@executeCommand
                            }
                            // Look up the Language *module* (not the runtime SLanguage). resolveLanguage
                            // returns SLanguage which cannot be cast to jetbrains.mps.smodel.Language —
                            // they are unrelated types — so route the lookup through the module resolver
                            // and reject anything that isn't an actual Language module.
                            val parentLang = resolveModule(mpsProject, parentLangName, projectOnly = true) as? Language
                            if (parentLang == null) {
                                error = "Parent language not found or is not a Language module: $parentLangName"
                                return@executeCommand
                            }
                            val parentDescriptorFile = parentLang.descriptorFile
                            if (parentDescriptorFile == null) {
                                error = "Parent language '$parentLangName' has no descriptor file on disk"
                                return@executeCommand
                            }

                            val generatorLocation = if (dir.isEmpty()) {
                                parentDescriptorFile.parent?.findChild("generator")
                            } else {
                                fs.getFile(dir)
                            }
                            if (generatorLocation == null) {
                                error = "Could not determine generator location (directory='$dir')"
                                return@executeCommand
                            }
                            // Tolerate a pre-existing EMPTY directory at the target location: the
                            // conventional '<lang>/generator' folder is often laid out as empty
                            // scaffolding before any generator exists, and a language-owned generator
                            // has no separate descriptor file to collide with (it lives in the parent
                            // '.mpl'). Approximate NewModuleCheck.checkHome: reject only a non-directory
                            // file or a directory that already holds "real" content. We deviate from
                            // checkHome's VFileProperty.HIDDEN test and instead skip dotfiles and
                            // FS-ignored entries (e.g. '.DS_Store', VCS metadata) so an otherwise-empty
                            // scaffold dir is reused; an empty (or all-skipped) directory falls through
                            // to the mkdirs() below, which is then a no-op.
                            if (generatorLocation.exists()) {
                                if (!generatorLocation.isDirectory) {
                                    error = "The generator location $generatorLocation already exists and is not a directory"
                                    return@executeCommand
                                }
                                val nonHiddenChildren = generatorLocation.children
                                    ?.filter { !it.name.startsWith(".") && !it.isIgnored }
                                    ?: emptyList()
                                if (nonHiddenChildren.isNotEmpty()) {
                                    error = "The generator location $generatorLocation already exists and is not empty; " +
                                            "pass a different 'directory' or remove its contents"
                                    return@executeCommand
                                }
                            }
                            // Track whether THIS call created the directory (vs. reused a pre-existing
                            // empty one) so rollback only deletes a folder we own.
                            val createdGeneratorDir = !generatorLocation.exists()
                            generatorLocation.mkdirs()

                            val languageDescriptor = parentLang.moduleDescriptor
                            val generatorDescriptor = LanguageProducer.createGeneratorDescriptor(parentLang.moduleName + ".generator", generatorLocation, null)
                            generatorDescriptor.sourceLanguage = languageDescriptor.moduleReference

                            // Undo a partially-created generator if any step below fails. Unlike the
                            // facet path (which has its own rollback), the generator path mutates the
                            // parent language's descriptor, may register a generator module, and may
                            // lay down a templates model — a throw or the "not registered" guard would
                            // otherwise strand the parent '.mpl' half-mutated plus an empty generator
                            // dir on disk. Best-effort: the primary error is what the caller needs.
                            fun rollbackGeneratorCreation() {
                                runCatching {
                                    if (languageDescriptor.generators.removeIf { it.moduleReference == generatorDescriptor.moduleReference }) {
                                        // Re-apply the cleaned descriptor so revalidateGenerators
                                        // unregisters any generator the failed attempt instantiated.
                                        parentLang.setModuleDescriptor(languageDescriptor)
                                    }
                                    // Safety belt: drop a generator that is somehow still registered.
                                    val stray = parentLang.generators
                                        .firstOrNull { it.moduleReference == generatorDescriptor.moduleReference }
                                    if (stray != null && mpsProject.repository.getModule(stray.moduleReference.moduleId) != null) {
                                        runCatching { mpsProject.removeModule(stray) }
                                    }
                                    parentLang.save()
                                }
                                // Only remove a directory we created — never a reused pre-existing one.
                                if (createdGeneratorDir) {
                                    runCatching { if (generatorLocation.exists()) generatorLocation.delete() }
                                }
                            }

                            try {
                                languageDescriptor.generators.add(generatorDescriptor)
                                // setModuleDescriptor → Language.revalidateGenerators already instantiates
                                // the new Generator with its model roots and registers it with the
                                // project's repository. Calling ModuleRepositoryFacade.instantiate(...) and
                                // addModule afterwards used to produce a duplicate, half-built Generator
                                // with empty model roots, which then crashed
                                // LanguageProducer.createTemplateModelIfNoneYet. Look up the registered
                                // generator instead.
                                parentLang.setModuleDescriptor(languageDescriptor)

                                val generator = parentLang.generators
                                    .singleOrNull { it.moduleReference == generatorDescriptor.moduleReference }
                                    ?: run {
                                        rollbackGeneratorCreation()
                                        error = "Generator was not registered with parent language after descriptor update: ${generatorDescriptor.moduleReference}"
                                        return@executeCommand
                                    }

                                LanguageProducer.createTemplateModelIfNoneYet(mpsProject, generator)

                                val mv = ModuleDependencyVersions(mpsProject.getComponent(LanguageRegistry::class.java), mpsProject.repository)
                                mv.update(parentLang)
                                parentLang.save()
                                mv.update(generator)
                                generator.save()

                                applyVirtualFolder(mpsProject, generator, virtualFolder)
                                created = generator
                            } catch (t: Throwable) {
                                rethrowIfCancellation(t)
                                if (t is Error) throw t
                                rollbackGeneratorCreation()
                                created = null
                                error = "Failed to create generator for language '$parentLangName': ${t.message ?: t.toString()}"
                                return@executeCommand
                            }
                        }
                        else -> {
                            error = "Unsupported module type '$type'"
                        }
                    }

                    // Attach any extra facets requested by the caller AFTER the producer ran:
                    // producers install the default `java` facet themselves, but anything
                    // language-specific (e.g. `tests` for `@tests` model containers) is the
                    // caller's responsibility. Facet types were pre-validated above.
                    //
                    // If this fails after the producer has already registered the module, we
                    // must un-register it before returning the error — otherwise the caller
                    // sees a failure envelope while a partial module lingers in the project.
                    val createdModule = created
                    if (createdModule != null && requestedFacets.isNotEmpty()) {
                        val abstractModule = createdModule as? AbstractModule
                        val descriptor = abstractModule?.moduleDescriptor
                        if (abstractModule == null || descriptor == null) {
                            error = if (abstractModule == null) {
                                "Cannot attach facets to module '${createdModule.moduleName}': not an AbstractModule"
                            } else {
                                "Cannot attach facets to module '${createdModule.moduleName}': descriptor is null"
                            }
                            // Roll back the producer's registration: the user asked for a module
                            // with these facets and is going to see an error, so leaving the
                            // half-built module behind would be worse than the failure itself.
                            rollbackPartialCreation(mpsProject, createdModule, companionsForRollback)
                            created = null
                            return@executeCommand
                        }
                        // Mutate `descriptor.moduleFacetDescriptors` in-place, then call
                        // `setModuleDescriptor(descriptor)`. This is the canonical pattern
                        // MPS itself uses for facet installation — see how `JavaModuleFacetImpl`
                        // and `TestsFacetImpl` install themselves via `moduleFacetDescriptors`
                        // + `setModuleDescriptor` — and matches what `mps_mcp_update_module_facet`
                        // does in this same file. There is no public `addFacet(type)` API on
                        // `AbstractModule`; the descriptor route is the supported way to attach
                        // a facet by type identifier.
                        //
                        // Wrap the loop + setModuleDescriptor + save in try/catch: pre-validation
                        // already filtered unknown facet types, but a future MPS revision could
                        // validate the descriptor more strictly, a facet factory could surface
                        // an unexpected side-effect, or `save()` could fail with an IO error.
                        // Any such throwable here would otherwise escape `executeCommand` with
                        // the producer-registered module still in the project — exactly the
                        // half-built state the rollback machinery exists to prevent.
                        try {
                            var added = false
                            for (facetType in requestedFacets) {
                                // Skip if an equivalent facet is already attached by the producer (e.g. `java`)
                                // or by a previous iteration of this loop. Overwriting would wipe any
                                // default settings the producer configured (e.g. JavaModuleFacet's
                                // `LoadExtensions`/source-root layout). Callers who need non-default
                                // settings should follow up with `mps_mcp_update_module_facet`.
                                if (descriptor.moduleFacetDescriptors.any { it.type == facetType }) {
                                    continue
                                }
                                descriptor.moduleFacetDescriptors.add(ModuleFacetDescriptor(facetType, MementoImpl()))
                                added = true
                            }
                            // Skip `setModuleDescriptor`/`save` when every requested facet was
                            // already attached. Otherwise we'd force a descriptor reload and an
                            // on-disk write for a module that didn't logically change — wasteful
                            // and a small risk surface if a future `setModuleDescriptor` change
                            // introduces a side-effect on transient module state.
                            if (added) {
                                abstractModule.setModuleDescriptor(descriptor)
                                abstractModule.save()
                            }
                        } catch (t: Throwable) {
                            rethrowIfCancellation(t)
                            if (t is Error) throw t
                            error = "Failed to attach facets to module '${createdModule.moduleName}': ${t.message ?: t.toString()}"
                            rollbackPartialCreation(mpsProject, createdModule, companionsForRollback)
                            created = null
                            mpsProject.save()
                            return@executeCommand
                        }
                    }
                }
                if (created != null && error == null) {
                    // Producers register solution/devkit/language with the project themselves; the
                    // generator branch already calls addModule() inside the executeCommand block.
                    // Just persist project state here.
                    mpsProject.save()
                }
            }
        val finalError = error
        val finalCreated = created
        when {
            finalError != null -> errJson(finalError)
            finalCreated != null -> okJson(moduleInfoJson(mpsProject, finalCreated))
            else -> errJson("Module creation failed for unknown reason")
        }
    }

    @McpTool
    @McpDescription("""
        Updates or deletes an MPS module based on the `operation` parameter:
        - RENAME (default): renames the module (Solution / Language / DevKit). `newName` must be a valid Java-package qualified name. Generator modules cannot be renamed through this tool; rename the parent Language instead (the rename cascades into owned generators). Returns the module info envelope plus optional `renameWarnings` / `renameCriticalProblems` arrays. See `mps-aspect-accessories/references/module-rename.md` for the cascade behavior, in-project-only reference rewrites, and the warnings semantics.
        - CHANGE_VIRTUAL_FOLDER: changes the Project View virtual folder of the module. `newName` is the new folder path (e.g. "Group/Subgroup").
        - DELETE: removes the module from the project. Set `deleteFiles=true` to also remove module files from disk.
    """
    )
    suspend fun mps_mcp_update_module(
        @McpDescription("Existing module name or reference") moduleName: String,
        @McpDescription("New name or value for the operation: new qualified name for RENAME, new folder path for CHANGE_VIRTUAL_FOLDER, or ignored for DELETE.") @Nullable newName: String? = null,
        @McpDescription("Operation to perform: RENAME, CHANGE_VIRTUAL_FOLDER, or DELETE. Default is RENAME.") operation: String = "RENAME",
        @McpDescription("For DELETE only: whether to also delete module files from disk.") deleteFiles: Boolean = false,
    ): String {
        val op = resolveOperationOrNull<ModuleOperation>(operation)
            ?: return unknownOperation<ModuleOperation>(operation)
        return mps_mcp_update_module(moduleName, newName, op, deleteFiles)
    }

    /** Internal enum-typed entry point for [mps_mcp_update_module]; see [resolveOperationOrNull]. */
    suspend fun mps_mcp_update_module(
        moduleName: String,
        newName: String? = null,
        operation: ModuleOperation,
        deleteFiles: Boolean = false,
    ): String = when (operation) {
        ModuleOperation.RENAME -> withMpsProject("Update MPS module") { mpsProject ->
            val trimmedNewName = newName?.trim()?.takeIf { it.isNotEmpty() }
                ?: return@withMpsProject errJson("Nothing to rename: provide newName", McpErrorCode.INVALID_REQUEST)
            validateModuleName(trimmedNewName)?.let {
                return@withMpsProject errJson(it, McpErrorCode.INVALID_REQUEST)
            }
            // The Renamer follows the same 3-phase shape the IDE dialog uses:
            //   1. collectRenames()   — requires a read action
            //   2. prepareRename()    — no model access needed
            //   3. runRenameCommand() — opens its own write command internally
            // The phases share state on the Renamer instance and must run in order on the
            // same instance, so we cannot fold them into a single executeCommand block.
            val renameProblems = mutableListOf<Renamer.RenameProblem>()
            val (r, oldId) = executeShortReadOnEdt(mpsProject) {
                val m = resolveModule(mpsProject, moduleName)
                    ?: throw McpNotFoundException("Module '$moduleName' not found")
                if (m !is AbstractModule) {
                    throw McpInvalidRequestException("Module '$moduleName' is not renameable (not an AbstractModule)")
                }
                if (m.isReadOnly) {
                    throw McpNotEditableException("Module '$moduleName' is read-only")
                }
                if (m is Generator) {
                    throw McpInvalidRequestException(
                        "Generator modules cannot be renamed through this tool — rename the parent Language instead, which cascade-renames its owned generators."
                    )
                }
                if (m.descriptorFile == null) {
                    throw McpInvalidRequestException("Module '$moduleName' has no descriptor file and cannot be renamed")
                }
                if (trimmedNewName != m.moduleName) {
                    val clash = mpsProject.repository.modules.firstOrNull {
                        it != m && trimmedNewName == it.moduleName
                    }
                    if (clash != null) {
                        throw McpInvalidRequestException("Module name '$trimmedNewName' is already in use in the repository")
                    }
                }
                val renamer = Renamer(mpsProject, m, Consumer { renameProblems.add(it) }).also { it.collectRenames() }
                renamer to m.moduleReference.moduleId
            }
            withContext(Dispatchers.EDT) {
                r.prepareRename(trimmedNewName)
                if (r.hasPrimaryRename() || r.hasDependantRenames()) {
                    r.runRenameCommand()
                }
            }
            val updated = executeShortCommandOnEdt(mpsProject) {
                mpsProject.repository.getModule(oldId)
                    ?: throw McpUserException(
                        McpErrorCode.INTERNAL_ERROR,
                        "Rename completed but the renamed module could not be located by id $oldId",
                    )
            }
            val info = moduleInfoJsonObject(mpsProject, updated)
            val warnings = JsonArray()
            val critical = JsonArray()
            for (p in renameProblems) {
                when (p.severity) {
                    Renamer.RenameProblem.Severity.CRITICAL -> critical.add(JsonPrimitive(p.presentation))
                    Renamer.RenameProblem.Severity.NON_CRITICAL -> warnings.add(JsonPrimitive(p.presentation))
                    Renamer.RenameProblem.Severity.NO_PROBLEM -> {}
                }
            }
            if (warnings.size() > 0) info.add("renameWarnings", warnings)
            if (critical.size() > 0) info.add("renameCriticalProblems", critical)
            okJson(info)
        }

        ModuleOperation.CHANGE_VIRTUAL_FOLDER -> withMpsProject("Update MPS module") { mpsProject ->
            val folder = newName?.trim()?.takeIf { it.isNotEmpty() }
                ?: return@withMpsProject errJson("Nothing to update: provide newName (virtual folder path)", McpErrorCode.INVALID_REQUEST)
            val (updated, folderFailure) = executeShortCommandOnEdt(mpsProject) {
                val m = resolveModule(mpsProject, moduleName)
                    ?: throw McpNotFoundException("Module '$moduleName' not found")
                // n1: surface virtual folder failures as warnings rather than errors so the
                // module info is still returned along with the failure detail.
                val failure = warningMessageOrRethrow {
                    mpsProject.setVirtualFolder(m, folder)
                    (m as? AbstractModule)?.setChanged()
                }
                m to failure
            }
            if (folderFailure == null) {
                withContext(Dispatchers.EDT) {
                    mpsProject.save()
                }
            }
            val info = moduleInfoJsonObject(mpsProject, updated)
            folderFailure?.let {
                val warnings = JsonArray()
                warnings.add(JsonPrimitive("Failed to set virtual folder: $it"))
                info.add("warnings", warnings)
            }
            okJson(info)
        }

        ModuleOperation.DELETE -> deleteModule(moduleName, deleteFiles)
    }

    /**
     * Mirrors [jetbrains.mps.ide.refactoring.RenameModuleDialog.checkValue]: the new module
     * name must be a valid Java-package-style qualified name. Returns a user-facing error
     * message when invalid, or null when the name passes validation.
     */
    private fun validateModuleName(name: String): String? {
        if (name.isEmpty()) {
            return "Module name must not be empty"
        }
        if (!Character.isJavaIdentifierStart(name[0])) {
            return "Module name can't start with '${name[0]}'"
        }
        if (!Character.isJavaIdentifierPart(name[name.length - 1])) {
            return "Module name can't end with '${name[name.length - 1]}'"
        }
        if (!SourceVersion.isName(name)) {
            return "Module name should be a valid Java package qualified name"
        }
        return null
    }

    private suspend fun deleteModule(
        moduleName: String,
        deleteFiles: Boolean
    ): String = withMpsProject("Delete MPS module") { mpsProject ->
        var removed: SModule? = null
        var removedName: String? = null
        // Capture the descriptor file's parent BEFORE removing the module: after
        // removeModule() the descriptor wiring may be torn down.
        var moduleDir: IFile? = null
        withContext(Dispatchers.EDT) {
            mpsProject.repository.modelAccess.executeCommand {
                val m = resolveModule(mpsProject, moduleName) ?: return@executeCommand
                // Record the target up front; the rest of the block is the actual removal
                // sequence and shouldn't be interrupted by bookkeeping assignments.
                removed = m
                // Read the resolved module name under the model lock; after removeModule()
                // the SModule may be detached and reading state is not guaranteed safe.
                removedName = m.moduleName
                if (deleteFiles) {
                    moduleDir = (m as? AbstractModule)?.descriptorFile?.parent
                }
                // Mark the module as changed BEFORE removing it from the project so any
                // pending in-memory state is persisted by the subsequent project save.
                (m as? AbstractModule)?.setChanged()
                mpsProject.removeModule(m)
            }
            // o1: save outside the executeCommand block. Project save performs
            // descriptor file I/O which doesn't need the model-access write lock,
            // and holding the lock across that I/O would block concurrent model
            // operations. The in-memory removal inside the command is the part
            // that must be atomic; the subsequent persistence does not. Matches
            // the post-rename save pattern in mps_mcp_update_module above.
            if (removed != null) {
                mpsProject.save()
            }
        }
        if (removed == null) {
            return@withMpsProject errJson("Module '$moduleName' not found", McpErrorCode.NOT_FOUND)
        }
        var fsWarning: String? = null
        val dir = moduleDir
        if (deleteFiles && dir != null) {
            // IFile.delete() routes to VirtualFile.delete(), which asserts an active write
            // action. The executeCommand block above (which would have satisfied that, just
            // like the rollback path's in-command descriptorFile.delete()) has already closed,
            // so the on-disk removal must re-enter a write action on the EDT. Running it bare
            // here — as before — only threw the write-access assertion into fsWarning and left
            // the directory on disk. We keep the I/O out of the model-access command (the o1
            // note's intent) by re-entering only a write action, not the model command; the
            // save() above already flushed descriptor I/O so the VFS view is current.
            var deleted = false
            fsWarning = warningMessageOrRethrow {
                withContext(Dispatchers.EDT) {
                    WriteAction.runAndWait<Throwable> { deleted = dir.delete() }
                }
            }
            // delete() reports an unthrown failure (missing VFS entry / IOException it swallowed
            // internally) as a false return; surface it so the response doesn't claim a clean
            // removal while files remain.
            if (fsWarning == null && !deleted) {
                fsWarning = "Could not delete module directory: ${dir.path}"
            }
        }
        val payload = jsonObject {
            addProperty("name", removedName ?: moduleName)
            addProperty("deleted", true)
            if (fsWarning != null) {
                addProperty("fileDeletionWarning", fsWarning)
            }
        }
        okJson(payload)
    }

    @McpTool
    @McpDescription("""
        Lists all available module facet types and their applicability to a specific module (if provided).

        Returns a JSON object with 'ok':true and 'data':{ "module": {...}, "facetTypes": [{type, presentation, applicableToModule, recommendedForModule}, ...] } on success, or 'ok':false and 'error':"..." on failure. The `module` context is present when `moduleName` is supplied.
    """)
    // FacetsFacade.getInstance() is deprecated in favour of obtaining the registry via the
    // owning ComponentPlugin (e.g. MPSCore), which requires plumbing a ComponentPlugin handle
    // into the MCP toolsets. Tracked under phase 6 as a deferred architectural change.
    @Suppress("DEPRECATION")
    suspend fun mps_mcp_list_facet_types(
        @McpDescription("Optional module name or reference to check applicability") @Nullable moduleName: String? = null
    ): String = withMpsProject("Listing module facet types") { mpsProject ->
        executeShortReadOnEdt(mpsProject) {
            val ff = FacetsFacade.getInstance()
                ?: throw McpUserException(McpErrorCode.INTERNAL_ERROR, "FacetsFacade service is not available")
            val module = moduleName?.let { resolveModulePreferringProject(mpsProject, it) }
            val recommendedTypes = module?.let { ff.getApplicableFacetTypes(it.usedLanguages) } ?: emptySet()

            val jsonArray = JsonArray()
            for (type in ff.facetTypes.sorted()) {
                val factory = ff.getFacetFactory(type)
                val obj = JsonObject()
                obj.addProperty("type", type)
                obj.addProperty("presentation", factory?.presentation ?: "")
                if (module != null) {
                    obj.addProperty("applicableToModule", factory?.isApplicable(module) ?: true)
                    obj.addProperty("recommendedForModule", recommendedTypes.contains(type))
                }
                jsonArray.add(obj)
            }
            val resObj = JsonObject()
            module?.let {
                resObj.add("module", moduleFacetContextJsonObject(it, mpsProject))
            }
            resObj.add("facetTypes", jsonArray)
            okJson(resObj)
        }
    }

    @McpTool
    @McpDescription("""
        Gets information about active and persisted facets of a module.

        Returns a JSON object with 'ok':true and 'data':{ "module": {...}, "activeFacets": [...], "persistedFacets": [...], "discrepancies": [...] } on success, or 'ok':false and 'error':"..." on failure.
    """)
    // See note above mps_mcp_list_facet_types regarding deprecated FacetsFacade.getInstance().
    @Suppress("DEPRECATION")
    suspend fun mps_mcp_get_module_facets(
        @McpDescription("Module name or reference") moduleName: String
    ): String = withMpsProject("Getting module facets") { mpsProject ->
        executeShortReadOnEdt(mpsProject) {
            val module = resolveModulePreferringProject(mpsProject, moduleName)
            if (module == null) {
                errJson("Module $moduleName not found", McpErrorCode.NOT_FOUND)
            } else {
                val ff = FacetsFacade.getInstance()
                    ?: throw McpUserException(McpErrorCode.INTERNAL_ERROR, "FacetsFacade service is not available")
                val abstractModule = module as? AbstractModule
                val persistenceContext = if (abstractModule != null) PersistenceContextImpl.forModule(abstractModule) else PersistenceContextImpl.empty()

                val activeFacets = JsonArray()
                for (facet in module.facets) {
                    val obj = JsonObject()
                    obj.addProperty("type", facet.facetType)
                    obj.addProperty("attached", facet.isAttached)
                    obj.addProperty("presentation", ff.getFacetFactory(facet.facetType)?.presentation ?: "")
                    val memento = MementoImpl()
                    facet.save(memento, persistenceContext)
                    obj.add("stateMemento", mementoToJson(memento, facet.facetType))
                    activeFacets.add(obj)
                }

                val persistedFacets = JsonArray()
                val discrepancies = JsonArray()
                abstractModule?.moduleDescriptor?.moduleFacetDescriptors?.forEach { fd ->
                    val obj = JsonObject()
                    obj.addProperty("type", fd.type)
                    obj.add("memento", mementoToJson(fd.memento, fd.type))
                    persistedFacets.add(obj)

                    val facet = module.getFacetOfType(fd.type)
                    if (facet != null) {
                        val currentMemento = MementoImpl()
                        facet.save(currentMemento, persistenceContext)
                        if (!mementosEqual(currentMemento, fd.memento, fd.type)) {
                            discrepancies.add(fd.type)
                        }
                    }
                }

                val resObj = JsonObject()
                resObj.add("module", moduleFacetContextJsonObject(module, mpsProject))
                resObj.add("activeFacets", activeFacets)
                resObj.add("persistedFacets", persistedFacets)
                resObj.add("discrepancies", discrepancies)
                okJson(resObj)
            }
        }
    }

    private fun moduleFacetContextJsonObject(module: SModule, mpsProject: MPSProject): JsonObject {
        val obj = JsonObject()
        obj.addProperty("name", module.moduleName ?: "")
        obj.addProperty("reference", PersistenceFacade.getInstance().asString(module.moduleReference))
        addContainingProjectIfForeign(obj, mpsProject, module)
        return obj
    }

    @McpTool
    @McpDescription("""
        Updates module facets (enable/disable/configure).

        Returns a JSON object with 'ok':true and 'data':{"updated":true, "facetType":"..."} on success, or 'ok':false and 'error':"..." on failure.
    """)
    // See note above mps_mcp_list_facet_types regarding deprecated FacetsFacade.getInstance().
    @Suppress("DEPRECATION")
    suspend fun mps_mcp_update_module_facet(
        @McpDescription("Module name or reference") moduleName: String,
        @McpDescription("Facet type to update") facetType: String,
        @McpDescription("Whether to enable or disable the facet") @Nullable enabled: Boolean? = null,
        @McpDescription("JSON representation of the facet settings (Memento structure)") @Nullable settingsJson: String? = null
    ): String = withMpsProject("Updating module facet") { mpsProject ->
        withContext(Dispatchers.EDT) {
            mpsProject.repository.modelAccess.executeCommand {
                val resolved = resolveAbstractModuleWithDescriptor(mpsProject, moduleName, requireWritable = true)
                when (resolved) {
                    is AbstractModuleResolution.Err -> throw McpUserException(resolved.code, resolved.message, resolved.details)
                    is AbstractModuleResolution.Ok -> {
                        val (abstractModule, descriptor) = resolved

                        if (enabled == false) {
                            descriptor.moduleFacetDescriptors.removeIf { it.type == facetType }
                        } else if (enabled == true || settingsJson != null) {
                            val factory = FacetsFacade.getInstance().getFacetFactory(facetType)
                                ?: throw McpInvalidRequestException("Unknown facet type: $facetType. No factory registered.")

                            val memento = MementoImpl()
                            if (settingsJson != null) {
                                val jsonElement = try {
                                    JsonParser.parseString(settingsJson)
                                } catch (e: Exception) {
                                    throw McpInvalidRequestException("Failed to parse settingsJson: ${e.message ?: e.toString()}")
                                }
                                if (!jsonElement.isJsonObject) {
                                    throw McpInvalidRequestException("settingsJson must be a JSON object")
                                }
                                jsonToMemento(jsonElement.asJsonObject, memento)
                            } else if (descriptor.moduleFacetDescriptors.any { it.type == facetType }) {
                                return@executeCommand
                            }

                            descriptor.moduleFacetDescriptors.removeIf { it.type == facetType }
                            descriptor.moduleFacetDescriptors.add(ModuleFacetDescriptor(facetType, memento))
                        }

                        abstractModule.setModuleDescriptor(descriptor)
                        abstractModule.save()
                    }
                }
            }
            mpsProject.save()
        }

        okJson(jsonObject {
            addProperty("updated", true)
            addProperty("facetType", facetType)
        })
    }

    private fun applyVirtualFolder(mpsProject: MPSProject, module: SModule, virtualFolder: String?) {
        if (virtualFolder != null) {
            mpsProject.setVirtualFolder(module, virtualFolder)
        }
    }

    /**
     * Best-effort un-registration of a module the producer has just registered with the
     * project, used when a follow-up step (e.g. facet attachment) fails before the create
     * call returns. Any throwable during rollback is swallowed: the primary error has
     * already been recorded and is more useful to the caller than a cleanup failure.
     *
     * Strategy by module kind:
     * - Generator: registration in the create path happens via
     *   `parentLang.setModuleDescriptor(...)` → `Language.revalidateGenerators` (the
     *   create path does NOT call `mpsProject.addModule(...)` separately; see the
     *   comment in the "generator" branch of `mps_mcp_create_module`). So the symmetric
     *   rollback is to drop the entry from the parent's `generators` and re-set the
     *   descriptor, which causes `revalidateGenerators` to unregister the orphan. As a
     *   safety belt we also call `removeModule` if the generator is somehow still
     *   attached to the project repository after that.
     * - Everything else (Solution, DevKit, Language): the producer registered the module
     *   directly with the project, so `removeModule` is the matching reversal.
     *
     * After un-registration we also best-effort-delete the module's on-disk descriptor
     * file (`.msd` / `.mpl` / `.devkit`). Otherwise a caller retrying
     * `mps_mcp_create_module` with the same `name`+`directory` would trip over the
     * leftover descriptor and either fail to create or re-load stale module state.
     *
     * [companions] lets the create call hand in sibling modules the producer registered
     * alongside [module] (e.g. a Language's generator/runtime/sandbox sub-modules).
     * Each companion is rolled back via the same single-module logic before the primary,
     * so dependent companions (generators referencing the language) are dropped first.
     *
     * What is NOT cleaned up (intentionally, to keep this conservative):
     * - Model files / module sub-directories the producer may have laid out next to the
     *   descriptor. The descriptor is the binding piece for "is this module loadable";
     *   stale model files alone won't block a retry.
     *
     * Threading / write-access contract: this helper MUST be invoked inside
     * `mpsProject.repository.modelAccess.executeCommand { ... }`. It calls
     * `mpsProject.removeModule(...)`, `parent.setModuleDescriptor(...)`,
     * `abstractModule.save()`, and `descriptorFile.delete()`, all of which require an
     * active write/command context. Production callers in `mps_mcp_create_module` are
     * already inside `executeCommand`; integration tests wrap each direct invocation in
     * `executeCommand { ... }` for the same reason. Calling this outside a command will
     * throw from the model-access layer.
     *
     * Visible to integration tests so the Generator branch can be exercised directly.
     */
    internal fun rollbackPartialCreation(
        mpsProject: MPSProject,
        module: SModule,
        companions: List<SModule> = emptyList(),
    ) {
        // Roll back companions first. Generators reference their parent Language via
        // `sourceModuleReference`, so dropping them before the language keeps that lookup
        // valid during their own rollback. Solutions (runtime/sandbox) are independent
        // and order is immaterial for them.
        for (companion in companions) {
            rollbackSingleModule(mpsProject, companion)
        }
        rollbackSingleModule(mpsProject, module)
    }

    private fun rollbackSingleModule(mpsProject: MPSProject, module: SModule) {
        try {
            // Capture the descriptor file before un-registration: `removeModule` /
            // `setModuleDescriptor` may tear down descriptor wiring so `descriptorFile`
            // returns null afterwards.
            val descriptorFile: IFile? = (module as? AbstractModule)?.descriptorFile

            if (module is Generator) {
                // `Generator.sourceLanguage()` reads `mySourceLanguage0` directly and can
                // return null for a partially constructed generator (e.g. a Language whose
                // `revalidateGenerators` failed mid-flight). NPE-ing here would abort the
                // rollback walk and strand the remaining companions plus the primary —
                // exactly the partial state this helper exists to prevent. Fall through to
                // the `removeModule` safety belt below when the parent link is missing.
                val parentRef = runCatching { module.sourceLanguage()?.sourceModuleReference }.getOrNull()
                val parent = parentRef?.let { mpsProject.repository.getModule(it.moduleId) as? Language }
                val parentDescriptor = parent?.moduleDescriptor
                if (parent != null && parentDescriptor != null) {
                    parentDescriptor.generators.removeIf { it.moduleReference == module.moduleReference }
                    parent.setModuleDescriptor(parentDescriptor)
                    parent.save()
                }
                // Safety belt: if revalidateGenerators didn't fully detach the generator
                // from the project repository, drop it explicitly. Idempotent on a
                // module that is no longer registered.
                if (mpsProject.repository.getModule(module.moduleReference.moduleId) != null) {
                    runCatching { mpsProject.removeModule(module) }
                }
            } else {
                // Idempotent: a Language whose generator companions were already rolled
                // back may still be registered; removing a module not in the repo throws
                // in some MPS revisions, so check first.
                if (mpsProject.repository.getModule(module.moduleReference.moduleId) != null) {
                    mpsProject.removeModule(module)
                }
            }

            // Best-effort: remove the descriptor file so a retry with the same
            // name+directory can succeed. Failure here is swallowed — the file may
            // be locked, missing, or unreadable, none of which warrant overriding
            // the primary error the caller is about to see.
            //
            // CRITICAL: skip this for Generator modules. `Language.revalidateGenerators`
            // constructs `Generator` with the parent Language's `.mpl` as its descriptor
            // file (see `new Generator(..., getDescriptorFile(), ...)`), so
            // `(generator as AbstractModule).descriptorFile` returns the parent's `.mpl`,
            // NOT a generator-specific file. Deleting it here would corrupt the parent
            // Language on disk — exactly the kind of data-loss this helper must not
            // cause. Generators have no separate descriptor to clean up; the parent's
            // descriptor was already re-saved above with the generator entry removed.
            if (module !is Generator) {
                runCatching {
                    if (descriptorFile != null && descriptorFile.exists()) {
                        descriptorFile.delete()
                    }
                }
            }
        } catch (e: Throwable) {
            rethrowIfCancellation(e)
            if (e is Error) throw e
            // Swallow: the original failure is what the caller needs to see.
        }
    }

    private fun getEffectiveKeys(m: Memento, rootType: String? = null): Set<String> {
        return m.keys.filter { key ->
            !(key == "type" && (m.get(key) == m.type || (m.type == null && m.get(key) == rootType)))
        }.toSet()
    }

    private fun mementoToJson(m: Memento, rootType: String? = null): JsonObject {
        val obj = JsonObject()
        val props = JsonObject()
        for (key in getEffectiveKeys(m, rootType)) {
            props.addProperty(key, m.get(key))
        }
        if (props.size() > 0) {
            obj.add("properties", props)
        }
        val text = m.text
        if (text != null) {
            obj.addProperty("text", text)
        }
        val children = JsonArray()
        for (child in m.children) {
            val childObj = mementoToJson(child, null)
            childObj.addProperty("type", child.type)
            children.add(childObj)
        }
        if (children.size() > 0) {
            obj.add("children", children)
        }
        return obj
    }

    private fun jsonToMemento(obj: JsonObject, m: Memento) {
        val hasProps = obj.has("properties") && obj.get("properties").isJsonObject
        val hasChildren = obj.has("children") && obj.get("children").isJsonArray
        val hasText = obj.has("text") && obj.get("text").isJsonPrimitive

        if (hasProps || hasChildren || hasText) {
            // Structured format
            obj.getAsJsonObject("properties")?.let { props ->
                for (entry in props.entrySet()) {
                    if (entry.value.isJsonPrimitive) {
                        m.put(entry.key, entry.value.asString)
                    }
                }
            }
            obj.getAsJsonPrimitive("text")?.let {
                m.text = it.asString
            }
            obj.getAsJsonArray("children")?.let { children ->
                for ((idx, childElement) in children.withIndex()) {
                    if (!childElement.isJsonObject) {
                        throw McpInvalidRequestException("settingsJson child at index $idx must be a JSON object")
                    }
                    val childObj = childElement.asJsonObject
                    val type = childObj.getAsJsonPrimitive("type")?.asString
                        ?: throw McpInvalidRequestException("settingsJson child at index $idx is missing required 'type' string")
                    val childMemento = m.createChild(type)
                    jsonToMemento(childObj, childMemento)
                }
            }
        } else {
            // Flat format
            for (entry in obj.entrySet()) {
                if (entry.value.isJsonPrimitive) {
                    val key = entry.key
                    val value = entry.value.asString
                    if (key == "type" && value == m.type) continue
                    m.put(key, value)
                }
            }
        }
    }

    private fun mementosEqual(m1: Memento, m2: Memento, rootType: String? = null): Boolean {
        if (m1.type != m2.type) return false
        if (m1.text != m2.text) return false

        val keys1 = getEffectiveKeys(m1, rootType)
        val keys2 = getEffectiveKeys(m2, rootType)
        if (keys1 != keys2) return false
        for (key in keys1) {
            if (m1.get(key) != m2.get(key)) return false
        }

        val children1 = m1.children.toList()
        val children2 = m2.children.toList()
        if (children1.size != children2.size) return false

        for (i in children1.indices) {
            if (!mementosEqual(children1[i], children2[i], null)) return false
        }
        return true
    }


}

enum class ModuleOperation {
    RENAME,
    CHANGE_VIRTUAL_FOLDER,
    DELETE
}
