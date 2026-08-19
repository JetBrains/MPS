/*
 * Copyright 2000-2024 JetBrains s.r.o. Use of this source code is governed by the Apache 2.0 license that can be found in the LICENSE file.
 */
package jetbrains.mps.ide.projectPane.logicalview;

import com.intellij.icons.AllIcons.Nodes;
import com.intellij.ide.projectView.PresentationData;
import com.intellij.ide.projectView.ViewSettings;
import com.intellij.ide.projectView.impl.nodes.DropTargetNode;
import com.intellij.ide.util.treeView.AbstractTreeNode;
import com.intellij.openapi.actionSystem.ActionManager;
import com.intellij.openapi.actionSystem.AnAction;
import com.intellij.openapi.actionSystem.AnActionEvent;
import com.intellij.openapi.actionSystem.DataContext;
import com.intellij.openapi.actionSystem.DataKey;
import com.intellij.openapi.actionSystem.PlatformDataKeys;
import com.intellij.openapi.actionSystem.impl.SimpleDataContext;
import com.intellij.openapi.actionSystem.impl.SimpleDataContext.Builder;
import com.intellij.openapi.project.Project;
import com.intellij.psi.PsiFileSystemItem;
import com.intellij.util.ui.tree.TreeUtil;
import jetbrains.mps.ide.actions.MPSCommonDataKeys;
import jetbrains.mps.ide.project.ProjectHelper;
import jetbrains.mps.ide.ui.tree.DiscoveryValueProvider;
import jetbrains.mps.ide.ui.tree.VirtualFolder;
import jetbrains.mps.ide.ui.tree.VirtualFolder.Models;
import jetbrains.mps.ide.ui.tree.VirtualFolder.Modules;
import jetbrains.mps.ide.ui.tree.module.StereotypeProvider;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.smodel.Generator;
import jetbrains.mps.smodel.Language;
import jetbrains.mps.workbench.ActionPlace;
import jetbrains.mps.workbench.action.ActionUtils;
import jetbrains.mps.smodel.SObject;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.module.SModule;

import javax.swing.tree.TreeNode;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.function.Predicate;
import java.util.stream.Collectors;
import java.util.stream.Stream;

/**
 * Base implementation for a project tree node corresponding to a virtual folder.
 *
 * @author Fedor Isakov
 */
public abstract class BaseVirtualFolderProjectViewNode<FolderType extends VirtualFolder>
    extends BranchProjectViewNode<FolderType>
    implements DiscoveryValueProvider, DropTargetNode
{

  // loosely coupled references to UI actions to avoid introducing unwanted dependencies
  public static final String SET_VIRTUAL_FOLDER_ACTION = "jetbrains.mps.ide.actions.SetVirtualFolder_Action";
  public static final String SET_NODE_PACKAGE_ACTION = "jetbrains.mps.ide.actions.SetNodePackage_Action";

  @NotNull
  private final AbstractVirtualFolderHierarchy<?> myHierarchy;

  protected BaseVirtualFolderProjectViewNode(Project project, @NotNull FolderType folderType,
                                             ViewSettings viewSettings, @NotNull AbstractVirtualFolderHierarchy<?> hierarchy) {
    super(project, folderType, viewSettings);
    myHierarchy = hierarchy;
  }

  @Override
  public <ValueType> Stream<ValueType> discoverValuesOfType(Class<ValueType> valueTypeClass) {
    String virtualFolder = getValue().getName();
    return myHierarchy.allValues(virtualFolder)
                      .filter(valueTypeClass::isInstance)
                      .map(valueTypeClass::cast);
  }

  protected boolean containsValue(Object value) {
    String virtualFolder = getValue().getName();
    return myHierarchy.isValueInVirtualFolder(value, virtualFolder);
  }

  @Override
  protected void fillChildren(Collection<AbstractTreeNode<?>> children) {
    myHierarchy.fillChildren(getValue().getName(), children);
  }

  @SuppressWarnings("rawtypes")
  @Override
  public @Nullable Comparable getSortKey() {
    return getValue().getName();
  }

  @Override
  protected void update(@NotNull PresentationData presentation) {
    String virtualFolder = getValue().getName();
    String parentVirtualFolder = asVirtualFolder(getParentValue());
    assert virtualFolder.startsWith(parentVirtualFolder);
    int prefixLength = parentVirtualFolder.length();
    int lastDot = prefixLength > 0 ? virtualFolder.indexOf('.', prefixLength) : -1;
    String presentableText = lastDot >= 0 ? virtualFolder.substring(lastDot + 1) : virtualFolder;
    presentation.setPresentableText(presentableText);
    presentation.setIcon(Nodes.Folder);
  }

  protected @NotNull <T> Builder dropDataContextBuilder(@NotNull DataContext parentDataContext, TreeNode @NotNull [] sourceNodes, Class<T> valueClass, DataKey<List<T>> valuesDataKey) {
    List<Object> nodes = Arrays.stream(sourceNodes)
                               .map(TreeUtil::getUserObject)
                               .filter(AbstractTreeNode.class::isInstance)
                               .collect(Collectors.toList());

    List<Object> values = nodes.stream()
                               .map(AbstractTreeNode.class::cast)
                               .map(AbstractTreeNode::getValue).collect(Collectors.toList());
    values.removeIf(Predicate.not(valueClass::isInstance));

    return SimpleDataContext.builder()
                            .setParent(parentDataContext)
                            .add(PlatformDataKeys.PREDEFINED_TEXT, getValue().getName())
                            .add(valuesDataKey, values.stream().map(valueClass::cast).collect(Collectors.toList()))
                            .add(MPSCommonDataKeys.VALUES, values)
                            .add(MPSCommonDataKeys.USER_OBJECTS, nodes);
  }

  @Override
  public void dropExternalFiles(PsiFileSystemItem[] sourceFileArray, DataContext dataContext) {
    throw new UnsupportedOperationException("not implemented"); // not supported
  }

  protected abstract boolean isVirtualFolder(Object parentValue);

  protected abstract String asVirtualFolder(Object parentValue);

  public static class ModulesVirtualFolderProjectViewNode extends BaseVirtualFolderProjectViewNode<Modules> implements DiscoveryValueProvider {


    public ModulesVirtualFolderProjectViewNode(Project project, @NotNull VirtualFolder.Modules ns, ViewSettings viewSettings,
                                               @NotNull AbstractVirtualFolderHierarchy<?> hierarchy) {
      super(project, ns, viewSettings, hierarchy);
    }

    @Override
    protected boolean containsSObject(SObject sObject) {
      return sObject.testIfHasSModule(this::containsValue);
    }

    @Override
    protected boolean isVirtualFolder(Object parentValue) {
      return parentValue instanceof Modules;
    }

    @Override
    protected String asVirtualFolder(Object parentValue) {
      if (parentValue instanceof Modules) {
        return ((Modules) parentValue).getName();
      }
      return "";
    }

    @Override
    public int getTypeSortWeight(boolean sortByType) {
      return ProjectViewWeights.TOP_VIRTUAL_FOLDER_WEIGHT;
    }

    @Override
    public boolean canDrop(TreeNode @NotNull [] sourceNodes) {
      return Arrays.stream(sourceNodes)
            .map(TreeUtil::getUserObject)
            .filter(AbstractTreeNode.class::isInstance)
            .map(AbstractTreeNode.class::cast)
            .map(AbstractTreeNode::getValue)
            .anyMatch(SModule.class::isInstance);
    }

    @Override
    public void drop(TreeNode @NotNull [] sourceNodes, @NotNull DataContext parentDataContext) {
      AnAction action = ActionManager.getInstance().getAction(SET_VIRTUAL_FOLDER_ACTION);
      if (action != null) {
        DataContext dataContext = dropDataContextBuilder(parentDataContext, sourceNodes, SModule.class, MPSCommonDataKeys.MODULES)
                                      .add(MPSCommonDataKeys.PLACE, ActionPlace.PROJECT_PANE_SOLUTION)
                                      .build();
        AnActionEvent event = ActionUtils.createEvent(ActionPlace.PROJECT_PANE_SOLUTION.name(), dataContext);
        ActionUtils.updateAndPerformAction(action, event);
      }
    }
  }

  public static class ModelsVirtualFolderProjectViewNode extends BaseVirtualFolderProjectViewNode<Models>
      implements StereotypeProvider, DiscoveryValueProvider
  {
    protected ModelsVirtualFolderProjectViewNode(Project project, @NotNull VirtualFolder.Models ns, ViewSettings viewSettings,
                                                 @NotNull AbstractVirtualFolderHierarchy<?> hierarchy) {
      super(project, ns, viewSettings, hierarchy);
    }

    @Override
    public String getStereotype() {
      StereotypeProvider stereotypeProvider = anscestorOfType(StereotypeProvider.class);
      return stereotypeProvider != null ? stereotypeProvider.getStereotype() : StereotypeProvider.NONE.getStereotype();
    }

    @Override
    public boolean isStrict() {
      StereotypeProvider stereotypeProvider = anscestorOfType(StereotypeProvider.class);
      return stereotypeProvider != null ? stereotypeProvider.isStrict() : StereotypeProvider.NONE.isStrict();
    }

    @Override
    protected boolean containsSObject(SObject sObject) {
      return sObject.testIfHasSModel(this::containsValue);
    }

    @Override
    protected boolean matches(SObject wildcard) {
      return parentMatches(wildcard) && wildcard.testIfHasSModelOrWildcard(this::containsValue);
    }

    @Override
    protected  boolean isVirtualFolder(Object parentValue) {
      return parentValue instanceof Models;
    }

    @Override
    protected String asVirtualFolder(Object parentValue) {
      if (parentValue instanceof Models) {
        return ((Models) parentValue).getName();
      }
      else if (parentValue instanceof SModel) {
        return ((SModel) parentValue).getName().getLongName();
      }
      return "";
    }

    @Override
    public int getTypeSortWeight(boolean sortByType) {
      return ProjectViewWeights.MODEL_VIRTUAL_FOLDER_WEIGHT;
    }

    @Override
    public boolean canDrop(TreeNode @NotNull [] sourceNodes) {
      return false;
    }

    @Override
    public void drop(TreeNode @NotNull [] sourceNodes, @NotNull DataContext dataContext) {
    }
  }

  public static class NodesVirtualFolderProjectViewNode extends BaseVirtualFolderProjectViewNode<VirtualFolder.Nodes> implements DiscoveryValueProvider {

    protected NodesVirtualFolderProjectViewNode(Project project, @NotNull VirtualFolder.Nodes ns, ViewSettings viewSettings,
                                                AbstractVirtualFolderHierarchy<?> hierarchy) {
      super(project, ns, viewSettings, hierarchy);
    }

    private SNode getRoot(SNode sNode) {
      return ProjectHelper.fromIdeaProject(getProject())
                          .getModelAccess()
                          .computeReadAction(() ->
                                                 SNodeOperations.getContainingRoot(sNode));
    }

    @Override
    protected boolean containsSObject(SObject sObject) {
      return sObject.testIfHasSNode(node -> containsValue(getRoot(node)));
    }

    @Override
    protected boolean matches(SObject wildcard) {
      return parentMatches(wildcard) && wildcard.testIfHasSNodeOrWildcard(this::containsValue);
    }

    @Override
    public int getTypeSortWeight(boolean sortByType) {
      return ProjectViewWeights.NODE_VIRTUAL_FOLDER_WEIGHT;
    }

    @Override
    protected boolean isVirtualFolder(Object parentValue) {
      return parentValue instanceof VirtualFolder.Nodes;
    }

    @Override
    protected String asVirtualFolder(Object parentValue) {
      if (parentValue instanceof VirtualFolder.Nodes) {
        return ((VirtualFolder.Nodes) parentValue).getName();
      }
      return "";
    }

    @Override
    public boolean canDrop(TreeNode @NotNull [] sourceNodes) {
      return Arrays.stream(sourceNodes)
                   .map(TreeUtil::getUserObject)
                   .filter(AbstractTreeNode.class::isInstance)
                   .map(AbstractTreeNode.class::cast)
                   .map(AbstractTreeNode::getValue)
                   .anyMatch(SNode.class::isInstance);
    }

    @Override
    public void drop(TreeNode @NotNull [] sourceNodes, @NotNull DataContext parentDataContext) {
      AnAction action = ActionManager.getInstance().getAction(SET_NODE_PACKAGE_ACTION);
      if (action != null) {
        DataContext dataContext = dropDataContextBuilder(parentDataContext, sourceNodes, SNode.class, MPSCommonDataKeys.NODES)
                                      .add(MPSCommonDataKeys.PLACE, ActionPlace.PROJECT_PANE_SNODE)
                                      .build();
        AnActionEvent event = ActionUtils.createEvent(ActionPlace.PROJECT_PANE_SOLUTION.name(), dataContext);
        ActionUtils.updateAndPerformAction(action, event);
      }
    }

  }
}
