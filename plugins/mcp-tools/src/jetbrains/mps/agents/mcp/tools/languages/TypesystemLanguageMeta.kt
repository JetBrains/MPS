package jetbrains.mps.agents.mcp.tools.languages


import jetbrains.mps.core.aspects.behaviour.SMethodIdV2
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory

internal object TypesystemLanguageMeta {
    private val typesystemLanguageId = 0x7a5dda6291404668uL.toLong()
    private val typesystemStructureModelId = 0xab76d5ed1746f2b2uL.toLong()

    // The compressed language id behavior method ids carry: 0x7a5dda6291404668 xor 0xab76d5ed1746f2b2.
    private val typesystemCompressedId = 0xd12b0f8f8606b4dauL.toLong()

    internal val abstractRuleConcept = MetaAdapterFactory.getConcept(
        typesystemLanguageId, typesystemStructureModelId, 0x1117e7b5c73L,
        "jetbrains.mps.lang.typesystem.structure.AbstractRule"
    )
    internal val iRuleWithTwoNodesConcept = MetaAdapterFactory.getInterfaceConcept(
        typesystemLanguageId, typesystemStructureModelId, 0x3e3c1137fe6cb779L,
        "jetbrains.mps.lang.typesystem.structure.IRuleWithTwoNodes"
    )
    internal val applicableNodeConditionConcept = MetaAdapterFactory.getConcept(
        typesystemLanguageId, typesystemStructureModelId, 0x1117e29d976L,
        "jetbrains.mps.lang.typesystem.structure.ApplicableNodeCondition"
    )
    internal val patternConditionConcept = MetaAdapterFactory.getConcept(
        typesystemLanguageId, typesystemStructureModelId, 0x1117e2c3e68L,
        "jetbrains.mps.lang.typesystem.structure.PatternCondition"
    )
    internal val overloadedOpRulesContainerConcept = MetaAdapterFactory.getConcept(
        typesystemLanguageId, typesystemStructureModelId, 0x11fd137d047L,
        "jetbrains.mps.lang.typesystem.structure.OverloadedOpRulesContainer"
    )

    internal val abstractRuleApplicableNodeLink = MetaAdapterFactory.getContainmentLink(
        typesystemLanguageId, typesystemStructureModelId, 0x1117e7b5c73L, 0x1117e7b9c40L, "applicableNode"
    )
    internal val overloadedOpRulesContainerRuleLink = MetaAdapterFactory.getContainmentLink(
        typesystemLanguageId, typesystemStructureModelId, 0x11fd137d047L, 0x11fd1380ea2L, "rule"
    )
    internal val abstractOverloadedOpsTypeRuleOperationConceptLink = MetaAdapterFactory.getContainmentLink(
        typesystemLanguageId, typesystemStructureModelId, 0x70bfdafbb2c9449bL, 0x70bfdafbb2c9449dL, "operationConcept"
    )

    /** `ApplicableNodeCondition.getApplicableConcept()`: a `ConceptReference`'s concept, a `PatternCondition`'s quoted node's concept. */
    internal val getApplicableConceptId = SMethodIdV2.create("getApplicableConcept", 1213877307633L, typesystemCompressedId)

    /** `IRuleWithTwoNodes.getSecondNodeCondition()`: `ComparisonRule.anotherNode`, `InequationReplacementRule.supertypeNode`. */
    internal val getSecondNodeConditionId = SMethodIdV2.create("getSecondNodeCondition", 4484478261143583672L, typesystemCompressedId)
}
