package jetbrains.mps.agents.mcp.tools.languages

import jetbrains.mps.lang.smodel.generator.smodelAdapter.SEnumOperations
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations
import jetbrains.mps.smodel.adapter.MetaAdapterByDeclaration
import jetbrains.mps.smodel.behaviour.BHReflection
import org.jetbrains.mps.openapi.language.SAbstractConcept
import org.jetbrains.mps.openapi.language.SContainmentLink
import org.jetbrains.mps.openapi.model.SNode

// Walks concept declaration *nodes* rather than runtime SConcepts, so it also works for a language
// that was edited but not yet built (see StructureLanguageMeta).
internal object StructureDeclarations {

    enum class FeatureKind { PROPERTY, CHILD, REFERENCE }

    /**
     * The declaration of the property / child role / reference role named [name] on [decl] or one of
     * its super-concepts, read off the structure model (so it is right for a language whose runtime
     * is not built yet); null when no such feature is declared. Must run inside a read action.
     */
    internal fun declaredFeature(decl: SNode, kind: FeatureKind, name: String): SNode? {
        for (concept in allSuperConceptDeclarations(decl, includeSelf = true)) {
            if (kind == FeatureKind.PROPERTY) {
                concept.getChildren(StructureLanguageMeta.propertyDeclarationLink).firstOrNull { it.name == name }?.let { return it }
                continue
            }
            val wantAggregation = kind == FeatureKind.CHILD
            // A specializing link is not a feature of its own: the runtime exposes the genuine link.
            concept.getChildren(StructureLanguageMeta.linkDeclarationLink).firstOrNull { link ->
                !isSpecializing(link) &&
                    link.getProperty(StructureLanguageMeta.linkDeclarationRoleProperty) == name &&
                    isAggregation(link) == wantAggregation
            }?.let { return it }
        }
        return null
    }

    internal fun isSpecializing(linkDecl: SNode): Boolean =
        linkDecl.getReference(StructureLanguageMeta.linkDeclarationSpecializedLinkLink)?.targetNode != null

    /** The runtime concept a `ConceptDeclaration` / `InterfaceConceptDeclaration` node declares; null for any other node. */
    internal fun conceptOf(node: SNode?): SAbstractConcept? {
        if (node == null) return null
        val isConcept = SNodeOperations.isInstanceOf(node, StructureLanguageMeta.conceptDeclarationConcept) ||
            SNodeOperations.isInstanceOf(node, StructureLanguageMeta.interfaceConceptDeclarationConcept)
        return if (isConcept) MetaAdapterByDeclaration.getConcept(node) else null
    }

    internal fun isAggregation(linkDecl: SNode): Boolean =
        SEnumOperations.isMember(
            SPropertyOperations.getEnum(linkDecl, StructureLanguageMeta.linkDeclarationMetaClassProperty),
            StructureLanguageMeta.LINK_METACLASS_AGGREGATION,
        )

    /**
     * `AbstractConceptDeclaration.getAllSuperConcepts(includeSelf)` of `jetbrains.mps.lang.structure`,
     * most specific first, BaseConcept included.
     */
    internal fun allSuperConceptDeclarations(decl: SNode, includeSelf: Boolean): List<SNode> {
        val result = BHReflection.invoke0(
            decl, StructureLanguageMeta.abstractConceptDeclarationConcept,
            StructureLanguageMeta.getAllSuperConceptsId, includeSelf,
        ) as Iterable<*>
        return result.filterIsInstance<SNode>()
    }

    /** The directly extended concept and implemented/extended interfaces of a declaration node. */
    internal fun superConceptDeclarations(decl: SNode): List<SNode> {
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

    private fun intfcTargets(decl: SNode, link: SContainmentLink): List<SNode> =
        decl.getChildren(link).mapNotNull {
            it.getReference(StructureLanguageMeta.interfaceConceptReferenceIntfcLink)?.targetNode
        }

    // Mirrors LinkDeclaration.getGenuineLink(): a declaration that specializes another may leave
    // metaClass/sourceCardinality at the specialized link's values, so those two are read off the
    // end of the specialization chain. The reference target stays the most derived declaration.
    internal fun genuineLink(linkDecl: SNode): SNode {
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
