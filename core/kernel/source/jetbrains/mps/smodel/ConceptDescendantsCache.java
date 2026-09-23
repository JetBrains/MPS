/*
 * Copyright 2003-2023 JetBrains s.r.o.
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

import jetbrains.mps.components.CoreComponent;
import jetbrains.mps.smodel.adapter.ids.SConceptId;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.smodel.language.ConceptRegistry;
import jetbrains.mps.smodel.language.LanguageRegistry;
import jetbrains.mps.smodel.language.LanguageRegistryListener;
import jetbrains.mps.smodel.language.LanguageRuntime;
import jetbrains.mps.smodel.runtime.ConceptDescriptor;
import jetbrains.mps.smodel.runtime.StructureAspectDescriptor;
import jetbrains.mps.util.IterableUtil;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.language.SAbstractConcept;

import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/**
 * Based on generated structure descriptors
 * XXX why don't we keep this cache as part of StructureAspectDescriptor? Perhaps, won't be as straightforward as it's here with
 * concept.getParent() call?
 */
public class ConceptDescendantsCache implements CoreComponent {
  private static ConceptDescendantsCache INSTANCE;

  private final ConceptRegistry myConceptRegistry;
  private final LanguageRegistry myLanguageRegistry;

  // access to both collections is synchronized on myNotProcessedRuntimes
  private final Map<LanguageRuntime, Set<ConceptDescriptor>> myLoadedLanguageToConceptsMap = new HashMap<>();
  private final Set<LanguageRuntime> myNotProcessedRuntimes = new LinkedHashSet<>();
  private final LanguageRegistryListener myLanguageRegistryListener = new LanguageRegistryListener() {
    @Override
    public void afterLanguagesLoaded(Iterable<LanguageRuntime> languages) {
      synchronized (myNotProcessedRuntimes) {
        myNotProcessedRuntimes.addAll(IterableUtil.asCollection(languages));
      }
    }

    @Override
    public void beforeLanguagesUnloaded(Iterable<LanguageRuntime> languages) {
      HashSet<LanguageRuntime> c = new HashSet<>(IterableUtil.asCollection(languages));
      synchronized (myNotProcessedRuntimes) {
        LinkedList<LanguageRuntime> notYetLoaded = new LinkedList<>(myNotProcessedRuntimes);
        notYetLoaded.retainAll(c);
        myNotProcessedRuntimes.removeAll(notYetLoaded);
        c.removeAll(notYetLoaded);
        unloadConcepts(c);
      }
    }
  };

  // Values are unmodifiable linked hash sets to guarantee iteration order.
  private final ConcurrentMap<SAbstractConcept, Set<SAbstractConcept>> myDescendantsCache = new ConcurrentHashMap<>();

  private void loadConcepts(Collection<LanguageRuntime> languages) {
    for (LanguageRuntime language : languages) {
      myLoadedLanguageToConceptsMap.put(language, getConcepts(language));
      for (ConceptDescriptor concept : myLoadedLanguageToConceptsMap.get(language)) {
        loadConcept(concept);
      }
    }
  }

  private void unloadConcepts(Collection<LanguageRuntime> languages) {
    for (LanguageRuntime language : languages) {
      Set<ConceptDescriptor> concepts = myLoadedLanguageToConceptsMap.get(language);
      if (concepts == null) {
        throw new IllegalArgumentException("No concepts registered for the language " + language);
      }
      for (ConceptDescriptor concept : concepts) {
        unloadConcept(concept);
      }
      myLoadedLanguageToConceptsMap.remove(language);
    }
  }

  private void loadConcept(ConceptDescriptor concept) {
    List<SConceptId> pids = concept.getParentsIds();
    SAbstractConcept abstractConcept = MetaAdapterFactory.getAbstractConcept(concept);
    for (SConceptId id : pids) {
      SAbstractConcept parentConcept = MetaAdapterFactory.getAbstractConcept(myConceptRegistry.getConceptDescriptor(id));
      myDescendantsCache.compute(parentConcept, (key, values) -> add(values, abstractConcept));
    }
  }

  private void unloadConcept(ConceptDescriptor concept) {
    List<SConceptId> pids = concept.getParentsIds();

    SAbstractConcept abstractConcept = MetaAdapterFactory.getAbstractConcept(concept);
    for (SConceptId id : pids) {
      SAbstractConcept parentConcept = MetaAdapterFactory.getAbstractConcept(myConceptRegistry.getConceptDescriptor(id));
      myDescendantsCache.compute(parentConcept, (key, values) -> remove(values, abstractConcept));
    }
  }

  @NotNull
  private static Set<SAbstractConcept> add(@Nullable Set<SAbstractConcept> values, @NotNull SAbstractConcept abstractConcept) {
    // linked guarantees iteration order
    Set<SAbstractConcept> descendants = new LinkedHashSet<>(values == null ? Collections.emptySet() : values);
    descendants.add(abstractConcept);
    return Collections.unmodifiableSet(descendants);
  }

  @Nullable
  private static Set<SAbstractConcept> remove(@Nullable Set<SAbstractConcept> values, @NotNull SAbstractConcept abstractConcept) {
    if (values == null) {
      return null;
    }

    Set<SAbstractConcept> descendants = new LinkedHashSet<>(values);
    if (!descendants.remove(abstractConcept)) {
      return values;
    }

    if (descendants.isEmpty()) {
      return null;
    }

    return Collections.unmodifiableSet(descendants);
  }

  public ConceptDescendantsCache(ConceptRegistry conceptRegistry, LanguageRegistry languageRegistry) {
    myConceptRegistry = conceptRegistry;
    myLanguageRegistry = languageRegistry;
  }

  @Override
  public void init() {
    if (INSTANCE != null) {
      throw new IllegalStateException("double initialization");
    }
    INSTANCE = this;

    myLanguageRegistry.addRegistryListener(myLanguageRegistryListener);
  }

  @Override
  public void dispose() {
    myLanguageRegistry.removeRegistryListener(myLanguageRegistryListener);

    INSTANCE = null;
  }

  public static ConceptDescendantsCache getInstance() {
    return INSTANCE;
  }

  /**
   * Collect all descendant concepts
   * Iteration order is guaranteed to be stable
   *
   * @param concept concept to start from
   * @return non-empty set of descendant concepts including the one supplied.
   */
  public Set<SAbstractConcept> getDescendants(SAbstractConcept concept) {
    loadConceptsFromNotProcessedRuntimes();
    //note that linked here guarantees the iteration order
    Set<SAbstractConcept> result = new LinkedHashSet<>();
    collectDescendants(concept, result);
    return result;
  }

  public Set<SAbstractConcept> getDirectDescendants(SAbstractConcept concept) {
    loadConceptsFromNotProcessedRuntimes();
    return getDirectDescendantsInternal(concept);
  }

  private void loadConceptsFromNotProcessedRuntimes() {
    synchronized (myNotProcessedRuntimes) {
      if (!myNotProcessedRuntimes.isEmpty()) {
        loadConcepts(myNotProcessedRuntimes);
        myNotProcessedRuntimes.clear();
      }
    }
  }

  private void collectDescendants(SAbstractConcept concept, Set<SAbstractConcept> result) {
    if (result.contains(concept)) return;
    result.add(concept);

    for (SAbstractConcept descendant : getDirectDescendantsInternal(concept)) {
      collectDescendants(descendant, result);
    }
  }

  @NotNull
  private Set<SAbstractConcept> getDirectDescendantsInternal(SAbstractConcept concept) {
    Set<SAbstractConcept> result = myDescendantsCache.get(concept);
    return result != null ? result : Collections.emptySet();
  }

  private Set<ConceptDescriptor> getConcepts(LanguageRuntime languageRuntime) {
    StructureAspectDescriptor structureDescriptor = languageRuntime.getAspect(StructureAspectDescriptor.class);
    if (structureDescriptor == null) {
      return Collections.emptySet();
    }
    return new LinkedHashSet<>(structureDescriptor.getDescriptors());
  }
}
