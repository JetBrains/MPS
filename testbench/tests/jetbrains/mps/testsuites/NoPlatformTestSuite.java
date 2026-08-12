/*
 * Copyright 2003-2025 JetBrains s.r.o.
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
package jetbrains.mps.testsuites;

import org.junit.runner.RunWith;
import org.junit.runners.Suite;
import org.junit.runners.Suite.SuiteClasses;

/**
 * These are the test suites which require no MPS platform.
 *
 * @see CoreTestSuite
 * @see PlatformTestSuite
 *
 * User: shatalin
 * Date: 23/01/2017
 */
@RunWith(Suite.class)
@SuiteClasses({
    jetbrains.mps.generator.impl.plan.GenPlanTest.class,
    jetbrains.mps.workbench.goTo.matcher.MPSPackageItemProviderTests.class,
    jetbrains.mps.ide.blame.command.YouTrackURLTest.class,
    jetbrains.mps.ide.blame.command.YouTrackStatsTest.class,
    jetbrains.mps.smodel.language.ExtensionRegistryTest.class,
    jetbrains.mps.editor.runtime.style.StyleTests.class,
    jetbrains.mps.util.JDOMUtilTest.class,
    jetbrains.mps.util.StringUtilTest.class,
    jetbrains.mps.util.IterableUtilTest.class,
    jetbrains.mps.util.NameUtilTest.class,
    jetbrains.mps.vfs.path.NonArchivePathTest.class,
    jetbrains.mps.vfs.path.FilePathTest.class,
    jetbrains.mps.vfs.path.FileUtilTest.class,
    jetbrains.mps.vfs.path.PathFormatTest.class,
    jetbrains.mps.text.TextAreaTest.class,
    jetbrains.mps.text.TextBufferTest.class,
    jetbrains.mps.util.performance.PerfTracerTest.class,
    jetbrains.mps.reloading.JarClassPathItemTest.class,
    jetbrains.mps.core.platform.DynamicComponentsTest.class,
    jetbrains.mps.make.JavaCompilerTest.class,
    jetbrains.mps.ide.ThreadUtilsTest.class,
    jetbrains.mps.java.stub.GenericArrayParametersTest.class,
    jetbrains.mps.java.stub.ParameterizedInnerClassTest.class,
    jetbrains.mps.ide.projectPane.logicalview.VirtualFolderHelperTest.class,
    jetbrains.mps.ide.findusages.view.ViewOptionsTest.class,
    jetbrains.mps.ide.findusages.view.treeholder.treeview.path.PathProviderVirtualPackageSegmentsTest.class
    // The node-level counterpart, jetbrains.mps.ide.findusages.view.PathProviderVirtualPackageTest,
    // needs a live ConceptRegistry and therefore lives in PlatformTestSuite. See both classes' javadoc.
})
public class NoPlatformTestSuite {
}
