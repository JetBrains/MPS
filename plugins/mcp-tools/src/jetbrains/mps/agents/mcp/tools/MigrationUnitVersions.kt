package jetbrains.mps.agents.mcp.tools

import jetbrains.mps.agents.mcp.tools.common.AbstractOps.McpErrorCode
import jetbrains.mps.agents.mcp.tools.common.AbstractOps.McpUserException
import jetbrains.mps.core.aspects.behaviour.AccessPrivileges
import jetbrains.mps.core.aspects.behaviour.SMethodBuilder
import jetbrains.mps.core.aspects.behaviour.api.SMethod
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SModuleOperations
import jetbrains.mps.smodel.Language
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory
import org.jetbrains.mps.openapi.language.SInterfaceConcept
import org.jetbrains.mps.openapi.model.SNode
import org.jetbrains.mps.openapi.persistence.PersistenceFacade

/**
 * Mirrors `MigrationsCheckUtil.checkMigrationsVersions` without a module dependency on the migration
 * language. `MigrationScript` and `PureMigrationScript` declare different `fromVersion` properties, so
 * the version is read through the virtual `IMigrationUnit` behavior methods (ids copied from
 * `IMigrationUnit__BehaviorDescriptor`).
 */
internal object MigrationUnitVersions {
    private val LANGUAGE_ID_HIGH = 0x9074634404fd4286uL.toLong()
    private val LANGUAGE_ID_LOW = 0x97d5b46ae6a81709uL.toLong()
    private const val VIRTUAL_ABSTRACT = 12

    private val migrationUnitConcept: SInterfaceConcept = MetaAdapterFactory.getInterfaceConcept(
        LANGUAGE_ID_HIGH, LANGUAGE_ID_LOW, 0x47bb811da2acc4d6L,
        "jetbrains.mps.lang.migration.structure.IMigrationUnit",
    )

    data class Problem(val unit: String, val reference: String, val concept: String, val problem: String)

    class Analysis(
        val unitCount: Int,
        /** Null when no unit carries a version. */
        val maxFromVersion: Int?,
        /** Everything `checkMigrationsVersions` reports except the language-version mismatch. */
        val problems: List<Problem>,
        val noOpReason: String?,
    )

    fun analyze(language: Language): Analysis {
        val aspect = SModuleOperations.getAspect(language, "migration")
            ?: return Analysis(0, null, emptyList(), "The language has no `migration` aspect model, so there is " +
                "no migration script to derive a version from; the version was left unchanged.")
        if (!aspect.isLoaded) {
            aspect.load()
        }
        val roots = aspect.rootNodes.toList()
        val units = roots.filter { it.concept.isSubConceptOf(migrationUnitConcept) }
        if (units.isEmpty()) {
            val content = if (roots.isEmpty()) "has no root nodes" else "has ${roots.size} root node(s), none of them a migration unit"
            return Analysis(0, null, emptyList(), "The `migration` aspect $content, so there is nothing to derive " +
                "a version from; the version was left unchanged.")
        }

        val fromVersion = behaviorMethod(Integer.TYPE, "fromVersion", 5168866961621042645L)
        val isVersionSet = behaviorMethod(java.lang.Boolean.TYPE, "isVersionSet", 5168866961621097742L)

        val problems = mutableListOf<Problem>()
        val versioned = mutableListOf<Pair<SNode, Int>>()
        for (unit in units) {
            if (invoke(isVersionSet, unit)) {
                versioned.add(unit to invoke(fromVersion, unit))
            } else {
                problems.add(problem(unit, "Script does not have version"))
            }
        }
        if (versioned.isEmpty()) {
            return Analysis(units.size, null, problems, "No migration script has a `fromVersion`, so there is " +
                "nothing to derive a version from; the version was left unchanged.")
        }

        val countByVersion = versioned.groupingBy { it.second }.eachCount()
        val minVersion = countByVersion.keys.min()
        for ((unit, version) in versioned) {
            if (countByVersion.getValue(version) > 1) {
                problems.add(problem(unit, "Multiple scripts for version $version found"))
            }
            if (version != minVersion && (version - 1) !in countByVersion) {
                problems.add(problem(unit, "Missing script for version ${version - 1}"))
            }
        }
        return Analysis(units.size, countByVersion.keys.max(), problems, null)
    }

    private fun <T : Any> invoke(method: SMethod<T>, unit: SNode): T {
        val result: T? = try {
            method.invoke(unit)
        } catch (e: RuntimeException) {
            throw McpUserException(McpErrorCode.INTERNAL_ERROR, evaluationFailure(method, unit, e.toString()))
        }
        return result ?: throw McpUserException(
            McpErrorCode.INTERNAL_ERROR,
            evaluationFailure(method, unit, "the behavior method returned null"),
        )
    }

    private fun evaluationFailure(method: SMethod<*>, unit: SNode, cause: String): String =
        "Could not evaluate IMigrationUnit.${method.name}() on '${displayName(unit)}' (${unit.concept.name}): $cause"

    private fun <T> behaviorMethod(returnType: Class<T>, name: String, baseMethodId: Long): SMethod<T> =
        SMethodBuilder(returnType)
            .name(name)
            .modifiers(VIRTUAL_ABSTRACT, AccessPrivileges.PUBLIC)
            .concept(migrationUnitConcept)
            .baseMethodId(baseMethodId)
            .languageId(LANGUAGE_ID_LOW, LANGUAGE_ID_HIGH)
            .build2()

    private fun displayName(unit: SNode): String = unit.name ?: unit.presentation

    private fun problem(unit: SNode, message: String) = Problem(
        unit = displayName(unit),
        reference = PersistenceFacade.getInstance().asString(unit.reference),
        concept = unit.concept.name,
        problem = message,
    )
}
