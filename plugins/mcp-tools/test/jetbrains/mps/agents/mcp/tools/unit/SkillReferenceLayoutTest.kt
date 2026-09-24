package jetbrains.mps.agents.mcp.tools.unit

import jetbrains.mps.agents.mcp.tools.Python3

import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test
import java.nio.file.Files
import java.nio.file.Path
import kotlin.io.path.isDirectory
import kotlin.io.path.isRegularFile

/**
 * Layout gate for every reference Markdown file under `references/` in the blueprint skill catalog (D44).
 *
 * A lookup-catalog reference that grows past a comfortable single `Read` used to carry its own
 * navigation instructions — `grep -n '^## '` for the heading, then an offset/limit `Read` of just
 * that range, with a warning that line numbers drift. D44 replaces that pattern: the file is split
 * into one section per `references/<stem>/<slug>.md`, and the original path becomes a small index.
 * A regression here means either a reference grew past the budget without being split, or a split
 * file (or an unsplit one) still tells an agent to rebuild a heading index by hand, or a reference
 * file is not reachable from its own `SKILL.md`, or the catalog validator (which nothing else runs
 * as a test) starts failing.
 *
 * Modelled on [SkillCatalogReplicationTest]: same checkout-only scope via [SkillCatalogCheckout],
 * same backtick JUnit4 test names.
 */
class SkillReferenceLayoutTest {

    @Test
    fun `every reference file fits the byte budget`() {
        val blueprint = SkillCatalogCheckout.blueprint()
        val offenders = mutableListOf<String>()

        for (skill in skillDirs(blueprint)) {
            val references = skill.resolve("references")
            if (!references.isDirectory()) {
                continue
            }
            Files.walk(references).use { stream ->
                stream.filter { it.isRegularFile() && it.toString().endsWith(".md") }
                    .sorted()
                    .forEach { file ->
                        val relative = blueprint.relativize(file).toString().replace('\\', '/')
                        val size = Files.size(file)
                        val cap = OVER_BUDGET[relative]
                        when {
                            cap != null && size > cap ->
                                offenders.add("$relative: $size B, over its allow-listed cap of $cap B")
                            cap == null && size > BUDGET ->
                                offenders.add("$relative: $size B, over the $BUDGET B budget")
                        }
                    }
            }
        }

        for ((relative, cap) in OVER_BUDGET) {
            val file = blueprint.resolve(relative)
            if (!file.isRegularFile()) {
                offenders.add("$relative: allow-listed at $cap B but the file no longer exists (stale entry)")
                continue
            }
            val size = Files.size(file)
            if (size <= BUDGET) {
                offenders.add(
                    "$relative: allow-listed at $cap B but now $size B, at or under the $BUDGET B budget " +
                            "(stale entry — remove it from OVER_BUDGET)"
                )
            }
        }

        assertTrue(
            "reference file(s) over the $BUDGET B budget — split it with " +
                    "plugins/mcp-tools/scripts/split_skill_reference.py (along its `##` headings into " +
                    "references/<stem>/, see D44), or add it to OVER_BUDGET here with a reason:\n" +
                    offenders.joinToString("\n"),
            offenders.isEmpty()
        )
    }

    @Test
    fun `no skill tells agents to rebuild a heading index`() {
        val blueprint = SkillCatalogCheckout.blueprint()
        val offenders = mutableListOf<String>()

        for (skill in skillDirs(blueprint)) {
            for (file in skillDocFiles(skill)) {
                val lines = Files.readAllLines(file)
                for ((zeroBasedIndex, line) in lines.withIndex()) {
                    if (mentionsHeadingIndexRebuild(line)) {
                        offenders.add("${blueprint.relativize(file)}:${zeroBasedIndex + 1}")
                    }
                }
            }
        }

        assertTrue(
            "these lines still tell an agent to rebuild a heading index by hand (grep for `##`, an " +
                    "offset/limit Read, or a 'line numbers drift' warning) — that instruction belongs only " +
                    "to a file meant to be Read whole; a split section file does not need it:\n" +
                    offenders.joinToString("\n"),
            offenders.isEmpty()
        )
    }

    @Test
    fun `every reference file is reachable from its skill`() {
        val blueprint = SkillCatalogCheckout.blueprint()
        val orphans = mutableListOf<String>()

        for (skill in skillDirs(blueprint)) {
            val reachable = reachableFrom(skill)
            val references = skill.resolve("references")
            if (!references.isDirectory()) {
                continue
            }
            Files.walk(references).use { stream ->
                stream.filter { it.isRegularFile() && it.toString().endsWith(".md") }
                    .sorted()
                    .forEach { file ->
                        if (file.toRealPath() !in reachable) {
                            orphans.add(blueprint.relativize(file).toString().replace('\\', '/'))
                        }
                    }
            }
        }

        assertTrue(
            "reference file(s) not reachable by BFS from their skill's SKILL.md (backtick " +
                    "`references/....md` paths and markdown `](x.md)` links):\n" + orphans.joinToString("\n"),
            orphans.isEmpty()
        )
    }

    @Test
    fun `the catalog validator passes`() {
        Python3.require()
        val root = SkillCatalogCheckout.root()
        val blueprint = SkillCatalogCheckout.blueprint()
        val result = SkillCatalogCheckout.runPython(
            root.resolve("plugins/mcp-tools/scripts/validate_skill_catalog.py").toString(),
            blueprint.toString(),
        )
        assertEquals(
            "validate_skill_catalog.py must pass on the blueprint catalog. stdout:\n${result.stdout}\nstderr:\n${result.stderr}",
            0, result.exitCode
        )
    }

    @Test
    fun `the reference splitter self-test passes`() {
        Python3.require()
        val root = SkillCatalogCheckout.root()
        val result = SkillCatalogCheckout.runPython(
            root.resolve("plugins/mcp-tools/scripts/split_skill_reference.py").toString(),
            "--self-test",
        )
        assertEquals(
            "split_skill_reference.py --self-test must pass. stdout:\n${result.stdout}\nstderr:\n${result.stderr}",
            0, result.exitCode
        )
    }

    // --- helpers ---------------------------------------------------------

    private fun skillDirs(blueprint: Path): List<Path> =
        Files.list(blueprint).use { stream ->
            stream.filter { it.isDirectory() }.sorted().toList()
        }

    /** `SKILL.md` plus every reference Markdown file under `references/` of one skill, in a stable order. */
    private fun skillDocFiles(skill: Path): List<Path> {
        val files = mutableListOf<Path>()
        val skillMd = skill.resolve("SKILL.md")
        if (skillMd.isRegularFile()) {
            files.add(skillMd)
        }
        val references = skill.resolve("references")
        if (references.isDirectory()) {
            Files.walk(references).use { stream ->
                files.addAll(stream.filter { it.isRegularFile() && it.toString().endsWith(".md") }.sorted().toList())
            }
        }
        return files
    }

    private fun mentionsHeadingIndexRebuild(line: String): Boolean =
        line.contains("grep -n '^#") ||
                line.contains("offset/limit") ||
                LINE_NUMBERS_DRIFT.containsMatchIn(line) ||
                line.contains("## Contents / when to read what")

    /**
     * BFS from `skill/SKILL.md` over backtick `` `references/....md` `` paths (resolved against
     * [skill]) and markdown `](x.md)` links (resolved against the linking file's own directory,
     * `#`/`?` suffix stripped, `http(s):` ignored).
     */
    private fun reachableFrom(skill: Path): Set<Path> {
        val seen = mutableSetOf<Path>()
        val todo = ArrayDeque<Path>()
        todo.add(skill.resolve("SKILL.md"))
        while (todo.isNotEmpty()) {
            val file = todo.removeFirst()
            if (!file.isRegularFile()) {
                continue
            }
            val real = file.toRealPath()
            if (!seen.add(real)) {
                continue
            }
            val text = Files.readString(file)
            for (match in BACKTICK_REFERENCE.findAll(text)) {
                todo.add(skill.resolve(match.groupValues[1]))
            }
            for (match in MARKDOWN_LINK.findAll(text)) {
                val target = match.groupValues[1]
                if (HTTP_LINK.containsMatchIn(target)) {
                    continue
                }
                todo.add(file.parent.resolve(target).normalize())
            }
        }
        return seen
    }

    private companion object {
        private const val BUDGET = 12288L

        // read whole by design: the mps-model-manipulation "Minimum reading set" names this one file per body
        private val OVER_BUDGET = mapOf(
            "mps-model-manipulation/references/dot-expression-basics.md" to 24_576L,
            // the tool inventory, read whole
            "mps-mcp-workflow/references/mcp-tools-index.md" to 17_408L,
            // one atomic JSON blueprint fence; cutting it would break copy-paste
            "mps-aspect-constraints/references/referent-constraints/computed-sequences-blueprint.md" to 13_312L,
        )

        private val LINE_NUMBERS_DRIFT = Regex("line numbers[^.]{0,40}drift")
        private val BACKTICK_REFERENCE = Regex("`(references/[^`\\s]+?\\.md)`")
        private val MARKDOWN_LINK = Regex("]\\(([^)\\s#?]+\\.md)(?:[#?][^)]*)?\\)")
        private val HTTP_LINK = Regex("^https?:")
    }
}
