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
package jetbrains.mps.ide.datatransfer;

import com.intellij.openapi.application.ApplicationManager;
import com.intellij.openapi.application.ModalityState;
import com.intellij.openapi.util.Disposer;
import com.intellij.util.ui.UIUtil;
import jetbrains.mps.extapi.module.SRepositoryExt;
import jetbrains.mps.project.Project;
import jetbrains.mps.smodel.ModelImports;
import jetbrains.mps.smodel.SModelId;
import jetbrains.mps.smodel.adapter.structure.language.InvalidLanguage;
import jetbrains.mps.testbench.TestModuleFactoryBase;
import jetbrains.mps.tool.environment.Environment;
import jetbrains.mps.tool.environment.EnvironmentAware;
import jetbrains.mps.util.FileUtil;
import jetbrains.mps.vfs.IFile;
import jetbrains.mps.vfs.IFileSystem;
import jetbrains.mps.vfs.VFSManager;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.language.SLanguage;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SModelReference;
import org.jetbrains.mps.openapi.module.ModelAccess;
import org.jetbrains.mps.openapi.module.SModule;
import org.junit.Assert;
import org.junit.Test;

import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/**
 * Regression test for MPS-39042: the "Select models and languages to import" dialog must apply only the subset
 * the user actually selected. Before the fix, {@link AddRequiredImportsDialog#asUpdateCommand} iterated over the
 * full set of <em>suggested</em> imports/languages and ignored the selection, so de-selected entries were still
 * silently imported.
 * <p>
 * {@link AddRequiredImportsDialog} is a {@link com.intellij.openapi.ui.DialogWrapper} whose {@code createCenterPanel()}
 * dereferences {@code getContentPane()}, which is unavailable in the headless test environment. We therefore build the
 * dialog with its UI-building {@code init()} suppressed (the constructor still records the suggested imports/languages),
 * populate the "selected" subset the way {@code doOKAction()} would, and exercise the real {@code asUpdateCommand}.
 */
public class AddRequiredImportsDialogTest implements EnvironmentAware {
  // the in-memory model registered into a test module by TestModuleFactoryBase
  private static final String TEST_MODEL_NAME = "model-for-language-imports";

  private Environment myEnvironment;

  @Override
  public void setEnvironment(@NotNull Environment env) {
    myEnvironment = env;
  }

  @Test
  public void applyCommandImportsOnlySelectedSubset() {
    Project project = myEnvironment.createEmptyProject();
    try {
      SModelReference importA = modelRef("test.import.A");
      SModelReference importB = modelRef("test.import.B");
      SLanguage langA = language("test.lang.A");
      SLanguage langB = language("test.lang.B");

      SModel targetModel = createTargetModel(project);

      // The dialog suggested {A, B} for both models and languages, but the user imported only the "A" subset.
      AddRequiredImportsDialog dialog = createDialogWithoutUi(project,
          new SModelReference[]{importA, importB}, new SLanguage[]{langA, langB});
      final Runnable updateCommand;
      try {
        setField(dialog, "mySelectedImports", new SModelReference[]{importA});
        setField(dialog, "mySelectedLanguages", new SLanguage[]{langA});
        updateCommand = dialog.asUpdateCommand(targetModel);
      } finally {
        dispose(dialog);
      }

      // apply the imports the way CopyPasteUtil.addImportsWithDialog does: inside a command
      ModelAccess modelAccess = project.getRepository().getModelAccess();
      ApplicationManager.getApplication().invokeAndWait(
          () -> modelAccess.executeCommand(updateCommand), ModalityState.nonModal());
      myEnvironment.flushAllEvents();

      List<SModelReference> importedModels = new ArrayList<>();
      List<SLanguage> usedLanguages = new ArrayList<>();
      modelAccess.runReadAction(() -> {
        ModelImports imports = new ModelImports(targetModel);
        importedModels.addAll(imports.getImportedModels());
        usedLanguages.addAll(imports.getUsedLanguages());
      });

      Assert.assertTrue("the selected model must be imported", importedModels.contains(importA));
      Assert.assertFalse("the de-selected model must NOT be imported (MPS-39042)", importedModels.contains(importB));
      Assert.assertTrue("the selected language must be used", containsLanguage(usedLanguages, langA));
      Assert.assertFalse("the de-selected language must NOT be used (MPS-39042)", containsLanguage(usedLanguages, langB));
    } finally {
      myEnvironment.closeProject(project);
    }
  }

  private SModel createTargetModel(Project project) {
    TestModuleFactoryBase factory = new TestModuleFactoryBase(myEnvironment, (SRepositoryExt) project.getRepository());
    IFileSystem fs = myEnvironment.getPlatform().findComponent(VFSManager.class).getFileSystem(VFSManager.FILE_FS);
    IFile descriptorFile = fs.getFile(FileUtil.createTmpFile().getPath());
    SModule module = factory.createSolution(descriptorFile);
    project.getModelAccess().runWriteAction(() -> project.addModule(module));
    SModel[] found = new SModel[1];
    project.getModelAccess().runReadAction(() -> {
      for (SModel m : module.getModels()) {
        if (TEST_MODEL_NAME.equals(m.getName().getValue())) {
          found[0] = m;
        }
      }
    });
    Assert.assertNotNull("target model '" + TEST_MODEL_NAME + "' not found in the test module", found[0]);
    return found[0];
  }

  // --- fabrication of references/languages that need no loaded model/language ---

  private static SModelReference modelRef(String name) {
    return new jetbrains.mps.smodel.SModelReference(null, SModelId.generate(), name);
  }

  private static SLanguage language(String name) {
    return new InvalidLanguage(name);
  }

  private static boolean containsLanguage(Collection<SLanguage> languages, SLanguage language) {
    for (SLanguage l : languages) {
      if (l.getQualifiedName().equals(language.getQualifiedName())) {
        return true;
      }
    }
    return false;
  }

  // --- dialog helpers (dialog is never shown; its Swing UI is not built in the headless test env) ---

  private static AddRequiredImportsDialog createDialogWithoutUi(Project project, SModelReference[] imports, SLanguage[] languages) {
    AddRequiredImportsDialog[] holder = new AddRequiredImportsDialog[1];
    UIUtil.invokeAndWaitIfNeeded((Runnable) () -> holder[0] = new AddRequiredImportsDialog(project, imports, languages) {
      @Override
      protected void init() {
        // Headless test: skip DialogWrapper's Swing UI construction. AddRequiredImportsDialog#createCenterPanel
        // dereferences getContentPane(), which is null without a display. The suggested imports/languages are
        // already recorded by the superclass constructor before this call.
      }
    });
    return holder[0];
  }

  private static void setField(AddRequiredImportsDialog dialog, String fieldName, Object value) {
    try {
      Field field = AddRequiredImportsDialog.class.getDeclaredField(fieldName);
      field.setAccessible(true);
      field.set(dialog, value);
    } catch (ReflectiveOperationException e) {
      throw new RuntimeException(e);
    }
  }

  private static void dispose(AddRequiredImportsDialog dialog) {
    UIUtil.invokeAndWaitIfNeeded(() -> {
      try {
        Disposer.dispose(dialog.getDisposable());
      } catch (Throwable ignored) {
        // best-effort cleanup of a dialog that was never shown
      }
    });
  }
}
