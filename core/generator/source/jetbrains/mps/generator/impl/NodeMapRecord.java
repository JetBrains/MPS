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
import org.jetbrains.mps.openapi.model.SNode;

import java.util.Collection;
import java.util.Comparator;
import java.util.Spliterator;
import java.util.Spliterators;
import java.util.stream.Stream;
import java.util.stream.StreamSupport;

/**
 * {@code MapMultiRecord<I,O> i[1..2], o[1..*]}
 * @author Artem Tikhomirov
 * @since 2020.3
 */
public final class NodeMapRecord {
  private final SNode myInputNode;
  private Object myOutputValue = null;
  private int myCount = 0;

  // neither inputNode nor outputNode are null
  /*package*/ NodeMapRecord(SNode inputNode, SNode outputNode) {
    myInputNode = inputNode;
    myOutputValue = outputNode;
    myCount = 1;
  }

  // neither inputNode nor outputNode are null
  /*package*/ NodeMapRecord(SNode inputNode, Collection<SNode> outputNode) {
    myInputNode = inputNode;
    update(outputNode);
  }

  /*package*/ void update(SNode value) {
    assert value != null;
    if (myCount == 0) {
      myOutputValue = value;
      myCount++;
      return;
    }
    if (myCount == 1) {
      if (myOutputValue != value) {
        // FIXME this code mimics logic that used to be in GM.addOutputNodeByInputNodeAndMappingName.
        // E.g. SWITCH aaa ML registers output with a label second time after reduction rule from aaa have applied template
        // and registered label based on TC inputName. In fact, I believe it's trySwitch that is wrong, e.g. tryToReduce doesn't
        // register any mappings based on TC inputName.
        Object[] vv = new Object[6];
        vv[0] = myOutputValue;
        vv[1] = value;
        myOutputValue = vv;
        myCount = 2;
      }
      return;
    }
    grow()[myCount++] = value;
  }

  /*package*/ void update(Collection<SNode> value) {
    assert value != null;
    final int size = value.size();
    if (size == 0) {
      return;
    }
    if (myCount == 0) {
      if (size == 1) {
        myOutputValue = value.iterator().next();
      } else {
        // get some extra space right away
        myOutputValue = value.toArray(new Object[size + 10]);
      }
      myCount = size; // we assume non-empty value here; don't want to end up with myValue:Object[] and myCount==0;
      return;
    }
    Object[] nv = new Object[myCount + size + 10];
    if (myCount > 1) {
      Object[] vv = (Object[]) myOutputValue;
      System.arraycopy(vv, 0, nv, 0, myCount);
    } else {
      assert myCount == 1;
      nv[0] = myOutputValue;
    }
    value.forEach(o -> nv[myCount++] = o);
    myOutputValue = nv;
  }

  private Object[] grow() {
    Object[] vv = (Object[]) myOutputValue;
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
    myOutputValue = nv;
    return nv;
  }


  /*package*/ boolean keyMatch(SNode other) {
    return other == myInputNode;
  }

  public int count() {
    return myCount;
  }

  public SNode key() {
    return myInputNode;
  }

  /*public?*/Object value() {
    assert myCount > 0;
    return myOutputValue;
  }

  /*public?*/ SNode soleValue() {
    assert myCount == 1;
    return (SNode) myOutputValue;
  }

  /*public?*/ Stream<SNode> valueStream() {
    if (myCount == 0) {
      return Stream.empty();
    }
    if (myCount == 1) {
      return Stream.of(soleValue());
    }
    final Object[] vv = (Object[]) myOutputValue;
    return StreamSupport.stream(Spliterators.spliterator(vv, 0, myCount, Spliterator.ORDERED | Spliterator.IMMUTABLE), false);
  }

  /*package*/ <T extends Collection<SNode>> T valuesInto(T dest) {
    if (myCount == 0) {
      return dest;
    }
    if (myCount == 1) {
      dest.add((SNode) myOutputValue);
      return dest;
    }
    Object[] vv = (Object[]) myOutputValue;
    for (int i = 0; i < myCount; i++) {
      dest.add((SNode) vv[i]);
    }
    return dest;
  }

  /*package*/ static Comparator<NodeMapRecord> comparator() {
    return new Comparator<>() {
      private final SNodeComparator myNodeComparator = new SNodeComparator();

      @Override
      public int compare(NodeMapRecord o1, NodeMapRecord o2) {
        int v = myNodeComparator.compare(o1.key(), o2.key());
        if (v == 0) {
          // input node is the same (or indistinguishable), have to respect values to keep order consistent.
          // E.g. a pattern in a typesystem rule is copied to to different methods, there are two output classes
          // Pattern_nn7be_a0a0a0b0d and Pattern_nn7be_a0a0a0c, and label entry order is inconsistent
          v = String.valueOf(o1.value()).compareTo(String.valueOf(o2.value()));
          if (v == 0) {
            // last resort, address scenario when input nodes were copied, and processed individually. Treat the one
            // that served as a master one 'first', its copies 'subsequent'. Guess the master by node id matching the one
            // of the original node.
            final boolean b1 = SNodeComparator.nodeIdSameAsOriginal(o1.key());
            final boolean b2 = SNodeComparator.nodeIdSameAsOriginal(o2.key());
            if (b1 ^ b2) {
              v = b1 ? -1 : 1;
            }
            // fall-through
          }
        }
        return v;
      }

    };
  }
}
