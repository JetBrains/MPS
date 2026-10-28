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

import jetbrains.mps.generator.impl.LMCollector.OneOrMany;

import java.util.Collection;
import java.util.function.Consumer;
import java.util.stream.Stream;

/**
 * FIXME Made public just for the sake of MappingsMemento from .cache package, need to re-arrange all the classes
 *       (perhaps, stop using MM and introduce a new class))
 * @author Artem Tikhomirov
 * @since 2020.3
 */
/*package*/ public class LabelRecordBase<K,V> {
  final String label;
  final K key1;
  final K key2;
  // out/values are kept by reference, I assume they don't get modified, just accessed.
  final OneOrMany<V> values;

  /*package*/ LabelRecordBase(String label, K in1, K in2, OneOrMany<V> out) {
    this.label = label;
    this.key1 = in1;
    this.key2 = in2;
    this.values = out;
  }

  public LabelRecordBase(String label, K in1, K in2, V out) {
    this(label, in1, in2, new OneOrMany<>(out));
  }

  public LabelRecordBase(String label, K in1, K in2, Collection<V> out) {
    this(label, in1, in2, new OneOrMany<>(out));
  }

  public void forEachValue(Consumer<? super V> consumer) {
    values.forEach(consumer);
  }

  public Stream<V> streamValues() {
    return values.valueStream();
  }
}
