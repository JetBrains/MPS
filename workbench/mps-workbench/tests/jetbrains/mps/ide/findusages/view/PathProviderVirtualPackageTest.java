package jetbrains.mps.ide.findusages.view;

import jetbrains.mps.ide.findusages.model.SearchResult;
import jetbrains.mps.ide.findusages.view.treeholder.tree.nodedatatypes.BaseNodeData;
import jetbrains.mps.ide.findusages.view.treeholder.treeview.path.PathItem;
import jetbrains.mps.ide.findusages.view.treeholder.treeview.path.PathItemRole;
import jetbrains.mps.ide.findusages.view.treeholder.treeview.path.PathProvider;
import jetbrains.mps.smodel.SNodeAccessUtilImpl;
import jetbrains.mps.smodel.SNodeUtil;
import jetbrains.mps.smodel.adapter.BootstrapAdapterFactory;
import org.jetbrains.mps.openapi.language.SConcept;
import org.jetbrains.mps.openapi.language.SContainmentLink;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeAccessUtil;
import org.junit.BeforeClass;
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
 * <p><b>Not runnable headless yet.</b> {@code PathProvider} reads the virtual-package property via
 * {@link SNodeAccessUtil#getProperty}, which (for a real {@code SProperty} such as
 * {@link SNodeUtil#property_BaseConcept_virtualPackage}) resolves the property's declared data type
 * through {@code ConceptFeatureHelper.getOwnerDescriptor(...)} -&gt;
 * {@code ConceptRegistry.getInstance()}. {@code NoPlatformTestSuite} never boots a
 * {@code ConceptRegistry} (that needs a live {@code LanguageRegistry}, i.e. a much larger platform
 * fixture), so that call always throws a {@code NullPointerException}, which
 * {@code SNodeAccessUtilImpl.getPropertyValueImpl} swallows and turns into {@code null} -
 * regardless of what was actually stored on the node. That makes every case that depends on
 * reading back a real virtual-package value unverifiable in this environment: the two cases that
 * merely expect "no virtual-package items" (null/blank property) accidentally pass for the wrong
 * reason, and the cases that expect real segments fail. Wiring a working {@code ConceptRegistry}
 * would require a live {@code LanguageRegistry}/structure aspect - the same class of heavyweight
 * fixture ({@code ModuleInProjectTest}/IDEA project) this test suite is meant to avoid. Left
 * unregistered in {@code NoPlatformTestSuite} until this class can run against a real platform
 * environment (e.g. {@code PlatformTestSuite}). See MPSSPRT-481 review follow-up plan, Step 5b.
 */
public class PathProviderVirtualPackageTest {
  private static final SConcept ourConcept = BootstrapAdapterFactory.getConcept(0, 0, 0, "Mock");
  private static final SContainmentLink ourChildRole = BootstrapAdapterFactory.getContainmentLink(1, 2, 3, 4, "L");

  @BeforeClass
  public static void setUpSNodeAccessUtil() {
    // PathProvider reads the virtual-package property via the deprecated SNodeAccessUtil facade, whose
    // static delegate is normally wired by MPSCore.init() during platform startup. NoPlatformTestSuite
    // never starts the platform, so wire the same plain implementation directly.
    SNodeAccessUtil.setInstance(new SNodeAccessUtilImpl());
  }

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
    SNode root = newNode();
    SNode target = newNode();
    root.addChild(ourChildRole, target);
    if (virtualPackage != null) {
      SNodeAccessUtil.setPropertyValue(root, SNodeUtil.property_BaseConcept_virtualPackage, virtualPackage);
    }
    // pathObject == object => not "showing external objects", so the target node itself is grouped.
    SearchResult<SNode> result = new SearchResult<>(target, target, Collections.emptyList());
    return new PathProvider(false).getPathForSearchResult(result);
  }

  private static SNode newNode() {
    return new jetbrains.mps.smodel.SNode(ourConcept);
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
