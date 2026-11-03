/*
 * Copyright 2000-2026 JetBrains s.r.o. Use of this source code is governed by the Apache 2.0 license that can be found in the LICENSE file.
 */
package jetbrains.mps.vcs.changesmanager.editor;

import com.intellij.openapi.application.ApplicationManager;
import com.intellij.openapi.application.ModalityState;
import com.intellij.openapi.project.Project;
import com.intellij.util.ui.update.MergingUpdateQueue;
import jetbrains.mps.errors.messageTargets.NodeMessageTarget;
import jetbrains.mps.ide.ModuleInProjectTest;
import jetbrains.mps.nodeEditor.EditorComponent;
import jetbrains.mps.smodel.SNode;
import jetbrains.mps.smodel.SNodeUtil;
import jetbrains.mps.vcs.diff.ChangeSet;
import jetbrains.mps.vcs.diff.changes.ChangeType;
import jetbrains.mps.vcs.diff.changes.ModelChange;
import jetbrains.mps.vcs.diff.changes.NodeCopier;
import jetbrains.mps.vcs.diff.ui.common.Bounds;
import jetbrains.mps.vcs.diff.ui.common.ChangeEditorMessage;
import jetbrains.mps.vcs.diff.ui.common.ChangeGroup;
import jetbrains.mps.vcs.diff.ui.common.ChangeGroupLayout;
import jetbrains.mps.vcs.diff.ui.common.DiffEditor;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.model.SModel;

import javax.swing.SwingUtilities;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.lang.reflect.Field;
import java.lang.reflect.Proxy;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertTrue;

public abstract class ChangeGroupTestCase extends ModuleInProjectTest {
  protected void withPainter(PainterAction action) throws Exception {
    PainterFixture fixture = onEdt(() -> {
      PainterFixture result = new PainterFixture();
      myProject.getRepository().getModelAccess().runReadAction(() -> {
        result.editor = new DiffEditor(myProject, null, null, "strips", false, true, false);
        result.highlighter = new RecordingHighlighter(myProject.getProject(), result.editor.getEditorComponent(false));
        result.painter = new TestPainter(result.highlighter);
      });
      Field field = ChangeStripsPainter.class.getDeclaredField("myChangeGroupLayout");
      field.setAccessible(true);
      result.layout = (ChangeGroupLayout) field.get(result.painter);
      return result;
    });
    try {
      action.run(fixture);
    }
    finally {
      onEdt(() -> {
        if (!fixture.painter.disposed) {
          fixture.painter.dispose();
        }
        fixture.highlighter.dispose();
        fixture.editor.dispose();
      });
    }
  }

  protected static MergingUpdateQueue updateQueue(ChangeGroupLayout layout) {
    try {
      Field field = ChangeGroupLayout.class.getDeclaredField("myUpdateQueue");
      field.setAccessible(true);
      return (MergingUpdateQueue) field.get(layout);
    }
    catch (ReflectiveOperationException ex) {
      throw new AssertionError(ex);
    }
  }

  protected static ChangeGroup onlyGroup(List<ChangeGroup> groups) {
    assertEquals(1, groups.size());
    return groups.getFirst();
  }

  protected static void onEdt(EdtRunnable action) throws Exception {
    onEdt(() -> {
      action.run();
      return null;
    });
  }

  protected static <T> T onEdt(Callable<T> action) throws Exception {
    FutureTask<T> task = new FutureTask<>(action);
    ApplicationManager.getApplication().invokeAndWait(task, ModalityState.any());
    return task.get(10, TimeUnit.SECONDS);
  }

  @FunctionalInterface
  protected interface EdtRunnable {
    void run() throws Exception;
  }

  @FunctionalInterface
  protected interface PainterAction {
    void run(PainterFixture fixture) throws Exception;
  }

  protected static class PainterFixture {
    public DiffEditor editor;
    public RecordingHighlighter highlighter;
    public TestPainter painter;
    public ChangeGroupLayout layout;
  }

  protected static class TestPainter extends ChangeStripsPainter {
    private final RecordingHighlighter myHighlighter;
    public boolean disposed;

    TestPainter(RecordingHighlighter highlighter) {
      super(highlighter);
      myHighlighter = highlighter;
    }

    public void draw() {
      Graphics graphics = new BufferedImage(8, 100, BufferedImage.TYPE_INT_ARGB).createGraphics();
      graphics.setClip(-5, 0, 5, 100);
      myHighlighter.painting = true;
      try {
        paintInLocalCoordinates(graphics);
      }
      finally {
        myHighlighter.painting = false;
        graphics.dispose();
      }
    }

    @Override
    public void dispose() {
      disposed = true;
      super.dispose();
    }
  }

  protected static class RecordingHighlighter extends EditorHighlighter {
    private final EditorComponent myEditor;
    public boolean painting;
    public int reads;
    public int y = 10;
    private final List<ModelChange> myChanges = new ArrayList<>();
    private final ChangeSet myChangeSet = (ChangeSet) Proxy.newProxyInstance(ChangeSet.class.getClassLoader(),
        new Class<?>[]{ChangeSet.class}, (proxy, method, args) -> {
          if (!"getModelChanges".equals(method.getName())) {
            throw new AssertionError("Unexpected ChangeSet call: " + method.getName());
          }
          return myChanges;
        });
    private final ModelChange myChange = new ModelChange(myChangeSet, null) {
      @Override
      public void apply(@NotNull SModel model, @NotNull NodeCopier nodeCopier) {
        throw new AssertionError("Not used");
      }

      @Override
      @NotNull
      public ModelChange createOppositeChange() {
        throw new AssertionError("Not used");
      }

      @Override
      @NotNull
      public ChangeType getType() {
        return ChangeType.CHANGE;
      }

      @Override
      public String getDescription() {
        return "Test change";
      }

      @Override
      public String toString() {
        return getDescription();
      }
    };
    private final ChangeEditorMessage myMessage = new ChangeEditorMessage(
        new SNode(SNodeUtil.concept_BaseConcept), new NodeMessageTarget(), this, myChange, null, false) {
      @Override
      public Bounds getBounds(jetbrains.mps.openapi.editor.EditorComponent editor) {
        assertTrue(SwingUtilities.isEventDispatchThread());
        editor.getEditorContext().getRepository().getModelAccess().checkReadAccess();
        return new Bounds(y, y + 5);
      }
    };

    RecordingHighlighter(Project project, EditorComponent editor) {
      super(project, editor);
      myEditor = editor;
      myChanges.add(myChange);
    }

    @Override
    public ChangeSet getChangeSet() {
      assertFalse("Painting accessed the change set", painting);
      assertTrue("Calculation ran outside EDT", SwingUtilities.isEventDispatchThread());
      myEditor.getEditorContext().getRepository().getModelAccess().checkReadAccess();
      return myChangeSet;
    }

    @Override
    @NotNull
    public List<ChangeEditorMessage> getMessages(ModelChange change) {
      assertFalse("Painting looked up editor messages", painting);
      reads++;
      return Collections.singletonList(myMessage);
    }
  }
}
