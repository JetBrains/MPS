package jetbrains.mps.ide.findusages.view;

import jetbrains.mps.ide.findusages.model.SearchResult;
import jetbrains.mps.ide.findusages.view.treeholder.tree.nodedatatypes.BaseNodeData;
import jetbrains.mps.ide.findusages.view.treeholder.treeview.path.PathItem;
import jetbrains.mps.ide.findusages.view.treeholder.treeview.path.PathItemRole;
import jetbrains.mps.ide.findusages.view.treeholder.treeview.path.PathProvider;
import jetbrains.mps.smodel.SNodeUtil;
import org.jetbrains.mps.openapi.language.SConcept;
import org.jetbrains.mps.openapi.language.SContainmentLink;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeAccessUtil;
import org.junit.Test;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;

/**
 * Pins the segment expansion done by {@link PathProvider} for a node's virtual package: one path
 * item per dot-separated segment, outermost segment closest to the model, innermost segment
 * closest to the node's root, exactly as {@code ModelTreeBuilder} nests project-pane folders.
 *
 * <p><b>Needs a live platform, hence {@code PlatformTestSuite}.</b> {@code PathProvider} reads the
 * virtual-package property via {@link SNodeAccessUtil#getProperty}, which (for a real
 * {@code SProperty} such as {@link SNodeUtil#property_BaseConcept_virtualPackage}) resolves the
 * property's declared data type through {@code ConceptFeatureHelper.getOwnerDescriptor(...)} -&gt;
 * {@code ConceptRegistry.getInstance()}. A suite that boots no platform has no
 * {@code ConceptRegistry}, so that call throws a {@code NullPointerException} which
 * {@code SNodeAccessUtilImpl.getPropertyValueImpl} swallows into {@code null} regardless of what
 * was stored on the node - the "no virtual-package items" cases would then pass for the wrong
 * reason and the rest would fail. {@code PlatformTestSuite} boots one {@code IdeaEnvironment} for
 * the whole suite, which is what makes the property read (and the concept presentation lookups in
 * {@code NodeNodeData}) resolve for real here. {@code PathProviderVirtualPackageSegmentsTest}
 * covers the pure segment-splitting logic headlessly in {@code NoPlatformTestSuite}.
 *
 * <p>The nodes below deliberately use real {@code jetbrains.mps.lang.core} meta-objects rather than
 * fabricated ids: with a live registry, an unknown concept makes {@code SNodeUtil.getPresentation}
 * and the constraints lookup log errors, and {@code PlatformTestSuite} (an
 * {@code OutputWatchingTestSuite}) fails any test that logs at error level.
 */
public class PathProviderVirtualPackageTest {
  // TypeAnnotated is a concrete lang.core concept whose 'annotation' child is a plain (non-attribute)
  // containment link, so the two-node tree below is built entirely from meta-objects the registry knows.
  private static final SConcept ourRootConcept = SNodeUtil.concept_TypeAnnotated;
  private static final SConcept ourChildConcept = SNodeUtil.concept_BaseConcept;
  private static final SContainmentLink ourChildRole = SNodeUtil.link_TypeAnnotated_annotation;

  @Test
  public void noVirtualPackagePropertyYieldsNoVirtualPackageItems() {
    List<PathItem<?>> path = pathFor(null);
    assertTrue(virtualPackageItems(path).isEmpty());
  }

  @Test
  public void blankVirtualPackageYieldsNoVirtualPackageItems() {
    assertTrue(virtualPackageItems(pathFor("")).isEmpty());
    assertTrue(virtualPackageItems(pathFor("   ")).isEmpty());
  }

  @Test
  public void singleSegmentYieldsOneItem() {
    List<BaseNodeData> vp = virtualPackageItems(pathFor("a"));
    assertEquals(1, vp.size());
    assertEquals("a", vp.get(0).getCaption());
    assertEquals("a", vp.get(0).getIdObject());
  }

  @Test
  public void threeSegmentsAreNestedOuterToInnerBetweenModelAndRoot() {
    List<PathItem<?>> path = pathFor("a.b.c");
    List<BaseNodeData> vp = virtualPackageItems(path);
    assertEquals(3, vp.size());
    assertEquals(List.of("a", "b", "c"), captions(vp));
    assertEquals(List.of("a", "a.b", "a.b.c"), idObjects(vp));

    int rootIndex = indexOfRole(path, PathItemRole.ROLE_ROOT);
    int targetIndex = indexOfRole(path, PathItemRole.ROLE_TARGET_NODE);
    assertTrue("root item must come after all virtual-package items", rootIndex > lastVirtualPackageIndex(path));
    assertTrue("target item must come after the root item", targetIndex > rootIndex);
  }

  @Test
  public void consecutiveDotsAreTolerated() {
    List<BaseNodeData> vp = virtualPackageItems(pathFor("a..b"));
    assertEquals(2, vp.size());
    assertEquals(List.of("a", "b"), captions(vp));
    assertEquals(List.of("a", "a.b"), idObjects(vp));
  }

  @Test
  public void leadingDotIsTolerated() {
    List<BaseNodeData> vp = virtualPackageItems(pathFor(".a"));
    assertEquals(1, vp.size());
    assertEquals("a", vp.get(0).getCaption());
  }

  @Test
  public void trailingDotIsTolerated() {
    List<BaseNodeData> vp = virtualPackageItems(pathFor("a."));
    assertEquals(1, vp.size());
    assertEquals("a", vp.get(0).getCaption());
  }

  private static List<PathItem<?>> pathFor(String virtualPackage) {
    SNode root = newNode(ourRootConcept);
    SNode target = newNode(ourChildConcept);
    root.addChild(ourChildRole, target);
    if (virtualPackage != null) {
      SNodeAccessUtil.setPropertyValue(root, SNodeUtil.property_BaseConcept_virtualPackage, virtualPackage);
    }
    // pathObject == object => not "showing external objects", so the target node itself is grouped.
    SearchResult<SNode> result = new SearchResult<>(target, target, Collections.emptyList());
    return new PathProvider(false).getPathForSearchResult(result);
  }

  private static SNode newNode(SConcept concept) {
    return new jetbrains.mps.smodel.SNode(concept);
  }

  private static List<BaseNodeData> virtualPackageItems(List<PathItem<?>> path) {
    List<BaseNodeData> result = new ArrayList<>();
    for (PathItem<?> item : path) {
      BaseNodeData data = item.create();
      if (data.getRole() == PathItemRole.ROLE_VIRTUAL_PACKAGE) {
        result.add(data);
      }
    }
    return result;
  }

  private static List<String> captions(List<BaseNodeData> items) {
    List<String> result = new ArrayList<>();
    for (BaseNodeData item : items) {
      result.add(item.getCaption());
    }
    return result;
  }

  private static List<Object> idObjects(List<BaseNodeData> items) {
    List<Object> result = new ArrayList<>();
    for (BaseNodeData item : items) {
      result.add(item.getIdObject());
    }
    return result;
  }

  private static int indexOfRole(List<PathItem<?>> path, PathItemRole role) {
    for (int i = 0; i < path.size(); i++) {
      if (path.get(i).create().getRole() == role) {
        return i;
      }
    }
    return -1;
  }

  private static int lastVirtualPackageIndex(List<PathItem<?>> path) {
    int last = -1;
    for (int i = 0; i < path.size(); i++) {
      if (path.get(i).create().getRole() == PathItemRole.ROLE_VIRTUAL_PACKAGE) {
        last = i;
      }
    }
    return last;
  }
}
