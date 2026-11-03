/*
 * Copyright 2000-2026 JetBrains s.r.o. Use of this source code is governed by the Apache 2.0 license that can be found in the LICENSE file.
 */
package jetbrains.mps.vcs.diff.ui.common;

import com.intellij.openapi.application.ApplicationManager;
import jetbrains.mps.nodeEditor.EditorComponent;
import jetbrains.mps.nodeEditor.cellLayout.CellLayout_Vertical;
import jetbrains.mps.nodeEditor.cells.EditorCell_Basic;
import jetbrains.mps.nodeEditor.cells.EditorCell_Collection;
import jetbrains.mps.nodeEditor.cells.EditorCell_Constant;
import jetbrains.mps.testsuites.PlatformTestSuite;
import jetbrains.mps.vcs.changesmanager.editor.ChangeGroupTestCase;
import org.junit.AfterClass;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.Suite;

import java.awt.Dimension;
import java.awt.Point;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.TimeUnit;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertTrue;

@RunWith(PlatformTestSuite.class)
@Suite.SuiteClasses(NextPreviousTraverserTest.Navigation.class)
public class NextPreviousTraverserTest {
  @AfterClass
  public static void tearDown() {
    PlatformTestSuite.tearDown();
  }

  public static class Navigation extends ChangeGroupTestCase {
    @Test
    public void initialNavigationUsesPendingGroupsInsteadOfEmptyOrPreviousGroups() throws Exception {
      for (boolean alreadyPublished : new boolean[]{false, true}) {
        withPainter(f -> {
          RecordingTraverser traverser = onEdt(() -> {
            EditorComponent editor = f.layout.getLeftComponent();
            EditorCell_Basic root = (EditorCell_Basic) editor.getRootCell();
            root.setY(0);
            root.setHeight(100);
            editor.getSelectionManager().clearSelection();
            updateQueue(f.layout).setMergingTimeSpan(60_000);
            if (alreadyPublished) {
              f.painter.relayout();
              updateQueue(f.layout).flush();
            }
            f.highlighter.y = 30;
            f.painter.relayout();
            RecordingTraverser result = new RecordingTraverser(Collections.singletonList(f.layout), editor);
            result.goToFirstChangeLater();
            assertFalse("Navigation ran synchronously", result.myNavigation.isDone());
            assertEquals("Navigation calculated groups synchronously", alreadyPublished ? 2 : 0, f.highlighter.reads);
            return result;
          });
          Bounds bounds = traverser.myNavigation.get(10, TimeUnit.SECONDS);
          assertEquals("Initial navigation used empty or previous groups", 30, (int) bounds.start());
          assertEquals(98, (int) bounds.end());
          onEdt(() -> assertEquals(30, (int) onlyGroup(f.layout.getChangeGroups()).getBounds(true).start()));
        });
      }
    }

    @Test
    public void initialNavigationIgnoresCurrentSelection() throws Exception {
      for (int firstChangeY : new int[]{0, 30}) {
        withPainter(f -> {
          RecordingTraverser traverser = onEdt(() -> {
            EditorComponent editor = f.layout.getLeftComponent();
            EditorCell_Collection root = new EditorCell_Collection(editor.getEditorContext(), null, new CellLayout_Vertical());
            EditorCell_Constant selected = new EditorCell_Constant(editor.getEditorContext(), null, "selected");
            root.addEditorCell(selected);
            editor.setRootCell(root);
            root.setY(0);
            root.setHeight(100);
            selected.setY(60);
            editor.changeSelection(selected);
            f.highlighter.y = firstChangeY;
            f.painter.relayout();
            RecordingTraverser result = new RecordingTraverser(Collections.singletonList(f.layout), editor);
            result.goToFirstChangeLater();
            return result;
          });
          Bounds bounds = traverser.myNavigation.get(10, TimeUnit.SECONDS);
          assertEquals("Initial navigation skipped changes above the selection", firstChangeY, (int) bounds.start());
        });
      }
    }

    @Test
    public void initialNavigationScrollsAfterManualScrolling() throws Exception {
      withPainter(f -> {
        NextPreviousTraverser traverser = onEdt(() -> {
          EditorComponent editor = f.layout.getLeftComponent();
          EditorCell_Collection root = new EditorCell_Collection(editor.getEditorContext(), null, new CellLayout_Vertical());
          for (int i = 0; i < 100; i++) {
            root.addEditorCell(new EditorCell_Constant(editor.getEditorContext(), null, "line " + i));
          }
          editor.setRootCell(root);
          editor.relayout();
          editor.getExternalComponent().setSize(400, 200);
          editor.getExternalComponent().doLayout();
          editor.getScrollPane().setSize(400, 200);
          editor.getScrollPane().doLayout();
          editor.getViewport().setSize(350, 180);
          editor.getViewport().setViewSize(new Dimension(400, root.getY() + root.getHeight()));
          f.highlighter.y = root.getCells()[10].getY();
          f.painter.relayout();
          return new NextPreviousTraverser(Collections.singletonList(f.layout), editor);
        });
        for (int i = 0; i < 3; i++) {
          CompletableFuture<Void> navigationCompleted = new CompletableFuture<>();
          onEdt(() -> {
            EditorComponent editor = f.layout.getLeftComponent();
            editor.getViewport().setViewPosition(new Point(0, editor.getRootCell().getHeight() - 200));
            assertFalse(editor.getVisibleRect().contains(1, f.highlighter.y));
            traverser.goToFirstChangeLater();
            ApplicationManager.getApplication().invokeLater(() -> navigationCompleted.complete(null));
          });
          navigationCompleted.get(10, TimeUnit.SECONDS);
          onEdt(() -> {
            EditorComponent editor = f.layout.getLeftComponent();
            assertTrue("First change outside " + editor.getVisibleRect(), editor.getVisibleRect().contains(1, f.highlighter.y));
          });
        }
      });
    }

    @Test
    public void initialNavigationLeavesOtherEditorsPending() throws Exception {
      withPainter(f -> withPainter(other -> {
        RecordingTraverser traverser = onEdt(() -> {
          f.painter.relayout();
          other.painter.relayout();
          RecordingTraverser result = new RecordingTraverser(List.of(f.layout, other.layout), f.layout.getLeftComponent());
          result.goToFirstChangeLater();
          return result;
        });
        traverser.myNavigation.get(10, TimeUnit.SECONDS);
        onEdt(() -> {
          assertEquals(1, f.layout.getChangeGroups().size());
          assertEquals("Navigation calculated groups for another editor", 0, other.highlighter.reads);
          assertFalse("Navigation consumed another editor's pending update", updateQueue(other.layout).isEmpty());
        });
      }));
    }
  }

  private static class RecordingTraverser extends NextPreviousTraverser {
    private final CompletableFuture<Bounds> myNavigation = new CompletableFuture<>();

    RecordingTraverser(List<ChangeGroupLayout> layouts, EditorComponent editor) {
      super(layouts, editor);
    }

    @Override
    public void goToBounds(Bounds bounds) {
      myNavigation.complete(bounds);
    }
  }
}
