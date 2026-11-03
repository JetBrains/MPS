/*
 * Copyright 2000-2026 JetBrains s.r.o. Use of this source code is governed by the Apache 2.0 license that can be found in the LICENSE file.
 */
package jetbrains.mps.generator.impl;

import jetbrains.mps.generator.impl.LMCollector.PairList;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SNode;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashSet;
import java.util.List;
import java.util.Objects;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.stream.Stream;

/**
 * Snapshot of {@link LMCollector}. Unlike the collector, optimized to accumulate labels during transformation process,
 * this class represents its state that can survive few steps for later consumption in checkpoint models.
 */
/*package*/ final class LMSnapshot {

  private final List<LabelRecordBase<InputKeyRecord, SNode>> myWithInputs;
  private final PairList<String, SNode> myConditionalRoots;
  private final List<LabelRecordBase<InputKeyRecord, SNode>> myWithCompositeInputs;

  LMSnapshot(@NotNull List<LabelRecordBase<InputKeyRecord, SNode>> withInputs, @NotNull PairList<String, SNode> conditionalRoots, @NotNull List<LabelRecordBase<InputKeyRecord, SNode>> withCompositeInputs) {
    myConditionalRoots = conditionalRoots;
    myWithInputs = withInputs;
    myWithCompositeInputs = withCompositeInputs;
  }

  public void forEachWithInput(Comparator<LabelRecordBase<InputKeyRecord, SNode>> comparator, Consumer<LabelRecordBase<InputKeyRecord, SNode>> consumer) {
    var l = new ArrayList<>(myWithInputs);
    l.sort(comparator);
    l.forEach(consumer);
  }

  public void forEachConditionalRoot(BiConsumer<String, Stream<SNode>> consumer) {
//    LinkedHashSet<String> conditionalRootLabels = new LinkedHashSet<>();
    HashSet<String> conditionalRootLabels = new HashSet<>(); // FIXME would be nice to have it explicitly sorted, but that triggers
    // reordering in a lot of checkpoint models (250+ diff tests failing), shall do it together with some other change
    myConditionalRoots.forEach((l, nm) -> conditionalRootLabels.add(l));
    for (String label : conditionalRootLabels) {
      consumer.accept(label, myConditionalRoots.stream(label));
    }
  }

  public void forEachCompositeInput(Comparator<LabelRecordBase<InputKeyRecord, SNode>> comparator, Consumer<LabelRecordBase<InputKeyRecord, SNode>> consumer) {
    var l = new ArrayList<>(myWithCompositeInputs);
    l.sort(comparator);
    l.forEach(consumer);
  }

  // sort of implies nodes in this snapshot are already for actualModel and don't need re-mapping
  public LMSnapshot merge(@NotNull final LMSnapshot older, @NotNull final SModel actualModel) {
    PairList<String, SNode> ccr = myConditionalRoots.copy();
    older.myConditionalRoots.forEach((l, nm) -> {
      SNode copiedRoot = actualModel.getNode(nm.getNodeId());
      if (copiedRoot != null) {
        // if root is in the last model, add record unless there's already record for the label.
        // seems that we can keep multiple (label, conditionalRoot) pairs, and findAny().isEmpty() here
        // is just a dumb way not to deal with possible duplicates now. I.e. imagine 2 conditional roots under same ML,
        // one added at transformStep1, another at transformStep2. Now I don't copy the one from
        // transformStep1 (findAny.isEmpty == false), although used to do that with GM. Is that right?
        if (myConditionalRoots.stream(l).findAny().isEmpty()) {
          ccr.add(l, copiedRoot);
        }
      }

    });
    //
    final var wi = new ArrayList<>(myWithInputs);
    for (LabelRecordBase<InputKeyRecord, SNode> o : older.myWithInputs) {
      if (o.values.count() != 1) {
        // intentionally do not care about multiple outputs, just don't want to project multiple outputs into actual transient model,
        // and it's of no real use anyway as we don't restore x-model references in case there are multiple outputs.
        continue;
      }
      SNode copiedOutput = actualModel.getNode(o.values.singleValue().getNodeId());
      if (copiedOutput == null) {
        continue;
      }
      // FIXME indeed M x N iteration isn't nice, but not the thing I'm focused on right now
      boolean hasLM4Input = false;
      for (LabelRecordBase<InputKeyRecord, SNode> a : myWithInputs) {
        // there's already labeled transformation for the same input node, no reason to override with value from previous steps
        if (!Objects.equals(a.label, o.label)) {
          continue;
        }
        if (!sameKey(a.key1, o.key1)) {
          continue;
        }
        hasLM4Input = true;
        break;
      }
      if (!hasLM4Input) {
        wi.add(new LabelRecordBase<>(o.label, o.key1, null, copiedOutput));
      }
    }
    // FIXME what about composite labels here? Why don't we merge them?
    return new LMSnapshot(wi, ccr, new ArrayList<>(myWithCompositeInputs));
  }

  private static boolean sameKey(InputKeyRecord a, InputKeyRecord b) {
    // used to be NodeMap.containsKey(), which relied on SNode ===, and equals(a.inputNode, b.inputNode) seems fai replacement, yet
    // I want to see if I can use not immediate node that server LM input, but rather the one it originates from
    return Objects.equals(a.inputNodeId, b.inputNodeId) && Objects.equals(a.inputNodeName, b.inputNodeName) && Objects.equals(a.originNode, b.originNode);
  }
}
