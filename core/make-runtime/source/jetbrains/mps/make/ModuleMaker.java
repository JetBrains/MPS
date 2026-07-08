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
package jetbrains.mps.make;

import jetbrains.mps.RuntimeFlags;
import jetbrains.mps.compiler.JavaCompilerOptions;
import jetbrains.mps.compiler.JavaCompilerOptionsComponent;
import jetbrains.mps.compiler.JavaCompilerOptionsComponent.JavaVersion;
import jetbrains.mps.make.ModuleAnalyzer.ModuleAnalyzerResult;
import jetbrains.mps.make.dependencies.graph.Graph;
import jetbrains.mps.make.dependencies.graph.IVertex;
import jetbrains.mps.make.java.BLDependenciesCache;
import jetbrains.mps.make.java.ModelDependencies;
import jetbrains.mps.make.kotlin.JvmKotlinCompilerRunner;
import jetbrains.mps.make.kotlin.JvmKotlinModule;
import jetbrains.mps.make.kotlin.KotlinCompilerOptions;
import jetbrains.mps.make.kotlin.KotlinCompilerRunner;
import jetbrains.mps.make.kotlin.KotlinModule;
import jetbrains.mps.make.kotlin.cache.KotlinCompileCacheHandler;
import jetbrains.mps.make.kotlin.cache.KotlinModuleCache;
import jetbrains.mps.messages.IMessageHandler;
import jetbrains.mps.project.MPSExtentions;
import jetbrains.mps.project.SModuleOperations;
import jetbrains.mps.project.dependency.GlobalModuleDependenciesManager;
import jetbrains.mps.project.dependency.GlobalModuleDependenciesManager.Deptype;
import jetbrains.mps.project.facets.JavaModuleFacet;
import jetbrains.mps.project.facets.JavaModuleFacet.Compile;
import jetbrains.mps.smodel.SModelStereotype;
import jetbrains.mps.util.FileUtil;
import jetbrains.mps.util.performance.IPerformanceTracer;
import jetbrains.mps.util.performance.IPerformanceTracer.NullPerformanceTracer;
import jetbrains.mps.util.performance.PerformanceTracer;
import jetbrains.mps.vfs.IFile;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.annotations.TestOnly;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.module.SModule;
import org.jetbrains.mps.openapi.module.SModuleReference;
import org.jetbrains.mps.openapi.module.SRepository;
import org.jetbrains.mps.openapi.util.ProgressMonitor;
import org.jetbrains.mps.openapi.util.SubProgressKind;

import javax.tools.JavaCompiler;
import java.io.File;
import java.nio.file.Path;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Optional;
import java.util.Set;
import java.util.function.Predicate;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.stream.Collectors;
import java.util.stream.Stream;

/**
 * {@code ModuleMaker} compiles sources of the given modules.
 * Takes optional {@link #options(JavaCompilerOptions)} java compiler options.
 * Needs model access to {@link #prepare(Collection, boolean, ProgressMonitor) get ready}.
 * Compilation per se, {@link #make(ProgressMonitor)} runs with collected and prepared state.
 * Optionally, may {@link #clean(Set, ProgressMonitor)} existing module sources.
 * <p>
 *
 * </p>
 * Underneath this class analyzes module dependencies,
 * chooses which of the modules are dirty, collects all the java sources and handles
 * them to a {@link JavaCompilerImpl java compiler wrapper} that hides {@link JavaCompiler}
 * peculiarities under {@link BaseModuleContainer}
 * <p>
 * fixme use bundle for this package
 * fixme check multiple computations of the same modules' dependencies (time wasting)
 */
public final class ModuleMaker {
  private final static String BUILDING_MODULES_MSG = "Building %d Modules";
  private final static String KOTLIN_COMPILE_MSG = "Kotlin Compilation";
  private final static String CYCLE_FORMAT_MSG = "Cycle #%d: [%s]";
  // XXX do I want to report these phases?
  private final static String COLLECTING_DEPENDENCIES_MSG = "Collecting Dependent Candidates";
  private final static String LOADING_DEPENDENCIES_MSG = "Loading Dependencies";
  private final static String CALCULATING_DEPENDENCIES_TO_COMPILE_MSG = "Calculating Modules To Compile";
  private final static String BUILDING_MODULE_CYCLES_MSG = "Building Module Cycles";
  private final static String BUILDING_DIRTY_CLOSURE = "Dirty Modules";
  private JavaCompilerOptions myCompilerOptions = null;
  private boolean myExplicitRequestECJ = false;

  private static final String STARTUP_PROPERTIES_FILE_NAME = "startup.properties";

  @NotNull
  private final CompositeTracer myTracer;
  @Nullable
  private BLDependenciesCache myDependenciesCache;
  @Nullable
  private KotlinCompileCacheHandler myKotlinCacheHandler;

  @Nullable
  private KotlinCompilerOptions myKotlinCompilerOptions;
  private Predicate<File> myIgnoredSources;
  private Predicate<File> myIgnoredClasses;

  /**
   * The empty constructor delegates only error messages to the apache's logger and traces nothing
   */
  public ModuleMaker() {
    Logger logger = Logger.getLogger(ModuleMaker.class.getName());
    // if there's logging level explicitly specified for this class, use it, otherwise just errors
    final Level explicitLevel = logger.getLevel();
    MessageSender sender = new MessageSender(IMessageHandler.NULL_HANDLER, logger, this, explicitLevel == null ? Level.SEVERE : explicitLevel);
    myTracer = new CompositeTracer(performanceTrace(logger), sender);
  }

  /**
   * Constructor for regular use, if uncertain, use this one.
   *
   * @param handler sink for end-user messages
   */
  public ModuleMaker(@NotNull IMessageHandler handler) {
    // End-user messages piped through supplied handler, trace and debug messages go to log according to external configuration
    Logger logger = Logger.getLogger(ModuleMaker.class.getName());
    String mmName = ModuleMaker.class.getName();
    MessageSender sender = new MessageSender(handler, logger, mmName, Level.ALL);
    myTracer = new CompositeTracer(performanceTrace(logger), sender);
  }

  private static IPerformanceTracer performanceTrace(Logger logger) {
    // PerformanceTracer.printReport sends it with info level, but it doesn't seem reasonable to collect performance data unless we debug MM.
    return logger.isLoggable(Level.FINE) ? new PerformanceTracer(ModuleMaker.class.getName()) : new NullPerformanceTracer();
  }

  /**
   * @param options set of compilation options for the subsequent {@code make} calls
   * @return {@code this} for convenience
   */
  public ModuleMaker options(@Nullable JavaCompilerOptions options) {
    myCompilerOptions = options;
    return this;
  }

  /**
   * @param options set of compilation options for kotlin for the subsequent {@code make} calls
   */
  public ModuleMaker kotlinOptions(@Nullable KotlinCompilerOptions options) {
    myKotlinCompilerOptions = options;
    return this;
  }

  public ModuleMaker dependencies(@Nullable BLDependenciesCache dependenciesCache) {
    myDependenciesCache = dependenciesCache;
    return this;
  }

  public ModuleMaker kotlinCompileCache(@Nullable KotlinCompileCacheHandler cacheProvider) {
    myKotlinCacheHandler = cacheProvider;
    return this;
  }

  // request use of eclipse compiler
  public ModuleMaker requestECJ() {
    myExplicitRequestECJ = true;
    return this;
  }

  public ModuleMaker ignoreFiles(@Nullable Predicate<File> ignoredFiles) {
    return ignoreSourceFiles(ignoredFiles).ignoreCompiledFiles(ignoredFiles);
  }

  public ModuleMaker ignoreSourceFiles(@Nullable Predicate<File> ignoredFiles) {
    myIgnoredSources = ignoredFiles;
    return this;
  }

  public ModuleMaker ignoreCompiledFiles(@Nullable Predicate<File> ignoredFiles) {
    myIgnoredClasses = ignoredFiles;
    return this;
  }

    /**
     * TODO move or rename the ModuleMaker (the naming is quite disturbing)
     */
  public void clean(final Set<? extends SModule> modules, @NotNull final ProgressMonitor monitor) {
    monitor.start("Cleaning...", modules.size());
    try {
      for (SModule module : modules) {
        if (monitor.isCanceled()) {
          break;
        }
        if (!isExcluded(module)) {
          monitor.step(module.getModuleName());
          JavaModuleFacet facet = module.getFacet(JavaModuleFacet.class);
          assert facet != null && facet.getClassesGen() != null;
          File classesGenFile = new File(facet.getClassesGen().getPath());
          FileUtil.delete(classesGenFile);
        }
        monitor.advance(1);
      }
    } finally {
      monitor.done();
    }
  }

  private MC newModuleChunk() {
    return new MC(myKotlinCacheHandler, myIgnoredSources, myIgnoredClasses);
  }

  static class MC {
    private final KotlinCompileCacheHandler myKotlinCacheHandler;
    private final Predicate<File> myIgnoredSources;
    private final Predicate<File> myIgnoredClasses;
    private final HashMap<SModuleReference, JM> myModules = new HashMap<>();
    private final HashMap<JM, SModule> myTransientMap = new HashMap<>();

    MC(KotlinCompileCacheHandler kotlinCacheHandler, @Nullable Predicate<File> ignoredSources, @Nullable Predicate<File> ignoredClasses) {
      myKotlinCacheHandler = kotlinCacheHandler;
      myIgnoredSources = ignoredSources;
      myIgnoredClasses = ignoredClasses;
    }

    JM createJM(SModule m) {
      assert !myModules.containsKey(m.getModuleReference());
      JM rv;
      myModules.put(m.getModuleReference(), rv = new JM(m.getModuleReference()));
      myTransientMap.put(rv, m);
      return rv;
    }

    JM findJM(SModule m) {
      return myModules.get(m.getModuleReference());
    }

    Collection<JM> allJavaModules() {
      return myModules.values();
    }

    void addAll(MC other) {
      final int size1 = myModules.size();
      final int size2 = myTransientMap.size();
      myModules.putAll(other.myModules);
      assert myModules.size() == size1 + other.myModules.size() : "duplicates";
      myTransientMap.putAll(other.myTransientMap);
      assert myTransientMap.size() == size2 + other.myTransientMap.size() : "duplicates";
    }

    // need SModule (detectDirtySources) but may proceed if JMF's source/classes location has been recorded
    public boolean needsCompile(MC initial) {
      final CleanWalk cleanCheck = new CleanWalk(this);
      initial.allJavaModules().forEach(cleanCheck::needsCompile);
      return initial.allJavaModules().stream().anyMatch(JM::isDirty);
    }

    // requires SModule
    public void calculateClasspath() {
      // unlike 'needCompile', where I can derive 'isDirty' state, I care to evaluate CP for every module here
      allJavaModules().forEach(this::evaluateClasspath);
    }


    public List<List<JM>> scc() {
      final Graph<JM> g = new Graph<>();
      myModules.values().forEach(g::add);
      return g.scc();
    }

    public boolean isEmpty() {
      return myModules.isEmpty();
    }

    // indicate no more SModule access
    public void abandonModelRead() {
      myTransientMap.clear();
    }

    // requires SModule knowledge
    // FIXME use stateful dep calculation logic + cached dependencies to speed this up
    public Collection<SModule> walkDependencies(@NotNull JM jm, @NotNull BLDependenciesCache deps) {
      SModule m = toOriginChecked(jm);
      // FIXME meed to decide if SModule *without* JMF could be among dependencies.
      // On one hand, we are not going to use it e.g. for classpath calculation. On the other, it may affect cycles module is part of. Does it matter?
      ArrayList<SModuleReference> rv = new ArrayList<>(20);
      // pretty much what Dependencies.collectDependencies() does
      for (SModel model : m.getModels()) {
        if (SModelStereotype.isStubModel(model)) {
          // FIXME this logic comes from Dependencies.collectDependencies() but I'm not 100% sure it's correct.
          //    E.g. Make action takes GenerationFacade.canGenerate() models only, which might be ok for IDE Make action
          //    but generally not perfect either. I'd like to transform any model I like (even if it's stub), and see no
          //    reason to assume any model was excluded here. Provided we silently ignore missing ModelDependencies (which
          //    IMO may happen when some of the models were not generated), we can just walk all models here.
          //    However, for the first round I'd like to stick to legacy logic as close as possible not to address
          //    unexpected differences in behavior.
          continue;
        }
        final ModelDependencies modelDependencies = deps.get(model);
        if (modelDependencies == null) {
          continue;
        }
        rv.addAll(modelDependencies.getModuleDependencies());
        rv.addAll(modelDependencies.getLanguageRuntimeModules());
      }
      // XXX GMDM implicitly uses module's repository; don't see a reason why not to do the same here
      //     Besides, GMDM doesn't care too much about modules missing in a repo (reports to log), hence the
      //     same logic seems fine here (at least for the first round)
      final SRepository repository = m.getRepository();
      return rv.stream().distinct().map(r -> r.resolve(repository)).filter(Objects::nonNull).collect(Collectors.toUnmodifiableList());
    }

    /**
     * There's a regression in Java 25, that may need complete classpath for compilation, see https://bugs.openjdk.org/browse/JDK-8370800.
     */
    public Collection<SModule> transitiveCompileDepsHack(JM javaModule) {
      return new GlobalModuleDependenciesManager(toOriginChecked(javaModule)).getModules(Deptype.COMPILE);
    }


    // requires SModule knowledge, but can deal with source location(s) recorded beforehand
    void detectDirtySources(JM jm) {
      evaluateSources(jm);
      if (jm.mySources == null) {
        jm.markClean();
        return;
      } else {
        if (jm.mySources.outdatedSources()) {
          jm.markDirty();
        } else {
          jm.markClean();
        }
      }
    }

    // requires SModule knowledge
    void evaluateSources(JM jm) {
      if (jm.mySources != null) {
        return;
      }
      SModule m = toOriginChecked(jm);
      final JavaModuleFacet jmf = SModuleOperations.getJavaFacet(m);
      final IFile classesOut = jmf.getClassesGen();
      if (m.isReadOnly() || classesOut == null) {
        return;
      }
      final Set<String> allSourcePaths = SModuleOperations.getAllSourcePaths(m);
      final IFile outputRoot = jmf.getOutputRoot();
      final IFile outputCacheRoot = jmf.getOutputCacheRoot();
      jm.setSourcePaths(allSourcePaths, classesOut.getPath(), outputRoot == null ? null : outputRoot.getPath(), outputCacheRoot == null ? null : outputCacheRoot.getPath());
      jm.setSources(new JS(myIgnoredSources, myIgnoredClasses), myKotlinCacheHandler);
    }

    // requires SModule knowledge
    void evaluateClasspath(JM jm) {
      // FIXME getClassPath() is ok for scenarios when jm.getClasspath() is used as a dependency target,
      //       but not ok for the module's own compilation classpath (generally doesn't need classes_gen)
      //       Besides, #getCompileClasspath(Collection, boolean) suggests we may add classes_gen
      //       explicitly, when needed, which makes this story even more entangled.
      jm.setClasspath(SModuleOperations.getJavaFacet(toOriginChecked(jm)).getClassPath());
    }

    private SModule toOriginChecked(JM jm) {
      assert myModules.containsValue(jm) : "wrong module container";
      assert myTransientMap.containsKey(jm) : "module container w/o origin SModule (cleared already?)";
      SModule m = myTransientMap.get(jm);
      assert m != null;
      return m;
    }
  }

  private static class CleanWalk {
    private final Set<JM> mySeen = new HashSet<>();
    private final MC myContainer;

    CleanWalk(MC mc) {
      myContainer = mc;
    }

    boolean needsCompile(JM jm) {
      if (mySeen.add(jm)) {
        if (jm.compileState() == CompileState.UNCHECKED) {
          // I don't care to check all dependencies, it's enough if any is dirty. We walk all the modules we care to compile,
          // therefore would get to a dependency of interest anyway. If we don't get there, it's compileState would stay UNCHECKED
          //
          // A depends on B and C; make(A); B is dirty => with present CleanWalk logic we may never get to C to figure out its 'dirty' state,
          // Do I need to filter C out when building final set of modules to compile? Now, it's based on isClean() and == CLEAN check,
          // which would leave UNCHECKED modules for compilation. Unless I intersect final set with initial/requested. As it's what
          // I eventually want to do (compile only what's truly requested), seems fine not to build state for complete dependencies here.
          // OTOH, if there's a cycle A->B->C->A, we may want to re-compile C even when B is dirty and make(A) notices it right away, without visiting C.
          //      it's odd we compile A+B for the cycle, but not C (well, provided I do filter by initial/requested)

          final boolean dirtyDeps = jm.dependsFrom().anyMatch(this::needsCompile);
          if (dirtyDeps) {
            jm.markDirty();
          } else {
            myContainer.detectDirtySources(jm);
          }
        }
      }
      return jm.compileState() == CompileState.DIRTY;
    }
  }

  // shall not keep SModule, but only relevant parts that may be used without model access
  public static class JM implements IVertex, BaseModuleContainer.JavaModule {
    private final SModuleReference myModule;
    private CompileState myCompileState = CompileState.UNCHECKED;
    private final List<JM> myDependencies = new ArrayList<>();
    private Set<String> myClasspath; // nullable
    private JS mySources; // nullable
    private Collection<String> mySourcePaths; // nullable
    private File myClassesOut, mySourcesOut, mySourcesCache; // nullable

    JM(SModuleReference moduleRef) {
      myModule = moduleRef;
    }

    @Override
    public Set<? extends IVertex> getNexts() {
      return new HashSet<>(myDependencies);
    }

    boolean isClean() {
      return myCompileState == CompileState.CLEAN;
    }

    boolean isDirty() {
      return myCompileState == CompileState.DIRTY;
    }

    void markDirty() {
      myCompileState = CompileState.DIRTY;
    }

    void markClean() {
      myCompileState = CompileState.CLEAN;
    }

    void dependsFrom(JM other) {
      myDependencies.add(other);
    }

    Stream<JM> dependsFrom() {
      return myDependencies.stream();
    }

    CompileState compileState() {
      return myCompileState;
    }

    void setClasspath(Set<String> classpath) {
      myClasspath = classpath;
    }

    void setSourcePaths(Collection<String> allSourcePaths, /*not null*/ String classOut, @Nullable String sourceOutRoot, String sourceOutCacheRoot) {
      mySourcePaths = allSourcePaths;
      mySourcesOut = sourceOutRoot == null ? null : new File(sourceOutRoot);
      mySourcesCache = sourceOutCacheRoot == null ? null : new File(sourceOutCacheRoot);
      myClassesOut = new File(classOut);
    }

    // has to be invoked *after* #setSourcePaths()
    void setSources(JS js, KotlinCompileCacheHandler kotlinCache) {
      assert mySourcePaths != null;
      // seems fair to walk java.io.File here, not IDEA's VirtualFile or MPS IFile, as we care about actual FS state, not some cached one
      // Besides, it's tricky to get IFile with present SModule/JMF API.
      js.collectSources(mySourcePaths.stream().map(File::new));

      mySources = js;

      // Get kotlin cache and walk output
      KotlinModuleCache cache = !js.myKotlinFiles.isEmpty() && kotlinCache != null ? kotlinCache.getCache(new JvmKotlinModule(this)) : null;
      js.walkOutput(myClassesOut, cache);
    }

    @Override
    public String name() {
      return moduleReference().getModuleName();
    }

    @Override
    public SModuleReference moduleReference() {
      return myModule;
    }

    @Override
    public Collection<String> getAllSourcePaths() {
      return mySourcePaths;
    }

    @Nullable
    @Override
    public File getClassesOut() {
      return myClassesOut;
    }

    @Nullable
    public File getSourcesCache() {
      return mySourcesCache;
    }

    @Nullable
    public Set<String> getClasspath() {
      return myClasspath;
    }

    @Nullable
    @Override
    public File getSourceOut() {
      return mySourcesOut;
    }

    @Override
    public Iterable<ResourceFile> getResourcesToCopy() {
      return mySources.myResourcesToCopy;
    }

    @Override
    public boolean hasJavaToCompile() {
      return !mySources.myFilesToCompile.isEmpty();
    }

    public boolean hasKotlinToCompile() {
      return mySources.myHasKotlinFilesToCompile;
    }

    @Override
    public String toString() {
      return String.format("JM[%s]", name());
    }
  }



  // Java Sources
  private static class JS {
    private final Map<String, JavaFile> myJavaFiles = new HashMap<>();
    private final Set<File> myKotlinFiles = new HashSet<>();
    private final Map<String, ResourceFile> myResourceFiles = new HashMap<>();

    private final List<File> myFilesToDelete = new ArrayList<>();
    private final List<JavaFile> myFilesToCompile = new ArrayList<>(); // FIXME remove
    private boolean myHasKotlinFilesToCompile = false;
    private final Set<File> myKotlinCompiledFiles = new HashSet<>();
    private final List<ResourceFile> myResourcesToCopy = new ArrayList<>();

    private final Predicate<File> myIgnoredSources;
    private final Predicate<File> myIgnoredClasses;

    JS(Predicate<File> ignoredSources, Predicate<File> ignoredClasses) {
      myIgnoredSources = ignoredSources;
      myIgnoredClasses = ignoredClasses;
    }

    void collectSources(Stream<File> srcRoot) {
      // sources() expects existing directory.
      // TODO consider using nio.Files.newDirectoryStream
      srcRoot.filter(File::isDirectory).forEach(d -> sources(d, new PackagePrefix()));
    }

    private void sources(File dir, PackagePrefix packPrefix) {
      for (File f : dir.listFiles()) {
        if (isIgnoredFileInSources(f)) {
          // Initially, I didn't want to check if file is ignored as the old code used to do (FileSystem.getInstance().isFileIgnored())
          // as I didn't expect any reasonable exclude for MPS-controlled source roots. If we need to exclude some files, I expect
          // it has to me MPS-specific setting that works both in IDE and in pure environment (i.e. why would I compile differently in IDE and in ant script)
          // However, it turned out there could be files (e.g. .DS_Store on MacOS that we'd better ignore)
          continue;
        }
        final String childName = f.getName();
        if (f.isDirectory()) {
          packPrefix.push(childName);
          sources(f, packPrefix);
          packPrefix.pop();
          continue;
        }
        assert f.isFile(); // XXX don't need this assert, leave as comment not to forget continue;
        if (childName.endsWith(MPSExtentions.DOT_JAVAFILE)) {
          String fqName = packPrefix.fqnWithTail(childName.substring(0, childName.length() - MPSExtentions.DOT_JAVAFILE.length()));
          myJavaFiles.put(fqName, new JavaFile(f, fqName, f.lastModified()));
        } else if (childName.endsWith(MPSExtentions.DOT_KOTLINFILE)) {
          // Unlike java, file name does not always map to a specific class fqName -> we keep the file itself
          myKotlinFiles.add(f);
        } else if (STARTUP_PROPERTIES_FILE_NAME.equals(childName)) {
          // special case for resource file that we need to copy to CP root for discoverability,
          // as ModulePluginContributor[2] doesn't know package to look startup.properties in.
          // Indeed, this is sort of hack, as we keep knowledge about plugin subsystem impl here, but right now I don't
          // see better solution. Alternative I see is ModuleRuntime to get sort of 'bundle home' location, and perform
          // resource lookup there in addition to CP, but this might be just much more effort.
          if (myResourceFiles.containsKey(STARTUP_PROPERTIES_FILE_NAME)) {
            jetbrains.mps.logging.Logger.getLogger(ModuleMaker.class).warning("More than 1 startup.properties file per module! All but the first one are ignored.", f);
          } else {
            myResourceFiles.put(STARTUP_PROPERTIES_FILE_NAME, new ResourceFile(f, STARTUP_PROPERTIES_FILE_NAME));
          }
        } else {
          // treat others as 'resources'
          // childName may contain '.', don't replace it with '/'.
          // Besides, dir name may contain '.', too, don't replace it either.
          // XXX In fact, do I truly need '/'-separated fq path?
          // XXX why don't I track lastModified for resources?
          final String fqPath = packPrefix.pathWithTail(childName);
          myResourceFiles.put(fqPath, new ResourceFile(f, fqPath));
        }
      }
    }

    void walkOutput(File classesRoot, KotlinModuleCache cache) {
      // Search for unregistered source files (all input files are mapped in cache, even empty though .kotlin_modules)
      myHasKotlinFilesToCompile = !myKotlinFiles.isEmpty() && (cache == null || cache.processSources(myKotlinFiles));

      myFilesToCompile.clear();
      myResourcesToCopy.clear();
      myFilesToCompile.addAll(myJavaFiles.values());
      myResourcesToCopy.addAll(myResourceFiles.values());
      if (!classesRoot.exists()) {
        return;
      }

      classes(classesRoot, new PackagePrefix(), cache);

      myHasKotlinFilesToCompile |= cache != null && cache.missesOutput(myKotlinCompiledFiles);
    }

    // pre: dir.exists()
    private void classes(File dir, PackagePrefix packPrefix, KotlinModuleCache kotlinCache) {
      for (File f : dir.listFiles()) {
        if (isIgnoredFileInClasses(f)) {
          continue;
        }
        final String childName = f.getName();
        if (f.isDirectory()) {
          packPrefix.push(childName);
          classes(f, packPrefix, kotlinCache);
          packPrefix.pop();
          continue;
        }
        assert f.isFile(); // XXX don't need this assert, leave as comment not to forget continue;

        if (childName.endsWith(MPSExtentions.DOT_CLASSFILE) || childName.endsWith(MPSExtentions.DOT_KOTLINMODULE)) {
          // If the .class/.kotlin_module file is in the kotlin cache, assumes it to be compiled from kotlin
          final Collection<File> sourceFiles;
          if (kotlinCache != null && (sourceFiles = kotlinCache.getSourcesFor(f, packPrefix)) != null) {
            final long classFileLastModified = f.lastModified();

            // Check for any outdated file to mark as to compile
            myHasKotlinFilesToCompile = myHasKotlinFilesToCompile ||
                                        sourceFiles.stream()
                                                   .filter(myKotlinFiles::contains)
                                                   .anyMatch(file -> !isFileUpToDate(file.lastModified(), classFileLastModified));

            // Keep trace of compiled files (so we can remove those that are not necessary after compilation)
            myKotlinCompiledFiles.add(f);

            /*
              No need to consider the class file is issued from java/resources from there.

              Note: The current file can be deleted later on iff kotlin compiler does not output it again (this handles case of a migration from a
              kotlin class to a java class: kt .class file get deleted, java compiles the new .class file right after).
             */
            continue;
          }
          // Not in cache: fallback to checking for java files and resources
        }

        if (childName.endsWith(MPSExtentions.DOT_CLASSFILE)) {
          final String cName = childName.substring(0, childName.length() - MPSExtentions.DOT_CLASSFILE.length());
          final int ds = cName.indexOf('$');
          final boolean innerClass;
          final String fqName;
          if (ds > 0) {
            fqName = packPrefix.fqnWithTail(cName.substring(0, ds));
            innerClass = true;
          } else {
            fqName = packPrefix.fqnWithTail(cName);
            innerClass = false;
          }
          final JavaFile javaFile = myJavaFiles.get(fqName);
          if (javaFile == null) {
            myFilesToDelete.add(f);
          } else if (!innerClass && isFileUpToDate(javaFile.getLastModified(), f.lastModified())) {
            // FIXME logic traces back to 5ffdea07a0d, but as long as I don't need filesToCompile, seems fair to recognize
            //       change in any inner class as 'sources need re-compile' status
            myFilesToCompile.remove(javaFile);
          }
        } else {
          // treat others as 'resources'
          final String fqPath;
          if (STARTUP_PROPERTIES_FILE_NAME.equals(childName)) {
            // see sources(), above, for explanation of startup.properties case
            fqPath = STARTUP_PROPERTIES_FILE_NAME;
          } else {
            fqPath = packPrefix.pathWithTail(childName);
          }
          final ResourceFile rf = myResourceFiles.get(fqPath);
          if (rf == null) {
            myFilesToDelete.add(f);
          } else if (rf.getFile().lastModified() <= f.lastModified()) {
            // used to be '<', but what if I generate and compile/copy a .properties file at the same moment?
            myResourcesToCopy.remove(rf);
          }
        }
      }
    }

    private boolean isFileUpToDate(long sourceFileLastModified, long classFileLastModified) {
      if (sourceFileLastModified >= classFileLastModified) {
        return false;
      }
      // here used to be logic that looked into Dependencies (extended/used classes, serialized in 'dependencies' cache)
      return true;
    }

    private boolean isIgnoredFileInSources(File f) {
      return myIgnoredSources != null && myIgnoredSources.test(f);
    }

    private boolean isIgnoredFileInClasses(File f) {
      return myIgnoredClasses != null && myIgnoredClasses.test(f);
    }

    boolean outdatedSources() {
      return !myFilesToCompile.isEmpty() || !myResourcesToCopy.isEmpty() || !myFilesToDelete.isEmpty() || myHasKotlinFilesToCompile;
    }

    @Override
    public String toString() {
      return String.format("SRC(java %d/%d; kotlin %d%s; resources %d/%d; to delete %d)", myFilesToCompile.size(), myJavaFiles.size(), myKotlinFiles.size(), myHasKotlinFilesToCompile ? "*" : "", myResourcesToCopy.size(),
                           myResourceFiles.size(), myFilesToDelete.size());
    }
  }

  public static class BMC implements BaseModuleContainer<JM> {
    private final Collection<JM> myModules;
    BMC(Collection<JM> modules) {
      myModules = modules;
    }

    @Override
    public Stream<JM> getDirtyModules() {
      return myModules.stream();
    }

    @Override
    public Collection<Path> getCompileClasspath() {
      return getCompileClasspath(myModules, true);
    }

    /**
     * Return the classpath of a set of modules
     * @param modules modules to get the classpath from
     * @return list of paths
     */
    public static Collection<Path> getCompileClasspath(Collection<JM> modules, boolean withClassesOut) {
      HashSet<JM> seen = new HashSet<>();
      ArrayDeque<JM> queue = new ArrayDeque<>(modules);
      HashSet<Path> rv = new LinkedHashSet<>();
      do {
        final JM jm = queue.removeFirst();
        if (seen.add(jm)) {
          // classes_gen will contain some kotlin files now used for compilation
          if (withClassesOut && jm.mySources != null && !jm.mySources.myKotlinFiles.isEmpty() && jm.getClassesOut() != null) {
            rv.add(jm.getClassesOut().toPath());
          }

          if (jm.myClasspath == null) {
            System.out.printf("Module %s got no classpath!\n", jm.name());
            continue;
          }
          jm.myClasspath.stream().map(Path::of).forEach(rv::add);
          jm.dependsFrom().forEach(queue::add);
        }
      } while (!queue.isEmpty());
      return rv;
    }

    @Override
    public ModuleAnalyzerResult analyze() {
      boolean hasJavaToCompile = false;
      boolean hasKotlinToCompile = false;
      boolean hasResourcesToUpdate = false;
      Set<BaseModuleContainer.JavaModule> modulesWithRemovals = new HashSet<>();
      Set<File> filesToDelete = new HashSet<>();
      for (JM jm : myModules) {
        if (jm.mySources == null) {
          System.out.printf("Module %s got no sources!\n", jm.name());
          continue;
        }
        // !isResourcesUpToDate == (myFilesToDelete.isEmpty() && myResourcesToCopy.isEmpty())
        // XXX is it right to include files to delete into condition?
        hasResourcesToUpdate |= !jm.mySources.myResourcesToCopy.isEmpty() || !jm.mySources.myFilesToDelete.isEmpty();
        hasJavaToCompile |= !jm.mySources.myFilesToCompile.isEmpty();
        hasKotlinToCompile |= jm.hasKotlinToCompile();
        if (filesToDelete.addAll(jm.mySources.myFilesToDelete)) {
          modulesWithRemovals.add(jm);
        }
      }
      return ModuleAnalyzerResult.build(hasJavaToCompile, hasKotlinToCompile, hasResourcesToUpdate, modulesWithRemovals, filesToDelete);
    }
  }

  enum CompileState {
    CLEAN, DIRTY, UNCHECKED;
  }

  // requires model read
  public void prepare(final Collection<? extends SModule> modules, boolean forceCompile, @NotNull final ProgressMonitor monitor) {
    myToCompile = Collections.emptyList();
    final CompositeTracer tracer = new CompositeTracer(myTracer, monitor);
    tracer.start(String.format(CALCULATING_DEPENDENCIES_TO_COMPILE_MSG, modules.size()), 10);
    final Predicate<SModule> isExcluded = ModuleMaker::isExcluded;
    MC initial = newModuleChunk();
    for (SModule m : modules.stream().filter(isExcluded.negate()).collect(Collectors.toList())) {
      JM jm = initial.createJM(m);
    }
    if (initial.isEmpty()) {
      // report "nothing to make"
      return;
    }

    // depJM - one of requested modules depend on a module which is not among requested. we keep these targets in depJM
    MC depJM = newModuleChunk();
    for (JM jm : initial.allJavaModules()) {
      // we walk each model once, no reason to reuse new BLDependenciesCache() instance
      final BLDependenciesCache depCache = myDependenciesCache == null ? new BLDependenciesCache() : myDependenciesCache;
      Collection<SModule> deps = initial.walkDependencies(jm, depCache);
      for (SModule d : deps) {
        if (d.getFacet(JavaModuleFacet.class) == null) {
          // we may depend on deployed modules that got classesGen == null, ModulesContainer.isExcluded would give wrong result here
          continue;
        }
        // FIXME JMF != null might not be enough, seems that jmf.getCompile().isCompiled() better reflects the idea here.
        JM djm = initial.findJM(d);
        // if forceCompile, don't need to record dependencies outside? Guess, still needs them.
        // else, make(M1,M2), M1 -> [M2, M3]; M1 & M2 clean, but M3 isDirty ==> I'd like to compile M1 then
        if (djm == null) {
          djm = depJM.findJM(d);
          if (djm == null) {
            djm = depJM.createJM(d);
          }
        }
        jm.dependsFrom(djm);
      }
    }
    // very ineffective per-module activity to collect transitive dependencies. However, we need to fill dependencies of each module independently
    // to get a tailored classpath.
    // XXX don't want to create another MC, hence protective copy of allJavaModules(), we modify depJM inside the loop
    for (JM dep : new ArrayList<>(depJM.allJavaModules())) {
      for (SModule trdep : depJM.transitiveCompileDepsHack(dep)) {
        if (initial.findJM(trdep) != null) {
          // just in case, not to create dependency loop
          continue;
        }
        JM trjm = depJM.findJM(trdep);
        if (trjm == dep) {
          // transitiveCompileDepsHack result is inclusive, don't need dependency to self
          continue;
        }
        if (trdep.getFacet(JavaModuleFacet.class) == null) {
          // GMDM from transitiveCompileDepsHack() doesn't filter modules, while subsequent calculateClasspath() expects JMF presence
          continue;
        }
        if (trjm == null) {
          trjm = depJM.createJM(trdep);
        }
        dep.dependsFrom(trjm);
      }
    }
    MC withDeps = newModuleChunk();
    // by design, initial doesn't intersect with depJM
    withDeps.addAll(initial);
    withDeps.addAll(depJM);
    if (forceCompile) {
      initial.allJavaModules().forEach(JM::markDirty);
      depJM.allJavaModules().forEach(JM::markClean); // alternatively, may check "belongs to initial" in addition to isClean, below
    } else {
      // detect dirty modules only
      // walk graph of JMs
      if (!withDeps.needsCompile(initial)) {
        // FIXME report "nothing to make"
        tracer.done(); // XXX move to finally{}?
        return;
      }
    }
    // XXX may compile classpath for each JM, not only dirty, CP for a dirty module needs CP of its dependencies.
    withDeps.calculateClasspath();
    // some dirty modules got sources while we walked for needsCompile(), some got their dirty state derived
    // or forced (i.e. forceCompile). Make sure all dirty modules (we're going to compile these) get sources initialized:
    final Predicate<JM> isDirty = JM::isDirty;
    // XXX perhaps, shall evaluate sources for initial modules first, to get isDirty for them
    //   in a way similar to legacy MM?
    initial.allJavaModules().stream().filter(isDirty).forEach(initial::evaluateSources);
    withDeps.abandonModelRead(); // don't need SModule any longer
    // Build clusters that contain both clean and dirty, and then remove clean from the final cluster:
    //   cycle C -> B -> A -> C; make(A,C) without B, won't notice A and C are in the cycle.
    List<List<JM>> components = new ArrayList<>(withDeps.scc());
    // Important, have to remove !isDirty, rather than isClean(). There could be UNCHECKED modules
    // coming from dependencies we don't care to compile, i.e. make(A), A -> B, C; B is dirty, we derived
    // A dirty state from B, and never queried C.
    // However, (see XXX 2 lines below), C might depend on A (cycle), do I care to re-compile it then, too?
    components.forEach(l -> l.removeIf(isDirty.negate()));
    components.removeIf(List::isEmpty);
    // XXX shall I remove those JM in components that are not part of 'initial' set?
    //     If I derive 'dirty' for B in the aforementioned example, do I want to exclude it from compile or not - it was not requested
    //     but as long as it's part of the cycle, its recompilation might be necessary
    //     However, we don't collect dependencies for modules not in 'initial' set, modules in depJM could not be compiled as their
    //     classpath would include their classes_gen (or respective jar) only.
    //     Another thought: initial MC doesn't contain read-only, source-less modules, which may show up in dependencies,
    //     if I rely on isDirty and !isDirty, wouldn't initial.contains() work better?
    for (List<JM> cycle : components) {
      Predicate<JM> inInitial = initial.allJavaModules()::contains;
      Optional<JM> first = cycle.stream().filter(inInitial.negate()).findFirst();
      if (first.isPresent()) {
        String cycleInfo;
        if (cycle.size() > 1) {
          cycleInfo = String.format("; cycle: %s", cycle.stream().map(JM::name).collect(Collectors.joining(",")));
        } else {
          cycleInfo = "";
        }
        myTracer.getSender().warn(String.format("Module %s from dependencies requires compilation%s", first.get().name(), cycleInfo), first.get().moduleReference());
      }
    }
    components.forEach(l -> l.retainAll(initial.allJavaModules()));
    components.removeIf(List::isEmpty);

    for (List<JM> cc : components) {
      myTracer.getSender().debug(String.format("Cycle of %d modules", cc.size()));
      for (JM x : cc) {
        myTracer.getSender().debug(String.format("\t%s", x.name()));
        myTracer.getSender().debug(String.format("\t\t%s", x.myDependencies.stream().map(JM::name).collect(Collectors.toList())));
        myTracer.getSender().debug(String.format("\t\t%s  JS:%s", x.compileState(), x.mySources));
        myTracer.getSender().debug(String.format("\t\t%s\n", x.myClasspath));
      }
    }
    tracer.done();
    myToCompile = components;
  }

  private List<List<JM>> myToCompile;

  @TestOnly
  /*package*/ List<List<JM>> toCompile() {
    return myToCompile;
  }

  // doesn't need model read, deals with what #prepare() got ready
  @NotNull
  public MPSCompilationResult make(@NotNull final ProgressMonitor monitor) {
    final CompositeTracer tracer = new CompositeTracer(myTracer, monitor);
    tracer.start(String.format(BUILDING_MODULES_MSG, myToCompile.size()), 10);
    try {
      return compileCycles2(tracer.subTracer(9, SubProgressKind.REPLACING));
    } catch (Exception ex) {
      String m = String.format("Unexpected exception '%s', compilation aborted!", ex.getMessage() == null ? ex.getClass().getName() : ex.getMessage());
      tracer.getSender().error(m, ex);
      return new MPSCompilationResult(1, 0, true, Collections.emptySet());
    } finally {
      tracer.done();
      tracer.printReport();
    }
  }

  private MPSCompilationResult compileCycles2(CompositeTracer tracer) {
    List<MPSCompilationResult> cycleCompilationResults = new ArrayList<>();
    tracer.start("Cycles", myToCompile.size());

    KotlinCompilerRunner kotlinCompilerRunner = null;

    try (JavaCompilerImpl jc = decideOnActualCompiler(tracer.getSender())) {
      int cycleNumber = 0;
      for (List<JM> cc : myToCompile) {
        if (tracer.isMonitorCanceled()) {
          break;
        }
        ++cycleNumber;
        CompositeTracer cycleTracer = tracer.subTracer(1, SubProgressKind.REPLACING);
        tracer.getSender().info(String.format(CYCLE_FORMAT_MSG, cycleNumber, cc.stream().map(JM::name).collect(Collectors.joining(","))));
        cycleTracer.start(getCycleString(cycleNumber, cc), 2);
        BaseModuleContainer<JM> modulesContainer = new BMC(cc);

        // Analysis, resources file copy and deletion of marked files
        final CompositeTracer subTrace = cycleTracer.subTracer(1, SubProgressKind.AS_COMMENT);
        final ModuleAnalyzerResult analysisResult = jc.analyze(modulesContainer, subTrace);

        // Kotlin compilation
        final CompositeTracer kotlinSubTracer = cycleTracer.subTracer(1, SubProgressKind.AS_COMMENT);
        if (analysisResult.hasKotlinToCompile) {
          if (kotlinCompilerRunner == null) {
            final JavaVersion javaVersion = myCompilerOptions == null || myCompilerOptions.getTargetJavaVersion() == null
                                   ? JavaCompilerOptionsComponent.DEFAULT_JAVA_VERSION
                                   : myCompilerOptions.getTargetJavaVersion();
            kotlinCompilerRunner = new JvmKotlinCompilerRunner(javaVersion, myTracer, myKotlinCompilerOptions);
          }

          kotlinSubTracer.start(KOTLIN_COMPILE_MSG, 1);
          var kotlinResult = compileKotlin(kotlinCompilerRunner, modulesContainer);
          cycleCompilationResults.add(kotlinResult);
          kotlinSubTracer.done();

          // Error while compiling Kotlin, should not proceed to compile Java as it can bring confusion
          if (!kotlinResult.isOk()) {
            cycleTracer.done();
            continue;
          }
        }

        // Java compilation
        final MPSCompilationResult cycleCompilationResult = jc.compile(modulesContainer, subTrace, analysisResult);
        cycleCompilationResults.add(cycleCompilationResult);
        cycleTracer.done(0);
      }
    } finally {
      tracer.done();
      if (kotlinCompilerRunner != null) {
        kotlinCompilerRunner.close();
      }
    }
    return combineCycleCompilationResults(cycleCompilationResults);
  }

  private MPSCompilationResult compileKotlin(KotlinCompilerRunner runner, BaseModuleContainer<JM> container) {
    final var modules = container.getDirtyModules().filter(JM::hasKotlinToCompile).map(JvmKotlinModule::new).collect(Collectors.toList());

    // Link all kotlin source files to their module (to trace back output files to module)
    var moduleByInputFile = new HashMap<File, KotlinModule>();
    modules.forEach(module ->
      module.getJm().mySources.myKotlinFiles.forEach(file -> moduleByInputFile.put(file, module))
    );

    // Do the actual compilation
    final var compilationOutput = runner.doCompile(modules, moduleByInputFile);

    // Get the inputs-per-output mapping per module
    final var outputFiles = compilationOutput.getOutputFiles();

    modules.forEach(module -> {
      if (outputFiles.containsKey(module)) {
        // Existing .class file before compilation
        final Set<File> previous = new HashSet<>(module.getJm().mySources.myKotlinCompiledFiles);
        // Map of new .class files -> list of input files
        final Map<File, List<File>> current = outputFiles.get(module);

        // Remove current output files from the previous list, and delete those remaining
        previous.removeAll(current.keySet());
        previous.forEach(File::delete);

        // Current now contains all the new files -> declare to cache provider if needed
        if (myKotlinCacheHandler != null) {
          myKotlinCacheHandler.addOutput(module, current);
        }
      } else if (compilationOutput.getCompilationResult().isOk()) {
        // No output files on successful compilation -> all existing kotlin output files must be removed
        // TODO can that actually happens? (those files are marked as to compile)
        module.getJm().mySources.myKotlinCompiledFiles.forEach(File::delete);
      }
    });

    return compilationOutput.getCompilationResult();
  }

  private String getCycleString(int cycleNumber, Collection<? extends BaseModuleContainer.JavaModule> modulesInCycle) {
    Optional<? extends BaseModuleContainer.JavaModule> first = modulesInCycle.stream().findFirst();
    String firstModule = "";
    if (first.isPresent()) {
      firstModule = first.get().name();
      if (modulesInCycle.size() > 1) {
        firstModule += " and " + (modulesInCycle.size() - 1) + " others";
      }
    }
    return String.format(CYCLE_FORMAT_MSG, cycleNumber, firstModule);
  }

  @NotNull
  private JavaCompilerImpl decideOnActualCompiler(MessageSender sender) throws IllegalStateException {
    JavaCompiler jcImpl;
    if (myExplicitRequestECJ) {
      jcImpl = JavaCompilerImpl.eclipseCompiler();
    } else {
      if (RuntimeFlags.useEclipseJavaCompiler()) {
        try {
          jcImpl = JavaCompilerImpl.eclipseCompiler();
        } catch (Exception ex) {
          sender.warn("ECJ requested, but no appropriate javax.tools.JavaCompiler implementation found", null);
          jcImpl = JavaCompilerImpl.defaultCompiler();
        }
      } else {
        jcImpl = JavaCompilerImpl.defaultCompiler();
      }
    }
    final JavaCompilerOptions co = myCompilerOptions == null ? JavaCompilerOptionsComponent.DEFAULT_JAVA_COMPILER_OPTIONS : myCompilerOptions;
    return new JavaCompilerImpl(new File(System.getProperty("java.home")), co, jcImpl);
  }

  @NotNull
  private MPSCompilationResult combineCycleCompilationResults(List<MPSCompilationResult> results) {
    int errorCount = 0;
    int warnCount = 0;
    Set<SModuleReference> changedModules = new HashSet<>();
    for (MPSCompilationResult result : results) {
      errorCount += result.getErrorsCount();
      warnCount += result.getWarningsCount();
      changedModules.addAll(result.getAffectedModules());
    }
    return new MPSCompilationResult(errorCount, warnCount, false, changedModules);
  }

  // XXX revisit. Use of the method in 2 different scenarios, to clean generated classes and to build a set of modules for compilation
  //    indeed, we compile modules with Compile.MPS, but I suspect we can use modules with Compile.External in classpath.
  //    However, seems that isExcluded is for initial set of modules, and for their dependencies we make no distinction, just check JMF is there
  /*package*/ static boolean isExcluded(@NotNull SModule m) {
    JavaModuleFacet facet = m.getFacet(JavaModuleFacet.class);
    return m.isReadOnly() || facet == null || facet.getClassesGen() == null || facet.getCompile() != Compile.MPS;
  }
}
