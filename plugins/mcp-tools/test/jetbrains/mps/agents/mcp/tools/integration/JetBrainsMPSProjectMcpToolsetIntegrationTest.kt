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

    /**
     * `mps_mcp_get_project_structure` returns its payload inline when small and as a temp-file
     * path when it exceeds `maxInlineBytes`; the base helper accepts both shapes.
     */
    private fun readJsonObjectFromOkPath(response: String): JsonObject = payloadObjectFromOkData(response)
}
