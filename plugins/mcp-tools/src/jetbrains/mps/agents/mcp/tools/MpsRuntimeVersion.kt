package jetbrains.mps.agents.mcp.tools

import com.intellij.openapi.application.ApplicationInfo
import com.intellij.openapi.application.ApplicationManager

/**
 * Identity of an MPS runtime: written into the skill stamp by `mps_mcp_initialize_project_for_agents`
 * and reported by `mps_mcp_list_open_projects`, so both use one format.
 *
 * `build` is the staleness key. `version` is the marketing string agents show the user.
 */
data class MpsRuntimeVersion(
    val version: String,
    val build: String,
    val eap: Boolean,
) {
    /** Three `key=value` lines, stable order, trailing newline. */
    fun toStampText(): String = buildString {
        append("version=").append(version).append('\n')
        append("build=").append(build).append('\n')
        append("eap=").append(eap).append('\n')
    }

    companion object {
        const val STAMP_FILE_NAME: String = "MPS_MCP_SKILL_VERSION.txt"

        /**
         * The running IDE, or null when there is no application or its info cannot be read.
         * Never throws: a missing identity must not fail install or project listing.
         */
        fun fromApplicationOrNull(): MpsRuntimeVersion? {
            return try {
                if (ApplicationManager.getApplication() == null) return null
                fromApplicationInfo(ApplicationInfo.getInstance())
            } catch (_: Throwable) {
                null
            }
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
