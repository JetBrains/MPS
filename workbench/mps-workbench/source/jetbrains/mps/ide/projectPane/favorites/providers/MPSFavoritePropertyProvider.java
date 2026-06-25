/*
 * Copyright 2003-2021 JetBrains s.r.o.
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
package jetbrains.mps.ide.projectPane.favorites.providers;

import com.intellij.ide.favoritesTreeView.FavoriteNodeProvider;
import com.intellij.ide.projectView.ViewSettings;
import com.intellij.ide.util.treeView.AbstractTreeNode;
import com.intellij.openapi.actionSystem.CommonDataKeys;
import com.intellij.openapi.actionSystem.DataContext;
import com.intellij.openapi.project.DumbService;
import com.intellij.openapi.project.Project;
import com.intellij.openapi.vfs.VirtualFile;
import jetbrains.mps.ide.actions.MPSCommonDataKeys;
import jetbrains.mps.ide.projectPane.favorites.nodes.MPSFavoriteProperty;
import jetbrains.mps.ide.ui.smodel.PropertyTreeNode;
import jetbrains.mps.smodel.adapter.structure.property.SPropertyAdapter;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.language.SProperty;

import javax.swing.tree.TreeNode;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

public class MPSFavoritePropertyProvider extends FavoriteNodeProvider {

//  @Nullable
//  @Override
//  public Collection<AbstractTreeNode<?>> getFavoriteNodes(DataContext context, @NotNull ViewSettings viewSettings) {
//    Project project = CommonDataKeys.PROJECT.getData(context);
//    List<TreeNode> properties = MPSCommonDataKeys.TREE_NODES.getData(context);
//
//    if (properties == null) {
//      return null;
//    }
//    Collection<AbstractTreeNode<?>> result = new ArrayList<>();
//
//    for (TreeNode propertyObject : properties) {
//      if (!(propertyObject instanceof PropertyTreeNode)) {
//        continue;
//      }
//      PropertyTreeNode treeNode = (PropertyTreeNode) propertyObject;
//      result.add(new MPSFavoriteProperty(project, treeNode.getProperty(), viewSettings));
//    }
//    return result.isEmpty() ? null : result;
//  }
//
//  @Nullable
//  @Override
//  public AbstractTreeNode<?> createNode(Project project, Object element, @NotNull ViewSettings viewSettings) {
//    if (element instanceof SProperty) {
//      return new MPSFavoriteProperty(project, (SProperty) element, viewSettings);
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
//    return 20;
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
    return "mps property";
  }

//  @Nullable
//  @Override
//  public String getElementUrl(Object element) {
//    if (element instanceof SPropertyAdapter) {
//      return ((SPropertyAdapter) element).serialize();
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
//      return new Object[]{SPropertyAdapter.deserialize(url)};
//    } catch (Exception e) {
//      return null;
//    }
//  }
}
