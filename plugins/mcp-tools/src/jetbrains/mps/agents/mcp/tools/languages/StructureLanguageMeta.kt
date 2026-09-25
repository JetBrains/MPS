package jetbrains.mps.agents.mcp.tools.languages


import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory

// jetbrains.mps.lang.structure meta objects, used to read a concept's properties and links off its
// ConceptDeclaration *node* instead of off the runtime SConcept adapter. A language that has been
// edited but not yet built has a hollow runtime descriptor - SConcept.properties/containmentLinks/
// referenceLinks all come back empty (see AbstractOps.isHollowDescriptor) - so the declaration tree
// is the only source that is correct without an intervening make. That is the normal state while an
// agent is authoring a language: create a concept, then immediately write behavior methods over it.
internal object StructureLanguageMeta {
    private val structureLanguageId = 0xc72da2b97cce4447uL.toLong()
    private val structureModelId = 0x8389f407dc1158b7uL.toLong()

    internal val conceptDeclarationConcept = MetaAdapterFactory.getConcept(
        structureLanguageId, structureModelId, 0xf979ba0450L,
        "jetbrains.mps.lang.structure.structure.ConceptDeclaration"
    )
    internal val interfaceConceptDeclarationConcept = MetaAdapterFactory.getConcept(
        structureLanguageId, structureModelId, 0x1103556dcafL,
        "jetbrains.mps.lang.structure.structure.InterfaceConceptDeclaration"
    )

    internal val propertyDeclarationLink = MetaAdapterFactory.getContainmentLink(
        structureLanguageId, structureModelId, 0x1103553c5ffL, 0xf979c3ba6cL, "propertyDeclaration"
    )
    internal val linkDeclarationLink = MetaAdapterFactory.getContainmentLink(
        structureLanguageId, structureModelId, 0x1103553c5ffL, 0xf979c3ba6bL, "linkDeclaration"
    )
    internal val conceptDeclarationExtendsLink = MetaAdapterFactory.getReferenceLink(
        structureLanguageId, structureModelId, 0xf979ba0450L, 0xf979be93cfL, "extends"
    )
    internal val conceptDeclarationImplementsLink = MetaAdapterFactory.getContainmentLink(
        structureLanguageId, structureModelId, 0xf979ba0450L, 0x110358d693eL, "implements"
    )
    internal val interfaceConceptDeclarationExtendsLink = MetaAdapterFactory.getContainmentLink(
        structureLanguageId, structureModelId, 0x1103556dcafL, 0x110356e9df4L, "extends"
    )
    internal val interfaceConceptReferenceIntfcLink = MetaAdapterFactory.getReferenceLink(
        structureLanguageId, structureModelId, 0x110356fc618L, 0x110356fe029L, "intfc"
    )
    internal val linkDeclarationSpecializedLinkLink = MetaAdapterFactory.getReferenceLink(
        structureLanguageId, structureModelId, 0xf979bd086aL, 0xf98051c244L, "specializedLink"
    )

    internal val linkDeclarationRoleProperty = MetaAdapterFactory.getProperty(
        structureLanguageId, structureModelId, 0xf979bd086aL, 0xf98052f333L, "role"
    )
    internal val linkDeclarationMetaClassProperty = MetaAdapterFactory.getProperty(
        structureLanguageId, structureModelId, 0xf979bd086aL, 0xf980556927L, "metaClass"
    )
    internal val linkDeclarationSourceCardinalityProperty = MetaAdapterFactory.getProperty(
        structureLanguageId, structureModelId, 0xf979bd086aL, 0xf98054bb04L, "sourceCardinality"
    )

    /** `LinkMetaclass.aggregation` - a containment link, as opposed to `reference`. */
    internal const val LINK_METACLASS_AGGREGATION = 0xfc6f4e95b9L

    /** The two `Cardinality` members that hold at most one child: `0..1` and `1`. */
    internal const val CARDINALITY_OPTIONAL_SINGLE = 0xfc6f3944c3L
    internal const val CARDINALITY_SINGLE = 0xfc6f3944c4L
}
