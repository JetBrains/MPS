/*
 * Copyright 2000-2021 JetBrains s.r.o. Use of this source code is governed by the Apache 2.0 license that can be found in the LICENSE file.
 */
package jetbrains.mps.ide.projectPane.favorites.providers;

import com.intellij.ide.favoritesTreeView.FavoriteNodeProvider;
import com.intellij.ide.projectView.ViewSettings;
import com.intellij.ide.util.treeView.AbstractTreeNode;
import com.intellij.openapi.actionSystem.CommonDataKeys;
import com.intellij.openapi.actionSystem.DataContext;
import com.intellij.openapi.project.DumbService;
import com.intellij.openapi.project.Project;
import com.intellij.openapi.vfs.VirtualFile;
import jetbrains.mps.ide.projectPane.favorites.nodes.MPSFavoriteModel;
import jetbrains.mps.ide.ui.tree.smodel.SModelTreeNode;
import jetbrains.mps.workbench.MPSDataKeys;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.model.SModelReference;
import org.jetbrains.mps.openapi.persistence.PersistenceFacade;

import javax.swing.tree.TreeNode;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

public class MPSFavoriteModelProvider extends FavoriteNodeProvider {
//  @Nullable
//  @Override
//  public Collection<AbstractTreeNode<?>> getFavoriteNodes(DataContext context, @NotNull ViewSettings viewSettings) {
//    Project project = CommonDataKeys.PROJECT.getData(context);
//    List<TreeNode> nodes = MPSDataKeys.TREE_NODES.getData(context);
//
//    if (nodes == null) {
//      return null;
//    }
//    Collection<AbstractTreeNode<?>> result = new ArrayList<>();
//    for (TreeNode treeNode : nodes) {
//      if (!(treeNode instanceof SModelTreeNode)) {
//        continue;
//      }
//      SModelTreeNode sModelTreeNode = (SModelTreeNode) treeNode;
//      result.add(new MPSFavoriteModel(project, sModelTreeNode.getModel().getReference(), viewSettings));
//    }
//
//    return result.isEmpty() ? null : result;
//  }
//
//  @Nullable
//  @Override
//  public AbstractTreeNode<?> createNode(Project project, Object element, @NotNull ViewSettings viewSettings) {
//    if (element instanceof SModelReference) {
//      return new MPSFavoriteModel(project, (SModelReference) element, viewSettings);
//    }
//    return null;
//  }
//
//  @Override
//  public boolean elementContainsFile(Object element, VirtualFile vFile) {
//    return false;
//  }
//
//  @Override
//  public int getElementWeight(Object element, boolean isSortByType) {
//    return 5;
//  }
//
//  @Nullable
//  @Override
//  public String getElementLocation(Object element) {
//    return null;
//  }
//
//  @Override
//  public boolean isInvalidElement(Object element) {
//    return false;
//  }

  @NotNull
  @Override
  public String getFavoriteTypeId() {
    return "mps model";
  }

//  @Nullable
//  @Override
//  public String getElementUrl(Object element) {
//    if (element instanceof SModelReference) {
//      return PersistenceFacade.getInstance().asString((SModelReference) element);
//    }
//    return null;
//  }
//
//  @Nullable
//  @Override
//  public String getElementModuleName(Object element) {
//    return null;
//  }
//
//  @Nullable
//  @Override
//  public Object[] createPathFromUrl(Project project, String url, String moduleName) {
//    if (DumbService.isDumb(project)) {
//      return null;
//    }
//    try {
//      return new Object[]{PersistenceFacade.getInstance().createModelReference(url)};
//    } catch (Exception e) {
//      return null;
//    }
//  }
}
