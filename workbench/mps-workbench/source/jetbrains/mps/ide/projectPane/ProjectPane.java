/*
 * Copyright 2003-2025 JetBrains s.r.o.
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
package jetbrains.mps.ide.projectPane;

import com.intellij.ide.FileEditorProvider;
import com.intellij.ide.SelectInContext;
import com.intellij.ide.SelectInTarget;
import com.intellij.ide.dnd.DnDManager;
import com.intellij.ide.dnd.DnDSource;
import com.intellij.ide.dnd.DnDTarget;
import com.intellij.ide.dnd.aware.DnDAwareTree;
import com.intellij.ide.projectView.ProjectView;
import com.intellij.ide.projectView.ProjectViewNode;
import com.intellij.ide.projectView.impl.ProjectViewPane;
import com.intellij.ide.projectView.impl.ProjectViewTree;
import com.intellij.ide.util.treeView.AbstractTreeStructureBase;
import com.intellij.ide.util.treeView.NodeDescriptor;
import com.intellij.openapi.actionSystem.DefaultActionGroup;
import com.intellij.openapi.application.ApplicationManager;
import com.intellij.openapi.project.Project;
import com.intellij.openapi.vfs.VirtualFile;
import com.intellij.openapi.wm.ToolWindow;
import com.intellij.openapi.wm.ToolWindowId;
import com.intellij.openapi.wm.ToolWindowManager;
import com.intellij.problems.ProblemListener;
import com.intellij.ui.treeStructure.ProjectViewUpdateCause;
import com.intellij.util.IJSwingUtilities;
import com.intellij.util.concurrency.ThreadingAssertions;
import com.intellij.util.messages.MessageBusConnection;
import com.intellij.util.ui.tree.TreeUtil;
import jetbrains.mps.extapi.persistence.FileSystemBasedDataSource;
import jetbrains.mps.icons.MPSIcons;
import jetbrains.mps.ide.ThreadUtils;
import jetbrains.mps.ide.editor.tabs.TabbedEditor;
import jetbrains.mps.ide.editor.tabs.TabbedEditor.TabChangedListener;
import jetbrains.mps.ide.platform.watching.ReloadListener;
import jetbrains.mps.ide.platform.watching.ReloadManager;
import jetbrains.mps.ide.projectPane.logicalview.LogicalViewDragSource;
import jetbrains.mps.ide.projectPane.logicalview.LogicalViewDropTarget;
import jetbrains.mps.ide.projectView.MPSProjectViewState;
import jetbrains.mps.ide.ui.tree.VirtualFolder.Transients;
import jetbrains.mps.ide.vfs.IdeaFile;
import jetbrains.mps.ide.vfs.IdeaFileSystem;
import jetbrains.mps.logging.Logger;
import jetbrains.mps.nodefs.NodeVirtualFileSystem;
import jetbrains.mps.project.AbstractModule;
import jetbrains.mps.project.MPSProject;
import jetbrains.mps.project.MessagesUpdate;
import jetbrains.mps.project.MissionControl;
import jetbrains.mps.project.MissionControlListener;
import jetbrains.mps.project.MissionControlRefreshRequest;
import jetbrains.mps.smodel.SObject;
import jetbrains.mps.util.annotation.Hack;
import jetbrains.mps.vfs.IFile;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeReference;
import org.jetbrains.mps.openapi.module.SModule;
import org.jetbrains.mps.openapi.persistence.DataSource;

import javax.swing.Icon;
import javax.swing.JComponent;
import javax.swing.tree.DefaultMutableTreeNode;
import javax.swing.tree.DefaultTreeModel;
import javax.swing.tree.TreeModel;
import javax.swing.tree.TreeNode;
import javax.swing.tree.TreePath;
import java.awt.event.KeyAdapter;
import java.awt.event.KeyEvent;
import java.util.Collections;
import java.util.Comparator;
import java.util.function.Consumer;
import java.util.function.Supplier;

public class ProjectPane extends BaseLogicalViewProjectPane {

  private static final Logger LOG = Logger.getLogger(ProjectPane.class);

  private DnDTarget myDropTarget;
  private DnDSource myDragSource;

  private final ReloadListener myReloadListener;

  public static final String ID = ProjectViewPane.ID;

  private MessageBusConnection myConnection;

  public ProjectPane(final Project project) {
    super(project);
    myReloadListener = new ReloadListener() {
      @Override
      public void reloadStarted() {
      }

      @Override
      public void reloadFinished() {
        rebuild();
      }
    };
    // XXX provided we add a listener, perhaps, shall keep instance in a field or introduce a method to take Disposable with listener (IDEA style)
    ReloadManager.getInstance().addReloadListener(myReloadListener);
  }

  @Override
  protected void enableDnD() {
    if (!ApplicationManager.getApplication().isHeadlessEnvironment()) {
      myDragSource = new LogicalViewDragSource(getTree());
      myDropTarget = new LogicalViewDropTarget(getTree());
      DnDManager dndManager = DnDManager.getInstance();
      dndManager.registerSource(myDragSource, myTree);
      dndManager.registerTarget(myDropTarget, myTree);
    }
  }

  @Override
  public void dispose() {
    if (myDropTarget != null) {
      DnDManager.getInstance().unregisterTarget(myDropTarget, myTree);
      myDropTarget = null;
    }
    if (myDragSource != null) {
      DnDManager.getInstance().unregisterSource(myDragSource, myTree);
      myDragSource = null;
    }
    ReloadManager.getInstance().removeReloadListener(myReloadListener);
    super.dispose();
  }

  @Override
  protected void removeListeners() {
    super.removeListeners();
    myConnection.disconnect();
    myConnection = null;
  }

  @Override
  protected void addListeners() {
    super.addListeners();
    assert myConnection == null; // double initialization
    myConnection = getProject().getMessageBus().connect();
    myConnection.subscribe(TabbedEditor.TAB_CHANGES, (TabChangedListener) nodeRef -> {
      if (getProjectView().isAutoscrollFromSource(ID) && !IJSwingUtilities.hasFocus(getComponentToFocus())) {
        selectNodeWithoutExpansion(nodeRef);
      }
    });
    myConnection.subscribe(MissionControlListener.MISSION_CONTROL_UPDATE, (MissionControlListener) this::refresh);
  }

  @Hack
  public static ProjectPane getInstance(Project project) {
    final ProjectView projectView = ProjectView.getInstance(project);
    if (ApplicationManager.getApplication().isUnitTestMode()) {
      //to ensure panes are initialized
      // despite http://jetbrains.net/tracker/issue/IDEA-24732 is fixed, ProjectViewImpl doesn't load extensions in unit test model
      // Perhaps, shall fix ProjectCreationTest (not to rely on != null result), instead?
      projectView.getSelectInTargets();
    }
    return (ProjectPane) projectView.getProjectViewPaneById(ID);
  }

  // FIXME perhaps, shall be explicit about parameter type, seems that it's always invoked with MPSProject anyway
  // and there's hardly need to access ProjectPane without knowledge about IDE.
  public static ProjectPane getInstance(jetbrains.mps.project.Project mpsProject) {
    if (mpsProject instanceof MPSProject) {
      return getInstance(((MPSProject) mpsProject).getProject());
    }
    return null;
  }

  @Override
  public ProjectViewTree getTree() {
    return (ProjectViewTree) myTree;
  }
  
  /*package*/ MPSProject getMPSProject() {
    return myProjectMPS;
  }

  @Override
  public @NotNull String getTitle() {
    return "Logical View";
  }

  @Override
  @NotNull
  public String getId() {
    return ID;
  }

  @Override
  public int getWeight() {
    return 0;
  }

  @Override
  public @NotNull SelectInTarget createSelectInTarget() {
    return new ProjectPaneSelectInTarget(this, getTitle(), true);
  }

  @Override
  public @NotNull Icon getIcon() {
    return MPSIcons.ProjectPane.LogicalView;
  }

  @Override
  public @NotNull JComponent createComponent() {
    boolean alreadyCreated = myTreeStructure != null;
    JComponent component = super.createComponent();
    if (!alreadyCreated) {
      addListeners();
    }
    // at this point initTree() has been called
    myTree.addKeyListener(new KeyAdapter() {
      @Override
      public void keyPressed(KeyEvent e) {
        if (e.getKeyCode() == KeyEvent.VK_F5 && e.getModifiersEx() == 0) {
          e.consume();
          MissionControl.getInstance(myProject).refresh();
          ProjectView.getInstance(myProject).refresh();
        }
      }
    });
    return component;
  }

  @Override
  protected boolean isComponentCreated() {
    return myTreeStructure != null;
  }

  @NotNull
  @Override
  protected AbstractTreeStructureBase createStructure() {
    return new ProjectPaneTreeStructure(myProject, getId());
  }

  @NotNull
  @Override
  protected DnDAwareTree createTree(@NotNull DefaultTreeModel treeModel) {
    return new ProjectViewTree(treeModel);
  }

  public void activate() {
    ThreadUtils.assertEDT();
    activatePane(null, true);
  }

  protected void refresh(MissionControlRefreshRequest refreshRequest) {
    ApplicationManager.getApplication().executeOnPooledThread(() -> {
      for (var messagesUpdate : new MessagesUpdate[] {MessagesUpdate.APPEARED, MessagesUpdate.DISAPPEARED}) {
        for (SObject toUpdate : refreshRequest.getToUpdatePresentation(messagesUpdate)) {
          if (!toUpdate.ifHasSModel((Consumer<SModel>) model -> forEachFile(model, f -> fireMessageUpdate(messagesUpdate, f)))) {
            toUpdate.ifHasSModule((Consumer<SModule>) module -> forEachFile(module, f -> fireMessageUpdate(messagesUpdate, f)));
          }
        }
      };
    });
  }

  @SuppressWarnings("removal")
  private void fireMessageUpdate(MessagesUpdate messagesUpdate, IFile iFile) {
    ProblemListener problemListener = getProject().getMessageBus().syncPublisher(ProblemListener.TOPIC);
    IdeaFileSystem fileSystem = myProjectMPS.getFileSystem();

    VirtualFile virtualFile = fileSystem.asVirtualFile(iFile);
    if (virtualFile != null) {
      ApplicationManager.getApplication().runReadAction(() -> {
        if (messagesUpdate == MessagesUpdate.APPEARED) {
          problemListener.problemsAppeared(virtualFile);
        } else if (messagesUpdate == MessagesUpdate.DISAPPEARED) {
          problemListener.problemsDisappeared(virtualFile);
        }
      });
    }
  }

  @SuppressWarnings("UnstableApiUsage")
  @Override
  public void rebuild() {
    // This method can be called from different threads, however updateFromRoot()
    // merely adds an update to the update queue, and thus it's safe to invoke it
    // without runReadInEDT or runInUIThreadNoWait as it used to be.
    updateFromRoot(true, ProjectViewUpdateCause.UNKNOWN);
  }

  @Override
  public void addToolbarActions(DefaultActionGroup group) {
    super.addToolbarActions(group);
  }

  //----selection----

  private class MySelectInContext implements SelectInContext {

    private final VirtualFile myVirtualFile;

    private MySelectInContext(VirtualFile virtualFile) {
      myVirtualFile = virtualFile;
    }

    @Override
    public @NotNull Project getProject() {
      return myProject;
    }

    @Override
    public @NotNull VirtualFile getVirtualFile() {
      return myVirtualFile;
    }

    @Override
    public @Nullable Object getSelectorInFile() {
      return myVirtualFile;
    }

    @Override
    public @Nullable FileEditorProvider getFileEditorProvider() {
      return null;
    }
  }

  public void selectModule(@NotNull final SModule module, final boolean autofocus) {
    if (module instanceof AbstractModule) {
      IFile descriptorFile = ((AbstractModule) module).getDescriptorFile();
      if (descriptorFile != null) {
        selectLater(autofocus).accept(descriptorFile);
      }
    }
  }

  public void selectModel(@NotNull final SModel model, boolean autofocus) {
    DataSource source = model.getSource();
    if (source instanceof FileSystemBasedDataSource) {
      var ds = (FileSystemBasedDataSource) source;
      ds.getAffectedFiles().stream()
        .findFirst()
        .ifPresent(selectLater(autofocus));
    }
  }

  private @NotNull Consumer<IFile> selectLater(boolean autofocus) {
    return file -> ApplicationManager.getApplication().executeOnPooledThread(() -> {
      // getVirtualFile requires a resource-heavy operation
      VirtualFile virtualFile = getVirtualFile(file);
      if (virtualFile != null) {
        ApplicationManager.getApplication().invokeLater(() ->
            // selection is done in EDT
            createSelectInTarget().selectIn(new MySelectInContext(virtualFile), autofocus));
      } else {
        LOG.warning("unable to select node corresponding to path: " + file.getPath());
      }
    });
  }

  public void selectNode(@NotNull final SNode node, boolean autofocus) {
    createSelectInTarget().selectIn(new MySelectInContext(NodeVirtualFileSystem.getInstance().getFileFor(getMPSProject().getRepository(), node)), autofocus);
  }

  public void selectNode(@NotNull SNodeReference node, boolean autofocus) {
    createSelectInTarget().selectIn(new MySelectInContext(NodeVirtualFileSystem.getInstance().getFileFor(getMPSProject().getRepository(), node)), autofocus);
  }

  /**
   * A hackish way to expand the "checkpoints and transients models" folder. See MPS-38077, MPS-39258
   */
  @Deprecated
  public void expandTransientsFolder() {
    ProjectViewTree tree = getTree();
    if (tree == null) return;
    TreeModel model = tree.getModel();
    Object o = TreeUtil.nodeChildren(model.getRoot(), model).find(n -> isTransientsFolderNode(TreeUtil.getUserObject(n)));
    TreeNode toExpand = o instanceof TreeNode ? (TreeNode) o : null;
    if (toExpand != null) {
      TreePath path = TreeUtil.getPath((TreeNode) model.getRoot(), toExpand);
      tree.expandPath(path);
    }
  }

  private boolean isTransientsFolderNode(Object abstractNode) {
    return abstractNode instanceof ProjectViewNode && ((ProjectViewNode<?>) abstractNode).getValue() instanceof Transients;
  }

  private void selectNodeWithoutExpansion(@NotNull SNodeReference nodeRef) {
    createSelectInTarget().selectIn(new MySelectInContext(NodeVirtualFileSystem.getInstance().getFileFor(getMPSProject().getRepository(), nodeRef)), false);
  }

  private void activatePane(@Nullable final Runnable postActivate, boolean autoFocusContents) {
    // This method may be executed asynchronously, so checking for isDisposed first.
    if (isDisposed()) {
      return;
    }

    ToolWindowManager windowManager = ToolWindowManager.getInstance(getProject());
    ToolWindow projectViewToolWindow = windowManager.getToolWindow(ToolWindowId.PROJECT_VIEW);
    final Runnable wrapper = () -> {
      if (postActivate != null) {
        postActivate.run();
      }
    };

    //In unit test mode projectViewToolWindow == null
    // besides, https://youtrack.jetbrains.com/issue/MPS-24516 suggests tool window may be missing even in non-test mode (in plugin?)
    if (!ApplicationManager.getApplication().isUnitTestMode() && projectViewToolWindow != null) {
      if (autoFocusContents && !projectViewToolWindow.isActive()) {
        projectViewToolWindow.activate(() -> {
          if (isDisposed()) {
            return;
          }// I'm not quite sure next changeView is essential (what does toolWindow.activate() does then?),
          // but since there's no documentation what to expect, leave it the way it used to be in PaneActivator.
          getProjectView().changeView(getId());
          wrapper.run();
        }, true);
      } else {
        wrapper.run();
      }
    }
  }


  /**
   * Must never be called from EDT.
   */
  @SuppressWarnings("removal")
  @Nullable
  private VirtualFile getVirtualFile(IFile descriptorFile) {
    ThreadingAssertions.assertBackgroundThread();
    IdeaFileSystem fileSystem = myProjectMPS.getFileSystem();
    VirtualFile virtualFile = fileSystem.asVirtualFile(descriptorFile);
    if (virtualFile == null) {
      IdeaFile ideaFile = fileSystem.getArchiveAwareFile(descriptorFile.getPath());
      if (ideaFile != null) {
        virtualFile = ideaFile.getVirtualFile();
      }
    }
    return virtualFile;
  }

  @Deprecated(forRemoval = true)
  /*package*/ boolean isDescriptorModelInGeneratorVisible() {
    return MPSProjectViewState.getInstance(getProject()).isShowDescriptorModels();
  }

  @Deprecated(forRemoval = true)
  /*package*/ boolean isDescriptorModelInSolutionVisible() {
    return MPSProjectViewState.getInstance(getProject()).isShowDescriptorModels();
  }

  @Deprecated(forRemoval = true)
  /*package*/ Supplier<Boolean> errorIndicatorVisible() {
    return () -> false;
  }

  @Deprecated(forRemoval = true)
  /*package*/ Supplier<Boolean> underlineErrorNodes() {
    return () -> false;
  }

  @Deprecated(forRemoval = true)
  /*package*/ Supplier<Boolean> showErrorsOnly() {
    return () -> MPSProjectViewState.getInstance(getProject()).isShowErrorsOnly();
  }

  @Override
  protected @NotNull Comparator<NodeDescriptor<?>> createComparator() {
    return super.createComparator();
  }
}
