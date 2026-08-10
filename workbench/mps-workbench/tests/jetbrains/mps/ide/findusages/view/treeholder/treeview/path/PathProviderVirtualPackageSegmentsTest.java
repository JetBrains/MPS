/*
 * Copyright 2003-2026 JetBrains s.r.o.
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

import jetbrains.mps.util.Pair;
import org.junit.Test;

import java.util.List;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;

/**
 * Pins {@link PathProvider#expandVirtualPackage(String)}: one entry per dot-separated segment, deepest
 * segment first (the order {@code getPathForSearchResult} appends in, before it reverses the whole path),
 * qualified name as identity and bare segment as caption.
 * <p/>
 * Lives in the production package on purpose - the helper is package-local, and driving the same logic
 * through {@code getPathForSearchResult} would need a live {@code ConceptRegistry} to read the
 * virtual-package property off a node (see {@code PathProviderVirtualPackageTest}).
 */
public class PathProviderVirtualPackageSegmentsTest {

  @Test
  public void noPackageYieldsNothing() {
    assertTrue(PathProvider.expandVirtualPackage(null).isEmpty());
    assertTrue(PathProvider.expandVirtualPackage("").isEmpty());
    assertTrue(PathProvider.expandVirtualPackage("   ").isEmpty());
    assertTrue(PathProvider.expandVirtualPackage(".").isEmpty());
  }

  @Test
  public void singleSegmentYieldsOneEntry() {
    assertEquals("a=a", render(PathProvider.expandVirtualPackage("a")));
  }

  /**
   * The order here is the contract: deepest first on append, so that after
   * {@code getPathForSearchResult}'s final reverse the outermost segment ends up closest to the model and
   * the root node ends up under the innermost one.
   */
  @Test
  public void nestedSegmentsAreDeepestFirstWithCumulativeIdentity() {
    assertEquals("a.b.c=c, a.b=b, a=a", render(PathProvider.expandVirtualPackage("a.b.c")));
  }

  @Test
  public void blankSegmentsAreSkipped() {
    assertEquals("a.b=b, a=a", render(PathProvider.expandVirtualPackage("a..b")));
    assertEquals("a=a", render(PathProvider.expandVirtualPackage(".a")));
    assertEquals("a=a", render(PathProvider.expandVirtualPackage("a.")));
    assertEquals("a.b=b, a=a", render(PathProvider.expandVirtualPackage(".a..b.")));
  }

  /**
   * Identity is the qualified name, not the segment, so that {@code p.common} and {@code q.common} stay
   * distinct tree nodes.
   */
  @Test
  public void equallyNamedLeavesGetDistinctIdentities() {
    String common = qualifiedNameOfFirst(PathProvider.expandVirtualPackage("p.common"));
    String otherCommon = qualifiedNameOfFirst(PathProvider.expandVirtualPackage("q.common"));
    assertEquals("p.common", common);
    assertEquals("q.common", otherCommon);
  }

  private static String qualifiedNameOfFirst(List<Pair<String, String>> segments) {
    return segments.get(0).o1;
  }

  /** Renders as {@code qualifiedName=caption} pairs in list order, so assertions read as one string. */
  private static String render(List<Pair<String, String>> segments) {
    StringBuilder sb = new StringBuilder();
    for (Pair<String, String> segment : segments) {
      if (sb.length() > 0) {
        sb.append(", ");
      }
      sb.append(segment.o1).append('=').append(segment.o2);
    }
    return sb.toString();
  }
}
