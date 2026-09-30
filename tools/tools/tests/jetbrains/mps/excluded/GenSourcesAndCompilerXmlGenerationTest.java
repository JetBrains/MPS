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
package jetbrains.mps.excluded;

import jetbrains.mps.core.platform.Platform;
import jetbrains.mps.core.platform.PlatformFactory;
import jetbrains.mps.core.platform.PlatformOptionsBuilder;
import jetbrains.mps.library.ModulesMiner;
import jetbrains.mps.library.ModulesMiner.ModuleHandle;
import jetbrains.mps.util.FileUtil;
import jetbrains.mps.util.JDOMUtil;
import jetbrains.mps.vfs.IFileSystem;
import jetbrains.mps.vfs.VFSManager;
import org.custommonkey.xmlunit.Diff;
import org.custommonkey.xmlunit.ElementNameAndAttributeQualifier;
import org.custommonkey.xmlunit.XMLAssert;
import org.jdom.Document;
import org.jdom.Element;
import org.jdom.JDOMException;
import org.jetbrains.mps.openapi.persistence.PersistenceFacade;
import org.junit.AfterClass;
import org.junit.Assert;
import org.junit.BeforeClass;
import org.junit.Test;
import org.xml.sax.SAXException;

import java.io.File;
import java.io.IOException;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertNull;

//todo rename to ProjectConsistencyTest or something like that
public class GenSourcesAndCompilerXmlGenerationTest {
  private static Platform ourPlatform;

  @BeforeClass
  public static void init() {
    assertNull(PersistenceFacade.getInstance());
    ourPlatform = PlatformFactory.initPlatform(PlatformOptionsBuilder.PERSISTENCE);
  }

  @AfterClass
  public static void dispose() {
    assertNotNull(PersistenceFacade.getInstance());
    ourPlatform.dispose();
    assertNull(PersistenceFacade.getInstance());
  }

  @Test
  public void testGenSourcesIml() throws Exception {
    String previousGenSources = FileUtil.read(GeneratorsRunner.GEN_SOURCES_IML);
    GeneratorsRunner.generateGenSourcesIml(ourPlatform);
    checkHasSameContent(FileUtil.read(GeneratorsRunner.GEN_SOURCES_IML), previousGenSources);
  }

  @Test
  public void testCompilerXml() throws JDOMException, IOException, SAXException {
    String previousCompilerXml = FileUtil.read(GeneratorsRunner.COMPILER_XML_FILE);
    GeneratorsRunner.generateCompilerXmlFile(ourPlatform);
    Diff diff = new Diff(FileUtil.read(GeneratorsRunner.COMPILER_XML_FILE), previousCompilerXml);
    diff.overrideElementQualifier(new ElementNameAndAttributeQualifier());
    XMLAssert.assertXMLEqual("Regenerate compiler.xml. Run GeneratorsRunner run configuration.", diff, true);
  }

  //@Test
  public void testSamplesHaveAppropriateNames() throws JDOMException, IOException, SAXException {
    File root = new File(".");
    IFileSystem fs = ourPlatform.findComponent(VFSManager.class).getFileSystem(VFSManager.JAVA_IO_FILE_FS);
    Collection<ModuleHandle> modules = new ModulesMiner(ourPlatform).collectModules(fs.getFile(root)).getCollectedModules();
    Set<String> badModules = new HashSet<>();
    for (ModuleHandle m : modules) {
      if (!m.getFile().getPath().contains("/samples/")) {
        continue;
      }
      String mName = m.getDescriptor().getModuleReference().getModuleName();
      if(mName.startsWith("jetbrains.mps.samples.")){
        continue;
      }
      badModules.add(mName);
    }
    Assert.assertEquals(createMsg(badModules), 0, badModules.size());
  }

  private String createMsg(Set<String> badModules) {
    StringBuilder sb = new StringBuilder("Modules residing in samples folder should have their names starting with \"jetbrains.mps.samples.\".\n");
    sb.append("The following modules break this contract:\n");
    for(String module: badModules){
      sb.append("  ").append(module).append("\n");
    }
    return sb.toString();
  }

  @Test
  public void testEveryImlFileIsIncludedInProject() throws Exception {
    File root = Utils.root();
    final IDEAProject ideaProject = new IDEAProject(root);
    List<File> imlsInProject = ideaProject.modulesFromProjectDescriptor().stream().map(IDEAModule::moduleFile).collect(Collectors.toList());
    List<File> imlsOnDisk = ideaProject.discoverAllModules().stream().map(IDEAModule::moduleFile).collect(Collectors.toList());
    List<String> notIncluded = new ArrayList<>();
    for (File iml : imlsOnDisk) {
      if (isUnder(iml.getCanonicalPath(), "/IdeaPlugin/")) {
        continue;
      }
      if (isUnder(iml.getCanonicalPath(), "/mps-platform/")) {
        continue;
      }
      if (!imlsInProject.contains(iml)) {
        notIncluded.add(iml.getCanonicalPath());
      }
    }
    Assert.assertTrue("Iml files not included into project: " + notIncluded, notIncluded.isEmpty());
  }

  @Test
  public void testEveryJavaFileIsCompiledInMPSOrInSourceFolder() throws Exception {
    File root = new File(".");
    final IDEAProject ideaProject = new IDEAProject(root);
    // XXX here used to be GensourcesModuleFile.getSourceFolders(root) call that didn't ignore source roots from gensources.iml
    //     However, I don't see a reason to include these, as generally there are source roots of MPS modules anyway, which get collected
    //     here explicitly with the help of MPSModuleCollector
    HashSet<String> allSources = new HashSet<>();
    for (IDEAModule m : ideaProject.discoverAllModulesExceptGensources()) {
      for (File sr : m.sources()) {
        allSources.add(sr.getCanonicalPath());
      }
    }

    MPSModuleCollector moduleCollector = new MPSModuleCollector(ourPlatform);
    moduleCollector.collect(root);
    Collection<DescriptorEntry> mpsModules = moduleCollector.getOutcome();
    mpsModules.stream().flatMap(de -> de.getSourcePaths().stream()).forEach(allSources::add);

    outer:
    for (Iterator<File> it = Utils.files(root, f-> f.getName().endsWith(".java")).iterator(); it.hasNext(); ) {
      File jFile = it.next();
      String cp = jFile.getCanonicalPath();
      //if (cp.contains("sandbox")) continue;
      for (String sourcePath : allSources) {
        if (cp.startsWith(sourcePath + File.separator)) continue outer;
      }

      //this is where we store jdk in tests
      //[MM] Maybe it would be better to change layout in tests, but not everyone can do that
      if (isUnder(cp, "/jdk11")) continue;

      //test material
      if (isUnder(cp, "/plugins/mps-java/workbench/tests/jetbrains.mps.ide.java.testMaterial/resources/testData")) continue;

      // move to sample's mps project or delete
      if (isUnder(cp, "/samples/agreement/frameworktest/test/")) continue;

      // this is a test for build language. Needs to be somehow distinguishable as test
      if (isUnder(cp, "/plugins/mps-build/solutions/jetbrains.mps.build.sandbox/samples/")) continue;

      // Ant compiles and runs this file directly in Java source-file mode.
      if (cp.equals(new File(root, "build/tools/PrepareOverlayTar.java").getCanonicalPath())) continue;

      // Models in the plugin project are generated into an excluded source_gen folder
      if (isUnder(cp, "/IdeaPlugin/mps-java/source_gen/")) continue;
      // Test material of IdeaPlugin
      if (isUnder(cp, "/IdeaPlugin/tests/")) continue;

      Assert.fail("Java file " + cp + " is neither included in any MPS module, nor in any Idea source root");
    }
  }

  /**
   * Make sure MPS core modules don't accidentally get dependency to a platform/ide/UI code
   */
  @Test
  public void testCoreModuleDependenciesSelfContained() throws Exception {
    final IDEAProject ideaProject = new IDEAProject(Utils.root());
    final Collection<IDEAModule> coreModules = ideaProject.discoverCoreModules();
    System.out.println(coreModules.size());
    final List<String> allNames = coreModules.stream().map(IDEAModule::moduleName).collect(Collectors.toList());
    final HashSet<String> names = new HashSet<>(allNames);
    Assert.assertEquals("Module name clash", names.size(), allNames.size());
    // few well-known modules not under core/ that are legitimate dependencies
    names.add("closures-runtime");
    names.add("tuples-runtime");
    names.add("collections-runtime");
    // j.m.references.Reference is in use from [kernel]SPropertyOperations
    names.add("baseLanguage-runtime"); // this one I'd like get rid of
    // ClassPathReader, ClasssType, SystemInfo from [boot-util] are in use from [kernel].
    // modules are not in core, they essentially are allowed to be used by any code which starts MPS, particularly
    // lightweight implementation like we have in ant integration
    names.add("boot-util");
    for (IDEAModule m : coreModules) {
      if (names.containsAll(m.compileDependencies())) {
        continue;
      }
      HashSet<String> extra = new HashSet<>(m.compileDependencies());
      extra.removeAll(names);
      Assert.fail(String.format("Core module [%s] has dependencies outside of core/:\n\t%s\n", m.moduleName(), extra.toString()));
    }
  }

  // FIXME pass File here
  private boolean isUnder(String child, String parent) throws IOException {
    String parentPath = new File(".").getCanonicalPath() + parent.replace("/", File.separator);
    return child.startsWith(parentPath);
  }

  private void checkHasSameContent(String real, String exp) throws Exception {
    Element realManager = getManagerElement(real);
    Element expManager = getManagerElement(exp);


    List<Element> realContent = realManager.getChildren(GensourcesModuleFile.CONTENT);
    List<Element> expContent = expManager.getChildren(GensourcesModuleFile.CONTENT);

    Assert.assertEquals("Run GeneratorsRunner run configuration. Content sizes differ.", expContent.size(), realContent.size());

    outer:
    for (Element rRoot : realContent) {
      String rUrl = rRoot.getAttributeValue(GensourcesModuleFile.URL);
      for (Element eRoot : expContent) {
        String eUrl = eRoot.getAttributeValue(GensourcesModuleFile.URL);
        if (rUrl.equals(eUrl)) {
          checkSamePathsUnder(rRoot, eRoot);

          continue outer;
        }
      }

      showGensources("Run GeneratorsRunner run configuration. Url " + rRoot.getAttributeValue(GensourcesModuleFile.URL) + " not expected");
    }
  }

  private void checkSamePathsUnder(Element rRoot, Element eRoot) throws Exception {
    checkHasSamePathsUnderTag(rRoot, eRoot, GensourcesModuleFile.SOURCE_FOLDER);
    //checkHasSamePathsUnderTag(rRoot, eRoot, Generators.EXCLUDE_FOLDER);
  }

  private void checkHasSamePathsUnderTag(Element rRoot, Element eRoot, String tag) throws Exception {
    List<Element> realPaths = rRoot.getChildren(tag);
    List<Element> expPaths = eRoot.getChildren(tag);

    Assert.assertEquals("Run GeneratorsRunner run configuration (and make sure your local empty folders for generated source/classes are pruned). Content sizes under tag " + tag + " differs for url " + rRoot.getAttributeValue(
        GensourcesModuleFile.URL), expPaths.size(), realPaths.size());

    outer:
    for (Element rp : realPaths) {
      String rUrl = rp.getAttributeValue(GensourcesModuleFile.URL);
      for (Element ep : expPaths) {
        String eUrl = ep.getAttributeValue(GensourcesModuleFile.URL);
        if (rUrl.equals(eUrl)) {
          continue outer;
        }
      }
      showGensources("Run GeneratorsRunner run configuration. Tag " + tag + ": Url " + rRoot.getAttributeValue(GensourcesModuleFile.URL) + " not expected");
    }
  }

  private Element getManagerElement(String real) throws IOException, JDOMException {
    Document doc = JDOMUtil.loadDocument(new StringReader(real));
    return Utils.getComponentWithName(doc, GensourcesModuleFile.MODULE_ROOT_MANAGER);
  }

  private void showGensources(String diff) throws Exception {
    String previousGenSources = FileUtil.read(GeneratorsRunner.GEN_SOURCES_IML);
    GeneratorsRunner.generateGenSourcesIml(ourPlatform);
    Assert.assertEquals(diff, FileUtil.read(GeneratorsRunner.GEN_SOURCES_IML), previousGenSources);
  }
}
