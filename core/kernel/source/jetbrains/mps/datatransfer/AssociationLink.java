/*
 * Copyright 2000-2022 JetBrains s.r.o. Use of this source code is governed by the Apache 2.0 license that can be found in the LICENSE file.
 */
package jetbrains.mps.datatransfer;

import org.jetbrains.mps.openapi.language.SReferenceLink;
import org.jetbrains.mps.openapi.model.ResolveInfo;
import org.jetbrains.mps.openapi.model.SNode;

import java.util.Map;

/**
 * Captures information about association link necessary to perform copy/paste operation
 * @author Artem Tikhomirov
 */
public abstract class AssociationLink {
  private final SNode mySource;
  private final SReferenceLink myLink;

  public SNode source() {
    return mySource;
  }

  public SReferenceLink link() {
    return myLink;
  }

  private AssociationLink(SNode n, SReferenceLink l) {
    mySource = n;
    myLink = l;
  }

  /**
   * @param sourceNodesToNewNodes maps nodes links originate from to nodes that constitute actual copy being inserted. Generally, link sources (recorded
   *                              in source() present in the map, except for rare scenarios when e.g. CopyPreProcessor replaced a node we've got
   *                              AssociationLink recorded for (CopyPasteUtil first creates set of nodes, then records their associations, then let
   *                              CopyPreProcessor to mangle node hierarchy, potentially replacing some link sources. BL_CopyPasteHandlers_CopyPreProcessor_0
   *                              for VariableReference does this)
   * @return {@code true} to indicate reference might need re-resolve according to scopes
   */
  public abstract boolean establish(Map<SNode, SNode> sourceNodesToNewNodes);

  public static AssociationLink create(SReferenceLink link, SNode source, SNode target) {
    return new AssociationLink(source, link) {
      final SNode myTarget = target;

      @Override
      public boolean establish(Map<SNode, SNode> sourceNodesToNewNodes) {
        final SNode newSourceNode = sourceNodesToNewNodes.get(source());
        final SNode newTargetNode = sourceNodesToNewNodes.get(myTarget);
        if (newTargetNode != null) {
          newSourceNode.setReferenceTarget(link(), newTargetNode);
        } else {
          newSourceNode.setReferenceTarget(link, myTarget);
        }
        return false;
      }
    };
  }

  public static AssociationLink create(SReferenceLink link, SNode source, ResolveInfo target) {
    return create(link, source, target, /* requireResolve = */ true);
  }

  /**
   * @param requireResolve when {@code false}, the reference keeps exactly the target described by {@code target} and is
   *                       <em>not</em> re-resolved by name on paste; pass {@code false} for references to importable
   *                       (root) nodes so a same-named node already present in the target model does not silently steal
   *                       the reference (MPS-39034). When {@code true}, the reference is re-resolved within its new scope
   *                       (the historical behaviour, e.g. for scoped/local targets such as variables).
   *                       <p>
   *                       Callers passing {@code false} must supply a <em>persistent, pointer-backed</em> {@code target}
   *                       (e.g. {@code ResolveInfo.of(SNodeReference, String)}) rather than a live-node
   *                       {@code ResolveInfo} ({@code ResolveInfo.of(SNode)}), so the recorded target stays valid across
   *                       the (separate) copy and paste actions.
   * @return {@code requireResolve}, indicating whether the reference should be re-resolved according to scopes after paste
   */
  public static AssociationLink create(SReferenceLink link, SNode source, ResolveInfo target, boolean requireResolve) {
    return new AssociationLink(source, link) {
      final ResolveInfo myTarget = target;

      @Override
      public boolean establish(Map<SNode, SNode> sourceNodesToNewNodes) {
        final SNode newSourceNode = sourceNodesToNewNodes.get(source());
        newSourceNode.setReference(link(), myTarget);
        return requireResolve;
      }
    };
  }
}
