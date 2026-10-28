package jetbrains.mps.agents.mcp.tools.common

import jetbrains.mps.project.ModuleId
import jetbrains.mps.smodel.SNodePointer
import org.jetbrains.mps.openapi.model.SModelReference
import org.jetbrains.mps.openapi.model.SNodeReference
import org.jetbrains.mps.openapi.persistence.PersistenceFacade

/**
 * Study D121: a temporary (e.g. console) model prints as `<moduleId>/r:<uuid>(<moduleName>/<model>)`. Without the
 * `<moduleId>/` prefix the `<moduleName>/` part still parses into a module reference, one with an invalid id, and
 * `SModelReference.resolve` then looks that module up instead of the model id and finds nothing. A globally unique
 * model id needs no module, so such a module reference is dropped. (A reference in this state prints as
 * `invalid-module-id/r:…`; the repair runs right after parsing, so that form is never echoed.)
 */
internal fun withoutInvalidModule(ref: SModelReference): SModelReference {
    if (ref.moduleReference?.moduleId != ModuleId.invalid() || !ref.modelId.isGloballyUnique) return ref
    return PersistenceFacade.getInstance().createModelReference(null, ref.modelId, ref.name)
}

/** [withoutInvalidModule] for the model part of a node reference. */
internal fun withoutInvalidModule(ref: SNodeReference): SNodeReference {
    val modelRef = ref.modelReference ?: return ref
    val repaired = withoutInvalidModule(modelRef)
    return if (repaired === modelRef) ref else SNodePointer(repaired, ref.nodeId)
}
