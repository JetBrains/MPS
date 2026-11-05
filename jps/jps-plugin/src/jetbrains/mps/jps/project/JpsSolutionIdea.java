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
package jetbrains.mps.jps.project;

import com.intellij.openapi.util.io.FileUtil;
import jetbrains.mps.extapi.persistence.FileDataSource;
import jetbrains.mps.idea.core.project.JpsModelRootContributor;
import jetbrains.mps.jps.build.MPSCompilerUtil;
import jetbrains.mps.jps.model.JpsMPSRepositoryFacade;
import jetbrains.mps.logging.Logger;
import jetbrains.mps.module.PersistenceContextImpl;
import jetbrains.mps.module.SDependencyImpl;
import jetbrains.mps.persistence.FilePerRootDataSource;
import jetbrains.mps.project.AbstractModule;
import jetbrains.mps.project.ModuleId;
import jetbrains.mps.project.Solution;
import jetbrains.mps.project.structure.model.ModelRootDescriptor;
import jetbrains.mps.project.structure.modules.ModuleDescriptor;
import jetbrains.mps.project.structure.modules.SolutionDescriptor;
import jetbrains.mps.util.MacroHelper.MacroNoHelper;
import jetbrains.mps.vfs.IFile;
import jetbrains.mps.vfs.VFSManager;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.jps.incremental.CompileContext;
import org.jetbrains.jps.model.java.JpsJavaSdkType;
import org.jetbrains.jps.model.library.JpsLibrary;
import org.jetbrains.jps.model.module.JpsDependencyElement;
import org.jetbrains.jps.model.module.JpsLibraryDependency;
import org.jetbrains.jps.model.module.JpsModule;
import org.jetbrains.jps.model.module.JpsModuleDependency;
import org.jetbrains.jps.model.module.JpsSdkDependency;
import org.jetbrains.jps.service.JpsServiceManager;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.module.SDependency;
import org.jetbrains.mps.openapi.module.SDependencyScope;
import org.jetbrains.mps.openapi.persistence.DataSource;
import org.jetbrains.mps.openapi.persistence.ModelRoot;
import org.jetbrains.mps.openapi.persistence.ModelRootFactory;
import org.jetbrains.mps.openapi.persistence.ModulePersistenceContext;
import org.jetbrains.mps.openapi.persistence.PersistenceFacade;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicReference;

/**
 * danilla 12/10/12
 */
public class JpsSolutionIdea extends Solution {
  private final static Logger LOG = Logger.getLogger(AbstractModule.class);

  private final JpsModule myModule;
  private Set<ModelRoot> myContributedModelRoots;
  private final CompileContext myCompileContext;
  private final AtomicReference<Map<String, SModel>> myPathToModel = new AtomicReference<Map<String, SModel>>();
  private final IFile myOutputRoot;

  // FIXME JpsMPSProject argument is a hack, pretty much as JpsSolutionIdea itself, get rid of this code
  public JpsSolutionIdea(@NotNull JpsModule module, SolutionDescriptor descriptor, CompileContext compileCtx, JpsMPSProject project) {
    super(descriptor, null);
    myModule = module;
    myCompileContext = compileCtx;
    // logic in AM doesn't work for output root as it needs FS to resolve sd.outputRoot string, and if module doesn't have descriptor file,
    // there's nothing to take FileSystem from.
    if (descriptor != null && descriptor.getOutputRoot() != null) {
      myOutputRoot = project.getComponent(VFSManager.class).getFileSystem(VFSManager.FILE_FS).getFile(descriptor.getOutputRoot());
    } else {
      myOutputRoot = null;
    }
  }

  @Override
  public @Nullable IFile getOutputPath() {
    return myOutputRoot;
  }

  public SModel getModelByPath(String path) {
    Map<String, SModel> map = myPathToModel.get();
    if (map != null) {
      return map.get(path);
    }

    map = new HashMap<String, SModel>();
    for (SModel m : getModels()) {
      DataSource source = m.getSource();
      if (source instanceof FileDataSource) {
        String p = ((FileDataSource) source).getFile().getPath();
        p = FileUtil.toCanonicalPath(p);
        map.put(p, m);
      } else if(source instanceof FilePerRootDataSource) {
        String p = ((FilePerRootDataSource) source).getFolder().findChild(".model").getPath();
        p = FileUtil.toCanonicalPath(p);
        map.put(p, m);
      }
    }

    myPathToModel.compareAndSet(null, map);
    return map.get(path);
  }

  @Override
  public boolean isPackaged() {
    return false;
  }

  @Override
  public Iterable<SDependency> getDeclaredDependencies() {
    List<SDependency> dependencies = new ArrayList<SDependency>();

    MPSCompilerUtil.debug(myCompileContext, "^^^^ getDependencies for " + myModule.getName());

    for (JpsDependencyElement jpsDep : myModule.getDependenciesList().getDependencies()) {

      Solution solution = null;

      if (jpsDep instanceof JpsModuleDependency) {
        JpsModule jpsModule = ((JpsModuleDependency) jpsDep).getModule();
        solution = JpsMPSRepositoryFacade.getInstance().getSolution(jpsModule);

      } else if (jpsDep instanceof JpsLibraryDependency) {

        MPSCompilerUtil.debug(myCompileContext, "**** lib dep: " + ((JpsLibraryDependency) jpsDep).getLibraryReference().getLibraryName());

        JpsLibrary lib = ((JpsLibraryDependency) jpsDep).getLibrary();
        if (lib == null) {
          MPSCompilerUtil.debug(myCompileContext, "**** not found lib dep: " + ((JpsLibraryDependency) jpsDep).getLibraryReference().getLibraryName());
        } else {
          String name = lib.getName();
          solution = (Solution) getRepository().getModule(ModuleId.foreign(name));
        }

      } else if (jpsDep instanceof JpsSdkDependency) {

        MPSCompilerUtil.debug(myCompileContext, "**** jdk dep: " + ((JpsSdkDependency) jpsDep).getSdkReference().getSdkName());

        if (((JpsSdkDependency) jpsDep).getSdkType().equals(JpsJavaSdkType.INSTANCE)) {
          // do nothing, since we store SDK with a special module id (JDK module id, which is pulled in by use baseLanguage)
          // FIXME OR put JDK module id?
          continue;
        }

        String sdkName = ((JpsSdkDependency) jpsDep).getSdkReference().getSdkName();
        solution = (Solution) getRepository().getModule(ModuleId.foreign(sdkName));
      }

      if (solution != null) {
        dependencies.add(new SDependencyImpl(solution, SDependencyScope.DEFAULT, false));
      }
    }

    return dependencies;
  }

  @Override
  protected Iterable<ModelRoot> loadRoots() {
    if (myContributedModelRoots == null) {
      myContributedModelRoots = new HashSet<>();
      for (JpsModelRootContributor c : JpsServiceManager.getInstance().getExtensions(JpsModelRootContributor.class)) {
        for (ModelRoot root : c.getModelRoots(myModule)) {
          myContributedModelRoots.add(root);
        }
      }
    }

    List<ModelRoot> sum = new ArrayList<ModelRoot>();
    for (ModelRoot mr : primLoadRoots()) {
      sum.add(mr);
    }

    sum.addAll(myContributedModelRoots);

    return sum;
  }

  /**
   * A workaround for {@linkplain PersistenceContextImpl} not being up to the task in case descriptor *file* is null. 
   */
  @SuppressWarnings("removal")
  private Iterable<ModelRoot> primLoadRoots() {
    ModuleDescriptor descriptor = getModuleDescriptor();
    if (descriptor == null) {
      return Collections.emptyList();
    }

    List<ModelRoot> result = new ArrayList<>();
    final ModulePersistenceContext mpc = PersistenceContextImpl.basic(new MacroNoHelper(), jetbrains.mps.vfs.FileSystem.getInstance());
    for (ModelRootDescriptor modelRoot : descriptor.getModelRootDescriptors()) {
      try {
        ModelRootFactory modelRootFactory = PersistenceFacade.getInstance().getModelRootFactory(modelRoot.getType());
        if (modelRootFactory == null) {
          LOG.error("Unknown model root type: `" + modelRoot.getType() + "'. Requested by: " + this);
          continue;
        }

        ModelRoot root = modelRootFactory.create();
        root.load(modelRoot.getMemento(), mpc);
        result.add(root);
      } catch (Exception e) {
        LOG.error("Error loading models from root with type: `" + modelRoot.getType() + "'. Requested by: " + this, e);
      }
    }
    return result;
  }

}
