/*
 * Copyright 2003-2015 JetBrains s.r.o.
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
package jetbrains.mps.smodel;

import gnu.trove.THashMap;
import jetbrains.mps.util.Computable;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.event.SNodeAddEvent;
import org.jetbrains.mps.openapi.event.SNodeRemoveEvent;
import org.jetbrains.mps.openapi.event.SPropertyChangeEvent;
import org.jetbrains.mps.openapi.event.SReferenceChangeEvent;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import org.jetbrains.mps.openapi.language.SConcept;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeChangeListener;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/**
 * Base implementation for FastNodeFinder, thread-aware and map update ready.
 * Doesn't track model changes. Model implementation agnostic, doesn't rely on internal SModel implementation
 *
 * @author Artem Tikhomirov
 */
public class BaseFastNodeFinder implements FastNodeFinder {
  protected final SModel myModel;
  private final ConceptNodeMap myNodeMap = new ConceptNodeMap();

  public BaseFastNodeFinder(SModel model) {
    myModel = model;
  }

  /**
   * Walk associated model and build concept instance map. Subclasses
   * may override e.g. if they need to control read events during the walk.
   * Always invoked while holding the index lock, hence overrides shall not block on other threads or locks.
   */
  protected ConceptInstanceMap build(Computable<ConceptInstanceMap> b) {
    return b.compute();
  }

  /**
   * Subclasses shall invoke once model had changed
   */
  protected void added(SNode n) {
    synchronized (myNodeMap) {
      if (myNodeMap.isEmpty()) {
        return;
      }
      myNodeMap.merge(build(new ConceptNodeMapBuilder(n)));
    }
  }

  /**
   * Subclasses shall invoke once model had changed
   */
  protected void removed(SNode n) {
    synchronized (myNodeMap) {
      if (myNodeMap.isEmpty()) {
        return;
      }
      myNodeMap.forget(build(new ConceptNodeMapBuilder(n)));
    }
  }

  /**
   * Subclasses shall invoke once model had changed
   */
  protected void reset() {
    synchronized (myNodeMap) {
      myNodeMap.clear();
    }
  }

  @Override
  public void dispose() {
    reset();
  }

  @NotNull
  @Override
  public List<SNode> getNodes(@NotNull SAbstractConcept concept, boolean includeInherited) {
    // notify 'model nodes read access'
    myModel.getRootNodes().iterator();

    // not under myNodeMap lock to avoid nesting ConceptDescendantsCache lock inside it, see MPS-40189
    final Set<SAbstractConcept> allDescendantsOfConcept = includeInherited ? ConceptDescendantsCache.getInstance().getDescendants(concept) : null;
    final ArrayList<List<SNode>> nodesOfConcept;
    int cnt = 0;
    synchronized (myNodeMap) {
      if (myNodeMap.isEmpty()) {
        ConceptInstanceMap all = build(new ConceptNodeMapBuilder(myModel));
        all.trimValues(); // merge may reuse lists,
        myNodeMap.merge(all);
      }
      if (allDescendantsOfConcept == null) {
        return myNodeMap.get(concept);
      }
      nodesOfConcept = new ArrayList<>(allDescendantsOfConcept.size());
      for (SAbstractConcept d : allDescendantsOfConcept) {
        List<SNode> n = myNodeMap.get(d);
        nodesOfConcept.add(n);
        cnt += n.size();
      }
    }
    // values in map are immutable, safe to copy outside of the lock
    final ArrayList<SNode> result = new ArrayList<>(cnt);
    for (List<SNode> l : nodesOfConcept) {
      result.addAll(l);
    }
    return result;
  }

  private static class ConceptNodeMapBuilder implements Computable<ConceptInstanceMap> {
    private final ConceptInstanceMap myMap = new ConceptInstanceMap();
    private final SNode myNodeInput;
    private final SModel myModelInput;

    ConceptNodeMapBuilder(SNode root) {
      assert root != null;
      myNodeInput = root;
      myModelInput = null;
    }

    ConceptNodeMapBuilder(SModel model) {
      assert model != null;
      myModelInput = model;
      myNodeInput = null;
    }

    @Override
    public ConceptInstanceMap compute() {
      if (myModelInput != null) {
        fillMap(myModelInput.getRootNodes());
      } else {
        fillMap(Collections.singletonList(myNodeInput));
      }
      return myMap;
    }

    private void fillMap(Iterable<? extends SNode> roots) {
      for (SNode root : roots) {
        myMap.add(root);
        fillMap(root.getChildren());
      }
    }
  }

  /**
   * Simple wrap of Map('concept name' to concept instances).
   */
  protected static final class ConceptInstanceMap {
    private final Map<SAbstractConcept, ArrayList<SNode>> myNodes = new HashMap<>();

    /**
     * this method doesn't expect root to be added twice to the same map (to keep impl simple)
     */
    public void add(SNode root) {
      SConcept concept = root.getConcept();
      ArrayList<SNode> set = myNodes.get(concept);
      if (set == null) {
        myNodes.put(concept, set = new ArrayList<>());
      }
      set.add(root);
    }

    public void trimValues() {
      for (ArrayList<SNode> v : myNodes.values()) {
        v.trimToSize();
      }
    }
  }

  /**
   * Concurrency-aware, updatable storage of concept to instance map.
   * Collections of instances are immutable
   * TODO!!! Possible bug: adding n1, then n2 (having same concept) places n2 after n1.
   * TODO!!! For two nodes from different roots returned n2, then n1, we can delete them and in order mentioned above
   * TODO!!! This will result in broken order
   */
  private static final class ConceptNodeMap {
    /**
     * A simple way to optimise child addition/removal for registered nodes.
     * <p>
     * A good way to optimize is to store node sequences in form of TLinkedHashSet
     * instead of ArrayList. This will make forget consume O(removed) time, which
     * is good. However, this will affect immutability utilized for better multithreaded
     * performance (which actually may be not needed). If we forget about immutability,
     * merge() can be just rewritten as myNodes(cn).addAll(newNodes), which finishes in
     * O(added) time.
     * <p>
     * This fix allows to stop watching after a specific amount of odd work done.
     * However, this algorithm will still work very slow under some [very specific]
     * conditions. So, for the moment we consider it as working
     * <p>
     * E.g. model contains a single root with N children in the same role. If we
     * continuously add/remove children from this role, it might still, as before, take
     * O(N^2) time if we call model.nodes<> after each invalidation. Note that since the
     * amount of work required for invalidation is similar to model size, adding "other"
     * nodes to this model will not make the asymptotic time worse (caches rebuild for
     * the whole model takes similar time to odd work time)
     * <p>
     * [MM] if you'd like to change the algorithm, you may contact me for investigation
     * results / ideas
     */
    private int myOddWork = 0; //the amount of "odd" work spent on copying
    private int mySize = 0; //number of all nodes in this map

    private final Map<SAbstractConcept, List<SNode>> myNodes = new THashMap<>();

    public void forget(ConceptInstanceMap other) {
      for (SAbstractConcept cn : other.myNodes.keySet()) {
        assert myNodes.containsKey(cn); // other shall be subset of this map
        List<SNode> nodes = myNodes.get(cn);
        if (!performWork(nodes.size())) {
          return;
        }
        LinkedHashSet<SNode> newNodes = new LinkedHashSet<>(nodes);
        ArrayList<SNode> toRemove = other.myNodes.get(cn);
        mySize -= toRemove.size();
        newNodes.removeAll(toRemove);
        if (newNodes.isEmpty()) {
          myNodes.remove(cn);
        } else {
          myNodes.put(cn, new ArrayList<>(newNodes));
        }
      }
    }

    public void merge(ConceptInstanceMap other) {
      for (SAbstractConcept cn : other.myNodes.keySet()) {
        List<SNode> nodes = myNodes.get(cn);
        ArrayList<SNode> toAdd = other.myNodes.get(cn);
        mySize += toAdd.size();
        if (nodes == null) {
          myNodes.put(cn, toAdd);
        } else {
          if (!performWork(nodes.size())) {
            return;
          }
          LinkedHashSet<SNode> newNodes = new LinkedHashSet<>(nodes);
          newNodes.addAll(toAdd);
          myNodes.put(cn, new ArrayList<>(newNodes));
        }
      }
    }

    /**
     * @return true means we can continue working, false means caches were dropped (clear()), no point in finishing updating
     */
    private boolean performWork(int size) {
      myOddWork += size;
      if (mySize / myOddWork > 2) {
        return true;
      }

      clear();
      return false;
    }

    public List<SNode> get(SAbstractConcept conceptFQName) {
      List<SNode> n = myNodes.get(conceptFQName);
      return n == null ? Collections.emptyList() : n;
    }

    public boolean isEmpty() {
      return myNodes.isEmpty();
    }

    public void clear() {
      myNodes.clear();
      mySize = myOddWork = 0;
    }
  }

  /**
   * Handy, ready-to use listener implementation to use.
   * BaseFastNodeFinder itself doesn't track model changes, it's up to subclass to decide whether change tracking is vital.
   */
  protected class ChangeTracker implements SNodeChangeListener {
    public ChangeTracker() {
    }

    @Override
    public void nodeAdded(@NotNull SNodeAddEvent event) {
      added(event.getChild());
    }

    @Override
    public void nodeRemoved(@NotNull SNodeRemoveEvent event) {
      removed(event.getChild());
    }

    @Override
    public void propertyChanged(@NotNull SPropertyChangeEvent event) {
      // no-op
    }

    @Override
    public void referenceChanged(@NotNull SReferenceChangeEvent event) {
      // no-op, FNF doesn't depend on references, structure only
    }
  }
}
