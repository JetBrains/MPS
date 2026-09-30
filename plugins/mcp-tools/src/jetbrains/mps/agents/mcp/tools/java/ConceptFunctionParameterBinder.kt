package jetbrains.mps.agents.mcp.tools.java

import jetbrains.mps.agents.mcp.tools.languages.*

import com.intellij.openapi.diagnostic.Logger
import jetbrains.mps.core.aspects.behaviour.SMethodIdV2
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SConceptOperations
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations
import jetbrains.mps.smodel.DynamicReference
import jetbrains.mps.smodel.behaviour.BHReflection
import org.jetbrains.mps.openapi.language.SConcept
import org.jetbrains.mps.openapi.model.ResolveInfo
import org.jetbrains.mps.openapi.model.SNode
import kotlinx.coroutines.CancellationException

/**
 * D68: binds the implicit parameters of the enclosing concept function (`propertyValue`, `node`,
 * `editorContext`, `genContext`, ...) in freshly parsed Java code to their
 * `ConceptFunctionParameter` concepts. JavaParser has no notion of them: a bare name becomes a
 * `VariableReference` with a dynamic reference, `x.m(..)` an `UnknownDotCall` and `x.f` an
 * `UnknownNameRef`, and none of the resolution passes can turn them into a parameter, because a
 * parameter is not a `VariableDeclaration` (`ResolveUnknownUtil.tryFirstTokenAsVarRef`).
 *
 * The parameters of a function are `ConceptFunction.getParameterConcepts()` (virtual; overridden by
 * each function concept), and the name a user writes is the parameter concept's alias — exactly what
 * `ConceptFunctionParameter.getParameterName()` returns and the editor prints in the `(node, ...)->`
 * header. The enclosing function is the nearest `ConceptFunction` ancestor, the same lookup MPS's own
 * `check_ConceptFunctionParameter` rule uses; a baseLanguage `Closure` has no parameters to offer,
 * and a Java lambda (`ClosureLiteral`) is not a `ConceptFunction`, so it binds to the outer function.
 *
 * Must run before JavaParseResolver.resolveIteratively: its fixDynamicReferences pass binds a dynamic
 * name to any same-named VariableDeclaration anywhere in the root, so `node` would otherwise be
 * captured by a local of another function in the same root.
 */
internal object ConceptFunctionParameterBinder {
    private val logger = Logger.getInstance(ConceptFunctionParameterBinder::class.java)

    // ConceptFunction.getParameterConcepts (ConceptFunction__BehaviorDescriptor): baseMethodId and the
    // compressed id of jetbrains.mps.baseLanguage (0xa443f952ceaf5816 xor 0xf3061a5392264cc5).
    private val getParameterConceptsId =
        SMethodIdV2.create("getParameterConcepts", 2912357169742028959L, 0x5745e3015c8914d3L)

    private class FunctionContext(
        val function: SNode,
        val parameters: Map<String, SConcept>,
        val declaredNames: Set<String>,
    ) {
        val bound = LinkedHashMap<String, Int>()
        val shadowed = LinkedHashSet<String>()
        var boundFieldChain = false
    }

    /**
     * Rewrites the candidates under [inserted] in place and returns the warnings to report. A
     * top-level inserted node that is itself replaced (e.g. EXPRESSION `node`) is swapped in
     * [inserted], so the caller's rollback and response see the parameter node.
     */
    fun bind(inserted: MutableList<SNode>): List<String> {
        val warnings = ArrayList<String>()
        val contexts = LinkedHashMap<SNode, FunctionContext?>()

        // Snapshot first: each rewrite replaces nodes, and arguments are moved into new calls.
        val candidates = inserted.flatMap { top ->
            SNodeOperations.getNodeDescendants(top, null, true, emptyArray()).filter { isCandidateConcept(it) }
        }
        for (candidate in candidates) {
            if (!isUnderAny(candidate, inserted)) continue
            val tokens = candidateTokens(candidate) ?: continue
            val function = enclosingFunction(candidate) ?: continue
            val context = contexts.getOrPut(function) { functionContext(function, warnings) } ?: continue
            val name = tokens.first()
            val parameter = context.parameters[name] ?: continue
            if (name in context.declaredNames) {
                context.shadowed.add(name)
                continue
            }

            val replacement = buildReplacement(candidate, parameter, tokens)
            val topIndex = inserted.indexOf(candidate)
            SNodeOperations.replaceWithAnother(candidate, replacement)
            if (topIndex >= 0) inserted[topIndex] = replacement

            context.bound.merge(name, 1, Int::plus)
            if (tokens.size > 1) context.boundFieldChain = true
        }

        for (context in contexts.values.filterNotNull()) {
            val functionName = context.function.concept.name
            if (context.bound.isNotEmpty()) {
                val count = context.bound.values.sum()
                val names = context.bound.entries.joinToString(", ") { (name, n) -> if (n > 1) "$name ×$n" else name }
                var text = "Bound $count implicit parameter reference(s) of '$functionName' ($names) to their " +
                    "ConceptFunctionParameter concepts."
                if (context.boundFieldChain) {
                    text += " A member access on a parameter (e.g. 'node.name') stays a Java field reference; " +
                        "smodel property or link access cannot be written in Java, so replace it with an " +
                        "SPropertyAccess/SLinkAccess JSON blueprint."
                }
                warnings.add(text)
            }
            for (name in context.shadowed) {
                warnings.add(
                    "Did not bind '$name' to the implicit parameter of '$functionName': a variable named " +
                        "'$name' is declared inside that function, so '$name' is left as a Java name."
                )
            }
        }
        return warnings
    }

    private fun isCandidateConcept(node: SNode): Boolean {
        val concept = node.concept
        return concept == BaseLanguageMeta.variableReferenceConcept ||
            concept == BaseLanguageMeta.unknownNameRefConcept ||
            concept == BaseLanguageMeta.unknownDotCallConcept
    }

    // The receiver name first, then any field names chained after it. Null when the node is not an
    // unresolved plain-name reference.
    private fun candidateTokens(node: SNode): List<String>? {
        if (node.concept == BaseLanguageMeta.variableReferenceConcept) {
            val ref = node.getReference(BaseLanguageMeta.variableReferenceVariableDeclarationLink) as? DynamicReference
            val name = ref?.resolveInfo ?: return null
            return listOf(name)
        }
        val tokens = node.getProperty(BaseLanguageMeta.tokensProperty)?.split('.') ?: return null
        return if (tokens.isEmpty() || tokens.any { it.isEmpty() }) null else tokens
    }

    private fun isUnderAny(node: SNode, roots: List<SNode>): Boolean {
        var current: SNode? = node
        while (current != null) {
            if (roots.contains(current)) return true
            current = current.parent
        }
        return false
    }

    private fun enclosingFunction(node: SNode): SNode? {
        var current = node.parent
        while (current != null) {
            if (current.concept.isSubConceptOf(BaseLanguageMeta.conceptFunctionConcept)) {
                return if (current.concept.isSubConceptOf(BaseLanguageMeta.closureConcept)) null else current
            }
            current = current.parent
        }
        return null
    }

    private fun functionContext(function: SNode, warnings: MutableList<String>): FunctionContext? {
        val parameterConcepts = try {
            (BHReflection.invoke0(function, BaseLanguageMeta.conceptFunctionConcept, getParameterConceptsId) as? List<*>)
                .orEmpty()
                .filterIsInstance<SConcept>()
        } catch (e: Exception) {
            if (e is CancellationException) throw e
            logger.warn("getParameterConcepts failed on '${function.concept.name}'", e)
            warnings.add(
                "Could not read the implicit parameters of '${function.concept.name}' " +
                    "(${e.javaClass.simpleName}: ${e.message}); no parameter names were bound. " +
                    "Make sure the language that declares this function is built and loaded."
            )
            return null
        }

        val byAlias = parameterConcepts
            .filter { !it.isAbstract }
            .mapNotNull { concept -> concept.conceptAlias.takeIf { isJavaIdentifier(it) }?.let { it to concept } }
            .groupBy({ it.first }, { it.second })
        // An alias shared by two parameter concepts is ambiguous; leave it for the caller.
        val parameters = byAlias.filterValues { it.distinct().size == 1 }.mapValues { it.value.first() }
        if (parameters.isEmpty()) return null

        val declaredNames = SNodeOperations.getNodeDescendants(
            function, BaseLanguageMeta.variableDeclarationConcept, false, emptyArray()
        ).mapNotNullTo(HashSet()) { it.getProperty(BaseLanguageMeta.nameProperty) }
        return FunctionContext(function, parameters, declaredNames)
    }

    private fun isJavaIdentifier(text: String): Boolean =
        text.isNotEmpty() && Character.isJavaIdentifierStart(text[0]) && text.all { Character.isJavaIdentifierPart(it) }

    // Mirrors what ResolveUnknownUtil.resolveTokens / resolveDotCall build for a variable receiver.
    private fun buildReplacement(candidate: SNode, parameter: SConcept, tokens: List<String>): SNode {
        var operand = SConceptOperations.createNewNode(parameter)
        for (field in tokens.drop(1)) {
            operand = fieldAccess(operand, field)
        }
        if (candidate.concept != BaseLanguageMeta.unknownDotCallConcept) return operand

        val call = SConceptOperations.createNewNode(BaseLanguageMeta.unknownInstanceMethodCallConcept)
        call.addChild(BaseLanguageMeta.unknownInstanceMethodCallOperandLink, operand)
        call.setProperty(
            BaseLanguageMeta.unknownDotCallCalleeProperty,
            candidate.getProperty(BaseLanguageMeta.unknownDotCallCalleeProperty)
        )
        // Moved, not copied (ResolveUnknownUtil.reattachMethodArguments copies): candidates nested in
        // the arguments were already snapshotted and must stay attached to be bound in turn.
        for (link in listOf(BaseLanguageMeta.actualArgumentLink, BaseLanguageMeta.typeArgumentLink)) {
            for (child in candidate.getChildren(link).toList()) {
                SNodeOperations.deleteNode(child)
                call.addChild(link, child)
            }
        }
        return call
    }

    private fun fieldAccess(operand: SNode, fieldName: String): SNode {
        val fieldRef = SConceptOperations.createNewNode(BaseLanguageMeta.fieldReferenceOperationConcept)
        fieldRef.setReference(BaseLanguageMeta.fieldReferenceOperationFieldDeclarationLink, ResolveInfo.of(fieldName))
        val dotExpr = SConceptOperations.createNewNode(BaseLanguageMeta.dotExpressionConcept)
        dotExpr.addChild(BaseLanguageMeta.dotExpressionOperandLink, operand)
        dotExpr.addChild(BaseLanguageMeta.dotExpressionOperationLink, fieldRef)
        return dotExpr
    }
}
