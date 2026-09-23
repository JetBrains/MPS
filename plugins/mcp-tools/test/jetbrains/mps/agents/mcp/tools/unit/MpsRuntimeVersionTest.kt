package jetbrains.mps.agents.mcp.tools.unit

import jetbrains.mps.agents.mcp.tools.MpsRuntimeVersion
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
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
    fun `stamp text is three stable lines with a trailing newline`() {
        val identity = MpsRuntimeVersion(version = "2026.1", build = "261.25134", eap = true)
        assertEquals("version=2026.1\nbuild=261.25134\neap=true\n", identity.toStampText())
    }
}
