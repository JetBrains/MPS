/*
 * Copyright 2003-2024 JetBrains s.r.o.
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
package jetbrains.mps.nodeEditor.cellActions;

import com.intellij.openapi.application.ApplicationManager;
import com.intellij.openapi.application.ModalityState;
import jetbrains.mps.datatransfer.PasteNodeData;
import jetbrains.mps.datatransfer.PastePlaceHint;
import jetbrains.mps.editor.runtime.cells.AbstractCellAction;
import jetbrains.mps.editor.runtime.commands.EditorCommand;
import jetbrains.mps.ide.datatransfer.CopyPasteUtil;
import jetbrains.mps.ide.project.ProjectHelper;
import jetbrains.mps.logging.Logger;
import jetbrains.mps.nodeEditor.EditorComponent;
import jetbrains.mps.nodeEditor.cells.CellFinderUtil;
import jetbrains.mps.nodeEditor.cells.EditorCell_Label;
import jetbrains.mps.nodeEditor.datatransfer.NodePaster;
import jetbrains.mps.openapi.editor.EditorContext;
import jetbrains.mps.openapi.editor.cells.EditorCell;
import jetbrains.mps.openapi.editor.selection.SelectionManager;
import jetbrains.mps.project.Project;
import jetbrains.mps.resolve.ResolverComponent;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeReference;
import org.jetbrains.mps.openapi.model.SReference;

import java.util.List;
import java.util.Set;


public class CellAction_PasteNodeRelative extends AbstractCellAction {
  private static final Logger LOG = Logger.getLogger(CellAction_PasteNodeRelative.class);

  PastePlaceHint myPastePlaceHint;

  public CellAction_PasteNodeRelative(boolean pasteBefore) {
    myPastePlaceHint = pasteBefore ? PastePlaceHint.BEFORE_ANCHOR : PastePlaceHint.AFTER_ANCHOR;
  }

  @Override
  public boolean canExecute(EditorContext context) {
    EditorCell selectedCell = context.getSelectedCell();
    if (selectedCell == null) {
      return false;
    }
    SNode anchorNode = selectedCell.getSNode();
    if (anchorNode == null) {
      return false;
    }
    List<SNode> pasteNodes = CopyPasteUtil.getNodesFromClipboard();
    if (pasteNodes == null || pasteNodes.isEmpty()) {
      return false;
    }

    if (!new NodePaster(pasteNodes).canPasteRelative(anchorNode)) {
      LOG.debug("Couldn't paste node relative");
      return false;
    }
    return true;
  }

  @Override
  public void execute(final EditorContext context) {
    LOG.assertLog(context.getRepository().getModelAccess().isCommandAction(), "This action must be performed in command");
    EditorComponent editorComponent = (EditorComponent) context.getEditorComponent();
    EditorCell selectedCell = editorComponent.getSelectedCell();
    SNode anchorNode = selectedCell.getSNode();

    final SNodeReference anchorNodeReference = anchorNode.getReference();
    final SModel modelToPaste = anchorNode.getModel();

    // FIXME relationship between Project and Editor needs attention, it's bad to extract
    final Project mpsProject = ProjectHelper.getProject(context.getRepository());
    if (mpsProject == null) {
      LOG.warning("Paste needs a project to show a dialog for additional imports");
      return;
    }

    final PasteNodeData pasteNodeData = CopyPasteUtil.getPasteNodeData();
    if (pasteNodeData == null || pasteNodeData.getNodes().isEmpty()) {
      return;
    }

    ApplicationManager.getApplication().invokeLater(() -> {
      final Runnable addImportsRunnable = CopyPasteUtil.addImportsWithDialog(pasteNodeData, modelToPaste, mpsProject);
      context.getRepository().getModelAccess().executeCommand(new EditorCommand(context) {
        @Override
        public void doExecute() {
          if (addImportsRunnable != null) {
            addImportsRunnable.run();
          }

          SNode resolvedAnchor = anchorNodeReference.resolve(context.getRepository());
          if (resolvedAnchor == null) {
            LOG.warning("Paste aborted. Anchor node reference no longer valid: " + anchorNodeReference);
            return;
          }

          List<SNode> pasteNodes = pasteNodeData.getNodes();
          Set<SReference> requireResolveReferences = pasteNodeData.getRequireResolveReferences();

          new NodePaster(pasteNodes).pasteRelative(resolvedAnchor, myPastePlaceHint);
          ResolverComponent.getInstance().resolveScopesOnly(requireResolveReferences, context.getRepository());

          // set selection
          editorComponent.getUpdater().flushModelEvents();
          EditorCell nodeCell = editorComponent.findNodeCell(pasteNodes.get(0));
          if (nodeCell == null) return; // after 'set reference'?
          EditorCell_Label labelCell = CellFinderUtil.findChildByClass(nodeCell, EditorCell_Label.class, true);

          if (labelCell != null) {
            editorComponent.changeSelection(labelCell);
          }

          if (pasteNodes.size() == 1) {
            editorComponent.pushSelection(nodeCell);
          } else {
            SelectionManager selectionManager = editorComponent.getSelectionManager();
            selectionManager.pushSelection(selectionManager.createRangeSelection(pasteNodes.get(0), pasteNodes.get(pasteNodes.size() - 1)));
          }

          pasteNodeData.consume();
        }
      });
    }, ModalityState.current());
  }
}
