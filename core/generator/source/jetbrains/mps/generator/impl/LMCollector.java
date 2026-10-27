/*
 * Copyright 2003-2026 JetBrains s.r.o.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package jetbrains.mps.generator.impl;

import jetbrains.mps.util.CollectConsumer;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.model.SNode;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Objects;
import java.util.Spliterator;
import java.util.Spliterators;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.stream.Stream;
import java.util.stream.Stream.Builder;
import java.util.stream.StreamSupport;

/**
 * Collector for labeled mappings recorded during transformations of a node inside a single thread.
 * The idea is to split GeneratorMappings into 2 pieces, collector and lookup code, where collectors could be multiple
 * and work per TEE, and flush into GM eventually for look up at reference resolution phase.
 * Perhaps, could address checkpoint scenarios where I don't need complete set of mappings recorded now in GM,
 * see GenerationSession, lastBigTransformStepMappings and uses of myStepArguments.mappingLabels.
 * @author Artem Tikhomirov
 */
/*package*/ final class LMCollector {
  /* mapping label, input[1] -> output[1..*] */
  private final Map<String, NodeMap> myMap = new HashMap<>();

  /*
   * there might be few conditional roots, and we can't prevent them from using same ML (not too much sense, however)
   */
  private final PairList<String, SNode> myConditionalRoots = new PairList<>();

  private final Map<KK, OneOrMany<SNode>> myCompositeLabels = new HashMap<>();

  private NodeMap map(String label) {
    return myMap.computeIfAbsent(label, s -> new NodeMap(10));
  }

  // assume label != null, input != null
  public void add(String label, SNode input, SNode output) {
    map(label).add(input, output);
  }

  // assume label != null, input != null, output != null
  public void add(String label, SNode input, Collection<SNode> output) {
    if (output.isEmpty()) {
      return;
    }
    map(label).add(input, output);
  }

  /*package*/void add(String label, NodeMap extraMap) {
    final NodeMap m = map(label);
    extraMap.forEachRecord(m::updateWith);
  }

  // assume label != null, output != null
  public void add(String label, SNode output) {
    myConditionalRoots.add(label, output);
  }

  public void addComposite(String label, SNode i1, SNode i2, Collection<SNode> out) {
    final OneOrMany<SNode> m = myCompositeLabels.computeIfAbsent(new KK(label, i1, i2), k -> new OneOrMany<>());
    m.add(out);
  }

  public void addComposite(final LabelRecord lr) {
    final OneOrMany<SNode> m = myCompositeLabels.computeIfAbsent(new KK(lr), k -> new OneOrMany<>());
    m.add(lr.values);
  }

  public boolean isEmpty() {
    return myMap.isEmpty() && myConditionalRoots.size() == 0 && myCompositeLabels.isEmpty();
  }

  public void clear() {
    myMap.clear();
    myConditionalRoots.clear();
    myCompositeLabels.clear();
  }

  public void forEachNoInput(BiConsumer<String, SNode> consumer) {
    myConditionalRoots.forEach(consumer);
  }

  public Stream<SNode> streamNoInput(String label) {
    return myConditionalRoots.stream(label);
  }

  public void forEachWithInput(BiConsumer<String, NodeMap> f) {
    myMap.forEach(f);
  }

  /*package*/ List<NodeMapRecord> allWithInput(String label) {
    NodeMap nm = myMap.get(label);
    if (nm == null) {
      return Collections.emptyList();
    }
    ArrayList<NodeMapRecord> result = new ArrayList<>();
    nm.forEachRecord(new CollectConsumer<>(result));
    return result;
  }

  // FIXME provisional, need to review access methods.
  // FIXME why on earth I stream map to compare its key?!
  /*package*/ Stream<NodeMap> streamWithInput(String label) {
    return myMap.entrySet().stream().filter(e -> Objects.equals(label, e.getKey())).map(Entry::getValue);
  }

  @Nullable
  public NodeMapRecord record(String label, SNode input) {
    final NodeMap nodeMap = myMap.get(label);
    if (nodeMap == null) {
      return null;
    }
    return nodeMap.get(input);
  }

  public void forEachComposite(Consumer<LabelRecord> consumer) {
    for (Entry<KK, OneOrMany<SNode>> e : myCompositeLabels.entrySet()) {
      final KK k = e.getKey();
      consumer.accept(new LabelRecord(k.label, k.k1, k.k2, e.getValue()));
    }
  }

  public Stream<LabelRecord> compositeKeyRecords(String label) {
    final Builder<LabelRecord> rv = Stream.builder();
    for (Entry<KK, OneOrMany<SNode>> e : myCompositeLabels.entrySet()) {
      final KK k = e.getKey();
      if (k.label.equals(label)) {
        rv.accept(new LabelRecord(k.label, k.k1, k.k2, e.getValue()));
      }
    }
    return rv.build();
  }

  public LMLookup getLookup(final String label) {
    return new LMLookup() {
      @Override
      public Stream<SNode> compositeLMValues(SNode k1, SNode k2) {
        return compositeKeyValues(label, k1, k2);
      }
    };
  }

  public Stream<SNode> compositeKeyValues(String label, SNode i1, SNode i2) {
    final OneOrMany<SNode> rv = myCompositeLabels.get(new KK(label, i1, i2));
    return rv == null ? Stream.empty() : rv.valueStream();
  }

  // TODO for the time being, we use LabelRecord for mappings with composite keys only
  //      Perhaps, shall refactor access API for all MLs to LabelRecords?
  public LabelRecord[] compositeLabelsToArray() {
    LabelRecord[] rv = new LabelRecord[myCompositeLabels.size()];
    int i = 0;
    for (Entry<KK, OneOrMany<SNode>> e : myCompositeLabels.entrySet()) {
      final KK k = e.getKey();
      rv[i++] = new LabelRecord(k.label, k.k1, k.k2, e.getValue());
    }
    return rv;
  }


  // both label and input != null
  /*public?*/ Stream<SNode> values(String label, SNode input) {
    final NodeMap nm = myMap.get(label);
    if (nm == null) {
      return Stream.empty();
    }
    final NodeMapRecord rec = nm.get(input);
    if (rec == null) {
      return Stream.empty();
    }
    return rec.valueStream();
  }

  private static final class KK {
    final String label;
    final SNode k1, k2;

    public KK(/*NotNull*/String label, SNode k1, SNode k2) {
      this.label = label;
      this.k1 = k1;
      this.k2 = k2;
    }

    public KK(/*NotNull*/LabelRecord lr) {
      this(lr.label, lr.key1, lr.key2);
    }

    @Override
    public int hashCode() {
      return label.hashCode() + Objects.hashCode(k1)*17 + Objects.hashCode(k2)*31;
    }

    @Override
    public boolean equals(Object obj) {
      if (obj instanceof KK) {
        KK o = (KK) obj;
        return label.equals(o.label) && Objects.equals(k1, o.k1) && Objects.equals(k2, o.k2);
      }
      return false;
    }
  }

  // 1 or more non-null values, grow only. Not thread-safe
  /*package*/ static final class OneOrMany<T> {
    private Object myValue; // look at myCount, not instanceof to know what to expect here. In theory, could have Object[10] here but myCount == 0;
    private int myCount;

    public OneOrMany() {
      myValue = null;
      myCount = 0;
    }

    public OneOrMany(T value) {
      assert value != null;
      myValue = value;
      myCount = 1;
    }

    public OneOrMany(Collection<T> value) {
      this();
      add(value);
    }

    public int count() {
      return myCount;
    }

    public T singleValue() {
      if (myCount != 1) {
        throw new UnsupportedOperationException();
      }
      return (T) myValue;
    }

    public Stream<T> valueStream() {
      if (myCount == 0) {
        return Stream.empty();
      }
      if (myCount == 1) {
        return Stream.of((T) myValue);
      }
      final Object[] vv = (Object[]) myValue;
      return StreamSupport.stream(Spliterators.spliterator(vv, 0, myCount, Spliterator.ORDERED | Spliterator.IMMUTABLE), false);
    }

    public void forEach(Consumer<? super T> c) {
      if (myCount == 0) {
        return;
      }
      if (myCount == 1) {
        c.accept((T) myValue);
      } else {
        final Object[] vv = (Object[]) myValue;
        for (int i = 0; i < myCount; i++) {
          c.accept((T) vv[i]);
        }
      }
    }

    private void eachInto(Object[] nv, int insertionIndex) {
      // vv.length shall be sufficient to fit count() elements starting from insertionIndex
      if (myCount == 0) {
        return;
      }
      if (myCount == 1) {
         nv[insertionIndex] = myValue;
      } else {
        final Object[] vv = (Object[]) myValue;
        for (int i = 0; i < myCount; i++, insertionIndex++) {
          nv[insertionIndex] = vv[i];
        }
      }
    }

    public void add(T value) {
      assert value != null;
      if (myCount == 0) {
        myValue = value;
        myCount++;
        return;
      }
      if (myCount == 1) {
        Object[] vv = new Object[6];
        vv[0] = myValue;
        vv[1] = value;
        myValue = vv;
        myCount = 2;
        return;
      }
      grow()[myCount++] = value;
    }

    public void add(Collection<T> value) {
      assert value != null;
      if (value.isEmpty()) {
        return;
      }
      if (myCount == 0) {
        if (value.size() == 1) {
          myValue = value.iterator().next();
        } else {
          // get some extra space right away
          myValue = value.toArray(new Object[value.size() + 10]);
          myCount = value.size();
        }
        myCount = value.size(); // we assume non-empty value here; don't want to end up with myValue:Object[] and myCount==0;
        return;
      }
      Object[] nv = new Object[myCount + value.size() + 10];
      if (myCount > 1) {
        Object[] vv = (Object[]) myValue;
        System.arraycopy(vv, 0, nv, 0, myCount);
      } else {
        assert myCount == 1;
        nv[0] = myValue;
      }
      value.forEach(o -> nv[myCount++] = o);
      myValue = nv;
    }

    /*package*/ void add(OneOrMany<T> other) {
      if (other.count() == 0) {
        return;
      }
      if (other.count() == 1) {
        add(other.singleValue());
        return;
      }
      final int together = myCount + other.count();
      Object[] nv = new Object[together + 10];
      eachInto(nv, 0);
      other.eachInto(nv, myCount);
      myValue = nv;
      myCount = together;
    }

    private Object[] grow() {
      Object[] vv = (Object[]) myValue;
      if (myCount < vv.length) {
        return vv;
      }
      // myCount actually == vv.length.
      int newLen;
      if (myCount < 100) {
        // while small, grow twice the current size
        newLen = myCount<<1;
      } else {
        // Grow half the size of current array
        newLen = myCount + (myCount>>1);
      }
      Object[] nv = new Object[newLen];
      System.arraycopy(vv, 0, nv, 0, myCount);
      myValue = nv;
      return nv;
    }
  }

  // replacement for ArrayList<Pair<K,V>>, grow only
  /*package*/ static final class PairList<K,V> {
    private Object[] myValues = new Object[8];
    private int myCount = 0;

    public void forEach(BiConsumer<K,V> consumer) {
      for (int i = 0; i < myCount; ) {
        final Object k = myValues[i++];
        final Object v = myValues[i++];
        consumer.accept((K)k, (V)v);
      }
    }

    /*?*/ Stream<V> stream(K key) {
      final Builder<V> builder = Stream.builder();
      for (int i = 0; i < myCount; ) {
        if (Objects.equals(key, myValues[i++])) {
          builder.accept((V) myValues[i]);
        }
        i++;
      }
      return builder.build();
    }

    public int size() {
      return myCount >> 1;
    }

    public void clear() {
      myValues = new Object[8];
      myCount = 0;
    }

    public void add(K k, V v) {
      final Object[] a = grow();
      a[myCount++] = k;
      a[myCount++] = v;
    }

    // grow to fit at least 2 new elements
    private Object[] grow() {
      if (myCount + 2 < myValues.length) {
        return myValues;
      }
      int newLen;
      if (myCount < 100) {
        // while small, grow twice the current size
        newLen = myCount<<1;
      } else {
        // Grow half the size of current array
        newLen = myCount + (myCount>>1); // the only case when newLen can get wrong is myCount == 2, but we don't get here then.
      }
      Object[] nv = new Object[newLen];
      System.arraycopy(myValues, 0, nv, 0, myCount);
      myValues = nv;
      return nv;
    }
  }
}
