package jetbrains.mps.agents.mcp.tools

import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory

internal object BehaviorLanguageMeta {
    private val behaviorLanguageId = 0xaf65afd8f0dd4942uL.toLong()
    private val behaviorStructureModelId = 0x87d963a55f2a9db1uL.toLong()

    internal val conceptBehaviorConcept = MetaAdapterFactory.getConcept(
        behaviorLanguageId, behaviorStructureModelId, 0x11d43447b1aL,
        "jetbrains.mps.lang.behavior.structure.ConceptBehavior"
    )
    internal val conceptMethodDeclarationConcept = MetaAdapterFactory.getConcept(
        behaviorLanguageId, behaviorStructureModelId, 0x11d4348057eL,
        "jetbrains.mps.lang.behavior.structure.ConceptMethodDeclaration"
    )
    internal val thisNodeExpressionConcept = MetaAdapterFactory.getConcept(
        behaviorLanguageId, behaviorStructureModelId, 0x11d434b5be1L,
        "jetbrains.mps.lang.behavior.structure.ThisNodeExpression"
    )

    internal val conceptBehaviorConceptLink = MetaAdapterFactory.getReferenceLink(
        behaviorLanguageId, behaviorStructureModelId, 0x11d43447b1aL, 0x11d43447b1fL, "concept"
    )

    internal val isVirtualProperty = MetaAdapterFactory.getProperty(
        behaviorLanguageId, behaviorStructureModelId, 0x11d4348057eL, 0x11d43480580L, "isVirtual"
    )
    internal val isAbstractProperty = MetaAdapterFactory.getProperty(
        behaviorLanguageId, behaviorStructureModelId, 0x11d4348057eL, 0x11d43480582L, "isAbstract"
    )
    internal val isStaticProperty = MetaAdapterFactory.getProperty(
        behaviorLanguageId, behaviorStructureModelId, 0x11d4348057eL, 0x51613f7fe129b24dL, "isStatic"
    )
}
