package jetbrains.mps.agents.mcp.tools

import jetbrains.mps.agents.mcp.tools.common.*
import jetbrains.mps.agents.mcp.tools.migration.HeadlessMigrations
import jetbrains.mps.agents.mcp.tools.migration.MigrationAssistantGuard

import com.google.gson.JsonArray
import com.google.gson.JsonObject
import com.google.gson.JsonPrimitive
import com.intellij.mcpserver.annotations.McpDescription
import com.intellij.mcpserver.annotations.McpTool
import com.intellij.mcpserver.reportToolActivity
import jetbrains.mps.ide.migration.IStartupMigrationExecutor
import jetbrains.mps.ide.migration.MigrationTrigger
import jetbrains.mps.project.MPSProject
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.coroutineScope
import kotlinx.coroutines.currentCoroutineContext
import kotlinx.coroutines.delay
import kotlinx.coroutines.ensureActive
import kotlinx.coroutines.isActive
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext
import org.jetbrains.mps.openapi.module.SModuleReference
import java.util.concurrent.atomic.AtomicBoolean
import java.util.concurrent.atomic.AtomicReference

// MCP tool methods use snake_case names because they are part of the public MCP protocol
// surface, and they are invoked via reflection by the MCP server framework, so static
// analysis flags them as "never used".
@Suppress("FunctionName", "unused")
class JetBrainsMPSMigrationMcpToolset : AbstractOps() {
    private companion object {
        /** How long APPLY waits for the EDT before concluding that a modal dialog blocks it. */
        const val EDT_PROBE_TIMEOUT_MS: Long = 10_000

        /** How often the latest migration step is forwarded to `reportToolActivity`. */
        const val STEP_REPORT_INTERVAL_MS: Long = 500

        /**
         * One APPLY at a time in the whole IDE: two runs would force-save and update versions twice,
         * interleave their steps, and toggle the global fast-find-usages switch `MigrationTask` flips.
         */
        val applyRunning = AtomicBoolean(false)
    }

    @McpTool
    @McpDescription("""
        Lists or applies the pending migrations of the MPS project without the Migration Assistant wizard — the headless engine of the Ant `migrate` task. `operation`:
        - CHECK (default): read-only. Returns `pendingModuleMigrations` (`[{script, reference, kind, owner, fromVersion, toVersion, scriptPresent, affectedModules}]`; `kind` is `language` or `refactoring`, `owner` the migrated language or refactored module), `pendingProjectMigrations` (`[{description, cleanup}]`), `modulesToUpdateVersions`, `wouldForceSaveModules`, `blockers`, `runtimeProblems` (languages whose scripts cannot be offered yet: not deployed, or runtime older than the descriptor; reported, not blocking) and `nothingToDo`.
        - APPLY: runs the wizard's steps. When anything is pending it first force-saves every project module and rewrites the descriptor versions of every migrateable module (`wouldForceSaveModules` in CHECK says how many — hundreds of files on a large project), then runs cleanup, project and language migrations in dependency order and the post-check, and saves. Returns `planned` (the CHECK block), `status` (`FINISHED`, `FINISHED_WITH_ERRORS` or `NOTHING_TO_DO`), `applied` (`[{module, script, kind, owner, fromVersion, stampBefore, stampAfter}]`), `projectMigrationsRun`, `versionsUpdated`, `remaining` (pending counts after the run), `savedRepository`, `modelsUnloaded`, and with FINISHED_WITH_ERRORS `error` (`{shortMessage, message, canIgnore, problemCount, problems:[{message, path, pathKind}]}`). A non-empty `blockers` (a make session running, a project migrated by a newer MPS) makes APPLY an INVALID_REQUEST naming each blocker, as does another APPLY already running; an open modal dialog makes it MODAL_BLOCKED before anything is written.
        A new script of a language is only offered after the language is rebuilt and reloaded (`mps_mcp_alter_nodes` MAKE answering `runtimeReady:true`, which then reports `migrationsPending`). While an agent drives the project the wizard does not open on its own; MPS shows a "Migration required" balloon instead. APPLY can take minutes and has no modal timeout of its own. See `mps-aspect-migrations/references/run-migrations.md`.
    """)
    suspend fun mps_mcp_run_migrations(
        @McpDescription("CHECK (default) lists what a run would do and writes nothing; APPLY runs it.")
        operation: String = "CHECK",
        @McpDescription("Optional: a module name or reference, or a JSON array of them (a real array or the array written as a string), whose language migrations and descriptor versions to check. Omit for every migrateable project module. Project migrations stay project-wide, and once anything is pending APPLY force-saves and version-updates every project module.")
        modules: JsonOrText? = null,
        @McpDescription("APPLY only: stop when the migration pre-check reports problems (default true).")
        haltOnPrecheckFailure: Boolean = true,
        @McpDescription("APPLY only: stop when a module the project depends on is not migrated yet (default true).")
        haltOnDependencyError: Boolean = true,
    ): String = withMpsProject("Running MPS migrations") { mpsProject ->
        val op = resolveOperationOrNull<MigrationOperation>(operation)
            ?: return@withMpsProject unknownOperation<MigrationOperation>(operation)
        val requested = parseNullableStringOrJsonArray(modules)
        val (scope, plan) = executeBackgroundRead(mpsProject) {
            val scope = requested?.map { ref ->
                val module = resolveModule(mpsProject, ref, projectOnly = true)
                    ?: throw McpNotFoundException("Module '$ref' not found in the selected project")
                module.moduleReference
            }
            scope to HeadlessMigrations.plan(mpsProject, scope)
        }
        val warnings = if (scope == null) emptyList() else listOf(
            "`modules` restricts which modules' language migrations and descriptor versions are checked. " +
                "Project migrations stay project-wide, and once anything is pending APPLY force-saves every " +
                "project module and updates the descriptor versions of every migrateable one."
        )
        when (op) {
            MigrationOperation.CHECK -> okJson(planJson(plan), warnings)
            MigrationOperation.APPLY -> apply(mpsProject, scope, plan, haltOnPrecheckFailure, haltOnDependencyError, warnings)
        }
    }

    private suspend fun apply(
        mpsProject: MPSProject,
        scope: List<SModuleReference>?,
        plan: HeadlessMigrations.Plan,
        haltOnPrecheckFailure: Boolean,
        haltOnDependencyError: Boolean,
        warnings: List<String>,
    ): String {
        if (plan.blockers.isNotEmpty()) {
            return errJson(
                "Migrations not applied, nothing was written: ${plan.blockers.joinToString("; ")}.",
                McpErrorCode.INVALID_REQUEST,
                mapOf("blockers" to plan.blockers),
                warnings,
            )
        }
        if (plan.nothingToDo) {
            return okJson(jsonObject {
                add("planned", planJson(plan))
                addProperty("status", "NOTHING_TO_DO")
            }, warnings)
        }
        if (!applyRunning.compareAndSet(false, true)) {
            return errJson(
                "Migrations not applied, nothing was written: another mps_mcp_run_migrations APPLY is " +
                    "running. Wait for it to finish, then CHECK again.",
                McpErrorCode.INVALID_REQUEST,
                mapOf("blockers" to listOf("another APPLY is running")),
                warnings,
            )
        }
        val responseWarnings = warnings.toMutableList()
        // The trigger re-checks for pending migrations at the end of the headless run, while the
        // recount below is still running; the heartbeat keeps the Migration Assistant suppressed
        // for a run longer than the suppression window (D48).
        val (outcome, modelsUnloaded, remaining) = MigrationAssistantGuard.holdingSuppression {
            val (outcome, modelsUnloaded) = try {
                requireResponsiveEdt()
                // The run cannot be cancelled once it writes (see HeadlessMigrations.StepMonitor);
                // a cancellation that arrived before this point still stops it.
                currentCoroutineContext().ensureActive()
                runEngine(mpsProject, scope, haltOnPrecheckFailure, haltOnDependencyError)
            } finally {
                applyRunning.set(false)
            }

            // Everything is written by now. A failure to recount must not turn the answer into an error,
            // or the caller would believe nothing was migrated. No timeout: after the trigger unloads
            // every model, the recount reloads them, which takes long on a large project.
            val remaining = try {
                withContext(Dispatchers.Default) {
                    mpsProject.modelAccess.computeReadAction { HeadlessMigrations.plan(mpsProject, scope) }
                }
            } catch (e: Exception) {
                rethrowIfCancellation(e)
                logger.warn("Could not recount the pending migrations after APPLY", e)
                responseWarnings.add("The migrations ran, but recounting what is still pending failed (${e.message ?: e}); CHECK again.")
                null
            }
            Triple(outcome, modelsUnloaded, remaining)
        }

        return okJson(jsonObject {
            add("planned", planJson(plan))
            addProperty("status", if (outcome.error == null) "FINISHED" else "FINISHED_WITH_ERRORS")
            add("applied", JsonArray().apply {
                for (row in outcome.applied) {
                    add(jsonObject {
                        addProperty("module", row.module)
                        addProperty("script", row.script)
                        addProperty("kind", row.kind)
                        row.owner?.let { addProperty("owner", it) }
                        row.fromVersion?.let { addProperty("fromVersion", it) }
                        row.stampBefore?.let { addProperty("stampBefore", it) }
                        row.stampAfter?.let { addProperty("stampAfter", it) }
                    })
                }
            })
            add("projectMigrationsRun", projectMigrationsJson(outcome.projectMigrationsRun))
            addProperty("versionsUpdated", outcome.versionsUpdated)
            if (remaining != null) {
                add("remaining", jsonObject {
                    addProperty("pendingModuleMigrations", remaining.pendingModuleMigrations.size)
                    addProperty("pendingProjectMigrations", remaining.pendingProjectMigrations.size)
                    addProperty("modulesToUpdateVersions", remaining.modulesToUpdateVersions.size)
                })
            }
            outcome.error?.let { error ->
                add("error", jsonObject {
                    addProperty("shortMessage", error.shortMessage)
                    addProperty("message", error.message)
                    addProperty("canIgnore", error.canIgnore)
                    addProperty("problemCount", error.problemCount)
                    add("problems", JsonArray().apply {
                        for (problem in error.problems) {
                            add(jsonObject {
                                addProperty("message", problem.message)
                                problem.path?.let { addProperty("path", it) }
                                problem.pathKind?.let { addProperty("pathKind", it) }
                            })
                        }
                    })
                })
            }
            addProperty("savedRepository", true)
            addProperty("modelsUnloaded", modelsUnloaded)
        }, responseWarnings)
    }

    /**
     * Runs the engine on an IO thread, inside the trigger's lifecycle when there is one, and answers
     * whether the trigger unloaded the project models afterwards. Steps arrive
     * on the EDT under the write lock, so they are only recorded there and forwarded to
     * `reportToolActivity` from this coroutine.
     */
    private suspend fun runEngine(
        mpsProject: MPSProject,
        scope: List<SModuleReference>?,
        haltOnPrecheckFailure: Boolean,
        haltOnDependencyError: Boolean,
    ): Pair<HeadlessMigrations.Outcome, Boolean> = coroutineScope {
        val context = currentCoroutineContext()
        val latestStep = AtomicReference<String?>(null)
        val reporter = launch {
            var reported: String? = null
            while (isActive) {
                delay(STEP_REPORT_INTERVAL_MS)
                val step = latestStep.get()
                if (step != null && step != reported) {
                    reported = step
                    context.reportToolActivity(step)
                }
            }
        }
        try {
            // MigrationTrigger exists only in a UI IDE; the headless and test applications get the
            // no-op HeadlessMigrationExecutor, and there the engine runs on its own.
            val trigger = IStartupMigrationExecutor.getInstance(mpsProject) as? MigrationTrigger
            withContext(Dispatchers.IO) {
                val run = {
                    HeadlessMigrations.run(mpsProject, scope, haltOnPrecheckFailure, haltOnDependencyError) {
                        latestStep.set(it)
                    }
                }
                if (trigger == null) {
                    run() to false
                } else {
                    var result: HeadlessMigrations.Outcome? = null
                    trigger.runHeadlessMigration { result = run() }
                    checkNotNull(result) { "MigrationTrigger.runHeadlessMigration did not run the migration" } to true
                }
            }
        } finally {
            reporter.cancel()
        }
    }

    /**
     * The migration hops to the EDT with `invokeAndWait` for every step, so behind a modal dialog
     * (typically the Migration Assistant wizard itself, opened before the first `mps_mcp_*` call or
     * after the IDE sat idle longer than the suppression window)
     * the run would wait without a timeout. Probe the EDT once before anything is written.
     */
    private suspend fun requireResponsiveEdt() {
        try {
            withModalTimeoutOnEdt(EDT_PROBE_TIMEOUT_MS) { }
        } catch (e: McpModalBlockedException) {
            throw McpModalBlockedException(
                "The IDE did not respond within ${EDT_PROBE_TIMEOUT_MS}ms, so no migration was started. A modal " +
                    "dialog is probably open — often the Migration Assistant wizard. Close it (Cancel postpones " +
                    "the migration, it applies nothing) and call again.",
                e.errorDetails,
            )
        }
    }

    private fun planJson(plan: HeadlessMigrations.Plan): JsonObject = jsonObject {
        add("pendingModuleMigrations", JsonArray().apply {
            for (script in plan.pendingModuleMigrations) {
                add(jsonObject {
                    addProperty("script", script.script)
                    addProperty("reference", script.reference)
                    addProperty("kind", script.kind)
                    script.owner?.let { addProperty("owner", it) }
                    script.fromVersion?.let {
                        addProperty("fromVersion", it)
                        addProperty("toVersion", it + 1)
                    }
                    addProperty("scriptPresent", script.scriptPresent)
                    add("affectedModules", strings(script.affectedModules))
                })
            }
        })
        add("pendingProjectMigrations", projectMigrationsJson(plan.pendingProjectMigrations))
        add("modulesToUpdateVersions", strings(plan.modulesToUpdateVersions))
        addProperty("wouldForceSaveModules", plan.wouldForceSaveModules)
        add("blockers", strings(plan.blockers))
        add("runtimeProblems", strings(plan.runtimeProblems))
        addProperty("nothingToDo", plan.nothingToDo)
    }

    private fun projectMigrationsJson(migrations: List<HeadlessMigrations.PendingProjectMigration>): JsonArray =
        JsonArray().apply {
            for (migration in migrations) {
                add(jsonObject {
                    addProperty("description", migration.description)
                    addProperty("cleanup", migration.cleanup)
                })
            }
        }

    private fun strings(values: List<String>): JsonArray =
        JsonArray().apply { values.forEach { add(JsonPrimitive(it)) } }
}

enum class MigrationOperation {
    CHECK,
    APPLY,
}
