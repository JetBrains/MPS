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
package jetbrains.mps.module;

import jetbrains.mps.extapi.persistence.DisposableDataSource;
import jetbrains.mps.extapi.persistence.FileBasedModelRoot;
import jetbrains.mps.extapi.persistence.SourceRoot;
import jetbrains.mps.extapi.persistence.SourceRootKind;
import jetbrains.mps.logging.Logger;
import jetbrains.mps.project.AbstractModule;
import jetbrains.mps.project.Project;
import jetbrains.mps.project.facets.GenerationTargetFacet;
import jetbrains.mps.project.facets.JavaModuleFacet;
import jetbrains.mps.project.structure.modules.GeneratorDescriptor;
import jetbrains.mps.project.structure.modules.LanguageDescriptor;
import jetbrains.mps.smodel.Generator;
import jetbrains.mps.smodel.Language;
import jetbrains.mps.smodel.ModuleRepositoryFacade;
import jetbrains.mps.vfs.IFile;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.annotations.Internal;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.module.SModule;
import org.jetbrains.mps.openapi.module.SModuleFacet;
import org.jetbrains.mps.openapi.module.SRepository;
import org.jetbrains.mps.openapi.persistence.DataSource;
import org.jetbrains.mps.openapi.persistence.ModelRoot;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public final class ModuleDeleteHelper {
  private static final Logger LOG = Logger.getLogger(ModuleDeleteHelper.class);

  @NotNull
  private final Project myProject;
  private final static String NON_PROJECT_MODULES_MSG =
      "Non-project modules can only be deleted with files deletion enabled. The module %s will not be deleted";
  // we need IdentityHashSet, value is always null
  private final IdentityHashMap<DisposableDataSource, Object> myDataSources = new IdentityHashMap<>();
  // force remove, even if dir and not empty
  private final Set<IFile> myFilesToDelete = new HashSet<>();
  // remove if dir and empty
  private final Set<IFile> myLikelyEmptyDirs = new HashSet<>();

  public ModuleDeleteHelper(@NotNull Project project) {
    myProject = project;
  }

  // needs model write for project repository
  // the project must be saved manually after returning from this method
  public void deleteModules(List<SModule> modules, boolean safeDelete, final boolean deleteFiles) {
    if (safeDelete) {
      LOG.error("SAFE DELETE MODULE - NOT IMPLEMENTED", new Throwable());
      return;
    }
    // fixme: MPS-18743
    modules.stream().filter(module -> module instanceof AbstractModule).forEach(module -> ((AbstractModule) module).save());

    modules = new ArrayList<>(modules);

    if (!deleteFiles) {
      filterOutNonProjectModulesWhenFilesKept(modules);
    }

    myDataSources.clear();
    myFilesToDelete.clear();
    myLikelyEmptyDirs.clear();

    // these generators to be removed along with their owning language
    ArrayList<Generator> ownedGenerators = new ArrayList<>();
    // these generators either standalone or part of a language that is not among those to be deleted
    // need special care not to remove owning language (if share .mpl/descriptor file)
    ArrayList<Generator> unascribedGenerators = new ArrayList<>();
    for (SModule m : modules) {
      // no, it's not nice/compact/clear with lambdas
      if (m instanceof Language) {
        ownedGenerators.addAll(((Language) m).getOwnedGenerators());
      } else if (m instanceof Generator) {
        unascribedGenerators.add((Generator) m);
      }
    }
    // just in case the request came to delete language L1 and its generator G1 (modules = {L1, G1})
    unascribedGenerators.removeAll(ownedGenerators);

    // owned generators and those of uncertain ownership need special treatment, keep them separate
    modules.removeAll(ownedGenerators);
    modules.removeAll(unascribedGenerators);


    if (deleteFiles) {
      for (SModule m : modules) {
        if (m instanceof Language) {
          // an owned generator's output may point into the language folder, which is kept if not empty, e.g. with files that aren't module content
          final LanguageLocations guard = new LanguageLocations((Language) m, true);
          for (Generator g : ((Language) m).getOwnedGenerators()) {
            collectModelsAndArtifactsToDelete(g, guard);
            myLikelyEmptyDirs.addAll(guard.foldersToPrune(g));
          }
        }
      }
      modules.forEach(this::collectModuleFilesToDelete);
    }

    // get a copy of all project modules in advance as project modules need special treatment and facade.unregisterModule is not enough for them
    final List<SModule> projectModulesWithNestedGenerators = myProject.getProjectModulesWithGenerators();

    ModuleRepositoryFacade facade = new ModuleRepositoryFacade(myProject.getRepository());

    /*
     * If we delete complete Language, then we don't need to remove 'owned' Generators from its descriptor.
     * So after this Language is re-added to project, it will still contain Generator.
     *
     * But if we delete Generator *owned* by a language which is not deleted, than we have to unregister it from
     * the language (delete from Language descriptor). Otherwise Generator will reappear after Language reload.
     */
    for (Generator g : unascribedGenerators) {
      final GeneratorDescriptor generatorDescriptor = g.getModuleDescriptor();
      if (deleteFiles) {
        if (generatorDescriptor.isStandaloneModule()) {
          collectModuleFilesToDelete(g);
        } else {
          final LanguageLocations guard = LanguageLocations.forGeneratorOf(g);
          collectModelsAndArtifactsToDelete(g, guard);
          myLikelyEmptyDirs.addAll(guard.foldersToPrune(g));
        }
      }
      if (projectModulesWithNestedGenerators.contains(g)) {
        myProject.removeModule(g);
      } else {
        facade.unregisterModule(g);
      }
      unregisterGeneratorFromLanguage(generatorDescriptor);
    }

    // owned generators go first, each removeModule(generator) tells project listeners the generator no longer lives in the language
    // descriptor file. removeModule(language) does the same for its owned generators that are still there.
    modules.addAll(0, ownedGenerators);
    for (SModule m : modules) {
      if (projectModulesWithNestedGenerators.contains(m)) {
        // FIXME it's odd to have if/else to unregister a module. I'd prefer unconditional facade.unregisterModule() for every module
        //       with subsequent myProject.modulesRemoved(modules) notification so that the project can update its state. Is it feasible?
        myProject.removeModule(m);
      } else {
        facade.unregisterModule(m);
      }
    }
    if (deleteFiles) {
      myDataSources.keySet().forEach(DisposableDataSource::delete);
      myFilesToDelete.forEach(IFile::deleteIfExists);
      myLikelyEmptyDirs.stream().filter(ModuleDeleteHelper::canDeleteDirIfEmpty).forEach(IFile::deleteIfExists);
    }
  }

  public void removeGeneratedArtifacts(Iterable<SModule> modules) {
    myFilesToDelete.clear();
    modules.forEach(this::collectGeneratedArtifactsToDelete);
    myFilesToDelete.forEach(IFile::deleteIfExists);
  }

  /**
   * For a generator that shares its descriptor file with its language: folders that {@link #deleteModules} removes, when they are empty, as it
   * deletes the generator with files. Locations of the language, e.g. its folder serving as generator's content root as well, are not among them.
   * Needs model read.
   */
  @Internal
  @NotNull
  public static List<IFile> generatorFoldersToPrune(@NotNull Generator generator) {
    return LanguageLocations.forGeneratorOf(generator).foldersToPrune(generator);
  }

  /**
   * For a generator that shares its descriptor file with its language: generated artifact locations that {@link #deleteModules} keeps as it deletes
   * the generator with files, as they are, contain or are inside the language's own locations (e.g. generator output root at the language folder).
   * Needs model read.
   */
  @Internal
  @NotNull
  public static List<IFile> protectedForceDeleteTargets(@NotNull Generator generator) {
    final LanguageLocations guard = LanguageLocations.forGeneratorOf(generator);
    return forceDeleteTargets(generator).stream().filter(guard::isProtected).toList();
  }

  /**
   * If generator shares descriptor file with its language, update the descriptor.
   * Otherwise, we just drop the whole file
   * @param gd generator, which is not among owned of any other language we are going to delete
   */
  private void unregisterGeneratorFromLanguage(GeneratorDescriptor gd) {
    // Second parameter prevent exceptions after Generator extraction from Language
    final SModule sourceModule = gd.getSourceLanguage().resolve(myProject.getRepository());
    if (sourceModule instanceof Language && !sourceModule.isReadOnly()) {
      final Language sourceLanguage = (Language) sourceModule;
      LanguageDescriptor languageDescriptor = sourceLanguage.getModuleDescriptor();
      if (languageDescriptor.getGenerators().contains(gd)) {
        languageDescriptor.getGenerators().remove(gd);
        sourceLanguage.setModuleDescriptor(languageDescriptor);
        sourceLanguage.save();
      }
      // fall-through
    }
  }

  // doesn't touch module descriptor and module's home dir, just models and generated artifacts
  // IMPORTANT: module shall not be detached/disposed when we collect its files, otherwise there'd be
  //     no facets nor models
  private void collectModelsAndArtifactsToDelete(SModule module) {
    collectDisposableDataSources(module);
    collectGeneratedArtifactsToDelete(module);
  }

  private void collectModelsAndArtifactsToDelete(Generator generator, LanguageLocations guard) {
    collectDisposableDataSources(generator);
    for (IFile target : forceDeleteTargets(generator)) {
      if (guard.isProtected(target)) {
        LOG.warning(String.format("Generated artifacts location %s of %s is shared with its language and is not deleted", target, generator));
      } else {
        myFilesToDelete.add(target);
      }
    }
  }

  private void collectGeneratedArtifactsToDelete(SModule module) {
    myFilesToDelete.addAll(forceDeleteTargets(module));
  }

  private static List<IFile> forceDeleteTargets(SModule module) {
    final List<IFile> result = new ArrayList<>();
    final ArrayList<GenerationTargetFacet> gtf = new ArrayList<>(4);
    for (SModuleFacet f : module.getFacets()) {
      // no, it's not better with lambdas
      if (f instanceof GenerationTargetFacet) {
        gtf.add((GenerationTargetFacet) f);
      }
    }
    for (SModel model : module.getModels()) {
      for (GenerationTargetFacet f : gtf) {
        // XXX what if output root is in use for anything else but model output, e.g. custom files?
        //     do we want to delete them as well? We used to remove javaModuleFacet.getOutputRoot() in deleteJavaFacet(), hence
        //     present approach seems reasonable
        addIfNotNull(result, f.getOutputRoot(model));
        addIfNotNull(result, f.getOutputCacheRoot(model));
      }
    }

    for (GenerationTargetFacet f : gtf) {
      if (f instanceof JavaModuleFacet) {
        addIfNotNull(result, ((JavaModuleFacet) f).getClassesGen());
      }
    }
    return result;
  }

  private static void addIfNotNull(List<IFile> files, @Nullable IFile file) {
    if (file != null) {
      files.add(file);
    }
  }

  private void collectDisposableDataSources(SModule module) {
    for (SModel model : module.getModels()) {
      // see ModelDeleteHelper#deleteDataSource()
      final DataSource ds = model.getSource();
      if (ds instanceof DisposableDataSource) {
        myDataSources.put((DisposableDataSource) ds, null);
      }
    }
  }

  private void collectModuleFilesToDelete(SModule module) {
    collectModelsAndArtifactsToDelete(module);

    if (module instanceof AbstractModule) {
      AbstractModule curModule = (AbstractModule) module;

      IFile descriptorFile = curModule.getDescriptorFile();
      if (descriptorFile != null) {
        recordForceDelete(descriptorFile);
        // XXX here we assume module file lives under a module-dedicated folder
        IFile moduleFolder = descriptorFile.getParent();
        myLikelyEmptyDirs.add(moduleFolder);
      }
    }
  }

  // modifies list in-place, removing modules that are not manifested as owned by the project
  // the method makes sense only if files deletion has not been requested (project modules can be 'deleted'/removed from the project w/o deleting files)
  private void filterOutNonProjectModulesWhenFilesKept(List<SModule> modules) {
    final List<SModule> projectModulesWithGenerators = myProject.getProjectModulesWithGenerators();
    for (Iterator<SModule> iterator = modules.iterator(); iterator.hasNext(); ) {
      SModule module = iterator.next();
      if (!projectModulesWithGenerators.contains(module)) {
        LOG.warning(String.format(NON_PROJECT_MODULES_MSG, module));
        iterator.remove();
      }
    }
  }

  private void recordForceDelete(@Nullable IFile file) {
    if (file != null) {
      myFilesToDelete.add(file);
    }
  }

  /**
   * Locations of a language that deleting files of its own generator shall not touch.
   */
  private static final class LanguageLocations {
    // a location to delete must not be any of these, nor contain one
    private final List<IFile> myKept = new ArrayList<>();
    // nor be inside one of these
    private final List<IFile> myKeptWithContents = new ArrayList<>();

    /**
     * @param languageDeleted {@code true} when the language goes along with the generator. Then, only language's descriptor folder and model
     *                        source roots are kept, as language deletion doesn't force-delete the folder.
     */
    LanguageLocations(@Nullable Language language, boolean languageDeleted) {
      if (language == null) {
        return;
      }
      final IFile descriptorFile = language.getDescriptorFile();
      if (descriptorFile != null && descriptorFile.getParent() != null) {
        myKept.add(descriptorFile.getParent());
      }
      for (ModelRoot mr : language.getModelRoots()) {
        if (!(mr instanceof FileBasedModelRoot)) {
          continue;
        }
        final FileBasedModelRoot root = (FileBasedModelRoot) mr;
        if (!languageDeleted) {
          addIfNotNull(myKept, root.getContentDirectory());
        }
        for (IFile sourceRoot : sourceRoots(root)) {
          myKept.add(sourceRoot);
          myKeptWithContents.add(sourceRoot);
        }
      }
      if (!languageDeleted) {
        myKept.addAll(forceDeleteTargets(language));
      }
    }

    static LanguageLocations forGeneratorOf(@NotNull Generator generator) {
      final SRepository repository = generator.getRepository();
      final SModule language = repository == null ? null : generator.getModuleDescriptor().getSourceLanguage().resolve(repository);
      final LanguageLocations rv = new LanguageLocations(language instanceof Language ? (Language) language : null, false);
      final IFile descriptorFile = generator.getDescriptorFile();
      if (!(language instanceof Language) && descriptorFile != null) {
        // it's still the language's descriptor file
        addIfNotNull(rv.myKept, descriptorFile.getParent());
      }
      return rv;
    }

    boolean isProtected(@NotNull IFile location) {
      return myKept.stream().anyMatch(kept -> kept.isDescendant(location)) || myKeptWithContents.stream().anyMatch(location::isDescendant);
    }

    /**
     * Generator's content roots, unless one is a language location (e.g. a legacy {@code ${module}} generator, which resolves to the language
     * folder); then its source roots and their folders below the content root.
     */
    List<IFile> foldersToPrune(@NotNull Generator generator) {
      final List<IFile> result = new ArrayList<>();
      for (ModelRoot mr : generator.getModelRoots()) {
        if (!(mr instanceof FileBasedModelRoot)) {
          continue;
        }
        final FileBasedModelRoot root = (FileBasedModelRoot) mr;
        final IFile contentDir = root.getContentDirectory();
        if (contentDir == null) {
          continue;
        }
        if (!isProtected(contentDir)) {
          result.add(contentDir);
          continue;
        }
        for (IFile sourceRoot : sourceRoots(root)) {
          // the source root and its ancestors strictly below the content root
          for (IFile f = sourceRoot; f != null && f.isDescendant(contentDir) && !f.getPath().equals(contentDir.getPath()); f = f.getParent()) {
            if (isProtected(f)) {
              break;
            }
            result.add(f);
          }
        }
      }
      return result;
    }

    // needs model read. SourceRoot.getPath() may be relative, and there's no other API to resolve it (FileBasedModelRoot.attach() uses the same)
    @SuppressWarnings("removal")
    private static List<IFile> sourceRoots(FileBasedModelRoot root) {
      final List<IFile> result = new ArrayList<>();
      for (SourceRootKind kind : root.getSupportedFileKinds1()) {
        for (SourceRoot sourceRoot : root.getSourceRoots(kind)) {
          result.add(sourceRoot.getAbsolutePath());
        }
      }
      return result;
    }
  }

  private static boolean canDeleteDirIfEmpty(@NotNull IFile file) {
    if (!file.exists()) {
      return true;
    }

    if (!file.isDirectory()) {
      return false;
    }

    List<IFile> children = file.getChildren();
    if (file.isDirectory() && children.isEmpty()) {
      return true;
    }

    assert children != null : "IFile.getChildren() == null iff !isDirectory";

    for (IFile child : children) {
      if (!canDeleteDirIfEmpty(child)) {
        return false;
      }
    }

    return true;
  }
}
