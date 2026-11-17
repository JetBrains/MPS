package jetbrains.mps.agents.mcp.tools.integration

import jetbrains.mps.agents.mcp.tools.*
import jetbrains.mps.agents.mcp.tools.common.*

import com.google.gson.JsonObject
import com.google.gson.JsonParser
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNotEquals
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test
import java.awt.image.BufferedImage
import java.io.File
import javax.imageio.ImageIO

/** `mps_mcp_print_node` with `format=IMAGE`: a PNG temp file in `data`, its size in `details.image`. */
class PrintNodeImageIntegrationTest : McpIntegrationTestBase() {

    private val toolset = MPSNodeMcpToolset()

    private fun printImage(ref: String, editorHints: String? = null): JsonObject {
        val envelope = JsonParser.parseString(runTool(toolset) {
            it.mps_mcp_print_node(ref, format = "IMAGE", editorHints = editorHints?.let(::JsonOrText))
        }).asJsonObject
        assertTrue("expected an ok envelope: $envelope", envelope.get("ok").asBoolean)
        return envelope
    }

    private fun imageDetails(envelope: JsonObject): JsonObject =
        envelope.getAsJsonObject("details")?.getAsJsonObject("image") ?: error("no details.image: $envelope")

    /** The decoded PNG of [envelope], checked against `details.image`. */
    private fun decode(envelope: JsonObject): BufferedImage {
        val file = File(envelope.get("data").asString)
        assertTrue(envelope.toString(), file.name.startsWith("mps-node-") && file.name.endsWith(".png"))
        val image = checkNotNull(ImageIO.read(file)) { "not a decodable image: $file" }
        val details = imageDetails(envelope)
        assertEquals(envelope.toString(), details.get("width").asInt, image.width)
        assertEquals(envelope.toString(), details.get("height").asInt, image.height)
        assertEquals(envelope.toString(), "image/png", details.get("mediaType").asString)
        assertEquals(envelope.toString(), 1, details.get("scale").asInt)
        return image
    }

    private fun size(envelope: JsonObject): Pair<Int, Int> =
        imageDetails(envelope).let { it.get("width").asInt to it.get("height").asInt }

    @Test
    fun `IMAGE writes a decodable PNG whose size is in details`() {
        val envelope = printImage(createConceptRoot("ImageDefault"))
        val image = decode(envelope)
        val colours = HashSet<Int>()
        for (x in 0 until image.width step 2) for (y in 0 until image.height step 2) colours += image.getRGB(x, y)
        assertTrue("a blank image: ${colours.size} colour(s)", colours.size > 1)
        assertNull(envelope.toString(), imageDetails(envelope).get("clipped"))
        assertNull(envelope.toString(), envelope.get("warnings"))
        assertEquals(envelope.toString(), "projectSettings",
            envelope.getAsJsonObject("details").getAsJsonObject("editorHints").get("source").asString)
    }

    @Test
    fun `IMAGE honours editorHints`() {
        val ref = createConceptRoot("ImageHints")
        val default = printImage(ref)
        val reflective = printImage(ref, editorHints = "reflective")
        decode(reflective)
        assertNotEquals("$default\n$reflective", size(default), size(reflective))
        assertEquals(reflective.toString(), listOf(EditorHintCatalog.REFLECTIVE_HINT),
            reflective.getAsJsonObject("details").getAsJsonObject("editorHints").getAsJsonArray("applied").map { it.asString })
    }

    @Test
    fun `an image over the pixel cap is clipped from the top left`() {
        val ref = createConceptRoot("ImageClipped")
        val (fullWidth, fullHeight) = size(printImage(ref))
        val cap = (fullWidth.toLong() * fullHeight) / 4
        val saved = EditorImageRenderer.maxPixels
        val envelope = try {
            EditorImageRenderer.maxPixels = cap
            printImage(ref)
        } finally {
            EditorImageRenderer.maxPixels = saved
        }
        val image = decode(envelope)
        assertTrue(envelope.toString(), imageDetails(envelope).get("clipped").asBoolean)
        assertTrue(envelope.toString(), image.width.toLong() * image.height <= cap)
        assertTrue(envelope.toString(), image.width <= fullWidth && image.height <= fullHeight)
        assertTrue(envelope.toString(), envelope.getAsJsonArray("warnings").single().asString.contains("clipped"))
    }

    @Test
    fun `the clip keeps the full width of a tall image and bounds both sides of a huge one`() {
        assertEquals(800 to 600, EditorImageRenderer.clippedSize(800, 600, 1_000_000))
        assertEquals(1000 to 16000, EditorImageRenderer.clippedSize(1000, 40000, 16_000_000))
        assertEquals(32000 to 500, EditorImageRenderer.clippedSize(40000, 500, 16_000_000))
        assertEquals(4000 to 4000, EditorImageRenderer.clippedSize(10000, 10000, 16_000_000))
    }
}
