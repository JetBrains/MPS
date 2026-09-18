package jetbrains.mps.agents.mcp.tools.config


import java.nio.file.Files
import java.nio.file.Path

internal object AgentConfigRootResolver {
    private val VCS_ROOT_MARKERS = listOf(".git", ".hg", ".svn")

    /**
     * Walks up from [projectBasePath] to the nearest enclosing VCS root and returns it.
     * `.git` may be a directory (normal clone) or a file (worktree / submodule), so existence
     * is checked. If no VCS root is found, [projectBasePath] itself is returned.
     */
    fun deriveAgentConfigRoot(projectBasePath: Path): Path {
        val start = projectBasePath.toAbsolutePath().normalize()
        var cursor: Path? = start
        while (cursor != null) {
            val dir = cursor
            if (VCS_ROOT_MARKERS.any { Files.exists(dir.resolve(it)) }) {
                return dir
            }
            cursor = dir.parent
        }
        return start
    }
}
