/*
 * Copyright 2000-2026 JetBrains s.r.o. Use of this source code is governed by the Apache 2.0 license that can be found in the LICENSE file.
 */
package jetbrains.mps.ide.editor;


import com.intellij.openapi.application.ApplicationManager;
import com.intellij.openapi.fileEditor.ex.FileEditorManagerEx;
import com.intellij.openapi.project.Project;
import com.intellij.openapi.util.Disposer;
import com.intellij.openapi.vfs.VirtualFile;
import jetbrains.mps.ide.ThreadUtils;
import jetbrains.mps.ide.project.ProjectHelper;
import jetbrains.mps.nodeEditor.EditorComponent;
import jetbrains.mps.nodeEditor.NodeEditorComponent;
import jetbrains.mps.openapi.editor.Editor;
import jetbrains.mps.project.MPSProject;
import jetbrains.mps.smodel.language.LanguageRegistry;
import jetbrains.mps.smodel.runtime.ModuleDeploymentChange;
import jetbrains.mps.smodel.runtime.ModuleDeploymentListener;
import org.jetbrains.annotations.NotNull;

import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;

/**
 * IDEA project service to track MPSFileNodeEditor and respective EditorComponents.
 * Perhaps, could be a subscriber to {@code FileEditorManagerListener#FILE_EDITOR_MANAGER} but as long as I need to keep
 * active CL (deployment) listener, can't use IDEA listener mechanism.
 * MPSFileNodeEditorProvider is an IDEA extension, object with a distinct lifecycle, and can't serve the purpose of tracking/updating
 * editors.
 *
 * XXX check if MPSEditorWarningsManager could be client of this service, instead
 *
 * @author Artem Tikhomirov
 * @since 2022.3
 */
public final class EditorTrackService {

  private final MPSProject myProject;
  private final CopyOnWriteArrayList<MPSFileNodeEditor> myEditors = new CopyOnWriteArrayList<>();

  private final ModuleDeploymentListener myDeployListener = new RefreshEditors();

  private boolean myListenersActive = false;

  public static EditorTrackService getInstance(Project ideaProject) {
    return ideaProject.getService(EditorTrackService.class);
  }

  public EditorTrackService(Project ideaProject) {
    myProject = ProjectHelper.fromIdeaProjectOrFail(ideaProject);
  }

  /*package*/ void editorCreated(@NotNull final MPSFileNodeEditor editor) {
    myEditors.add(editor);
    Disposer.register(editor, () -> editorDisposed(editor));
    if (!myListenersActive) {
      activateListeners();
    }
  }

  /*package*/ void editorDisposed(@NotNull MPSFileNodeEditor editor) {
    if (myEditors.remove(editor)) {
      if (myEditors.isEmpty()) {
        deactivateListeners();
      }
    }
  }

  /*package*/ void commitPendingCellValues() {
    ThreadUtils.assertEDT();
    // avoid repeated commitAllCellValues on the shared inspector
    Set<EditorComponent> components = new LinkedHashSet<>();
    for (MPSFileNodeEditor fileEditor : myEditors) {
      Editor nodeEditor = fileEditor.getNodeEditor();
      if (nodeEditor == null || !(nodeEditor.getCurrentEditorComponent() instanceof NodeEditorComponent editorComponent)) {
        continue;
      }
      components.add(editorComponent);
      EditorComponent inspector = editorComponent.getInspector();
      if (inspector != null) {
        components.add(inspector);
      }
    }
    components.forEach(EditorComponent::commitAllCellValues);
  }

  private void activateListeners() {
    assert !myListenersActive;
    myProject.getPlatform().findComponent(LanguageRegistry.class).addRegistryListener(myDeployListener);
    myListenersActive = true;
  }

  private void deactivateListeners() {
    assert myListenersActive;
    myProject.getPlatform().findComponent(LanguageRegistry.class).removeRegistryListener(myDeployListener);
    myListenersActive = false;
  }

  // Need to know about deployed modules as it's behavior's getPresentation() code that affects file name
  // FIXME has to listen to file changes, instead, not to reload every
  private class RefreshEditors implements ModuleDeploymentListener {
    @Override
    public void deploymentStateChanged(@NotNull ModuleDeploymentChange change) {
      final List<VirtualFile> files = myEditors.stream().map(MPSFileNodeEditor::getFile).toList();
      if (files.isEmpty()) {
        return;
      }
      // used to be model read in EDT, not sure if there's any reason for that. updateFilePresentation() seems just to queue updates.
      // perhaps, it was for getVirtualFile, that accessed SNode. Well, now it does not.
      ApplicationManager.getApplication().executeOnPooledThread(() -> {
        final com.intellij.openapi.project.Project project = myProject.getProject();
        // FIXME first, it has to be WorkbenchModelAccess not to start read/write for disposed project
        //       second, I don't think DeployListener is the right way to address editor title update, too low-level, imo.
        if (project.isDisposed()) {
          return;
        }
        FileEditorManagerEx manager = FileEditorManagerEx.getInstanceEx(project);
        files.forEach(manager::updateFilePresentation);
        // XXX There's similar update logic in at least NodeEditorSModelChangeListener and TabRootNodesTracker, perhaps, there could be some
        // shared/common approach not to trigger update from numerous places?
      });
    }
  }
}
