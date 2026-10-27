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

import gnu.trove.THash;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.model.SNode;

import java.util.ArrayList;
import java.util.Collection;
import java.util.function.Consumer;

/**
 * Augmentation-only list of {@link NodeMapRecord}, hashed by their {@link NodeMapRecord#key() keys}
 * @author Artem Tikhomirov
 * @since 2020.3
 */
public final class NodeMap extends THash {
  private NodeMapRecord[] _set;

  public NodeMap(int initialCapacity) {
    super(initialCapacity <= 0 ? 8 : initialCapacity); // don't want to bother with EMPTY_OBJECT_ARRAY
  }

  @Override
  protected int setUp(int initialCapacity) {
    // don't like to override methods invoked from cons
    final int cap = super.setUp(initialCapacity);
    _set = new NodeMapRecord[cap];
    return cap;
  }

  public void add(SNode input, SNode output) {
    assert input != null;
    assert output != null;

    int index = index(input);
    if (index != -1) {
      NodeMapRecord existing = _set[index];
      existing.update(output);
      return;
    }
    index = insertionIndex(input);
    if (index < 0) {
      throw new IllegalStateException();
    } else {
      _set[index] = new NodeMapRecord(input, output);
      postInsertHook(true);
    }
  }

  public void add(SNode input, Collection<SNode> output) {
    assert input != null;
    assert output != null;
    if (output.isEmpty()) {
      return;
    }

    int index = index(input);
    if (index != -1) {
      NodeMapRecord existing = _set[index];
      existing.update(output);
      return;
    }
    index = insertionIndex(input);
    if (index < 0) {
      throw new IllegalStateException();
    } else {
      _set[index] = new NodeMapRecord(input, output);
      postInsertHook(true);
    }
  }

  // makes a copy of the record, doesn't reuse it (just in case there's later addition there)
  /*package*/ void updateWith(NodeMapRecord r) {
    if (r.count() == 0) {
      return;
    }
    if (r.count() == 1) {
      add(r.key(), r.soleValue());
    } else {
      add(r.key(), r.valuesInto(new ArrayList<>(r.count())));
    }
  }

  @Nullable
  public NodeMapRecord get(SNode input) {
    final int index = index(input);
    if (index == -1) {
      return null;
    }
    return _set[index];
  }

  public boolean containsKey(SNode input) {
    return index(input) != -1;
  }

  public void forEachRecord(Consumer<NodeMapRecord> c) {
    final NodeMapRecord[] set = _set;
    for (int i = set.length - 1; i>=0; i--) {
      if (set[i] != null) {
        c.accept(set[i]);
      }
    }
  }

  @Override
  protected int capacity() {
    return _set.length;
  }

  @Override
  protected void rehash(int newCapacity) {
    // see THashSet.rehash
    int oldCapacity = capacity();
    NodeMapRecord[] oldSet = _set;
    _set = new NodeMapRecord[newCapacity];
    int i = oldCapacity;

    while (i-- > 0) {
      NodeMapRecord o = oldSet[i];
      if (o != null) {
        int index = insertionIndex(o.key());
        if (index < 0) {
          final String s = "equals/hashCode contract violation: %s and %s";
          throw new IllegalArgumentException(String.format(s, _set[-index - 1].key(), o.key()));
        }
        this._set[index] = o;
      }
    }
  }

  private int index(SNode obj) {
    // see TObjectHash.index
    NodeMapRecord[] set = this._set;
    final int length = set.length;
    final int hash = obj.hashCode() & 0x7FFFFFFF;
    int index = hash % length;
    NodeMapRecord cur = set[index];
    if (cur != null && !cur.keyMatch(obj)) {
      int probe = 1 + hash % (length - 2);

      do {
        index -= probe;
        if (index < 0) {
          index += length;
        }

        cur = set[index];
      } while (cur != null && !cur.keyMatch(obj));
    }

    return cur == null ? -1 : index;
  }

  protected int insertionIndex(SNode obj) {
    NodeMapRecord[] set = this._set;
    int length = set.length;
    int hash = obj.hashCode() & 0x7FFFFFFF;
    int index = hash % length;
    NodeMapRecord cur = set[index];
    if (cur == null) {
      return index;
    } else if (cur.keyMatch(obj)) {
      return -index - 1;
    } else {
      int probe = 1 + hash % (length - 2);

      do {
        index -= probe;
        if (index < 0) {
          index += length;
        }

        cur = set[index];
      } while(cur != null && !cur.keyMatch(obj));

      return (cur != null) ? -index - 1 : index;
    }
  }
}
