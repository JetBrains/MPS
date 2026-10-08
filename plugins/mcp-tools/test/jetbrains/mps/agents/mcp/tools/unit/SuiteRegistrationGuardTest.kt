package jetbrains.mps.agents.mcp.tools.unit

import jetbrains.mps.agents.mcp.tools.integration.McpToolsIntegrationTestSuite
import org.junit.Assert.assertTrue
import org.junit.Assert.fail
import org.junit.Test
import org.junit.runners.Suite
import java.lang.reflect.Modifier
import java.nio.file.Files
import java.nio.file.Path
import java.nio.file.Paths
import kotlin.streams.asSequence

/**
 * Registration gate for [McpToolsIntegrationTestSuite]: MPS has no pattern-based test discovery,
 * so a test class that no `@Suite.SuiteClasses` names passes in the IDE and never runs in CI, and
 * one named in two sub-suites runs twice.
 *
 * Every concrete class under the mcp-tools test output root that has an `@org.junit.Test` method
 * (declared or inherited) must be reachable from the umbrella exactly once, every listed non-suite
 * class must have one, and the umbrella itself lists only sub-suites. Detection is by `@Test`, not
 * by name, so helpers such as [SkillCatalogCheckout] stay out. Classes are loaded without
 * initialization and never instantiated.
 */
class SuiteRegistrationGuardTest {

    @Test
    fun `every test class is reachable from the umbrella exactly once`() {
        val declared = declaredTestClasses()
        val reached = mutableListOf<Class<*>>()
        expand(McpToolsIntegrationTestSuite::class.java, reached)
        val counts = reached.groupingBy { it }.eachCount()

        val missing = declared.filter { it !in counts }.map { it.name }.sorted()
        val duplicated = counts.filterValues { it > 1 }.map { "${it.key.name} (${it.value}x)" }.sorted()
        assertTrue(
            "test classes not reachable from McpToolsIntegrationTestSuite — register each in the matching " +
                    "Mcp*TestSuite sub-suite: $missing",
            missing.isEmpty()
        )
        assertTrue(
            "test classes reachable more than once — keep each in exactly one sub-suite: $duplicated",
            duplicated.isEmpty()
        )
    }

    @Test
    fun `every class listed in a suite declares a test`() {
        val reached = mutableListOf<Class<*>>()
        expand(McpToolsIntegrationTestSuite::class.java, reached)
        assertTrue("McpToolsIntegrationTestSuite reaches no test class", reached.isNotEmpty())
        val stale = reached.distinct().filterNot(::isTestClass).map { it.name }.sorted()
        assertTrue(
            "classes listed in @Suite.SuiteClasses that are neither a suite nor a concrete class with an " +
                    "@org.junit.Test method: $stale",
            stale.isEmpty()
        )
    }

    @Test
    fun `the umbrella lists only sub-suites`() {
        val listed = McpToolsIntegrationTestSuite::class.java.getAnnotation(Suite.SuiteClasses::class.java).value
        val offenders = listed.map { it.java }
            .filterNot { it.isAnnotationPresent(Suite.SuiteClasses::class.java) }
            .map { it.name }.sorted()
        assertTrue(
            "McpToolsIntegrationTestSuite must list only Mcp*TestSuite sub-suites; move these into the matching " +
                    "sub-suite: $offenders",
            offenders.isEmpty()
        )
    }

    private fun expand(suite: Class<*>, leaves: MutableList<Class<*>>) {
        val listed = suite.getAnnotation(Suite.SuiteClasses::class.java) ?: return
        for (child in listed.value.map { it.java }) {
            if (child.isAnnotationPresent(Suite.SuiteClasses::class.java)) expand(child, leaves) else leaves += child
        }
    }

    private fun declaredTestClasses(): List<Class<*>> {
        val location = SuiteRegistrationGuardTest::class.java.protectionDomain.codeSource.location
        val root = Paths.get(location.toURI())
        if (!Files.isDirectory(root)) {
            fail("SuiteRegistrationGuardTest enumerates test classes in a directory, but they were loaded from $root")
        }
        val packageDir = root.resolve(PACKAGE_PATH)
        assertTrue("no compiled test package at $packageDir", Files.isDirectory(packageDir))
        val loader = SuiteRegistrationGuardTest::class.java.classLoader
        val found = Files.walk(packageDir).use { paths ->
            paths.asSequence()
                .filter { Files.isRegularFile(it) && it.fileName.toString().endsWith(".class") }
                .filterNot { '$' in it.fileName.toString() }
                .map { Class.forName(className(root, it), false, loader) }
                .filter(::isTestClass)
                .toList()
        }
        // The walk must see the Kotlin test classes too, not only the Java suites next to them.
        assertTrue(
            "the walk under $packageDir did not find ${SuiteRegistrationGuardTest::class.java.name}: $found",
            SuiteRegistrationGuardTest::class.java in found
        )
        return found
    }

    private fun className(root: Path, classFile: Path): String =
        root.relativize(classFile).joinToString(".") { it.toString() }.removeSuffix(".class")

    private fun isTestClass(c: Class<*>): Boolean =
        !c.isInterface && !Modifier.isAbstract(c.modifiers) &&
                c.methods.any { it.isAnnotationPresent(Test::class.java) }

    private companion object {
        const val PACKAGE_PATH = "jetbrains/mps/agents/mcp/tools"
    }
}
