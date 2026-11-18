/*
 * Copyright 2000-2026 JetBrains s.r.o. Use of this source code is governed by the Apache 2.0 license that can be found in the LICENSE file.
 */
package jetbrains.mps.vcs.changesmanager.editor;

import com.intellij.openapi.application.ApplicationManager;
import com.intellij.openapi.application.ex.ApplicationEx;
import com.intellij.util.ui.EmptyIcon;
import com.intellij.util.ui.update.MergingUpdateQueue;
import jetbrains.mps.errors.messageTargets.NodeMessageTarget;
import jetbrains.mps.errors.messageTargets.PropertyMessageTarget;
import jetbrains.mps.nodeEditor.EditorComponent;
import jetbrains.mps.nodeEditor.NodeEditorComponent;
import jetbrains.mps.nodeEditor.cells.EditorCell_Collection;
import jetbrains.mps.nodeEditor.cells.EditorCell_Constant;
import jetbrains.mps.nodeEditor.cells.GeometryUtil;
import jetbrains.mps.nodeEditor.inspector.InspectorEditorComponent;
import jetbrains.mps.nodeEditor.updater.UpdaterImpl;
import jetbrains.mps.openapi.editor.cells.EditorCell;
import jetbrains.mps.openapi.editor.cells.EditorCellContext;
import jetbrains.mps.openapi.editor.message.EditorMessageOwner;
import jetbrains.mps.openapi.editor.menus.transformation.SPropertyInfo;
import jetbrains.mps.openapi.editor.update.UpdaterListener;
import jetbrains.mps.project.MPSProject;
import jetbrains.mps.smodel.IllegalModelAccessError;
import jetbrains.mps.smodel.RepositoryFacade;
import jetbrains.mps.smodel.SNode;
import jetbrains.mps.smodel.SNodeUtil;
import jetbrains.mps.smodel.tempmodel.TempModuleOptions;
import jetbrains.mps.smodel.tempmodel.TemporaryModels;
import jetbrains.mps.testsuites.PlatformTestSuite;
import jetbrains.mps.vcs.changesmanager.CurrentDifferenceRegistry;
import jetbrains.mps.vcs.changesmanager.SimpleCommandQueue;
import jetbrains.mps.vcs.changesmanager.editor.ChangeGroupTestCase.RecordingHighlighter;
import jetbrains.mps.vcs.diff.ChangeSet;
import jetbrains.mps.vcs.diff.ChangeSetBuilder;
import jetbrains.mps.vcs.diff.changes.ChangeType;
import jetbrains.mps.vcs.diff.changes.ModelChange;
import jetbrains.mps.vcs.diff.merge.ModelLot;
import jetbrains.mps.vcs.diff.ui.common.Bounds;
import jetbrains.mps.vcs.diff.ui.common.ButtonsPainter;
import jetbrains.mps.vcs.diff.ui.common.ChangeColors;
import jetbrains.mps.vcs.diff.ui.common.ChangeEditorMessage;
import jetbrains.mps.vcs.diff.ui.common.ChangeGroup;
import jetbrains.mps.vcs.diff.ui.common.ChangeGroupInvalidateListener;
import jetbrains.mps.vcs.diff.ui.common.ChangeGroupLayout;
import jetbrains.mps.vcs.diff.ui.common.DiffChangeGroupLayout;
import jetbrains.mps.vcs.diff.ui.common.DiffEditor;
import jetbrains.mps.vcs.diff.ui.common.EditorCellMessageUtil;
import jetbrains.mps.vcs.diff.ui.common.FoldingAreaButton;
import org.jetbrains.mps.openapi.model.SModel;
import org.junit.AfterClass;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.Suite;

import javax.swing.SwingUtilities;
import java.awt.Graphics;
import java.awt.Point;
import java.awt.Rectangle;
import java.awt.event.MouseEvent;
import java.awt.image.BufferedImage;
import java.lang.reflect.Field;
import java.lang.reflect.Proxy;
import java.util.ArrayList;
import java.util.Collection;
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
import static org.junit.Assert.assertThrows;
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
    public void firstLineMessageForEditedRootPaintsWithoutModelAccess() throws Exception {
      assertMessagePaintsWithoutModelAccess(true, false, false);
    }

    @Test
    public void messageForOtherNodePaintsWholeCellWithoutModelAccess() throws Exception {
      assertMessagePaintsWithoutModelAccess(false, false, true);
    }

    @Test
    public void messageInInspectorPaintsWholeCellWithoutModelAccess() throws Exception {
      assertMessagePaintsWithoutModelAccess(true, true, false);
    }

    @Test
    public void firstLineMessageForEditedChildPaintsWithoutModelAccess() throws Exception {
      assertMessagePaintsWithoutModelAccess(true, false, true);
    }

    private void assertMessagePaintsWithoutModelAccess(boolean isEditedNode, boolean inspector, boolean hasParent) throws Exception {
      onEdt(() -> {
        boolean[] painting = {false};
        SNode parent = new SNode(SNodeUtil.concept_BaseConcept);
        SNode delegate = new SNode(SNodeUtil.concept_BaseConcept);
        if (hasParent) {
          parent.addChild(SNodeUtil.link_BaseConcept_smodelAttribute, delegate);
        }
        org.jetbrains.mps.openapi.model.SNode node = (org.jetbrains.mps.openapi.model.SNode) Proxy.newProxyInstance(
            org.jetbrains.mps.openapi.model.SNode.class.getClassLoader(), new Class<?>[]{org.jetbrains.mps.openapi.model.SNode.class},
            (proxy, method, args) -> {
              if ("getParent".equals(method.getName())) {
                assertFalse("Painting read the node's parent", painting[0]);
              }
              return method.invoke(delegate, args);
            });
        EditorComponent editor = inspector ? new InspectorEditorComponent(myProject.getRepository()) {
          @Override
          public org.jetbrains.mps.openapi.model.SNode getEditedNode() {
            return node;
          }
        } :
            new NodeEditorComponent(myProject.getRepository()) {
              @Override
              public org.jetbrains.mps.openapi.model.SNode getEditedNode() {
                return isEditedNode ? node : super.getEditedNode();
              }

              @Override
              public jetbrains.mps.nodeEditor.cells.EditorCell getBigValidCellForNode(org.jetbrains.mps.openapi.model.SNode n) {
                assertFalse("Painting looked up a node cell", painting[0]);
                return getRootCell();
              }
            };
        try {
          myProject.getModelAccess().runReadAction(() -> {
            EditorCell_Collection cells = EditorCell_Collection.createVertical(editor.getEditorContext(), node);
            cells.setBig(true);
            EditorCell_Constant firstLine = new EditorCell_Constant(editor.getEditorContext(), node, "first line");
            cells.addEditorCell(firstLine);
            cells.addEditorCell(new EditorCell_Constant(editor.getEditorContext(), node, "second, longer line"));
            cells.setX(10);
            cells.setY(20);
            cells.relayout();
            editor.setRootCell(cells);
          });
          ChangeEditorMessage message = myProject.getModelAccess().computeReadAction(() ->
              new ChangeEditorMessage(node, new PropertyMessageTarget(SNodeUtil.property_BaseConcept_virtualPackage),
                                      new EditorMessageOwner() { }, null, null, true) { });
          EditorCell_Collection cells = (EditorCell_Collection) editor.getRootCell();
          Rectangle expected = GeometryUtil.getBounds(isEditedNode && !inspector ? cells.firstCell() : cells);
          BufferedImage image = new BufferedImage(512, 512, BufferedImage.TYPE_INT_ARGB);
          Graphics graphics = image.createGraphics();
          painting[0] = true;
          try {
            ((ApplicationEx) ApplicationManager.getApplication()).withLocksProhibited("Diff message painting must not take locks", () -> {
              message.paint(graphics, editor, cells);
              return null;
            });
          }
          finally {
            painting[0] = false;
            graphics.dispose();
          }
          int color = ChangeColors.getInstance().getDiffColor(ChangeType.CHANGE).getRGB();
          assertEquals("Message outline does not start at the expected cell", color, image.getRGB(expected.x + 1, expected.y + 1));
          assertEquals("Message outline has the wrong height", color,
                       image.getRGB(expected.x + 1, expected.y + expected.height - 1));
          if (isEditedNode && !inspector) {
            assertEquals("First-line message outlined the second line", 0,
                         image.getRGB(cells.getX() + 1, cells.getY() + cells.getHeight() - 1));
          }
        }
        finally {
          editor.dispose();
        }
      });
    }

    @Test
    public void firstLineDecisionDependsOnSuppliedCell() throws Exception {
      onEdt(() -> {
        SNode node = new SNode(SNodeUtil.concept_BaseConcept);
        EditorComponent editor = new NodeEditorComponent(myProject.getRepository()) {
          @Override
          public org.jetbrains.mps.openapi.model.SNode getEditedNode() {
            return node;
          }
        };
        try {
          EditorCell_Collection cells = EditorCell_Collection.createVertical(editor.getEditorContext(), node);
          EditorCell_Constant directCell = new EditorCell_Constant(editor.getEditorContext(), node, "property");
          EditorCell_Constant nameCell = new EditorCell_Constant(editor.getEditorContext(), node, "name");
          nameCell.setCellContext(new EditorCellContext() {
            @Override
            public Collection<String> getHints() {
              return Collections.emptyList();
            }

            @Override
            public SPropertyInfo getPropertyInfo() {
              return new SPropertyInfo(node, SNodeUtil.property_INamedConcept_name);
            }
          });
          PropertyMessageTarget target = new PropertyMessageTarget(SNodeUtil.property_BaseConcept_virtualPackage);
          assertTrue(EditorCellMessageUtil.shouldUseFirstLineForMessage(editor, target, node, null));
          assertTrue(EditorCellMessageUtil.shouldUseFirstLineForMessage(editor, target, node, cells));
          assertFalse(EditorCellMessageUtil.shouldUseFirstLineForMessage(editor, target, node, directCell));
          assertTrue(EditorCellMessageUtil.shouldUseFirstLineForMessage(editor, target, node, nameCell));
          assertFalse(EditorCellMessageUtil.shouldUseFirstLineForMessage(
              editor, new PropertyMessageTarget(SNodeUtil.property_INamedConcept_name), node, nameCell));
        }
        finally {
          editor.dispose();
        }
      });
    }

    @Test
    public void firstLineMessageHasNoCellsInEmptyEditor() throws Exception {
      onEdt(() -> {
        SNode node = new SNode(SNodeUtil.concept_BaseConcept);
        EditorComponent editor = new NodeEditorComponent(myProject.getRepository()) {
          @Override
          public org.jetbrains.mps.openapi.model.SNode getEditedNode() {
            return node;
          }

          @Override
          public jetbrains.mps.nodeEditor.cells.EditorCell getBigValidCellForNode(org.jetbrains.mps.openapi.model.SNode n) {
            return getRootCell();
          }
        };
        try {
          myProject.getModelAccess().runReadAction(() -> {
            EditorCell_Collection cells = EditorCell_Collection.createVertical(editor.getEditorContext(), node);
            cells.setBig(true);
            editor.setRootCell(cells);
            PropertyMessageTarget target = new PropertyMessageTarget(SNodeUtil.property_BaseConcept_virtualPackage);
            assertTrue("Empty editor has message cells", EditorCellMessageUtil.getCells(editor, target, node).isEmpty());
          });
        }
        finally {
          editor.dispose();
        }
      });
    }

    @Test
    public void cellLookupRequiresCallerReadAccess() throws Exception {
      onEdt(() -> {
        SNode node = new SNode(SNodeUtil.concept_BaseConcept);
        EditorComponent editor = new NodeEditorComponent(myProject.getRepository());
        try {
          assertFalse(myProject.getModelAccess().canRead());
          NodeMessageTarget target = new NodeMessageTarget();
          assertThrows(IllegalModelAccessError.class, () -> EditorCellMessageUtil.getCellInBothWays(editor, target, node));
          myProject.getModelAccess().runReadAction(() -> EditorCellMessageUtil.getCellInBothWays(editor, target, node));
        }
        finally {
          editor.dispose();
        }
      });
    }

    @Test
    public void messageBoundsFollowResolvedCell() throws Exception {
      onEdt(() -> {
        SNode node = new SNode(SNodeUtil.concept_BaseConcept);
        EditorComponent editor = new NodeEditorComponent(myProject.getRepository());
        try {
          EditorCell_Collection cells = EditorCell_Collection.createVertical(editor.getEditorContext(), node);
          cells.addEditorCell(new EditorCell_Constant(editor.getEditorContext(), node, "message"));
          cells.setY(20);
          cells.relayout();
          for (boolean hasCell : new boolean[]{true, false}) {
            EditorCell resolvedCell = hasCell ? cells : null;
            ChangeEditorMessage message = myProject.getModelAccess().computeReadAction(() -> new ChangeEditorMessage(
                node, new PropertyMessageTarget(SNodeUtil.property_BaseConcept_virtualPackage),
                new EditorMessageOwner() { }, null, null, true) {
              @Override
              public EditorCell getCell(EditorComponent component) {
                return resolvedCell;
              }
            });
            Bounds bounds = myProject.getModelAccess().computeReadAction(() -> message.getBounds(editor));
            if (hasCell) {
              assertEquals(cells.getY(), (int) bounds.start());
              assertEquals(cells.getBottom(), (int) bounds.end());
            } else {
              assertTrue("Message without a cell has bounds", bounds.length() <= 0);
            }
          }
        }
        finally {
          editor.dispose();
        }
      });
    }

    @Test
    public void workingCopyDiffCalculatesGroupsWithHistoricalModelOnLeft() throws Exception {
      assertMixedRepositoryGroups(true);
    }

    @Test
    public void workingCopyDiffCalculatesGroupsWithHistoricalModelOnRight() throws Exception {
      assertMixedRepositoryGroups(false);
    }

    private void assertMixedRepositoryGroups(boolean historicalOnLeft) throws Exception {
      onEdt(() -> {
        RepositoryFacade historicalRepository = RepositoryFacade.createPlainRegistrationRepo(myProject.getRepository());
        ModelLot historicalModels = new ModelLot(historicalRepository);
        SModel[] models = new SModel[2];
        DiffEditor[] editors = new DiffEditor[2];
        SNode root = new SNode(SNodeUtil.concept_BaseConcept);
        try {
          myProject.getModelAccess().executeCommand(() -> {
            models[1] = TemporaryModels.getInstance().createEditable(
                true, TempModuleOptions.nonReloadableModule(myProject.getRepository()));
            root.setProperty(SNodeUtil.property_BaseConcept_virtualPackage, "before");
            models[1].addRootNode(root);
            models[0] = historicalModels.addCloneOf(models[1], "base", true);
            historicalModels.registerModels();
            root.setProperty(SNodeUtil.property_BaseConcept_virtualPackage, "after");
          });
          DiffChangeGroupLayout layout = myProject.getModelAccess().computeReadAction(() -> {
            SModel leftModel = models[historicalOnLeft ? 0 : 1];
            SModel rightModel = models[historicalOnLeft ? 1 : 0];
            editors[0] = new DiffEditor(myProject, leftModel, root.getNodeId(), "left", false, true, false);
            editors[1] = new DiffEditor(myProject, rightModel, root.getNodeId(), "right", false, true, false);
            ChangeSet changes = ChangeSetBuilder.buildChangeSet(leftModel, rightModel);
            assertEquals("Fixture must contain a property change", 1, changes.getModelChanges().size());
            editors[0].highlightChanges(leftModel, changes.getModelChanges(), true, null);
            editors[1].highlightChanges(rightModel, changes.getModelChanges(), false, null);
            return new DiffChangeGroupLayout(null, changes, editors[0], editors[1], null, false);
          });
          try {
            assertSame(historicalRepository.get(), editors[historicalOnLeft ? 0 : 1].getMainEditor().getEditorContext().getRepository());
            assertSame(myProject.getRepository(), editors[historicalOnLeft ? 1 : 0].getMainEditor().getEditorContext().getRepository());
            assertFalse("Group calculation must acquire its own project read access", myProject.getModelAccess().canRead());
            layout.invalidate();
            updateQueue(layout).flush();
            ChangeGroup group = onlyGroup(layout.getChangeGroups());
            assertTrue("Historical side has no change bounds", group.getBounds(historicalOnLeft).length() > 0);
            assertTrue("Working-copy side has no change bounds", group.getBounds(!historicalOnLeft).length() > 0);
          }
          finally {
            layout.dispose();
          }
        }
        finally {
          for (DiffEditor editor : editors) {
            if (editor != null) {
              editor.dispose();
            }
          }
          historicalModels.discard();
          historicalRepository.dispose();
          if (models[1] != null) {
            myProject.getModelAccess().executeCommand(() -> TemporaryModels.getInstance().dispose(models[1]));
          }
        }
      });
    }

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
    public void doubleClickDoesNotRepeatButtonActionAfterGroupUpdate() throws Exception {
      withPainter(f -> onEdt(() -> {
        TestButtonsPainter painter = new TestButtonsPainter(f.layout.getLeftComponent(), f.layout, f.highlighter);
        try {
          f.painter.relayout();
          updateQueue(f.layout).flush();
          painter.draw();
          Point point = painter.buttonPoint();
          painter.moveTo(point);
          assertTrue("Button click was not consumed", painter.click(point, 1).isConsumed());
          assertEquals(1, painter.myActions);
          updateQueue(f.layout).flush();
          for (int clickCount : new int[]{2, 3}) {
            assertTrue("Multi-click was passed to other painters", painter.click(point, clickCount).isConsumed());
          }
          assertEquals("Multi-click repeated an action on updated groups", 1, painter.myActions);
          painter.click(point, 1);
          assertEquals("A separate single click was ignored", 2, painter.myActions);
          Point outside = new Point(point.x + 100, point.y);
          for (int clickCount : new int[]{1, 2}) {
            assertFalse("Click outside the button was consumed", painter.click(outside, clickCount).isConsumed());
          }
        }
        finally {
          painter.dispose();
        }
      }));
    }

    @Test
    public void clickFindsUpdatedButtonWithoutMouseMovement() throws Exception {
      withPainter(f -> onEdt(() -> {
        TestButtonsPainter painter = new TestButtonsPainter(f.layout.getLeftComponent(), f.layout, f.highlighter);
        try {
          f.painter.relayout();
          updateQueue(f.layout).flush();
          painter.draw();
          Point oldPoint = painter.buttonPoint();
          painter.moveTo(oldPoint);
          assertEquals("Test action", painter.getToolTipText());
          f.highlighter.y = 60;
          f.layout.invalidate();
          painter.click(oldPoint, 1);
          assertEquals("Click used groups awaiting an update", 0, painter.myActions);
          updateQueue(f.layout).flush();
          assertNull("Relayout retained the old hovered button", painter.getToolTipText());
          painter.click(oldPoint, 1);
          assertEquals("Click used the old hovered button", 0, painter.myActions);
          painter.click(painter.buttonPoint(), 1);
          assertEquals("Click without mouse movement missed the updated button", 1, painter.myActions);
        }
        finally {
          painter.dispose();
        }
      }));
    }

    @Test
    public void separateClicksWaitForGroupUpdateAcrossPainters() throws Exception {
      withPainter(f -> onEdt(() -> {
        TestButtonsPainter first = new TestButtonsPainter(f.layout.getLeftComponent(), f.layout, f.highlighter);
        TestButtonsPainter second = new TestButtonsPainter(f.layout.getRightComponent(), f.layout, f.highlighter);
        try {
          f.painter.relayout();
          updateQueue(f.layout).flush();
          first.draw();
          second.draw();
          Point point = first.buttonPoint();
          first.click(point, 1);
          assertEquals(1, first.myActions);
          assertFalse("An action without model changes did not request an update", updateQueue(f.layout).isEmpty());
          first.relayout();
          first.click(point, 1);
          second.click(second.buttonPoint(), 1);
          assertEquals("Relayout allowed the snapshot to be reused", 1, first.myActions);
          assertEquals("Another painter reused the same snapshot", 0, second.myActions);
          updateQueue(f.layout).flush();
          second.click(point, 1);
          assertEquals("Updated groups remained blocked", 1, second.myActions);
        }
        finally {
          first.dispose();
          second.dispose();
        }
      }));
    }

    @Test
    public void failedButtonActionRequestsUpdateAndAllowsLaterClick() throws Exception {
      withPainter(f -> onEdt(() -> {
        TestButtonsPainter painter = new TestButtonsPainter(f.layout.getLeftComponent(), f.layout, f.highlighter);
        try {
          f.painter.relayout();
          updateQueue(f.layout).flush();
          painter.draw();
          Point point = painter.buttonPoint();
          IllegalStateException failure = new IllegalStateException("Test action failed");
          painter.myFailure = failure;
          assertSame(failure, assertThrows(IllegalStateException.class, () -> painter.click(point, 1)));
          assertFalse("Failed action did not request an update", updateQueue(f.layout).isEmpty());
          painter.myFailure = null;
          painter.click(point, 1);
          assertEquals(1, painter.myActions);
          updateQueue(f.layout).flush();
          painter.click(point, 1);
          assertEquals("Failed action left buttons blocked", 2, painter.myActions);
        }
        finally {
          painter.dispose();
        }
      }));
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
    private FoldingAreaButton myButton;
    private int myActions;
    private RuntimeException myFailure;

    TestButtonsPainter(EditorComponent editor, ChangeGroupLayout layout, RecordingHighlighter highlighter) {
      super(1, editor, layout);
      myHighlighter = highlighter;
    }

    @Override
    protected Iterable<FoldingAreaButton> createButtonsForChangeGroup(ChangeGroup changeGroup, int y) {
      myGroups.add(changeGroup);
      myButton = new FoldingAreaButton(changeGroup, getX(0), y, "Test action", EmptyIcon.ICON_16) {
        @Override
        public void performAction() {
          myActions++;
          if (myFailure != null) {
            throw myFailure;
          }
        }
      };
      return Collections.singletonList(myButton);
    }

    @Override
    public void relayout() {
      super.relayout();
      myGroups.clear();
    }

    Point buttonPoint() {
      return new Point(getLeftHighlighter().getFoldingLineX() + myButton.getX() + 1, myButton.getY() + 1);
    }

    void moveTo(Point point) {
      mouseMoved(new MouseEvent(getLeftHighlighter(), MouseEvent.MOUSE_MOVED, 0, 0, point.x, point.y, 0, false));
    }

    MouseEvent click(Point point, int clickCount) {
      MouseEvent event = new MouseEvent(getLeftHighlighter(), MouseEvent.MOUSE_CLICKED, 0, 0, point.x, point.y, clickCount, false,
                                        MouseEvent.BUTTON1);
      mousePressed(event);
      return event;
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
