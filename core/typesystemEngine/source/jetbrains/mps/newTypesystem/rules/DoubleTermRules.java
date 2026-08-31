/*
 * Copyright 2003-2016 JetBrains s.r.o.
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
package jetbrains.mps.newTypesystem.rules;

import gnu.trove.THashSet;
import jetbrains.mps.languageScope.LanguageScope;
import jetbrains.mps.smodel.NodeReadAccessCasterInEditor;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import org.jetbrains.mps.openapi.language.SConcept;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.util.Computable;
import jetbrains.mps.util.Pair;
import jetbrains.mps.util.Triplet;
import org.jetbrains.mps.util.ImmediateParentConceptIterator;

import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

/**
 * User: fyodor
 * Date: 8/31/12
 */
public abstract class DoubleTermRules<K> {

  private ConcurrentHashMap<Object, Set<K>> myCachedRules = new ConcurrentHashMap<>();

  public Set<K> lookupRules(SNode leftTerm, SNode rightTerm) {

    final LanguageScope langScope = LanguageScope.getCurrent();

    final SAbstractConcept leftConcept = leftTerm.getConcept();
    final SAbstractConcept rightConcept = rightTerm.getConcept();

    final Object compoundKey = new Triplet<Object, SAbstractConcept, SAbstractConcept>(langScope, leftConcept, rightConcept);

    Set<K> cachedRules = myCachedRules.get(compoundKey);
    if (cachedRules != null) return cachedRules;

    return NodeReadAccessCasterInEditor.runReadTransparentAction(() -> {
      Set<K> computedRules = computeRules(leftConcept, rightConcept, langScope);
      myCachedRules.put(compoundKey, computedRules);

      return computedRules;
    });
  }

  public void purgeCache() {
    myCachedRules.clear();
  }

  private Set<K> computeRules(SAbstractConcept leftConcept, SAbstractConcept rightConcept, LanguageScope langScope) {
    LinkedHashSet<K> result = new LinkedHashSet<>();

    LinkedList<Pair<SAbstractConcept, SAbstractConcept>> outerQueue = new LinkedList<>();
    outerQueue.add(new Pair<>(leftConcept, rightConcept));
    for (SConcept leftSuperConcept : allSuperConcepts(leftConcept)) {
      outerQueue.add(new Pair<>(leftSuperConcept, rightConcept));
    }

    with_outerQueue:
    while (!outerQueue.isEmpty()) {
      LinkedList<Pair<SAbstractConcept, SAbstractConcept>> innerQueue = new LinkedList<>();
      Pair<SAbstractConcept, SAbstractConcept> pair = outerQueue.remove();
      innerQueue.add(pair);
      for (SConcept rightSuperConcept : allSuperConcepts(pair.o2)) {
        innerQueue.add(new Pair<>(pair.o1, rightSuperConcept));
      }

      while (!innerQueue.isEmpty()) {
        Pair<SAbstractConcept, SAbstractConcept> nextConceptPair = innerQueue.remove();
        for (K applicableRule : allForConceptPair(nextConceptPair.o1, nextConceptPair.o2, langScope)) {
          result.add(applicableRule);
          if (isOverriding(applicableRule)) {
            break with_outerQueue;
          }
        }
      }
    }

    return Collections.unmodifiableSet(result);
  }

  // all super-concepts provided supplied concept is not an interface; including BaseConcept
  private Iterable<SConcept> allSuperConcepts(SAbstractConcept concept) {
    // I have no idea why interface concepts are not considered - computeRules(iface1, iface2) would
    // look for applicable rules anyway (queue is initialized regardless of concept kind), just won't
    // traverse concept hierarchy like it does for computeRules(concept1, concept2).
    if (!(concept instanceof SConcept)) {
      return Collections.emptyList();
    }
    // not sure there's much sense in BaseConcept among return values, left as it used to be.
    SConcept superConcept = ((SConcept) concept).getSuperConcept();
    if (superConcept == null) {
      return Collections.emptyList();
    }
    ArrayList<SConcept> rv = new ArrayList<>();
    for (SConcept c : new ImmediateParentConceptIterator(superConcept)) {
      rv.add(c);
    }
    return rv;
  }

  abstract protected Iterable<K> allForConceptPair(SAbstractConcept leftConcept, SAbstractConcept rightConcept, LanguageScope langScope);

  abstract protected boolean isOverriding(K rule);
}
