package jetbrains.mps.agents.mcp.tools.java

import jetbrains.mps.agents.mcp.tools.*
import jetbrains.mps.agents.mcp.tools.languages.*

import com.intellij.openapi.diagnostic.Logger
import jetbrains.mps.classloading.ClassLoaderManager
import jetbrains.mps.java.core.newparser.*
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations
import jetbrains.mps.messages.IMessage
import jetbrains.mps.messages.IMessageHandler
import jetbrains.mps.progress.EmptyProgressMonitor
import jetbrains.mps.project.AbstractModule
import jetbrains.mps.project.DevKit
import jetbrains.mps.project.structure.modules.Dependency
import jetbrains.mps.smodel.DynamicReference
import jetbrains.mps.smodel.ModelDependencyResolver
import jetbrains.mps.smodel.ModelDependencyScanner
import jetbrains.mps.smodel.ModelImports
import jetbrains.mps.smodel.SModelInternal
import jetbrains.mps.smodel.SReference
import jetbrains.mps.smodel.constraints.ModelConstraints
import jetbrains.mps.smodel.language.LanguageRegistry
import jetbrains.mps.typechecking.TypecheckingFacade
import org.jetbrains.mps.openapi.language.SLanguage
import org.jetbrains.mps.openapi.model.SModel
import org.jetbrains.mps.openapi.model.SModelReference
import org.jetbrains.mps.openapi.model.SNode
import org.jetbrains.mps.openapi.module.SDependencyScope
import org.jetbrains.mps.openapi.module.SRepository
import org.jetbrains.mps.openapi.persistence.PersistenceFacade
import kotlinx.coroutines.CancellationException
import java.lang.reflect.Field

/**
 * Java parser -> MPS reference-resolution engine for [JetBrainsMPSJavaMcpToolset]. Given freshly
 * parsed-and-inserted baseLanguage nodes, it iteratively resolves their method/type/dynamic
 * references, expands the model's used-languages and cross-model imports, and reports whether the
 * JDK module dependency needs adding. Extracted from the toolset so the toolset stays thin
 * (dispatch + serialization) and this engine is exercisable on its own.
 *
 * Stateless apart from its [logger]; every operation takes the (model, repo, inserted, options) it
 * works on. JetBrainsMPSJavaMcpToolset.finalizeInsertedNodes is the sole caller: it runs
 * [resolveIteratively] and stages the [ensureJDKDependency] result onto the success path.
 */
internal class JavaParseResolver {
    private val logger = Logger.getInstance(JavaParseResolver::class.java)

    // Mirrors AbstractOps.rethrowIfCancellation (kept local so this engine is self-contained):
    // coroutine cancellation must always propagate rather than be folded into a warning/log.
    private fun rethrowIfCancellation(e: Throwable) {
        if (e is CancellationException) throw e
    }

    private companion object {
        // The built-in JDK module's reference. jetbrains.mps.baseLanguage relies on it for the
        // java.lang.* classpath; ensureJDKDependency adds it when the target module lacks it.
        const val JDK_MODULE_REFERENCE = "6354ebe7-c22a-4a0f-ac54-50b52ab9b065(JDK)"
    }

    private fun countUnknowns(roots: Iterable<SNode>): Int = roots.sumOf { root ->
        SNodeOperations.getNodeDescendants(
            root,
            BaseLanguageMeta.iYetUnresolvedConcept,
            true,
            arrayOf(BaseLanguageMeta.iYetUnresolvedConcept)
        ).count()
    }

    private fun countDynamicRefs(roots: Iterable<SNode>): Int = roots.sumOf { root ->
        SNodeOperations.getNodeDescendants(root, null, true, emptyArray()).sumOf { desc ->
            desc.references.count { it is DynamicReference }
        }
    }

    private fun fixDynamicReferences(model: SModel, roots: Iterable<SNode>): Int {
        fun resolveByNameContext(source: SNode, dref: DynamicReference): SNode? {
            val name = dref.resolveInfo ?: return null
            val link = dref.link
            val targetConcept = link.targetConcept

            // Search the source node's own subtree first, then each ancestor's subtree, nearest
            // first, so the closest same-named target wins (the loop below returns on first match).
            val searchScopes = ArrayList<SNode>()
            searchScopes.add(source)
            var p: SNode? = source.parent
            while (p != null) {
                searchScopes.add(p)
                p = p.parent
            }

            for (scope in searchScopes) {
                val it = SNodeOperations.getNodeDescendants(scope, targetConcept, true, emptyArray())
                for (n in it) {
                    val nName = SPropertyOperations.getString(n, BaseLanguageMeta.nameProperty)
                    if (nName == name) {
                        // If multiple, prefer the closest (first found in this ordered traversal)
                        return n
                    }
                }
            }
            return null
        }

        var fixed = 0
        for (root in roots) {
            for (desc in SNodeOperations.getNodeDescendants(root, null, true, emptyArray())) {
                val refs = desc.references.toList() // snapshot
                for (ref in refs) {
                    if (ref is DynamicReference) {
                        var targetNode: SNode? = ref.targetNode
                        if (targetNode == null) {
                            // try smart resolution by name + nearest scope
                            targetNode = resolveByNameContext(desc, ref)
                        }
                        if (targetNode != null) {
                            desc.setReferenceTarget(ref.link, targetNode)
                            val targetModel = targetNode.model
                            if (targetModel != null) {
                                ModelImports(model).addModelImport(targetModel.reference)
                            }
                            fixed++
                        }
                    }
                }
            }
        }
        return fixed
    }

    // The recommended `ComponentHost.findComponent(ClassLoaderManager.class)` replacement requires
    // an MPS `ComponentHost`/`Environment` handle that is not currently plumbed into the MCP toolsets.
    // Tracked under phase 6 as a deferred architectural change; suppress here to keep noise low.
    //
    // Resolves jetbrains.mps.baseLanguage.scopes.MethodResolveUtil.replaceFromEditor(SNode) via
    // reflection, trying multiple classloaders when the class is not on the default one. The result
    // depends only on [repo], so callers resolve it once and reuse it across the whole resolution
    // loop instead of re-running this classloader scan on every fixMethodReferences call.
    @Suppress("DEPRECATION")
    private fun resolveReplaceFromEditorMethod(repo: SRepository?): java.lang.reflect.Method? {
        return try {
            var clazz: Class<*>? = null
            try {
                clazz = Class.forName("jetbrains.mps.baseLanguage.scopes.MethodResolveUtil")
            } catch (_: ClassNotFoundException) {
                if (repo != null) {
                    // Try the solution where it is defined
                    val module = repo.modules.find { it.moduleName == "jetbrains.mps.baseLanguage.scopes" }
                    if (module != null) {
                        clazz = ClassLoaderManager.getInstance().getClassLoader(module).loadClass("jetbrains.mps.baseLanguage.scopes.MethodResolveUtil")
                    }

                    if (clazz == null) {
                        val lang = LanguageRegistry.getInstance(repo).getLanguage("jetbrains.mps.baseLanguage")
                        val runtimeModuleRef = lang?.runtimeModules?.firstOrNull()
                        val runtimeModule = if (runtimeModuleRef != null) repo.getModule(runtimeModuleRef.moduleId) else null
                        if (runtimeModule != null) {
                            clazz =
                                ClassLoaderManager.getInstance().getClassLoader(runtimeModule).loadClass("jetbrains.mps.baseLanguage.scopes.MethodResolveUtil")
                        }
                    }
                }
            }

            clazz?.getMethod("replaceFromEditor", SNode::class.java)
        } catch (e: Throwable) {
            rethrowIfCancellation(e)
            if (e is Error) {
                throw e
            }
            logger.warn("Failed to find 'replaceFromEditor' method via reflection", e)
            null
        }
    }

    // Resolves method-call / overload references (and AnonymousClass classifiers) on the inserted
    // subtrees. [replaceFromEditor] is the pre-resolved MethodResolveUtil.replaceFromEditor handle
    // (see resolveReplaceFromEditorMethod); when null, only the fixReferenceDumb fallback runs.
    private fun fixMethodReferences(roots: Iterable<SNode>, replaceFromEditor: java.lang.reflect.Method?) {
        for (root in roots) {
            val descendants = SNodeOperations.getNodeDescendants(root, null, true, emptyArray())
            for (node in descendants) {
                if (SNodeOperations.isInstanceOf(node, BaseLanguageMeta.iFixableMethodReferenceConcept) ||
                    SNodeOperations.isInstanceOf(node, BaseLanguageMeta.iMethodCallConcept) ||
                    SNodeOperations.isInstanceOf(node, BaseLanguageMeta.anonymousClassConcept) ||
                    SNodeOperations.isInstanceOf(node, BaseLanguageMeta.classCreatorConcept) ||
                    SNodeOperations.isInstanceOf(node, BaseLanguageMeta.instanceMethodCallOperationConcept)
                ) {

                    try {
                        var fixed = false
                        if (replaceFromEditor != null) {
                            replaceFromEditor.invoke(null, node)
                            fixed = isReferenceFixed(node)
                        }

                        if (!fixed) {
                            fixReferenceDumb(node)
                        }
                    } catch (e: Throwable) {
                        rethrowIfCancellation(e)
                        if (e is Error) {
                            throw e
                        }
                        logger.warn("Error resolving method references in fixReferences for node $node", e)
                    }
                }
            }
        }
    }

    private fun isReferenceFixed(node: SNode): Boolean {
        if (SNodeOperations.isInstanceOf(node, BaseLanguageMeta.iYetUnresolvedConcept)) {
            return false
        }
        for (ref in node.references) {
            val target = ref.targetNode ?: return false
            if (!SNodeOperations.isInstanceOf(target, BaseLanguageMeta.baseMethodDeclarationConcept)) {
                continue
            }

            val actualArgs = SLinkOperations.getChildren(node, BaseLanguageMeta.actualArgumentLink)
            val targetParams = SLinkOperations.getChildren(target, BaseLanguageMeta.parameterLink)

            if (actualArgs.size != targetParams.size) {
                return false
            }
        }
        return true
    }

    private fun fixReferenceDumb(node: SNode) {
        for (ref in node.references) {
            val target = ref.targetNode
            if (target != null && !SNodeOperations.isInstanceOf(target, BaseLanguageMeta.baseMethodDeclarationConcept)) continue

            val actualArgs = SLinkOperations.getChildren(node, BaseLanguageMeta.actualArgumentLink)
            val actualArgsCount = actualArgs.size

            // If current target has wrong parameter count, try to find a better one in the scope
            if (target == null || SLinkOperations.getChildren(target, BaseLanguageMeta.parameterLink).size != actualArgsCount) {
                val scope = ModelConstraints.getScope(ref)
                // `target` may be null here (anonymous class with no resolved method, fresh
                // parser output, etc.); only fall back to its name property when it exists.
                var refText = (ref as? SReference)?.resolveInfo
                    ?: target?.let { SPropertyOperations.getString(it, BaseLanguageMeta.nameProperty) }

                if (refText.isNullOrEmpty() && SNodeOperations.isInstanceOf(node, BaseLanguageMeta.anonymousClassConcept)) {
                    // The classifier link can be unresolved on a newly parsed anonymous class; guard
                    // against null before reading the name property.
                    val classifier = SLinkOperations.getTarget(node, BaseLanguageMeta.anonymousClassClassifierLink)
                    if (classifier != null) {
                        refText = SPropertyOperations.getString(classifier, BaseLanguageMeta.nameProperty)
                    }
                }

                if (refText.isNullOrEmpty()) {
                    continue
                }

                val candidates = scope.getAvailableElements(refText).toList()
                val methodCandidates = candidates.filter { SNodeOperations.isInstanceOf(it, BaseLanguageMeta.baseMethodDeclarationConcept) }

                val bestMatch = methodCandidates.find { cand ->
                    SLinkOperations.getChildren(cand, BaseLanguageMeta.parameterLink).size == actualArgsCount
                }

                if (bestMatch != null) {
                    if (bestMatch !== target) {
                        node.setReferenceTarget(ref.link, bestMatch)
                    }
                }
            }
        }
    }

    private fun removeJavaImports(roots: Iterable<SNode>) {
        for (root in roots) {
            for (desc in SNodeOperations.getNodeDescendants(root, BaseLanguageMeta.javaImportConcept, true, emptyArray())) {
                SNodeOperations.deleteNode(desc)
            }
            for (desc in SNodeOperations.getNodeDescendants(root, BaseLanguageMeta.javaImportsConcept, true, emptyArray())) {
                SNodeOperations.deleteNode(desc)
            }
        }
    }

    // Imports each candidate language as a used-language of [model], skipping any the model already
    // uses or that a DevKit already provides. Shared by finalizeResolutionDependencies (parser-
    // declared languages) and updateModelDependencies (languages found by scanning inserted nodes).
    private fun addMissingUsedLanguages(
        model: SModel,
        repo: SRepository,
        imports: ModelImports,
        candidates: Iterable<SLanguage>
    ) {
        val alreadyUsed = ModelDependencyResolver(LanguageRegistry.getInstance(repo), repo).usedLanguages(model)
        for (lang in candidates) {
            if (!alreadyUsed.contains(lang) && !isLanguageProvidedByDevKit(model, repo, lang)) {
                imports.addUsedLanguage(lang)
            }
        }
    }

    // c2: Deferred used-language finalization. Runs after the resolution loop on the success path,
    // and also on the early-return path when doResolveRefs is false. The parser-declared language
    // imports used to run BEFORE the loop, but moving them after means a mid-loop exception leaves
    // the model unchanged in memory. The JDK dependency is finalized separately by the caller
    // (finalizeInsertedNodes), which stages the descriptor mutation onto the success path only;
    // ensureJDKDependency is side-effect-free, so it is intentionally not called here.
    //
    // parseResult.languages only reflects what JavaParser itself produced. Post-parse adapters
    // (e.g. ConceptBehaviorJavaParseAdapter) can graft in nodes of languages the parser never
    // touched, such as smodel's SPropertyAccess/SLinkAccess/SLinkListAccess. When doResolveRefs is
    // true, updateModelDependencies already scans `inserted` for those inside the loop, but on the
    // doResolveRefs=false early-return path nothing else scans the actual node tree - so this also
    // runs a usedLanguages-only scan (no crossModelReferences; that stays loop-only, since it
    // depends on resolution having run) to catch languages introduced after parsing.
    private fun finalizeResolutionDependencies(
        model: SModel,
        repo: SRepository,
        inserted: List<SNode>,
        doImportLang: Boolean,
        parseResult: JavaParser.JavaParseResult
    ) {
        if (doImportLang) {
            val scanner = ModelDependencyScanner()
            scanner.usedLanguages(true).walk(inserted)
            val candidates = (parseResult.languages ?: emptySet()) + scanner.usedLanguages
            addMissingUsedLanguages(model, repo, ModelImports(model), candidates)
        }
    }

    internal fun ensureJDKDependency(model: SModel): Dependency? {
        val module = model.module as? AbstractModule ?: return null
        val jdkRef = PersistenceFacade.getInstance().createModuleReference(JDK_MODULE_REFERENCE)
        if (module.scope.resolve(jdkRef) != null) return null

        // Guard: a module with no descriptor can't receive the dependency the caller would add,
        // so return null rather than a Dependency that would be silently dropped (and avoid a
        // spurious setChanged() on the caller side).
        module.moduleDescriptor ?: return null
        // Staged: the actual add + setChanged() is performed by the caller in
        // finalizeInsertedNodes after resolveIteratively has succeeded.
        return Dependency(jdkRef, SDependencyScope.DEFAULT, false)
    }

    private fun isLanguageProvidedByDevKit(model: SModel, repo: SRepository, lang: SLanguage): Boolean {
        if (model !is SModelInternal) return false
        for (dkRef in model.importedDevkits()) {
            val dk = dkRef.resolve(repo) as? DevKit ?: continue
            if (dk.allExportedLanguageIds.any { it == lang }) return true
        }
        return false
    }

    // `importUsedLanguages` gates language imports only. Cross-model reference imports are always
    // applied because resolution would otherwise be left broken (the inserted nodes point at
    // models that must be imported for the references to resolve). Previously the used-language
    // loop ran unconditionally here, so `importUsedLanguages:false` did NOT suppress language
    // imports whenever `resolveReferences:true` (e.g. closures got auto-imported anyway).
    private fun updateModelDependencies(model: SModel, repo: SRepository, inserted: List<SNode>, importUsedLanguages: Boolean) {
        val langRegistry = LanguageRegistry.getInstance(repo)
        val mdr = ModelDependencyResolver(langRegistry, repo)
        val imports = ModelImports(model)

        val scanner = ModelDependencyScanner()
        scanner.usedLanguages(true).crossModelReferences(true).walk(inserted)

        if (importUsedLanguages) {
            addMissingUsedLanguages(model, repo, imports, scanner.usedLanguages)
        }

        val effectiveImportedModels = mutableSetOf<SModelReference>()
        mdr.directImports(model).forEach { effectiveImportedModels.add(it.reference) }
        mdr.implicitImports(model).forEach { effectiveImportedModels.add(it.reference) }

        for (mref in scanner.crossModelReferences) {
            if (!effectiveImportedModels.contains(mref)) {
                imports.addModelImport(mref)
                effectiveImportedModels.add(mref)
            }
        }
    }

    internal fun resolveIteratively(
        model: SModel,
        repo: SRepository,
        inserted: List<SNode>,
        featureKind: FeatureKind,
        doImportLang: Boolean,
        doResolveRefs: Boolean,
        parseResult: JavaParser.JavaParseResult
    ) {
        // c2: ensureJDKDependency and the initial parser-declared-language imports used to run
        // here, before the resolution loop. That made them load-bearing for resolution (the
        // tryResolveRefs pass needs JDK in scope to resolve java.lang.* references and the
        // parser-declared languages to find concept-level refs), but it also meant that if the
        // loop threw mid-way the model retained those imports and the module retained the JDK
        // dependency in memory. Now the parser-declared language imports run AFTER the loop, in
        // finalizeResolutionDependencies, and the JDK dependency is added by finalizeInsertedNodes
        // on the success path (see ensureJDKDependency).
        //
        // Trade-off: in modules that do not already have JDK in scope, the loop's tryResolveRefs
        // pass will not be able to resolve JDK references — they remain Unknown until the
        // post-loop pass adds JDK and the user re-runs resolution. The in-loop
        // updateModelDependencies still expands scope iteratively for cross-model refs found in
        // the inserted nodes, so resolution quality is unaffected for modules that already have
        // JDK and for non-JDK cross-model refs.

        if (!doResolveRefs) {
            finalizeResolutionDependencies(model, repo, inserted, doImportLang, parseResult)
            return
        }

        // When the caller suppressed language imports, snapshot the languages already on the model
        // so we can strip whatever the platform resolution passes import unconditionally below.
        // JavaToMpsConverter.tryResolveRefs (via ModelDependencyUpdate.updateUsedLanguages) and
        // YetUnknownResolver.addUsedLanguage add used languages directly, bypassing our
        // importUsedLanguages gate; without this cleanup importUsedLanguages=false would not
        // actually suppress them once resolveReferences=true. Pre-existing imports are preserved.
        val languagesBeforeResolve =
            if (!doImportLang) (model as? SModelInternal)?.importedLanguageIds()?.toHashSet() else null

        val handler = IMessageHandler { _: IMessage -> }
        val conv = JavaToMpsConverter(model, repo, handler)

        // Try to set myAttachedRoots via reflection to help internal resolution passes.
        // e1: log at WARN level when the reflection fails so future API renames don't go
        // unnoticed. The field is a private implementation detail of JavaToMpsConverter, so
        // we can't depend on its existence — but if it disappears, resolution quality drops
        // silently, which is exactly the kind of regression we want to surface.
        try {
            val field: Field = JavaToMpsConverter::class.java.getDeclaredField("myAttachedRoots")
            field.isAccessible = true
            field.set(conv, inserted)
        } catch (e: Exception) {
            logger.warn(
                "Failed to set JavaToMpsConverter.myAttachedRoots via reflection; resolution may be degraded",
                e
            )
        }

        // Resolve MethodResolveUtil.replaceFromEditor once for the whole resolution loop instead of
        // re-running the (Class.forName + classloader scan + getMethod) reflection on every
        // fixMethodReferences call below. The result depends only on `repo`, so it is stable across
        // all loop iterations and the final pass.
        val replaceFromEditor = resolveReplaceFromEditorMethod(repo)

        // Wrap the resolution loop in an isolated typechecking session so that
        // TypecheckingFacade.getFromContext().getTypeOf() calls in codeTransformPass (e.g. for
        // array .length / .clone() resolution) succeed and UnknownInstanceMethodCall nodes get replaced.
        TypecheckingFacade.getFromContext().runIsolated { _ ->
            var iteration = 0
            val maxIterations = 10
            while (iteration < maxIterations) {
                val unknownsBefore = countUnknowns(inserted)
                val dynamicBefore = countDynamicRefs(inserted)

                conv.tryResolveRefs(inserted, featureKind, EmptyProgressMonitor())

                // Fix method references and overloads (including AnonymousClass classifier)
                // This might unblock more unknowns for YetUnknownResolver in this or next iteration.
                fixMethodReferences(inserted, replaceFromEditor)

                // Manually call YetUnknownResolver just in case JavaToMpsConverter didn't do it or didn't do it enough
                val yur = YetUnknownResolver(model, inserted)
                yur.tryResolveUnknowns(EmptyProgressMonitor())

                // Update model dependencies after the standalone resolver pass so that subsequent
                // iterations have an expanded scope (newly resolved imports become visible).
                updateModelDependencies(model, repo, inserted, doImportLang)

                fixDynamicReferences(model, inserted)

                val unknownsAfter = countUnknowns(inserted)
                val dynamicAfter = countDynamicRefs(inserted)

                // If no more unknowns and no more dynamic refs, we are done
                if (unknownsAfter == 0 && dynamicAfter == 0) break

                // If no progress in this iteration, we may stop.
                // We run at least two complete passes (iteration 0 and 1) because the first pass (iteration 0)
                // might resolve some class imports or types that unblock subsequent resolutions in the second pass (iteration 1).
                // If there is still no progress after running at least two passes, we terminate early to save CPU cycles.
                if (unknownsAfter == unknownsBefore && dynamicAfter == dynamicBefore) {
                    if (iteration >= 1) break
                }

                iteration++
            }

            // Final check for any remaining method call problems
            fixMethodReferences(inserted, replaceFromEditor)
            // One last try for unknowns unblocked by overload resolution
            YetUnknownResolver(model, inserted).tryResolveUnknowns(EmptyProgressMonitor())
            // Final dynamic reference cleanup in case last passes unlocked more
            fixDynamicReferences(model, inserted)
        }
        removeJavaImports(inserted)

        // Strip the languages the platform resolution passes imported when importUsedLanguages=false.
        // Only languages absent before resolution are removed, so pre-existing imports stay intact.
        // Cross-model *model* imports are intentionally left alone (resolution needs them).
        languagesBeforeResolve?.let { before ->
            (model as? SModelInternal)?.let { internal ->
                val imports = ModelImports(model)
                for (lang in internal.importedLanguageIds().toList()) {
                    if (!before.contains(lang)) {
                        imports.removeUsedLanguage(lang)
                    }
                }
            }
        }

        finalizeResolutionDependencies(model, repo, inserted, doImportLang, parseResult)
    }

}
