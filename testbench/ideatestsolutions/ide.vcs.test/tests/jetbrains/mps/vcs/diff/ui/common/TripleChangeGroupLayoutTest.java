/*
 * Copyright 2000-2026 JetBrains s.r.o. Use of this source code is governed by the Apache 2.0 license that can be found in the LICENSE file.
 */
package jetbrains.mps.vcs.diff.ui.common;

import com.intellij.openapi.application.ApplicationManager;
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
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;

import static org.junit.Assert.assertNotSame;
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

    @Test
    public void paintingDoesNotWaitForLeftLayoutCalculation() throws Exception {
      checkPaintingDuringCalculation(true);
    }

    @Test
    public void paintingDoesNotWaitForRightLayoutCalculation() throws Exception {
      checkPaintingDuringCalculation(false);
    }

    private void checkPaintingDuringCalculation(boolean left) throws Exception {
      for (boolean inspector : new boolean[]{false, true}) {
        CountDownLatch updated = new CountDownLatch(1);
        ApplicationManager.getApplication().invokeAndWait(() -> myProject.getRepository().getModelAccess().runReadAction(() -> {
          myLeftEditor = new DiffEditor(myProject, null, null, "left", false, true, inspector);
          myRightEditor = new DiffEditor(myProject, null, null, "right", false, true, inspector);
          // Seed the holders so getLayers() returns stable references before the first update.
          myLeftEditor.setLayers(Collections.emptyList(), inspector);
          myRightEditor.setLayers(Collections.emptyList(), inspector);
          mySource = new BlockingLayout(new Mockery().mock(ChangeSet.class), myLeftEditor, myRightEditor, updated::countDown);
          myLayout = new TripleChangeGroupLayout(left ? mySource : null, left ? null : mySource, inspector);
        }));
        List<DiffEditorChangeLayer> oldLeftLayers = myLeftEditor.getLayers(inspector);
        List<DiffEditorChangeLayer> oldRightLayers = myRightEditor.getLayers(inspector);
        CountDownLatch painted = new CountDownLatch(1);
        BufferedImage image = new BufferedImage(1, 1, BufferedImage.TYPE_INT_ARGB);
        try {
          mySource.myValid = true;
          mySource.invalidate();
          assertTrue("Background calculation did not start", mySource.myStarted.await(10, TimeUnit.SECONDS));
          FutureTask<Void> paint = new FutureTask<>(() -> {
            // A hidden divider returns immediately, after acquiring the same monitor as a visible divider.
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
          assertSame("Left layers changed before calculation finished", oldLeftLayers, myLeftEditor.getLayers(inspector));
          assertSame("Right layers changed before calculation finished", oldRightLayers, myRightEditor.getLayers(inspector));
          mySource.myRelease.countDown();
          // The queue repaints the splitter after publishing the new layers.
          assertTrue("Queued layer update did not finish", updated.await(10, TimeUnit.SECONDS));
          assertNotSame("Left layers were not published", oldLeftLayers, myLeftEditor.getLayers(inspector));
          assertNotSame("Right layers were not published", oldRightLayers, myRightEditor.getLayers(inspector));
        }
        finally {
          mySource.myRelease.countDown();
          try {
            if (mySource.myStarted.getCount() == 0) {
              updated.await(10, TimeUnit.SECONDS);
            }
          }
          finally {
            ApplicationManager.getApplication().invokeAndWait(() -> {
              mySource.myValid = false;
              myLayout.dispose();
              myLeftEditor.dispose();
              myRightEditor.dispose();
            });
          }
        }
      }
    }
  }

  private static class BlockingLayout extends DiffChangeGroupLayout {
    private volatile boolean myValid;
    private final CountDownLatch myStarted = new CountDownLatch(1);
    private final CountDownLatch myRelease = new CountDownLatch(1);

    private BlockingLayout(ChangeSet changes, DiffEditor left, DiffEditor right, SplitterRepainter repainter) {
      super(null, changes, left, right, repainter, false);
    }

    @Override
    public boolean isValid() {
      return myValid;
    }

    @Override
    public List<ChangeGroup> getChangeGroups() {
      myStarted.countDown();
      try {
        assertTrue("Calculation was not released", myRelease.await(20, TimeUnit.SECONDS));
      }
      catch (InterruptedException e) {
        Thread.currentThread().interrupt();
        throw new AssertionError("Calculation was interrupted", e);
      }
      return Collections.emptyList();
    }
  }
}
