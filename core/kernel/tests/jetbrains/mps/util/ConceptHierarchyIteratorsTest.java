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
package jetbrains.mps.util;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import org.jetbrains.mps.openapi.language.SConcept;
import org.jetbrains.mps.openapi.language.SContainmentLink;
import org.jetbrains.mps.openapi.language.SInterfaceConcept;
import org.jetbrains.mps.openapi.language.SLanguage;
import org.jetbrains.mps.openapi.language.SProperty;
import org.jetbrains.mps.openapi.language.SReferenceLink;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeReference;
import org.jetbrains.mps.util.BreadthConceptHierarchyIterator;
import org.jetbrains.mps.util.DepthFirstConceptIterator;
import org.jetbrains.mps.util.ImmediateParentConceptIterator;
import org.junit.Assert;
import org.junit.Test;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

/**
 * Tests for the three concept hierarchy iterators of {@code org.jetbrains.mps.util}. The primary concern here is a cyclic
 * concept hierarchy (authorable in MPS, e.g. {@code concept A extends A}), which used to make these iterators loop forever.
 * Every iterator keeps track of the concepts it has already expanded; the tests below pin both the fact that iteration is
 * finite and the exact sequence of the elements reported.
 * <p>
 * Concepts are represented with local stubs rather than with real concept adapters: a cyclic hierarchy can not be built out
 * of the real ones, as they resolve through the language runtime. Note {@link StubConcept} and {@link StubInterfaceConcept}
 * are deliberately distinct types, none of them implements both {@link SConcept} and {@link SInterfaceConcept},
 * as {@link DepthFirstConceptIterator} branches on {@code start instanceof SInterfaceConcept}.
 * <p>
 * Iteration of a broken (cyclic) hierarchy is expected to end quickly, and the tests never rely on a suite-wide timeout to
 * detect a regression: {@link #drain(Iterable)} stops at {@link #MAX_ELEMENTS} and fails the test right away.
 */
public class ConceptHierarchyIteratorsTest {
  /**
   * Hard cap for the number of elements collected from an iterator, exceeding it means the iterator doesn't terminate.
   * All the hierarchies here are small, the longest expected sequence is 8 elements long.
   */
  private static final int MAX_ELEMENTS = 20;

  // ----------------------------------------------------------------------------------------------------------------
  // ImmediateParentConceptIterator: walks direct super-concepts only, therefore no interface/diamond cases apply here.
  // ----------------------------------------------------------------------------------------------------------------

  @Test(timeout = 30000)
  public void immediateParents_selfCycle() {
    // A extends A
    StubConcept a = new StubConcept("A");
    a.extending(a);
    // trace: next() reports A and records it in mySeen, myNext becomes A again;
    // hasNext() sees mySeen.contains(A) and stops. Hence A exactly once.
    Assert.assertEquals(Collections.singletonList("A"), names(drain(new ImmediateParentConceptIterator(a))));
  }

  @Test(timeout = 30000)
  public void immediateParents_mutualCycle() {
    // A extends B, B extends A
    StubConcept a = new StubConcept("A");
    StubConcept b = new StubConcept("B");
    a.extending(b);
    b.extending(a);
    // trace (start A): A reported, mySeen={A}, myNext=B; B reported, mySeen={A,B}, myNext=A;
    // hasNext() finds A in mySeen and stops.
    Assert.assertEquals(Arrays.asList("A", "B"), names(drain(new ImmediateParentConceptIterator(a))));
    // symmetrically for the other end of the cycle
    Assert.assertEquals(Arrays.asList("B", "A"), names(drain(new ImmediateParentConceptIterator(b))));
  }

  @Test
  public void immediateParents_acyclicChain() {
    // ConceptB extends ConceptA, ConceptA has no super-concept (like BaseConcept)
    StubConcept conceptA = new StubConcept("ConceptA");
    StubConcept conceptB = new StubConcept("ConceptB").extending(conceptA);
    // trace: ConceptB reported, myNext=ConceptA; ConceptA reported, myNext=null; hasNext() stops on null.
    Assert.assertEquals(Arrays.asList("ConceptB", "ConceptA"), names(drain(new ImmediateParentConceptIterator(conceptB))));
    // 'stop' concept is exclusive
    Assert.assertEquals(Collections.singletonList("ConceptB"),
        names(drain(new ImmediateParentConceptIterator(conceptB, conceptA))));
  }

  @Test(timeout = 30000)
  public void immediateParents_reusableAsIterable() {
    // A extends B, B extends A; a second pass must see the very same sequence, i.e. reset() has to clear mySeen
    StubConcept a = new StubConcept("A");
    StubConcept b = new StubConcept("B");
    a.extending(b);
    b.extending(a);
    ImmediateParentConceptIterator iterable = new ImmediateParentConceptIterator(a);
    Assert.assertEquals(Arrays.asList("A", "B"), names(drain(iterable)));
    Assert.assertEquals(Arrays.asList("A", "B"), names(drain(iterable)));
  }

  // ----------------------------------------------------------------------------------------------------------------
  // DepthFirstConceptIterator: super-concept chain first, then a deque of super-interfaces.
  // ----------------------------------------------------------------------------------------------------------------

  @Test(timeout = 30000)
  public void depthFirst_selfCycle() {
    // A extends A
    StubConcept a = new StubConcept("A");
    a.extending(a);
    // trace: next() reports A, mySeen={A}, myCurrent=A.getSuperConcept()=A;
    // next() reports A again (return values are not unique) but mySeen.add fails, so myCurrent=null and the chain ends.
    Assert.assertEquals(Arrays.asList("A", "A"), names(drain(new DepthFirstConceptIterator(a))));
  }

  @Test(timeout = 30000)
  public void depthFirst_mutualCycle() {
    // A extends B, B extends A
    StubConcept a = new StubConcept("A");
    StubConcept b = new StubConcept("B");
    a.extending(b);
    b.extending(a);
    // trace (start A): A (mySeen={A}, myCurrent=B), B (mySeen={A,B}, myCurrent=A),
    // A again - already expanded, reported and myCurrent=null.
    Assert.assertEquals(Arrays.asList("A", "B", "A"), names(drain(new DepthFirstConceptIterator(a))));
    Assert.assertEquals(Arrays.asList("B", "A", "B"), names(drain(new DepthFirstConceptIterator(b))));
  }

  @Test(timeout = 30000)
  public void depthFirst_interfaceOnlyCycle() {
    // I1 extends I2, I2 extends I1
    StubInterfaceConcept i1 = new StubInterfaceConcept("I1");
    StubInterfaceConcept i2 = new StubInterfaceConcept("I2");
    i1.extending(i2);
    i2.extending(i1);
    // trace (start I1, an interface, so myCurrent==null and the deque holds [I1]):
    // I1 reported and expanded, deque=[I2]; I2 reported and expanded, deque=[I1];
    // I1 removed once again, mySeen.add fails, reported without expansion, deque is empty.
    Assert.assertEquals(Arrays.asList("I1", "I2", "I1"), names(drain(new DepthFirstConceptIterator(i1))));
    Assert.assertEquals(Arrays.asList("I2", "I1", "I2"), names(drain(new DepthFirstConceptIterator(i2))));
  }

  @Test
  public void depthFirst_sharedInterfaceReportedTwice() {
    // acyclic diamond: ConceptA implements ILeft, IRight; ILeft extends IShared; IRight extends IShared
    StubInterfaceConcept shared = new StubInterfaceConcept("IShared");
    StubInterfaceConcept left = new StubInterfaceConcept("ILeft").extending(shared);
    StubInterfaceConcept right = new StubInterfaceConcept("IRight").extending(shared);
    StubConcept conceptA = new StubConcept("ConceptA").implementing(left, right);
    // trace: ConceptA reported, deque=[ILeft, IRight], myCurrent=null (no super-concept);
    // ILeft reported and expanded, deque=[IRight, IShared]; IRight reported and expanded, deque=[IShared, IShared];
    // IShared reported and expanded (nothing to queue); IShared reported once again, not expanded.
    // Return values are not unique by design, the shared interface IS reported twice.
    Assert.assertEquals(Arrays.asList("ConceptA", "ILeft", "IRight", "IShared", "IShared"),
        names(drain(new DepthFirstConceptIterator(conceptA))));
  }

  @Test
  public void depthFirst_sharedInterfaceExpandedOnce() {
    // same diamond, but the shared interface has one more interface above it: IShared extends ITop
    StubInterfaceConcept top = new StubInterfaceConcept("ITop");
    StubInterfaceConcept shared = new StubInterfaceConcept("IShared").extending(top);
    StubInterfaceConcept left = new StubInterfaceConcept("ILeft").extending(shared);
    StubInterfaceConcept right = new StubInterfaceConcept("IRight").extending(shared);
    StubConcept conceptA = new StubConcept("ConceptA").implementing(left, right);
    // trace: ConceptA, deque=[ILeft, IRight]; ILeft -> deque=[IRight, IShared]; IRight -> deque=[IShared, IShared];
    // IShared (first time) expands and queues ITop, deque=[IShared, ITop]; IShared (second time) is reported but NOT
    // expanded, deque=[ITop]; ITop reported.
    // This is the only acyclic difference the expand-at-most-once guard introduces and it is intended: IShared is still
    // reported twice, yet ITop above it is now reported once (it used to be reported twice, once per path to IShared).
    Assert.assertEquals(Arrays.asList("ConceptA", "ILeft", "IRight", "IShared", "IShared", "ITop"),
        names(drain(new DepthFirstConceptIterator(conceptA))));
  }

  @Test
  public void depthFirst_documentedExample() {
    // the example from the javadoc of DepthFirstConceptIterator:
    // ConceptA implements I1, I2; ConceptB extends ConceptA implements I3, I4; I3 extends I5; I5 extends I1
    StubInterfaceConcept i1 = new StubInterfaceConcept("I1");
    StubInterfaceConcept i2 = new StubInterfaceConcept("I2");
    StubInterfaceConcept i5 = new StubInterfaceConcept("I5").extending(i1);
    StubInterfaceConcept i3 = new StubInterfaceConcept("I3").extending(i5);
    StubInterfaceConcept i4 = new StubInterfaceConcept("I4");
    StubConcept conceptA = new StubConcept("ConceptA").implementing(i1, i2);
    StubConcept conceptB = new StubConcept("ConceptB").extending(conceptA).implementing(i3, i4);
    // trace: ConceptB reported, deque=[I3, I4], myCurrent=ConceptA; ConceptA reported, deque=[I3, I4, I1, I2],
    // myCurrent=null; I3 -> deque=[I4, I1, I2, I5]; I4 -> deque=[I1, I2, I5]; I1 -> deque=[I2, I5]; I2 -> deque=[I5];
    // I5 -> queues I1, deque=[I1]; I1 removed again, already expanded, reported as is.
    // Matches the javadoc verbatim, i.e. the guard is behaviour-neutral for the documented shape.
    Assert.assertEquals(Arrays.asList("ConceptB", "ConceptA", "I3", "I4", "I1", "I2", "I5", "I1"),
        names(drain(new DepthFirstConceptIterator(conceptB))));
  }

  @Test(timeout = 30000)
  public void depthFirst_reusableAsIterable() {
    // A extends B, B extends A; reset() must clear both the deque and mySeen
    StubConcept a = new StubConcept("A");
    StubConcept b = new StubConcept("B");
    a.extending(b);
    b.extending(a);
    DepthFirstConceptIterator iterable = new DepthFirstConceptIterator(a);
    Assert.assertEquals(Arrays.asList("A", "B", "A"), names(drain(iterable)));
    Assert.assertEquals(Arrays.asList("A", "B", "A"), names(drain(iterable)));
  }

  // ----------------------------------------------------------------------------------------------------------------
  // BreadthConceptHierarchyIterator: single FIFO queue, super-interfaces of a concept come before its super-concept.
  // ----------------------------------------------------------------------------------------------------------------

  @Test(timeout = 30000)
  public void breadth_selfCycle() {
    // A extends A
    StubConcept a = new StubConcept("A");
    a.extending(a);
    // trace: queue=[A]; A removed, mySeen={A}, its super-concept A is queued, queue=[A];
    // A removed again, mySeen.add fails, reported without queueing anything, queue is empty.
    Assert.assertEquals(Arrays.asList("A", "A"), names(drain(new BreadthConceptHierarchyIterator(a))));
  }

  @Test(timeout = 30000)
  public void breadth_mutualCycle() {
    // A extends B, B extends A
    StubConcept a = new StubConcept("A");
    StubConcept b = new StubConcept("B");
    a.extending(b);
    b.extending(a);
    // trace (start A): A -> queue=[B]; B -> queue=[A]; A already expanded, reported, queue is empty.
    Assert.assertEquals(Arrays.asList("A", "B", "A"), names(drain(new BreadthConceptHierarchyIterator(a))));
    Assert.assertEquals(Arrays.asList("B", "A", "B"), names(drain(new BreadthConceptHierarchyIterator(b))));
  }

  @Test(timeout = 30000)
  public void breadth_interfaceOnlyCycle() {
    // I1 extends I2, I2 extends I1
    StubInterfaceConcept i1 = new StubInterfaceConcept("I1");
    StubInterfaceConcept i2 = new StubInterfaceConcept("I2");
    i1.extending(i2);
    i2.extending(i1);
    // trace: queue=[I1]; I1 removed and expanded (getSuperConcept() is null for an interface), queue=[I2];
    // I2 removed and expanded, queue=[I1]; I1 removed again, already expanded, reported, queue is empty.
    Assert.assertEquals(Arrays.asList("I1", "I2", "I1"), names(drain(new BreadthConceptHierarchyIterator(i1))));
    Assert.assertEquals(Arrays.asList("I2", "I1", "I2"), names(drain(new BreadthConceptHierarchyIterator(i2))));
  }

  @Test
  public void breadth_sharedInterfaceReportedTwice() {
    // acyclic diamond: ConceptA implements ILeft, IRight; ILeft extends IShared; IRight extends IShared
    StubInterfaceConcept shared = new StubInterfaceConcept("IShared");
    StubInterfaceConcept left = new StubInterfaceConcept("ILeft").extending(shared);
    StubInterfaceConcept right = new StubInterfaceConcept("IRight").extending(shared);
    StubConcept conceptA = new StubConcept("ConceptA").implementing(left, right);
    // trace: ConceptA -> queue=[ILeft, IRight]; ILeft -> queue=[IRight, IShared]; IRight -> queue=[IShared, IShared];
    // IShared expanded (nothing above), queue=[IShared]; IShared reported once again.
    // Return values are not unique by design, the shared interface IS reported twice.
    Assert.assertEquals(Arrays.asList("ConceptA", "ILeft", "IRight", "IShared", "IShared"),
        names(drain(new BreadthConceptHierarchyIterator(conceptA))));
  }

  @Test
  public void breadth_sharedInterfaceExpandedOnce() {
    // same diamond with IShared extends ITop
    StubInterfaceConcept top = new StubInterfaceConcept("ITop");
    StubInterfaceConcept shared = new StubInterfaceConcept("IShared").extending(top);
    StubInterfaceConcept left = new StubInterfaceConcept("ILeft").extending(shared);
    StubInterfaceConcept right = new StubInterfaceConcept("IRight").extending(shared);
    StubConcept conceptA = new StubConcept("ConceptA").implementing(left, right);
    // trace: ConceptA -> queue=[ILeft, IRight]; ILeft -> queue=[IRight, IShared]; IRight -> queue=[IShared, IShared];
    // IShared (first) queues ITop, queue=[IShared, ITop]; IShared (second) is reported but NOT expanded, queue=[ITop];
    // ITop reported.
    // Intended consequence of the expand-at-most-once guard: IShared is still reported twice, while ITop, reachable only
    // through IShared, is reported once (it used to be reported twice, once per path).
    Assert.assertEquals(Arrays.asList("ConceptA", "ILeft", "IRight", "IShared", "IShared", "ITop"),
        names(drain(new BreadthConceptHierarchyIterator(conceptA))));
  }

  @Test
  public void breadth_documentedExample() {
    // the example from the javadoc of BreadthConceptHierarchyIterator:
    // ConceptA implements I1, I2; ConceptB extends ConceptA implements I3, I4; I3 extends I5; I5 extends I1
    StubInterfaceConcept i1 = new StubInterfaceConcept("I1");
    StubInterfaceConcept i2 = new StubInterfaceConcept("I2");
    StubInterfaceConcept i5 = new StubInterfaceConcept("I5").extending(i1);
    StubInterfaceConcept i3 = new StubInterfaceConcept("I3").extending(i5);
    StubInterfaceConcept i4 = new StubInterfaceConcept("I4");
    StubConcept conceptA = new StubConcept("ConceptA").implementing(i1, i2);
    StubConcept conceptB = new StubConcept("ConceptB").extending(conceptA).implementing(i3, i4);
    // trace: queue=[ConceptB]; ConceptB -> interfaces first, then the super-concept, queue=[I3, I4, ConceptA];
    // I3 -> queue=[I4, ConceptA, I5]; I4 -> queue=[ConceptA, I5]; ConceptA -> queue=[I5, I1, I2];
    // I5 -> queues I1, queue=[I1, I2, I1]; I1 -> queue=[I2, I1]; I2 -> queue=[I1];
    // I1 removed again, already expanded, reported as is.
    // Note the javadoc groups the elements by the level they come from, not by the order they are yielded in, hence I5
    // (queued while expanding I3) precedes I1, I2 (queued while expanding ConceptA) in the actual sequence.
    Assert.assertEquals(Arrays.asList("ConceptB", "I3", "I4", "ConceptA", "I5", "I1", "I2", "I1"),
        names(drain(new BreadthConceptHierarchyIterator(conceptB))));
  }

  @Test(timeout = 30000)
  public void breadth_reusableAsIterable() {
    // A extends B, B extends A; iterator() must clear both the queue and mySeen
    StubConcept a = new StubConcept("A");
    StubConcept b = new StubConcept("B");
    a.extending(b);
    b.extending(a);
    BreadthConceptHierarchyIterator iterable = new BreadthConceptHierarchyIterator(a);
    Assert.assertEquals(Arrays.asList("A", "B", "A"), names(drain(iterable)));
    Assert.assertEquals(Arrays.asList("A", "B", "A"), names(drain(iterable)));
  }

  // ----------------------------------------------------------------------------------------------------------------
  // infrastructure
  // ----------------------------------------------------------------------------------------------------------------

  /**
   * Collects the elements of the argument, failing the test as soon as more than {@link #MAX_ELEMENTS} of them show up.
   * The cap is what makes a non-terminating iterator a fast test failure rather than a hanging test run.
   */
  private static List<SAbstractConcept> drain(Iterable<? extends SAbstractConcept> iterable) {
    ArrayList<SAbstractConcept> rv = new ArrayList<>();
    for (SAbstractConcept c : iterable) {
      if (rv.size() >= MAX_ELEMENTS) {
        Assert.fail(String.format("%s doesn't terminate: yielded more than %d elements, %s",
            iterable.getClass().getSimpleName(), MAX_ELEMENTS, names(rv)));
      }
      rv.add(c);
    }
    return rv;
  }

  private static List<String> names(Collection<? extends SAbstractConcept> concepts) {
    ArrayList<String> rv = new ArrayList<>(concepts.size());
    for (SAbstractConcept c : concepts) {
      rv.add(c.getName());
    }
    return rv;
  }

  /**
   * Bare minimum of a concept descriptor: a name and whatever the tested iterators read, i.e. the super-concept and the
   * super-interfaces. Everything else is out of scope and throws.
   */
  private abstract static class StubAbstractConcept implements SAbstractConcept {
    private final String myName;

    StubAbstractConcept(String name) {
      myName = name;
    }

    @NotNull
    @Override
    public String getName() {
      return myName;
    }

    @Override
    public String toString() {
      return myName;
    }

    @NotNull
    @Override
    public SLanguage getLanguage() {
      throw new UnsupportedOperationException();
    }

    @Override
    public Collection<SReferenceLink> getReferenceLinks() {
      throw new UnsupportedOperationException();
    }

    @Override
    public Collection<SContainmentLink> getContainmentLinks() {
      throw new UnsupportedOperationException();
    }

    @Override
    public Collection<SProperty> getProperties() {
      throw new UnsupportedOperationException();
    }

    @Override
    public boolean isSubConceptOf(SAbstractConcept concept) {
      throw new UnsupportedOperationException();
    }

    @Override
    public boolean isAbstract() {
      throw new UnsupportedOperationException();
    }

    @Nullable
    @Override
    public SNode getDeclarationNode() {
      throw new UnsupportedOperationException();
    }

    @Nullable
    @Override
    public SNodeReference getSourceNode() {
      throw new UnsupportedOperationException();
    }

    @Override
    public boolean isValid() {
      throw new UnsupportedOperationException();
    }

    @NotNull
    @Override
    public String getConceptAlias() {
      throw new UnsupportedOperationException();
    }

    @NotNull
    @Override
    public String getShortDescription() {
      throw new UnsupportedOperationException();
    }

    @NotNull
    @Override
    public String getHelpUrl() {
      throw new UnsupportedOperationException();
    }

    @Override
    public String getQualifiedName() {
      throw new UnsupportedOperationException();
    }
  }

  /**
   * Stub of a concept declaration. Deliberately not an {@link SInterfaceConcept}.
   */
  private static final class StubConcept extends StubAbstractConcept implements SConcept {
    private SConcept mySuperConcept;
    private final List<SInterfaceConcept> mySuperInterfaces = new ArrayList<>();

    StubConcept(String name) {
      super(name);
    }

    StubConcept extending(SConcept superConcept) {
      mySuperConcept = superConcept;
      return this;
    }

    StubConcept implementing(SInterfaceConcept... superInterfaces) {
      mySuperInterfaces.addAll(Arrays.asList(superInterfaces));
      return this;
    }

    @Nullable
    @Override
    public SConcept getSuperConcept() {
      return mySuperConcept;
    }

    @NotNull
    @Override
    public Iterable<SInterfaceConcept> getSuperInterfaces() {
      return mySuperInterfaces;
    }

    @Override
    public boolean isRootable() {
      throw new UnsupportedOperationException();
    }
  }

  /**
   * Stub of an interface concept declaration. Deliberately not an {@link SConcept}: {@link DepthFirstConceptIterator}
   * tells the two apart with an {@code instanceof} check.
   */
  private static final class StubInterfaceConcept extends StubAbstractConcept implements SInterfaceConcept {
    private final List<SInterfaceConcept> mySuperInterfaces = new ArrayList<>();

    StubInterfaceConcept(String name) {
      super(name);
    }

    StubInterfaceConcept extending(SInterfaceConcept... superInterfaces) {
      mySuperInterfaces.addAll(Arrays.asList(superInterfaces));
      return this;
    }

    @Nullable
    @Override
    public SConcept getSuperConcept() {
      // an interface concept declaration never extends a concept
      return null;
    }

    @NotNull
    @Override
    public Iterable<SInterfaceConcept> getSuperInterfaces() {
      return mySuperInterfaces;
    }
  }
}
