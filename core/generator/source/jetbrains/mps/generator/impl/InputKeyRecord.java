/*
 * Copyright 2000-2026 JetBrains s.r.o. Use of this source code is governed by the Apache 2.0 license that can be found in the LICENSE file.
 */
package jetbrains.mps.generator.impl;

import jetbrains.mps.extapi.model.TransientSModel;
import jetbrains.mps.generator.impl.plan.CrossModelEnvironment;
import jetbrains.mps.smodel.SNodeUtil;
import jetbrains.mps.textgen.trace.TracingUtil;
import jetbrains.mps.util.ToStringComparator;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SModelReference;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeId;
import org.jetbrains.mps.openapi.model.SNodeReference;

import java.util.Comparator;
import java.util.Objects;

/**
 * Captures everything {@code CP_InputNode} and {@code GeneratorDebug_InputNode} need to know about LM's input node.
 * In certain sense, opposite of {@link InputKeyIdentity}, represents key value for serialization side of key persistence story.
 */
public final class InputKeyRecord {
  // LM's input node, verbatim (as is)
  final SNodeReference inputNode;
  // with respect to traced origin, i.e. not necessarily == inputNode.getNodeId()
  final SNodeId inputNodeId;
  final String inputNodeName;
  final SModelReference inputModel;
  @Nullable
  final SNodeReference originNode;
  /*
   * original input node is recorded for a top template node only, if a child template node serves as a ML key, we can't
   * find its input here unless traverse to parent.
   * high-level sample: 'Car' is transformed with map_EditorDeclaration to ConceptEditorDeclaration with child CellModel_Collection, that
   * later serves as a key for 'cellFactory.factoryMethod' ML. Presentation for any CellModel_Collection is 'collection', and as long as it's
   * child template node of map_EditorDeclaration template, it doesn't get original input value (map_EditorDeclaration does).
   *
   * Note, if originNode != null, nearestOrigin == originNode
   */
  @Nullable
  final SNodeReference nearestOrigin;

  private InputKeyRecord(SNodeReference inputNode, SNodeId inputNodeId, String inputNodeName, @Nullable SModelReference inputModel, @Nullable SNodeReference originNode, @Nullable SNodeReference nearestOrigin) {
    this.inputNode = inputNode;
    this.inputNodeId = inputNodeId;
    this.inputNodeName = inputNodeName;
    // XXX in fact, we already have MR as part of inputNode, however, for now we use it as an indication whether to use complete node-ptr of inputNode or not,
    //     just like we did before, to evolve gradually. Might need to refactor later.
    this.inputModel = inputModel;
    this.originNode = originNode;
    this.nearestOrigin = nearestOrigin;
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
    SNodeReference nearestOrigin = origin;
    SNode p = key.getParent();
    while (nearestOrigin == null && p != null) {
      nearestOrigin = TracingUtil.getInput(p);
      p = p.getParent();
    }
    // XXX perhaps, counting origin depth could help comparator, too.
    //     Depth was implicitly in original SNodeComparator due to iteration over 2 parent hierarchies simultaneously.
    //     Now I want to try without it - after all, it's not quite an attribute of "input node/key" itself, rather of its use.
    return new InputKeyRecord(key.getReference(), inputNodeId, SNodeUtil.getPresentation(key), mr, origin, nearestOrigin);
  }

  private static boolean isCheckpointModel(SModel m)  {
    // CP models may be exposed as transients; we need to keep references to CP models
    // Need better condition than just model attribute, though.
    return CrossModelEnvironment.isCheckpointModel(m);
  }

  /*package*/ boolean nodeIdSameAsOriginal() {
    // == GeneratorMappings.SNodeComparator#nodeIdSameAsOriginal(SNode)
    return originNode != null && Objects.equals(originNode.getNodeId(), inputNode.getNodeId());
  }

  public static Comparator<InputKeyRecord> comparator() {
    // an attempt to keep same order as GeneratorMappings.SNodeComparator
    return new Comparator<>() {
      private final Comparator<String> c1 = Comparator.nullsFirst(Comparator.naturalOrder());
      private final ToStringComparator c2 = new ToStringComparator();
      @Override
      public int compare(InputKeyRecord r1, InputKeyRecord r2) {
        int v = Objects.compare(r1.inputNodeName, r2.inputNodeName, c1);
        if (v == 0) {
          if (r1.nearestOrigin == null && r2.nearestOrigin == null) {
            v = 0;
          } else if (r1.nearestOrigin != null && r2.nearestOrigin != null) {
            // XXX well, we know for sure smodel.SNodeId is Comparable, yet to preserve order of existing models,
            //     use toString(). (Regular/long comparison yields different results)
            v = c2.compare(r1.nearestOrigin.getNodeId(), r2.nearestOrigin.getNodeId());
          } else {
            v = r1.nearestOrigin == null ? -1 : 1;
          }
        }
        return v;
      }
    };
  }
}
