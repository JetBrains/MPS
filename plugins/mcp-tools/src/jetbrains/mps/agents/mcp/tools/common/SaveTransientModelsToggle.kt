package jetbrains.mps.agents.mcp.tools.common

import jetbrains.mps.generator.IModifiableGenerationSettings

/**
 * Runs [block] with the global save-transient-models setting set to [requested], restoring the
 * previous value when [block] returns, throws or is cancelled. There is no per-make API for the
 * flag: the make facet copies the global value into its options. A null [requested] or a value equal
 * to the current one leaves the setting untouched.
 */
internal suspend fun <T> withSaveTransientModels(
    settings: IModifiableGenerationSettings,
    requested: Boolean?,
    block: suspend () -> T,
): T {
    if (requested == null || settings.isSaveTransientModels == requested) {
        return block()
    }
    val previous = settings.isSaveTransientModels
    settings.isSaveTransientModels = requested
    try {
        return block()
    } finally {
        settings.isSaveTransientModels = previous
    }
}
