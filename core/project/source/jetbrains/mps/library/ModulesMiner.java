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
package jetbrains.mps.library;

import jetbrains.mps.components.ComponentHost;
import jetbrains.mps.extapi.persistence.FileBasedModelRoot;
import jetbrains.mps.generator.fileGenerator.FileGenerationUtil;
import jetbrains.mps.logging.Logger;
import jetbrains.mps.persistence.MementoImpl;
import jetbrains.mps.persistence.PersistenceRegistry;
import jetbrains.mps.project.io.DescriptorIO;
import jetbrains.mps.project.io.DescriptorIOException;
import jetbrains.mps.project.io.DescriptorIOFacade;
import jetbrains.mps.project.persistence.DeploymentDescriptorPersistence;
import jetbrains.mps.project.persistence.ModuleReadException;
import jetbrains.mps.project.structure.model.ModelRootDescriptor;
import jetbrains.mps.project.structure.modules.DeploymentDescriptor;
import jetbrains.mps.project.structure.modules.GeneratorDescriptor;
import jetbrains.mps.project.structure.modules.LanguageDescriptor;
import jetbrains.mps.project.structure.modules.ModuleDescriptor;
import jetbrains.mps.util.FileUtil;
import jetbrains.mps.util.IFileUtil;
import jetbrains.mps.util.MacroHelper;
import jetbrains.mps.util.MacrosFactory;
import jetbrains.mps.util.PathManager;
import jetbrains.mps.vfs.IFile;
import jetbrains.mps.vfs.path.Path;
import jetbrains.mps.vfs.util.PathFormatChecker.PathFormatException;
import jetbrains.mps.vfs.util.PathUtil;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.annotations.Immutable;
import org.jetbrains.mps.openapi.persistence.Memento;

import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.List;
import java.util.ListIterator;
import java.util.Set;

/**
 * Detects modules in a folder.
 * Methods of this class are not thread-safe, do not share instances of this class between threads.
 * At the moment, most of the public methods of this class make no distinction whether you care about source/deployment modules, if
 * we need to handle scenario when only specific kind of MDs is of interest, a new processing model shall get introduced
 * into MM (e.g. {@code MPSModuleCollector} could make use of a 'sourceMD-only' mode).
 *
 * NB: we will go inside the jar if it either has a 'modules' folder (with modules (!)) or has a module.xml file in the META-INF folder
 */
public final class ModulesMiner {
  private static final Logger LOG = Logger.getLogger(ModulesMiner.class);
  public static final String META_INF = "META-INF";
  private static final String JAR_SEPARATOR = Path.ARCHIVE_SEPARATOR;
  public static final String MODULE_XML = "module.xml";
  public static final String MODULES_DIR = "modules";
  public static final String META_INF_MODULE_XML = META_INF + "/" + MODULE_XML; // deployment descriptor resides at abc-lang.jar!/META-INF/module.xml
  public static final String SLASH_META_INF_MODULE_XML = JAR_SEPARATOR + META_INF_MODULE_XML;
  private static final String SOURCES_MODULE_DIR = "module"; // source descriptor (if packaged) resides at the abc-lang-src.jar!/module/abc-lang.msd

  // excludes is going to be updated from #processExcludes, ensure it can be changed.
  private final Set<IFile> myExcludes = new HashSet<>();
  private final List<ModuleHandle> myOutcome = new ArrayList<>();
  private final DescriptorIOFacade myDescriptorIOFacade;

  /**
   * @param componentHost access to MPS configured components
   * @since 2018.2
   */
  public ModulesMiner(@NotNull ComponentHost componentHost) {
    this(Collections.emptySet(), componentHost.findComponent(DescriptorIOFacade.class));
  }

  /**
   * @since 2018.2
   */
  public ModulesMiner(@NotNull Collection<IFile> excludes, DescriptorIOFacade descriptorsIO) {
    myExcludes.addAll(excludes);
    myDescriptorIOFacade = descriptorsIO;
  }

  /**
   * Updates {@link #getCollectedModules() outcome} and excludes, may be invoked several times.
   * Recognizes both source and deployment module descriptor files; walks into folders to look modules up.
   * @param file folder or file (descriptor or jar) to look for modules at.
   * @return {@code this} for convenience (chained calls)
   */
  @NotNull
  public ModulesMiner collectModules(IFile file) {
    return collectModules(file, null);
  }

  /**
   * Overloads {link #collectModules(IFile)} with an additional userData parameter: this can be used to specify
   * e.g. the virtual folder associated with the modules discovered during this invocation.
   */
  public ModulesMiner collectModules(IFile file, Object userData) {
    LOG.debug("Reading modules from " + file);
    if (shallIgnore(file)) {
      return this;
    }
    if (file.isDirectory()) {
      readModuleDescriptorsFromFolder(file, userData);
    } else {
      if (IFileUtil.isJarFile(file)) {
        readModuleDescriptorsFromJarFile(file, userData);
      } else {
        readModuleDescriptorsFromRegularFile(file, userData);
      }
    }
    return this;
  }

  @NotNull
  public Collection<ModuleHandle> getCollectedModules() {
    ArrayList<ModuleHandle> rv = new ArrayList<>(myOutcome);
    // sort values so that languages come in front of generators.
    rv.sort(Comparator.comparingInt(v -> v.getDescriptor() instanceof LanguageDescriptor ? 0 : 1));
    return Collections.unmodifiableList(rv);
  }

  private boolean shallIgnore(IFile file) {
    return myExcludes.contains(file) || file.isIgnored();
  }


  private boolean trySourceModuleDescriptorsFromFile(IFile file, Object userData) {
    assert !file.isDirectory();
    if (!isSourceModule(file)) {
      return false;
    }

    try {
      ModuleDescriptor moduleDescriptor = loadSourceModuleDescriptor(file);
      if (moduleDescriptor == null) {
        return false;
      }

      processExcludes(file, moduleDescriptor);
      fillOutcome(new ModuleHandle(file, moduleDescriptor, userData), true, userData);
      return true; // unlike other tryXXX methods, here we make sure descriptor actually read
      // because of .iml files (see DescriptorIOFacade) that are treated as solution module and thus break
      // readModuleDescriptorsFromFolder assumption of a single descriptor per dir.
    } catch (Exception e) {
      LOG.error("Can't read module descriptor from " + file, e);
      return false;
    }
  }

  /**
   * Looks for source module descriptors in the given folder, and if none found, tries
   * deployment descriptor, collection of modules (under modules/) and deployed jars.
   * Dives into nested folders unless the folder is home for unjarred deployed module or modules/ collection
   */
  private void readModuleDescriptorsFromFolder(IFile folder, Object userData) {
    assert folder.isDirectory();
    if (shallIgnore(folder)) {
      // files and folders are collected prior to processing of descriptor excludes,
      // chances are we get here in a recursive call with a folder marked to exclude.
      return;
    }

    ArrayList<IFile> files = new ArrayList<>();
    ArrayList<IFile> folders = new ArrayList<>();
    for (IFile f : folder.getChildren()) {
      if (shallIgnore(f)) {
        continue;
      }
      if (f.isDirectory()) {
        folders.add(f);
      } else {
        files.add(f);
      }
    }

    boolean sourceModuleFound = false;
    for (IFile f : files) {
      if (trySourceModuleDescriptorsFromFile(f, userData)) {
        sourceModuleFound = true;
        // XXX Generally, I shall not expect more than 1 module descriptor per directory, and shall break loop here.
        //     However, it's not true for e.g. devkits/, where few devkit descriptors reside
      }
    }
    // code below intentionally uses explicit !sourceModuleFound check 2 times, to illustrate
    // independent logical blocks, I'm not yet sure which gonna stay
    if (!sourceModuleFound) {
      // don't expect nested module collections or deployed modules nested into another module
      //
      // folder/modules/module-folder-x
      if (tryReadFromModulesDir(folder, folder.findChild(MODULES_DIR), userData)) {
        // no need to process nested jars or folders under 'modules/' if we discovered 'group of modules' there,
        // but still need to look into sibling folders/jars
        folders.removeIf(f -> MODULES_DIR.equals(f.getName()));
      } else {
        // folder/META-INF/module.xml
        if (tryModuleFromDeploymentDescriptor(folder, folder.findChild(META_INF).findChild(MODULE_XML), userData)) {
          // no need to process nested jars or folders
          return;
        }
      }
    }
    if (!sourceModuleFound) {
      // nor expect jar with modules nested into another module, and
      // do not look into jars under a folder with either META-INF/ or modules/ they are likely auxiliary.
      for (IFile f : files) {
        if (IFileUtil.isJarFile(f)) {
          readModuleDescriptorsFromJarFile(f, userData);
        }
      }
    }
    // It's possible to have extra module under module-folder, i.e. module-folder/module2-folder/descriptor-file2,
    // e.g. baseLanguage/bl.mpl and baseLanguage/solutions/
    for (IFile iFile : folders) {
      readModuleDescriptorsFromFolder(iFile, userData);
    }
  }

  /**
   * There are 2 scenarios we consider here:
   * Layout 1:
   *   folder/module.name.jar
   *     META-INF/module.xml
   *     whatever file|folder structure of the module
   * Layout2:
   *   folder/group.name.jar
   *     modules/
   *       module1.name/descriptor1.file
   *       module2.name/descriptor2.file
   *       ...
   *     whatever file|folder structure (e.g. classes, resources) for the modules listed
   *
   * Note, we don't walk arbitrary jars (i.e. we ignore -src.jar and -generator.jar because there's neither META-INF/module.xml nor modules/).
   *
   * @param jarFile {@code folder/module.name.jar} from the sample layouts above.
   */
  private void readModuleDescriptorsFromJarFile(IFile jarFile, Object userData) {
    assert IFileUtil.isJarFile(jarFile);
    try {
      IFile jarFileRoot = IFileUtil.stepIntoJar(jarFile);

      if (tryModuleFromDeploymentDescriptor(jarFile, jarFileRoot.findChild(META_INF).findChild(MODULE_XML), userData)) {
        return;
      }
      tryReadFromModulesDir(jarFile, jarFileRoot.findChild(MODULES_DIR), userData);
    } catch (Exception e) {
      LOG.error("Can't read modules in " + jarFile, e);
    }
  }

  /**
   * Attempt to read a module with a layout:
   * moduleHome/
   *   META-INF/module.xml
   *   whatever file|folder structure of the module
   *
   * @param moduleHome either a jar file or a directory, base location for any module-relative paths
   * @param moduleXml path to META-INF/module.xml
   * @return true if module found under the {@code moduleHome}
   */
  private boolean tryModuleFromDeploymentDescriptor(IFile moduleHome, IFile moduleXml, Object userData) {
    try {
      if (!moduleXml.exists() || moduleXml.isDirectory()) {
        return false;
      }

      ModuleDescriptor moduleDescriptor = loadDeploymentDescriptor(moduleHome, moduleXml);
      if (moduleDescriptor == null) {
        return true;
      }

      // we don't dive into deployed modules (no nested modules at deployment), nothing to exclude.
      // well, technically we can still exclude sources and library locations (could be outside a module), but generally
      // when discovering deployed modules, we don't expect code to look into unexpected, nested layouts
      fillOutcome(new ModuleHandle(moduleXml, moduleDescriptor, userData), false, userData);
      // even if we didn't succeed to read a module, presence of META-INF/module.xml prevents processing of any other possible
      // module location under moduleHome
      return true;
    } catch (Exception e) {
      LOG.error("Can't read module in " + moduleXml, e);
      return false;
    }
  }

  /**
   * Layout with collection of modules under single deployment element (jar or folder):
   *
   * bundleHome/
   *   whatever file|folder structure (e.g. classes, resources) for the modules listed, accessible relative to bundleHome
   *   modules/
   *     module1.name/module1.descriptor.msd
   *     module2.name/module2.descriptor.mpl
   *     ...
   *
   * Note, at the moment, we don't expect nested collections or deployed modules under modules/
   *
   * @param bundleHome root location for collection of modules (jar or a directory)
   * @return {@code true} if module collection found under bundle home
   */
  private boolean tryReadFromModulesDir(IFile bundleHome, IFile modulesDir, Object userData) {
    if (modulesDir.exists() && modulesDir.isDirectory()) {
      boolean moduleInGroup = false;
      for (IFile child : modulesDir.getChildren()) {
        if (child.isDirectory()) {
          // perhaps, we could allow nested directories in tryReadModuleDescriptor, but at the moment
          // we expect 1 level of directories only (XXX what about mps/testbench/modules/aaa.test/languages - disjunction of RVs would help).
          moduleInGroup |= tryReadModuleDescriptorInModulesGroup(bundleHome, child, userData);
          // XXX may collect folders without modules and dig into them, with e.g. readModuleDescriptorsFromFolder(), just need to pass bundleHome there
        }
        // expect no descriptors under modules/
      }
      return moduleInGroup; // disjunction of tryReadModuleDescriptor return values
    }
    return false;
  }

  /**
   * Read descriptor for a module bundled under bundleHome/.../moduleHomeDir, if any.
   *
   * @return {@code true} if module descriptor found under bundle home
   */
  private boolean tryReadModuleDescriptorInModulesGroup(IFile bundleHome, IFile moduleHomeDir, Object userData) {
    assert moduleHomeDir.isDirectory();
    for (IFile child : moduleHomeDir.getChildren()) {
      if (child.isDirectory()) {
        continue;
      }
      // XXX now we ignore deployment descriptors here, is it desired?
      if (trySourceModuleDescriptorsFromFile(child, userData)) {
        // There used to be a hack in JavaModuleFacetImpl.getClassPath():
        // >>>
        // Solution(s) bundled into single jar with classes (both from hand-written and generated sources) at the root.
        // HACK. Fallback for manually bundled modules (vcs.jar or mps-core.jar):
        //   my.jar
        //     compile output of module1
        //   modules
        //      module sources of module1
        // There's no DD there, and assumption is that there are classes at the jar root.
        // Not yet sure what's the right way to deal with them:
        //   - specify DD (META-INF/module.xml) at build time looks most 'honest', however, with multiple modules inside same jar it's not an option,
        //     unless we can make DD per module, not per jar (requires support in MM.tryReadFromModulesDir). Support in Build language needed, too (to
        //     specify 'module descriptor of' under 'folder with sources of'
        //   - Patch MD in MM when loaded from modules/ location (e.g. add DD with proper classpath there). (+) keep knowledge about deployment layout
        //     inside MM.
        //   - Hack in JMFI.getClassPath()
        // <<<
        // MPS no longer bundles such modules, nor does mbeddr (well, in MPS there are jars with stub modules packaged this way, but they don't
        //     assume classes in the same jar, rather reference external jars in their source module descriptors).
        //     I don't see a point to keep this hack, however, one can never be sure if there's any code elsewhere that still uses this approach
        //     so I leave this note here. I suppose it's always possible to workaround the case with individual jars
        //     (+meta-inf/plugin descriptor, +module/sources of), but in case it turns out we have to support the aforementioned case, this is the
        //     place to fix. Here, one would need to patch source module discovered by trySourceModuleDescriptorsFromFile to use 'bundleHome' value as
        //     an addition to module classpath.
        return true;
      }
    }
    return false;
  }

  private void fillOutcome(ModuleHandle moduleHandle, boolean isSourceNotDeployment, Object userData) {
    myOutcome.add(moduleHandle);
    // Deployed Language and Generator modules have their own DD now, and their modules either listed (almost) directly, in GenerateTask (till the moment
    // build language does this in the proper way for <generate> task), or SLibrary(dir) gives them when walks languages/ fs location.
    // The only case when we need to extract generators out from language's MD is when we walk non-deployed module sources.
    if (isSourceNotDeployment && moduleHandle.getDescriptor() instanceof LanguageDescriptor) {
      for (GeneratorDescriptor gd : ((LanguageDescriptor) moduleHandle.getDescriptor()).getGenerators()) {
        myOutcome.add(new ModuleHandle(moduleHandle.getFile(), gd, userData));
      }
    }
  }

  /**
   * Basically, this method is a switch to load either META-INF/module.xml or source-descriptor.[msd|mpl].
   * read a module file and update excludes set with output locations (classes, generated sources) of the module
   * if file points to deployment descriptor, loads DD and descriptor of source module, if any.
   * Updates excludes and outcome state of this miner.
   * Expects file (not directory) as an input.
   */
  private void readModuleDescriptorsFromRegularFile(IFile file, Object userData) {
    String filePath = file.getPath();
    if (filePath.endsWith(SLASH_META_INF_MODULE_XML)) {
      IFile moduleHome;
      if (file.isInZipArchive()) {
        moduleHome = file.stepUpToArchive();
      } else {
        // Instead, assume META-INF/module.xml is at the root of a module location (which if generally the case).
        moduleHome = file.getParent().getParent();
      }
      tryModuleFromDeploymentDescriptor(moduleHome, file, userData);
    } else {
      trySourceModuleDescriptorsFromFile(file, userData);
    }
  }

  private ModuleDescriptor loadSourceModuleDescriptor(IFile file) {
    try {
      LOG.debug(String.format("Loading source MD from %s", file));
      DescriptorIO<? extends ModuleDescriptor> descriptorIO = myDescriptorIOFacade.fromFileType(file);
      return descriptorIO.readFromFile(file);
    } catch (DescriptorIOException t) {
      LOG.error("Fail to load module from descriptor " + file.getPath(), t);
      return null;
    } catch (Exception e) {
      LOG.error("Unknown error while trying to load source module descriptor " + file.getPath(), e);
      return null;
    }
  }

  /**
   * loads deployment descriptor and try to load the corresponding source module descriptor
   * Both arguments are != null.
   * @param moduleHome either a jar file or a directory, base location for any module-relative paths
   * @param file META-INF/module.xml
   */
  private ModuleDescriptor loadDeploymentDescriptor(IFile moduleHome, IFile file) {
    try {
      LOG.debug(String.format("Loading deployment MD from %s", file));
      // XXX why not DeploymentDescriptorPersistence is part of DescriptorIOFacade?!
      DeploymentDescriptor deploymentDescriptor = new DeploymentDescriptorPersistence().load(file);
      ModuleDescriptor result = null;
      IFile sourceDescriptorFile = getSourceDescriptorFile(file, deploymentDescriptor);
      if (sourceDescriptorFile != null) {
        result = loadSourceModuleDescriptor(sourceDescriptorFile);
        // XXX it's tempting to strip off GeneratorDescriptor out of LD when we've read language's DD and its source MD (which likely
        // lists generator module(s) that were part of the language source module. However, I refrain from doing it right away
        // as there's (likely) code that discovers language's generators by looking into its source MD (e.g. Language.getDescriptor().getGenerators())
        // and I don't want this ruined now.
        //
        if (DeploymentDescriptor.TYPE_GENERATOR.equals(deploymentDescriptor.getType()) && result instanceof LanguageDescriptor) {
          // source module keeps generators as part of a language (the only possible layout for the time being)
          for (GeneratorDescriptor gd : ((LanguageDescriptor) result).getGenerators()) {
            if (gd.getId().equals(deploymentDescriptor.getId())) {
              result = gd;
              break;
            }
          }
          if (false == result instanceof GeneratorDescriptor) {
            // it's wrong to have DD for generator with source MD of a Language, better not to have any
            result = null;
          }
        }
      }
      for (ListIterator<String> it = deploymentDescriptor.getClasspath().listIterator(); it.hasNext(); ) {
        // Not sure it's the best idea to change paths inplace, but at the moment it's the only place I'm aware of moduleHome
        // Source module descriptors resolve paths during read using MacroHelper, why not the same here with DD?
        // Alternatively, could keep moduleHome value within DD and resolve on use
        String cpEntry = it.next();
        if (".".equals(cpEntry)) {
          it.set(moduleHome.getPath());
        } else if (!cpEntry.isEmpty()) {
          // XXX what about ../lib/myhandcrafted.jar scenario, why can't I use this for CP?
          StringBuilder moduleHomePath = new StringBuilder();
          if (IFileUtil.isJarFile(moduleHome)) {
            moduleHomePath.append(IFileUtil.stepIntoJar(moduleHome).getPath());
          } else {
            moduleHomePath.append(moduleHome.getPath());
          }
          if (cpEntry.charAt(0) != '/') {
            // it doesn't hurt to have extra fs delimiter, e.g. if moduleHome doesn't end with one.
            moduleHomePath.append('/');
          }
          moduleHomePath.append(cpEntry);
          it.set(moduleHome.getFileSystem().getFile(moduleHomePath.toString()).getPath());
        }
      }
      // TODO create module without sources
      if (result != null) {
        result.setDeploymentDescriptor(deploymentDescriptor);
        ArrayList<IFile> deploymentLibraries = new ArrayList<>(4);
        // fix extra classpath libraries:
        // META-INF/module.xml contains info about model libs, while clients generally look at MD.getJavaLibs() which were not
        // updated by build language at deployment time and still points to design-time lib location.
        // In fact, code shall resort to libraries of DD if present (e.g. JavaModuleFacetImpl shall do it), but it doesn't hurt to have source
        // module updated anyway.
        // XXX I don't like this assumption that libraries are siblings to module home, but have no better idea now.
        IFile bundleParent = moduleHome.getParent();
        for (String jarFile : deploymentDescriptor.getLibraries()) {
          IFile jar = jarFile.startsWith("/")
              ? bundleParent.getFileSystem().getFile(PathManager.getHomePath() + jarFile)
              : bundleParent.getDescendant(jarFile);
          deploymentLibraries.add(jar);
        }
        // hack, see DD.getLibrariesResolved() for explanation
        deploymentDescriptor.getLibrariesResolved().clear();
        deploymentDescriptor.getLibrariesResolved().addAll(deploymentLibraries);

        // fix @java_stub locations, if any
        fixJavaStubModelRoots(result, sourceDescriptorFile, moduleHome, deploymentLibraries);
      }
      // XXX why don't we return DD if no source MD found?
      return result;
    } catch (ModuleReadException e) {
      LOG.error("Exception while loading a deployment descriptor from the path " + file.getPath(), e);
      return null;
    } catch (Exception e) {
      LOG.error("Unknown error while loading a deployment descriptor from the path " + file.getPath(), e);
      return null;
    }
  }

  /**
   * We've got deployed module, found its source module, and need to fix java and/or kotlin stub paths of the latter to get @java_stub (or @kotlin_common)
   * models loaded properly.
   *
   * On one hand, there's desire to get rid of this code by moving relevant update into build language, as it's odd to 'fix' module descriptor during load.
   * OTOH, it's source module we get fixed here, and if we move towards no source modules at all, then, perhaps, we shall not care to update neither here nor
   * in build language. Still, there's a question whether @java_stub models are part of deployment story.
   * <p>
   *  Just an idea - if we consider removing 'source' modules but leaving stub models, then, perhaps, we can have another entry in module.xml,
   *  listing 'stub' models, and then lang.build mapping for entries (done with ArtifactsRelativePathHelper) would be enough, and no rewriting magic here?
   *  However, there's another tricky point - build language cares about classpath jars and doesn't look into model roots, here we imply model roots
   *  reference the same jars JMF got as libraries (Dependencies of BM_AbstractModule list jars from JMF, not stub model root)
   * </p>
   *
   * JFTR, next code used to live in AbstractModule#updatePackagedDescriptor. Unlike the method, we no longer expose dd.getLibraries() as @java_stubs,
   * instead, we do our best to update MRD here with a proper path (we consult deploymentJars, with actual deployed layout, for matches).
   *
   * @param sourceModuleDescriptor source module descriptor (usually comes from module-src.jar!/module/module.msd or [module-home]/module/module.msd), see #getSourceDescriptorFile
   * @param sourcesDescriptorFile IFle {@code sourceModuleDescriptor} has been read from
   * @param moduleHome either a jar file or a directory, base location for META-INF/module.xml
   * @param deploymentJars list of libraries recorded in deployment descriptor (generally paths fixed by a build language to point to specific layout elements)
   */
  private void fixJavaStubModelRoots(ModuleDescriptor sourceModuleDescriptor, IFile sourcesDescriptorFile, IFile moduleHome, List<IFile> deploymentJars) {
    // stub model roots
    // see https://youtrack.jetbrains.com/issue/MPS-19756
    List<ModelRootDescriptor> toRemove = new ArrayList<>();
    List<ModelRootDescriptor> toAdd = new ArrayList<>();
    MacroHelper macroHelper = MacrosFactory.forModuleFile(sourcesDescriptorFile);
    for (ModelRootDescriptor rootDescriptor : sourceModuleDescriptor.getModelRootDescriptors()) {
      String rootDescriptorType = rootDescriptor.getType();
      // KotlinStubModelRootFactory.rootName == "kotlin_common"
      if (PersistenceRegistry.JAVA_CLASSES_ROOT.equals(rootDescriptorType) || "kotlin_common".equals(rootDescriptorType)) {
        // there are few possible deployment layouts:
        //    1. App/Contents/languages/my.lang.jar + -src.jar
        //    2. App/Contents/plugins/<name>/languages/my.lang.jar + -src.jar + libraries from additional cp
        //       (build language generator puts libraries there with the help of ArtifactsRelativePathHelper, base on extracted jar deps;
        //       FWIW, build language ignores jars listed under stub models)
        //       App/Contents/plugins/<name>/pluginSolutions/my.lang.pluginSolution.jar
        //       App/Contents/plugins/<name>/lib/icons.jar (placed there by build language generator)
        //    3. Custom layout:
        //       e.g. jetpad, which differs from (2) with lib/ full of cp jars
        //       mps-core, with languageDesign/ and util/ nested under languages/
        //       mps-vcs, with cp jars under lib/
        //
        // trying to load new format : replacing paths like **.jar!/module ->
        // Here, macroHelper have to be the same as the one used to load sourceModuleDescriptor, and it's just a hidden knowledge that
        // DescriptorIOFacade uses same approach to construct its macro helper.
        // FIXME with no macro expansion on MD persistence, no need to shink anything here
        String contentPath = macroHelper.shrinkPath(rootDescriptor.getMemento().get(FileBasedModelRoot.CONTENT_PATH));
        if (contentPath == null || !contentPath.startsWith(MacrosFactory.MODULE)) {
          continue;
        }
        contentPath = contentPath.substring(MacrosFactory.MODULE.length());
        boolean update = false;
        Memento newMemento = new MementoImpl();
        IFile moduleHomeDir = IFileUtil.isJarFile(moduleHome) ? moduleHome.getParent() : moduleHome;
        newMemento.put(FileBasedModelRoot.CONTENT_PATH, moduleHomeDir.getPath());
        for (Memento sourceRoot : rootDescriptor.getMemento().getChildren(FileBasedModelRoot.SOURCE_ROOTS)) {
          Memento newMementoChild = newMemento.createChild(FileBasedModelRoot.SOURCE_ROOTS);
          // bear in mind that FileBasedModelRoot.LOCATION could be "." or ""
          final String normalizedSuffix = FileUtil.normalize(contentPath + File.separator + sourceRoot.get(FileBasedModelRoot.LOCATION));
          final String pastModuleMacroSuffix;
          final String beforeTrailingSeparator = normalizedSuffix.endsWith(Path.ARCHIVE_SEPARATOR)
              ? normalizedSuffix.substring(0, normalizedSuffix.length() - Path.ARCHIVE_SEPARATOR.length())
              : null;
          // the name in front has to be that of an archive: a '!' merely ending a directory name introduces none (MPS-40062)
          if (beforeTrailingSeparator != null && PathUtil.hasArchiveFileName(beforeTrailingSeparator)) {
            // I've seen <modelRoot contentPath="${module}/lib/whatever-1.2.7.jar!" type="java_classes"><sourceRoot location="." /></modelRoot>
            pastModuleMacroSuffix = beforeTrailingSeparator;
          } else {
            pastModuleMacroSuffix = normalizedSuffix;
          }
          IFile deploymentJarMatch;
          if (pastModuleMacroSuffix.endsWith("classes_gen") || pastModuleMacroSuffix.endsWith("classes")) {
            if (IFileUtil.isJarFile(moduleHome)) {
              newMementoChild.put(FileBasedModelRoot.LOCATION, moduleHome.getName());
            } else {
              newMementoChild.put(FileBasedModelRoot.LOCATION, ".");
            }
            update = true;
          } else if ((deploymentJarMatch = deploymentJars.stream().filter(f -> pastModuleMacroSuffix.endsWith(Path.UNIX_SEPARATOR + f.getName())).findFirst().orElse(null)) != null) {
            // IOW, if there's a deployment jar with a name that matches location we are looking at. "Matches" here is intentionally 'name only' here, as
            // we may face odd/inconsistent source/deployment layout and file references:
            // e.g. for collections.trove.msd:
            //  deployed layout
            //    /plugins/mps-trove/languages/collections_trove.runtime.jar
            //    /plugins/mps-trove/languages/trove-2.1.0.jar
            //  source module
            //    <modelRoot contentPath="${module}" type="java_classes">
            //      <sourceRoot location="classes_gen" />
            //      <sourceRoot location="lib/trove-2.1.0.jar" />
            //    </modelRoot>
            // Indeed, we have to fix deployed layout to place trove.jar outside of 'languages/' (whether it's "mps-trove/lib/" or just "mps-trove" is up to
            // build project. But as long as we may face such layouts, we can not use full location value). Yes, this would fail e.g if one
            // uses different folder names but same jar libraries, like "trove-2.1.0/library.jar" abd "trove-2.0.5/library.jar", I just expect this to be
            // much rare case.
            //
            // XXX what it deploymentJar lives under <mps-home>/lib, do I care to build relative path? Perhaps, shall replace with distinct MRD then?
            final String jarRelativeToDeployedModule = FileBasedModelRoot.relativize(deploymentJarMatch.getPath(), moduleHomeDir);
            newMementoChild.put(FileBasedModelRoot.LOCATION, jarRelativeToDeployedModule);
            LOG.debug(String.format("Java stub jar %s in module %s updated with location %s", pastModuleMacroSuffix, sourceModuleDescriptor.getNamespace(), jarRelativeToDeployedModule));
            update = true;
          } else {
            // just keep it as is, relative to deployment value of ${module}. If anything important, users may tell build project to copy
            // relevant stuff as deployed jar's "extra content".
            newMementoChild.put(FileBasedModelRoot.LOCATION, pastModuleMacroSuffix);
            // there's intentionally no `update = true`. In case there are no other converted values, just ignore the root descriptor altogether
            // If, however, there are other location changed, we would preserve this one from the original memento.
          }
        }
        if (update) {
          toAdd.add(new ModelRootDescriptor(rootDescriptorType, newMemento));
          toRemove.add(rootDescriptor);
        }
      }
    }
    sourceModuleDescriptor.getModelRootDescriptors().removeAll(toRemove);
    sourceModuleDescriptor.getModelRootDescriptors().addAll(toAdd);
  }

  // part of processExcludes() with common code for any module type
  @SuppressWarnings("removal")
  private void processModuleExcludes(jetbrains.mps.vfs.openapi.FileSystem fileSystem, MacroHelper macroHelper, ModuleDescriptor descriptor) {
    String generatorOutputPath = descriptor.getOutputRoot();
    if (generatorOutputPath != null) {
      IFile genOutputFile = fileSystem.getFile(macroHelper.expandPath(generatorOutputPath));
      excludeGeneratedSourcesDir(genOutputFile);
      // we don't care if there's indeed tests facet or if the folder exists
      // and I don't see why TestsFacetImpl.fromModuleDescriptor(arbitraryFile, MD) gives better result than hard-coded, source_gen-relative path,
      // namely why magic with possiblyDeploymentDescriptorFile.getParent().getDescendant is better than the assumption test_gen
      // is at the same level as source_gen
      // Proper solution would be to use default {module}/test_gen in ModuleDeploymentPersistence for Tests Facet, let it resolve to FS location
      // and use the value here much like we did for getGeneratorOutputPath(MD) above.
      excludeGeneratedSourcesDir(genOutputFile.getParent().findChild("test_gen"));
      //
      // excludeIdeaClassesGen(descriptorFile, descriptor);
      // Again, no reason to expect ProjectPathUtil.getClassesFolder(arbitraryFile) to yield any more meaningful result than 'sibling classes/'.
      myExcludes.add(genOutputFile.getParent().findChild("classes"));
      //
      // excludeClassesGen(descriptorFile, descriptor);
      // Yet one more, ProjectPathUtil.getClassesGenFolder(descriptorFile, descriptor instanceof GeneratorDescriptor) replaced with
      // 'sibling classes_gen/' as ProjectPathUtil.getGeneratorOutputPath(descriptor) (together with MDPersistence code) gives us proper FS location
      // of generator's source_gen, and no reason for md.IsInstanceOf(GeneratorMD) -> getDescendant("generator") magic
      // XXX Would be great to reuse constant from JavaModuleFacetImpl#getClassesGen
      myExcludes.add(genOutputFile.getParent().findChild("classes_gen"));

      // and as for jars (-src.jar and -generator.jar) that used to be excluded if descriptorFile.isReadOnly(),
      // check readModuleDescriptorsFromFolder(IFile) - it reads jar only if there's META-INF/module.xml or modules/, neither of this happens to
      // -generator.jar nor -src.jar, so no reason to put their roots into excludes (on a side note, why not ".jar" itself, but ".jar!/"?)
    }
  }

  // makes sense for module descriptors from loadSourceModuleDescriptor(), not for DeploymentDescriptor
  private void processExcludes(@NotNull IFile descriptorFile, ModuleDescriptor descriptor) {
    // in fact, descriptorFile.isReadOnly doesn't really mean there could be no dirs to exclude
    // perhaps, there should be two distinct miners, one to look up source modules, and another one for deployed?
    if (descriptor == null || descriptorFile.isReadOnly()) {
      return;
    }
    try {
      jetbrains.mps.vfs.openapi.FileSystem fileSystem = descriptorFile.getFileSystem();
      final MacroHelper mh = MacrosFactory.forModuleFile(descriptorFile);
      processModuleExcludes(fileSystem, mh, descriptor);

      if (descriptor instanceof LanguageDescriptor) {
        for (GeneratorDescriptor generator : ((LanguageDescriptor) descriptor).getGenerators()) {
          processModuleExcludes(fileSystem, mh, generator);
        }
      }
    } catch (PathFormatException ex) {
      // ignore, we can live w/o excludes, all we pay is extra time walking source_gen and classes_gen.
      // well, unless there's some clever code that hides other modules under Java Libraries location and assumes MM ignores these.
      LOG.warning(String.format("Failed to process excludes for a module from %s: %s", descriptorFile, ex.getMessage()));
    }
  }

  private void excludeGeneratedSourcesDir(IFile sourceDir) {
    if (sourceDir != null) {
      myExcludes.add(sourceDir);
      myExcludes.add(FileGenerationUtil.getCachesDir(sourceDir));
    }
  }

  /*package*/ boolean isSourceModule(IFile file) {
    return !file.isDirectory() && myDescriptorIOFacade.isModuleDescriptorFile(file);
  }

  /**
   * @param deploymentFile -- the path to deployment descriptor, expected to reside in a jar, and end with {@link #SLASH_META_INF_MODULE_XML}
   */
  @Nullable
  public static IFile getSourceDescriptorFile(@NotNull IFile deploymentFile, @NotNull DeploymentDescriptor deploymentDescriptor) {
    String sourcesJarPath = deploymentDescriptor.getSourcesJar();
    if (sourcesJarPath == null || deploymentDescriptor.getDescriptorFile() == null) {
      return null;
    }
    // modules without compiled sources get single jar, packaged similar to regular -src.jar, with addition of META-INF/module.xml
    // To avoid major refactoring of MM, module content left under module/ as in -src.jar, so here we just need to notice there's no
    // other jar, and process with original/source descriptor from the same as the one of META-INF/module.xml.
    if (sourcesJarPath.isEmpty() || sourcesJarPath.equals(".")) {
      // META-INF/module.xml/../../
      return deploymentFile.getParent().getParent().findChild(SOURCES_MODULE_DIR).getDescendant(deploymentDescriptor.getDescriptorFile());
      // FIXME any reason to have this hardcoded 'module/' knowledge, why not specify it in dd.getDescriptorFile()?
      //       when authoring build script, single module jar with externally compiled sources and module sources, why do I have to
      //       bother to put 'sources of <module>' under 'folder module', to get simple name of dd.getDescriptorFile() resolved correctly.
      //       e.g. see mpsDevKit for sample
    } else {
      // FIXME any idea why the code below mangles path instead of going up/down with regular FS getParent/getDescendant operations?
      //       I suspect it's just incomplete refactoring in 4c5b44bc9e1242d4e4399dc816e5caa01855dc00, right?
      jetbrains.mps.vfs.openapi.FileSystem fileSystem = deploymentFile.getFileSystem();
      String deploymentPath = deploymentFile.getPath();
      String moduleJarPath = deploymentPath.substring(0, deploymentPath.length() - SLASH_META_INF_MODULE_XML.length());
      IFile moduleJar = fileSystem.getFile(moduleJarPath);
      IFile sourcesJar = moduleJar.getParent().getDescendant(deploymentDescriptor.getSourcesJar());
      if (sourcesJar.exists()) {
        return fileSystem.getFile(sourcesJar.getPath() + JAR_SEPARATOR + SOURCES_MODULE_DIR + "/" + deploymentDescriptor.getDescriptorFile());
      }
      return null;
    }
  }

  @Immutable
  public static final class ModuleHandle {
    private final IFile myFile;
    private final Object myUserData;
    private final ModuleDescriptor myDescriptor;

    public ModuleHandle(@NotNull IFile file, @Nullable ModuleDescriptor descriptor) {
      this(file, descriptor, null);
    }

    public ModuleHandle(@NotNull IFile file, @Nullable ModuleDescriptor descriptor, Object userData) {
      myFile = file;
      myDescriptor = descriptor;
      myUserData = userData;
    }

    @NotNull
    public IFile getFile() {
      return myFile;
    }

    /**
     * Get user data associated with this module handle.
     * @return user data object
     */
    public Object getUserData() {
      return myUserData;
    }

    @Nullable
    public ModuleDescriptor getDescriptor() {
      return myDescriptor;
    }

    @Override
    public String toString() {
      return myDescriptor == null ? "[null descriptor]" : myDescriptor.getNamespace();
    }
  }
}
