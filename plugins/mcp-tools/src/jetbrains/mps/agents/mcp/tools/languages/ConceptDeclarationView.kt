package jetbrains.mps.agents.mcp.tools.languages

import jetbrains.mps.lang.smodel.generator.smodelAdapter.SEnumOperations
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations
import jetbrains.mps.smodel.Language
import jetbrains.mps.smodel.SNodeUtil
import jetbrains.mps.smodel.adapter.MetaAdapterByDeclaration
import jetbrains.mps.smodel.adapter.ids.MetaIdByDeclaration
import org.jetbrains.mps.openapi.language.SAbstractConcept
import org.jetbrains.mps.openapi.language.SLanguage
import org.jetbrains.mps.openapi.model.SNode
import org.jetbrains.mps.openapi.persistence.PersistenceFacade

/**
 * A concept record read off its `ConceptDeclaration` / `InterfaceConceptDeclaration` node instead of
 * the runtime adapter, for a language whose runtime is not built or does not know the concept yet
 * (D112). Inherited features and super concepts come from `jetbrains.mps.lang.structure`'s own
 * behavior ([StructureDeclarations.allSuperConceptDeclarations]), so the view agrees with a built
 * runtime's record field by field. Create and read inside one read action.
 */
internal class ConceptDeclarationView private constructor(val declaration: SNode, val concept: SAbstractConcept) {
    class Property(val declaration: SNode, val name: String, val typeName: String, val enumerationValues: List<String>?, val enumerationDefault: String?, val featureId: String)
    class Link(val declaration: SNode, val role: String, val target: SNode?, val cardinality: String, val featureId: String)

    val isInterface: Boolean = SNodeOperations.isInstanceOf(declaration, StructureLanguageMeta.interfaceConceptDeclarationConcept)
    val module: Language? = declaration.model?.module as? Language
    val language: SLanguage = module?.let { MetaAdapterByDeclaration.getLanguage(it) } ?: concept.language
    val name: String = declaration.name ?: ""
    val qualifiedName: String = (declaration.model?.name?.longName ?: language.qualifiedName + ".structure") + "." + name
    val isAbstract: Boolean = isInterface || declaration.getProperty(StructureLanguageMeta.abstractConceptDeclarationAbstractProperty) == "true"
    val isRootable: Boolean = !isInterface && declaration.getProperty(StructureLanguageMeta.conceptDeclarationRootableProperty) == "true"
    val conceptAlias: String = declaration.getProperty(StructureLanguageMeta.abstractConceptDeclarationAliasProperty) ?: ""
    val shortDescription: String = declaration.getProperty(StructureLanguageMeta.abstractConceptDeclarationShortDescriptionProperty) ?: ""
    val virtualFolder: String = declaration.getProperty(SNodeUtil.property_BaseConcept_virtualPackage) ?: ""

    /** The directly extended concept declaration; BaseConcept when a concept declares none; null for an interface and for BaseConcept itself. */
    val superConceptDeclaration: SNode? = when {
        isInterface -> null
        else -> declaration.getReference(StructureLanguageMeta.conceptDeclarationExtendsLink)?.targetNode
            ?: declaration.model?.repository?.let { SNodeUtil.concept_BaseConcept.sourceNode?.resolve(it) }?.takeIf { it !== declaration }
    }

    /** Directly implemented (concept) or extended (interface) interface declarations. */
    val superInterfaceDeclarations: List<SNode> =
        StructureDeclarations.superConceptDeclarations(declaration).filter { it !== superConceptDeclaration }

    private val allSupers: List<SNode> by lazy { StructureDeclarations.allSuperConceptDeclarations(declaration, includeSelf = true) }

    val properties: List<Property> by lazy {
        allSupers.flatMap { it.getChildren(StructureLanguageMeta.propertyDeclarationLink) }.distinct().map { propertyView(it) }
    }

    private val links: List<Link> by lazy {
        val all = allSupers.flatMap { it.getChildren(StructureLanguageMeta.linkDeclarationLink) }.distinct()
        // As the compiled descriptor does: the genuine link is the feature (role, id, cardinality,
        // target); a specializing link adds no feature of its own.
        all.filter { !StructureDeclarations.isSpecializing(it) }.map { linkView(it) }
    }
    val containmentLinks: List<Link> by lazy { links.filter { StructureDeclarations.isAggregation(it.declaration) } }
    val referenceLinks: List<Link> by lazy { links.filter { !StructureDeclarations.isAggregation(it.declaration) } }

    fun conceptReference(): String = PersistenceFacade.getInstance().asString(concept)
    fun languageReference(): String = PersistenceFacade.getInstance().asString(language)
    fun sourceNodeReference(): String = PersistenceFacade.getInstance().asString(declaration.reference)

    private fun propertyView(propDecl: SNode): Property {
        val dataType = propDecl.getReference(StructureLanguageMeta.propertyDeclarationDataTypeLink)?.targetNode
        val isEnum = dataType != null && SNodeOperations.isInstanceOf(dataType, StructureLanguageMeta.enumerationDeclarationConcept)
        val members = if (isEnum) dataType!!.getChildren(StructureLanguageMeta.enumerationDeclarationMembersLink).toList() else emptyList()
        val default = if (isEnum) dataType!!.getReference(StructureLanguageMeta.enumerationDeclarationDefaultMemberLink)?.targetNode else null
        return Property(
            propDecl,
            propDecl.name ?: "",
            dataType?.name ?: "unknown",
            if (isEnum) members.map { memberLabel(it) } else null,
            default?.let { memberLabel(it) },
            MetaIdByDeclaration.getPropId(propDecl).serialize(),
        )
    }

    private fun memberLabel(member: SNode): String =
        member.name ?: member.getProperty(StructureLanguageMeta.enumerationMemberPresentationProperty) ?: ""

    private fun linkView(linkDecl: SNode): Link {
        val aggregation = StructureDeclarations.isAggregation(linkDecl)
        val cardinality = SPropertyOperations.getEnum(linkDecl, StructureLanguageMeta.linkDeclarationSourceCardinalityProperty)
        val cardinalityText = when {
            SEnumOperations.isMember(cardinality, StructureLanguageMeta.CARDINALITY_SINGLE) -> "1"
            !aggregation -> "0..1"
            SEnumOperations.isMember(cardinality, StructureLanguageMeta.CARDINALITY_MANY) -> "1..n"
            SEnumOperations.isMember(cardinality, StructureLanguageMeta.CARDINALITY_OPTIONAL_MANY) -> "0..n"
            else -> "0..1"
        }
        val featureId = if (aggregation) MetaIdByDeclaration.getLinkId(linkDecl).serialize() else MetaIdByDeclaration.getRefRoleId(linkDecl).serialize()
        return Link(
            linkDecl,
            linkDecl.getProperty(StructureLanguageMeta.linkDeclarationRoleProperty) ?: "",
            linkDecl.getReference(StructureLanguageMeta.linkDeclarationTargetLink)?.targetNode,
            cardinalityText,
            featureId,
        )
    }

    companion object {
        /** The view for a concept declaration node, or null when [node] is not one. */
        fun of(node: SNode?): ConceptDeclarationView? {
            val concept = StructureDeclarations.conceptOf(node) ?: return null
            return ConceptDeclarationView(node!!, concept)
        }
    }
}
