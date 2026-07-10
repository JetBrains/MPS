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
package jetbrains.mps.ide.editor;

import com.intellij.codeHighlighting.BackgroundEditorHighlighter;
import com.intellij.ide.FileEditorProvider;
import com.intellij.ide.SelectInContext;
import com.intellij.ide.structureView.StructureViewBuilder;
import com.intellij.openapi.actionSystem.DataSink;
import com.intellij.openapi.actionSystem.PlatformDataKeys;
import com.intellij.openapi.actionSystem.UiDataProvider;
import com.intellij.openapi.editor.Document;
import com.intellij.openapi.fileEditor.DocumentsEditor;
import com.intellij.openapi.fileEditor.FileEditorState;
import com.intellij.openapi.fileEditor.FileEditorStateLevel;
import com.intellij.openapi.project.Project;
import com.intellij.openapi.util.UserDataHolderBase;
import com.intellij.openapi.vfs.VirtualFile;
import jetbrains.mps.ide.ThreadUtils;
import jetbrains.mps.ide.actions.MPSCommonDataKeys;
import jetbrains.mps.ide.editor.BaseNodeEditor.BaseEditorState;
import jetbrains.mps.logging.Logger;
import jetbrains.mps.nodefs.MPSNodeVirtualFile;
import jetbrains.mps.nodefs.NodeVirtualFileSystem;
import jetbrains.mps.openapi.editor.Editor;
import jetbrains.mps.openapi.editor.EditorComponent;
import jetbrains.mps.openapi.editor.EditorState;
import jetbrains.mps.project.MPSProject;
import jetbrains.mps.smodel.ModelAccessHelper;
import org.jetbrains.annotations.NonNls;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.annotations.Internal;
import org.jetbrains.mps.openapi.model.EditableSModel;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.module.SRepository;

import javax.swing.JComponent;
import javax.swing.JLabel;
import javax.swing.JPanel;
import java.awt.BorderLayout;
import java.awt.Font;
import java.beans.PropertyChangeListener;
import java.util.List;

public class MPSFileNodeEditor extends UserDataHolderBase implements DocumentsEditor {

  private Editor myNodeEditor;
  private final JPanel myComponent = new MPSFileNodeEditorComponent();
  protected final MPSProject myProject;
  private final MPSNodeVirtualFile myFile;
  private boolean myDisposed = false;
  // See: https://youtrack.jetbrains.com/issue/MPS-24409
  private EditorState myDelayedState = null;
  private boolean mySelected;

  public MPSFileNodeEditor(@NotNull MPSProject project, MPSNodeVirtualFile file) {
    // there's at least 1 scenario when file == null, although I'd like it to become @NotNull
    // FIXME ^^^ is it still true?
    myProject = project;
    myFile = file;

    JLabel label = new JLabel("Loading...", JLabel.CENTER);
    final Font font = label.getFont();
    label.setFont(font.deriveFont(font.getSize() * 2f)); // double size for better visibility
    myComponent.add(label, BorderLayout.CENTER);

    NodeEditorSModelChangeListener.getInstance(myProject).oneUp(this);
    myFile.whenReady(this::initEditor);
  }

  @Nullable
  public VirtualFile getFile() {
    return myFile;
  }

  @Nullable
  @Internal
  public MPSNodeVirtualFile internalGetFile() {
    return myFile;
  }

  public Editor getNodeEditor() {
    return myNodeEditor;
  }

  @Override
  @NotNull
  public JComponent getComponent() {
    return myComponent;
  }

  @Override
  @Nullable
  public JComponent getPreferredFocusedComponent() {
    if (isDisposed()) {
      return null;
    }
    if (myNodeEditor != null) {
      return (JComponent) myNodeEditor.getCurrentEditorComponent();
    }
    if (myComponent.getComponentCount() == 1 && myComponent.getComponent(0) instanceof JLabel) {
      return (JLabel) myComponent.getComponent(0);
    }
    // never ever create/attach components here, see MPS-39855 for explanation
    return myComponent;
  }

  @Override
  @NonNls
  @NotNull
  public String getName() {
    if (waitingForNodeFile()) {
      return "Editor waiting for node";
    }
    // that's what EditorTabTitleProviderImpl does, see no reason to differ.
    return myFile.getPresentableName();
  }

  @Override
  @NotNull
  public MPSEditorStateWrapper getState(@NotNull final FileEditorStateLevel level) {
    final MPSEditorStateWrapper state = new MPSEditorStateWrapper();
    if (!isDisposed() && myNodeEditor != null) {
      myProject.getModelAccess().runReadAction(() -> {
        EditorState editorState = myNodeEditor.saveState();
        if (level == FileEditorStateLevel.FULL) {
          editorState.clearSessionState();
        }
        state.setEditorState(editorState);
      });
    } else {
      state.setEditorState(new BaseEditorState());
    }
    state.setLevel(level);
    return state;
  }

  @Override
  public void setState(final @NotNull FileEditorState state) {
    if (myNodeEditor == null || !(state instanceof MPSEditorStateWrapper)) {
      return;
    }
    final MPSEditorStateWrapper wrapper = (MPSEditorStateWrapper) state;
    setState(wrapper.getEditorState(), wrapper.getLevel() == FileEditorStateLevel.UNDO);
  }

  private void setState(EditorState editorState, boolean isUndo) {
    myDelayedState = null;
    if (isUndo) {
      //we need it here since undo might need to flush events which requires write action
      myProject.getModelAccess().runWriteAction(() -> myNodeEditor.loadState(editorState, isUndo));
    } else {
      myNodeEditor.loadState(editorState, isUndo);
      final EditorState result = myProject.getModelAccess().computeReadAction(myNodeEditor::saveState);
      if (result.getClass() != editorState.getClass()) {
        myDelayedState = editorState;
      }
    }
  }

  @Override
  public boolean isModified() {
    if (waitingForNodeFile()) {
      return false;
    }
    if (!myFile.isValid()) {
      // XXX I wonder if we can recognize read-only files (e.g. for transient or stub models) and shortcut isModified === false?
      return false;
    }
    // XXX I believe it's sort of implicit assumption that editor's context has project repository, too.
    //     To use same repo editor uses seems to me fair approach, however. Just requires a lot of changes in this class
//    final SRepository repo = myNodeEditor.getEditorContext().getRepository();
    final SRepository repo = myProject.getRepository();
    return repo.getModelAccess().computeReadAction(() -> {
      final SNode fileNode = myFile.getSNodePointer().resolve(repo);
      if (fileNode == null) {
        Logger.getLogger(MPSFileNodeEditor.class).info(String.format("File does not contain node: %s", myFile));
        return false;
      }
      SModel md = fileNode.getModel();
      return md instanceof EditableSModel && ((EditableSModel) md).isChanged();
    });
  }

  @Override
  public boolean isValid() {
    // allowing myFile==null as it currently designates delayed editor: waiting for the model to become ready
    // in the repo and then becoming a normal fully-fledged editor
    return (waitingForNodeFile() || myFile.isValid()) && !myDisposed;
  }

  @Override
  public void selectNotify() {
    mySelected = true;
    if (myNodeEditor != null) {
      myNodeEditor.selectNotify();
    }
  }

  @Override
  public void deselectNotify() {
    if (myNodeEditor != null) {
      myNodeEditor.deselectNotify();
    }
    mySelected = false;
  }

  @Override
  public void addPropertyChangeListener(@NotNull PropertyChangeListener listener) {
  }

  @Override
  public void removePropertyChangeListener(@NotNull PropertyChangeListener listener) {
  }

  @Override
  @Nullable
  public BackgroundEditorHighlighter getBackgroundHighlighter() {
    // XXX left as a reminder to question myself why we don't use this IDEA's facility for highlighting.
    return null;
  }

  @Override
  @Nullable
  public StructureViewBuilder getStructureViewBuilder() {
    if (waitingForNodeFile()) {
      return null;
    }
    return new ModelAccessHelper(myProject.getModelAccess()).runReadAction(() -> {
      for (NodeStructureViewProvider provider : NodeStructureViewProvider.EP_NODE_STRUCTURE_VIEW_PROVIDER.getExtensions()) {
        // FIXME NodeStructureViewProvider shall not be shy to accept MPSProject directly, as it's what the only implementation out there does.
        StructureViewBuilder builder = provider.getStructureViewBuilder(myFile, myProject.getProject());
        if (builder != null) {
          return builder;
        }
      }
      return null;
    });
  }

  @Override
  public void dispose() {
    NodeEditorSModelChangeListener.getInstance(myProject).oneDown(this);
    if (myNodeEditor != null) {
      myNodeEditor.dispose();
    }
    myComponent.removeAll();
    myDisposed = true;
  }

  public boolean isDisposed() {
    return myDisposed;
  }

  // expects model read, and likely EDT?
  private void recreateEditor(EditorState state) {
    if (myProject.isDisposed() || !isValid() || waitingForNodeFile() || myFile.getNode() == null) {
      return;
    }

    myComponent.removeAll();

    Editor oldNodeEditor = myNodeEditor;
    myNodeEditor = new MPSEditorOpener(myProject).createEditorFor(myFile.getNode());
    if (oldNodeEditor != null) {
      oldNodeEditor.dispose();
    }

    if (state != null) {
      setState(state, false);
    }

    if (mySelected) {
      myNodeEditor.selectNotify();
    }

    myComponent.add(((BaseNodeEditor) myNodeEditor).getComponent(), BorderLayout.CENTER);
    myComponent.validate();

    // TabbedEditor.showNode() must be called as a last step to show the content (as MPSEditorOpener.openEditor does).
    // Note: Maybe put this directly into TabbedEditor constructor instead of relying on external call?
    if (myNodeEditor.isTabbed()) {
      myNodeEditor.showNode(myFile.getNode(), false);
    }
  }

  private void initEditor() {
    Runnable createEditor = () -> recreateEditor(myNodeEditor != null ? getState(FileEditorStateLevel.FULL).getEditorState() : null);
    if (ThreadUtils.isInEDT()) {
      // it's important not to delay editor creation, MPSEditorOpener may want to access component right after editor instantiation.
      myProject.getModelAccess().runReadAction(createEditor);
    } else {
      myProject.getModelAccess().runReadInEDT(createEditor);
    }
  }

  public void recreateEditorOnTabChange() {
    EditorState currentState = myNodeEditor != null ? getState(FileEditorStateLevel.FULL).getEditorState() : null;
    if (myDelayedState == null) {
      recreateEditor(currentState);
    } else {
      recreateEditor(myDelayedState);
    }
  }

  @Override
  public Document @NotNull [] getDocuments() {
    if (!isDisposed() && myNodeEditor != null) {
      List<Document> result = ((BaseNodeEditor) myNodeEditor).getAllEditedDocuments();
      return result.toArray(new Document[0]);
    }
    return new Document[0];
  }

  private boolean waitingForNodeFile() {
    // FIXME I don't quite understand if myFile could be null any longer, definitely not for isValid() story
    return myFile == null;
  }

  private class MPSFileNodeEditorComponent extends JPanel implements UiDataProvider {
    private MPSFileNodeEditorComponent() {
      super(new BorderLayout());
      // FWIW, there's UiDataProvider.wrapComponent() that might be useful if we'd like to avoid custom JComponent
    }

    @Override
    public void uiDataSnapshot(@NotNull DataSink dataSink) {
      // FIXME what's behind this logic? What does getParent() == null mean?
      if (getParent() == null) {
        dataSink.set(PlatformDataKeys.FILE_EDITOR, MPSFileNodeEditor.this);
      }
      // we need this much, LocationRule & MPSProjectRule works due to this + delegation
      dataSink.set(MPSCommonDataKeys.MPS_PROJECT, myProject);
      dataSink.set(PlatformDataKeys.PROJECT, myProject.getProject());

      if (myNodeEditor != null) {
        dataSink.set(MPSEditorDataKeys.MPS_EDITOR, myNodeEditor);
        if (myNodeEditor instanceof UiDataProvider edp) {
          // sort of hack, see TabbedEditor.uiDataSnapshot()
          edp.uiDataSnapshot(dataSink);
        }
      }
      dataSink.set(PlatformDataKeys.VIRTUAL_FILE, MPSFileNodeEditor.this.getFile());
      // MPS-15532, seems that IDEA doesn't expect VF of an editor to change. For MPS tabbed editor,
      //  can't use VF based on SNode of active tab (aspect). Using something like
      //  NodeEditorComponent.getVirtualFile() or CommandContextWithVF.getContextVirtualFile() would lead to
      //  changing VF for an editor (as it used to be with EC.getData(), removed by otherwise erroneous
      //  commit 1fa2b4a8 (original MPS-15532 fix))
      dataSink.lazy(SelectInContext.DATA_KEY, () -> {
        EditorComponent editorComponent = MPSFileNodeEditor.this.getNodeEditor().getCurrentEditorComponent();
        if (editorComponent == null || editorComponent.getEditedNode() == null) {
          return null;
        }
        SNode selectedNode = editorComponent.getSelectedNode();
        SNode editedNode = editorComponent.getEditedNode();
        if (selectedNode == null) {
          selectedNode = editedNode;
        }
        // FIXME why not MPSFileNodeEditor.myFile for editedNode, why VF at all for selectedNode (IDEA takes any Object)
        MPSNodeVirtualFile rootVirtualFile = NodeVirtualFileSystem.getInstance().getFileFor(myProject.getRepository(), editedNode);
        MPSNodeVirtualFile nodeVirtualFile = NodeVirtualFileSystem.getInstance().getFileFor(myProject.getRepository(), selectedNode);
        return new MySelectInContext(rootVirtualFile, nodeVirtualFile);
      });
    }

    private class MySelectInContext implements SelectInContext {

      private final VirtualFile myRootVirtualFile;
      private final VirtualFile myNodeVirtualFile;

      private MySelectInContext(VirtualFile rootVirtualFile, VirtualFile nodeVirtualFile) {
        myRootVirtualFile = rootVirtualFile;
        myNodeVirtualFile = nodeVirtualFile;
      }

      @Override
      public @NotNull Project getProject() {
        return myProject.getProject();
      }

      @Override
      public @NotNull VirtualFile getVirtualFile() {
        return myRootVirtualFile;
      }

      @Override
      public @Nullable Object getSelectorInFile() {
        return myNodeVirtualFile;
      }

      @Override
      public @Nullable FileEditorProvider getFileEditorProvider() {
        return null;
      }
    }

  }
}
