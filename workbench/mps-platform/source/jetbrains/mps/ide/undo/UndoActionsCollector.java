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
package jetbrains.mps.ide.undo;

import com.intellij.openapi.command.undo.DocumentReference;
import com.intellij.openapi.command.undo.UndoManager;
import com.intellij.openapi.editor.Document;
import com.intellij.openapi.vfs.VirtualFile;
import jetbrains.mps.ide.project.ProjectHelper;
import jetbrains.mps.nodefs.MPSModelVirtualFile;
import jetbrains.mps.nodefs.MPSNodeVirtualFile;
import jetbrains.mps.nodefs.NodeVirtualFileSystem;
import jetbrains.mps.project.MPSProject;
import jetbrains.mps.project.Project;
import jetbrains.mps.smodel.ModelRenameUndoableAction;
import jetbrains.mps.smodel.SNodeUndoableAction;
import jetbrains.mps.smodel.SNodeUndoableAction.VFSChange;
import jetbrains.mps.smodel.UndoItem;
import jetbrains.mps.smodel.undo.UndoContext;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SModelReference;
import org.jetbrains.mps.openapi.model.SNode;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

/**
 * Integrates MPS undo actions with IDEA undo mechanism (by injecting {@code SNodeIdeaUndoableAction})
 */
public class UndoActionsCollector {
  private final UndoContext myUndoContext;
  private final List<UndoItem> myActions = new ArrayList<>();
  private final List<MPSNodeVirtualFile> myDeletedFiles = new ArrayList<>();
  private final List<MPSNodeVirtualFile> myCreatedFiles = new ArrayList<>();
  private boolean myIsGlobal = false;
  private final Set<DocumentReference> myDocumentReferences = new LinkedHashSet<>();
  private final Map<SModelReference, List<VirtualFile>> myChangedFiles = new HashMap<>();
  private boolean myDisposed = false;

  UndoActionsCollector(UndoContext undoContext) {
    myUndoContext = undoContext;
  }

  void addAction(ModelRenameUndoableAction action) {
    assert !myDisposed;
    myActions.add(action);
    myIsGlobal = true;

    SModel model = action.getAffectedModel();
    if (model != null) {
      MPSModelVirtualFile file = NodeVirtualFileSystem.getInstance().getFileFor(myUndoContext.getRepository(), model.getReference());
      assert file.isValid() :
          "Invalid file was returned by VFS node is not available: " + model + ".";

      myChangedFiles.computeIfAbsent(model.getReference(), k -> new ArrayList<>()).add(file);

      for (SNode rootNode : model.getRootNodes()) {
        MPSNodeVirtualFile nodeFile = NodeVirtualFileSystem.getInstance().getFileFor(myUndoContext.getRepository(), rootNode);
        assert nodeFile.hasValidMPSNode() :
            "Invalid file was returned by VFS node is not available: " + rootNode + ", deleted = " + (rootNode.getModel() == null);

        myChangedFiles.computeIfAbsent(model.getReference(), k -> new ArrayList<>()).add(nodeFile);
        Document document = MPSUndoUtil.getDoc(nodeFile);
        if (document != null) {
          myDocumentReferences.add(MPSUndoUtil.getRefForDoc(document));
        }
      }
    }
  }

  void addAction(SNodeUndoableAction action) {
    assert !myDisposed;
    myActions.add(action);
    myIsGlobal |= action.getAssociatedVfsChange() != VFSChange.NOT_CHANGED;

    for (SNode virtualFileNode : myUndoContext.getVirtualFileNodes(action)) {
      if (virtualFileNode.getModel() == null) {
        continue;
      }
      MPSNodeVirtualFile file = NodeVirtualFileSystem.getInstance().getFileFor(myUndoContext.getRepository(), virtualFileNode);
      assert file.hasValidMPSNode() :
          "Invalid file was returned by VFS node is not available: " + virtualFileNode + ", deleted = " + (virtualFileNode.getModel() == null);

      Document document = MPSUndoUtil.getDoc(file);
      if (document == null) {
        continue;
      }
      myDocumentReferences.add(MPSUndoUtil.getRefForDoc(document));
      myChangedFiles.computeIfAbsent(virtualFileNode.getModel().getReference(), k -> new ArrayList<>()).add(file);
    }
    // the created/deleted file is the one of the affected root, whatever other files the UndoContext reports
    MPSNodeVirtualFile fileToUpdate = null;
    if (action.getAssociatedVfsChange() != VFSChange.NOT_CHANGED && action.getAffectedNode() != null) {
      SNode affectedRoot = action.getAffectedNode().getContainingRoot();
      if (affectedRoot.getModel() != null) {
        fileToUpdate = NodeVirtualFileSystem.getInstance().getFileFor(myUndoContext.getRepository(), affectedRoot);
      }
    }
    if (fileToUpdate != null) {
      // recording deleted &  created files, using this information later for restoring vFiles in VFS cache
      // keeping track of files which was deleted & then re-created

      if (action.getAssociatedVfsChange() == VFSChange.FILE_DELETED) {
        if (!myCreatedFiles.remove(fileToUpdate)) {
          myDeletedFiles.add(fileToUpdate);
        }
      } else if (action.getAssociatedVfsChange() == VFSChange.FILE_CREATED) {
        if (!myDeletedFiles.remove(fileToUpdate)) {
          myCreatedFiles.add(0, fileToUpdate);
        }
      } else {
        throw new IllegalArgumentException("VFSChange: " + action.getAssociatedVfsChange() + "is not supported.");
      }
    }
  }

  void flushAndDispose() {
    assert !myDisposed;
    myDisposed = true;
    List<UndoItem> allItems = new ArrayList<>();
    // restoring all created virtual files on redo before redoing any other model modifications
    // in order to put file into VFS before accessing it from the redo actions
    for (MPSNodeVirtualFile createdFile : myCreatedFiles) {
      allItems.add(new RestoreVirtualFileInstance(createdFile, false));
    }
    allItems.addAll(myActions);
    // restoring all deleted virtual files on undo before undoing any other model modifications
    // in order to put file into VFS before accessing it from the undo actions
    for (MPSNodeVirtualFile deletedFile : myDeletedFiles) {
      allItems.add(new RestoreVirtualFileInstance(deletedFile, true));
    }

    if (allItems.isEmpty()) {
      return;
    }

    Project project = ProjectHelper.getProject(myUndoContext.getRepository());
    if (!(project instanceof MPSProject)) {
      throw new IllegalStateException("Current project is not instance of MPSProject: " + project);
    }

    com.intellij.openapi.project.Project ideaProject = ((MPSProject) project).getProject();
    UndoManager undoManager = UndoManager.getInstance(ideaProject);
    SNodeIdeaUndoableAction undoableAction = new SNodeIdeaUndoableAction(allItems, myUndoContext.getRepository(), myIsGlobal, myDocumentReferences);
    undoManager.undoableActionPerformed(undoableAction);

    OnReloadingUndoCleaner undoCleaner = OnReloadingUndoCleaner.getInstance(ideaProject);
    for (Entry<SModelReference, List<VirtualFile>> modelAndDocuments : myChangedFiles.entrySet()) {
      undoCleaner.registerUndo(modelAndDocuments.getKey(), modelAndDocuments.getValue());
    }
  }
}
