package jetbrains.mps.agents.mcp.tools

import com.google.gson.JsonArray
import com.intellij.mcpserver.annotations.McpDescription
import com.intellij.mcpserver.annotations.McpTool
import com.intellij.mcpserver.projectOrNull
import kotlinx.coroutines.currentCoroutineContext
import java.net.URI
import java.nio.file.FileSystem
import java.nio.file.FileSystemNotFoundException
import java.nio.file.FileSystems
import java.nio.file.Files
import java.nio.file.Path
import java.nio.file.Paths
import java.nio.file.StandardCopyOption
import kotlin.io.path.isDirectory
import kotlin.io.path.name

// MCP tool methods use snake_case names because they are part of the public MCP protocol
// surface, and they are invoked via reflection by the MCP server framework, so static
// analysis flags them as "never used".
@Suppress("FunctionName", "unused")
class JetBrainsMPSInitMcpToolset : AbstractOps() {

    @McpTool
    @McpDescription("""
        Initializes AI-agent support for an MPS checkout. Installs the bundled MPS skill catalog into `<targetDirectory>/.agents/skills/` and `<targetDirectory>/.claude/skills/` (each skill a subfolder containing `SKILL.md` and its references), and creates `<targetDirectory>/AGENTS.md` and `<targetDirectory>/CLAUDE.md` from the bundled template — but ONLY if those guide files do not already exist (existing files are never overwritten). Returns a JSON `data` object: `targetDirectory` (the resolved install location), `installedSkillCount`, `skillsDirectories`, `guideFilesWritten` (created fresh — nothing more to do for these), `guideFilesAlreadyPresent` (left untouched — merge `agentsFileText` into each yourself, preserving project-specific sections), and `agentsFileText` (the recommended guide content). Aborts upfront, installing nothing, with an error listing colliding names if any incoming skill name already exists under either skills directory; unrelated subfolders are left untouched. Safe to re-run once collisions are resolved.

        WHERE TO INSTALL (`targetDirectory`): the directory that should hold the agent configuration — normally your REPOSITORY / WORKSPACE ROOT (the directory that contains the VCS folder such as `.git`), NOT necessarily the MPS project directory. Many repositories keep the MPS project in a subdirectory (e.g. `<repo>/tools/BigProject`, mbeddr, MPS-extensions, or one of several MPS projects in one checkout); the agent configuration still belongs at the repo root so one `.agents/`/`.claude/` setup covers the whole checkout. LEAVE `targetDirectory` EMPTY to let the tool derive it: it takes the open MPS project's base directory and walks up to the nearest enclosing VCS root (`.git`/`.hg`/`.svn`), falling back to the project directory if there is none. Pass it explicitly only when the derivation would be wrong — no VCS root, multiple projects open, or you want a specific location. Note that `projectPath` (the framework's project selector) and `targetDirectory` (this tool's install location) are different things. The platform routes EVERY `mps_mcp_*` call — including this one — by resolving `projectPath` to an open project, so pass the open MPS project's base directory (or your current working directory when it is inside that project) as `projectPath`. Do NOT pass an ancestor such as the repository root as `projectPath`: the platform matches it only at/inside an open project, so an ancestor is rejected (`"Unable to determine the target project…"`). Independently, leave `targetDirectory` empty so it is derived (project base → nearest VCS root) — that derived install location MAY be the repo root / an ancestor of the project, which is correct for the subdirectory-project case. If you do not yet know the project path, call `mps_mcp_list_open_projects`; if that call is itself rejected, the rejection message lists the open projects (e.g. `Currently open projects: {...}`) — use one of those paths as `projectPath`.

        DISCOVERY: if this MPS project has no `mps-*` skill folders under `.agents/skills/` or `.claude/skills/`, it has not yet been initialized for agents — before doing substantial MPS work, proactively tell the user that and ask whether to run this tool (do not run it without approval).

        REFRESHING STALE SKILLS AND AGENT GUIDES (on user request): when the user asks to update/refresh out-of-date MPS skills or the `AGENTS.md`/`CLAUDE.md` guidance, perform a clean reinstall: (1) delete every bundled MPS skill folder — the `mps-*` skills this tool installs, i.e. exactly the folder names it reports as collisions when run against an already-initialized project — from BOTH `.agents/skills/` and `.claude/skills/`, so dropped/renamed skills do not linger; leave any non-`mps-*` skills (e.g. project-local `<dsl-name>-dsl` skills) in place; (2) call this tool again to install the current catalog (with the collisions removed it now succeeds); (3) the existing `AGENTS.md`/`CLAUDE.md` are reported in `guideFilesAlreadyPresent` and left untouched — carefully update them from the returned `agentsFileText`, refreshing the MPS guidance sections to match the template while preserving project-specific content (e.g. the "Project-Specific Notes" section and any hand-authored details), rather than blindly overwriting the whole file.
    """
    )
    suspend fun mps_mcp_initialize_project_for_agents(
        @McpDescription(
            "Optional. Absolute path to the directory that should hold the agent configuration — normally the " +
                    "repository / workspace root (the directory containing `.git`), which may be an ANCESTOR of the MPS " +
                    "project directory when the project lives in a subdirectory. The directory must exist; the skills " +
                    "directories and guide files are created inside it. Leave empty to derive it from the open MPS " +
                    "project's enclosing VCS root. This is NOT the framework `projectPath` argument: `projectPath` " +
                    "selects which open project the call targets (pass the project base dir, never an ancestor), " +
                    "whereas `targetDirectory` is where files are written and may be an ancestor of the project."
        )
        targetDirectory: String? = null
    ): String = McpCallOutcomes.record(initializeProjectForAgents(targetDirectory))

    /**
     * Actual implementation of [mps_mcp_initialize_project_for_agents], split out so its several
     * early-return paths can all be recorded through one [McpCallOutcomes.record] call at the
     * public tool boundary instead of wrapping each `return`/`return@withSkillsResourceFs`.
     */
    private suspend fun initializeProjectForAgents(targetDirectory: String?): String {
        val targetDir: Path = when (val resolution = resolveTargetDirectory(targetDirectory)) {
            is TargetResolution.Ok -> resolution.dir
            is TargetResolution.Err -> return resolution.json
        }

        val skillsResourceRoot = javaClass.classLoader.getResource(SKILLS_RESOURCE_PATH)
            ?: return errJson(
                "Bundled skills resource not found on classpath at '$SKILLS_RESOURCE_PATH'. " +
                        "The mcp-tools plugin appears to be packaged without its skills."
            )
        val agentsMdText = javaClass.classLoader
            .getResourceAsStream(AGENTS_TEMPLATE_RESOURCE_PATH)
            ?.bufferedReader()?.use { it.readText() }
            ?: return errJson(
                "Bundled AGENTS.md template not found on classpath at '$AGENTS_TEMPLATE_RESOURCE_PATH'."
            )

        return try {
            withSkillsResourceFs(skillsResourceRoot) { skillsRoot ->
                val skillFolders: List<Path> = Files.list(skillsRoot).use { stream ->
                    stream.filter { it.isDirectory() }.sorted().toList()
                }
                if (skillFolders.isEmpty()) {
                    return@withSkillsResourceFs errJson(
                        "Bundled skills catalog at '$SKILLS_RESOURCE_PATH' is empty; nothing to install."
                    )
                }

                val targetSkillsDirs = listOf(
                    targetDir.resolve(".agents").resolve("skills"),
                    targetDir.resolve(".claude").resolve("skills"),
                )
                val incomingNames = skillFolders.map { it.name }.toSet()
                val collisionsByDir: List<String> = targetSkillsDirs.mapNotNull { targetSkillsDir ->
                    if (!Files.exists(targetSkillsDir)) {
                        return@mapNotNull null
                    }
                    val collisions: List<String> = Files.list(targetSkillsDir).use { stream ->
                        stream.filter { it.name in incomingNames }.map { it.name }.sorted().toList()
                    }
                    if (collisions.isEmpty()) null else "'$targetSkillsDir': ${collisions.joinToString(", ")}"
                }
                if (collisionsByDir.isNotEmpty()) {
                    return@withSkillsResourceFs errJson(
                        "Cannot install MPS skills: the following skill folder name(s) already exist " +
                                "and would be overwritten: " + collisionsByDir.joinToString("; ") +
                                ". Remove or rename the existing folder(s) and re-run this tool."
                    )
                }
                for (targetSkillsDir in targetSkillsDirs) {
                    Files.createDirectories(targetSkillsDir)
                }

                // No rollback: if copying skill #N fails after #1..N-1 already landed on disk, the
                // checkout is left half-installed. The collision check above prevents the common
                // case of clobbering user content, so the remaining failure modes are I/O errors
                // (full disk, permission denied) where the user fixes the underlying problem and
                // re-runs after deleting any partially-installed target skills directories, which
                // may include both `.agents/skills/` and `.claude/skills/`.
                // We deliberately don't try to undo successful copies because deletion can itself
                // fail and would mask the original error.
                for (targetSkillsDir in targetSkillsDirs) {
                    for (skillFolder in skillFolders) {
                        val target = targetSkillsDir.resolve(skillFolder.name)
                        copyDirectoryRecursively(skillFolder, target)
                    }
                }

                // Create the agent guide files from the template, but never clobber an existing one:
                // a project may have hand-authored AGENTS.md/CLAUDE.md whose project-specific content
                // must survive. Files that already exist are reported back so the caller can merge.
                val guideFilesWritten = mutableListOf<Path>()
                val guideFilesAlreadyPresent = mutableListOf<Path>()
                for (guideFileName in GUIDE_FILE_NAMES) {
                    val guideFile = targetDir.resolve(guideFileName)
                    if (Files.exists(guideFile)) {
                        guideFilesAlreadyPresent.add(guideFile)
                    } else {
                        Files.writeString(guideFile, agentsMdText)
                        guideFilesWritten.add(guideFile)
                    }
                }

                val data = jsonObject {
                    addProperty("targetDirectory", targetDir.toString())
                    addProperty("installedSkillCount", skillFolders.size)
                    add("skillsDirectories", stringJsonArray(targetSkillsDirs))
                    add("guideFilesWritten", stringJsonArray(guideFilesWritten))
                    add("guideFilesAlreadyPresent", stringJsonArray(guideFilesAlreadyPresent))
                    addProperty("agentsFileText", agentsMdText)
                }
                okJson(data)
            }
        } catch (e: Exception) {
            rethrowIfCancellation(e)
            errJson("Failed to initialize agent support: ${e.message}")
        }
    }

    /** Result of resolving the directory that should receive the agent configuration. */
    private sealed class TargetResolution {
        data class Ok(val dir: Path) : TargetResolution()
        data class Err(val json: String) : TargetResolution()
    }

    /**
     * Resolves the install directory. When [targetDirectory] is given it is validated and used
     * verbatim. When it is null/blank the directory is derived from the currently open MPS project:
     * the project's base directory is taken and the nearest enclosing VCS root is used (see
     * [deriveAgentConfigRoot]), so the agent configuration lands at the repository root even when
     * the MPS project itself lives in a subdirectory.
     */
    private suspend fun resolveTargetDirectory(targetDirectory: String?): TargetResolution {
        if (!targetDirectory.isNullOrBlank()) {
            val dir = try {
                Paths.get(targetDirectory)
            } catch (e: Exception) {
                rethrowIfCancellation(e)
                return TargetResolution.Err(errJson("Invalid target directory '$targetDirectory': ${e.message}"))
            }
            // Require an absolute path: a relative one would be resolved against the MPS process's
            // working directory (not the agent's), silently installing in the wrong place.
            if (!dir.isAbsolute) {
                return TargetResolution.Err(
                    errJson(
                        "Target directory must be an absolute path, got '$targetDirectory'. Pass the absolute path " +
                                "to your repository / workspace root, or omit it to derive it from the open MPS project."
                    )
                )
            }
            if (!Files.isDirectory(dir)) {
                return TargetResolution.Err(errJson("Target directory does not exist or is not a directory: $targetDirectory"))
            }
            return TargetResolution.Ok(dir.toAbsolutePath().normalize())
        }

        val projectBase = currentProjectBasePathOrNull()
            ?: return TargetResolution.Err(
                errJson(
                    "No 'targetDirectory' was provided and no single open MPS project is available to derive one from. " +
                            "Pass 'targetDirectory' explicitly — normally your repository / workspace root (the directory " +
                            "that contains a VCS folder such as .git). It may be an ancestor of the MPS project directory " +
                            "when the project lives in a subdirectory (e.g. tools/BigProject). Do not pass an *ancestor* path as 'projectPath'."
                )
            )
        if (!Files.isDirectory(projectBase)) {
            return TargetResolution.Err(
                errJson(
                    "Could not derive a target directory: the open project's base path '$projectBase' is not an " +
                            "existing directory. Pass 'targetDirectory' explicitly (usually your repository / workspace root)."
                )
            )
        }
        return TargetResolution.Ok(deriveAgentConfigRoot(projectBase))
    }

    /**
     * Base directory of the currently open MPS project, or null when it cannot be determined
     * unambiguously. Returns null (rather than throwing) when there is no MCP call context (e.g.
     * a plain unit test), no open project, or multiple open projects with no single relevant one —
     * the caller turns null into a "pass targetDirectory explicitly" message.
     */
    private suspend fun currentProjectBasePathOrNull(): Path? {
        val project = try {
            currentCoroutineContext().projectOrNull
        } catch (e: Exception) {
            // projectOrNull throws McpExpectedError when several projects are open and none is
            // singled out, and IllegalStateException when invoked outside an MCP call. Either way
            // we cannot safely guess a directory, so fall back to requiring an explicit one.
            rethrowIfCancellation(e)
            null
        } ?: return null
        val basePath = project.basePath ?: return null
        return try {
            Paths.get(basePath).toAbsolutePath().normalize()
        } catch (e: Exception) {
            rethrowIfCancellation(e)
            null
        }
    }

    /**
     * Thin wrapper around [AgentConfigRootResolver.deriveAgentConfigRoot] (the VCS-root walk-up).
     * Kept as an instance method so the logic stays unit-testable via reflection — see
     * `JetBrainsMPSSkillsMcpToolsetTest.deriveAgentConfigRootForTest`.
     */
    private fun deriveAgentConfigRoot(projectBasePath: Path): Path {
        return AgentConfigRootResolver.deriveAgentConfigRoot(projectBasePath)
    }

    private fun stringJsonArray(paths: Iterable<Path>): JsonArray =
        JsonArray().apply { for (p in paths) add(p.toString()) }

    /**
     * Resolves the bundled-skills resource directory to a [Path] regardless of whether the
     * classpath entry is a directory on disk (development run) or an entry inside a JAR
     * (packaged plugin), and invokes [block] with that path. Any temporarily opened JAR
     * FileSystem is closed afterwards.
     */
    private fun <T> withSkillsResourceFs(resourceRoot: java.net.URL, block: (Path) -> T): T {
        return when (resourceRoot.protocol) {
            "file" -> block(Paths.get(resourceRoot.toURI()))
            "jar" -> {
                val raw = resourceRoot.toString()
                val sep = raw.indexOf("!/")
                require(sep > 0) { "Unexpected jar URL form: $raw" }
                val jarUri = URI(raw.substring(0, sep))
                val internalPath = raw.substring(sep + 1)
                var opened: FileSystem? = null
                val fs = try {
                    FileSystems.getFileSystem(jarUri)
                } catch (e: FileSystemNotFoundException) {
                    FileSystems.newFileSystem(jarUri, emptyMap<String, Any>()).also { opened = it }
                }
                try {
                    block(fs.getPath(internalPath))
                } finally {
                    opened?.close()
                }
            }
            else -> error("Unsupported classpath URL protocol: ${resourceRoot.protocol}")
        }
    }

    private fun copyDirectoryRecursively(source: Path, target: Path) {
        Files.walk(source).use { stream ->
            for (path in stream) {
                val rel = source.relativize(path).toString()
                val dest = target.resolve(rel)
                if (Files.isDirectory(path)) {
                    Files.createDirectories(dest)
                } else {
                    Files.createDirectories(dest.parent)
                    Files.copy(path, dest, StandardCopyOption.REPLACE_EXISTING)
                }
            }
        }
    }

    companion object {
        private const val SKILLS_RESOURCE_PATH = "jetbrains/mps/agents/mcp/skills"
        private const val AGENTS_TEMPLATE_RESOURCE_PATH = "jetbrains/mps/agents/mcp/templates/AGENTS_template.md"

        // Agent guide files written (only when absent) from the bundled template. Both names are
        // produced so the same setup serves AGENTS.md-aware hosts and Claude Code (CLAUDE.md).
        private val GUIDE_FILE_NAMES = listOf("AGENTS.md", "CLAUDE.md")
    }
}
