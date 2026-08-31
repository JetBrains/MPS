/*
 * Copyright 2003-2021 JetBrains s.r.o.
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
package org.jetbrains.mps.util;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import org.jetbrains.mps.openapi.language.SConcept;
import org.jetbrains.mps.openapi.language.SInterfaceConcept;

import java.util.ArrayDeque;
import java.util.Deque;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/**
 * Traverse hierarchy of {@link org.jetbrains.mps.openapi.language.SConcept SConcepts} for a given concept (inclusive), visiting super-concepts first
 * then super-interfaces in an order they were specified in super-concepts (breadth-like). FIXME make it truly breadth-first, for interface concepts as well.
 * Given ConceptA implements I1, I2 and ConceptB extends ConceptA implements I3, I4, interface I3 extends I5, interface I5 extends I1, and ConceptB as starting point,
 * the order would be ConceptB, ConceptA, I3, I4, I1, I2, I5, I1
 *
 * Note, same concept may appear few times in this iterator, no unique filtering is done. Use {@link org.jetbrains.mps.util.UniqueIterator} if necessary.
 * Each concept is expanded (i.e. gets its super-concept and super-interfaces queued) at most once, so that a cyclic concept
 * hierarchy doesn't loop forever. It's this iterator, not a {@code UniqueIterator} wrapper, that keeps a cycle finite.
 * Note, expanding once doesn't make return values unique, a concept already expanded is still reported.
 *
 * FIXME functionality of this class shall get exposed from SConcept API
 * (likely, in addition to public iterator not to limit to single iteration approach, i.e. depth or breadth first).
 * @author Artem Tikhomirov
 *
 * XXX How come its name is DepthFirst when it is clearly breadth first (for interfaces at least)?
 */
public class DepthFirstConceptIterator implements Iterable<SAbstractConcept>, Iterator<SAbstractConcept> {
  private final SAbstractConcept myStart;
  private SConcept myCurrent; // super-concepts hierarchy or null once all super-concepts are over
  private final Deque<SInterfaceConcept> myInterfaces = new ArrayDeque<>();
  private final Set<SAbstractConcept> mySeen = new HashSet<>();

  public DepthFirstConceptIterator(@NotNull SAbstractConcept start) {
    myStart = start;
    reset(); // just in case we are instantiated as Iterator, not as Iterable
  }
  @Override
  public boolean hasNext() {
    return myCurrent != null || !myInterfaces.isEmpty();
  }

  @Override
  public SAbstractConcept next() {
    if (myCurrent == null) {
      final SInterfaceConcept rv = myInterfaces.removeFirst();
      if (mySeen.add(rv)) {
        queueSuperInterfaces(rv);
      }
      // otherwise, report the interface once again (return values are not unique), but don't queue its super-interfaces anew
      return rv;
    } else {
      SConcept rv = myCurrent;
      if (mySeen.add(rv)) {
        queueSuperInterfaces(rv);
        myCurrent = rv.getSuperConcept();
      } else {
        // cyclic super-concept chain, we are back at a concept expanded earlier, report it and give up the chain
        myCurrent = null;
      }
      return rv;
    }
  }

  @Override
  public void remove() {
    throw new UnsupportedOperationException();
  }

  private void queueSuperInterfaces(SAbstractConcept ac) {
    ac.getSuperInterfaces().forEach(myInterfaces::add);
  }

  @NotNull
  @Override
  public Iterator<SAbstractConcept> iterator() {
    reset();
    return this;
  }

  private void reset() {
    myInterfaces.clear();
    mySeen.clear();
    if (myStart instanceof SInterfaceConcept) {
      myCurrent = null;
      myInterfaces.add((SInterfaceConcept) myStart);
    } else {
      myCurrent = (SConcept) myStart;
    }
  }
}
