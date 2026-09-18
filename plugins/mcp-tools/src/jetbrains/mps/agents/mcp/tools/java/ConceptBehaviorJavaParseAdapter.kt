package jetbrains.mps.agents.mcp.tools.java

import jetbrains.mps.agents.mcp.tools.languages.*

import jetbrains.mps.lang.smodel.generator.smodelAdapter.IAttributeDescriptor
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SConceptOperations
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SEnumOperations
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations
import jetbrains.mps.smodel.DynamicReference
import org.jetbrains.mps.openapi.model.SNode

// Adapts BaseLanguage class-member ASTs produced by JavaParser (JavaParser.parse with
// FeatureKind.METHOD/CLASS_CONTENT always casts its context to Classifier) into the Behavior
// language's ConceptMethodDeclaration, so a ConceptBehavior root can be used as a parse target.
// The caller parses against a detached synthetic ClassConcept (createDetachedClassifierContext)
// and then runs the parsed members through convertParsedMembersForConceptBehavior.
internal object ConceptBehaviorJavaParseAdapter {

    internal sealed class ConceptBehaviorConversion {
        data class Ok(val nodes: List<SNode>) : ConceptBehaviorConversion()
        data class Err(val message: String) : ConceptBehaviorConversion()
    }

    // Never attached to any model/module; exists only as a Classifier-shaped parse context so
    // JavaParser's SNodeOperations.cast(context, Classifier) succeeds.
    internal fun createDetachedClassifierContext(): SNode =
        SConceptOperations.createNewNode(BaseLanguageMeta.classConceptConcept)

    internal fun convertParsedMembersForConceptBehavior(
        parsedNodes: List<SNode>,
        behaviorNode: SNode
    ): ConceptBehaviorConversion {
        // Resolved once per call: the ConceptDeclaration node the ConceptBehavior is attached to,
        // used to map `this.<name>` member accesses onto SPropertyAccess/SLinkAccess/
        // SLinkListAccess below. The declaration *node* rather than its runtime SConcept, because
        // a language that was edited but not yet built has a hollow descriptor whose
        // properties/links are empty (see StructureLanguageMeta). Null (unattached behavior, or an
        // unresolvable concept reference) simply disables that rewrite - the parsed
        // FieldReferenceOperation is left as-is, matching the "no guess beats a wrong guess" rule.
        val ownerConceptDecl: SNode? =
            behaviorNode.getReference(BehaviorLanguageMeta.conceptBehaviorConceptLink)?.targetNode

        val converted = mutableListOf<SNode>()
        for (source in parsedNodes) {
            when {
                SNodeOperations.isInstanceOf(source, BaseLanguageMeta.constructorDeclarationConcept) ->
                    return ConceptBehaviorConversion.Err(
                        "A constructor cannot be parsed onto a ConceptBehavior; target the 'constructor' " +
                            "role's ConceptConstructorDeclaration directly instead."
                    )

                SNodeOperations.isInstanceOf(source, BaseLanguageMeta.instanceMethodDeclarationConcept) ||
                    SNodeOperations.isInstanceOf(source, BaseLanguageMeta.staticMethodDeclarationConcept) ->
                    converted.add(convertMethod(source, ownerConceptDecl))

                else -> return ConceptBehaviorConversion.Err(
                    "featureKind METHOD/CLASS_CONTENT on a ConceptBehavior only supports method members; " +
                        "parsed node '${source.concept.name}' has no corresponding role."
                )
            }
        }
        return ConceptBehaviorConversion.Ok(converted)
    }

    private fun convertMethod(source: SNode, ownerConceptDecl: SNode?): SNode {
        val result = SConceptOperations.createNewNode(BehaviorLanguageMeta.conceptMethodDeclarationConcept)
        result.setProperty(BaseLanguageMeta.nameProperty, source.getProperty(BaseLanguageMeta.nameProperty))

        moveOptionalChild(source, result, BaseLanguageMeta.visibilityLink)
        result.setProperty(BaseLanguageMeta.isSynchronizedProperty, source.getProperty(BaseLanguageMeta.isSynchronizedProperty))

        for (link in listOf(
            BaseLanguageMeta.parameterLink,
            BaseLanguageMeta.annotationLink,
            BaseLanguageMeta.throwsItemLink,
            BaseLanguageMeta.typeVariableDeclarationLink
        )) {
            // Snapshot first: addChild reparents each child out of source's live children list as
            // we go, so iterating that list directly would skip elements.
            for (child in source.getChildren(link).toList()) {
                SNodeOperations.deleteNode(child)
                result.addChild(link, child)
            }
        }

        moveOptionalChild(source, result, BaseLanguageMeta.returnTypeLink)

        val isStatic = SNodeOperations.isInstanceOf(source, BaseLanguageMeta.staticMethodDeclarationConcept)
        if (isStatic) {
            result.setProperty(BehaviorLanguageMeta.isStaticProperty, "true")
        }

        val isAbstract = !isStatic &&
            source.getProperty(BaseLanguageMeta.instanceMethodDeclarationIsAbstractProperty) == "true"
        if (isAbstract) {
            // `final` only makes sense on a virtual (abstract) ConceptMethodDeclaration; copying it
            // unconditionally trips "isFinal does not make sense on the non-virtual method" below.
            // (Java forbids `abstract final`, so in practice this always copies false - `final` on
            // an ordinary parsed method is therefore dropped, which method-declarations.md states.)
            result.setProperty(BaseLanguageMeta.isFinalProperty, source.getProperty(BaseLanguageMeta.isFinalProperty))
            result.setProperty(BehaviorLanguageMeta.isVirtualProperty, "true")
            result.setProperty(BehaviorLanguageMeta.isAbstractProperty, "true")
        }

        // `body` is obligatory: BaseMethodDeclaration declares it with cardinality 1 and
        // ConceptMethodDeclaration does not relax it. An abstract method is no exception - it
        // carries the *empty* StatementList that ASTConverter.convertMethodGuts installs before it
        // reads the `abstract` modifier, exactly as an abstract baseLanguage method does. Skipping
        // the move for abstract methods is what made live validation report
        // "No child in the obligatory role 'body'" on every parsed `abstract` method.
        moveOptionalChild(source, result, BaseLanguageMeta.bodyLink)
        if (result.getChildren(BaseLanguageMeta.bodyLink).none()) {
            result.addChild(
                BaseLanguageMeta.bodyLink,
                SConceptOperations.createNewNode(BaseLanguageMeta.statementListConcept)
            )
        }

        IAttributeDescriptor.NodeAttribute(JavadocLanguageMeta.methodDocCommentConcept).set(
            result,
            IAttributeDescriptor.NodeAttribute(JavadocLanguageMeta.methodDocCommentConcept).get(source)
        )

        rewriteOwnerThisExpressions(result)
        if (ownerConceptDecl != null) {
            rewriteOwnerFieldAccesses(result, ownerConceptDecl)
        }
        return result
    }

    private fun moveOptionalChild(source: SNode, dest: SNode, link: org.jetbrains.mps.openapi.language.SContainmentLink) {
        val child = source.getChildren(link).firstOrNull() ?: return
        SNodeOperations.deleteNode(child)
        dest.addChild(link, child)
    }

    // Rewrites unqualified `this` to ThisNodeExpression everywhere in the converted method's body
    // except inside a nested/anonymous class, where `this` still refers to that inner Classifier
    // and must stay a BaseLanguage ThisExpression. There is no ThisConceptExpression branch:
    // `this` in a static method is unreachable from Java input (no static ThisExpression exists).
    private fun rewriteOwnerThisExpressions(result: SNode) {
        val thisExpressions = SNodeOperations.getNodeDescendants(result, BaseLanguageMeta.iThisExpressionConcept, false)
        for (thisExpr in thisExpressions) {
            if (!hasEnclosingClassifier(thisExpr)) {
                SNodeOperations.replaceWithAnother(
                    thisExpr,
                    SConceptOperations.createNewNode(BehaviorLanguageMeta.thisNodeExpressionConcept)
                )
            }
        }
    }

    private fun hasEnclosingClassifier(node: SNode): Boolean {
        var current = node.parent
        while (current != null) {
            if (SNodeOperations.isInstanceOf(current, BaseLanguageMeta.classifierConcept)) return true
            current = current.parent
        }
        return false
    }

    // Rewrites `this.<name>` member accesses onto the owning concept's SPropertyAccess/SLinkAccess/
    // SLinkListAccess, wherever the DotExpression operand is a ThisNodeExpression - which only ever
    // results from rewriteOwnerThisExpressions above, never from a nested-classifier `this`. A name
    // matching nothing on the concept is left untouched: a visible unresolved reference beats a
    // wrong guess. Java calls on the owner (`this.foo()`) and calls on a resolved property value
    // (`this.text.isEmpty()`) are out of scope and are likewise left alone.
    private fun rewriteOwnerFieldAccesses(result: SNode, ownerConceptDecl: SNode) {
        val dotExpressions = SNodeOperations.getNodeDescendants(result, BaseLanguageMeta.dotExpressionConcept, false)
        for (dotExpr in dotExpressions) {
            val operand = dotExpr.getChildren(BaseLanguageMeta.dotExpressionOperandLink).firstOrNull() ?: continue
            if (!SNodeOperations.isInstanceOf(operand, BehaviorLanguageMeta.thisNodeExpressionConcept)) continue

            val operation = dotExpr.getChildren(BaseLanguageMeta.dotExpressionOperationLink).firstOrNull() ?: continue
            if (!SNodeOperations.isInstanceOf(operation, BaseLanguageMeta.fieldReferenceOperationConcept)) continue

            val fieldRef = operation.getReference(BaseLanguageMeta.fieldReferenceOperationFieldDeclarationLink)
            val name = (fieldRef as? DynamicReference)?.resolveInfo
                ?: fieldRef?.targetNode?.getProperty(BaseLanguageMeta.nameProperty)
                ?: continue

            val replacement = resolveMemberAccess(ownerConceptDecl, name) ?: continue
            SNodeOperations.replaceWithAnother(operation, replacement)
        }
    }

    /**
     * Finds the property or link named [name] on [conceptDecl] or anywhere in its superconcept /
     * implemented-interface closure, and builds the matching smodel access operation whose
     * reference targets that declaration node (`SPropertyAccess.property` and
     * `SLinkAccess`/`SLinkListAccess.link` all point at declaration nodes, so no runtime meta
     * object is needed). Breadth-first from the concept itself, so the most derived declaration of
     * a name wins. Returns null when nothing matches - the caller then leaves the parsed
     * FieldReferenceOperation in place.
     */
    private fun resolveMemberAccess(conceptDecl: SNode, name: String): SNode? {
        val visited = mutableSetOf<SNode>()
        val queue = ArrayDeque(listOf(conceptDecl))
        while (queue.isNotEmpty()) {
            val decl = queue.removeFirst()
            if (!visited.add(decl)) continue

            decl.getChildren(StructureLanguageMeta.propertyDeclarationLink)
                .firstOrNull { it.getProperty(BaseLanguageMeta.nameProperty) == name }
                ?.let { return propertyAccessTo(it) }

            decl.getChildren(StructureLanguageMeta.linkDeclarationLink)
                .firstOrNull { it.getProperty(StructureLanguageMeta.linkDeclarationRoleProperty) == name }
                ?.let { return linkAccessTo(it) }

            queue.addAll(superConceptDeclarations(decl))
        }
        return null
    }

    /** The directly extended concept and implemented/extended interfaces of a declaration node. */
    private fun superConceptDeclarations(decl: SNode): List<SNode> {
        val supers = mutableListOf<SNode>()
        if (SNodeOperations.isInstanceOf(decl, StructureLanguageMeta.conceptDeclarationConcept)) {
            decl.getReference(StructureLanguageMeta.conceptDeclarationExtendsLink)?.targetNode?.let { supers.add(it) }
            supers.addAll(intfcTargets(decl, StructureLanguageMeta.conceptDeclarationImplementsLink))
        }
        if (SNodeOperations.isInstanceOf(decl, StructureLanguageMeta.interfaceConceptDeclarationConcept)) {
            supers.addAll(intfcTargets(decl, StructureLanguageMeta.interfaceConceptDeclarationExtendsLink))
        }
        return supers
    }

    private fun intfcTargets(decl: SNode, link: org.jetbrains.mps.openapi.language.SContainmentLink): List<SNode> =
        decl.getChildren(link).mapNotNull {
            it.getReference(StructureLanguageMeta.interfaceConceptReferenceIntfcLink)?.targetNode
        }

    private fun propertyAccessTo(propertyDecl: SNode): SNode =
        SConceptOperations.createNewNode(SmodelLanguageMeta.sPropertyAccessConcept).also {
            it.setReferenceTarget(SmodelLanguageMeta.sPropertyAccessPropertyLink, propertyDecl)
        }

    // Only a multiple containment link maps to SLinkListAccess: MPS reference links are always
    // single-valued regardless of the cardinality the declaration carries.
    private fun linkAccessTo(linkDecl: SNode): SNode {
        val genuine = genuineLink(linkDecl)
        val isAggregation = SEnumOperations.isMember(
            SPropertyOperations.getEnum(genuine, StructureLanguageMeta.linkDeclarationMetaClassProperty),
            StructureLanguageMeta.LINK_METACLASS_AGGREGATION
        )
        val cardinality =
            SPropertyOperations.getEnum(genuine, StructureLanguageMeta.linkDeclarationSourceCardinalityProperty)
        val isSingular = SEnumOperations.isMember(cardinality, StructureLanguageMeta.CARDINALITY_OPTIONAL_SINGLE) ||
            SEnumOperations.isMember(cardinality, StructureLanguageMeta.CARDINALITY_SINGLE)

        return if (isAggregation && !isSingular) {
            SConceptOperations.createNewNode(SmodelLanguageMeta.sLinkListAccessConcept).also {
                it.setReferenceTarget(SmodelLanguageMeta.sLinkListAccessLinkLink, linkDecl)
            }
        } else {
            SConceptOperations.createNewNode(SmodelLanguageMeta.sLinkAccessConcept).also {
                it.setReferenceTarget(SmodelLanguageMeta.sLinkAccessLinkLink, linkDecl)
            }
        }
    }

    // Mirrors LinkDeclaration.getGenuineLink(): a declaration that specializes another may leave
    // metaClass/sourceCardinality at the specialized link's values, so those two are read off the
    // end of the specialization chain. The reference target stays the most derived declaration.
    private fun genuineLink(linkDecl: SNode): SNode {
        var current = linkDecl
        val visited = mutableSetOf(current)
        while (true) {
            val specialized =
                current.getReference(StructureLanguageMeta.linkDeclarationSpecializedLinkLink)?.targetNode
                    ?: return current
            if (!visited.add(specialized)) return current
            current = specialized
        }
    }
}
