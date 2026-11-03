/*
 * Copyright 2003-2022 JetBrains s.r.o.
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
package jetbrains.mps.editor.runtime.style;

import jetbrains.mps.editor.runtime.style.StyleAttributeMap.DiscardValue;
import jetbrains.mps.logging.Logger;
import jetbrains.mps.openapi.editor.style.Style;
import jetbrains.mps.openapi.editor.style.StyleAttribute;
import jetbrains.mps.openapi.editor.style.StyleChangeEvent;
import jetbrains.mps.openapi.editor.style.StyleListener;
import jetbrains.mps.util.containers.EmptyIterator;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Objects;
import java.util.Set;

/**
 * User: shatalin
 * Date: 1/11/13
 */
public class StyleImpl implements Style {
  private static final Logger LOG = Logger.getLogger(StyleImpl.class);

  private Style myParent;
  private Set<Style> myChildren = null;
  private List<StyleListener> myStyleListeners = null;

  private TopLevelStyleMap myAttributes = new TopLevelStyleMap();
  private TopLevelStyleMap myCachedAttributes = new TopLevelStyleMap();

  /**
   * Lazy invalidation state of {@link #myCachedAttributes}.
   * <p/>
   * A style is recomputed eagerly only where a change is introduced (set/putAll/removeAll/attach), so an update
   * that ends up with equal effective values stops right there. When the recompute does change the effective
   * values, descendants are not recomputed eagerly: they are merely flagged invalid ({@code myCacheValid = false})
   * and recomputed on the next read or on {@link #validateSubtree()}. Detaching a style from its parent flags only
   * the detached style itself, making the detach half of an incremental-update splice O(1): if the style is
   * re-attached to a parent with the same effective values, its descendants never notice.
   * <p/>
   * Invariant: an invalid style inside an attached tree has only invalid descendants (invalidation always sweeps
   * the whole subtree, and re-attaching validates the attached style first). The one exception is the root of a
   * detached subtree, whose descendants keep their pre-detach values until the detached root is read or re-attached.
   */
  private boolean myCacheValid = true;
  /**
   * True when some descendant may be invalid; lets {@link #validateSubtree()} skip clean branches.
   */
  private boolean myDirtyBelow = false;

  @Override
  public void putAll(@NotNull Style style) {
    putAll(style, 0);
  }

  @Override
  public void putAll(@NotNull Style style, int selfPriority) {
    Set<StyleAttribute> addedSimple = new StyleAttributeSet();
    Set<StyleAttribute> addedNotSimple = new StyleAttributeSet();
    for (StyleAttribute<Object> attribute : style.getSpecifiedAttributes()) {
      Collection<IntPair<Object>> putAttributes = style.getAll(attribute);
      if (putAttributes != null) {
        int attributePointer = myAttributes.search(attribute.getIndex());
        for (IntPair<Object> value : putAttributes) {
          attributePointer = myAttributes.setValue(attribute, attributePointer, Math.max(value.index, selfPriority), value.value == null ? DiscardValue.getInstance() : value.value);
        }
      }
      if (StyleAttributes.isSimple(attribute)) {
        addedSimple.add(attribute);
      } else {
        addedNotSimple.add(attribute);
      }
    }
    updateCache(addedNotSimple);
    fireStyleChanged(new StyleChangeEvent(this, addedSimple));
  }

  @Override
  public void removeAll(@NotNull Style style) {
    Set<StyleAttribute> addedSimple = new StyleAttributeSet();
    Set<StyleAttribute> addedNotSimple = new StyleAttributeSet();
    for (StyleAttribute<Object> attribute : style.getSpecifiedAttributes()) {
      Collection<IntPair<Object>> putAttributes = style.getAll(attribute);
      if (putAttributes != null) {
        int attributePointer = myAttributes.search(attribute.getIndex());
        for (IntPair<Object> value : putAttributes) {
          attributePointer = myAttributes.setValue(attribute, attributePointer, value.index, DiscardValue.getInstance());
        }
      }
      if (StyleAttributes.isSimple(attribute)) {
        addedSimple.add(attribute);
      } else {
        addedNotSimple.add(attribute);
      }
    }
    updateCache(addedNotSimple);
    fireStyleChanged(new StyleChangeEvent(this, addedSimple));
  }

  @Override
  public <T> void set(StyleAttribute<T> attribute, int priority, T value) {
    myAttributes.setValue(attribute, priority, value);
    Set<StyleAttribute> attributeSet = Collections.<StyleAttribute>singleton(attribute);
    if (StyleAttributes.isSimple(attribute)) {
      fireStyleChanged(new StyleChangeEvent(this, attributeSet));
    } else {
      updateCache(attributeSet);
    }
  }

  @Override
  public <T> void set(StyleAttribute<T> attribute, T value) {
    set(attribute, 0, value);
  }

  @Override
  public <T> int getHighestPriority(StyleAttribute<T> attribute) {
    validateCache();
    int cachedAttributePointer = myCachedAttributes.search(attribute.getIndex());
    if (TopLevelStyleMap.isEmpty(cachedAttributePointer)) {
      return -1;
    } else {
      return myCachedAttributes.getTopPair(attribute, cachedAttributePointer).index;
    }
  }

  @Override
  public <T> T get(StyleAttribute<T> attribute) {
    if (StyleAttributes.isSimple(attribute)) {
      IntPair<T> topPair = myAttributes.getTopPair(attribute);
      return topPair == null ? attribute.combine(null, null) : topPair.value;
    } else {
      validateCache();
      IntPair<T> topPair = myCachedAttributes.getTopPair(attribute);
      return topPair == null ? attribute.combine(null, null) : topPair.value;
    }
  }

  @Override
  @Nullable
  public <T> Collection<IntPair<T>> getAll(StyleAttribute<T> attribute) {
    int attributePointer = myAttributes.search(attribute.getIndex());
    return TopLevelStyleMap.isEmpty(attributePointer) ? null : myAttributes.getDiscardNullReplaced(attribute, attributePointer);
  }

  @Override
  @Nullable
  public <T> Collection<IntPair<T>> getAllCached(StyleAttribute<T> attribute) {
    if (StyleAttributes.isSimple(attribute)) {
      int attributePointer = myAttributes.search(attribute.getIndex());
      return TopLevelStyleMap.isEmpty(attributePointer) ? null : (Collection) myAttributes.getAll(attribute, attributePointer);
    } else {
      validateCache();
      int cachedAttributePointer = myCachedAttributes.search(attribute.getIndex());
      return TopLevelStyleMap.isEmpty(cachedAttributePointer) ? null : (Collection) myCachedAttributes.getAll(attribute, cachedAttributePointer);
    }
  }

  @Override
  public <T> boolean isSpecified(StyleAttribute<T> attribute) {
    return !TopLevelStyleMap.isEmpty(myAttributes.search(attribute.getIndex()));
  }

  @Override
  public Set<StyleAttribute> getSpecifiedAttributes() {
    StyleAttributeSet res = new StyleAttributeSet();
    for (int attributeIndex : myAttributes.getIndexes()) {
      res.add(attributeIndex);
    }
    return res;
  }

  @Override
  public void addListener(StyleListener l) {
    if (myStyleListeners == null) {
      myStyleListeners = new ArrayList<>(1);
    }
    myStyleListeners.add(l);
  }

  @Override
  public void removeListener(StyleListener l) {
    if (myStyleListeners == null) {
      return;
    }
    myStyleListeners.remove(l);
    if (myStyleListeners.isEmpty()) {
      myStyleListeners = null;
    }
  }

  private void fireStyleChanged(StyleChangeEvent e) {
    if (myStyleListeners == null) {
      return;
    }
    for (StyleListener l : myStyleListeners) {
      try {
        l.styleChanged(e);
      } catch (Throwable t) {
        LOG.error(t);
      }
    }
  }

  @Override
  public void add(Style child) {
    Set<StyleAttribute> inheritedAttributes = getNonDefaultValuedAttributes();
    if (myChildren == null) {
      myChildren = new LinkedHashSet<>();
    }
    myChildren.add(child);
    child.setParent(this, inheritedAttributes);
    if (child instanceof StyleImpl && ((StyleImpl) child).myDirtyBelow) {
      // the attached subtree carries invalid descendants; let validateSubtree() find them through us
      markDirtyBelow();
    }
  }

  @Override
  public void remove(Style child) {
    myChildren.remove(child);
    if (myChildren.isEmpty()) {
      myChildren = null;
    }
    child.setParent(null, Collections.emptySet());
  }

  @Override
  public void setParent(Style parent, Collection<StyleAttribute> inheritedAttributes) {
    myParent = parent;
    if (parent == null) {
      // Lazy detach: don't recompute the cache of a subtree that is about to be re-attached or discarded.
      // The cache is recomputed on the next read or on re-attach.
      myCacheValid = false;
      return;
    }
    StyleAttributeSet attributes = new StyleAttributeSet();
    attributes.addAll(inheritedAttributes);
    // the own cached attributes cover everything a previous parent contributed and thus everything
    // that may have to be dropped now; relevant when this style is re-attached after a lazy detach
    addPossiblyStaleAttributes(attributes);
    myCacheValid = true;
    updateCache(attributes);
  }

  /**
   * Adds every non-simple attribute whose cached value could be affected by a parent change: the currently
   * cached ones plus the ones specified on this style itself.
   */
  private void addPossiblyStaleAttributes(StyleAttributeSet attributes) {
    for (int attributeIndex : myCachedAttributes.getIndexes()) {
      attributes.add(attributeIndex);
    }
    StyleAttributes registry = StyleAttributes.getInstance();
    for (int attributeIndex : myAttributes.getIndexes()) {
      StyleAttribute attribute = registry.getAttributeByIndex(attributeIndex);
      if (attribute != null && !StyleAttributes.isSimple(attribute)) {
        attributes.add(attributeIndex);
      }
    }
  }

  private Set<StyleAttribute> getNonDefaultValuedAttributes() {
    validateCache();
    StyleAttributeSet result = new StyleAttributeSet();
    for (int attributeIndex : myCachedAttributes.getIndexes()) {
      result.add(attributeIndex);
    }
    return result;
  }

  private Style getParentStyle() {
    return myParent;
  }

  /**
   * Recomputes the cached values this style may hold stale entries for. No-op when the cache is valid.
   */
  /*package*/ void validateCache() {
    if (myCacheValid) {
      return;
    }
    myCacheValid = true;
    StyleAttributeSet attributes = new StyleAttributeSet();
    if (myParent instanceof StyleImpl) {
      StyleImpl parent = (StyleImpl) myParent;
      parent.validateCache();
      for (int attributeIndex : parent.myCachedAttributes.getIndexes()) {
        attributes.add(attributeIndex);
      }
    } else if (myParent != null) {
      for (StyleAttribute attribute : myParent.getSpecifiedAttributes()) {
        if (!StyleAttributes.isSimple(attribute)) {
          attributes.add(attribute);
        }
      }
    }
    addPossiblyStaleAttributes(attributes);
    updateCache(attributes);
  }

  /**
   * Validates every invalid style in this subtree, firing the pending {@link StyleChangeEvent}s top-down.
   * Intended to run once per editor update, before layout, so that style listeners observe one coalesced
   * event per actual change instead of one per detach/re-attach.
   */
  public void validateSubtree() {
    boolean descend = !myCacheValid || myDirtyBelow;
    validateCache();
    myDirtyBelow = false;
    if (descend && myChildren != null) {
      for (Style child : myChildren) {
        if (child instanceof StyleImpl) {
          ((StyleImpl) child).validateSubtree();
        }
      }
    }
  }

  /**
   * Flags this style's subtree as invalid without recomputing anything. Stops at styles that are already
   * invalid: their subtrees were swept when they were invalidated.
   */
  private void invalidateCache() {
    if (!myCacheValid) {
      return;
    }
    myCacheValid = false;
    if (myChildren != null) {
      myDirtyBelow = true;
      for (Style child : myChildren) {
        if (child instanceof StyleImpl) {
          ((StyleImpl) child).invalidateCache();
        }
      }
    }
  }

  private void markDirtyBelow() {
    StyleImpl style = this;
    while (style != null && !style.myDirtyBelow) {
      style.myDirtyBelow = true;
      style = style.myParent instanceof StyleImpl ? (StyleImpl) style.myParent : null;
    }
  }

  /**
   * Recomputes the cached values of the given attributes for this style only. When the effective values change,
   * descendants are invalidated lazily (see {@link #myCacheValid}) instead of being recomputed here.
   */
  private void updateCache(Collection<StyleAttribute> attributes) {
    if (attributes.isEmpty()) {
      return;
    }

    Set<StyleAttribute> changedAttributes = new StyleAttributeSet();
    for (StyleAttribute<Object> attribute : attributes) {
      assert !StyleAttributes.isSimple(attribute);

      int attributePointer = myAttributes.search(attribute.getIndex());
      int cachedAttributePointer = myCachedAttributes.search(attribute.getIndex());

      Collection<IntPair<Object>> parentValues = getParentStyle() == null ? null : getParentStyle().getAllCached(attribute);
      Collection<IntPair<Object>> currentValues = TopLevelStyleMap.isEmpty(attributePointer) ? null : myAttributes.getAll(attribute, attributePointer);
      Collection<IntPair<Object>> oldValues = TopLevelStyleMap.isEmpty(cachedAttributePointer) ? null : myCachedAttributes.getAll(attribute, cachedAttributePointer);

      Iterator<IntPair<Object>> parentIterator = parentValues == null ? new EmptyIterator<>() : parentValues.iterator();
      Iterator<IntPair<Object>> currentIterator = currentValues == null ? new EmptyIterator<>() : currentValues.iterator();

      IntPair<Object> parentValue;
      IntPair<Object> currentValue;

      parentValue = parentIterator.hasNext() ? parentIterator.next() : null;
      currentValue = currentIterator.hasNext() ? currentIterator.next() : null;

      StyleAttributeMap<Object> newValues = new StyleAttributeMap<>();
      while (parentValue != null || currentValue != null ) {

        if (currentValue != null && (parentValue == null || currentValue.index < parentValue.index)) {
          if (!(currentValue.value instanceof DiscardValue)) {
            newValues.setValue(currentValue.index, attribute.combine(null, currentValue.value));
          }
          currentValue = currentIterator.hasNext() ? currentIterator.next() : null;
        } else if (currentValue == null || parentValue.index < currentValue.index) {
          newValues.setValue(parentValue.index, attribute.combine(parentValue.value, null));
          parentValue = parentIterator.hasNext() ? parentIterator.next() : null;
        } else {
          if (!(currentValue.value instanceof DiscardValue)) {
            newValues.setValue(currentValue.index, attribute.combine(parentValue.value, currentValue.value));
          }
          currentValue = currentIterator.hasNext() ? currentIterator.next() : null;
          parentValue = parentIterator.hasNext() ? parentIterator.next() : null;
        }
      }

      Iterator<IntPair<Object>> oldIterator = oldValues == null ? new EmptyIterator<>() : oldValues.iterator();

      Iterator<IntPair<Object>> newIterator = newValues.getAll().iterator();
      while (oldIterator.hasNext() || newIterator.hasNext()) {
        if (newIterator.hasNext() ^ oldIterator.hasNext()) {
          changedAttributes.add(attribute);
          break;
        }
        IntPair<Object> newValue = newIterator.next();
        IntPair<Object> oldValue = oldIterator.next();
        if (newValue.index != oldValue.index || !Objects.equals(newValue.value, oldValue.value)) {
          changedAttributes.add(attribute);
          break;
        }
      }
      if (changedAttributes.contains(attribute)) {
        myCachedAttributes.set(attribute.getIndex(), cachedAttributePointer, newValues);
      }
    }

    if (!changedAttributes.isEmpty()) {
      if (myChildren != null) {
        for (Style child : myChildren) {
          if (child instanceof StyleImpl) {
            ((StyleImpl) child).invalidateCache();
          } else {
            child.setParent(this, changedAttributes);
          }
        }
        markDirtyBelow();
      }

      fireStyleChanged(new StyleChangeEvent(this, changedAttributes));
    }
  }
}
