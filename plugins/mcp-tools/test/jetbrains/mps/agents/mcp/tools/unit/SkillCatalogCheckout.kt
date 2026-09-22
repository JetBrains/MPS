package jetbrains.mps.agents.mcp.tools.unit

import org.junit.Assume
import java.nio.file.Files
import java.nio.file.Path
import java.util.concurrent.TimeUnit
import kotlin.io.path.isDirectory
import kotlin.io.path.name

/**
 * Locates the three skill catalogs *in the checkout* — as opposed to [SkillScriptsPackagingTest],
 * which reads the packaged catalog off the classpath.
 *
 * The blueprint under `plugins/mcp-tools/resources` is the source of truth; `.agents/skills` and
 * `.claude/skills` are hand-propagated copies (this checkout must not run
 * `mps_mcp_initialize_project_for_agents`, see its CLAUDE.md). Tests that compare those copies, or
 * that re-derive documented content from the sources next to them, need the working tree rather
 * than the classpath.
 *
 * Every accessor makes the test an assumption failure instead of an error when the working tree is
 * not around — a packaged run has no `resources/` directory to compare against.
 */
internal object SkillCatalogCheckout {

    const val BLUEPRINT = "plugins/mcp-tools/resources/jetbrains/mps/agents/mcp/skills"
    const val AGENTS_SKILLS = ".agents/skills"
    const val CLAUDE_SKILLS = ".claude/skills"

    /** Files a working tree grows on its own and that nobody propagates. */
    private val IGNORED = setOf(".DS_Store", "Thumbs.db")

    /** The repository root, found by walking up from the working directory. */
    fun root(): Path {
        var candidate: Path? = Path.of(System.getProperty("user.dir")).toAbsolutePath().normalize()
        while (candidate != null) {
            if (candidate.resolve(BLUEPRINT).isDirectory()) {
                return candidate
            }
            candidate = candidate.parent
        }
        Assume.assumeTrue(
            "no MPS checkout above ${System.getProperty("user.dir")} (looked for $BLUEPRINT); " +
                    "this test compares working-tree files and is skipped in a packaged run",
            false
        )
        error("unreachable")
    }

    fun blueprint(): Path = root().resolve(BLUEPRINT)

    /** Skill catalog directories that must mirror each other, by the name used in failures. */
    fun copies(root: Path): Map<String, Path> = linkedMapOf(
        AGENTS_SKILLS to root.resolve(AGENTS_SKILLS),
        CLAUDE_SKILLS to root.resolve(CLAUDE_SKILLS),
    )

    /** Names of the skills (immediate subdirectories) of a catalog, or an empty set if absent. */
    fun skillNames(catalog: Path): Set<String> {
        if (!catalog.isDirectory()) {
            return emptySet()
        }
        return Files.list(catalog).use { stream ->
            stream.filter { it.isDirectory() }.map { it.name }.sorted().toList().toSet()
        }
    }

    /** Every file of [directory] by its relative path, ignoring what nobody propagates. */
    fun filesOf(directory: Path): Map<String, Path> {
        if (!directory.isDirectory()) {
            return emptyMap()
        }
        return Files.walk(directory).use { stream ->
            stream.filter { Files.isRegularFile(it) && it.name !in IGNORED }
                .toList()
                .associateBy { directory.relativize(it).toString() }
                .toSortedMap()
        }
    }

    /**
     * Runs python3 keeping stdout and stderr apart — callers here need the document on one and the
     * derivation table on the other, so [ProcessBuilder.redirectErrorStream] is not an option.
     * Both pipes are drained concurrently: a script that fills its stderr buffer before writing
     * stdout would otherwise block forever against a reader that is still waiting on stdout.
     */
    fun runPython(vararg args: String): PythonResult {
        val process = ProcessBuilder(listOf("python3") + args).start()
        val err = StringBuilder()
        val drain = Thread({ err.append(process.errorStream.bufferedReader().use { it.readText() }) }, "python3-stderr")
        drain.start()
        val out = process.inputStream.bufferedReader().use { it.readText() }
        check(process.waitFor(60, TimeUnit.SECONDS)) { "python3 ${args.joinToString(" ")} did not finish in time" }
        drain.join(TimeUnit.SECONDS.toMillis(10))
        return PythonResult(process.exitValue(), out, err.toString())
    }

    internal data class PythonResult(val exitCode: Int, val stdout: String, val stderr: String)
}
