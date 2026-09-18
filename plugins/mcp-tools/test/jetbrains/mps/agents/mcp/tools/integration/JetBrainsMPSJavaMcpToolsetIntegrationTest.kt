package jetbrains.mps.agents.mcp.tools.integration

import jetbrains.mps.agents.mcp.tools.*
import jetbrains.mps.agents.mcp.tools.languages.*

import com.google.gson.JsonObject
import com.google.gson.JsonParser
import jetbrains.mps.lang.smodel.generator.smodelAdapter.IAttributeDescriptor
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations
import jetbrains.mps.smodel.SModelInternal
import org.jetbrains.mps.openapi.model.SModel
import org.jetbrains.mps.openapi.model.SNode
import org.jetbrains.mps.openapi.persistence.PersistenceFacade
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNotEquals
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * End-to-end integration tests for [JetBrainsMPSJavaMcpToolset.mps_mcp_parse_java_and_insert]:
 * exercises root and child insertion modes, the `importUsedLanguages` post-process flag, and
 * the schema-level error path. The tests provision a fresh Solution + Java model so each
 * scenario starts from an empty model with no `baseLanguage` import — letting us assert that
 * post-processing actually mutates the model.
 */
class JetBrainsMPSJavaMcpToolsetIntegrationTest : McpIntegrationTestBase() {

    @Test
    fun `root mode inserts class and auto-imports baseLanguage`() {
        val javaModel = createJavaModel()
        val javaModelRef = modelRefOf(javaModel)

        val parameters = """
            {
              "code": "class Foo {}",
              "featureKind": "CLASS",
              "insert": { "mode": "root", "modelRef": "$javaModelRef" }
            }
        """.trimIndent()

        val response = runTool(JetBrainsMPSJavaMcpToolset()) { it.mps_mcp_parse_java_and_insert(parameters) }
        val data = assertOkData(response)

        val inserted = data.getAsJsonArray("inserted")
        assertEquals("expected exactly one inserted root: $response", 1, inserted.size())
        val rootInfo = inserted.first().asJsonObject
        assertEquals("Foo", rootInfo.get("name").asString)
        assertEquals("ClassConcept", rootInfo.get("concept").asString)

        readOnRepo {
            val roots = javaModel.rootNodes.toList()
            assertEquals(1, roots.size)
            assertEquals("Foo", roots.single().name)
            assertEquals(
                "default postProcess should auto-import exactly baseLanguage and nothing else",
                setOf("jetbrains.mps.baseLanguage"),
                usedLanguageNames(javaModel)
            )
        }
    }

    @Test
    fun `child mode appends a method to an existing class`() {
        val javaModel = createJavaModel()
        val javaModelRef = modelRefOf(javaModel)

        // Seed the model with a class root via root-mode insertion so the test exercises the
        // real toolset path rather than constructing the SNode manually.
        val toolset = JetBrainsMPSJavaMcpToolset()
        val seedResponse = runTool(toolset) {
            it.mps_mcp_parse_java_and_insert(
                """
                {
                  "code": "class Bar {}",
                  "featureKind": "CLASS",
                  "insert": { "mode": "root", "modelRef": "$javaModelRef" }
                }
                """.trimIndent()
            )
        }
        val classRef = assertOkData(seedResponse).getAsJsonArray("inserted")
            .first().asJsonObject.get("reference").asString

        val response = runTool(toolset) {
            it.mps_mcp_parse_java_and_insert(
                """
                {
                  "code": "void greet() { }",
                  "featureKind": "METHOD",
                  "contextNodeRef": "$classRef",
                  "insert": { "mode": "child", "parentRef": "$classRef", "role": "member" }
                }
                """.trimIndent()
            )
        }
        val data = assertOkData(response)

        val inserted = data.getAsJsonArray("inserted")
        assertEquals("expected one inserted method: $response", 1, inserted.size())
        assertEquals("greet", inserted.first().asJsonObject.get("name").asString)
        assertEquals(
            "the append path must also report the actual landing index: $response",
            0,
            inserted.first().asJsonObject.get("index").asInt,
        )

        readOnRepo {
            val classRoot = javaModel.rootNodes.single { it.name == "Bar" }
            val methods = classRoot.children.filter { it.containmentLink?.name == "member" }
            assertEquals(1, methods.size)
            assertEquals("greet", methods.single().name)
            assertEquals(classRoot, methods.single().parent)
        }
    }

    @Test
    fun `replace mode swaps a child node in place`() {
        val javaModel = createJavaModel()
        val javaModelRef = modelRefOf(javaModel)

        val toolset = JetBrainsMPSJavaMcpToolset()

        // Seed: class Baz with a single method greet() reachable for replacement.
        val seedClass = runTool(toolset) {
            it.mps_mcp_parse_java_and_insert(
                """
                {
                  "code": "class Baz {}",
                  "featureKind": "CLASS",
                  "insert": { "mode": "root", "modelRef": "$javaModelRef" }
                }
                """.trimIndent()
            )
        }
        val classRef = assertOkData(seedClass).getAsJsonArray("inserted")
            .first().asJsonObject.get("reference").asString

        val seedMethod = runTool(toolset) {
            it.mps_mcp_parse_java_and_insert(
                """
                {
                  "code": "void greet() { }",
                  "featureKind": "METHOD",
                  "contextNodeRef": "$classRef",
                  "insert": { "mode": "child", "parentRef": "$classRef", "role": "member" }
                }
                """.trimIndent()
            )
        }
        val originalMethodRef = assertOkData(seedMethod).getAsJsonArray("inserted")
            .first().asJsonObject.get("reference").asString

        val response = runTool(toolset) {
            it.mps_mcp_parse_java_and_insert(
                """
                {
                  "code": "void farewell() { }",
                  "featureKind": "METHOD",
                  "contextNodeRef": "$classRef",
                  "insert": { "mode": "replace", "targetRef": "$originalMethodRef" }
                }
                """.trimIndent()
            )
        }
        val data = assertOkData(response)

        val inserted = data.getAsJsonArray("inserted")
        assertEquals("expected one replacement node: $response", 1, inserted.size())
        val replacedInfo = inserted.first().asJsonObject
        assertEquals("farewell", replacedInfo.get("name").asString)
        val newMethodRef = replacedInfo.get("reference").asString
        assertNotEquals(
            "replace mode must produce a fresh SNodeReference, not echo the original",
            originalMethodRef, newMethodRef
        )

        readOnRepo {
            val classRoot = javaModel.rootNodes.single { it.name == "Baz" }
            val methods = classRoot.children.filter { it.containmentLink?.name == "member" }
            assertEquals(
                "the original greet() must be gone and only farewell() remain",
                listOf("farewell"),
                methods.mapNotNull { it.name }
            )
            // The replacement must inherit the original parent + role; nextSibling unchanged
            // (there is no following sibling, so just confirm the parent linkage).
            assertEquals(classRoot, methods.single().parent)
            assertEquals("member", methods.single().containmentLink?.name)
        }
    }

    @Test
    fun `importUsedLanguages false leaves model imports untouched`() {
        val javaModel = createJavaModel()
        val javaModelRef = modelRefOf(javaModel)

        val parameters = """
            {
              "code": "class Quiet {}",
              "featureKind": "CLASS",
              "insert": { "mode": "root", "modelRef": "$javaModelRef" },
              "postProcess": { "importUsedLanguages": false, "resolveReferences": false }
            }
        """.trimIndent()

        val response = runTool(JetBrainsMPSJavaMcpToolset()) { it.mps_mcp_parse_java_and_insert(parameters) }
        assertOkData(response)

        readOnRepo {
            val rootNames = javaModel.rootNodes.mapNotNull { it.name }.toList()
            assertEquals("expected the class to land as a root regardless: $rootNames", listOf("Quiet"), rootNames)
            assertFalse(
                "with importUsedLanguages=false the toolset must not auto-import baseLanguage",
                usedLanguageNames(javaModel).contains("jetbrains.mps.baseLanguage")
            )
        }
    }

    @Test
    fun `console mode returns an error envelope when the console is unavailable`() {
        val response = runTool(JetBrainsMPSJavaMcpToolset()) {
            it.mps_mcp_parse_java_and_insert(
                """
                {
                  "code": "1 + 2",
                  "featureKind": "EXPRESSION",
                  "insert": { "mode": "console" }
                }
                """.trimIndent()
            )
        }
        val obj = JsonParser.parseString(response).asJsonObject
        assertFalse("expected error envelope when the console is unavailable: $response", obj.get("ok").asBoolean)
    }

    @Test
    fun `child mode with console parent ref returns an error envelope when the console is unavailable`() {
        val response = runTool(JetBrainsMPSJavaMcpToolset()) {
            it.mps_mcp_parse_java_and_insert(
                """
                {
                  "code": "int x = 1;",
                  "featureKind": "STATEMENTS",
                  "insert": { "mode": "child", "parentRef": "r:m#p", "role": "statement" }
                }
                """.trimIndent()
            )
        }
        val obj = JsonParser.parseString(response).asJsonObject
        assertFalse("expected error envelope when parent ref is not found: $response", obj.get("ok").asBoolean)
    }

    @Test
    fun `importUsedLanguages false suppresses imports even when resolveReferences runs`() {
        // Regression: the reference-resolution loop calls updateModelDependencies(), which used to
        // add used languages unconditionally. That meant importUsedLanguages=false did NOT suppress
        // language imports whenever resolveReferences=true. The flag must win in both passes.
        val javaModel = createJavaModel()
        val javaModelRef = modelRefOf(javaModel)

        val parameters = """
            {
              "code": "class Quiet {}",
              "featureKind": "CLASS",
              "insert": { "mode": "root", "modelRef": "$javaModelRef" },
              "postProcess": { "importUsedLanguages": false, "resolveReferences": true }
            }
        """.trimIndent()

        val response = runTool(JetBrainsMPSJavaMcpToolset()) { it.mps_mcp_parse_java_and_insert(parameters) }
        assertOkData(response)

        readOnRepo {
            val rootNames = javaModel.rootNodes.mapNotNull { it.name }.toList()
            assertEquals("expected the class to land as a root regardless: $rootNames", listOf("Quiet"), rootNames)
            assertFalse(
                "importUsedLanguages=false must suppress language imports even when the resolution loop runs",
                usedLanguageNames(javaModel).contains("jetbrains.mps.baseLanguage")
            )
        }
    }

    @Test
    fun `unknown parameter key is rejected instead of silently ignored`() {
        // Regression: unrecognized keys (e.g. the unsupported `dryRun`) used to be silently dropped
        // and the model mutated anyway. They must now fail as INVALID_REQUEST without mutating.
        val javaModel = createJavaModel()
        val javaModelRef = modelRefOf(javaModel)

        val parameters = """
            {
              "code": "class Foo {}",
              "featureKind": "CLASS",
              "dryRun": true,
              "insert": { "mode": "root", "modelRef": "$javaModelRef" }
            }
        """.trimIndent()

        val response = runTool(JetBrainsMPSJavaMcpToolset()) { it.mps_mcp_parse_java_and_insert(parameters) }

        val obj = JsonParser.parseString(response).asJsonObject
        assertFalse("expected error envelope: $response", obj.get("ok").asBoolean)
        assertEquals("INVALID_REQUEST", obj.get("code").asString)
        assertTrue(
            "error must name the offending unknown key: ${obj.get("error").asString}",
            obj.get("error").asString.contains("dryRun")
        )

        readOnRepo {
            assertEquals(
                "rejected request must not mutate the model",
                emptyList<SNode>(),
                javaModel.rootNodes.toList()
            )
        }
    }

    @Test
    fun `replace mode rejects code that parses to multiple top-level nodes`() {
        // Replace mode substitutes the target node with a single replacement; multiple parsed
        // nodes cannot fill a single containment slot. Previously the toolset silently consumed
        // `parsedNodes.first()` and dropped the rest, hiding caller misuse. The toolset must
        // surface the mismatch up front and leave the existing node intact.
        val javaModel = createJavaModel()
        val javaModelRef = modelRefOf(javaModel)
        val toolset = JetBrainsMPSJavaMcpToolset()

        // Seed: a class with a single method we will attempt to replace.
        val seedClass = runTool(toolset) {
            it.mps_mcp_parse_java_and_insert(
                """{"code":"class Holder {}","featureKind":"CLASS",
                    "insert":{"mode":"root","modelRef":"$javaModelRef"}}"""
            )
        }
        val classRef = assertOkData(seedClass).getAsJsonArray("inserted")
            .first().asJsonObject.get("reference").asString

        val seedMethod = runTool(toolset) {
            it.mps_mcp_parse_java_and_insert(
                """{"code":"void only() {}","featureKind":"METHOD","contextNodeRef":"$classRef",
                    "insert":{"mode":"child","parentRef":"$classRef","role":"member"}}"""
            )
        }
        val methodRef = assertOkData(seedMethod).getAsJsonArray("inserted")
            .first().asJsonObject.get("reference").asString

        // Attempt to replace with CLASS_CONTENT code that parses to two methods.
        val response = runTool(toolset) {
            it.mps_mcp_parse_java_and_insert(
                """{"code":"void m1() {} void m2() {}","featureKind":"CLASS_CONTENT",
                    "contextNodeRef":"$classRef",
                    "insert":{"mode":"replace","targetRef":"$methodRef"}}"""
            )
        }
        val obj = JsonParser.parseString(response).asJsonObject
        assertFalse("expected error envelope: $response", obj.get("ok").asBoolean)
        val err = obj.get("error").asString
        assertTrue(
            "error must call out the replace-mode multi-node mismatch: $err",
            err.contains("Replace mode requires exactly one top-level parsed node"),
        )

        readOnRepo {
            val classRoot = javaModel.rootNodes.single { it.name == "Holder" }
            val methodNames = classRoot.children
                .filter { it.containmentLink?.name == "member" }
                .mapNotNull { it.name }
            assertEquals(
                "replace rejection must not partially mutate the model; got members: $methodNames",
                listOf("only"),
                methodNames,
            )
        }
    }

    @Test
    fun `METHOD without contextNodeRef is rejected as INVALID_REQUEST`() {
        val javaModel = createJavaModel()
        val javaModelRef = modelRefOf(javaModel)

        val parameters = """
            {
              "code": "void noop() { }",
              "featureKind": "METHOD",
              "insert": { "mode": "root", "modelRef": "$javaModelRef" }
            }
        """.trimIndent()

        val response = runTool(JetBrainsMPSJavaMcpToolset()) { it.mps_mcp_parse_java_and_insert(parameters) }

        val obj = JsonParser.parseString(response).asJsonObject
        assertFalse("expected error envelope: $response", obj.get("ok").asBoolean)
        assertEquals("INVALID_REQUEST", obj.get("code").asString)
        assertTrue(
            "error should mention the missing contextNodeRef requirement: ${obj.get("error").asString}",
            obj.get("error").asString.contains("contextNodeRef")
        )
        assertTrue(
            "the updated wording must mention ConceptBehavior as an admissible context: ${obj.get("error").asString}",
            obj.get("error").asString.contains("ConceptBehavior")
        )

        readOnRepo {
            assertEquals("schema-level rejection must not touch the model", emptyList<SNode>(), javaModel.rootNodes.toList())
        }
    }

    @Test
    fun `root mode rejects a position other than the append sentinel as INVALID_REQUEST`() {
        // INC-6: a root insert with position:0 used to return ok:true while silently appending the
        // root (never prepending it), leaving the caller with no signal that the parameter had no
        // effect. It must now be rejected up front, before the model is touched.
        val javaModel = createJavaModel()
        val javaModelRef = modelRefOf(javaModel)

        val parameters = """
            {
              "code": "class Foo {}",
              "featureKind": "CLASS",
              "insert": { "mode": "root", "modelRef": "$javaModelRef", "position": 0 }
            }
        """.trimIndent()

        val response = runTool(JetBrainsMPSJavaMcpToolset()) { it.mps_mcp_parse_java_and_insert(parameters) }

        val obj = JsonParser.parseString(response).asJsonObject
        assertFalse("expected error envelope: $response", obj.get("ok").asBoolean)
        assertEquals("INVALID_REQUEST", obj.get("code").asString)
        assertTrue(
            "error should explain that root inserts do not support position: ${obj.get("error").asString}",
            obj.get("error").asString.contains("'position' is not supported for root insertion")
        )

        readOnRepo {
            assertEquals("schema-level rejection must not touch the model", emptyList<SNode>(), javaModel.rootNodes.toList())
        }
    }

    @Test
    fun `child mode inserts an expression into an expression-bearing role`() {
        // Regression: EXPRESSION input is parsed through a temporary `Object __mcp_expr__ = …;`
        // wrapper. JavaParser detaches the top-level statement, but the unwrapped initializer was
        // handed back still attached to that wrapper, so child-mode addChild() (which asserts the
        // incoming node has no parent) threw. The unwrap step must detach the expression so it can
        // be re-parented.
        val javaModel = createJavaModel()
        val javaModelRef = modelRefOf(javaModel)
        val toolset = JetBrainsMPSJavaMcpToolset()

        val seedClass = runTool(toolset) {
            it.mps_mcp_parse_java_and_insert(
                """{"code":"class Holder {}","featureKind":"CLASS",
                    "insert":{"mode":"root","modelRef":"$javaModelRef"}}"""
            )
        }
        val classRef = assertOkData(seedClass).getAsJsonArray("inserted")
            .first().asJsonObject.get("reference").asString

        // Seed a field whose (empty) `initializer` role accepts an Expression.
        val seedField = runTool(toolset) {
            it.mps_mcp_parse_java_and_insert(
                """{"code":"int total;","featureKind":"FIELD","contextNodeRef":"$classRef",
                    "insert":{"mode":"child","parentRef":"$classRef","role":"member"}}"""
            )
        }
        val fieldRef = assertOkData(seedField).getAsJsonArray("inserted")
            .first().asJsonObject.get("reference").asString

        val response = runTool(toolset) {
            it.mps_mcp_parse_java_and_insert(
                """{"code":"1 + 2","featureKind":"EXPRESSION",
                    "insert":{"mode":"child","parentRef":"$fieldRef","role":"initializer"}}"""
            )
        }
        val data = assertOkData(response)
        val inserted = data.getAsJsonArray("inserted")
        assertEquals("expected one inserted expression: $response", 1, inserted.size())
        assertEquals("PlusExpression", inserted.first().asJsonObject.get("concept").asString)

        readOnRepo {
            val field = javaModel.rootNodes.single { it.name == "Holder" }
                .children.single { it.name == "total" }
            val initializer = field.children.single { it.containmentLink?.name == "initializer" }
            assertEquals("PlusExpression", initializer.concept.name)
        }
    }

    @Test
    fun `child mode rejects an expression placed in the member role`() {
        // Regression (E6): child mode called parent.addChild() without checking that the node's
        // concept fits the role, so an Expression dropped into `member` silently corrupted the
        // model. The toolset must reject the mismatch up front and leave the model untouched.
        val javaModel = createJavaModel()
        val javaModelRef = modelRefOf(javaModel)
        val toolset = JetBrainsMPSJavaMcpToolset()

        val seedClass = runTool(toolset) {
            it.mps_mcp_parse_java_and_insert(
                """{"code":"class Box {}","featureKind":"CLASS",
                    "insert":{"mode":"root","modelRef":"$javaModelRef"}}"""
            )
        }
        val classRef = assertOkData(seedClass).getAsJsonArray("inserted")
            .first().asJsonObject.get("reference").asString

        val response = runTool(toolset) {
            it.mps_mcp_parse_java_and_insert(
                """{"code":"1 + 2","featureKind":"EXPRESSION",
                    "insert":{"mode":"child","parentRef":"$classRef","role":"member"}}"""
            )
        }
        val obj = JsonParser.parseString(response).asJsonObject
        assertFalse("expected error envelope: $response", obj.get("ok").asBoolean)
        val err = obj.get("error").asString
        assertTrue(
            "error must call out the role assignability mismatch: $err",
            err.contains("cannot be placed in role 'member'"),
        )

        readOnRepo {
            val classRoot = javaModel.rootNodes.single { it.name == "Box" }
            assertEquals(
                "assignability rejection must not mutate the model",
                emptyList<String>(),
                classRoot.children.filter { it.containmentLink?.name == "member" }.mapNotNull { it.name },
            )
        }
    }

    @Test
    fun `replace mode rejects a concept incompatible with the target role`() {
        // Regression (E6): replace mode called SNodeOperations.replaceWithAnother() without
        // checking that the replacement's concept fits the target's containment role, so swapping
        // a method (member role) for an Expression corrupted the AST. The mismatch must be
        // rejected and the original node left in place.
        val javaModel = createJavaModel()
        val javaModelRef = modelRefOf(javaModel)
        val toolset = JetBrainsMPSJavaMcpToolset()

        val seedClass = runTool(toolset) {
            it.mps_mcp_parse_java_and_insert(
                """{"code":"class Crate {}","featureKind":"CLASS",
                    "insert":{"mode":"root","modelRef":"$javaModelRef"}}"""
            )
        }
        val classRef = assertOkData(seedClass).getAsJsonArray("inserted")
            .first().asJsonObject.get("reference").asString

        val seedMethod = runTool(toolset) {
            it.mps_mcp_parse_java_and_insert(
                """{"code":"void run() {}","featureKind":"METHOD","contextNodeRef":"$classRef",
                    "insert":{"mode":"child","parentRef":"$classRef","role":"member"}}"""
            )
        }
        val methodRef = assertOkData(seedMethod).getAsJsonArray("inserted")
            .first().asJsonObject.get("reference").asString

        val response = runTool(toolset) {
            it.mps_mcp_parse_java_and_insert(
                """{"code":"1 + 2","featureKind":"EXPRESSION",
                    "insert":{"mode":"replace","targetRef":"$methodRef"}}"""
            )
        }
        val obj = JsonParser.parseString(response).asJsonObject
        assertFalse("expected error envelope: $response", obj.get("ok").asBoolean)
        val err = obj.get("error").asString
        assertTrue(
            "error must call out the role assignability mismatch: $err",
            err.contains("cannot be placed in role 'member'"),
        )

        readOnRepo {
            val classRoot = javaModel.rootNodes.single { it.name == "Crate" }
            assertEquals(
                "replace rejection must leave the original method intact",
                listOf("run"),
                classRoot.children.filter { it.containmentLink?.name == "member" }.mapNotNull { it.name },
            )
        }
    }

    @Test
    fun `child mode clamps an out-of-range position to an append and reports the actual index`() {
        // INC-5: a multi-cardinality child insert with a `position` past the current child count
        // used to fail hard with "Target index N is out of bounds (count: …)". It must now clamp
        // to an append, return ok:true, and report the node's actual landing index so a caller
        // that overshoots (e.g. a loop counter) can still see where the node ended up.
        val javaModel = createJavaModel()
        val javaModelRef = modelRefOf(javaModel)
        val toolset = JetBrainsMPSJavaMcpToolset()

        val classRef = seedClassRoot(toolset, javaModelRef, "Seq")
        seedFieldMember(toolset, classRef, "a")
        seedFieldMember(toolset, classRef, "b")
        seedFieldMember(toolset, classRef, "c")

        val response = runTool(toolset) {
            it.mps_mcp_parse_java_and_insert(
                """{"code":"int z;","featureKind":"FIELD","contextNodeRef":"$classRef",
                    "insert":{"mode":"child","parentRef":"$classRef","role":"member","position":99}}"""
            )
        }
        val data = assertOkData(response)
        val inserted = data.getAsJsonArray("inserted")
        assertEquals("expected one inserted member: $response", 1, inserted.size())
        assertEquals("z", inserted.first().asJsonObject.get("name").asString)
        assertEquals(
            "out-of-range position must clamp to the append index (3 existing members): $response",
            3,
            inserted.first().asJsonObject.get("index").asInt,
        )

        readOnRepo {
            val classRoot = javaModel.rootNodes.single { it.name == "Seq" }
            assertEquals(
                "the overshooting member must be appended last, original order preserved",
                listOf("a", "b", "c", "z"),
                classRoot.children.filter { it.containmentLink?.name == "member" }.mapNotNull { it.name },
            )
        }
    }

    @Test
    fun `child mode inserts at position 0 and reports the actual index`() {
        // The complement of the clamp case: an in-range `position` is honoured, and the response
        // reports the same index the node actually landed at.
        val javaModel = createJavaModel()
        val javaModelRef = modelRefOf(javaModel)
        val toolset = JetBrainsMPSJavaMcpToolset()

        val classRef = seedClassRoot(toolset, javaModelRef, "Front")
        seedFieldMember(toolset, classRef, "a")
        seedFieldMember(toolset, classRef, "b")

        val response = runTool(toolset) {
            it.mps_mcp_parse_java_and_insert(
                """{"code":"int y;","featureKind":"FIELD","contextNodeRef":"$classRef",
                    "insert":{"mode":"child","parentRef":"$classRef","role":"member","position":0}}"""
            )
        }
        val data = assertOkData(response)
        val inserted = data.getAsJsonArray("inserted")
        assertEquals(
            "position 0 must report index 0: $response",
            0,
            inserted.first().asJsonObject.get("index").asInt,
        )

        readOnRepo {
            val classRoot = javaModel.rootNodes.single { it.name == "Front" }
            assertEquals(
                "position 0 must prepend, pushing existing members back",
                listOf("y", "a", "b"),
                classRoot.children.filter { it.containmentLink?.name == "member" }.mapNotNull { it.name },
            )
        }
    }

    @Test
    fun `child mode rejects a negative position other than the append sentinel`() {
        // -1 is the only append sentinel; any other negative value is meaningless as an index and
        // is rejected up front, leaving the model untouched.
        val javaModel = createJavaModel()
        val javaModelRef = modelRefOf(javaModel)
        val toolset = JetBrainsMPSJavaMcpToolset()

        val classRef = seedClassRoot(toolset, javaModelRef, "Neg")
        seedFieldMember(toolset, classRef, "a")

        val response = runTool(toolset) {
            it.mps_mcp_parse_java_and_insert(
                """{"code":"int z;","featureKind":"FIELD","contextNodeRef":"$classRef",
                    "insert":{"mode":"child","parentRef":"$classRef","role":"member","position":-2}}"""
            )
        }
        val obj = JsonParser.parseString(response).asJsonObject
        assertFalse("expected error envelope: $response", obj.get("ok").asBoolean)
        assertTrue(
            "error should explain the invalid negative position: ${obj.get("error").asString}",
            obj.get("error").asString.contains("position -2 is invalid"),
        )

        readOnRepo {
            val classRoot = javaModel.rootNodes.single { it.name == "Neg" }
            assertEquals(
                "a rejected insert must not mutate the model",
                listOf("a"),
                classRoot.children.filter { it.containmentLink?.name == "member" }.mapNotNull { it.name },
            )
        }
    }

    @Test
    fun `lambda is accepted as a closure and closures language is imported`() {
        // INC-4: a Java 8 lambda is no longer rejected. The parser maps it to a
        // baseLanguage.closures ClosureLiteral and the closures language is auto-imported. Because a
        // closure only type-checks against a matching functional-type target, placing one in an
        // int-typed slot is a type error — surfaced through the always-present `problems` array
        // (see the next test) rather than by silently leaving the model broken. The exact
        // type-system wording depends on the closures typesystem runtime (mirroring the
        // check_root_node_problems test), so here we assert the closure mapping + import + the
        // presence of the problems channel rather than pinning the message text.
        val javaModel = createJavaModel()
        val javaModelRef = modelRefOf(javaModel)
        val toolset = JetBrainsMPSJavaMcpToolset()

        // Seed a class with an int field initializer that we will replace with a lambda.
        val seedResponse = runTool(toolset) {
            it.mps_mcp_parse_java_and_insert(
                """{"code":"class L { int f = 0; }","featureKind":"CLASS",
                    "insert":{"mode":"root","modelRef":"$javaModelRef"}}"""
            )
        }
        assertOkData(seedResponse)

        val initializerRef = readOnRepo {
            val cls = javaModel.rootNodes.single { it.name == "L" }
            val field = cls.children.single { it.containmentLink?.name == "member" && it.name == "f" }
            val initializer = field.children.single { it.containmentLink?.name == "initializer" }
            PersistenceFacade.getInstance().asString(initializer.reference)
        }

        val response = runTool(toolset) {
            it.mps_mcp_parse_java_and_insert(
                """{"code":"() -> 42","featureKind":"EXPRESSION","recovery":false,
                    "insert":{"mode":"replace","targetRef":"$initializerRef"}}"""
            )
        }
        val data = assertOkData(response)

        val inserted = data.getAsJsonArray("inserted")
        assertEquals("lambda should map to exactly one inserted node: $response", 1, inserted.size())
        assertEquals(
            "a Java 8 lambda must be mapped to a closures ClosureLiteral: $response",
            "ClosureLiteral",
            inserted.first().asJsonObject.get("concept").asString,
        )

        val languages = data.getAsJsonArray("languages").map { it.asString }
        assertTrue(
            "the closures language must be reported as used/imported: $languages",
            languages.contains("jetbrains.mps.baseLanguage.closures"),
        )

        assertTrue("the success envelope must always carry a problems array: $response", data.has("problems"))

        readOnRepo {
            assertTrue(
                "the closures language must be imported into the model: ${usedLanguageNames(javaModel)}",
                usedLanguageNames(javaModel).contains("jetbrains.mps.baseLanguage.closures"),
            )
        }
    }

    @Test
    fun `insert response carries a problems array and a clean insert has no errors`() {
        // The success envelope now always carries a `problems` array — the same checks as
        // mps_mcp_check_root_node_problems, scoped to the inserted nodes' subtrees — so an
        // ok:true result that nonetheless leaves a type error is never silent. A clean insert
        // leaves no error-severity problems.
        val javaModel = createJavaModel()
        val javaModelRef = modelRefOf(javaModel)

        val response = runTool(JetBrainsMPSJavaMcpToolset()) {
            it.mps_mcp_parse_java_and_insert(
                """{"code":"class Clean {}","featureKind":"CLASS",
                    "insert":{"mode":"root","modelRef":"$javaModelRef"}}"""
            )
        }
        val data = assertOkData(response)

        assertTrue("the response must carry a problems array: $response", data.has("problems"))
        val problems = data.getAsJsonArray("problems")
        assertTrue(
            "a clean insert must not leave any error-severity problems: $problems",
            problems.none { it.asJsonObject.get("severity").asString == "error" },
        )
    }

    @Test
    fun `METHOD on a ConceptBehavior inserts a ConceptMethodDeclaration in the method role`() {
        val behaviorRef = createConceptBehaviorRoot()

        val response = runTool(JetBrainsMPSJavaMcpToolset()) {
            it.mps_mcp_parse_java_and_insert(
                """
                {
                  "code": "void greet() { }",
                  "featureKind": "METHOD",
                  "contextNodeRef": "$behaviorRef",
                  "insert": { "mode": "child", "parentRef": "$behaviorRef", "role": "method" }
                }
                """.trimIndent()
            )
        }
        val data = assertOkData(response)
        assertEquals(
            "a trivial method must insert with no problems: $response",
            0,
            data.getAsJsonArray("problems").size()
        )

        val inserted = data.getAsJsonArray("inserted")
        assertEquals("expected one inserted method: $response", 1, inserted.size())
        assertEquals("greet", inserted.first().asJsonObject.get("name").asString)
        assertEquals("ConceptMethodDeclaration", inserted.first().asJsonObject.get("concept").asString)

        readOnRepo {
            val behavior = resolveNodeRef(behaviorRef)
            val methods = behavior.children.filter { it.containmentLink?.name == "method" }
            assertEquals(1, methods.size)
            assertEquals("greet", methods.single().name)
        }
    }

    @Test
    fun `METHOD on a ConceptBehavior rewrites an unqualified this to ThisNodeExpression`() {
        // `name` is inherited via INamedConcept, not declared on the seeded concept directly, so
        // this also exercises the "inherited property" case: SConcept.properties includes it.
        val behaviorRef = createConceptBehaviorRoot(implements = "jetbrains.mps.lang.core.structure.INamedConcept")

        val response = runTool(JetBrainsMPSJavaMcpToolset()) {
            it.mps_mcp_parse_java_and_insert(
                """
                {
                  "code": "String n() { return this.name; }",
                  "featureKind": "METHOD",
                  "contextNodeRef": "$behaviorRef",
                  "insert": { "mode": "child", "parentRef": "$behaviorRef", "role": "method" }
                }
                """.trimIndent()
            )
        }
        val data = assertOkData(response)
        assertEquals(
            "this.name must resolve to a real property access with no leftover problems: $response",
            0,
            data.getAsJsonArray("problems").size()
        )

        readOnRepo {
            val behavior = resolveNodeRef(behaviorRef)
            val method = behavior.children.single { it.containmentLink?.name == "method" }
            val descendantConceptNames = SNodeOperations.getNodeDescendants(method, null, true, emptyArray())
                .map { it.concept.name }
            assertTrue(
                "expected a ThisNodeExpression in the converted body: $descendantConceptNames",
                descendantConceptNames.contains("ThisNodeExpression")
            )
            assertFalse(
                "no BaseLanguage ThisExpression should remain: $descendantConceptNames",
                descendantConceptNames.contains("ThisExpression")
            )
            assertTrue(
                "this.name must be rewritten to an SPropertyAccess: $descendantConceptNames",
                descendantConceptNames.contains("SPropertyAccess")
            )
            assertFalse(
                "no unresolved FieldReferenceOperation should remain: $descendantConceptNames",
                descendantConceptNames.contains("FieldReferenceOperation")
            )
        }
    }

    @Test
    fun `METHOD on a ConceptBehavior rewrites this on a single child link to SLinkAccess and a multiple child link to SLinkListAccess`() {
        val behaviorRef = createConceptBehaviorRoot(
            childrenJson = """
                [
                  { "role": "single", "target": "jetbrains.mps.lang.core.structure.BaseConcept", "multiple": false, "optional": true },
                  { "role": "many", "target": "jetbrains.mps.lang.core.structure.BaseConcept", "multiple": true, "optional": true }
                ]
            """.trimIndent()
        )

        val response = runTool(JetBrainsMPSJavaMcpToolset()) {
            it.mps_mcp_parse_java_and_insert(
                """
                {
                  "code": "void m() { this.single.hashCode(); this.many.hashCode(); }",
                  "featureKind": "METHOD",
                  "contextNodeRef": "$behaviorRef",
                  "insert": { "mode": "child", "parentRef": "$behaviorRef", "role": "method" }
                }
                """.trimIndent()
            )
        }
        assertOkData(response)

        readOnRepo {
            val behavior = resolveNodeRef(behaviorRef)
            val method = behavior.children.single { it.containmentLink?.name == "method" }
            val descendantConceptNames = SNodeOperations.getNodeDescendants(method, null, true, emptyArray())
                .map { it.concept.name }
            assertTrue(
                "this.single must be rewritten to an SLinkAccess: $descendantConceptNames",
                descendantConceptNames.contains("SLinkAccess")
            )
            assertTrue(
                "this.many must be rewritten to an SLinkListAccess: $descendantConceptNames",
                descendantConceptNames.contains("SLinkListAccess")
            )
            assertFalse(
                "no unresolved FieldReferenceOperation should remain: $descendantConceptNames",
                descendantConceptNames.contains("FieldReferenceOperation")
            )
        }
    }

    @Test
    fun `METHOD on a ConceptBehavior leaves this access to an unmatched name untouched`() {
        val behaviorRef = createConceptBehaviorRoot()

        val response = runTool(JetBrainsMPSJavaMcpToolset()) {
            it.mps_mcp_parse_java_and_insert(
                """
                {
                  "code": "Object m() { return this.doesNotExist; }",
                  "featureKind": "METHOD",
                  "contextNodeRef": "$behaviorRef",
                  "insert": { "mode": "child", "parentRef": "$behaviorRef", "role": "method" }
                }
                """.trimIndent()
            )
        }
        assertOkData(response)

        readOnRepo {
            val behavior = resolveNodeRef(behaviorRef)
            val method = behavior.children.single { it.containmentLink?.name == "method" }
            val descendantConceptNames = SNodeOperations.getNodeDescendants(method, null, true, emptyArray())
                .map { it.concept.name }
            assertTrue(
                "an unmatched name must be left as a FieldReferenceOperation, not guessed: $descendantConceptNames",
                descendantConceptNames.contains("FieldReferenceOperation")
            )
            assertTrue(
                "the ThisNodeExpression rewrite still applies even when the field access is left alone: $descendantConceptNames",
                descendantConceptNames.contains("ThisNodeExpression")
            )
        }
    }

    @Test
    fun `METHOD on a ConceptBehavior rewriting this to SPropertyAccess imports jetbrains-mps-lang-smodel`() {
        // The grafted SPropertyAccess is never reported in parseResult.languages (JavaParser never
        // produced it), so this pins the post-hoc scan of the *inserted* subtree in
        // finalizeResolutionDependencies/updateModelDependencies as what pulls
        // jetbrains.mps.lang.smodel in.
        //
        // Getting the assertion to mean anything takes two removals. A behavior aspect model is
        // created with smodel among its explicitly used languages AND with the
        // jetbrains.mps.devkit.general-purpose devkit, which exports smodel too; while either is in
        // place addMissingUsedLanguages correctly declines to add an import for a language already
        // in scope. Nothing the fixture's ConceptBehavior root contains needs either one, and the
        // fixture adds baseLanguage explicitly, so dropping the devkit does not take that away.
        val behaviorRef = createConceptBehaviorRoot(implements = "jetbrains.mps.lang.core.structure.INamedConcept")

        val behaviorModel = readOnRepo { resolveNodeRef(behaviorRef).model!! }
        val modelToolset = JetBrainsMPSModelMcpToolset()
        for ((name, kind) in listOf(
            "jetbrains.mps.lang.smodel" to "language",
            "jetbrains.mps.devkit.general-purpose" to "devkit"
        )) {
            expectOk(runTool(modelToolset) {
                it.mps_mcp_model_used_language(modelRefOf(behaviorModel), name, kind, DependencyOperation.DELETE)
            })
        }
        // usedLanguageNames reads the explicitly used languages only, which is the same set the
        // post-parse assertion below watches; the devkit removal above is what makes an import
        // there necessary rather than redundant.
        readOnRepo {
            assertFalse(
                "smodel must not be an explicitly used language before the parse: " +
                    "${usedLanguageNames(behaviorModel)}",
                usedLanguageNames(behaviorModel).contains("jetbrains.mps.lang.smodel")
            )
        }

        val response = runTool(JetBrainsMPSJavaMcpToolset()) {
            it.mps_mcp_parse_java_and_insert(
                """
                {
                  "code": "String n() { return this.name; }",
                  "featureKind": "METHOD",
                  "contextNodeRef": "$behaviorRef",
                  "insert": { "mode": "child", "parentRef": "$behaviorRef", "role": "method" }
                }
                """.trimIndent()
            )
        }
        val data = assertOkData(response)
        assertEquals(
            "this.name must resolve with no leftover problems: $response",
            0,
            data.getAsJsonArray("problems").size()
        )

        readOnRepo {
            assertTrue(
                "jetbrains.mps.lang.smodel must be imported after grafting an SPropertyAccess the parser never produced: " +
                    "${usedLanguageNames(behaviorModel)}",
                usedLanguageNames(behaviorModel).contains("jetbrains.mps.lang.smodel")
            )
        }
    }

    @Test
    fun `METHOD on a ConceptBehavior leaves this inside a nested anonymous class untouched`() {
        val behaviorRef = createConceptBehaviorRoot()

        val response = runTool(JetBrainsMPSJavaMcpToolset()) {
            it.mps_mcp_parse_java_and_insert(
                """
                {
                  "code": "void report() { Runnable r = new Runnable() { public void run() { System.out.println(this); } }; System.out.println(this); }",
                  "featureKind": "METHOD",
                  "contextNodeRef": "$behaviorRef",
                  "insert": { "mode": "child", "parentRef": "$behaviorRef", "role": "method" }
                }
                """.trimIndent()
            )
        }
        // Errors only: the unused `r` local this snippet needs in order to hold an anonymous class
        // draws two baseLanguage warnings ("Unused variable", "initializer is redundant") that say
        // nothing about the `this` rewrite under test.
        val nestedThisProblems = assertOkData(response).getAsJsonArray("problems")
        assertTrue(
            "nested this handling must leave no error-severity problems: $nestedThisProblems",
            nestedThisProblems.none { it.asJsonObject.get("severity").asString == "error" }
        )

        readOnRepo {
            val behavior = resolveNodeRef(behaviorRef)
            val method = behavior.children.single { it.containmentLink?.name == "method" }
            val descendants = SNodeOperations.getNodeDescendants(method, null, true, emptyArray())
            val anonymousClass = descendants.single { it.concept.name == "AnonymousClass" }

            // The `this` nested inside the anonymous class's own method still refers to that
            // anonymous Classifier, so it must stay a BaseLanguage ThisExpression.
            val nestedThis = SNodeOperations.getNodeDescendants(anonymousClass, null, true, emptyArray())
                .filter { it.concept.name == "ThisExpression" || it.concept.name == "ThisNodeExpression" }
            assertEquals("expected exactly one this inside the anonymous class: $nestedThis", 1, nestedThis.size)
            assertEquals("ThisExpression", nestedThis.single().concept.name)

            // The outer-level `this` (same method, outside the anonymous class) has no enclosing
            // Classifier within the converted subtree, so it must be rewritten.
            val nestedThisSet = nestedThis.toSet()
            val outerThis = descendants
                .filter { it.concept.name == "ThisExpression" || it.concept.name == "ThisNodeExpression" }
                .filterNot { it in nestedThisSet }
            assertEquals("expected exactly one outer this: $outerThis", 1, outerThis.size)
            assertEquals("ThisNodeExpression", outerThis.single().concept.name)
        }
    }

    @Test
    fun `static METHOD on a ConceptBehavior sets isStatic and leaves isVirtual unset`() {
        val behaviorRef = createConceptBehaviorRoot()

        val response = runTool(JetBrainsMPSJavaMcpToolset()) {
            it.mps_mcp_parse_java_and_insert(
                """
                {
                  "code": "static int count() { return 0; }",
                  "featureKind": "METHOD",
                  "contextNodeRef": "$behaviorRef",
                  "insert": { "mode": "child", "parentRef": "$behaviorRef", "role": "method" }
                }
                """.trimIndent()
            )
        }
        val staticData = assertOkData(response)
        assertEquals(
            "a trivial static method must insert with no problems: $response",
            0,
            staticData.getAsJsonArray("problems").size()
        )

        readOnRepo {
            val behavior = resolveNodeRef(behaviorRef)
            val method = behavior.children.single { it.containmentLink?.name == "method" }
            assertEquals("true", method.getPropertyByName("isStatic"))
            assertNotEquals("true", method.getPropertyByName("isVirtual"))
        }
    }

    @Test
    fun `abstract METHOD on a ConceptBehavior sets isAbstract and isVirtual and keeps an empty body`() {
        val behaviorRef = createConceptBehaviorRoot()

        val response = runTool(JetBrainsMPSJavaMcpToolset()) {
            it.mps_mcp_parse_java_and_insert(
                """
                {
                  "code": "abstract void hook();",
                  "featureKind": "METHOD",
                  "contextNodeRef": "$behaviorRef",
                  "insert": { "mode": "child", "parentRef": "$behaviorRef", "role": "method" }
                }
                """.trimIndent()
            )
        }
        // check_ConceptBehaviorForNotImplementedMethods and check_AbstractMethodIsVirtual fire on
        // the seeded concept during the post-insert problems collection, so `problems` cannot be
        // asserted empty. The obligatory-role guard below is narrow enough to survive them - and it
        // is the one that matters: dropping the parser's empty body used to leave every abstract
        // method structurally invalid with "No child in the obligatory role 'body'".
        val problems = assertOkData(response).getAsJsonArray("problems")
        assertTrue(
            "the obligatory 'body' role must be filled: $problems",
            problems.none { it.asJsonObject.get("message").asString.contains("obligatory role 'body'") }
        )

        readOnRepo {
            val behavior = resolveNodeRef(behaviorRef)
            val method = behavior.children.single { it.containmentLink?.name == "method" }
            assertEquals("true", method.getPropertyByName("isAbstract"))
            assertEquals("true", method.getPropertyByName("isVirtual"))
            // `body` has cardinality 1 on BaseMethodDeclaration, so an abstract method keeps the
            // empty StatementList rather than having no body at all - same shape MPS gives an
            // abstract baseLanguage method.
            val body = method.children.single { it.containmentLink?.name == "body" }
            assertEquals("StatementList", body.concept.name)
            assertTrue("an abstract method's body must be empty: ${body.children.toList()}", body.children.none())
        }
    }

    @Test
    fun `METHOD on a ConceptBehavior with two parameters inserts both without error`() {
        val behaviorRef = createConceptBehaviorRoot()

        val response = runTool(JetBrainsMPSJavaMcpToolset()) {
            it.mps_mcp_parse_java_and_insert(
                """
                {
                  "code": "void m(int a, String b) {}",
                  "featureKind": "METHOD",
                  "contextNodeRef": "$behaviorRef",
                  "insert": { "mode": "child", "parentRef": "$behaviorRef", "role": "method" }
                }
                """.trimIndent()
            )
        }
        val twoParamData = assertOkData(response)
        assertEquals(
            "a two-parameter method must insert with no problems: $response",
            0,
            twoParamData.getAsJsonArray("problems").size()
        )

        readOnRepo {
            val behavior = resolveNodeRef(behaviorRef)
            val method = behavior.children.single { it.containmentLink?.name == "method" }
            val paramNames = method.children.filter { it.containmentLink?.name == "parameter" }.mapNotNull { it.name }
            assertEquals(listOf("a", "b"), paramNames)
        }
    }

    @Test
    fun `final synchronized METHOD on a ConceptBehavior keeps isSynchronized but drops isFinal since the method is non-virtual`() {
        val behaviorRef = createConceptBehaviorRoot()

        val response = runTool(JetBrainsMPSJavaMcpToolset()) {
            it.mps_mcp_parse_java_and_insert(
                """
                {
                  "code": "public final synchronized void m() {}",
                  "featureKind": "METHOD",
                  "contextNodeRef": "$behaviorRef",
                  "insert": { "mode": "child", "parentRef": "$behaviorRef", "role": "method" }
                }
                """.trimIndent()
            )
        }
        val data = assertOkData(response)
        assertEquals(
            "a non-virtual method must insert with no problems: $response",
            0,
            data.getAsJsonArray("problems").size()
        )

        readOnRepo {
            val behavior = resolveNodeRef(behaviorRef)
            val method = behavior.children.single { it.containmentLink?.name == "method" }
            // `final` only makes sense on a virtual ConceptMethodDeclaration; this method is
            // non-abstract/non-virtual, so isFinal must not be copied even though the Java source
            // had `final` - copying it unconditionally used to trip "isFinal does not make sense
            // on the non-virtual method".
            assertNotEquals("true", method.getPropertyByName("isFinal"))
            assertEquals("true", method.getPropertyByName("isSynchronized"))
        }
    }

    @Test
    fun `METHOD on a ConceptBehavior keeps a javadoc MethodDocComment attribute`() {
        val behaviorRef = createConceptBehaviorRoot()

        val response = runTool(JetBrainsMPSJavaMcpToolset()) {
            it.mps_mcp_parse_java_and_insert(
                """
                {
                  "code": "/** Doc. */ void m() {}",
                  "featureKind": "METHOD",
                  "contextNodeRef": "$behaviorRef",
                  "insert": { "mode": "child", "parentRef": "$behaviorRef", "role": "method" }
                }
                """.trimIndent()
            )
        }
        val javadocData = assertOkData(response)
        assertEquals(
            "a documented method must insert with no problems: $response",
            0,
            javadocData.getAsJsonArray("problems").size()
        )

        readOnRepo {
            val behavior = resolveNodeRef(behaviorRef)
            val method = behavior.children.single { it.containmentLink?.name == "method" }
            assertNotNull(
                "converted method should keep its MethodDocComment attribute",
                IAttributeDescriptor.NodeAttribute(JavadocLanguageMeta.methodDocCommentConcept).get(method)
            )
        }
    }

    @Test
    fun `FIELD on a ConceptBehavior is rejected as a structured error, not INTERNAL_ERROR`() {
        val behaviorRef = createConceptBehaviorRoot()

        val response = runTool(JetBrainsMPSJavaMcpToolset()) {
            it.mps_mcp_parse_java_and_insert(
                """
                {
                  "code": "int x;",
                  "featureKind": "FIELD",
                  "contextNodeRef": "$behaviorRef",
                  "insert": { "mode": "child", "parentRef": "$behaviorRef", "role": "method" }
                }
                """.trimIndent()
            )
        }

        val obj = JsonParser.parseString(response).asJsonObject
        assertFalse("expected error envelope: $response", obj.get("ok").asBoolean)
        assertEquals("INVALID_REQUEST", obj.get("code").asString)
    }

    @Test
    fun `METHOD parsing a field declaration on a ConceptBehavior is rejected as a structured error`() {
        val behaviorRef = createConceptBehaviorRoot()

        val response = runTool(JetBrainsMPSJavaMcpToolset()) {
            it.mps_mcp_parse_java_and_insert(
                """
                {
                  "code": "int x;",
                  "featureKind": "METHOD",
                  "contextNodeRef": "$behaviorRef",
                  "insert": { "mode": "child", "parentRef": "$behaviorRef", "role": "method" }
                }
                """.trimIndent()
            )
        }

        val obj = JsonParser.parseString(response).asJsonObject
        assertFalse("expected error envelope: $response", obj.get("ok").asBoolean)
        assertEquals("INVALID_REQUEST", obj.get("code").asString)
    }

    @Test
    fun `a constructor snippet against a ConceptBehavior is rejected by name, not silently converted`() {
        val behaviorRef = createConceptBehaviorRoot()

        val response = runTool(JetBrainsMPSJavaMcpToolset()) {
            it.mps_mcp_parse_java_and_insert(
                """
                {
                  "code": "Foo() {}",
                  "featureKind": "METHOD",
                  "contextNodeRef": "$behaviorRef",
                  "insert": { "mode": "child", "parentRef": "$behaviorRef", "role": "method" }
                }
                """.trimIndent()
            )
        }

        val obj = JsonParser.parseString(response).asJsonObject
        assertFalse("expected error envelope: $response", obj.get("ok").asBoolean)
        assertEquals("INVALID_REQUEST", obj.get("code").asString)
        assertTrue(
            "error should reject the constructor by name: ${obj.get("error").asString}",
            obj.get("error").asString.contains("constructor")
        )

        readOnRepo {
            val behavior = resolveNodeRef(behaviorRef)
            assertTrue(
                "the rejected constructor must not have been inserted into the method role",
                behavior.children.none { it.containmentLink?.name == "method" }
            )
        }
    }

    @Test
    fun `METHOD against a plain ConceptDeclaration context names the concept in the error`() {
        val conceptRef = createConceptRoot("PlainConcept${System.nanoTime()}")

        val response = runTool(JetBrainsMPSJavaMcpToolset()) {
            it.mps_mcp_parse_java_and_insert(
                """
                {
                  "code": "void greet() { }",
                  "featureKind": "METHOD",
                  "contextNodeRef": "$conceptRef",
                  "insert": { "mode": "child", "parentRef": "$conceptRef", "role": "method" }
                }
                """.trimIndent()
            )
        }

        val obj = JsonParser.parseString(response).asJsonObject
        assertFalse("expected error envelope: $response", obj.get("ok").asBoolean)
        assertEquals("INVALID_REQUEST", obj.get("code").asString)
        assertTrue(
            "error should name the offending context concept: ${obj.get("error").asString}",
            obj.get("error").asString.contains("ConceptDeclaration")
        )
    }

    /** Seeds an empty class root via root-mode insertion and returns its SNodeReference string. */
    private fun seedClassRoot(toolset: JetBrainsMPSJavaMcpToolset, modelRef: String, name: String): String {
        val seed = runTool(toolset) {
            it.mps_mcp_parse_java_and_insert(
                """{"code":"class $name {}","featureKind":"CLASS",
                    "insert":{"mode":"root","modelRef":"$modelRef"}}"""
            )
        }
        return assertOkData(seed).getAsJsonArray("inserted").first().asJsonObject.get("reference").asString
    }

    /** Appends a field named [fieldName] into the class's `member` role. */
    private fun seedFieldMember(toolset: JetBrainsMPSJavaMcpToolset, classRef: String, fieldName: String) {
        val seed = runTool(toolset) {
            it.mps_mcp_parse_java_and_insert(
                """{"code":"int $fieldName;","featureKind":"FIELD","contextNodeRef":"$classRef",
                    "insert":{"mode":"child","parentRef":"$classRef","role":"member"}}"""
            )
        }
        assertOkData(seed)
    }

    private fun createJavaModel(): SModel {
        val solution = createSolution()
        return createModel(solution, "${solution.moduleName}.code")
    }

    private fun assertOkData(response: String): JsonObject {
        val obj = JsonParser.parseString(response).asJsonObject
        assertTrue("expected ok=true envelope, got: $response", obj.get("ok").asBoolean)
        val data = obj.get("data")
        assertNotNull("ok envelope must carry data: $response", data)
        // The Java toolset wraps an inner JSON object as a string in `data`. Both shapes are
        // accepted here so this helper survives a future switch to add(JsonElement).
        return when {
            data.isJsonObject -> data.asJsonObject
            data.isJsonPrimitive -> JsonParser.parseString(data.asString).asJsonObject
            else -> error("unexpected data shape in $response")
        }
    }

    private fun usedLanguageNames(model: SModel): Set<String> =
        (model as SModelInternal).importedLanguageIds().map { it.qualifiedName }.toSet()
}
