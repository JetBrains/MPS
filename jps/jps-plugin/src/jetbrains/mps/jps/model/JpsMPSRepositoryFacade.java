/*
 * Copyright 2003-2024 JetBrains s.r.o.
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
package jetbrains.mps.jps.model;

//import jetbrains.mps.baseLanguage.search.MPSBaseLanguage;
import jetbrains.mps.core.platform.Platform;
import jetbrains.mps.core.platform.PlatformFactory;
import jetbrains.mps.core.platform.PlatformOptionsBuilder;
import jetbrains.mps.extapi.module.SRepositoryExt;
import jetbrains.mps.idea.core.make.MPSMakeConstants;
import jetbrains.mps.idea.core.module.CachedModuleData;
import jetbrains.mps.idea.core.module.CachedRepositoryData;
import jetbrains.mps.jps.build.MPSCompilerUtil;
import jetbrains.mps.jps.persistence.CachedDefaultModelRoot;
import jetbrains.mps.jps.persistence.CachedJavaClassStubsModelRoot;
import jetbrains.mps.jps.project.JpsLibSolution;
import jetbrains.mps.jps.project.JpsMPSProject;
import jetbrains.mps.jps.project.JpsSolutionIdea;
import jetbrains.mps.library.ModulesMiner;
import jetbrains.mps.library.ModulesMiner.ModuleHandle;
import jetbrains.mps.persistence.DefaultModelRoot;
import jetbrains.mps.persistence.PersistenceRegistry;
import jetbrains.mps.project.ModuleId;
import jetbrains.mps.project.Solution;
import jetbrains.mps.project.facets.JavaModuleFacet;
import jetbrains.mps.project.facets.JavaModuleFacetImpl;
import jetbrains.mps.project.structure.model.ModelRootDescriptor;
import jetbrains.mps.project.structure.modules.SolutionDescriptor;
import jetbrains.mps.smodel.MPSModuleOwner;
import jetbrains.mps.smodel.ModuleRepositoryFacade;
import jetbrains.mps.util.io.ModelInputStream;
import jetbrains.mps.vfs.IFile;
import jetbrains.mps.vfs.IFileSystem;
import jetbrains.mps.vfs.VFSManager;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.jps.incremental.CompileContext;
import org.jetbrains.jps.incremental.messages.BuildMessage.Kind;
import org.jetbrains.jps.incremental.messages.CompilerMessage;
import org.jetbrains.jps.model.JpsProject;
import org.jetbrains.jps.model.java.JpsJavaSdkType;
import org.jetbrains.jps.model.library.JpsLibrary;
import org.jetbrains.jps.model.module.JpsDependencyElement;
import org.jetbrains.jps.model.module.JpsModule;
import org.jetbrains.jps.model.module.JpsSdkDependency;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.module.SModule;
import org.jetbrains.mps.openapi.persistence.ModelRoot;
import org.jetbrains.mps.openapi.persistence.ModelRootFactory;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;

/**
 * evgeny, 12/3/12
 */
public class JpsMPSRepositoryFacade implements MPSModuleOwner {

  private static final JpsMPSRepositoryFacade INSTANCE = new JpsMPSRepositoryFacade();
  public static final UUID JDK_UUID = UUID.fromString("6354ebe7-c22a-4a0f-ac54-50b52ab9b065");

  private Platform myPlatform;
  private volatile Status myStatus = Status.UNINITIALIZED;
  private CachedRepositoryData myRepo;
  private Map<JpsModule, JpsSolutionIdea> myJpsToMpsModules = new HashMap<JpsModule, JpsSolutionIdea>();
  private JpsMPSProject myProject;
  private SRepositoryExt myRepository;

  public JpsMPSRepositoryFacade() {
  }

  public static JpsMPSRepositoryFacade getInstance() {
    return INSTANCE;
  }

  public void init(final CompileContext context) {
    switch (myStatus) {
      case INITIALIZED: return;
      case ERROR:   throw new IllegalStateException("Invalid status " + myStatus);
      case UNINITIALIZED: // ok, fall-through
      case DISPOSED: // also ok, fall-through
    }
    initMPS();

    myProject = new JpsMPSProject(context.getProjectDescriptor().getProject(), myPlatform);
    myRepository = (SRepositoryExt) myProject.getRepository();

    myRepository.getModelAccess().runWriteAction(new Runnable() {
      @Override
      public void run() {
        try {
          long start = System.nanoTime();
          initRepository(context,
                         context.getBuilderParameter(MPSMakeConstants.MPS_LANGUAGES.toString()),
                         context.getBuilderParameter(MPSMakeConstants.MPS_REPOSITORY.toString()));

          initProject(context);

          if (MPSCompilerUtil.isTracingMode()) {
            context.processMessage(
                new CompilerMessage(MPSMakeConstants.BUILDER_ID, Kind.INFO, String.format("MPS loaded in %d ms", (System.nanoTime() - start) / 1000000)));
          }
        } catch (Throwable ex) {
          context.processMessage(CompilerMessage.createInternalBuilderError(MPSMakeConstants.BUILDER_ID, ex));
          myStatus = Status.ERROR;
          throw new IllegalStateException("Failed to initialize", ex);
        }
        myStatus = Status.INITIALIZED;
      }
    });
  }

  public JpsMPSProject getProject() {
    return myProject;
  }

  public JpsSolutionIdea getSolution(JpsModule module) {
    if (myStatus != Status.INITIALIZED) throw new IllegalStateException("Not initialized yet");
    return myJpsToMpsModules.get(module);
  }


  private void initRepository(CompileContext context, String languages, String repoFile) {
    final ModuleRepositoryFacade repoFacade = new ModuleRepositoryFacade(myRepository);
    final Collection<ModuleHandle> modules2load;

    if (repoFile != null) {
      File f = new File(repoFile);
      try (ModelInputStream mos = new ModelInputStream(new FileInputStream(f))) {
        long start = System.nanoTime();
        myRepo = CachedRepositoryData.load(mos);
        if (MPSCompilerUtil.isTracingMode()) {
          context.processMessage(new CompilerMessage(MPSMakeConstants.BUILDER_ID, Kind.INFO, String.format("read %d cached modules in %d ms", myRepo.getModules().size(), (System.nanoTime() - start) / 1000000)));
        }

        // use optimized implementation of default model root
        final PersistenceRegistry persistenceRegistry = myPlatform.findComponent(PersistenceRegistry.class);
        final ModelRootFactory originalDefaultModelRootFactory = persistenceRegistry.getModelRootFactory(PersistenceRegistry.DEFAULT_MODEL_ROOT);
        persistenceRegistry.setModelRootFactory(PersistenceRegistry.DEFAULT_MODEL_ROOT, new ModelRootFactory() {
          @NotNull
          @Override
          public ModelRoot create() {
            // I know it's not nice to assume specific instance to come from the factory, but I don't like this CachedDefaultModelRoot anyway
            // First, I'm not sure we earn that much with it (we save fs walk at the price of limited set of supported models).
            // Second, even if we do save a lot, I'd rather avoid use of ModelRoot at all, and just feed models into SModule (or use custom MR type and
            // serialize models I can not recognize (custom persistence) in a supported format, e.g. binary).
            return new CachedDefaultModelRoot(myRepo, (DefaultModelRoot) originalDefaultModelRootFactory.create());
          }
        });

        persistenceRegistry.setModelRootFactory(PersistenceRegistry.JAVA_CLASSES_ROOT, new ModelRootFactory() {
          @NotNull
          @Override
          public ModelRoot create() {
            return new CachedJavaClassStubsModelRoot(myRepo);
          }
        });

        modules2load = new ArrayList<>(myRepo.getModules().size());
        for (CachedModuleData data : myRepo.getModules()) {
          modules2load.add(data.getHandle());
        }
      } catch (IOException e) {
        context.processMessage(new CompilerMessage(MPSMakeConstants.BUILDER_ID, Kind.ERROR, CompilerMessage.getTextFromThrowable(e)));
        context.processMessage(new CompilerMessage(MPSMakeConstants.BUILDER_ID, Kind.WARNING, "cannot load cache, no MPS languages have been initialized"));
        return;
      }
    } else if (languages != null) {
      final long start = System.nanoTime();
      List<IFile> filesToLoad = new ArrayList<>();
      final IFileSystem localFS = myPlatform.findComponent(VFSManager.class).getFileSystem(VFSManager.FILE_FS);
      for (String path : languages.split(";")) {
        IFile ipath = localFS.getFile(path);
        filesToLoad.add(ipath);
      }
      // as long as we use local FS (assume to be backed up by java.io.File), FileRefresh doesn't make any sense (worth for IDEA VFS only)
      // new FileRefresh(filesToLoad).run();
      ModulesMiner modulesMiner = new ModulesMiner(myPlatform);
      for (IFile ipath : filesToLoad) {
        modulesMiner.collectModules(ipath);
      }
      modules2load = modulesMiner.getCollectedModules();

      if (MPSCompilerUtil.isTracingMode()) {
        context.processMessage(new CompilerMessage(MPSMakeConstants.BUILDER_ID, Kind.INFO, String.format("discovered %d modules in %d ms", modules2load.size(), (System.nanoTime() - start) / 1000000)));
      }
    } else {
      context.processMessage(new CompilerMessage(MPSMakeConstants.BUILDER_ID, Kind.WARNING, "cannot start MPS, no repository provided"));
      return;
    }

    final long start = System.nanoTime();
    for (ModuleHandle moduleHandle : modules2load) {
      final SModule m = repoFacade.instantiate(moduleHandle.getDescriptor(), moduleHandle.getFile());
      myRepository.registerModule(m, this);
    }

    if (MPSCompilerUtil.isTracingMode()) {
      context.processMessage(new CompilerMessage(MPSMakeConstants.BUILDER_ID, Kind.INFO, String.format("instantiated %s modules in %d ms", modules2load.size(), (System.nanoTime() - start) / 1000000)));
    }
  }

  private void initProject(CompileContext context) {
    long start = System.nanoTime();

    JpsProject jpsProject = context.getProjectDescriptor().getProject();

    Set<JpsLibrary> processedSdks = new HashSet<JpsLibrary>();

    JpsLibrary jdk = null;
    for (JpsModule mod : jpsProject.getModules()) {
      JpsMPSModuleExtension extension = JpsMPSExtensionService.getInstance().getExtension(mod);

      if (extension == null) {
        continue;
      }

      if (MPSCompilerUtil.isTracingMode()) {
        context.processMessage(new CompilerMessage(MPSMakeConstants.BUILDER_ID, Kind.INFO, "Creating solution for " + mod.getName()));
      }

      SolutionDescriptor descriptor = extension.getConfiguration().newSolutionDescriptor();
      descriptor.setNamespace(mod.getName());
      MPSCompilerUtil.debug(context, "UUID " + descriptor.getId());

      JpsSolutionIdea module = new JpsSolutionIdea(mod, descriptor, context);
      myProject.addModule(module);
      module.updateModelsSet();

      myJpsToMpsModules.put(mod, module);

      // let's handle module sdkLib
      for (JpsLibrary sdk: getModuleSdks(mod, context)) {
        MPSCompilerUtil.debug(context, "SDK name" + sdk.getName() + " type: " + sdk.getType());

        Solution sdkSolution = createLibSolution(sdk, jdk, context);
        Solution regSolution = myRepository.registerModule(sdkSolution, myProject);
        MPSCompilerUtil.debug(context, "SDK " + regSolution.getModuleReference().toString());
        if (sdkSolution == regSolution) {
          MPSCompilerUtil.debug(context, "SDK updating model set for " + sdk.getName());
          sdkSolution.updateModelsSet();
        }

        if (JpsJavaSdkType.INSTANCE.equals(sdk.getType()) && !processedSdks.contains(sdk)) {
          jdk = jdk != null ? jdk : sdk;
          processedSdks.add(sdk);
        }
      }
    }

    if (processedSdks.size() > 1) {
      context.processMessage(new CompilerMessage(MPSMakeConstants.BUILDER_ID, Kind.ERROR, "Different SDKs in modules with MPS facets are not supported"));
    }

    // maybe libraries should be put into repository before modules, so that SolutionIdea already has its dependencies at hand

    for (JpsLibrary jpsLib : jpsProject.getLibraryCollection().getLibraries()) {
      Solution libSolution = createLibSolution(jpsLib, jdk, context);
      Solution regSolution = myRepository.registerModule(libSolution, myProject);
      MPSCompilerUtil.debug(context, "LIB " + regSolution.getModuleReference().toString());
      if (libSolution == regSolution) {
        MPSCompilerUtil.debug(context, "LIB updating model set for " + jpsLib.getName());
        libSolution.updateModelsSet();
      }
      if (MPSCompilerUtil.isExtraTracingMode()) {
        for (SModel desc : regSolution.getModels()) {
          MPSCompilerUtil.debug(context, "LIB model " + desc.getName());
        }
      }
    }

    if (MPSCompilerUtil.isTracingMode()) {
      context.processMessage(new CompilerMessage(MPSMakeConstants.BUILDER_ID, Kind.INFO, "Project modules loaded in " + (System.nanoTime() - start) / 1000000 + " ms"));

      if (MPSCompilerUtil.isExtraTracingMode()) {
        for (SModule m : myProject.getProjectModules()) {
          // FIXME we never get here as though we register libSolution with myProject as owner, we do not add the module to the project, hence myProject.getProjectModules gives nothing
          //       I don't want to address this right now as we report libraries anyway with the code above, and I don't see reason to duplicate this info
          context.processMessage(new CompilerMessage(MPSMakeConstants.BUILDER_ID, Kind.INFO, "Debug output: module " + m.getModuleReference().toString()));

          for (SModel d : m.getModels()) {
            context.processMessage(new CompilerMessage(MPSMakeConstants.BUILDER_ID, Kind.INFO, "Debug output: model " + d.getName() + " / " + d.getReference().toString()));
            // It makes model loading non-lazy and kills the whole thing if stubs are built for everything (like SDK, libs, etc)
  //          for (SNode n : d.getRootNodes()) {
  //            context.processMessage(new CompilerMessage(MPSMakeConstants.BUILDER_ID, Kind.INFO, "node: " + n.getName() + " id: " + n.getSNodeId().toString()));
  //            if (n.getName().equals("PsiListener") || n.getName().equals("PsiChangesWatcher")) {
  //              for (SNode n2 : n.getChildren()) {
  //                context.processMessage(new CompilerMessage(MPSMakeConstants.BUILDER_ID, Kind.INFO, "child: " + n2.getName() + " id: " + n2.getSNodeId().toString()));
  //              }
  //            }
  //          }
          }
        }
      }
    }
  }

  private Solution createLibSolution(JpsLibrary lib, JpsLibrary jdk, CompileContext ctx) {
    String name = lib.getName();
    SolutionDescriptor desc = new SolutionDescriptor();
    desc.setNamespace(name);

    if (JpsJavaSdkType.INSTANCE.equals(lib.getType()) && jdk == null) {
      ModuleId jdkId = ModuleId.regular(JDK_UUID);
      desc.setId(jdkId);

      SModule existingModule = myRepository.getModule(jdkId);
      if (existingModule != null) {
        desc.setNamespace(existingModule.getModuleName());
        JavaModuleFacet facet = existingModule.getFacet(JavaModuleFacet.class);
        assert facet != null;
        desc.getModuleFacetDescriptors().add(JavaModuleFacetImpl.forJavaCodeModule(facet));

        if (existingModule instanceof Solution) {
          for (ModelRootDescriptor mdr : ((Solution) existingModule).getModuleDescriptor().getModelRootDescriptors()) {
            ModelRootDescriptor newMdr = new ModelRootDescriptor(mdr.getType(), mdr.getMemento().copy());
            desc.getModelRootDescriptors().add(newMdr);
          }
        }

        // XXX here used to be a check not to unregister from owner == this, but as long as it was commented out, just
        // use a method that unregisters from all owners at once.
        new ModuleRepositoryFacade(myRepository).unregisterModule(existingModule);

        // Avoid loading roots from JpsLibrary, as its COMPILED roots seem to be empty (at least in tests)
        return new Solution(desc, null);
      }
    }
    desc.setId(ModuleId.foreign(name));
    return new JpsLibSolution(desc, lib, jdk, ctx, myPlatform.findComponent(VFSManager.class));
  }


  private List<JpsLibrary> getModuleSdks(JpsModule module, CompileContext ctx) {
    List<JpsLibrary> sdks = new ArrayList<JpsLibrary>();
    for (JpsDependencyElement dep : module.getDependenciesList().getDependencies()) {
      if (!(dep instanceof JpsSdkDependency)) continue;
      JpsLibrary lib = ((JpsSdkDependency) dep).resolveSdk();
      if (lib != null) {
        sdks.add(lib);
      }
    }
    return sdks;
  }

  public void dispose() {
    if (myStatus == Status.DISPOSED) {
      return;
    }
    myRepository.getModelAccess().runWriteAction(new Runnable() {
      @Override
      public void run() {
        new ModuleRepositoryFacade(myRepository).unregisterModules(myProject);
        myProject.dispose();
        myJpsToMpsModules.clear();
        myRepo = null;
      }
    });
    disposeMPS();
    myStatus = Status.DISPOSED;
  }


  private void initMPS() {
    myPlatform = PlatformFactory.initPlatform(PlatformOptionsBuilder.ALL);
    // FIXME what's this for?
//    myPlatform.install(new MPSBaseLanguage());
  }

  private void disposeMPS() {
    myPlatform.dispose();
  }

  @Override
  public boolean isHidden() {
    return true;
  }

  enum Status {
    UNINITIALIZED,
    INITIALIZED,
    DISPOSED,
    ERROR
  }
}
