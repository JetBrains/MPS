package jetbrains.mps.agents.mcp.tools.unit

import jetbrains.mps.agents.mcp.tools.common.withoutInvalidModule

import jetbrains.mps.persistence.PersistenceRegistry
import jetbrains.mps.project.ModuleId
import jetbrains.mps.project.structure.modules.ModuleReference
import jetbrains.mps.smodel.SModelId
import org.jetbrains.mps.openapi.model.SModelName
import org.jetbrains.mps.openapi.persistence.PersistenceFacade
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Assert.assertSame
import org.junit.BeforeClass
import org.junit.Test
import java.util.UUID

/**
 * Unit tests for [withoutInvalidModule] (study D121): a temporary model's reference with its `<moduleId>/` prefix
 * dropped keeps a name-only module reference that hides the model from resolution.
 */
class ModuleLessReferencesTest {

    companion object {
        @JvmStatic
        @BeforeClass
        fun bootstrap() {
            if (PersistenceFacade.getInstance() == null) {
                PersistenceRegistry(null, null).init()
            }
        }

        private val facade get() = PersistenceFacade.getInstance()
        private val moduleId = UUID.randomUUID().toString()
        private val modelUuid = UUID.randomUUID().toString()
        private const val NODE_ID = "6593896223933784931"
    }

    @Test
    fun `a node reference without the module id loses its name-only module`() {
        val prefixed = facade.createNodeReference("$moduleId/r:$modelUuid(TempModule$moduleId/ConsoleModel_1)/$NODE_ID")
        val stripped = facade.createNodeReference("r:$modelUuid(TempModule$moduleId/ConsoleModel_1)/$NODE_ID")
        assertEquals("the premise: the parsed module id is invalid", ModuleId.invalid(), stripped.modelReference!!.moduleReference!!.moduleId)

        val repaired = withoutInvalidModule(stripped)
        assertNull(repaired.modelReference!!.moduleReference)
        assertEquals(prefixed, repaired)
        assertEquals(prefixed.nodeId, repaired.nodeId)
        assertEquals("ConsoleModel_1", repaired.modelReference!!.name.value)
    }

    @Test
    fun `references that resolve today are returned unchanged`() {
        for (text in listOf(
            "$moduleId/r:$modelUuid(TempModule$moduleId/ConsoleModel_1)/$NODE_ID",
            "r:$modelUuid(my.model)/$NODE_ID",
        )) {
            val ref = facade.createNodeReference(text)
            assertSame(text, ref, withoutInvalidModule(ref))
        }
    }

    @Test
    fun `a model reference keeps its stereotype`() {
        val repaired = withoutInvalidModule(facade.createModelReference("r:$modelUuid(Mod/my.model@tests)"))
        assertNull(repaired.moduleReference)
        assertEquals(SModelName("my.model@tests"), repaired.name)
    }

    @Test
    fun `a model id that is not globally unique keeps its module`() {
        val ref = facade.createModelReference(ModuleReference("Mod", null), SModelId.IntegerSModelId(7), SModelName("m"))
        assertSame(ref, withoutInvalidModule(ref))
    }
}
