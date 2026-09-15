package jetbrains.mps.agents.mcp.tools

import com.google.gson.JsonArray
import com.google.gson.JsonObject
import com.google.gson.JsonPrimitive
import com.intellij.mcpserver.annotations.McpDescription
import com.intellij.mcpserver.annotations.McpTool
import com.intellij.mcpserver.projectOrNull
import com.intellij.openapi.project.ProjectManager
import jetbrains.mps.ide.project.ProjectHelper
import jetbrains.mps.project.AbstractModule
import jetbrains.mps.project.DevKit
import jetbrains.mps.project.MPSProject
import jetbrains.mps.project.Solution
import jetbrains.mps.project.facets.JavaModuleFacet
import jetbrains.mps.project.structure.modules.DevkitDescriptor
import jetbrains.mps.project.structure.modules.GeneratorDescriptor
import jetbrains.mps.project.structure.modules.LanguageDescriptor
import jetbrains.mps.smodel.Generator
import jetbrains.mps.smodel.Language
import jetbrains.mps.smodel.SModelInternal
import kotlinx.coroutines.currentCoroutineContext
import org.jetbrains.mps.openapi.model.SModel
import org.jetbrains.mps.openapi.module.SModule
import org.jetbrains.mps.openapi.persistence.PersistenceFacade
import java.nio.file.Path
import java.nio.file.Paths

// MCP tool methods use snake_case names because they are part of the public MCP protocol
// surface, and they are invoked via reflection by the MCP server framework, so static
// analysis flags them as "never used".
@Suppress("FunctionName", "unused")
class JetBrainsMPSProjectMcpToolset : AbstractOps() {

    @McpTool
    @McpDescription(
        """
        Lists IDE projects currently open in this MPS MCP server and identifies which of them have
        an MPS project counterpart. Use this before MPS work when an agent starts at a repository /
        workspace root that may contain several MPS project subdirectories. The `mpsProjectBaseDirectory`
        value is the path to pass through the MCP host's `projectPath` selector for ordinary
        `mps_mcp_*` tools; `agentConfigRoot` is the repository/workspace root where
        `mps_mcp_initialize_project_for_agents.targetDirectory` belongs.
    """
    )
    suspend fun mps_mcp_list_open_projects(): String {
        val currentIdeaProject = currentIdeaProjectOrNull()
        return try {
            val projects = ProjectManager.getInstance().openProjects
                .sortedWith(compareBy({ it.basePath ?: "" }, { it.name }))
            val array = JsonArray()
            var mpsProjectCount = 0
            for (ideaProject in projects) {
                val projectJson = describeOpenProjectSafely(ideaProject, currentIdeaProject)
                if (projectJson.get("hasMpsProject")?.asBoolean == true) mpsProjectCount++
                array.add(projectJson)
            }
            okJson(jsonObject {
                addProperty("projectCount", projects.size)
                addProperty("mpsProjectCount", mpsProjectCount)
                add("projects", array)
            })
        } catch (e: Throwable) {
            rethrowIfCancellation(e)
            toolFailure("listing open MPS projects", e)
        }
    }

    @McpTool
    @McpDescription(
        """
        Primary tool for project discovery, name-based searching, dependency analysis, and shortened-name expansion (e.g. `j.m.l.core` → `jetbrains.mps.lang.core`). `data` is inline when the serialized dump is <= `maxInlineBytes` (default 20000), otherwise a temp-file path (which keeps large dumps below the MCP response-size limit). Use `startingPoint` (a module/model/node reference) to scope the dump; use the `include...` flags to control depth. Keep `include...` flags false for fast project-wide discovery. With `includeDependencies`, each model's `usedLanguages` lists directly-used languages plus used devkits; every devkit entry (`kind: devkit`) carries a `providedLanguages` array enumerating the languages it brings into scope transitively (including via extended devkits), so a language already supplied by a devkit need not be imported again. A model's reported `name` is its full name including any stereotype (e.g. `foo.bar@tests`, `foo.bar@generator`); pass that exact name (stereotype included) when addressing the model. See `mps-mcp-workflow/references/finding-things.md` for the name-resolution protocol.
    """
    )
    suspend fun mps_mcp_get_project_structure(
        @McpDescription("Include non-project modules visible in the shared repository: read-only libraries/stubs and modules from other open MPS projects.") includeStubModules: Boolean = false,
        @McpDescription("Include models within modules.") includeModels: Boolean = false,
        @McpDescription("Include module/model dependencies and used languages.") includeDependencies: Boolean = false,
        @McpDescription("Include root nodes of models.") includeRootNodes: Boolean = false,
        @McpDescription("Include all nodes (full AST), inlined under each root's containment roles. Implies includeRootNodes (and includeModels for module/project dumps). The full tree is always written to the result temp file regardless of size — there is no truncation — so prefer scoping with `startingPoint`, or use `mps_mcp_print_node` (deep=true) for a single root. Warning: can be extremely large.") includeNodes: Boolean = false,
        @McpDescription(
            "Optional starting point: a persistent reference (module/model/root-node/node id) or a plain name. " +
            "A plain NAME is resolved in the order node -> model -> module, so a name shared by a model and a " +
            "module resolves to the MODEL. To target a module unambiguously, pass its persistent reference " +
            "(<uuid>(<name>)) or use the 'moduleKind' filter (with startingPoint null). Scope heavy 'include...' " +
            "flags by passing a startingPoint."
        ) startingPoint: String? = null,
        @McpDescription("Optional filter by module kind (Solution, Language, DevKit, Generator). Only used if startingPoint is null.") moduleKind: String? = null,
        @McpDescription("Inline the dump in `data` when it is at most this many characters; larger dumps are saved to a temp file whose path is returned instead (default 20000).") maxInlineBytes: Int = DEFAULT_MAX_INLINE_BYTES
    ): String {
        if (!startingPoint.isNullOrBlank() && !moduleKind.isNullOrBlank()) {
            return errJson("Parameters 'startingPoint' and 'moduleKind' cannot be used together.")
        }
        // includeNodes (full AST) is only meaningful if we actually descend into models and
        // their root nodes. Treat it as implying includeRootNodes (and includeModels for
        // module/project dumps) so a caller that asks for nodes always gets the inlined trees
        // instead of a silent `rootNodesCount` summary.
        val effectiveIncludeRootNodes = includeRootNodes || includeNodes
        val effectiveIncludeModels = includeModels || includeRootNodes || includeNodes
        return withMpsProject("Getting MPS project structure") { mpsProject ->
            executeShortReadOnEdt(mpsProject) {
                if (!startingPoint.isNullOrBlank()) {
                    // Try to resolve as node, then model, then module

                    // 1. Try Node
                    val nodeRef = if (includeStubModules) {
                        resolveNodeReferencePreferringProject(mpsProject, startingPoint)
                    }
                    else {
                        resolveNodeReference(mpsProject, startingPoint)
                    }
                    val node = nodeRef?.resolve(mpsProject.repository)
                    if (node != null) {
                        return@executeShortReadOnEdt finalizeResult(nodeHierarchyToJson(node, includeNodes, mpsProject), maxInlineBytes)
                    }

                    // 2. Try Model
                    val model = if (includeStubModules) {
                        resolveModelPreferringProject(mpsProject, startingPoint)
                    } else {
                        resolveModel(mpsProject, startingPoint, projectOnly = true)
                    }
                    if (model != null) {
                        return@executeShortReadOnEdt finalizeResult(modelToJson(mpsProject, model, effectiveIncludeRootNodes, includeNodes, includeDependencies), maxInlineBytes)
                    }

                    // 3. Try Module
                    val module = if (includeStubModules) {
                        resolveModulePreferringProject(mpsProject, startingPoint)
                    } else {
                        resolveModule(mpsProject, startingPoint, projectOnly = true)
                    }
                    if (module != null) {
                        // Check if we should filter out non-project modules if they are not included.
                        val isProjectModule = isModuleInSelectedProject(mpsProject, module)
                        if (includeStubModules || isProjectModule) {
                            return@executeShortReadOnEdt finalizeResult(
                                moduleToJson(mpsProject, module, effectiveIncludeModels, effectiveIncludeRootNodes, includeNodes, includeDependencies),
                                maxInlineBytes
                            )
                        }
                        return@executeShortReadOnEdt errJson(
                            "Starting point '$startingPoint' resolved to a non-project module and was filtered out. Set 'includeStubModules' to true to include read-only libraries/stubs and modules from other open MPS projects.",
                            McpErrorCode.NOT_FOUND
                        )
                    }

                    errJson("Starting point '$startingPoint' not found", McpErrorCode.NOT_FOUND)
                } else {
                    val modules = if (includeStubModules) {
                        mpsProject.repository.modules
                    }
                    else {
                        mpsProject.projectModulesWithGenerators
                    }
                    val filteredModules = if (!moduleKind.isNullOrBlank()) {
                        modules.filter { getModuleKind(it).equals(moduleKind, ignoreCase = true) }
                    } else {
                        modules
                    }

                    val json = JsonObject()
                    val moduleArray = JsonArray()
                    val cache = ProjectMembershipCache(mpsProject)
                    for (projectModule in filteredModules) {
                        moduleArray.add(moduleJsonObject(mpsProject, projectModule, effectiveIncludeModels, effectiveIncludeRootNodes, includeNodes, includeDependencies, cache))
                    }
                    json.add("modules", moduleArray)
                    finalizeResult(json.toString(), maxInlineBytes)
                }
            }
        }
    }

    private fun moduleToJson(
        project: MPSProject,
        m: SModule,
        includeModels: Boolean,
        includeRootNodes: Boolean,
        includeNodes: Boolean,
        includeDependencies: Boolean,
        cache: ProjectMembershipCache? = null
    ): String {
        return moduleJsonObject(project, m, includeModels, includeRootNodes, includeNodes, includeDependencies, cache).toString()
    }

    private fun moduleJsonObject(
        project: MPSProject,
        m: SModule,
        includeModels: Boolean,
        includeRootNodes: Boolean,
        includeNodes: Boolean,
        includeDependencies: Boolean,
        cache: ProjectMembershipCache? = null
    ): JsonObject {
        val c = cache ?: ProjectMembershipCache(project)
        val vf = try {
            project.getVirtualFolder(m)
        } catch (e: Exception) {
            rethrowIfCancellation(e)
            null
        }

        val obj = JsonObject()
        obj.addProperty("name", m.moduleName ?: "")
        obj.addProperty("reference", PersistenceFacade.getInstance().asString(m.moduleReference))
        if (vf != null) {
            obj.addProperty("virtualFolder", vf)
        }
        obj.addProperty("readOnly", m.isReadOnly)
        obj.addProperty("kind", getModuleKind(m))
        addContainingProjectIfForeign(obj, project, m, cache = c)

        if (includeDependencies) {
            val descriptor = (m as? AbstractModule)?.moduleDescriptor

            obj.add(
                "dependencies",
                namedReferenceJsonArray(
                    items = descriptor?.dependencies ?: emptyList(),
                    itemName = { it.moduleRef.moduleName ?: "" },
                    itemReference = { PersistenceFacade.getInstance().asString(it.moduleRef) }
                ) {
                    addProperty("scope", it.scope.toString())
                    addProperty("reexport", it.isReexport)
                    addContainingProjectIfForeign(this, project, it.moduleRef.resolve(project.repository), cache = c)
                }
            )

            obj.add(
                "usedLanguages",
                namedReferenceJsonArray(
                    items = descriptor?.languageVersions?.entries ?: emptySet(),
                    itemName = { it.key.qualifiedName },
                    itemReference = { PersistenceFacade.getInstance().asString(it.key) }
                ) {
                    addProperty("version", it.value)
                    addContainingProjectIfForeign(this, project, it.key, project.repository, cache = c)
                }
            )

            obj.add(
                "usedDevkits",
                namedReferenceJsonArray(
                    items = descriptor?.usedDevkits ?: emptyList(),
                    itemName = { it.moduleName ?: "" },
                    itemReference = { PersistenceFacade.getInstance().asString(it) }
                ) {
                    addContainingProjectIfForeign(this, project, it.resolve(project.repository), cache = c)
                }
            )

            if (descriptor is LanguageDescriptor) {
                obj.add(
                    "extendedLanguages",
                    namedReferenceJsonArray(
                        items = descriptor.extendedLanguages,
                        itemName = { it.moduleName ?: "" },
                        itemReference = { PersistenceFacade.getInstance().asString(it) }
                    ) {
                        addContainingProjectIfForeign(this, project, it.resolve(project.repository), cache = c)
                    }
                )

                obj.add(
                    "runtimeModules",
                    namedReferenceJsonArray(
                        items = descriptor.runtimeModules,
                        itemName = { it.moduleName ?: "" },
                        itemReference = { PersistenceFacade.getInstance().asString(it) }
                    ) {
                        addContainingProjectIfForeign(this, project, it.resolve(project.repository), cache = c)
                    }
                )

                val accessoryModels = JsonArray()
                for (accessoryModel in descriptor.accessoryModels) {
                    accessoryModels.add(modelReferenceJsonObject(accessoryModel, project, c))
                }
                obj.add("accessoryModels", accessoryModels)
            }

            if (descriptor is GeneratorDescriptor) {
                obj.add(
                    "depGenerators",
                    namedReferenceJsonArray(
                        items = descriptor.depGenerators,
                        itemName = { it.moduleName ?: "" },
                        itemReference = { PersistenceFacade.getInstance().asString(it) }
                    ) {
                        addContainingProjectIfForeign(this, project, it.resolve(project.repository), cache = c)
                    }
                )
                obj.add("sourceLanguage", moduleReferenceJsonObject(descriptor.sourceLanguage, project, c))
            }

            if (descriptor is DevkitDescriptor) {
                obj.add(
                    "exportedLanguages",
                    namedReferenceJsonArray(
                        items = descriptor.exportedLanguages,
                        itemName = { it.moduleName ?: "" },
                        itemReference = { PersistenceFacade.getInstance().asString(it) }
                    ) {
                        addContainingProjectIfForeign(this, project, it.resolve(project.repository), cache = c)
                    }
                )
                obj.add(
                    "exportedSolutions",
                    namedReferenceJsonArray(
                        items = descriptor.exportedSolutions,
                        itemName = { it.moduleName ?: "" },
                        itemReference = { PersistenceFacade.getInstance().asString(it) }
                    ) {
                        addContainingProjectIfForeign(this, project, it.resolve(project.repository), cache = c)
                    }
                )
                obj.add(
                    "extendedDevkits",
                    namedReferenceJsonArray(
                        items = descriptor.extendedDevkits,
                        itemName = { it.moduleName ?: "" },
                        itemReference = { PersistenceFacade.getInstance().asString(it) }
                    ) {
                        addContainingProjectIfForeign(this, project, it.resolve(project.repository), cache = c)
                    }
                )
                descriptor.associatedGenPlan?.let {
                    obj.add("associatedGenPlan", modelReferenceJsonObject(it, project, c))
                }
            }
        }

        val facetsArray = JsonArray()
        project.modelAccess.runReadAction {
            for (facet in m.facets) {
                facetsArray.add(JsonPrimitive(facet.facetType))
            }
            obj.add("facets", facetsArray)
            val javaFacet = m.getFacet(JavaModuleFacet::class.java)
            if (javaFacet != null) {
                obj.addProperty("loadExtensions", javaFacet.loadExtensions.name)
            }
            if (m is Language) {
                val generators = JsonArray()
                for (gen in m.ownedGenerators) {
                    val genObj = JsonObject()
                    genObj.addProperty("name", gen.moduleName ?: "")
                    genObj.addProperty("reference", PersistenceFacade.getInstance().asString(gen.moduleReference))
                    addContainingProjectIfForeign(genObj, project, gen, cache = c)
                    generators.add(genObj)
                }
                obj.add("generators", generators)
            }
        }

        if (includeModels) {
            val models = JsonArray()
            for (model in m.models) {
                models.add(modelJsonObject(project, model, includeRootNodes, includeNodes, includeDependencies, c))
            }
            obj.add("models", models)
        }
        else {
            obj.addProperty("modelsCount", m.models.count())
        }
        return obj
    }

    private fun getModuleKind(m: SModule): String {
        return when (m) {
            is Solution -> "Solution"
            is Language -> "Language"
            is DevKit -> "DevKit"
            is Generator -> "Generator"
            else -> m.javaClass.simpleName
        }
    }

    private suspend fun currentIdeaProjectOrNull(): com.intellij.openapi.project.Project? {
        return try {
            currentCoroutineContext().projectOrNull
        } catch (e: Exception) {
            rethrowIfCancellation(e)
            null
        }
    }

    /**
     * Builds the descriptor for [ideaProject], degrading to a minimal entry carrying an `error`
     * field if describing it throws — one unreadable project must not blank the whole listing,
     * since this tool exists precisely to disambiguate a confusing multi-project state.
     */
    private fun describeOpenProjectSafely(
        ideaProject: com.intellij.openapi.project.Project,
        currentIdeaProject: com.intellij.openapi.project.Project?
    ): JsonObject {
        return try {
            openProjectJsonObject(ideaProject, currentIdeaProject)
        } catch (e: Throwable) {
            rethrowIfCancellation(e)
            if (e is Error) throw e
            jsonObject {
                addProperty("ideaProjectName", ideaProject.name)
                addProperty("isCurrent", currentIdeaProject === ideaProject)
                addProperty("hasMpsProject", false)
                addProperty("error", "Failed to describe project: ${e.message ?: e.javaClass.simpleName}")
            }
        }
    }

    private fun openProjectJsonObject(
        ideaProject: com.intellij.openapi.project.Project,
        currentIdeaProject: com.intellij.openapi.project.Project?
    ): JsonObject {
        val mpsProject = ProjectHelper.fromIdeaProject(ideaProject)
        // The MCP host resolves the `projectPath` selector against Project.getBasePath() (see
        // com.intellij.mcpserver Fs_util.findMostRelevantProject, which keeps the open project whose
        // basePath is the longest prefix of the supplied path). So basePath — not the @Deprecated
        // MPSProject.getProjectFile()/presentableUrl — is the value agents must pass back; for a
        // directory-based MPS project the two coincide anyway.
        val ideaBase = normalizedPath(ideaProject.basePath)

        return jsonObject {
            addProperty("name", mpsProject?.name ?: ideaProject.name)
            addProperty("ideaProjectName", ideaProject.name)
            addProperty("hasMpsProject", mpsProject != null)
            addProperty("isCurrent", currentIdeaProject === ideaProject)
            // Path to pass as the host `projectPath` for mps_mcp_* tools: the project base directory
            // when this IDE project has an MPS counterpart, null otherwise.
            addProperty("mpsProjectBaseDirectory", if (mpsProject != null) ideaBase?.toString() else null)
            addProperty("ideaBasePath", ideaBase?.toString())
            addProperty("agentConfigRoot", ideaBase?.let { AgentConfigRootResolver.deriveAgentConfigRoot(it).toString() })
        }
    }

    private fun normalizedPath(path: String?): Path? {
        if (path.isNullOrBlank()) return null
        return try {
            Paths.get(path).toAbsolutePath().normalize()
        } catch (e: Throwable) {
            rethrowIfCancellation(e)
            null
        }
    }

    private fun modelToJson(
        project: MPSProject,
        model: SModel,
        includeRootNodes: Boolean,
        includeNodes: Boolean,
        includeDependencies: Boolean,
        cache: ProjectMembershipCache? = null
    ): String {
        return modelJsonObject(project, model, includeRootNodes, includeNodes, includeDependencies, cache).toString()
    }

    private fun modelJsonObject(
        project: MPSProject,
        model: SModel,
        includeRootNodes: Boolean,
        includeNodes: Boolean,
        includeDependencies: Boolean,
        cache: ProjectMembershipCache? = null
    ): JsonObject {
        val c = cache ?: ProjectMembershipCache(project)
        val obj = JsonObject()
        // Use the full model name (SModelName.value), which keeps the stereotype (e.g.
        // `foo@tests`, `bar@generator`). longName drops it, so a @tests/@generator model would
        // be reported under a name that cannot be addressed back. Stays consistent with
        // modelInfoJsonObject (create/update_model) and the persistent `reference` below.
        obj.addProperty("name", model.name.value)
        obj.addProperty("reference", PersistenceFacade.getInstance().asString(model.reference))
        obj.addProperty("readOnly", model.isReadOnly)
        addContainingProjectIfForeign(obj, project, model, cache = c)

        if (includeDependencies) {
            val dependencies = JsonArray()
            if (model is SModelInternal) {
                for (modelImport in model.modelImports) {
                    dependencies.add(modelReferenceJsonObject(modelImport, project, c))
                }
            }
            obj.add("dependencies", dependencies)

            val usedLanguages = JsonArray()
            if (model is SModelInternal) {
                for (language in model.importedLanguageIds()) {
                    usedLanguages.add(languageReferenceJsonObject(language, project, c))
                }
                val repository = model.repository
                for (devkit in model.importedDevkits()) {
                    val devkitObj = moduleReferenceJsonObject(devkit, project, c)
                    devkitObj.addProperty("kind", "devkit")
                    // Expand the devkit into the languages it actually brings into the model's scope
                    // (transitively, including languages exported by extended devkits). A reader that
                    // sees only the devkit name cannot tell that a language is already available, which
                    // is what drives redundant mps_mcp_model_used_language ADD calls — those can only be
                    // answered after the fact with providedByDevKit. Surfacing the expansion lets the
                    // caller decide not to import a language a used devkit already supplies.
                    val dk = devkit.resolve(repository) as? DevKit
                    if (dk != null) {
                        val provided = JsonArray()
                        for (lang in dk.allExportedLanguageIds.sortedBy { it.qualifiedName }) {
                            provided.add(languageReferenceJsonObject(lang, project, c))
                        }
                        devkitObj.add("providedLanguages", provided)
                    }
                    usedLanguages.add(devkitObj)
                }
            }
            obj.add("usedLanguages", usedLanguages)

            obj.add(
                "engagedOnGenerationLanguages",
                namedReferenceJsonArray(
                    items = if (model is SModelInternal) model.languagesEngagedOnGeneration else emptyList(),
                    itemName = { it.qualifiedName },
                    itemReference = { PersistenceFacade.getInstance().asString(it) }
                ) {
                    addContainingProjectIfForeign(this, project, it, project.repository, cache = c)
                }
            )
        }

        if (includeRootNodes) {
            val rootNodes = JsonArray()
            for (root in model.rootNodes) {
                rootNodes.add(nodeHierarchyJsonObject(root, includeNodes, project, c))
            }
            obj.add("rootNodes", rootNodes)
        }
        else {
            obj.addProperty("rootNodesCount", model.rootNodes.count())
        }

        return obj
    }

    @McpTool
    @McpDescription(
        """
        Reloads all modules in the MPS project. 
        This is useful to refresh the runtime concept registry after structural changes in languages.

        Returns a JSON object with 'ok':true and 'data':"All modules reloaded successfully" on success, or 'ok':false and 'error':"..." on failure.
    """
    )
    suspend fun mps_mcp_reload_all(): String = withMpsProject("Reloading all MPS modules") { mpsProject ->
        val clm = mpsProject.getComponent(jetbrains.mps.classloading.ClassLoaderManager::class.java)
            ?: return@withMpsProject errJson("ClassLoaderManager not found", McpErrorCode.NOT_FOUND)

        try {
            executeShortCommandOnEdt(mpsProject) {
                clm.reloadAll(jetbrains.mps.progress.EmptyProgressMonitor())
            }
            okJsonString("All modules reloaded successfully")
        } catch (e: Exception) {
            rethrowIfCancellation(e)
            val root = generateSequence(e as Throwable) { it.cause?.takeIf { c -> c !== it } }.last()
            val detail = root.message?.takeIf { it.isNotBlank() } ?: root.javaClass.simpleName
            errJson("Failed to reload modules: $detail (${root.javaClass.simpleName})", McpErrorCode.INTERNAL_ERROR)
        }
    }
}
