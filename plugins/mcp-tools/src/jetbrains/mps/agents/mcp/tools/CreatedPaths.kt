package jetbrains.mps.agents.mcp.tools

import com.intellij.openapi.vfs.LocalFileSystem
import jetbrains.mps.vfs.openapi.FileSystem
import java.io.IOException
import java.nio.file.FileVisitResult
import java.nio.file.Files
import java.nio.file.LinkOption
import java.nio.file.Path
import java.nio.file.SimpleFileVisitor
import java.nio.file.attribute.BasicFileAttributes

/**
 * What a `mps_mcp_create_module` call is about to add under a few target folders, recorded before
 * anything is created so that a failed call can remove exactly that and nothing that was there
 * before (MPS-40228).
 *
 * For each target:
 * - a missing folder records its topmost missing ancestor, which rollback deletes recursively;
 * - an existing folder records the paths under it, and rollback deletes only what was added since,
 *   so a reused folder keeps whatever it had, including a descriptor the call did not write. Entries
 *   whose name starts with '.' (VCS metadata, IDE state) are neither recorded nor deleted, since
 *   the producers never write them and other tools may change them meanwhile. A tree larger than
 *   the cap, or one that cannot be walked, records its first level only; rollback then stays on
 *   that level and reports the target as not fully checked.
 *
 * The snapshot reads the disk with java.nio, never the MPS VFS: `IdeaFile.exists()` and
 * `getChildren()` do not refresh, so a folder an agent has just created with `mkdir -p` can look
 * missing, and a recursive delete of its "topmost missing ancestor" would then take user data.
 */
internal class CreatedPaths private constructor(private val entries: List<Entry>) {

    /**
     * [walkRoot] is the real folder behind [target] (they differ when [target] is a symlink).
     * [before] holds the paths under it, relative to it, down to [depth] levels; it is null when the
     * folder could not be listed at all, and nothing under it is then deleted.
     */
    private class Entry(
        val target: Path,
        val topmostMissing: Path?,
        val walkRoot: Path,
        val before: Set<Path>?,
        val depth: Int,
    )

    /** What [rollback] could not remove, and the targets it could check only partially. */
    class Leftovers(val notRemoved: List<String>, val notFullyChecked: List<String>)

    /**
     * Deletes what was added under the targets since [snapshot]. Deletion goes through the MPS file
     * system (after refreshing the VFS for the path), which clears MPS file listeners of the removed
     * subtree, so it needs the write action of the command that created the files.
     */
    fun rollback(fs: FileSystem): Leftovers {
        val notRemoved = mutableListOf<String>()
        val notFullyChecked = mutableListOf<String>()
        val candidates = entries.flatMap { entry ->
            val before = entry.before
            when {
                entry.topmostMissing != null -> listOf(entry.topmostMissing)
                !Files.isDirectory(entry.walkRoot) -> emptyList()
                before == null -> emptyList<Path>().also { notRemoved.add("${entry.target} (could not be listed)") }
                else -> {
                    if (entry.depth == 1) notFullyChecked.add(entry.target.toString())
                    runCatching { addedSince(entry, before) }
                        .getOrElse { emptyList<Path>().also { notRemoved.add("${entry.target} (could not be listed)") } }
                }
            }
        }.distinct().sortedBy { it.nameCount }
        for (path in candidates) {
            // A candidate may already be gone with an ancestor deleted earlier in this loop.
            if (!Files.exists(path, LinkOption.NOFOLLOW_LINKS)) continue
            runCatching {
                LocalFileSystem.getInstance().refreshAndFindFileByNioFile(path)
                fs.getFile(path.toString().replace('\\', '/')).delete()
            }
            if (Files.exists(path, LinkOption.NOFOLLOW_LINKS)) notRemoved.add(path.toString())
        }
        return Leftovers(notRemoved, notFullyChecked)
    }

    /**
     * The topmost paths under the target that [before] does not know: new entries whose parent
     * predates the call. They are walked under [Entry.walkRoot] but returned under [Entry.target],
     * the spelling MPS created them through: the VFS keeps separate nodes for '/tmp/x' and
     * '/private/tmp/x', and deleting through the other one would leave MPS's view stale.
     */
    private fun addedSince(entry: Entry, before: Set<Path>): List<Path> =
        record(entry.walkRoot, entry.depth, Int.MAX_VALUE)
            .filter { it !in before && (it.parent == null || it.parent in before) }
            .map { entry.target.resolve(it) }

    companion object {
        /** Past this many entries an existing target records its first level only. */
        private const val MAX_RECORDED_ENTRIES = 10_000

        fun snapshot(targets: List<Path>, maxRecordedEntries: Int = MAX_RECORDED_ENTRIES): CreatedPaths =
            CreatedPaths(targets.map { raw ->
                val target = raw.toAbsolutePath().normalize()
                if (Files.exists(target, LinkOption.NOFOLLOW_LINKS)) {
                    val walkRoot = runCatching { target.toRealPath() }.getOrDefault(target)
                    if (!Files.isDirectory(walkRoot)) return@map Entry(target, null, walkRoot, emptySet(), 1)
                    val full = runCatching { record(walkRoot, Int.MAX_VALUE, maxRecordedEntries + 1) }.getOrNull()
                    if (full != null && full.size <= maxRecordedEntries) {
                        Entry(target, null, walkRoot, full, Int.MAX_VALUE)
                    } else {
                        // Uncapped: an unrecorded first-level entry would count as added and be deleted.
                        Entry(target, null, walkRoot, runCatching { record(walkRoot, 1, Int.MAX_VALUE) }.getOrNull(), 1)
                    }
                } else {
                    var topmost = target
                    while (true) {
                        val parent = topmost.parent ?: break
                        if (Files.exists(parent, LinkOption.NOFOLLOW_LINKS)) break
                        topmost = parent
                    }
                    Entry(target, topmost, target, emptySet(), 1)
                }
            })

        /**
         * Paths under [dir], relative to it, down to [depth] levels and at most [limit] of them,
         * skipping entries named '.*' together with their subtrees. Symlinks inside are not
         * followed. Throws when a folder cannot be read.
         */
        private fun record(dir: Path, depth: Int, limit: Int): Set<Path> {
            val result = LinkedHashSet<Path>()
            Files.walkFileTree(dir, emptySet(), depth, object : SimpleFileVisitor<Path>() {
                private fun add(path: Path): FileVisitResult {
                    result.add(dir.relativize(path))
                    return if (result.size >= limit) FileVisitResult.TERMINATE else FileVisitResult.CONTINUE
                }

                override fun preVisitDirectory(path: Path, attrs: BasicFileAttributes): FileVisitResult = when {
                    path == dir -> FileVisitResult.CONTINUE
                    path.fileName.toString().startsWith(".") -> FileVisitResult.SKIP_SUBTREE
                    else -> add(path)
                }

                override fun visitFile(path: Path, attrs: BasicFileAttributes): FileVisitResult =
                    if (path.fileName.toString().startsWith(".")) FileVisitResult.CONTINUE else add(path)

                override fun visitFileFailed(path: Path, exc: IOException): FileVisitResult = throw exc
            })
            return result
        }
    }
}
