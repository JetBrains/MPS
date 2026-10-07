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
package jetbrains.mps.project;

import jetbrains.mps.components.ComponentHost;
import jetbrains.mps.components.CoreComponent;
import jetbrains.mps.extapi.module.SRepositoryExt;
import jetbrains.mps.extapi.module.SRepositoryRegistry;
import jetbrains.mps.logging.Logger;
import jetbrains.mps.project.structure.modules.GeneratorDescriptor;
import jetbrains.mps.project.structure.project.ModulePath;
import jetbrains.mps.project.structure.project.ProjectDescriptor;
import jetbrains.mps.smodel.Generator;
import jetbrains.mps.smodel.Language;
import jetbrains.mps.smodel.MPSModuleRepository;
import jetbrains.mps.util.Pair;
import jetbrains.mps.util.Reference;
import jetbrains.mps.vfs.IFile;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.annotations.ImmutableReturn;
import org.jetbrains.mps.annotations.Internal;
import org.jetbrains.mps.openapi.module.SModule;
import org.jetbrains.mps.openapi.module.SModuleReference;
import org.jetbrains.mps.openapi.module.SRepository;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.function.BiConsumer;
import java.util.stream.Stream;

/**
 * MPS Project basic implementation.
 * Stores a set of modules.
 * Set of modules coincide with the modules in the underlying repository.
 * Supported always by a {@link ProjectDescriptor} which stores paths to the module descriptors
 * Doesn't manage lifecycle of a module descriptors other than "{@linkplain #update() update} 'em all" on demand.
 * Check {@code ModuleFileChangeListener} of [mps-platform] for change tracking.
 * However, tracks module renames (albeit in a bit weird way) to keep inner structures fit.
 *
 * This project is tied to MPS platform and gives access to MPS core platform and components it comprises.
 *
 * FIXME
 * poor architecture results in the intertwined control flow between ProjectBase, ModuleLoader and ProjectDescriptor
 * I guess that removing virtual folders solves all the problem
 *
 * @see ProjectDescriptor
 */
public abstract class ProjectBase extends Project {
  private static final Logger LOG = Logger.getLogger(ProjectBase.class);
  protected final ProjectManager myProjectManager;

  protected final ComponentHost myPlatform;

  private final ProjectModuleLoader myModuleLoader;

  protected ProjectBase(String name, @NotNull ComponentHost mpsPlatform) {
    this(name, mpsPlatform, false);
    ProjectRepository r = new ProjectRepository(this, mpsPlatform.findComponent(MPSModuleRepository.class), mpsPlatform.findComponent(SRepositoryRegistry.class));
    r.init();
    initRepository(r);
  }

  // FIXME refactor other subclasses and pass boolean initDefaultRepo == true|false
  protected ProjectBase(String name, @NotNull ComponentHost mpsPlatform, boolean unusedJustIndicatorOfNoRepository) {
    super(name);
    myModuleLoader = new ProjectModuleLoader(); // fixme: avoid
    myPlatform = mpsPlatform;
    // the only reason I keep the field is to manifest we register/unregister project instance into the same PM instance
    myProjectManager = mpsPlatform.findComponent(ProjectManager.class);
  }

  @NotNull
  public String getErrors() {
    return myModuleLoader.getErrors();
  }

  @Nullable
  @Deprecated
  /*package*/ final ModulePath getPath(@NotNull SModuleReference mRef) {
    return myModuleLoader.getPath(mRef);
  }

  /*package*/ IFile getModuleDescriptorFile(SModuleReference ref) {
    return myModuleLoader.getDescriptorFile(ref);
  }

  /*package*/ String getModuleVirtualFolder(SModuleReference ref) {
    return myModuleLoader.getVirtualFolder(ref);
  }

  @Deprecated
  protected final Stream<ModulePath> allModulePaths() {
    return myModuleLoader.allPaths();
  }

  protected final void forEachModuleEntry(@NotNull BiConsumer<IFile, String> consumer) {
    myModuleLoader.forEachModuleEntry(consumer);
  }

  // all project modules, including language-hosted generators, are registered with a project as owner.
  /*package*/ void associateWithProjectRepo(SModule module) {
    SRepositoryExt repository = (SRepositoryExt) getRepository();
    // generally, module is already registered with a repo, as the primary mechanism to create a module instance, ModuleRepositoryFacade#instantiateModule,
    // automatically registers a module as well.
    // FIXME ^^^ this is likely no longer true
    repository.registerModule(module, this);
  }

  /*package*/ void dissociateFromProjectRepo(final SModule module, final boolean checkProjectIsOwner) {
    SRepositoryExt repository = (SRepositoryExt) getRepository();
    if (checkProjectIsOwner && !repository.getOwners(module).contains(this)) {
      LOG.warning("Module has not been registered in the project: " + module);
      return;
    }
    repository.unregisterModule(module, this);
  }

  /**
   * Locks: at the moment, method grabs model write on the project repository once it registers module in there.
   * It's up to client to grab model write on a project repo in case he needs to batch addition of multiple modules.
   * The reason I decided to keep code to grab model write inside the method is that I plan to make module instantiation
   * without registration mainstream (unlike what's currently happens in {@code MRF.instantiateModule()}, which instantiates and registers module
   * right away, therefore clients usually possess model lock already).
   */
  @Override
  public final void addModule(@NotNull SModule module) {
    IFile descriptorFile = module instanceof AbstractModule ? ((AbstractModule) module).getDescriptorFile() : null;
    if (descriptorFile != null) {
      final IFile existing = getModuleDescriptorFile(module.getModuleReference());
      if (existing != null) {
  //      throw new IllegalArgumentException(module + " is already in the " + this); todo enable after MPS-24400
        LOG.warning(String.format("Project %s already tracks module %s under %s; provided %s ignored", this, module.getModuleReference(), existing, descriptorFile));
        return;
      }
      // A Language-owned Generator gets an entry for its language descriptor file, too. removeModule() keeps the file in the project
      // while the language is there, and removeModule0() detaches the entries of owned generators along with their language.
      myModuleLoader.attachModule(module, descriptorFile, null);
      moduleAdded(descriptorFile, null);
      // project repository listeners may consult project.isProjectModule(moduleAdded), treat module being added as one from the project
      associateWithProjectRepo(module);
    } else {
      // there are modules like JpsSolutionIdea that got no file, but we still need to register them with a project repo, and it's better
      // to do it here rather than expose 'owner' knowledge outside of a project.
      // FIXME I don't register them in a project as there's no ModulePath to associate them with, but perhaps we shall use some default MP for them,
      //       (e.g. associated with a project root).
      // XXX perhaps, shall keep record of modules added this way, e.g. to report them from Project.getProjectModules()
      associateWithProjectRepo(module);
    }
  }

  /**
   * force removal of the module from the project
   */
  @Override
  public final void removeModule(@NotNull SModule module) {
    // captured up front, the module may be disposed once removeModule0 dissociates it from the repository
    final SModuleReference ownerLanguage = module instanceof Generator && !((Generator) module).getModuleDescriptor().isStandaloneModule()
                                           ? ((Generator) module).getModuleDescriptor().getSourceLanguage() : null;
    removeModule0(module,
                  (file, folder) -> {
                    myModuleLoader.detachModule(module, file);
                    // A Language-owned Generator shares the descriptor file of its language; the file stays in the project while the language does
                    if (ownerLanguage == null || !file.equals(getModuleDescriptorFile(ownerLanguage))) {
                      moduleRemoved(file);
                    }
                  });
  }

  /**
   * Called after a module is added to the project as a result of calling {@link #addModule}.
   * Subclasses can update the internal state of the project to reflect the addition of a module.
   */
  protected void moduleAdded(@NotNull IFile descriptorFile, String virtualFolder) {
  }

  /**
   * Called after a module virtual folder is changed a result of calling {@link #setVirtualFolder}.
   * Subclasses can update the internal state of the project to reflect the change.
   */
  protected void moduleUpdated(@NotNull IFile descriptorFile, String virtualFolder) {
  }

  /**
   * Called after a module is removed from the project as a result of calling {@link #removeModule}.
   * Subclasses can update the internal state of the project to reflect the removal of a module.
   */
  protected void moduleRemoved(@NotNull IFile descriptorFile) {
  }

  /**
   * Method which intent is to update only the module <-> virtual path map
   * and remove the module from the repository but not to touch the project descriptor
   *
   */
  @Internal
  @Nullable
  @Deprecated
  /*package*/ final ModulePath removeModule0(@NotNull SModule module) {
    // modulePath could be null for Generator modules sharing mpl descriptor file with their Language
    final Reference<ModulePath> modulePath = new Reference<>(null);
    removeModule0(module, (file, folder) -> modulePath.set(new ModulePath(file, folder)));
    return modulePath.get();
  }

  /*package*/ final void removeModule0(@NotNull SModule module, @Nullable BiConsumer<IFile, String> continuation) {
    Pair<IFile, String> fileToFolder = myModuleLoader.dropIfAttached(module.getModuleReference());
    if (module instanceof Language) {
      // Project tracks Generator modules by denoting itself as 'owner' of the module in a repository.
      // E.g. ProjectModulesFiller tells project to addModuleEntry(Generator), and it eventually gets down to associateWithProjectRepo().
      // Though a great deal has been done to let Generator modules to live without their Language module present, I still keep this code
      // to unregister Language-owned generators along with the language as I'm too afraid to make the change and to dissociate supplied module only.
      Collection<Generator> ownedGenerators = ((Language) module).getOwnedGenerators();
      for (Generator g : ownedGenerators) {
        IFile generatorDescriptorFile = getModuleDescriptorFile(g.getModuleReference());
        if (generatorDescriptorFile != null) {
          // fire event with module still attached to a project repo, like ProjectModuleLoader.detachDroppedModules does,
          // so that listeners tracking the descriptor file forget the generator
          myModuleLoader.detachModule(g, generatorDescriptorFile);
        }
        dissociateFromProjectRepo(g, false);
      }
    }
    // fileToFolder object can be null in case the module had already been invalidated _before_ this invocation
    // in that case, the guard that checks if the module is owned by the project repo prevents a nasty exception
    // how clever is that...
    dissociateFromProjectRepo(module, fileToFolder == null);
    if (fileToFolder != null && continuation != null) {
      continuation.accept(fileToFolder.o1, fileToFolder.o2);
    }
  }

  @NotNull
  @ImmutableReturn
  public final List<SModule> getProjectModules() {
    List<SModule> result = new ArrayList<>();
    SRepository repository = getRepository();
    repository.getModelAccess().runReadAction(() -> {
      for (SModuleReference mRef : myModuleLoader.activeModules()) {
        SModule resolved = mRef.resolve(repository);
        if (resolved != null) {
          if (resolved instanceof Generator && !((Generator) resolved).getModuleDescriptor().isStandaloneModule()) {
            // openapi.Project.getProjectModules states it gives 'top-level' modules only, without language-owned generators
            // FIXME shall deprecate this method and stick to a new one, that gives all modules, including generators
            continue;
          }
          result.add(resolved);
        } else {
          LOG.error("Module " + mRef + " is not found in the project repository", new Throwable());
        }
      }
    });
    return Collections.unmodifiableList(result);
  }

  /**
   * Effective way to tell if a module is part of the project
   * Note, Generator modules owned by a Language from the project are deemed project modules, too.
   */
  @Override
  public boolean isProjectModule(@NotNull SModule module) {
    if (getModuleDescriptorFile(module.getModuleReference()) != null) {
      return true;
    }
    // FIXME now myModuleLoader keeps ModulePath for each module, including Generator one, next code is no longer necessary
    if (module instanceof Generator) {
      // could be a generator owned by a language. Standalone generators from project would be discovered by getPath().
      final GeneratorDescriptor gmd = ((Generator) module).getModuleDescriptor();
      return !gmd.isStandaloneModule() && getModuleDescriptorFile(gmd.getSourceLanguage()) != null;
    }
    return false;
  }

  /**
   * persists the state of the project to the disk
   */
  public abstract void save();

  /**
   * tells a project that has external source of modules that it needs to refresh its set of modules
   * no-op for {@code ProjectBase}, subclasses shall override if needed
   */
  protected void update() {
  }

  /*
   * AP todo : this logic must be redone alongside with filling the SLibraries with modules.
   * filling libraries and projects with modules externally seems to me the best solution
   */

  /**
   * Reloads project modules. Should be invoked in an IO-bound context (read action).
   * <br>
   * Input: {@code projectDescriptor} containing list of module descriptor files.
   * <br>
   * Output: {@link Runnable} that performs the update.
   * <br>
   * The returned {@link Runnable} must be executed in a write action, as
   * it performs module loading and updating operations.
   * @param projectDescriptor
   * @return runnable object that does (re-)loading of project modules.
   */
  protected final Runnable reloadProject(@NotNull ProjectDescriptor projectDescriptor) {
    return myModuleLoader.reloadProjectModules(this, projectDescriptor);
  }

  /**
   * these are our own project opened/closed events.
   * in the case of idea platform presence they are triggered from the corresponding idea project opened/closed events.
   * in the other case they are triggered at the init/dispose methods
   */
  public void projectOpened() {
    LOG.info("Project '" + getName() + "' is opened");
    update();
    myProjectManager.projectOpened(this);
  }

  public void projectClosed() {
    checkNotDisposed();
    LOG.info("Project '" + getName() + "' is closing");
    myProjectManager.projectClosed(this);
  }

  @Override
  public boolean isOpened() {
    return myProjectManager.getOpenedProjects().contains(this);
  }

  /**
   * Access components that constitute core of MPS platform.
   */
  public final @NotNull ComponentHost getPlatform() {
    return myPlatform;
  }

  @Override
  public <T> T getComponent(Class<T> cls) {
    if (CoreComponent.class.isAssignableFrom(cls)) {
      return cls.cast(myPlatform.findComponent(cls.asSubclass(CoreComponent.class)));
    }
    return null;
  }

  /**
   * Optional operations, project may but not necessarily does grouping of modules.
   * @return virtual grouping for the module, empty string if none set or module doesn't belong to the project.
   */
  @NotNull
  public String getVirtualFolder(@NotNull SModule module) {
    final String folder = getModuleVirtualFolder(module.getModuleReference());
    return folder == null ? "" : folder;
  }

  /**
   * Optional operation to assign a grouping for a project module. Optional operation, projects may opt to
   * ignore module grouping
   */
  public void setVirtualFolder(@NotNull SModule module, @Nullable String newFolder) {
    // Used to live in StandaloneMPSProject. I don't see why it's restricted to that one, provided any
    // ProjectBase derivative knows about ModulePath and its virtual folder.
    final SModuleReference moduleReference = module.getModuleReference();
    IFile descriptorFile = getModuleDescriptorFile(moduleReference);
    if (descriptorFile != null) {
      myModuleLoader.setVirtualFolder(moduleReference, newFolder);
      moduleUpdated(descriptorFile, newFolder);
    } else {
      LOG.warning(String.format("Could not set virtual folder for the module %s, module could not be found", module));
    }
  }

  public final void addListener(@NotNull ProjectModuleLoadingListener listener) {
    myModuleLoader.addListener(listener);
  }

  public final void removeListener(@NotNull ProjectModuleLoadingListener listener) {
    myModuleLoader.removeListener(listener);
  }
}
