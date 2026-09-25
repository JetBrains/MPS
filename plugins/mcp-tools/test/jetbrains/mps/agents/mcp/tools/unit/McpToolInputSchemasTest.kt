package jetbrains.mps.agents.mcp.tools.unit

import jetbrains.mps.agents.mcp.tools.common.*
import jetbrains.mps.agents.mcp.tools.GET_ASSIGNABLE_REFERENCES_KEYS
import jetbrains.mps.agents.mcp.tools.references.GetAssignableReferencesRequest

import com.google.gson.JsonObject
import com.google.gson.JsonParser
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Assert.fail
import org.junit.Test
import java.lang.reflect.InvocationTargetException
import kotlin.reflect.full.primaryConstructor

/**
 * Unit tests for the pure input-schema helpers in `McpToolInputSchemas.kt`.
 *
 * Complements the schema validation cases already exercised in
 * [AbstractOpsPropertyProblemsTest] (concept properties, child role/target,
 * reference target, enum array, enum value name, malformed Java insert object,
 * unknown insert mode, wrong position type) by covering:
 *
 * - happy-path parsing for [jetbrains.mps.agents.mcp.tools.parseStructureConceptSpecs],
 *   [jetbrains.mps.agents.mcp.tools.parseStructureInterfaceConceptSpecs],
 *   [jetbrains.mps.agents.mcp.tools.parseEnumValueSpecs] and
 *   [jetbrains.mps.agents.mcp.tools.parseJavaParseInsertRequest];
 * - the previously untested [jetbrains.mps.agents.mcp.tools.parseStructureInterfaceConceptSpecs]
 *   in both happy-path and error scenarios;
 * - mode-specific required-field validation in `parseJavaParseInsertRequest`
 *   (root/child/replace);
 * - `featureKind` rejection (`CLASS_STUB`, unknown text);
 * - the `code` length cap;
 * - the `contextNodeRef` requirement for member feature kinds;
 * - JSON-syntax failures producing `ToolInputJsonException` rather than schema
 *   validation errors, which keeps the public error code mapping stable.
 *
 * The tests reach the production functions through reflection because the
 * `mcp-tools` test sources are compiled in a way that does not put the main
 * `McpToolInputSchemasKt` class on the test compile classpath; the existing
 * `AbstractOpsPropertyProblemsTest` uses the same pattern.
 */
class McpToolInputSchemasTest {

    // ---- parseStructureConceptSpecs ----

    @Test
    fun structureConceptParsesMinimalEntry() {
        val specs = parseStructureConceptSpecs("""[{"name":"Foo"}]""", "conceptsJson")

        assertEquals(1, specs.size)
        val spec = specs[0]
        assertEquals("Foo", read(spec, "getName"))
        assertEquals(false, read(spec, "isAbstract"))
        assertEquals(false, read(spec, "getRootable"))
        assertTrue((read(spec, "getProperties") as List<*>).isEmpty())
        assertTrue((read(spec, "getChildren") as List<*>).isEmpty())
        assertTrue((read(spec, "getReferences") as List<*>).isEmpty())
        assertTrue((read(spec, "getImplementsRefs") as List<*>).isEmpty())
        assertNull(read(spec, "getExtendsRef"))
    }

    @Test
    fun structureConceptParsesAliasedVirtualPackage() {
        val specs = parseStructureConceptSpecs(
            """[{"name":"Foo","virtual package":"a.b"}]""",
            "conceptsJson",
        )

        assertEquals("a.b", read(specs[0], "getVirtualPackage"))
    }

    @Test
    fun structureConceptParsesImplementsAsSingleStringOrList() {
        val single = parseStructureConceptSpecs(
            """[{"name":"Foo","implements":"some.iface"}]""",
            "conceptsJson",
        )
        val multiple = parseStructureConceptSpecs(
            """[{"name":"Foo","implements":["a.iface","b.iface"]}]""",
            "conceptsJson",
        )

        assertEquals(listOf("some.iface"), read(single[0], "getImplementsRefs"))
        assertEquals(listOf("a.iface", "b.iface"), read(multiple[0], "getImplementsRefs"))
    }

    @Test
    fun structureConceptRejectsBlankInput() {
        assertSchemaFailure("conceptsJson must not be blank") {
            parseStructureConceptSpecs("   ", "conceptsJson")
        }
    }

    @Test
    fun structureConceptRejectsTopLevelObject() {
        assertSchemaFailure("conceptsJson must be a JSON array") {
            parseStructureConceptSpecs("""{"name":"Foo"}""", "conceptsJson")
        }
    }

    @Test
    fun structureConceptRejectsInvalidJsonSyntax() {
        val message = catchInvalidJson { parseStructureConceptSpecs("[{not json", "conceptsJson") }

        assertTrue(
            "Expected message to start with 'Invalid JSON for conceptsJson' but was: $message",
            message.startsWith("Invalid JSON for conceptsJson"),
        )
    }

    @Test
    fun structureConceptRejectsPropertyEntryMissingName() {
        assertSchemaFailure("Missing 'conceptsJson[0].properties[0].name'") {
            parseStructureConceptSpecs(
                """[{"name":"Foo","properties":[{"type":"string"}]}]""",
                "conceptsJson",
            )
        }
    }

    @Test
    fun structureConceptRejectsLinksTopLevelObject() {
        assertSchemaFailure("'conceptsJson[0].references' must be an array") {
            parseStructureConceptSpecs("""[{"name":"Foo","references":{}}]""", "conceptsJson")
        }
    }

    @Test
    fun structureConceptRejectsBlankImplementsEntry() {
        assertSchemaFailure("'conceptsJson[0].implements[1]' must not be blank") {
            parseStructureConceptSpecs(
                """[{"name":"Foo","implements":["a.iface","   "]}]""",
                "conceptsJson",
            )
        }
    }

    @Test
    fun structureConceptParsesAllOptionalFields() {
        val specs = parseStructureConceptSpecs(
            """[
              {
                "name":"Foo",
                "abstract":true,
                "rootable":true,
                "conceptAlias":"FooAlias",
                "shortDescription":"foo concept",
                "documentation":"docs",
                "extends":"BaseConcept",
                "properties":[{"name":"p1","type":"int"},{"name":"p2"}],
                "children":[{"role":"c1","target":"Bar","multiple":true,"optional":false}],
                "references":[{"role":"r1","target":"Baz"}]
              },
              {"name":"Second"}
            ]""",
            "conceptsJson",
        )

        assertEquals(2, specs.size)
        val first = specs[0]
        assertEquals("Foo", read(first, "getName"))
        assertEquals(true, read(first, "isAbstract"))
        assertEquals(true, read(first, "getRootable"))
        assertEquals("FooAlias", read(first, "getConceptAlias"))
        assertEquals("foo concept", read(first, "getShortDescription"))
        assertEquals("docs", read(first, "getDocumentation"))
        assertEquals("BaseConcept", read(first, "getExtendsRef"))

        val properties = read(first, "getProperties") as List<*>
        assertEquals(2, properties.size)
        assertEquals("p1", read(properties[0]!!, "getName"))
        assertEquals("int", read(properties[0]!!, "getType"))
        assertEquals("p2", read(properties[1]!!, "getName"))
        assertEquals("string", read(properties[1]!!, "getType"))

        val children = read(first, "getChildren") as List<*>
        assertEquals(1, children.size)
        assertEquals("c1", read(children[0]!!, "getRole"))
        assertEquals("Bar", read(children[0]!!, "getTarget"))
        assertEquals(true, read(children[0]!!, "getMultiple"))
        assertEquals(false, read(children[0]!!, "getOptional"))

        val references = read(first, "getReferences") as List<*>
        assertEquals(1, references.size)
        assertEquals("r1", read(references[0]!!, "getRole"))
        assertEquals("Baz", read(references[0]!!, "getTarget"))
        assertEquals(false, read(references[0]!!, "getMultiple"))
        assertEquals(true, read(references[0]!!, "getOptional"))

        assertEquals("Second", read(specs[1], "getName"))
    }

    @Test
    fun structureConceptParsesAllVirtualPackageAliases() {
        val canonical = parseStructureConceptSpecs("""[{"name":"Foo","virtualPackage":"a.b"}]""", "conceptsJson")
        val folder = parseStructureConceptSpecs("""[{"name":"Foo","virtualFolder":"a.c"}]""", "conceptsJson")
        val folderWithSpace = parseStructureConceptSpecs(
            """[{"name":"Foo","virtual folder":"a.d"}]""",
            "conceptsJson",
        )

        assertEquals("a.b", read(canonical[0], "getVirtualPackage"))
        assertEquals("a.c", read(folder[0], "getVirtualPackage"))
        assertEquals("a.d", read(folderWithSpace[0], "getVirtualPackage"))
    }

    @Test
    fun structureConceptRejectsMissingName() {
        assertSchemaFailure("Missing 'conceptsJson[0].name'") {
            parseStructureConceptSpecs("""[{}]""", "conceptsJson")
        }
    }

    @Test
    fun structureConceptRejectsNonStringName() {
        assertSchemaFailure("'conceptsJson[0].name' must be a string") {
            parseStructureConceptSpecs("""[{"name":42}]""", "conceptsJson")
        }
    }

    @Test
    fun structureConceptRejectsNonBooleanAbstract() {
        assertSchemaFailure("'conceptsJson[0].abstract' must be a boolean") {
            parseStructureConceptSpecs("""[{"name":"Foo","abstract":"yes"}]""", "conceptsJson")
        }
    }

    // ── `parameters` blob readers ──────────────────────────────────────────────────────
    // These replace `params.get("x")?.asBoolean` / `?.asInt` at every blob call site. Gson's own
    // accessors read a number as `false` and throw an untyped exception on an explicit JSON null,
    // an object or an array, which the tool boundary could only report as INTERNAL_ERROR. One row
    // per shape, so the accepted set is pinned rather than inferred.

    @Test
    fun paramBooleanAcceptsBooleansAndTheirQuotedForm() {
        assertTrue(params("""{"k": true}""").paramBoolean("k", default = false))
        assertFalse(params("""{"k": false}""").paramBoolean("k", default = true))
        assertTrue(params("""{"k": "true"}""").paramBoolean("k", default = false))
        assertFalse(params("""{"k": "false"}""").paramBoolean("k", default = true))
        assertTrue(params("""{"k": "TRUE"}""").paramBoolean("k", default = false))
    }

    @Test
    fun paramBooleanTreatsAbsentAndExplicitNullAsTheDefault() {
        // The explicit-null row is the regression: Kotlin's `?.` does not short-circuit a
        // JsonNull, so `?.asBoolean` threw and every such call answered INTERNAL_ERROR.
        for (json in listOf("{}", """{"k": null}""")) {
            assertTrue("$json must take the default", params(json).paramBoolean("k", default = true))
            assertFalse("$json must take the default", params(json).paramBoolean("k", default = false))
        }
    }

    @Test
    fun paramBooleanRejectsEverythingElseByName() {
        // `1` is the important row: gson read it as `false`, i.e. the opposite of what a caller
        // writing `"multiple": 1` meant, with an ok:true envelope.
        val rejected = listOf(
            """{"k": 1}""", """{"k": 0}""", """{"k": -1}""", """{"k": "1"}""", """{"k": "yes"}""",
            """{"k": ""}""", """{"k": " "}""",
            // Whitespace is not trimmed, so the tolerance matches paramInt's (`"3"` yes, `" 3"` no).
            """{"k": " true "}""",
            // gson reads a one-element array through to its element, so `[true]` used to be `true`.
            """{"k": [true]}""", """{"k": {}}""", """{"k": []}""",
        )
        for (json in rejected) {
            assertSchemaFailure("'parameters.k' must be a boolean") {
                params(json).paramBoolean("k", default = false)
            }
        }
    }

    @Test
    fun paramIntAcceptsIntegersAndTheirQuotedForm() {
        assertEquals(3, params("""{"k": 3}""").paramInt("k"))
        assertEquals(-3, params("""{"k": -3}""").paramInt("k"))
        assertEquals(3, params("""{"k": "3"}""").paramInt("k"))
        // These three follow from the BigDecimal parse the reader delegates to; they are tolerated,
        // not promised, and no doc states them. A switch to Integer.parseInt would reject all three
        // — that is a deliberate narrowing, not a regression.
        assertEquals(300, params("""{"k": "3e2"}""").paramInt("k"))
        assertEquals(3, params("""{"k": "+3"}""").paramInt("k"))
        assertEquals(10, params("""{"k": "010"}""").paramInt("k"))
        assertNull(params("{}").paramInt("k"))
        assertNull(params("""{"k": null}""").paramInt("k"))
    }

    @Test
    fun paramIntRejectsNonIntegersByName() {
        val rejected = listOf(
            """{"k": 1.5}""", """{"k": "1.5"}""", """{"k": "x"}""", """{"k": ""}""",
            // No whitespace tolerance, matching paramBoolean.
            """{"k": " 3"}""", """{"k": "3 "}""",
            """{"k": true}""", """{"k": [3]}""", """{"k": {}}""", """{"k": []}""",
            // Out of int range: gson's asInt silently wrapped 2147483648 to -2147483648.
            """{"k": 2147483648}""", """{"k": 99999999999}""", """{"k": "2147483648"}""",
        )
        for (json in rejected) {
            assertSchemaFailure("'parameters.k' must be an integer") { params(json).paramInt("k") }
        }
    }

    @Test
    fun paramStringTreatsOnlyAbsentAndFieldNullAsAbsent() {
        assertNull(params("{}").paramString("k"))
        assertNull(params("""{"k": null}""").paramString("k"))
    }

    @Test
    fun paramStringPreservesLegacyAsStringOutcomesForEveryNonNullShape() {
        val shapes = listOf(
            """"text"""", """"null"""", """""""", """"  """", "42", "-1.5", "true", "false",
            """["text"]""", "[42]", "[[true]]", "{}", """{"nested":"value"}""",
            "[]", """["one","two"]""", "[null]", "[{}]",
        )
        for (shape in shapes) {
            val obj = params("""{"k": $shape}""")
            assertEquals(
                "shape $shape must preserve Gson asString's value or exception class",
                stringOutcome { obj.get("k").asString },
                stringOutcome { obj.paramString("k") },
            )
        }
    }

    @Test
    fun blueprintAndBlobPathsAcceptTheSameShapes() {
        // The point of routing both through one reader: compared pairwise over every shape in the
        // truth table, for both scalar kinds and for both defaults, so the two paths cannot drift
        // on any row. Both sides call the same private reader today, so no shape can fail this
        // test as written — it is a tripwire against forking that reader, not a discriminator.
        val booleanShapes = listOf(
            "true", "false", """"true"""", """"TRUE"""", """"false"""", """" true """",
            "1", "0", "-1", """"1"""", """"yes"""", """""""", "[true]", "{}", "[]", "null",
        )
        for (shape in booleanShapes) {
            // default = false, via `rootable`.
            assertEquals(
                "boolean shape $shape must behave the same on both input paths (default false)",
                outcome { params("""{"rootable": $shape}""").paramBoolean("rootable", default = false) },
                outcome {
                    read(parseStructureConceptSpecs("""[{"name":"Foo","rootable":$shape}]""", "conceptsJson").single(), "getRootable")
                },
            )
            // default = true, via a link's `optional` — the variant `optional` uses at two call sites.
            assertEquals(
                "boolean shape $shape must behave the same on both input paths (default true)",
                outcome { params("""{"optional": $shape}""").paramBoolean("optional", default = true) },
                outcome {
                    val spec = parseStructureConceptSpecs(
                        """[{"name":"Foo","children":[{"role":"c","target":"Foo","optional":$shape}]}]""",
                        "conceptsJson",
                    ).single()
                    read((read(spec, "getChildren") as List<*>).single()!!, "getOptional")
                },
            )
        }
        val intShapes = listOf("3", "-3", """"3"""", "1.5", """"1.5"""", """"x"""", """" 3"""", "true", "[3]", "{}", "[]", "2147483648", "null")
        for (shape in intShapes) {
            assertEquals(
                "integer shape $shape must behave the same on both input paths",
                outcome { params("""{"position": $shape}""").paramInt("position") },
                outcome {
                    val request = parseJavaParseInsertRequest(
                        """{"code":"class Foo {}","featureKind":"CLASS","insert":{"mode":"child","parentRef":"r:m#p","role":"statement","position":$shape}}"""
                    )
                    read(read(request, "getInsert")!!, "getPosition")
                },
            )
        }
        // Non-vacuous: each list must produce both an accept and a reject *through its own
        // reader*. Reducing the int list with paramBoolean would accept only its `true` and `null`
        // rows — through a reader the int comparison never uses — so the guard would pass even if
        // every shape paramInt accepts were deleted.
        val readers = listOf<Pair<List<String>, (String) -> Any?>>(
            booleanShapes to { s -> params("""{"k": $s}""").paramBoolean("k", default = false) },
            intShapes to { s -> params("""{"k": $s}""").paramInt("k") },
        )
        for ((shapes, reader) in readers) {
            val outcomes = shapes.map { s -> outcome { reader(s) } }
            assertTrue("$shapes must contain an accepted shape", outcomes.any { !it.startsWith("rejected") })
            assertTrue("$shapes must contain a rejected shape", outcomes.any { it.startsWith("rejected") })
        }
    }

    /**
     * Reduces a read to a comparable outcome: its value, or `rejected` plus the exception class and
     * the message with its path prefix stripped. The class name matters — `ToolInputSchemaException`
     * and `ToolInputJsonException` answer different MCP codes, so two paths that reject the same
     * shape for different reasons are not symmetric.
     */
    private fun outcome(block: () -> Any?): String = try {
        block().toString()
    } catch (e: IllegalArgumentException) {
        "rejected: ${e.javaClass.simpleName}: " + (e.message ?: "").substringAfter("' ")
    }

    private data class StringOutcome(val value: String?, val exceptionClass: Class<out Exception>?)

    private fun stringOutcome(block: () -> String?): StringOutcome = try {
        StringOutcome(block(), null)
    }
    catch (e: Exception) {
        StringOutcome(null, e.javaClass)
    }

    private fun params(json: String): JsonObject = JsonParser.parseString(json).asJsonObject

    @Test
    fun structureLinkRejectsMultipleOnAReference() {
        // `children` and `references` share one link parser, so `multiple` used to be parsed and
        // then dropped for a reference — a silent 0..1 result. A child still accepts it, and
        // `multiple: false` on a reference is truthful and stays accepted.
        val expected = "'conceptsJson[0].references[0].multiple': $REFERENCES_ARE_SINGLE_VALUED"
        assertSchemaFailure(expected) {
            parseStructureConceptSpecs(
                """[{"name":"Foo","references":[{"role":"r1","target":"Bar","multiple":true}]}]""",
                "conceptsJson",
            )
        }
        assertSchemaFailure("'interfaceConceptsJson[0].references[0].multiple': $REFERENCES_ARE_SINGLE_VALUED") {
            parseStructureInterfaceConceptSpecs(
                """[{"name":"IFoo","references":[{"role":"r1","target":"Bar","multiple":true}]}]""",
                "interfaceConceptsJson",
            )
        }
        parseStructureConceptSpecs(
            """[{"name":"Foo","references":[{"role":"r1","target":"Bar","multiple":false}]},
                {"name":"Baz","children":[{"role":"c1","target":"Bar","multiple":true}]}]""",
            "conceptsJson",
        )
    }

    @Test
    fun structureConceptRejectsNonBooleanRootable() {
        assertSchemaFailure("'conceptsJson[0].rootable' must be a boolean") {
            parseStructureConceptSpecs("""[{"name":"Foo","rootable":"yes"}]""", "conceptsJson")
        }
    }

    @Test
    fun structureConceptRejectsImplementsWrongType() {
        assertSchemaFailure("'conceptsJson[0].implements' must be a string or an array of strings") {
            parseStructureConceptSpecs("""[{"name":"Foo","implements":42}]""", "conceptsJson")
        }
    }

    @Test
    fun structureConceptRejectsImplementsArrayWithNonStringElement() {
        assertSchemaFailure("'conceptsJson[0].implements[1]' must be a string") {
            parseStructureConceptSpecs("""[{"name":"Foo","implements":["a.iface",42]}]""", "conceptsJson")
        }
    }

    @Test
    fun structureConceptRejectsNonObjectArrayEntry() {
        assertSchemaFailure("conceptsJson[0] must be a JSON object") {
            parseStructureConceptSpecs("""["Foo"]""", "conceptsJson")
        }
    }

    @Test
    fun structureConceptRejectsReferencesEntryMissingRole() {
        assertSchemaFailure("Missing 'conceptsJson[0].references[0].role'") {
            parseStructureConceptSpecs(
                """[{"name":"Foo","references":[{"target":"Bar"}]}]""",
                "conceptsJson",
            )
        }
    }

    @Test
    fun structureConceptTreatsExplicitNullAsOmitted() {
        val specs = parseStructureConceptSpecs(
            """[{"name":"Foo","abstract":null,"shortDescription":null,"properties":null,"children":null,"references":null,"implements":null,"extends":null}]""",
            "conceptsJson",
        )

        val spec = specs[0]
        assertEquals(false, read(spec, "isAbstract"))
        assertNull(read(spec, "getShortDescription"))
        assertTrue((read(spec, "getProperties") as List<*>).isEmpty())
        assertTrue((read(spec, "getChildren") as List<*>).isEmpty())
        assertTrue((read(spec, "getReferences") as List<*>).isEmpty())
        assertTrue((read(spec, "getImplementsRefs") as List<*>).isEmpty())
        assertNull(read(spec, "getExtendsRef"))
    }

    // ---- parseStructureInterfaceConceptSpecs ----

    @Test
    fun structureInterfaceConceptParsesMinimalEntry() {
        val specs = parseStructureInterfaceConceptSpecs(
            """[{"name":"Iface"}]""",
            "interfaceConceptsJson",
        )

        assertEquals(1, specs.size)
        assertEquals("Iface", read(specs[0], "getName"))
        assertTrue((read(specs[0], "getExtendedInterfaces") as List<*>).isEmpty())
    }

    @Test
    fun structureInterfaceConceptParsesExtendedInterfacesUnderAlias() {
        val viaExtends = parseStructureInterfaceConceptSpecs(
            """[{"name":"Iface","extends":"some.parent"}]""",
            "interfaceConceptsJson",
        )
        val viaList = parseStructureInterfaceConceptSpecs(
            """[{"name":"Iface","extendedInterfaces":["a","b"]}]""",
            "interfaceConceptsJson",
        )

        assertEquals(listOf("some.parent"), read(viaExtends[0], "getExtendedInterfaces"))
        assertEquals(listOf("a", "b"), read(viaList[0], "getExtendedInterfaces"))
    }

    @Test
    fun structureInterfaceConceptRejectsMissingName() {
        assertSchemaFailure("Missing 'interfaceConceptsJson[0].name'") {
            parseStructureInterfaceConceptSpecs("""[{}]""", "interfaceConceptsJson")
        }
    }

    @Test
    fun structureInterfaceConceptRejectsChildMissingTarget() {
        assertSchemaFailure("Missing 'interfaceConceptsJson[0].children[0].target'") {
            parseStructureInterfaceConceptSpecs(
                """[{"name":"Iface","children":[{"role":"x"}]}]""",
                "interfaceConceptsJson",
            )
        }
    }

    @Test
    fun structureInterfaceConceptParsesExtendedInterfacesAliasWithSpace() {
        val specs = parseStructureInterfaceConceptSpecs(
            """[{"name":"Iface","extended interfaces":["a","b"]}]""",
            "interfaceConceptsJson",
        )

        assertEquals(listOf("a", "b"), read(specs[0], "getExtendedInterfaces"))
    }

    @Test
    fun structureInterfaceConceptParsesAllOptionalFields() {
        val specs = parseStructureInterfaceConceptSpecs(
            """[{
              "name":"Iface",
              "shortDescription":"iface",
              "documentation":"docs",
              "virtual package":"a.b",
              "properties":[{"name":"p1"}],
              "references":[{"role":"r1","target":"Bar"}]
            }]""",
            "interfaceConceptsJson",
        )

        val spec = specs[0]
        assertEquals("iface", read(spec, "getShortDescription"))
        assertEquals("docs", read(spec, "getDocumentation"))
        assertEquals("a.b", read(spec, "getVirtualPackage"))
        assertEquals(1, (read(spec, "getProperties") as List<*>).size)
        assertEquals(1, (read(spec, "getReferences") as List<*>).size)
    }

    @Test
    fun structureInterfaceConceptRejectsBlankInput() {
        assertSchemaFailure("interfaceConceptsJson must not be blank") {
            parseStructureInterfaceConceptSpecs("   ", "interfaceConceptsJson")
        }
    }

    @Test
    fun structureInterfaceConceptRejectsTopLevelObject() {
        assertSchemaFailure("interfaceConceptsJson must be a JSON array") {
            parseStructureInterfaceConceptSpecs("""{"name":"Iface"}""", "interfaceConceptsJson")
        }
    }

    @Test
    fun structureInterfaceConceptRejectsInvalidJsonSyntax() {
        val message = catchInvalidJson { parseStructureInterfaceConceptSpecs("[{not", "interfaceConceptsJson") }

        assertTrue(
            "Expected message to start with 'Invalid JSON for interfaceConceptsJson' but was: $message",
            message.startsWith("Invalid JSON for interfaceConceptsJson"),
        )
    }

    @Test
    fun structureInterfaceConceptRejectsNonObjectArrayEntry() {
        assertSchemaFailure("interfaceConceptsJson[0] must be a JSON object") {
            parseStructureInterfaceConceptSpecs("""["Iface"]""", "interfaceConceptsJson")
        }
    }

    @Test
    fun structureInterfaceConceptRejectsExtendedInterfacesWrongType() {
        assertSchemaFailure("'interfaceConceptsJson[0].extendedInterfaces' must be a string or an array of strings") {
            parseStructureInterfaceConceptSpecs(
                """[{"name":"Iface","extendedInterfaces":42}]""",
                "interfaceConceptsJson",
            )
        }
    }

    @Test
    fun structureInterfaceConceptRejectsBlankExtendedInterfacesEntry() {
        assertSchemaFailure("'interfaceConceptsJson[0].extendedInterfaces[1]' must not be blank") {
            parseStructureInterfaceConceptSpecs(
                """[{"name":"Iface","extendedInterfaces":["a","   "]}]""",
                "interfaceConceptsJson",
            )
        }
    }

    @Test
    fun structureInterfaceConceptTreatsExplicitNullAsOmitted() {
        val specs = parseStructureInterfaceConceptSpecs(
            """[{"name":"Iface","shortDescription":null,"extendedInterfaces":null}]""",
            "interfaceConceptsJson",
        )

        val spec = specs[0]
        assertNull(read(spec, "getShortDescription"))
        assertTrue((read(spec, "getExtendedInterfaces") as List<*>).isEmpty())
    }

    // ---- parseEnumValueSpecs ----

    @Test
    fun enumValueSpecsParsePresentation() {
        val specs = parseEnumValueSpecs("""[{"enumName":"RED","enumPresentation":"Red"}]""")

        assertEquals(1, specs.size)
        assertEquals("RED", read(specs[0], "getEnumName"))
        assertEquals("Red", read(specs[0], "getEnumPresentation"))
    }

    @Test
    fun enumValueSpecsRejectBlankEnumName() {
        assertSchemaFailure("Missing 'valuesJson[0].enumName'") {
            parseEnumValueSpecs("""[{"enumName":"   "}]""")
        }
    }

    @Test
    fun enumValueSpecsRejectNonObjectEntry() {
        assertSchemaFailure("valuesJson[0] must be a JSON object") {
            parseEnumValueSpecs("""["RED"]""")
        }
    }

    @Test
    fun enumValueSpecsParseMinimalEntry() {
        val specs = parseEnumValueSpecs("""[{"enumName":"RED"}]""")

        assertEquals(1, specs.size)
        assertEquals("RED", read(specs[0], "getEnumName"))
        assertNull(read(specs[0], "getEnumPresentation"))
    }

    @Test
    fun enumValueSpecsParsesMultipleEntries() {
        val specs = parseEnumValueSpecs("""[{"enumName":"RED"},{"enumName":"GREEN","enumPresentation":"Green"}]""")

        assertEquals(2, specs.size)
        assertEquals("RED", read(specs[0], "getEnumName"))
        assertEquals("GREEN", read(specs[1], "getEnumName"))
        assertEquals("Green", read(specs[1], "getEnumPresentation"))
    }

    @Test
    fun enumValueSpecsRejectMissingEnumName() {
        assertSchemaFailure("Missing 'valuesJson[0].enumName'") {
            parseEnumValueSpecs("""[{"enumPresentation":"Red"}]""")
        }
    }

    @Test
    fun enumValueSpecsRejectNonStringEnumName() {
        assertSchemaFailure("'valuesJson[0].enumName' must be a string") {
            parseEnumValueSpecs("""[{"enumName":42}]""")
        }
    }

    @Test
    fun enumValueSpecsRejectNonStringEnumPresentation() {
        assertSchemaFailure("'valuesJson[0].enumPresentation' must be a string") {
            parseEnumValueSpecs("""[{"enumName":"RED","enumPresentation":42}]""")
        }
    }

    @Test
    fun enumValueSpecsRejectBlankInput() {
        assertSchemaFailure("valuesJson must not be blank") {
            parseEnumValueSpecs("   ")
        }
    }

    @Test
    fun enumValueSpecsRejectTopLevelObject() {
        assertSchemaFailure("valuesJson must be a JSON array") {
            parseEnumValueSpecs("""{"enumName":"RED"}""")
        }
    }

    @Test
    fun enumValueSpecsRejectInvalidJsonSyntax() {
        val message = catchInvalidJson { parseEnumValueSpecs("[{not") }

        assertTrue(
            "Expected message to start with 'Invalid JSON for valuesJson' but was: $message",
            message.startsWith("Invalid JSON for valuesJson"),
        )
    }

    @Test
    fun enumValueSpecsTreatExplicitNullPresentationAsOmitted() {
        val specs = parseEnumValueSpecs("""[{"enumName":"RED","enumPresentation":null}]""")

        assertNull(read(specs[0], "getEnumPresentation"))
    }

    @Test
    fun enumValueSpecsParsesEmptyArray() {
        val specs = parseEnumValueSpecs("[]")

        assertTrue(specs.isEmpty())
    }

    @Test
    fun enumValueSpecsHonoursCustomSourceNameInErrorMessages() {
        assertSchemaFailure("Missing 'myValues[0].enumName'") {
            parseEnumValueSpecs("""[{"enumPresentation":"Red"}]""", sourceName = "myValues")
        }
    }

    // ---- parseJavaParseInsertRequest ----

    @Test
    fun javaInsertParsesRootMode() {
        val request = parseJavaParseInsertRequest(
            """
            {
              "code": "class Foo {}",
              "featureKind": "CLASS",
              "insert": {"mode": "root", "modelRef": "r:model"}
            }
            """.trimIndent()
        )

        assertEquals("CLASS", read(request, "getFeatureKindText"))
        assertEquals(false, read(request, "isExpression"))
        assertEquals(true, read(request, "getRecovery"))
        assertEquals(true, read(request, "getImportUsedLanguages"))
        assertEquals(true, read(request, "getResolveReferences"))

        val insert = read(request, "getInsert") ?: error("insert must be present")
        assertEquals("root", read(insert, "getMode"))
        assertEquals("r:model", read(insert, "getModelRef"))
    }

    @Test
    fun javaInsertParsesExpressionMappedToStatements() {
        val request = parseJavaParseInsertRequest(
            """
            {
              "code": "1 + 2",
              "featureKind": "EXPRESSION",
              "insert": {"mode": "root", "modelRef": "r:model"}
            }
            """.trimIndent()
        )

        assertEquals("EXPRESSION", read(request, "getFeatureKindText"))
        assertEquals(true, read(request, "isExpression"))
    }

    @Test
    fun javaInsertParsesChildMode() {
        val request = parseJavaParseInsertRequest(
            """
            {
              "code": "int x = 1;",
              "featureKind": "STATEMENTS",
              "insert": {
                "mode": "child",
                "parentRef": "r:m#p",
                "role": "statement",
                "position": 2,
                "virtualPackage": "a.b"
              }
            }
            """.trimIndent()
        )

        assertEquals("STATEMENTS", read(request, "getFeatureKindText"))
        assertEquals(false, read(request, "isExpression"))

        val insert = read(request, "getInsert") ?: error("insert must be present")
        assertEquals("child", read(insert, "getMode"))
        assertEquals("r:m#p", read(insert, "getParentRef"))
        assertEquals("statement", read(insert, "getRole"))
        assertEquals(2, read(insert, "getPosition"))
        assertEquals("a.b", read(insert, "getVirtualPackage"))
        assertNull(read(insert, "getModelRef"))
        assertNull(read(insert, "getTargetRef"))
    }

    @Test
    fun javaInsertParsesReplaceMode() {
        val request = parseJavaParseInsertRequest(
            """
            {
              "code": "class Foo {}",
              "featureKind": "CLASS",
              "insert": {"mode": "replace", "targetRef": "r:m#t"}
            }
            """.trimIndent()
        )

        val insert = read(request, "getInsert") ?: error("insert must be present")
        assertEquals("replace", read(insert, "getMode"))
        assertEquals("r:m#t", read(insert, "getTargetRef"))
        assertNull(read(insert, "getModelRef"))
        assertNull(read(insert, "getParentRef"))
        assertNull(read(insert, "getRole"))
        assertNull(read(insert, "getPosition"))
    }

    @Test
    fun javaInsertParsesConsoleMode() {
        val request = parseJavaParseInsertRequest(
            """
            {
              "code": "1 + 2",
              "featureKind": "EXPRESSION",
              "insert": {"mode": "console"}
            }
            """.trimIndent()
        )

        val insert = read(request, "getInsert") ?: error("insert must be present")
        assertEquals("console", read(insert, "getMode"))
    }

    @Test
    fun javaInsertParsesMemberFeatureKindWithContextNodeRef() {
        val request = parseJavaParseInsertRequest(
            """
            {
              "code": "void run() {}",
              "featureKind": "METHOD",
              "contextNodeRef": "r:m#cls",
              "insert": {"mode": "root", "modelRef": "r:m"}
            }
            """.trimIndent()
        )

        assertEquals("METHOD", read(request, "getFeatureKindText"))
        assertEquals("r:m#cls", read(request, "getContextNodeRef"))
    }

    @Test
    fun javaInsertParsesNonMemberFeatureKindWithoutContextNodeRef() {
        val request = parseJavaParseInsertRequest(
            """{"code":"class Foo {}","featureKind":"CLASS","insert":{"mode":"root","modelRef":"r:m"}}"""
        )

        assertEquals("CLASS", read(request, "getFeatureKindText"))
        assertNull(read(request, "getContextNodeRef"))
    }

    @Test
    fun javaInsertHonoursRecoveryFalse() {
        val request = parseJavaParseInsertRequest(
            """{"code":"class Foo {}","featureKind":"CLASS","recovery":false,"insert":{"mode":"root","modelRef":"r:m"}}"""
        )

        assertEquals(false, read(request, "getRecovery"))
    }

    @Test
    fun javaInsertParsesPositionZeroForChildMode() {
        val request = parseJavaParseInsertRequest(
            """
            {
              "code": "int x = 1;",
              "featureKind": "STATEMENTS",
              "insert": {"mode": "child", "parentRef": "r:m#p", "role": "statement", "position": 0}
            }
            """.trimIndent()
        )

        val insert = read(request, "getInsert") ?: error("insert must be present")
        assertEquals(0, read(insert, "getPosition"))
    }

    @Test
    fun javaInsertParsesNegativePositionForChildMode() {
        val request = parseJavaParseInsertRequest(
            """
            {
              "code": "int x = 1;",
              "featureKind": "STATEMENTS",
              "insert": {"mode": "child", "parentRef": "r:m#p", "role": "statement", "position": -1}
            }
            """.trimIndent()
        )

        val insert = read(request, "getInsert") ?: error("insert must be present")
        assertEquals(-1, read(insert, "getPosition"))
    }

    @Test
    fun javaInsertHonoursPostProcessOverrides() {
        val request = parseJavaParseInsertRequest(
            """
            {
              "code": "class Foo {}",
              "featureKind": "CLASS",
              "insert": {"mode": "root", "modelRef": "r:model"},
              "postProcess": {"importUsedLanguages": false, "resolveReferences": false}
            }
            """.trimIndent()
        )

        assertEquals(false, read(request, "getImportUsedLanguages"))
        assertEquals(false, read(request, "getResolveReferences"))
    }

    @Test
    fun javaInsertTreatsExplicitNullPostProcessAsOmitted() {
        val request = parseJavaParseInsertRequest(
            """{"code":"class Foo {}","featureKind":"CLASS","insert":{"mode":"root","modelRef":"r:m"},"postProcess":null}"""
        )

        assertEquals(true, read(request, "getImportUsedLanguages"))
        assertEquals(true, read(request, "getResolveReferences"))
    }

    @Test
    fun javaInsertRejectsNonObjectPostProcess() {
        assertSchemaFailure("'parameters.postProcess' must be a JSON object") {
            parseJavaParseInsertRequest(
                """{"code":"class Foo {}","featureKind":"CLASS","insert":{"mode":"root","modelRef":"r:m"},"postProcess":"yes"}"""
            )
        }
    }

    @Test
    fun javaInsertRejectsNonBooleanImportUsedLanguages() {
        assertSchemaFailure("'parameters.postProcess.importUsedLanguages' must be a boolean") {
            parseJavaParseInsertRequest(
                """{"code":"class Foo {}","featureKind":"CLASS","insert":{"mode":"root","modelRef":"r:m"},"postProcess":{"importUsedLanguages":"yes"}}"""
            )
        }
    }

    @Test
    fun javaInsertRejectsNonBooleanResolveReferences() {
        assertSchemaFailure("'parameters.postProcess.resolveReferences' must be a boolean") {
            parseJavaParseInsertRequest(
                """{"code":"class Foo {}","featureKind":"CLASS","insert":{"mode":"root","modelRef":"r:m"},"postProcess":{"resolveReferences":"no"}}"""
            )
        }
    }

    @Test
    fun javaInsertRejectsBlankParameters() {
        assertSchemaFailure("parameters must not be blank") {
            parseJavaParseInsertRequest("   ")
        }
    }

    @Test
    fun javaInsertRejectsNonObjectParameters() {
        assertSchemaFailure("parameters must be a JSON object") {
            parseJavaParseInsertRequest("[]")
        }
    }

    @Test
    fun javaInsertRejectsMissingCode() {
        assertSchemaFailure("Missing 'parameters.code'") {
            parseJavaParseInsertRequest(
                """{"featureKind":"CLASS","insert":{"mode":"root","modelRef":"r:m"}}"""
            )
        }
    }

    @Test
    fun javaInsertRejectsCodeLongerThanLimit() {
        val longCode = "x".repeat(50_001)
        assertSchemaFailure("Code exceeds maximum allowed length of 50_000 characters") {
            parseJavaParseInsertRequest(
                """{"code":"$longCode","featureKind":"CLASS","insert":{"mode":"root","modelRef":"r:m"}}"""
            )
        }
    }

    @Test
    fun javaInsertRejectsClassStubFeatureKind() {
        assertSchemaFailure("featureKind 'CLASS_STUB' is not supported") {
            parseJavaParseInsertRequest(
                """{"code":"class Foo {}","featureKind":"CLASS_STUB","insert":{"mode":"root","modelRef":"r:m"}}"""
            )
        }
    }

    @Test
    fun javaInsertRejectsUnknownFeatureKind() {
        assertSchemaFailure("Unknown featureKind: 'BANANA'") {
            parseJavaParseInsertRequest(
                """{"code":"class Foo {}","featureKind":"BANANA","insert":{"mode":"root","modelRef":"r:m"}}"""
            )
        }
    }

    @Test
    fun javaInsertRequiresContextNodeRefForMethodFeatureKind() {
        val message = catchSchemaFailure {
            parseJavaParseInsertRequest(
                """{"code":"void run() {}","featureKind":"METHOD","insert":{"mode":"root","modelRef":"r:m"}}"""
            )
        }

        assertTrue(
            "Expected message to mention contextNodeRef and METHOD, was: $message",
            message.contains("contextNodeRef") && message.contains("METHOD"),
        )
    }

    @Test
    fun javaInsertAcceptsEmptyContextNodeRefForExpressionFeatureKind() {
        val request = parseJavaParseInsertRequest(
            """{"code":"1 + 2","featureKind":"EXPRESSION","insert":{"mode":"root","modelRef":"r:m"}}"""
        )

        assertNull(read(request, "getContextNodeRef"))
        assertEquals(true, read(request, "isExpression"))
    }

    @Test
    fun javaInsertRootModeRequiresModelRef() {
        assertSchemaFailure("'modelRef' is required for root insertion") {
            parseJavaParseInsertRequest(
                """{"code":"class Foo {}","featureKind":"CLASS","insert":{"mode":"root"}}"""
            )
        }
    }

    @Test
    fun javaInsertRootModeRejectsPositionZero() {
        // INC-6: position:0 on a root insert used to be silently discarded (the root was appended,
        // not prepended) with no signal to the caller. It must now fail loudly instead.
        assertSchemaFailure(
            "'position' is not supported for root insertion: root nodes are always appended and " +
                "their order cannot be controlled. Remove 'position' (or pass -1) from the insert object."
        ) {
            parseJavaParseInsertRequest(
                """{"code":"class Foo {}","featureKind":"CLASS","insert":{"mode":"root","modelRef":"r:m","position":0}}"""
            )
        }
    }

    @Test
    fun javaInsertRootModeRejectsPositivePosition() {
        assertSchemaFailure(
            "'position' is not supported for root insertion: root nodes are always appended and " +
                "their order cannot be controlled. Remove 'position' (or pass -1) from the insert object."
        ) {
            parseJavaParseInsertRequest(
                """{"code":"class Foo {}","featureKind":"CLASS","insert":{"mode":"root","modelRef":"r:m","position":5}}"""
            )
        }
    }

    @Test
    fun javaInsertRootModeAllowsAppendSentinelPosition() {
        // -1 means "append", which is exactly what roots do, so it stays valid (and is a no-op).
        val request = parseJavaParseInsertRequest(
            """{"code":"class Foo {}","featureKind":"CLASS","insert":{"mode":"root","modelRef":"r:m","position":-1}}"""
        )

        val insert = read(request, "getInsert") ?: error("insert must be present")
        assertEquals("root", read(insert, "getMode"))
        assertEquals(-1, read(insert, "getPosition"))
    }

    @Test
    fun javaInsertChildModeRequiresParentRef() {
        assertSchemaFailure("'parentRef' is required for child insertion") {
            parseJavaParseInsertRequest(
                """{"code":"int x = 1;","featureKind":"STATEMENTS","insert":{"mode":"child","role":"statement"}}"""
            )
        }
    }

    @Test
    fun javaInsertChildModeRequiresRole() {
        assertSchemaFailure("'role' is required for child insertion") {
            parseJavaParseInsertRequest(
                """{"code":"int x = 1;","featureKind":"STATEMENTS","insert":{"mode":"child","parentRef":"r:m#p"}}"""
            )
        }
    }

    @Test
    fun javaInsertReplaceModeRequiresTargetRef() {
        assertSchemaFailure("'targetRef' is required for replace mode") {
            parseJavaParseInsertRequest(
                """{"code":"class Foo {}","featureKind":"CLASS","insert":{"mode":"replace"}}"""
            )
        }
    }

    @Test
    fun javaInsertRejectsUnknownInsertMode() {
        assertSchemaFailure("Unknown insert.mode 'weird'") {
            parseJavaParseInsertRequest(
                """{"code":"class Foo {}","featureKind":"CLASS","insert":{"mode":"weird"}}"""
            )
        }
    }

    @Test
    fun javaInsertRejectsScopeAsUnknownInsertKey() {
        val message = catchSchemaFailure {
            parseJavaParseInsertRequest(
                """{"code":"int x = 1;","featureKind":"STATEMENTS","insert":{"mode":"child","scope":"project","parentRef":"r:m#p","role":"statement"}}"""
            )
        }
        assertTrue(
            "Expected message to mention 'scope' as unknown parameter, was: $message",
            message.contains("scope") && message.contains("parameters.insert"),
        )
    }

    @Test
    fun javaInsertRejectsConsoleModeWithNestedTargetFields() {
        assertSchemaFailure("insert.mode 'console' only accepts 'mode'; for nested console edits use 'child' or 'replace' with a parentRef/targetRef that resolves to a node inside the current console command") {
            parseJavaParseInsertRequest(
                """{"code":"1 + 2","featureKind":"EXPRESSION","insert":{"mode":"console","targetRef":"r:m#t"}}"""
            )
        }
    }

    @Test
    fun javaInsertRejectsMissingInsertObject() {
        assertSchemaFailure("Missing 'parameters.insert' object") {
            parseJavaParseInsertRequest(
                """{"code":"class Foo {}","featureKind":"CLASS"}"""
            )
        }
    }

    @Test
    fun javaInsertRejectsNonObjectInsertString() {
        assertSchemaFailure("'parameters.insert' must be a JSON object") {
            parseJavaParseInsertRequest(
                """{"code":"class Foo {}","featureKind":"CLASS","insert":"oops"}"""
            )
        }
    }

    @Test
    fun javaInsertRejectsNonObjectInsertArray() {
        assertSchemaFailure("'parameters.insert' must be a JSON object") {
            parseJavaParseInsertRequest(
                """{"code":"class Foo {}","featureKind":"CLASS","insert":[]}"""
            )
        }
    }

    @Test
    fun javaInsertRejectsMissingInsertMode() {
        assertSchemaFailure("Missing 'parameters.insert.mode'") {
            parseJavaParseInsertRequest(
                """{"code":"class Foo {}","featureKind":"CLASS","insert":{}}"""
            )
        }
    }

    @Test
    fun javaInsertRequiresContextNodeRefForFieldFeatureKind() {
        val message = catchSchemaFailure {
            parseJavaParseInsertRequest(
                """{"code":"int x;","featureKind":"FIELD","insert":{"mode":"root","modelRef":"r:m"}}"""
            )
        }

        assertTrue(
            "Expected message to mention contextNodeRef and FIELD, was: $message",
            message.contains("contextNodeRef") && message.contains("FIELD"),
        )
    }

    @Test
    fun javaInsertRequiresContextNodeRefForNestedClassFeatureKind() {
        val message = catchSchemaFailure {
            parseJavaParseInsertRequest(
                """{"code":"class Inner {}","featureKind":"NESTED_CLASS","insert":{"mode":"root","modelRef":"r:m"}}"""
            )
        }

        assertTrue(
            "Expected message to mention contextNodeRef and NESTED_CLASS, was: $message",
            message.contains("contextNodeRef") && message.contains("NESTED_CLASS"),
        )
    }

    @Test
    fun javaInsertRequiresContextNodeRefForClassContentFeatureKind() {
        val message = catchSchemaFailure {
            parseJavaParseInsertRequest(
                """{"code":"void run() {}","featureKind":"CLASS_CONTENT","insert":{"mode":"root","modelRef":"r:m"}}"""
            )
        }

        assertTrue(
            "Expected message to mention contextNodeRef and CLASS_CONTENT, was: $message",
            message.contains("contextNodeRef") && message.contains("CLASS_CONTENT"),
        )
    }

    @Test
    fun javaInsertRejectsMissingFeatureKind() {
        assertSchemaFailure("Missing 'parameters.featureKind'") {
            parseJavaParseInsertRequest(
                """{"code":"class Foo {}","insert":{"mode":"root","modelRef":"r:m"}}"""
            )
        }
    }

    @Test
    fun javaInsertRejectsNonStringFeatureKind() {
        assertSchemaFailure("'parameters.featureKind' must be a string") {
            parseJavaParseInsertRequest(
                """{"code":"class Foo {}","featureKind":42,"insert":{"mode":"root","modelRef":"r:m"}}"""
            )
        }
    }

    @Test
    fun javaInsertRejectsInvalidJsonSyntax() {
        val message = catchInvalidJson { parseJavaParseInsertRequest("{not json") }

        assertTrue(
            "Expected message to start with 'Invalid JSON for parameters' but was: $message",
            message.startsWith("Invalid JSON for parameters"),
        )
    }

    @Test
    fun javaInsertRejectsNonBooleanForBooleanField() {
        assertSchemaFailure("'parameters.recovery' must be a boolean") {
            parseJavaParseInsertRequest(
                """{"code":"class Foo {}","featureKind":"CLASS","recovery":"yes","insert":{"mode":"root","modelRef":"r:m"}}"""
            )
        }
    }

    @Test
    fun javaInsertRejectsDecimalPosition() {
        assertSchemaFailure("'parameters.insert.position' must be an integer") {
            parseJavaParseInsertRequest(
                """
                {
                  "code": "int x = 1;",
                  "featureKind": "STATEMENTS",
                  "insert": {
                    "mode": "child",
                    "parentRef": "r:m#p",
                    "role": "statement",
                    "position": 1.5
                  }
                }
                """.trimIndent()
            )
        }
    }

    @Test
    fun javaInsertAcceptsIntegralFloatPosition() {
        val request = parseJavaParseInsertRequest(
            """
            {
              "code": "int x = 1;",
              "featureKind": "STATEMENTS",
              "insert": {"mode": "child", "parentRef": "r:m#p", "role": "statement", "position": 2.0}
            }
            """.trimIndent()
        )

        val insert = read(request, "getInsert") ?: error("insert must be present")
        assertEquals(2, read(insert, "getPosition"))
    }

    @Test
    fun javaInsertAcceptsScientificNotationPosition() {
        val request = parseJavaParseInsertRequest(
            """
            {
              "code": "int x = 1;",
              "featureKind": "STATEMENTS",
              "insert": {"mode": "child", "parentRef": "r:m#p", "role": "statement", "position": 1e2}
            }
            """.trimIndent()
        )

        val insert = read(request, "getInsert") ?: error("insert must be present")
        assertEquals(100, read(insert, "getPosition"))
    }

    @Test
    fun javaInsertRejectsFractionalScientificNotationPosition() {
        assertSchemaFailure("'parameters.insert.position' must be an integer") {
            parseJavaParseInsertRequest(
                """
                {
                  "code": "int x = 1;",
                  "featureKind": "STATEMENTS",
                  "insert": {"mode": "child", "parentRef": "r:m#p", "role": "statement", "position": 1.5e0}
                }
                """.trimIndent()
            )
        }
    }

    @Test
    fun javaInsertRejectsPositionOutsideIntRange() {
        assertSchemaFailure("'parameters.insert.position' must be an integer") {
            parseJavaParseInsertRequest(
                """
                {
                  "code": "int x = 1;",
                  "featureKind": "STATEMENTS",
                  "insert": {"mode": "child", "parentRef": "r:m#p", "role": "statement", "position": 99999999999}
                }
                """.trimIndent()
            )
        }
    }

    // ---- alias-fallback regression tests ----

    @Test
    fun structureConceptVirtualPackageAliasSkipsNullAndFindsLaterAlias() {
        val specs = parseStructureConceptSpecs(
            """[{"name":"Foo","virtualPackage":null,"virtualFolder":"a.c"}]""",
            "conceptsJson",
        )

        assertEquals("a.c", read(specs[0], "getVirtualPackage"))
    }

    @Test
    fun structureInterfaceConceptExtendedInterfacesAliasSkipsNullAndFindsLaterAlias() {
        val specs = parseStructureInterfaceConceptSpecs(
            """[{"name":"Iface","extendedInterfaces":null,"extends":"some.parent"}]""",
            "interfaceConceptsJson",
        )

        assertEquals(listOf("some.parent"), read(specs[0], "getExtendedInterfaces"))
    }

    // ---- stringListOrString error-message tests ----

    @Test
    fun structureConceptRejectsBlankImplementsString() {
        assertSchemaFailure("'conceptsJson[0].implements' must not be blank") {
            parseStructureConceptSpecs(
                """[{"name":"Foo","implements":"   "}]""",
                "conceptsJson",
            )
        }
    }

    // ---- helpers ----

    @Suppress("UNCHECKED_CAST")
    private fun parseStructureConceptSpecs(json: String, sourceName: String): List<Any> =
        invokeSchemaFunction(
            "parseStructureConceptSpecs",
            arrayOf(String::class.java, String::class.java),
            json,
            sourceName,
        ) as List<Any>

    @Suppress("UNCHECKED_CAST")
    private fun parseStructureInterfaceConceptSpecs(json: String, sourceName: String): List<Any> =
        invokeSchemaFunction(
            "parseStructureInterfaceConceptSpecs",
            arrayOf(String::class.java, String::class.java),
            json,
            sourceName,
        ) as List<Any>

    @Suppress("UNCHECKED_CAST")
    private fun parseEnumValueSpecs(json: String, sourceName: String = "valuesJson"): List<Any> =
        invokeSchemaFunction(
            "parseEnumValueSpecs",
            arrayOf(String::class.java, String::class.java),
            json,
            sourceName,
        ) as List<Any>

    private fun parseJavaParseInsertRequest(parameters: String): Any =
        invokeSchemaFunction(
            "parseJavaParseInsertRequest",
            arrayOf(String::class.java),
            parameters,
        )!!

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

    // ---- blob-key aliases (parameter-name consistency sweep) ----

    /**
     * The drift surface for the `…Ref` / `…Reference` family. Spelled out as literals rather than
     * derived from the [BlobKey] constants, so renaming or dropping half a pair has to be a
     * deliberate edit here instead of silently reopening the family that produced a new incident
     * in every measured round of the study.
     */
    private val expectedAliasedBlobKeys: Map<BlobKey, List<String>> = mapOf(
        PARAM_CONCEPT_REF to listOf("conceptRef", "conceptReference"),
        PARAM_SUPER_CONCEPT_REF to listOf("superConceptRef", "superConceptReference"),
        PARAM_STRUCTURE_MODEL_REF to listOf("structureModelRef", "structureModelReference"),
        PARAM_ENUMERATION_REF to listOf("enumerationRef", "enumerationReference"),
        PARAM_NODE_REFERENCE to listOf("nodeReference", "nodeRef"),
        PARAM_CHILD_NODE_REF to listOf("childNodeRef", "childNodeReference"),
        PARAM_NEW_PARENT_REF to listOf("newParentRef", "newParentReference"),
        PARAM_MODEL_REFERENCE to listOf("modelReference", "modelRef"),
    )

    @Test
    fun aliasedBlobKeysKeepTheirExactSpellings() {
        for ((key, spellings) in expectedAliasedBlobKeys) {
            assertEquals("spellings of $key drifted", spellings, key.spellings)
            assertEquals("the first spelling is the canonical one", spellings.first(), key.canonical)
            // Every pair is the same stem under the short and the long suffix; nothing else.
            val stems = spellings.map { it.removeSuffix("Reference").removeSuffix("Ref") }
            assertEquals("$key must pair one stem, got $stems", 1, stems.distinct().size)
        }
    }

    @Test
    fun aliasedBlobKeyReadsEitherSpelling() {
        for ((key, spellings) in expectedAliasedBlobKeys) {
            for (spelling in spellings) {
                assertEquals(
                    "'$spelling' must resolve as $key",
                    "value",
                    params("""{"$spelling": "value"}""").paramString(key),
                )
            }
            assertNull("absent under every spelling is absent", params("{}").paramString(key))
            for (spelling in spellings) {
                assertNull(
                    "field-level null on '$spelling' counts as absent",
                    params("""{"$spelling": null}""").paramString(key),
                )
            }
        }
    }

    @Test
    fun aliasedBlobKeyRejectsTwoSpellingsAtOnceNamingTheWinner() {
        for ((key, spellings) in expectedAliasedBlobKeys) {
            val alias = spellings.last()
            val message = catchSchemaFailure {
                params("""{"${key.canonical}": "a", "$alias": "b"}""").paramString(key)
            }
            for (spelling in spellings) {
                assertTrue("$message must name '$spelling'", message.contains("'$spelling'"))
            }
            assertTrue(
                "$message must say which spelling to keep",
                message.contains("Keep '${key.canonical}'"),
            )
        }
    }

    @Test
    fun aliasedBlobKeyTreatsANulledSpellingAsAbsentRatherThanAConflict() {
        // `{"enumerationRef": null, "enumerationReference": "X"}` is one value, not two: a
        // field-level null already means absence for a single-spelling read, and the
        // GET_ENUMERATION_LITERALS property form relies on exactly that.
        for ((key, spellings) in expectedAliasedBlobKeys) {
            assertEquals(
                "a nulled canonical spelling must not conflict with a present alias",
                "value",
                params("""{"${key.canonical}": null, "${spellings.last()}": "value"}""").paramString(key),
            )
        }
    }

    @Test
    fun explicitNullIsDetectedUnderEitherSpelling() {
        for ((key, spellings) in expectedAliasedBlobKeys) {
            assertFalse(params("{}").paramIsExplicitNull(key))
            assertFalse(params("""{"${key.canonical}": "v"}""").paramIsExplicitNull(key))
            for (spelling in spellings) {
                assertTrue(
                    "explicit null on '$spelling' must be detected",
                    params("""{"$spelling": null}""").paramIsExplicitNull(key),
                )
            }
        }
    }

    // ---- parameters-blob key validation (study defects D14b / D18b) ----

    private val demoKeys = ParameterKeys.of(PARAM_CONCEPT_REF, "role", "multiple")

    @Test
    fun parameterKeysListsOneCanonicalSpellingPerKeyAndAcceptsEverySpelling() {
        // The rejection lists canonical spellings only — listing every alias would double the
        // message for no new information — but resolution accepts all of them.
        assertEquals(listOf("conceptRef", "role", "multiple"), demoKeys.canonical)
        assertEquals(setOf("conceptRef", "conceptReference", "role", "multiple"), demoKeys.accepted)
    }

    @Test
    fun aKnownParameterKeyUnderEitherSpellingIsAccepted() {
        for (json in listOf("""{"conceptRef":"X"}""", """{"conceptReference":"X"}""", """{"role":"r","multiple":true}""", "{}")) {
            params(json).rejectUnknownParameterKeys("UPDATE_CONCEPT_CHILD", demoKeys)
        }
    }

    @Test
    fun anUnknownParameterKeyIsRejectedNamingItAndTheAcceptedSet() {
        // The defect this replaces: an unrecognised blob key was dropped, so the caller got
        // "Parameter 'conceptRef' is missing" for a value it did pass — or a write performed
        // under the defaults it thought it had overridden.
        assertSchemaFailure(
            "Unknown parameter in 'parameters' for UPDATE_CONCEPT_CHILD: 'cardinality'. " +
                "Accepted: 'conceptRef', 'role', 'multiple'. An unrecognised key is rejected " +
                "rather than ignored, so a misspelling cannot silently drop the value you passed."
        ) {
            params("""{"conceptRef":"X","role":"r","cardinality":"0..n"}""")
                .rejectUnknownParameterKeys("UPDATE_CONCEPT_CHILD", demoKeys)
        }
    }

    @Test
    fun aNearMissParameterKeyIsRejectedWithTheSpellingItMeant() {
        val message = catchSchemaFailure {
            params("""{"conceptRefs":"X"}""").rejectUnknownParameterKeys("IS_SMART_REFERENCE", demoKeys)
        }
        assertTrue(message, message.contains("'conceptRefs' (did you mean 'conceptRef'?)"))
    }

    @Test
    fun severalUnknownParameterKeysAreAllNamedInOneRejection() {
        val message = catchSchemaFailure {
            params("""{"alpha":1,"omega":2}""").rejectUnknownParameterKeys("MOVE_CHILD", demoKeys)
        }
        assertTrue(message, message.startsWith("Unknown parameters in 'parameters' for MOVE_CHILD: "))
        assertTrue(message, message.contains("'alpha'"))
        assertTrue(message, message.contains("'omega'"))
    }

    @Test
    fun projectPathIsToleratedInsideEveryParametersBlob() {
        // Study remedy P5(a): the platform has already applied the top-level `projectPath` by the
        // time the tool body runs, so a caller that also repeats it inside `parameters` — the
        // position agents reach for — is dropping nothing and must not be failed for it.
        assertEquals(setOf("projectPath"), TOLERATED_PARAMETER_KEYS)
        params("""{"conceptRef":"X","projectPath":"/some/project"}""")
            .rejectUnknownParameterKeys("IS_SMART_REFERENCE", demoKeys)
    }

    @Test
    fun anUnknownParameterKeyHoldingAnExplicitNullIsNotRejected() {
        // It carries no value, so nothing was dropped — the same "explicit null counts as absent"
        // rule every reader on this surface follows.
        params("""{"conceptRef":"X","cardinality":null}""")
            .rejectUnknownParameterKeys("UPDATE_CONCEPT_CHILD", demoKeys)
    }

    @Test
    fun anAbsentParametersBlobIsRejectedNamingTheAcceptedKeys() {
        // Gson answers null for a blank blob and for the literal `null`; the dispatchers used to
        // dereference that into an opaque INTERNAL_ERROR.
        val message = catchSchemaFailure {
            (null as JsonObject?).rejectUnknownParameterKeys("IS_SMART_REFERENCE", demoKeys)
        }
        assertTrue(message, message.contains("must be a JSON object carrying the keys for IS_SMART_REFERENCE"))
        assertTrue(message, message.contains("'conceptRef'"))
    }

    @Test
    fun parameterKeySetsCompose() {
        val composed = ParameterKeys.of("scope") + ParameterKeys.of(PARAM_NODE_REFERENCE)
        assertEquals(listOf("scope", "nodeReference"), composed.canonical)
        assertTrue("nodeRef" in composed.accepted)
    }

    // ---- required parameters-blob keys (study defect D49) ----

    private val requiredDemoKeys = ParameterKeys.of(
        required(PARAM_CONCEPT_REF, "C"), "role", required("position", "P"), required(PARAM_NODE_REFERENCE, "N"),
    )

    @Test
    fun requiredKeysAreAcceptedKeysAndComposeInDeclarationOrder() {
        assertEquals(listOf("conceptRef", "role", "position", "nodeReference"), requiredDemoKeys.canonical)
        assertTrue("conceptReference" in requiredDemoKeys.accepted)
        val composed = ParameterKeys.of(required("scope", "S")) + requiredDemoKeys
        assertEquals(listOf("scope", "conceptRef", "position", "nodeReference"), composed.required.map { it.name })
    }

    @Test
    fun aChoiceBetweenKeysNeedsOneAndKeepsTheKeysWhereTheyWereListed() {
        val keys = ParameterKeys.of("a", "b", "c", requiredOneOf("a", PARAM_NODE_REFERENCE, expected = "A or N"))
        assertEquals(listOf("a", "b", "c", "nodeReference"), keys.canonical)
        assertEquals(listOf("one of a/nodeReference"), keys.required.map { it.name })
        params("""{"nodeRef":"N"}""").rejectMissingParameterKeys("OP", keys)
        val failure = catchMissingKeys { params("""{"a":null,"b":1}""").rejectMissingParameterKeys("OP", keys) }
        assertEquals(
            "one of a/nodeReference is required in 'parameters' for OP. Retry with one of a/nodeReference set to A or N.",
            failure.message,
        )
        assertEquals(mapOf("missingParameters" to listOf("one of a/nodeReference")), failure.details)
    }

    @Test
    fun aConditionalKeyIsRequiredOnlyWithItsTriggerAndNotWithItsReplacement() {
        val keys = ParameterKeys.of(
            "parent", "model",
            required("role", "R", onlyWith = BlobKey("parent")),
            required("property", "P", unlessWith = BlobKey("model")),
        )
        fun missing(json: String): List<Any?> = try {
            params(json).rejectMissingParameterKeys("OP", keys)
            emptyList()
        } catch (e: ToolInputSchemaException) {
            e.details.getValue("missingParameters") as List<*>
        }
        assertEquals(listOf("property"), missing("{}"))
        assertEquals(listOf("role", "property"), missing("""{"parent":"p"}"""))
        assertEquals(listOf("role"), missing("""{"parent":"p","model":"m"}"""))
        assertEquals(emptyList<Any?>(), missing("""{"parent":null,"model":"m"}"""))
    }

    @Test
    fun everyAbsentRequiredKeyIsNamedInOneRejection() {
        val failure = catchMissingKeys { params("""{"role":"r"}""").rejectMissingParameterKeys("MOVE_CHILD", requiredDemoKeys) }
        assertEquals(
            "conceptRef, position and nodeReference are required in 'parameters' for MOVE_CHILD. " +
                "Retry with conceptRef set to C; position set to P; nodeReference set to N.",
            failure.message,
        )
        assertEquals(mapOf("missingParameters" to listOf("conceptRef", "position", "nodeReference")), failure.details)
    }

    @Test
    fun aSingleAbsentRequiredKeyUsesTheSingularForm() {
        val failure = catchMissingKeys {
            params("""{"conceptRef":"X","nodeRef":"N"}""").rejectMissingParameterKeys("MOVE_CHILD", requiredDemoKeys)
        }
        assertEquals("position is required in 'parameters' for MOVE_CHILD. Retry with position set to P.", failure.message)
    }

    @Test
    fun aRequiredKeyIsAbsentOnlyWhenNoSpellingCarriesANonNullValue() {
        // An alias, an empty string, an ill-typed value and two spellings at once are all present:
        // each is left to the typed read, so none of them can hide a key that really is absent.
        for (json in listOf(
            """{"conceptReference":"X","position":0,"nodeRef":"N"}""",
            """{"conceptRef":"","position":"end","nodeReference":{}}""",
            """{"conceptRef":["X"],"position":0,"nodeReference":"N","nodeRef":"N"}""",
        )) {
            params(json).rejectMissingParameterKeys("MOVE_CHILD", requiredDemoKeys)
        }
        val failure = catchMissingKeys {
            params("""{"conceptRef":null,"conceptReference":null,"position":0,"nodeRef":"N"}""")
                .rejectMissingParameterKeys("MOVE_CHILD", requiredDemoKeys)
        }
        assertEquals(mapOf("missingParameters" to listOf("conceptRef")), failure.details)
    }

    @Test
    fun aRequiredReadOfAnUndeclaredAbsentKeyIsAProgrammingError() {
        try {
            params("{}").requiredParamString(PARAM_CONCEPT_REF)
            fail("expected IllegalStateException")
        } catch (e: IllegalStateException) {
            assertTrue(e.message, e.message!!.contains("'conceptRef' is read as required"))
        }
        assertEquals("X", params("""{"conceptReference":"X"}""").requiredParamString(PARAM_CONCEPT_REF))
        assertEquals(3, params("""{"position":"3"}""").requiredParamInt("position"))
    }

    private fun catchMissingKeys(block: () -> Unit): ToolInputSchemaException {
        try {
            block()
        } catch (e: ToolInputSchemaException) {
            return e
        }
        fail("expected ToolInputSchemaException")
        throw AssertionError()
    }

    @Test
    fun assignableReferencesKeysMirrorTheRequestDataClass() {
        // GET_ASSIGNABLE_REFERENCES is the one operation whose blob Gson deserializes whole, so
        // its accepted-key list is maintained by hand. A field added to the request class without
        // the matching key would make the new field unsendable.
        val fields = GetAssignableReferencesRequest::class.primaryConstructor!!.parameters.mapNotNull { it.name }
        assertEquals(fields, GET_ASSIGNABLE_REFERENCES_KEYS.canonical)
    }

    @Test
    fun suggestParameterNameOnlySuggestsAReasonablyCloseCandidate() {
        val candidates = listOf("models", "modules", "rebuild", "wholeProject")
        assertEquals("modules", suggestParameterName("module", candidates))
        assertEquals("rebuild", suggestParameterName("rebulid", candidates))
        assertEquals("wholeProject", suggestParameterName("wholeproject", candidates))
        // Far enough that a suggestion would mislead. `moduleName` — the key a caller after a
        // MAKE reaches for — is one of these: the accepted-key list the rejection prints, not a
        // guess, is what names `modules` for that caller.
        assertNull(suggestParameterName("moduleName", candidates))
        assertNull(suggestParameterName("zzzzzzzzzzzz", candidates))
    }

    private fun read(target: Any, getter: String): Any? {
        return target.javaClass.getMethod(getter).invoke(target)
    }

    private fun assertSchemaFailure(expectedMessage: String, block: () -> Unit) {
        assertEquals(expectedMessage, catchSchemaFailure(block))
    }

    private fun catchSchemaFailure(block: () -> Unit): String =
        catchExpected(block, "ToolInputSchemaException") { it.javaClass.simpleName == "ToolInputSchemaException" }

    private fun catchInvalidJson(block: () -> Unit): String =
        catchExpected(block, "ToolInputJsonException") { it.javaClass.simpleName == "ToolInputJsonException" }

    private fun catchExpected(
        block: () -> Unit,
        expectedTypeLabel: String,
        matches: (Throwable) -> Boolean,
    ): String {
        try {
            block()
        } catch (e: Throwable) {
            if (matches(e)) {
                return e.message.orEmpty()
            }
            throw e
        }
        fail("Expected $expectedTypeLabel, but no exception was thrown")
        error("unreachable")
    }
}
