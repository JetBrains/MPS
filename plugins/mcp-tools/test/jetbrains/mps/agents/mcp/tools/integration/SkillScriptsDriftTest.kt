package jetbrains.mps.agents.mcp.tools.integration

import jetbrains.mps.agents.mcp.tools.*
import jetbrains.mps.agents.mcp.tools.common.*

import com.google.gson.JsonArray
import com.google.gson.JsonObject
import com.google.gson.JsonParser
import com.intellij.mcpserver.annotations.McpTool
import org.junit.After
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Assert.fail
import org.junit.Test
import java.nio.file.Files
import java.nio.file.Path
import java.util.concurrent.TimeUnit
import kotlin.reflect.KClass
import kotlin.reflect.full.declaredMemberFunctions
import kotlin.reflect.full.findAnnotation
import kotlin.reflect.full.valueParameters

/**
 * Drift gate for the helper scripts bundled with the skill catalog (remedy R5 of the
 * skill-script automation study): every MPS MCP tool and parameter a script names in its
 * `--list-tools` output must still exist in the toolsets, so renaming a tool or a parameter
 * fails here instead of silently breaking an agent's script call.
 *
 * The scripts are exercised through a real install (`mps_mcp_initialize_project_for_agents`
 * into a temp directory), which also covers the installed layout the scripts rely on —
 * `concept_shape.py` imports `mps_dump.py` from `../../mps-mcp-workflow/scripts`.
 *
 * Needs `python3`: an assumption on a developer machine, a failure on CI — see [Python3].
 */
class SkillScriptsDriftTest : McpIntegrationTestBase() {

    private var installRoot: Path? = null
    private val generatedFiles = mutableListOf<Path>()

    @After
    fun cleanUpInstalledSkills() {
        for (file in generatedFiles) {
            Files.deleteIfExists(file)
        }
        generatedFiles.clear()
        installRoot?.let { root ->
            Files.walk(root).use { stream ->
                stream.sorted(Comparator.reverseOrder()).forEach { Files.deleteIfExists(it) }
            }
        }
        installRoot = null
    }

    @Test
    fun `bundled scripts name only tools and parameters that exist`() {
        Python3.require()
        val skillsDir = installSkills()
        val registry = liveToolRegistry()

        for (script in BUNDLED_SCRIPTS) {
            val result = runPython(skillsDir.resolve(script).toString(), "--list-tools")
            assertEquals("$script --list-tools must exit 0, output: ${result.output}", 0, result.exitCode)
            val entries = JsonParser.parseString(result.output.trim()).asJsonArray
            if (script in SCRIPTS_WITHOUT_TOOL_DEPENDENCIES) {
                assertEquals("$script must declare no tool dependency", 0, entries.size())
                continue
            }
            assertTrue("$script must declare at least one tool dependency", entries.size() > 0)
            for (entry in entries) {
                val tool = entry.asJsonObject.get("tool").asString
                val parameters = registry[tool]
                if (parameters == null) {
                    fail("$script depends on tool '$tool', which no toolset declares " +
                            "(known: ${registry.keys.sorted()})")
                    continue
                }
                for (parameter in entry.asJsonObject.getAsJsonArray("parameters")) {
                    val name = parameter.asString
                    assertTrue(
                        "$script depends on parameter '$name' of '$tool', which it no longer has " +
                                "(declared: ${parameters.sorted()})",
                        name in parameters
                    )
                }
            }
        }
    }

    @Test
    fun `table_to_bulk_insert turns the bundled example into a bulk blueprint`() {
        Python3.require()
        val skillsDir = installSkills()
        val scriptDir = skillsDir.resolve("mps-node-editing").resolve("scripts")

        val result = runPython(
            scriptDir.resolve("table_to_bulk_insert.py").toString(),
            scriptDir.resolve("examples").resolve("courses.csv").toString(),
            scriptDir.resolve("examples").resolve("courses.map.json").toString(),
        )
        assertEquals("script must exit 0, output: ${result.output}", 0, result.exitCode)

        val summary = JsonParser.parseString(result.output.trim()).asJsonObject
        assertEquals("the bundled example has 40 rows", EXAMPLE_ROW_COUNT, summary.get("roots").asInt)

        val blueprint = Path.of(summary.get("path").asString)
        generatedFiles.add(blueprint)
        assertTrue("the printed blueprint path must exist: $blueprint", Files.isRegularFile(blueprint))
        assertTrue(
            "the blueprint must be written inside the system temp directory, which is the only " +
                    "location the JSON file-path parameters accept: $blueprint",
            blueprint.startsWith(Path.of(System.getProperty("java.io.tmpdir")).toAbsolutePath().normalize())
        )

        val roots = JsonParser.parseString(Files.readString(blueprint)).asJsonArray
        assertEquals("bulk insert takes a top-level array of roots", EXAMPLE_ROW_COUNT, roots.size())
        for (root in roots) {
            assertTrue("every blueprint root needs a concept: $root", root.asJsonObject.has("concept"))
        }
    }

    @Test
    fun `table_to_bulk_insert --verify reports only the differences between a model dump and the table`() {
        Python3.require()
        val scriptDir = installSkills().resolve("mps-node-editing").resolve("scripts")
        val script = scriptDir.resolve("table_to_bulk_insert.py").toString()
        val table = scriptDir.resolve("examples").resolve("courses.csv").toString()
        val mapping = scriptDir.resolve("examples").resolve("courses.map.json").toString()

        val built = runPython(script, table, mapping)
        assertEquals("script must exit 0, output: ${built.output}", 0, built.exitCode)
        val blueprintFile = Path.of(JsonParser.parseString(built.output.trim()).asJsonObject.get("path").asString)
        generatedFiles.add(blueprintFile)
        val dump = modelDumpOf(JsonParser.parseString(Files.readString(blueprintFile)).asJsonArray)

        val cleanDump = Files.createTempFile("verify-clean", ".json")
        generatedFiles.add(cleanDump)
        Files.writeString(cleanDump, dump.toString())
        val clean = runPython(script, table, mapping, "--verify", cleanDump.toString())
        assertEquals("a dump of exactly the table must verify, output: ${clean.output}", 0, clean.exitCode)
        assertEquals(EXAMPLE_ROW_COUNT, JsonParser.parseString(clean.output.trim()).asJsonObject.get("matched").asInt)

        val firstLesson = dump.getAsJsonObject("data").getAsJsonArray("rootNodes")[0].asJsonObject
            .getAsJsonArray("children").map { it.asJsonObject }.first { it.get("role").asString == "lessons" }
            .getAsJsonArray("nodes")[0].asJsonObject
        firstLesson.getAsJsonArray("properties").map { it.asJsonObject }
            .first { it.get("name").asString == "minutes" }.addProperty("value", "999")
        val changedDump = Files.createTempFile("verify-changed", ".json")
        generatedFiles.add(changedDump)
        Files.writeString(changedDump, dump.toString())
        val changed = runPython(script, table, mapping, "--verify", changedDump.toString())
        assertEquals("one changed value must fail the verification, output: ${changed.output}", 1, changed.exitCode)
        val lines = changed.output.trim().lines()
        assertEquals("exactly one difference and the summary, output: ${changed.output}", 2, lines.size)
        assertTrue("the difference must name the row and the field: ${lines[0]}",
                   lines[0].startsWith("row 1 (") && lines[0].contains("lessons[0].minutes") && lines[0].contains("'999'"))
        assertEquals(1, JsonParser.parseString(lines[1]).asJsonObject.get("mismatched").asInt)
    }

    @Test
    fun `table_to_bulk_insert appends an aggregate root and rejects specs it cannot honour`() {
        Python3.require()
        val scriptDir = installSkills().resolve("mps-node-editing").resolve("scripts")
        val script = scriptDir.resolve("table_to_bulk_insert.py").toString()
        val table = scriptDir.resolve("examples").resolve("courses.csv")
        val mapping = scriptDir.resolve("examples").resolve("courses.map.json")

        val plain = runPython(script, table.toString(), mapping.toString())
        assertEquals("script must exit 0, output: ${plain.output}", 0, plain.exitCode)
        val plainSummary = JsonParser.parseString(plain.output.trim()).asJsonObject
        generatedFiles.add(Path.of(plainSummary.get("path").asString))
        assertTrue("a spec without an aggregate prints no aggregateReferences: ${plain.output}",
                   !plainSummary.has("aggregateReferences"))

        val built = runPython(script, table.toString(), aggregateSpec(mapping).toString())
        assertEquals("script must exit 0, output: ${built.output}", 0, built.exitCode)
        val summary = JsonParser.parseString(built.output.trim()).asJsonObject
        val blueprintFile = Path.of(summary.get("path").asString)
        generatedFiles.add(blueprintFile)
        assertEquals("roots counts the aggregate", EXAMPLE_ROW_COUNT + 1, summary.get("roots").asInt)
        assertEquals(EXAMPLE_ROW_COUNT, summary.get("aggregateReferences").asInt)
        assertEquals(plainSummary.get("children"), summary.get("children"))
        assertEquals(plainSummary.get("references"), summary.get("references"))

        val roots = JsonParser.parseString(Files.readString(blueprintFile)).asJsonArray
        val rowNames = roots.take(EXAMPLE_ROW_COUNT).map { root ->
            root.asJsonObject.getAsJsonArray("properties").map { it.asJsonObject }
                .first { it.get("name").asString == "name" }.get("value").asString
        }
        val aggregate = roots.last().asJsonObject
        assertEquals("com.example.courses.structure.Catalog", aggregate.get("concept").asString)
        assertEquals("Course Catalog", aggregate.getAsJsonArray("properties")[0].asJsonObject.get("value").asString)
        val wrappers = aggregate.getAsJsonArray("children").single().asJsonObject.getAsJsonArray("nodes")
        assertEquals("entries", aggregate.getAsJsonArray("children").single().asJsonObject.get("role").asString)
        assertEquals("one wrapper per row, in table order", rowNames, wrappers.map {
            val reference = it.asJsonObject.getAsJsonArray("references").single().asJsonObject
            assertEquals("course", reference.get("role").asString)
            reference.get("target").asString
        })

        fun rejected(label: String, spec: Path, expected: String, tablePath: Path = table) {
            val result = runPython(script, tablePath.toString(), spec.toString())
            assertEquals("$label must exit 3 (bad input), output: ${result.output}", 3, result.exitCode)
            assertTrue("$label must name '$expected', output: ${result.output}", result.output.contains(expected))
        }
        rejected("an aggregate without a wrapper", aggregateSpec(mapping) { it.getAsJsonObject("aggregate").remove("wrapper") }, "wrapper")
        rejected("an aggregate without nameColumn", aggregateSpec(mapping) { it.remove("nameColumn") }, "nameColumn")
        rejected("an aggregate of the row concept", aggregateSpec(mapping) {
            it.getAsJsonObject("aggregate").addProperty("concept", it.get("concept").asString)
        }, "must differ")
        val lines = Files.readAllLines(table).toMutableList()
        lines[2] = lines[1].substringBefore(',') + "," + lines[2].substringAfter(',')
        val repeated = Files.createTempFile("courses-repeated", ".csv")
        generatedFiles.add(repeated)
        Files.write(repeated, lines)
        rejected("a repeated row name", aggregateSpec(mapping), "row 2", repeated)
    }

    @Test
    fun `table_to_bulk_insert --verify checks the aggregate root against the table`() {
        Python3.require()
        val scriptDir = installSkills().resolve("mps-node-editing").resolve("scripts")
        val script = scriptDir.resolve("table_to_bulk_insert.py").toString()
        val table = scriptDir.resolve("examples").resolve("courses.csv").toString()
        val spec = aggregateSpec(scriptDir.resolve("examples").resolve("courses.map.json")).toString()

        val built = runPython(script, table, spec)
        assertEquals("script must exit 0, output: ${built.output}", 0, built.exitCode)
        val blueprintFile = Path.of(JsonParser.parseString(built.output.trim()).asJsonObject.get("path").asString)
        generatedFiles.add(blueprintFile)
        val dump = modelDumpOf(JsonParser.parseString(Files.readString(blueprintFile)).asJsonArray)

        fun verifyDump(model: JsonObject): Pair<PythonResult, JsonObject> {
            val file = Files.createTempFile("verify-aggregate", ".json")
            generatedFiles.add(file)
            Files.writeString(file, model.toString())
            val result = runPython(script, table, spec, "--verify", file.toString())
            return result to JsonParser.parseString(result.output.trim().lines().last()).asJsonObject
        }
        fun rootsOf(model: JsonObject) = model.getAsJsonObject("data").getAsJsonArray("rootNodes")
        fun wrappersOf(model: JsonObject) = rootsOf(model).last().asJsonObject
            .getAsJsonArray("children").single().asJsonObject.getAsJsonArray("nodes")

        val (clean, cleanSummary) = verifyDump(dump)
        assertEquals("a dump of exactly the table must verify, output: ${clean.output}", 0, clean.exitCode)
        assertEquals(EXAMPLE_ROW_COUNT, cleanSummary.get("matched").asInt)
        assertEquals("matched", cleanSummary.get("aggregate").asString)
        assertEquals(0, cleanSummary.get("extraRoots").asInt)

        val retargeted = dump.deepCopy()
        val other = wrappersOf(retargeted)[7].asJsonObject.getAsJsonArray("references")[0].asJsonObject.get("target").asString
        wrappersOf(retargeted)[5].asJsonObject.getAsJsonArray("references")[0].asJsonObject.addProperty("target", other)
        val (retargetedResult, retargetedSummary) = verifyDump(retargeted)
        assertEquals("a changed wrapper target must fail, output: ${retargetedResult.output}", 1, retargetedResult.exitCode)
        val retargetedLines = retargetedResult.output.trim().lines()
        assertEquals("exactly one difference and the summary, output: ${retargetedResult.output}", 2, retargetedLines.size)
        assertTrue("the difference names the aggregate and the wrapper: ${retargetedLines[0]}",
                   retargetedLines[0].startsWith("aggregate (Course Catalog): entries[5]/course"))
        assertEquals("rows are untouched", 0, retargetedSummary.get("mismatched").asInt)
        assertEquals("mismatched", retargetedSummary.get("aggregate").asString)

        val shortened = dump.deepCopy()
        wrappersOf(shortened).remove(EXAMPLE_ROW_COUNT - 1)
        val (shortenedResult, _) = verifyDump(shortened)
        assertEquals(1, shortenedResult.exitCode)
        val shortenedLines = shortenedResult.output.trim().lines()
        assertEquals("only the count differs when the last wrapper is gone, output: ${shortenedResult.output}", 2, shortenedLines.size)
        assertTrue(shortenedLines[0].contains("entries: expected $EXAMPLE_ROW_COUNT child(ren), got ${EXAMPLE_ROW_COUNT - 1}"))

        val withoutRoot = dump.deepCopy()
        rootsOf(withoutRoot).remove(EXAMPLE_ROW_COUNT)
        val (withoutRootResult, withoutRootSummary) = verifyDump(withoutRoot)
        assertEquals(1, withoutRootResult.exitCode)
        assertTrue("a missing aggregate is one line: ${withoutRootResult.output}",
                   withoutRootResult.output.contains("aggregate (Course Catalog): no Catalog root with that name"))
        assertEquals("missing", withoutRootSummary.get("aggregate").asString)

        val twice = dump.deepCopy()
        rootsOf(twice).add(rootsOf(twice).last().deepCopy())
        val (twiceResult, twiceSummary) = verifyDump(twice)
        assertEquals("a second aggregate root is an extra root, not a difference, output: ${twiceResult.output}", 0, twiceResult.exitCode)
        assertEquals(1, twiceSummary.get("extraRoots").asInt)
    }

    @Test
    fun `blueprint builds the deep tree a worker hand-nested one closer pair short`() {
        Python3.require()
        val script = installSkills().resolve("mps-node-editing").resolve("scripts").resolve("blueprint.py").toString()

        // Study D120, round 44 S2-sonnet-1:40: this StatementList, typed inline, lost one `]}` pair
        // mid-input, so `rValue` landed under the DotExpression. Built from node() calls it cannot.
        val result = runPython(script, "-", stdin = """
            BL = "jetbrains.mps.baseLanguage.structure."
            SM = "jetbrains.mps.lang.smodel.structure."
            S = "r:b8fed1ba-9aea-4e94-b51f-2af0e283a204(com.example.statechart.structure)/"
            lvalue = node(BL + "DotExpression", children={
                "operand": node("jetbrains.mps.lang.intentions.structure.ConceptFunctionParameter_node"),
                "operation": node(SM + "SLinkAccess", refs={"link": S + "8390877815955397132"})})
            rvalue = node(BL + "GenericNewExpression", children={"creator": node(SM + "SNodeCreator", children={
                "createdType": node(SM + "SNodeType", refs={"concept": S + "8390877815955244107"})})})
            emit(node(BL + "StatementList", children={"statement": [node(BL + "ExpressionStatement", children={
                "expression": node(BL + "AssignmentExpression", children={"lValue": lvalue, "rValue": rvalue})})]}),
                 stem="d120", single=True)
        """.trimIndent())
        assertEquals("script must exit 0, output: ${result.output}", 0, result.exitCode)

        val summary = JsonParser.parseString(result.output.trim()).asJsonObject
        val file = Path.of(summary.get("path").asString)
        generatedFiles.add(file)
        assertTrue("the blueprint must be written inside the system temp directory: $file",
                   file.startsWith(Path.of(System.getProperty("java.io.tmpdir")).toAbsolutePath().normalize()))
        assertEquals("nine nodes: ${result.output}", 9, summary.get("nodes").asInt)
        assertEquals("six node levels: ${result.output}", 6, summary.get("depth").asInt)

        val bl = "jetbrains.mps.baseLanguage.structure"
        val sm = "jetbrains.mps.lang.smodel.structure"
        val s = "r:b8fed1ba-9aea-4e94-b51f-2af0e283a204(com.example.statechart.structure)/"
        val expected = """
            {"concept":"$bl.StatementList","children":[{"role":"statement","nodes":[
              {"concept":"$bl.ExpressionStatement","children":[{"role":"expression","nodes":[
                {"concept":"$bl.AssignmentExpression","children":[
                  {"role":"lValue","nodes":[{"concept":"$bl.DotExpression","children":[
                    {"role":"operand","nodes":[{"concept":"jetbrains.mps.lang.intentions.structure.ConceptFunctionParameter_node"}]},
                    {"role":"operation","nodes":[{"concept":"$sm.SLinkAccess","references":[{"role":"link","target":"${s}8390877815955397132"}]}]}]}]},
                  {"role":"rValue","nodes":[{"concept":"$bl.GenericNewExpression","children":[
                    {"role":"creator","nodes":[{"concept":"$sm.SNodeCreator","children":[
                      {"role":"createdType","nodes":[{"concept":"$sm.SNodeType","references":[{"role":"concept","target":"${s}8390877815955244107"}]}]}]}]}]}]}]}]}]}]}]}
        """.trimIndent()
        assertEquals(JsonParser.parseString(expected), JsonParser.parseString(Files.readString(file)))
    }

    @Test
    fun `blueprint names the JSON path of a bad node and never waits for stdin`() {
        Python3.require()
        val script = installSkills().resolve("mps-node-editing").resolve("scripts").resolve("blueprint.py").toString()

        val bare = runPython(script)
        assertEquals("a call without `-` is a usage error, output: ${bare.output}", 2, bare.exitCode)
        assertTrue(bare.output, bare.output.contains("pass `-` and the Python snippet on stdin"))

        val shortName = runPython(script, "-", stdin = """
            BL = "jetbrains.mps.baseLanguage.structure."
            emit(node(BL + "StatementList", children={"statement": node(BL + "ExpressionStatement", children={
                "expression": node("IntegerConstant", props={"value": 1})})}))
        """.trimIndent())
        assertEquals("a bad blueprint exits 3, output: ${shortName.output}", 3, shortName.exitCode)
        assertTrue(shortName.output, shortName.output.contains("\$.statement[0].expression[0]: concept 'IntegerConstant' is not fully qualified"))

        val list = runPython(script, "-", stdin = "emit([node(\"a.B\"), node(\"a.C\")], single=True)")
        assertEquals("a list for a single-object tool exits 3, output: ${list.output}", 3, list.exitCode)
        assertTrue(list.output, list.output.contains("a list of 2 nodes, but single=True"))

        val raised = runPython(script, "-", stdin = "x = 1\nemit(node(\"a.B\", children={\"c\": missing}))")
        assertEquals("an error in the snippet exits 3, output: ${raised.output}", 3, raised.exitCode)
        assertTrue("the traceback points at the snippet line: ${raised.output}", raised.output.contains("File \"<stdin>\", line 2"))
        assertTrue(raised.output, raised.output.contains("NameError"))

        val nothing = runPython(script, "-", stdin = "x = node(\"a.B\")")
        assertEquals("a snippet that writes nothing exits 3, output: ${nothing.output}", 3, nothing.exitCode)
        assertTrue(nothing.output, nothing.output.contains("never called emit(blueprint)"))
    }

    @Test
    fun `blueprint output is accepted as a temp-file blueprint by insert_root_node_from_json`() {
        Python3.require()
        val script = installSkills().resolve("mps-node-editing").resolve("scripts").resolve("blueprint.py").toString()

        // class Probe { int m() { return (1 + 2) * 3; } }, a pure baseLanguage root 8 node levels deep.
        val result = runPython(script, "-", stdin = """
            BL = "jetbrains.mps.baseLanguage.structure."
            def num(value):
                return node(BL + "IntegerConstant", props={"value": value})
            product = node(BL + "MulExpression", children={
                "leftExpression": node(BL + "ParenthesizedExpression", children={"expression": node(BL + "PlusExpression",
                    children={"leftExpression": num(1), "rightExpression": num(2)})}),
                "rightExpression": num(3)})
            method = node(BL + "InstanceMethodDeclaration", props={"name": "m"}, children={
                "returnType": node(BL + "IntegerType"),
                "visibility": node(BL + "PublicVisibility"),
                "body": node(BL + "StatementList", children={"statement": node(BL + "ReturnStatement", children={"expression": product})})})
            emit(node(BL + "ClassConcept", props={"name": "Probe"}, children={"member": method}), stem="d120-probe")
        """.trimIndent())
        assertEquals("script must exit 0, output: ${result.output}", 0, result.exitCode)
        val file = Path.of(JsonParser.parseString(result.output.trim()).asJsonObject.get("path").asString)
        generatedFiles.add(file)

        val solution = createSolution()
        val model = createModel(solution, "${solution.moduleName}.code")
        val response = runTool(JetBrainsMPSRootNodeMcpToolset()) {
            it.mps_mcp_insert_root_node_from_json(modelRefOf(model), JsonOrText(file.toString()), dryRun = true)
        }
        expectOk(response)
    }

    @Test
    fun `mps_dump rejects a dump of the wrong kind and names the subcommand that reads it`() {
        Python3.require()
        val scriptDir = installSkills().resolve("mps-mcp-workflow").resolve("scripts")
        val script = scriptDir.resolve("mps_dump.py").toString()
        fun example(name: String) = scriptDir.resolve("examples").resolve(name).toString()

        for ((args, use) in listOf(
            listOf("shape", example("print_node_deep.json")) to "tree",
            listOf("models", example("print_node_deep.json")) to "tree",
            listOf("shape", example("get_project_structure_model_roots.json")) to "roots",
            listOf("shape", example("get_project_structure_project_models.json")) to "models",
            listOf("roots", example("get_concept_details_courses.json")) to "shape",
            listOf("count", example("get_concept_details_courses.json")) to "shape",
            listOf("node", example("get_concept_details_courses.json"), "Course") to "shape",
        )) {
            val result = runPython(script, *args.toTypedArray(), "--quiet")
            assertEquals("${args.joinToString(" ")} must fail as bad input, output: ${result.output}", 3, result.exitCode)
            assertTrue(
                "${args.joinToString(" ")} must name the subcommand to use, output: ${result.output}",
                result.output.contains("use `$use` instead"),
            )
        }

        val noMatch = runPython(script, "roots", example("get_project_structure_model_roots.json"), "--concept", "NoSuchConcept", "--quiet")
        assertEquals("a right-kind dump with no match must still succeed, output: ${noMatch.output}", 0, noMatch.exitCode)
        val summary = JsonParser.parseString(noMatch.output.trim()).asJsonObject
        generatedFiles.add(Path.of(summary.get("file").asString))
        assertEquals(0, summary.get("roots").asInt)
    }

    @Test
    fun `mps_dump refuses roots on a structure dump without root nodes and lists its models instead`() {
        Python3.require()
        val scriptDir = installSkills().resolve("mps-mcp-workflow").resolve("scripts")
        val script = scriptDir.resolve("mps_dump.py").toString()
        val projectDump = scriptDir.resolve("examples").resolve("get_project_structure_project_models.json").toString()

        for (args in listOf(
            listOf("roots", projectDump),
            listOf("count", projectDump),
            listOf("tree", projectDump),
            listOf("node", projectDump, "X"),
        )) {
            val result = runPython(script, *args.toTypedArray(), "--quiet")
            assertEquals("${args.joinToString(" ")} must fail as bad input, output: ${result.output}", 3, result.exitCode)
            assertTrue(
                "${args.joinToString(" ")} must say what is missing and name `models`, output: ${result.output}",
                result.output.contains("without includeRootNodes") && result.output.contains("use `models`"),
            )
        }

        val models = runPython(script, "models", projectDump)
        assertEquals("models must succeed on a project dump, output: ${models.output}", 0, models.exitCode)
        val lines = models.output.trim().lines()
        val summary = JsonParser.parseString(lines.last()).asJsonObject
        generatedFiles.add(Path.of(summary.get("file").asString))
        assertEquals(2, summary.get("modules").asInt)
        assertEquals(4, summary.get("models").asInt)
        assertEquals(24, summary.get("roots").asInt)
        val samples = lines.single { it.contains("com.example.catalog.samples") }
        assertTrue("a model row carries kind, root count and reference: $samples",
                   samples.startsWith("Solution") && samples.contains(" 12 ")
                   && samples.contains("r:2b9e05c7-4d13-4a86-bf72-91c0e6d4538f(com.example.catalog.samples)"))
    }

    @Test
    fun `mps_dump tree prints an indented subtree`() {
        Python3.require()
        val scriptDir = installSkills().resolve("mps-mcp-workflow").resolve("scripts")
        val script = scriptDir.resolve("mps_dump.py").toString()
        fun example(name: String) = scriptDir.resolve("examples").resolve(name).toString()
        fun tree(vararg args: String): List<String> {
            val result = runPython(script, "tree", *args)
            assertEquals("tree ${args.joinToString(" ")} must succeed, output: ${result.output}", 0, result.exitCode)
            val lines = result.output.trim().lines()
            generatedFiles.add(Path.of(JsonParser.parseString(lines.last()).asJsonObject.get("file").asString))
            return lines.dropLast(1)
        }

        val deep = tree(example("print_node_deep.json"))
        assertEquals("Course 2518891257436048003 credits=4 level=CORE name=\"Sight Reading\"", deep.first())
        assertTrue("children are indented under their role: $deep", deep.contains("    uses: ResourceRef 2518891257436048006 -> resource=ScaleSheets"))

        val withDefault = tree(example("get_project_structure_node_deep.json"))
        assertTrue("a default-valued enum is omitted: ${withDefault.first()}",
                   withDefault.first().startsWith("Course ") && !withDefault.first().contains("level="))

        val cut = tree(example("print_node_deep.json"), "--depth", "0")
        assertEquals(listOf("Course 2518891257436048003 credits=4 level=CORE name=\"Sight Reading\" (+5 children)"), cut)

        val shallow = tree(example("print_node_shallow.json"))
        assertTrue("shallow children say they were not inlined: $shallow",
                   shallow.contains("  lessons: lesson 2518891257436048005 (not inlined)"))

        // nodeDetail="names" keeps only name/concept/reference, so the line takes the record's own name.
        val fullRoots = JsonParser.parseString(Files.readString(Path.of(example("get_project_structure_model_roots.json")))).asJsonObject
        val namesOnly = fullRoots.deepCopy()
        val data = namesOnly.getAsJsonObject("data")
        val projected = JsonArray()
        for (root in data.getAsJsonArray("rootNodes")) {
            projected.add(JsonObject().apply {
                for (key in listOf("name", "concept", "reference")) add(key, root.asJsonObject.get(key))
            })
        }
        data.add("rootNodes", projected)
        val namesDump = Files.createTempFile("tree-names", ".json")
        generatedFiles.add(namesDump)
        Files.writeString(namesDump, namesOnly.toString())
        val names = tree(namesDump.toString())
        assertTrue("a names-only root shows its name: $names",
                   names.contains("Resource 2518891257436048000 name=ScaleSheets (children not listed)"))
        assertEquals("every root line carries a name: $names",
                     projected.size(), names.count { it.contains(" name=") })
    }

    @Test
    fun `mps_dump keeps values that contain a slash and reduces only the legacy enum form`() {
        Python3.require()
        val scriptDir = installSkills().resolve("mps-mcp-workflow").resolve("scripts")
        val script = scriptDir.resolve("mps_dump.py").toString()
        val dump = JsonParser.parseString(Files.readString(scriptDir.resolve("examples").resolve("print_node_deep.json"))).asJsonObject
        val properties = dump.getAsJsonObject("data").getAsJsonArray("properties")
        for (property in properties) {
            if (property.asJsonObject.get("name").asString == "name") {
                property.asJsonObject.addProperty("value", "http://www.w3.org/2005/07/scxml")
            }
        }
        // A string-typed `x/y` has the legacy enum shape, so only the dumped type keeps it whole.
        properties.add(JsonObject().apply { addProperty("name", "code"); addProperty("type", "string"); addProperty("value", "SR/LEVEL") })
        // Without a type, a value with several slashes cannot be the legacy `<id>/LITERAL` form.
        properties.add(JsonObject().apply { addProperty("name", "path"); addProperty("value", "src/main/java") })
        val edited = Files.createTempFile("tree-slash", ".json")
        generatedFiles.add(edited)
        Files.writeString(edited, dump.toString())

        val result = runPython(script, "tree", edited.toString(), "--depth", "0")
        assertEquals("tree must succeed, output: ${result.output}", 0, result.exitCode)
        val lines = result.output.trim().lines()
        generatedFiles.add(Path.of(JsonParser.parseString(lines.last()).asJsonObject.get("file").asString))
        val root = lines.first()
        assertTrue("a URL value is printed whole: $root", root.contains("name=http://www.w3.org/2005/07/scxml "))
        assertTrue("a string value of the legacy shape is printed whole: $root", root.contains("code=SR/LEVEL "))
        assertTrue("an untyped path value is printed whole: $root", root.contains("path=src/main/java "))
        assertTrue("the legacy `<id>/LITERAL` enum value is still reduced: $root", root.contains("level=CORE"))

        // An untyped value of the legacy shape is kept whole only when the concept details declare
        // the property as not an enum.
        for (property in properties) {
            if (property.asJsonObject.get("name").asString == "name") {
                property.asJsonObject.remove("type")
                property.asJsonObject.addProperty("value", "SR/LEVEL")
            }
        }
        Files.writeString(edited, dump.toString())
        val courseRef = dump.getAsJsonObject("data").get("reference").asString
        val conceptDetails = scriptDir.resolve("examples").resolve("get_concept_details_courses.json").toString()
        val declared = runPython(script, "node", edited.toString(), courseRef, "--concept-details", conceptDetails)
        assertEquals("node must succeed, output: ${declared.output}", 0, declared.exitCode)
        generatedFiles.add(Path.of(JsonParser.parseString(declared.output.trim().lines().last()).asJsonObject.get("file").asString))
        assertTrue("a string property declared in the concept details is printed whole: ${declared.output}",
                   declared.output.lines().any { it.trim() == "prop  name = SR/LEVEL" })
        assertTrue("the declared enum is still reduced: ${declared.output}",
                   declared.output.lines().any { it.trim() == "prop  level = CORE" })
    }

    /** Installs the bundled catalog into a fresh temp directory and returns its skills root. */
    private fun installSkills(): Path {
        val root = Files.createTempDirectory("mps-skill-scripts")
        installRoot = root
        val response = runTool(JetBrainsMPSInitMcpToolset()) { it.mps_mcp_initialize_project_for_agents(root.toString()) }
        assertTrue(
            "installing the skill catalog must succeed: $response",
            JsonParser.parseString(response).asJsonObject.get("ok").asBoolean
        )
        return root.resolve(".claude").resolve("skills")
    }

    /**
     * The `mps_mcp_get_project_structure(includeNodes=true)` envelope MPS prints for a model that
     * holds exactly [blueprint]: short concept names, a node ref per node, and every reference
     * resolved to the root of the same name.
     */
    private fun modelDumpOf(blueprint: JsonArray): JsonObject {
        var nextId = 0
        val referenceByName = mutableMapOf<String, String>()
        fun record(node: JsonObject): JsonObject {
            val reference = "r:00000000-0000-4000-0000-000000000001(verify.samples)/${++nextId}"
            val properties = node.getAsJsonArray("properties") ?: JsonArray()
            val name = properties.map { it.asJsonObject }.firstOrNull { it.get("name").asString == "name" }?.get("value")?.asString
            if (name != null) referenceByName[name] = reference
            val children = JsonArray()
            for (role in node.getAsJsonArray("children") ?: JsonArray()) {
                val nodes = JsonArray()
                role.asJsonObject.getAsJsonArray("nodes").forEach { nodes.add(record(it.asJsonObject)) }
                children.add(JsonObject().apply {
                    addProperty("role", role.asJsonObject.get("role").asString)
                    add("nodes", nodes)
                })
            }
            return JsonObject().apply {
                addProperty("name", name ?: node.get("concept").asString.substringAfterLast('.'))
                addProperty("concept", node.get("concept").asString.substringAfterLast('.'))
                addProperty("reference", reference)
                add("properties", properties.deepCopy())
                add("references", node.getAsJsonArray("references")?.deepCopy() ?: JsonArray())
                add("children", children)
            }
        }
        fun resolve(node: JsonObject) {
            for (reference in node.getAsJsonArray("references")) {
                val target = reference.asJsonObject.get("target").asString
                reference.asJsonObject.addProperty("targetReference", referenceByName.getValue(target))
            }
            for (role in node.getAsJsonArray("children")) {
                role.asJsonObject.getAsJsonArray("nodes").forEach { resolve(it.asJsonObject) }
            }
        }
        val roots = JsonArray()
        blueprint.forEach { roots.add(record(it.asJsonObject)) }
        roots.forEach { resolve(it.asJsonObject) }
        return JsonObject().apply {
            addProperty("ok", true)
            add("data", JsonObject().apply {
                addProperty("name", "verify.samples")
                add("rootNodes", roots)
            })
        }
    }

    /** Tool name to declared parameter names, read off the `@McpTool` methods of every toolset. */
    private fun liveToolRegistry(): Map<String, Set<String>> {
        val registry = mutableMapOf<String, Set<String>>()
        for (toolset in TOOLSETS) {
            for (function in toolset.declaredMemberFunctions) {
                if (function.findAnnotation<McpTool>() == null) {
                    continue
                }
                registry[function.name] = function.valueParameters.mapNotNull { it.name }.toSet()
            }
        }
        return registry
    }

    /**
     * [mapping] plus an `aggregate` section (a `Catalog` named `Course Catalog`, which no course
     * is), after [mutate] had its say, written to a temp file the test cleans up.
     */
    private fun aggregateSpec(mapping: Path, mutate: (JsonObject) -> Unit = {}): Path {
        val spec = JsonParser.parseString(Files.readString(mapping)).asJsonObject
        spec.add("aggregate", JsonObject().apply {
            addProperty("concept", "com.example.courses.structure.Catalog")
            addProperty("name", "Course Catalog")
            addProperty("role", "entries")
            addProperty("wrapper", "com.example.courses.structure.CourseRef")
            addProperty("referenceRole", "course")
        })
        mutate(spec)
        val file = Files.createTempFile("aggregate-map", ".json")
        generatedFiles.add(file)
        Files.writeString(file, spec.toString())
        return file
    }

    private data class PythonResult(val exitCode: Int, val output: String)

    /** Runs python3 with [args]; [stdin] is written to the process, whose stdin is closed either way. */
    private fun runPython(vararg args: String, stdin: String? = null): PythonResult {
        val process = ProcessBuilder(listOf("python3") + args).redirectErrorStream(true).start()
        process.outputStream.use { stream -> stdin?.let { stream.write(it.toByteArray(Charsets.UTF_8)) } }
        val output = process.inputStream.bufferedReader().use { it.readText() }
        assertTrue("python3 ${args.joinToString(" ")} did not finish in time", process.waitFor(60, TimeUnit.SECONDS))
        return PythonResult(process.exitValue(), output)
    }

    private companion object {
        private const val EXAMPLE_ROW_COUNT = 40

        private val BUNDLED_SCRIPTS = BundledSkillScripts.SCRIPTS
        private val SCRIPTS_WITHOUT_TOOL_DEPENDENCIES = BundledSkillScripts.SCRIPTS_WITHOUT_TOOL_DEPENDENCIES

        // Every toolset registered in META-INF/plugin.xml. Listed explicitly so that renaming a
        // toolset class breaks compilation here rather than silently shrinking the registry.
        private val TOOLSETS: List<KClass<out AbstractOps>> = listOf(
            JetBrainsMPSProjectMcpToolset::class,
            JetBrainsMPSConsoleMcpToolset::class,
            JetBrainsMPSLanguageMcpToolset::class,
            JetBrainsMPSModuleMcpToolset::class,
            JetBrainsMPSModelMcpToolset::class,
            JetBrainsMPSRootNodeMcpToolset::class,
            JetBrainsMPSNodeMcpToolset::class,
            JetBrainsMPSTypesMcpToolset::class,
            JetBrainsMPSDataflowMcpToolset::class,
            JetBrainsMPSIntentionsMcpToolset::class,
            JetBrainsMPSEditorMcpToolset::class,
            JetBrainsMPSLanguageStructureMcpToolset::class,
            JetBrainsMPSJavaMcpToolset::class,
            JetBrainsMPSRunConfigurationMcpToolset::class,
            JetBrainsMPSMigrationMcpToolset::class,
            JetBrainsMPSGenerationMcpToolset::class,
            JetBrainsMPSInitMcpToolset::class,
        )
    }
}
