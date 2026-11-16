/*
 * Copyright 2003-2016 JetBrains s.r.o.
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
package jetbrains.mps.nodeEditor;

import jetbrains.mps.lang.editor.menus.transformation.IncludeTransformationMenuTransformationMenuPart;
import jetbrains.mps.lang.editor.menus.transformation.IncludeTransformationMenuTransformationMenuPartTest;
import jetbrains.mps.nodeEditor.assist.AncestorOrSmallCellContextAssistantFinderTest;
import jetbrains.mps.nodeEditor.assist.CanExecuteFilterTest;
import jetbrains.mps.nodeEditor.braces.BracesFinderTest;
import jetbrains.mps.nodeEditor.cellLayout.CellLayoutDefaultHtmlTest;
import jetbrains.mps.nodeEditor.cells.ComponentCellTest;
import jetbrains.mps.nodeEditor.cells.ContainerTests;
import jetbrains.mps.nodeEditor.cells.contextAssistant.ActionExecutionTest;
import jetbrains.mps.nodeEditor.cells.contextAssistant.MenuItemListStepTest;
import jetbrains.mps.nodeEditor.cells.contextAssistant.OverflowLayoutTest;
import jetbrains.mps.openapi.editor.cells.traversal.CellCompareTests;
import jetbrains.mps.openapi.editor.cells.traversal.CellTreeTraversalTest;
import org.junit.runner.RunWith;
import org.junit.runners.Suite;

/**
 * User: shatalin
 * Date: 28/04/16
 */
@RunWith(Suite.class)
@Suite.SuiteClasses({
    AncestorOrSmallCellContextAssistantFinderTest.class,
    CanExecuteFilterTest.class,
    BracesFinderTest.class,
    ActionExecutionTest.class,
    MenuItemListStepTest.class,
    IncludeTransformationMenuTransformationMenuPartTest.class,
    OverflowLayoutTest.class,
    ComponentCellTest.class,
    ContainerTests.class,
    EditorSettingsTest.class,
    GetContributionsInLanguagesTest.class,
    CellCompareTests.class,
    CellTreeTraversalTest.class,
    CellLayoutDefaultHtmlTest.class
})
public class EditorTestSuite {
}
