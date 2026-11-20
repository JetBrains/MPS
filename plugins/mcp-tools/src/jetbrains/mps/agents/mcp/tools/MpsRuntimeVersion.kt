package jetbrains.mps.agents.mcp.tools

import com.intellij.ide.plugins.PluginManagerCore
import com.intellij.openapi.application.ApplicationInfo
import com.intellij.openapi.application.ApplicationManager
import com.intellij.openapi.extensions.PluginId

/**
 * Identity of an MPS runtime: written into the skill stamp by `mps_mcp_initialize_project_for_agents`
 * and reported by `mps_mcp_list_open_projects`, so both use one format.
 *
 * `build` and `pluginVersion` together are the staleness key; agents compare each for equality and
 * never order them. `build` changes with every MPS build. `pluginVersion` is the version of the loaded
 * MCP tools plugin, which ships the skill catalog: the bundled copy carries the MPS version
 * (`2026.1.3`), a separately installed update carries `<next MPS version>-pre.<build counter>`
 * (`2026.1.3-pre.1176`), so a plugin update with an unchanged MPS build still marks the skills stale.
 * A text comparison would order those two wrongly, which is why only equality is asked for.
 * `version` is the marketing string agents show the user.
 */
data class MpsRuntimeVersion(
    val version: String,
    val build: String,
    val eap: Boolean,
    /** Version of the loaded MCP tools plugin; null when it cannot be read. */
    val pluginVersion: String? = null,
) {
    /** `key=value` lines in a stable order with a trailing newline; `pluginVersion` only when known. */
    fun toStampText(): String = buildString {
        append("version=").append(version).append('\n')
        append("build=").append(build).append('\n')
        append("eap=").append(eap).append('\n')
        if (pluginVersion != null) append("pluginVersion=").append(pluginVersion).append('\n')
    }

    companion object {
        const val STAMP_FILE_NAME: String = "MPS_MCP_SKILL_VERSION.txt"

        /** The id in this plugin's `META-INF/plugin.xml`. */
        const val PLUGIN_ID: String = "jetbrains.mps.agents.mcp.tools"

        /**
         * The running IDE, or null when there is no application or its info cannot be read.
         * Never throws: a missing identity must not fail install or project listing.
         */
        fun fromApplicationOrNull(): MpsRuntimeVersion? {
            return try {
                if (ApplicationManager.getApplication() == null) return null
                fromApplicationInfo(ApplicationInfo.getInstance())?.copy(pluginVersion = loadedPluginVersionOrNull())
            } catch (_: Throwable) {
                null
            }
        }

        /** The version of the loaded MCP tools plugin, or null when it is not loaded or has no version. */
        fun loadedPluginVersionOrNull(): String? = try {
            PluginManagerCore.getPlugin(PluginId.getId(PLUGIN_ID))?.version?.trim()?.takeIf { it.isNotEmpty() }
        } catch (_: Throwable) {
            null
        }

        fun fromApplicationInfo(info: ApplicationInfo): MpsRuntimeVersion? {
            val version = formatVersion(
                info.majorVersion,
                info.minorVersion,
                info.microVersion,
                info.patchVersion,
            ) ?: return null
            val build = try {
                info.build.asStringWithoutProductCode()
            } catch (_: Throwable) {
                return null
            }
            if (build.isBlank()) return null
            return MpsRuntimeVersion(version, build, info.isEAP)
        }

        /**
         * `major.minorMainPart[.micro[.patch]]`.
         *
         * An unset micro/patch attribute is null here, not `"0"` (`ApplicationInfoImpl` stores the
         * raw attribute). Blank parts are omitted, and a patch with no micro is omitted too, so an
         * unset micro never becomes `2026.1..` or `2026.1.0`. A real `"0"` is kept. No EAP codename
         * and no version suffix — those are what `getFullVersion()` may append and this stamp must not.
         */
        fun formatVersion(major: String?, minor: String?, micro: String?, patch: String?): String? {
            val majorPart = major?.trim()?.takeIf { it.isNotEmpty() } ?: return null
            val minorMain = minor?.substringBefore('.')?.trim()?.takeIf { it.isNotEmpty() } ?: return null
            val microPart = micro?.trim()?.takeIf { it.isNotEmpty() }
            val patchPart = patch?.trim()?.takeIf { it.isNotEmpty() }
            return buildString {
                append(majorPart).append('.').append(minorMain)
                if (microPart != null) {
                    append('.').append(microPart)
                    if (patchPart != null) append('.').append(patchPart)
                }
            }
        }
    }
}
