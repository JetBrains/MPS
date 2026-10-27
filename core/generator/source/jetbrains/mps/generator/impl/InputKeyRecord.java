/*
 * Copyright 2000-2026 JetBrains s.r.o. Use of this source code is governed by the Apache 2.0 license that can be found in the LICENSE file.
 */
package jetbrains.mps.generator.impl;

import jetbrains.mps.extapi.model.TransientSModel;
import jetbrains.mps.generator.impl.plan.CrossModelEnvironment;
import jetbrains.mps.smodel.SNodeUtil;
import jetbrains.mps.textgen.trace.TracingUtil;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SModelReference;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeId;
import org.jetbrains.mps.openapi.model.SNodeReference;

/**
 * Captures everything {@code CP_InputNode} and {@code GeneratorDebug_InputNode} need to know about LM's input node.
 * In certain sense, opposite of {@link InputKeyIdentity}, represents key value for serialization side of key persistence story.
 */
public final class InputKeyRecord {
  final SNodeReference inputNode;
  // with respect to traced origin, i.e. not necessarily == inputNode.getNodeId()
  final SNodeId inputNodeId;
  final String inputNodeName;
  final SModelReference inputModel;
  final SNodeReference originNode;

  private InputKeyRecord(SNodeReference inputNode, SNodeId inputNodeId, String inputNodeName, @Nullable SModelReference inputModel, @Nullable SNodeReference originNode) {
    this.inputNode = inputNode;
    this.inputNodeId = inputNodeId;
    this.inputNodeName = inputNodeName;
    // XXX in fact, we already have MR as part of inputNode, however, for now we use it as an indication whether to use complete node-ptr of inputNode or not,
    //     just like we did before, to evolve gradually. Might need to refactor later.
    this.inputModel = inputModel;
    this.originNode = originNode;
  }

  /*package*/ static InputKeyRecord of(@NotNull SNode key, @NotNull TransitionTrace originTrace) {
    SNodeId inputNodeId = originTrace.hasOrigin(key) ? originTrace.getOrigin(key) : key.getNodeId();
    SModel inputNodeModel = key.getModel();
    final SModelReference mr;
    // in fact, inputNodeModel when keyInputNode is from the same model is unlikely to be checkpoint, we need its counterpart
    // from originTrace's checkpoint model, but I have no idea how to get one here.
    if (inputNodeModel != null && (isCheckpointModel(inputNodeModel) || !(inputNodeModel instanceof TransientSModel))) {
      // no reason to save reference to a model that would be disposed and eventually break the reference
      mr = inputNodeModel.getReference();
    } else {
      mr = null;
    }
    SNodeReference origin = TracingUtil.getInput(key);
    return new InputKeyRecord(key.getReference(), inputNodeId, SNodeUtil.getPresentation(key), mr, origin);
  }

  private static boolean isCheckpointModel(SModel m)  {
    // CP models may be exposed as transients; we need to keep references to CP models
    // Need better condition than just model attribute, though.
    return CrossModelEnvironment.isCheckpointModel(m);
  }
}
