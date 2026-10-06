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
package jetbrains.mps.ide.projectPane.fileSystem;

import com.intellij.icons.AllIcons.Actions;
import com.intellij.ide.SelectInContext;
import com.intellij.ide.SelectInTarget;
import com.intellij.ide.projectView.ProjectView;
import com.intellij.ide.projectView.impl.AbstractProjectViewPane;
import com.intellij.openapi.actionSystem.ActionGroup;
import com.intellij.openapi.actionSystem.ActionPlaces;
import com.intellij.openapi.actionSystem.DataProvider;
import com.intellij.openapi.actionSystem.PlatformDataKeys;
import com.intellij.openapi.application.AccessToken;
import com.intellij.openapi.fileEditor.FileEditorManager;
import com.intellij.openapi.fileEditor.FileEditorManagerEvent;
import com.intellij.openapi.fileEditor.FileEditorManagerListener;
import com.intellij.openapi.fileEditor.ex.IdeDocumentHistory;
import com.intellij.openapi.project.Project;
import com.intellij.openapi.project.ProjectUtil;
import com.intellij.openapi.util.ActionCallback;
import com.intellij.openapi.vcs.FileStatusListener;
import com.intellij.openapi.vcs.FileStatusManager;
import com.intellij.openapi.vfs.VfsUtil;
import com.intellij.openapi.vfs.VirtualFile;
import com.intellij.openapi.vfs.VirtualFileManager;
import com.intellij.openapi.vfs.VirtualFileManagerListener;
import com.intellij.openapi.vfs.newvfs.BulkFileListener;
import com.intellij.openapi.vfs.newvfs.events.VFileEvent;
import com.intellij.openapi.wm.ToolWindow;
import com.intellij.openapi.wm.ToolWindowId;
import com.intellij.openapi.wm.ToolWindowManager;
import com.intellij.ui.ScrollPaneFactory;
import com.intellij.util.SlowOperations;
import com.intellij.util.messages.MessageBusConnection;
import jetbrains.mps.extapi.persistence.FileSystemBasedDataSource;
import jetbrains.mps.ide.ThreadUtils;
import jetbrains.mps.ide.project.ProjectHelper;
import jetbrains.mps.ide.projectPane.AbstractProjectViewSelectInTarget;
import jetbrains.mps.ide.projectPane.ProjectPaneActionGroups;
import jetbrains.mps.ide.projectPane.fileSystem.actions.providers.FilePaneCopyProvider;
import jetbrains.mps.ide.projectPane.fileSystem.actions.providers.FilePanePasteProvider;
import jetbrains.mps.ide.projectPane.fileSystem.nodes.AbstractFileTreeNode;
import jetbrains.mps.ide.projectPane.fileSystem.nodes.FileTreeNode;
import jetbrains.mps.ide.projectPane.fileSystem.nodes.FolderTreeNode;
import jetbrains.mps.ide.projectPane.fileSystem.nodes.ModuleTreeNode;
import jetbrains.mps.ide.projectPane.fileSystem.nodes.ProjectTreeNode;
import jetbrains.mps.ide.ui.tree.MPSTree;
import jetbrains.mps.ide.ui.tree.MPSTreeNode;
import jetbrains.mps.ide.ui.tree.TextTreeNode;
import jetbrains.mps.logging.Logger;
import jetbrains.mps.nodefs.MPSNodeVirtualFile;
import jetbrains.mps.smodel.ModelAccessHelper;
import jetbrains.mps.vfs.IFile;
import jetbrains.mps.workbench.ActionPlace;
import jetbrains.mps.workbench.MPSDataKeys;
import org.jetbrains.annotations.NonNls;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SModelReference;
import org.jetbrains.mps.openapi.module.SRepository;
import org.jetbrains.mps.openapi.persistence.DataSource;

import javax.swing.AbstractAction;
import javax.swing.Icon;
import javax.swing.JComponent;
import javax.swing.JScrollPane;
import javax.swing.KeyStroke;
import javax.swing.tree.TreeNode;
import javax.swing.tree.TreePath;
import java.awt.event.ActionEvent;
import java.awt.event.KeyEvent;
import java.util.LinkedList;
import java.util.List;

public class FileViewProjectPane extends AbstractProjectViewPane implements DataProvider {
  private static final Logger LOG = Logger.getLogger(FileViewProjectPane.class);
  @NonNls
  public static final String ID = "FileSystem";
  public static final String TITLE = "File System";

  private MessageBusConnection myMessageBusConnection;
  private FileStatusListener myFileStatusListener;
  private VirtualFileManagerListener myVirtualFileManagerListener;
  private JScrollPane myScrollPane;

  public FileViewProjectPane(final Project project) {
    super(project);
  }

  @Override
  public void dispose() {
    if (isInitialized()) {
      disposeListeners();
    }
    myScrollPane = null;
  }

  @Override
  public MPSTree getTree() {
    return (MPSTree) myTree;
  }

  public Project getProject() {
    return myProject;
  }

  public void rebuildTreeLater() {
    if (isInitialized()) {
      getTree().rebuildLater();
    }
  }

  @NotNull
  @Override
  public Icon getIcon() {
    return Actions.ShowAsTree;
  }

  @NotNull
  @Override
  public JComponent createComponent() {
    if (isInitialized()) {
      return myScrollPane;
    }
    installListeners();
    myTree = new MPSTree() {
      {
        // it's not apparent whether access to the list of project modules requires model read or not
        AbstractAction openEditorAction = new AbstractAction() {
          @Override
          public void actionPerformed(ActionEvent e) {
            Object selectedNode = getLastSelectedPathComponent();
            if (selectedNode instanceof FileTreeNode) {
              openEditor(((FileTreeNode) selectedNode));
            }
          }
        };
        getInputMap().put(KeyStroke.getKeyStroke(KeyEvent.VK_ENTER, 0), openEditorAction);
        getActionMap().put(openEditorAction, openEditorAction);
      }

      @Override
      protected ActionGroup createPopupActionGroup(final MPSTreeNode node) {
        return ProjectPaneActionGroups.getActionGroup(node);
      }

      @Override
      protected String getPopupMenuPlace() {
        return ActionPlaces.FILEVIEW_POPUP;
      }

      @Override
      protected MPSTreeNode rebuild() {
        try (AccessToken ignored = SlowOperations.allowSlowOperations(SlowOperations.GENERIC)) { // MPS-36709
          MPSTreeNode node;
          if (!myProject.isDisposed() && ProjectUtil.guessProjectDir(myProject) != null && ProjectHelper.fromIdeaProject(myProject) != null) {
            node = new ProjectTreeNode(ProjectHelper.fromIdeaProject(myProject));
          } else {
            node = new TextTreeNode("No Project");
          }
          return node;
        }
      }

      @Override
      protected void doubleClick(@NotNull MPSTreeNode nodeToClick) {
        if (nodeToClick instanceof FileTreeNode) {
          openEditor(((FileTreeNode) nodeToClick));
        }
      }
    };

    assert ThreadUtils.isInEDT();
    getTree().rebuildNow();
    myScrollPane = ScrollPaneFactory.createScrollPane(myTree);
    return myScrollPane;
  }

  private void installListeners() {
    // TODO: Verify correct Disposable used
    FileStatusManager.getInstance(myProject).addFileStatusListener(myFileStatusListener = new FileStatusChangeListener(), this);
    VirtualFileManager.getInstance().addVirtualFileManagerListener(myVirtualFileManagerListener = new RefreshListener(), this);
    myMessageBusConnection = myProject.getMessageBus().connect(this);
    myMessageBusConnection.subscribe(VirtualFileManager.VFS_CHANGES, new FileChangesListener());
    myMessageBusConnection.subscribe(FileEditorManagerListener.FILE_EDITOR_MANAGER, new FileEditorManagerListener() {
      @Override
      public void fileOpened(@NotNull FileEditorManager source, @NotNull VirtualFile file) {
        if (isAutoscrollFromSource()) {
          selectNode(file, false);
        }
      }

      @Override
      public void selectionChanged(@NotNull FileEditorManagerEvent event) {
        if (isAutoscrollFromSource()) {
          VirtualFile newFile = event.getNewFile();
          if (newFile != null) {
            selectNode(newFile, false);
          }
        }
      }
    });
  }

  private void disposeListeners() {
    VirtualFileManager.getInstance().removeVirtualFileManagerListener(myVirtualFileManagerListener);
    myMessageBusConnection.disconnect();
  }

  private boolean isInitialized() {
    return myScrollPane != null;
  }

  @NotNull
  @Override
  public ActionCallback updateFromRoot(boolean restoreExpandedPaths) {
    rebuildTreeLater();
    return new ActionCallback();
  }

  @Override
  public void select(Object element, VirtualFile file, boolean requestFocus) {
    selectNode(file, false);
  }

  @Override
  public Object getData(@NotNull String dataId) {
    if (PlatformDataKeys.VIRTUAL_FILE_ARRAY.getName().equals(dataId)) {
      List<VirtualFile> files = new LinkedList<>();
      TreePath[] treePaths = getSelectionPaths();
      if (treePaths != null) {
        for (TreePath tp : treePaths) {
          Object lastPathComponent = tp.getLastPathComponent();
          if (lastPathComponent instanceof AbstractFileTreeNode) {
            AbstractFileTreeNode node = (AbstractFileTreeNode) lastPathComponent;
            VirtualFile file = node.getFile();
            if (file.isValid()) {
              files.add(file);
            }
          }
        }
      }
      return files.toArray(new VirtualFile[0]);
    } else if (PlatformDataKeys.VIRTUAL_FILE.getName().equals(dataId)) {
      TreePath tp = getSelectedPath();
      if (tp == null) {
        return super.getData(dataId);
      }
      Object lastPathComponent = tp.getLastPathComponent();
      if (lastPathComponent instanceof AbstractFileTreeNode) {
        AbstractFileTreeNode node = (AbstractFileTreeNode) lastPathComponent;
        VirtualFile file = node.getFile();
        if (file.isValid()) {
          return file;
        }
      }
    } else if (PlatformDataKeys.COPY_PROVIDER.getName().equals(dataId)) {
      return new FilePaneCopyProvider();
    } else if (PlatformDataKeys.PASTE_PROVIDER.getName().equals(dataId)) {
      return new FilePanePasteProvider();
    } else if (PlatformDataKeys.CUT_PROVIDER.getName().equals(dataId)) {
      return new FilePaneCopyProvider();
    } else if (dataId.equals(MPSDataKeys.PLACE.getName())) {
      TreeNode treeNode = getSelectedTreeNode(TreeNode.class);
      if (treeNode instanceof ModuleTreeNode) {
        return ActionPlace.PROJECT_PANE_MODULE;
      } else if (treeNode instanceof FileTreeNode) {
        return ActionPlace.PROJECT_PANE_FILE;
      } else if (treeNode instanceof FolderTreeNode) {
        return ActionPlace.PROJECT_PANE_FOLDER;
      }
    }

    return super.getData(dataId);
  }

  //todo eliminate code duplication in BaseLogicalViewProjectPane
  @Nullable
  private <T extends TreeNode> T getSelectedTreeNode(Class<T> nodeClass) {
    MPSTree tree = getTree();
    if (tree == null) {
      return null;
    }
    TreePath selectionPath = tree.getSelectionPath();
    if (selectionPath == null) {
      return null;
    }
    Object selectedNode = selectionPath.getLastPathComponent();
    if (!(nodeClass.isInstance(selectedNode))) {
      return null;
    }
    return (T) selectedNode;
  }

  private void openEditor(FileTreeNode fileTreeNode) {
    // assertion was added for http://youtrack.jetbrains.net/issue/MPS-7762
    assert fileTreeNode.getFile().isValid() : "Underlying file is not valid";
    com.intellij.openapi.command.CommandProcessor.getInstance().executeCommand(myProject, () -> {
      IdeDocumentHistory.getInstance(myProject).includeCurrentCommandAsNavigation();
      FileEditorManager.getInstance(myProject).openFile(fileTreeNode.getFile(), true, true);
    }, "navigate", "");
  }

  public void selectNode(@NotNull final VirtualFile file, final boolean changeView) {
    ToolWindowManager windowManager = ToolWindowManager.getInstance(getProject());
    ToolWindow projectViewToolWindow = windowManager.getToolWindow(ToolWindowId.PROJECT_VIEW);
    Runnable selectionRunnable = () -> {
      MPSTreeNode nodeToSelect = getNode(file);

      if (nodeToSelect != null) {
        TreePath treePath = new TreePath(nodeToSelect.getPath());
        getTree().setSelectionPath(treePath);
        getTree().scrollPathToVisible(treePath);
        getTree().selectNode(nodeToSelect);
      } else {
        LOG.info("Can not find file " + file + " in tree.");
      }
    };
    if (changeView) {
      projectViewToolWindow.activate(() -> ProjectView.getInstance(myProject).changeViewCB(getId(), null)
                                                      .doWhenDone(selectionRunnable), true);
    } else {
      selectionRunnable.run();
    }
  }

  @Nullable
  protected MPSTreeNode getNode(VirtualFile file) {
    MPSTree tree = getTree();
    if (tree == null) {
      return null;
    }
    MPSTreeNode rootTreeNode = (MPSTreeNode) tree.getModel().getRoot();
    return getNode(rootTreeNode, file);
  }

  @Nullable
  private MPSTreeNode getNode(MPSTreeNode rootTreeNode, VirtualFile file) {
    if (rootTreeNode instanceof AbstractFileTreeNode) {
      VirtualFile nodeFile = ((AbstractFileTreeNode) rootTreeNode).getFile();

      if (nodeFile != null) {
        if (nodeFile.getUrl().equals(file.getUrl())) {
          return rootTreeNode;
        }

        if (!VfsUtil.isAncestor(nodeFile, file, false)) {
          return null;
        }
      } else {
        return null;
      }
    }

    for (MPSTreeNode node : rootTreeNode.getChildren()) {
      node.init();
      MPSTreeNode result = getNode(node, file);
      if (result != null) {
        return result;
      }
    }

    return null;
  }

  /*package*/ boolean isAutoscrollFromSource() {
    // FIXME how it's related to AbstractProjectViewPane.isAutoScrollEnabledFor(VirtualFile)?
    return ProjectView.getInstance(myProject).isAutoscrollFromSource(getId());
  }

  @NotNull
  @Override
  public SelectInTarget createSelectInTarget() {
    return new AbstractProjectViewSelectInTarget(myProject, getId(), getWeight(), getTitle()) {
      /*package*/ VirtualFile myFile;

      @Override
      public boolean canSelect(SelectInContext context) {
        VirtualFile virtualFile = context.getVirtualFile();
        if (!(virtualFile instanceof MPSNodeVirtualFile)) {
          myFile = virtualFile;
          return !isInitialized() || getNode(virtualFile) != null;
        }

        final MPSNodeVirtualFile nodeVirtualFile = (MPSNodeVirtualFile) virtualFile;
        SModelReference modelReference = nodeVirtualFile.getSNodePointer().getModelReference();

        SRepository projectRepo = ProjectHelper.getProjectRepository(myProject);
        if (projectRepo == null) {
          return false;
        }
        DataSource source = new ModelAccessHelper(projectRepo).runReadAction(() -> {
          SModel smodel = modelReference.resolve(projectRepo);
          return smodel == null ? null : smodel.getSource();
        });
        if (!(source instanceof FileSystemBasedDataSource)) {
          return false;
        }

        IFile modelFile = ((FileSystemBasedDataSource) source).getAffectedFiles().iterator().next();
        VirtualFile realFile = null;
        if (modelFile != null) {
          realFile = ProjectHelper.fromIdeaProject(myProject).getFileSystem().asVirtualFile(modelFile);
        }

        myFile = realFile;
        return (realFile != null) && (!isInitialized() || getNode(realFile) != null);
      }

      @Override
      protected void doSelectIn(SelectInContext context, boolean requestFocus) {
        selectNode(myFile, true);
      }
    };
  }

  @NotNull
  @Override
  public String getTitle() {
    return TITLE;
  }

  @Override
  @NotNull
  public String getId() {
    return ID;
  }

  // used for sorting tabs in the tabbed pane
  @Override
  public int getWeight() {
    return 5;
  }

  private class RefreshListener implements VirtualFileManagerListener {

    @Override
    public void beforeRefreshStart(boolean asynchonous) {

    }

    @Override
    public void afterRefreshFinish(boolean asynchonous) {
      rebuildTreeLater();
    }
  }

  private class FileChangesListener implements BulkFileListener {
    @Override
    public void after(@NotNull List<? extends VFileEvent> events) {
      rebuildTreeLater();
    }
  }

  private class FileStatusChangeListener implements FileStatusListener {
    @Override
    public void fileStatusesChanged() {
      rebuildTreeLater();
    }

    @Override
    public void fileStatusChanged(@NotNull VirtualFile virtualFile) {
      rebuildTreeLater();
    }
  }
}
