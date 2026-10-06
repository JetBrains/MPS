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

import com.intellij.ide.CopyProvider;
import com.intellij.ide.CutProvider;
import com.intellij.ide.PasteProvider;
import com.intellij.ide.dnd.aware.DnDAwareTree;
import com.intellij.ide.projectView.ProjectView;
import com.intellij.ide.projectView.impl.BaseProjectViewPaneWithAsyncSupport;
import com.intellij.ide.projectView.impl.ProjectViewState;
import com.intellij.ide.util.treeView.AbstractTreeStructureBase;
import com.intellij.openapi.actionSystem.ActionPlaces;
import com.intellij.openapi.actionSystem.ActionUpdateThread;
import com.intellij.openapi.actionSystem.AnActionEvent;
import com.intellij.openapi.actionSystem.CommonDataKeys;
import com.intellij.openapi.actionSystem.DataContext;
import com.intellij.openapi.actionSystem.DataKey;
import com.intellij.openapi.actionSystem.DefaultActionGroup;
import com.intellij.openapi.actionSystem.PlatformDataKeys;
import com.intellij.openapi.application.ApplicationManager;
import com.intellij.openapi.progress.ProgressIndicator;
import com.intellij.openapi.progress.ProgressManager;
import com.intellij.openapi.progress.Task.Backgroundable;
import com.intellij.openapi.project.Project;
import com.intellij.openapi.util.ActionCallback;
import com.intellij.openapi.vfs.VirtualFile;
import com.intellij.psi.PsiFile;
import com.intellij.ui.stripe.ErrorStripe;
import com.intellij.ui.treeStructure.ProjectViewUpdateCause;
import com.intellij.util.concurrency.EdtExecutorService;
import com.intellij.util.containers.ContainerUtil;
import jetbrains.mps.extapi.persistence.FileSystemBasedDataSource;
import jetbrains.mps.generator.TransientModelsModule;
import jetbrains.mps.ide.actions.CopyNode_Action;
import jetbrains.mps.ide.actions.CutNode_Action;
import jetbrains.mps.ide.actions.PasteNode_Action;
import jetbrains.mps.ide.actions.SModelActionData;
import jetbrains.mps.ide.actions.SModuleActionData;
import jetbrains.mps.ide.actions.SNodeActionData;
import jetbrains.mps.ide.project.ProjectHelper;
import jetbrains.mps.ide.projectPane.logicalview.LogicalProjectViewNode;
import jetbrains.mps.ide.projectView.MPSProjectViewSettings;
import jetbrains.mps.ide.ui.tree.ContextValueProvider;
import jetbrains.mps.ide.ui.tree.VirtualFolder;
import jetbrains.mps.ide.ui.tree.VirtualFolder.Models;
import jetbrains.mps.ide.ui.tree.VirtualFolder.Modules;
import jetbrains.mps.ide.ui.tree.VirtualFolder.Nodes;
import jetbrains.mps.ide.ui.tree.VirtualFolder.Transients;
import jetbrains.mps.ide.vfs.FileSystemBridge;
import jetbrains.mps.ide.vfs.IdeaFileSystem;
import jetbrains.mps.logging.Logger;
import jetbrains.mps.make.IMakeNotificationListener;
import jetbrains.mps.make.MakeNotification;
import jetbrains.mps.make.MakeServiceComponent;
import jetbrains.mps.project.AbstractModule;
import jetbrains.mps.project.DevKit;
import jetbrains.mps.project.MPSProject;
import jetbrains.mps.project.Solution;
import jetbrains.mps.smodel.Generator;
import jetbrains.mps.smodel.Language;
import jetbrains.mps.smodel.RepoListenerRegistrar;
import jetbrains.mps.smodel.language.LanguageRegistry;
import jetbrains.mps.smodel.runtime.ModuleDeploymentListener;
import jetbrains.mps.smodel.tempmodel.TempModule;
import jetbrains.mps.smodel.tempmodel.TempModule2;
import jetbrains.mps.util.Pair;
import jetbrains.mps.vfs.IFile;
import jetbrains.mps.workbench.ActionPlace;
import jetbrains.mps.workbench.FileSystemModelHelper;
import jetbrains.mps.workbench.MPSDataKeys;
import jetbrains.mps.workbench.action.ActionUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SModelReference;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.module.SModule;
import org.jetbrains.mps.openapi.module.SModuleReference;
import org.jetbrains.mps.openapi.module.SRepositoryContentAdapter;
import org.jetbrains.mps.openapi.persistence.DataSource;
import org.jetbrains.mps.openapi.repository.CommandListener;

import javax.swing.JTree;
import javax.swing.tree.DefaultTreeModel;
import javax.swing.tree.TreeNode;
import javax.swing.tree.TreePath;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Semaphore;
import java.util.concurrent.TimeUnit;
import java.util.function.Consumer;

public abstract class BaseLogicalViewProjectPane extends BaseProjectViewPaneWithAsyncSupport {

  private static final Logger LOG = Logger.getLogger(BaseLogicalViewProjectPane.class);
  // same interned key as VcsDataKeys.VIRTUAL_FILES, which lives in the VCS plugin since 263
  private static final DataKey<Iterable<VirtualFile>> VCS_VIRTUAL_FILES = DataKey.create("VCS_VIRTUAL_FILES");

  private final MyRepositoryListener myRepositoryListener = new MyRepositoryListener();
  protected boolean myDisposed;

  protected final MPSProject myProjectMPS;
  private final ModuleDeploymentListener myClassesListener = change -> rebuild();

  private final IMakeNotificationListener myMakeNotificationListener = new IMakeNotificationListener() {
    @Override
    public void sessionClosed(MakeNotification notification) {
      // rebuild tree in case of 'cancel' too (need to get 'transient models' node rebuilt)
      rebuild();
    }
  };

  @Override
  public @NotNull ActionCallback selectCB(Object element, VirtualFile file, boolean requestFocus) {
    final Object elementToSelect;
    if (element instanceof PsiFile) {
      if (LOG.isDebugLevel()) {
        LOG.debug("selectCB: replace element with null to avoid issues with selection: "+element);
      }
      // FIXME this is to work around code in com.intellij.ide.projectView.impl.AbstractProjectViewPane.createVisitor
      // FIXME which otherwise creates a wrong type of visitor: com.intellij.ide.projectView.impl.ProjectViewNodeVisitor
      // FIXME while this one is needed: com.intellij.ide.projectView.impl.ProjectViewFileVisitor
      elementToSelect = null;
    }
    else {
      elementToSelect = element;
    }
    final VirtualFile fileToSelect;
    if (getProjectViewState().getShowMembers() && element instanceof VirtualFile) {
      // member (non-root node) may be passed as a VirtualFile instance
      fileToSelect = (VirtualFile) element;
    }
    else {
      fileToSelect = file;
    }
    ActionCallback callback = new ActionCallback();
    EdtExecutorService.getScheduledExecutorInstance()
                      .schedule(() -> super.selectCB(elementToSelect, fileToSelect, requestFocus).notify(callback), 100, TimeUnit.MILLISECONDS);

    EdtExecutorService.getScheduledExecutorInstance()
                      .schedule(() -> {
                        if (!callback.isDone()) {
                          Backgroundable selectTask = new Backgroundable(getProject(), "Busy", false) {
                            @Override
                            public void run(@NotNull ProgressIndicator indicator) {
                              indicator.setIndeterminate(true);
                              Semaphore s = new Semaphore(0);
                              callback.doWhenDone(s::release);
                              if (!callback.isDone()) {
                                try {
                                  s.acquire();
                                } catch (InterruptedException ignore) {
                                }
                              }
                            }
                          };
                          selectTask.queue();
                        }
                      }, 2000, TimeUnit.MILLISECONDS );

    return callback;
  }

  /**
   * Intentionally made non-abstract to enable compilation of dependent code.
   */
  @Override
  protected @NotNull AbstractTreeStructureBase createStructure() {
    throw new UnsupportedOperationException("no implementation provided");
  }

  /**
   * Intentionally made non-abstract to enable compilation of dependent code.
   */
  @Override
  protected @NotNull DnDAwareTree createTree(@NotNull DefaultTreeModel treeModel) {
    throw new UnsupportedOperationException("no implementation provided");
  }

  protected BaseLogicalViewProjectPane(Project project) {
    super(project);
    myProjectMPS = ProjectHelper.fromIdeaProject(getProject());
  }

  public Project getProject() {
    return myProject;
  }

  public ProjectView getProjectView() {
    return ProjectView.getInstance(myProject);
  }

  /*package*/ ProjectViewState getProjectViewState() {

    // FIXME
    return ProjectViewState.getInstance(getProject());
  }
  protected void forEachFile(SModule module, Consumer<IFile> fun) {
    if (module instanceof AbstractModule) {
      IFile iFile = ((AbstractModule) module).getDescriptorFile();
      if (iFile != null) {
        fun.accept(iFile);
      }
      else if (LOG.isDebugLevel()) {
        LOG.debug("skipping update for module (no descriptor file) "+module);
      }
    }
  }

  protected void forEachFile(SModel model, Consumer<IFile> fun) {
    DataSource source = model.getSource();
    if (source instanceof FileSystemBasedDataSource) {
      for (IFile iFile : ((FileSystemBasedDataSource) source).getAffectedFiles()) {
        if (iFile != null) {
          fun.accept(iFile);
        }
      }
    } else if (LOG.isDebugLevel()) {
      LOG.debug("skipping update for model (no file) " + model);
    }
  }

  @SuppressWarnings({"removal", "UnstableApiUsage"})
  protected void updateFrom(IFile iFile, boolean updateStructure, ProjectViewUpdateCause cause) {
    IdeaFileSystem fileSystem = myProjectMPS.getFileSystem();

    VirtualFile virtualFile = fileSystem.asVirtualFile(iFile);
    if (virtualFile != null) {
      updateFrom(virtualFile, false, updateStructure, cause);
    }
  }

  public abstract void rebuild();

  @Override
  public Object getData(@NotNull String dataId) {
    if (SNodeActionData.KEY.is(dataId)) {
      List<SNode> nodes = ContainerUtil.filterIsInstance(getSelectedValues(getSelectedUserObjects()), SNode.class);
      if (nodes.isEmpty()) {
        return null;
      } else if (nodes.size() == 1) {
        return SNodeActionData.from(nodes.get(0).getReference());
      } else {
        return SNodeActionData.from(nodes.stream().map(SNode::getReference));
      }
    }
    if (SModelActionData.KEY.is(dataId)) {
      List<SModel> models = ContainerUtil.filterIsInstance(getSelectedValues(getSelectedUserObjects()), SModel.class);
      if (models.isEmpty()) {
        return null;
      } else if (models.size() == 1) {
        return SModelActionData.from(models.get(0).getReference());
      } else {
        return SModelActionData.from(models.stream().map(SModel::getReference));
      }
    }
    if (SModuleActionData.KEY.is(dataId)) {
      List<SModule> modules = ContainerUtil.filterIsInstance(getSelectedValues(getSelectedUserObjects()), SModule.class);
      if (modules.isEmpty()) {
        return null;
      } else if (modules.size() == 1) {
        return SModuleActionData.from(modules.get(0).getModuleReference());
      } else {
        return SModuleActionData.from(modules.stream().map(SModule::getModuleReference));
      }
    }

    //MPSDK
    if (MPSDataKeys.CONTEXT_MODEL.is(dataId)) {
      return getContextModel();
    }
    if (MPSDataKeys.CONTEXT_MODULE.is(dataId)) {
      return getContextModule();
    }
    if (MPSDataKeys.VIRTUAL_PACKAGES.is(dataId)) {
      final List<Pair<SModel, String>> rv = getSelectedPackages();
      return rv.isEmpty() ? null : rv;
    }
    if (MPSDataKeys.NAMESPACE.is(dataId)) {
      Object firstSelected = Arrays.stream(getSelectedValues(getSelectedUserObjects())).findFirst().orElseGet(() -> null);
      if (firstSelected instanceof VirtualFolder) {
        return ((VirtualFolder)firstSelected).getName();
      }
      return null;
    }
    if (MPSDataKeys.USER_OBJECT.is(dataId)) {
      return Arrays.stream(getSelectedUserObjects()).findFirst().orElseGet(() -> null);
    }
    if (MPSDataKeys.USER_OBJECTS.is(dataId)) {
      return Arrays.asList(getSelectedUserObjects());
    }
    if (MPSDataKeys.VALUE.is(dataId)) {
      return Arrays.stream(getSelectedValues(getSelectedUserObjects())).findFirst().orElseGet(() -> null);
    }
    if (MPSDataKeys.VALUES.is(dataId)) {
      return Arrays.asList(getSelectedValues(getSelectedUserObjects()));
    }
    if (MPSDataKeys.TREE_SELECTION_SIZE.is(dataId)) {
      return getSelectionSize();
    }
    if (MPSDataKeys.PLACE.is(dataId)) {
      return getPlace(Arrays.stream(getSelectedValues(getSelectedUserObjects())).findFirst().orElseGet(() -> null));
    }

    //PDK
    if (PlatformDataKeys.COPY_PROVIDER.is(dataId)) {
      return new MyCopyProvider();
    }
    if (PlatformDataKeys.PASTE_PROVIDER.is(dataId)) {
      return new MyPasteProvider();
    }
    if (PlatformDataKeys.CUT_PROVIDER.is(dataId)) {
      return new MyCutProvider();
    }
    if (PlatformDataKeys.VIRTUAL_FILE_ARRAY.is(dataId)) {
      // XXX perhaps, has to move to SLOW_DATA_PROVIDERS (i.e. collect selected elements in EDT and return
      //     another DataProvider instance that would transformed selected models/modules into VirtualFile?
      return getSelectedFiles(true, true);
    }
    if (VCS_VIRTUAL_FILES.is(dataId)) {
      VirtualFile[] selection = getSelectedFiles(false, true);
      return selection != null ? Arrays.asList(selection) : null;
    }

    // if project pane doesn't answer its Project, chances are some LocationRule could start looking
    //    for a project in inappropriate DataProvider, and end up producing MPSLocation solely with MPSProject
    //    (as it could not obtain node/model/module from any other DataProvider in Project View hierarchy)
    if (CommonDataKeys.PROJECT.is(dataId)) {
      return getProject();
    }

    if (MPSDataKeys.MPS_PROJECT.is(dataId)) {
      return myProjectMPS;
    }

    //not found
    return super.getData(dataId);
  }

  public boolean isDisposed() {
    return myDisposed;
  }

  @Override
  public void dispose() {
    if (isComponentCreated()) {
      removeListeners();
    }
    myDisposed = true;
    super.dispose();
  }

  public boolean showNodeStructure() {
    // re-use IDEA's 'show members' for 'show node structure'
    return !isDisposed() && getProjectView().isShowMembers(getId());
  }

  /**
   * @deprecated use {@link MPSProjectViewSettings} instead.
   */
  @Deprecated
  public boolean isSortByConcept() {
    return getProjectViewState().getSortByType();
  }

  @Override
  public void installComparator() {
    // FIXME why is this NOP?
    // Overrode to avoid NPE
  }

  @Override
  public boolean supportsSortByType() {
    return true;
  }

  @Override
  public boolean supportsManualOrder() {
    return false;
  }

  @Override
  public boolean supportsSortByTime() {
    return false;
  }

  @Override
  public void addToolbarActions(final DefaultActionGroup group) {
    super.addToolbarActions(group);
  }

  protected void removeListeners() {
    jetbrains.mps.project.Project mpsProject = myProjectMPS;
    mpsProject.getPlatform().findComponent(LanguageRegistry.class).removeRegistryListener(myClassesListener);
    mpsProject.getModelAccess().removeCommandListener(myRepositoryListener);
    new RepoListenerRegistrar(mpsProject.getRepository(), myRepositoryListener).detach();
    MakeServiceComponent makeServiceComponent = mpsProject.getPlatform().findComponent(MakeServiceComponent.class);
    if (makeServiceComponent != null && makeServiceComponent.get() != null) {
      makeServiceComponent.get().removeListener(myMakeNotificationListener);
    }
  }

  protected void addListeners() {
    jetbrains.mps.project.Project mpsProject = myProjectMPS;
    new RepoListenerRegistrar(mpsProject.getRepository(), myRepositoryListener).attach();
    mpsProject.getModelAccess().addCommandListener(myRepositoryListener);

    // XXX here used to be a hasMakeService() check, which I found superfluous,
    //     as we always have make service in UI (at least, we never check for it in other locations)
    //     However, the idea to keep listeners inside MakeServiceComponent and install them into active
    //     IMakeService once it's updated looks nice
    MakeServiceComponent makeServiceComponent = mpsProject.getPlatform().findComponent(MakeServiceComponent.class);
    if (makeServiceComponent != null && makeServiceComponent.get() != null) {
        makeServiceComponent.get().addListener(myMakeNotificationListener);
    }
    mpsProject.getPlatform().findComponent(LanguageRegistry.class).addRegistryListener(myClassesListener);
  }

  @Override
  protected ErrorStripe getStripe(Object object, boolean expanded) {
    if (expanded && object instanceof LogicalProjectViewNode) {
      if (!((LogicalProjectViewNode<?>) object).hasOwnProblems()) return null;
    }
    return super.getStripe(object, expanded);
  }

  private void forAllModulesInProject(Consumer<SModule> moduleConsumer) {
    if (myProject.isDisposed()) return;
    MPSProject mpsProject = myProjectMPS;
    ApplicationManager.getApplication().invokeLater(() -> {
      mpsProject.getProjectModulesWithGenerators().forEach(moduleConsumer);
    });
  }

  @Deprecated(forRemoval = true, since = "2021.3")
  public List<SNode> getSelectedSNodes() {
    // MPS-extensions, CustomProjectView overrides the method
    assert  false : "Method is kept solely to satisfy compilation of subclasses with overrides";
    return null;
  }

  @NotNull
  public List<SModel> getSelectedModels() {
    return ContainerUtil.filterIsInstance(getSelectedValues(getSelectedUserObjects()), SModel.class);
  }

  @Nullable
  public SModel getSelectedModel() {
    return ContainerUtil.findInstance(getSelectedValues(getSelectedUserObjects()), SModel.class);
  }

  @Nullable
  public SModel getContextModel() {
    @Nullable Object[] userObjects = getSingleSelectedPathUserObjects();
    if (userObjects == null || userObjects.length == 0) {
      return null;
    }
    Object lastUserObject = userObjects[userObjects.length - 1];
    if (lastUserObject instanceof ContextValueProvider) {
      return ((ContextValueProvider) lastUserObject).contextValueOfType(SModel.class).orElseGet(() -> null);
    }
    return null;
  }

  @NotNull
  public List<SModule> getSelectedModules() {
    return ContainerUtil.filterIsInstance(getSelectedValues(getSelectedUserObjects()), SModule.class);
  }

  @Nullable
  public SModule getContextModule() {
    @Nullable Object[] userObjects = getSingleSelectedPathUserObjects();
    if (userObjects == null || userObjects.length == 0) {
      return null;
    }
    Object lastUserObject = userObjects[userObjects.length - 1];
    if (lastUserObject instanceof ContextValueProvider) {
      return ((ContextValueProvider) lastUserObject).contextValueOfType(SModule.class).orElseGet(() -> null);
    }
    return null;
  }

  @NotNull
  public List<Pair<SModel, String>> getSelectedPackages() {
    @Nullable Object[] userObjects = getSelectedUserObjects();
    if (userObjects == null || userObjects.length == 0) {
      return Collections.emptyList();
    }
    ArrayList<Pair<SModel, String>> result = new ArrayList<>(userObjects.length);
    for (Object userObject : userObjects) {
      Object value = getValueFromNode(userObject);
      if (value instanceof VirtualFolder) {
        if (userObject instanceof ContextValueProvider) {
          ((ContextValueProvider) userObject)
              .contextValueOfType(SModel.class)
              .ifPresent((model) -> result.add(new Pair<>(model, ((VirtualFolder) value).getName())));
        }
      }
    }
    return result;
  }

  public int getSelectionSize() {
    TreePath[] selection = getSelectionPaths();
    return selection == null ? 0 : selection.length;
  }

  protected ActionPlace getPlace(@Nullable Object selectedValue) {
    if (selectedValue instanceof SNode) {
      return ActionPlace.PROJECT_PANE_SNODE;
    } else if (selectedValue instanceof SModel) {
      return ActionPlace.PROJECT_PANE_SMODEL;
    } else if (selectedValue instanceof MPSProject) {
      return ActionPlace.PROJECT_PANE_PROJECT;
    } else if (selectedValue instanceof Generator) {
      return ActionPlace.PROJECT_PANE_GENERATOR;
    } else if (selectedValue instanceof TransientModelsModule || selectedValue instanceof Transients) {
      return ActionPlace.PROJECT_PANE_TRANSIENT_MODULES;
    } else if (selectedValue instanceof Nodes) {
      return ActionPlace.PROJECT_PANE_PACKAGE;
    } else if (selectedValue instanceof Models) {
      return ActionPlace.PROJECT_PANE_NAMESPACE;
    } else if (selectedValue instanceof Modules) {
      return ActionPlace.PROJECT_PANE_NAMESPACE;
    } else if (selectedValue instanceof Language) {
      return ActionPlace.PROJECT_PANE_LANGUAGE;
    } else if (selectedValue instanceof DevKit) {
      return ActionPlace.PROJECT_PANE_DEVKIT;
    } else if (selectedValue instanceof Solution) {
      return ActionPlace.PROJECT_PANE_SOLUTION;
    }
    return null;
  }


  /**
   * A simplified alternative to {@link #getSelectedTreeNodes(Class)}
   * <p>
   * NB! Both these methods deprecated and are to be removed in one of the upcoming releases.
   * Please use other means to find the selected objects/values in the tree.
   * The use of swing interfaces is discouraged, since they require the UI thread.
   */
  @Nullable
  @Deprecated(forRemoval = true)
  protected final <T extends TreeNode> T getSelectedTreeNode(Class<T> nodeClass) {
    JTree tree = getTree();
    if (tree == null) {
      return null;
    }
    TreePath selectionPath = tree.getSelectionPath();
    if (selectionPath == null) {
      return null;
    }
    Object selectedNode = selectionPath.getLastPathComponent();
    return nodeClass.isInstance(selectedNode) ? nodeClass.cast(selectedNode) : null;
  }

  /**
   * See {@link #getSelectedTreeNode(Class)}.
   *
   */
  @NotNull
  @Deprecated(forRemoval = true)
  public <T extends TreeNode> List<T> getSelectedTreeNodes(Class<T> nodeClass) {
    JTree tree = getTree();
    if (tree == null) {
      return Collections.emptyList();
    }
    TreePath[] selectionPaths = tree.getSelectionPaths();
    if (selectionPaths == null || selectionPaths.length == 0) {
      return Collections.emptyList();
    }

    List<T> selectedTreeNodes = new ArrayList<>(selectionPaths.length);

    for (TreePath selectionPath : selectionPaths) {
      if (selectionPath == null) {
        continue;
      }
      Object selectedNode = selectionPath.getLastPathComponent();
      if (nodeClass.isInstance(selectedNode)) {
        selectedTreeNodes.add(nodeClass.cast(selectedNode));
      }
    }
    return selectedTreeNodes;
  }
  @Nullable
  private VirtualFile[] getSelectedFiles(boolean addModuleFile, boolean addModuleDir) {
    List<IFile> selectedFilesList = new LinkedList<>();

    // add selected model files
    List<SModel> descriptors = getSelectedModels();
    if (descriptors != null) {
      for (SModel descriptor : descriptors) {
        selectedFilesList.addAll(new FileSystemModelHelper(descriptor).getFiles());
      }
    }

    // add selected modules files
    List<SModule> modules = getSelectedModules();
    if (modules != null) {
      for (SModule m : modules) {
        if (!(m instanceof AbstractModule)) {
          continue;
        }
        AbstractModule module = (AbstractModule) m;
        IFile home = module.getModuleSourceDir();
        if (home != null && addModuleDir) {
          selectedFilesList.add(home);
        }
        IFile ifile = module.getDescriptorFile();
        if (ifile != null && addModuleFile) {
          selectedFilesList.add(ifile);
        }
      }
    }

    if (selectedFilesList.isEmpty()) {
      return null;
    }

    final FileSystemBridge fs = myProjectMPS.getFileSystem();
    return selectedFilesList.stream().map(fs::asVirtualFile).filter(Objects::nonNull).toArray(VirtualFile[]::new);
  }

  /*package*/

  static AnActionEvent createEvent(DataContext context) {
    return ActionUtils.createEvent(ActionPlaces.PROJECT_VIEW_POPUP, context);
  }
  protected abstract boolean isComponentCreated();
  private static class MyCopyProvider implements CopyProvider {


    private CopyNode_Action myAction = new CopyNode_Action();

    @Override
    public void performCopy(@NotNull DataContext dataContext) {
      AnActionEvent event = createEvent(dataContext);
      ActionUtils.updateAndPerformAction(myAction, event);
    }

    @Override
    public boolean isCopyEnabled(@NotNull DataContext dataContext) {
      AnActionEvent event = createEvent(dataContext);
      myAction.update(event);
      return event.getPresentation().isEnabled();
    }
    @Override
    public boolean isCopyVisible(@NotNull DataContext dataContext) {
      return true;
    }

    @Override
    @NotNull
    public ActionUpdateThread getActionUpdateThread() {
      return myAction.getActionUpdateThread();
    }
  }
  private static class MyPasteProvider implements PasteProvider {


    private PasteNode_Action myAction = new PasteNode_Action();

    @Override
    public void performPaste(@NotNull DataContext dataContext) {
      AnActionEvent event = createEvent(dataContext);
      ActionUtils.updateAndPerformAction(myAction, event);
    }

    @Override
    public boolean isPastePossible(@NotNull DataContext dataContext) {
      return true;
    }
    @Override
    public boolean isPasteEnabled(@NotNull DataContext dataContext) {
      AnActionEvent event = createEvent(dataContext);
      myAction.update(event);
      return event.getPresentation().isEnabled();
    }

    @Override
    @NotNull
    public ActionUpdateThread getActionUpdateThread() {
      // PasteNode_Action update uses EDT, is it correct?
      return myAction.getActionUpdateThread();
    }
  }
  private static class MyCutProvider implements CutProvider {


    private CutNode_Action myAction = new CutNode_Action();

    @Override
    public void performCut(@NotNull DataContext dataContext) {
      AnActionEvent event = createEvent(dataContext);
      ActionUtils.updateAndPerformAction(myAction, event);
    }

    @Override
    public boolean isCutEnabled(@NotNull DataContext dataContext) {
      AnActionEvent event = createEvent(dataContext);
      myAction.update(event);
      return event.getPresentation().isEnabled();
    }
    @Override
    public boolean isCutVisible(@NotNull DataContext dataContext) {
      return true;
    }

    @Override
    @NotNull
    public ActionUpdateThread getActionUpdateThread() {
      return myAction.getActionUpdateThread();
    }
  }
  private class MyRepositoryListener extends SRepositoryContentAdapter implements CommandListener {
    @Override
    protected void startListening(SModel model) {
      model.addModelListener(this);
    }

    @Override
    protected void stopListening(SModel model) {
      model.removeModelListener(this);
    }

    @SuppressWarnings("UnstableApiUsage")
    @Override
    protected void startListening(SModule module) {
      if (!isIncluded(module)) {
        return;
      }
      super.startListening(module);
      if (!(module instanceof TempModule || module instanceof TempModule2)) {
        updateFromRoot(true, ProjectViewUpdateCause.UNKNOWN);
      }
    }

    @SuppressWarnings("UnstableApiUsage")
    @Override
    protected void stopListening(SModule module) {
      super.stopListening(module);
      if (!(module instanceof TempModule || module instanceof TempModule2)) {
        updateFromRoot(true, ProjectViewUpdateCause.UNKNOWN);
      }
    }

    @SuppressWarnings("UnstableApiUsage")
    @Override
    public void moduleRenamed(@NotNull SModule module, @NotNull SModuleReference oldRef) {
      updateFromRoot(true, ProjectViewUpdateCause.UNKNOWN);
    }

    @SuppressWarnings("UnstableApiUsage")
    @Override
    public void moduleChanged(SModule module) {
      if (!(module instanceof TempModule || module instanceof TempModule2)) {
        updateFromRoot(true, ProjectViewUpdateCause.UNKNOWN);
      }
    }

    @SuppressWarnings("UnstableApiUsage")
    @Override
    public void modelRenamed(SModule module, SModel model, SModelReference oldRef) {
      forEachFile(module, f -> updateFrom(f, true, ProjectViewUpdateCause.UNKNOWN));
    }

    @SuppressWarnings("UnstableApiUsage")
    @Override
    public void modelRemoved(SModule module, SModelReference ref) {
      forEachFile(module, f -> updateFrom(f, true, ProjectViewUpdateCause.UNKNOWN));
    }
    @SuppressWarnings("UnstableApiUsage")
    @Override
    public void modelAdded(SModule module, SModel model) {
      super.modelAdded(module, model);
      forEachFile(module, f -> updateFrom(f, true, ProjectViewUpdateCause.UNKNOWN));
    }

    @SuppressWarnings("UnstableApiUsage")
    @Override
    public void modelReplaced(SModel model) {
      forEachFile(model, f -> updateFrom(f, true, ProjectViewUpdateCause.UNKNOWN));
    }

    @SuppressWarnings("UnstableApiUsage")
    @Override
    public void dependenciesChanged(SModel model, DependencyChange change) {
      forEachFile(model, f -> updateFrom(f, true, ProjectViewUpdateCause.UNKNOWN));
    }

    @SuppressWarnings("UnstableApiUsage")
    @Override
    public void nodesChanged(SModel model) {
      forEachFile(model, f -> updateFrom(f, true, ProjectViewUpdateCause.UNKNOWN));
    }
  }
}
