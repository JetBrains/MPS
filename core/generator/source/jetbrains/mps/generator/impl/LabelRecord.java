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

import jetbrains.mps.generator.impl.GeneratorMappings.SNodeComparator;
import jetbrains.mps.generator.impl.LMCollector.OneOrMany;
import org.jetbrains.mps.openapi.model.SNode;

import java.util.Comparator;

/**
 *
 * @author Artem Tikhomirov
 * @since 2020.3
 */
/*package*/ final class LabelRecord extends LabelRecordBase<SNode, SNode> {
  final boolean composite;

  LabelRecord(/*NotNull*/ String label, SNode in, /*NotNull*/ OneOrMany<SNode> out) {
    super(label, in, null, out);
    composite = false;
  }

  LabelRecord(/*NotNull*/ String label, SNode in1, SNode in2, /*NotNull*/ OneOrMany<SNode> out) {
    super(label, in1, in2, out);
    composite = true;
  }

  /*package*/ static Comparator<LabelRecord> comparator() {
    return new Comparator<LabelRecord>() {
      private final SNodeComparator myNodeComparator = new SNodeComparator();

      @Override
      public int compare(LabelRecord o1, LabelRecord o2) {
        int v = o1.label.compareTo(o2.label);
        if (v == 0) {
          v = myNodeComparator.compare(o1.key1, o2.key1);
          if (v == 0) {
            v = myNodeComparator.compare(o1.key2, o2.key2);
            // I don't care to compare outputs as I do for regular MLs, I'd like to notice
            // duplicating key pairs ASAP.
          }
        }
        return v;
      }
    };
  }
}
