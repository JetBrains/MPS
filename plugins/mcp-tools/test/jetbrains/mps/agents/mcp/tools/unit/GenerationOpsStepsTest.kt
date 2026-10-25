package jetbrains.mps.agents.mcp.tools.unit

import jetbrains.mps.agents.mcp.tools.common.*

import com.google.gson.JsonArray
import com.google.gson.JsonObject
import jetbrains.mps.generator.ModelGenerationPlan
import jetbrains.mps.generator.plan.CheckpointIdentity
import jetbrains.mps.generator.plan.ForkCondition
import jetbrains.mps.generator.plan.PlanIdentity
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * The step renderer of `mps_mcp_generation` PLAN on hand-built plans: indices, the transient stereotype prefix
 * `GenerationSession` gives each step's models (fork branches count on from their fork's index), checkpoints and forks.
 */
class GenerationOpsStepsTest {

    private fun transform() = ModelGenerationPlan.Transform(emptyList())

    private fun checkpoint(name: String, persisted: Boolean = true) =
        ModelGenerationPlan.Checkpoint(CheckpointIdentity(PlanIdentity("TestPlan"), name), !persisted)

    private fun JsonArray.step(index: Int): JsonObject = get(index).asJsonObject

    @Test
    fun `main-branch steps are numbered from 1 and their prefix is the index`() {
        val rendered = GenerationOps.stepsJson(listOf(transform(), checkpoint("cp1"), transform()), "m.x")
        val steps = rendered.array
        assertEquals(listOf(1, 2, 3), steps.map { it.asJsonObject.get("index").asInt })
        assertEquals(listOf("TRANSFORM", "CHECKPOINT", "TRANSFORM"), steps.map { it.asJsonObject.get("kind").asString })
        assertEquals("1_", steps.step(0).get("transientStereotypePrefix").asString)
        assertEquals("a checkpoint consumes an index", "3_", steps.step(2).get("transientStereotypePrefix").asString)
        assertFalse("no other step writes 3_ models", steps.step(2).has("prefixShared"))
        assertTrue("empty transforms ask for the empty-transform note", rendered.hasEmptyTransform)
        assertFalse(rendered.hasForkCondition)
    }

    @Test
    fun `a checkpoint names its plan and the model it persists to`() {
        val steps = GenerationOps.stepsJson(listOf(checkpoint("cp1"), checkpoint("sync", persisted = false)), "m.x").array
        val persisted = steps.step(0)
        assertEquals("cp1", persisted.get("name").asString)
        assertEquals("TestPlan", persisted.get("plan").asString)
        assertTrue(persisted.get("persisted").asBoolean)
        assertEquals("m.x@cp1", persisted.get("checkpointModelName").asString)
        val synchronizing = steps.step(1)
        assertFalse(synchronizing.get("persisted").asBoolean)
        assertNull("a synchronization-only checkpoint writes no model", synchronizing.get("checkpointModelName"))
    }

    @Test
    fun `a fork branch counts on from the fork's index and flags prefixes it shares with the main branch`() {
        val fork = ModelGenerationPlan.Fork(listOf(transform(), transform()))
        val rendered = GenerationOps.stepsJson(listOf(transform(), fork, transform()), "m.x")
        val forkJson = rendered.array.step(1)
        assertEquals("FORK", forkJson.get("kind").asString)
        assertFalse(forkJson.get("hasCondition").asBoolean)
        assertEquals("the branch input copy takes the fork's own prefix", "2_", forkJson.get("branchInputStereotypePrefix").asString)
        assertFalse("conditionPrintable only accompanies a condition", forkJson.has("conditionPrintable"))
        val branch = forkJson.getAsJsonArray("branch")
        assertEquals(listOf(1, 2), branch.map { it.asJsonObject.get("index").asInt })
        assertEquals("2_", branch.step(0).get("transientStereotypePrefix").asString)
        assertFalse("no other transform writes 2_ models", branch.step(0).has("prefixShared"))
        assertEquals("3_", branch.step(1).get("transientStereotypePrefix").asString)
        assertTrue("main step 3 writes 3_ models too", branch.step(1).get("prefixShared").asBoolean)
        assertEquals("3_", rendered.array.step(2).get("transientStereotypePrefix").asString)
        assertTrue("the flag is set on both sides", rendered.array.step(2).get("prefixShared").asBoolean)
    }

    @Test
    fun `sibling forks and a nested branch flag the prefixes they share`() {
        val siblings = GenerationOps.stepsJson(
            listOf(transform(), ModelGenerationPlan.Fork(listOf(checkpoint("a"), transform())), ModelGenerationPlan.Fork(listOf(transform()))),
            "m.x",
        ).array
        val first = siblings.step(1).getAsJsonArray("branch").step(1)
        val second = siblings.step(2).getAsJsonArray("branch").step(0)
        assertEquals("3_", first.get("transientStereotypePrefix").asString)
        assertEquals("3_", second.get("transientStereotypePrefix").asString)
        assertTrue(first.get("prefixShared").asBoolean)
        assertTrue(second.get("prefixShared").asBoolean)

        val inner = ModelGenerationPlan.Fork(listOf(transform(), transform()))
        val nested = GenerationOps.stepsJson(listOf(checkpoint("cp"), ModelGenerationPlan.Fork(listOf(transform(), inner, transform()))), "m.x").array
        val outerBranch = nested.step(1).getAsJsonArray("branch")
        assertEquals("4_", outerBranch.step(2).get("transientStereotypePrefix").asString)
        assertTrue("the inner branch writes 4_ models too", outerBranch.step(2).get("prefixShared").asBoolean)
        val innerBranch = outerBranch.step(1).getAsJsonArray("branch")
        assertEquals("4_", innerBranch.step(1).get("transientStereotypePrefix").asString)
        assertTrue(innerBranch.step(1).get("prefixShared").asBoolean)
        assertFalse("3_ is written by the inner branch alone", innerBranch.step(0).has("prefixShared"))
    }

    @Test
    fun `a nested fork counts on from its own index`() {
        val inner = ModelGenerationPlan.Fork(listOf(transform()))
        val outer = ModelGenerationPlan.Fork(listOf(transform(), inner))
        val steps = GenerationOps.stepsJson(listOf(checkpoint("cp1"), outer), "m.x").array
        val outerBranch = steps.step(1).getAsJsonArray("branch")
        assertEquals("2_", outerBranch.step(0).get("transientStereotypePrefix").asString)
        val innerBranch = outerBranch.step(1).getAsJsonArray("branch")
        assertEquals("3_", innerBranch.step(0).get("transientStereotypePrefix").asString)
    }

    @Test
    fun `a fork condition is reported as present but not printable`() {
        val condition = ForkCondition { true }
        val rendered = GenerationOps.stepsJson(listOf(ModelGenerationPlan.Fork(listOf(transform()), condition, null)), "m.x")
        val fork = rendered.array.step(0)
        assertTrue(fork.get("hasCondition").asBoolean)
        assertFalse(fork.get("conditionPrintable").asBoolean)
        assertTrue("a condition asks for the fork-condition note", rendered.hasForkCondition)
    }

    @Test
    fun `a transform lists no transformations when its step is empty`() {
        val steps = GenerationOps.stepsJson(listOf(transform()), "m.x").array
        assertEquals(0, steps.step(0).getAsJsonArray("transformations").size())
    }
}
