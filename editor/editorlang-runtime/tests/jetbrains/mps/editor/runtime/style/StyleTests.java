/*
 * Copyright 2003-2014 JetBrains s.r.o.
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

package jetbrains.mps.editor.runtime.style;

import jetbrains.mps.editor.runtime.style.StyleAttributeMap.DiscardValue;
import jetbrains.mps.openapi.editor.style.StyleAttribute;
import jetbrains.mps.openapi.editor.style.StyleChangeEvent;
import org.junit.Test;

import java.awt.Color;
import java.util.ArrayList;
import java.util.List;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;

public class StyleTests {
  @Test
  public void testStyleMaps() {
    TopLevelStyleMap topMap = new TopLevelStyleMap();
    StyleAttribute<String> ind1 = StyleAttributes.POSITION;
    int pnt1 = topMap.search(ind1.getIndex());
    assert TopLevelStyleMap.isEmpty(pnt1);
    assert topMap.getAll(ind1, pnt1).isEmpty();
    pnt1 = topMap.setValue(ind1, pnt1, 0, "bcd0");
    assert topMap.getValue(ind1, 0).equals("bcd0");
    pnt1 = topMap.setValue(ind1, pnt1, 0, "abc0");
    assert topMap.getValue(ind1, 0).equals("abc0");
    assert !(topMap.get(pnt1) instanceof StyleAttributeMap);
    pnt1 = topMap.setValue(ind1, pnt1, 1, "abc1");
    assert topMap.getTopPair(ind1).value.equals("abc1");
    assert topMap.getTopPair(ind1, pnt1).value.equals("abc1");
    assert topMap.getValue(ind1, pnt1, 1).equals("abc1");
    assert topMap.getValue(ind1, pnt1, 0).equals("abc0");
    assert topMap.get(pnt1) instanceof StyleAttributeMap;
    pnt1 = topMap.setValue(ind1, pnt1, 0, null);
    assert topMap.getValue(ind1, pnt1, 0) == null;
    topMap.setValue(ind1, 1, DiscardValue.getInstance());//pnt1 is dirty
    assert topMap.getTopPair(ind1) == null;

    StyleAttribute<String> ind2 = StyleAttributes.LAYOUT_CONSTRAINT;
    int pnt2 = topMap.search(ind2.getIndex());
    pnt2 = topMap.setValue(ind2, pnt2, 1, DiscardValue.getInstance());//pnt1 is dirty
    assert topMap.getValue(ind2, pnt2, 1).equals(DiscardValue.getInstance());

    StyleAttribute<String> ind3 = StyleAttributes.MATCHING_LABEL;
    int pnt3 = topMap.search(ind3.getIndex());
    pnt3 = topMap.setValue(ind3, pnt3, 0, "123abc");//pnt1, pnt2 are dirty
    pnt3 = topMap.setValue(ind3, pnt3, 1, "123bcd");
    pnt3 = topMap.setValue(ind3, pnt3, 2, null);
    pnt3 = topMap.setValue(ind3, pnt3, 1, null);
    assert !(topMap.get(pnt3) instanceof StyleAttributeMap);


    StyleAttribute<String> ind4 = StyleAttributes.POSITION_CHILDREN;
    int pnt4 = topMap.search(ind4.getIndex());
    pnt4 = topMap.setValue(ind4, pnt4, 1, DiscardValue.getInstance());//pnt1, pnt2, pnt3 are dirty
    assert topMap.getTopPair(ind4) == null;
    assert (topMap.get(pnt4) instanceof StyleAttributeMap);
    assert ((StyleAttributeMap<String>) topMap.get(pnt4)).get(((StyleAttributeMap<String>) topMap.get(pnt4)).search(1)) == DiscardValue.getInstance();
    assert ((StyleAttributeMap<String>) topMap.get(pnt4)).indexes.length == 1;
    assert ((StyleAttributeMap<String>) topMap.get(pnt4)).indexes[0] == 1;
  }

  private static List<StyleChangeEvent> recordEvents(StyleImpl style) {
    List<StyleChangeEvent> events = new ArrayList<>();
    style.addListener(events::add);
    return events;
  }

  @Test
  public void inheritedValuePropagatesThroughTree() {
    StyleImpl root = new StyleImpl();
    root.set(StyleAttributes.TEXT_COLOR, Color.RED);
    StyleImpl mid = new StyleImpl();
    StyleImpl leaf = new StyleImpl();
    mid.add(leaf);
    root.add(mid);

    assertEquals(Color.RED, leaf.get(StyleAttributes.TEXT_COLOR));
  }

  @Test
  public void reattachWithEqualValuesFiresNoEvents() {
    StyleImpl root = new StyleImpl();
    root.set(StyleAttributes.TEXT_COLOR, Color.RED);
    StyleImpl mid = new StyleImpl();
    StyleImpl leaf = new StyleImpl();
    mid.add(leaf);
    root.add(mid);
    assertEquals(Color.RED, leaf.get(StyleAttributes.TEXT_COLOR));

    List<StyleChangeEvent> midEvents = recordEvents(mid);
    List<StyleChangeEvent> leafEvents = recordEvents(leaf);

    // an incremental-update splice: detach and re-attach to a parent with the same effective values
    root.remove(mid);
    root.add(mid);
    root.validateSubtree();

    assertTrue(midEvents.isEmpty());
    assertTrue(leafEvents.isEmpty());
    assertEquals(Color.RED, leaf.get(StyleAttributes.TEXT_COLOR));
  }

  @Test
  public void inheritedChangePropagatesOnRead() {
    StyleImpl root = new StyleImpl();
    root.set(StyleAttributes.TEXT_COLOR, Color.RED);
    StyleImpl mid = new StyleImpl();
    StyleImpl leaf = new StyleImpl();
    mid.add(leaf);
    root.add(mid);
    assertEquals(Color.RED, leaf.get(StyleAttributes.TEXT_COLOR));

    root.set(StyleAttributes.TEXT_COLOR, Color.BLUE);

    // no flush in between: a plain read has to see the new value
    assertEquals(Color.BLUE, leaf.get(StyleAttributes.TEXT_COLOR));
  }

  @Test
  public void changeEventsFireCoalescedOnFlush() {
    StyleImpl root = new StyleImpl();
    root.set(StyleAttributes.TEXT_COLOR, Color.RED);
    StyleImpl mid = new StyleImpl();
    StyleImpl leaf = new StyleImpl();
    mid.add(leaf);
    root.add(mid);
    root.validateSubtree();

    List<StyleChangeEvent> leafEvents = recordEvents(leaf);
    root.set(StyleAttributes.TEXT_COLOR, Color.BLUE);
    assertTrue(leafEvents.isEmpty());

    root.validateSubtree();
    assertEquals(1, leafEvents.size());
    assertTrue(leafEvents.get(0).getChangedAttributes().contains(StyleAttributes.TEXT_COLOR));

    // a second flush finds nothing to do
    root.validateSubtree();
    assertEquals(1, leafEvents.size());
    assertEquals(Color.BLUE, leaf.get(StyleAttributes.TEXT_COLOR));
  }

  @Test
  public void detachDropsInheritedValuesOnRead() {
    StyleImpl root = new StyleImpl();
    root.set(StyleAttributes.TEXT_COLOR, Color.RED);
    StyleImpl mid = new StyleImpl();
    StyleImpl leaf = new StyleImpl();
    mid.add(leaf);
    root.add(mid);
    assertEquals(Color.RED, leaf.get(StyleAttributes.TEXT_COLOR));

    root.remove(mid);

    Color defaultColor = StyleAttributes.TEXT_COLOR.combine(null, null);
    assertEquals(defaultColor, mid.get(StyleAttributes.TEXT_COLOR));
    assertEquals(defaultColor, leaf.get(StyleAttributes.TEXT_COLOR));
  }

  @Test
  public void moveToParentWithDifferentValuesUpdatesDescendants() {
    StyleImpl oldRoot = new StyleImpl();
    oldRoot.set(StyleAttributes.TEXT_COLOR, Color.RED);
    StyleImpl newRoot = new StyleImpl();
    newRoot.set(StyleAttributes.TEXT_COLOR, Color.GREEN);
    StyleImpl mid = new StyleImpl();
    StyleImpl leaf = new StyleImpl();
    mid.add(leaf);
    oldRoot.add(mid);
    assertEquals(Color.RED, leaf.get(StyleAttributes.TEXT_COLOR));

    oldRoot.remove(mid);
    newRoot.add(mid);

    assertEquals(Color.GREEN, leaf.get(StyleAttributes.TEXT_COLOR));
  }

  @Test
  public void highestPriorityIsRecomputedLazily() {
    StyleImpl root = new StyleImpl();
    StyleImpl leaf = new StyleImpl();
    root.add(leaf);
    root.set(StyleAttributes.TEXT_COLOR, 7, Color.BLUE);

    assertEquals(7, leaf.getHighestPriority(StyleAttributes.TEXT_COLOR));
  }

  @Test
  public void priorityMergePrefersOwnValues() {
    StyleImpl root = new StyleImpl();
    root.set(StyleAttributes.TEXT_COLOR, 1, Color.RED);
    StyleImpl leaf = new StyleImpl();
    root.add(leaf);
    leaf.set(StyleAttributes.TEXT_COLOR, 2, Color.BLUE);

    assertEquals(Color.BLUE, leaf.get(StyleAttributes.TEXT_COLOR));

    // removing the own value falls back to the inherited one
    leaf.set(StyleAttributes.TEXT_COLOR, 2, null);
    assertEquals(Color.RED, leaf.get(StyleAttributes.TEXT_COLOR));
  }
}
