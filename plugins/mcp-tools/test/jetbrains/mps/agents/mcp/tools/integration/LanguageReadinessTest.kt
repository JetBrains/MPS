package jetbrains.mps.agents.mcp.tools.integration

import jetbrains.mps.agents.mcp.tools.common.AbstractOps.Companion.getCardinality
import jetbrains.mps.agents.mcp.tools.common.AbstractOps.Companion.structureQualifiedName
import jetbrains.mps.agents.mcp.tools.common.ConceptReadiness
import jetbrains.mps.agents.mcp.tools.common.LanguageReadiness
import jetbrains.mps.agents.mcp.tools.languages.ConceptDeclarationView
import jetbrains.mps.smodel.SNodeUtil
import jetbrains.mps.smodel.adapter.MetaAdapterByDeclaration
import jetbrains.mps.smodel.language.LanguageRegistry
import org.jetbrains.mps.openapi.language.SAbstractConcept
import org.jetbrains.mps.openapi.language.SConcept
import org.jetbrains.mps.openapi.language.SEnumeration
import jetbrains.mps.smodel.adapter.structure.types.SPrimitiveTypes
import org.jetbrains.mps.openapi.language.SNamedElement
import org.jetbrains.mps.openapi.persistence.PersistenceFacade
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * The D112 classifier and the declaration view it falls back to. The fixture language is never
 * built, which is the `NoRuntime` state; the bundled languages are built, which lets the view be
 * checked against the runtime field by field.
 */
class LanguageReadinessTest : McpIntegrationTestBase() {

    @Test
    fun `a declared concept of the never-built fixture language is NoRuntime and names its module`() {
        val name = "ReadinessProbe${System.nanoTime()}"
        createConceptRoot(name)
        val readiness = readOnRepo {
            val decl = structureModel.rootNodes.single { it.name == name }
            LanguageReadiness.of(MetaAdapterByDeclaration.getConcept(decl), decl, myProject)
        }
        assertTrue("got $readiness", readiness is ConceptReadiness.NotBuilt.NoRuntime)
        val notBuilt = readiness as ConceptReadiness.NotBuilt
        assertEquals(readOnRepo { language.moduleName }, notBuilt.languageName)
        val details = LanguageReadiness.languageBuildDetails(notBuilt)
        assertEquals("no_runtime", details["status"])
        @Suppress("UNCHECKED_CAST")
        val recovery = details["recovery"] as Map<String, Any?>
        assertEquals("mps_mcp_alter_nodes", recovery["tool"])
        @Suppress("UNCHECKED_CAST")
        val parameters = recovery["parameters"] as Map<String, Any?>
        assertEquals(true, parameters["rebuild"])
        assertEquals(listOf(details["module"]), parameters["modules"])
        assertTrue(LanguageReadiness.recoverySentence(notBuilt).contains("changes no model"))
    }

    @Test
    fun `a bundled built concept is Ready and an invented id in a built language is Undeclared`() {
        val (ready, undeclared) = readOnRepo {
            val base = SNodeUtil.concept_BaseConcept
            val bogus = PersistenceFacade.getInstance()
                .createConcept("c:18bc6592-03a6-4e29-a83a-7ff23bde13ba/9999999999:jetbrains.mps.lang.editor.structure.BogusConcept")
            LanguageReadiness.of(base, base.sourceNode?.resolve(myProject.repository), myProject) to
                LanguageReadiness.of(bogus, null, myProject)
        }
        assertEquals(ConceptReadiness.Ready, ready)
        assertEquals(ConceptReadiness.Undeclared, undeclared)
    }

    @Test
    fun `the declaration view agrees with the built runtime for every concept of lang structure and lang core`() {
        // Parity over bundled languages: enum properties, interfaces and abstract/rootable flags occur in
        // jetbrains.mps.lang.structure; jetbrains.mps.lang.behavior has specialized links (`declaration`
        // specializes `baseMethodDeclaration`), which the runtime exposes as the genuine link.
        val mismatches = readOnRepo {
            val repo = myProject.repository
            val registry = LanguageRegistry.getInstance(repo)
            val problems = mutableListOf<String>()
            var compared = 0
            for (languageName in listOf("jetbrains.mps.lang.structure", "jetbrains.mps.lang.core", "jetbrains.mps.lang.behavior")) {
                val runtime = registry.allLanguages.firstOrNull { it.qualifiedName == languageName }?.let { registry.getLanguage(it) }
                    ?: error("$languageName has no runtime in the test environment")
                for (concept in runtime.concepts) {
                    val declaration = concept.sourceNode?.resolve(repo) ?: continue
                    val view = ConceptDeclarationView.of(declaration) ?: continue
                    compared++
                    compare(concept, view, repo, problems)
                }
            }
            assertTrue("parity must compare a real sample; compared $compared", compared > 50)
            problems
        }
        assertTrue("declaration view disagrees with the runtime:\n" + mismatches.joinToString("\n"), mismatches.isEmpty())
    }

    @Test
    fun `query_types refuses a concept operand of the never-built fixture language`() {
        val name = "TypesProbe${System.nanoTime()}"
        createConceptRoot(name)
        val fqn = readOnRepo { structureModel.name.longName + "." + name }
        val response = runTool(jetbrains.mps.agents.mcp.tools.JetBrainsMPSTypesMcpToolset()) {
            it.mps_mcp_query_types(
                "IS_SUBTYPE",
                jetbrains.mps.agents.mcp.tools.common.JsonOrText("""{"sub":{"typeConceptRef":"$fqn"},"super":{"typeConceptRef":"jetbrains.mps.lang.core.structure.BaseConcept"}}"""),
            )
        }
        expectLanguageNotBuilt(response, readOnRepo { language })
    }

    @Test
    fun `an existing node of an unbuilt concept is reported with conceptLoaded false and refused for SET PROPERTY`() {
        val conceptName = "StoredProbe${System.nanoTime()}"
        createConceptRoot(conceptName, implements = "jetbrains.mps.lang.core.structure.INamedConcept")
        val rootName = "StoredRoot${System.nanoTime()}"
        val rootRef = run {
            var ref = ""
            executeCommand {
                val decl = structureModel.rootNodes.single { it.name == conceptName }
                val node = jetbrains.mps.smodel.SNode(MetaAdapterByDeclaration.getConcept(decl) as org.jetbrains.mps.openapi.language.SConcept)
                node.setProperty(SNodeUtil.property_INamedConcept_name, rootName)
                structureModel.addRootNode(node)
                ref = PersistenceFacade.getInstance().asString(node.reference)
            }
            ref
        }
        try {
            val found = runTool(jetbrains.mps.agents.mcp.tools.JetBrainsMPSRootNodeMcpToolset()) {
                it.mps_mcp_search_root_node_by_name(
                    names = jetbrains.mps.agents.mcp.tools.common.JsonOrText(rootName),
                    scope = "models",
                    models = jetbrains.mps.agents.mcp.tools.common.JsonOrText(structureModelRef),
                )
            }
            val record = payloadArrayFromOkData(found).map { it.asJsonObject }.single { it.get("reference").asString == rootRef }
            assertEquals("the stored name, not the fail-safe presentation: $record", rootName, record.get("name").asString)
            assertFalse(record.get("name").asString.contains("concept is not found"))
            assertFalse("conceptLoaded must be false: $record", record.get("conceptLoaded").asBoolean)

            val set = runTool(jetbrains.mps.agents.mcp.tools.JetBrainsMPSNodeMcpToolset()) {
                it.mps_mcp_update_node(operation = "SET", kind = "PROPERTY", properties = listOf(listOf(rootRef, "name", "Renamed")))
            }
            // SET PROPERTY answers a batch: one envelope per triplet.
            expectLanguageNotBuilt(com.google.gson.JsonParser.parseString(set).asJsonObject.getAsJsonArray("data").single().toString(), readOnRepo { language })
        } finally {
            executeCommand {
                structureModel.rootNodes.firstOrNull { PersistenceFacade.getInstance().asString(it.reference) == rootRef }?.let { structureModel.removeRootNode(it) }
            }
        }
    }

    private fun compare(concept: SAbstractConcept, view: ConceptDeclarationView, repo: org.jetbrains.mps.openapi.module.SRepository, problems: MutableList<String>) {
        val fqn = structureQualifiedName(concept)
        fun check(field: String, expected: Any?, actual: Any?) {
            if (expected != actual) problems.add("$fqn.$field: runtime=$expected declaration=$actual")
        }
        check("qualifiedName", fqn, view.qualifiedName)
        check("conceptReference", PersistenceFacade.getInstance().asString(concept), view.conceptReference())
        check("isAbstract", concept.isAbstract, view.isAbstract)
        check("isRootable", (concept as? SConcept)?.isRootable ?: false, view.isRootable)
        check("conceptAlias", concept.conceptAlias ?: "", view.conceptAlias)
        check("shortDescription", concept.shortDescription ?: "", view.shortDescription)
        check(
            "superConcept",
            (concept as? SConcept)?.superConcept?.let { PersistenceFacade.getInstance().asString(it) } ?: "",
            view.superConceptDeclaration?.let { PersistenceFacade.getInstance().asString(MetaAdapterByDeclaration.getConcept(it)) } ?: "",
        )
        check(
            "superInterfaces",
            concept.superInterfaces.map { PersistenceFacade.getInstance().asString(it) }.toSet(),
            view.superInterfaceDeclarations.map { PersistenceFacade.getInstance().asString(MetaAdapterByDeclaration.getConcept(it)) }.toSet(),
        )
        val runtimeProperties = concept.properties.associate { p ->
            val type = p.type
            val typeName = when (type) {
                SPrimitiveTypes.STRING -> "string"
                SPrimitiveTypes.INTEGER -> "integer"
                SPrimitiveTypes.BOOLEAN -> "boolean"
                is SNamedElement -> type.name ?: "unknown"
                else -> "unknown"
            }
            val literals = (type as? SEnumeration)?.literals?.map { it.name ?: it.presentation }
            val default = (type as? SEnumeration)?.default?.let { it.name ?: it.presentation }
            p.name to Triple(typeName, literals, default)
        }
        val viewProperties = view.properties.associate { it.name to Triple(it.typeName, it.enumerationValues, it.enumerationDefault) }
        check("properties", runtimeProperties, viewProperties)
        check(
            "properties.featureId",
            concept.properties.associate { it.name to jetbrains.mps.smodel.adapter.ids.MetaIdHelper.getProperty(it).serialize() },
            view.properties.associate { it.name to it.featureId },
        )
        check(
            "children",
            concept.containmentLinks.associate { it.name to (structureQualifiedName(it.targetConcept) to getCardinality(it)) },
            view.containmentLinks.associate { it.role to (it.target?.let { t -> structureQualifiedName(MetaAdapterByDeclaration.getConcept(t)) } to it.cardinality) },
        )
        check(
            "references",
            concept.referenceLinks.associate { it.name to (structureQualifiedName(it.targetConcept) to getCardinality(it)) },
            view.referenceLinks.associate { it.role to (it.target?.let { t -> structureQualifiedName(MetaAdapterByDeclaration.getConcept(t)) } to it.cardinality) },
        )
        check(
            "children.featureId",
            concept.containmentLinks.associate { it.name to jetbrains.mps.smodel.adapter.ids.MetaIdHelper.getAggregation(it).serialize() },
            view.containmentLinks.associate { it.role to it.featureId },
        )
        check(
            "references.featureId",
            concept.referenceLinks.associate { it.name to jetbrains.mps.smodel.adapter.ids.MetaIdHelper.getAssociation(it).serialize() },
            view.referenceLinks.associate { it.role to it.featureId },
        )
        assertNotNull(repo)
        assertFalse(fqn.isEmpty())
    }
}
