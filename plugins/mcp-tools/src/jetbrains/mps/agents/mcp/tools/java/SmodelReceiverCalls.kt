package jetbrains.mps.agents.mcp.tools.java

import jetbrains.mps.agents.mcp.tools.languages.*

import jetbrains.mps.java.core.newparser.YetUnknownResolver
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SConceptOperations
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations
import jetbrains.mps.progress.EmptyProgressMonitor
import jetbrains.mps.smodel.ModelImports
import jetbrains.mps.typechecking.TypecheckingFacade
import org.jetbrains.mps.openapi.model.SModel
import org.jetbrains.mps.openapi.model.SNode

/**
 * D68 follow-up: finishes Java API calls on smodel-typed receivers, such as `node.toString()` on a
 * bound `ConceptFunctionParameter_node`. `UnknownInstanceMethodCall.getResolvedMethod` coerces the
 * receiver's type strongly to a `ClassifierType`, but `node<>` is only a *weak* subtype of `SNode`
 * (`supertypesOf_SNodeType_ClassifierTypeSNode`), so the call never resolves. MPS's own form for
 * such a call is the semantic downcast `node/.toString()`: the receiver is wrapped in a
 * `SemanticDowncastExpression`, whose type is the `SNode` classifier, and MPS's resolver finishes
 * the call from there. The smodel generator drops the `/`, so the generated Java is unchanged.
 *
 * Runs inside JavaParseResolver.resolveIteratively's isolated typechecking session. Each [resolve]
 * call is one atomic step (wrap, resolve, unwrap the misses), so no dangling downcast is ever seen
 * by the dependency scanners, which would otherwise import smodel for a call that stays unresolved.
 */
internal object SmodelReceiverCalls {
    private val downcastableTypes = listOf(
        SmodelLanguageMeta.sNodeTypeConcept,
        SmodelLanguageMeta.sModelTypeConcept,
        SmodelLanguageMeta.sNodePointerTypeConcept,
        SmodelLanguageMeta.sModelPointerTypeConcept,
    )

    /** [resolved]: calls finished through a downcast. [skipped]: calls left because smodel is not available. */
    class Outcome(val resolved: Int, val skipped: Int)

    /**
     * Wraps the smodel-typed receiver of every `UnknownInstanceMethodCall` under [inserted] in a
     * downcast, resolves the wrapped calls and unwraps those that did not resolve (a method `SNode`
     * does not have, e.g. `node.bar()`), which leaves them exactly as parsed. When
     * [smodelAvailable] is false, nothing is wrapped, because the downcast's language could not be
     * imported.
     *
     * A miss is final: `getResolvedMethod` depends only on the downcast's type and the static stub
     * reference, so repeating the step in a later iteration re-wraps and re-unwraps the same call
     * (in a model without smodel, also re-adding and re-removing the import): at most once per
     * resolution iteration, and cheap. Misses are not remembered by identity, because the resolver
     * copies them when an outer call resolves.
     *
     * [resync] re-reads a top-level entry of [inserted] that the resolver replaced (a call inserted
     * as an EXPRESSION), before the misses are unwrapped.
     *
     * [smodelInScope] tells whether the model already sees smodel (directly or through a devkit).
     * When it does not, smodel is imported for the step, because the typechecker applies a
     * language's rules only within the model's language scope, so the downcast would have no type;
     * the import is dropped again when nothing of smodel is left after the unwrap.
     */
    fun resolve(
        model: SModel,
        inserted: List<SNode>,
        smodelAvailable: Boolean,
        smodelInScope: () -> Boolean,
        resync: () -> Unit,
    ): Outcome {
        val typechecking = TypecheckingFacade.getFromContext()
        val candidates = inserted.flatMap {
            SNodeOperations.getNodeDescendants(it, BaseLanguageMeta.unknownInstanceMethodCallConcept, true, emptyArray())
        }
        val wrapped = ArrayList<SNode>()
        var skipped = 0
        for (call in candidates) {
            val operand = call.getChildren(BaseLanguageMeta.unknownInstanceMethodCallOperandLink).firstOrNull() ?: continue
            if (!needsDowncast(typechecking, operand)) continue
            if (!smodelAvailable) {
                skipped++
                continue
            }
            val downcast = SConceptOperations.createNewNode(SmodelLanguageMeta.semanticDowncastExpressionConcept)
            SNodeOperations.replaceWithAnother(operand, downcast)
            downcast.addChild(SmodelLanguageMeta.semanticDowncastExpressionLeftExpressionLink, operand)
            wrapped.add(call)
        }
        if (wrapped.isEmpty()) return Outcome(0, skipped)

        // Only the wrapped calls, not the whole insert: the resolver adds the languages of everything
        // it resolves to the model, so an unrelated outer call resolved here (String.valueOf(node.bar()))
        // would import smodel for a downcast that is unwrapped below. Nested wrapped calls are
        // scanned as descendants of the outermost ones.
        val outermost = wrapped.filter { call -> wrapped.none { it !== call && isAncestor(it, call) } }
        val importedForStep = !smodelInScope()
        if (importedForStep) ModelImports(model).addUsedLanguage(SmodelLanguageMeta.smodelLanguage)
        var completed = false
        val misses = try {
            YetUnknownResolver(model, outermost).tryResolveUnknowns(EmptyProgressMonitor())
            resync()
            unwrapMisses(inserted).also { completed = true }
        } finally {
            // Also on a throw: the caller's rollback removes the nodes but not model imports, and a
            // later save by any tool would persist the stray import. After a throw the downcasts are
            // still attached (usesSmodel would keep the import), but the nodes are about to be rolled
            // back, so the import is always dropped.
            if (importedForStep && (!completed || !usesSmodel(inserted))) {
                ModelImports(model).removeUsedLanguage(SmodelLanguageMeta.smodelLanguage)
            }
        }
        return Outcome(wrapped.size - misses, skipped)
    }

    private fun usesSmodel(inserted: List<SNode>): Boolean = inserted.any { top ->
        SNodeOperations.getNodeDescendants(top, null, true, emptyArray()).any { it.concept.language == SmodelLanguageMeta.smodelLanguage }
    }

    /**
     * Replaces every downcast that is still the receiver of an `UnknownInstanceMethodCall` by the
     * expression it wraps, and returns how many there were. Matched structurally, not by identity:
     * when an outer call resolves, the resolver copies its arguments, wrapped inner calls included.
     * Java input cannot produce a downcast, so every match was created by [resolve].
     */
    fun unwrapMisses(inserted: List<SNode>): Int {
        val downcasts = inserted.flatMap {
            SNodeOperations.getNodeDescendants(it, SmodelLanguageMeta.semanticDowncastExpressionConcept, true, emptyArray())
        }
        var count = 0
        for (downcast in downcasts) {
            val parent = downcast.parent ?: continue
            if (parent.concept != BaseLanguageMeta.unknownInstanceMethodCallConcept ||
                downcast.containmentLink != BaseLanguageMeta.unknownInstanceMethodCallOperandLink
            ) continue
            val operand = downcast.getChildren(SmodelLanguageMeta.semanticDowncastExpressionLeftExpressionLink).firstOrNull() ?: continue
            SNodeOperations.replaceWithAnother(downcast, operand)
            count++
        }
        return count
    }

    // A receiver typed node<>/model<>/node-ptr<>/model-ptr<> that does not strongly coerce to a
    // classifier. A receiver that does coerce (a Java type, concept<> -> SAbstractConcept) is left to
    // MPS's own resolution.
    private fun needsDowncast(typechecking: TypecheckingFacade, operand: SNode): Boolean {
        val type = typechecking.getTypeOf(operand) ?: return false
        if (downcastableTypes.none { type.concept.isSubConceptOf(it) }) return false
        val classifierType = typechecking.strongCoerceType(type, BaseLanguageMeta.classifierTypeConcept)
        return classifierType?.getReferenceTarget(BaseLanguageMeta.classifierTypeClassifierLink) == null
    }

    private fun isAncestor(ancestor: SNode, node: SNode): Boolean {
        var current = node.parent
        while (current != null) {
            if (current === ancestor) return true
            current = current.parent
        }
        return false
    }
}
