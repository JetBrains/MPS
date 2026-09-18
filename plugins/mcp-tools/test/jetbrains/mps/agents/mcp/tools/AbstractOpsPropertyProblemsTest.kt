package jetbrains.mps.agents.mcp.tools

import com.google.gson.JsonParser
import com.google.gson.JsonPrimitive
import com.google.gson.JsonSyntaxException
import jetbrains.mps.errors.MessageStatus
import jetbrains.mps.errors.item.FlavouredItem
import jetbrains.mps.errors.item.IssueKindReportItem
import jetbrains.mps.errors.item.NodeReportItem
import jetbrains.mps.java.core.newparser.FeatureKind
import jetbrains.mps.persistence.PersistenceRegistry
import jetbrains.mps.project.ModuleId
import jetbrains.mps.project.structure.modules.ModuleReference
import jetbrains.mps.smodel.SNodeId
import jetbrains.mps.smodel.adapter.ids.MetaIdFactory
import jetbrains.mps.smodel.adapter.ids.SConceptId
import jetbrains.mps.smodel.adapter.structure.concept.SConceptAdapter
import jetbrains.mps.smodel.runtime.ConceptDescriptor
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Assert.fail
import org.junit.AfterClass
import org.junit.Assume
import org.junit.BeforeClass
import org.junit.Test
import org.jetbrains.mps.openapi.language.SAbstractConcept
import org.jetbrains.mps.openapi.language.SConcept
import org.jetbrains.mps.openapi.language.SConceptFeature
import org.jetbrains.mps.openapi.language.SContainmentLink
import org.jetbrains.mps.openapi.language.SDataType
import org.jetbrains.mps.openapi.language.SEnumeration
import org.jetbrains.mps.openapi.language.SEnumerationLiteral
import org.jetbrains.mps.openapi.language.SInterfaceConcept
import org.jetbrains.mps.openapi.language.SLanguage
import org.jetbrains.mps.openapi.language.SProperty
import org.jetbrains.mps.openapi.language.SReferenceLink
import org.jetbrains.mps.openapi.language.SType
import org.jetbrains.mps.openapi.model.SModel
import org.jetbrains.mps.openapi.model.SNode
import org.jetbrains.mps.openapi.model.SNodeAccessUtil
import org.jetbrains.mps.openapi.model.SReference
import org.jetbrains.mps.openapi.model.SNodeReference
import org.jetbrains.mps.openapi.module.SModuleReference
import org.jetbrains.mps.openapi.persistence.PersistenceFacade
import kotlinx.coroutines.CancellationException
import kotlinx.coroutines.CoroutineStart
import kotlinx.coroutines.awaitCancellation
import kotlinx.coroutines.cancelAndJoin
import kotlinx.coroutines.launch
import kotlinx.coroutines.runBlocking
import java.io.File
import java.lang.reflect.InvocationTargetException
import java.lang.reflect.Proxy
import java.nio.file.Files
import java.util.UUID
import java.util.WeakHashMap

class AbstractOpsPropertyProblemsTest {

    companion object {
        private val TEST_ACCESS_UTIL = TestSNodeAccessUtil()
        private var previousAccessUtil: SNodeAccessUtil? = null

        @JvmStatic
        @BeforeClass
        fun setUpSNodeAccessUtil() {
            previousAccessUtil = TEST_ACCESS_UTIL.globalInstance()
            try {
                SNodeAccessUtil.setInstance(TEST_ACCESS_UTIL)
                if (PersistenceFacade.getInstance() == null) {
                    PersistenceRegistry(null, null).init()
                }
            } catch (t: Throwable) {
                SNodeAccessUtil.setInstance(previousAccessUtil)
                throw t
            }
        }

        @JvmStatic
        @AfterClass
        fun restoreSNodeAccessUtil() {
            SNodeAccessUtil.setInstance(previousAccessUtil)
        }
    }

    private object TestLanguage : SLanguage {
        override fun getQualifiedName(): String = "test.lang"

        override fun getSourceModuleReference(): SModuleReference =
            ModuleReference("test.lang", ModuleId.regular(UUID(0L, 4L)))
    }

    private val ops = object : AbstractOps() {
        fun hasLocalProblemsForTest(node: SNode, problems: Map<SNode, List<NodeReportItem>>) = hasLocalProblems(node, problems)
        fun nodeWithProblemsToJsonForTest(node: SNode, problems: Map<SNode, List<NodeReportItem>>) =
            nodeWithProblemsToJson(node, problems, deep = false)

        fun readJsonOrFileForTest(jsonOrPath: String?, dryRun: Boolean = false) = readJsonOrFile(jsonOrPath, dryRun)

        fun nodeHierarchyToJsonForTest(node: SNode, deep: Boolean = false) = nodeHierarchyToJson(node, deep)

        /** `(errors, warnings)` — unwrapped because [AbstractOps.ProblemCounts] is protected. */
        fun problemCountsForTest(node: SNode, problems: Map<SNode, List<NodeReportItem>>): Pair<Int, Int> {
            val counts = problemCounts(node, problems)
            return counts.errors to counts.warnings
        }

        fun resolveNodeReferenceForTest(repository: org.jetbrains.mps.openapi.module.SRepository, nodeRefStr: String) =
            resolveNodeReference(repository, nodeRefStr)

        fun saveToTempFileForTest(json: String) = saveToTempFile(json)

        fun errJsonForTest(
            message: String?,
            code: AbstractOps.McpErrorCode? = null,
            details: Map<String, Any?> = emptyMap(),
            warnings: List<String> = emptyList()
        ) = errJson(message, code, details, warnings)

        fun okJsonRawForTest(payload: String) = okJson(payload)

        fun okJsonStringForTest(payload: String) = okJsonString(payload)

        fun okJsonElementForTest(payload: com.google.gson.JsonElement) = okJson(payload)

        fun toolFailureForTest(activity: String, e: Throwable) = toolFailure(activity, e)

        suspend fun coroutineProgressMonitorForTest() = coroutineProgressMonitor()

        fun validateFeatureIdForTest(
            node: SNode,
            rawId: String?,
            propertyName: String,
            featureKind: String,
            deserialize: (String) -> SConceptFeature
        ) = validateFeatureId(node, rawId, propertyName, featureKind, deserialize)
    }

    private val nodeOps = object : AbstractNodeOps() {
        fun readNodeJsonOrFileForTest(jsonOrPath: String?, dryRun: Boolean = false) = readNodeJsonOrFile(jsonOrPath, dryRun)

        fun instantiateNodeForTest(jsonObject: com.google.gson.JsonObject, model: SModel, jsonPath: String = "$") =
            instantiateNode(jsonObject, model, dryRun = true, jsonPath = jsonPath)

        fun setPropertyForTest(node: SNode, sProperty: SProperty, propertyValue: String?) =
            setProperty(node, sProperty, propertyValue)
    }

    private val nodeToolset = JetBrainsMPSNodeMcpToolset()

    @Test
    fun enumDefaultLiteralIsNotReportedAsProblem() {
        val property = TestEnumProperty()
        val node = jetbrains.mps.smodel.SNode(TestConcept(listOf(property)))
        node.setId(SNodeId.Regular(1L))
        TEST_ACCESS_UTIL.setRawProperty(node, property, TestEnumLiteral("DEFAULT"))

        val problems = emptyMap<SNode, List<NodeReportItem>>()

        assertFalse(ops.hasLocalProblemsForTest(node, problems))

        val json = ops.nodeWithProblemsToJsonForTest(node, problems)
        assertTrue(json.contains("\"properties\":[{\"name\":\"enumProp\""))
        assertFalse(json.contains("Empty enumeration property"))
        assertFalse(json.contains("invalid property value"))
    }

    @Test
    fun missingEnumLiteralIsStillReportedAsProblem() {
        val property = TestEnumProperty()
        val node = jetbrains.mps.smodel.SNode(TestConcept(listOf(property)))
        node.setId(SNodeId.Regular(2L))

        val problems = emptyMap<SNode, List<NodeReportItem>>()

        assertTrue(ops.hasLocalProblemsForTest(node, problems))

        val json = ops.nodeWithProblemsToJsonForTest(node, problems)
        assertTrue(json.contains("Empty enumeration property"))
    }

    @Test
    fun printoutReportsAnEnumDefaultWithAFlag() {
        // D5/D12: a property holding its enumeration's default stores nothing, so the printout used
        // to omit it (or show ""), and readers counted it as missing data.
        val property = TestEnumProperty()
        val node = jetbrains.mps.smodel.SNode(TestConcept(listOf(property)))
        node.setId(SNodeId.Regular(20L))

        val json = ops.nodeHierarchyToJsonForTest(node)

        assertTrue("the default literal must be printed as the value: $json", json.contains("\"value\":\"DEFAULT\""))
        assertTrue("the printed default must carry the flag: $json", json.contains("\"isDefault\":true"))
    }

    @Test
    fun printedEnumDefaultIsAcceptedBackByThePropertyWriter() {
        // Blueprint round-trip: whatever the printer puts in `value` must be writable again.
        val property = TestEnumProperty()
        val printed = jetbrains.mps.smodel.SNode(TestConcept(listOf(property))).also { it.setId(SNodeId.Regular(21L)) }
        val json = JsonParser.parseString(ops.nodeHierarchyToJsonForTest(printed)).asJsonObject
        val value = json.getAsJsonArray("properties").single().asJsonObject.get("value").asString

        val target = jetbrains.mps.smodel.SNode(TestConcept(listOf(property)))
        target.setId(SNodeId.Regular(22L))
        nodeOps.setPropertyForTest(target, property, value)

        val stored = SNodeAccessUtil.getPropertyValue(target, property)
        assertTrue("printed default must be stored back as a literal, got: $stored", stored is TestEnumLiteral)
        assertEquals("DEFAULT", (stored as TestEnumLiteral).name)
    }

    @Test
    fun printoutKeepsASetEnumValueUnflagged() {
        // The flag must follow the *stored* value: TestEnumeration renders to null (like a property
        // whose declaration cannot render its value, e.g. an unresolved concept), so this property
        // prints as absent — but never as the default, because MPS does hold a value for it.
        val property = TestEnumProperty()
        val node = jetbrains.mps.smodel.SNode(TestConcept(listOf(property)))
        node.setId(SNodeId.Regular(23L))
        TEST_ACCESS_UTIL.setRawProperty(node, property, TestEnumLiteral("OTHER"))

        val json = ops.nodeHierarchyToJsonForTest(node)

        assertFalse("an explicitly set value must not be flagged as a default: $json", json.contains("\"isDefault\""))
        assertFalse("the stored value must not be replaced by the default literal: $json", json.contains("DEFAULT"))
    }

    @Test
    fun printoutKeepsARenderableSetEnumValueUnflagged() {
        // Same rule for a property whose data type does render its value: the printed value is the
        // stored one and carries no flag.
        val property = TestPresentationEnumProperty()
        val node = jetbrains.mps.smodel.SNode(TestConcept(listOf(property)))
        node.setId(SNodeId.Regular(25L))
        TEST_ACCESS_UTIL.setRawProperty(node, property, TestPresentationLiteral("GREEN_PEAR", "Green Pear"))

        val json = ops.nodeHierarchyToJsonForTest(node)

        assertTrue("the stored value must be printed: $json", json.contains("\"value\":\"Green Pear\""))
        assertFalse("an explicitly set value must not be flagged as a default: $json", json.contains("\"isDefault\""))
    }

    @Test
    fun problemCountsTalliesCheckerItemsAndSoftProblemsBySeverity() {
        // The per-root tallies of a model-scope check (details.rootsChecked / perRoot) must count
        // exactly what the report for that root would print: checker items by severity, plus the
        // synthesized "empty enumeration property" error.
        val property = TestEnumProperty()
        val node = jetbrains.mps.smodel.SNode(TestConcept(listOf(property)))
        node.setId(SNodeId.Regular(24L))

        val (errors, warnings) = ops.problemCountsForTest(
            node,
            mapOf(node to listOf(
                stubNodeReportItem(node, MessageStatus.ERROR),
                stubNodeReportItem(node, MessageStatus.WARNING),
                stubNodeReportItem(node, MessageStatus.OK),
            )),
        )

        assertEquals("one checker error + the empty-enum soft error", 2, errors)
        assertEquals(1, warnings)
    }

    @Test
    fun fileInputOutsideTheSystemTempDirectoryNamesTheAcceptedDirectory() {
        // D11: the old message hinted at `File.createTempFile`, a Java hint given to a shell agent.
        val tempDir = File(System.getProperty("java.io.tmpdir")).canonicalFile
        val outside = File(System.getProperty("user.dir")).canonicalFile.listFiles()?.firstOrNull { it.isFile }
        Assume.assumeTrue(
            "needs an existing regular file outside the system temp directory",
            outside != null && !outside.canonicalPath.startsWith(tempDir.path + File.separator),
        )

        try {
            ops.readJsonOrFileForTest(outside!!.absolutePath)
            fail("Expected a path outside the system temp directory to be rejected")
        } catch (e: AbstractOps.McpInvalidRequestException) {
            val message = e.message.orEmpty()
            assertTrue("message must name the accepted directory: $message", message.contains(tempDir.path))
            assertTrue("message must name the shell variables: $message", message.contains("\$TMPDIR") && message.contains("%TEMP%"))
            assertFalse("the Java-API hint must be gone: $message", message.contains("File.createTempFile"))
        }
    }

    @Test
    fun featureIdValidationAcceptsResolvingId() {
        val node = stubAttributeNode("PropertyMacro")
        val valid = stubFeature(valid = true)

        val problem = ops.validateFeatureIdForTest(
            node,
            "ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001",
            "propertyId",
            "property",
        ) { valid }

        assertEquals(null, problem)
    }

    @Test
    fun featureIdValidationRejectsBlankId() {
        val node = stubAttributeNode("PropertyMacro")

        val problem = checkNotNull(
            ops.validateFeatureIdForTest(node, "  ", "propertyId", "property") {
                fail("Blank id must not be decoded")
                stubFeature(valid = true)
            }
        )

        assertEquals(MessageStatus.ERROR, problem.severity)
        assertTrue(problem.message.contains("PropertyMacro: propertyId is not set"))
        assertTrue(problem.message.contains("target property"))
    }

    @Test
    fun featureIdValidationRejectsMalformedId() {
        val node = stubAttributeNode("PropertyMacro")

        val problem = checkNotNull(
            ops.validateFeatureIdForTest(node, "name", "propertyId", "property") {
                throw IllegalArgumentException("not an id")
            }
        )

        assertEquals(MessageStatus.ERROR, problem.severity)
        assertTrue(problem.message.contains("propertyId \"name\" is not a valid encoded property id"))
        assertTrue(problem.message.contains("<langUUID>/<conceptId>/<featureId>"))
    }

    @Test
    fun featureIdValidationRejectsNonResolvingId() {
        val node = stubAttributeNode("PropertyMacro")
        val stale = stubFeature(valid = false)

        val problem = checkNotNull(
            ops.validateFeatureIdForTest(
                node,
                "ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/9999999999999",
                "propertyId",
                "property",
            ) { stale }
        )

        assertEquals(MessageStatus.ERROR, problem.severity)
        assertTrue(problem.message.contains("does not resolve to any known property"))
    }

    @Test
    fun featureIdValidationReportsLinkKindForLinkAttribute() {
        val node = stubAttributeNode("ReferenceMacro")

        val problem = checkNotNull(
            ops.validateFeatureIdForTest(node, "r:not-a-link-id", "linkId", "link") {
                throw IllegalArgumentException("not an id")
            }
        )

        assertTrue(problem.message.contains("ReferenceMacro: linkId \"r:not-a-link-id\" is not a valid encoded link id"))
    }

    @Test
    fun inlineJsonInputIsReturnedUnchanged() {
        val json = """{"concept":"test.lang.structure.TestConcept"}"""

        assertEquals(json, ops.readJsonOrFileForTest(json))
    }

    @Test
    fun ordinaryFileInputIsNotDeletedAfterRead() {
        val file = Files.createTempFile("mcp-tools-json-", ".json").toFile()
        try {
            val json = """{"concept":"test.lang.structure.TestConcept"}"""
            file.writeText(json)

            assertEquals(json, ops.readJsonOrFileForTest(file.absolutePath))
            assertTrue(file.exists())
        } finally {
            file.delete()
        }
    }

    @Test
    fun unregisteredTempFileWithToolPrefixIsNotDeletedAfterRead() {
        val file = File.createTempFile("mps-node-", ".json")
        try {
            val json = """{"concept":"test.lang.structure.TestConcept"}"""
            file.writeText(json)

            assertEquals(json, ops.readJsonOrFileForTest(file.absolutePath))
            assertTrue(file.exists())
        } finally {
            file.delete()
        }
    }

    @Test
    fun toolCreatedTempFileIsDeletedAfterRead() {
        val file = ops.saveToTempFileForTest("""{"concept":"test.lang.structure.TestConcept"}""")

        val json = ops.readJsonOrFileForTest(file.absolutePath)

        assertTrue(json.orEmpty().contains("\"ok\""))
        assertFalse(file.exists())
    }

    @Test
    fun nodeJsonFileProducedByToolResultUnwrapsEnvelopeData() {
        val file = ops.saveToTempFileForTest("""{"concept":"test.lang.structure.TestConcept"}""")

        val json = nodeOps.readNodeJsonOrFileForTest(file.absolutePath)

        assertEquals("""{"concept":"test.lang.structure.TestConcept"}""", json)
        assertFalse(file.exists())
    }

    @Test
    fun nodeJsonFileProducedByToolResultCanUnwrapArrayEnvelopeData() {
        val file = ops.saveToTempFileForTest("""[{"concept":"test.lang.structure.TestConcept"}]""")

        val json = nodeOps.readNodeJsonOrFileForTest(file.absolutePath)

        assertEquals("""[{"concept":"test.lang.structure.TestConcept"}]""", json)
        assertFalse(file.exists())
    }

    @Test
    fun nodeJsonEnvelopeWithPrimitiveDataIsRejected() {
        try {
            nodeOps.readNodeJsonOrFileForTest("""{"ok":true,"data":"/tmp/node.json"}""")
            fail("Expected primitive envelope data to fail")
        } catch (e: AbstractOps.McpInvalidRequestException) {
            assertEquals("MCP response envelope data is not a node JSON blueprint object or array", e.message)
        }
    }

    @Test
    fun nodeJsonEnvelopeWithErrorIsRejected() {
        try {
            nodeOps.readNodeJsonOrFileForTest("""{"ok":false,"error":"print failed"}""")
            fail("Expected error envelope to fail")
        } catch (e: AbstractOps.McpInvalidRequestException) {
            assertEquals("MCP response envelope contains an error instead of node JSON data: print failed", e.message)
        }
    }

    @Test
    fun parseJsonOnTruncatedInputAppendsBraceImbalanceHint() {
        try {
            // Truncated object (missing closing brace): Gson throws a JsonSyntaxException backed by an
            // EOFException whose message is "End of input at line N column M ...".
            ops.parseJson("""{"a":1""")
            fail("Expected truncated JSON to fail")
        } catch (e: AbstractOps.McpInvalidRequestException) {
            // Assert against the REAL Gson message (we fed malformed JSON), so a future Gson reword of
            // "End of input" fails this test rather than silently disabling the hint.
            assertTrue(
                "Expected the EOF Gson message, got: ${e.message}",
                e.message.orEmpty().contains("End of input")
            )
            assertTrue(
                "Expected the brace-imbalance hint, got: ${e.message}",
                e.message.orEmpty().contains("unbalanced")
            )
        }
    }

    @Test
    fun dryRunKeepsToolCreatedTempFileAfterRead() {
        val file = ops.saveToTempFileForTest("""{"concept":"test.lang.structure.TestConcept"}""")
        try {
            val json = ops.readJsonOrFileForTest(file.absolutePath, dryRun = true)

            assertTrue(json.orEmpty().contains("\"ok\""))
            assertTrue(file.exists())

            ops.readJsonOrFileForTest(file.absolutePath)
            assertFalse(file.exists())
        } finally {
            file.delete()
        }
    }

    @Test
    fun missingTrackedTempFileIsForgotten() {
        val file = ops.saveToTempFileForTest("""{"concept":"test.lang.structure.TestConcept"}""")
        assertTrue(file.delete())
        try {
            ops.readJsonOrFileForTest(file.absolutePath)
            fail("Expected missing temp file read to fail")
        } catch (e: AbstractOps.McpInvalidRequestException) {
            assertTrue(e.message.orEmpty().contains("neither a valid JSON object/array nor an existing file path"))
        }

        try {
            val json = """{"concept":"test.lang.structure.TestConcept"}"""
            file.writeText(json)

            assertEquals(json, ops.readJsonOrFileForTest(file.absolutePath))
            assertTrue(file.exists())
        } finally {
            file.delete()
        }
    }

    @Test
    fun expressionParseSourceTrimsTrailingSemicolonsAndWhitespace() {
        val source = JetBrainsMPSJavaMcpToolset.effectiveJavaParseSource("left - right;; \n", FeatureKind.STATEMENTS, isExpression = true)

        assertEquals("Object __mcp_expr__ = left - right;", source.code)
        assertEquals(FeatureKind.STATEMENTS, source.featureKind)
    }

    @Test
    fun memberParseSourceUsesClassContentWithoutChangingCode() {
        val source = JetBrainsMPSJavaMcpToolset.effectiveJavaParseSource("void run() {}", FeatureKind.METHOD, isExpression = false)

        assertEquals("void run() {}", source.code)
        assertEquals(FeatureKind.CLASS_CONTENT, source.featureKind)
    }

    @Test
    fun conceptSchemaRejectsWrongPropertiesType() {
        assertSchemaFailure("'conceptsJson[0].properties' must be an array") {
            parseStructureConceptSpecsForTest("""[{"name":"Foo","properties":{}}]""", "conceptsJson")
        }
    }

    @Test
    fun conceptSchemaRejectsChildMissingRole() {
        assertSchemaFailure("Missing 'conceptsJson[0].children[0].role'") {
            parseStructureConceptSpecsForTest("""[{"name":"Foo","children":[{"target":"Bar"}]}]""", "conceptsJson")
        }
    }

    @Test
    fun conceptSchemaRejectsChildMissingTarget() {
        assertSchemaFailure("Missing 'conceptsJson[0].children[0].target'") {
            parseStructureConceptSpecsForTest("""[{"name":"Foo","children":[{"role":"bar"}]}]""", "conceptsJson")
        }
    }

    @Test
    fun conceptSchemaRejectsReferenceMissingTarget() {
        assertSchemaFailure("Missing 'conceptsJson[0].references[0].target'") {
            parseStructureConceptSpecsForTest("""[{"name":"Foo","references":[{"role":"bar"}]}]""", "conceptsJson")
        }
    }

    @Test
    fun enumSchemaRejectsValuesThatAreNotAnArray() {
        assertSchemaFailure("valuesJson must be a JSON array") {
            parseEnumValueSpecsForTest("""{"enumName":"red"}""")
        }
    }

    @Test
    fun enumSchemaRejectsValueEntryMissingEnumName() {
        assertSchemaFailure("Missing 'valuesJson[0].enumName'") {
            parseEnumValueSpecsForTest("""[{"enumPresentation":"Red"}]""")
        }
    }

    @Test
    fun javaInsertSchemaRejectsUnknownMode() {
        assertSchemaFailure("Unknown insert.mode 'sideways'") {
            parseJavaParseInsertRequestForTest(
                """
                {
                  "code": "class Foo {}",
                  "featureKind": "CLASS",
                  "insert": {"mode": "sideways"}
                }
                """.trimIndent()
            )
        }
    }

    @Test
    fun javaInsertSchemaRejectsWrongPositionType() {
        assertSchemaFailure("'parameters.insert.position' must be an integer") {
            parseJavaParseInsertRequestForTest(
                """
                {
                  "code": "int x = 1;",
                  "featureKind": "STATEMENTS",
                  "insert": {
                    "mode": "child",
                    "parentRef": "r:model#parent",
                    "role": "statement",
                    "position": "first"
                  }
                }
                """.trimIndent()
            )
        }
    }

    @Test
    fun javaInsertSchemaRejectsMalformedInsertObject() {
        assertSchemaFailure("'parameters.insert' must be a JSON object") {
            parseJavaParseInsertRequestForTest(
                """
                {
                  "code": "class Foo {}",
                  "featureKind": "CLASS",
                  "insert": []
                }
                """.trimIndent()
            )
        }
    }

    @Test
    fun coroutineProgressMonitorReflectsCoroutineCancellation() = runBlocking {
        var monitor: jetbrains.mps.progress.EmptyProgressMonitor? = null
        val job = launch(start = CoroutineStart.UNDISPATCHED) {
            monitor = ops.coroutineProgressMonitorForTest()
            awaitCancellation()
        }
        val createdMonitor = checkNotNull(monitor)

        assertFalse(createdMonitor.isCanceled)

        job.cancel()

        assertTrue(createdMonitor.isCanceled)
        job.cancelAndJoin()
    }

    @Test
    fun errorJsonUsesMeaningfulFallbackForNullMessage() {
        val obj = JsonParser.parseString(ops.errJsonForTest(null)).asJsonObject

        assertFalse(obj.get("ok").asBoolean)
        assertEquals("Unknown error", obj.get("error").asString)
        assertFalse(obj.has("code"))
    }

    @Test
    fun errorJsonCanIncludeStableMetadata() {
        val obj = JsonParser.parseString(
            ops.errJsonForTest(
                "Invalid JSON parameters",
                AbstractOps.McpErrorCode.INVALID_JSON,
                mapOf("field" to "parameters"),
                listOf("Ignored trailing input")
            )
        ).asJsonObject

        assertFalse(obj.get("ok").asBoolean)
        assertEquals("Invalid JSON parameters", obj.get("error").asString)
        assertEquals("INVALID_JSON", obj.get("code").asString)
        assertEquals("parameters", obj.getAsJsonObject("details").get("field").asString)
        assertEquals("Ignored trailing input", obj.getAsJsonArray("warnings")[0].asString)
    }

    @Test
    fun rawSuccessJsonKeepsCompatibilityPayload() {
        val obj = JsonParser.parseString(ops.okJsonRawForTest("""{"answer":42}""")).asJsonObject

        assertTrue(obj.get("ok").asBoolean)
        assertEquals(42, obj.getAsJsonObject("data").get("answer").asInt)
    }

    @Test
    fun structuredSuccessJsonWrapsJsonElementPayload() {
        val obj = JsonParser.parseString(ops.okJsonElementForTest(JsonPrimitive(42))).asJsonObject

        assertTrue(obj.get("ok").asBoolean)
        assertEquals(42, obj.get("data").asInt)
    }

    @Test
    fun structuredStringSuccessJsonEscapesThroughGson() {
        val value = "quoted \"text\" with \\ backslash\nand newline"
        val obj = JsonParser.parseString(ops.okJsonStringForTest(value)).asJsonObject

        assertTrue(obj.get("ok").asBoolean)
        assertEquals(value, obj.get("data").asString)
    }

    @Test
    fun typedNotFoundExceptionIsClassifiedWithoutInternalErrorCode() {
        val obj = JsonParser.parseString(
            ops.toolFailureForTest(
                "running test tool",
                AbstractOps.McpNotFoundException("Model 'missing' not found")
            )
        ).asJsonObject

        assertFalse(obj.get("ok").asBoolean)
        assertEquals("Model 'missing' not found", obj.get("error").asString)
        assertEquals("NOT_FOUND", obj.get("code").asString)
    }

    @Test
    fun typedExceptionDetailsArePropagatedToErrorEnvelope() {
        val obj = JsonParser.parseString(
            ops.toolFailureForTest(
                "running test tool",
                AbstractOps.McpInvalidReferenceException(
                    "Reference 'foo' could not be resolved",
                    mapOf("ref" to "foo")
                )
            )
        ).asJsonObject

        assertEquals("INVALID_REFERENCE", obj.get("code").asString)
        assertEquals("foo", obj.getAsJsonObject("details").get("ref").asString)
    }

    @Test
    fun typedInvalidRequestExceptionMapsToInvalidRequest() {
        val obj = JsonParser.parseString(
            ops.toolFailureForTest(
                "running test tool",
                AbstractOps.McpInvalidRequestException("Some validation message mentioning json and not found")
            )
        ).asJsonObject

        assertEquals("INVALID_REQUEST", obj.get("code").asString)
    }

    @Test
    fun inputSchemaExceptionMapsToInvalidRequestAndKeepsTheKeyName() {
        // Classifying these at the boundary is what lets a tool read a `parameters` value through
        // a throwing typed reader without its own try/catch. The message must survive: it is the
        // only thing that names the offending key.
        val obj = JsonParser.parseString(
            ops.toolFailureForTest("running test tool", ToolInputSchemaException("'parameters.dryRun' must be a boolean"))
        ).asJsonObject

        assertEquals("INVALID_REQUEST", obj.get("code").asString)
        assertEquals("'parameters.dryRun' must be a boolean", obj.get("error").asString)
    }

    @Test
    fun inputJsonExceptionMapsToInvalidJson() {
        val obj = JsonParser.parseString(
            ops.toolFailureForTest("running test tool", ToolInputJsonException("conceptsJson is not valid JSON"))
        ).asJsonObject

        assertEquals("INVALID_JSON", obj.get("code").asString)
        assertEquals("conceptsJson is not valid JSON", obj.get("error").asString)
    }

    @Test
    fun bareIllegalArgumentExceptionMapsToInternalError() {
        val obj = JsonParser.parseString(
            ops.toolFailureForTest(
                "running test tool",
                IllegalArgumentException("Some validation message mentioning json and not found")
            )
        ).asJsonObject

        assertEquals("INTERNAL_ERROR", obj.get("code").asString)
        assertEquals("Internal error while running test tool", obj.get("error").asString)
    }

    @Test
    fun makeTargetResolutionRejectsEmptyScopedRequest() {
        val result = nodeToolset.resolveMakeTargets<String, String>(
            requestedModels = emptyList(),
            requestedModules = emptyList(),
            wholeProject = false,
            allProjectModels = { emptyList() },
            allProjectModules = { emptyList() },
            resolveModel = { null },
            resolveModule = { null },
            moduleOfModel = { null },
            modelsOfModule = { emptyList() },
        )

        when (result) {
            is JetBrainsMPSNodeMcpToolset.MakeTargetResolution.Invalid -> {
                assertTrue(
                    "Message should explain the expected parameters, was: '${result.message}'",
                    result.message.startsWith("No model or module references were provided") &&
                        result.message.contains("'models'") &&
                        result.message.contains("'modules'") &&
                        result.message.contains("'wholeProject'"),
                )
                assertTrue(
                    "Details should carry the parameter schema, was: ${result.details}",
                    result.details["expectedParameters"] is Map<*, *>,
                )
            }

            else -> fail("Expected invalid result for empty scoped request")
        }
    }

    @Test
    fun makeTargetResolutionReportsFullyInvalidInputDetails() {
        val result = nodeToolset.resolveMakeTargets<String, String>(
            requestedModels = listOf("missing.model"),
            requestedModules = listOf("missing.module"),
            wholeProject = false,
            allProjectModels = { emptyList() },
            allProjectModules = { emptyList() },
            resolveModel = { null },
            resolveModule = { null },
            moduleOfModel = { null },
            modelsOfModule = { emptyList() },
        )

        when (result) {
            is JetBrainsMPSNodeMcpToolset.MakeTargetResolution.Invalid -> {
                assertEquals("None of the requested models or modules could be resolved", result.message)
                assertEquals(listOf("missing.model"), result.details["unresolvedModels"])
                assertEquals(listOf("missing.module"), result.details["unresolvedModules"])
            }

            else -> fail("Expected invalid result for fully unresolved input")
        }
    }

    @Test
    fun makeTargetResolutionKeepsValidTargetsAndBuildsWarningsForMixedInput() {
        val result = nodeToolset.resolveMakeTargets(
            requestedModels = listOf("valid.model", "missing.model"),
            requestedModules = listOf("valid.module", "missing.module"),
            wholeProject = false,
            allProjectModels = { emptyList<String>() },
            allProjectModules = { emptyList<String>() },
            resolveModel = { requested -> if (requested == "valid.model") requested else null },
            resolveModule = { requested -> if (requested == "valid.module") requested else null },
            moduleOfModel = { model -> "module-for:$model" },
            modelsOfModule = { module -> listOf("model-for:$module") },
        )

        when (result) {
            is JetBrainsMPSNodeMcpToolset.MakeTargetResolution.Ok -> {
                assertEquals(
                    linkedSetOf("valid.model", "model-for:valid.module"),
                    result.modelsToMake,
                )
                assertEquals(
                    linkedSetOf("module-for:valid.model", "valid.module"),
                    result.modulesToMake,
                )
                assertEquals(
                    listOf(
                        "Unresolved model reference: missing.model",
                        "Unresolved module reference: missing.module",
                    ),
                    result.warnings(),
                )
            }

            else -> fail("Expected successful resolution for mixed valid/invalid input")
        }
    }

    @Test
    fun jsonSyntaxExceptionIsClassifiedAsInvalidJson() {
        val obj = JsonParser.parseString(
            ops.toolFailureForTest("running test tool", JsonSyntaxException("Unexpected token at position 4"))
        ).asJsonObject

        assertEquals("INVALID_JSON", obj.get("code").asString)
        assertEquals("Unexpected token at position 4", obj.get("error").asString)
    }

    @Test
    fun assignabilityExceptionIsClassifiedAsInvalidReference() {
        val obj = JsonParser.parseString(
            ops.toolFailureForTest(
                "running test tool",
                AbstractOps.AssignabilityException(
                    jsonPath = "$",
                    actualConcept = "ChildConcept",
                    expectedConcepts = listOf("ExpectedConcept"),
                    parentConcept = "ParentConcept",
                    role = "child"
                )
            )
        ).asJsonObject

        assertEquals("INVALID_REFERENCE", obj.get("code").asString)
    }

    @Test
    fun assignabilityExceptionMessageEnumeratesExpectedConcepts() {
        val ex = AbstractOps.AssignabilityException(
            jsonPath = "$.children[0]",
            actualConcept = "test.lang.structure.Wrong",
            expectedConcepts = listOf("test.lang.structure.A", "test.lang.structure.B"),
            parentConcept = "test.lang.structure.Container",
            role = "items"
        )

        val message = checkNotNull(ex.message)
        assertTrue(message.contains("$.children[0]"))
        assertTrue(message.contains("'test.lang.structure.Wrong'"))
        assertTrue(message.contains("'test.lang.structure.A', 'test.lang.structure.B'"))
        assertTrue(message.contains("'test.lang.structure.Container'"))
        assertTrue(message.contains("'items'"))
    }

    @Test
    fun setPropertyCoercesEnumLiteralByName() {
        val property = TestEnumProperty()
        val node = jetbrains.mps.smodel.SNode(TestConcept(listOf(property)))
        node.setId(SNodeId.Regular(10L))

        nodeOps.setPropertyForTest(node, property, "OTHER")

        val stored = SNodeAccessUtil.getPropertyValue(node, property)
        assertTrue("Expected literal stored, got: $stored", stored is TestEnumLiteral)
        assertEquals("OTHER", (stored as TestEnumLiteral).name)
        assertEquals(null, node.getProperty(property))
    }

    @Test
    fun setPropertyCoercesEnumLiteralByPresentation() {
        val property = TestPresentationEnumProperty()
        val node = jetbrains.mps.smodel.SNode(TestConcept(listOf(property)))
        node.setId(SNodeId.Regular(11L))

        nodeOps.setPropertyForTest(node, property, "Red Apple")

        val stored = SNodeAccessUtil.getPropertyValue(node, property)
        assertTrue("Expected literal stored, got: $stored", stored is TestPresentationLiteral)
        assertEquals("RED_APPLE", (stored as TestPresentationLiteral).name)
        assertEquals("Red Apple", stored.presentation)
    }

    @Test
    fun setPropertyPassesNonEnumValueThroughToNodeSetProperty() {
        val property = TestStringProperty()
        val node = jetbrains.mps.smodel.SNode(TestConcept(listOf(property)))
        node.setId(SNodeId.Regular(12L))

        nodeOps.setPropertyForTest(node, property, "hello world")

        assertEquals("hello world", node.getProperty(property))
        // Non-enum path doesn't go through SNodeAccessUtil.setPropertyValue, so the
        // test instance's WeakHashMap should not have captured this value.
        assertEquals(null, SNodeAccessUtil.getPropertyValue(node, property))
    }

    @Test
    fun resolveNodeReferenceFindsRootByModelDotName() {
        val rootRef = stubNodeReference("root-1")
        val rootNode = stubRootNode("MyRoot", rootRef)
        val model = modelWithRoots("my.lang.structure", listOf(rootNode))
        val module = moduleWithModels(listOf(model))
        val repository = repositoryWithModules(listOf(module))

        val resolved = ops.resolveNodeReferenceForTest(repository, "my.lang.structure.MyRoot")

        assertEquals(rootRef, resolved)
    }

    @Test
    fun resolveNodeReferenceFallsBackToBareRootName() {
        val rootRef = stubNodeReference("root-2")
        val rootNode = stubRootNode("LonelyRoot", rootRef)
        val model = modelWithRoots("my.lang.structure", listOf(rootNode))
        val module = moduleWithModels(listOf(model))
        val repository = repositoryWithModules(listOf(module))

        val resolved = ops.resolveNodeReferenceForTest(repository, "LonelyRoot")

        assertEquals(rootRef, resolved)
    }

    @Test
    fun resolveNodeReferenceReturnsNullWhenRootNotFound() {
        val rootRef = stubNodeReference("root-3")
        val rootNode = stubRootNode("Existing", rootRef)
        val model = modelWithRoots("my.lang.structure", listOf(rootNode))
        val module = moduleWithModels(listOf(model))
        val repository = repositoryWithModules(listOf(module))

        val resolved = ops.resolveNodeReferenceForTest(repository, "my.lang.structure.NoSuchRoot")

        assertEquals(null, resolved)
    }

    @Test
    fun missingBlueprintConceptIsClassifiedAsInvalidRequest() {
        val exception = try {
            nodeOps.instantiateNodeForTest(JsonParser.parseString("{}").asJsonObject, modelWithRepository(emptyRepository()))
            fail("Expected missing concept validation failure")
            return
        } catch (e: AbstractOps.McpInvalidRequestException) {
            e
        }

        val obj = JsonParser.parseString(ops.toolFailureForTest("running test tool", exception)).asJsonObject
        assertEquals("INVALID_REQUEST", obj.get("code").asString)
        assertEquals("Missing 'concept' or 'conceptReference' property in JSON at path '$'", obj.get("error").asString)
    }

    @Test
    fun conceptReferencePassedAsNodeReferenceIsClassifiedAsInvalidReference() {
        val exception = try {
            ops.resolveNodeReferenceForTest(emptyRepository(), "c:test.lang/TestConcept")
            fail("Expected concept reference validation failure")
            return
        } catch (e: AbstractOps.McpInvalidReferenceException) {
            e
        }

        val obj = JsonParser.parseString(ops.toolFailureForTest("running test tool", exception)).asJsonObject
        assertEquals("INVALID_REFERENCE", obj.get("code").asString)
        assertEquals(
            "Expected a node reference (r:... or i:...), but a concept reference was provided: c:test.lang/TestConcept",
            obj.get("error").asString
        )
    }

    @Test
    fun oversizedDirectJsonInputIsClassifiedAsInvalidRequest() {
        val directJson = "{\"payload\":\"${"x".repeat(5000)}\"}"

        val exception = try {
            ops.readJsonOrFileForTest(directJson)
            fail("Expected oversized JSON validation failure")
            return
        } catch (e: AbstractOps.McpInvalidRequestException) {
            e
        }

        val obj = JsonParser.parseString(ops.toolFailureForTest("running test tool", exception)).asJsonObject
        assertEquals("INVALID_REQUEST", obj.get("code").asString)
        assertTrue(obj.get("error").asString.startsWith("Direct JSON input is too large ("))
    }

    @Test
    fun errorIsRethrownByToolFailurePolicy() {
        val error = OutOfMemoryError("simulated OOM")
        try {
            ops.toolFailureForTest("running test tool", error)
            fail("Expected Error to be rethrown")
        } catch (e: OutOfMemoryError) {
            assertEquals("simulated OOM", e.message)
        }
    }

    @Test
    fun unexpectedFailureWithBlankMessageGetsInternalErrorResponse() {
        val obj = JsonParser.parseString(
            ops.toolFailureForTest("running test tool", RuntimeException(""))
        ).asJsonObject

        assertFalse(obj.get("ok").asBoolean)
        assertEquals("Internal error while running test tool", obj.get("error").asString)
        assertEquals("INTERNAL_ERROR", obj.get("code").asString)
    }

    @Test
    fun unexpectedFailureWithNullMessageGetsInternalErrorResponse() {
        val obj = JsonParser.parseString(
            ops.toolFailureForTest("running test tool", RuntimeException(null as String?))
        ).asJsonObject

        assertFalse(obj.get("ok").asBoolean)
        assertEquals("Internal error while running test tool", obj.get("error").asString)
        assertEquals("INTERNAL_ERROR", obj.get("code").asString)
    }

    @Test
    fun cancellationIsRethrownByToolFailurePolicy() {
        try {
            ops.toolFailureForTest("running test tool", CancellationException("cancelled"))
            fail("Expected cancellation to be rethrown")
        } catch (_: CancellationException) {
        }
    }

    /** Minimal [NodeReportItem]: [problemCounts] reads only `severity` and `message`. */
    private class StubProblemItem(
        private val status: MessageStatus,
        private val text: String,
    ) : NodeReportItem {
        override fun getNode(): SNodeReference =
            throw UnsupportedOperationException("problemCounts must key problems by node, not read item.node")
        override fun getMessage(): String = text
        override fun getSeverity(): MessageStatus = status
        override fun getIssueKind(): IssueKindReportItem.ItemKind? = null
        override fun getIdFlavours(): Set<FlavouredItem.ReportItemFlavour<*, *>> = emptySet()
    }

    private fun stubNodeReportItem(
        @Suppress("UNUSED_PARAMETER") node: SNode,
        severity: MessageStatus,
        message: String = "stub problem",
    ): NodeReportItem = StubProblemItem(severity, message)

    private class TestConcept(
        private val properties: Collection<SProperty>,
    ) : SConceptAdapter("test.lang.structure.TestConcept") {
        private val conceptId = SConceptId(MetaIdFactory.langId(UUID(0L, 1L)), 1L)

        override fun getConceptDescriptor() = null

        override fun getLanguage(): SLanguage = TestLanguage

        override fun getQualifiedName(): String = "test.lang.structure.TestConcept"

        override fun findInModel(structureModel: SModel?) = null

        override fun getProperties(): Collection<SProperty> = properties

        override fun getReferenceLinks(): Collection<SReferenceLink> = emptyList()

        override fun getContainmentLinks(): Collection<SContainmentLink> = emptyList()

        override fun getSuperConcept() = null

        override fun getSuperInterfaces(): Iterable<SInterfaceConcept> = emptyList()

        override fun isRootable() = true

        override fun isSubConceptOf(anotherConcept: SAbstractConcept?) = anotherConcept === this

        override fun isSubConceptOfSpecial(
            thisDescriptor: ConceptDescriptor,
            anotherDescriptor: ConceptDescriptor,
            anotherConcept: SAbstractConcept,
        ) = false

        override fun serialize(): String = "c:${conceptId.serialize()}(test.lang.structure.TestConcept)"
    }

    private class TestEnumProperty : SProperty {
        private val enumType = TestEnumeration()

        override fun getName(): String = "enumProp"

        override fun getOwner(): SAbstractConcept = TestConcept(emptyList())

        override fun isValid(): Boolean = true

        override fun getType(): SDataType = enumType

        override fun isValid(string: String?): Boolean = string == "DEFAULT" || string == "OTHER"

        override fun getSourceNode(): SNodeReference? = null

        override fun isTransient(): Boolean = false
    }

    private class TestEnumeration : SEnumeration {
        override fun getName(): String = "TestEnum"

        override fun getLiteral(name: String?): SEnumerationLiteral? = getLiterals().firstOrNull { it.name == name }

        override fun fromString(string: String?): Any? = when (string) {
            "DEFAULT" -> TestEnumLiteral("DEFAULT")
            "OTHER" -> TestEnumLiteral("OTHER")
            else -> SType.NOT_A_VALUE
        }

        override fun toString(value: Any?): String? = null

        override fun isInstanceOf(value: Any?): Boolean = value is TestEnumLiteral

        override fun getLiterals(): MutableList<out SEnumerationLiteral> = mutableListOf(TestEnumLiteral("DEFAULT"), TestEnumLiteral("OTHER"))

        override fun getDefault(): SEnumerationLiteral = TestEnumLiteral("DEFAULT")

        override fun getSourceNode(): SNodeReference? = null
    }

    private class TestPresentationEnumProperty : SProperty {
        private val enumType = TestPresentationEnumeration()

        override fun getName(): String = "presEnumProp"

        override fun getOwner(): SAbstractConcept = TestConcept(emptyList())

        override fun isValid(): Boolean = true

        override fun getType(): SDataType = enumType

        override fun isValid(string: String?): Boolean = true

        override fun getSourceNode(): SNodeReference? = null

        override fun isTransient(): Boolean = false
    }

    private class TestPresentationEnumeration : SEnumeration {
        override fun getName(): String = "TestPresEnum"

        override fun getLiteral(name: String?): SEnumerationLiteral? = getLiterals().firstOrNull { it.name == name }

        override fun fromString(string: String?): Any? = SType.NOT_A_VALUE

        override fun toString(value: Any?): String? = (value as? TestPresentationLiteral)?.presentation

        override fun isInstanceOf(value: Any?): Boolean = value is TestPresentationLiteral

        override fun getLiterals(): MutableList<out SEnumerationLiteral> = mutableListOf(
            TestPresentationLiteral("RED_APPLE", "Red Apple"),
            TestPresentationLiteral("GREEN_PEAR", "Green Pear")
        )

        override fun getDefault(): SEnumerationLiteral = TestPresentationLiteral("RED_APPLE", "Red Apple")

        override fun getSourceNode(): SNodeReference? = null
    }

    private data class TestPresentationLiteral(
        private val literalName: String,
        private val literalPresentation: String,
    ) : SEnumerationLiteral {
        override fun getName(): String = literalName

        override fun getPresentation(): String = literalPresentation

        override fun getOrdinal(): Int = if (literalName == "RED_APPLE") 0 else 1

        override fun getSourceNode(): SNodeReference? = null

        override fun getEnumeration(): SEnumeration = TestPresentationEnumeration()
    }

    private class TestStringProperty : SProperty {
        override fun getName(): String = "stringProp"

        override fun getOwner(): SAbstractConcept = TestConcept(emptyList())

        override fun isValid(): Boolean = true

        override fun getType(): SDataType = jetbrains.mps.smodel.adapter.structure.types.SPrimitiveTypes.STRING

        override fun isValid(string: String?): Boolean = true

        override fun getSourceNode(): SNodeReference? = null

        override fun isTransient(): Boolean = false
    }

    private data class TestEnumLiteral(private val literalName: String) : SEnumerationLiteral {
        override fun getName(): String = literalName

        override fun getPresentation(): String = literalName

        override fun getOrdinal(): Int = if (literalName == "DEFAULT") 0 else 1

        override fun getSourceNode(): SNodeReference? = null

        override fun getEnumeration(): SEnumeration = TestEnumeration()
    }

    private class TestSNodeAccessUtil : SNodeAccessUtil() {
        private val values = WeakHashMap<SNode, MutableMap<SProperty, Any?>>()

        fun globalInstance(): SNodeAccessUtil? = myInstance

        fun setRawProperty(node: SNode, property: SProperty, value: Any?) {
            values.computeIfAbsent(node) { linkedMapOf() }[property] = value
        }

        override fun hasPropertyImpl(node: SNode, property: SProperty): Boolean = values[node]?.containsKey(property) == true

        override fun getPropertyValueImpl(node: SNode, property: SProperty): Any? = values[node]?.get(property)

        override fun getPropertyImpl(node: SNode, property: SProperty): String? =
            getPropertyValueImpl(node, property)?.let { property.type.toString(it) }

        override fun setPropertyValueImpl(node: SNode, property: SProperty, propertyValue: Any?) {
            setRawProperty(node, property, propertyValue)
        }

        override fun setPropertyImpl(node: SNode, property: SProperty, propertyValue: String?) {
            setRawProperty(node, property, property.type.fromString(propertyValue))
        }

        override fun setPropertyImpl(node: SNode, propertyName: String, propertyValue: String?) {
            throw UnsupportedOperationException()
        }

        override fun setReferenceTargetImpl(node: SNode, referenceLink: SReferenceLink, target: SNode?) {
            throw UnsupportedOperationException()
        }

        override fun setReferenceTargetImpl(node: SNode, role: String, target: SNode?) {
            throw UnsupportedOperationException()
        }

        override fun setReferenceImpl(node: SNode, referenceLink: SReferenceLink, reference: SReference?) {
            throw UnsupportedOperationException()
        }

        override fun setAssociationImpl(node: SNode, referenceLink: SReferenceLink, target: SNodeReference?) {
            throw UnsupportedOperationException()
        }
    }

    private fun emptyRepository(): org.jetbrains.mps.openapi.module.SRepository = proxyWithDefaults {
        when (it) {
            "getModules" -> emptyList<Any>()
            else -> null
        }
    }

    private fun stubNodeReference(tag: String): SNodeReference = proxyWithDefaults {
        when (it) {
            "toString" -> "stubNodeReference($tag)"
            else -> null
        }
    }

    private fun stubConcept(name: String): SConcept = proxyWithDefaults {
        when (it) {
            "getName" -> name
            else -> null
        }
    }

    private fun stubAttributeNode(conceptName: String): SNode {
        val concept = stubConcept(conceptName)
        val reference = stubNodeReference(conceptName)
        return proxyWithDefaults {
            when (it) {
                "getConcept" -> concept
                "getReference" -> reference
                else -> null
            }
        }
    }

    private fun stubFeature(valid: Boolean): SConceptFeature = proxyWithDefaults {
        when (it) {
            "isValid" -> valid
            "getName" -> "stubFeature"
            else -> null
        }
    }

    private fun stubRootNode(name: String, reference: SNodeReference): SNode = proxyWithDefaults {
        when (it) {
            "getName" -> name
            "getReference" -> reference
            else -> null
        }
    }

    private fun modelWithRoots(longName: String, roots: List<SNode>): SModel {
        val modelName = org.jetbrains.mps.openapi.model.SModelName(longName)
        return proxyWithDefaults {
            when (it) {
                "getName" -> modelName
                "getRootNodes" -> roots
                else -> null
            }
        }
    }

    private fun moduleWithModels(models: List<SModel>): org.jetbrains.mps.openapi.module.SModule = proxyWithDefaults {
        when (it) {
            "getModels" -> models
            else -> null
        }
    }

    private fun repositoryWithModules(modules: List<org.jetbrains.mps.openapi.module.SModule>): org.jetbrains.mps.openapi.module.SRepository = proxyWithDefaults {
        when (it) {
            "getModules" -> modules
            else -> null
        }
    }

    private fun modelWithRepository(repository: org.jetbrains.mps.openapi.module.SRepository): SModel = proxyWithDefaults {
        when (it) {
            "getRepository" -> repository
            else -> null
        }
    }

    private fun assertSchemaFailure(expectedMessage: String, block: () -> Unit) {
        try {
            block()
            fail("Expected schema validation failure")
        } catch (e: IllegalArgumentException) {
            assertEquals(expectedMessage, e.message)
        }
    }

    private fun parseStructureConceptSpecsForTest(json: String, sourceName: String): Any? =
        invokeSchemaFunction("parseStructureConceptSpecs", arrayOf(String::class.java, String::class.java), json, sourceName)

    private fun parseEnumValueSpecsForTest(json: String): Any? =
        invokeSchemaFunction("parseEnumValueSpecs", arrayOf(String::class.java, String::class.java), json, "valuesJson")

    private fun parseJavaParseInsertRequestForTest(parameters: String): Any? =
        invokeSchemaFunction("parseJavaParseInsertRequest", arrayOf(String::class.java), parameters)

    private fun invokeSchemaFunction(name: String, parameterTypes: Array<Class<*>>, vararg args: Any?): Any? {
        try {
            return Class.forName("jetbrains.mps.agents.mcp.tools.McpToolInputSchemasKt")
                .getMethod(name, *parameterTypes)
                .invoke(null, *args)
        } catch (e: InvocationTargetException) {
            val cause = e.cause
            if (cause is RuntimeException) {
                throw cause
            }
            throw e
        }
    }

    @Suppress("UNCHECKED_CAST")
    private inline fun <reified T> proxyWithDefaults(crossinline valueByMethodName: (String) -> Any?): T {
        return Proxy.newProxyInstance(T::class.java.classLoader, arrayOf(T::class.java)) { proxy, method, args ->
            when (method.name) {
                "equals" -> proxy === args?.firstOrNull()
                "hashCode" -> System.identityHashCode(proxy)
                "toString" -> "${T::class.java.simpleName}Proxy"
                else -> valueByMethodName(method.name) ?: defaultValue(method.returnType)
            }
        } as T
    }

    private fun defaultValue(returnType: Class<*>): Any? = when (returnType) {
        java.lang.Boolean.TYPE -> false
        java.lang.Byte.TYPE -> 0.toByte()
        java.lang.Short.TYPE -> 0.toShort()
        java.lang.Integer.TYPE -> 0
        java.lang.Long.TYPE -> 0L
        java.lang.Float.TYPE -> 0f
        java.lang.Double.TYPE -> 0.0
        java.lang.Character.TYPE -> 0.toChar()
        java.lang.Void.TYPE -> null
        else -> null
    }
}
