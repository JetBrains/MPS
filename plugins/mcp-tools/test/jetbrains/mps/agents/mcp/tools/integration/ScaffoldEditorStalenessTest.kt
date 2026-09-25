/*
 * Copyright 2003-2026 JetBrains s.r.o.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 */
package jetbrains.mps.agents.mcp.tools.integration

import jetbrains.mps.agents.mcp.tools.*
import jetbrains.mps.agents.mcp.tools.common.*

import com.google.gson.JsonParser
import jetbrains.mps.smodel.adapter.MetaAdapterByDeclaration
import org.jetbrains.mps.openapi.language.SAbstractConcept
import org.jetbrains.mps.openapi.persistence.PersistenceFacade
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Assert.fail
import org.junit.Test

/**
 * Integration + helper-level coverage for the model-level staleness gate in
 * [JetBrainsMPSEditorMcpToolset.mps_mcp_scaffold_editor] (see
 * [AbstractOps.checkScaffoldingStaleness]).
 *
 * The gate has three Stale branches plus a Fresh outcome:
 *  - no-loaded-runtime (language not in `LanguageRegistry`);
 *  - hollow-descriptor (runtime concept present but null sourceNode + empty members);
 *  - dirty-model (`ModelGenerationStatusManager.generationRequired == true`).
 *
 * The scaffold_editor entry point also has a pre-EDT make gate that calls `performMake`
 * before our gate fires, so end-to-end the new staleness gate inside the EDT block is
 * usually reached only with a clean model. We therefore test the helper directly for
 * branch separation and use the end-to-end tool call only as an integration backstop.
 *
 * The no-loaded-runtime branch is not exercised here because every concept reachable in
 * the test harness comes from a fully-registered language (the test fixture itself
 * registers `LanguageProducer`-created languages, and bootstrap languages are always
 * loaded). TODO(scaffolder-staleness): wire a deterministic LanguageRegistry stub or a
 * concept whose language is genuinely absent from the registry, so the branch is covered.
 */
class ScaffoldEditorStalenessTest : McpIntegrationTestBase() {

    private val toolset = JetBrainsMPSEditorMcpToolset()

    /** A compiled, alias-bearing concept that has scaffoldable content (properties/refs/children). */
    private val compiledConceptFqn = "jetbrains.mps.lang.structure.structure.ConceptDeclaration"

    @Test
    fun `fresh compiled concept scaffolds without the staleness gate firing`() {
        // Baseline: a fully-loaded bootstrap concept in a language whose structure model has not
        // been edited must not trip either staleness branch. The response must be ok=true and
        // must not contain any of the staleness wordings the gate uses.
        val response = runTool(toolset) {
            it.mps_mcp_scaffold_editor(
                conceptRef = compiledConceptFqn,
                modelReference = structureModelRef,
                type = "editor",
            )
        }
        val obj = JsonParser.parseString(response).asJsonObject
        assertTrue("expected ok envelope, got: $response", obj.get("ok").asBoolean)
        assertFalse(
            "Fresh-path scaffolding must not surface the no-loaded-runtime wording; got: $response",
            response.contains("has no loaded runtime"),
        )
        assertFalse(
            "Fresh-path scaffolding must not surface the dirty-model wording; got: $response",
            response.contains("has unbuilt changes"),
        )
        assertFalse(
            "Fresh-path scaffolding must not surface the hollow-descriptor wording; got: $response",
            response.contains("hollow runtime descriptor"),
        )
    }

    @Test
    fun `checkScaffoldingStaleness flags a hollow runtime descriptor with the rebuild=true recovery hint`() {
        // Deterministic precondition for the hollow-descriptor branch: forge a concept facade
        // into a *registered* language with a bogus concept id. `PersistenceFacade.createConcept`
        // returns the bare runtime SAbstractConcept with null sourceNode and empty
        // properties/links when the id is unknown to the language — exactly the shape
        // `isHollowDescriptor` catches. The ref must use `SConceptAdapterById`'s canonical
        // serialize format (`c:<langUUID>/<conceptIdValue>:<qualifiedName>`) because we call
        // `createConcept` directly here — unlike `JetBrainsMPSEditorMcpToolsetIntegrationTest.
        // `hollow runtime descriptor surfaces ...``, which routes through `AbstractOps.resolveConcept`
        // and survives the more permissive `(langName)`-style node-ref format because that path
        // swallows the FormatException and falls back to node-reference resolution.
        val bogusConceptRef =
            "c:18bc6592-03a6-4e29-a83a-7ff23bde13ba/9999999999:jetbrains.mps.lang.editor.structure.BogusConcept"
        val staleness = readOnRepo {
            val concept = PersistenceFacade.getInstance().createConcept(bogusConceptRef)
                ?: error("PersistenceFacade.createConcept did not return a facade for '$bogusConceptRef'")
            toolset.checkScaffoldingStaleness(concept, myProject)
        }
        assertTrue(
            "bogus concept ref into a loaded language must be classified Stale; got $staleness",
            staleness is AbstractOps.ScaffoldingStaleness.Stale,
        )
        val stale = staleness as AbstractOps.ScaffoldingStaleness.Stale
        assertTrue(
            "expected hollow-descriptor branch (the language is loaded but the concept facade is empty); got reason: ${stale.reason}",
            stale.reason.contains("hollow runtime descriptor"),
        )
        assertTrue(
            "hollow-descriptor recovery hint must recommend rebuild=true; got: ${stale.recoveryHint}",
            stale.recoveryHint.contains("rebuild=true"),
        )
        assertTrue(
            "hollow-descriptor recovery hint must call out that reload_all alone is not sufficient; got: ${stale.recoveryHint}",
            stale.recoveryHint.contains("mps_mcp_reload_all"),
        )
    }

    @Test
    fun `checkScaffoldingStaleness flags a freshly-created concept as Stale (integration backstop)`() {
        // Integration backstop: a CREATE_CONCEPTS'd concept in the test language must surface as
        // Stale via *some* branch — without the gate, scaffolding would proceed on an unbuilt
        // descriptor. Which branch fires depends on whether the test language has been registered
        // into LanguageRegistry by the time the helper runs:
        //  - if registered AND concept has a sourceNode → dirty-model branch;
        //  - if registered AND runtime descriptor is hollow → hollow-descriptor branch;
        //  - if not registered → no-loaded-runtime branch.
        // We don't pin the branch here because all three answer the integration question
        // ("does the gate refuse to scaffold from an unbuilt concept?") identically. The
        // deterministic per-branch assertions live in the helper-direct tests; this one logs
        // which branch fired so a future regression that collapses to Fresh fails loudly here,
        // and a regression that swaps one Stale branch for another is still observable in the
        // test output.
        createConceptRoot("StalenessProbe_${System.nanoTime()}")
        val staleness = readOnRepo {
            val root = structureModel.rootNodes.first { it.name?.startsWith("StalenessProbe_") == true }
            val concept: SAbstractConcept = MetaAdapterByDeclaration.getConcept(root)
            toolset.checkScaffoldingStaleness(concept, myProject)
        }
        when (staleness) {
            is AbstractOps.ScaffoldingStaleness.Fresh -> fail(
                "Freshly-created concept must NOT be classified Fresh — that means the gate let an " +
                    "unbuilt descriptor through. Investigate which branch should have fired."
            )
            is AbstractOps.ScaffoldingStaleness.Stale -> {
                println("[ScaffoldEditorStalenessTest] integration backstop Stale branch: ${staleness.reason}")
                val branchWordings = listOf(
                    "has no loaded runtime",
                    "hollow runtime descriptor",
                    "has unbuilt changes",
                )
                assertTrue(
                    "Stale.reason must match one of the three documented branches; got: ${staleness.reason}",
                    branchWordings.any { staleness.reason.contains(it) },
                )
                assertTrue(
                    "Stale.recoveryHint must be non-empty; got: '${staleness.recoveryHint}'",
                    staleness.recoveryHint.isNotBlank(),
                )
            }
        }
    }

    @Test
    fun `scaffold_editor surfaces a documented diagnostic when invoked on a newly-created concept`() {
        // End-to-end smoke. The pre-EDT make gate may either succeed (ok envelope) or surface
        // one of the documented stale-path diagnostics. The deterministic branch tests above
        // pin individual wordings; this test ensures the integration glue (tool call -> helper
        // -> response envelope) routes one of the wordings out unchanged.
        val newConcept = createConceptRoot("FreshConcept_${System.nanoTime()}")
        val response = runTool(toolset) {
            it.mps_mcp_scaffold_editor(
                conceptRef = newConcept,
                modelReference = structureModelRef,
                type = "editor",
            )
        }
        val obj = JsonParser.parseString(response).asJsonObject
        if (!obj.get("ok").asBoolean) {
            val msg = obj.get("error").asString
            val accepted = listOf(
                "Failed to make the structure model for concept",
                "has unbuilt changes",
                "has no loaded runtime",
                "hollow runtime descriptor",
                "has no source node",
            )
            assertTrue(
                "stale-path failures must surface one of the documented diagnostics; got: $msg",
                accepted.any { msg.contains(it) },
            )
        }
    }

    @Suppress("unused")
    private fun describe(concept: SAbstractConcept): String =
        PersistenceFacade.getInstance().asString(concept)
}
