package jetbrains.mps.agents.mcp.tools

import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory

internal object JavadocLanguageMeta {
    private val javadocLanguageId = 0xf280165065d5424euL.toLong()
    private val javadocStructureModelId = 0xbb1b463a8781b786uL.toLong()

    internal val methodDocCommentConcept = MetaAdapterFactory.getConcept(
        javadocLanguageId, javadocStructureModelId, 0x4a3c146b7faeeb34L,
        "jetbrains.mps.baseLanguage.javadoc.structure.MethodDocComment"
    )
}
