/*
 * Copyright 2000-2026 JetBrains s.r.o. Use of this source code is governed by the Apache 2.0 license that can be found in the LICENSE file.
 */
package jetbrains.mps.generator.impl;

import jetbrains.mps.generator.impl.LMCollector.PairList;
import org.bouncycastle.jcajce.provider.asymmetric.LMS;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.model.SNode;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashSet;
import java.util.List;
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
}
