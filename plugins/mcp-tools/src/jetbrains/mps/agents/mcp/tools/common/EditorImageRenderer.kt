package jetbrains.mps.agents.mcp.tools.common

import com.intellij.openapi.diagnostic.Logger
import jetbrains.mps.nodeEditor.EditorCell_WithComponent
import jetbrains.mps.nodeEditor.EditorComponent
import java.awt.Component
import java.awt.Container
import java.awt.Dimension
import java.awt.RenderingHints
import java.awt.image.BufferedImage
import java.util.concurrent.CancellationException
import kotlin.math.max
import kotlin.math.min
import kotlin.math.sqrt

/**
 * Paints a headless editor to an image the way `lang.editor.imageGen`'s `PrintNodeRunnable` does: background, then the root
 * cell, then each Swing component cell into its own bounds. The editor itself is not printed, so neither the right-margin
 * line nor the selection-line painter shows. Must run on the EDT inside a read action; scale is fixed at 1.
 */
internal object EditorImageRenderer {
    private val LOG = Logger.getInstance(EditorImageRenderer::class.java)

    const val MAX_PIXELS: Long = 16_000_000
    /** Blank border around the painted root cell, in pixels. */
    const val MARGIN = 4
    private const val MIN_LAYOUT_ROUNDS = 2
    private const val MAX_LAYOUT_ROUNDS = 4
    private const val LAYOUT_EDITOR_SIZE = 3000

    /** Tests lower it to reach the clip path. */
    @Volatile
    internal var maxPixels: Long = MAX_PIXELS

    class Painted(val image: BufferedImage, val details: Map<String, Any?>, val warnings: List<String>)

    fun paint(editor: EditorComponent, componentCells: List<EditorCell_WithComponent>): Painted {
        if (componentCells.isNotEmpty()) layOut(editor, componentCells)
        val root = editor.rootCell
        val fullWidth = root.width + 2 * MARGIN
        val fullHeight = root.height + 2 * MARGIN
        val (width, height) = clippedSize(fullWidth, fullHeight, maxPixels)
        val clipped = width < fullWidth || height < fullHeight
        val warnings = mutableListOf<String>()
        if (componentCells.isNotEmpty() && (root.width == 0 || root.height == 0)) {
            val classes = componentCells.map { it.javaClass.simpleName }.distinct().sorted().joinToString(", ")
            warnings += "The graphical cell(s) ($classes) did not lay out in the headless editor (root cell " +
                "${root.width}x${root.height}), so the image is blank; use format JSON or PLAIN TEXT"
        }

        val image = BufferedImage(width, height, BufferedImage.TYPE_INT_RGB)
        val g = image.createGraphics()
        try {
            g.color = editor.background
            g.fillRect(0, 0, width, height)
            g.setRenderingHint(RenderingHints.KEY_ANTIALIASING, RenderingHints.VALUE_ANTIALIAS_ON)
            g.setRenderingHint(RenderingHints.KEY_TEXT_ANTIALIASING, RenderingHints.VALUE_TEXT_ANTIALIAS_ON)
            g.translate(MARGIN - root.x, MARGIN - root.y)
            root.paint(g)
            for (cell in componentCells) {
                val sub = g.create(cell.x, cell.y, cell.width, cell.height)
                try {
                    cell.component.printAll(sub)
                } catch (e: Exception) {
                    if (e is CancellationException) throw e
                    LOG.warn("Painting the component of ${cell.javaClass.name} failed", e)
                    warnings += "The component of a ${cell.javaClass.simpleName} cell could not be painted ($e); its area is blank"
                } finally {
                    sub.dispose()
                }
            }
        } finally {
            g.dispose()
        }

        val details = linkedMapOf<String, Any?>("width" to width, "height" to height, "mediaType" to "image/png", "scale" to 1)
        if (clipped) {
            details["clipped"] = true
            warnings += "The image of ${fullWidth}x$fullHeight px exceeds $maxPixels pixels and was clipped to its top-left " +
                "${width}x$height px; print a sub-node for the rest"
        }
        return Painted(image, details, warnings)
    }

    /** The largest top-left part of a [width]×[height] image within [cap] pixels, keeping the full width when it fits. */
    internal fun clippedSize(width: Int, height: Int, cap: Long): Pair<Int, Int> {
        if (width.toLong() * height <= cap) return width to height
        val w = min(width.toLong(), max(cap / height, sqrt(cap.toDouble()).toLong())).coerceAtLeast(1)
        val h = min(height.toLong(), cap / w).coerceAtLeast(1)
        return w.toInt() to h.toInt()
    }

    /**
     * `Container.validate()` does nothing without a peer, which a headless editor never has, so the editor's own layout
     * manager leaves the insides of a Swing cell (e.g. a diagram) at 0×0: lay each component tree out explicitly, then
     * relayout the cells, until the sizes in the whole component trees settle. A diagram's preferred size is known only
     * after its view container was laid out once, so its panel (and a root holding only the diagram) stays 0×0 in the
     * first round: at least two rounds always run.
     */
    private fun layOut(editor: EditorComponent, cells: List<EditorCell_WithComponent>) {
        val root = editor.rootCell
        for (round in 1..MAX_LAYOUT_ROUNDS) {
            val before = treeSizes(cells)
            val preferred = editor.preferredSize
            editor.setSize(max(preferred.width, LAYOUT_EDITOR_SIZE), max(preferred.height, LAYOUT_EDITOR_SIZE))
            editor.doLayout()
            cells.forEach { layOutTree(it.component) }
            root.requestRelayout()
            editor.relayout()
            if (round >= MIN_LAYOUT_ROUNDS && !root.wasRelayoutRequested() && treeSizes(cells) == before) return
        }
    }

    /** Size and preferred size of every component under [cells]. */
    private fun treeSizes(cells: List<EditorCell_WithComponent>): List<Dimension> {
        val sizes = mutableListOf<Dimension>()
        fun walk(c: Component) {
            sizes += c.size
            sizes += c.preferredSize ?: Dimension(0, 0)
            if (c is Container) c.components.forEach(::walk)
        }
        cells.forEach { walk(it.component) }
        return sizes
    }

    private fun layOutTree(c: Component) {
        if (c.width == 0 && c.height == 0) c.size = c.preferredSize ?: Dimension(0, 0)
        c.doLayout()
        if (c is Container) c.components.forEach(::layOutTree)
    }
}
