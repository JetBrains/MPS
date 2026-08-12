/*
 * Copyright 2003-2022 JetBrains s.r.o.
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
package jetbrains.mps.ide.findusages.view.treeholder.treeview.path;

import jetbrains.mps.ide.findusages.model.CategoryKind;
import jetbrains.mps.ide.findusages.model.SearchResult;
import jetbrains.mps.ide.findusages.view.treeholder.tree.nodedatatypes.CategoryNodeData;
import jetbrains.mps.ide.findusages.view.treeholder.tree.nodedatatypes.DeployedLanguageNodeData;
import jetbrains.mps.ide.findusages.view.treeholder.tree.nodedatatypes.ModelNodeData;
import jetbrains.mps.ide.findusages.view.treeholder.tree.nodedatatypes.ModuleNodeData;
import jetbrains.mps.ide.findusages.view.treeholder.tree.nodedatatypes.NodeNodeData;
import jetbrains.mps.ide.findusages.view.treeholder.tree.nodedatatypes.VirtualPackageNodeData;
import jetbrains.mps.logging.Logger;
import jetbrains.mps.smodel.SNodeUtil;
import jetbrains.mps.util.Pair;
import org.jetbrains.mps.openapi.language.SLanguage;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SModelReference;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeAccessUtil;
import org.jetbrains.mps.openapi.module.SModule;
import org.jetbrains.mps.openapi.module.SModuleReference;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class PathProvider {
  private final PathItem.Factory<SNode> myNodeElementFactory;
  private final PathItem.Factory<SModelReference> myModelElementFactory;
  private final PathItem.Factory<SModuleReference> myModuleElementFactory;
  private final PathItem.Factory<SLanguage> myLanguageElementFactory;
  private final PathItem.Factory<Pair<CategoryKind, String>> myCategoryElementFactory;
  private final PathItem.Factory<Pair<String, String>> myVirtualPackageElementFactory;

  public PathProvider(final boolean resultsSection) {
    myNodeElementFactory = c -> new NodeNodeData(c.getRole(), c.getIdObject(), c.getPresentationObject(), c.isTail(), resultsSection);
    myModelElementFactory = c -> new ModelNodeData(c.getRole(), c.getIdObject(), c.getPresentationObject(), c.isTail(), resultsSection);
    myModuleElementFactory = c -> new ModuleNodeData(c.getRole(), c.getIdObject(), c.getPresentationObject(), c.isTail(), resultsSection);
    myLanguageElementFactory = c -> new DeployedLanguageNodeData(c.getRole(), c.getIdObject(), c.getPresentationObject(), c.isTail(), resultsSection);
    myCategoryElementFactory = creator -> {
      Pair<CategoryKind, String> category = creator.getIdObject();
      return new CategoryNodeData(creator.getRole(), category.o1, category.o2, resultsSection);
    };
    myVirtualPackageElementFactory = c -> new VirtualPackageNodeData(
        c.getRole(), c.getIdObject().o1, c.getIdObject().o2, resultsSection);
  }

  public List<PathItem<?>> getPathForSearchResult(SearchResult<?> result) {
    List<PathItem<?>> res = new ArrayList<>();
    Object o = result.getPathObject();
    // makes sense only for tail item, see presentationProvider.getPresentation(), above
    Object x = result.getObject();

    if (o instanceof SNode) {
      // If the objects displayed are nodes, we should not include them into path.
      // If not, they can be displayed under their node if the node is the object grouped by.
      // The same potentially should be made also for models and modules, but they are treated a bit different way.
      boolean showingExternalObjects = o != x;
      SNode node = (SNode) o;
      // res.isEmpty() is safe way to find out if it's the first time we put anything into res list (which is reversed path,
      // hence first element to put is its tail).
      //noinspection ConstantConditions    NOTE keep res.isEmpty just in case anyone adds another instanceof check above
      res.add(new PathItem<>(PathItemRole.ROLE_TARGET_NODE, node, x, res.isEmpty(), myNodeElementFactory));

      if (node.getParent() != null) {
        appendNodePathThroughNamedConcepts(res, showingExternalObjects ? node : node.getParent());
      }

      SNode rootNode = node.getContainingRoot();
      if (node != rootNode || showingExternalObjects) {
        res.add(new PathItem<>(PathItemRole.ROLE_ROOT, rootNode, null, false, myNodeElementFactory));
      }

      String virtualPackage = SNodeAccessUtil.getProperty(rootNode, SNodeUtil.property_BaseConcept_virtualPackage);
      for (Pair<String, String> segment : expandVirtualPackage(virtualPackage)) {
        res.add(new PathItem<>(PathItemRole.ROLE_VIRTUAL_PACKAGE, segment, null, false, myVirtualPackageElementFactory));
      }

      o = node.getModel();
      x = null;
    }

    if (o instanceof SModel) {
      res.add(new PathItem<>(PathItemRole.ROLE_MODEL, ((SModel) o).getReference(), x, res.isEmpty(), myModelElementFactory));
      o = ((SModel) o).getModule();
      x = null;
    }

    if (o instanceof SModelReference) {
      SModelReference model = (SModelReference) o;
      res.add(new PathItem<>(PathItemRole.ROLE_MODEL, model, x, res.isEmpty(), myModelElementFactory));
      o = model.getModuleReference();
      x = null;
    }

    if (o instanceof SModule) {
      SModule module = (SModule) o;
      res.add(new PathItem<>(PathItemRole.ROLE_MODULE, module.getModuleReference(), x, res.isEmpty(), myModuleElementFactory));
      x = null;
    }

    if (o instanceof SModuleReference) {
      res.add(new PathItem<>(PathItemRole.ROLE_MODULE, (SModuleReference) o, x, res.isEmpty(), myModuleElementFactory));
      x = null;
    }

    if (o instanceof SLanguage) {
      res.add(new PathItem<>(PathItemRole.ROLE_LANGUAGE, (SLanguage) o, x, res.isEmpty(), myLanguageElementFactory));
      x = null;
    }
    if (res.isEmpty()) {
      // see no reason to add categories if there's no actual results
      return res;
    }

    List<Pair<CategoryKind, String>> reversedCategories = new ArrayList<>(result.getCategories());
    Collections.reverse(reversedCategories);
    for (Pair<CategoryKind, String> category : reversedCategories) {
      res.add(new PathItem<>(PathItemRole.getCategoryRole(category.o1), category, null, false, myCategoryElementFactory));
    }

    Collections.reverse(res);

    return res;
  }

  /**
   * Expands a node's virtual package into one entry per dot-separated segment, so that usage results nest
   * the way the project pane nests virtual folders (see {@code ModelTreeBuilder}) instead of showing a
   * single node captioned with the whole dotted name.
   * <p/>
   * {@code o1} is the cumulative qualified name, used as node identity so that sibling branches ending in
   * the same segment (e.g. {@code p.common} and {@code q.common}) don't collapse into one tree node;
   * {@code o2} is the bare segment, used as caption. Blank segments are skipped, hence {@code "a..b"},
   * {@code ".a"} and {@code "a."} are tolerated.
   * <p/>
   * The result is ordered <em>deepest segment first</em>, ready to append to the tail-first path list that
   * {@link #getPathForSearchResult} reverses at the end: after the reverse, the outermost segment sits
   * closest to the model and the root node sits under the innermost segment.
   */
  /*package*/ static List<Pair<String, String>> expandVirtualPackage(String virtualPackage) {
    if (virtualPackage == null || virtualPackage.trim().isEmpty()) {
      return Collections.emptyList();
    }
    List<Pair<String, String>> segments = new ArrayList<>();
    StringBuilder qualified = new StringBuilder();
    for (String segment : virtualPackage.split("\\.")) {
      if (segment.trim().isEmpty()) {
        continue;
      }
      if (qualified.length() > 0) {
        qualified.append('.');
      }
      qualified.append(segment);
      segments.add(new Pair<>(qualified.toString(), segment));
    }
    Collections.reverse(segments);
    return segments;
  }

  private void appendNodePathThroughNamedConcepts(List<PathItem<?>> path, SNode node) {
    String name;
    try {
      name = node.getName();
    } catch (Throwable t) {
      Logger.getLogger(PathProvider.class).error(t);
      name = "<getName() caused an exception on this node>";
    }
    if (name != null) {
      if (node.getParent() != null) {
        // XXX not clear what to do when some intermediate node becomes a 'tail' for a later result, how do we pass 'presentation' object there?
        // AFAIK, existing DataTree doesn't care to update presentation of a newly discovered 'tail' node (just updates its status with setIsPathTail_internal
        //       see the very end of DataTree.createPath()).
        path.add(new PathItem<>(PathItemRole.ROLE_ROOT_TO_TARGET_NODE, node, null, false, myNodeElementFactory));
      }
    }

    if (node.getParent() != null) {
      appendNodePathThroughNamedConcepts(path, node.getParent());
    }
  }
}
