/*
 * Copyright 2000-2026 JetBrains s.r.o. Use of this source code is governed by the Apache 2.0 license that can be found in the LICENSE file.
 */
package jetbrains.mps.vcs.diff.ui.common;

import com.intellij.openapi.application.ApplicationManager;
import com.intellij.openapi.application.ModalityState;
import com.intellij.openapi.application.impl.LaterInvocator;
import jetbrains.mps.ide.ModuleInProjectTest;
import jetbrains.mps.testsuites.PlatformTestSuite;
import jetbrains.mps.vcs.diff.ChangeSet;
import org.jmock.Mockery;
import org.junit.AfterClass;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.Suite;

import javax.swing.JPanel;
import javax.swing.SwingUtilities;
import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertSame;
import static org.junit.Assert.assertTrue;

@RunWith(PlatformTestSuite.class)
@Suite.SuiteClasses(TripleChangeGroupLayoutTest.Painting.class)
public class TripleChangeGroupLayoutTest {
  @AfterClass
  public static void tearDown() {
    PlatformTestSuite.tearDown();
  }

  public static class Painting extends ModuleInProjectTest {
    private DiffEditor myLeftEditor;
    private DiffEditor myRightEditor;
    private BlockingLayout mySource;
    private TripleChangeGroupLayout myLayout;
    private boolean myLayoutDisposed;

    @Test
    public void paintingDoesNotWaitForLeftLayoutCalculation() throws Exception {
      checkPaintingDuringCalculation(true, false);
    }

    @Test
    public void paintingDoesNotWaitForRightLayoutCalculation() throws Exception {
      checkPaintingDuringCalculation(false, false);
    }

    @Test
    public void layersArePublishedOnEdtDuringModality() throws Exception {
      checkPaintingDuringCalculation(true, true);
      checkPaintingDuringCalculation(false, true);
    }

    @Test
    public void invalidationUsesListenerSnapshot() throws Exception {
      createLayout(true, false, () -> {});
      CountDownLatch entered = new CountDownLatch(1);
      CountDownLatch release = new CountDownLatch(1);
      AtomicInteger removedCalls = new AtomicInteger();
      AtomicInteger addedCalls = new AtomicInteger();
      ChangeGroupInvalidateListener blocker = () -> {
        entered.countDown();
        try {
          assertTrue("Invalidation listener was not released", release.await(15, TimeUnit.SECONDS));
        }
        catch (InterruptedException e) {
          Thread.currentThread().interrupt();
          throw new AssertionError("Invalidation listener was interrupted", e);
        }
      };
      ChangeGroupInvalidateListener removed = removedCalls::incrementAndGet;
      onEdt(() -> {
        mySource.addInvalidateListener(blocker);
        mySource.addInvalidateListener(removed);
        return null;
      });
      Future<?> invalidation = ApplicationManager.getApplication().executeOnPooledThread(mySource::invalidate);
      try {
        assertTrue("Background invalidation did not start", entered.await(10, TimeUnit.SECONDS));
        onEdt(() -> {
          mySource.removeInvalidateListener(removed);
          mySource.addInvalidateListener(addedCalls::incrementAndGet);
          return null;
        });
        release.countDown();
        invalidation.get(10, TimeUnit.SECONDS);
        assertEquals("In-progress invalidation lost its listener", 1, removedCalls.get());
        assertEquals("In-progress invalidation picked up a new listener", 0, addedCalls.get());
        onEdt(() -> {
          mySource.removeInvalidateListener(blocker);
          mySource.invalidate();
          return null;
        });
        assertEquals("Removed listener was called again", 1, removedCalls.get());
        assertEquals("New listener was not called", 1, addedCalls.get());
      }
      finally {
        release.countDown();
        closeEditors();
      }
    }

    @Test
    public void onlyLatestQueuedLayersArePublished() throws Exception {
      AtomicInteger publications = new AtomicInteger();
      CountDownLatch updated = new CountDownLatch(1);
      createLayout(true, false, () -> {
        publications.incrementAndGet();
        updated.countDown();
      });
      CountDownLatch edtBlocked = new CountDownLatch(1);
      CountDownLatch releaseEdt = new CountDownLatch(1);
      FutureTask<Void> blocker = new FutureTask<>(() -> {
        edtBlocked.countDown();
        assertTrue("EDT blocker was not released", releaseEdt.await(15, TimeUnit.SECONDS));
        return null;
      });
      try {
        mySource.myValid = true;
        mySource.invalidate();
        assertTrue("Background calculation did not start", mySource.myStarted.await(10, TimeUnit.SECONDS));
        SwingUtilities.invokeLater(blocker);
        assertTrue("EDT blocker did not start", edtBlocked.await(10, TimeUnit.SECONDS));
        mySource.invalidate();
        mySource.myRelease.countDown();
        assertTrue("Second calculation did not start", mySource.myNextStarted.await(10, TimeUnit.SECONDS));
        mySource.invalidate();
        // The third calculation blocks after both preceding results have been queued for publication.
        assertTrue("Third calculation did not start", mySource.myThirdStarted.await(10, TimeUnit.SECONDS));
        releaseEdt.countDown();
        blocker.get(10, TimeUnit.SECONDS);
        assertTrue("Queued layer update did not finish", updated.await(10, TimeUnit.SECONDS));
        onEdt(() -> {
          assertEquals("Intermediate layers were published", 1, publications.get());
          List<DiffEditorChangeLayer> leftLayers = myLayout.getLayers(myLeftEditor);
          List<DiffEditorChangeLayer> rightLayers = myLayout.getLayers(myRightEditor);
          assertEquals(1, leftLayers.size());
          assertEquals(1, rightLayers.size());
          assertEquals("Latest left layers were not published", 20, leftLayers.get(0).getY());
          assertEquals("Latest right layers were not published", 20, rightLayers.get(0).getY());
          assertSame(rightLayers.get(0), leftLayers.get(0).getOppositeLayer());
          return null;
        });
      }
      finally {
        releaseEdt.countDown();
        mySource.myRelease.countDown();
        mySource.myThirdRelease.countDown();
        closeEditors();
      }
    }

    @Test
    public void disposedLayoutIgnoresQueuedPublication() throws Exception {
      CountDownLatch updated = new CountDownLatch(1);
      createLayout(true, false, updated::countDown);
      CountDownLatch edtBlocked = new CountDownLatch(1);
      CountDownLatch dispose = new CountDownLatch(1);
      FutureTask<Void> disposeTask = new FutureTask<>(() -> {
        edtBlocked.countDown();
        assertTrue("Layout disposal was not released", dispose.await(15, TimeUnit.SECONDS));
        disposeLayout();
        return null;
      });
      try {
        mySource.myValid = true;
        mySource.invalidate();
        assertTrue("Background calculation did not start", mySource.myStarted.await(10, TimeUnit.SECONDS));
        SwingUtilities.invokeLater(disposeTask);
        assertTrue("EDT blocker did not start", edtBlocked.await(10, TimeUnit.SECONDS));
        mySource.invalidate();
        mySource.myRelease.countDown();
        // The next calculation starts only after the first update has queued its publication.
        assertTrue("Next calculation did not start", mySource.myNextStarted.await(10, TimeUnit.SECONDS));
        dispose.countDown();
        disposeTask.get(10, TimeUnit.SECONDS);
        FutureTask<Void> drained = new FutureTask<>(() -> {
          assertTrue("Disposed layout retained layers", myLayout.getLayers(myLeftEditor).isEmpty());
          assertEquals("Disposed layout repainted after publication", 1, updated.getCount());
        }, null);
        ApplicationManager.getApplication().invokeLater(drained, ModalityState.any());
        drained.get(10, TimeUnit.SECONDS);
      }
      finally {
        dispose.countDown();
        mySource.myRelease.countDown();
        closeEditors();
      }
    }

    private void checkPaintingDuringCalculation(boolean left, boolean modal) throws Exception {
      for (boolean inspector : new boolean[]{false, true}) {
        CountDownLatch updated = new CountDownLatch(1);
        AtomicBoolean publishedOnEdt = new AtomicBoolean();
        createLayout(left, inspector, () -> {
          publishedOnEdt.set(SwingUtilities.isEventDispatchThread());
          updated.countDown();
        });
        List<DiffEditorChangeLayer> oldLeftLayers = onEdt(() -> myLayout.getLayers(myLeftEditor));
        List<DiffEditorChangeLayer> oldRightLayers = onEdt(() -> myLayout.getLayers(myRightEditor));
        CountDownLatch painted = new CountDownLatch(1);
        BufferedImage image = new BufferedImage(1, 1, BufferedImage.TYPE_INT_ARGB);
        Object modalEntity = new Object();
        boolean modalEntered = false;
        try {
          if (modal) {
            onEdt(() -> {
              // Detached editors must receive layers even while a modal dialog is open.
              // Enter modality directly so the test also works without a display.
              LaterInvocator.enterModal(modalEntity);
              return null;
            });
            modalEntered = true;
          }
          mySource.myValid = true;
          mySource.invalidate();
          assertTrue("Background calculation did not start", mySource.myStarted.await(10, TimeUnit.SECONDS));
          FutureTask<Void> paint = new FutureTask<>(() -> {
            Graphics2D graphics = image.createGraphics();
            try {
              myLayout.paintPolygons(graphics, new JPanel(), myLeftEditor, myRightEditor);
            }
            finally {
              graphics.dispose();
              painted.countDown();
            }
          }, null);
          SwingUtilities.invokeLater(paint);
          assertTrue("EDT painting waited for background calculation (inspector=" + inspector + ")",
                     painted.await(5, TimeUnit.SECONDS));
          paint.get(10, TimeUnit.SECONDS);
          onEdt(() -> {
            assertSame("Left layers changed before calculation finished", oldLeftLayers, myLayout.getLayers(myLeftEditor));
            assertSame("Right layers changed before calculation finished", oldRightLayers, myLayout.getLayers(myRightEditor));
            return null;
          });
          mySource.myRelease.countDown();
          // The queue repaints the splitter after publishing the new layers.
          assertTrue("Queued layer update did not finish", updated.await(10, TimeUnit.SECONDS));
          assertTrue("Layers were published outside EDT", publishedOnEdt.get());
          onEdt(() -> {
            List<DiffEditorChangeLayer> leftLayers = myLayout.getLayers(myLeftEditor);
            List<DiffEditorChangeLayer> rightLayers = myLayout.getLayers(myRightEditor);
            assertEquals("Left layers were not published", 1, leftLayers.size());
            assertEquals("Right layers were not published", 1, rightLayers.size());
            assertEquals(10, leftLayers.get(0).getY());
            assertEquals(10, rightLayers.get(0).getY());
            assertSame(rightLayers.get(0), leftLayers.get(0).getOppositeLayer());
            assertSame(leftLayers.get(0), rightLayers.get(0).getOppositeLayer());
            return null;
          });
        }
        finally {
          mySource.myRelease.countDown();
          try {
            if (modalEntered) {
              onEdt(() -> {
                LaterInvocator.leaveModal(modalEntity);
                return null;
              });
            }
            if (mySource.myStarted.getCount() == 0) {
              updated.await(10, TimeUnit.SECONDS);
            }
          }
          finally {
            closeEditors();
          }
        }
      }
    }

    private void createLayout(boolean left, boolean inspector, DiffChangeGroupLayout.SplitterRepainter repainter) throws Exception {
      onEdt(() -> {
        myProject.getRepository().getModelAccess().runReadAction(() -> {
          myLeftEditor = new DiffEditor(myProject, null, null, "left", false, true, inspector);
          myRightEditor = new DiffEditor(myProject, null, null, "right", false, true, inspector);
          mySource = new BlockingLayout(new Mockery().mock(ChangeSet.class), myLeftEditor, myRightEditor, repainter);
          myLayout = new TripleChangeGroupLayout(left ? mySource : null, left ? null : mySource, inspector);
          myLayoutDisposed = false;
        });
        return null;
      });
    }

    private void disposeLayout() {
      mySource.myValid = false;
      if (!myLayoutDisposed) {
        myLayout.dispose();
        myLayoutDisposed = true;
      }
    }

    private void closeEditors() throws Exception {
      onEdt(() -> {
        disposeLayout();
        myLeftEditor.dispose();
        myRightEditor.dispose();
        return null;
      });
    }

    private static <T> T onEdt(Callable<T> action) throws Exception {
      FutureTask<T> task = new FutureTask<>(action);
      ApplicationManager.getApplication().invokeAndWait(task, ModalityState.any());
      return task.get();
    }
  }

  private static class BlockingLayout extends DiffChangeGroupLayout {
    private volatile boolean myValid;
    private final AtomicInteger myCalculationCount = new AtomicInteger();
    private final CountDownLatch myStarted = new CountDownLatch(1);
    private final CountDownLatch myRelease = new CountDownLatch(1);
    private final CountDownLatch myNextStarted = new CountDownLatch(1);
    private final CountDownLatch myThirdStarted = new CountDownLatch(1);
    private final CountDownLatch myThirdRelease = new CountDownLatch(1);

    private BlockingLayout(ChangeSet changes, DiffEditor left, DiffEditor right, SplitterRepainter repainter) {
      super(null, changes, left, right, repainter, false);
    }

    @Override
    public boolean isValid() {
      return myValid;
    }

    @Override
    public List<ChangeGroup> getChangeGroups() {
      int calculation = myCalculationCount.incrementAndGet();
      if (calculation > 1) {
        myNextStarted.countDown();
      }
      myStarted.countDown();
      CountDownLatch release = myRelease;
      if (calculation == 3) {
        release = myThirdRelease;
        myThirdStarted.countDown();
      }
      try {
        assertTrue("Calculation " + calculation + " was not released", release.await(20, TimeUnit.SECONDS));
      }
      catch (InterruptedException e) {
        Thread.currentThread().interrupt();
        throw new AssertionError("Calculation was interrupted", e);
      }
      Bounds bounds = new Bounds(calculation * 10, calculation * 10 + 5);
      return Collections.singletonList(new ChangeGroup(bounds, bounds, Collections.emptyList(), null));
    }
  }
}
