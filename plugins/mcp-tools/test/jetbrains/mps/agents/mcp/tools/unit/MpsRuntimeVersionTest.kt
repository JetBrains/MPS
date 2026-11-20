package jetbrains.mps.agents.mcp.tools.unit

import com.intellij.util.text.VersionComparatorUtil
import jetbrains.mps.agents.mcp.tools.MpsRuntimeVersion
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * Formatting and stamp text. No MPS project and no [com.intellij.openapi.application.Application]:
 * the live `ApplicationInfo` path is covered by the integration tests.
 */
class MpsRuntimeVersionTest {

    @Test
    fun `unset micro and patch are omitted and never become a double dot or a zero`() {
        assertEquals("2026.1", MpsRuntimeVersion.formatVersion("2026", "1", null, null))
        assertEquals("2026.1", MpsRuntimeVersion.formatVersion("2026", "1", "", "  "))
        assertEquals("2026.1", MpsRuntimeVersion.formatVersion("2026", "1.3", null, null))
        assertEquals("2026.1.2", MpsRuntimeVersion.formatVersion("2026", "1", "2", null))
        assertEquals("2026.1.2.4", MpsRuntimeVersion.formatVersion("2026", "1", "2", "4"))
        // A patch with no micro must not emit `2026.1..4`.
        assertEquals("2026.1", MpsRuntimeVersion.formatVersion("2026", "1", null, "4"))
        // Platform stores an unset attribute as null, not "0". A real 0 is kept.
        assertEquals("2026.1.0", MpsRuntimeVersion.formatVersion("2026", "1", "0", null))
        assertNull(MpsRuntimeVersion.formatVersion(null, "1", null, null))
        assertNull(MpsRuntimeVersion.formatVersion("2026", null, null, null))
        assertNull(MpsRuntimeVersion.formatVersion("2026", ".", null, null))
    }

    @Test
    fun `stamp text without a plugin version is three stable lines with a trailing newline`() {
        val identity = MpsRuntimeVersion(version = "2026.1", build = "261.25134", eap = true)
        assertEquals("version=2026.1\nbuild=261.25134\neap=true\n", identity.toStampText())
    }

    @Test
    fun `stamp text ends with the plugin version when it is known`() {
        val identity = MpsRuntimeVersion(version = "2026.1.2", build = "261.27258.1100", eap = false, pluginVersion = "2026.1.3-pre.1176")
        assertEquals(
            "version=2026.1.2\nbuild=261.27258.1100\neap=false\npluginVersion=2026.1.3-pre.1176\n",
            identity.toStampText(),
        )
    }

    /**
     * Why agents compare `pluginVersion` for equality only. The IDE orders a separately distributed
     * plugin (`<next MPS version>-pre.<counter>`) above the last release and below the release that
     * bundles the same code; plain text comparison orders it after that release. If either half of
     * this changes, the versioning scheme in `mpsMcpToolsDistribution` and the staleness rules must
     * be revisited together.
     */
    @Test
    fun `the IDE orders a pre-release plugin between the releases around it while text comparison does not`() {
        assertTrue(VersionComparatorUtil.compare("2026.1.2", "2026.1.3-pre.1176") < 0)
        assertTrue(VersionComparatorUtil.compare("2026.1.3-pre.1176", "2026.1.3-pre.1180") < 0)
        assertTrue(VersionComparatorUtil.compare("2026.1.3-pre.1180", "2026.1.3") < 0)
        assertTrue(VersionComparatorUtil.compare("2026.1 EAP", "2026.1-pre.1176") < 0)
        assertTrue(VersionComparatorUtil.compare("2026.1-pre.1176", "2026.1") < 0)
        assertTrue("2026.1.3-pre.1180" > "2026.1.3")
    }
}
