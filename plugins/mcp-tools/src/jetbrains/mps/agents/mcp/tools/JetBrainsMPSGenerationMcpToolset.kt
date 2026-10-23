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
    TRACE,
    TRANSIENT_MODELS,
    DROP_TRANSIENT_MODELS,
}

private val PARAM_MODEL = BlobKey("model", "modelReference", "modelRef")

private val PLAN_KEYS = ParameterKeys.of(
    required(PARAM_MODEL, "the model's reference or full name (stereotype included)"),
    "ignoreExternalPlan",
)

private val TRACE_KEYS = ParameterKeys.of(
    required(PARAM_NODE_REFERENCE, "the node's reference, from an original model or one of its transient models"),
    required("direction", "FORWARD or BACKWARD"),
    "groupBy", "compactTemplates", "includeEmptySteps", "maxChanges",
)

private val TRANSIENT_MODELS_KEYS = ParameterKeys.of(PARAM_MODEL)

private val DROP_TRANSIENT_MODELS_KEYS = ParameterKeys.of("includeCheckpoints")

/** The accepted `parameters` keys of each [GenerationOperation]. */
private fun generationParameterKeys(operation: GenerationOperation): ParameterKeys = when (operation) {
    GenerationOperation.PLAN -> PLAN_KEYS
    GenerationOperation.TRACE -> TRACE_KEYS
    GenerationOperation.TRANSIENT_MODELS -> TRANSIENT_MODELS_KEYS
    GenerationOperation.DROP_TRANSIENT_MODELS -> DROP_TRANSIENT_MODELS_KEYS
}

// MCP tool methods use snake_case names because they are part of the public MCP protocol
// surface, and they are invoked via reflection by the MCP server framework, so static
// analysis flags them as "never used".
@Suppress("FunctionName", "unused")
class JetBrainsMPSGenerationMcpToolset : AbstractOps() {

    @McpTool
    @McpDescription("""
        Generation debugging, read-only except DROP_TRANSIENT_MODELS. PLAN {model (reference or full name), ignoreExternalPlan (default false)} → the
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
        TRACE {nodeReference, direction FORWARD|BACKWARD, groupBy CHANGE|NODE, compactTemplates, includeEmptySteps (these
        three default to the IDE tracer's settings), maxChanges (default 200, caps the returned entries)} → the generation
        trace of a node, what the IDE's "Show Generation Trace"/"Traceback" shows; needs a make with saveTransientModels:true,
        else NOT_FOUND. Result {node, direction, originalInputNode? (the input node a transient node was generated from),
        options, steps:[{input, output, inputReference, outputReference, changes:[{input, output, templates}] (CHANGE) or
        nodes:[{input, outputs, templates}|{output, inputs, templates}] (NODE)}], changesTotal, truncated?, changesReturned?,
        notes}; the counts are of entries, one per change with CHANGE or per node group with NODE. A changed node is
        {reference, concept, presentation, model}, `{reference, resolved:false}` when it no longer resolves, or `<no input>`/
        `<no output>` for a created or deleted node. A template is a node with `role` RULE (the mapping rule that fired),
        TEMPLATE_CALL (a template call, weave or call-site macro, or a rule's template reference), LOOP (a loop macro),
        TEMPLATE (the parent of a template fragment) or UNKNOWN, plus `templateRoot`, `templateModel` and `generatorModule`;
        interpreted generators record LOOP and TEMPLATE, compiled ones only rules and calls. compactTemplates keeps only
        the innermost template within each template root, which can hide the rule that encloses it. BACKWARD from a node of
        the original model has no steps: start from a node of one of its transient models.
        TRANSIENT_MODELS {model? (an original model by reference or name, or a transient model by reference; omitted = all)}
        → the transient models the project's last make kept (MAKE with saveTransientModels:true), what the Project view's
        Transient models folder shows: {saveTransientModelsSetting, originals:[{model, originalModelReference (or
        originalModelCandidates, or originalResolved:false), originalModule, transientModule, transientModuleReference,
        traceAvailable, models:[{name, reference, stereotype, kind INITIAL_CLONE|STEP|FORK_BRANCH|OTHER, stereotypePrefix?,
        minor?, branch, roots (or loaded:false for a swapped-out model)}]}], checkpoints:[{name, reference, stereotype, kind
        CHECKPOINT, checkpoint?, generationPlan? (or attributesAvailable:false), roots}], notes}. `stereotypePrefix` matches
        PLAN's `transientStereotypePrefix`, and for a branch's input copy (its lowest minor) the FORK's
        `branchInputStereotypePrefix`; `branch` is 0 on the main branch, so a fork branch's models, which reuse later
        main-branch prefixes, are told apart by reference and branch, never by name. Read a listed
        model with mps_mcp_print_node, mps_mcp_query_nodes or mps_mcp_get_project_structure (startingPoint = its reference);
        write tools refuse it (NOT_EDITABLE). The next make, from any tool or the user, discards them all.
        DROP_TRANSIENT_MODELS {includeCheckpoints (default true)} → frees the transient models, as the IDE's "Remove Transient
        Models" does: {droppedModules, droppedModels, includeCheckpoints, droppedCheckpointModels}; the checkpoints module is
        shared by every open project. TRANSIENT_MODELS and DROP_TRANSIENT_MODELS take `parameters` `{}` when nothing is passed
        and are refused while a make runs.
        Returns `{"ok":true,"data":{...}}` on success or `{"ok":false,"error":"..."}` on failure; `data` is inline up to
        `maxInlineBytes` (default 20000), otherwise a temp-file path. See the `mps-aspect-generation-plan` and
        `mps-aspect-generator` skills.
    """)
    suspend fun mps_mcp_generation(
        @McpDescription("Required. The operation to perform (PLAN, TRACE, TRANSIENT_MODELS, DROP_TRANSIENT_MODELS)") operation: String = "",
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
            GenerationOperation.TRACE -> opTrace(mpsProject, params, maxInlineBytes)
            GenerationOperation.TRANSIENT_MODELS -> opTransientModels(mpsProject, params, maxInlineBytes)
            GenerationOperation.DROP_TRANSIENT_MODELS -> opDropTransientModels(mpsProject, params)
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

    private suspend fun opTransientModels(mpsProject: MPSProject, params: JsonObject, maxInlineBytes: Int): String {
        val modelReference = params.paramString(PARAM_MODEL)
        // Refused and reported outside the read action, where ActionDispatcher would log the user error as SEVERE.
        TransientModelsOps.refuseWhileMakeActive(mpsProject, "TRANSIENT_MODELS")
        TransientModelsOps.provider(mpsProject)
        val json = executeBackgroundRead(mpsProject) {
            if (modelReference == null) return@executeBackgroundRead TransientModelsOps.transientModelsJson(mpsProject, null)
            resolveModelPreferringProject(mpsProject, modelReference)?.let { TransientModelsOps.transientModelsJson(mpsProject, it) }
        } ?: throw McpNotFoundException(
            "Model '$modelReference' at parameters.model not found. A transient model reference stops resolving when the next make starts."
        )
        return finalizeResult(json.toString(), maxInlineBytes)
    }

    private suspend fun opDropTransientModels(mpsProject: MPSProject, params: JsonObject): String {
        val includeCheckpoints = params.paramBoolean("includeCheckpoints", default = true)
        // On the EDT outside any read action: the provider takes its own write action.
        val dropped = withModalTimeoutOnEdt { TransientModelsOps.dropTransientModels(mpsProject, includeCheckpoints) }
        return finalizeResult(dropped.json.toString(), warnings = dropped.warnings)
    }

    private suspend fun opTrace(mpsProject: MPSProject, params: JsonObject, maxInlineBytes: Int): String {
        val nodeReference = params.requiredParamString(PARAM_NODE_REFERENCE)
        val options = GenerationTraceOps.parseOptions(params, GenerationTraceOps.traceSettings(mpsProject))
        TransientModelsOps.refuseWhileMakeActive(mpsProject, "TRACE")
        // (trace or null, model name) or null for a missing node; the user errors are thrown outside the read action.
        val found = executeBackgroundRead(mpsProject) {
            resolveNodeReferencePreferringProject(mpsProject, nodeReference)?.resolve(mpsProject.repository)?.let { node ->
                GenerationTraceOps.traceJson(mpsProject, node, mpsProject.repository, options) to node.model?.name?.value
            }
        } ?: throw McpNotFoundException(
            "Node '$nodeReference' at parameters.nodeReference not found. A transient node reference stops resolving when the next make starts."
        )
        val trace = found.first ?: throw McpNotFoundException(
            "No generation trace for model '${found.second}': rerun mps_mcp_alter_nodes MAKE on it with saveTransientModels:true, then call TRACE again."
        )
        val warnings = if (trace.has("truncated")) listOf("Only the first ${options.maxChanges} entries are returned; raise parameters.maxChanges for more.") else emptyList()
        return finalizeResult(trace.toString(), maxInlineBytes, warnings = warnings)
    }
}
