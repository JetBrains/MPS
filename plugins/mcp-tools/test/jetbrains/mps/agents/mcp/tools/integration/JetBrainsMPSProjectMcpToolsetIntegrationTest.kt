// Integration tests for the project-scoped MCP toolset.
package jetbrains.mps.agents.mcp.tools.integration

import jetbrains.mps.agents.mcp.tools.*

import com.google.gson.JsonElement
import com.google.gson.JsonObject
import com.google.gson.JsonParser
import jetbrains.mps.project.modules.LanguageProducer
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertTrue
import org.junit.Test
import java.io.File

/**
 * End-to-end integration tests for [JetBrainsMPSProjectMcpToolset].
 *
 * Covers the tools the toolset exposes:
 *  - `mps_mcp_list_open_projects` — discovering the open MPS project and the path agents should
 *    pass as the host `projectPath` selector in multi-project checkouts;
 *  - `mps_mcp_get_project_structure` — listing project modules (default), descending into a
 *    model when `startingPoint` is set, the mutually-exclusive flag enforcement, and the
 *    NOT_FOUND envelope for an unknown starting point;
 *  - `mps_mcp_reload_all` — happy-path smoke test against the test project's
 *    `ClassLoaderManager`;
 *  - `mps_mcp_insert_console_command_from_json` — the pre-console input-validation guard
 *    (malformed JSON is rejected before the Console tool window is touched). The happy paths
 *    (inserting a Command, and wrapping one or more statements into a `{ … }` block command) need
 *    a live Console tool window and are exercised manually.
 *  - `mps_mcp_get_console_history` / `mps_mcp_recall_console_command` / `mps_mcp_run_console_command` —
 *    the console-unavailable branch (structured error, no crash, in the headless fixture). The happy
 *    paths (listing real history entries; recalling one into the input slot; executing the current
 *    command) need a live Console and are verified manually.
 */
class JetBrainsMPSProjectMcpToolsetIntegrationTest : McpIntegrationTestBase() {

    @Test
    fun `list-open-projects reports the current MPS project and selector paths`() {
        val basePath = myProject.project.basePath
            ?: error("test project has no basePath; cannot exercise project listing")
        val base = File(basePath).toPath().toAbsolutePath().normalize()

        val response = runTool(JetBrainsMPSProjectMcpToolset()) {
            it.mps_mcp_list_open_projects()
        }

        val data = expectOk(response)
        assertTrue("listing must report at least one open project: $data", data.get("projectCount").asInt >= 1)
        assertTrue("listing must report at least one MPS project: $data", data.get("mpsProjectCount").asInt >= 1)

        val projects = data.getAsJsonArray("projects").map { it.asJsonObject }
        val current = projects.singleOrNull { proj ->
            val baseDir = proj.get("mpsProjectBaseDirectory")
            baseDir != null && !baseDir.isJsonNull && baseDir.asString == base.toString()
        } ?: error("expected test project base '$base' in open-project listing: $projects")

        assertTrue("test project must be marked as an MPS project: $current", current.get("hasMpsProject").asBoolean)
        assertTrue("test project must be marked current in the injected MCP context: $current", current.get("isCurrent").asBoolean)
        assertEquals(
            "agents should pass mpsProjectBaseDirectory (the project base dir) as host projectPath for mps_mcp_* tools",
            base.toString(),
            current.get("mpsProjectBaseDirectory").asString
        )
        assertTrue("listing must include the derived agent config root: $current", current.has("agentConfigRoot"))

        val live = MpsRuntimeVersion.fromApplicationOrNull()
        assertNotNull("integration run must see ApplicationInfo", live)
        assertEquals(live!!.version, data.get("mpsVersion").asString)
        assertEquals(live.build, data.get("mpsBuild").asString)
        assertEquals(live.eap, data.get("mpsEap").asBoolean)
    }

    @Test
    fun `get-project-structure lists the test language module by default`() {
        val response = runTool(JetBrainsMPSProjectMcpToolset()) {
            it.mps_mcp_get_project_structure()
        }

        val payload = readJsonObjectFromOkPath(response)
        val modules = payload.getAsJsonArray("modules")
        val moduleNames = modules.map { it.asJsonObject.get("name").asString }.toSet()
        assertTrue(
            "the test language created by the base class must appear in the default listing; got=$moduleNames",
            moduleNames.contains(language.moduleName)
        )
        val kinds = modules.map { it.asJsonObject.get("kind").asString }.toSet()
        assertTrue(
            "the test language module must be reported with kind=Language; got=$kinds",
            kinds.contains("Language")
        )
    }

    @Test
    fun `get-project-structure inlines a small dump and honours maxInlineBytes`() {
        // The default module listing of the test project is a few hundred characters, well under
        // the 20000-character default, so it must come back inline — the whole point of R1 is that
        // a tiny payload no longer costs a second call to read a temp file.
        val inline = runTool(JetBrainsMPSProjectMcpToolset()) {
            it.mps_mcp_get_project_structure()
        }
        val inlineEnvelope = JsonParser.parseString(inline).asJsonObject
        assertTrue("expected ok envelope: $inline", inlineEnvelope.get("ok").asBoolean)
        assertTrue(
            "a small project dump must be inlined as a JSON object in `data`, got: ${inlineEnvelope.get("data")}",
            inlineEnvelope.get("data").isJsonObject,
        )
        assertTrue(
            "the inlined dump must carry the module list",
            inlineEnvelope.getAsJsonObject("data").has("modules"),
        )

        val saved = runTool(JetBrainsMPSProjectMcpToolset()) {
            it.mps_mcp_get_project_structure(maxInlineBytes = 1)
        }
        val savedEnvelope = JsonParser.parseString(saved).asJsonObject
        assertTrue("expected ok envelope: $saved", savedEnvelope.get("ok").asBoolean)
        val path = savedEnvelope.get("data").asString
        assertTrue("`data` must be a temp-file path above maxInlineBytes: $path", File(path).isFile)
        assertTrue(
            "the saved dump must carry the module list",
            readJsonObjectFromOkPath(saved).has("modules"),
        )
    }

    @Test
    fun `get-project-structure reports a language's own languageVersion without includeDependencies`() {
        // D46: nothing exposed the language's own version integer (the one a MigrationScript's
        // `fromVersion` gates on), only the consumer-side `usedLanguages[].version` stamps —
        // which is what made agents mistake one for the other. It must be readable from a plain
        // discovery dump, i.e. without paying for includeDependencies.
        val moduleName = language.moduleName!!
        executeCommand { language.setLanguageVersion(6) }

        val data = payloadObjectFromOkData(runTool(JetBrainsMPSProjectMcpToolset()) {
            it.mps_mcp_get_project_structure(startingPoint = moduleName)
        })
        assertEquals("Language", data.get("kind").asString)
        assertEquals(6, data.get("languageVersion").asInt)

        // A Solution has no such field — the key must be absent, not 0.
        val solution = createSolution()
        val solData = payloadObjectFromOkData(runTool(JetBrainsMPSProjectMcpToolset()) {
            it.mps_mcp_get_project_structure(startingPoint = solution.moduleName!!)
        })
        assertFalse("a Solution must not report a languageVersion: $solData", solData.has("languageVersion"))
    }

    @Test
    fun `get-project-structure with a model starting point returns the model JSON`() {
        val response = runTool(JetBrainsMPSProjectMcpToolset()) {
            it.mps_mcp_get_project_structure(
                startingPoint = structureModelRef,
                includeRootNodes = false,
            )
        }

        val payload = readJsonObjectFromOkPath(response)
        // Drilling into a single model yields the model JSON shape (name + reference), not a
        // top-level `modules` array — the toolset's docstring guarantees this dispatch.
        // The reported name is the full SModelName.value (stereotype included when present); a
        // structure model has no stereotype, so value == longName here.
        assertEquals(structureModel.name.value, payload.get("name").asString)
        assertFalse(
            "a model-rooted response should not be wrapped as a module list",
            payload.has("modules")
        )
        assertEquals(0, payload.get("rootNodesCount").asInt)
    }

    @Test
    fun `get-project-structure reports a stereotyped model name with the stereotype kept`() {
        // Regression: the reported model name must keep its stereotype (e.g. @tests). It used to
        // be built from SModelName.longName, which drops the stereotype, so a @tests/@generator
        // model came back under a name that could not be addressed back. It now uses .value.
        val solution = createSolution("test.proj.stereo${System.nanoTime()}")
        createModel(solution, "test.proj.stereo.sample@tests")

        // Address the model by its stereotyped name (not the persistent reference). This guards
        // the documented promise that the reported `name` — stereotype included — round-trips as
        // a startingPoint: resolveModel must match `foo.bar@tests` against SModelName.value.
        val response = runTool(JetBrainsMPSProjectMcpToolset()) {
            it.mps_mcp_get_project_structure(startingPoint = "test.proj.stereo.sample@tests")
        }

        val payload = readJsonObjectFromOkPath(response)
        assertEquals(
            "the reported name must include the @tests stereotype",
            "test.proj.stereo.sample@tests", payload.get("name").asString
        )
    }

    @Test
    fun `get-project-structure rejects conflicting startingPoint and moduleKind`() {
        val response = runTool(JetBrainsMPSProjectMcpToolset()) {
            it.mps_mcp_get_project_structure(
                startingPoint = structureModelRef,
                moduleKind = "Solution",
            )
        }

        val obj = JsonParser.parseString(response).asJsonObject
        assertFalse("expected error envelope: $response", obj.get("ok").asBoolean)
        assertTrue(
            "error should call out the conflicting parameter combination: ${obj.get("error").asString}",
            obj.get("error").asString.contains("cannot be used together")
        )
    }

    @Test
    fun `get-project-structure with an unknown starting point is rejected as NOT_FOUND`() {
        val response = runTool(JetBrainsMPSProjectMcpToolset()) {
            it.mps_mcp_get_project_structure(
                startingPoint = "no.such.module.or.model.or.node",
            )
        }

        val obj = JsonParser.parseString(response).asJsonObject
        assertFalse("expected error envelope: $response", obj.get("ok").asBoolean)
        assertEquals("NOT_FOUND", obj.get("code").asString)
    }

    @Test
    fun `get-project-structure with a module starting point returns module JSON with facets`() {
        val solution = createSolution("test.proj.modulesp${System.nanoTime()}")

        val response = runTool(JetBrainsMPSProjectMcpToolset()) {
            it.mps_mcp_get_project_structure(startingPoint = solution.moduleName!!)
        }

        val payload = readJsonObjectFromOkPath(response)
        assertEquals(solution.moduleName, payload.get("name").asString)
        assertTrue("response must echo the module reference", payload.has("reference"))
        assertTrue("response must include facets array", payload.has("facets"))
        val facets = payload.getAsJsonArray("facets").map { it.asString }.toSet()
        assertTrue("a plain solution must carry the default `java` facet; got=$facets", facets.contains("java"))
    }

    @Test
    fun `get-project-structure filtered by moduleKind keeps only matching modules`() {
        // Adding a Solution next to the existing test Language module gives the kind filter
        // something non-trivial to discriminate. With moduleKind=Solution we must see only
        // the new solution and never the language.
        val solution = createSolution("test.proj.solution${System.nanoTime()}")

        val response = runTool(JetBrainsMPSProjectMcpToolset()) {
            it.mps_mcp_get_project_structure(moduleKind = "Solution")
        }

        val payload = readJsonObjectFromOkPath(response)
        val modules = payload.getAsJsonArray("modules")
        val kinds = modules.map { it.asJsonObject.get("kind").asString }.toSet()
        assertEquals(
            "moduleKind=Solution must filter the listing to solutions only; got=$kinds",
            setOf("Solution"), kinds
        )
        val names = modules.map { it.asJsonObject.get("name").asString }.toSet()
        assertTrue(
            "the freshly created solution must be present; got=$names",
            names.contains(solution.moduleName)
        )
    }

    // ── generators field ──────────────────────────────────────────────────────────────────

    @Test
    fun `get-project-structure language entry has empty generators array when language owns no generator`() {
        // Use moduleKind="Language" to get an unambiguous language-only listing — looking up a
        // language by name via startingPoint can resolve to a Generator module (same base name)
        // when one is present in the repository.
        val response = runTool(JetBrainsMPSProjectMcpToolset()) {
            it.mps_mcp_get_project_structure(moduleKind = "Language")
        }

        val payload = readJsonObjectFromOkPath(response)
        val langEntry = payload.getAsJsonArray("modules")
            .map { it.asJsonObject }
            .single { it.get("name").asString == language.moduleName }
        assertTrue("language entry must always carry a 'generators' field", langEntry.has("generators"))
        val generators = langEntry.getAsJsonArray("generators")
        assertEquals(
            "language with no generator must have an empty generators array; got=$generators",
            0, generators.size()
        )
    }

    @Test
    fun `get-project-structure language entry lists owned generators with name and reference`() {
        val name = "test.lang.withgen${System.nanoTime()}"
        val moduleDir = createDirInProject(name)
        executeCommand {
            LanguageProducer(myProject).withGenerator(true).create(name, moduleDir)
        }

        // Use moduleKind="Language" rather than startingPoint=name: in MPS a Language and its
        // owned Generator share the same base module name, so resolveModule by name is ambiguous
        // and may return the Generator. Filtering by kind gives an unambiguous language-only list.
        val response = runTool(JetBrainsMPSProjectMcpToolset()) {
            it.mps_mcp_get_project_structure(moduleKind = "Language")
        }

        val payload = readJsonObjectFromOkPath(response)
        val langEntry = payload.getAsJsonArray("modules")
            .map { it.asJsonObject }
            .single { it.get("name").asString == name }
        assertTrue("language entry must carry a 'generators' field", langEntry.has("generators"))
        val generators = langEntry.getAsJsonArray("generators")
        assertEquals(
            "language with one generator must list exactly one entry; got=$generators",
            1, generators.size()
        )
        val genEntry = generators[0].asJsonObject
        assertTrue("generator entry must have a 'name' field", genEntry.has("name"))
        assertTrue("generator entry must have a 'reference' field", genEntry.has("reference"))
        assertTrue(
            "generator name must contain the parent language name; got=${genEntry.get("name").asString}",
            genEntry.get("name").asString.contains(name)
        )
    }

    @Test
    fun `get-project-structure flat module listing carries generators array on language entries`() {
        val response = runTool(JetBrainsMPSProjectMcpToolset()) {
            it.mps_mcp_get_project_structure()
        }

        val payload = readJsonObjectFromOkPath(response)
        val modules = payload.getAsJsonArray("modules")
        val langEntry = modules.map { it.asJsonObject }
            .single { it.get("kind").asString == "Language" && it.get("name").asString == language.moduleName }
        assertTrue(
            "language entry in the flat module listing must include a 'generators' field",
            langEntry.has("generators")
        )
    }

    @Test
    fun `get-project-structure generator entry points back to its language via sourceLanguage when dependencies are included`() {
        val name = "test.lang.gensrc${System.nanoTime()}"
        val moduleDir = createDirInProject(name)
        executeCommand {
            LanguageProducer(myProject).withGenerator(true).create(name, moduleDir)
        }

        // Reverse of the `generators` navigation: a Generator entry carries `sourceLanguage`
        // pointing back to its owning language — but only when includeDependencies is set.
        // Filter by moduleKind="Generator" for an unambiguous generator-only listing (a language
        // and its owned generator share a base name, so startingPoint=name would be ambiguous).
        val withDeps = runTool(JetBrainsMPSProjectMcpToolset()) {
            it.mps_mcp_get_project_structure(moduleKind = "Generator", includeDependencies = true)
        }
        val genEntry = readJsonObjectFromOkPath(withDeps).getAsJsonArray("modules")
            .map { it.asJsonObject }
            .single { it.get("name").asString.contains(name) }
        assertTrue(
            "generator entry must carry a 'sourceLanguage' field when includeDependencies=true",
            genEntry.has("sourceLanguage")
        )
        val sourceLanguage = genEntry.getAsJsonObject("sourceLanguage")
        assertEquals(
            "sourceLanguage must name the owning language; got=$sourceLanguage",
            name, sourceLanguage.get("name").asString
        )
        assertTrue("sourceLanguage must carry a 'reference' field", sourceLanguage.has("reference"))

        // The back-link is gated on includeDependencies — the mps-aspect-generator skill documents
        // this asymmetry, so a plain listing of the same generator must omit sourceLanguage.
        val withoutDeps = runTool(JetBrainsMPSProjectMcpToolset()) {
            it.mps_mcp_get_project_structure(moduleKind = "Generator")
        }
        val bareGenEntry = readJsonObjectFromOkPath(withoutDeps).getAsJsonArray("modules")
            .map { it.asJsonObject }
            .single { it.get("name").asString.contains(name) }
        assertFalse(
            "sourceLanguage must be absent without includeDependencies; got=$bareGenEntry",
            bareGenEntry.has("sourceLanguage")
        )
    }

    @Test
    fun `reload-all returns an ok envelope and leaves project state resolvable`() {
        val response = runTool(JetBrainsMPSProjectMcpToolset()) {
            it.mps_mcp_reload_all()
        }

        val obj = JsonParser.parseString(response).asJsonObject
        assertTrue("expected ok=true envelope, got: $response", obj.get("ok").asBoolean)
        assertNotNull("reload-all must carry a data payload: $response", obj.get("data"))
        val data: JsonElement = obj.get("data")
        val message = if (data.isJsonPrimitive) data.asString else data.toString()
        assertTrue(
            "data should confirm the reload happened: $message",
            message.contains("reloaded")
        )

        // Observable post-condition: a no-op stub would still produce the envelope above,
        // but a real reloadAll must leave the test language module and its structure model
        // resolvable through the project repository, and the language must still be
        // recognized as a module of the project.
        readOnRepo {
            val repo = myProject.repository
            val resolvedModule = repo.getModule(language.moduleReference.moduleId)
            assertNotNull(
                "test language module must remain resolvable after reloadAll",
                resolvedModule
            )
            assertTrue(
                "test language must remain registered with the project after reloadAll",
                myProject.projectModulesWithGenerators.any { it.moduleReference == language.moduleReference }
            )
            val resolvedModel = repo.getModel(structureModel.reference.modelId)
            assertNotNull(
                "structure model must remain resolvable after reloadAll",
                resolvedModel
            )
        }
    }

    @Test
    fun `get-project-structure includeNodes implies includeRootNodes and inlines the AST`() {
        // IMPL-4: includeNodes=true must descend into root nodes even when includeRootNodes is
        // left at its default (false). Before the fix the model reported only `rootNodesCount`
        // and the requested AST was silently dropped.
        val rootName = "ImplFourRoot${System.nanoTime()}"
        createConceptRoot(rootName)

        val response = runTool(JetBrainsMPSProjectMcpToolset()) {
            it.mps_mcp_get_project_structure(
                startingPoint = structureModelRef,
                includeNodes = true,
                // includeRootNodes intentionally left at its default (false) to exercise the implication
            )
        }

        val payload = readJsonObjectFromOkPath(response)
        assertFalse(
            "includeNodes must inline root nodes, not fall back to the rootNodesCount summary: $payload",
            payload.has("rootNodesCount")
        )
        val rootNodes = payload.getAsJsonArray("rootNodes")
        assertNotNull("model payload must carry an inlined rootNodes array: $payload", rootNodes)
        val root = rootNodes.map { it.asJsonObject }.singleOrNull { it.get("name").asString == rootName }
            ?: error("created root '$rootName' must appear in the inlined rootNodes: $payload")
        // The inlined root carries the full deep node shape (concept + children container) that
        // nodeHierarchyJsonObject produces with deep=true.
        assertEquals("ConceptDeclaration", root.get("concept").asString)
        assertTrue("inlined root must carry a children container: $root", root.has("children"))
    }

    // ── D38/P9: node projection ─────────────────────────────────────────────────────────────

    /**
     * One child link declaration, so the created `ConceptDeclaration` root has a populated
     * containment role for the depth-bound test to cut at.
     */
    private val CONCEPT_WITH_ONE_PROPERTY_CHILD = """
        [ { "role": "part", "target": "jetbrains.mps.lang.core.structure.BaseConcept", "multiple": false, "optional": true } ]
    """.trimIndent()

    @Test
    fun `get-project-structure nodeDetail names reduces a root listing to name concept and reference`() {
        // "What roots does this model have, and what are their names and ids" used to cost the
        // full record for every root — concept javadoc, every property with its own javadoc,
        // every reference, and the per-role children scaffolding (study defect D38).
        val rootName = "NamesProjectionRoot${System.nanoTime()}"
        createConceptRoot(rootName)

        val projected = runTool(JetBrainsMPSProjectMcpToolset()) {
            it.mps_mcp_get_project_structure(
                startingPoint = structureModelRef,
                includeRootNodes = true,
                nodeDetail = "names",
            )
        }
        val root = rootNamed(readJsonObjectFromOkPath(projected), rootName)
        assertEquals("ConceptDeclaration", root.get("concept").asString)
        assertTrue("the names projection must keep the addressable reference: $root", root.has("reference"))
        for (projectedAway in listOf("doc", "deprecated", "conceptReference", "properties", "references", "children")) {
            assertFalse("the names projection must not carry '$projectedAway': $root", root.has(projectedAway))
        }

        val full = runTool(JetBrainsMPSProjectMcpToolset()) {
            it.mps_mcp_get_project_structure(
                startingPoint = structureModelRef,
                includeRootNodes = true,
            )
        }
        val fullRoot = rootNamed(readJsonObjectFromOkPath(full), rootName)
        assertTrue(
            "the default projection must still be the full record: $fullRoot",
            fullRoot.has("properties") && fullRoot.has("references") && fullRoot.has("children")
        )
        assertTrue(
            "the names projection must be smaller than the full record",
            root.toString().length < fullRoot.toString().length
        )
    }

    @Test
    fun `get-project-structure nodeDepth bounds how far includeNodes inlines the AST`() {
        // nodeDepth=0 keeps the root record but stops before inlining its children, so the role
        // falls back to the {name, reference} summaries and says it did.
        val rootName = "DepthBoundRoot${System.nanoTime()}"
        createConceptRoot(rootName, childrenJson = CONCEPT_WITH_ONE_PROPERTY_CHILD)

        val bounded = runTool(JetBrainsMPSProjectMcpToolset()) {
            it.mps_mcp_get_project_structure(
                startingPoint = structureModelRef,
                includeNodes = true,
                nodeDepth = 0,
            )
        }
        val boundedRoot = rootNamed(readJsonObjectFromOkPath(bounded), rootName)
        val boundedRole = nonEmptyChildRole(boundedRoot)
        assertTrue("a cut-off role must be marked: $boundedRole", boundedRole.get("childrenTruncated")?.asBoolean == true)
        assertFalse("a cut-off role must not inline its children: $boundedRole", boundedRole.has("nodes"))
        assertTrue("a cut-off role must still list its children: $boundedRole", boundedRole.has("children"))

        val unbounded = runTool(JetBrainsMPSProjectMcpToolset()) {
            it.mps_mcp_get_project_structure(
                startingPoint = structureModelRef,
                includeNodes = true,
            )
        }
        val unboundedRole = nonEmptyChildRole(rootNamed(readJsonObjectFromOkPath(unbounded), rootName))
        assertTrue("the default depth must inline the children: $unboundedRole", unboundedRole.has("nodes"))
        assertFalse("the default depth must not mark a cut-off: $unboundedRole", unboundedRole.has("childrenTruncated"))
    }

    @Test
    fun `get-project-structure nodeDepth default is identical to the unlimited descent`() {
        // Requirement that the whole projection rests on: a caller that does not opt in gets
        // exactly what it got before. -1 is the documented spelling of the default, so the two
        // must be indistinguishable, and nodeDepth must stay inert without includeNodes.
        val rootName = "DepthIdentityRoot${System.nanoTime()}"
        createConceptRoot(rootName, childrenJson = CONCEPT_WITH_ONE_PROPERTY_CHILD)

        val omitted = runTool(JetBrainsMPSProjectMcpToolset()) {
            it.mps_mcp_get_project_structure(startingPoint = structureModelRef, includeNodes = true)
        }
        val explicit = runTool(JetBrainsMPSProjectMcpToolset()) {
            it.mps_mcp_get_project_structure(startingPoint = structureModelRef, includeNodes = true, nodeDepth = -1)
        }
        assertEquals(
            "nodeDepth=-1 must be the default, byte for byte",
            readJsonObjectFromOkPath(omitted).toString(),
            readJsonObjectFromOkPath(explicit).toString()
        )

        val inertWithoutNodes = runTool(JetBrainsMPSProjectMcpToolset()) {
            it.mps_mcp_get_project_structure(startingPoint = structureModelRef, includeRootNodes = true, nodeDepth = 0)
        }
        val plainRootNodes = runTool(JetBrainsMPSProjectMcpToolset()) {
            it.mps_mcp_get_project_structure(startingPoint = structureModelRef, includeRootNodes = true)
        }
        assertEquals(
            "nodeDepth must be inert when includeNodes is false",
            readJsonObjectFromOkPath(plainRootNodes).toString(),
            readJsonObjectFromOkPath(inertWithoutNodes).toString()
        )
    }

    @Test
    fun `get-project-structure nodeDepth one inlines exactly one level below the starting point`() {
        // Pins the descend() arithmetic at the only value where an off-by-one is invisible both
        // at depth 0 and at the default. Needs a genuinely three-level tree: a ConceptBehavior
        // root is `constructor` -> ConceptConstructorDeclaration -> `body` -> StatementList,
        // whereas the structure-model fixture bottoms out at a leaf LinkDeclaration and could
        // only be asserted on vacuously.
        val behaviorRoot = createConceptBehaviorRoot()

        val response = runTool(JetBrainsMPSProjectMcpToolset()) {
            it.mps_mcp_get_project_structure(
                startingPoint = behaviorRoot,
                includeNodes = true,
                nodeDepth = 1,
            )
        }

        // A node starting point serializes that node directly, not a model wrapper.
        val root = readJsonObjectFromOkPath(response)
        val constructorRole = childRole(root, "constructor")
        assertFalse(
            "the starting point's own role must be inlined at nodeDepth=1: $constructorRole",
            constructorRole.has("childrenTruncated")
        )

        val constructor = constructorRole.getAsJsonArray("nodes").single().asJsonObject
        assertEquals("ConceptConstructorDeclaration", constructor.get("concept").asString)
        val bodyRole = childRole(constructor, "body")
        assertTrue("the role one level further down must be cut off: $bodyRole", bodyRole.get("childrenTruncated").asBoolean)
        assertFalse("a cut-off role must not inline its children: $bodyRole", bodyRole.has("nodes"))
        assertEquals(
            "a cut-off role must still name the child it did not inline",
            1, bodyRole.getAsJsonArray("children").size()
        )

        // Same root, unlimited: the body that was cut off above is inlined as a full record.
        val unbounded = runTool(JetBrainsMPSProjectMcpToolset()) {
            it.mps_mcp_get_project_structure(startingPoint = behaviorRoot, includeNodes = true)
        }
        val unboundedBody = childRole(
            childRole(readJsonObjectFromOkPath(unbounded), "constructor").getAsJsonArray("nodes").single().asJsonObject,
            "body",
        )
        assertFalse("the default depth must not cut off the body role: $unboundedBody", unboundedBody.has("childrenTruncated"))
        assertEquals(
            "StatementList",
            unboundedBody.getAsJsonArray("nodes").single().asJsonObject.get("concept").asString
        )
    }

    @Test
    fun `get-project-structure rejects an unknown nodeDetail by naming the allowed values`() {
        val response = runTool(JetBrainsMPSProjectMcpToolset()) {
            it.mps_mcp_get_project_structure(startingPoint = structureModelRef, nodeDetail = "shape")
        }

        val obj = JsonParser.parseString(response).asJsonObject
        assertFalse("expected error envelope: $response", obj.get("ok").asBoolean)
        val error = obj.get("error").asString
        assertTrue(
            "the rejection must name the value and the allowed set: $error",
            error.contains("'shape'") && error.contains("full") && error.contains("names")
        )
    }

    private fun rootNamed(payload: JsonObject, rootName: String): JsonObject =
        payload.getAsJsonArray("rootNodes")?.map { it.asJsonObject }?.singleOrNull { it.get("name").asString == rootName }
            ?: error("root '$rootName' must appear in the dump: $payload")

    private fun childRole(node: JsonObject, role: String): JsonObject =
        node.getAsJsonArray("children").map { it.asJsonObject }.singleOrNull { it.get("role").asString == role }
            ?: error("node must carry a '$role' containment role: $node")

    /** The first containment role of [node] that actually holds children. */
    private fun nonEmptyChildRole(node: JsonObject): JsonObject =
        node.getAsJsonArray("children").map { it.asJsonObject }
            .firstOrNull { (it.getAsJsonArray("nodes")?.size() ?: 0) > 0 || (it.getAsJsonArray("children")?.size() ?: 0) > 0 }
            ?: error("root must have at least one populated containment role: $node")

    /**
     * `mps_mcp_get_project_structure` returns its payload inline when small and as a temp-file
     * path when it exceeds `maxInlineBytes`; the base helper accepts both shapes.
     */
    private fun readJsonObjectFromOkPath(response: String): JsonObject = payloadObjectFromOkData(response)
}
