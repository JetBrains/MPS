/*
 * Copyright 2003-2019 JetBrains s.r.o.
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
import jetbrains.mps.ide.projectPane.favorites.nodes.MPSFavoriteReference;
import jetbrains.mps.ide.projectPane.favorites.nodes.SRefValue;
import jetbrains.mps.ide.ui.smodel.ReferenceTreeNode;
import jetbrains.mps.smodel.adapter.structure.ref.SReferenceLinkAdapter;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.language.SReferenceLink;
import org.jetbrains.mps.openapi.model.SNodeReference;
import org.jetbrains.mps.openapi.persistence.PersistenceFacade;

import javax.swing.tree.TreeNode;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

public class MPSFavoriteReferenceProvider extends FavoriteNodeProvider {

//  @Nullable
//  @Override
//  public Collection<AbstractTreeNode<?>> getFavoriteNodes(DataContext context, @NotNull ViewSettings viewSettings) {
//    Project project = CommonDataKeys.PROJECT.getData(context);
//    List<TreeNode> references = MPSCommonDataKeys.TREE_NODES.getData(context);
//
//    if (references == null) {
//      return null;
//    }
//    Collection<AbstractTreeNode<?>> result = new ArrayList<>();
//
//    for (TreeNode referenceObject : references) {
//      if (!(referenceObject instanceof ReferenceTreeNode)) {
//        continue;
//      }
//      ReferenceTreeNode treeNode = (ReferenceTreeNode) referenceObject;
//      result.add(new MPSFavoriteReference(project, new SRefValue(treeNode.getRef()), viewSettings));
//    }
//
//    return result.isEmpty() ? null : result;
//
//  }
//
//  @Nullable
//  @Override
//  public AbstractTreeNode<?> createNode(Project project, Object element, @NotNull ViewSettings viewSettings) {
//    if (element instanceof SRefValue) {
//      return new MPSFavoriteReference(project, (SRefValue) element, viewSettings);
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
//    return 30;
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
    return "mps reference";
  }

//  @Nullable
//  @Override
//  public String getElementUrl(Object element) {
//    if (element instanceof SRefValue) {
//      SRefValue rv = (SRefValue) element;
//      if (!(rv.getLink() instanceof SReferenceLinkAdapter)) {
//        return null;
//      }
//
//      String source, link;
//
//      source = PersistenceFacade.getInstance().asString(rv.getSource());
//      link = ((SReferenceLinkAdapter) rv.getLink()).serialize();
//
//      return SerializationUtil.getInstance().assemble(new String[]{source, link});
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
//    if (DumbService.isDumb(project) || url == null) {
//      // XXX this is quite an odd code, IDEA could do the check if it needs to, why here?
//      return null;
//    }
//    try {
//      String[] params = SerializationUtil.getInstance().disassemble(url);
//      if (params.length != 2 || params.length != 3) {
//        // FIXME params.length == 3 is legacy scenario with ignored target ref. Left in case
//        //    IDEA serializes these urls somewhere, and we may face them in a next MPS release.
//        //    Feel free to remove this case once 2021.2 is out
//        return null;
//      }
//      SNodeReference source = PersistenceFacade.getInstance().createNodeReference(params[0]);
//      // need to skip unused target node pointer params[1] when there are 3 elements in url
//      SReferenceLink link = SReferenceLinkAdapter.deserialize(params[params.length == 3 ? 2 : 1]);
//
//      return new Object[]{new SRefValue(source, link)};
//    } catch (Exception e) {
//      return null;
//    }
//  }
}
