package jetbrains.mps.agents.mcp.tools.common

import jetbrains.mps.project.DevKit
import jetbrains.mps.smodel.ModelDependencyResolver
import jetbrains.mps.smodel.ModelImports
import jetbrains.mps.smodel.ModelDependencyScanner
import jetbrains.mps.smodel.SModelInternal
import jetbrains.mps.smodel.language.LanguageRegistry
import org.jetbrains.mps.openapi.language.SLanguage
import org.jetbrains.mps.openapi.model.SModel
import org.jetbrains.mps.openapi.model.SNode
import org.jetbrains.mps.openapi.module.SRepository

/** Used-language bookkeeping shared by the Java parse insert and MOVE_NODE_TO_PARENT. */
internal object UsedLanguages {
    /**
     * Imports each of [candidates] as a used language of [model], skipping any the model already
     * uses or that one of its DevKits provides, and returns the languages it added.
     */
    fun addMissing(model: SModel, repo: SRepository, imports: ModelImports, candidates: Iterable<SLanguage>): List<SLanguage> {
        val alreadyUsed = ModelDependencyResolver(LanguageRegistry.getInstance(repo), repo).usedLanguages(model)
        val added = mutableListOf<SLanguage>()
        for (lang in candidates) {
            if (!alreadyUsed.contains(lang) && !isProvidedByDevKit(model, repo, lang)) {
                imports.addUsedLanguage(lang)
                if (lang !in added) added.add(lang)
            }
        }
        return added
    }

    /** [addMissing] for the languages of the nodes, and their attributes, in the subtrees of [roots]. */
    fun addMissingFor(model: SModel, repo: SRepository, roots: List<SNode>): List<SLanguage> {
        val scanner = ModelDependencyScanner()
        scanner.usedLanguages(true).walk(roots)
        return addMissing(model, repo, ModelImports(model), scanner.usedLanguages)
    }

    fun isProvidedByDevKit(model: SModel, repo: SRepository, lang: SLanguage): Boolean {
        if (model !is SModelInternal) return false
        for (dkRef in model.importedDevkits()) {
            val dk = dkRef.resolve(repo) as? DevKit ?: continue
            if (dk.allExportedLanguageIds.any { it == lang }) return true
        }
        return false
    }
}
