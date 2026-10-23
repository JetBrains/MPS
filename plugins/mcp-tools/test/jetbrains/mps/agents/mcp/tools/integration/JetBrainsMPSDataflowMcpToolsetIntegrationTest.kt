package jetbrains.mps.agents.mcp.tools.integration

import jetbrains.mps.agents.mcp.tools.*

import com.google.gson.JsonObject
import com.google.gson.JsonParser
import org.jetbrains.mps.openapi.model.SModel
import org.jetbrains.mps.openapi.model.SNode
import org.jetbrains.mps.openapi.model.SNodeUtil
import org.jetbrains.mps.openapi.persistence.PersistenceFacade
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * `mps_mcp_query_dataflow` on S14's `Ledger.settle`: a loop with `continue` and an early return, a branch, and a
 * try-finally. The reaching answers are the ones study scenario S14 pinned with a console probe of the engine
 * (`study/scenarios/S14/done_criteria.md`), and BaseLanguage's builders give every read and write a rule.
 */
class JetBrainsMPSDataflowMcpToolsetIntegrationTest : McpIntegrationTestBase() {

    private val toolset = JetBrainsMPSDataflowMcpToolset()

    @Test
    fun `PRINT_PROGRAM lists the body's instructions with sources and rules`() {
        val ledger = createLedger()
        val response = query(DataflowQueryOperation.PRINT_PROGRAM, """{"nodeReference":"${ledger.body}"}""")
        // `System.out` is read and never written in the body; the parameters are written by the body's builder.
        val warning = JsonParser.parseString(response).asJsonObject.getAsJsonArray("warnings").single().asString
        assertTrue(warning, warning.contains("(out)"))
        val result = data(response)
        val program = result.getAsJsonObject("program")
        assertEquals("StatementList", program.getAsJsonObject("root").get("concept").asString)
        assertFalse(program.get("hasOuterJumps").asBoolean)
        val instructions = result.getAsJsonArray("instructions").map { it.asJsonObject }
        assertEquals(program.get("size").asInt, instructions.size)
        assertEquals("end", instructions.last().get("kind").asString)
        val kinds = instructions.map { it.get("kind").asString }.toSet()
        assertTrue("loop, branch and try-finally kinds: $kinds", kinds.containsAll(listOf("read", "write", "ifjump", "jump", "ret", "try", "finally", "endTry")))
        for (jump in instructions.filter { it.has("jumpTo") }) {
            assertTrue("$jump", jump.get("jumpTo").asInt in instructions.indices)
        }
        val writes = instructions.filter { it.get("kind").asString == "write" }
        for (write in writes) {
            val rule = write.getAsJsonObject("rule")
            assertNotNull("every BaseLanguage write names its builder: $write", rule)
            assertTrue("$rule", rule.get("ruleReference").asString.contains("dataFlow)/"))
            assertEquals("DataFlowBuilderDeclaration", conceptOf(rule.get("ruleReference").asString))
            assertNotNull(write.getAsJsonObject("variable").get("reference"))
        }
        // The body's builder writes the parameters before the first statement.
        assertEquals(listOf("amounts", "strict", "total", "fee", "last"), writes.take(5).map { it.getAsJsonObject("variable").get("name").asString })
        assertEquals(0, result.getAsJsonArray("unreachable").size())
        assertEquals(0, result.getAsJsonArray("uninitializedReads").size())
    }

    @Test
    fun `PRINT_PROGRAM of an inner statement reports its outer jumps and caps the listing`() {
        val ledger = createLedger()
        val partial = JsonParser.parseString(query(DataflowQueryOperation.PRINT_PROGRAM, """{"nodeReference":"${ledger.firstIf}"}""")).asJsonObject
        val result = payloadObjectFromOkData(partial.toString())
        assertTrue("`continue` leaves the if: $result", result.getAsJsonObject("program").get("hasOuterJumps").asBoolean)
        val outer = result.getAsJsonArray("instructions").map { it.asJsonObject }.filter { it.has("outer") }
        assertTrue("$result", outer.isNotEmpty())
        assertTrue(outer.all { it.get("jumpTo").isJsonNull })
        assertTrue("$partial", partial.getAsJsonArray("warnings").any { it.asString.contains("outer jumps") })
        // `a` and `strict` are declared outside the if, so their reads are left out of uninitializedReads.
        assertEquals(0, result.getAsJsonArray("uninitializedReads").size())

        val capped = JsonParser.parseString(query(DataflowQueryOperation.PRINT_PROGRAM, """{"nodeReference":"${ledger.body}","maxInstructions":3}""")).asJsonObject
        assertTrue("$capped", capped.getAsJsonObject("details").get("truncated").asBoolean)
        assertEquals(3, payloadObjectFromOkData(capped.toString()).getAsJsonArray("instructions").size())

        assertEquals("INVALID_REQUEST", error(query(DataflowQueryOperation.PRINT_PROGRAM, """{"nodeReference":"${ledger.body}","maxInstructions":0}""")))
        assertEquals("NOT_FOUND", error(query(DataflowQueryOperation.PRINT_PROGRAM, """{"nodeReference":"$DUMMY_NODE_REF"}""")))
    }

    @Test
    fun `REACHING_WRITES and REACHING_READS answer S14's questions`() {
        val ledger = createLedger()
        val program = data(query(DataflowQueryOperation.PRINT_PROGRAM, """{"nodeReference":"${ledger.body}"}"""))
            .getAsJsonArray("instructions").map { it.asJsonObject }
        fun of(kind: String, variable: String) =
            program.filter { it.get("kind").asString == kind && it.getAsJsonObject("variable").get("name").asString == variable }
        val feeWrites = of("write", "fee").map { it.get("index").asInt }
        val feeReads = of("read", "fee")
        val totalWrites = of("write", "total").map { it.get("index").asInt }
        val lastReads = of("read", "last")
        assertEquals("int fee = 5, fee = 0, fee = fee + 1", 3, feeWrites.size)

        // Q1: `int fee = 5` and `fee = 0` reach the read in `total = total - fee`.
        assertEquals(feeWrites.take(2).toSet(), writesReaching(feeReads.first()))
        // Q4: all three reach `println(fee)` in the finally block.
        assertEquals(feeWrites.toSet(), writesReaching(feeReads.last()))
        // Q2: only `total = total - fee` reaches `return total`.
        assertEquals(setOf(totalWrites.last()), writesReaching(of("read", "total").last()))
        // Q5: `fee = fee + 1` feeds only `println(fee)`.
        val lastFeeWrite = program[feeWrites.last()]
        assertEquals(setOf(feeReads.last().get("index").asInt), readsFedBy(lastFeeWrite))
        // Q3: `int last = -1` can reach the read in `last > 50`.
        val lastDeclaration = of("write", "last").first()
        assertTrue(lastReads.last().get("index").asInt in readsFedBy(lastDeclaration))
    }

    @Test
    fun `the program root defaults to the method body and can be the method`() {
        val ledger = createLedger()
        val amountsRead = ledger.amountsReference
        val defaulted = data(query(DataflowQueryOperation.REACHING_WRITES, """{"nodeReference":"$amountsRead"}"""))
        val root = defaulted.getAsJsonObject("program")
        assertEquals(ledger.body, root.getAsJsonObject("root").get("reference").asString)
        assertTrue(root.get("defaulted").asBoolean)
        assertEquals("node", defaulted.get("scope").asString)
        // BaseLanguage's body builder writes the method's parameters, so the body's program sees them initialized.
        val read = defaulted.getAsJsonArray("reads").single().asJsonObject
        val parameterWrite = read.getAsJsonArray("writes").single().asJsonObject
        assertEquals("$read", "ParameterDeclaration", parameterWrite.getAsJsonObject("source").get("concept").asString)
        assertFalse("$read", read.has("variableOutsideProgram"))
        assertFalse("$read", read.has("uninitializedPath"))

        val fromMethod = data(query(DataflowQueryOperation.REACHING_WRITES, """{"nodeReference":"$amountsRead","programRoot":"${ledger.method}"}"""))
        assertFalse(fromMethod.getAsJsonObject("program").has("defaulted"))
        assertEquals(ledger.method, fromMethod.getAsJsonObject("program").getAsJsonObject("root").get("reference").asString)
        assertEquals(1, fromMethod.getAsJsonArray("reads").single().asJsonObject.getAsJsonArray("writes").size())

        // `System.out` is a field: read here, written nowhere in the program.
        val println = data(query(DataflowQueryOperation.REACHING_WRITES, """{"nodeReference":"${ledger.printlnStatement}"}"""))
        assertEquals("subtree", println.get("scope").asString)
        val out = println.getAsJsonArray("reads").map { it.asJsonObject }.single { it.getAsJsonObject("variable").get("name").asString == "out" }
        assertTrue("$out", out.get("variableOutsideProgram").asBoolean)
        assertFalse("not reported for a variable whose writes lie outside: $out", out.has("uninitializedPath"))
        assertEquals(0, out.getAsJsonArray("writes").size())

        // A statement emits no read itself; its subtree's reads answer.
        val statement = data(query(DataflowQueryOperation.REACHING_WRITES, """{"nodeReference":"${ledger.returnStatement}"}"""))
        assertEquals("subtree", statement.get("scope").asString)
        assertEquals(1, statement.getAsJsonArray("reads").size())

        val none = JsonParser.parseString(query(DataflowQueryOperation.REACHING_READS, """{"nodeReference":"${ledger.returnStatement}"}""")).asJsonObject
        assertEquals(0, payloadObjectFromOkData(none.toString()).getAsJsonArray("writes").size())
        assertTrue("$none", none.getAsJsonArray("warnings").any { it.asString.contains("REACHING_READS takes a write") })

        assertEquals("INVALID_REQUEST", error(query(DataflowQueryOperation.REACHING_WRITES,
            """{"nodeReference":"$amountsRead","programRoot":"${ledger.firstIf}"}""")))
    }

    @Test
    fun `the index sets match the checks on branches, partial programs and parameters`() {
        val solution = createSolution()
        val model = createModel(solution, "${solution.moduleName}.code")
        parseClass(model, SHAPES_CODE)
        val (pickBody, ignoreBody) = readOnRepo {
            val root = model.rootNodes.single { it.name == "Shapes" }
            listOf("pick", "ignore").map { method ->
                ref(root.children.single { it.name == method }.children.single { it.containmentLink?.name == "body" })
            }
        }
        // Both branches return, so IfStatement's `jump after` is unreachable: listed, and flagged mayBeUnreachable, which is
        // why BaseLanguage's check does not report it.
        val pick = data(query(DataflowQueryOperation.PRINT_PROGRAM, """{"nodeReference":"$pickBody"}"""))
        val unreachable = pick.getAsJsonArray("unreachable").map { it.asInt }
        val instructions = pick.getAsJsonArray("instructions").map { it.asJsonObject }
        assertTrue("$pick", unreachable.isNotEmpty())
        assertTrue("$pick", unreachable.all { instructions[it].has("mayBeUnreachable") || instructions[it].get("source").isJsonNull })
        assertTrue("$pick", unreachable.any { instructions[it].get("kind").asString == "jump" })

        // An unused parameter is written from its declaration and never read: the "Unused parameter" warning's assignment.
        val ignore = data(query(DataflowQueryOperation.PRINT_PROGRAM, """{"nodeReference":"$ignoreBody"}"""))
        val unused = ignore.getAsJsonArray("unusedAssignments").map { it.asInt }
        val parameterWrite = ignore.getAsJsonArray("instructions").map { it.asJsonObject }
            .single { it.get("kind").asString == "write" && it.getAsJsonObject("variable").get("name").asString == "x" }
        assertEquals("$ignore", listOf(parameterWrite.get("index").asInt), unused)

        // The loop body alone: `total`, `last` and `a` live outside it, so its reads and writes of them are not reported.
        val ledger = createLedger()
        val partial = JsonParser.parseString(query(DataflowQueryOperation.PRINT_PROGRAM, """{"nodeReference":"${ledger.loopBody}"}""")).asJsonObject
        val loop = payloadObjectFromOkData(partial.toString())
        assertEquals("$loop", 0, loop.getAsJsonArray("uninitializedReads").size())
        assertEquals("$loop", 0, loop.getAsJsonArray("unusedAssignments").size())
        assertTrue("$partial", partial.getAsJsonArray("warnings").any { it.asString.contains("total") })
        val total = data(query(DataflowQueryOperation.REACHING_WRITES, """{"nodeReference":"${ledger.loopBody}","programRoot":"${ledger.loopBody}"}"""))
            .getAsJsonArray("reads").map { it.asJsonObject }.first { it.getAsJsonObject("variable").get("name").asString == "total" }
        assertTrue("$total", total.get("variableOutsideProgram").asBoolean)
        assertFalse("$total", total.has("uninitializedPath"))
    }

    @Test
    fun `a method node is its own default program root`() {
        val ledger = createLedger()
        val result = data(query(DataflowQueryOperation.REACHING_READS, """{"nodeReference":"${ledger.method}"}"""))
        val program = result.getAsJsonObject("program")
        assertEquals(ledger.method, program.getAsJsonObject("root").get("reference").asString)
        assertTrue(program.get("defaulted").asBoolean)
        assertEquals("subtree", result.get("scope").asString)
        val amounts = result.getAsJsonArray("writes").map { it.asJsonObject }.first { it.getAsJsonObject("variable").get("name").asString == "amounts" }
        assertEquals("the parameter feeds the foreach: $amounts", 1, amounts.getAsJsonArray("reads").size())
    }

    private fun ref(node: SNode) = PersistenceFacade.getInstance().asString(node.reference)

    private fun writesReaching(read: JsonObject): Set<Int> {
        val reads = data(query(DataflowQueryOperation.REACHING_WRITES, """{"nodeReference":"${reference(read)}"}""")).getAsJsonArray("reads")
        val entry = reads.map { it.asJsonObject }.single { it.get("index").asInt == read.get("index").asInt }
        return entry.getAsJsonArray("writes").map { it.asJsonObject.get("index").asInt }.toSet()
    }

    private fun readsFedBy(write: JsonObject): Set<Int> {
        val writes = data(query(DataflowQueryOperation.REACHING_READS, """{"nodeReference":"${reference(write)}"}""")).getAsJsonArray("writes")
        val entry = writes.map { it.asJsonObject }.single { it.get("index").asInt == write.get("index").asInt }
        return entry.getAsJsonArray("reads").map { it.asJsonObject.get("index").asInt }.toSet()
    }

    private fun reference(instruction: JsonObject): String = instruction.getAsJsonObject("source").get("reference").asString

    private fun conceptOf(nodeRef: String): String? = readOnRepo {
        PersistenceFacade.getInstance().createNodeReference(nodeRef).resolve(myProject.repository)?.concept?.name
    }

    private fun query(operation: DataflowQueryOperation, parameters: String): String =
        runTool(toolset) { it.mps_mcp_query_dataflow(operation, parameters) }

    private fun data(response: String): JsonObject = payloadObjectFromOkData(response)

    private fun error(response: String): String {
        val envelope = JsonParser.parseString(response).asJsonObject
        assertFalse("expected an error: $response", envelope.get("ok").asBoolean)
        return envelope.get("code").asString
    }

    /** References into the parsed `Ledger`: the method, its body, the first `if`, `return total`, the read of `amounts` and `println(fee)`. */
    private class Ledger(
        val method: String, val body: String, val firstIf: String, val returnStatement: String, val amountsReference: String,
        val printlnStatement: String, val loopBody: String,
    )

    private fun createLedger(): Ledger {
        val solution = createSolution()
        val model = createModel(solution, "${solution.moduleName}.code")
        parseClass(model, LEDGER_CODE)
        return readOnRepo {
            val method = model.rootNodes.single { it.name == "Ledger" }.children.single { it.name == "settle" }
            val body = method.children.single { it.containmentLink?.name == "body" }
            val descendants = SNodeUtil.getDescendants(method).toList()
            Ledger(
                ref(method), ref(body),
                ref(descendants.first { it.concept.name == "IfStatement" }),
                ref(descendants.last { it.concept.name == "ReturnStatement" }),
                ref(descendants.first { it.concept.name.endsWith("Reference") && it.references.any { r -> r.targetNode?.name == "amounts" } }),
                ref(descendants.first { statement ->
                    statement.concept.name == "ExpressionStatement" &&
                        SNodeUtil.getDescendants(statement).any { node -> node.references.any { it.targetNode?.name == "out" } }
                }),
                ref(descendants.first { it.concept.name == "ForeachStatement" }.children.single { it.containmentLink?.name == "body" }),
            )
        }
    }

    private fun parseClass(model: SModel, code: String) {
        val response = runTool(JetBrainsMPSJavaMcpToolset()) {
            it.mps_mcp_parse_java_and_insert(
                """{"code":"$code","featureKind":"CLASS","insert":{"mode":"root","modelRef":"${modelRefOf(model)}"}}"""
            )
        }
        assertTrue("expected ok envelope from parse_java_and_insert: $response",
            JsonParser.parseString(response).asJsonObject.get("ok").asBoolean)
    }

    private companion object {
        /** S14's fixture method. */
        const val LEDGER_CODE =
            "public class Ledger { public static int settle(int[] amounts, boolean strict) { int total = 0; int fee = 5; int last = -1; " +
                "for (int a : amounts) { if (a < 0) { if (strict) { return -1; } continue; } last = a; total = total + a; } " +
                "if (total > 100) { fee = 0; } try { total = total - fee; if (last > 50) { fee = fee + 1; } } " +
                "finally { System.out.println(fee); } return total; } }"
        /** An if/else whose branches both return, and a parameter nothing reads. */
        const val SHAPES_CODE =
            "public class Shapes { public static int pick(boolean c) { if (c) { return 1; } else { return 2; } } " +
                "public static int ignore(int x) { return 1; } }"
        const val DUMMY_NODE_REF = "r:00000000-0000-0000-0000-000000000000(dummy)/1"
    }
}
