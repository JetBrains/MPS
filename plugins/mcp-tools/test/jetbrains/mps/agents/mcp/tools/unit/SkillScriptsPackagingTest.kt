package jetbrains.mps.agents.mcp.tools.unit

import jetbrains.mps.agents.mcp.tools.*
import jetbrains.mps.agents.mcp.tools.integration.*

import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test
import java.net.URL
import java.nio.file.Files
import java.nio.file.Path
import kotlin.io.path.isDirectory
import kotlin.io.path.name

/**
 * Asserts the skill catalog ships the bundled helper scripts (remedy R5 of the skill-script
 * automation study) — not just the `SKILL.md` and `references` Markdown.
 *
 * The scripts live under `resources/…/skills/<skill>/scripts/`, so they only reach an agent
 * if the module's resource root copies `.py` / `.csv` / `.json` files and their subdirectories
 * into the classpath, and if `mps_mcp_initialize_project_for_agents` copies them on install
 * (it walks the whole skill folder, see `copyDirectoryRecursively`). This test covers the
 * first half; [SkillScriptsDriftTest] runs the installed copies.
 *
 * The skills catalog is a classpath resource, so no MPS project is needed and the heavyweight
 * [McpIntegrationTestBase] setup is skipped — same reasoning as [JetBrainsMPSInitMcpToolsetTest],
 * whose reflective access to the production resource resolution is reused here.
 */
class SkillScriptsPackagingTest {

    @Test
    fun `bundled skill scripts are on the classpath and non-empty`() {
        withSkillsRoot { skillsRoot ->
            for (script in BUNDLED_SCRIPTS) {
                val path = skillsRoot.resolve(script)
                assertTrue("bundled script must ship in the skills catalog: $script", Files.isRegularFile(path))
                assertTrue("bundled script must not be empty: $script", Files.size(path) > 0)
            }
        }
    }

    @Test
    fun `script examples ship alongside the scripts`() {
        withSkillsRoot { skillsRoot ->
            for (example in BUNDLED_EXAMPLES) {
                val path = skillsRoot.resolve(example)
                assertTrue("bundled example must ship in the skills catalog: $example", Files.isRegularFile(path))
                assertTrue("bundled example must not be empty: $example", Files.size(path) > 0)
            }
        }
    }

    @Test
    fun `skills resource tree carries the scripts subdirectories`() {
        withSkillsRoot { skillsRoot ->
            val skills = Files.list(skillsRoot).use { stream ->
                stream.filter { it.isDirectory() }.map { it.name }.sorted().toList()
            }
            assertTrue("skills catalog must not be empty", skills.isNotEmpty())
            for (skill in SKILLS_WITH_SCRIPTS) {
                assertTrue("catalog must contain $skill: $skills", skill in skills)
                val scripts = skillsRoot.resolve(skill).resolve("scripts")
                assertTrue("$skill must ship a scripts/ directory", scripts.isDirectory())
                val pythonFiles = Files.walk(scripts).use { stream ->
                    stream.filter { it.name.endsWith(".py") }.count()
                }
                assertTrue("$skill/scripts must ship at least one .py file", pythonFiles > 0)
            }
        }
    }

    @Test
    fun `every script and example in the catalog is pinned in this test`() {
        withSkillsRoot { skillsRoot ->
            val shipped = sortedSetOf<String>()
            val shippingSkills = sortedSetOf<String>()
            Files.list(skillsRoot).use { skills ->
                for (skill in skills.filter { it.isDirectory() }) {
                    val scripts = skill.resolve("scripts")
                    if (!scripts.isDirectory()) {
                        continue
                    }
                    shippingSkills.add(skill.name)
                    Files.walk(scripts).use { files ->
                        files.filter { Files.isRegularFile(it) }
                            .forEach { shipped.add(skillsRoot.relativize(it).toString().replace('\\', '/')) }
                    }
                }
            }
            // Reverse of the checks above: a file nobody pinned would never be packaged-tested,
            // and SkillScriptsDriftTest would never run its --list-tools.
            assertEquals(
                "add every skill that owns a scripts/ directory to BundledSkillScripts.SKILLS",
                SKILLS_WITH_SCRIPTS.toSortedSet(), shippingSkills
            )
            assertEquals(
                "every file under a scripts/ directory must be pinned in BundledSkillScripts: " +
                        "a .py in SCRIPTS (which also enrolls it in the drift test), anything else in EXAMPLES",
                (BUNDLED_SCRIPTS + BUNDLED_EXAMPLES).toSortedSet(), shipped
            )
        }
    }

    private companion object {
        private const val SKILLS_RESOURCE_PATH = "jetbrains/mps/agents/mcp/skills"
        private val SKILLS_WITH_SCRIPTS = BundledSkillScripts.SKILLS
        private val BUNDLED_SCRIPTS = BundledSkillScripts.SCRIPTS
        private val BUNDLED_EXAMPLES = BundledSkillScripts.EXAMPLES
    }

    /**
     * Runs [block] on the bundled skills root, resolved through the production
     * `withSkillsResourceFs` so a directory classpath entry and a packaged JAR behave the
     * same. Reached by reflection because the method is private — the same pattern
     * [JetBrainsMPSInitMcpToolsetTest] uses.
     */
    @Suppress("UNCHECKED_CAST")
    private fun <T> withSkillsRoot(block: (Path) -> T): T {
        val resourceUrl: URL = checkNotNull(javaClass.classLoader.getResource(SKILLS_RESOURCE_PATH)) {
            "bundled skills catalog is missing from the classpath at '$SKILLS_RESOURCE_PATH'"
        }
        val method = JetBrainsMPSInitMcpToolset::class.java.getDeclaredMethod(
            "withSkillsResourceFs",
            URL::class.java,
            Function1::class.java,
        )
        method.isAccessible = true
        return method.invoke(JetBrainsMPSInitMcpToolset(), resourceUrl, block as Function1<Path, T>) as T
    }
}
