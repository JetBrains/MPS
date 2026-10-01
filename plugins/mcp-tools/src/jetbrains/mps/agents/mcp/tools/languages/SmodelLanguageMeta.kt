package jetbrains.mps.agents.mcp.tools.languages


import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory

internal object SmodelLanguageMeta {
    private val smodelLanguageId = 0x7866978ea0f04cc7uL.toLong()
    private val smodelStructureModelId = 0x81bc4d213d9375e1uL.toLong()

    internal val sPropertyAccessConcept = MetaAdapterFactory.getConcept(
        smodelLanguageId, smodelStructureModelId, 0x108f96cca6fL,
        "jetbrains.mps.lang.smodel.structure.SPropertyAccess"
    )
    internal val sLinkAccessConcept = MetaAdapterFactory.getConcept(
        smodelLanguageId, smodelStructureModelId, 0x108f96ea2caL,
        "jetbrains.mps.lang.smodel.structure.SLinkAccess"
    )
    internal val sLinkListAccessConcept = MetaAdapterFactory.getConcept(
        smodelLanguageId, smodelStructureModelId, 0x108f970c119L,
        "jetbrains.mps.lang.smodel.structure.SLinkListAccess"
    )
    internal val semanticDowncastExpressionConcept = MetaAdapterFactory.getConcept(
        smodelLanguageId, smodelStructureModelId, 0x10aaf6d7435L,
        "jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression"
    )

    // The smodel types that SemanticDowncastExpression maps to a Java classifier (node<> -> SNode,
    // model<> -> SModel, node-ptr<> -> SNodeReference, model-ptr<> -> SModelReference).
    internal val sNodeTypeConcept = MetaAdapterFactory.getConcept(
        smodelLanguageId, smodelStructureModelId, 0x108f968b3caL,
        "jetbrains.mps.lang.smodel.structure.SNodeType"
    )
    internal val sModelTypeConcept = MetaAdapterFactory.getConcept(
        smodelLanguageId, smodelStructureModelId, 0x10a2d94c0cdL,
        "jetbrains.mps.lang.smodel.structure.SModelType"
    )
    internal val sNodePointerTypeConcept = MetaAdapterFactory.getConcept(
        smodelLanguageId, smodelStructureModelId, 0x66b228a4fad6b29eL,
        "jetbrains.mps.lang.smodel.structure.SNodePointerType"
    )
    internal val sModelPointerTypeConcept = MetaAdapterFactory.getConcept(
        smodelLanguageId, smodelStructureModelId, 0x19dc9460645d088bL,
        "jetbrains.mps.lang.smodel.structure.SModelPointerType"
    )

    internal val semanticDowncastExpressionLeftExpressionLink = MetaAdapterFactory.getContainmentLink(
        smodelLanguageId, smodelStructureModelId, 0x10aaf6d7435L, 0x10aaf6f6e81L, "leftExpression"
    )

    internal val smodelLanguage = MetaAdapterFactory.getLanguage(
        smodelLanguageId, smodelStructureModelId, "jetbrains.mps.lang.smodel"
    )

    internal val sPropertyAccessPropertyLink = MetaAdapterFactory.getReferenceLink(
        smodelLanguageId, smodelStructureModelId, 0x108f96cca6fL, 0x108f9727bcdL, "property"
    )
    internal val sLinkAccessLinkLink = MetaAdapterFactory.getReferenceLink(
        smodelLanguageId, smodelStructureModelId, 0x108f96ea2caL, 0x108f974549cL, "link"
    )
    internal val sLinkListAccessLinkLink = MetaAdapterFactory.getReferenceLink(
        smodelLanguageId, smodelStructureModelId, 0x108f970c119L, 0x108f974c962L, "link"
    )
}
