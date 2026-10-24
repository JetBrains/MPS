package jetbrains.mps.agents.mcp.tools

import jetbrains.mps.agents.mcp.tools.common.*

import com.google.gson.Gson
import com.google.gson.JsonArray
import com.google.gson.JsonElement
import com.google.gson.JsonNull
import com.google.gson.JsonObject
import com.google.gson.JsonPrimitive
import com.intellij.mcpserver.annotations.McpDescription
import com.intellij.mcpserver.annotations.McpTool
import jetbrains.mps.agents.mcp.tools.languages.BaseLanguageMeta
import jetbrains.mps.agents.mcp.tools.logging.McpCallOutcomes
import jetbrains.mps.project.MPSProject
import jetbrains.mps.smodel.behaviour.BHReflection
import jetbrains.mps.smodel.language.LanguageRegistry
import org.jetbrains.mps.openapi.language.SConcept
import org.jetbrains.mps.openapi.model.SNode
import org.jetbrains.mps.openapi.module.SRepository
import org.jetbrains.mps.openapi.persistence.PersistenceFacade

/** The operations of `mps_mcp_query_dataflow`; each one has its own `parameters` keys in [queryDataflowParameterKeys]. */
enum class DataflowQueryOperation {
    PRINT_PROGRAM,
    REACHING_WRITES,
    REACHING_READS,
}

/** The shipped checks skip a program above this size (`DataFlowUtil.maxProgramSize`); PRINT_PROGRAM lists this many. */
internal const val DEFAULT_MAX_INSTRUCTIONS = 400

private val PARAM_PROGRAM_ROOT = BlobKey("programRoot", "programRootReference")

private val PRINT_PROGRAM_KEYS = ParameterKeys.of(
    required(PARAM_NODE_REFERENCE, "the reference of the node to build the program from, e.g. a method body or a script's command list"),
    "maxInstructions",
)

private val REACHING_WRITES_KEYS = ParameterKeys.of(
    required(PARAM_NODE_REFERENCE, "the reference of a node that reads a variable (e.g. a variable reference), or of a node whose subtree does"),
    PARAM_PROGRAM_ROOT,
)

private val REACHING_READS_KEYS = ParameterKeys.of(
    required(PARAM_NODE_REFERENCE, "the reference of a node that writes a variable (an assignment, an initialized declaration), or of a node whose subtree does"),
    PARAM_PROGRAM_ROOT,
)

/** The accepted `parameters` keys of each [DataflowQueryOperation]. */
private fun queryDataflowParameterKeys(operation: DataflowQueryOperation): ParameterKeys = when (operation) {
    DataflowQueryOperation.PRINT_PROGRAM -> PRINT_PROGRAM_KEYS
    DataflowQueryOperation.REACHING_WRITES -> REACHING_WRITES_KEYS
    DataflowQueryOperation.REACHING_READS -> REACHING_READS_KEYS
}

private const val OUTER_JUMPS_WARNING =
    "the program has outer jumps (a break, continue or return whose target lies outside the program root): they are " +
        "listed with jumpTo:null, outer:true; the runtime routes them to instruction 0, so reachability is distorted. " +
        "Build from the enclosing body for exact answers"

private const val EMPTY_PROGRAM_WARNING =
    "the program is only `end`: no builder emitted an instruction for this node. Its concept may have no dataflow builder, " +
        "or the language was not rebuilt since its builders changed"

// MCP tool methods use snake_case names because they are part of the public MCP protocol
// surface, and they are invoked via reflection by the MCP server framework, so static
// analysis flags them as "never used".
@Suppress("FunctionName", "unused")
class JetBrainsMPSDataflowMcpToolset : AbstractOps() {

    @McpTool
    @McpDescription("""
        Read-only dataflow queries: the language's compiled dataflow builders build the program of a node, as the IDE's
        "Language Debug > Show Data Flow Graph" does, and the engine's own analyses answer. PRINT_PROGRAM {nodeReference,
        maxInstructions (default 400)} → {program:{root, size, hasOuterJumps}, instructions:[{index, kind, text, source,
        rule?, variable?, value?, jumpTo?, outer?, mayBeUnreachable?, succ?}], unreachable, uninitializedReads,
        unusedAssignments}: the program built from exactly that node. `kind` is read, write, jump, ifjump, ret, nop, label,
        try, finally, endTry or end; `text` is the runtime's presentation (`ifjump 7`); `source` is the node the
        instruction stands for, {reference, concept, presentation}; `rule` is {rule, ruleReference, statement}:
        `rule`/`ruleReference` the builder root (`IfStatement_DataFlow`), `statement` the emit statement inside it; labels
        and `end` have none (`code for` emits no instruction of its own). `succ` is listed only when control does not
        just fall through to index+1: an `ifjump` continues at index+1 or at `jumpTo`, and which side is a condition's
        true branch depends on the builder. `outer`:true with `jumpTo`:null is a jump out of the program root (a jump
        back to instruction 0 in a program with outer jumps looks the same). The three index sets are the instructions
        the checks report on ("Unreachable node", "might not have been initialized", "Unused assignment"):
        `unreachable` lists every unreachable instruction, and which a language's check reports is its own choice
        (BaseLanguage's skips `mayBeUnreachable` ones and those without a source; Kaja's reports them); entries about
        a variable declared outside the program root that the program never writes on entry (a field, an outer local)
        are left out, with a warning. REACHING_WRITES {nodeReference, programRoot?} → {program, scope, reads:[{index,
        source, variable, writes:[{index, source, variable, value, rule?}], uninitializedPath?, unreachable?,
        variableOutsideProgram?}]}: for each read the node emits ("value from here"), the writes of its variable that
        can reach it; `uninitializedPath`:true means some path reaches it with no write (not reported for a
        `variableOutsideProgram` read). REACHING_READS {nodeReference,
        programRoot?} → {program, scope, writes:[{index, source, variable, value, rule?, reads:[{index, source}],
        unreachable?, variableOutsideProgram?}]}: for each write, the reads it can feed; empty `reads` is a dead write
        within the program. `variableOutsideProgram`:true marks a variable declared outside the root that the program
        does not write on entry, whose other uses it cannot see. A local declaration without an initializer emits no
        write; a field's builder writes the field, with no value, before its initializer.
        `scope` is `node` when the node itself emits the reads or writes, `subtree` when only its descendants do.
        Without `programRoot` the program is built from the body of the nearest IMethodLike above the node (a method,
        ConceptFunction or closure; the IMethodLike itself for a node outside its body, e.g. a parameter), the statement
        list of a static or instance initializer, else the field, else from the containing root. A method, initializer
        or field node is its own root, as is a ConceptFunction other than a closure; a closure node (a ClosureLiteral,
        or regexp's ReplaceBlock, a BaseLanguage Closure) gets the enclosing body, and so does a field of an anonymous
        class, whose builder builds its fields;
        `program.root` echoes it. BaseLanguage's body builder writes the method's parameters first. Analyses are
        intraprocedural and variable-level: nothing flows through calls or fields, and a language without builders
        yields an empty program. A builder that throws is a result, not an error: {builderFailure:{exception, message,
        builder?:{name, class, ruleReference?}, stack, cause?}} with a warning; `builder` is the builder class on the
        stack, absent for failures raised after the builders ran (an unresolved label, incomplete try blocks); a
        LinkageError means the language must be rebuilt (mps_mcp_alter_nodes MAKE). Builders take effect only after the
        language is rebuilt. Returns `{"ok":true,"data":{...}}` on success or `{"ok":false,"error":"..."}` on failure;
        `data` is inline up to `maxInlineBytes` (default 20000), otherwise a temp-file path. See the `mps-mcp-workflow`
        skill (`references/analysis-tools/dataflow-queries.md`) and `mps-aspect-dataflow`.
    """)
    suspend fun mps_mcp_query_dataflow(
        @McpDescription("Required. The operation to perform (PRINT_PROGRAM, REACHING_WRITES, REACHING_READS)") operation: String = "",
        @McpDescription("Required. Parameters for the operation, as a JSON object — sent as real JSON or as its string form.") parameters: JsonOrText = JsonOrText.EMPTY,
        @McpDescription("Inline results up to this many characters in `data`; larger ones are saved to a temp file whose path is returned instead (default 20000).") maxInlineBytes: Int = DEFAULT_MAX_INLINE_BYTES
    ): String {
        // D43: see mps_mcp_query_nodes for the order (a supplied but unknown operation wins over a blank blob).
        if (operation.isBlank()) {
            rejectMissingParameters(
                "mps_mcp_query_dataflow",
                requiredOperation<DataflowQueryOperation>(operation),
                requiredParametersBlob(parameters.text),
            )?.let { return it }
        }
        val op = resolveOperationOrNull<DataflowQueryOperation>(operation)
            ?: return McpCallOutcomes.record(unknownOperation<DataflowQueryOperation>(operation))
        rejectMissingParameters(
            "mps_mcp_query_dataflow",
            requiredParametersBlob(parameters.text, op.name, queryDataflowParameterKeys(op)),
        )?.let { return it }
        return mps_mcp_query_dataflow(op, parameters.text, maxInlineBytes)
    }

    /**
     * Internal enum-typed entry point for [mps_mcp_query_dataflow]; the String overload above is the
     * registered `@McpTool` (see [resolveOperationOrNull] for the rationale).
     */
    suspend fun mps_mcp_query_dataflow(
        operation: DataflowQueryOperation,
        parameters: String,
        maxInlineBytes: Int = DEFAULT_MAX_INLINE_BYTES
    ): String = withMpsProject("Querying MPS dataflow: $operation") { mpsProject ->
        val params = try {
            Gson().fromJson(parameters, JsonObject::class.java)
        } catch (e: Exception) {
            return@withMpsProject invalidJson("Invalid JSON parameters: ${e.message}")
        }
        params.rejectUnknownParameterKeys(operation.name, queryDataflowParameterKeys(operation))
        params.rejectMissingParameterKeys(operation.name, queryDataflowParameterKeys(operation))

        val nodeReference = params.requiredParamString(PARAM_NODE_REFERENCE)
        val maxInstructions = params.paramInt("maxInstructions") ?: DEFAULT_MAX_INSTRUCTIONS
        if (maxInstructions < 1) {
            return@withMpsProject errJson("'parameters.maxInstructions' must be at least 1, got $maxInstructions", McpErrorCode.INVALID_REQUEST)
        }
        val programRootReference = params.paramString(PARAM_PROGRAM_ROOT)
        val answer = try {
            // User errors come back as a value and are thrown outside the read action.
            executeBackgroundRead(mpsProject) answer@{
                val node = try {
                    resolveNode(mpsProject, nodeReference)
                } catch (e: McpUserException) {
                    return@answer Answer.Thrown(e)
                }
                    ?: return@answer Answer.NotFound("Node '$nodeReference' at parameters.nodeReference not found")
                val query = Query(mpsProject, DataflowRuntime.of(mpsProject))
                when (operation) {
                    DataflowQueryOperation.PRINT_PROGRAM -> query.printProgram(node, maxInstructions)
                    else -> {
                        val programRoot = if (programRootReference == null) defaultProgramRoot(node) else {
                            try {
                                resolveNode(mpsProject, programRootReference)
                            } catch (e: McpUserException) {
                                return@answer Answer.Thrown(e)
                            } ?: return@answer Answer.NotFound("Node '$programRootReference' at parameters.programRoot not found")
                        }
                        if (!node.isInSubtreeOf(programRoot)) {
                            return@answer Answer.Invalid(
                                "Node '$nodeReference' does not lie in the subtree of parameters.programRoot '$programRootReference'"
                            )
                        }
                        query.reaching(node, programRoot, defaulted = programRootReference == null, writes = operation == DataflowQueryOperation.REACHING_WRITES)
                    }
                }
            }
        } catch (e: ReflectiveOperationException) {
            val failure = if (e is java.lang.reflect.InvocationTargetException) "failed analysing the program" else "could not be reached"
            return@withMpsProject errJson(
                "The dataflow runtime (${DataflowRuntime.RUNTIME_MODULE}) $failure: ${reflectionFailureDetail(e)}",
                McpErrorCode.INTERNAL_ERROR,
            )
        }
        when (answer) {
            is Answer.NotFound -> throw McpNotFoundException(answer.message)
            is Answer.Invalid -> throw McpInvalidRequestException(answer.message)
            is Answer.Thrown -> throw answer.error
            is Answer.Result -> finalizeResult(answer.json.toString(), maxInlineBytes, answer.details, answer.warnings)
        }
    }

    private sealed class Answer {
        class NotFound(val message: String) : Answer()
        class Invalid(val message: String) : Answer()
        class Thrown(val error: McpUserException) : Answer()
        class Result(val json: JsonObject, val warnings: List<String>, val details: Map<String, Any?> = emptyMap()) : Answer()
    }

    private fun resolveNode(mpsProject: MPSProject, reference: String): SNode? =
        resolveNodeReferencePreferringProject(mpsProject, reference)?.resolve(mpsProject.repository)

    /** The work of one call, inside its model read. */
    private inner class Query(private val mpsProject: MPSProject, private val runtime: DataflowRuntime) {
        private val repository: SRepository = mpsProject.repository
        private val warnings = mutableListOf<String>()

        /** What the builders threw, set by [build]. */
        private var failed: JsonObject? = null

        /** The program of [root], or the builder failure as the answer. */
        private fun build(root: SNode): DataflowRuntime.Program? = try {
            runtime.build(LanguageRegistry.getInstance(repository), root).also { program ->
                if (program.factoryCount > 1) warnings.add("${program.factoryCount} dataflow program factories are registered; the first one built the program")
                if (program.hasOuterJumps) warnings.add(OUTER_JUMPS_WARNING)
                if (program.instructions.size == 1) warnings.add(EMPTY_PROGRAM_WARNING)
            }
        } catch (failure: DataflowBuilderFailure) {
            failed = builderFailureJson(failure.error)
            null
        }

        private fun failureAnswer(root: SNode, defaulted: Boolean = false): Answer.Result {
            val failure = checkNotNull(failed)
            warnings.add(0, buildString {
                append("the dataflow builders threw while building the program, so there is no program: see data.builderFailure")
                if (failure.has("stale")) append("; a LinkageError means the language's compiled builders are out of date: rebuild it with mps_mcp_alter_nodes MAKE")
            })
            failure.remove("stale")
            return Answer.Result(JsonObject().apply {
                add("program", JsonObject().apply {
                    add("root", nodeJson(root))
                    if (defaulted) addProperty("defaulted", true)
                })
                add("builderFailure", failure)
            }, warnings)
        }

        fun printProgram(root: SNode, maxInstructions: Int): Answer {
            val program = build(root) ?: return failureAnswer(root)
            val outside = outsideVariables(program, root)
            val instructions = JsonArray()
            program.instructions.take(maxInstructions).forEach { instructions.add(instructionJson(it)) }
            val (left, uninitialized) = program.uninitializedReads().partition { program.instructions[it].variable in outside }
            val (leftWrites, unused) = program.unusedAssignments().partition { program.instructions[it].variable in outside }
            val dropped = (left + leftWrites).mapTo(LinkedHashSet()) { variableName(program.instructions[it].variable) }
            if (dropped.isNotEmpty()) {
                warnings.add(
                    "${left.size + leftWrites.size} uninitializedReads / unusedAssignments entries are left out: they are about " +
                        "variables declared outside the program root that it does not write on entry (${dropped.joinToString(", ")}), " +
                        "whose other writes and reads lie outside the program"
                )
            }
            val result = JsonObject().apply {
                add("program", programJson(program, root, defaulted = false))
                add("instructions", instructions)
                add("unreachable", indexArray(program.unreachable()))
                add("uninitializedReads", indexArray(uninitialized))
                add("unusedAssignments", indexArray(unused))
            }
            val truncated = program.instructions.size > maxInstructions
            if (truncated) {
                warnings.add("only the first $maxInstructions of ${program.instructions.size} instructions are listed; raise parameters.maxInstructions for more")
            }
            return Answer.Result(result, warnings, if (truncated) mapOf("truncated" to true, "instructionsReturned" to maxInstructions) else emptyMap())
        }

        /** REACHING_WRITES when [writes], else REACHING_READS. */
        fun reaching(node: SNode, root: SNode, defaulted: Boolean, writes: Boolean): Answer {
            val program = build(root) ?: return failureAnswer(root, defaulted)
            val wanted = program.instructions.filter { if (writes) it.isRead else it.isWrite }
            val own = wanted.filter { it.source == node }
            val subtree = wanted.filter { instruction ->
                (instruction.source as? SNode)?.isInSubtreeOf(node) == true
            }
            val chosen = own.ifEmpty { subtree }
            if (chosen.isEmpty()) {
                warnings.add(
                    "neither the node nor its subtree emits a ${if (writes) "read" else "write"} instruction in this program" +
                        if (writes) "; REACHING_WRITES takes a read (e.g. a variable reference), REACHING_READS a write" else
                            "; REACHING_READS takes a write (an assignment, an initialized declaration), REACHING_WRITES a read"
                )
            }
            val outside = outsideVariables(program, root)
            val unreachable = program.unreachable()
            val entries = JsonArray()
            if (writes) {
                val uninitialized = program.uninitializedReads()
                val reaching = program.reachingWrites(chosen.map { it.index })
                for (read in chosen) {
                    entries.add(JsonObject().apply {
                        addProperty("index", read.index)
                        add("source", nodeJson(read.source))
                        add("variable", variableJson(read.variable))
                        add("writes", JsonArray().apply {
                            reaching.getValue(read.index).forEach { add(writeJson(program.instructions[it])) }
                        })
                        if (read.index in uninitialized && read.variable !in outside) addProperty("uninitializedPath", true)
                        if (read.index in unreachable) addProperty("unreachable", true)
                        if (read.variable in outside) addProperty("variableOutsideProgram", true)
                    })
                }
            } else {
                val reaching = program.reachingReads(chosen.map { it.index })
                for (write in chosen) {
                    entries.add(writeJson(write).apply {
                        add("reads", JsonArray().apply {
                            reaching.getValue(write.index).forEach { read ->
                                add(JsonObject().apply {
                                    addProperty("index", read)
                                    add("source", nodeJson(program.instructions[read].source))
                                })
                            }
                        })
                        if (write.index in unreachable) addProperty("unreachable", true)
                        if (write.variable in outside) addProperty("variableOutsideProgram", true)
                    })
                }
            }
            val result = JsonObject().apply {
                add("program", programJson(program, root, defaulted))
                addProperty("scope", if (own.isNotEmpty() || chosen.isEmpty()) "node" else "subtree")
                add(if (writes) "reads" else "writes", entries)
            }
            return Answer.Result(result, warnings)
        }

        private fun programJson(program: DataflowRuntime.Program, root: SNode, defaulted: Boolean) = JsonObject().apply {
            add("root", nodeJson(root))
            if (defaulted) addProperty("defaulted", true)
            addProperty("size", program.instructions.size)
            addProperty("hasOuterJumps", program.hasOuterJumps)
        }

        private fun instructionJson(instruction: DataflowRuntime.Instruction) = JsonObject().apply {
            addProperty("index", instruction.index)
            addProperty("kind", instruction.kind)
            addProperty("text", instruction.text)
            add("source", nodeJson(instruction.source))
            instruction.ruleReference?.let { add("rule", ruleJson(it)) }
            if (instruction.isRead || instruction.isWrite) add("variable", variableJson(instruction.variable))
            if (instruction.isWrite) add("value", nodeJson(instruction.value))
            if (instruction.jumpTo != null) {
                if (instruction.outer) {
                    add("jumpTo", JsonNull.INSTANCE)
                    addProperty("outer", true)
                } else {
                    addProperty("jumpTo", instruction.jumpTo)
                }
            }
            if (instruction.mayBeUnreachable) addProperty("mayBeUnreachable", true)
            if (instruction.successors != listOf(instruction.index + 1)) add("succ", indexArray(instruction.successors))
        }

        private fun writeJson(write: DataflowRuntime.Instruction) = JsonObject().apply {
            addProperty("index", write.index)
            add("source", nodeJson(write.source))
            add("variable", variableJson(write.variable))
            add("value", nodeJson(write.value))
            write.ruleReference?.let { add("rule", ruleJson(it)) }
        }

        /** `{rule, ruleReference, statement}` of an emit statement's `<modelRef>/<nodeId>`; kept as given when it does not parse. */
        private fun ruleJson(reference: String): JsonObject =
            ruleJsonObject(runCatching { PersistenceFacade.getInstance().createNodeReference(reference) }.getOrNull(), reference, repository)

        /**
         * Variables declared outside [root]'s subtree that the program does not write on entry, i.e. from a source
         * outside the root: a field, a local of an enclosing method. A method's parameters, declared outside its body,
         * are written by BaseLanguage's body builder from the parameter declarations, so they are not among these.
         */
        private fun outsideVariables(program: DataflowRuntime.Program, root: SNode): Set<Any> {
            fun outsideRoot(node: Any?) = node is SNode && !node.isInSubtreeOf(root)
            val enteredWritten = program.instructions.filter { it.isWrite && outsideRoot(it.source) }.mapTo(HashSet()) { it.variable }
            return program.instructions.mapNotNullTo(LinkedHashSet()) { instruction ->
                instruction.variable?.takeIf { outsideRoot(it) && it !in enteredWritten }
            }
        }

        /**
         * `builderFailure` for what a builder threw: the exception, the builder class on the stack and its root, and the
         * top frames. `stale` (removed before it is returned) marks a LinkageError.
         */
        private fun builderFailureJson(error: Throwable) = JsonObject().apply {
            addProperty("exception", error.javaClass.name)
            addProperty("message", error.message)
            dataflowBuilderFrame(error)?.let { frame ->
                add("builder", JsonObject().apply {
                    val name = frame.className.substringAfterLast('.')
                    addProperty("name", name)
                    addProperty("class", frame.className)
                    builderRoot(frame.className)?.let { addProperty("ruleReference", PersistenceFacade.getInstance().asString(it.reference)) }
                })
            }
            add("stack", JsonArray().apply { error.stackTrace.take(MAX_FAILURE_FRAMES).forEach { add(it.toString()) } })
            generateSequence(error.cause) { it.cause.takeIf { cause -> cause !== it } }.firstOrNull()?.let {
                addProperty("cause", "${it.javaClass.name}: ${it.message}")
            }
            if (generateSequence(error) { it.cause.takeIf { cause -> cause !== it } }.any { it is LinkageError && it !is ExceptionInInitializerError }) {
                addProperty("stale", true)
            }
        }

        /** The builder root a generated `<language>.dataFlow.<Name>_DataFlow` class came from, or null. */
        private fun builderRoot(className: String): SNode? {
            val name = className.substringAfterLast('.')
            return aspectModelRoots(repository, className.substringBeforeLast('.'), "dataFlow")
                // A builder's name is computed from its concept (and modes), so only its presentation carries it.
                .firstOrNull { it.presentation == name }
        }
    }

    /**
     * The node REACHING_WRITES and REACHING_READS build from when no `programRoot` is given: the body of the nearest
     * IMethodLike (the IMethodLike itself when [node] lies outside its body), the statement list of the nearest static
     * or instance initializer, else the nearest field, else the containing root. Every shipped check builds from a body
     * rather than from the declaration; a closure's own builder emits only its external reads, so its body is the root
     * inside it, and the enclosing body the root of the closure node itself. A field is only the fallback: an anonymous
     * class's builder builds its fields, so the body around the class is the root of a field in it.
     */
    private fun defaultProgramRoot(node: SNode): SNode {
        var field: SNode? = null
        for (ancestor in generateSequence(if (isOwnProgramRoot(node.concept)) node else node.parent) { it.parent }) {
            val concept = ancestor.concept
            val body = when {
                concept.isSubConceptOf(BaseLanguageMeta.iMethodLikeConcept) ->
                    BHReflection.invoke0(ancestor, BaseLanguageMeta.iMethodLikeConcept, BaseLanguageMeta.getBodyId) as SNode?
                concept.isSubConceptOf(BaseLanguageMeta.staticInitializerConcept) ->
                    ancestor.getChildren(BaseLanguageMeta.staticInitializerStatementListLink).firstOrNull()
                concept.isSubConceptOf(BaseLanguageMeta.instanceInitializerConcept) ->
                    ancestor.getChildren(BaseLanguageMeta.instanceInitializerStatementListLink).firstOrNull()
                isField(concept) -> {
                    field = field ?: ancestor
                    continue
                }
                else -> continue
            }
            return body?.takeIf { node.isInSubtreeOf(it) } ?: ancestor
        }
        return field ?: node.containingRoot
    }

    /**
     * A node of [concept] is its own default root: a method, a ConceptFunction, an initializer, or a field outside any
     * body, whose builders build the body, the statement list or the initializer. A closure is not: `ClosureLiteral`
     * and BaseLanguage's abstract `Closure` (a ConceptFunction; regexp's `ReplaceBlock` is concrete) emit only their
     * captured reads.
     */
    private fun isOwnProgramRoot(concept: SConcept): Boolean =
        concept.isSubConceptOf(BaseLanguageMeta.baseMethodDeclarationConcept) ||
            concept.isSubConceptOf(BaseLanguageMeta.conceptFunctionConcept) && !concept.isSubConceptOf(BaseLanguageMeta.closureConcept) ||
            concept.isSubConceptOf(BaseLanguageMeta.staticInitializerConcept) ||
            concept.isSubConceptOf(BaseLanguageMeta.instanceInitializerConcept) ||
            isField(concept)

    /** A field's builder (`VariableDeclaration_DataFlow`) writes the field and builds its initializer. */
    private fun isField(concept: SConcept): Boolean =
        concept.isSubConceptOf(BaseLanguageMeta.fieldDeclarationConcept) || concept.isSubConceptOf(BaseLanguageMeta.staticFieldDeclarationConcept)

    private companion object {
        const val MAX_FAILURE_FRAMES = 12

        fun nodeJson(node: Any?): JsonElement = when (node) {
            null -> JsonNull.INSTANCE
            is SNode -> JsonObject().apply {
                addProperty("reference", node.model?.let { PersistenceFacade.getInstance().asString(node.reference) })
                addProperty("concept", node.concept.name)
                addProperty("presentation", node.presentation)
            }
            else -> JsonPrimitive(node.toString())
        }

        fun variableName(variable: Any?): String = (variable as? SNode)?.let { it.name ?: it.presentation } ?: variable.toString()

        /** `{name, reference?}`: a variable is normally its declaration node; a builder may use any object. */
        fun variableJson(variable: Any?): JsonElement = JsonObject().apply {
            addProperty("name", variableName(variable))
            (variable as? SNode)?.takeIf { it.model != null }?.let { addProperty("reference", PersistenceFacade.getInstance().asString(it.reference)) }
        }

        fun indexArray(indices: Collection<Int>) = JsonArray().apply { indices.sorted().forEach { add(it) } }
    }
}
