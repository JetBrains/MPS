/*
 * Copyright 2000-2026 JetBrains s.r.o. Use of this source code is governed by the Apache 2.0 license that can be found in the LICENSE file.
 */
package jetbrains.mps.vcs.changesmanager.editor;

import com.intellij.openapi.application.ApplicationManager;
import com.intellij.util.ui.update.MergingUpdateQueue;
import jetbrains.mps.nodeEditor.EditorComponent;
import jetbrains.mps.nodeEditor.NodeEditorComponent;
import jetbrains.mps.nodeEditor.updater.UpdaterImpl;
import jetbrains.mps.openapi.editor.update.UpdaterListener;
import jetbrains.mps.project.MPSProject;
import jetbrains.mps.smodel.SNode;
import jetbrains.mps.smodel.SNodeUtil;
import jetbrains.mps.smodel.tempmodel.TempModuleOptions;
import jetbrains.mps.smodel.tempmodel.TemporaryModels;
import jetbrains.mps.testsuites.PlatformTestSuite;
import jetbrains.mps.vcs.changesmanager.CurrentDifferenceRegistry;
import jetbrains.mps.vcs.changesmanager.SimpleCommandQueue;
import jetbrains.mps.vcs.changesmanager.editor.ChangeGroupTestCase.RecordingHighlighter;
import jetbrains.mps.vcs.diff.changes.ModelChange;
import jetbrains.mps.vcs.diff.ui.common.ButtonsPainter;
import jetbrains.mps.vcs.diff.ui.common.ChangeEditorMessage;
import jetbrains.mps.vcs.diff.ui.common.ChangeGroup;
import jetbrains.mps.vcs.diff.ui.common.ChangeGroupInvalidateListener;
import jetbrains.mps.vcs.diff.ui.common.DiffChangeGroupLayout;
import jetbrains.mps.vcs.diff.ui.common.DiffEditor;
import jetbrains.mps.vcs.diff.ui.common.FoldingAreaButton;
import org.jetbrains.mps.openapi.model.SModel;
import org.junit.AfterClass;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.Suite;

import javax.swing.SwingUtilities;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertNull;
import static org.junit.Assert.assertSame;
import static org.junit.Assert.assertTrue;

@RunWith(PlatformTestSuite.class)
@Suite.SuiteClasses(ChangeStripsPainterTest.Painting.class)
public class ChangeStripsPainterTest {
  @AfterClass
  public static void tearDown() {
    PlatformTestSuite.tearDown();
  }

  public static class Painting extends ChangeGroupTestCase {
    @Test
    public void disposalBeforeQueuedPainterCreationDoesNotInstallPainter() throws Exception {
      SModel[] model = new SModel[1];
      EditorComponent editor = onEdt(() -> {
        EditorComponent result = new NodeEditorComponent(myProject.getRepository());
        myProject.getModelAccess().executeCommand(() -> {
          model[0] = TemporaryModels.getInstance().createEditable(true, TempModuleOptions.nonReloadableModule(myProject.getRepository()));
          SNode root = new SNode(SNodeUtil.concept_BaseConcept);
          model[0].addRootNode(root);
          result.editNode(root);
        });
        return result;
      });
      EditorHighlighter[] highlighter = new EditorHighlighter[1];
      try {
        SimpleCommandQueue queue = CurrentDifferenceRegistry.getInstance(myProject.getProject()).getCommandQueue();
        CountDownLatch ready = new CountDownLatch(1);
        queue.runTask(ready::countDown);
        assertTrue("Changes command queue did not start", ready.await(10, TimeUnit.SECONDS));
        CompletableFuture<Void> uiDrained = new CompletableFuture<>();
        onEdt(() -> {
          highlighter[0] = new EditorHighlighter(myProject.getProject(), editor);
          CountDownLatch initialized = new CountDownLatch(1);
          queue.runTask(initialized::countDown);
          assertTrue("Highlighter initialization did not finish", initialized.await(10, TimeUnit.SECONDS));
          Field listener = EditorHighlighter.class.getDeclaredField("myListener");
          listener.setAccessible(true);
          assertNotNull("Highlighter skipped painter initialization", listener.get(highlighter[0]));
          assertNull(highlighter[0].getStripsPainter());
          highlighter[0].dispose();
          editor.dispose();
          ApplicationManager.getApplication().invokeLater(() -> uiDrained.complete(null));
        });
        uiDrained.get(10, TimeUnit.SECONDS);
        onEdt(() -> assertNull("Disposed highlighter installed a painter", highlighter[0].getStripsPainter()));
      }
      finally {
        onEdt(() -> {
          if (highlighter[0] != null && (!editor.isDisposed() || highlighter[0].getStripsPainter() != null)) {
            highlighter[0].dispose();
          }
          if (!editor.isDisposed()) {
            editor.dispose();
          }
          myProject.getModelAccess().executeCommand(() -> TemporaryModels.getInstance().dispose(model[0]));
        });
      }
    }

    @Test
    public void invalidationKeepsPaintingAndBackgroundReadersOnPublishedGroups() throws Exception {
      withPainter(f -> onEdt(() -> {
        assertTrue(f.layout.getChangeGroups().isEmpty());
        f.painter.relayout();
        f.painter.draw();
        assertEquals("Relayout calculated groups synchronously", 0, f.highlighter.reads);
        updateQueue(f.layout).flush();
        List<ChangeGroup> groups = f.layout.getChangeGroups();
        assertEquals(1, groups.size());
        assertEquals(10, (int) onlyGroup(groups).getBounds(true).start());
        f.highlighter.y = 30;
        f.painter.relayout();
        f.painter.relayout();
        f.painter.relayout();
        f.painter.draw();
        assertSame(groups, f.layout.getChangeGroups());
        Callable<List<ChangeGroup>> read = f.layout::getChangeGroups;
        assertSame("Background gutter reader recalculated groups", groups,
                   ApplicationManager.getApplication().executeOnPooledThread(read).get(10, TimeUnit.SECONDS));
        assertEquals(2, f.highlighter.reads);
        updateQueue(f.layout).flush();
        assertEquals(30, (int) onlyGroup(f.layout.getChangeGroups()).getBounds(true).start());
        assertEquals("Repeated relayouts were not merged", 4, f.highlighter.reads);
        f.painter.draw();
      }));
    }

    @Test
    public void disposalCancelsQueuedCalculation() throws Exception {
      withPainter(f -> onEdt(() -> {
        f.painter.relayout();
        f.painter.dispose();
        updateQueue(f.layout).flush();
        assertEquals("Disposed painter calculated groups", 0, f.highlighter.reads);
      }));
    }

    @Test
    public void hiddenEditorsKeepPendingGroupsUntilShown() throws Exception {
      withPainter(f -> onEdt(() -> {
        MergingUpdateQueue queue = updateQueue(f.layout);
        assertFalse("Hidden editor has an active calculation queue", queue.isActive());
        for (int i = 0; i < 3; i++) {
          f.painter.relayout();
        }
        assertFalse(queue.isEmpty());
        assertEquals(0, f.highlighter.reads);
        f.highlighter.y = 30;
        queue.showNotify();
        assertEquals(30, (int) onlyGroup(f.layout.getChangeGroups()).getBounds(true).start());
        assertEquals("Hidden updates were not merged", 2, f.highlighter.reads);
        queue.hideNotify();
        f.highlighter.y = 50;
        f.painter.relayout();
        assertFalse(queue.isActive());
        assertEquals(2, f.highlighter.reads);
        assertEquals(30, (int) onlyGroup(f.layout.getChangeGroups()).getBounds(true).start());
        queue.showNotify();
        assertEquals(50, (int) onlyGroup(f.layout.getChangeGroups()).getBounds(true).start());
        assertEquals(4, f.highlighter.reads);
      }));
    }

    @Test
    public void disposingDiffLayoutRemovesBothInspectorListeners() throws Exception {
      onEdt(() -> myProject.getRepository().getModelAccess().runReadAction(() -> {
        DiffEditor left = new DiffEditor(myProject, null, null, "left", false, true, true);
        DiffEditor right = new DiffEditor(myProject, null, null, "right", false, true, true);
        try {
          List<UpdaterListener> leftBefore = inspectorListeners(left);
          List<UpdaterListener> rightBefore = inspectorListeners(right);
          RecordingHighlighter highlighter = new RecordingHighlighter(myProject.getProject(), left.getEditorComponent(false));
          try {
            DiffChangeGroupLayout layout = new DiffChangeGroupLayout(null, highlighter.getChangeSet(), left, right, null, true);
            try {
              assertFalse("Hidden inspector has an active calculation queue", updateQueue(layout).isActive());
              List<UpdaterListener> added = inspectorListeners(left);
              added.removeAll(leftBefore);
              assertEquals(1, added.size());
              assertTrue(inspectorListeners(right).contains(added.getFirst()));
            }
            finally {
              layout.dispose();
            }
            assertEquals("Left inspector retained the layout listener", leftBefore, inspectorListeners(left));
            assertEquals("Right inspector retained the layout listener", rightBefore, inspectorListeners(right));
          }
          finally {
            highlighter.dispose();
          }
        }
        finally {
          left.dispose();
          right.dispose();
        }
      }));
    }

    @Test
    public void listenersSeePublishedGroupsAndUseListenerSnapshot() throws Exception {
      withPainter(f -> onEdt(() -> {
        int[] removedCalls = {0};
        int[] addedCalls = {0};
        ChangeGroupInvalidateListener removed = () -> removedCalls[0]++;
        ChangeGroupInvalidateListener added = () -> addedCalls[0]++;
        f.layout.addInvalidateListener(() -> {
          assertTrue(SwingUtilities.isEventDispatchThread());
          assertEquals(f.highlighter.y, (int) onlyGroup(f.layout.getChangeGroups()).getBounds(true).start());
          f.layout.removeInvalidateListener(removed);
          f.layout.addInvalidateListener(added);
        });
        f.layout.addInvalidateListener(removed);
        f.layout.invalidate();
        updateQueue(f.layout).flush();
        assertEquals(1, removedCalls[0]);
        assertEquals(0, addedCalls[0]);
        f.highlighter.y = 40;
        f.layout.invalidate();
        updateQueue(f.layout).flush();
        assertEquals(1, removedCalls[0]);
        assertEquals(1, addedCalls[0]);
      }));
    }

    @Test
    public void diffButtonsUsePublishedGroupsInMainEditorAndInspector() throws Exception {
      for (boolean inspector : new boolean[]{false, true}) {
        ButtonFixture f = onEdt(() -> {
          ButtonFixture result = new ButtonFixture();
          myProject.getRepository().getModelAccess().runReadAction(() -> {
            result.editor = new RecordingDiffEditor(myProject);
            result.highlighter = new RecordingHighlighter(myProject.getProject(), result.editor.getEditorComponent(false));
            result.editor.myHighlighter = result.highlighter;
            result.layout = new DiffChangeGroupLayout(null, result.highlighter.getChangeSet(), result.editor, result.editor, null, inspector);
            result.painter = new TestButtonsPainter(result.editor.getEditorComponent(inspector), result.layout, result.highlighter);
          });
          return result;
        });
        try {
          onEdt(() -> {
            f.layout.invalidate();
            f.painter.draw();
            assertEquals(0, f.highlighter.reads);
            updateQueue(f.layout).flush();
            f.painter.draw();
            assertEquals(10, (int) onlyGroup(f.painter.myGroups).getBounds(true).start());
            List<ChangeGroup> published = f.layout.getChangeGroups();
            f.highlighter.y = 30;
            f.layout.invalidate();
            f.painter.relayout();
            f.painter.draw();
            assertSame(published, f.layout.getChangeGroups());
            assertEquals(10, (int) onlyGroup(f.painter.myGroups).getBounds(true).start());
            assertEquals(2, f.highlighter.reads);
            updateQueue(f.layout).flush();
            f.painter.draw();
            assertEquals(30, (int) onlyGroup(f.painter.myGroups).getBounds(true).start());
            assertEquals(4, f.highlighter.reads);
            f.layout.invalidate();
            f.layout.dispose();
            updateQueue(f.layout).flush();
            assertEquals("Disposed diff layout calculated groups", 4, f.highlighter.reads);
          });
        }
        finally {
          onEdt(() -> {
            f.painter.dispose();
            f.layout.dispose();
            f.highlighter.dispose();
            f.editor.dispose();
          });
        }
      }
    }

    @SuppressWarnings("unchecked")
    private static List<UpdaterListener> inspectorListeners(DiffEditor editor) {
      try {
        Field field = UpdaterImpl.class.getDeclaredField("myListeners");
        field.setAccessible(true);
        return new ArrayList<>((List<UpdaterListener>) field.get(editor.getInspector().getUpdater()));
      }
      catch (ReflectiveOperationException ex) {
        throw new AssertionError(ex);
      }
    }

  }

  private static class ButtonFixture {
    RecordingDiffEditor editor;
    RecordingHighlighter highlighter;
    DiffChangeGroupLayout layout;
    TestButtonsPainter painter;
  }

  private static class RecordingDiffEditor extends DiffEditor {
    private RecordingHighlighter myHighlighter;

    RecordingDiffEditor(MPSProject project) {
      super(project, null, null, "diff", false, true, true);
    }

    @Override
    public List<ChangeEditorMessage> getMessagesForChange(ModelChange change) {
      return myHighlighter.getMessages(change);
    }
  }

  private static class TestButtonsPainter extends ButtonsPainter {
    private final RecordingHighlighter myHighlighter;
    private final List<ChangeGroup> myGroups = new ArrayList<>();

    TestButtonsPainter(EditorComponent editor, DiffChangeGroupLayout layout, RecordingHighlighter highlighter) {
      super(1, editor, layout);
      myHighlighter = highlighter;
    }

    @Override
    protected Iterable<FoldingAreaButton> createButtonsForChangeGroup(ChangeGroup changeGroup, int y) {
      myGroups.add(changeGroup);
      return Collections.emptyList();
    }

    @Override
    public void relayout() {
      super.relayout();
      myGroups.clear();
    }

    void draw() {
      Graphics graphics = new BufferedImage(8, 100, BufferedImage.TYPE_INT_ARGB).createGraphics();
      myHighlighter.painting = true;
      try {
        paintInLocalCoordinates(graphics);
      }
      finally {
        myHighlighter.painting = false;
        graphics.dispose();
      }
    }
  }
}
