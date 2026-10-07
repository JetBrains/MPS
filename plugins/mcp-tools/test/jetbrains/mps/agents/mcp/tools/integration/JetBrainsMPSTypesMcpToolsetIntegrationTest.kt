package jetbrains.mps.agents.mcp.tools.integration

import jetbrains.mps.agents.mcp.tools.*

import com.google.gson.JsonArray
import com.google.gson.JsonElement
import com.google.gson.JsonObject
import com.google.gson.JsonParser
import com.google.gson.JsonPrimitive
import jetbrains.mps.editor.runtime.impl.cellActions.CommentUtil
import jetbrains.mps.project.modules.LanguageProducer
import org.jetbrains.mps.openapi.model.SModel
import org.jetbrains.mps.openapi.persistence.PersistenceFacade
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * `mps_mcp_query_types` against BaseLanguage's lattice: `int <: long` (`int_extends_long`),
 * `String <: Object` (`subtyping_classifier`), and `int + long → long` from the overloaded
 * `PlusExpression` rules.
 */
class JetBrainsMPSTypesMcpToolsetIntegrationTest : McpIntegrationTestBase() {

    private val toolset = JetBrainsMPSTypesMcpToolset()

    @Test
    fun `IS_SUBTYPE decides on type concepts`() {
        val up = data(query(TypesQueryOperation.IS_SUBTYPE, """{"sub":${conceptOperand(INTEGER_TYPE)},"super":${conceptOperand(LONG_TYPE)}}"""))
        assertTrue("int <: long: $up", up.get("isSubtype").asBoolean)
        assertTrue("isComparable is implied by isSubtype: $up", up.get("isComparable").asBoolean)
        assertEquals("int", up.getAsJsonObject("sub").get("presentation").asString)
        assertEquals("long", up.getAsJsonObject("super").get("presentation").asString)
        val down = data(query(TypesQueryOperation.IS_SUBTYPE, """{"sub":${conceptOperand(LONG_TYPE)},"super":${conceptOperand(INTEGER_TYPE)}}"""))
        assertFalse("long is not a subtype of int: $down", down.get("isSubtype").asBoolean)
    }

    @Test
    fun `IS_SUBTYPE takes printed blueprints, stored type nodes and printed type objects`() {
        val host = createTypeHost()
        val stringType = getType(host.fieldRef("s"))
        val objectType = getType(host.fieldRef("o"))

        val byBlueprint = data(query(TypesQueryOperation.IS_SUBTYPE,
            """{"sub":{"blueprint":${stringType.get("blueprint")}},"super":{"blueprint":${objectType.get("blueprint")}}}"""))
        assertTrue("String <: Object from blueprints: $byBlueprint", byBlueprint.get("isSubtype").asBoolean)
        assertEquals("String", byBlueprint.getAsJsonObject("sub").get("presentation").asString)

        val byPrintedObject = data(query(TypesQueryOperation.IS_SUBTYPE, """{"sub":$stringType,"super":$objectType}"""))
        assertTrue("a printed type object is accepted as is: $byPrintedObject", byPrintedObject.get("isSubtype").asBoolean)

        val byTypeNode = data(query(TypesQueryOperation.IS_SUBTYPE,
            """{"sub":{"typeNodeReference":"${host.typeChildRef("s")}"},"super":{"typeNodeReference":"${host.typeChildRef("o")}"}}"""))
        assertTrue("String <: Object from stored type nodes: $byTypeNode", byTypeNode.get("isSubtype").asBoolean)
        assertNoReferenceKey(byTypeNode)

        // BaseLanguage has no rule applicable to a Type node, so a stored type has no type of its own.
        val noType = JsonParser.parseString(query(TypesQueryOperation.IS_SUBTYPE,
            """{"sub":{"nodeReference":"${host.typeChildRef("s")}"},"super":{"typeNodeReference":"${host.typeChildRef("o")}"}}""")).asJsonObject
        assertEquals("INVALID_REQUEST", noType.get("code").asString)
        assertTrue(noType.get("error").asString, noType.get("error").asString.contains("has no type"))
    }

    @Test
    fun `type operands that cannot name the type exactly are rejected`() {
        val host = createTypeHost()
        val blueprint = getType(host.fieldRef("s")).getAsJsonObject("blueprint").deepCopy()
        blueprint.remove("references")
        val stripped = JsonParser.parseString(query(TypesQueryOperation.SUPERTYPES, """{"type":{"blueprint":$blueprint}}""")).asJsonObject
        assertEquals("a ClassifierType without its classifier: $stripped", "INVALID_REQUEST", stripped.get("code").asString)
        assertTrue(stripped.get("error").asString, stripped.get("error").asString.contains("'classifier'"))

        val bareClassifierType = JsonParser.parseString(query(TypesQueryOperation.SUPERTYPES, """{"type":${conceptOperand(CLASSIFIER_TYPE)}}""")).asJsonObject
        assertEquals("INVALID_REQUEST", bareClassifierType.get("code").asString)
        assertTrue(bareClassifierType.get("error").asString, bareClassifierType.get("error").asString.contains("'classifier'"))

        val twoKeys = JsonParser.parseString(query(TypesQueryOperation.SUPERTYPES,
            """{"type":{"typeConceptRef":"$INTEGER_TYPE","nodeReference":"${host.fieldRef("i")}"}}""")).asJsonObject
        assertEquals("INVALID_REQUEST", twoKeys.get("code").asString)
        assertTrue(twoKeys.get("error").asString, twoKeys.get("error").asString.contains("parameters.type"))
    }

    @Test
    fun `SUPERTYPES walks the lattice and reports a depth cap`() {
        val response = query(TypesQueryOperation.SUPERTYPES, """{"type":${conceptOperand(INTEGER_TYPE)}}""")
        val envelope = JsonParser.parseString(response).asJsonObject
        assertFalse("int's lattice fits the default depth: $response", envelope.has("details"))
        val result = data(response)
        val transitive = result.getAsJsonArray("transitive").map { it.asJsonObject }
        assertTrue("long is a supertype of int: $result", transitive.any { it.getAsJsonObject("type").get("presentation").asString == "long" })
        assertTrue("immediate holds the depth-1 types: $result", result.getAsJsonArray("immediate").size() > 0)

        val capped = JsonParser.parseString(query(TypesQueryOperation.SUPERTYPES, """{"type":${conceptOperand(INTEGER_TYPE)},"depth":1}""")).asJsonObject
        assertTrue("int has supertypes beyond depth 1: $capped", capped.getAsJsonObject("details").get("truncated").asBoolean)
        assertTrue(payloadObjectFromOkData(capped.toString()).getAsJsonArray("transitive").all { it.asJsonObject.get("depth").asInt == 1 })
    }

    @Test
    fun `COMMON_SUPERTYPE of int and long is long`() {
        val result = data(query(TypesQueryOperation.COMMON_SUPERTYPE, """{"types":[${conceptOperand(INTEGER_TYPE)},${conceptOperand(LONG_TYPE)}]}"""))
        assertEquals(listOf("long"), result.getAsJsonArray("result").map { it.asJsonObject.get("presentation").asString })
        assertEquals(2, result.getAsJsonArray("types").size())
    }

    @Test
    fun `COERCE views a List type as a ClassifierType`() {
        val host = createTypeHost()
        val coerced = data(query(TypesQueryOperation.COERCE,
            """{"type":{"nodeReference":"${host.fieldRef("list")}"},"conceptRef":"$CLASSIFIER_TYPE"}""")).getAsJsonObject("coerced")
        assertNotNull(coerced)
        val blueprint = coerced.getAsJsonObject("blueprint")
        val classifier = blueprint.getAsJsonArray("references").map { it.asJsonObject }.single { it.get("role").asString == "classifier" }
        val target = readOnRepo {
            PersistenceFacade.getInstance().createNodeReference(classifier.get("targetReference").asString).resolve(myProject.repository)?.name
        }
        assertEquals("List", target)
        val parameters = blueprint.getAsJsonArray("children").map { it.asJsonObject }.single { it.get("role").asString == "parameter" }
        assertEquals(1, parameters.getAsJsonArray("nodes").size())

        val toInterface = JsonParser.parseString(query(TypesQueryOperation.COERCE,
            """{"type":{"nodeReference":"${host.fieldRef("list")}"},"conceptRef":"jetbrains.mps.lang.core.structure.INamedConcept"}""")).asJsonObject
        assertEquals("INVALID_REQUEST", toInterface.get("code").asString)
    }

    @Test
    fun `OPERATION_TYPE answers int plus long from a node and from a concept`() {
        val host = createTypeHost()
        val operands = """"left":${conceptOperand(INTEGER_TYPE)},"right":${conceptOperand(LONG_TYPE)}"""
        val byNode = JsonParser.parseString(query(TypesQueryOperation.OPERATION_TYPE, """{"operatorNode":"${host.plusRef}",$operands}""")).asJsonObject
        assertEquals("long", payloadObjectFromOkData(byNode.toString()).getAsJsonObject("type").get("presentation").asString)
        assertFalse("an existing operator node needs no warning: $byNode", byNode.has("warnings"))

        val byConcept = JsonParser.parseString(query(TypesQueryOperation.OPERATION_TYPE, """{"operatorConceptRef":"$PLUS_EXPRESSION",$operands}""")).asJsonObject
        assertEquals("long", payloadObjectFromOkData(byConcept.toString()).getAsJsonObject("type").get("presentation").asString)
        assertTrue("a detached operator is flagged: $byConcept",
            byConcept.getAsJsonArray("warnings").any { it.asString.contains("detached instance") })
    }

    @Test
    fun `GET_EXPECTED_TYPE answers the type the context requires`() {
        val host = createTypeHost()
        // `long l = 2L`: typeof_VariableDeclaration bounds the initializer by the declared type.
        assertEquals("long", getExpectedType(host.initializerRef("l"))?.get("presentation")?.asString)
        // `Object o = s`: the reference is a String, the slot requires an Object.
        assertEquals("String", getType(host.initializerRef("o")).get("presentation").asString)
        val expected = checkNotNull(getExpectedType(host.initializerRef("o")))
        assertEquals("Object", expected.get("presentation").asString)
        assertNoReferenceKey(expected)
        // `byte b = 1`: the rule recognises the literal as a valid byte and bounds it by int instead.
        assertEquals("int", getExpectedType(host.initializerRef("b"))?.get("presentation")?.asString)
        // A root has no context; no rule of a FieldDeclaration bounds its `type` child.
        assertNull(getExpectedType(host.rootRef))
        assertNull(getExpectedType(host.typeChildRef("l")))
    }

    @Test
    fun `EXPLAIN_TYPE traces 1 + 2 through the rules that typed it`() {
        val host = createTypeHost()
        val explained = data(query(TypesQueryOperation.EXPLAIN_TYPE, """{"nodeReference":"${host.plusRef}"}"""))
        assertEquals("IntegerType", explained.getAsJsonObject("type").get("concept").asString)
        val entries = traceEntries(explained)
        assertTrue("a non-empty trace: $explained", entries.isNotEmpty())
        assertTrue("the plus expression's type assignment is traced: $explained",
            entries.any { it.get("kind").asString == "type_assigned" && it.get("source")?.asString == host.plusRef })
        val unrelated = setOf(host.initializerRef("s"), host.fieldRef("o"), host.initializerRef("l"))
        assertTrue("the other fields lie outside the slice: $explained", entries.none { it.get("source")?.asString in unrelated })
        val rules = entries.mapNotNull { it.getAsJsonObject("rule") }
        assertTrue("some entry names a BaseLanguage typesystem rule: $explained", rules.any { rule ->
            readOnRepo {
                val facade = PersistenceFacade.getInstance()
                val ruleRoot = rule.get("ruleReference")?.takeUnless { it.isJsonNull }
                    ?.let { facade.createNodeReference(it.asString).resolve(myProject.repository) }
                val statement = facade.createNodeReference(rule.get("statement").asString).resolve(myProject.repository)
                ruleRoot != null && ruleRoot.parent == null && statement?.containingRoot == ruleRoot &&
                    ruleRoot.model?.name?.longName == "jetbrains.mps.baseLanguage.typesystem"
            }
        })
        // The type assignment is a consequence of a rule application; eliding that must hoist, not drop, it.
        assertTrue("rule applications are elided by default: $explained", entries.none { it.get("presentation").asString.contains(APPLIED_TO_NODE) })
        val withRules = traceEntries(data(query(TypesQueryOperation.EXPLAIN_TYPE, """{"nodeReference":"${host.plusRef}","includeApplyRule":true}""")))
        assertTrue("includeApplyRule keeps them: $withRules", withRules.any { it.get("presentation").asString.contains(APPLIED_TO_NODE) })
        assertTrue("a rule application carries no rule reference of its own",
            withRules.filter { it.get("presentation").asString.contains(APPLIED_TO_NODE) }.none { it.has("rule") })

        // The root check expands no type itself; the answer must still be GET_TYPE's fully instantiated List<string>.
        val explainedGeneric = data(query(TypesQueryOperation.EXPLAIN_TYPE, """{"nodeReference":"${host.initializerRef("w")}"}"""))
        val generic = explainedGeneric.getAsJsonObject("type")
        assertFalse("$generic", generic.has("hasTypeVariables"))
        assertEquals(getType(host.initializerRef("w")).get("presentation").asString, generic.get("presentation").asString)
        // The call's type is solved to a List<v> holding a copy of T's variable; the engine identifies variables by
        // name, so the trace must also show what bound v itself, not only the List<v> entries.
        val genericEntries = traceEntries(explainedGeneric).map { it.get("presentation").asString }
        val variable = genericEntries.firstNotNullOfOrNull { Regex("List<(\\w+)>").find(it)?.groupValues?.get(1) }
        assertNotNull("the call is solved through a List<variable>: $genericEntries", variable)
        assertTrue("the equation solving $variable is traced: $genericEntries", genericEntries.any { it.startsWith("$variable = ") })

        val tooLarge = JsonParser.parseString(query(TypesQueryOperation.EXPLAIN_TYPE, """{"nodeReference":"${host.plusRef}","maxRootNodes":1}""")).asJsonObject
        assertEquals("$tooLarge", "INVALID_REQUEST", tooLarge.get("code").asString)
        assertTrue(tooLarge.get("error").asString, tooLarge.get("error").asString.contains("maxRootNodes"))

        commentOut(host.fieldRef("l"))
        val commented = JsonParser.parseString(query(TypesQueryOperation.EXPLAIN_TYPE, """{"nodeReference":"${host.initializerRef("l")}"}""")).asJsonObject
        assertTrue("a commented-out node is flagged: $commented",
            commented.getAsJsonArray("warnings")?.any { it.asString.contains("IDontApplyTypesystemRules") } == true)
        val commentedData = payloadObjectFromOkData(commented.toString())
        assertTrue("$commented", commentedData.get("type").isJsonNull)
        assertEquals("$commented", 0, commentedData.getAsJsonArray("trace").size())
    }

    @Test
    fun `EXPLAIN_TYPE marks the path to a type error`() {
        val solution = createSolution()
        val model = createModel(solution, "${solution.moduleName}.code")
        parseClass(model, BAD_CODE)
        val fieldRef = readOnRepo {
            val field = model.rootNodes.single { it.name == "Bad" }.children.single { it.concept.name == "FieldDeclaration" && it.name == "x" }
            PersistenceFacade.getInstance().asString(field.reference)
        }
        val trace = data(query(TypesQueryOperation.EXPLAIN_TYPE, """{"nodeReference":"$fieldRef"}""")).getAsJsonArray("trace")
        val errors = traceEntries(trace).filter { it.get("kind").asString == "error_added" }
        assertTrue("the type error of x is traced: $trace", errors.isNotEmpty())
        assertTrue("$errors", errors.all { it.get("error")?.asBoolean == true && it.has("rule") })
        assertTrue("$errors", errors.any { it.getAsJsonObject("rule").get("rule").asString == "typeof_VariableDeclaration" })
        for (entry in traceEntries(trace)) {
            val below = entry.getAsJsonArray("consequences")?.any { it.asJsonObject.has("error") } == true
            assertTrue("an entry above an error is marked too: $entry", !below || entry.get("error")?.asBoolean == true)
        }
    }

    @Test
    fun `the strong variants and the scalar and shape checks`() {
        val strongSupertypes = data(query(TypesQueryOperation.SUPERTYPES, """{"type":${conceptOperand(INTEGER_TYPE)},"weak":false}"""))
        assertTrue("strong subtyping still widens int to long: $strongSupertypes",
            strongSupertypes.getAsJsonArray("transitive").any { it.asJsonObject.getAsJsonObject("type").get("presentation").asString == "long" })
        val strongCoerce = data(query(TypesQueryOperation.COERCE, """{"type":${conceptOperand(INTEGER_TYPE)},"conceptRef":"$LONG_TYPE","strong":true}"""))
        assertEquals("long", strongCoerce.getAsJsonObject("coerced").get("presentation").asString)

        val rejected = listOf(
            TypesQueryOperation.SUPERTYPES to """{"type":${conceptOperand(INTEGER_TYPE)},"depth":0}""",
            TypesQueryOperation.SUPERTYPES to """{"type":${conceptOperand(INTEGER_TYPE)},"depth":33}""",
            TypesQueryOperation.COMMON_SUPERTYPE to """{"types":[${conceptOperand(INTEGER_TYPE)}]}""",
            TypesQueryOperation.EXPLAIN_TYPE to """{"nodeReference":"$DUMMY_NODE_REF","maxRootNodes":0}""",
            TypesQueryOperation.OPERATION_TYPE to
                """{"operatorNode":"$DUMMY_NODE_REF","operatorConceptRef":"$PLUS_EXPRESSION","left":${conceptOperand(INTEGER_TYPE)},"right":${conceptOperand(LONG_TYPE)}}""",
        )
        for ((operation, parameters) in rejected) {
            val envelope = JsonParser.parseString(query(operation, parameters)).asJsonObject
            assertEquals("$operation $parameters: $envelope", "INVALID_REQUEST", envelope.get("code").asString)
        }
    }

    @Test
    fun `the registered tool takes parameters as a real JSON object and names an unknown operation`() {
        fun call(operation: String, parameters: String): JsonObject = JsonParser.parseString(
            callThroughBridge(
                toolset, "mps_mcp_query_types",
                mapOf(
                    "operation" to kotlinx.serialization.json.JsonPrimitive(operation),
                    "parameters" to kotlinx.serialization.json.Json.parseToJsonElement(parameters),
                ),
            )
        ).asJsonObject
        val parameters = """{"sub":${conceptOperand(INTEGER_TYPE)},"super":${conceptOperand(LONG_TYPE)}}"""
        val ok = call("is_subtype", parameters)
        assertTrue("$ok", payloadObjectFromOkData(ok.toString()).get("isSubtype").asBoolean)
        val unknown = call("IS_SUPERTYPE", parameters)
        assertEquals("INVALID_REQUEST", unknown.get("code").asString)
        assertTrue(unknown.get("error").asString, unknown.get("error").asString.contains("IS_SUBTYPE"))
    }

    @Test
    fun `every types operation rejects every absent required key in one rejection`() {
        val operand = """{"typeNodeReference":"$DUMMY_NODE_REF"}"""
        val queries = mapOf(
            TypesQueryOperation.IS_SUBTYPE to (listOf("sub", "super") to """{"sub":$operand,"super":$operand}"""),
            TypesQueryOperation.SUPERTYPES to (listOf("type") to """{"type":$operand}"""),
            TypesQueryOperation.COMMON_SUPERTYPE to (listOf("types") to """{"types":[$operand,$operand]}"""),
            TypesQueryOperation.COERCE to (listOf("type", "conceptRef") to """{"type":$operand,"conceptRef":"$CLASSIFIER_TYPE"}"""),
            TypesQueryOperation.OPERATION_TYPE to (listOf("one of operatorNode/operatorConceptRef", "left", "right") to
                """{"operatorNode":"$DUMMY_NODE_REF","left":$operand,"right":$operand}"""),
            TypesQueryOperation.EXPLAIN_TYPE to (listOf("nodeReference") to """{"nodeReference":"$DUMMY_NODE_REF"}"""),
        )
        assertEquals(TypesQueryOperation.entries.toSet(), queries.keys)
        for ((operation, expectation) in queries) {
            val (missing, onlyRequired) = expectation
            assertMissingParameterKeys(query(operation, "{}"), missing)
            val response = query(operation, onlyRequired)
            assertPastMissingParameterKeys(operation.name, response)
            assertEquals("$operation: $response", "NOT_FOUND", JsonParser.parseString(response).asJsonObject.get("code").asString)
        }
    }

    // Operands are resolved inside the EDT read action; a rejection thrown there must not reach
    // ActionDispatcher, which would log it as a spurious "Action dispatch failed".
    @Test
    fun `a rejected operand is not logged as an action-dispatch failure`() {
        val rejected = listOf(
            TypesQueryOperation.SUPERTYPES to """{"type":{"typeNodeReference":"$DUMMY_NODE_REF"}}""" to "NOT_FOUND",
            TypesQueryOperation.SUPERTYPES to """{"type":${conceptOperand(CLASSIFIER_TYPE)}}""" to "INVALID_REQUEST",
        )
        for ((call, code) in rejected) {
            val (operation, parameters) = call
            val (response, messages) = captureLogMessages { query(operation, parameters) }
            assertEquals("$operation $parameters: $response", code, JsonParser.parseString(response).asJsonObject.get("code").asString)
            assertTrue(
                "a rejected operand must not log an action-dispatch failure: $messages",
                messages.none { it.contains("Action dispatch failed") || it.contains("Unexpected failure in MCP tool") },
            )
        }
    }

    @Test
    fun `a type error names the rule that reported it, and a commented-out subtree is counted as unchecked`() {
        val solution = createSolution()
        val model = createModel(solution, "${solution.moduleName}.code")
        parseClass(model, BAD_CODE)
        val (rootRef, fieldRefs) = readOnRepo {
            val root = model.rootNodes.single { it.name == "Bad" }
            val fields = root.children.filter { it.concept.name == "FieldDeclaration" }.associateBy { checkNotNull(it.name) }
            val facade = PersistenceFacade.getInstance()
            facade.asString(root.reference) to fields.mapValues { (_, field) -> facade.asString(field.reference) }
        }

        val problems = payloadArrayFromOkData(check(rootRef)).flatMap { node -> node.asJsonObject.getAsJsonArray("problems").map { it.asJsonObject } }
        val errors = problems.filter { it.get("severity").asString == "error" }
        assertEquals("one type error per field: $problems", 2, errors.size)
        for (problem in errors) {
            assertTrue("a type error carries the reporting rule: $problem", problem.has("rules"))
            val rule = problem.getAsJsonArray("rules")[0].asJsonObject
            val ruleModel = readOnRepo {
                PersistenceFacade.getInstance().createNodeReference(rule.get("ruleReference").asString).resolve(myProject.repository)?.model?.name?.longName
            }
            assertEquals("$rule", "jetbrains.mps.baseLanguage.typesystem", ruleModel)
        }
        assertRulesResolve(problems)

        // x stays an error until commented out; the remaining report counts the skipped subtree.
        val commentedX = commentOut(fieldRefs.getValue("x"))
        val oneLeft = JsonParser.parseString(check(rootRef)).asJsonObject
        assertEquals("$oneLeft", 1, oneLeft.getAsJsonObject("details").get("uncheckedSubtrees").asInt)
        assertFalse("a report with problems has no unchecked warning: $oneLeft", oneLeft.has("warnings"))

        commentOut(fieldRefs.getValue("y"))
        val clean = JsonParser.parseString(check(rootRef)).asJsonObject
        assertEquals(
            "$clean",
            JsonPrimitive("no problems found in checked nodes (2 subtree(s) unchecked: one or more typesystem, constraints, scope or target-concept checks were skipped)"),
            clean.get("data"),
        )
        assertEquals("$clean", 2, clean.getAsJsonObject("details").get("uncheckedSubtrees").asInt)
        assertTrue("$clean", clean.getAsJsonArray("warnings").any { it.asString.startsWith("2 subtree(s) marked IDontApplyTypesystemRules") })

        val modelRef = modelRefOf(model)
        val cleanModel = JsonParser.parseString(check(modelRef)).asJsonObject
        assertEquals(
            "$cleanModel",
            JsonPrimitive("no problems found in checked nodes (2 subtree(s) unchecked: one or more typesystem, constraints, scope or target-concept checks were skipped)"),
            cleanModel.get("data"),
        )
        assertEquals("$cleanModel", 2, cleanModel.getAsJsonObject("details").get("uncheckedSubtrees").asInt)
        assertTrue("$cleanModel", cleanModel.getAsJsonArray("warnings").any { it.asString.contains("were not type- or constraint-checked") })
        val row = payloadArrayFromOkData(check(modelRef, perRoot = true)).single().asJsonObject
        assertEquals("$row", 0, row.get("errors").asInt)
        assertEquals("$row", 2, row.get("uncheckedSubtrees").asInt)
        val module = JsonParser.parseString(check(checkNotNull(solution.moduleName), perRoot = true)).asJsonObject
        assertEquals("$module", 2, module.getAsJsonObject("details").get("uncheckedSubtrees").asInt)
        val modelRow = payloadArrayFromOkData(module.toString()).map { it.asJsonObject }.single { it.get("model").asString == modelRef }
        assertEquals("$modelRow", 2, modelRow.get("uncheckedSubtrees").asInt)

        // A comment nested in a commented-out subtree is part of that subtree.
        commentOut(readOnRepo {
            val x = checkNotNull(PersistenceFacade.getInstance().createNodeReference(commentedX).resolve(myProject.repository))
                .children.single { it.concept.name == "FieldDeclaration" }
            PersistenceFacade.getInstance().asString(x.children.single { it.containmentLink?.name == "initializer" }.reference)
        })
        val nested = JsonParser.parseString(check(rootRef)).asJsonObject
        assertEquals("$nested", 2, nested.getAsJsonObject("details").get("uncheckedSubtrees").asInt)
    }

    @Test
    fun `a constraints problem names the constraints root that reported it`() {
        // An array literal may only initialize a variable of array type (ArrayLiteral_Constraints' canBeChild).
        val solution = createSolution()
        val model = createModel(solution, "${solution.moduleName}.code")
        parseClass(model, CONSTRAINED_CODE)
        var rootRef: String? = null
        executeCommand {
            val root = model.rootNodes.single { it.name == "Constrained" }
            val fields = root.children.filter { it.concept.name == "FieldDeclaration" }.associateBy { checkNotNull(it.name) }
            val literal = fields.getValue("a").children.single { it.containmentLink?.name == "initializer" }
            assertEquals("ArrayLiteral", literal.concept.name)
            val b = fields.getValue("b")
            val initializer = b.children.single { it.containmentLink?.name == "initializer" }
            val link = checkNotNull(initializer.containmentLink)
            b.removeChild(initializer)
            literal.parent!!.removeChild(literal)
            b.addChild(link, literal)
            rootRef = PersistenceFacade.getInstance().asString(root.reference)
        }

        assertRuleReported(checkNotNull(rootRef), "jetbrains.mps.baseLanguage.constraints", "ArrayLiteral_Constraints")
    }

    @Test
    fun `a scope problem names the constraints root whose search scope rejected the reference`() {
        // `extends` is pointed at a concept of a second language the test language's structure model does not import.
        val derivedRef = createConceptRoot("ScopeDerived")
        val otherLangName = "test.otherlang${System.nanoTime()}"
        val otherDir = createDirInProject(otherLangName)
        var otherStructureModel: SModel? = null
        executeCommand {
            otherStructureModel = LanguageProducer(myProject).withGenerator(false).create(otherLangName, otherDir)
                .models.single { it.name.longName.endsWith(".structure") }
        }
        val created = runTool(JetBrainsMPSLanguageStructureMcpToolset()) {
            it.mps_mcp_alter_structure(
                MPSStructureAlterOperation.CREATE_CONCEPTS,
                """{ "structureModelRef": "${modelRefOf(checkNotNull(otherStructureModel))}", "conceptsJson": [ { "name": "OutOfScopeBase" } ] }""",
            )
        }
        assertTrue("setup: $created", JsonParser.parseString(created).asJsonObject.get("ok").asBoolean)
        executeCommand {
            val derived = checkNotNull(PersistenceFacade.getInstance().createNodeReference(derivedRef).resolve(myProject.repository))
            val extends = derived.concept.referenceLinks.single { it.name == "extends" }
            derived.setReferenceTarget(extends, checkNotNull(otherStructureModel).rootNodes.single { it.name == "OutOfScopeBase" })
        }

        assertRuleReported(derivedRef, "jetbrains.mps.lang.structure.constraints", "ConceptDeclaration_Constraints")
    }

    /** Checks [rootRef], expects a problem whose `rules` name the root [rule] of model [ruleModel], and that every `rules` entry resolves. */
    private fun assertRuleReported(rootRef: String, ruleModel: String, rule: String) {
        val response = check(rootRef)
        assertFalse("the root has problems: $response", JsonParser.parseString(response).asJsonObject.get("data") == JsonPrimitive("no problems found"))
        val problems = allProblems(response)
        val rules = problems.flatMap { problem -> problem.getAsJsonArray("rules")?.map { it.asJsonObject }.orEmpty() }.filter { entry ->
            readOnRepo {
                PersistenceFacade.getInstance().createNodeReference(entry.get("ruleReference").asString).resolve(myProject.repository)
                    ?.model?.name?.longName == ruleModel
            }
        }
        assertTrue("a problem is reported by a root of $ruleModel: $problems", rules.isNotEmpty())
        assertTrue("$rules", rules.any { it.get("rule").asString == rule })
        assertRulesResolve(problems)
    }

    /** Every problem of a check report: each node's own, and those filed under its `properties[]` and `references[]`. */
    private fun allProblems(response: String): List<JsonObject> = payloadArrayFromOkData(response).map { it.asJsonObject }.flatMap { node ->
        val features = listOf("properties", "references").flatMap { key -> node.getAsJsonArray(key)?.map { it.asJsonObject }.orEmpty() }
        (listOf(node) + features).flatMap { holder -> holder.getAsJsonArray("problems")?.map { it.asJsonObject }.orEmpty() }
    }

    /** Every `rules` entry names a rule root that resolves, with a non-null `rule` and the statement inside it. */
    private fun assertRulesResolve(problems: List<JsonObject>) {
        for (rule in problems.flatMap { problem -> problem.getAsJsonArray("rules")?.map { it.asJsonObject }.orEmpty() }) {
            readOnRepo {
                val facade = PersistenceFacade.getInstance()
                val ruleRoot = checkNotNull(facade.createNodeReference(rule.get("ruleReference").asString).resolve(myProject.repository)) { "$rule" }
                assertTrue("$rule", ruleRoot.parent == null)
                assertFalse("rule names the root: $rule", rule.get("rule").isJsonNull)
                val statement = checkNotNull(facade.createNodeReference(rule.get("statement").asString).resolve(myProject.repository)) { "$rule" }
                assertEquals("the statement lies inside the rule: $rule", ruleRoot, statement.containingRoot)
            }
        }
    }

    /** Every entry of an EXPLAIN_TYPE `data`'s trace, consequences included, depth-first. */
    private fun traceEntries(explained: JsonObject): List<JsonObject> = traceEntries(explained.getAsJsonArray("trace"))

    private fun traceEntries(trace: JsonArray): List<JsonObject> = trace.map { it.asJsonObject }.flatMap { entry ->
        listOf(entry) + (entry.getAsJsonArray("consequences")?.let(::traceEntries) ?: emptyList())
    }

    private fun check(reference: String, perRoot: Boolean = false): String =
        runTool(JetBrainsMPSNodeMcpToolset()) { it.mps_mcp_check_root_node_problems(reference, perRoot = perRoot) }

    /** Comments [nodeRef] out and answers the reference of the comment attribute now holding it. */
    private fun commentOut(nodeRef: String): String {
        var attribute: String? = null
        executeCommand {
            val node = checkNotNull(PersistenceFacade.getInstance().createNodeReference(nodeRef).resolve(myProject.repository))
            attribute = PersistenceFacade.getInstance().asString(CommentUtil.commentOut(node).reference)
        }
        return checkNotNull(attribute)
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

    private fun query(operation: TypesQueryOperation, parameters: String): String =
        runTool(toolset) { it.mps_mcp_query_types(operation, parameters) }

    private fun data(response: String): JsonObject = payloadObjectFromOkData(response)

    private fun conceptOperand(conceptFqName: String) = """{"typeConceptRef":"$conceptFqName"}"""

    private fun getType(nodeRef: String): JsonObject {
        val response = runTool(JetBrainsMPSNodeMcpToolset()) {
            it.mps_mcp_query_nodes(MPSQueryOperation.GET_TYPE, """{ "nodeReference": "$nodeRef" }""")
        }
        return payloadObjectFromOkData(response)
    }

    /** `mps_mcp_query_nodes` GET_EXPECTED_TYPE's `data`, or null when it answers `data: null`. */
    private fun getExpectedType(nodeRef: String): JsonObject? {
        val response = runTool(JetBrainsMPSNodeMcpToolset()) {
            it.mps_mcp_query_nodes(MPSQueryOperation.GET_EXPECTED_TYPE, """{ "nodeReference": "$nodeRef" }""")
        }
        val envelope = JsonParser.parseString(response).asJsonObject
        assertTrue("expected ok envelope: $response", envelope.get("ok").asBoolean)
        return if (envelope.get("data").isJsonNull) null else payloadObjectFromOkData(response)
    }

    /** The root's reference and, per field name, the field's, its `type` child's and its `initializer` child's. */
    private class TypeHost(
        val rootRef: String,
        private val fieldRefs: Map<String, String>,
        private val typeChildRefs: Map<String, String>,
        private val initializerRefs: Map<String, String>,
        val plusRef: String,
    ) {
        fun fieldRef(name: String): String = fieldRefs.getValue(name)

        fun typeChildRef(name: String): String = typeChildRefs.getValue(name)

        fun initializerRef(name: String): String = initializerRefs.getValue(name)
    }

    /** [TYPE_HOST_CODE], parsed into a fresh solution's model. */
    private fun createTypeHost(): TypeHost {
        val solution = createSolution()
        val model = createModel(solution, "${solution.moduleName}.code")
        parseClass(model, TYPE_HOST_CODE)
        return readOnRepo {
            val root = model.rootNodes.single { it.name == "TypeHost" }
            val fields = root.children.filter { it.concept.name == "FieldDeclaration" }.associateBy { checkNotNull(it.name) }
            val initializers = fields.mapValues { (_, field) -> field.children.single { it.containmentLink?.name == "initializer" } }
            val plus = initializers.getValue("i")
            assertEquals("PlusExpression", plus.concept.name)
            val facade = PersistenceFacade.getInstance()
            TypeHost(
                facade.asString(root.reference),
                fields.mapValues { (_, field) -> facade.asString(field.reference) },
                fields.mapValues { (_, field) -> facade.asString(field.children.single { it.containmentLink?.name == "type" }.reference) },
                initializers.mapValues { (_, initializer) -> facade.asString(initializer.reference) },
                facade.asString(plus.reference),
            )
        }
    }

    /** Type answers carry no node record `reference`, even for a stored type node. */
    private fun assertNoReferenceKey(element: JsonElement) {
        when {
            element.isJsonObject -> element.asJsonObject.entrySet().forEach { (key, value) ->
                assertFalse("unexpected node reference in $element", key == "reference")
                assertNoReferenceKey(value)
            }
            element.isJsonArray -> element.asJsonArray.forEach(::assertNoReferenceKey)
        }
    }

    private companion object {
        const val TYPE_HOST_CODE =
            "class TypeHost { int i = 1 + 2; long l = 2L; String s = \\\"\\\"; Object o = s; java.util.List<String> list = null; byte b = 1; " +
                "static <T> java.util.List<T> wrap(T t) { return null; } java.util.List<String> w = wrap(\\\"a\\\"); }"
        const val BAD_CODE = "public class Bad { int x = \\\"s\\\"; int y = \\\"t\\\"; }"
        const val CONSTRAINED_CODE = "public class Constrained { public int[] a = {1}; public int b = 0; }"
        const val INTEGER_TYPE = "jetbrains.mps.baseLanguage.structure.IntegerType"
        const val LONG_TYPE = "jetbrains.mps.baseLanguage.structure.LongType"
        const val CLASSIFIER_TYPE = "jetbrains.mps.baseLanguage.structure.ClassifierType"
        const val PLUS_EXPRESSION = "jetbrains.mps.baseLanguage.structure.PlusExpression"
        const val DUMMY_NODE_REF = "r:00000000-0000-0000-0000-000000000000(dummy)/1"
        /** The presentation of a rule application: `<rule> applied to node "<node>"`. */
        const val APPLIED_TO_NODE = " applied to node \""
    }
}
