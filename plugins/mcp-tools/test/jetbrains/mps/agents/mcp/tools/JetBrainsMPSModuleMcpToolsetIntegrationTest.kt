package jetbrains.mps.agents.mcp.tools

import com.google.gson.JsonParser
import java.io.File
import jetbrains.mps.project.AbstractModule
import jetbrains.mps.project.modules.LanguageProducer
import jetbrains.mps.project.structure.modules.LanguageDescriptor
import jetbrains.mps.smodel.Generator
import jetbrains.mps.smodel.Language
import jetbrains.mps.smodel.SModelStereotype
import org.jetbrains.mps.openapi.module.SDependencyScope
import org.junit.Assert.*
import org.junit.Test

/**
 * End-to-end integration tests for [JetBrainsMPSModuleMcpToolset]. Covers the lifecycle
 * operations (create/get/update/delete), dependency add/remove, facet inspection,
 * and the language/generator/sandbox/runtime create_module variants.
 */
class JetBrainsMPSModuleMcpToolsetIntegrationTest : McpIntegrationTestBase() {

    private val toolset = JetBrainsMPSModuleMcpToolset()

    @Test
    fun `solution happy path registers a new solution with the project`() {
        val solutionName = "test.created.solution${System.nanoTime()}"
        val directory = freshPathInProject(solutionName)

        val response = runTool(JetBrainsMPSModuleMcpToolset()) {
            it.mps_mcp_create_module(
                /* type = */ "solution",
                /* name = */ solutionName,
                /* directory = */ directory,
                /* virtualFolder = */ null,
                /* parentLanguage = */ null,
                /* withGenerator = */ false,
                /* withSandbox = */ false,
                /* withRuntime = */ false,
            )
        }

        val obj = JsonParser.parseString(response).asJsonObject
        assertTrue("expected ok=true envelope, got: $response", obj.get("ok").asBoolean)
        val data = parseDataObject(obj.get("data"))
        assertEquals(solutionName, data.get("name").asString)
        assertNotNull("response must echo a moduleRef/reference: $response", data.get("reference"))
        // Self-describing create response: kind + facets + loadExtensions remove the need for
        // a follow-up mps_mcp_get_module_facets call just to verify what was produced.
        assertEquals("Solution", data.get("kind").asString)
        val facets = data.getAsJsonArray("facets").map { it.asString }.toSet()
        assertTrue("Producer must install the default `java` facet: $response", facets.contains("java"))
        assertFalse("A plain solution must not carry the `tests` facet: $response", facets.contains("tests"))
        assertEquals("NotAvailable", data.get("loadExtensions").asString)

        readOnRepo {
            val match = myProject.projectModules.singleOrNull { it.moduleName == solutionName }
            assertNotNull("created solution must be registered with the project: $response", match)
        }
    }

    @Test
    fun `solution with facets=tests becomes a test-container solution`() {
        // Modern equivalent of the legacy `solutionKind = OTHER`: the `tests` facet marks the
        // solution as the container for an `@tests` model. Loading extensions stays
        // `NotAvailable` (test solutions don't contribute plugin extensions to MPS itself).
        val solutionName = "test.test.solution${System.nanoTime()}"
        val directory = freshPathInProject(solutionName)

        val response = runTool(JetBrainsMPSModuleMcpToolset()) {
            it.mps_mcp_create_module(
                /* type = */ "solution",
                /* name = */ solutionName,
                /* directory = */ directory,
                /* virtualFolder = */ null,
                /* parentLanguage = */ null,
                /* withGenerator = */ false,
                /* withSandbox = */ false,
                /* withRuntime = */ false,
                /* facets = */ listOf("tests"),
            )
        }

        val data = expectOk(response)
        assertEquals("Solution", data.get("kind").asString)
        val facets = data.getAsJsonArray("facets").map { it.asString }.toSet()
        assertTrue("Expected `tests` facet to be attached: $response", facets.contains("tests"))
        assertTrue("Expected default `java` facet alongside `tests`: $response", facets.contains("java"))
        assertEquals("NotAvailable", data.get("loadExtensions").asString)

        readOnRepo {
            val match = myProject.projectModules.singleOrNull { it.moduleName == solutionName }
            assertNotNull("created test solution must be registered: $response", match)
            val live = match!!.facets.map { it.facetType }.toSet()
            assertTrue("`tests` facet must be live on the module too: $live", live.contains("tests"))
        }
    }

    @Test
    fun `create_module accepts a single facet type string`() {
        val solutionName = "test.single.facet${System.nanoTime()}"
        val response = runTool(toolset) {
            it.mps_mcp_create_module(
                type = "solution",
                name = solutionName,
                directory = freshPathInProject(solutionName),
                facets = "tests",
            )
        }

        val facets = expectOk(response).getAsJsonArray("facets").map { it.asString }.toSet()
        assertTrue("a single facet type must be attached: $response", "tests" in facets)
    }

    @Test
    fun `create_module accepts a JSON array string of facet types`() {
        val solutionName = "test.array.facets${System.nanoTime()}"
        val response = runTool(toolset) {
            it.mps_mcp_create_module(
                type = "solution",
                name = solutionName,
                directory = freshPathInProject(solutionName),
                facets = "[\"tests\", \"documentation\"]",
            )
        }

        val facets = expectOk(response).getAsJsonArray("facets").map { it.asString }.toSet()
        assertTrue("the tests facet must be attached: $response", "tests" in facets)
        assertTrue("the documentation facet must be attached: $response", "documentation" in facets)
    }

    @Test
    fun `facets are rejected for devkit and generator module types`() {
        // DevKits carry no JavaModuleFacet by default and Generators inherit their facet
        // shape from the parent Language — neither has a canonical use case for layering
        // extra facets, so the tool refuses upfront rather than silently producing a
        // module with a meaningless facet attached.
        val devkitName = "test.facet.dk${System.nanoTime()}"
        val devkitDir = freshPathInProject(devkitName)
        val devkitResp = runTool(JetBrainsMPSModuleMcpToolset()) {
            it.mps_mcp_create_module(
                "devkit", devkitName, devkitDir,
                null, null, false, false, false,
                /* facets = */ listOf("tests"),
            )
        }
        val devkitErr = expectErr(devkitResp)
        assertTrue("devkit + facets must be rejected: $devkitErr",
            devkitErr.contains("not supported for module type 'devkit'"))
        readOnRepo {
            assertNull("rejected devkit must not be registered",
                myProject.projectModules.firstOrNull { it.moduleName == devkitName })
        }

        val parentName = language.moduleName!!
        val genResp = runTool(JetBrainsMPSModuleMcpToolset()) {
            it.mps_mcp_create_module(
                "generator", "ignored", "",
                null, parentName, false, false, false,
                /* facets = */ listOf("tests"),
            )
        }
        val genErr = expectErr(genResp)
        assertTrue("generator + facets must be rejected: $genErr",
            genErr.contains("not supported for module type 'generator'"))
    }

    @Test
    fun `unknown facet type is rejected before any module is created`() {
        val solutionName = "test.bogusFacet${System.nanoTime()}"
        val directory = freshPathInProject(solutionName)

        val response = runTool(JetBrainsMPSModuleMcpToolset()) {
            it.mps_mcp_create_module(
                "solution", solutionName, directory,
                null, null, false, false, false,
                /* facets = */ listOf("no-such-facet-type"),
            )
        }

        assertTrue(
            "error should mention the unknown facet type: ${expectErr(response)}",
            expectErr(response).contains("Unknown facet type")
        )
        readOnRepo {
            val match = myProject.projectModules.firstOrNull { it.moduleName == solutionName }
            assertEquals("invalid facet must not leave a partial module behind", null, match)
        }
    }

    @Test
    fun `solution with multiple facets attaches all of them`() {
        val solutionName = "test.multi.facet${System.nanoTime()}"
        val directory = freshPathInProject(solutionName)

        val response = runTool(JetBrainsMPSModuleMcpToolset()) {
            it.mps_mcp_create_module(
                "solution", solutionName, directory,
                null, null, false, false, false,
                /* facets = */ listOf("tests", "documentation"),
            )
        }
        val data = expectOk(response)
        val facets = data.getAsJsonArray("facets").map { it.asString }.toSet()
        assertTrue("expected `tests` facet attached: $response", facets.contains("tests"))
        assertTrue("expected `documentation` facet attached: $response", facets.contains("documentation"))
        assertTrue("default `java` facet must still be present: $response", facets.contains("java"))
    }

    @Test
    fun `rollbackPartialCreation un-registers a solution and removes its descriptor file`() {
        // Regression cover for the "producer succeeded, post-producer step failed" path.
        // The throwable-from-setModuleDescriptor scenario is hard to drive through the
        // public surface (pre-validation filters the easy cases and the descriptor mutation
        // does not surface user-influenced failure modes today), so this test invokes the
        // helper directly on a real producer-created solution to lock in:
        //   - the project registration is undone
        //   - the on-disk .msd is removed so a retry with the same name+directory works
        val solutionName = "test.rollback.sol${System.nanoTime()}"
        val directory = freshPathInProject(solutionName)
        expectOk(runTool(toolset) {
            it.mps_mcp_create_module("solution", solutionName, directory,
                null, null, false, false, false)
        })

        val createdSolution = readOnRepo {
            myProject.projectModules.single { it.moduleName == solutionName }
        }
        val descriptorFile = readOnRepo { (createdSolution as AbstractModule).descriptorFile }
        assertNotNull("test precondition: solution must have a descriptor file", descriptorFile)
        assertTrue("test precondition: descriptor file must exist on disk before rollback",
            descriptorFile!!.exists())

        executeCommand { toolset.rollbackPartialCreation(myProject, createdSolution) }

        readOnRepo {
            val match = myProject.projectModules.firstOrNull { it.moduleName == solutionName }
            assertNull("solution must be un-registered from the project after rollback", match)
        }
        assertFalse("descriptor file must be removed from disk so a retry can succeed: $descriptorFile",
            descriptorFile.exists())
    }

    @Test
    fun `rollbackPartialCreation un-registers a generator from its parent language`() {
        // The post-producer facet-attachment failure path calls rollbackPartialCreation;
        // the cast/null-descriptor scenarios that trigger it are hard to reach through the
        // public tool surface (pre-validation already filters the easy cases). Drive the
        // helper directly here so the Generator branch — which differs structurally from
        // the Solution/Language/DevKit branches — is exercised end-to-end.
        val parentName = language.moduleName!!
        val createdName = expectOk(runTool(toolset) {
            it.mps_mcp_create_module("generator", "ignored", "", null, parentName, false, false, false)
        }).get("name").asString

        val toRollback = readOnRepo {
            language.generators.singleOrNull { (it as? Generator)?.moduleName == createdName }
        }
        assertNotNull("test precondition: generator must be registered before rollback", toRollback)

        // Capture parent-language descriptor file BEFORE rollback so we can assert it
        // survives. A naive rollback that deletes `(generator as AbstractModule).descriptorFile`
        // would actually delete the parent Language's `.mpl` (Generators share their
        // parent's descriptor file — see `Language.revalidateGenerators`), corrupting
        // the parent on disk.
        val parentDescriptorFile = readOnRepo { (language as AbstractModule).descriptorFile!! }
        assertTrue("test precondition: parent language's .mpl must exist before rollback",
            parentDescriptorFile.exists())

        executeCommand { toolset.rollbackPartialCreation(myProject, toRollback!!) }

        readOnRepo {
            val stillUnderParent = language.generators
                .firstOrNull { (it as? Generator)?.moduleName == createdName }
            assertNull("generator must be detached from parent language's `generators`: $stillUnderParent",
                stillUnderParent)
            val stillInRepo = myProject.repository.getModule(toRollback!!.moduleReference.moduleId)
            assertNull("generator must be unregistered from the project repository", stillInRepo)
            // Data-loss guard: deleting the generator must NOT collateral-damage the parent.
            assertNotNull("parent language must remain registered with the project",
                myProject.projectModules.firstOrNull { it.moduleName == language.moduleName })
        }
        assertTrue("parent language's descriptor file must survive generator rollback: $parentDescriptorFile",
            parentDescriptorFile.exists())
    }

    @Test
    fun `rollbackPartialCreation with companions un-registers a language and its generator runtime sandbox`() {
        // Locks in the create-call's "no partial state is left behind" guarantee for the
        // Language + withGenerator/withRuntime/withSandbox path. Without companions support
        // in rollback, a facet-attach failure on the primary Language would leave the
        // generator and runtime/sandbox solutions registered.
        val langName = "test.rollback.lang${System.nanoTime()}"
        val directory = freshPathInProject(langName)
        expectOk(runTool(toolset) {
            it.mps_mcp_create_module("language", langName, directory,
                null, null, /* withGenerator = */ true, /* withSandbox = */ true,
                /* withRuntime = */ true)
        })

        val (lang, companions) = readOnRepo {
            val l = myProject.projectModules.single { it.moduleName == langName } as Language
            val cs = mutableListOf<org.jetbrains.mps.openapi.module.SModule>()
            cs.addAll(l.generators)
            myProject.projectModules.firstOrNull { it.moduleName == "${langName}.runtime" }?.let { cs.add(it) }
            myProject.projectModules.firstOrNull { it.moduleName == "${langName}.sandbox" }?.let { cs.add(it) }
            l to cs
        }
        assertTrue("test precondition: language must have at least one generator", companions.any { it is Generator })

        executeCommand { toolset.rollbackPartialCreation(myProject, lang, companions) }

        readOnRepo {
            assertNull("language must be un-registered",
                myProject.projectModules.firstOrNull { it.moduleName == langName })
            assertNull("runtime companion must be un-registered",
                myProject.projectModules.firstOrNull { it.moduleName == "${langName}.runtime" })
            assertNull("sandbox companion must be un-registered",
                myProject.projectModules.firstOrNull { it.moduleName == "${langName}.sandbox" })
            for (c in companions.filterIsInstance<Generator>()) {
                assertNull("generator companion must be detached from project repository: ${c.moduleName}",
                    myProject.repository.getModule(c.moduleReference.moduleId))
            }
        }
    }

    @Test
    fun `listing an already-attached facet is silently deduplicated`() {
        // The producer installs `java` with default settings; listing it again must NOT
        // wipe those settings or add a second descriptor entry. Asserting `loadExtensions`
        // stays `NotAvailable` is the visible proof: an empty-memento overwrite would
        // leave the field unset.
        val solutionName = "test.dedup.facet${System.nanoTime()}"
        val directory = freshPathInProject(solutionName)

        val response = runTool(JetBrainsMPSModuleMcpToolset()) {
            it.mps_mcp_create_module(
                "solution", solutionName, directory,
                null, null, false, false, false,
                /* facets = */ listOf("java"),
            )
        }
        val data = expectOk(response)
        val facets = data.getAsJsonArray("facets").map { it.asString }
        assertEquals(
            "dedup must yield exactly one `java` facet, not two: $response",
            1, facets.count { it == "java" },
        )
        assertEquals(
            "producer-installed `java` settings must survive the redundant facet listing: $response",
            "NotAvailable", data.get("loadExtensions").asString,
        )
    }

    @Test
    fun `unsupported module type is rejected`() {
        val solutionName = "test.bogus${System.nanoTime()}"
        val directory = freshPathInProject(solutionName)

        val response = runTool(JetBrainsMPSModuleMcpToolset()) {
            it.mps_mcp_create_module(
                "totally-not-a-module-type",
                solutionName,
                directory,
                null,
                null,
                false,
                false,
                false,
            )
        }

        val obj = JsonParser.parseString(response).asJsonObject
        assertFalse("expected error envelope: $response", obj.get("ok").asBoolean)
        val message = obj.get("error").asString
        assertTrue(
            "error should mention unsupported module type: $message",
            message.contains("Unsupported module type")
        )

        readOnRepo {
            val match = myProject.projectModules.firstOrNull { it.moduleName == solutionName }
            assertEquals("no partial module should be registered with the project", null, match)
        }
    }

    // ── create_module variants ────────────────────────────────────────────────────────────

    @Test
    fun `language creation with companions registers parent generator runtime and sandbox`() {
        val langName = "test.created.lang${System.nanoTime()}"
        val directory = freshPathInProject(langName)

        val response = runTool(toolset) {
            it.mps_mcp_create_module(
                "language", langName, directory,
                /* virtualFolder = */ "Test/Languages",
                /* parentLanguage = */ null,
                /* withGenerator = */ true,
                /* withSandbox = */ true,
                /* withRuntime = */ true,
            )
        }
        val data = expectOk(response)
        assertEquals(langName, data.get("name").asString)
        assertEquals("Test/Languages", data.get("virtualFolder").asString)

        readOnRepo {
            val lang = myProject.projectModules.singleOrNull { it.moduleName == langName } as? Language
            assertNotNull("created language must be in the project: $response", lang)
            assertTrue("withGenerator=true must spawn at least one generator",
                lang!!.generators.isNotEmpty())
            assertNotNull("withRuntime=true must register a runtime solution",
                myProject.projectModules.firstOrNull { it.moduleName == "${langName}.runtime" })
            assertNotNull("withSandbox=true must register a sandbox solution",
                myProject.projectModules.firstOrNull { it.moduleName == "${langName}.sandbox" })
        }
    }

    @Test
    fun `generator creation requires parentLanguage`() {
        val response = runTool(toolset) {
            it.mps_mcp_create_module(
                "generator", "any", "", null, /* parentLanguage = */ null,
                false, false, false,
            )
        }
        assertTrue(expectErr(response).contains("requires 'parentLanguage'"))
    }

    @Test
    fun `generator creation against unknown parent language fails`() {
        val response = runTool(toolset) {
            it.mps_mcp_create_module(
                "generator", "any", "",
                null, /* parentLanguage = */ "no.such.language",
                false, false, false,
            )
        }
        assertTrue(expectErr(response).contains("Parent language not found"))
    }

    @Test
    fun `generator creation under existing language adds a new generator`() {
        // The base class already creates a language (without a generator); use it as parent.
        val parentName = language.moduleName!!
        val existingCount = readOnRepo { language.generators.toList().size }

        val response = runTool(toolset) {
            it.mps_mcp_create_module(
                "generator", "ignored", /* directory = */ "",
                null, /* parentLanguage = */ parentName,
                false, false, false,
            )
        }
        val data = expectOk(response)
        val createdName = data.get("name").asString
        assertTrue(
            "generator name should derive from parent language: $createdName",
            createdName.startsWith(parentName),
        )

        readOnRepo {
            val gens = language.generators.toList()
            assertEquals("a fresh generator must be registered with the parent language",
                existingCount + 1, gens.size)
            val match = gens.firstOrNull { (it as? Generator)?.moduleName == createdName }
            assertNotNull("created generator must show up under the parent: $createdName", match)
        }
    }

    @Test
    fun `generator creation into an explicit fresh directory succeeds`() {
        // Regression for the create-then-abort bug: a non-empty `directory` used to be
        // pre-created by the shared directory-resolution step, after which the generator
        // branch's own existence check fired on the folder this tool had just created and
        // aborted EVERY non-empty-directory generator creation. A brand-new path must succeed.
        val parentName = language.moduleName!!
        val existingCount = readOnRepo { language.generators.toList().size }
        val genDir = freshPathInProject("explicitGen${System.nanoTime()}")

        val response = runTool(toolset) {
            it.mps_mcp_create_module(
                "generator", "ignored", /* directory = */ genDir,
                null, /* parentLanguage = */ parentName,
                false, false, false,
            )
        }
        val createdName = expectOk(response).get("name").asString

        readOnRepo {
            assertEquals("a fresh generator must be registered with the parent language",
                existingCount + 1, language.generators.toList().size)
        }
        assertTrue("the explicit generator directory must have been created on disk",
            projectFile(genDir).exists())
        assertGeneratorScaffolded(createdName)
    }

    @Test
    fun `generator creation reuses a pre-existing empty directory`() {
        // The conventional '<lang>/generator' folder is often laid out as empty scaffolding.
        // An empty target directory must be reused, not treated as a fatal collision.
        val parentName = language.moduleName!!
        val genDir = freshPathInProject("emptyGen${System.nanoTime()}")
        executeCommand { projectFile(genDir).mkdirs() }

        val response = runTool(toolset) {
            it.mps_mcp_create_module(
                "generator", "ignored", /* directory = */ genDir,
                null, /* parentLanguage = */ parentName,
                false, false, false,
            )
        }
        val createdName = expectOk(response).get("name").asString
        assertGeneratorScaffolded(createdName)
    }

    @Test
    fun `generator creation into a non-empty directory is rejected`() {
        val parentName = language.moduleName!!
        val genDir = freshPathInProject("nonEmptyGen${System.nanoTime()}")
        executeCommand {
            val d = projectFile(genDir)
            d.mkdirs()
            d.findChild("marker.txt").createNewFile()
        }

        val response = runTool(toolset) {
            it.mps_mcp_create_module(
                "generator", "ignored", /* directory = */ genDir,
                null, /* parentLanguage = */ parentName,
                false, false, false,
            )
        }
        val err = expectErr(response)
        assertTrue("non-empty target must be rejected with a clear message: $err",
            err.contains("already exists and is not empty"))
    }

    @Test
    fun `generator creation with null directory defaults under the parent language`() {
        // `directory` is optional: a null/blank value defaults to '<parent-language-dir>/generator'.
        val parentName = language.moduleName!!
        val existingCount = readOnRepo { language.generators.toList().size }

        val response = runTool(toolset) {
            it.mps_mcp_create_module(
                "generator", "ignored", /* directory = */ null,
                null, /* parentLanguage = */ parentName,
                false, false, false,
            )
        }
        val createdName = expectOk(response).get("name").asString
        readOnRepo {
            assertEquals("a fresh generator must be registered with the parent language",
                existingCount + 1, language.generators.toList().size)
        }
        assertGeneratorScaffolded(createdName)
    }

    /**
     * Resolves an [jetbrains.mps.vfs.IFile] handle for [path] via the project file system.
     * Routed through the non-deprecated `jetbrains.mps.vfs.openapi.FileSystem` interface type
     * (mirroring the production toolset) to avoid the `IdeaFileSystem` deprecation flag.
     */
    private fun projectFile(path: String): jetbrains.mps.vfs.IFile {
        val fs: jetbrains.mps.vfs.openapi.FileSystem = myProject.fileSystem
        return fs.getFile(path)
    }

    /**
     * Asserts that the generator named [generatorName] under the test's [language] was scaffolded
     * with exactly one `@generator`-stereotype templates model holding the auto-created
     * `MappingConfiguration` root named `main` (produced by
     * `LanguageProducer.createTemplateModelIfNoneYet`).
     */
    private fun assertGeneratorScaffolded(generatorName: String) {
        readOnRepo {
            val gen = language.generators.single { it.moduleName == generatorName }
            val templates = gen.models.filter { SModelStereotype.isGeneratorModel(it) }
            assertEquals("generator must own exactly one templates model: ${gen.models.toList()}",
                1, templates.size)
            val roots = templates.single().rootNodes.toList()
            assertEquals("templates model must hold the auto-created MappingConfiguration: $roots",
                1, roots.size)
            assertEquals("MappingConfiguration", roots.single().concept.name)
            assertEquals("main", roots.single().getPropertyByName("name"))
        }
    }

    @Test
    fun `devkit creation registers a devkit module`() {
        val name = "test.created.devkit${System.nanoTime()}"
        val directory = freshPathInProject(name)
        val response = runTool(toolset) {
            it.mps_mcp_create_module("devkit", name, directory, null, null, false, false, false)
        }
        val data = expectOk(response)
        assertEquals(name, data.get("name").asString)
        readOnRepo {
            assertNotNull(myProject.projectModules.firstOrNull { it.moduleName == name })
        }
    }

    // ── lifecycle: update / delete ────────────────────────────────────────────────────────

    @Test
    fun `update_module sets the virtual folder when only that is requested`() {
        val solution = createSolution()
        val moduleName = solution.moduleName!!
        val response = runTool(toolset) {
            it.mps_mcp_update_module(moduleName, "Test/Folder", ModuleOperation.CHANGE_VIRTUAL_FOLDER)
        }
        val data = expectOk(response)
        assertEquals("Test/Folder", data.get("virtualFolder").asString)
        assertEquals("Test/Folder", readOnRepo { myProject.getVirtualFolder(solution) })
    }

    @Test
    fun `update_module renames a solution and updates the project registry`() {
        val solution = createSolution()
        val oldName = solution.moduleName!!
        val newName = "${oldName}.renamed"

        val data = expectOk(runTool(toolset) { it.mps_mcp_update_module(oldName, newName) })
        assertEquals(newName, data.get("name").asString)
        readOnRepo {
            assertNotNull("renamed solution must be registered under the new name",
                myProject.projectModules.firstOrNull { it.moduleName == newName })
            assertNull("no module should remain under the old name",
                myProject.projectModules.firstOrNull { it.moduleName == oldName })
        }
    }

    @Test
    fun `update_module renames a language and renames its models accordingly`() {
        // The base class created a Language with a `<lang>.structure` model. Renaming the
        // module must cascade-rename that model's namespace to keep the prefix in sync.
        val oldName = language.moduleName!!
        val newName = "${oldName}.renamed"

        val data = expectOk(runTool(toolset) { it.mps_mcp_update_module(oldName, newName) })
        assertEquals(newName, data.get("name").asString)
        readOnRepo {
            val renamed = myProject.projectModules.singleOrNull { it.moduleName == newName } as? Language
            assertNotNull("renamed language must be in the project", renamed)
            assertTrue(
                "structure model namespace must follow the new module name",
                renamed!!.models.any { it.name.longName == "$newName.structure" },
            )
        }
    }

    @Test
    fun `update_module renames a devkit`() {
        val name = "test.dk.rename${System.nanoTime()}"
        val directory = freshPathInProject(name)
        expectOk(runTool(toolset) {
            it.mps_mcp_create_module("devkit", name, directory, null, null, false, false, false)
        })
        val newName = "$name.renamed"

        val data = expectOk(runTool(toolset) { it.mps_mcp_update_module(name, newName) })
        assertEquals(newName, data.get("name").asString)
        readOnRepo {
            assertNotNull(myProject.projectModules.firstOrNull { it.moduleName == newName })
        }
    }

    @Test
    fun `update_module rejects renaming a generator module`() {
        // Create a generator owned by the existing language so we have a Generator to target.
        val parentName = language.moduleName!!
        val createdName = expectOk(runTool(toolset) {
            it.mps_mcp_create_module("generator", "ignored", "", null, parentName, false, false, false)
        }).get("name").asString

        val response = runTool(toolset) {
            it.mps_mcp_update_module(createdName, "$createdName.renamed")
        }
        val err = expectErr(response)
        assertTrue("error should explain generator rename policy: $err",
            err.contains("Generator modules cannot be renamed"))
        readOnRepo {
            // Generator still present under its original name; parent language unchanged.
            val gen = language.generators.singleOrNull { (it as? Generator)?.moduleName == createdName }
            assertNotNull("generator must remain registered under its original name", gen)
        }
    }

    @Test
    fun `update_module rejects an invalid newName`() {
        val solution = createSolution()
        // First-char failure: leading digit is rejected before the package-shape check runs.
        val leadingDigit = expectErr(runTool(toolset) {
            it.mps_mcp_update_module(solution.moduleName!!, "1bad")
        })
        assertTrue("expected leading-char rejection: $leadingDigit",
            leadingDigit.contains("can't start with"))
        // Middle-of-name failure: passes the boundary checks but `SourceVersion.isName` rejects
        // the embedded space, exercising the Java-package validation path.
        val embeddedSpace = expectErr(runTool(toolset) {
            it.mps_mcp_update_module(solution.moduleName!!, "bad name")
        })
        assertTrue("expected Java-package rejection: $embeddedSpace",
            embeddedSpace.contains("valid Java package"))
    }

    @Test
    fun `update_module rejects a newName that clashes with another module`() {
        val a = createSolution("test.sol.A${System.nanoTime()}")
        val b = createSolution("test.sol.B${System.nanoTime()}")
        val response = runTool(toolset) {
            it.mps_mcp_update_module(a.moduleName!!, b.moduleName!!)
        }
        assertTrue(expectErr(response).contains("already in use"))
    }

    @Test
    fun `update_module rename followed by virtualFolder change`() {
        val solution = createSolution()
        val oldName = solution.moduleName!!
        val newName = "${oldName}.renamed"

        val renameData = expectOk(runTool(toolset) {
            it.mps_mcp_update_module(oldName, newName)
        })
        assertEquals(newName, renameData.get("name").asString)

        val folderData = expectOk(runTool(toolset) {
            it.mps_mcp_update_module(newName, "Test/Renamed", ModuleOperation.CHANGE_VIRTUAL_FOLDER)
        })
        assertEquals("Test/Renamed", folderData.get("virtualFolder").asString)
        readOnRepo {
            val renamed = myProject.projectModules.singleOrNull { it.moduleName == newName }
            assertNotNull(renamed)
            assertEquals("Test/Renamed", myProject.getVirtualFolder(renamed!!))
        }
    }

    @Test
    fun `update_module RENAME fails when newName is not provided`() {
        val solution = createSolution()
        val response = runTool(toolset) {
            it.mps_mcp_update_module(solution.moduleName!!, null)
        }
        assertTrue(expectErr(response).contains("Nothing to rename"))
    }

    @Test
    fun `delete_module removes the module from the project`() {
        val solution = createSolution()
        val moduleName = solution.moduleName!!

        val response = runTool(toolset) { it.mps_mcp_update_module(moduleName, operation = ModuleOperation.DELETE) }
        val data = expectOk(response)
        assertTrue(data.get("deleted").asBoolean)

        readOnRepo {
            assertNull(myProject.projectModules.firstOrNull { it.moduleName == moduleName })
        }
    }

    @Test
    fun `delete_module with deleteFiles removes the module directory from disk`() {
        val solution = createSolution()
        val moduleName = solution.moduleName!!

        // Capture the directory the fix deletes (the descriptor file's parent) before the
        // delete tears the descriptor wiring down. createSolution() laid it out via mkdirs(),
        // so it is present on disk now.
        val moduleDirPath = readOnRepo { (solution as AbstractModule).descriptorFile!!.parent!!.path }
        val moduleDir = File(moduleDirPath)
        assertTrue("module directory should exist before deletion: $moduleDirPath", moduleDir.exists())

        val response = runTool(toolset) {
            it.mps_mcp_update_module(moduleName, operation = ModuleOperation.DELETE, deleteFiles = true)
        }
        val data = expectOk(response)
        assertTrue(data.get("deleted").asBoolean)
        // The pre-fix bug deleted the directory outside a write action, failing the
        // assertWriteAccessAllowed() check and reporting it as a fileDeletionWarning while the
        // files survived. With the write action in place there must be no such warning.
        assertFalse(
            "deleteFiles=true must not report a fileDeletionWarning: $response",
            data.has("fileDeletionWarning"),
        )

        readOnRepo {
            assertNull(myProject.projectModules.firstOrNull { it.moduleName == moduleName })
        }
        assertFalse("module directory should be deleted from disk: $moduleDirPath", moduleDir.exists())
    }

    @Test
    fun `delete_module returns NOT_FOUND for unknown module`() {
        val response = runTool(toolset) { it.mps_mcp_update_module("ghost.module", operation = ModuleOperation.DELETE) }
        assertTrue(expectErr(response).contains("not found"))
    }

    // ── dependencies ───────────────────────────────────────────────────────────────────────

    @Test
    fun `add_module_dependency registers a default dependency in the descriptor`() {
        val source = createSolution("test.dep.module.src${System.nanoTime()}")
        val target = createSolution("test.dep.module.tgt${System.nanoTime()}")

        val response = runTool(toolset) {
            it.mps_mcp_module_dependency(
                source.moduleName!!, target.moduleName!!,
                /* operation = */DependencyOperation.ADD, /* scope = */ null, /* reexport = */ false,
            )
        }
        val obj = JsonParser.parseString(response).asJsonObject
        assertTrue("expected ok envelope: $response", obj.get("ok").asBoolean)

        val hit = readOnRepo {
            (source as AbstractModule).moduleDescriptor!!.dependencies
                .find { it.moduleRef == target.moduleReference }
        }
        assertNotNull("dependency must be present in descriptor", hit)
        assertEquals(SDependencyScope.DEFAULT, hit!!.scope)
        assertFalse(hit.isReexport)
    }

    @Test
    fun `add_module_dependency self-loop is rejected`() {
        val solution = createSolution()
        val name = solution.moduleName!!
        val response = runTool(toolset) {
            it.mps_mcp_module_dependency(name, name, DependencyOperation.ADD, null, false)
        }
        assertTrue(expectErr(response).contains("itself"))
    }

    @Test
    fun `add_module_dependency reports NOT_FOUND on unknown target`() {
        val solution = createSolution()
        val response = runTool(toolset) {
            it.mps_mcp_module_dependency(solution.moduleName!!, "no.such.target", DependencyOperation.ADD, null, false)
        }
        assertTrue(expectErr(response).contains("not found"))
    }

    // ── dependencies: Extends scope ────────────────────────────────────────────────────────
    // The Extends scope is persisted via a separate descriptor field per module kind, not as
    // a `<dependency scope="extend">` element. These tests pin that contract.

    /** Creates a fresh Language module registered with the test project. */
    private fun createLanguage(name: String = "test.lang.extra${System.nanoTime()}"): Language {
        val dir = createDirInProject(name)
        var lang: Language? = null
        executeCommand { lang = LanguageProducer(myProject).withGenerator(false).create(name, dir) }
        return checkNotNull(lang) { "LanguageProducer returned null" }
    }

    @Test
    fun `add_module_dependency with Extends writes to extendedLanguages, not to dependencies`() {
        // Regression: previously the tool appended a `Dependency(scope=EXTENDS)` to
        // `descriptor.dependencies`, which serializes as `<dependency scope="extend">` —
        // a form no real .mpl uses, and which MPS's language-extension mechanism ignores.
        // The proper persistence target is LanguageDescriptor.extendedLanguages.
        val target = createLanguage()
        val response = runTool(toolset) {
            it.mps_mcp_module_dependency(
                language.moduleName!!, target.moduleName!!,
                /* operation = */ DependencyOperation.ADD, /* scope = */ "Extends", /* reexport = */ false,
            )
        }
        assertTrue("expected ok envelope: $response",
            JsonParser.parseString(response).asJsonObject.get("ok").asBoolean)

        readOnRepo {
            val descriptor = (language as AbstractModule).moduleDescriptor as LanguageDescriptor
            assertTrue("target must appear in extendedLanguages: ${descriptor.extendedLanguages}",
                descriptor.extendedLanguages.contains(target.moduleReference))
            val strayDep = descriptor.dependencies.firstOrNull { it.moduleRef == target.moduleReference }
            assertNull("Extends must NOT be persisted as a regular <dependency> entry: $strayDep",
                strayDep)
        }
    }

    @Test
    fun `add_module_dependency with Extends accepts the JVM enum spelling EXTENDS`() {
        // The scope parameter is parsed by both presentation ("Extends") and JVM-enum name
        // ("EXTENDS"); the latter is what the tool's response shape reports back.
        val target = createLanguage()
        val response = runTool(toolset) {
            it.mps_mcp_module_dependency(
                language.moduleName!!, target.moduleName!!, DependencyOperation.ADD, "EXTENDS", false,
            )
        }
        assertTrue(JsonParser.parseString(response).asJsonObject.get("ok").asBoolean)
        readOnRepo {
            val descriptor = (language as AbstractModule).moduleDescriptor as LanguageDescriptor
            assertTrue(descriptor.extendedLanguages.contains(target.moduleReference))
        }
    }

    @Test
    fun `add_module_dependency with Extends is idempotent on repeated calls`() {
        val target = createLanguage()
        val source = language.moduleName!!
        val targetName = target.moduleName!!
        repeat(2) {
            val resp = runTool(toolset) {
                it.mps_mcp_module_dependency(source, targetName, DependencyOperation.ADD, "Extends", false)
            }
            assertTrue(JsonParser.parseString(resp).asJsonObject.get("ok").asBoolean)
        }
        readOnRepo {
            val descriptor = (language as AbstractModule).moduleDescriptor as LanguageDescriptor
            val count = descriptor.extendedLanguages.count { it == target.moduleReference }
            assertEquals("extendedLanguages must contain exactly one entry per target", 1, count)
        }
    }

    @Test
    fun `add_module_dependency with Extends rejects a Solution source`() {
        // Solutions have no extension semantics; the call must fail explicitly rather than
        // silently write a meaningless `<dependency scope="extend">` entry.
        val source = createSolution("test.ext.sol.src${System.nanoTime()}")
        val target = createLanguage()
        val response = runTool(toolset) {
            it.mps_mcp_module_dependency(source.moduleName!!, target.moduleName!!, DependencyOperation.ADD, "Extends", false)
        }
        val err = expectErr(response)
        assertTrue("error must mention Solution: $err", err.contains("Solution"))
    }

    @Test
    fun `add_module_dependency with Extends rejects a kind-mismatched target`() {
        // Language can only extend Language. Asking it to extend a Solution is meaningless.
        val target = createSolution("test.ext.sol.tgt${System.nanoTime()}")
        val response = runTool(toolset) {
            it.mps_mcp_module_dependency(
                language.moduleName!!, target.moduleName!!, DependencyOperation.ADD, "Extends", false,
            )
        }
        val err = expectErr(response)
        assertTrue("error must mention the kind mismatch: $err",
            err.contains("Extends") && err.contains("Language") && err.contains("Solution"))
    }

    @Test
    fun `remove_module_dependency drops an Extends entry from extendedLanguages`() {
        // Symmetric reversibility: an Extends added via the tool must be removable via the
        // same tool. The remove path probes both `<dependencies>` and the Extends-side
        // collections, so callers don't need a separate API for the two cases.
        val target = createLanguage()
        val source = language.moduleName!!
        val targetName = target.moduleName!!

        expectOk(runTool(toolset) {
            it.mps_mcp_module_dependency(source, targetName, DependencyOperation.ADD, "Extends", false)
        })
        readOnRepo {
            val descriptor = (language as AbstractModule).moduleDescriptor as LanguageDescriptor
            assertTrue("test precondition: extension must be in place",
                descriptor.extendedLanguages.contains(target.moduleReference))
        }

        val resp = runTool(toolset) {
            it.mps_mcp_module_dependency(source, targetName, DependencyOperation.DELETE)
        }
        assertTrue("expected ok envelope: $resp",
            JsonParser.parseString(resp).asJsonObject.get("ok").asBoolean)

        readOnRepo {
            val descriptor = (language as AbstractModule).moduleDescriptor as LanguageDescriptor
            assertFalse("extendedLanguages must no longer contain the target",
                descriptor.extendedLanguages.contains(target.moduleReference))
        }
    }

    @Test
    fun `remove_module_dependency drops Extends entry even when target module is gone`() {
        // After the target is deleted from the project, resolveModule() can't find it. The
        // remove path falls back to a name/serialized-reference scan that must include the
        // Extends collections, otherwise the user is stuck with an orphan extendedLanguage entry.
        val target = createLanguage()
        val source = language.moduleName!!
        val targetName = target.moduleName!!
        val targetRef = target.moduleReference

        expectOk(runTool(toolset) {
            it.mps_mcp_module_dependency(source, targetName, DependencyOperation.ADD, "Extends", false)
        })

        // Remove the target module from the project so resolveModule(...) fails for it.
        expectOk(runTool(toolset) { it.mps_mcp_update_module(targetName, operation = ModuleOperation.DELETE) })

        val resp = runTool(toolset) {
            it.mps_mcp_module_dependency(source, targetName, DependencyOperation.DELETE)
        }
        assertTrue("expected ok envelope: $resp",
            JsonParser.parseString(resp).asJsonObject.get("ok").asBoolean)

        readOnRepo {
            val descriptor = (language as AbstractModule).moduleDescriptor as LanguageDescriptor
            assertFalse("extendedLanguages must no longer contain the (now-deleted) target",
                descriptor.extendedLanguages.contains(targetRef))
        }
    }

    @Test
    fun `remove_module_dependency drops a previously added dependency`() {
        val source = createSolution("test.dep.remove.src${System.nanoTime()}")
        val target = createSolution("test.dep.remove.tgt${System.nanoTime()}")
        val sourceName = source.moduleName!!
        val targetName = target.moduleName!!

        // Seed the dependency through the tool itself.
        val addResp = runTool(toolset) {
            it.mps_mcp_module_dependency(sourceName, targetName, DependencyOperation.ADD, null, false)
        }
        assertTrue(JsonParser.parseString(addResp).asJsonObject.get("ok").asBoolean)

        val removeResp = runTool(toolset) {
            it.mps_mcp_module_dependency(sourceName, targetName, DependencyOperation.DELETE)
        }
        val obj = JsonParser.parseString(removeResp).asJsonObject
        assertTrue("expected ok envelope: $removeResp", obj.get("ok").asBoolean)

        val hit = readOnRepo {
            (source as AbstractModule).moduleDescriptor!!.dependencies
                .firstOrNull { it.moduleRef == target.moduleReference }
        }
        assertNull("dependency must be gone from descriptor", hit)
    }

    @Test
    fun `remove_module_dependency reports NOT_FOUND when nothing matches`() {
        val source = createSolution()
        val response = runTool(toolset) {
            it.mps_mcp_module_dependency(source.moduleName!!, "ghost.target", DependencyOperation.DELETE)
        }
        assertTrue(expectErr(response).contains("not found"))
    }

    @Test
    fun `add_module_dependency with operation DELETE calls remove_module_dependency and drops the dependency`() {
        val source = createSolution("test.add.remove.src${System.nanoTime()}")
        val target = createSolution("test.add.remove.tgt${System.nanoTime()}")
        val sourceName = source.moduleName!!
        val targetName = target.moduleName!!

        // Add first
        val addResp = runTool(toolset) {
            it.mps_mcp_module_dependency(sourceName, targetName, DependencyOperation.ADD, null, false)
        }
        assertTrue(JsonParser.parseString(addResp).asJsonObject.get("ok").asBoolean)

        // Then remove via the same method but with DependencyOperation.DELETE operation
        val removeResp = runTool(toolset) {
            it.mps_mcp_module_dependency(sourceName, targetName, DependencyOperation.DELETE, null, false)
        }
        assertTrue(JsonParser.parseString(removeResp).asJsonObject.get("ok").asBoolean)

        val hit = readOnRepo {
            (source as AbstractModule).moduleDescriptor!!.dependencies
                .firstOrNull { it.moduleRef == target.moduleReference }
        }
        assertNull("dependency must be gone from descriptor", hit)
    }

    // ── facets ─────────────────────────────────────────────────────────────────────────────

    @Test
    fun `list_facet_types returns a non-empty list of registered facet types`() {
        val response = runTool(toolset) { it.mps_mcp_list_facet_types(/* moduleName = */ null) }
        val data = expectOk(response)
        val types = data.get("facetTypes").asJsonArray
        assertTrue("expected at least one registered facet type: $response", types.size() > 0)
        // Each entry must have a type and presentation, even if applicability is omitted.
        for (e in types) {
            val obj = e.asJsonObject
            assertNotNull(obj.get("type"))
            assertNotNull(obj.get("presentation"))
        }
    }

    @Test
    fun `list_facet_types annotates applicability when a module is given`() {
        val solution = createSolution()
        val response = runTool(toolset) { it.mps_mcp_list_facet_types(solution.moduleName!!) }
        val data = expectOk(response)
        val types = data.get("facetTypes").asJsonArray
        assertTrue(types.size() > 0)
        for (e in types) {
            val obj = e.asJsonObject
            assertTrue("module-scoped listing must include applicability flags: $obj",
                obj.has("applicableToModule") && obj.has("recommendedForModule"))
        }
    }

    @Test
    fun `get_module_facets returns containers for active and persisted facets`() {
        val solution = createSolution()
        val response = runTool(toolset) { it.mps_mcp_get_module_facets(solution.moduleName!!) }
        val data = expectOk(response)
        // For a fresh solution, both lists are typically empty, but they must be present
        // and well-formed arrays. The "discrepancies" array must also be present.
        assertNotNull("activeFacets array must be present", data.get("activeFacets"))
        assertNotNull("persistedFacets array must be present", data.get("persistedFacets"))
        assertNotNull("discrepancies array must be present", data.get("discrepancies"))
        assertTrue(data.get("activeFacets").isJsonArray)
        assertTrue(data.get("persistedFacets").isJsonArray)
        assertTrue(data.get("discrepancies").isJsonArray)
    }

    @Test
    fun `get_module_facets returns NOT_FOUND for unknown module`() {
        val response = runTool(toolset) { it.mps_mcp_get_module_facets("ghost") }
        assertTrue(expectErr(response).contains("not found"))
    }

    @Test
    fun `update_module_facet with unknown facet type is rejected`() {
        val solution = createSolution()
        val response = runTool(toolset) {
            it.mps_mcp_update_module_facet(
                solution.moduleName!!,
                /* facetType = */ "totally-unknown-facet-type",
                /* enabled = */ true,
                /* settingsJson = */ null,
            )
        }
        assertTrue(expectErr(response).contains("Unknown facet type"))
    }

    @Test
    fun `update_module_facet with disabled=false on an absent facet is a no-op`() {
        val solution = createSolution()
        val response = runTool(toolset) {
            it.mps_mcp_update_module_facet(
                solution.moduleName!!,
                "totally-unknown-facet-type",
                /* enabled = */ false,
                null,
            )
        }
        // Disabling an absent facet should succeed without touching the descriptor — the
        // factory lookup is skipped because we never need to create the memento.
        val obj = JsonParser.parseString(response).asJsonObject
        assertTrue("expected ok envelope: $response", obj.get("ok").asBoolean)
    }

    @Test
    fun `create_module rejects directory collision with INVALID_REQUEST`() {
        val name = "test.collision.lang${System.nanoTime()}"
        val directory = freshPathInProject(name)

        val firstResponse = runTool(toolset) {
            it.mps_mcp_create_module("language", name, directory, null, null, false, false, false)
        }
        expectOk(firstResponse)

        val collisionResponse = runTool(toolset) {
            it.mps_mcp_create_module("language", name, directory, null, null, false, false, false)
        }
        
        val obj = JsonParser.parseString(collisionResponse).asJsonObject
        assertFalse("expected error envelope", obj.get("ok").asBoolean)
        val code = obj.get("code")?.asString
        assertEquals("expected INVALID_REQUEST", "INVALID_REQUEST", code)
    }

}
