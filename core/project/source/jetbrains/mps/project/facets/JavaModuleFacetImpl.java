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
package jetbrains.mps.project.facets;

import jetbrains.mps.extapi.module.ModuleFacetBase;
import jetbrains.mps.logging.Logger;
import jetbrains.mps.module.PersistenceContextImpl;
import jetbrains.mps.persistence.MementoImpl;
import jetbrains.mps.project.AbstractModule;
import jetbrains.mps.project.structure.modules.DeploymentDescriptor;
import jetbrains.mps.project.structure.modules.GeneratorDescriptor;
import jetbrains.mps.project.structure.modules.LanguageDescriptor;
import jetbrains.mps.project.structure.modules.ModuleDescriptor;
import jetbrains.mps.project.structure.modules.ModuleFacetDescriptor;
import jetbrains.mps.smodel.Generator;
import jetbrains.mps.smodel.Language;
import jetbrains.mps.util.MacroHelper;
import jetbrains.mps.util.MacrosFactory;
import jetbrains.mps.util.PathSpec;
import jetbrains.mps.util.PathSpecBundle;
import jetbrains.mps.util.annotation.Hack;
import jetbrains.mps.vfs.IFile;
import jetbrains.mps.vfs.path.Path;
import jetbrains.mps.vfs.util.PathUtil;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.annotations.TestOnly;
import org.jetbrains.mps.annotations.Internal;
import org.jetbrains.mps.openapi.module.SModule;
import org.jetbrains.mps.openapi.persistence.Memento;
import org.jetbrains.mps.openapi.persistence.ModulePersistenceContext;

import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.Optional;
import java.util.Set;
import java.util.function.Function;
import java.util.function.Predicate;

/**
 * todo: divide into two parts: JavaModuleFacetSrcImpl && JavaModuleFacetPackagedImpl
 */
@SuppressWarnings("removal")
public class JavaModuleFacetImpl extends ModuleFacetBase implements JavaModuleFacet {
  private static final Logger LOG = Logger.getLogger(JavaModuleFacetImpl.class);
  private static final String CLASSES_KEY = "classes";
  private static final String LIBRARY_KEY = "library";
  private static final String SOURCE_KEY = "source";

  // just an indicator this entry describes classes derived from generated source code. Not sure if I ever get to other entries,
  // though eventually I'd like to move everything Java-related stuff out of MD to this facet (e.g. Java libraries)
  private static final String GENERATED_KEY = "generated";
  // there's hardcoded knowledge in ModuleDescriptorPersistence that 'path' attributes are FS location and
  // has to be piped though MacroHelper to get expanded/shrunken
  private static final String PATH_KEY = "path";
  private static final String LOCATION_KEY = "location";

  private static final String JAVA_LANGUAGE_LEVEL = "languageLevel";

  private static final String KEY_COMPILE = "compile";
  private static final String KEY_CLASSLOADER = "classes";
  private static final String KEY_EXTENSION = "ext";

  private PathSpec myGeneratedClassesLocation = null;

  private Compile myCompile = Compile.MPS;
  private LoadClasses myLoadClasses = LoadClasses.ManagedByMPS;
  private LoadExtensions myLoadExtensions = LoadExtensions.NotAvailable;

  @Nullable
  private JavaLanguageLevel myJavaLanguageLevel = null;
  private PathSpecBundle myLibraryBundle = new PathSpecBundle();
  private PathSpecBundle myAdditionalSources = new PathSpecBundle();

  public JavaModuleFacetImpl(@NotNull SModule module) {
    super(FACET_TYPE, module);
  }

  @Override
  public JavaLanguageLevel getLanguageLevel() {
    if (myJavaLanguageLevel != null) {
      return myJavaLanguageLevel;
    }
    return JavaLanguageLevel.getDefault(isCompileInMps());
  }

  public void setLanguageLevel(@Nullable JavaLanguageLevel level) {
    if (level == JavaLanguageLevel.getDefault(isCompileInMps()) && myJavaLanguageLevel != level) {
      // remove the value iff the value set there didn't match the default (or not set at all).
      // Keep the value the way it was there just in case user wants to keep its module descriptor intact (e.g. doesn't want to rely on MPS defaults)
      myJavaLanguageLevel = null;
    } else {
      myJavaLanguageLevel = level;
    }
  }

  public void setGeneratedClassesLocation(IFile classesGen) {
    setGeneratedClassesLocation(classesGen == null ? null : new PathSpec(classesGen));
  }
  public void setGeneratedClassesLocation(@Nullable PathSpec classesGen) {
    if (classesGen != null && !classesGen.resolved() && getModule() != null) {
      throw new IllegalArgumentException("Facet already attached to a module needs resolved paths: " + classesGen.value());
    }
    myGeneratedClassesLocation = classesGen;
  }

  @NotNull
  public AbstractModule getAbstractModule() {
    return (AbstractModule) super.getModule();
  }

  @Override
  @Nullable
  public IFile getClassesGen() {
    return myGeneratedClassesLocation == null || !myGeneratedClassesLocation.resolved() ? null : myGeneratedClassesLocation.resolvedFile();
  }

  @Override
  public Set<String> getLibraryClassPath() {
    Set<String> libraryClassPath = new LinkedHashSet<>();

    // add additional java library paths
    // XXX for deployed modules, we could use DD.getLibraries here. But as long as MM updates MD.getJavaLibs() of a source module,
    //     and we grabbed these during load(), just stick to myLibraryBundle.
    // XXX I wonder if we truly need to care about PS.resolved(), i.e. if we need IFile or any string with substituted macro is fine.
    myLibraryBundle.paths().filter(PathSpec::resolved).map(PathSpec::resolvedPath).forEach(libraryClassPath::add);
    // for packaged modules, we can't tell if classes deployed with it shall go into libraryCP or into #getClassPath(). Now they
    // go into latter, as there's (a) no uses for #getLibraryClassPath; (b) there's no need to compile deployed modules, hence no
    // reason to have its external classes available in libraries.
    return libraryClassPath;
  }

  @Override
  public final Set<String> getClassPath() {
    Set<String> result = new LinkedHashSet<>(getLibraryClassPath());
    // XXX CP entry for IDEA-compiled modules (classes/) is part of library CP. Is it right?
    //     On the one hand, we might need classes compiled outside a module to build it, OTOH, it makes classes/
    //     somewhat different from classes_gen/
    IFile classesGen = getClassesGen();
    AbstractModule abstractModule = getAbstractModule();
    if (classesGen == null && abstractModule.isPackaged()) {
      // Despite isPackaged(), there might be modules like stub and test that lack MD or DD, doesn't hurt to check
      ModuleDescriptor moduleDescriptor = abstractModule.getModuleDescriptor();
      if (moduleDescriptor != null && moduleDescriptor.getDeploymentDescriptor() != null) {
        // 'Right' scenario. Deployed module has DD and we take classpath from there
        result.addAll(moduleDescriptor.getDeploymentDescriptor().getClasspath());
      } else {
        // Compatibility code:
        // Case 1. Deployed generator modules have no DD and are read independently of their source languages.
        //         Include their separate jar (hard-coded knowledge about build layout) into classpath.
        if (abstractModule instanceof Generator) {
          LOG.error(String.format("Deployed generator module %s without deployment descriptor. Generator classes would be missing. File: %s",
                                  abstractModule.getModuleReference(),
                                  abstractModule.getDescriptorFile()));
        }
      }
    }
    if (classesGen != null) {
      result.add(getClassPath(classesGen));
    }
    return result;
  }

  /**
   * A classes root that lives inside an archive contributes the archive itself to the classpath; a local one contributes its own
   * path. Note a {@code '!'} in the path proves nothing: it is a legal character of a file name on every supported OS, so a local
   * path bears one whenever a directory name does, and the sequence {@code "!/"} along with it (MPS-40062).
   */
  private String getClassPath(@NotNull IFile classes) {
    String path = classes.getPath();
    String archivePath = PathUtil.extractArchivePath(path);
    if (archivePath == null || !PathUtil.hasArchiveFileName(archivePath)) {
      return path;
    }
    // whatever follows the archive itself, be it the separator alone or an entry within: only an archive root is a classpath entry
    String entry = path.substring(Math.min(archivePath.length() + Path.ARCHIVE_SEPARATOR.length(), path.length()));
    if (!entry.isEmpty()) {
      LOG.warning("Can not transform directory " + path + " to proper classpath while calculating classpath for module " + getModule());
    }
    return archivePath;
  }

  /**
   * To manipulate the value, use {@link #getSourcePathSpec()} instead
   */
  @Override
  public Set<String> getAdditionalSourcePaths() {
    if (myAdditionalSources.isEmpty()) {
      return Collections.emptySet();
    }
    // XXX I don't see any reason to make set unique here, but at least keep the ordering
    LinkedHashSet<String> rv = new LinkedHashSet<>();
    myAdditionalSources.paths().filter(PathSpec::resolved).map(PathSpec::resolvedPath).forEach(rv::add);
    return rv;
  }

  @Override
  public void save(@NotNull Memento memento, @NotNull ModulePersistenceContext context) {
    super.save(memento, context);
    if (myJavaLanguageLevel != null) {
      // if myJavaLanguageLevel value has been read, write it back even if it's the same as default
      memento.put(JAVA_LANGUAGE_LEVEL, myJavaLanguageLevel.name());
    } else {
      // just in case memento comes with an old value (see FIXME, below) but the actual one has been changed to default
      memento.put(JAVA_LANGUAGE_LEVEL, null);
    }
    // FIXME On one hand, it looks stupid to account for existing values in the memento, a lot of ugly code
    //       on the other, we might not want to save each and every setting inside an instance field.
    //       Check FileBasedModelRoot.save(), which doesn't account for existing values; the way it's invoked (with clear memento in AM.save())
    //       helps to to keep its save() straightforward. Have to come up with clear contract for the method!
    Memento toUpdate = null;
    for (Memento m : memento.getChildren(CLASSES_KEY)) {
      if (Boolean.parseBoolean(m.get(GENERATED_KEY))) {
        toUpdate = m;
        break;
      }
    }
    if (toUpdate == null) {
      toUpdate = memento.createChild(CLASSES_KEY);
      toUpdate.put(GENERATED_KEY, Boolean.toString(true));
    }
    final MacroHelper mh = PersistenceContextImpl.macroHelper(context);
    toUpdate.put(PATH_KEY, myGeneratedClassesLocation != null ? myGeneratedClassesLocation.shrink(mh) : null);
    memento.put(KEY_COMPILE, myCompile.toPersistenceValue());
    memento.put(KEY_CLASSLOADER, myLoadClasses.toPersistenceValue());
    memento.put(KEY_EXTENSION, myLoadExtensions.toPersistenceValue());
    memento.clearChildren(LIBRARY_KEY);
    for (PathSpec jl : myLibraryBundle) {
      final Memento mm = memento.createChild(LIBRARY_KEY);
      // to avoid MDP logic to process "path" attributes with MacroHelper. Not ready yet to
      // turn it off, and likely shall have it deprecated for some time to ensure compatibility/transition
      mm.put(LOCATION_KEY, jl.shrink(mh));
    }
    memento.clearChildren(SOURCE_KEY);
    for (PathSpec sl : myAdditionalSources) {
      final Memento mm = memento.createChild(SOURCE_KEY);
      mm.put(LOCATION_KEY, sl.shrink(mh));
    }
  }

  /*package*/ static boolean isBlank(Memento memento) {
    return memento.getType() == null && !memento.getKeys().iterator().hasNext() && !memento.getChildren().iterator().hasNext();
  }

  @Override
  public void load(@NotNull Memento memento, @NotNull ModulePersistenceContext context) {
    super.load(memento, context);
    // FIXME seems that I need dedicated 'initNew/Default' API method, as blank JMF might be a legitimate scenario
    //       when I don't need any location. OTOH, can at least provide compile/load/ext flags in this case?
    if (isBlank(memento)) {
      // some reasonable defaults for scenario when a new facet is added and immediately loaded with blank Memento.
      // FIXME in fact, JavaModuleFacetTab does the same, but only for Solution, while I need this to happen for every module with a new JMF.
      //       Merge these two approaches into 1 place.
      myGeneratedClassesLocation = new PathSpec(MacrosFactory.MODULE + '/' + AbstractModule.CLASSES_GEN);
      // FIXME this code ^^^ is wrong for Generator (src dir == lang src dir), there's a defect in YT (MPS-35607)
      // FIXME Once there's myOutputRoot, need to decide about its default value. On one hand, seems reasonable to do the same as
      //       for myGeneratedClassesLocation. However, there was none and code that creates JMF seems to care about
      //       source output explicitly (producers). Nevertheless, shall unify approach -
      //       whether it's here we set defaults or external code does (and whether it uses JMF API or FacetDescriptor memento)
      // the rest of the fields get their defaults ok
      if (getModule() instanceof Language) {
        // this is the only setting different in L/G/D/S defaults
        myLoadExtensions = LoadExtensions.Plugin;
      }
      return;
    }
    String languageLevel = memento.get(JAVA_LANGUAGE_LEVEL);
    if (languageLevel != null && !languageLevel.isEmpty()) {
      myJavaLanguageLevel = JavaLanguageLevel.valueOf(languageLevel);
    }

    ArrayList<PathSpec> libraries = new ArrayList<>();
    final ModuleDescriptor moduleDescriptor = getAbstractModule().getModuleDescriptor();
    if (isAtDeployedModule()) {
      // XXX generally, deployed modules shall have different JMF implementation; for the time being we share the one and
      //     have to respect deployed module scenario here by ignoring classes_gen, even if explicitly specified in source MD
      myGeneratedClassesLocation = null;
      if (moduleDescriptor != null) {
        final DeploymentDescriptor dd = moduleDescriptor.getDeploymentDescriptor();
        if (dd != null) {
          dd.getLibrariesResolved().stream().map(PathSpec::new).forEach(libraries::add);
        } else {
          // account for isPackaged() == true w/o DD scenario. However, I don't think it's something we shall strive to keep,
          // instead, shall force use of DD for packaged/deployed scenarios
          // Nevertheless, there are scenarios in MPS itself, e.g. MPS.Core and other pure stub modules that get packaged in mps-stubs.jar
          // in their source form (w/o any DD whatsoever)
          for (Memento m : memento.getChildren(LIBRARY_KEY)) {
            // FIXME duplicating code with "source" code branch, below
            final String p = m.get(LOCATION_KEY);
            if (p != null) {
              // generally, I expect paths in this scenario to limit macro use to general platform_lib and mps_home,
              // as ${module} is not that unambiguous for modules inside an archive
              libraries.add(new PathSpec(p));
            }
          }
        }
      }
    } else {
      // JFTR, intentionally pretty much the same logic is below in classGenPath
      // FYI, pure stub modules that claim to be 'java' but don't have any generated classes are fine with
      //      null default for myGeneratedClassesLocation (now that legacy 'classes_gen' default is no longer here)
      for (Memento m : memento.getChildren(CLASSES_KEY)) {
        if (Boolean.parseBoolean(m.get(GENERATED_KEY))) {
          final String v = m.get(PATH_KEY);
          myGeneratedClassesLocation = v == null ? null : new PathSpec(v);
          break;
        }
      }
      for (Memento m : memento.getChildren(LIBRARY_KEY)) {
        final String p = m.get(LOCATION_KEY);
        if (p != null) {
          libraries.add(new PathSpec(p));
        }
        // XXX shall I warn about bad value here or in persistence? Latter seems to be generic and shall not care about mandatory attributes.
        // Perhaps, makes sense to keep some sort of 'invalid' path specification?
      }
    }
    // extract sources regardless the fact we are not going to use them for deployed modules. Just for the sake of
    // completeness (user can see original values in module properties)
    ArrayList<PathSpec> sources = new ArrayList<>();
    for (Memento m : memento.getChildren(SOURCE_KEY)) {
      final String p = m.get(LOCATION_KEY);
      if (p != null) {
        sources.add(new PathSpec(p));
      }
    }
    // resolve PathSpec instances
    // XXX I wonder if one more FS#getFile(String path, Nullable MacroHelper) is better than separate expandPath()?
    final Function<String, IFile> tr = PersistenceContextImpl.pathResolveFunction(context);
    // don't re-resolve PathSpec that were instantiated with IFile (e.g. for libraries of deployed modules)
    final Predicate<PathSpec> resolved = PathSpec::resolved;
    if (!libraries.isEmpty()) {
      libraries.stream().filter(resolved.negate()).forEach(l -> l.resolve(tr));
      myLibraryBundle = new PathSpecBundle(libraries);
    }
    if (!sources.isEmpty()) {
      sources.stream().filter(resolved.negate()).forEach(s -> s.resolve(tr));
      myAdditionalSources = new PathSpecBundle(sources);
    }
    if (myGeneratedClassesLocation != null) {
      myGeneratedClassesLocation.resolve(tr);
    }

    // we used to configure defaults for transition (detect from MD), but as persisted values are out there for quite some time, just use serialized values
    final String compileValue = memento.get(KEY_COMPILE);
    if (compileValue != null) {
      myCompile = Compile.fromPersistenceValue(compileValue, Compile.None);
    }
    final String clValue = memento.get(KEY_CLASSLOADER);
    if (clValue != null) {
      myLoadClasses = LoadClasses.fromPersistenceValue(clValue, LoadClasses.NotAvailable);
    }
    final String extValue = memento.get(KEY_EXTENSION);
    if (extValue != null) {
      myLoadExtensions = LoadExtensions.fromPersistenceValue(extValue, LoadExtensions.NotAvailable);
    }
  }

  @NotNull
  @Override
  public Compile getCompile() {
    return myCompile;
  }

  @NotNull
  @Override
  public LoadClasses getLoadClasses() {
    return myLoadClasses;
  }

  @Override
  public LoadExtensions getLoadExtensions() {
    return myLoadExtensions;
  }

  @Override
  public void setCompile(Compile compile) {
    myCompile = compile;
  }

  @Override
  public void setLoadClasses(LoadClasses loadClasses) {
    myLoadClasses = loadClasses;
  }

  @Override
  public void setLoadExtensions(LoadExtensions loadExtensions) {
    myLoadExtensions = loadExtensions;
  }


  private boolean isAtDeployedModule() {
    if (getModule().isPackaged()) {
      return true;
    }
    // in fact, this is what isPackaged() shall check (according to its javadoc), but at the moment it cares about
    // module source dir not being in archive, which is not exactly the same, hence extra check here.
    ModuleDescriptor moduleDescriptor = getAbstractModule().getModuleDescriptor();
    return moduleDescriptor != null && moduleDescriptor.getDeploymentDescriptor() != null;
  }

  /**
   * INTERNAL CODE
   * Use to fill gensources.iml with actual values.
   * @return null if there's no Java facet in a module descriptor, or facet doesn't specify location for generated classes
   */
  @TestOnly
  @Nullable
  public static PathSpec classGenPath(ModuleDescriptor descriptor) {
    final ModuleFacetDescriptor fd = descriptor.getModuleFacetDescriptors().stream().filter(d -> FACET_TYPE.equals(d.getType())).findFirst().orElse(null);
    if (fd == null) {
      return null;
    }
    // Could use  `new JavaModuleFacetImpl().load(fd.getMemento()).myGeneratedClassesLocation`
    // but don't want to depend on load() assumptions about memento kind or attached module, rather duplicate its part
    for (Memento m : fd.getMemento().getChildren(CLASSES_KEY)) {
      if (Boolean.parseBoolean(m.get(GENERATED_KEY))) {
        final String v = m.get(PATH_KEY);
        return v == null ? null : new PathSpec(v);
      }
    }
    return null;
  }

  /**
   * To replace MD.isCompileInMPS() calls for scenarios where no SModule/SModuleFacet is instantiated
   */
  @TestOnly
  public static boolean isCompileInMPS(ModuleDescriptor descriptor) {
    final ModuleFacetDescriptor fd = descriptor.getModuleFacetDescriptors().stream().filter(d -> FACET_TYPE.equals(d.getType())).findFirst().orElse(null);
    if (fd == null) {
      return false;
    }
    if (descriptor instanceof LanguageDescriptor || descriptor instanceof GeneratorDescriptor) {
      // XXX implicitly compileInMPS, although why don't we make it explicit, after all?
      return true;
    }
    final String compileValue = fd.getMemento().get(KEY_COMPILE);
    return Compile.fromPersistenceValue(compileValue, Compile.None) == Compile.MPS;
  }

  /**
   * provides a set of defaults for a newly instantiated JavaModuleFacet to get fully functional
   * FIXME I'd love to have this method as generic factory one in FacetFactory, but ModuleFacetDescriptor is an
   * implementation aspect, not visible in open API
   * @return Java facet persistent description
   * @since 2022.3
   */
  public static ModuleFacetDescriptor forNewJavaCodeModule() {
    return forJavaCodeModule(Compile.MPS, LoadClasses.ManagedByMPS, LoadExtensions.NotAvailable);
  }

  public static ModuleFacetDescriptor forJavaCodeModule(@Nullable JavaModuleFacet prototype) {
    if (prototype != null) {
      final ModuleFacetDescriptor rv = new ModuleFacetDescriptor(JavaModuleFacet.FACET_TYPE, new MementoImpl());
      prototype.save(rv.getMemento(), PersistenceContextImpl.empty());
      return rv;
    } else {
      return forNewJavaCodeModule();
    }
  }

  public static ModuleFacetDescriptor forJavaCodeModule(Compile compile, LoadClasses loadClasses, LoadExtensions loadExtensions) {
    final ModuleFacetDescriptor rv = new ModuleFacetDescriptor(JavaModuleFacet.FACET_TYPE, new MementoImpl());
    if (compile == Compile.MPS) {
      final Memento ck = rv.getMemento().createChild(CLASSES_KEY);
      ck.put(GENERATED_KEY, Boolean.toString(true));
      ck.put(PATH_KEY, MacrosFactory.MODULE + '/' + AbstractModule.CLASSES_GEN);
    }
    rv.getMemento().put(KEY_COMPILE, compile.toPersistenceValue());
    rv.getMemento().put(KEY_CLASSLOADER, loadClasses.toPersistenceValue());
    rv.getMemento().put(KEY_EXTENSION, loadExtensions.toPersistenceValue());
    return rv;
  }

  /**
   * The only reason for this method is that we keep absolute paths in descriptors, and therefore need to know actual
   * module dir to initialize a default.
   */
  @Internal
  @Hack
  public static void setDefaultClassesGenLocation(@NotNull ModuleFacetDescriptor md, @NotNull IFile moduleDir) {
    if (!JavaModuleFacet.FACET_TYPE.equals(md.getType())) {
      throw new IllegalArgumentException("Facet descriptor of unexpected kind: " + md.getType());
    }
    Memento ck = md.getMemento().getChild(CLASSES_KEY);
    if (ck == null) {
      ck = md.getMemento().createChild(CLASSES_KEY);
    }
    ck.put(GENERATED_KEY, Boolean.toString(true));
    ck.put(PATH_KEY, moduleDir.findChild(AbstractModule.CLASSES_GEN).getPath());
  }

  // FIXME hack, no need to create (or resolve classes_gen) unless necessary
  public static void clearClassesGenLocation(ModuleDescriptor md) {
    final Optional<ModuleFacetDescriptor> jmfdOpt = md.getModuleFacetDescriptors().stream().filter(d -> JavaModuleFacet.FACET_TYPE.equals(d.getType())).findFirst();
    jmfdOpt.ifPresent(jmfd -> {
      final Memento ck = jmfd.getMemento().getChild(CLASSES_KEY);
      // XXX I wonder if we shall put generated==false here?
      if (ck != null) {
        ck.put(PATH_KEY, null);
      }
    });
  }

  // XXX if we split source/deployed JMF, methods to manipulate Java Library specification shall be part of sources; deployed JMF will look into
  // libraries of DeploymentDescriptor
  public void setJavaLibrarySpec(@NotNull PathSpecBundle javaLibPaths) {
    myLibraryBundle = javaLibPaths;
  }

  /**
   *
   * @since 2023.1
   */
  @NotNull
  public PathSpecBundle getJavaLibrarySpec() {
    return myLibraryBundle;
  }

  public void setSourcePathSpec(@NotNull PathSpecBundle extraSources) {
    myAdditionalSources = extraSources;
  }

  /**
   * @return extra locations with source files to compile along with module's own generated artifacts from {@link #getOutputRoot()}, or empty collection.
   * @since 2023.1
   */
  @NotNull
  public PathSpecBundle getSourcePathSpec() {
    return myAdditionalSources;
  }
}
