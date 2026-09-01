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

import jetbrains.mps.project.modules.LanguageProducer;
import jetbrains.mps.smodel.Language;
import jetbrains.mps.util.Reference;
import jetbrains.mps.vfs.IFile;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.model.EditableSModel;
import org.jetbrains.mps.openapi.model.SModel;
import org.junit.Assert;
import org.junit.Test;

import java.util.Set;
import java.util.TreeSet;

/**
 * A {@code '!'} is a legal character of a file name on every supported OS, and a directory whose name ends with one puts the very
 * sequence of {@code jetbrains.mps.vfs.path.Path#ARCHIVE_SEPARATOR} ({@code "!/"}) into the path of everything below it. Nothing
 * down there is an archive entry, and the models of a module living there have to load like any other, see MPS-40062.
 * <p>
 * The project of the report was created at {@code <somewhere>/&#!/Project1}, and every one of its models then failed to load with
 * a {@code FileNotFoundException}, because the model file was resolved against the JAR file system rather than the local one.
 * Note the vfs-level coverage of {@code jetbrains.mps.vfs.VfsTest} was not enough to catch that: the file system handed the walker
 * the right, local file, and it was the {@code IFile -> Path -> IFile} round trip of the data source factory that lost it.
 */
public class ModuleInBangDirectoryTest extends ModuleInProjectTest {
  // '&' and '#' are along for the ride, this is the very directory name of the report
  private static final String BANG_DIR_NAME = "&#!";

  @Test
  public void modelsOfAModuleUnderABangDirectoryAreLoadedFromDisk() {
    String moduleName = getNewModuleName();
    IFile moduleHome = getOrCreateDirInProject(BANG_DIR_NAME).findChild(moduleName);
    Reference<Language> languageRef = new Reference<>();
    invokeInCommand(() -> languageRef.set(new LanguageProducer(myProject).create(moduleName, moduleHome)));
    saveProjectInTest();
    refreshProjectRecursively();

    Reference<Set<String>> created = new Reference<>();
    invokeInCommand(() -> {
      Language language = languageRef.get();
      Assert.assertTrue("The module shall live under the directory in question: " + language.getModuleSourceDir(),
                        language.getModuleSourceDir().getPath().contains(BANG_DIR_NAME + "/"));
      for (SModel model : language.getModels()) {
        // an unsaved model makes updateModelsSet() a no-op, which would hide the very failure under test
        Assert.assertFalse("The model shall have been saved: " + model,
                           model instanceof EditableSModel && ((EditableSModel) model).isChanged());
      }
      created.set(modelNames(language));
    });
    Assert.assertFalse("The language shall have been given its aspect models", created.get().isEmpty());

    // re-reads the models of the module from disk, the way opening a project does
    Reference<Set<String>> reloaded = new Reference<>();
    invokeInCommand(() -> {
      languageRef.get().updateModelsSet();
      reloaded.set(modelNames(languageRef.get()));
    });
    Assert.assertEquals("The models shall be found again once re-read from disk", created.get(), reloaded.get());
  }

  @NotNull
  private static Set<String> modelNames(@NotNull Language language) {
    Set<String> result = new TreeSet<>();
    for (SModel model : language.getModels()) {
      result.add(model.getName().getValue());
    }
    return result;
  }
}
