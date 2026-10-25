package jetbrains.mps.agents.mcp.tools.migration

import com.intellij.openapi.application.ApplicationManager
import com.intellij.openapi.application.ModalityState
import com.intellij.openapi.progress.EmptyProgressIndicator
import jetbrains.mps.errors.item.ModelFlavouredItem
import jetbrains.mps.errors.item.ModuleFlavouredItem
import jetbrains.mps.errors.item.NodeFlavouredItem
import jetbrains.mps.ide.migration.MigrationCheckerImpl
import jetbrains.mps.ide.migration.MigrationExecutor
import jetbrains.mps.ide.migration.MigrationExecutorImpl
import jetbrains.mps.ide.migration.MigrationSessionImpl
import jetbrains.mps.ide.migration.MigrationSetup
import jetbrains.mps.ide.migration.NotifyingMigrationExecutor
import jetbrains.mps.ide.migration.ScriptApplied
import jetbrains.mps.ide.migration.wizard.MigrationError
import jetbrains.mps.ide.migration.wizard.MigrationTask
import jetbrains.mps.lang.migration.runtime.base.BaseScriptReference
import jetbrains.mps.lang.migration.runtime.base.MigrationModuleUtil
import jetbrains.mps.lang.migration.runtime.base.MigrationScriptReference
import jetbrains.mps.lang.migration.runtime.base.RefactoringScriptReference
import jetbrains.mps.make.MakeServiceComponent
import jetbrains.mps.migration.global.CleanupProjectMigration
import jetbrains.mps.migration.global.ProjectMigration
import jetbrains.mps.migration.global.ProjectMigrationsRegistry
import jetbrains.mps.progress.ProgressMonitorBase
import jetbrains.mps.project.MPSProject
import jetbrains.mps.smodel.Language
import jetbrains.mps.smodel.language.LanguageRegistry
import org.jetbrains.mps.openapi.language.SLanguage
import org.jetbrains.mps.openapi.module.SModule
import org.jetbrains.mps.openapi.module.SModuleReference
import org.jetbrains.mps.openapi.persistence.PersistenceFacade
import org.jetbrains.mps.openapi.util.ProgressMonitor

/**
 * The headless engine behind `mps_mcp_run_migrations`: the same `MigrationSetup` →
 * `MigrationSessionImpl` → `MigrationTask` sequence the Migration Assistant wizard and the Ant
 * `migrate` task (`AntTaskExecutionUtil.migrate`) drive, without any UI.
 *
 * The session's step flags come from the setup, as in the wizard (the Ant path forces all three),
 * so a project with nothing pending is neither force-saved nor version-updated. Inside a UI IDE the
 * caller wraps [run] in `MigrationTrigger.runHeadlessMigration`, which owns the trigger's lifecycle
 * (blocked checks, file sync, model unload, postponed state, "Migration required" balloon); the
 * engine itself is the same on both paths, so the integration tests exercise the code the live IDE
 * runs.
 */
internal object HeadlessMigrations {
    /** Caps the problems copied out of a [MigrationError]; the pre-check can report one per node. */
    private const val MAX_REPORTED_PROBLEMS = 200

    data class PendingScript(
        val script: String,
        val reference: String,
        /** `language` for a language migration, `refactoring` for a refactoring log entry. */
        val kind: String,
        /** The migrated language, or the refactored module for a refactoring script. */
        val owner: String?,
        val fromVersion: Int?,
        val scriptPresent: Boolean,
        val affectedModules: List<String>,
    )

    data class PendingProjectMigration(val description: String, val cleanup: Boolean)

    class Plan(
        val pendingModuleMigrations: List<PendingScript>,
        val pendingProjectMigrations: List<PendingProjectMigration>,
        val modulesToUpdateVersions: List<String>,
        /** Project modules `MigrationTask.runForceSave` rewrites; 0 when nothing is pending. */
        val wouldForceSaveModules: Int,
        /** Conditions that make APPLY refuse. */
        val blockers: List<String>,
        /** Languages whose scripts cannot be offered yet; reported, not blocking (see [runtimeProblems]). */
        val runtimeProblems: List<String>,
    ) {
        val nothingToDo: Boolean
            get() = pendingModuleMigrations.isEmpty() && pendingProjectMigrations.isEmpty() &&
                modulesToUpdateVersions.isEmpty()
    }

    data class AppliedRow(
        val module: String,
        val script: String,
        val kind: String,
        val owner: String?,
        val fromVersion: Int?,
        val stampBefore: Int?,
        val stampAfter: Int?,
    )

    data class Problem(val message: String, val path: String?, val pathKind: String?)

    data class ErrorReport(val shortMessage: String, val message: String, val canIgnore: Boolean, val problems: List<Problem>, val problemCount: Int)

    class Outcome(
        val applied: List<AppliedRow>,
        val projectMigrationsRun: List<PendingProjectMigration>,
        val versionsUpdated: Boolean,
        val error: ErrorReport?,
    )

    /**
     * The modules [scope] names, resolved now: module instances do not survive the file sync and
     * reload a run starts with. Null [scope] means every migrateable project module. Requires model
     * read.
     */
    private fun modulesOf(mpsProject: MPSProject, scope: List<SModuleReference>?): List<SModule> =
        scope?.mapNotNull { it.resolve(mpsProject.repository) }
            ?: MigrationModuleUtil.getMigrateableModulesFromProject(mpsProject).toList()

    /** Requires model read. */
    fun setup(mpsProject: MPSProject, scope: List<SModuleReference>?): MigrationSetup =
        if (scope == null) MigrationSetup(mpsProject) else MigrationSetup(mpsProject, modulesOf(mpsProject, scope))

    /** Requires model read. */
    fun plan(mpsProject: MPSProject, scope: List<SModuleReference>?): Plan {
        val setup = setup(mpsProject, scope)
        val facade = PersistenceFacade.getInstance()
        val pendingScripts = setup.moduleMigrations.map { applied ->
            val ref = applied.scriptReference()
            PendingScript(
                script = applied.caption().takeIf { it.isNotBlank() } ?: ref.toString(),
                reference = ref.toString(),
                kind = kindOf(ref),
                owner = ownerOf(ref),
                fromVersion = fromVersionOf(ref),
                scriptPresent = applied.scriptPresent(),
                affectedModules = applied.affectedModules().map { it.moduleName ?: facade.asString(it) },
            )
        }
        val pendingProject = setup.projectMigrations.map { describe(it) }
        val versionUpdates = setup.modulesToUpdateVersions().map { it.moduleName ?: facade.asString(it) }
        val forceSave = if (setup.isRepositorySaveRequired) mpsProject.projectModulesWithGenerators.size else 0
        return Plan(
            pendingScripts, pendingProject, versionUpdates, forceSave,
            blockers(mpsProject), runtimeProblems(mpsProject, scope),
        )
    }

    /**
     * Conditions under which APPLY refuses. Requires model read. A make session would race the run
     * (the trigger blocks its own checks for the same reason), and a project migrated by a newer MPS
     * must not be migrated back.
     */
    private fun blockers(mpsProject: MPSProject): List<String> {
        val result = mutableListOf<String>()
        val makeService = mpsProject.getComponent(MakeServiceComponent::class.java)?.get()
        if (makeService != null && makeService.isSessionActive) {
            result.add("make session active: wait until the running make finishes, then call again")
        }
        val status = ProjectMigrationsRegistry.getInstance().checkMigratedToNewerVersion(mpsProject)
        if (status.isError) {
            result.add("project migrated by a newer MPS: ${status.message}")
        }
        return result
    }

    /**
     * Languages used in [scope] whose migrations a run cannot see. Requires model read. Not
     * blockers: the wizard's explicit run ignores undeployed languages too, and the rest of the
     * project can still be migrated. A language without a runtime contributes no script (and makes
     * `MigrationSetup` skip the descriptor version update); one whose runtime lags its descriptor
     * offers only the scripts it was built with.
     */
    private fun runtimeProblems(mpsProject: MPSProject, scope: List<SModuleReference>?): List<String> {
        val result = mutableListOf<String>()
        val registry = LanguageRegistry.getInstance(mpsProject.repository)
        val used = modulesOf(mpsProject, scope).flatMapTo(LinkedHashSet<SLanguage>()) { it.usedLanguages }
        val notDeployed = used.filter { registry.getLanguage(it) == null }
        if (notDeployed.isNotEmpty()) {
            result.add(
                "languages not deployed: [${notDeployed.map { it.qualifiedName }.sorted().joinToString(", ")}] — " +
                    "their migrations are not collected and descriptor versions are not updated; MAKE them " +
                    "(mps_mcp_alter_nodes MAKE) first"
            )
        }
        val stale = mpsProject.projectModulesWithGenerators.filterIsInstance<Language>().mapNotNull { language ->
            val runtime = registry.getLanguage(language) ?: return@mapNotNull null
            if (runtime.identity !in used || runtime.version == language.languageVersion) return@mapNotNull null
            "${language.moduleName} descriptor v=${language.languageVersion} runtime v=${runtime.version}"
        }
        if (stale.isNotEmpty()) {
            result.add(
                "language runtime stale: ${stale.sorted().joinToString("; ")} — its newest migration scripts " +
                    "are not offered; rebuild the language (mps_mcp_alter_nodes MAKE with rebuild=true) first"
            )
        }
        return result
    }

    /**
     * Number of pending module and project migrations, for the `migrationsPending` hint `MAKE`
     * returns after building a language. Requires model read.
     */
    fun pendingCount(mpsProject: MPSProject): Int {
        val setup = MigrationSetup(mpsProject)
        return setup.moduleMigrations.size + setup.projectMigrations.size
    }

    /**
     * Runs the migrations. Must be called off the EDT and outside any model access: every
     * `MigrationTask` step hops to the EDT with `invokeAndWait` and takes its own write action.
     */
    fun run(
        mpsProject: MPSProject,
        scope: List<SModuleReference>?,
        haltOnPrecheckFailure: Boolean,
        haltOnDependencyError: Boolean,
        onStep: (String) -> Unit,
    ): Outcome {
        val applied = mutableListOf<AppliedRow>()
        val projectRuns = mutableListOf<PendingProjectMigration>()
        val delegate = NotifyingMigrationExecutor(mpsProject, MigrationExecutorImpl(mpsProject))
        // Called inside MigrationTask's write action, so the stamps can be read around the step.
        val recorder = object : MigrationExecutor {
            override fun execute(sa: ScriptApplied) {
                val ref = sa.scriptInstance.reference
                val before = stampOf(sa.module, ref)
                delegate.execute(sa)
                applied.add(
                    AppliedRow(
                        module = sa.module.moduleName ?: PersistenceFacade.getInstance().asString(sa.module.moduleReference),
                        script = sa.scriptInstance.caption?.takeIf { it.isNotBlank() } ?: ref.toString(),
                        kind = kindOf(ref),
                        owner = ownerOf(ref),
                        fromVersion = fromVersionOf(ref),
                        stampBefore = before,
                        stampAfter = stampOf(sa.module, ref),
                    )
                )
            }

            override fun execute(pm: CleanupProjectMigration) {
                delegate.execute(pm)
                projectRuns.add(describe(pm))
            }

            override fun execute(pm: ProjectMigration) {
                delegate.execute(pm)
                projectRuns.add(describe(pm))
            }
        }

        val setup = mpsProject.modelAccess.computeReadAction { setup(mpsProject, scope) }
        // Recorded when the update runs, not read from the setup: a stage-0 failure before the
        // update would otherwise report versions that were never written.
        var versionsUpdated = false
        val session = object : MigrationSessionImpl(
            mpsProject, setup, MigrationCheckerImpl(mpsProject), recorder,
            setup.isRepositorySaveRequired, setup.importVersionsUpdateRequired(), setup.isMigrationRequired,
        ) {
            override fun updateModuleImports(progress: ProgressMonitor) {
                super.updateModuleImports(progress)
                versionsUpdated = true
            }
        }
        var failure: MigrationError? = null
        val task = object : MigrationTask(session, haltOnPrecheckFailure, haltOnDependencyError) {
            override fun error(error: MigrationError) {
                super.error(error)
                failure = error
            }
        }
        task.run(StepMonitor(onStep))

        ApplicationManager.getApplication().invokeAndWait({
            mpsProject.modelAccess.runWriteAction { mpsProject.repository.saveAll() }
        }, ModalityState.nonModal())

        val report = failure?.let { error -> mpsProject.modelAccess.computeReadAction { reportOf(error) } }
        return Outcome(applied, projectRuns, versionsUpdated, report)
    }

    private fun reportOf(error: MigrationError): ErrorReport {
        val facade = PersistenceFacade.getInstance()
        val all = error.getProblems(EmptyProgressIndicator()).toList()
        val problems = all.take(MAX_REPORTED_PROBLEMS).map { item ->
            val (kind, path) = when {
                NodeFlavouredItem.FLAVOUR_NODE.canGet(item) ->
                    "node" to NodeFlavouredItem.FLAVOUR_NODE.tryToGet(item)?.let { facade.asString(it) }
                ModelFlavouredItem.FLAVOUR_MODEL.canGet(item) ->
                    "model" to ModelFlavouredItem.FLAVOUR_MODEL.tryToGet(item)?.let { facade.asString(it) }
                ModuleFlavouredItem.FLAVOUR_MODULE.canGet(item) ->
                    "module" to ModuleFlavouredItem.FLAVOUR_MODULE.tryToGet(item)?.let { facade.asString(it) }
                else -> null to null
            }
            Problem(item.message, path, kind)
        }
        return ErrorReport(error.shortMessage, error.message ?: error.shortMessage, error.canIgnore(), problems, all.size)
    }

    private fun describe(pm: ProjectMigration) = PendingProjectMigration(pm.description, pm is CleanupProjectMigration)

    private fun kindOf(ref: BaseScriptReference): String = when (ref) {
        is MigrationScriptReference -> "language"
        is RefactoringScriptReference -> "refactoring"
        else -> ref.javaClass.simpleName
    }

    private fun ownerOf(ref: BaseScriptReference): String? = when (ref) {
        is MigrationScriptReference -> ref.language.qualifiedName
        is RefactoringScriptReference -> ref.moduleReference.moduleName
        else -> null
    }

    private fun fromVersionOf(ref: BaseScriptReference): Int? = when (ref) {
        is MigrationScriptReference -> ref.fromVersion
        is RefactoringScriptReference -> ref.fromVersion
        else -> null
    }

    /** The version [module] records for the language or refactored module [ref] migrates. */
    private fun stampOf(module: SModule, ref: BaseScriptReference): Int? = when (ref) {
        is MigrationScriptReference -> MigrationModuleUtil.getRecordedUsedLanguageVersions(module)[ref.language]
        is RefactoringScriptReference -> MigrationModuleUtil.getRecordedDependencyVersions(module)[ref.moduleReference]
        else -> null
    }

    /**
     * Hands each distinct `title: step` of the task to [onStep]. Steps arrive on the EDT under the
     * write lock, so [onStep] must only record the text. Never cancelled: `MigrationTask` has no
     * cancellation points of its own, and the checkers that do poll `isCanceled()` return a partial
     * result on cancellation, which would let a halting pre-check pass.
     */
    private class StepMonitor(private val onStep: (String) -> Unit) : ProgressMonitorBase() {
        private var title: String? = null
        private var step: String? = null
        private var lastReported: String? = null

        override fun update(fraction: Double) = Unit
        override fun startInternal(text: String?) = Unit
        override fun doneInternal(text: String?) = Unit

        override fun setTitleInternal(name: String?) {
            title = name
            report()
        }

        override fun setStepInternal(comment: String?) {
            step = comment
            report()
        }

        override fun isCanceled(): Boolean = false

        override fun cancel() = Unit

        @Synchronized
        private fun report() {
            val text = listOfNotNull(title?.takeIf { it.isNotBlank() }, step?.takeIf { it.isNotBlank() })
                .joinToString(": ")
            if (text.isEmpty() || text == lastReported) return
            lastReported = text
            onStep(text)
        }
    }
}
