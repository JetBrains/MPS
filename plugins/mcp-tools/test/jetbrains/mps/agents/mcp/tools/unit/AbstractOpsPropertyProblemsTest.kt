package jetbrains.mps.agents.mcp.tools.unit

import jetbrains.mps.agents.mcp.tools.*
import jetbrains.mps.agents.mcp.tools.common.*

import com.google.gson.JsonObject
import com.google.gson.JsonParser
import com.google.gson.JsonPrimitive
import com.google.gson.JsonSyntaxException
import jetbrains.mps.errors.MessageStatus
import jetbrains.mps.errors.item.EditorQuickFix
import jetbrains.mps.errors.item.FlavouredItem
import jetbrains.mps.errors.item.IssueKindReportItem
import jetbrains.mps.errors.item.ModelReportItem
import jetbrains.mps.errors.item.NodeReportItem
import jetbrains.mps.errors.item.QuickFixBase
import jetbrains.mps.errors.item.QuickFixReportItem
import jetbrains.mps.errors.messageTargets.MessageTarget
import jetbrains.mps.errors.messageTargets.NodeMessageTarget
import jetbrains.mps.errors.messageTargets.PropertyMessageTarget
import jetbrains.mps.java.core.newparser.FeatureKind
import jetbrains.mps.persistence.PersistenceRegistry
import jetbrains.mps.project.ModuleId
import jetbrains.mps.project.structure.modules.ModuleReference
import jetbrains.mps.smodel.SNodeId
import jetbrains.mps.smodel.adapter.ids.MetaIdFactory
import jetbrains.mps.smodel.adapter.ids.SConceptId
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory
import jetbrains.mps.smodel.adapter.structure.concept.SConceptAdapter
import jetbrains.mps.smodel.runtime.ConceptDescriptor
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNull
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
import org.jetbrains.mps.openapi.model.SModelReference
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

        /**
         * `(errors, warnings, rowJson)` for [node]'s subtree with `messages` and `moreMessages`
         * rendered onto `rowJson` at [perRow] — exercises [problemSummary] and [addMessagesToRow].
         */
        fun problemSummaryForTest(
            node: SNode,
            problems: Map<SNode, List<NodeReportItem>>,
            perRow: Int = MAX_PROBLEM_MESSAGES_PER_ROW,
        ): Triple<Int, Int, JsonObject> {
            val summary = problemSummary(node, problems)
            val row = JsonObject()
            addMessagesToRow(row, summary.tallies.values, perRow)
            return Triple(summary.errors, summary.warnings, row)
        }

        /** A module `perRoot` row's `messages`: [modelProblems] tallies with [root]'s merged in via [mergeTallies]. */
        fun moduleRowMessagesForTest(
            modelProblems: List<ModelReportItem>,
            root: SNode,
            problems: Map<SNode, List<NodeReportItem>>,
        ): JsonObject {
            val tallies = modelProblemSummary(modelProblems).tallies
            mergeTallies(tallies, problemSummary(root, problems).tallies.values)
            return JsonObject().also { addMessagesToRow(it, tallies.values) }
        }

        /** `(dataJson, messagesPerRow)` from [choosePerRootForm] for synthetic `(baseRow, (node, problems))` inputs. */
        fun choosePerRootFormForTest(
            rows: List<Pair<JsonObject, Pair<SNode, Map<SNode, List<NodeReportItem>>>>>,
            maxInlineBytes: Int,
        ): Pair<String, Int?> {
            val built = rows.map { (base, pair) ->
                val summary = problemSummary(pair.first, pair.second)
                base to summary.tallies.values
            }
            val choice = choosePerRootForm(built, maxInlineBytes)
            return choice.dataJson to choice.messagesPerRow
        }

        fun resolveNodeReferenceForTest(repository: org.jetbrains.mps.openapi.module.SRepository, nodeRefStr: String) =
            resolveNodeReference(repository, nodeRefStr)

        fun saveToTempFileForTest(json: String) = saveToTempFile(json)

        fun finalizeResultForTest(json: String, maxInlineBytes: Int) = finalizeResult(json, maxInlineBytes)

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

        fun instantiationFailedForTest(prefix: String, e: Exception, warnings: List<String>) =
            instantiationFailed(prefix, e, warnings)
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
        // The flag must follow the *stored* value. A set non-default member is printed as its
        // declared name with no isDefault flag, even when the data type's toString cannot render it.
        val property = TestEnumProperty()
        val node = jetbrains.mps.smodel.SNode(TestConcept(listOf(property)))
        node.setId(SNodeId.Regular(23L))
        TEST_ACCESS_UTIL.setRawProperty(node, property, TestEnumLiteral("OTHER"))

        val json = ops.nodeHierarchyToJsonForTest(node)

        assertTrue("the stored literal name must be printed: $json", json.contains("\"value\":\"OTHER\""))
        assertFalse("an explicitly set value must not be flagged as a default: $json", json.contains("\"isDefault\""))
        assertFalse("the stored value must not be replaced by the default literal: $json", json.contains("DEFAULT"))
    }

    @Test
    fun printoutKeepsARenderableSetEnumValueUnflagged() {
        // Same rule for a property whose data type renders a presentation string: the printout still
        // emits the declared literal identifier (the name the property writer accepts), not the
        // presentation, and carries no default flag.
        val property = TestPresentationEnumProperty()
        val node = jetbrains.mps.smodel.SNode(TestConcept(listOf(property)))
        node.setId(SNodeId.Regular(25L))
        TEST_ACCESS_UTIL.setRawProperty(node, property, TestPresentationLiteral("GREEN_PEAR", "Green Pear"))

        val json = ops.nodeHierarchyToJsonForTest(node)

        assertTrue("the declared literal identifier must be printed: $json", json.contains("\"value\":\"GREEN_PEAR\""))
        assertFalse("an explicitly set value must not be flagged as a default: $json", json.contains("\"isDefault\""))
    }

    @Test
    fun printoutStripsEncodedIdFromNonDefaultEnum() {
        // D37: SEnumerationAdapter.toString of a non-default member is "<encodedId>/<name>".
        // Default members already print as the declared identifier (D5); non-default ones must too.
        val property = TestEncodedEnumProperty()
        val node = jetbrains.mps.smodel.SNode(TestConcept(listOf(property)))
        node.setId(SNodeId.Regular(26L))
        TEST_ACCESS_UTIL.setRawProperty(node, property, TestEncodedEnumLiteral("ML"))

        val json = ops.nodeHierarchyToJsonForTest(node)

        assertTrue("the declared literal must be printed: $json", json.contains("\"value\":\"ML\""))
        assertFalse("the persistence encoding must not leak: $json", json.contains("WtZI0zlAtJ"))
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
    fun problemSummaryCollapsesIdenticalTextsAcrossNodesAndKeepsFirstNode() {
        val parent = jetbrains.mps.smodel.SNode(TestConcept(emptyList())).also { it.setId(SNodeId.Regular(100L)) }
        val child = jetbrains.mps.smodel.SNode(TestConcept(emptyList())).also { it.setId(SNodeId.Regular(101L)) }
        parent.addChild(MetaAdapterFactory.getContainmentLink(0L, 1L, 1L, 1L, "child"), child)

        val (errors, warnings, row) = ops.problemSummaryForTest(
            parent,
            mapOf(
                parent to listOf(stubNodeReportItem(parent, MessageStatus.WARNING, "Step takes no time")),
                child to listOf(stubNodeReportItem(child, MessageStatus.WARNING, "Step takes no time")),
            ),
        )

        assertEquals(0, errors)
        assertEquals(2, warnings)
        val messages = row.getAsJsonArray("messages")
        assertEquals(1, messages.size())
        val entry = messages[0].asJsonObject
        assertEquals("warning", entry.get("severity").asString)
        assertEquals("Step takes no time", entry.get("message").asString)
        assertEquals(2, entry.get("count").asInt)
        assertEquals(PersistenceFacade.getInstance().asString(parent.reference), entry.get("node").asString)
        assertFalse(row.has("moreMessages"))
    }

    @Test
    fun problemSummaryKeepsSameTextWithDifferentSeveritiesSeparateAndOrdersErrorsFirst() {
        val node = jetbrains.mps.smodel.SNode(TestConcept(emptyList())).also { it.setId(SNodeId.Regular(102L)) }
        val (errors, warnings, row) = ops.problemSummaryForTest(
            node,
            mapOf(
                node to listOf(
                    stubNodeReportItem(node, MessageStatus.WARNING, "same text"),
                    stubNodeReportItem(node, MessageStatus.WARNING, "same text"),
                    stubNodeReportItem(node, MessageStatus.ERROR, "same text"),
                ),
            ),
        )

        assertEquals(1, errors)
        assertEquals(2, warnings)
        val messages = row.getAsJsonArray("messages").map { it.asJsonObject }
        assertEquals(2, messages.size)
        assertEquals("error", messages[0].get("severity").asString)
        assertEquals(1, messages[0].get("count").asInt)
        assertEquals("warning", messages[1].get("severity").asString)
        assertEquals(2, messages[1].get("count").asInt)
    }

    @Test
    fun problemSummaryIgnoresInfoAndOkItems() {
        val node = jetbrains.mps.smodel.SNode(TestConcept(emptyList())).also { it.setId(SNodeId.Regular(103L)) }
        val (errors, warnings, row) = ops.problemSummaryForTest(
            node,
            mapOf(node to listOf(stubNodeReportItem(node, MessageStatus.OK, "info item"))),
        )

        assertEquals(0, errors)
        assertEquals(0, warnings)
        assertFalse("clean row must omit messages: $row", row.has("messages"))
    }

    @Test
    fun problemSummaryFormatsSoftEmptyEnumErrorWithPropertyName() {
        val property = TestEnumProperty()
        val node = jetbrains.mps.smodel.SNode(TestConcept(listOf(property))).also { it.setId(SNodeId.Regular(104L)) }
        val (errors, warnings, row) = ops.problemSummaryForTest(node, emptyMap())

        assertEquals(1, errors)
        assertEquals(0, warnings)
        val entry = row.getAsJsonArray("messages").single().asJsonObject
        assertEquals("error", entry.get("severity").asString)
        assertEquals("Empty enumeration property: 'enumProp'", entry.get("message").asString)
        assertTrue(entry.get("message").asString.contains("Empty enumeration property"))
        assertEquals(1, entry.get("count").asInt)
        assertEquals(PersistenceFacade.getInstance().asString(node.reference), entry.get("node").asString)
    }

    @Test
    fun problemSummaryCapsAtFiveMessagesAndReportsMoreMessagesInDeterministicOrder() {
        val node = jetbrains.mps.smodel.SNode(TestConcept(emptyList())).also { it.setId(SNodeId.Regular(105L)) }
        val items = listOf(
            stubNodeReportItem(node, MessageStatus.WARNING, "w-once-first"),
            stubNodeReportItem(node, MessageStatus.WARNING, "w-twice"),
            stubNodeReportItem(node, MessageStatus.WARNING, "w-twice"),
            stubNodeReportItem(node, MessageStatus.ERROR, "e-once-first"),
            stubNodeReportItem(node, MessageStatus.ERROR, "e-thrice"),
            stubNodeReportItem(node, MessageStatus.ERROR, "e-thrice"),
            stubNodeReportItem(node, MessageStatus.ERROR, "e-thrice"),
            stubNodeReportItem(node, MessageStatus.ERROR, "e-once-second"),
            stubNodeReportItem(node, MessageStatus.WARNING, "w-once-second"),
            stubNodeReportItem(node, MessageStatus.WARNING, "w-once-third"),
        )
        val (errors, warnings, row) = ops.problemSummaryForTest(node, mapOf(node to items))

        assertEquals(5, errors)
        assertEquals(5, warnings)
        val messages = row.getAsJsonArray("messages").map { it.asJsonObject }
        assertEquals(5, messages.size)
        assertEquals(
            listOf("e-thrice", "e-once-first", "e-once-second", "w-twice", "w-once-first"),
            messages.map { it.get("message").asString },
        )
        assertEquals(2, row.get("moreMessages").asInt)
    }

    @Test
    fun problemSummaryTruncatesLongMessagesAtCodePointBoundaryWithoutSplittingSurrogatePairs() {
        val node = jetbrains.mps.smodel.SNode(TestConcept(emptyList())).also { it.setId(SNodeId.Regular(106L)) }
        val plain400 = "a".repeat(400)
        // Surrogate pair U+1F600 (\uD83D\uDE00) spanning indices 298..299 (right at the 299-char cut before '…').
        val surrogateAtCut = "b".repeat(298) + "\uD83D\uDE00" + "c".repeat(100)
        val (_, _, row) = ops.problemSummaryForTest(
            node,
            mapOf(
                node to listOf(
                    stubNodeReportItem(node, MessageStatus.ERROR, plain400),
                    stubNodeReportItem(node, MessageStatus.WARNING, surrogateAtCut),
                ),
            ),
        )

        val messages = row.getAsJsonArray("messages").map { it.asJsonObject.get("message").asString }
        assertEquals(300, messages[0].length)
        assertEquals("a".repeat(299) + "…", messages[0])
        assertEquals("b".repeat(298) + "…", messages[1])
        assertFalse("surrogate pair must not leave an unpaired surrogate", messages[1].any { it.isSurrogate() })
    }

    @Test
    fun problemSummaryGroupsOnFullTextBeforeTruncating() {
        val node = jetbrains.mps.smodel.SNode(TestConcept(emptyList())).also { it.setId(SNodeId.Regular(107L)) }
        val prefix = "p".repeat(350)
        val first = prefix + "A".repeat(50)
        val second = prefix + "B".repeat(50)
        val (errors, _, row) = ops.problemSummaryForTest(
            node,
            mapOf(
                node to listOf(
                    stubNodeReportItem(node, MessageStatus.ERROR, first),
                    stubNodeReportItem(node, MessageStatus.ERROR, second),
                ),
            ),
        )

        assertEquals(2, errors)
        val messages = row.getAsJsonArray("messages").map { it.asJsonObject }
        assertEquals("distinct suffixes past 300 chars must stay two entries", 2, messages.size)
        assertEquals(1, messages[0].get("count").asInt)
        assertEquals(1, messages[1].get("count").asInt)
    }

    @Test
    fun problemSummarySuppressesInvalidPropertySoftErrorOnlyForSamePropertyProblem() {
        // F5: a node-level message mentioning "invalid" must NOT hide an invalid-property soft error
        // that nodeWithProblemsJsonObject still prints under that property.
        val prop = TestInvalidProperty("minutes")
        val node = jetbrains.mps.smodel.SNode(TestConcept(listOf(prop))).also { it.setId(SNodeId.Regular(108L)) }
        TEST_ACCESS_UTIL.setRawProperty(node, prop, "not-a-number")

        val nodeLevelProblems = mapOf<SNode, List<NodeReportItem>>(
            node to listOf(stubNodeReportItem(node, MessageStatus.WARNING, "Node name is invalid")),
        )
        val (errors, warnings, row) = ops.problemSummaryForTest(node, nodeLevelProblems)
        val reportJson = ops.nodeWithProblemsToJsonForTest(node, nodeLevelProblems)

        assertTrue("the full report prints the soft property error: $reportJson", reportJson.contains("Property value is invalid"))
        assertEquals("soft property error must be counted despite unrelated 'invalid' message", 1, errors)
        assertEquals(1, warnings)
        assertEquals(1 to 1, ops.problemCountsForTest(node, nodeLevelProblems))
        val messages = row.getAsJsonArray("messages").map { it.asJsonObject }
        assertEquals(2, messages.size)
        assertEquals("Property value is invalid: 'minutes'", messages[0].get("message").asString)

        // When the "invalid" message targets that exact property, both the report and the summary suppress the soft error.
        val propLevelProblems = mapOf<SNode, List<NodeReportItem>>(
            node to listOf(stubNodeReportItem(node, MessageStatus.ERROR, "minutes value is invalid", target = PropertyMessageTarget(prop))),
        )
        val (propErrors, _, propRow) = ops.problemSummaryForTest(node, propLevelProblems)
        val propReportJson = ops.nodeWithProblemsToJsonForTest(node, propLevelProblems)
        assertFalse("report suppresses the duplicate soft error: $propReportJson", propReportJson.contains("Property value is invalid"))
        assertEquals(1, propErrors)
        assertEquals(1, propRow.getAsJsonArray("messages").size())
    }

    @Test
    fun problemSummaryUncappedCountsMatchProblemCounts() {
        val prop = TestEnumProperty()
        val parent = jetbrains.mps.smodel.SNode(TestConcept(listOf(prop))).also { it.setId(SNodeId.Regular(109L)) }
        val child = jetbrains.mps.smodel.SNode(TestConcept(emptyList())).also { it.setId(SNodeId.Regular(110L)) }
        parent.addChild(MetaAdapterFactory.getContainmentLink(0L, 1L, 1L, 1L, "child"), child)
        val problems = mapOf<SNode, List<NodeReportItem>>(
            parent to listOf(
                stubNodeReportItem(parent, MessageStatus.ERROR, "e1"),
                stubNodeReportItem(parent, MessageStatus.WARNING, "w1"),
            ),
            child to listOf(
                stubNodeReportItem(child, MessageStatus.ERROR, "e1"),
                stubNodeReportItem(child, MessageStatus.WARNING, "w2"),
                stubNodeReportItem(child, MessageStatus.OK, "ignored"),
            ),
        )

        val (countErrors, countWarnings) = ops.problemCountsForTest(parent, problems)
        val (summaryErrors, summaryWarnings, row) = ops.problemSummaryForTest(parent, problems)
        val messages = row.getAsJsonArray("messages").map { it.asJsonObject }

        assertEquals(countErrors, summaryErrors)
        assertEquals(countWarnings, summaryWarnings)
        assertEquals(countErrors, messages.filter { it.get("severity").asString == "error" }.sumOf { it.get("count").asInt })
        assertEquals(countWarnings, messages.filter { it.get("severity").asString == "warning" }.sumOf { it.get("count").asInt })
    }

    @Test
    fun problemSummarySetsHasQuickFixesOnlyWhenAnyItemInGroupCarriesAFix() {
        val node = jetbrains.mps.smodel.SNode(TestConcept(emptyList())).also { it.setId(SNodeId.Regular(111L)) }
        val fix = object : EditorQuickFix {
            override fun isExecutedImmediately(): Boolean = false
            override fun isAlive(repository: org.jetbrains.mps.openapi.module.SRepository): Boolean = true
            override fun execute(repository: org.jetbrains.mps.openapi.module.SRepository) {}
            override fun getDescription(repository: org.jetbrains.mps.openapi.module.SRepository): String = "fix"
            override fun getIdFlavours(): Set<FlavouredItem.ReportItemFlavour<*, *>> = emptySet()
        }
        val (_, _, row) = ops.problemSummaryForTest(
            node,
            mapOf(
                node to listOf(
                    stubNodeReportItem(node, MessageStatus.ERROR, "with fix"),
                    stubNodeReportItem(node, MessageStatus.ERROR, "with fix", quickFixes = listOf(fix)),
                    stubNodeReportItem(node, MessageStatus.WARNING, "without fix"),
                ),
            ),
        )

        val messages = row.getAsJsonArray("messages").map { it.asJsonObject }
        val withFix = messages.single { it.get("message").asString == "with fix" }
        val withoutFix = messages.single { it.get("message").asString == "without fix" }
        assertTrue(withFix.get("hasQuickFixes").asBoolean)
        assertFalse("hasQuickFixes must be omitted when no item has a fix: $withoutFix", withoutFix.has("hasQuickFixes"))
    }

    @Test
    fun mergeTalliesKeepsRootSampleNodeWhenModelLevelEntryHasNone() {
        val root = jetbrains.mps.smodel.SNode(TestConcept(emptyList())).also { it.setId(SNodeId.Regular(114L)) }
        val fix = object : EditorQuickFix {
            override fun isExecutedImmediately(): Boolean = false
            override fun isAlive(repository: org.jetbrains.mps.openapi.module.SRepository): Boolean = true
            override fun execute(repository: org.jetbrains.mps.openapi.module.SRepository) {}
            override fun getDescription(repository: org.jetbrains.mps.openapi.module.SRepository): String = "fix"
            override fun getIdFlavours(): Set<FlavouredItem.ReportItemFlavour<*, *>> = emptySet()
        }
        val row = ops.moduleRowMessagesForTest(
            listOf(
                StubModelProblemItem(MessageStatus.ERROR, "model only"),
                StubModelProblemItem(MessageStatus.ERROR, "shared"),
            ),
            root,
            mapOf(
                root to listOf(
                    stubNodeReportItem(root, MessageStatus.ERROR, "root only"),
                    stubNodeReportItem(root, MessageStatus.ERROR, "shared", quickFixes = listOf(fix)),
                ),
            ),
        )

        val messages = row.getAsJsonArray("messages").map { it.asJsonObject }
        assertEquals(listOf("shared", "model only", "root only"), messages.map { it.get("message").asString })
        val shared = messages[0]
        assertEquals(2, shared.get("count").asInt)
        assertEquals(PersistenceFacade.getInstance().asString(root.reference), shared.get("node").asString)
        assertTrue(shared.get("hasQuickFixes").asBoolean)
        assertFalse("a model-level-only entry has no node: ${messages[1]}", messages[1].has("node"))
    }

    @Test
    fun choosePerRootFormSelectsForm1Form2OrTempFileFallbackByExactLength() {
        // G4: synthetic rows, one of them with 3 distinct texts, tested at and 1 below each form's length.
        val cleanNode: SNode = jetbrains.mps.smodel.SNode(TestConcept(emptyList())).also { it.setId(SNodeId.Regular(112L)) }
        val problemNode: SNode = jetbrains.mps.smodel.SNode(TestConcept(emptyList())).also { it.setId(SNodeId.Regular(113L)) }
        val cleanBase = JsonObject().apply {
            addProperty("root", "r:test/112")
            addProperty("name", "Clean")
            addProperty("concept", "TestConcept")
            addProperty("errors", 0)
            addProperty("warnings", 0)
        }
        val problemBase = JsonObject().apply {
            addProperty("root", "r:test/113")
            addProperty("name", "Broken")
            addProperty("concept", "TestConcept")
            addProperty("errors", 3)
            addProperty("warnings", 0)
        }
        val problemMap = mapOf<SNode, List<NodeReportItem>>(
            problemNode to listOf(
                stubNodeReportItem(problemNode, MessageStatus.ERROR, "first distinct error message"),
                stubNodeReportItem(problemNode, MessageStatus.ERROR, "second distinct error message"),
                stubNodeReportItem(problemNode, MessageStatus.ERROR, "third distinct error message"),
            ),
        )
        val rows = listOf(
            cleanBase to (cleanNode to emptyMap<SNode, List<NodeReportItem>>()),
            problemBase to (problemNode to problemMap),
        )

        val (form1Json, form1PerRow) = ops.choosePerRootFormForTest(rows, Int.MAX_VALUE)
        assertEquals(5, form1PerRow)

        val atForm1 = ops.choosePerRootFormForTest(rows, form1Json.length)
        assertEquals(form1Json, atForm1.first)
        assertEquals(5, atForm1.second)

        val belowForm1 = ops.choosePerRootFormForTest(rows, form1Json.length - 1)
        val form2Json = belowForm1.first
        assertEquals(1, belowForm1.second)
        assertTrue("form 2 must be shorter than form 1", form2Json.length < form1Json.length)
        val form2Broken = JsonParser.parseString(form2Json).asJsonArray[1].asJsonObject
        assertEquals(1, form2Broken.getAsJsonArray("messages").size())
        assertEquals(2, form2Broken.get("moreMessages").asInt)

        val atForm2 = ops.choosePerRootFormForTest(rows, form2Json.length)
        assertEquals(form2Json, atForm2.first)
        assertEquals(1, atForm2.second)

        val belowForm2 = ops.choosePerRootFormForTest(rows, form2Json.length - 1)
        assertEquals("below form 2's length, form 1 is handed to finalizeResult for the temp file", form1Json, belowForm2.first)
        assertEquals(5, belowForm2.second)

        val allClean = ops.choosePerRootFormForTest(listOf(cleanBase to (cleanNode to emptyMap())), Int.MAX_VALUE)
        assertNull("all-clean rows must omit messagesPerRow", allClean.second)
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
            // D94: agents following a generated DSL skill pass project files; the inline route needs no copy.
            assertTrue("message must offer the inline route: $message", message.contains("send the JSON inline (up to 4096 characters)"))
        }
    }

    @Test
    fun fileInputExpandsLeadingTmpdirEnvVar() {
        val json = """{"concept":"test.lang.structure.TestConcept"}"""
        val javaTmp = File(System.getProperty("java.io.tmpdir")).canonicalFile
        val envTmp = File(System.getenv("TMPDIR") ?: System.getProperty("java.io.tmpdir")).canonicalFile
        Assume.assumeTrue(
            "\$TMPDIR must resolve to java.io.tmpdir so the auto-delete prefix check applies",
            javaTmp == envTmp,
        )
        val file = File.createTempFile("mps-node-", ".json", javaTmp)
        try {
            file.writeText(json)
            assertEquals(json, ops.readJsonOrFileForTest("\$TMPDIR/${file.name}"))
            assertTrue("expansion must not auto-delete an unregistered tool-prefix file", file.exists())
        } finally {
            file.delete()
        }
    }

    @Test
    fun fileInputExpandsBracedTmpdirEnvVar() {
        val json = """{"concept":"test.lang.structure.TestConcept"}"""
        val tmpdir = File(System.getenv("TMPDIR") ?: System.getProperty("java.io.tmpdir"))
        val file = File.createTempFile("mcp-tools-json-", ".json", tmpdir)
        try {
            file.writeText(json)
            assertEquals(json, ops.readJsonOrFileForTest("\${TMPDIR}/${file.name}"))
        } finally {
            file.delete()
        }
    }

    @Test
    fun fileInputExpandsPercentTempEnvVar() {
        val json = """{"concept":"test.lang.structure.TestConcept"}"""
        val tempDir = File(System.getenv("TEMP") ?: System.getProperty("java.io.tmpdir"))
        val file = File.createTempFile("mcp-tools-json-", ".json", tempDir)
        try {
            file.writeText(json)
            assertEquals(json, ops.readJsonOrFileForTest("%TEMP%/${file.name}"))
            assertEquals(json, ops.readJsonOrFileForTest("%Temp%/${file.name}"))
        } finally {
            file.delete()
        }
    }

    @Test
    fun fileInputDoesNotExpandTmpdirPrefixOfLongerVar() {
        try {
            ops.readJsonOrFileForTest("\$TMPDIRECTORY/blueprint.json")
            fail("Expected a missing non-temp env path to be rejected")
        } catch (e: AbstractOps.McpInvalidRequestException) {
            val message = e.message.orEmpty()
            assertTrue("unexpanded var must stay in the message: $message", message.contains("\$TMPDIRECTORY"))
            assertFalse("a longer name must not resolve as TMPDIR: $message", message.contains("resolved to"))
        }
    }

    @Test
    fun fileInputDoesNotExpandHomeEnvVar() {
        try {
            ops.readJsonOrFileForTest("\$HOME/mcp-tools-should-not-read.json")
            fail("Expected \$HOME not to be expanded into a readable path")
        } catch (e: AbstractOps.McpInvalidRequestException) {
            val message = e.message.orEmpty()
            assertTrue("unexpanded \$HOME must stay in the message: $message", message.contains("\$HOME"))
            assertFalse("\$HOME must not be expanded: $message", message.contains("resolved to"))
        }
    }

    @Test
    fun fileInputRejectsTraversalAfterTempEnvExpansion() {
        val tmpdir = File(System.getenv("TMPDIR") ?: System.getProperty("java.io.tmpdir")).canonicalFile
        val outside = firstRegularFileOutside(tmpdir, File("/tmp"))
        Assume.assumeTrue("needs an existing regular file outside the allowed temp directories", outside != null)
        val relative = try {
            tmpdir.toPath().relativize(outside!!.toPath()).toString().replace(File.separatorChar, '/')
        } catch (_: IllegalArgumentException) {
            Assume.assumeTrue("tmpdir and outside file must share a filesystem root", false)
            return
        }
        Assume.assumeTrue("needs a '..' traversal from \$TMPDIR to the outside file", relative.contains(".."))

        try {
            ops.readJsonOrFileForTest("\$TMPDIR/$relative")
            fail("Expected a post-expansion path traversal to be rejected")
        } catch (e: AbstractOps.McpInvalidRequestException) {
            val message = e.message.orEmpty()
            assertTrue(
                "traversal must be rejected by the temp-dir guard: $message",
                message.contains("is not inside the system temp directory"),
            )
        }
    }

    @Test
    fun fileInputRejectsTmpSymlinkPointingOutside() {
        val tmp = File("/tmp")
        Assume.assumeTrue("needs a writable /tmp", tmp.isDirectory && tmp.canWrite())
        val tmpdir = File(System.getProperty("java.io.tmpdir")).canonicalFile
        val outside = firstRegularFileOutside(tmpdir, tmp)
        Assume.assumeTrue("needs an existing regular file outside /tmp and java.io.tmpdir", outside != null)

        val link = File(tmp, "mcp-tools-outside-link-${System.nanoTime()}.json")
        try {
            try {
                Files.createSymbolicLink(link.toPath(), outside!!.toPath())
            } catch (e: Exception) {
                Assume.assumeTrue("needs permission to create a symlink in /tmp: ${e.message}", false)
            }
            try {
                ops.readJsonOrFileForTest(link.absolutePath)
                fail("Expected a /tmp symlink pointing outside to be rejected")
            } catch (e: AbstractOps.McpInvalidRequestException) {
                val message = e.message.orEmpty()
                assertTrue(
                    "symlink escape must be rejected by the temp-dir guard: $message",
                    message.contains("is not inside the system temp directory"),
                )
            }
        } finally {
            link.delete()
        }
    }

    @Test
    fun fileInputAcceptsMacTmpAlias() {
        val tmp = File("/tmp")
        Assume.assumeTrue("needs a writable /tmp", tmp.isDirectory && tmp.canWrite())
        val os = System.getProperty("os.name").orEmpty().lowercase()
        val tmpdir = File(System.getProperty("java.io.tmpdir")).canonicalFile
        val tmpCanonical = tmp.canonicalFile
        val alreadyInside = tmpCanonical.path == tmpdir.path ||
                tmpCanonical.path.startsWith(tmpdir.path + File.separator)
        Assume.assumeTrue(
            "macOS /tmp alias, or /tmp already inside java.io.tmpdir",
            os.contains("mac") || os.contains("darwin") || alreadyInside,
        )
        val json = """{"concept":"test.lang.structure.TestConcept"}"""
        val file = File.createTempFile("mcp-tools-json-", ".json", tmp)
        try {
            file.writeText(json)
            assertEquals(json, ops.readJsonOrFileForTest("/tmp/${file.name}"))
            val privateTmp = File("/private/tmp")
            if (privateTmp.isDirectory) {
                assertEquals(json, ops.readJsonOrFileForTest("/private/tmp/${file.name}"))
            }
        } finally {
            file.delete()
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
    fun tempFileResultKeepsTheNullMembersOfTheInlineForm() {
        val payload = """{"type":null,"trace":[{"rule":null,"statement":"m/1"}],"coerced":{"target":null}}"""
        val inline = JsonParser.parseString(ops.finalizeResultForTest(payload, maxInlineBytes = payload.length))
        val spilled = JsonParser.parseString(ops.finalizeResultForTest(payload, maxInlineBytes = payload.length - 1)).asJsonObject
        assertTrue("the payload must spill to a temp file: $spilled", spilled.get("data").isJsonPrimitive)

        val saved = JsonParser.parseString(ops.readJsonOrFileForTest(spilled.get("data").asString))

        assertTrue("a null member must keep its key: $saved", saved.asJsonObject.getAsJsonObject("data").has("type"))
        assertEquals(inline, saved)
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

    private fun parseFailure(json: String): String {
        try {
            ops.parseJsonElement(json)
        } catch (e: AbstractOps.McpInvalidRequestException) {
            return e.message.orEmpty()
        }
        fail("Expected malformed JSON to fail: $json")
        return ""
    }

    private fun bigBlueprint(nodes: Int = 45): String =
        (0 until nodes).joinToString(",", prefix = """{"concept":"test.C","children":[{"role":"child","nodes":[""", postfix = "]}]}") {
            """{"concept":"test.D","properties":[{"name":"name","value":"node$it"}]}"""
        }

    @Test
    fun parseJsonOnMissingCloserReportsUnbalancedWithGsonLocation() {
        val json = """{"a":1"""
        val message = parseFailure(json)
        assertTrue("Expected the closer diagnosis, got: $message", message.contains("unbalanced: 1 closer(s) missing at the end of input: '}'"))
        assertTrue(message.contains("cannot be inferred from counts"))
        assertTrue("Expected real Gson location: $message", message.contains("at line 1 column ${json.length + 1} path \$.a"))
        assertFalse("Gson's EOF text must be replaced: $message", message.contains("End of input"))
        assertTrue(message.contains("received ${json.length} chars (inline limit 4096)"))
        assertTrue(message.contains("absolute temp-file path"))
        assertTrue(message.contains("mps-node-editing/references/troubleshooting.md"))
    }

    @Test
    fun parseJsonListsMissingClosersInnermostFirst() {
        val message = parseFailure("""{"a":[{"b":1""")
        assertTrue(message, message.contains("3 closer(s) missing at the end of input: '}' then ']' then '}'"))
    }

    @Test
    fun parseJsonOnUnterminatedStringDoesNotClaimUnbalanced() {
        val json = "{\"a\":1,\n \"b\": \"cut off"
        val message = parseFailure(json)
        assertTrue(message, message.contains("unterminated string opened at line 2 column 7"))
        assertTrue(message.contains("unescaped"))
        assertFalse(message, message.contains("unbalanced"))
        assertTrue(message.contains("received ${json.length} chars (inline limit 4096)"))
        assertTrue(message.contains("absolute temp-file path"))
        val caretLine = message.lines().first { it.trim() == "^" }
        assertEquals("caret must sit under the opening quote", 10 + 6, caretLine.indexOf('^'))
    }

    @Test
    fun parseJsonOnMismatchedCloserNamesTheOpener() {
        val message = parseFailure("""{"a":[1,2},"b":3}""")
        assertTrue(message, message.contains("unbalanced: '}' at line 1 column 10 closes the '[' opened at line 1 column 6: a ']' is missing before it"))
        assertTrue(message.contains("absolute temp-file path"))
        val caretLine = message.lines().first { it.trim() == "^" }
        assertEquals("caret must sit under the offending closer", 10 + 9, caretLine.indexOf('^'))
    }

    @Test
    fun parseJsonOnExtraClosersAfterTopLevelValue() {
        val message = parseFailure("""{"a":[1]}]}""")
        assertTrue(message, message.contains("unbalanced: 2 extra closer(s) after the top-level value ended, the first at line 1 column 10"))
        assertFalse("Gson's lenient-mode text must be dropped: $message", message.contains("setStrictness"))
        assertFalse(message.contains("Troubleshooting.md"))
        assertTrue(message.contains("absolute temp-file path"))
    }

    @Test
    fun parseJsonOnTrailingContentAfterTopLevelValue() {
        val json = """{"a":1} x"""
        val message = parseFailure(json)
        assertTrue(message, message.contains("unexpected content after the top-level value at line 1 column 9"))
        assertFalse(message.contains("unbalanced"))
        assertFalse(message.contains("received ${json.length} chars"))
        assertFalse(message.contains("absolute temp-file path"))
        assertFalse(message.contains("setStrictness"))
        val caretLine = message.lines().first { it.trim() == "^" }
        assertEquals(10 + 8, caretLine.indexOf('^'))
    }

    @Test
    fun parseJsonIgnoresBracketsAndEscapedQuotesInsideStrings() {
        // Balanced apart from the missing final '}': the ']' '}' '{' and the escaped quote sit inside strings.
        val message = parseFailure("""{"a":"x]}{ \" [","b":2""")
        assertTrue(message, message.contains("unbalanced: 1 closer(s) missing at the end of input: '}'"))
        assertFalse(message.contains("closes the"))
        assertFalse(message.contains("extra closer"))
    }

    @Test
    fun parseJsonReportsScanLineWhenItDiffersFromGsonLine() {
        // Gson reports the end of input on line 4; the scan points at the line where the string was opened.
        val message = parseFailure("{\"a\":1,\n \"b\": \"cut\noff\nmore")
        assertTrue(message, message.contains("unterminated string opened at line 2 column 7"))
        assertTrue(message, message.contains("at line 4 column"))
        assertTrue(message.lines().any { it.startsWith("->    2 | ") })
        assertFalse(message.lines().any { it.startsWith("->    4 | ") })
    }

    @Test
    fun parseJsonOmitsTempFileSentenceForInputLongerThanInlineLimit() {
        val json = """{"a":"""" + "x".repeat(4200)
        val message = parseFailure(json)
        assertTrue(message, message.contains("unterminated string"))
        assertTrue(message.contains("received ${json.length} chars (inline limit 4096)"))
        assertFalse(message, message.contains("absolute temp-file path"))
        assertTrue(message.contains("mps-node-editing/references/troubleshooting.md"))
    }

    @Test
    fun parseJsonExcerptIsWindowedAndClampedAtEndOfInput() {
        val json = bigBlueprint()
        assertTrue(json.length > 3000)
        val message = parseFailure(json.dropLast(2))
        val excerptLine = message.lines().first { it.startsWith("->") }
        assertTrue("excerpt must be windowed: ${excerptLine.length}", excerptLine.length < 200)
        assertTrue(excerptLine.contains("| ..."))
        assertFalse("window ends at EOF, no trailing ellipsis", excerptLine.endsWith("..."))
        val caretLine = message.lines().first { it.trim() == "^" }
        assertEquals("caret clamped just past the last character", excerptLine.length, caretLine.indexOf('^'))
    }

    @Test
    fun parseJsonErrorForLargeSingleLineBlueprintStaysUnderOneKilobyte() {
        val json = bigBlueprint()
        assertTrue(json.length in 3000..4096)
        val withExtraCloser = parseFailure(json + "}")
        assertTrue(withExtraCloser, withExtraCloser.contains("1 extra closer(s)"))
        assertTrue("extra closer: ${withExtraCloser.length} chars", withExtraCloser.length < 1024)
        val withMissingCloser = parseFailure(json.dropLast(1))
        assertTrue(withMissingCloser, withMissingCloser.contains("1 closer(s) missing"))
        assertTrue("missing closer: ${withMissingCloser.length} chars", withMissingCloser.length < 1024)
    }

    @Test
    fun parseJsonElementDiagnosesMalformedNestedChildAndArrayInput() {
        val inputs = listOf(
            """{"children":[{"role":"child","nodes":[{"concept":"test.C","name":"unfinished"""",
            """[{"concept":"test.C"},{"concept":"test.D","properties":[{"name":"x","value":"unfinished"""",
        )

        for (json in inputs) {
            try {
                ops.parseJsonElement(json)
                fail("Expected malformed JSON to fail: $json")
            } catch (e: AbstractOps.McpInvalidRequestException) {
                val message = e.message.orEmpty()
                assertTrue("Expected real Gson location: $message", message.contains("at line 1 column"))
                assertTrue(message.contains("received ${json.length} chars (inline limit 4096)"))
                assertTrue(message.contains("unbalanced"))
                assertTrue(message.contains("absolute temp-file path"))
            }
        }
    }

    @Test
    fun parseJsonElementDoesNotAddEofHintToOtherSyntaxErrors() {
        val json = """{"value":"\q"}"""
        try {
            ops.parseJsonElement(json)
            fail("Expected malformed JSON to fail")
        } catch (e: AbstractOps.McpInvalidRequestException) {
            val message = e.message.orEmpty()
            assertTrue("Expected real Gson location: $message", message.contains("at line 1 column"))
            assertFalse(message.contains("received ${json.length} chars"))
            assertFalse(message.contains("unbalanced"))
            assertFalse(message.contains("absolute temp-file path"))
            assertFalse(message.contains("Troubleshooting.md"))
            assertFalse(message.contains("setStrictness"))
            assertFalse(message.contains("mps-node-editing/references/troubleshooting.md"))
        }
    }

    @Test
    fun parseJsonKeepsGsonReasonWhenItStoppedBeforeTheBracketFinding() {
        // Gson stops at the missing ':' (column 7); the scan only finds the mismatched '}' at column 14.
        val message = parseFailure("""{"a" 1, "b":[}""")
        assertTrue(message, message.contains("Parser: Expected ':' at line 1 column 7 path \$.a"))
        assertTrue(message, message.contains("Further on: unbalanced: '}' at line 1 column 14 closes the '[' opened at line 1 column 13"))
        assertFalse("the class name prefix must be stripped: $message", message.contains("MalformedJsonException"))
        assertFalse(message.contains("setStrictness"))
        val caretLine = message.lines().first { it.trim() == "^" }
        assertEquals("caret must follow the parser's position, not the later finding", 10 + 6, caretLine.indexOf('^'))
    }

    @Test
    fun parseJsonLeadsWithTheMismatchWhenGsonStoppedAtTheSamePosition() {
        for (json in listOf("""{"n":[{"a":1},}""", """[1,[2,}]]""", "{\"n\":[\n{\"a\":1},}")) {
            val message = parseFailure(json)
            assertTrue(json + " -> " + message, message.startsWith("unbalanced: '}'"))
            assertFalse(json + " -> " + message, message.contains("Further on"))
            assertFalse(json + " -> " + message, message.contains("Parser: Expected"))
        }
    }

    @Test
    fun parseJsonKeepsGsonReasonWhenItStoppedBeforeTheEndOfInput() {
        val message = parseFailure("""{"a" 1, "b":[""")
        assertTrue(message, message.contains("Parser: Expected ':' at line 1 column 7"))
        assertTrue(message, message.contains("Further on: unbalanced: 2 closer(s) missing at the end of input"))
    }

    @Test
    fun parseJsonSummarisesMoreThanEightMissingClosers() {
        val message = parseFailure("[".repeat(11))
        assertTrue(message, message.contains("11 closer(s) missing at the end of input: ']' then ']' then ']' then ']' then ']' then ']' then ']' then ']' and 3 more."))
        assertFalse(message, message.contains(".."))
        assertFalse("the example path must not read as the actual one: $message", message.contains("children[3]"))
    }

    @Test
    fun parseJsonExcerptDropsCarriageReturnsAndKeepsCaretAligned() {
        val message = parseFailure("{\"a\":1,\r\n\"b\":[1}")
        assertTrue(message, message.contains("closes the '[' opened at line 2 column 5"))
        assertFalse("CR must not leak into the excerpt: $message", message.contains('\r'))
        assertEquals(" ".repeat(10 + 6) + "^", message.lines().first { it.trim() == "^" })
    }

    @Test
    fun parseJsonExcerptPreservesTabsInCaretPadding() {
        val message = parseFailure("{\"a\":1,\n\t\"b\":[1}")
        assertTrue(message, message.contains("closes the '[' opened at line 2 column 6"))
        assertEquals(" ".repeat(10) + "\t" + " ".repeat(6) + "^", message.lines().first { it.trim() == "^" })
    }

    private fun gsonFailure(json: String): String =
        try {
            JsonParser.parseString(json)
            fail("Expected malformed JSON to fail: $json")
            ""
        } catch (e: JsonSyntaxException) {
            e.message.orEmpty()
        }

    @Test
    fun parseJsonFileGuidanceNamesNoSkill() {
        val message = parseFailure("""{"a":1""")
        assertTrue(message, message.contains("Pass an absolute temp-file path instead of inline JSON. See mps-node-editing/references/troubleshooting.md."))
        assertFalse(message, message.contains("(see the mps-node-editing skill)"))
        // Study D120: the recovery points at the script that builds a deep blueprint without hand-typed closers.
        assertTrue(message, message.endsWith("troubleshooting.md. To build a deep blueprint, run mps-node-editing's scripts/blueprint.py."))
    }

    @Test
    fun parseJsonFileGuidanceOverTheInlineLimitStillNamesTheBlueprintScript() {
        val message = parseFailure("{\"a\":\"" + "x".repeat(5000) + "\"")
        assertFalse(message, message.contains("Pass an absolute temp-file path instead of inline JSON"))
        assertTrue(message, message.contains("See mps-node-editing/references/troubleshooting.md. To build a deep blueprint, run mps-node-editing's scripts/blueprint.py."))
    }

    @Test
    fun inlineGuidanceGivesOnlyTheTroubleshootingPointer() {
        val json = """{"a":1"""
        val message = JsonSyntaxErrors.describe(json, gsonFailure(json), JsonInputGuidance.INLINE)
        assertTrue(message, message.contains("unbalanced: 1 closer(s) missing at the end of input: '}'"))
        assertTrue(message, message.endsWith("\n\nSee mps-node-editing/references/troubleshooting.md."))
        assertFalse(message, message.contains("temp-file"))
        assertFalse(message, message.contains("temp file"))
        assertFalse(message, message.contains("inline limit"))
        assertEquals("an empty key list is plain INLINE", message, JsonSyntaxErrors.describe(json, gsonFailure(json), JsonInputGuidance.inlineOnly(emptyList())))
    }

    @Test
    fun inlineOnlyGuidanceNamesExactlyTheNestedFileKeys() {
        val json = """{"conceptsJson":[{"name":"Foo"}"""
        val concepts = JsonSyntaxErrors.describe(json, gsonFailure(json), JsonInputGuidance.inlineOnly(listOf("conceptsJson")))
        assertTrue(concepts, concepts.contains("`parameters` itself must be inline; move conceptsJson into a temp file and pass its absolute path instead."))
        assertTrue(concepts, concepts.contains("mps-node-editing/references/troubleshooting.md"))
        assertFalse(concepts, concepts.contains("inline limit"))
        val values = JsonSyntaxErrors.describe(json, gsonFailure(json), JsonInputGuidance.inlineOnly(listOf("valuesJson")))
        assertTrue(values, values.contains("move valuesJson into a temp file"))
        assertFalse(values, values.contains("conceptsJson into"))
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

    private fun hintedAssignabilityException(hint: AbstractOps.AssignabilityHint?) = AbstractOps.AssignabilityException(
        jsonPath = "$.children[0].nodes[0]",
        actualConcept = "ArrayCreatorWithInitializer",
        expectedConcepts = listOf("Expression"),
        parentConcept = "ReturnStatement",
        role = "expression",
        hint = hint
    )

    private val wrapperHint = AbstractOps.AssignabilityHint(
        listOf(" - Wrap it: 'GenericNewExpression' is an 'Expression' …", "   {\"concept\":\"…GenericNewExpression\"}"),
        mapOf("wrapperCandidates" to listOf(mapOf("role" to "creator")), "wrapperCandidatesTotal" to 1)
    )

    @Test
    fun assignabilityHintLinesFollowTheUnchangedMessageBody() {
        val plain = hintedAssignabilityException(null)
        val hinted = hintedAssignabilityException(wrapperHint)

        assertEquals(plain.message + "\n" + wrapperHint.lines.joinToString("\n"), hinted.message)
        assertTrue("no hint, no details: ${plain.errorDetails}", plain.errorDetails.isEmpty())
        assertEquals(wrapperHint.details, hinted.errorDetails)
    }

    @Test
    fun toolFailureCarriesTheAssignabilityHintDetails() {
        val obj = JsonParser.parseString(
            ops.toolFailureForTest("running test tool", hintedAssignabilityException(wrapperHint))
        ).asJsonObject

        assertEquals("INVALID_REFERENCE", obj.get("code").asString)
        val details = obj.getAsJsonObject("details")
        assertEquals(1, details.get("wrapperCandidatesTotal").asInt)
        assertEquals("creator", details.getAsJsonArray("wrapperCandidates")[0].asJsonObject.get("role").asString)
    }

    @Test
    fun instantiationFailedForwardsDetailsAndWarnings() {
        // The rewrap sites (insert_root_node_from_json, update_node ADD/SET CHILD, the console insert) used to
        // keep only e.message; the console insert also dropped its warnings.
        val hinted = JsonParser.parseString(
            nodeOps.instantiationFailedForTest(
                "Failed to instantiate node from JSON", hintedAssignabilityException(wrapperHint), listOf("factory warning")
            )
        ).asJsonObject

        assertEquals("INVALID_REQUEST", hinted.get("code").asString)
        assertTrue(hinted.get("error").asString.startsWith("Failed to instantiate node from JSON: Concept assignability error"))
        assertTrue(hinted.get("error").asString.contains(" - Wrap it: 'GenericNewExpression'"))
        assertEquals(1, hinted.getAsJsonObject("details").get("wrapperCandidatesTotal").asInt)
        assertEquals("factory warning", hinted.getAsJsonArray("warnings").single().asString)

        val plain = JsonParser.parseString(
            nodeOps.instantiationFailedForTest("Failed to instantiate node from JSON", IllegalStateException("boom"), emptyList())
        ).asJsonObject
        assertEquals("Failed to instantiate node from JSON: boom", plain.get("error").asString)
        assertNull("a non-MCP exception carries no details: $plain", plain.get("details"))
        assertNull("no warnings, no warnings key: $plain", plain.get("warnings"))
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

    /** Minimal [NodeReportItem]: [problemSummary] keys problems by node, never reading `item.node`. */
    private class StubProblemItem(
        private val status: MessageStatus,
        private val text: String,
        private val target: MessageTarget = NodeMessageTarget(),
        private val fixes: Collection<QuickFixBase> = emptyList(),
    ) : NodeReportItem, QuickFixReportItem {
        override fun getNode(): SNodeReference =
            throw UnsupportedOperationException("problemCounts must key problems by node, not read item.node")
        override fun getMessage(): String = text
        override fun getSeverity(): MessageStatus = status
        override fun getMessageTarget(): MessageTarget = target
        override fun getIssueKind(): IssueKindReportItem.ItemKind? = null
        override fun getQuickFix(): Collection<QuickFixBase> = fixes
        override fun getIdFlavours(): Set<FlavouredItem.ReportItemFlavour<*, *>> =
            if (fixes.isEmpty()) emptySet() else setOf(QuickFixReportItem.FLAVOUR_QUICKFIX)
    }

    /** Minimal model-level [ModelReportItem] that is not a [NodeReportItem]. */
    private class StubModelProblemItem(
        private val status: MessageStatus,
        private val text: String,
    ) : ModelReportItem {
        override fun getModel(): SModelReference = throw UnsupportedOperationException("modelProblemSummary must not read item.model")
        override fun getMessage(): String = text
        override fun getSeverity(): MessageStatus = status
        override fun getIssueKind(): IssueKindReportItem.ItemKind? = null
        override fun getIdFlavours(): Set<FlavouredItem.ReportItemFlavour<*, *>> = emptySet()
    }

    private fun stubNodeReportItem(
        @Suppress("UNUSED_PARAMETER") node: SNode,
        severity: MessageStatus,
        message: String = "stub problem",
        target: MessageTarget = NodeMessageTarget(),
        quickFixes: Collection<QuickFixBase> = emptyList(),
    ): NodeReportItem = StubProblemItem(severity, message, target, quickFixes)

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

    /**
     * Mimics [jetbrains.mps.smodel.adapter.structure.types.SEnumerationAdapter.toString]:
     * default members serialize as null; non-default members as `<encodedId>/<name>`.
     */
    private class TestEncodedEnumProperty : SProperty {
        private val enumType = TestEncodedEnumeration()

        override fun getName(): String = "unit"

        override fun getOwner(): SAbstractConcept = TestConcept(emptyList())

        override fun isValid(): Boolean = true

        override fun getType(): SDataType = enumType

        override fun isValid(string: String?): Boolean = string == "PIECE" || string == "ML"

        override fun getSourceNode(): SNodeReference? = null

        override fun isTransient(): Boolean = false
    }

    private class TestEncodedEnumeration : SEnumeration {
        override fun getName(): String = "Unit"

        override fun getLiteral(name: String?): SEnumerationLiteral? = getLiterals().firstOrNull { it.name == name }

        override fun fromString(string: String?): Any? = when (string) {
            "PIECE" -> TestEncodedEnumLiteral("PIECE")
            "ML" -> TestEncodedEnumLiteral("ML")
            else -> SType.NOT_A_VALUE
        }

        override fun toString(value: Any?): String? {
            val literal = value as? TestEncodedEnumLiteral ?: return null
            if (literal.name == "PIECE") return null
            return "WtZI0zlAtJ/${literal.name}"
        }

        override fun isInstanceOf(value: Any?): Boolean = value is TestEncodedEnumLiteral

        override fun getLiterals(): MutableList<out SEnumerationLiteral> =
            mutableListOf(TestEncodedEnumLiteral("PIECE"), TestEncodedEnumLiteral("ML"))

        override fun getDefault(): SEnumerationLiteral = TestEncodedEnumLiteral("PIECE")

        override fun getSourceNode(): SNodeReference? = null
    }

    private data class TestEncodedEnumLiteral(private val literalName: String) : SEnumerationLiteral {
        override fun getName(): String = literalName

        override fun getPresentation(): String = literalName

        override fun getOrdinal(): Int = if (literalName == "PIECE") 0 else 1

        override fun getSourceNode(): SNodeReference? = null

        override fun getEnumeration(): SEnumeration = TestEncodedEnumeration()
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

    private class TestInvalidProperty(private val propName: String) : SProperty {
        override fun getName(): String = propName

        override fun getOwner(): SAbstractConcept = TestConcept(emptyList())

        override fun isValid(): Boolean = true

        override fun getType(): SDataType = jetbrains.mps.smodel.adapter.structure.types.SPrimitiveTypes.STRING

        override fun isValid(string: String?): Boolean = false

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

    private fun firstRegularFileOutside(vararg roots: File): File? {
        val outside = File(System.getProperty("user.dir")).canonicalFile.listFiles()?.firstOrNull { it.isFile } ?: return null
        val canonical = outside.canonicalFile
        for (root in roots) {
            val dir = try {
                if (!root.exists()) continue
                root.canonicalFile
            } catch (_: Exception) {
                continue
            }
            if (canonical.path == dir.path || canonical.path.startsWith(dir.path + File.separator)) {
                return null
            }
        }
        return canonical
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

    private fun parseJavaParseInsertRequestForTest(parameters: String): Any? =
        invokeSchemaFunction("parseJavaParseInsertRequest", arrayOf(String::class.java), parameters)

    private fun invokeSchemaFunction(name: String, parameterTypes: Array<Class<*>>, vararg args: Any?): Any? {
        try {
            return Class.forName("jetbrains.mps.agents.mcp.tools.common.McpToolInputSchemasKt")
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
