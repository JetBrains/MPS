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
package jetbrains.mps.ide;

import com.intellij.configurationStore.StoreReloadManager;
import jetbrains.mps.extapi.persistence.FileBasedModelRoot;
import jetbrains.mps.module.ModuleDeleteHelper;
import jetbrains.mps.project.AbstractModule;
import jetbrains.mps.project.DevKit;
import jetbrains.mps.project.ProjectBase;
import jetbrains.mps.project.Solution;
import jetbrains.mps.project.modules.DevkitProducer;
import jetbrains.mps.project.modules.LanguageAndSolutionsProducer;
import jetbrains.mps.project.modules.LanguageProducer;
import jetbrains.mps.project.modules.SolutionProducer;
import jetbrains.mps.refactoring.Renamer;
import jetbrains.mps.smodel.Generator;
import jetbrains.mps.smodel.Language;
import jetbrains.mps.smodel.SModelStereotype;
import jetbrains.mps.testbench.util.CachingAppender;
import jetbrains.mps.util.FileUtil;
import jetbrains.mps.util.Reference;
import jetbrains.mps.vfs.IFile;
import jetbrains.mps.vfs.refresh.CachingFile;
import jetbrains.mps.vfs.refresh.DefaultCachingContext;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.module.SModule;
import org.jetbrains.mps.openapi.module.SModuleId;
import org.jetbrains.mps.openapi.persistence.ModelRoot;
import org.junit.Assert;
import org.junit.Test;

import java.io.File;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;

/**
 * Tests for Rename and Delete actions.
 * Also checks some elementary vfs changes.
 * Note: several {@link #invokeInCommand(Runnable)} calls
 * are needed because of the absent undo realisation for the 'create module' actions.
 *
 * Also {@link StoreReloadManager#flushChangedProjectFileAlarm()} requires zero-level command
 */
public abstract class ModuleIDETests extends ModuleInProjectTest {
  private final boolean myModuleFolderEqualsToModuleName;

  public ModuleIDETests(boolean folderEqualsToModuleName) {
    myModuleFolderEqualsToModuleName = folderEqualsToModuleName;
  }

  private void checkGenerators(@NotNull Language language) {
    Collection<Generator> generators = language.getGenerators();
    Assert.assertTrue(myProject.getProjectModules().contains(language));
    Assert.assertTrue(myProject.getProjectModulesWithGenerators().containsAll(generators));
    generators.forEach(g -> Assert.assertFalse(myProject.getProjectModules().contains(g)));
  }

  @NotNull
  private IFile getNewDirInProject(@NotNull String name) {
    return myModuleFolderEqualsToModuleName ? createNewDirInProject(name) : createNewDirInProject();
  }

  @Test
  public void createSolution() {
    String solutionName = getNewModuleName();
    Reference<Solution> solutionRef = new Reference<>();
    invokeInCommand(() -> solutionRef.set(new SolutionProducer(myProject).create(solutionName, getNewDirInProject(solutionName))));
    invokeInCommand(() -> {
      Solution solution = solutionRef.get();
      Assert.assertNotNull(solution.getRepository());
      Assert.assertEquals(solutionName, solution.getModuleName());
      Assert.assertTrue(myProject.getProjectModules().contains(solution));
    });
  }

  @Test
  public void createLanguage() {
    String langName = getNewModuleName();
    Reference<Language> langRef = new Reference<>();
    invokeInCommand(() -> langRef.set(new LanguageProducer(myProject).create(langName, getNewDirInProject(langName))));
    invokeInCommand(() -> {
      Language language = langRef.get();
      Assert.assertNotNull(language.getRepository());
      Assert.assertEquals(langName, language.getModuleName());
      Assert.assertTrue(myProject.getProjectModules().contains(language));

      checkGenerators(language);
    });
  }
  @Test
  public void createDevkit() {
    String devkitName = getNewModuleName();
    Reference<DevKit> devkitRef = new Reference<>();
    invokeInCommand(() -> devkitRef.set(new DevkitProducer(myProject).create(devkitName, getNewDirInProject(devkitName))));
    invokeInCommand(() -> {
      DevKit devkit = devkitRef.get();
      Assert.assertNotNull(devkit.getRepository());
      Assert.assertEquals(devkitName, devkit.getModuleName());
      Assert.assertTrue(myProject.getProjectModules().contains(devkit));
    });
  }

  @Test
  public void renameLanguage() {
    ModuleSupplier moduleSupplier = (moduleName) -> {
      IFile moduleFolder = getOrCreateDirInProject("languages");
      return new LanguageProducer(myProject).create(moduleName, moduleFolder.findChild(moduleName));
    };
    RenamedModuleChecker moduleChecker = (moduleName, module) -> {
      Assert.assertTrue(module instanceof Language);
      ((Language) module).getOwnedGenerators().forEach((Generator g) -> {
        Assert.assertTrue(g.getModuleName().startsWith(moduleName));
      });
    };
    renameModule(moduleSupplier,
                 moduleChecker
    );
  }

  @Test
  public void renameLanguageWithSubmodules() {
    final Solution[] runtimeSolution = new Solution[1];
    final Solution[] sandboxSolution = new Solution[1];
    final Solution[] someUnexpectedSolution = new Solution[1];
    // new Renamer logic matches modules by prefix. All modules in test share same prefix, but as long as
    // getNewModuleName() gives unique number in the name of the 'primary' module, I don't expect someUnexpectedSolutionName
    // to fall into 'STARTS_WITH' match.
    final String someUnexpectedSolutionName = getNewModuleName();
    renameModule(
        (moduleName) -> {
          IFile moduleFolder = getOrCreateDirInProject("languages");
          moduleFolder = moduleFolder.findChild(moduleName);
          LanguageAndSolutionsProducer lp = new LanguageAndSolutionsProducer(myProject);
          // this test is about nested modules, use proper locations under a parent module
          // I use somewhat unique names just in case default logic in LanguageAndSolutionsProducer changes
          // and with different names I could blame better.
          lp.withRuntimeSolution(true, moduleFolder.findChild("runtime_"));
          lp.withSandboxSolution(true, moduleFolder.findChild("sandbox_"));
          final Language language = lp.create(moduleName, moduleFolder);
          runtimeSolution[0] = lp.getRuntimeSolution().get();
          sandboxSolution[0] = lp.getSandboxSolution().get();
          // NOTE, solution is another nested module, which would get its file moved to another folder, but its name shall remain intact.
          IFile unexpSolLocation = moduleFolder.findChild(someUnexpectedSolutionName);
          someUnexpectedSolution[0] = new SolutionProducer(myProject).create(someUnexpectedSolutionName, unexpSolLocation);
          return language;
        },
        (moduleName, module) -> {
          Assert.assertTrue(module instanceof Language);
          // Runtime and sandbox solutions must be renamed
          runtimeSolution[0] = (Solution) myProject.getRepository().getModule(runtimeSolution[0].getModuleId());
          Assert.assertNotNull(runtimeSolution[0]);
          Assert.assertTrue(runtimeSolution[0].getModuleName().contains(moduleName));

          sandboxSolution[0] = (Solution) myProject.getRepository().getModule(sandboxSolution[0].getModuleId());
          Assert.assertNotNull(sandboxSolution[0]);
          Assert.assertTrue(sandboxSolution[0].getModuleName().contains(moduleName));

          // Unexpected solution must not be renamed
          someUnexpectedSolution[0] = (Solution) myProject.getRepository().getModule(someUnexpectedSolution[0].getModuleId());
          Assert.assertNotNull(someUnexpectedSolution[0]);
          Assert.assertFalse(someUnexpectedSolution[0].getModuleName().contains(moduleName));
        });
  }

  @Test
  public void renameSolution() {
    renameModule(
        (moduleName) -> {
          IFile moduleFolder = getOrCreateDirInProject("solutions");
          return new SolutionProducer(myProject).create(moduleName, moduleFolder.findChild(moduleName));
        },
        (moduleName, module) -> Assert.assertTrue(module instanceof Solution)
    );
  }

  @Test
  public void renameSolutionWithSpecialFolder() {
    renameModule(
        (moduleName) -> {
          IFile moduleFolder = getOrCreateDirInProject("solutions");
          moduleFolder = moduleFolder.findChild(moduleName);
          // Create module with name different from folder name
          return new SolutionProducer(myProject).create(getNewModuleName(), moduleFolder);
        },
        (moduleName, module) -> Assert.assertTrue(module instanceof Solution)
    );
  }

  @Test
  public void renameDevkit() {
    renameModule(
        (moduleName) -> {
          IFile moduleFolder = getOrCreateDirInProject("devkits");
          moduleFolder = moduleFolder.findChild(moduleName);
          return new DevkitProducer(myProject).create(moduleName, moduleFolder);
        },
        (moduleName, module) -> Assert.assertTrue(module instanceof DevKit)
    );
  }

  private interface ModuleSupplier {
    AbstractModule get(String moduleName);
  }

  private interface RenamedModuleChecker {
    void check(String moduleName, AbstractModule module);
  }

  private void renameModule(ModuleSupplier moduleSupplier, @Nullable RenamedModuleChecker checker) {
    String moduleName = getNewModuleName();
    String newModuleName = getNewModuleName();
    Reference<AbstractModule> moduleReference = new Reference<>();
    invokeInCommand(() -> moduleReference.set(moduleSupplier.get(moduleName)));
    invokeInCommand(() -> {
      AbstractModule module = moduleReference.get();
      final Collection<AbstractModule> subModules = new Renamer(myProject, module, null).getSubModules();

      // If module name is not equals to folder name, that folder should not be renamed
      boolean mustBeMoved = module.getModuleName().equals(module.getModuleSourceDir().getName());
      final SModuleId moduleId = module.getModuleId();

      AbstractModule result = new Renamer(myProject, module, null).renameModule(newModuleName);

      Assert.assertNull(module.getRepository());
      module = (AbstractModule) myProject.getRepository().getModule(moduleId);
      Assert.assertNotNull("Renamed module was not found in project repository by SModuleId", module);
      Assert.assertEquals(module, result);

      // Check module itself and descriptor file rename
      Assert.assertEquals(newModuleName, module.getModuleName());
      IFile descriptorFile = module.getDescriptorFile();
      Assert.assertNotNull(descriptorFile);
      String fileName = descriptorFile.getName();
      Assert.assertNotNull(fileName);
      Assert.assertTrue(fileName.contains(newModuleName));


      // Check module folder rename
      final IFile moduleDir = descriptorFile.getParent();
      Assert.assertNotNull(moduleDir);
      String moduleDirName = moduleDir.getName();
      Assert.assertNotNull(moduleDirName);
      Assert.assertEquals(mustBeMoved, moduleDirName.equals(newModuleName));

      // Check that model roots content folder is updated
      for (ModelRoot modelRoot : module.getModelRoots()) {
        // Only expect FileBasedModelRoot here
        Assert.assertTrue(modelRoot instanceof FileBasedModelRoot);

        final IFile contentDirectory = ((FileBasedModelRoot) modelRoot).getContentDirectory();
        Assert.assertNotNull(contentDirectory);
        Assert.assertTrue(contentDirectory.exists());
        Assert.assertTrue(contentDirectory.isDescendant(moduleDir));
      }

      final IFile generatorOutputPath = module.getOutputPath();
      if (generatorOutputPath != null) {
        Assert.assertEquals(mustBeMoved, generatorOutputPath.getPath().contains(newModuleName));
      }

      // Check models namespace is changed
      for (SModel model : module.getModels()) {
        Assert.assertEquals(newModuleName, SModelStereotype.isDescriptorModel(model)? model.getName().getLongName() : model.getName().getNamespace());
      }

      // Check model file name stays simple despite namespace change
      final IFile modelsFolder = module.getModuleSourceDir().getChildren().stream().findFirst().filter(file -> "models".equals(file.getName())).orElse(null);
      // Some modules can exist without models folder - like Devkit
      if (modelsFolder != null && modelsFolder.getChildren() != null) {
        for (IFile file : modelsFolder.getChildren()) {
          Assert.assertTrue(file.getName().contains(newModuleName));
        }
      }

      // Check submodules
      for (AbstractModule subModule : subModules) {
        Assert.assertNull(subModule.getRepository());
        subModule = (AbstractModule) myProject.getRepository().getModule(subModule.getModuleId());
        Assert.assertTrue(subModule.getModuleSourceDir().isDescendant(module.getModuleSourceDir()));

        // Check that model roots content folder is updated
        for (ModelRoot modelRoot : subModule.getModelRoots()) {
          if (!(modelRoot instanceof FileBasedModelRoot)) {
            continue;
          }

          final IFile contentDirectory = ((FileBasedModelRoot) modelRoot).getContentDirectory();
          Assert.assertNotNull(contentDirectory);
          Assert.assertTrue(contentDirectory.exists());
          Assert.assertTrue(contentDirectory.isDescendant(module.getModuleSourceDir()));
        }

        final IFile generatorOutputPathSub = subModule.getOutputPath();
        if (generatorOutputPathSub != null) {
          Assert.assertTrue(generatorOutputPathSub.getPath().contains(newModuleName));
        }
      }

      if (checker != null) {
        checker.check(newModuleName, module);
      }
    });
  }

  @Test
  public void deleteModule() {
    String moduleName = getNewModuleName();
    Reference<Language> langRef = new Reference<>();
    invokeInCommand(() -> langRef.set(new LanguageProducer(myProject).create(moduleName, getNewDirInProject(moduleName))));
    invokeInCommand(() -> {
      @NotNull Language lang = langRef.get();
      deleteModule(lang, false);
      CachingFile descriptorFile = (CachingFile) lang.getDescriptorFile();
      Assert.assertNotNull(descriptorFile);
      descriptorFile.refresh(new DefaultCachingContext(true, false));
      Assert.assertTrue(descriptorFile.exists());

      Assert.assertFalse(myProject.getProjectModules().contains(lang));
    });
  }

  @Test
  public void deleteModuleWithFiles() {
    String moduleName = getNewModuleName();
    Reference<Language> langRef = new Reference<>();
    invokeInCommand(() -> langRef.set(new LanguageProducer(myProject).create(moduleName, getNewDirInProject(moduleName))));
    invokeInCommand(() -> {
      @NotNull Language lang = langRef.get();
      deleteModule(lang, true);
      CachingFile moduleSourceDir = (CachingFile) lang.getModuleSourceDir();
      Assert.assertNotNull(moduleSourceDir);
      moduleSourceDir.refresh(new DefaultCachingContext(true, true));
      Assert.assertFalse(moduleSourceDir.exists());
      Assert.assertFalse(myProject.getProjectModules().contains(lang));
    });
  }

  @Test
  public void deleteLanguageWithGeneratorAndFiles() {
    String moduleName = getNewModuleName();
    Reference<Language> langRef = new Reference<>();
    Reference<Generator> generatorRef = new Reference<>();
    invokeInCommand(() -> {
      Language lang = new LanguageProducer(myProject).create(moduleName, getNewDirInProject(moduleName));
      langRef.set(lang);
      generatorRef.set(lang.getOwnedGenerators().iterator().next());
    });
    CachingAppender appender = new CachingAppender(CachingAppender.Level.WARN);
    appender.attach();
    try {
      invokeInCommand(() -> {
        @NotNull Language lang = langRef.get();
        @NotNull Generator generator = generatorRef.get();
        Assert.assertTrue(myProject.isProjectModule(generator));
        deleteModule(lang, true);
        CachingFile moduleSourceDir = (CachingFile) lang.getModuleSourceDir();
        Assert.assertNotNull(moduleSourceDir);
        moduleSourceDir.refresh(new DefaultCachingContext(true, true));
        Assert.assertFalse(moduleSourceDir.exists());
        Assert.assertFalse("The language stayed in the project", myProject.isProjectModule(lang));
        Assert.assertFalse("The generator stayed in the project", myProject.isProjectModule(generator));
        Assert.assertEquals(Collections.emptyList(), myProject.getProjectModules());
      });
    } finally {
      appender.detach();
    }
    String log = appender.getText();
    for (String staleTracking : new String[]{"have not been unregistered for the path", "is not found in the project repository",
                                             "has not been registered in the project"}) {
      Assert.assertFalse(log, log.contains(staleTracking));
    }
  }

  @Test
  public void deleteLangFolder() {
    String moduleName = getNewModuleName();
    Reference<Language> langRef = new Reference<>();
    AtomicReference<IFile> newDirInProject = new AtomicReference<>();
    invokeInCommand(() -> {
      newDirInProject.set(getNewDirInProject(moduleName));
      langRef.set(new LanguageProducer(myProject).create(moduleName, newDirInProject.get()));
    });
    invokeInCommand(() -> {
      @NotNull Language lang = langRef.get();
      // XXX find out why newDirInProject.get().delete(); doesn't do the trick
      FileUtil.delete(new File(newDirInProject.get().getPath()));
      CachingFile moduleSourceDir = (CachingFile) lang.getModuleSourceDir();
      Assert.assertNotNull(moduleSourceDir);
      moduleSourceDir.refresh(new DefaultCachingContext(true, true));
      Assert.assertFalse(moduleSourceDir.exists());
      Assert.assertFalse("The language stayed in the project", myProject.getProjectModules().contains(lang));
      Assert.assertNull("The language stayed in the repo", myProject.getRepository().getModule(lang.getModuleId()));
    });
  }

  @Test
  public void deleteSlnFolder() {
    String moduleName = getNewModuleName();
    Reference<Solution> slnRef = new Reference<>();
    AtomicReference<IFile> newDirInProject = new AtomicReference<>();
    invokeInCommand(() -> {
      newDirInProject.set(getNewDirInProject(moduleName));
      slnRef.set(new SolutionProducer(myProject).create(moduleName, newDirInProject.get()));
    });
    invokeInCommand(() -> {
      @NotNull Solution sln = slnRef.get();
      // XXX I wonder why newDirInProject.get().delete(); doesn't do the trick.
      FileUtil.delete(new File(newDirInProject.get().getPath()));
      CachingFile moduleSourceDir = (CachingFile) sln.getModuleSourceDir();
      Assert.assertNotNull(moduleSourceDir);
      moduleSourceDir.refresh(new DefaultCachingContext(true, true));
      Assert.assertFalse(moduleSourceDir.exists());
      Assert.assertFalse("The solution stayed in the project", myProject.getProjectModules().contains(sln));
      Assert.assertNull("The solution stayed in the repo", myProject.getRepository().getModule(sln.getModuleId()));
    });
  }

  @Test
  public void deleteRenamedLanguage() {
    deleteRenamedLang(true);
  }

  @Test
  public void deleteWithFilesRenamedLanguage() {
    deleteRenamedLang(false);
  }

  private void deleteRenamedLang(boolean deleteFiles) {
    String moduleName = getNewModuleName();
    String newModuleName = getNewModuleName();
    Reference<Language> langRef = new Reference<>();
    invokeInCommand(() -> langRef.set(new LanguageProducer(myProject).create(moduleName, getNewDirInProject(moduleName))));
    invokeInCommand(() -> {
      @NotNull Language lang = langRef.get();
      Language renamedLang = (Language) new Renamer(myProject,lang, null).renameModule(newModuleName);
      Assert.assertNull(lang.getRepository());
      Assert.assertFalse(myProject.getProjectModules().contains(lang));
      Assert.assertTrue(myProject.getProjectModules().contains(renamedLang));
      Assert.assertEquals(renamedLang.getModuleName(), newModuleName);
      deleteModule(renamedLang, deleteFiles);
      CachingFile descriptorFile = (CachingFile) renamedLang.getDescriptorFile();
      Assert.assertNotNull(descriptorFile);
      descriptorFile.refresh(new DefaultCachingContext(true, false));
      Assert.assertTrue(deleteFiles ^ descriptorFile.exists());
      Assert.assertFalse(myProject.getProjectModules().contains(renamedLang));
    });
  }

  @Test
  public void revertRenamedModule() {
    String oldModuleName = getNewModuleName();
    String newModuleName = getNewModuleName();
    ProjectBackup projectBackup = new ProjectBackup(myProject);
    Reference<Language> langRef = new Reference<>();
    invokeInCommand(() -> langRef.set(new LanguageProducer(myProject).create(oldModuleName, getNewDirInProject(oldModuleName))));
    saveProjectInTest();
    invokeInCommand(() -> {
      @NotNull Language lang = langRef.get();
      projectBackup.doBackup();
      new Renamer(myProject, lang, null).renameModule(newModuleName);

      lang = (Language) myProject.getRepository().getModule(langRef.get().getModuleId());
      Assert.assertNotNull("Renamed module was not found in project repository by SModuleId", lang);
      Assert.assertEquals(newModuleName, lang.getModuleName());
      Assert.assertTrue(myProject.getProjectModules().contains(lang));
      langRef.set(lang);
    });
    saveProjectInTest();
    invokeInCommand(() -> {
      projectBackup.restoreFromBackup();
    });
    refreshProjectRecursively();
    invokeInCommand(() -> {
      @NotNull Language lang = langRef.get();
      List<SModule> projectModules = myProject.getProjectModules();
      Assert.assertEquals(1, projectModules.size());
      Assert.assertNotEquals("The old language must have been unregistered", lang, projectModules.get(0));
      Assert.assertNull(lang.getRepository());
      lang = (Language) projectModules.get(0); // the module is changed when MPSProject#update is called (like in this case)
      Assert.assertEquals(lang.getModuleName(), oldModuleName);
    });
  }

  @Test
  public void revertDeletedModule() {
    revertDeletedModule0(false);
  }

  @Test
  public void revertDeletedWithFilesModule() {
    revertDeletedModule0(true);
  }

  private void revertDeletedModule0(boolean deleteFiles) {
    String moduleName = getNewModuleName();
    ProjectBackup projectBackup = new ProjectBackup(myProject);
    Reference<Language> langRef = new Reference<>();
    invokeInCommand(() -> langRef.set(new LanguageProducer(myProject).create(moduleName, getNewDirInProject(moduleName))));
    saveProjectInTest();
    invokeInCommand(() -> {
      @NotNull Language lang = langRef.get();
      projectBackup.doBackup();
      deleteModule(lang, deleteFiles);
      Assert.assertFalse(deleteFiles && lang.getDescriptorFile().exists());
      Assert.assertTrue(myProject.getProjectModules().isEmpty());
    });
    saveProjectInTest();
    invokeInCommand(() -> {
      projectBackup.restoreFromBackup();
    });
    refreshProjectRecursively();

    invokeInCommand(() -> {
      @NotNull Language lang = langRef.get();
      Assert.assertEquals(1, myProject.getProjectModules().size());
      Assert.assertTrue(lang.getDescriptorFile().exists());
      lang = (Language) myProject.getProjectModules().get(0); // the module is changed when SMPSProject#update is called (like in this case)
      Assert.assertEquals(lang.getModuleName(), moduleName);
    });
  }

  private void deleteModule(AbstractModule lang, boolean deleteFiles) {
    new ModuleDeleteHelper(myProject).deleteModules(Collections.singletonList(lang), false, deleteFiles);
    ((ProjectBase)myProject).save();
  }
}

