package jetbrains.mps.agents.mcp.tools.unit

import jetbrains.mps.agents.mcp.tools.common.dataflowBuilderFrame

import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Test

/**
 * `mps_mcp_query_dataflow` names the builder that threw from the stack alone: the generated `<Concept>_DataFlow` class
 * nearest to the throw, in the exception or one of its causes. Only an exception a builder's own code throws (smodel
 * access on a missing child, say) has one; positions resolve after every builder has returned.
 */
class DataflowBuilderFrameTest {

    private fun frame(className: String) = StackTraceElement(className, "build", "$className.java", 1)

    private fun thrown(vararg classNames: String, cause: Throwable? = null) =
        IllegalStateException("thrown", cause).apply { stackTrace = classNames.map(::frame).toTypedArray() }

    @Test
    fun `the builder frame nearest to the throw wins`() {
        val error = thrown(
            "jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations",
            "jetbrains.mps.samples.Kaja.dataFlow.IfStatement_DataFlow",
            "jetbrains.mps.samples.Kaja.dataFlow.CommandList_DataFlow",
            "jetbrains.mps.lang.dataFlow.MPSProgramBuilder",
        )
        assertEquals("jetbrains.mps.samples.Kaja.dataFlow.IfStatement_DataFlow", dataflowBuilderFrame(error)?.className)
    }

    @Test
    fun `a cause's builder frame is found when the outer exception has none`() {
        val cause = thrown("jetbrains.mps.samples.Kaja.dataFlow.Repeat_DataFlow")
        val error = thrown("jetbrains.mps.lang.dataFlow.MPSProgramBuilder", cause = cause)
        assertEquals("jetbrains.mps.samples.Kaja.dataFlow.Repeat_DataFlow", dataflowBuilderFrame(error)?.className)
    }

    @Test
    fun `a failure raised after the builders returned has no builder frame`() {
        // An unresolved label(node, "x") throws from the deferred position resolution in StructuralProgramBuilder.buildProgram.
        assertNull(dataflowBuilderFrame(thrown(
            "jetbrains.mps.lang.dataFlow.framework.StructuralProgramBuilder\$1",
            "jetbrains.mps.lang.dataFlow.framework.StructuralProgramBuilder",
            "jetbrains.mps.lang.dataFlow.MPSProgramFactory",
        )))
    }
}
