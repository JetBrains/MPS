package jetbrains.mps.agents.mcp.tools

import com.google.gson.JsonArray
import com.google.gson.JsonObject
import com.google.gson.JsonPrimitive
import com.intellij.ide.RecentProjectsManager
import com.intellij.ide.actions.CloseProjectAction
import com.intellij.mcpserver.annotations.McpDescription
import com.intellij.mcpserver.annotations.McpTool
import com.intellij.mcpserver.projectOrNull
import com.intellij.mcpserver.reportToolActivity
import com.intellij.openapi.actionSystem.impl.SimpleDataContext
import com.intellij.openapi.application.ApplicationManager
import com.intellij.openapi.application.ModalityState
import com.intellij.openapi.application.WriteIntentReadAction
import com.intellij.openapi.project.Project
import com.intellij.openapi.project.ProjectManager
import com.intellij.openapi.project.ex.ProjectManagerEx
import com.intellij.openapi.wm.WindowManager
import com.intellij.openapi.wm.impl.welcomeScreen.WelcomeFrame
import jetbrains.mps.agents.mcp.tools.common.AbstractOps
import jetbrains.mps.agents.mcp.tools.config.AgentConfigRootResolver
import jetbrains.mps.agents.mcp.tools.logging.McpCallOutcomes
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
import jetbrains.mps.workbench.action.ActionUtils
import kotlinx.coroutines.TimeoutCancellationException
import kotlinx.coroutines.currentCoroutineContext
import kotlinx.coroutines.suspendCancellableCoroutine
import kotlinx.coroutines.withTimeout
import org.jetbrains.mps.openapi.model.SModel
import org.jetbrains.mps.openapi.module.SModule
import org.jetbrains.mps.openapi.persistence.PersistenceFacade
import java.nio.file.Path
import java.nio.file.Paths
import java.util.concurrent.atomic.AtomicBoolean
import kotlin.coroutines.resume
import kotlin.coroutines.resumeWithException

// MCP tool methods use snake_case names because they are part of the public MCP protocol
// surface, and they are invoked via reflection by the MCP server framework, so static
// analysis flags them as "never used".
@Suppress("FunctionName", "unused")
class JetBrainsMPSProjectMcpToolset(
    private val runtimeVersionSource: () -> MpsRuntimeVersion? = { MpsRuntimeVersion.fromApplicationOrNull() },
) : AbstractOps() {

    @McpTool
    @McpDescription(
        """
        Lists IDE projects currently open in this MPS MCP server and identifies which of them have
        an MPS project counterpart. Use this before MPS work when an agent starts at a repository /
        workspace root that may contain several MPS project subdirectories. The `mpsProjectBaseDirectory`
        value is the path to pass through the MCP host's `projectPath` selector for ordinary
        `mps_mcp_*` tools; `agentConfigRoot` is the repository/workspace root where
        `mps_mcp_initialize_project_for_agents.targetDirectory` belongs. Top-level `mpsVersion`,
        `mpsBuild`, and `mpsEap` are this IDE's identity, not a property of any listed project;
        all three are omitted when the IDE cannot report them. Read the running version here —
        do not call the initializer for it.
    """
    )
    suspend fun mps_mcp_list_open_projects(): String {
        val currentIdeaProject = currentIdeaProjectOrNull()
        return McpCallOutcomes.record(
            try {
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
                    // IDE identity, not a per-project field. Omitted entirely when unavailable.
                    runtimeVersionSource()?.let { identity ->
                        addProperty("mpsVersion", identity.version)
                        addProperty("mpsBuild", identity.build)
                        addProperty("mpsEap", identity.eap)
                    }
                    add("projects", array)
                })
            } catch (e: Throwable) {
                rethrowIfCancellation(e)
                toolFailure("listing open MPS projects", e)
            }
        )
    }

    @McpTool
    @McpDescription(
        """
        Primary tool for project discovery, name-based searching, dependency analysis, and shortened-name expansion (e.g. `j.m.l.core` → `jetbrains.mps.lang.core`). `data` is inline when the serialized dump is <= `maxInlineBytes` (default 20000), otherwise a temp-file path (which keeps large dumps below the MCP response-size limit). Use `startingPoint` (a module/model/node reference) to scope the dump; use the `include...` flags to control depth. Keep `include...` flags false for fast project-wide discovery. Two projection knobs cut the payload without changing the envelope: `nodeDetail="names"` reduces every node record to name/concept/reference (the cheap way to list a model's roots and their ids), and `nodeDepth` bounds how far `includeNodes` inlines the AST. Every Language module carries a `languageVersion` field (emitted without `includeDependencies`): the language's OWN version integer, the one a migration script's `fromVersion` gates on and the one `mps_mcp_update_module` SYNC_VERSION derives from the migration scripts. Do not confuse it with the consumer-side `usedLanguages[].version` stamps below, which say which version of some *other* language a module was last migrated against. With `includeDependencies`, each model's `usedLanguages` lists directly-used languages plus used devkits; every devkit entry (`kind: devkit`) carries a `providedLanguages` array enumerating the languages it brings into scope transitively (including via extended devkits), so a language already supplied by a devkit need not be imported again. A model's reported `name` is its full name including any stereotype (e.g. `foo.bar@tests`, `foo.bar@generator`); pass that exact name (stereotype included) when addressing the model. See `mps-mcp-workflow/references/finding-things.md` for the name-resolution protocol.
    """
    )
    suspend fun mps_mcp_get_project_structure(
        @McpDescription("Include non-project modules visible in the shared repository: read-only libraries/stubs and modules from other open MPS projects.") includeStubModules: Boolean = false,
        @McpDescription("Include models within modules.") includeModels: Boolean = false,
        @McpDescription("Include module/model dependencies and used languages.") includeDependencies: Boolean = false,
        @McpDescription("Include root nodes of models.") includeRootNodes: Boolean = false,
        @McpDescription("Include all nodes (full AST), inlined under each root's containment roles. Implies includeRootNodes (and includeModels for module/project dumps). Unbounded unless you pass nodeDepth, so prefer scoping with `startingPoint`, `nodeDetail` and `nodeDepth`, or use `mps_mcp_print_node` (deep=true) for a single root. Warning: can be extremely large.") includeNodes: Boolean = false,
        @McpDescription(
            "Optional starting point: a persistent reference (module/model/root-node/node id) or a plain name. " +
                    "A plain NAME is resolved in the order node -> model -> module, so a name shared by a model and a " +
                    "module resolves to the MODEL. To target a module unambiguously, pass its persistent reference " +
                    "(<uuid>(<name>)) or use the 'moduleKind' filter (with startingPoint null). Scope heavy 'include...' " +
                    "flags by passing a startingPoint."
        ) startingPoint: String? = null,
        @McpDescription("Optional filter by module kind (Solution, Language, DevKit, Generator). Only used if startingPoint is null.") moduleKind: String? = null,
        @McpDescription("Projection of every node record: \"full\" (default) for the complete records, or \"names\" for name/concept/reference only — no docs (so no concept deprecation), no properties, references or child roles. Use \"names\" with includeRootNodes to list a model's roots and their ids cheaply.") nodeDetail: String = NODE_DETAIL_FULL,
        @McpDescription("With includeNodes, how many levels to inline below each root: -1 (default) for the whole tree, 0 for the root record alone, n for n levels. At the cut-off a role lists its children as {name, reference} and is marked childrenTruncated.") nodeDepth: Int = -1,
        @McpDescription("Inline the dump in `data` when it is at most this many characters; larger dumps are saved to a temp file whose path is returned instead (default 20000).") maxInlineBytes: Int = DEFAULT_MAX_INLINE_BYTES
    ): String {
        if (!startingPoint.isNullOrBlank() && !moduleKind.isNullOrBlank()) {
            return McpCallOutcomes.record(
                errJson(
                    "Parameters 'startingPoint' and 'moduleKind' cannot be used together.",
                    McpErrorCode.INVALID_REQUEST,
                )
            )
        }
        val names = when (nodeDetail.trim().lowercase()) {
            NODE_DETAIL_FULL -> false
            NODE_DETAIL_NAMES -> true
            // Recorded because this returns before withMpsProject, the only other call site that
            // reports the envelope to the call log (see McpCallOutcomes).
            else -> return McpCallOutcomes.record(
                errJson(
                    "Invalid nodeDetail '$nodeDetail'. Allowed values: $NODE_DETAIL_FULL, $NODE_DETAIL_NAMES",
                    McpErrorCode.INVALID_REQUEST,
                )
            )
        }
        val projection = NodeProjection.of(names, nodeDepth)
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
                    } else {
                        resolveNodeReference(mpsProject, startingPoint)
                    }
                    val node = nodeRef?.resolve(mpsProject.repository)
                    if (node != null) {
                        return@executeShortReadOnEdt finalizeResult(
                            nodeHierarchyToJson(node, includeNodes, mpsProject, projection = projection),
                            maxInlineBytes
                        )
                    }

                    // 2. Try Model
                    val model = if (includeStubModules) {
                        resolveModelPreferringProject(mpsProject, startingPoint)
                    } else {
                        resolveModel(mpsProject, startingPoint, projectOnly = true)
                    }
                    if (model != null) {
                        return@executeShortReadOnEdt finalizeResult(
                            modelToJson(
                                mpsProject,
                                model,
                                effectiveIncludeRootNodes,
                                includeNodes,
                                includeDependencies,
                                projection = projection
                            ), maxInlineBytes
                        )
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
                                moduleToJson(mpsProject, module, effectiveIncludeModels, effectiveIncludeRootNodes, includeNodes, includeDependencies, projection = projection),
                                maxInlineBytes
                            )
                        }
                        return@executeShortReadOnEdt filteredOutStartingPoint(startingPoint, "module")
                    }

                    // A library/stub model or module (e.g. `jetbrains.mps.scope`) is only looked up
                    // project-first above; say it exists instead of reporting it as unknown, so the
                    // caller does not have to guess that includeStubModules was the missing flag.
                    if (!includeStubModules) {
                        val repository = mpsProject.repository
                        when {
                            resolveModel(repository, startingPoint) != null ->
                                return@executeShortReadOnEdt filteredOutStartingPoint(startingPoint, "model")
                            resolveModule(repository, startingPoint) != null ->
                                return@executeShortReadOnEdt filteredOutStartingPoint(startingPoint, "module")
                        }
                    }

                    errJson("Starting point '$startingPoint' not found", McpErrorCode.NOT_FOUND)
                } else {
                    val modules = if (includeStubModules) {
                        mpsProject.repository.modules
                    } else {
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
                        moduleArray.add(
                            moduleJsonObject(
                                mpsProject,
                                projectModule,
                                effectiveIncludeModels,
                                effectiveIncludeRootNodes,
                                includeNodes,
                                includeDependencies,
                                cache,
                                projection
                            )
                        )
                    }
                    json.add("modules", moduleArray)
                    finalizeResult(json.toString(), maxInlineBytes)
                }
            }
        }
    }

    private fun filteredOutStartingPoint(startingPoint: String, kind: String): String = errJson(
        "Starting point '$startingPoint' resolved to a non-project $kind and was filtered out. Set 'includeStubModules' to true to include read-only libraries/stubs and modules from other open MPS projects.",
        McpErrorCode.NOT_FOUND
    )

    private fun moduleToJson(
        project: MPSProject,
        m: SModule,
        includeModels: Boolean,
        includeRootNodes: Boolean,
        includeNodes: Boolean,
        includeDependencies: Boolean,
        cache: ProjectMembershipCache? = null,
        projection: NodeProjection = NodeProjection.FULL
    ): String {
        return moduleJsonObject(project, m, includeModels, includeRootNodes, includeNodes, includeDependencies, cache, projection).toString()
    }

    private fun moduleJsonObject(
        project: MPSProject,
        m: SModule,
        includeModels: Boolean,
        includeRootNodes: Boolean,
        includeNodes: Boolean,
        includeDependencies: Boolean,
        cache: ProjectMembershipCache? = null,
        projection: NodeProjection = NodeProjection.FULL
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
        // Language-only, and emitted unconditionally (not gated on includeDependencies): this is
        // the language's OWN version integer, the one a MigrationScript's `fromVersion` gates on.
        // It is deliberately not behind the expensive dependency flag — discovery is exactly where
        // an agent needs to read it, and it must not be confused with the consumer-side
        // `usedLanguages[].version` stamps emitted below under includeDependencies.
        ((m as? AbstractModule)?.moduleDescriptor as? LanguageDescriptor)?.let {
            obj.addProperty("languageVersion", it.languageVersion)
        }
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
                models.add(modelJsonObject(project, model, includeRootNodes, includeNodes, includeDependencies, c, projection))
            }
            obj.add("models", models)
        } else {
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
        cache: ProjectMembershipCache? = null,
        projection: NodeProjection = NodeProjection.FULL
    ): String {
        return modelJsonObject(project, model, includeRootNodes, includeNodes, includeDependencies, cache, projection).toString()
    }

    private fun modelJsonObject(
        project: MPSProject,
        model: SModel,
        includeRootNodes: Boolean,
        includeNodes: Boolean,
        includeDependencies: Boolean,
        cache: ProjectMembershipCache? = null,
        projection: NodeProjection = NodeProjection.FULL
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
                rootNodes.add(nodeHierarchyJsonObject(root, includeNodes, project, c, projection))
            }
            obj.add("rootNodes", rootNodes)
        } else {
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

    @McpTool
    @McpDescription(
        """
        Closes the current MPS project selected by the host's `projectPath`. A normal close matches
        File | Close Project: remaining projects stay open, and if this was the last project the
        Welcome screen is shown. It saves documents and may show Save/confirmation dialogs. Pass
        `force=true` to skip those dialogs (unsaved editor changes are discarded) and not wait for
        an already-open modal.

        TIMEOUT: this call waits at most 20 seconds. If a modal dialog blocks the close, the tool
        returns `ok:false` with `code: MODAL_BLOCKED` instead of hanging.

        See the Closing a project section of `mps-project-management` for project selection,
        timeout recovery, and when to force-close.

        Returns `{ok:true, data:{closed:true, name, basePath, force}}` on success. Returns `ok:false`
        when no project is selected, the project is already closed, the close is cancelled, or the
        20s modal timeout fires (`code: MODAL_BLOCKED`).
    """
    )
    suspend fun mps_mcp_close_project(
        @McpDescription("If true, shut down the MPS application if this project being closed is the only project currently open.")
        shutdownWithLastProject: Boolean = false,
        @McpDescription("If true, force-close without save/can-close confirmation dialogs and without waiting for an already-open modal. Unsaved editor changes are discarded. Default false.")
        force: Boolean = false
    ): String {
        currentCoroutineContext().reportToolActivity("Closing the current MPS project")
        return McpCallOutcomes.record(
            try {
                val ideaProject = currentCoroutineContext().projectOrNull
                if (ideaProject == null) {
                    errJson("No project available", McpErrorCode.NOT_FOUND)
                } else if (ideaProject.isDisposed) {
                    errJson("Project is already closed", McpErrorCode.NOT_FOUND)
                } else {
                    val projectName = ideaProject.name
                    val basePath = ideaProject.basePath
                    val closed = try {
                        withTimeout(CLOSE_PROJECT_TIMEOUT_MS) {
                            val performShutdown = shutdownWithLastProject &&
                                ProjectManager.getInstance().openProjects.filterNot { it.isDisposed }.filter { it != ideaProject }.isEmpty()
                            closeIdeaProjectOnEdt(ideaProject, performShutdown, force)
                        }
                    } catch (e: TimeoutCancellationException) {
                        throw McpModalBlockedException(
                            "Closing the project timed out after ${CLOSE_PROJECT_TIMEOUT_MS}ms. " +
                                    "A modal dialog is likely open in MPS. Ask the user to close it manually, then retry. " +
                                    "To skip save/confirmation dialogs that this close itself would show, retry with force=true.",
                            mapOf("timeoutMs" to CLOSE_PROJECT_TIMEOUT_MS, "force" to force),
                        )
                    }
                    if (!closed) {
                        errJson(
                            "Project '$projectName' was not closed and remains open. " +
                                    "A Save or confirmation dialog was likely cancelled. " +
                                    "Ask the user to complete the dialog, or retry with force=true to skip those dialogs.",
                        )
                    } else {
                        okJson(jsonObject {
                            addProperty("closed", true)
                            addProperty("name", projectName)
                            addProperty("force", force)
                            if (basePath != null) addProperty("basePath", basePath)
                        })
                    }
                }
            } catch (e: Throwable) {
                rethrowIfCancellation(e)
                toolFailure("Closing the current MPS project", e)
            }
        )
    }

    /**
     * Dispatches project close onto the EDT without occupying this coroutine on that thread, so a
     * modal dialog shown *by* the close can still trip [CLOSE_PROJECT_TIMEOUT_MS].
     *
     * `force=false` uses [ModalityState.nonModal] and [CloseProjectAction] (File | Close Project),
     * which shows the Welcome screen when no other project remains. `force=true` uses
     * `ModalityState.any()` plus [ProjectManagerEx.forceCloseProject], then the same Welcome-frame
     * housekeeping from [com.intellij.ide.actions.CloseProjectsActionBase].
     */
    private suspend fun closeIdeaProjectOnEdt(
        ideaProject: Project,
        performShutdown: Boolean,
        force: Boolean
    ): Boolean {
        return suspendCancellableCoroutine { cont ->
            val abandoned = AtomicBoolean(false)
            cont.invokeOnCancellation { abandoned.set(true) }
            val modality = if (force) ModalityState.any() else ModalityState.nonModal()
            ApplicationManager.getApplication().invokeLater({
                if (abandoned.get()) return@invokeLater
                val result = runCatching { closeIdeaProjectNow(ideaProject, performShutdown, force) }
                if (abandoned.get() || !cont.isActive) return@invokeLater
                result.fold(
                    onSuccess = { cont.resume(it) },
                    onFailure = { cont.resumeWithException(it) },
                )
            }, modality)
        }
    }

    /**
     * File | Close Project goes through [CloseProjectAction] / [com.intellij.ide.actions.CloseProjectsActionBase],
     * not a bare [ProjectManager.closeAndDispose]. The extra steps (default frame info, recent-project
     * path, [WelcomeFrame.showIfNoProjectOpened]) are what keep other projects visible or bring back
     * the Welcome screen. `force=true` cannot use the action because it always shows save/can-close
     * dialogs, so that path replicates the same housekeeping around [ProjectManagerEx.forceCloseProject].
     */
    private fun closeIdeaProjectNow(
        ideaProject: Project,
        performShutdown: Boolean,
        force: Boolean
    ): Boolean {
        if (ideaProject.isDisposed) return true
        if (!force) {
            val event = ActionUtils.createEvent(
                "McpCloseProject",
                SimpleDataContext.getProjectContext(ideaProject),
            )
            CloseProjectAction().actionPerformed(event)
            val closed = ideaProject.isDisposed || !ideaProject.isOpen
            if (closed && performShutdown) {
                ApplicationManager.getApplication().invokeLater({
                    ApplicationManager.getApplication().exit()
                })
            }
            return closed
        }

        WindowManager.getInstance().updateDefaultFrameInfoOnProjectClose(ideaProject)
        var closed = false
        WriteIntentReadAction.run {
            closed = ProjectManagerEx.getInstanceEx().forceCloseProject(ideaProject)
        }
        if (closed) {
            RecentProjectsManager.getInstance().updateLastProjectPath()
            if (performShutdown) {
                ApplicationManager.getApplication().invokeLater({
                    ApplicationManager.getApplication().exit()
                })
            } else {
                WelcomeFrame.showIfNoProjectOpened()
            }
        }
        return closed
    }

    private companion object {
        const val CLOSE_PROJECT_TIMEOUT_MS: Long = 20_000

        const val NODE_DETAIL_FULL = "full"
        const val NODE_DETAIL_NAMES = "names"
    }
}
