package jetbrains.mps.agents.mcp.tools.integration

import jetbrains.mps.agents.mcp.tools.*
import jetbrains.mps.agents.mcp.tools.common.JsonOrText

import com.google.gson.JsonObject
import com.google.gson.JsonParser
import com.intellij.execution.RunManager
import com.intellij.execution.RunnerAndConfigurationSettings
import jetbrains.mps.persistence.PersistenceRegistry
import jetbrains.mps.project.MPSProject
import jetbrains.mps.project.facets.JavaModuleFacet
import jetbrains.mps.smodel.SNodePointer
import jetbrains.mps.smodel.action.SNodeFactoryOperations
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory
import jetbrains.mps.util.NameUtil
import org.jetbrains.mps.openapi.model.SModel
import org.jetbrains.mps.openapi.persistence.PersistenceFacade
import org.junit.After
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.jdom.Element
import org.junit.Assert.assertNotEquals
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * Integration tests for [JetBrainsMPSRunConfigurationMcpToolset.mps_mcp_create_run_configuration].
 *
 * Covered:
 *  - validation contract — non-root targets, unsupported concepts, unknown references all return
 *    structured error envelopes and leave the IDEA project's run-configuration list untouched;
 *  - the IMainClass happy path — creating a root of a concept that implements IMainClass yields
 *    a registered "Java Application" run configuration. Uses `jetbrains.mps.execution.demo.SomeConcept`,
 *    which is shipped by the `execution-languages` plugin and exists specifically as a fixture
 *    for IMainClass-style execution;
 *  - the ITestCase happy path — creating a `NodesTestCase` root yields a "JUnit Tests" run
 *    configuration. This exercises the reflective JUnitSettings_Configuration plumbing
 *    (`setJUnitRunType` / `setTestCases`) together with the `canRunInProcess` behavior lookup.
 *
 * The happy paths require [McpToolsIntegrationTestSuite] to bootstrap the platform with the
 * debugger-api / debugger-java / execution-api / execution-languages / execution-configurations
 * plugins. Without them the "Java Application" / "JUnit Tests" ConfigurationType extensions are
 * not registered and the toolset short-circuits to NOT_FOUND. The suite adds them by their
 * source-layout folder names rather than via `EnvironmentConfig.withExecutionPlugins()`, which
 * picks the wrong folder names whenever `PathManager.isFromSources()` mis-detects the layout
 * (e.g. on TeamCity, where lib/mps-core.jar precedes startup/classes/ on the classpath).
 */
class JetBrainsMPSRunConfigurationMcpToolsetIntegrationTest : McpIntegrationTestBase() {

    @Test
    fun `non-root target is rejected as INVALID_REQUEST`() {
        // Seed the structure model with a single concept root that has a property declaration
        // child via the existing structure toolset, then aim the run-config tool at the child.
        val seedParams = """
            {
              "structureModelRef": "$structureModelRef",
              "conceptsJson": [
                {
                  "name": "Foo",
                  "properties": [ { "name": "title", "type": "string" } ]
                }
              ]
            }
        """.trimIndent()
        val seedResponse = runTool { it.mps_mcp_alter_structure(MPSStructureAlterOperation.CREATE_CONCEPTS, seedParams) }
        assertOk(seedResponse)

        val childRef = readOnRepo {
            val foo = structureModel.rootNodes.single { it.name == "Foo" }
            val propDecl = foo.children.single { it.containmentLink?.name == "propertyDeclaration" }
            PersistenceFacade.getInstance().asString(propDecl.reference)
        }

        val beforeCount = currentConfigurationCount()
        val response = runTool(JetBrainsMPSRunConfigurationMcpToolset()) {
            it.create(nodeReference = childRef)
        }

        val obj = JsonParser.parseString(response).asJsonObject
        assertFalse("expected error envelope: $response", obj.get("ok").asBoolean)
        assertEquals("INVALID_REQUEST", obj.get("code").asString)
        assertTrue(
            "error should mention the non-root rejection: ${obj.get("error").asString}",
            obj.get("error").asString.contains("not a root")
        )
        assertEquals(
            "validation failure must not leave a run configuration behind",
            beforeCount, currentConfigurationCount()
        )
    }

    @Test
    fun `root with unsupported concept is rejected as INVALID_REQUEST`() {
        // A ConceptDeclaration root (lang.structure) matches none of the three accepted shapes:
        // it implements neither IMainClass nor ITestCase, and it is not a ClassConcept. The
        // toolset must reject it instead of producing a broken config — and the message must
        // enumerate all three accepted shapes so a caller can tell which predicate failed.
        val seedParams = """
            {
              "structureModelRef": "$structureModelRef",
              "conceptsJson": [ { "name": "Bar" } ]
            }
        """.trimIndent()
        val seedResponse = runTool { it.mps_mcp_alter_structure(MPSStructureAlterOperation.CREATE_CONCEPTS, seedParams) }
        assertOk(seedResponse)

        val rootRef = readOnRepo {
            val bar = structureModel.rootNodes.single { it.name == "Bar" }
            PersistenceFacade.getInstance().asString(bar.reference)
        }

        val beforeCount = currentConfigurationCount()
        val response = runTool(JetBrainsMPSRunConfigurationMcpToolset()) {
            it.create(nodeReference = rootRef)
        }

        val obj = JsonParser.parseString(response).asJsonObject
        assertFalse("expected error envelope: $response", obj.get("ok").asBoolean)
        assertEquals("INVALID_REQUEST", obj.get("code").asString)
        val message = obj.get("error").asString
        assertTrue(
            "rejection must enumerate all three accepted shapes (IMainClass, ITestCase, ClassConcept): $message",
            message.contains("IMainClass") && message.contains("ITestCase") &&
                    message.contains("ClassConcept")
        )
        assertEquals(
            "validation failure must not leave a run configuration behind",
            beforeCount, currentConfigurationCount()
        )
    }

    @Test
    fun `empty or whitespace-only node reference is rejected as INVALID_REQUEST before any resolution runs`() {
        // D43: a blank nodeReference is now caught by rejectMissingParameters before the
        // reference resolver even runs, so it is INVALID_REQUEST rather than the resolver's
        // NOT_FOUND (still the outcome for a well-formed-but-unresolvable reference, covered by
        // `create_run_configuration reaches the resolver once retried with the correct key`
        // below). "" and "   " both fall into
        // that bucket; iterate over them so the single contract is asserted once.
        for (input in listOf("", "   ")) {
            val beforeCount = currentConfigurationCount()
            val response = runTool(JetBrainsMPSRunConfigurationMcpToolset()) {
                it.create(nodeReference = input)
            }

            val obj = JsonParser.parseString(response).asJsonObject
            assertFalse("expected error envelope for input '$input': $response", obj.get("ok").asBoolean)
            assertEquals("input '$input' must map to INVALID_REQUEST", "INVALID_REQUEST", obj.get("code").asString)
            assertEquals(
                listOf("nodeReference"),
                obj.getAsJsonObject("details").getAsJsonArray("missingParameters").map { it.asString },
            )
            assertTrue(
                "error for input '$input' must name the key: ${obj.get("error").asString}",
                obj.get("error").asString.startsWith("nodeReference is required."),
            )
            assertEquals(
                "validation failure for input '$input' must not leave a run configuration behind",
                beforeCount, currentConfigurationCount()
            )
        }
    }

    @Test
    fun `concept reference is rejected as INVALID_REFERENCE`() {
        // Concept references (c:...) are not valid node references; the resolver throws
        // McpInvalidReferenceException, which the framework maps to INVALID_REFERENCE.
        val beforeCount = currentConfigurationCount()
        val response = runTool(JetBrainsMPSRunConfigurationMcpToolset()) {
            it.create(
                nodeReference = "c:jetbrains.mps.execution.demo.structure.SomeConcept"
            )
        }

        val obj = JsonParser.parseString(response).asJsonObject
        assertFalse("expected error envelope: $response", obj.get("ok").asBoolean)
        assertEquals("INVALID_REFERENCE", obj.get("code").asString)
        assertEquals(
            "validation failure must not leave a run configuration behind",
            beforeCount, currentConfigurationCount()
        )
    }

    // ── D43: missing-required-parameter rejection through the real bridge ────────────────
    // Goes through callThroughBridge, not runTool: only the bridge's own argument binding can
    // observe a wrong-key spelling being silently dropped before the tool body runs.

    @Test
    fun `create_run_configuration names nodeReference when the caller sent node`() {
        val beforeCount = currentConfigurationCount()
        val response = callThroughBridge(
            JetBrainsMPSRunConfigurationMcpToolset(), "mps_mcp_create_run_configuration",
            mapOf("node" to kotlinx.serialization.json.JsonPrimitive("no.such.model.NoSuchRoot")),
        )
        val obj = JsonParser.parseString(response).asJsonObject
        assertFalse("expected error envelope: $response", obj.get("ok").asBoolean)
        assertEquals("INVALID_REQUEST", obj.get("code").asString)
        assertEquals(listOf("nodeReference"), obj.getAsJsonObject("details").getAsJsonArray("missingParameters").map { it.asString })
        val error = obj.get("error").asString
        assertTrue(
            "must name the key and the dropped spelling: $error",
            error.startsWith("nodeReference is required.") && error.contains("'node'"),
        )
        assertEquals(
            "the rejection must not create a run configuration",
            beforeCount, currentConfigurationCount()
        )
    }

    @Test
    fun `create_run_configuration reaches the resolver once retried with the correct key`() {
        val response = callThroughBridge(
            JetBrainsMPSRunConfigurationMcpToolset(), "mps_mcp_create_run_configuration",
            mapOf("nodeReference" to kotlinx.serialization.json.JsonPrimitive("no.such.model.NoSuchRoot")),
        )
        val obj = JsonParser.parseString(response).asJsonObject
        assertFalse("expected error envelope: $response", obj.get("ok").asBoolean)
        assertEquals("NOT_FOUND", obj.get("code").asString)
    }

    @Test
    fun `explicit configuration name overrides the derived name`() {
        val rootRef = createRoot(
            concept = "jetbrains.mps.execution.demo.structure.SomeConcept",
            name = "DemoMain",
        )

        val before = currentConfigurationCount()
        val response = runTool(JetBrainsMPSRunConfigurationMcpToolset()) {
            it.create(
                nodeReference = rootRef,
                configurationName = "Custom Configuration Name",
            )
        }

        val data = assertOkData(response)
        assertEquals("Custom Configuration Name", data.get("name").asString)
        assertEquals(before + 1, currentConfigurationCount())

        val settings = findSettings(data.get("uniqueId").asString)
        assertEquals("Custom Configuration Name", settings.name)
    }

    @Test
    fun `blank explicit configuration name falls back to the derived name`() {
        val rootRef = createRoot(
            concept = "jetbrains.mps.execution.demo.structure.SomeConcept",
            name = "DemoMain",
        )

        val response = runTool(JetBrainsMPSRunConfigurationMcpToolset()) {
            it.create(
                nodeReference = rootRef,
                configurationName = "   ",
            )
        }

        val data = assertOkData(response)
        assertEquals(
            "blank name should fall back to the 'Node <name>' derivation",
            "Node DemoMain", data.get("name").asString
        )
    }

    @Test
    fun `creating two run configurations with the same generated name replaces the first one`() {
        // RunManager.addConfiguration keys by <type-id>.<name>, so two consecutive calls with
        // the same derived name share a uniqueID and the second silently replaces the first.
        // The toolset's docstring documents this contract; pin it down here so a future
        // change that adds explicit name disambiguation (or silently fails the second call)
        // is flagged as a deliberate behaviour shift.
        val rootRef = createRoot(
            concept = "jetbrains.mps.execution.demo.structure.SomeConcept",
            name = "DemoMain",
        )

        val before = currentConfigurationCount()
        val firstResponse = runTool(JetBrainsMPSRunConfigurationMcpToolset()) {
            it.create(nodeReference = rootRef)
        }
        val secondResponse = runTool(JetBrainsMPSRunConfigurationMcpToolset()) {
            it.create(nodeReference = rootRef)
        }

        val firstData = assertOkData(firstResponse)
        val secondData = assertOkData(secondResponse)

        assertEquals("Node DemoMain", firstData.get("name").asString)
        assertEquals(
            "the second call must reuse the same derived name (no disambiguation)",
            "Node DemoMain", secondData.get("name").asString
        )
        assertEquals(
            "the second call must replace the first under the shared name, not add a duplicate",
            before + 1, currentConfigurationCount()
        )

        val firstId = firstData.get("uniqueId").asString
        val secondId = secondData.get("uniqueId").asString
        assertEquals(
            "the uniqueID is derived from <type>.<name>, so two same-named configurations must collide",
            firstId, secondId
        )
        // The single remaining settings entry must be findable by that shared id.
        val settings = findSettings(secondId)
        assertEquals("Node DemoMain", settings.name)
    }

    @Test
    fun `EditorTestCase root yields a registered JUnit Tests run configuration`() {
        // EditorTestCase is a second ITestCase variant beyond NodesTestCase; covering it
        // confirms the ITestCase dispatch is not silently special-cased on a single concept.
        val rootRef = createRoot(
            concept = "jetbrains.mps.lang.test.structure.EditorTestCase",
            name = "MyEditorTests",
        )

        val before = currentConfigurationCount()
        val response = runTool(JetBrainsMPSRunConfigurationMcpToolset()) {
            it.create(nodeReference = rootRef)
        }

        val data = assertOkData(response)
        assertEquals("JUnit Tests", data.get("type").asString)
        assertEquals(
            "tests use the node's own name (no 'Node ' prefix)",
            "MyEditorTests", data.get("name").asString
        )
        assertEquals(before + 1, currentConfigurationCount())

        val settings = findSettings(data.get("uniqueId").asString)
        assertEquals("JUnit Tests", settings.type.id)
        assertSingleTestCase(settings, "EditorTestCase")
    }

    @Test
    fun `ITestCase with canNotRunInProcess set clears the in-process flag`() {
        // The ITestCase behavior `canRunInProcess` is defined as `!canNotRunInProcess`, so
        // toggling the property on the seeded root is the cleanest way to drive the toolset's
        // in-process-flag-clearing branch (configureAsTestCase). Pinning this combination
        // means a regression in invokeCanRunInProcess — e.g. the hardcoded
        // canRunInProcess_id5_jSk8paieB SMethod-id field name failing to resolve, or the
        // `result as? Boolean ?: true` fallback firing because of a coercion bug — would
        // surface as a flipped assertion instead of silently passing green.
        val rootRef = createRoot(
            concept = "jetbrains.mps.lang.test.structure.NodesTestCase",
            name = "OutOfProcessTests",
        )
        val setPropertyResponse = runTool(JetBrainsMPSNodeMcpToolset()) {
            it.mps_mcp_update_node(nodeReference = rootRef,
                operation = NodeUpdateOperation.SET,
                kind = NodeUpdateKind.PROPERTY,
                properties = listOf(listOf(rootRef, "canNotRunInProcess", "true"))
            )
        }
        assertOk(setPropertyResponse)

        val response = runTool(JetBrainsMPSRunConfigurationMcpToolset()) {
            it.create(nodeReference = rootRef)
        }

        val data = assertOkData(response)
        val settings = findSettings(data.get("uniqueId").asString)
        assertEquals(
            "canNotRunInProcess=true on the test root must drive the in-process flag to false",
            false, getInProcessFlag(settings)
        )
    }

    @Test
    fun `IMainClass root yields a registered Java run configuration`() {
        val rootRef = createRoot(
            concept = "jetbrains.mps.execution.demo.structure.SomeConcept",
            name = "DemoMain",
        )

        val before = currentConfigurationCount()
        val response = runTool(JetBrainsMPSRunConfigurationMcpToolset()) {
            it.create(nodeReference = rootRef)
        }

        val data = assertOkData(response)
        // The Java run configuration type is registered as a ConfigTypeEnvoy with id
        // "Java Application" (the inner factory has id "Java", but the type id is what
        // ConfigurationTypeUtil.findConfigurationType matches on).
        assertEquals("Java Application", data.get("type").asString)
        assertEquals(
            "default name for IMainClass roots prefixes the node name with 'Node '",
            "Node DemoMain", data.get("name").asString
        )
        assertEquals(
            "exactly one new configuration must be registered",
            before + 1, currentConfigurationCount()
        )

        val settings = findSettings(data.get("uniqueId").asString)
        assertEquals("Java Application", settings.type.id)
        val configClassName = settings.configuration.javaClass.name
        assertTrue(
            "expected the Java configuration class generated by the execution plugin: $configClassName",
            configClassName.startsWith("jetbrains.mps.")
                    && configClassName.endsWith("Java_Configuration")
        )
        assertJavaConfigurationTargetsNode(settings, rootRef)
    }

    @Test
    fun `ITestCase root yields a registered JUnit Tests run configuration`() {
        val rootRef = createRoot(
            concept = "jetbrains.mps.lang.test.structure.NodesTestCase",
            name = "MyNodeTests",
        )

        val before = currentConfigurationCount()
        val response = runTool(JetBrainsMPSRunConfigurationMcpToolset()) {
            it.create(nodeReference = rootRef)
        }

        val data = assertOkData(response)
        assertEquals("JUnit Tests", data.get("type").asString)
        assertEquals(
            "tests use the node's own name (no 'Node ' prefix)",
            "MyNodeTests", data.get("name").asString
        )
        assertEquals(
            "exactly one new configuration must be registered",
            before + 1, currentConfigurationCount()
        )

        val settings = findSettings(data.get("uniqueId").asString)
        assertEquals("JUnit Tests", settings.type.id)
        assertSingleTestCase(settings, "NodesTestCase")
        // NodesTestCase.canRunInProcess returns true, so the toolset must leave the
        // in-process flag at its default (true). Asserting the converse of the
        // EditorTestCase test pins both sides of the in-process-flag branch.
        assertEquals(
            "NodesTestCase.canRunInProcess is true; the in-process flag must remain set",
            true, getInProcessFlag(settings)
        )
    }

    @Test
    fun `one model with test roots becomes a live MODEL configuration`() {
        val model = newModel("checks@tests")
        createTestRoot(model, "Alpha")
        createTestRoot(model, "Beta")
        createRootIn(model, "jetbrains.mps.execution.demo.structure.SomeConcept", "NotATest")

        val before = currentConfigurationCount()
        val response = runTool(JetBrainsMPSRunConfigurationMcpToolset()) {
            it.create(modelReference = JsonOrText(modelRefOf(model)))
        }

        val data = assertOkData(response)
        assertEquals("JUnit Tests", data.get("type").asString)
        assertEquals("Tests in '${NameUtil.shortNameFromLongName(model.name.value)}'", data.get("name").asString)
        assertEquals("MODEL", data.get("runType").asString)
        assertEquals(2, data.get("testCaseCount").asInt)
        assertTrue(data.get("live").asBoolean)
        assertEquals(before + 1, currentConfigurationCount())

        val settings = findSettings(data.get("uniqueId").asString)
        assertEquals("MODEL", junitRunType(settings))
        assertEquals(PersistenceRegistry.getInstance().asString(model.reference), modelRef(settings))
        val stored = storedConfiguration(settings)
        assertNotNull("RunManager state must hold the new configuration", stored)
        assertNotEquals("a permanent configuration is not temporary", "true", stored!!.getAttributeValue("temporary"))
    }

    @Test
    fun `a one-element model array is still the live MODEL configuration`() {
        val model = newModel("again@tests")
        createTestRoot(model, "Only")
        val response = runTool(JetBrainsMPSRunConfigurationMcpToolset()) {
            it.create(modelReference = JsonOrText("[\"${modelRefOf(model)}\"]"))
        }
        val data = assertOkData(response)
        assertEquals("MODEL", data.get("runType").asString)
        assertTrue(data.get("live").asBoolean)
        assertEquals(1, data.get("testCaseCount").asInt)
    }

    @Test
    fun `a duplicated model reference stays one live configuration`() {
        val model = newModel("dup@tests")
        createTestRoot(model, "Once")
        val ref = modelRefOf(model)
        val before = currentConfigurationCount()
        val response = runTool(JetBrainsMPSRunConfigurationMcpToolset()) {
            it.create(modelReference = JsonOrText("[\"$ref\", \"$ref\"]"))
        }
        val data = assertOkData(response)
        assertEquals("MODEL", data.get("runType").asString)
        assertTrue(data.get("live").asBoolean)
        assertEquals(before + 1, currentConfigurationCount())
    }

    @Test
    fun `a model with no discovered tests is rejected and leaves no configuration`() {
        val model = newModel("empty@tests")
        createRootIn(model, "jetbrains.mps.lang.test.structure.NodesTestCase", "EmptyCase")
        val before = currentConfigurationCount()
        val response = runTool(JetBrainsMPSRunConfigurationMcpToolset()) {
            it.create(modelReference = JsonOrText(modelRefOf(model)))
        }
        val obj = errorEnvelope(response, "INVALID_REQUEST")
        assertTrue(obj.get("error").asString, obj.get("error").asString.contains("No tests found in model ${model.name.value}."))
        assertEquals(before, currentConfigurationCount())
    }

    @Test
    fun `an unknown model is NOT_FOUND and a model passed as a node is rejected`() {
        val unknown = runTool(JetBrainsMPSRunConfigurationMcpToolset()) {
            it.create(modelReference = JsonOrText("no.such.model"))
        }
        assertEquals("NOT_FOUND", errorEnvelope(unknown, "NOT_FOUND").get("code").asString)

        val model = newModel("asnode")
        val asNode = runTool(JetBrainsMPSRunConfigurationMcpToolset()) {
            it.create(nodeReference = modelRefOf(model))
        }
        val message = errorEnvelope(asNode, "INVALID_REQUEST").get("error").asString
        assertTrue(message, message.contains("is a model; pass it in modelReference"))
    }

    @Test
    fun `several test roots become one NODE snapshot`() {
        val model = newModel("list")
        val first = createTestRoot(model, "First")
        val second = createTestRoot(model, "Second")
        val response = runTool(JetBrainsMPSRunConfigurationMcpToolset()) {
            it.create(nodeReference = JsonOrText("[\"$first\", \"$second\"]"))
        }
        val data = assertOkData(response)
        assertEquals("First,...", data.get("name").asString)
        assertEquals("NODE", data.get("runType").asString)
        assertEquals(2, data.get("testCaseCount").asInt)
        assertFalse(data.get("live").asBoolean)
        assertEquals(2, testCaseCount(findSettings(data.get("uniqueId").asString)))
    }

    @Test
    fun `a lone GeneratorTest root becomes a one-root NODE configuration`() {
        val model = newModel("gentest")
        val ref = createRootIn(model, "jetbrains.mps.lang.test.generator.structure.GeneratorTest", "GenCheck")
        executeCommand {
            val node = PersistenceFacade.getInstance().createNodeReference(ref).resolve(myProject.repository)
                ?: error("created generator test did not resolve: $ref")
            SNodeFactoryOperations.addNewChild(node, GENERATOR_TESTS, TRANSFORMATION_MATCH_ASSERTION)
        }
        val response = runTool(JetBrainsMPSRunConfigurationMcpToolset()) { it.create(nodeReference = ref) }
        val data = assertOkData(response)
        assertEquals("JUnit Tests", data.get("type").asString)
        assertEquals("GenCheck", data.get("name").asString)
        assertEquals("NODE", data.get("runType").asString)
        assertEquals(1, data.get("testCaseCount").asInt)
        assertFalse(data.get("live").asBoolean)
        assertEquals(1, testCaseCount(findSettings(data.get("uniqueId").asString)))
    }

    @Test
    fun `a lone GeneratorTest root without assertions is rejected and leaves no configuration`() {
        val model = newModel("gentestEmpty")
        val ref = createRootIn(model, "jetbrains.mps.lang.test.generator.structure.GeneratorTest", "NoChecks")
        val before = currentConfigurationCount()
        val response = runTool(JetBrainsMPSRunConfigurationMcpToolset()) { it.create(nodeReference = ref) }
        val message = errorEnvelope(response, "INVALID_REQUEST").get("error").asString
        assertTrue(message, message.contains("has no tests"))
        assertEquals(before, currentConfigurationCount())
    }

    @Test
    fun `a one-element array of a main class is still a Java Application`() {
        val rootRef = createRoot("jetbrains.mps.execution.demo.structure.SomeConcept", "SoloMain")
        val response = runTool(JetBrainsMPSRunConfigurationMcpToolset()) {
            it.create(nodeReference = JsonOrText("[\"$rootRef\"]"))
        }
        val data = assertOkData(response)
        assertEquals("Java Application", data.get("type").asString)
        assertFalse(data.has("runType"))
    }

    @Test
    fun `a non-test root among several targets is rejected`() {
        val model = newModel("mixed")
        val test = createTestRoot(model, "Kept")
        val main = createRootIn(model, "jetbrains.mps.execution.demo.structure.SomeConcept", "MainToo")
        val before = currentConfigurationCount()
        val response = runTool(JetBrainsMPSRunConfigurationMcpToolset()) {
            it.create(nodeReference = JsonOrText("[\"$test\", \"$main\"]"))
        }
        val message = errorEnvelope(response, "INVALID_REQUEST").get("error").asString
        assertTrue(message, message.contains("is not a test"))
        assertEquals(before, currentConfigurationCount())
    }

    @Test
    fun `compileInMPS false on a model target names the module`() {
        val solution = createSolution()
        val model = createModel(solution, "${solution.moduleName}.gated")
        createTestRoot(model, "Gated")
        val facet = solution.getFacet(JavaModuleFacet::class.java) ?: error("missing JavaModuleFacet")
        facet.compile = JavaModuleFacet.Compile.None
        val before = currentConfigurationCount()
        val response = runTool(JetBrainsMPSRunConfigurationMcpToolset()) {
            it.create(modelReference = JsonOrText(modelRefOf(model)))
        }
        val message = errorEnvelope(response, "INVALID_REQUEST").get("error").asString
        assertTrue(message, message.contains("compileInMPS") && message.contains(solution.moduleName!!))
        assertEquals(before, currentConfigurationCount())
    }

    @Test
    fun `a test that cannot run in process clears the flag on a model configuration`() {
        val model = newModel("inproc@tests")
        val root = createTestRoot(model, "SeparateJvm")
        val setProperty = runTool(JetBrainsMPSNodeMcpToolset()) {
            it.mps_mcp_update_node(
                nodeReference = root,
                operation = NodeUpdateOperation.SET,
                kind = NodeUpdateKind.PROPERTY,
                properties = listOf(listOf(root, "canNotRunInProcess", "true")),
            )
        }
        assertOk(setProperty)
        val response = runTool(JetBrainsMPSRunConfigurationMcpToolset()) {
            it.create(modelReference = JsonOrText(modelRefOf(model)))
        }
        val data = assertOkData(response)
        assertFalse(getInProcessFlag(findSettings(data.get("uniqueId").asString)))
    }

    @Test
    fun `neither key and an empty array are rejected without creating a configuration`() {
        val before = currentConfigurationCount()
        val missing = callThroughBridge(
            JetBrainsMPSRunConfigurationMcpToolset(), "mps_mcp_create_run_configuration", emptyMap(),
        )
        val missingError = errorEnvelope(missing, "INVALID_REQUEST").get("error").asString
        assertTrue(missingError, missingError.startsWith("nodeReference is required.") && missingError.contains("modelReference"))

        val empty = callThroughBridge(
            JetBrainsMPSRunConfigurationMcpToolset(), "mps_mcp_create_run_configuration",
            mapOf("nodeReference" to kotlinx.serialization.json.JsonArray(emptyList())),
        )
        val emptyError = errorEnvelope(empty, "INVALID_REQUEST").get("error").asString
        assertTrue(emptyError, emptyError.contains("nodeReference and modelReference are empty"))
        assertEquals(before, currentConfigurationCount())
    }

    @Test
    fun `a dropped models key is named in the missing-parameter rejection`() {
        val response = callThroughBridge(
            JetBrainsMPSRunConfigurationMcpToolset(), "mps_mcp_create_run_configuration",
            mapOf("models" to kotlinx.serialization.json.JsonPrimitive("some.model")),
        )
        val error = errorEnvelope(response, "INVALID_REQUEST").get("error").asString
        assertTrue(error, error.contains("'models'"))
    }

    @Test
    fun `several bad entries are reported together`() {
        val response = runTool(JetBrainsMPSRunConfigurationMcpToolset()) {
            it.create(
                nodeReference = JsonOrText("[\"no.such.One\", \"no.such.Two\"]"),
                modelReference = JsonOrText("no.such.Model"),
            )
        }
        val obj = errorEnvelope(response, "NOT_FOUND")
        val error = obj.get("error").asString
        assertTrue(error, error.startsWith("3 entries failed:") && error.contains("nodeReference[0]") && error.contains("modelReference:"))
    }

    @Test
    fun `a model from another project is refused`() {
        val other = openOtherProject()
        val solution = createSolutionIn(other)
        val model = createModelIn(other, solution, "${solution.moduleName}.foreign")
        val response = runTool(JetBrainsMPSRunConfigurationMcpToolset()) {
            it.create(modelReference = JsonOrText(modelRefOf(model)))
        }
        val error = errorEnvelope(response, "INVALID_REQUEST").get("error").asString
        assertTrue(error, error.contains("not part of the project selected by projectPath"))
    }

    @Test
    fun `two models become one NODE snapshot of their union named after the first`() {
        val first = newModel("one@tests")
        createTestRoot(first, "A1")
        createTestRoot(first, "A2")
        val second = newModel("two@tests")
        createTestRoot(second, "B1")
        val response = runTool(JetBrainsMPSRunConfigurationMcpToolset()) {
            it.create(modelReference = JsonOrText("[\"${modelRefOf(first)}\", \"${modelRefOf(second)}\"]"))
        }
        val data = assertOkData(response)
        assertEquals("Tests in '${NameUtil.shortNameFromLongName(first.name.value)}',...", data.get("name").asString)
        assertEquals("NODE", data.get("runType").asString)
        assertEquals(3, data.get("testCaseCount").asInt)
        assertFalse(data.get("live").asBoolean)
        assertEquals(3, testCaseCount(findSettings(data.get("uniqueId").asString)))
    }

    @Test
    fun `roots plus a model are one snapshot and a root inside the model counts once`() {
        val listed = newModel("listed@tests")
        val inListed = createTestRoot(listed, "InListed")
        createTestRoot(listed, "AlsoInListed")
        val other = newModel("other@tests")
        val inOther = createTestRoot(other, "InOther")
        val response = runTool(JetBrainsMPSRunConfigurationMcpToolset()) {
            it.create(
                nodeReference = JsonOrText("[\"$inOther\", \"$inListed\"]"),
                modelReference = JsonOrText(modelRefOf(listed)),
                configurationName = "Mixed snapshot",
            )
        }
        val data = assertOkData(response)
        assertEquals("Mixed snapshot", data.get("name").asString)
        assertEquals("NODE", data.get("runType").asString)
        assertEquals(3, data.get("testCaseCount").asInt)
        assertEquals(3, testCaseCount(findSettings(data.get("uniqueId").asString)))
    }

    @Test
    fun `compileInMPS false in two modules names both`() {
        val gated = (1..2).map { index ->
            val solution = createSolution()
            val model = createModel(solution, "${solution.moduleName}.gated$index")
            createTestRoot(model, "Gated$index")
            val facet = solution.getFacet(JavaModuleFacet::class.java) ?: error("missing JavaModuleFacet")
            facet.compile = JavaModuleFacet.Compile.None
            solution.moduleName!! to model
        }
        val before = currentConfigurationCount()
        val response = runTool(JetBrainsMPSRunConfigurationMcpToolset()) {
            it.create(modelReference = JsonOrText(gated.joinToString(", ", "[", "]") { (_, model) -> "\"${modelRefOf(model)}\"" }))
        }
        val message = errorEnvelope(response, "INVALID_REQUEST").get("error").asString
        assertTrue(message, message.startsWith("Modules ") && message.contains("compileInMPS"))
        for ((moduleName, _) in gated) assertTrue(message, message.contains("'$moduleName'"))
        assertEquals(before, currentConfigurationCount())
    }

    @Test
    fun `a real JSON array of test roots binds through the bridge`() {
        val model = newModel("bridged")
        val first = createTestRoot(model, "BridgedOne")
        val second = createTestRoot(model, "BridgedTwo")
        val response = callThroughBridge(
            JetBrainsMPSRunConfigurationMcpToolset(), "mps_mcp_create_run_configuration",
            mapOf(
                "nodeReference" to kotlinx.serialization.json.JsonArray(
                    listOf(kotlinx.serialization.json.JsonPrimitive(first), kotlinx.serialization.json.JsonPrimitive(second))
                )
            ),
        )
        val data = assertOkData(response)
        assertEquals("BridgedOne,...", data.get("name").asString)
        assertEquals(2, data.get("testCaseCount").asInt)
    }

    @Test
    fun `a scalar written as a JSON string unwraps`() {
        val model = newModel("quoted")
        val root = createTestRoot(model, "Quoted")
        val response = runTool(JetBrainsMPSRunConfigurationMcpToolset()) {
            it.create(nodeReference = JsonOrText("\"$root\""))
        }
        val data = assertOkData(response)
        assertEquals("Quoted", data.get("name").asString)
        assertEquals("NODE", data.get("runType").asString)
    }

    @Test
    fun `a non-root among several targets gets the non-root rejection`() {
        val model = newModel("nonroot")
        val test = createTestRoot(model, "Holder")
        val method = testMethodOf(test)
        val before = currentConfigurationCount()
        val response = runTool(JetBrainsMPSRunConfigurationMcpToolset()) {
            it.create(nodeReference = JsonOrText("[\"$test\", \"$method\"]"))
        }
        val message = errorEnvelope(response, "INVALID_REQUEST").get("error").asString
        assertTrue(message, message.contains("is not a root node"))
        assertFalse(message, message.contains("is not a test"))
        assertEquals(before, currentConfigurationCount())
    }

    @Test
    fun `a lone non-root test method gets the non-root rejection`() {
        val model = newModel("lonemethod")
        val method = testMethodOf(createTestRoot(model, "LoneHolder"))
        val response = runTool(JetBrainsMPSRunConfigurationMcpToolset()) {
            it.create(nodeReference = method)
        }
        val message = errorEnvelope(response, "INVALID_REQUEST").get("error").asString
        assertEquals("Node '$method' is not a root node; run configurations target root nodes only", message)
    }

    @Test
    fun `an empty test case among several targets is named as having no test methods`() {
        val model = newModel("emptyamong")
        val test = createTestRoot(model, "Filled")
        val empty = createRootIn(model, "jetbrains.mps.lang.test.structure.NodesTestCase", "Unfilled")
        val response = runTool(JetBrainsMPSRunConfigurationMcpToolset()) {
            it.create(nodeReference = JsonOrText("[\"$test\", \"$empty\"]"))
        }
        val message = errorEnvelope(response, "INVALID_REQUEST").get("error").asString
        assertTrue(message, message.startsWith("Test case 'Unfilled' has no test methods"))
    }

    @Test
    fun `failures are listed in parameter and index order`() {
        val model = newModel("ordered")
        val method = testMethodOf(createTestRoot(model, "OrderHolder"))
        val response = runTool(JetBrainsMPSRunConfigurationMcpToolset()) {
            it.create(
                nodeReference = JsonOrText("[\"$method\", \"no.such.Root\"]"),
                modelReference = JsonOrText("no.such.Model"),
            )
        }
        val labels = errorEnvelope(response, "INVALID_REQUEST").get("error").asString
            .lines().drop(1).map { it.substringBefore(": ") }
        assertEquals(listOf("nodeReference[0]", "nodeReference[1]", "modelReference"), labels)
    }

    @Test
    fun `an unresolved entry does not hide a non-test root`() {
        val model = newModel("hidden")
        val main = createRootIn(model, "jetbrains.mps.execution.demo.structure.SomeConcept", "HiddenMain")
        val response = runTool(JetBrainsMPSRunConfigurationMcpToolset()) {
            it.create(nodeReference = JsonOrText("[\"no.such.Root\", \"$main\"]"))
        }
        val message = errorEnvelope(response, "INVALID_REQUEST").get("error").asString
        assertTrue(message, message.startsWith("2 entries failed:"))
        assertTrue(message, message.contains("nodeReference[0]: Node 'no.such.Root' not found"))
        assertTrue(message, message.contains("nodeReference[1]: Root 'HiddenMain' is not a test"))
    }

    @Test
    fun `a test that cannot run in process clears the flag on a snapshot`() {
        val model = newModel("inprocsnap")
        val inProcess = createTestRoot(model, "InProcess")
        val separate = createTestRoot(model, "SeparateJvm")
        assertOk(runTool(JetBrainsMPSNodeMcpToolset()) {
            it.mps_mcp_update_node(
                nodeReference = separate,
                operation = NodeUpdateOperation.SET,
                kind = NodeUpdateKind.PROPERTY,
                properties = listOf(listOf(separate, "canNotRunInProcess", "true")),
            )
        })
        val response = runTool(JetBrainsMPSRunConfigurationMcpToolset()) {
            it.create(nodeReference = JsonOrText("[\"$inProcess\", \"$separate\"]"))
        }
        val data = assertOkData(response)
        assertEquals("NODE", data.get("runType").asString)
        assertFalse(getInProcessFlag(findSettings(data.get("uniqueId").asString)))
    }

    @Test
    fun `a model mixing a legacy JUnit3 test with a modern one is rejected`() {
        val model = newModel("legacy@tests")
        createTestRoot(model, "Modern")
        val legacy = parseClassRootInto(model, "public class LegacyCase { public void testOne() { } }")
        executeCommand {
            val repo = myProject.repository
            val junit3 = SNodePointer("49808fad-9d41-4b96-83fa-9231640f6b2b/java:junit.framework(JUnit/)", "~TestCase")
                .resolve(repo) ?: error("junit.framework.TestCase stub is not loaded in the test environment")
            val node = PersistenceFacade.getInstance().createNodeReference(legacy).resolve(repo)!!
            val type = SNodeFactoryOperations.setNewChild(node, SUPERCLASS, CLASSIFIER_TYPE)
            type.setReferenceTarget(CLASSIFIER, junit3)
        }
        val before = currentConfigurationCount()
        val response = runTool(JetBrainsMPSRunConfigurationMcpToolset()) {
            it.create(modelReference = JsonOrText(modelRefOf(model)))
        }
        val message = errorEnvelope(response, "INVALID_REQUEST").get("error").asString
        assertTrue(message, message.startsWith("Cannot mix legacy (compatibility-mode) and modern tests"))
        assertTrue(message, message.contains("LegacyCase"))
        assertFalse(message, message.contains("Modern"))
        assertEquals(before, currentConfigurationCount())
    }

    private var otherProject: MPSProject? = null

    @After
    fun closeOtherProject() {
        otherProject?.let { mcpEnvironment.closeProject(it) }
        otherProject = null
    }

    private fun createRoot(concept: String, name: String): String {
        val solution = createSolution()
        val model = createModel(solution, "${solution.moduleName}.code")
        val response = runTool(JetBrainsMPSRootNodeMcpToolset()) {
            it.mps_mcp_create_root_node(
                modelReference = modelRefOf(model),
                concept = concept,
                conceptReference = null,
                name = name,
            )
        }
        return assertOkData(response).get("reference").asString
    }

    @Test
    fun `ClassConcept with main method yields a registered Java run configuration`() {
        // Mirrors Java_Producer.ProducerPart_NodeClassConcept_d1i8dk_a: a plain BaseLanguage
        // class whose ClassConcept.getMainMethod() resolves a qualifying `main` method must
        // produce a node-aware "Java Application" config named "Class <name>", with the
        // seeded ClassConcept's node pointer stored on the configuration.
        val rootRef = parseClassRoot(
            "public class Sample { public static void main(String[] args) { } }"
        )

        val before = currentConfigurationCount()
        val response = runTool(JetBrainsMPSRunConfigurationMcpToolset()) {
            it.create(nodeReference = rootRef)
        }

        val data = assertOkData(response)
        assertEquals("Java Application", data.get("type").asString)
        assertEquals(
            "ClassConcept roots use the 'Class <name>' prefix, matching the IDE gutter producer",
            "Class Sample", data.get("name").asString
        )
        assertEquals(before + 1, currentConfigurationCount())

        val settings = findSettings(data.get("uniqueId").asString)
        assertEquals("Java Application", settings.type.id)
        val configClassName = settings.configuration.javaClass.name
        assertTrue(
            "expected the Java configuration class generated by the execution plugin: $configClassName",
            configClassName.startsWith("jetbrains.mps.")
                    && configClassName.endsWith("Java_Configuration")
        )
        assertJavaConfigurationTargetsNode(settings, rootRef)
    }

    @Test
    fun `ClassConcept without main method is rejected as INVALID_REQUEST`() {
        // A ClassConcept lacking a qualifying `main` method (no method named "main" whose
        // single parameter is a String[]-subtype) falls through to the catch-all rejection —
        // getMainMethod() returns null, no ITestCase / IMainClass applies, so determineKind()
        // returns null. The error message must enumerate the three accepted shapes so a user
        // can tell which one their root failed to match.
        val rootRef = parseClassRoot("public class NoMain { void instanceMethod() { } }")

        val beforeCount = currentConfigurationCount()
        val response = runTool(JetBrainsMPSRunConfigurationMcpToolset()) {
            it.create(nodeReference = rootRef)
        }

        val obj = JsonParser.parseString(response).asJsonObject
        assertFalse("expected error envelope: $response", obj.get("ok").asBoolean)
        assertEquals("INVALID_REQUEST", obj.get("code").asString)
        val message = obj.get("error").asString
        assertTrue(
            "rejection must enumerate IMainClass, ITestCase, and ClassConcept: $message",
            message.contains("IMainClass") && message.contains("ITestCase") &&
                    message.contains("ClassConcept")
        )
        assertEquals(
            "validation failure must not leave a run configuration behind",
            beforeCount, currentConfigurationCount()
        )
    }

    @Test
    fun `compileInMPS=false on the module rejects Java app configuration creation`() {
        // Producer parity: Java_Producer.ProducerPart_* refuses to fire when the owning
        // module's descriptor reports compileInMPS=false (the module's Java is compiled
        // externally, classes_gen is empty, the launch would fail with ClassNotFoundException).
        // Flipping the JavaModuleFacet to Compile.None drives the same gate without needing a
        // pre-built JPS-compiled solution: ProjectStructureBuilder reads `getCompile() == MPS`
        // when synthesising the module-descriptor stub each time, and SModelOperations
        // .getModuleStub rebuilds the stub on every call (no caching), so the change is visible
        // immediately to the tool.
        val solution = createSolution()
        val model = createModel(solution, "${solution.moduleName}.code")
        val rootRef = parseClassRootInto(
            model,
            "public class JpsBuilt { public static void main(String[] args) { } }"
        )

        val facet = solution.getFacet(JavaModuleFacet::class.java)
            ?: error("Fresh test solution must carry a JavaModuleFacet (SolutionProducer default)")
        facet.compile = JavaModuleFacet.Compile.None

        val beforeCount = currentConfigurationCount()
        val response = runTool(JetBrainsMPSRunConfigurationMcpToolset()) {
            it.create(nodeReference = rootRef)
        }

        val obj = JsonParser.parseString(response).asJsonObject
        assertFalse("expected error envelope: $response", obj.get("ok").asBoolean)
        assertEquals("INVALID_REQUEST", obj.get("code").asString)
        val message = obj.get("error").asString
        assertTrue(
            "rejection must mention compileInMPS so the user can locate the offending setting: $message",
            message.contains("compileInMPS")
        )
        val moduleName = checkNotNull(solution.moduleName) {
            "createSolution() must return a module with a non-null moduleName"
        }
        assertTrue(
            "rejection must identify the offending module by name so the user knows which " +
                    "JavaModuleFacet to flip: $message",
            message.contains(moduleName)
        )
        assertEquals(
            "producer-parity rejection must leave the run-config list untouched",
            beforeCount, currentConfigurationCount()
        )
    }

    /**
     * Seeds a plain BaseLanguage `ClassConcept` root by routing source through
     * `mps_mcp_parse_java_and_insert`. Using the real parser instead of hand-assembling the
     * SNode keeps the test honest about what shape the producer's `isMainMethod` typesystem
     * predicate actually accepts — the parser produces exactly the structure the gutter
     * producer expects, so a future change to `StaticMethodDeclaration.isMainMethod` will
     * naturally flow through.
     */
    private fun parseClassRoot(javaCode: String): String {
        val solution = createSolution()
        val model = createModel(solution, "${solution.moduleName}.code")
        return parseClassRootInto(model, javaCode)
    }

    /** Variant of [parseClassRoot] that reuses an existing model — see the compileInMPS test. */
    private fun parseClassRootInto(model: org.jetbrains.mps.openapi.model.SModel, javaCode: String): String {
        val modelRef = modelRefOf(model)
        val parameters = """
            {
              "code": "$javaCode",
              "featureKind": "CLASS",
              "insert": { "mode": "root", "modelRef": "$modelRef" }
            }
        """.trimIndent()
        val response = runTool(JetBrainsMPSJavaMcpToolset()) {
            it.mps_mcp_parse_java_and_insert(parameters)
        }
        val data = assertOkData(response)
        val inserted = data.getAsJsonArray("inserted")
        assertEquals(
            "Java parser must produce exactly one root for the seeded snippet: $response",
            1, inserted.size()
        )
        return inserted.first().asJsonObject.get("reference").asString
    }

    private fun findSettings(uniqueId: String): RunnerAndConfigurationSettings =
        RunManager.getInstance(myProject.project).allSettings.single { it.uniqueID == uniqueId }

    /**
     * Round-trips the Java configuration's node-pointer holder reflectively
     * (`Java_Configuration.getNode()` → `NodeBySeveralConcepts_Configuration.getNode()` →
     * `SNodeReference`) and asserts the stored pointer matches [expectedRef]. The matching
     * setter `setNode(SNode)` is what [configureAsMain] invokes, so a regression that drops
     * that call would leave the pointer null (or pointing at a stale node) and trip this
     * assertion — covering both the IMainClass and ClassConcept dispatch paths in one helper.
     */
    private fun assertJavaConfigurationTargetsNode(
        settings: RunnerAndConfigurationSettings,
        expectedRef: String,
    ) {
        val cfg = settings.configuration
        val nodeHolder = cfg.javaClass.getMethod("getNode").invoke(cfg)
            ?: error("Java_Configuration.getNode() returned null — node holder not initialised")
        val ref = nodeHolder.javaClass.getMethod("getNode").invoke(nodeHolder)
            ?: error("NodeBySeveralConcepts_Configuration.getNode() returned null — setNode(node) was not called")
        val refString = PersistenceFacade.getInstance()
            .asString(ref as org.jetbrains.mps.openapi.model.SNodeReference)
        assertEquals(
            "configureAsMain must store the seeded node's pointer into the configuration so " +
                    "the launcher resolves the right class at runtime",
            expectedRef, refString
        )
    }

    /**
     * Round-trips the reflective JUnit configuration plumbing the toolset uses
     * (`getJUnitSettings()` → `getTestCases()`) and asserts that exactly one test case is
     * wired into the configuration. Centralised so the two ITestCase variants don't
     * each carry their own near-identical reflective lookup.
     */
    private fun assertSingleTestCase(settings: RunnerAndConfigurationSettings, variant: String) {
        val cfg = settings.configuration
        val jUnitSettings = cfg.javaClass.getMethod("getJUnitSettings").invoke(cfg)
        val getTestCases = jUnitSettings.javaClass.methods.firstOrNull {
            it.name == "getTestCases" && it.parameterCount == 0
        } ?: error("JUnitSettings_Configuration#getTestCases not found")
        val testCases = getTestCases.invoke(jUnitSettings) as? Collection<*>
            ?: error("getTestCases should return a Collection, got: ${getTestCases.invoke(jUnitSettings)}")
        assertEquals(
            "the run configuration must contain exactly one test case — the seeded $variant root",
            1, testCases.size
        )
    }

    /**
     * Round-trips the per-run-type in-process flag — the value `setInProcessFlag(boolean)`
     * actually writes. The matching reader on `JUnitSettings_Configuration` is the
     * package-private `getInProcessProperty()`, which mirrors the same
     * `runType2InProcess.get(currentRunType)` lookup. We deliberately do not use the public
     * `canExecuteInProcess()` because it also gates on `!getDebug()`, which would conflate
     * a regression in the toolset's flag handling with an unrelated debug-flag change.
     */
    private fun getInProcessFlag(settings: RunnerAndConfigurationSettings): Boolean {
        val cfg = settings.configuration
        val jUnitSettings = cfg.javaClass.getMethod("getJUnitSettings").invoke(cfg)
        val getter = jUnitSettings.javaClass.getDeclaredMethod("getInProcessProperty")
        getter.isAccessible = true
        val value = getter.invoke(jUnitSettings)
        return value as? Boolean ?: error("getInProcessProperty returned a non-Boolean: $value")
    }

    private fun currentConfigurationCount(): Int =
        RunManager.getInstance(myProject.project).allSettings.size

    private fun assertOk(response: String) {
        val obj = JsonParser.parseString(response).asJsonObject
        assertTrue("expected ok=true envelope, got: $response", obj.get("ok").asBoolean)
        assertNotNull("ok envelope must carry data: $response", obj.get("data"))
    }

    private fun assertOkData(response: String): JsonObject {
        val obj = JsonParser.parseString(response).asJsonObject
        assertTrue("expected ok=true envelope, got: $response", obj.get("ok").asBoolean)
        val data = obj.get("data")
        assertNotNull("ok envelope must carry data: $response", data)
        return when {
            data.isJsonObject -> data.asJsonObject
            data.isJsonPrimitive -> JsonParser.parseString(data.asString).asJsonObject
            else -> error("unexpected data shape in $response")
        }
    }

    private suspend fun JetBrainsMPSRunConfigurationMcpToolset.create(
        nodeReference: String = "",
        configurationName: String? = null,
    ) = mps_mcp_create_run_configuration(JsonOrText(nodeReference), configurationName = configurationName)

    private suspend fun JetBrainsMPSRunConfigurationMcpToolset.create(
        nodeReference: JsonOrText = JsonOrText.EMPTY,
        modelReference: JsonOrText? = null,
        configurationName: String? = null,
    ) = mps_mcp_create_run_configuration(nodeReference, modelReference, configurationName)

    private fun errorEnvelope(response: String, code: String): JsonObject {
        val obj = JsonParser.parseString(response).asJsonObject
        assertFalse("expected error envelope: $response", obj.get("ok").asBoolean)
        assertEquals(response, code, obj.get("code").asString)
        return obj
    }

    private fun newModel(suffix: String): SModel {
        val solution = createSolution()
        return createModel(solution, "${solution.moduleName}.$suffix")
    }

    private fun createRootIn(model: SModel, concept: String, name: String): String {
        val response = runTool(JetBrainsMPSRootNodeMcpToolset()) {
            it.mps_mcp_create_root_node(
                modelReference = modelRefOf(model),
                concept = concept,
                conceptReference = null,
                name = name,
            )
        }
        return assertOkData(response).get("reference").asString
    }

    private fun createTestRoot(model: SModel, name: String): String {
        val ref = createRootIn(model, "jetbrains.mps.lang.test.structure.NodesTestCase", name)
        executeCommand {
            val node = PersistenceFacade.getInstance().createNodeReference(ref).resolve(myProject.repository)
                ?: error("created test root did not resolve: $ref")
            val method = SNodeFactoryOperations.addNewChild(node, TEST_METHODS, NODES_TEST_METHOD)
            method.setProperty(
                MetaAdapterFactory.getProperty(
                    0xceab519525ea4f22uL.toLong(), 0x9b92103b95ca8c0cuL.toLong(), 0x110396eaaa4L, 0x110396ec041L, "name",
                ),
                "test$name",
            )
        }
        return ref
    }

    /** The reference of the single test method [createTestRoot] put under [testRoot]. */
    private fun testMethodOf(testRoot: String): String = readOnRepo {
        val holder = PersistenceFacade.getInstance().createNodeReference(testRoot).resolve(myProject.repository)!!
        PersistenceFacade.getInstance().asString(holder.getChildren(TEST_METHODS).single().reference)
    }

    private fun junitSettings(settings: RunnerAndConfigurationSettings): Any =
        settings.configuration.javaClass.getMethod("getJUnitSettings").invoke(settings.configuration)

    private fun junitRunType(settings: RunnerAndConfigurationSettings): String {
        val type = junitSettings(settings).javaClass.getMethod("getJUnitRunType").invoke(junitSettings(settings))
        return (type as Enum<*>).name
    }

    private fun modelRef(settings: RunnerAndConfigurationSettings): String? =
        junitSettings(settings).javaClass.methods.firstOrNull { it.name == "getModelRef" && it.parameterCount == 0 }
            ?.invoke(junitSettings(settings)) as? String

    private fun testCaseCount(settings: RunnerAndConfigurationSettings): Int {
        val cases = junitSettings(settings).javaClass.methods.first { it.name == "getTestCases" && it.parameterCount == 0 }
            .invoke(junitSettings(settings)) as Collection<*>
        return cases.size
    }

    /** The `<configuration>` element [settings] serializes to in the RunManager state that is written to disk. */
    private fun storedConfiguration(settings: RunnerAndConfigurationSettings): Element? {
        val manager = RunManager.getInstance(myProject.project)
        val state = manager.javaClass.methods.first { it.name == "getState" && it.parameterCount == 0 }
            .invoke(manager) as Element
        fun walk(element: Element): Sequence<Element> = sequenceOf(element) + element.children.asSequence().flatMap { walk(it) }
        return walk(state).firstOrNull {
            it.name == "configuration" && it.getAttributeValue("name") == settings.name &&
                it.getAttributeValue("type") == settings.type.id
        }
    }

    private fun openOtherProject(): MPSProject =
        (mcpEnvironment.createEmptyProject() as MPSProject).also { otherProject = it }

    private fun createSolutionIn(project: MPSProject): jetbrains.mps.project.Solution {
        val name = "test.sol${System.nanoTime()}"
        var solution: jetbrains.mps.project.Solution? = null
        executeCommandIn(project) {
            solution = jetbrains.mps.project.modules.SolutionProducer(project).create(name, createDirIn(project, name))
        }
        return checkNotNull(solution)
    }

    private fun createModelIn(project: MPSProject, module: org.jetbrains.mps.openapi.module.SModule, modelName: String): SModel {
        var model: SModel? = null
        executeCommandIn(project) {
            val nameObj = org.jetbrains.mps.openapi.model.SModelName(modelName)
            val root = module.modelRoots.first { it.canCreateModel(nameObj) }
            model = root.createModel(nameObj) ?: error("Failed to create model '$modelName'")
        }
        return checkNotNull(model)
    }

    companion object {
        private val NODES_TEST_METHOD = MetaAdapterFactory.getConcept(
            0x8585453e6bfb4d80uL.toLong(), 0x98deb16074f1d86cuL.toLong(), 0x11b55b54d88L,
            "jetbrains.mps.lang.test.structure.NodesTestMethod",
        )
        private val TEST_METHODS = MetaAdapterFactory.getContainmentLink(
            0x8585453e6bfb4d80uL.toLong(), 0x98deb16074f1d86cuL.toLong(), 0x11b55b49e46L, 0x11b78c499b5L, "testMethods",
        )
        private val GENERATOR_TESTS = MetaAdapterFactory.getContainmentLink(
            0x68015e26cc4d49dbuL.toLong(), 0x8715b643faea1769uL.toLong(), 0x7b1db36ecf092beL, 0x7b1db36ecf0d067L, "tests",
        )
        private val TRANSFORMATION_MATCH_ASSERTION = MetaAdapterFactory.getConcept(
            0x68015e26cc4d49dbuL.toLong(), 0x8715b643faea1769uL.toLong(), 0x7b1db36ecf0d057L,
            "jetbrains.mps.lang.test.generator.structure.TransformationMatchAssertion",
        )
        private val SUPERCLASS = MetaAdapterFactory.getContainmentLink(
            0xf3061a5392264cc5uL.toLong(), 0xa443f952ceaf5816uL.toLong(), 0xf8c108ca66L, 0x10f6353296dL, "superclass",
        )
        private val CLASSIFIER_TYPE = MetaAdapterFactory.getConcept(
            0xf3061a5392264cc5uL.toLong(), 0xa443f952ceaf5816uL.toLong(), 0x101de48bf9eL,
            "jetbrains.mps.baseLanguage.structure.ClassifierType",
        )
        private val CLASSIFIER = MetaAdapterFactory.getReferenceLink(
            0xf3061a5392264cc5uL.toLong(), 0xa443f952ceaf5816uL.toLong(), 0x101de48bf9eL, 0x101de490babL, "classifier",
        )
    }
}
