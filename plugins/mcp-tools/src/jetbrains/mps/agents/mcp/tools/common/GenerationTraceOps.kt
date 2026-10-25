package jetbrains.mps.agents.mcp.tools.common

import com.google.gson.JsonArray
import com.google.gson.JsonObject
import jetbrains.mps.extapi.model.TransientSModel
import jetbrains.mps.generator.GenerationSettingsProvider
import jetbrains.mps.generator.GenerationTrace
import jetbrains.mps.generator.IGenerationSettings.GenTraceSettings
import jetbrains.mps.generator.TransientModelsProvider
import jetbrains.mps.project.MPSProject
import jetbrains.mps.smodel.SModelStereotype
import jetbrains.mps.textgen.trace.TracingUtil
import org.jetbrains.mps.openapi.language.SAbstractConcept
import org.jetbrains.mps.openapi.language.SConcept
import org.jetbrains.mps.openapi.language.SInterfaceConcept
import org.jetbrains.mps.openapi.model.SModelReference
import org.jetbrains.mps.openapi.model.SNode
import org.jetbrains.mps.openapi.model.SNodeReference
import org.jetbrains.mps.openapi.module.SRepository
import org.jetbrains.mps.openapi.persistence.PersistenceFacade

/** Which way `mps_mcp_generation` TRACE walks the generation trace from its node. */
internal enum class TraceDirection { FORWARD, BACKWARD }

/** How TRACE groups a step's changes: one entry per (input, output) pair, or one per node on the far side of the walk. */
internal enum class TraceGrouping { CHANGE, NODE }

/**
 * What a recorded template node is, derived from its concept: the engine records whichever generator node did the work
 * (a rule, a template call site, an interpreted `$LOOP$`, or the parent of an interpreted template fragment).
 */
internal enum class TemplateRole { RULE, TEMPLATE_CALL, LOOP, TEMPLATE, UNKNOWN }

/** The presentation options of one TRACE call. */
internal class TraceOptions(
    val direction: TraceDirection,
    val groupBy: TraceGrouping,
    val compactTemplates: Boolean,
    val includeEmptySteps: Boolean,
    val maxChanges: Int,
)

/**
 * `mps_mcp_generation` TRACE: a port of the visitor core of the IDE's generation tracer (`TraceBuilderUI`) that renders
 * the trace of a node as JSON, with the role of every recorded template node.
 */
internal object GenerationTraceOps {

    const val DEFAULT_MAX_CHANGES = 200

    private const val GENERATOR_STRUCTURE = "jetbrains.mps.lang.generator."

    /** Concepts (or their super concepts and interfaces) whose instances the engine records as the rule that fired; no trace call records a DropAttributeRule today. */
    private val RULE_CONCEPTS = listOf("BaseMappingRule", "ReductionRule", "CreateRootRule", "DropRootRule", "DropAttributeRule")
        .map { GENERATOR_STRUCTURE + it }

    /** Macros and template references the engine records as the call site of a template declaration. */
    private val TEMPLATE_CALL_CONCEPTS = listOf("TemplateCallMacro", "WeaveMacro", "InsertCallSiteMacro", "TemplateDeclarationReference")
        .map { GENERATOR_STRUCTURE + it }

    private const val LOOP_CONCEPT = GENERATOR_STRUCTURE + "LoopMacro"

    const val LIFECYCLE_NOTE =
        "Every make, from any tool or the IDE, starts by discarding all transient models and traces; the references in this result stop resolving then."
    const val ANCESTOR_NOTE =
        "A node with no trace record of its own is traced through its nearest recorded ancestor, and copied nodes have no records, " +
            "so a change can name an enclosing node rather than the one asked about. The walk follows the generation steps in order, " +
            "across fork branches, so it can pass from one branch into another."
    const val GRANULARITY_NOTE =
        "Rules and template calls are recorded for every generator; loop macros and template fragments (role TEMPLATE, reported as the " +
            "fragment's parent node) are recorded for interpreted templates only; property and reference macros are never recorded."
    const val LONG_NAME_NOTE =
        "Traces are looked up by the original model's long name: when two models with the same long name in different modules were made, TRACE may return the other one's trace."
    const val NO_STEP_FORWARD_NOTE =
        "No generation step took this node's model as input: it is the last transient model of its make, or a model this trace does not cover."
    const val NO_STEP_BACKWARD_NOTE =
        "No generation step output this node's model: it is the first transient copy of the original model, or a model this trace " +
            "does not cover; walk FORWARD from it."
    const val BACKWARD_ORIGINAL_NOTE =
        "BACKWARD from a node of the original (non-transient) model finds nothing, because no generation step outputs that model: " +
            "walk FORWARD from it, or BACKWARD from a node of one of its transient models."

    /**
     * The role [conceptAncestors] (`<language>.<concept name>` of a resolved template node's concept, its super concepts and
     * interfaces) gives the node; null [conceptAncestors] means the template node did not resolve.
     */
    fun templateRole(conceptAncestors: Set<String>?, fromGeneratorModel: Boolean): TemplateRole = when {
        conceptAncestors == null -> TemplateRole.UNKNOWN
        RULE_CONCEPTS.any { it in conceptAncestors } -> TemplateRole.RULE
        LOOP_CONCEPT in conceptAncestors -> TemplateRole.LOOP
        TEMPLATE_CALL_CONCEPTS.any { it in conceptAncestors } -> TemplateRole.TEMPLATE_CALL
        fromGeneratorModel -> TemplateRole.TEMPLATE
        else -> TemplateRole.UNKNOWN
    }

    /** `<language>.<concept name>` of [concept], its super concepts and all interfaces it implements. */
    fun conceptAncestors(concept: SAbstractConcept): Set<String> {
        val seen = LinkedHashSet<SAbstractConcept>()
        val queue = ArrayDeque<SAbstractConcept>().apply { add(concept) }
        while (queue.isNotEmpty()) {
            val current = queue.removeFirst()
            if (!seen.add(current)) continue
            when (current) {
                is SConcept -> {
                    current.superConcept?.let(queue::add)
                    queue.addAll(current.superInterfaces)
                }
                is SInterfaceConcept -> queue.addAll(current.superInterfaces)
            }
        }
        return seen.mapTo(LinkedHashSet()) { "${it.language.qualifiedName}.${it.name}" }
    }

    /** The IDE's tracer presentation settings, which give TRACE its defaults. */
    fun traceSettings(mpsProject: MPSProject): GenTraceSettings =
        mpsProject.getComponent(GenerationSettingsProvider::class.java)?.generationSettings?.traceSettings ?: GenTraceSettings()

    /**
     * The options of a TRACE call from its `parameters`, defaulting to the IDE tracer's [settings] as the "Show
     * Generation Trace" action applies them.
     */
    fun parseOptions(params: JsonObject, settings: GenTraceSettings): TraceOptions {
        val direction = enumParam<TraceDirection>(params, "direction")
            ?: throw AbstractOps.McpInvalidRequestException("parameters.direction is required: FORWARD or BACKWARD")
        val groupBy = enumParam<TraceGrouping>(params, "groupBy")
            ?: if (settings.isGroupByChange) TraceGrouping.CHANGE else TraceGrouping.NODE
        val maxChanges = params.paramInt("maxChanges") ?: DEFAULT_MAX_CHANGES
        if (maxChanges < 1) throw AbstractOps.McpInvalidRequestException("parameters.maxChanges must be at least 1, got $maxChanges")
        return TraceOptions(
            direction = direction,
            groupBy = groupBy,
            compactTemplates = params.paramBoolean("compactTemplates", settings.isCompactTemplates),
            includeEmptySteps = params.paramBoolean("includeEmptySteps", settings.isShowEmptySteps),
            maxChanges = maxChanges,
        )
    }

    private inline fun <reified E : Enum<E>> enumParam(params: JsonObject, key: String): E? {
        val element = params.get(key)?.takeUnless { it.isJsonNull } ?: return null
        if (!element.isJsonPrimitive) {
            throw AbstractOps.McpInvalidRequestException("parameters.$key must be one of ${enumValues<E>().joinToString(", ") { it.name }}, got $element")
        }
        val raw = element.asString.trim().takeIf { it.isNotEmpty() } ?: return null
        return enumValues<E>().firstOrNull { it.name.equals(raw, ignoreCase = true) }
            ?: throw AbstractOps.McpInvalidRequestException(
                "parameters.$key '$raw' is not one of ${enumValues<E>().joinToString(", ") { it.name }}"
            )
    }

    /** One step of the walk as the visitor saw it: the changes keyed by (input, output), each with its templates in recorded order. */
    class Step(val input: SModelReference, val output: SModelReference) {
        val changes = LinkedHashMap<Pair<SNodeReference, SNodeReference>, LinkedHashSet<SNodeReference>>()
    }

    /** Collects the steps a [GenerationTrace] walk dispatches, as `TraceBuilderUI.StepChanges` does. */
    class Collector : GenerationTrace.Visitor {
        val steps = mutableListOf<Step>()
        private var current: Step? = null

        override fun beginStep(input: SModelReference, output: SModelReference) {
            current = Step(input, output).also(steps::add)
        }

        override fun change(input: SNodeReference, output: SNodeReference, template: SNodeReference) {
            checkNotNull(current) { "change outside a step" }.changes.getOrPut(input to output) { LinkedHashSet() }.add(template)
        }

        override fun endStep(input: SModelReference, output: SModelReference) {
            current = null
        }
    }

    /**
     * The trace of [node], or null when no make kept a trace for its model. Needs read access to [repository], the
     * repository the transient models are published to, which also holds the template models.
     */
    fun traceJson(mpsProject: MPSProject, node: SNode, repository: SRepository, options: TraceOptions): JsonObject? {
        val model = checkNotNull(node.model) { "a resolved node outside a model" }
        val provider = mpsProject.getComponent(TransientModelsProvider::class.java) ?: return null
        val trace = TransientModelsOps.traceOf(provider, model.reference, repository) ?: return null
        val collector = Collector()
        when (options.direction) {
            TraceDirection.FORWARD -> trace.walkForward(node, collector)
            TraceDirection.BACKWARD -> trace.walkBackward(node, collector)
        }
        return render(node, repository, collector.steps, options)
    }

    /** [steps] of a walk from [node] as the TRACE result. */
    fun render(node: SNode, repository: SRepository, steps: List<Step>, options: TraceOptions): JsonObject {
        val transient = node.model is TransientSModel
        val result = JsonObject()
        result.add("node", nodeJson(node))
        result.addProperty("direction", options.direction.name)
        if (transient) {
            TracingUtil.getInputNode(node, repository)?.let { result.add("originalInputNode", nodeJson(it)) }
        }
        result.add("options", JsonObject().apply {
            addProperty("groupBy", options.groupBy.name)
            addProperty("compactTemplates", options.compactTemplates)
            addProperty("includeEmptySteps", options.includeEmptySteps)
            addProperty("maxChanges", options.maxChanges)
        })

        val templates = TemplateRenderer(repository)
        val stepsJson = JsonArray()
        var total = 0
        var returned = 0
        var truncated = false
        for (step in steps) {
            val entries = when (options.groupBy) {
                TraceGrouping.CHANGE -> changeEntries(step, repository, templates, options.compactTemplates)
                TraceGrouping.NODE -> nodeEntries(step, repository, templates, options)
            }
            if (entries.isEmpty() && !options.includeEmptySteps) continue
            total += entries.size
            if (truncated) continue
            val kept = entries.take(options.maxChanges - returned)
            returned += kept.size
            if (kept.size < entries.size) truncated = true
            if (kept.isEmpty() && entries.isNotEmpty()) continue
            stepsJson.add(JsonObject().apply {
                addProperty("input", step.input.name.value)
                addProperty("output", step.output.name.value)
                addProperty("inputReference", PersistenceFacade.getInstance().asString(step.input))
                addProperty("outputReference", PersistenceFacade.getInstance().asString(step.output))
                add(if (options.groupBy == TraceGrouping.CHANGE) "changes" else "nodes", JsonArray().apply { kept.forEach(::add) })
            })
        }
        result.add("steps", stepsJson)
        result.addProperty("changesTotal", total)
        if (truncated) {
            result.addProperty("truncated", true)
            result.addProperty("changesReturned", returned)
        }

        val notes = mutableListOf(LIFECYCLE_NOTE, ANCESTOR_NOTE, GRANULARITY_NOTE, LONG_NAME_NOTE)
        if (options.direction == TraceDirection.BACKWARD && !transient) notes.add(0, BACKWARD_ORIGINAL_NOTE)
        else if (steps.isEmpty()) notes.add(0, if (options.direction == TraceDirection.FORWARD) NO_STEP_FORWARD_NOTE else NO_STEP_BACKWARD_NOTE)
        result.add("notes", JsonArray().apply { notes.forEach(::add) })
        return result
    }

    private fun changeEntries(step: Step, repository: SRepository, templates: TemplateRenderer, compact: Boolean): List<JsonObject> =
        step.changes.map { (change, recorded) ->
            JsonObject().apply {
                add("input", endpointJson(change.first, repository, input = true))
                add("output", endpointJson(change.second, repository, input = false))
                add("templates", templates.render(recorded, compact))
            }
        }

    /**
     * One entry per node on the far side of the walk's step: per input node walking FORWARD, per output node walking
     * BACKWARD, with the nodes it maps to and the templates of all those changes.
     */
    private fun nodeEntries(step: Step, repository: SRepository, templates: TemplateRenderer, options: TraceOptions): List<JsonObject> {
        val forward = options.direction == TraceDirection.FORWARD
        val grouped = LinkedHashMap<SNodeReference, Pair<LinkedHashSet<SNodeReference>, LinkedHashSet<SNodeReference>>>()
        for ((change, recorded) in step.changes) {
            val (key, other) = if (forward) change else change.second to change.first
            val group = grouped.getOrPut(key) { LinkedHashSet<SNodeReference>() to LinkedHashSet() }
            group.first.add(other)
            group.second.addAll(recorded)
        }
        return grouped.map { (key, group) ->
            JsonObject().apply {
                add(if (forward) "input" else "output", endpointJson(key, repository, input = forward))
                add(if (forward) "outputs" else "inputs", JsonArray().apply { group.first.forEach { add(endpointJson(it, repository, input = !forward)) } })
                add("templates", templates.render(group.second, options.compactTemplates))
            }
        }
    }

    /** A changed node: `<no input>` / `<no output>` for a recorded creation or deletion, `resolved:false` when it is gone. */
    private fun endpointJson(ref: SNodeReference, repository: SRepository, input: Boolean): JsonObject {
        if (ref.nodeId == null) {
            return JsonObject().apply {
                addProperty("presentation", if (input) "<no input>" else "<no output>")
                ref.modelReference?.let { addProperty("model", it.name.value) }
            }
        }
        val node = ref.resolve(repository) ?: return unresolvedJson(ref)
        return nodeJson(node)
    }

    private fun unresolvedJson(ref: SNodeReference): JsonObject = JsonObject().apply {
        addProperty("reference", PersistenceFacade.getInstance().asString(ref))
        addProperty("resolved", false)
        ref.modelReference?.let { addProperty("model", it.name.value) }
    }

    private fun nodeJson(node: SNode): JsonObject = JsonObject().apply {
        addProperty("reference", PersistenceFacade.getInstance().asString(node.reference))
        addProperty("concept", node.concept.name)
        addProperty("presentation", node.presentation)
        node.model?.let { addProperty("model", it.name.value) }
    }

    /** Renders recorded template nodes with their role, resolving each against the repository at most once. */
    private class TemplateRenderer(private val repository: SRepository) {
        private val resolved = HashMap<SNodeReference, SNode?>()

        private fun resolve(ref: SNodeReference): SNode? = resolved.getOrPut(ref) { ref.resolve(repository) }

        fun render(recorded: Collection<SNodeReference>, compact: Boolean): JsonArray {
            val array = JsonArray()
            val refs = if (compact) compact(recorded) else recorded
            refs.forEach { array.add(templateJson(it)) }
            return array
        }

        /**
         * Only the most specific of the recorded templates within one root, as `TraceBuilderUI.compactTemplates`
         * keeps them; unresolved templates are kept as they are.
         */
        private fun compact(recorded: Collection<SNodeReference>): List<SNodeReference> {
            val result = mutableListOf<SNodeReference>()
            val mostSpecific = LinkedHashSet<SNode>()
            outer@ for (ref in recorded) {
                val template = resolve(ref)
                if (template == null) {
                    result.add(ref)
                    continue
                }
                for (known in ArrayList(mostSpecific)) {
                    if (known.containingRoot != template.containingRoot) continue
                    if (isAncestor(known, template)) {
                        mostSpecific.remove(known)
                        mostSpecific.add(template)
                        continue@outer
                    }
                    if (isAncestor(template, known)) continue@outer
                }
                mostSpecific.add(template)
            }
            mostSpecific.forEach { result.add(it.reference) }
            return result
        }

        private fun isAncestor(ancestor: SNode, node: SNode): Boolean =
            generateSequence(node.parent) { it.parent }.any { it == ancestor }

        private fun templateJson(ref: SNodeReference): JsonObject {
            val template = resolve(ref) ?: return unresolvedJson(ref).apply { addProperty("role", TemplateRole.UNKNOWN.name) }
            val model = template.model
            val role = templateRole(conceptAncestors(template.concept), model != null && SModelStereotype.isGeneratorModel(model))
            return nodeJson(template).apply {
                addProperty("role", role.name)
                val root = template.containingRoot
                add("templateRoot", JsonObject().apply {
                    addProperty("reference", PersistenceFacade.getInstance().asString(root.reference))
                    addProperty("concept", root.concept.name)
                    addProperty("presentation", root.presentation)
                })
                model?.let {
                    addProperty("templateModel", it.name.value)
                    it.module?.moduleName?.let { module -> addProperty("generatorModule", module) }
                }
            }
        }
    }
}
