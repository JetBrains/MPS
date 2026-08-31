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
package org.jetbrains.mps.util;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.language.SConcept;

import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/**
 * Concept hierarchy iterator that walks direct super concepts only, up to specified concept (exclusive)
 * or a top-most concept (<code>BaseConcept</code>, inclusive).
 * Iteration begins with a concept supplied as a start one.
 * Iterator doesn't support removals.
 * Iteration stops at the first concept seen twice, so that a cyclic concept hierarchy doesn't loop forever.
 * @author Artem Tikhomirov
 * @since 3.3
 */
public final class ImmediateParentConceptIterator implements Iterable<SConcept>, Iterator<SConcept> {

  private final SConcept myStart;
  private final SConcept myStop;
  private final Set<SConcept> mySeen = new HashSet<>();
  private SConcept myNext;

  public ImmediateParentConceptIterator(@NotNull SConcept start) {
    this(start, null);
  }

  public ImmediateParentConceptIterator(@NotNull SConcept start, @Nullable SConcept stop) {
    myStart = start;
    myStop = stop;
    reset();
  }

  @NotNull
  @Override
  public Iterator<SConcept> iterator() {
    reset();
    return this;
  }

  @Override
  public boolean hasNext() {
    return myNext != null && !myNext.equals(myStop) && !mySeen.contains(myNext);
  }

  @Override
  public SConcept next() {
    SConcept rv = myNext;
    mySeen.add(rv);
    myNext = myNext.getSuperConcept();
    return rv;
  }

  @Override
  public void remove() {
    throw new UnsupportedOperationException();
  }

  private void reset() {
    mySeen.clear();
    myNext = myStart;
  }
}
