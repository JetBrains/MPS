package jetbrains.mps.agents.mcp.tools.common

import com.intellij.openapi.diagnostic.Logger
import jetbrains.mps.openapi.editor.descriptor.EditorAspectDescriptor
import jetbrains.mps.openapi.editor.descriptor.EditorHintsProvider
import jetbrains.mps.smodel.ModelDependencyResolver
import jetbrains.mps.smodel.ModelDependencyScanner
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory
import jetbrains.mps.smodel.language.LanguageRegistry
import jetbrains.mps.smodel.runtime.StructureAspectDescriptor
import org.jetbrains.mps.openapi.language.SLanguage
import org.jetbrains.mps.openapi.model.SNode
import org.jetbrains.mps.openapi.module.SRepository
import java.util.concurrent.CancellationException

/**
 * The editor hints `mps_mcp_print_node` can apply: those the IDE's Push Editor Hints dialog offers for a model (used and
 * devkit languages, their extended languages and the languages they aggregate, then `employsHintsFrom`, as
 * `ConceptEditorHintSettings.init`), plus the languages of the printed subtree. Unlike the IDE walk, a used language without a
 * runtime is recorded in [unloadedLanguages] instead of failing, and hints hidden from the UI are kept with `showInUI=false`.
 */
internal class EditorHintCatalog private constructor(
    val entries: List<Entry>,
    val unloadedLanguages: List<String>,
) {
    data class Entry(val fqName: String, val id: String, val presentation: String?, val language: String, val showInUI: Boolean) {
        fun toMap(): Map<String, Any> = linkedMapOf<String, Any>("fqName" to fqName, "id" to id).apply {
            if (presentation != null) put("presentation", presentation)
            put("language", language)
            put("showInUI", showInUI)
        }
    }

    sealed class Match {
        data class Found(val entry: Entry) : Match()
        data class Ambiguous(val candidates: List<String>) : Match()
        object Missing : Match()
    }

    /** [value] as an FQ name, else as a short id. */
    fun find(value: String): Match {
        entries.firstOrNull { it.fqName == value }?.let { return Match.Found(it) }
        val byId = entries.filter { it.id == value }
        return when (byId.size) {
            0 -> Match.Missing
            1 -> Match.Found(byId.single())
            else -> Match.Ambiguous(byId.map { it.fqName })
        }
    }

    fun fullListing(): List<Map<String, Any>> = entries.map { it.toMap() }

    /** The FQ names of the hints the IDE offers, and how many hidden ones there are besides. */
    fun compactListing(): Pair<List<String>, Int> {
        val (shown, hidden) = entries.partition { it.showInUI }
        return shown.map { it.fqName } to hidden.size
    }

    companion object {
        private val LOG = Logger.getInstance(EditorHintCatalog::class.java)

        /**
         * Consumed by the editor runtime and declared by no language: `ReflectiveHint.REFLECTIVE` in
         * `editor-runtime/.../nodeEditor/reflectiveEditor/ReflectiveHint.java` (package-private, hence retyped). Its
         * `denyForNode`/`denyForChildren` siblings are left out on purpose: `ReflectiveCellContextUtil` throws on any set of
         * them other than its four valid combinations.
         */
        const val REFLECTIVE_HINT: String = "jetbrains.mps.lang.core.editor.reflective"
        private val REFLECTIVE_ENTRY = Entry(REFLECTIVE_HINT, "reflective", null, "(editor runtime)", false)

        /** Must be called inside a read action. */
        fun forNode(node: SNode, repo: SRepository): EditorHintCatalog {
            val registry = LanguageRegistry.getInstance(repo)
            val seed = linkedSetOf<SLanguage>()
            val model = node.model
            if (model?.repository != null) seed += ModelDependencyResolver(registry, repo).usedLanguages(model)
            seed += ModelDependencyScanner().usedLanguages(true).walk(listOf(node)).usedLanguages
            val languages = LinkedHashSet(seed)
            for (language in seed) {
                val runtime = registry.getLanguage(language) ?: continue
                guarded(language) {
                    runtime.extendedLanguages.mapTo(languages) { it.identity }
                    runtime.getAspect(StructureAspectDescriptor::class.java)?.reportDependencies(object : StructureAspectDescriptor.Dependencies {
                        override fun aggregatedLanguage(hiBits: Long, lowBits: Long, name: String) {
                            languages += MetaAdapterFactory.getLanguage(hiBits, lowBits, name)
                        }
                    })
                }
            }
            return walk(registry, languages)
        }

        /** Every deployed language's hints; must be called inside a read action. */
        fun global(repo: SRepository): EditorHintCatalog {
            val registry = LanguageRegistry.getInstance(repo)
            return walk(registry, registry.allLanguages)
        }

        private fun walk(registry: LanguageRegistry, start: Collection<SLanguage>): EditorHintCatalog {
            val queue = ArrayDeque(start)
            val seen = HashSet<SLanguage>()
            val entries = mutableListOf<Entry>()
            val unloaded = sortedSetOf<String>()
            while (queue.isNotEmpty()) {
                val language = queue.removeFirst()
                if (!seen.add(language)) continue
                val runtime = registry.getLanguage(language)
                if (runtime == null) {
                    unloaded += language.qualifiedName
                    continue
                }
                guarded(language) {
                    val descriptor = runtime.getAspect(EditorAspectDescriptor::class.java)
                    if (descriptor is EditorHintsProvider) {
                        for (hint in descriptor.hints) {
                            entries += Entry(hint.fqName, hint.id, hint.presentation, runtime.namespace, hint.showInUI())
                        }
                        descriptor.employsHintsFrom { queue.addLast(it) }
                    }
                }
            }
            entries.sortWith(compareBy({ it.language }, { it.fqName }))
            entries += REFLECTIVE_ENTRY
            return EditorHintCatalog(entries.distinctBy { it.fqName }, unloaded.toList())
        }

        private inline fun guarded(language: SLanguage, block: () -> Unit) {
            try {
                block()
            } catch (e: Exception) {
                if (e is CancellationException) throw e
                LOG.warn("Could not read the editor hints of ${language.qualifiedName}", e)
            }
        }
    }
}
