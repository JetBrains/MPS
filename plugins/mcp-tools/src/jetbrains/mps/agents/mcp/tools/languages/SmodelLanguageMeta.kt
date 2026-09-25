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
