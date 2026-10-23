package jetbrains.mps.agents.mcp.tools.common

import com.intellij.openapi.diagnostic.ControlFlowException
import com.intellij.openapi.progress.ProcessCanceledException
import jetbrains.mps.classloading.ClassLoaderManager
import jetbrains.mps.project.MPSProject
import jetbrains.mps.smodel.language.LanguageRegistry
import jetbrains.mps.smodel.runtime.ModuleRuntime
import org.jetbrains.mps.openapi.model.SNode
import java.lang.reflect.InvocationTargetException
import java.lang.reflect.Method

/**
 * `jetbrains.mps.dataFlow.runtime`, seen through reflection. The runtime is an MPS-compiled solution that
 * mcp-tools cannot compile against, so its classes come from the module's own class loader, and every
 * [Class] and [Method] is resolved again for each tool call: a class reload invalidates them. A missing class
 * or member is a [ReflectiveOperationException]; an exception a builder throws is a [DataflowBuilderFailure].
 *
 * The program comes from the registered `MPSProgramFactory`, as the devkit's dataflow actions get it, with no
 * builder modes selected: the same program the deprecated `DataFlow.buildProgram`, behind every shipped check,
 * builds. Call it inside a model read.
 */
internal class DataflowRuntime private constructor(private val loader: ClassLoader) {
    private val factoryClass = load("jetbrains.mps.lang.dataFlow.MPSProgramFactory")
    private val programClass = load("$FRAMEWORK.Program")
    private val instructionClass = load("$INSTRUCTIONS.Instruction")
    private val readClass = load("$INSTRUCTIONS.ReadInstruction")
    private val writeClass = load("$INSTRUCTIONS.WriteInstruction")
    private val jumpClass = load("$INSTRUCTIONS.AbstractJumpInstruction")
    private val analyzerClass = load("$FRAMEWORK.DataFlowAnalyzer")
    private val resultClass = load("$FRAMEWORK.AnalysisResult")

    private val createProgram = factoryClass.getMethod("createProgram", SNode::class.java)
    private val size = programClass.getMethod("size")
    private val get = programClass.getMethod("get", Int::class.javaPrimitiveType)
    private val outerJumps = programClass.getMethod("hasOuterJumps")
    private val analyze = programClass.getMethod("analyze", analyzerClass)
    private val index = instructionClass.getMethod("getIndex")
    private val source = instructionClass.getMethod("getSource")
    private val ruleReference = instructionClass.getMethod("getRuleReference")
    private val commandPresentation = instructionClass.getMethod("commandPresentation")
    private val succ = instructionClass.getMethod("succ")
    private val readVariable = readClass.getMethod("getVariable")
    private val writeVariable = writeClass.getMethod("getVariable")
    private val writeValue = writeClass.getMethod("getValue")
    private val jumpTo = jumpClass.getMethod("getJumpTo")
    private val resultGet = resultClass.getMethod("get", instructionClass)
    private val userObject = instructionClass.getMethod("getUserObject", Any::class.java)
    private val mayBeUnreachableKey = load("jetbrains.mps.lang.dataFlow.DataFlow").getField("MAY_BE_UNREACHABLE").get(null)

    private fun load(name: String): Class<*> = loader.loadClass(name)

    /**
     * The program of [node], built by the first registered factory under the registry's read lock. Throws
     * [DataflowBuilderFailure] when the builders throw, and [ClassNotFoundException] when no factory is registered.
     */
    fun build(registry: LanguageRegistry, node: SNode): Program {
        var program: Any? = null
        var failure: Throwable? = null
        var factories = 0
        @Suppress("UNCHECKED_CAST")
        registry.withAvailableExtensions(factoryClass as Class<Any>, ModuleRuntime.Extension.any()) { factory ->
            if (factories++ > 0) return@withAvailableExtensions
            try {
                program = createProgram.invoke(factory, node)
            } catch (e: InvocationTargetException) {
                failure = e.cause ?: e
            }
        }
        failure?.let {
            rethrowIfControlFlow(it)
            throw DataflowBuilderFailure(it)
        }
        val built = program
            ?: throw ClassNotFoundException("no ${factoryClass.name} is registered: the dataflow runtime is not deployed")
        return Program(built, factories)
    }

    /** One built program. Instructions are read once; each analysis runs when it is asked for. */
    inner class Program(private val program: Any, val factoryCount: Int) {
        private val raw: List<Any> = (0 until (size.invoke(program) as Int)).map { get.invoke(program, it) }

        val hasOuterJumps: Boolean = outerJumps.invoke(program) as Boolean

        val instructions: List<Instruction> = raw.mapIndexed { i, instruction ->
            val jump = if (jumpClass.isInstance(instruction)) jumpTo.invoke(instruction) as Int else null
            Instruction(
                index = i,
                kind = kindOf(instruction.javaClass),
                text = commandPresentation.invoke(instruction) as String,
                source = source.invoke(instruction),
                ruleReference = ruleReference.invoke(instruction) as String?,
                isRead = readClass.isInstance(instruction),
                isWrite = writeClass.isInstance(instruction),
                variable = when {
                    readClass.isInstance(instruction) -> readVariable.invoke(instruction)
                    writeClass.isInstance(instruction) -> writeVariable.invoke(instruction)
                    else -> null
                },
                value = if (writeClass.isInstance(instruction)) writeValue.invoke(instruction) else null,
                // An outer jump keeps its target's default, 0, and gets a real edge to instruction 0.
                jumpTo = jump,
                outer = jump == 0 && hasOuterJumps,
                mayBeUnreachable = userObject.invoke(instruction, mayBeUnreachableKey) == true,
                successors = (succ.invoke(instruction) as Set<*>).map { index.invoke(it) as Int }.sorted(),
            )
        }

        private fun indicesOf(set: Any?): Set<Int> = (set as Collection<*>).mapTo(sortedSetOf()) { index.invoke(it) as Int }

        /**
         * The unreachable instructions the shipped reachability check counts: it skips those marked `mayBeUnreachable`
         * (every label and `endTry`, and what a builder wraps in `mayBeUnreachable`) and those without a source.
         */
        fun unreachable(): Set<Int> = unreachableInstructions().filterTo(sortedSetOf()) { !instructions[it].mayBeUnreachable && instructions[it].source != null }

        /** Every instruction no path from the start reaches. */
        fun unreachableInstructions(): Set<Int> = indicesOf(programClass.getMethod("getUnreachableInstructions").invoke(program))

        fun uninitializedReads(): Set<Int> = indicesOf(programClass.getMethod("getUninitializedReads").invoke(program))

        fun unusedAssignments(): Set<Int> = indicesOf(programClass.getMethod("getUnusedAssignments").invoke(program))

        private fun analysis(analyzer: String): Any =
            analyze.invoke(program, load("$FRAMEWORK.analyzers.$analyzer").getConstructor().newInstance())

        /** For each read in [reads], the writes of its variable that reach it (`ReachingDefinitionsAnalyzer`). */
        fun reachingWrites(reads: Collection<Int>): Map<Int, Set<Int>> {
            val result = analysis("ReachingDefinitionsAnalyzer")
            return reads.associateWith { read ->
                val variable = instructions[read].variable
                indicesOf(resultGet.invoke(result, raw[read])).filterTo(sortedSetOf()) { instructions[it].variable == variable }
            }
        }

        /**
         * For each write in [writes], the reads of its variable it feeds (`ReachingReadsAnalyzer`, backward): the
         * reads reaching its successors, as Inline Variable collects them. The write's own state has its variable's
         * reads removed already.
         */
        fun reachingReads(writes: Collection<Int>): Map<Int, Set<Int>> {
            val result = analysis("ReachingReadsAnalyzer")
            return writes.associateWith { write ->
                val variable = instructions[write].variable
                instructions[write].successors.flatMapTo(sortedSetOf()) { next ->
                    indicesOf(resultGet.invoke(result, raw[next])).filter { instructions[it].variable == variable }
                }
            }
        }
    }

    /**
     * One instruction: [kind] is `read`, `write`, `jump`, `ifjump`, `ret`, `nop`, `label`, `try`, `finally`,
     * `endTry`, `end`, or the lower-cased class name of an instruction kind an analyzer added; [text] is the
     * runtime's own presentation, as the devkit's Print DFA prints it.
     */
    class Instruction(
        val index: Int,
        val kind: String,
        val text: String,
        val source: Any?,
        val ruleReference: String?,
        val isRead: Boolean,
        val isWrite: Boolean,
        val variable: Any?,
        val value: Any?,
        val jumpTo: Int?,
        val outer: Boolean,
        val mayBeUnreachable: Boolean,
        val successors: List<Int>,
    )

    companion object {
        const val RUNTIME_MODULE = "jetbrains.mps.dataFlow.runtime"
        private const val FRAMEWORK = "jetbrains.mps.lang.dataFlow.framework"
        private const val INSTRUCTIONS = "$FRAMEWORK.instructions"

        private val KINDS = mapOf(
            "ReadInstruction" to "read", "WriteInstruction" to "write", "IfJumpInstruction" to "ifjump",
            "JumpInstruction" to "jump", "RetInstruction" to "ret", "LabelNopInstruction" to "label",
            "NopInstruction" to "nop", "TryInstruction" to "try", "FinallyInstruction" to "finally",
            "EndTryInstruction" to "endTry", "EndInstruction" to "end",
        )

        private fun kindOf(type: Class<*>): String =
            generateSequence(type) { it.superclass }.firstNotNullOfOrNull { KINDS[it.simpleName] }
                ?: type.simpleName.removeSuffix("Instruction").replaceFirstChar { it.lowercase() }

        /** The runtime of [mpsProject]'s repository, through the runtime module's class loader. */
        fun of(mpsProject: MPSProject): DataflowRuntime {
            val module = mpsProject.repository.modules.firstOrNull { it.moduleName == RUNTIME_MODULE }
                ?: throw ClassNotFoundException("module $RUNTIME_MODULE is not loaded")
            val manager = mpsProject.getComponent(ClassLoaderManager::class.java)
                ?: throw ClassNotFoundException("no ClassLoaderManager to load $RUNTIME_MODULE")
            return DataflowRuntime(manager.getClassLoader(module))
        }

        private fun rethrowIfControlFlow(e: Throwable) {
            if (e is ProcessCanceledException || e is ControlFlowException || e is java.util.concurrent.CancellationException ||
                e is VirtualMachineError
            ) throw e
        }
    }
}

/** What a dataflow builder threw while the program was built: a result of the query, not an internal error. */
internal class DataflowBuilderFailure(val error: Throwable) : Exception(error.message, error)

/**
 * The frame of the generated builder class (`<Concept>_DataFlow`) closest to where [error] or one of its causes
 * was thrown; null when no builder class is on the stack. Positions (`label(node, "x")`, `before`, `after`) and the
 * try-block checks are resolved after every builder has returned, so their failures have none.
 */
internal fun dataflowBuilderFrame(error: Throwable): StackTraceElement? =
    generateSequence(error) { it.cause.takeIf { cause -> cause !== it } }
        .flatMap { it.stackTrace.asSequence() }
        .firstOrNull { it.className.substringAfterLast('.').endsWith("_DataFlow") }
