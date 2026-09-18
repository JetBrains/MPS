package jetbrains.mps.agents.mcp.tools

import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory

internal object BaseLanguageMeta {
    private val baseLanguageId = 0xf3061a5392264cc5uL.toLong()
    private val baseLanguageStructureModelId = 0xa443f952ceaf5816uL.toLong()
    private val coreLanguageId = 0xceab519525ea4f22uL.toLong()
    private val coreStructureModelId = 0x9b92103b95ca8c0cuL.toLong()

    internal val iYetUnresolvedConcept = MetaAdapterFactory.getInterfaceConcept(
        baseLanguageId, baseLanguageStructureModelId, 0x70ea1dc4c5721865L,
        "jetbrains.mps.baseLanguage.structure.IYetUnresolved"
    )
    internal val iFixableMethodReferenceConcept = MetaAdapterFactory.getInterfaceConcept(
        baseLanguageId, baseLanguageStructureModelId, 0x5a672f2d82ff2834L,
        "jetbrains.mps.baseLanguage.structure.IFixableMethodReference"
    )
    internal val iMethodCallConcept = MetaAdapterFactory.getInterfaceConcept(
        baseLanguageId, baseLanguageStructureModelId, 0x11857355952L,
        "jetbrains.mps.baseLanguage.structure.IMethodCall"
    )
    internal val iThisExpressionConcept = MetaAdapterFactory.getInterfaceConcept(
        baseLanguageId, baseLanguageStructureModelId, 0x11d206f8d91L,
        "jetbrains.mps.baseLanguage.structure.IThisExpression"
    )

    internal val anonymousClassConcept = MetaAdapterFactory.getConcept(
        baseLanguageId, baseLanguageStructureModelId, 0x1107e0cb103L,
        "jetbrains.mps.baseLanguage.structure.AnonymousClass"
    )
    internal val baseMethodDeclarationConcept = MetaAdapterFactory.getConcept(
        baseLanguageId, baseLanguageStructureModelId, 0xf8cc56b1fcL,
        "jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration"
    )
    internal val classConceptConcept = MetaAdapterFactory.getConcept(
        baseLanguageId, baseLanguageStructureModelId, 0xf8c108ca66L,
        "jetbrains.mps.baseLanguage.structure.ClassConcept"
    )
    internal val classCreatorConcept = MetaAdapterFactory.getConcept(
        baseLanguageId, baseLanguageStructureModelId, 0x11a59b0fbceL,
        "jetbrains.mps.baseLanguage.structure.ClassCreator"
    )
    internal val classifierConcept = MetaAdapterFactory.getConcept(
        baseLanguageId, baseLanguageStructureModelId, 0x101d9d3ca30L,
        "jetbrains.mps.baseLanguage.structure.Classifier"
    )
    internal val classifierTypeConcept = MetaAdapterFactory.getConcept(
        baseLanguageId, baseLanguageStructureModelId, 0x101de48bf9eL,
        "jetbrains.mps.baseLanguage.structure.ClassifierType"
    )
    internal val constructorDeclarationConcept = MetaAdapterFactory.getConcept(
        baseLanguageId, baseLanguageStructureModelId, 0xf8cc56b204L,
        "jetbrains.mps.baseLanguage.structure.ConstructorDeclaration"
    )
    internal val dotExpressionConcept = MetaAdapterFactory.getConcept(
        baseLanguageId, baseLanguageStructureModelId, 0x116b46a08c4L,
        "jetbrains.mps.baseLanguage.structure.DotExpression"
    )
    internal val fieldReferenceOperationConcept = MetaAdapterFactory.getConcept(
        baseLanguageId, baseLanguageStructureModelId, 0x116b483d77aL,
        "jetbrains.mps.baseLanguage.structure.FieldReferenceOperation"
    )
    internal val expressionStatementConcept = MetaAdapterFactory.getConcept(
        baseLanguageId, baseLanguageStructureModelId, 0xf8cc56b213L,
        "jetbrains.mps.baseLanguage.structure.ExpressionStatement"
    )
    internal val instanceMethodCallOperationConcept = MetaAdapterFactory.getConcept(
        baseLanguageId, baseLanguageStructureModelId, 0x118154a6332L,
        "jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation"
    )
    internal val instanceMethodDeclarationConcept = MetaAdapterFactory.getConcept(
        baseLanguageId, baseLanguageStructureModelId, 0xf8cc56b21dL,
        "jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration"
    )
    internal val javaImportConcept = MetaAdapterFactory.getConcept(
        baseLanguageId, baseLanguageStructureModelId, 0x64c0181e603bcfL,
        "jetbrains.mps.baseLanguage.structure.JavaImport"
    )
    internal val javaImportsConcept = MetaAdapterFactory.getConcept(
        baseLanguageId, baseLanguageStructureModelId, 0x53f7c33f069862f2L,
        "jetbrains.mps.baseLanguage.structure.JavaImports"
    )
    internal val localVariableDeclarationStatementConcept = MetaAdapterFactory.getConcept(
        baseLanguageId, baseLanguageStructureModelId, 0xf8cc67c7f0L,
        "jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement"
    )
    internal val privateVisibilityConcept = MetaAdapterFactory.getConcept(
        baseLanguageId, baseLanguageStructureModelId, 0x10af9586f0cL,
        "jetbrains.mps.baseLanguage.structure.PrivateVisibility"
    )
    internal val protectedVisibilityConcept = MetaAdapterFactory.getConcept(
        baseLanguageId, baseLanguageStructureModelId, 0x10af958b686L,
        "jetbrains.mps.baseLanguage.structure.ProtectedVisibility"
    )
    internal val publicVisibilityConcept = MetaAdapterFactory.getConcept(
        baseLanguageId, baseLanguageStructureModelId, 0x10af9581ff1L,
        "jetbrains.mps.baseLanguage.structure.PublicVisibility"
    )
    internal val statementListConcept = MetaAdapterFactory.getConcept(
        baseLanguageId, baseLanguageStructureModelId, 0xf8cc56b200L,
        "jetbrains.mps.baseLanguage.structure.StatementList"
    )
    internal val staticMethodDeclarationConcept = MetaAdapterFactory.getConcept(
        baseLanguageId, baseLanguageStructureModelId, 0xfbbebabf0aL,
        "jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration"
    )
    internal val variableDeclarationConcept = MetaAdapterFactory.getConcept(
        baseLanguageId, baseLanguageStructureModelId, 0xf8c37a7f6eL,
        "jetbrains.mps.baseLanguage.structure.VariableDeclaration"
    )

    internal val actualArgumentLink = MetaAdapterFactory.getContainmentLink(
        baseLanguageId, baseLanguageStructureModelId, 0x11857355952L, 0xf8c78301aeL, "actualArgument"
    )
    internal val annotationLink = MetaAdapterFactory.getContainmentLink(
        baseLanguageId, baseLanguageStructureModelId, 0x114a6be947aL, 0x114a6beb0bdL, "annotation"
    )
    internal val baseMethodDeclarationLink = MetaAdapterFactory.getReferenceLink(
        baseLanguageId, baseLanguageStructureModelId, 0x11857355952L, 0xf8c78301adL, "baseMethodDeclaration"
    )
    internal val bodyLink = MetaAdapterFactory.getContainmentLink(
        baseLanguageId, baseLanguageStructureModelId, 0xf8cc56b1fcL, 0xf8cc56b1ffL, "body"
    )
    internal val returnTypeLink = MetaAdapterFactory.getContainmentLink(
        baseLanguageId, baseLanguageStructureModelId, 0xf8cc56b1fcL, 0xf8cc56b1fdL, "returnType"
    )
    internal val throwsItemLink = MetaAdapterFactory.getContainmentLink(
        baseLanguageId, baseLanguageStructureModelId, 0xf8cc56b1fcL, 0x10f383d6949L, "throwsItem"
    )
    internal val typeVariableDeclarationLink = MetaAdapterFactory.getContainmentLink(
        baseLanguageId, baseLanguageStructureModelId, 0x102463b447aL, 0x102463bb98eL, "typeVariableDeclaration"
    )
    internal val classifierTypeClassifierLink = MetaAdapterFactory.getReferenceLink(
        baseLanguageId, baseLanguageStructureModelId, 0x101de48bf9eL, 0x101de490babL, "classifier"
    )
    internal val dotExpressionOperandLink = MetaAdapterFactory.getContainmentLink(
        baseLanguageId, baseLanguageStructureModelId, 0x116b46a08c4L, 0x116b46a4416L, "operand"
    )
    internal val dotExpressionOperationLink = MetaAdapterFactory.getContainmentLink(
        baseLanguageId, baseLanguageStructureModelId, 0x116b46a08c4L, 0x116b46b36c4L, "operation"
    )
    internal val fieldReferenceOperationFieldDeclarationLink = MetaAdapterFactory.getReferenceLink(
        baseLanguageId, baseLanguageStructureModelId, 0x116b483d77aL, 0x116b484a653L, "fieldDeclaration"
    )
    internal val anonymousClassClassifierLink = MetaAdapterFactory.getReferenceLink(
        baseLanguageId, baseLanguageStructureModelId, 0x1107e0cb103L, 0x1107e0fd2a0L, "classifier"
    )
    internal val expressionLink = MetaAdapterFactory.getContainmentLink(
        baseLanguageId, baseLanguageStructureModelId, 0xf8cc56b213L, 0xf8cc56b214L, "expression"
    )
    internal val initializerLink = MetaAdapterFactory.getContainmentLink(
        baseLanguageId, baseLanguageStructureModelId, 0xf8c37a7f6eL, 0xf8c37f506eL, "initializer"
    )
    internal val parameterLink = MetaAdapterFactory.getContainmentLink(
        baseLanguageId, baseLanguageStructureModelId, 0xf8cc56b1fcL, 0xf8cc56b1feL, "parameter"
    )
    internal val typeLink = MetaAdapterFactory.getContainmentLink(
        baseLanguageId, baseLanguageStructureModelId, 0x450368d90ce1522fL, 0x450368d90ce15230L, "type"
    )
    internal val visibilityLink = MetaAdapterFactory.getContainmentLink(
        baseLanguageId, baseLanguageStructureModelId, 0x112670d273fL, 0x112670d886aL, "visibility"
    )

    internal val nameProperty = MetaAdapterFactory.getProperty(
        coreLanguageId, coreStructureModelId, 0x110396eaaa4L, 0x110396ec041L, "name"
    )
    internal val instanceMethodDeclarationIsAbstractProperty = MetaAdapterFactory.getProperty(
        baseLanguageId, baseLanguageStructureModelId, 0xf8cc56b21dL, 0x1126a8d157dL, "isAbstract"
    )
    internal val isFinalProperty = MetaAdapterFactory.getProperty(
        baseLanguageId, baseLanguageStructureModelId, 0xf8cc56b1fcL, 0x113294bffd2L, "isFinal"
    )
    internal val isSynchronizedProperty = MetaAdapterFactory.getProperty(
        baseLanguageId, baseLanguageStructureModelId, 0xf8cc56b1fcL, 0x3b576cda23612c7aL, "isSynchronized"
    )
}
