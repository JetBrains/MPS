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
package jetbrains.mps.vfs.tracking;

import com.intellij.diff.DiffManager;
import com.intellij.diff.DiffRequestPanel;
import com.intellij.diff.contents.DiffContent;
import com.intellij.diff.requests.DiffRequest;
import com.intellij.diff.requests.SimpleDiffRequest;
import com.intellij.diff.util.DiffUserDataKeys;
import com.intellij.openapi.application.ApplicationManager;
import com.intellij.openapi.application.ModalityState;
import com.intellij.openapi.project.Project;
import com.intellij.openapi.ui.DialogBuilder;
import com.intellij.openapi.ui.DialogWrapper;
import com.intellij.openapi.ui.Messages;
import com.intellij.ui.UIBundle;
import jetbrains.mps.extapi.model.StorageMemoryConflictResolver;
import jetbrains.mps.extapi.persistence.FileSystemBasedDataSource;
import jetbrains.mps.ide.project.ProjectHelper;
import jetbrains.mps.logging.Logger;
import jetbrains.mps.project.MPSProject;
import jetbrains.mps.vfs.VFSManager;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.model.EditableSModel;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SaveOptions;
import org.jetbrains.mps.openapi.model.SaveResult;
import org.jetbrains.mps.openapi.module.ModelAccess;
import org.jetbrains.mps.openapi.persistence.ContentOption;
import org.jetbrains.mps.openapi.persistence.ModelLoadException;
import org.jetbrains.mps.openapi.persistence.PersistenceFacade;
import org.jetbrains.mps.openapi.persistence.UnsupportedDataSourceException;

import javax.swing.AbstractAction;
import javax.swing.JLabel;
import javax.swing.SwingConstants;
import java.awt.Component;
import java.awt.event.ActionEvent;
import java.io.File;
import java.util.List;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.CompletionStage;
import java.util.concurrent.CopyOnWriteArrayList;

/**
 * a copy of MemoryDiskConflictResolver in IJ
 * todo: - work with modules as well
 *       - replace literals with bundle queries
 *       - introduce hashes for the model content (in-memory they call it here) and check for it before acting
 *       - sometimes there is a command, sometimes there is a write
 * @author apyshkin
 */
public final class ConflictResolverImpl implements StorageMemoryConflictResolver<EditableSModel> {
  private static final Logger LOG = Logger.getLogger(ConflictResolverImpl.class);

  private final MPSProject myProject;
  private final PersistenceFacade myPersistenceFacade;
  private final VFSManager myVfsManager;
  private final DiskMemoryDialogExposer myDialogExposer;

  private DiskMemoryDialogExposer defaultExposer() {
    return this::showDiskMemoryQuestion;
  }

  ConflictResolverImpl(@NotNull MPSProject project,
                       PersistenceFacade persistenceFacade,
                       VFSManager vfsManager,
                       DiskMemoryDialogExposer exposer) {
    myProject = project;
    myPersistenceFacade = persistenceFacade;
    myVfsManager = vfsManager;
    myDialogExposer = exposer;
  }

  public ConflictResolverImpl(MPSProject project,
                       PersistenceFacade persistenceFacade,
                       VFSManager vfsManager) {
    myProject = project;
    myPersistenceFacade = persistenceFacade;
    myVfsManager = vfsManager;
    myDialogExposer = defaultExposer();
  }

  @Deprecated(forRemoval = true)
  @NotNull
  CompletionStage<ConflictResolved> resolve(@NotNull EditableSModel model) {
    return resolveConflict(model);
  }

  @Override
  public @NotNull CompletionStage<ConflictResolved> resolveConflict(@NotNull EditableSModel model) {
    myResolverListeners.forEach(l -> l.onConflict(model));
    if (!(model.getSource() instanceof FileSystemBasedDataSource)) {
      LOG.error(String.format("Conflicting content in memory and on disk for models '%s' and '%s'. " +
                              "MPS does not support this data source; it will save the model and ignore the external modifications.", model.getName(),
                              model.getSource()));
      saveModel(model);
      return CompletableFuture.completedFuture(ConflictResolved.MEMORY_CHOSEN);
    }
    FileSystemBasedDataSource source = (FileSystemBasedDataSource) model.getSource();
    return backupAndShowDialog(model, source);
  }

  private CompletionStage<ConflictResolved> backupAndShowDialog(@NotNull EditableSModel model, FileSystemBasedDataSource source) {
    final CompletableFuture<ConflictResolved>[] returnVal = new CompletableFuture[]{new CompletableFuture<>()};
    ApplicationManager.getApplication().invokeLater(() -> {
      // do nothing if conflict was already resolved and model was saved or reloaded or unregistered
      if (!(model.isChanged()) || model.getRepository() == null) {
        returnVal[0].complete(ConflictResolved.NOTHING_HAPPENED);
        return;
      }
      assert model.getRepository() != null;

      File backupFile = new BackupHelper(model, myPersistenceFacade, myVfsManager).createBackup();
      // fixme we need to check here that the world (= the underlying model & file) is still the same
      ConflictResolved conflictResolvedFuture = askAndProcess(model, source, backupFile);
      myResolverListeners.forEach(l -> l.onConflictResolved(model));
      returnVal[0].complete(conflictResolvedFuture);
    }, ModalityState.NON_MODAL);
    return returnVal[0];
  }

  private ConflictResolved askAndProcess(@NotNull EditableSModel model, FileSystemBasedDataSource source, File backupFile) {
    @NotNull UserChoice choice = myDialogExposer.askUser(ProjectHelper.toMainFrame(myProject), model, source, backupFile);
    return processUserChoice(model, choice);
  }

  private ConflictResolved processUserChoice(EditableSModel model, UserChoice choice) {
    switch (choice) {
      case DISK_CHOSEN: {
        // fixme and here we need to check that the world is still the same as well
        myProject.getRepository().getModelAccess().executeCommand(model::reloadFromSource);
        return ConflictResolved.STORAGE_CHOSEN;
      }
      default:
        return saveModel(model);
    }
  }

  private ConflictResolved saveModel(final EditableSModel model) {
    ModelAccess modelAccess = myProject.getRepository().getModelAccess();
    return modelAccess.computeWriteAction(() -> {
      var result = model.save(SaveOptions.FORCE_SAVE_MEMORY);
      result.handle((res, throwable) -> {
        if (res != SaveResult.SAVED_TO_DATA_SOURCE) {
          LOG.error("The result is not expected", new IllegalStateException("While saving the conflicting model " + model + " to " + model.getSource()));
        }
        return res;
      });
      if (!result.toCompletableFuture().isDone()) {
        throw new IllegalStateException("force save is always synchronous");
      }
      return ConflictResolved.MEMORY_CHOSEN;
    });
  }

  @NotNull
  private UserChoice showDiskMemoryQuestion(@Nullable Component parentComponent,
                                            @NotNull EditableSModel model,
                                            @NotNull FileSystemBasedDataSource source,
                                            @NotNull File backupFile) {
    if (ApplicationManager.getApplication().isHeadlessEnvironment()) {
      LOG.info(String.format("Saving the MPS changes to the disk -- we are headless, model : %s at %s", model.getName(), model.getSource()));
      // by default save the changes from memory
      return UserChoice.MEMORY_CHOSEN;
    }
    int result = openDialogWithOptions(source, model);
    switch (result) {
      case 0:
        return UserChoice.DISK_CHOSEN;
      case 1:
      default:
        return UserChoice.MEMORY_CHOSEN;
    }
  }

  public enum UserChoice {
    DISK_CHOSEN("Load Disk Version"),
    MEMORY_CHOSEN("Save Memory Version"); // default

    @NotNull
    private final String myCaption;

    UserChoice(@NotNull String caption) {
      myCaption = caption;
    }

    @Override
    public String toString() {
      return myCaption;
    }
  }

  /**
   * almost copied from IJ MemoryDiskConflictResolver (fixme make a contribution to IJ)
   *
   * @return exit code of the dialog
   */
  private int openDialogWithOptions(@NotNull FileSystemBasedDataSource source, @NotNull EditableSModel model) {
    SModel onDisk = null;
    try {
      if (source.exists()) {
        // make sure there are no subsequent attempts to alter the model's content (e.g. in case DS type supports partial/lazy loading)
        onDisk = myPersistenceFacade.getModelFactory(source.getType()).load(source, ContentOption.CONTENT_ONLY);
      }
    } catch (UnsupportedDataSourceException | ModelLoadException e) {
      // properly reflect this case
      LOG.error("Problem while loading the model from disk", e);
    }
    String message = UIBundle.message("file.cache.conflict.message.text", model.getSource().getLocation());

    DialogBuilder builder = new DialogBuilder();
    builder.setCenterPanel(new JLabel(message, Messages.getQuestionIcon(), SwingConstants.CENTER));
    builder.addOkAction().setText(UIBundle.message("file.cache.conflict.load.fs.changes.button"));
    builder.addCancelAction().setText(UIBundle.message("file.cache.conflict.keep.memory.changes.button"));
    SModel finalOnDisk = onDisk;
    builder.addAction(new AbstractAction(UIBundle.message("file.cache.conflict.show.difference.button")) {
      @Override
      public void actionPerformed(ActionEvent e) {
        Project project = myProject.getProject();
        DiffContent content1 = new ModelDiffContent(finalOnDisk);
        DiffContent content2 = new ModelDiffContent(model);
        String title = UIBundle.message("file.cache.conflict.for.file.dialog.title", model.getSource().getLocation());
        String title1 = UIBundle.message("file.cache.conflict.diff.content.file.system.content");
        String title2 = UIBundle.message("file.cache.conflict.diff.content.memory.content");
        DiffRequest request = new SimpleDiffRequest(title, content1, content2, title1, title2);
        request.putUserData(DiffUserDataKeys.GO_TO_SOURCE_DISABLE, true);
        DialogBuilder diffBuilder = new DialogBuilder(project);
        DiffRequestPanel diffPanel = DiffManager.getInstance().createRequestPanel(project, diffBuilder, diffBuilder.getWindow());
        diffPanel.setRequest(request);
        diffBuilder.setCenterPanel(diffPanel.getComponent());
        diffBuilder.setDimensionServiceKey("FileDocumentManager.FileCacheConflict");
        diffBuilder.addOkAction().setText(UIBundle.message("file.cache.conflict.save.changes.button"));
        diffBuilder.addCancelAction();
        diffBuilder.setTitle(title);
        if (diffBuilder.show() == DialogWrapper.OK_EXIT_CODE) {
          builder.getDialogWrapper().close(DialogWrapper.CANCEL_EXIT_CODE);
        }
      }
    });
    builder.setTitle(UIBundle.message("file.cache.conflict.dialog.title"));
    builder.setButtonsAlignment(SwingConstants.CENTER);
    builder.setHelpId("reference.dialogs.fileCacheConflict");
    return builder.show();
  }

  /*package*/ void addListener(@NotNull __ConflictResolverListener listener) {
    myResolverListeners.add(listener);
  }

  /*package*/ void removeListener(@NotNull __ConflictResolverListener listener) {
    myResolverListeners.remove(listener);
  }

  private final List<__ConflictResolverListener> myResolverListeners = new CopyOnWriteArrayList<>();

  interface __ConflictResolverListener {
    void onConflict(@NotNull EditableSModel model);

    void onConflictResolved(@NotNull EditableSModel model);
  }
}
