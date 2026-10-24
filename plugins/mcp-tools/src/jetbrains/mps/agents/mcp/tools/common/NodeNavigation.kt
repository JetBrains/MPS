package jetbrains.mps.agents.mcp.tools.common

import jetbrains.mps.smodel.Language
import jetbrains.mps.smodel.ModuleRepositoryFacade
import org.jetbrains.mps.openapi.model.SNode
import org.jetbrains.mps.openapi.module.SRepository

/** This node is [root] or lies below it. */
internal fun SNode.isInSubtreeOf(root: SNode): Boolean = generateSequence(this) { it.parent }.any { it == root }

/**
 * The roots of the aspect model [modelName] (`<language>.<aspect>`) of a language in [repository], e.g. the model a
 * generated `<language>.<aspect>.<Name>` class came from; empty when no loaded language owns such a model.
 */
internal fun aspectModelRoots(repository: SRepository, modelName: String, aspect: String): Sequence<SNode> =
    ModuleRepositoryFacade(repository).getModulesByName(modelName.removeSuffix(".$aspect")).asSequence()
        .filterIsInstance<Language>()
        .flatMap { it.models.asSequence() }
        .filter { it.name.longName == modelName }
        .flatMap { it.rootNodes.asSequence() }
