package jetbrains.mps.agents.mcp.tools.unit

import com.intellij.openapi.util.BuildNumber
import com.intellij.util.text.VersionComparatorUtil
import jetbrains.mps.agents.mcp.tools.MpsRuntimeVersion
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test
import org.w3c.dom.Element
import javax.xml.parsers.DocumentBuilderFactory
import kotlin.io.path.readText

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
        val identity = MpsRuntimeVersion(version = "2026.1.2", build = "261.27258.1100", eap = false, pluginVersion = "261.27258.1176")
        assertEquals(
            "version=2026.1.2\nbuild=261.27258.1100\neap=false\npluginVersion=261.27258.1176\n",
            identity.toStampText(),
        )
    }

    /**
     * Why agents compare `pluginVersion` for equality only. Both the bundled and separately
     * distributed plugin carry the MPS build number without product code (`261.27258.<counter>`),
     * so the IDE orders later builds monotonically across releases and EAPs, whereas plain text
     * comparison orders unpadded numeric counters backwards. If either half of this changes, the
     * versioning scheme in `mpsMcpToolsDistribution` and the staleness rules must be revisited
     * together.
     */
    @Test
    fun `the IDE orders build-number plugin versions monotonically while text comparison does not`() {
        assertTrue(VersionComparatorUtil.compare("261.27258.SNAPSHOT", "261.27258.1") < 0)
        assertTrue(VersionComparatorUtil.compare("261.27258.999", "261.27258.1000") < 0)
        assertTrue(VersionComparatorUtil.compare("261.27258.1000", "261.27258.1176") < 0)
        assertTrue(VersionComparatorUtil.compare("261.27258.1176", "261.28000.1") < 0)
        assertTrue(VersionComparatorUtil.compare("261.28000.1", "262.1000.1") < 0)
        assertTrue("261.27258.999" > "261.27258.1000")
    }

    @Test
    fun `plugin descriptor since-build and until-build match the checkout MPS build`() {
        val root = SkillCatalogCheckout.root()
        val ideBuildText = root.resolve("build.txt").readText().trim()
        val ideBuild = BuildNumber.fromString(ideBuildText)
        assertNotNull("could not parse build.txt '$ideBuildText'", ideBuild)
        ideBuild!!

        val pluginXml = root.resolve("plugins/mcp-tools/META-INF/plugin.xml")
        val document = DocumentBuilderFactory.newInstance().newDocumentBuilder().parse(pluginXml.toFile())
        val ideaVersion = document.getElementsByTagName("idea-version").item(0) as? Element
        assertNotNull("$pluginXml must declare <idea-version>", ideaVersion)
        ideaVersion!!

        val sinceAttr = ideaVersion.getAttribute("since-build")
        val untilAttr = ideaVersion.getAttribute("until-build")
        val sinceBuild = BuildNumber.fromString(sinceAttr)
        val untilBuild = BuildNumber.fromString(untilAttr)
        assertNotNull("invalid since-build '$sinceAttr' in $pluginXml", sinceBuild)
        assertNotNull("invalid until-build '$untilAttr' in $pluginXml", untilBuild)
        sinceBuild!!
        untilBuild!!

        assertEquals(
            "since-build ($sinceAttr) in $pluginXml must target the same MPS release stream as build.txt ($ideBuildText)",
            ideBuild.baselineVersion,
            sinceBuild.baselineVersion,
        )
        assertTrue(
            "since-build ($sinceAttr) in $pluginXml rejects build.txt ($ideBuildText)",
            sinceBuild <= ideBuild,
        )
        assertTrue(
            "until-build ($untilAttr) in $pluginXml rejects build.txt ($ideBuildText)",
            ideBuild <= untilBuild,
        )
        val nextStreamBuild = BuildNumber.fromString("${ideBuild.baselineVersion + 1}.2")!!
        assertTrue(
            "until-build ($untilAttr) in $pluginXml must not accept the next release stream ($nextStreamBuild)",
            untilBuild < nextStreamBuild,
        )
    }
}
