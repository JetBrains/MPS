package jetbrains.mps.agents.mcp.tools.languages


import jetbrains.mps.core.aspects.behaviour.SMethodIdV2
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory

// jetbrains.mps.lang.structure meta objects, used to read a concept's properties and links off its
// ConceptDeclaration *node* instead of off the runtime SConcept adapter. A language that has been
// edited but not yet built has no runtime descriptor for the concept - SConcept.properties/
// containmentLinks/referenceLinks all come back empty (see LanguageReadiness) - so the declaration
// tree is the only source that is correct without an intervening make. That is the normal state while
// an agent is authoring a language: create a concept, then immediately write behavior methods over it.
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

    internal val abstractConceptDeclarationConcept = MetaAdapterFactory.getConcept(
        structureLanguageId, structureModelId, 0x1103553c5ffL,
        "jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration"
    )

    /** `AbstractConceptDeclaration.getAllSuperConcepts(boolean includeSelf)`: base method id, then the compressed language id. */
    internal val getAllSuperConceptsId =
        SMethodIdV2.create("getAllSuperConcepts", 2992811758677902956L, 0x44a456bea0df1cf0L)

    internal val iConceptAspectConcept = MetaAdapterFactory.getInterfaceConcept(
        structureLanguageId, structureModelId, 0x24614259e94f0c84L,
        "jetbrains.mps.lang.structure.structure.IConceptAspect"
    )

    /**
     * `IConceptAspect.getBaseConceptCollection()`: the concept declarations an aspect root is for.
     * The compressed language id is 0xc72da2b97cce4447 xor 0x8389f407dc1158b7.
     */
    internal val getBaseConceptCollectionId =
        SMethodIdV2.create("getBaseConceptCollection", 5270353093116013036L, 0x44a456bea0df1cf0L)

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

    internal val conceptDeclarationRootableProperty = MetaAdapterFactory.getProperty(
        structureLanguageId, structureModelId, 0xf979ba0450L, 0xff49c1d648L, "rootable"
    )
    internal val abstractConceptDeclarationAbstractProperty = MetaAdapterFactory.getProperty(
        structureLanguageId, structureModelId, 0x1103553c5ffL, 0x403a32c5772c7ec2L, "abstract"
    )
    internal val abstractConceptDeclarationAliasProperty = MetaAdapterFactory.getProperty(
        structureLanguageId, structureModelId, 0x1103553c5ffL, 0x46ab0ad5826c74caL, "conceptAlias"
    )
    internal val abstractConceptDeclarationShortDescriptionProperty = MetaAdapterFactory.getProperty(
        structureLanguageId, structureModelId, 0x1103553c5ffL, 0x403a32c5772bbe20L, "conceptShortDescription"
    )
    internal val propertyDeclarationDataTypeLink = MetaAdapterFactory.getReferenceLink(
        structureLanguageId, structureModelId, 0xf979bd086bL, 0xfc26f42fe5L, "dataType"
    )
    internal val linkDeclarationTargetLink = MetaAdapterFactory.getReferenceLink(
        structureLanguageId, structureModelId, 0xf979bd086aL, 0xf98055fef0L, "target"
    )
    internal val enumerationDeclarationConcept = MetaAdapterFactory.getConcept(
        structureLanguageId, structureModelId, 0x2e770ca32c607c5fL,
        "jetbrains.mps.lang.structure.structure.EnumerationDeclaration"
    )
    internal val enumerationDeclarationMembersLink = MetaAdapterFactory.getContainmentLink(
        structureLanguageId, structureModelId, 0x2e770ca32c607c5fL, 0x2e770ca32c607cc1L, "members"
    )
    internal val enumerationDeclarationDefaultMemberLink = MetaAdapterFactory.getReferenceLink(
        structureLanguageId, structureModelId, 0x2e770ca32c607c5fL, 0xeeb344f63fe016cL, "defaultMember"
    )
    internal val enumerationMemberPresentationProperty = MetaAdapterFactory.getProperty(
        structureLanguageId, structureModelId, 0x2e770ca32c607c60L, 0x9538e3a78561888L, "presentation"
    )

    /** `LinkMetaclass.aggregation` - a containment link, as opposed to `reference`. */
    internal const val LINK_METACLASS_AGGREGATION = 0xfc6f4e95b9L

    /** The two `Cardinality` members that hold at most one child: `0..1` and `1`. */
    internal const val CARDINALITY_OPTIONAL_SINGLE = 0xfc6f3944c3L
    internal const val CARDINALITY_SINGLE = 0xfc6f3944c4L
    internal const val CARDINALITY_OPTIONAL_MANY = 0xfc6f3944c5L
    internal const val CARDINALITY_MANY = 0xfc6f3944c6L
}
