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
package jetbrains.mps.smodel;

import jetbrains.mps.smodel.language.LanguageRegistry;
import jetbrains.mps.util.Computable;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SNode;
import org.junit.After;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;

import java.util.HashSet;
import java.util.List;
import java.util.concurrent.TimeUnit;

/**
 * MPS-40189: incremental updates of {@link BaseFastNodeFinder} shall not interleave with a concurrent reset.
 */
public class BaseFastNodeFinderTest {
  private TestModelFactory myModelFactory;
  private SModel myModel;
  private TestFinder myFinder;
  private ConceptDescendantsCache myOwnDescendantsCache;

  @Before
  public void setUp() {
    myModelFactory = new TestModelFactory();
    myModel = myModelFactory.createModel(3, 2);
    myFinder = new TestFinder(myModel);
    if (ConceptDescendantsCache.getInstance() == null) {
      // not in the suite environment; without language runtimes, the concept registry is never consulted
      myOwnDescendantsCache = new ConceptDescendantsCache(null, new LanguageRegistry(null, null));
      myOwnDescendantsCache.init();
    }
  }

  @After
  public void tearDown() {
    if (myOwnDescendantsCache != null) {
      myOwnDescendantsCache.dispose();
      myOwnDescendantsCache = null;
    }
  }

  @Test
  public void testIncludeInheritedAfterUpdates() {
    final int initialCount = myModelFactory.countModelNodes();
    assertSameNodes(initialCount);

    SNode added = myModelFactory.createNode(2);
    myModelFactory.getRoot(2).addChild(TestModelFactory.ourRole, added);
    myFinder.added(added);
    assertSameNodes(initialCount + 3);
    Assert.assertTrue(myFinder.getNodes(TestModelFactory.ourConcept, true).contains(added));

    SNode removed = myModelFactory.getRoot(1).getFirstChild();
    removed.getParent().removeChild(removed);
    myFinder.removed(removed);
    assertSameNodes(initialCount + 2);
    Assert.assertFalse(myFinder.getNodes(TestModelFactory.ourConcept, true).contains(removed));

    myFinder.reset();
    assertSameNodes(initialCount + 2);
  }

  @Test(timeout = 20000)
  public void testGetNodesWhileReset() throws InterruptedException {
    final int expected = myModelFactory.countModelNodes();
    final Thread resetThread = new Thread(() -> {
      while (!Thread.currentThread().isInterrupted()) {
        myFinder.reset();
      }
    }, "FNF reset loop");
    resetThread.setDaemon(true);
    resetThread.start();
    try {
      final long deadline = System.nanoTime() + TimeUnit.SECONDS.toNanos(2);
      for (int i = 0; i < 200000 && System.nanoTime() < deadline; i++) {
        // a concurrent reset may force a rebuild, but shall never expose a cleared index
        Assert.assertEquals(expected, myFinder.getNodes(TestModelFactory.ourConcept, (i & 1) == 0).size());
      }
    } finally {
      resetThread.interrupt();
      resetThread.join(5000);
    }
    Assert.assertFalse(resetThread.isAlive());
  }

  private void assertSameNodes(int expectedCount) {
    List<SNode> exact = myFinder.getNodes(TestModelFactory.ourConcept, false);
    List<SNode> inherited = myFinder.getNodes(TestModelFactory.ourConcept, true);
    Assert.assertEquals(expectedCount, myModelFactory.countModelNodes());
    Assert.assertEquals(expectedCount, exact.size());
    Assert.assertEquals(expectedCount, inherited.size());
    Assert.assertEquals(new HashSet<>(exact), new HashSet<>(inherited));
  }

  @Test(timeout = 10000)
  public void testResetWhileNodeAdded() throws InterruptedException {
    final int initialCount = myModelFactory.countModelNodes();
    Assert.assertEquals(initialCount, myFinder.getNodes(TestModelFactory.ourConcept, false).size());

    SNode added = myModelFactory.createNode();
    myModelFactory.getRoot(1).addChild(TestModelFactory.ourRole, added);
    Thread resetThread = myFinder.resetConcurrentlyOnNextBuild();
    myFinder.added(added);
    resetThread.join(5000);
    Assert.assertFalse(resetThread.isAlive());

    Assert.assertEquals(initialCount + 1, myFinder.getNodes(TestModelFactory.ourConcept, false).size());
  }

  @Test(timeout = 10000)
  public void testResetWhileNodeRemoved() throws InterruptedException {
    final int initialCount = myModelFactory.countModelNodes();
    Assert.assertEquals(initialCount, myFinder.getNodes(TestModelFactory.ourConcept, false).size());

    SNode removed = myModelFactory.getRoot(1).getFirstChild();
    removed.getParent().removeChild(removed);
    Thread resetThread = myFinder.resetConcurrentlyOnNextBuild();
    myFinder.removed(removed);
    resetThread.join(5000);
    Assert.assertFalse(resetThread.isAlive());

    Assert.assertEquals(initialCount - 1, myFinder.getNodes(TestModelFactory.ourConcept, false).size());
  }

  private static class TestFinder extends BaseFastNodeFinder {
    private Thread myResetOnNextBuild;

    TestFinder(SModel model) {
      super(model);
    }

    Thread resetConcurrentlyOnNextBuild() {
      myResetOnNextBuild = new Thread(this::reset, "FNF reset");
      myResetOnNextBuild.setDaemon(true);
      return myResetOnNextBuild;
    }

    @Override
    protected ConceptInstanceMap build(Computable<ConceptInstanceMap> b) {
      Thread t = myResetOnNextBuild;
      myResetOnNextBuild = null;
      if (t != null) {
        t.start();
        // either reset() is done (no locking between check and update), or it waits for the update to complete
        while (t.isAlive() && t.getState() != Thread.State.BLOCKED) {
          Thread.onSpinWait();
        }
      }
      return super.build(b);
    }
  }
}
