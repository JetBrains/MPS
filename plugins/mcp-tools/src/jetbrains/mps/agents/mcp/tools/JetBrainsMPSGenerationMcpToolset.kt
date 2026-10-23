package jetbrains.mps.agents.mcp.tools

import jetbrains.mps.agents.mcp.tools.common.*

import com.google.gson.Gson
import com.google.gson.JsonObject
import com.intellij.mcpserver.annotations.McpDescription
import com.intellij.mcpserver.annotations.McpTool
import jetbrains.mps.agents.mcp.tools.logging.McpCallOutcomes
import jetbrains.mps.project.MPSProject

/** The operations of `mps_mcp_generation`; each one has its own `parameters` keys in [generationParameterKeys]. */
enum class GenerationOperation {
    PLAN,
}

private val PARAM_MODEL = BlobKey("model", "modelReference", "modelRef")

private val PLAN_KEYS = ParameterKeys.of(
    required(PARAM_MODEL, "the model's reference or full name (stereotype included)"),
    "ignoreExternalPlan",
)

/** The accepted `parameters` keys of each [GenerationOperation]. */
private fun generationParameterKeys(operation: GenerationOperation): ParameterKeys = when (operation) {
    GenerationOperation.PLAN -> PLAN_KEYS
}

// MCP tool methods use snake_case names because they are part of the public MCP protocol
// surface, and they are invoked via reflection by the MCP server framework, so static
// analysis flags them as "never used".
@Suppress("FunctionName", "unused")
class JetBrainsMPSGenerationMcpToolset : AbstractOps() {

    @McpTool
    @McpDescription("""
        Read-only generation debugging. PLAN {model (reference or full name), ignoreExternalPlan (default false)} → the
        generation plan make would use for the model, what the IDE's "Show Generation Plan" prints:
        {model, modelReference, generatable, planComputed, planSource EXPLICIT|DEFAULT, explicitPlanOrigin FACET|DEVKIT (when
        the model has an external plan from a `generator` module facet or an imported devkit's @genplan), externalPlanIgnored,
        planDiagnostics:[{kind, text, reference?}], steps, generators, usedLanguages, conflicts?, ignoredPriorityRules?,
        engagedGeneratorTrace, notes}. `steps` is the ordered plan: TRANSFORM {index, transientStereotypePrefix, prefixShared?,
        transformations:[{label, templateModel, generatorModule, sourceLanguage, mappingConfigurations}]}, CHECKPOINT {name,
        plan, persisted, checkpointModelName?}, FORK {hasCondition, conditionPrintable?, branchInputStereotypePrefix,
        branch:[steps]}. A step's transient models are named `<model long name>@<transientStereotypePrefix><minor>`;
        `prefixShared`:true marks a prefix that another step of the plan (main or any fork branch) also writes, so such
        models are told apart by reference, not name. `usedLanguages[].coverage` is IN_PLAN, NOT_IN_PLAN or NO_GENERATORS. When the model uses a
        language that is not deployed, no plan is computed: `planComputed`:false lists them in `notDeployedLanguages`.
        `conflicts` and `ignoredPriorityRules` (mapping priority problems) come with a DEFAULT plan only. The plan is computed
        now; mapping-configuration and fork conditions are evaluated at generation time, so the static plan lists every
        candidate. `warnings` reports an undeployed language, a model make does not generate, and plan lookup errors.
        Returns `{"ok":true,"data":{...}}` on success or `{"ok":false,"error":"..."}` on failure; `data` is inline up to
        `maxInlineBytes` (default 20000), otherwise a temp-file path. See the `mps-aspect-generation-plan` and
        `mps-aspect-generator` skills.
    """)
    suspend fun mps_mcp_generation(
        @McpDescription("Required. The operation to perform (PLAN)") operation: String = "",
        @McpDescription("Required. Parameters for the operation, as a JSON object — sent as real JSON or as its string form.") parameters: JsonOrText = JsonOrText.EMPTY,
        @McpDescription("Inline results up to this many characters in `data`; larger ones are saved to a temp file whose path is returned instead (default 20000).") maxInlineBytes: Int = DEFAULT_MAX_INLINE_BYTES
    ): String {
        // D43: see mps_mcp_query_nodes for the order (a supplied but unknown operation wins over a blank blob).
        if (operation.isBlank()) {
            rejectMissingParameters(
                "mps_mcp_generation",
                requiredOperation<GenerationOperation>(operation),
                requiredParametersBlob(parameters.text),
            )?.let { return it }
        }
        val op = resolveOperationOrNull<GenerationOperation>(operation)
            ?: return McpCallOutcomes.record(unknownOperation<GenerationOperation>(operation))
        rejectMissingParameters(
            "mps_mcp_generation",
            requiredParametersBlob(parameters.text, op.name, generationParameterKeys(op)),
        )?.let { return it }
        return mps_mcp_generation(op, parameters.text, maxInlineBytes)
    }

    /**
     * Internal enum-typed entry point for [mps_mcp_generation]; the String overload above is the
     * registered `@McpTool` (see [resolveOperationOrNull] for the rationale).
     */
    suspend fun mps_mcp_generation(
        operation: GenerationOperation,
        parameters: String,
        maxInlineBytes: Int = DEFAULT_MAX_INLINE_BYTES
    ): String = withMpsProject("MPS generation: $operation") { mpsProject ->
        val params = try {
            Gson().fromJson(parameters, JsonObject::class.java)
        } catch (e: Exception) {
            return@withMpsProject invalidJson("Invalid JSON parameters: ${e.message}")
        }
        params.rejectUnknownParameterKeys(operation.name, generationParameterKeys(operation))
        params.rejectMissingParameterKeys(operation.name, generationParameterKeys(operation))

        when (operation) {
            GenerationOperation.PLAN -> opPlan(mpsProject, params, maxInlineBytes)
        }
    }

    private suspend fun opPlan(mpsProject: MPSProject, params: JsonObject, maxInlineBytes: Int): String {
        val modelReference = params.requiredParamString(PARAM_MODEL)
        val ignoreExternalPlan = params.paramBoolean("ignoreExternalPlan", default = false)
        // Not thrown inside the read action, where ActionDispatcher would log the user error as SEVERE.
        val rendered = executeBackgroundRead(mpsProject) {
            resolveModelPreferringProject(mpsProject, modelReference)?.let { GenerationOps.planJson(it, mpsProject.repository, ignoreExternalPlan) }
        } ?: throw McpNotFoundException("Model '$modelReference' at parameters.model not found")
        return finalizeResult(rendered.json.toString(), maxInlineBytes, warnings = rendered.warnings)
    }
}
