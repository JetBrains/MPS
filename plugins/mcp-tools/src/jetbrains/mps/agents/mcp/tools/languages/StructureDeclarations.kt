package jetbrains.mps.agents.mcp.tools.languages

import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations
import org.jetbrains.mps.openapi.language.SContainmentLink
import org.jetbrains.mps.openapi.model.SNode

// Walks concept declaration *nodes* rather than runtime SConcepts, so it also works for a language
// that was edited but not yet built (see StructureLanguageMeta).
internal object StructureDeclarations {

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
