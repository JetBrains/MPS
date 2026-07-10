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
package jetbrains.mps.nodefs;

import com.intellij.openapi.fileEditor.impl.EditorHistoryManager;
import com.intellij.openapi.project.Project;
import com.intellij.openapi.vfs.VirtualFile;
import com.intellij.openapi.vfs.VirtualFileSystem;
import com.intellij.openapi.vfs.VirtualFileWithoutContent;
import com.intellij.psi.search.ProjectAwareVirtualFile;
import com.intellij.util.LocalTimeCounter;
import jetbrains.mps.extapi.model.TransientSModel;
import jetbrains.mps.extapi.module.TransientSModule;
import jetbrains.mps.ide.project.ProjectHelper;
import jetbrains.mps.logging.Logger;
import jetbrains.mps.project.MPSProject;
import jetbrains.mps.smodel.ModelAccessHelper;
import jetbrains.mps.smodel.SNodePointer;
import jetbrains.mps.smodel.tempmodel.TemporaryModels;
import jetbrains.mps.util.annotation.Hack;
import org.jetbrains.annotations.NonNls;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.annotations.Internal;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SModelReference;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeReference;

import java.io.InputStream;
import java.io.OutputStream;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;


// FWIW, seems there's no reason to implement IdeDocumentHistoryImpl.OptionallyIncluded, as it seems to affect editor navigation b/w commands
@SuppressWarnings("UnstableApiUsage")
public final class MPSNodeVirtualFile extends VirtualFile implements ProjectAwareVirtualFile, VirtualFileWithoutContent,
                                                                     EditorHistoryManager.OptionallyIncluded {
  private static final byte[] CONTENTS = new byte[0];
  private static final Logger LOG = Logger.getLogger(MPSNodeVirtualFile.class);
  public static final String NODE_PREFIX = "node://";

  @NotNull
  private SNodeReference myNode;
  @NotNull
  private RepositoryVirtualFiles myRepoFiles;
  private String myPath;
  private String myName;
  private String myPresentationName;
  private long myModificationStamp = LocalTimeCounter.currentTime();
  private long myTimeStamp = -1;
  private boolean myValid = true;
  // true if this file is for a node from a transient model or module
  private boolean myForTransientNode = true;
  private Runnable myWhenReady;

  MPSNodeVirtualFile(@NotNull SNodeReference nodePointer, @NotNull RepositoryVirtualFiles vfs) {
    myNode = nodePointer;
    myRepoFiles = vfs;
    updateFields();
  }

  MPSNodeVirtualFile(@NotNull String path, @NotNull RepositoryVirtualFiles vfs) {
    myNode = new SNodePointer(null);
    myRepoFiles = vfs;
    myPath = path;
    myName = myPresentationName = myRepoFiles.getPathFacility().tail(path);
    // despite the fact this isn't a real file, we can't answer isValid() == false as IDEA doesn't re-open editors for such files.
    myValid = true;
    myForTransientNode = true;
  }

  // FIXME: check, perhaps is invoked with proper model access already.
  // for exposed files, this shall happen in exclusive read (so that different threads from readAction do not get different
  // result e.g. for getName().
  /*package*/ void updateFields() {
    // FWIW, updateFields is never invoked for unknown files (created using path:String, as we don't invoke updateFields() on construction
    //       nor these files ever get reported as changed (see NVFS.VFSNotifier)
    myRepoFiles.getRepository().getModelAccess().runReadAction(() -> {
      SNode node = myNode.resolve(myRepoFiles.getRepository());
      if (node == null) {
        LOG.warning("Cannot find node for passed SNodeReference: " + myNode);
        myName = myPresentationName = "";
        myPath = "";
        myForTransientNode = true;
      } else {
        myName = myPresentationName = String.valueOf(node.getPresentation());
        final SModel model = node.getModel();
        if (model != null && model.getModule() instanceof TransientSModule) {
          // it's common to open same node from different generation steps (transient models)
          // and to tell nodes from different steps we append model's identification
          final String s = model.getName().getStereotype();
          if (!s.isEmpty()) {
            myPresentationName = myName + '@' + s;
          }
        }
        myPath = NODE_PREFIX + myRepoFiles.getPathFacility().serializeNode(node);
        myTimeStamp = model.getSource().getTimestamp();
        myForTransientNode = model == null || TemporaryModels.isTemporary(model) || model instanceof TransientSModel || model.getModule() instanceof TransientSModule;
      }
    });
  }

  /*
   * mechanism gor MPSFileNodeEditor to get notified once the file is ready to be used in UI,
   * independent of regular node change or VF change notifications (which get tricky for files that change state internally)
   */
  @Hack
  @Internal
  public void whenReady(@NotNull Runnable runnable) {
    if (myRepoFiles.forUnknownFiles()) {
      myWhenReady = runnable;
    } else {
      runnable.run();
    }
  }

  /*package*/ void adopted(@NotNull SNode node, @NotNull RepositoryVirtualFiles properOwner) {
    assert myRepoFiles != properOwner;
    myRepoFiles.forgetMe(this);
    myRepoFiles = properOwner;
    myNode = node.getReference();
    // here I assume we never adopt a node from transient module, and don't care to update presentation name
    myForTransientNode = false;
    myName = myPresentationName = String.valueOf(node.getPresentation());
    myTimeStamp = node.getModel().getSource().getTimestamp();
    myValid = true;
    if (myWhenReady != null) {
      myWhenReady.run();
    }
  }

  @Override
  public boolean isIncludedInEditorHistory(@NotNull Project project) {
    return true;
  }

  @Override
  public boolean isPersistedInEditorHistory() {
    return !myForTransientNode;
  }

  @Nullable
  public SNode getNode() {
    return myNode.resolve(myRepoFiles.getRepository());
  }

  @NotNull
  public SNodeReference getSNodePointer() {
    return myNode;
  }

  @NotNull
  @Override
  public String getPath() {
    return myPath;
  }

  @Override
  @NotNull
  public VirtualFileSystem getFileSystem() {
    return myRepoFiles.getFileSystem();
  }

  /**
   * Pre-evaluated name of the file. This method doesn't require model access.
   */
  @Override
  @NotNull
  @NonNls
  public String getName() {
    return myName;
  }

  /**
   * Pre-evaluated user-presentable name of the file, may include extra information to distinguish nodes with the same {@linkplain #getName() name}.
   * This method doesn't require model access.
   */
  @NotNull
  @Override
  public String getPresentableName() {
    return myPresentationName;
  }

  @Override
  public boolean isDirectory() {
    return false;
  }

  @Override
  public long getLength() {
    return 0;
  }

  @NotNull
  @Override
  public InputStream getInputStream() {
    throw new UnsupportedOperationException();
  }

  @Override
  @NotNull
  public OutputStream getOutputStream(Object requestor, long newModificationStamp, long newTimeStamp) {
    throw new UnsupportedOperationException();
  }

  @Override
  public byte @NotNull [] contentsToByteArray() {
    return CONTENTS;
  }

  @Override
  public @NotNull Charset getCharset() {
    return StandardCharsets.US_ASCII;
  }

  @Override
  @Nullable
  public VirtualFile getParent() {
    // Returning the parent of this node's model virtual file
    // i.e. a real directory wherein the model file lives
    // Needed for idea scope to work (see PsiSearchScopeUtil.isInScope)
    // but why it's not MPSModelVirtualFile that serves as parent for node VF?
    if (!myValid || myNode.getModelReference() == null) {
      return null;
    }
    return new ModelAccessHelper(myRepoFiles.getRepository()).runReadAction(() -> {
      if (!myValid) {
        // wow! this double check is needed even with the fact, that read action is run in the same thread
        // i.e. getParent() and this runnable are in the same thread
        // But! idea waits for the current write action to complete before proceeding to the read action
        // (see ApplicationalImpl.startRead())
        // And it happens so that invalidate() which sets myNode to null reproducibly happens exactly
        // in the write action we're waiting for, hence NPE
        return null;
      }
      org.jetbrains.mps.openapi.model.SModelReference modelRef = myNode.getModelReference();
      if (modelRef.resolve(myRepoFiles.getRepository()) == null) {
        return null;
      }
      MPSModelVirtualFile modelVFile = myRepoFiles.getFileFor(modelRef);
      if (modelVFile != null) {
        return modelVFile.getParent();
      }
      return null;
    });
  }

  @Override
  public VirtualFile[] getChildren() {
    return null;
  }

  @Override
  public void refresh(boolean asynchronous, boolean recursive, Runnable postRunnable) {
    if (postRunnable != null) {
      postRunnable.run();
    }
  }

  @Override
  public boolean isWritable() {
    return true;
  }

  @Override
  public boolean isValid() {
    return myValid;
  }

  /*package*/ void invalidate() {
    if (!myValid) {
      // With proper fix of https://youtrack.jetbrains.com/issue/MPS-24244 (shared VFS notifier instance), shall not happen,
      // nevertheless, doesn't hurt to be alert.
      if (LOG.isTraceLevel()) {
        LOG.trace("Attempt to invalidate already disposed file", new Throwable());
      }
      return;
    }
    myRepoFiles.forgetVirtualFile(myNode);
    myValid = false;
  }

  public void revalidate() {
    assert !myValid;
    myRepoFiles.remindVirtualFile(myNode, this);
    myValid = true;
  }

  // XXX what's the contract of the method???
  public boolean hasValidMPSNode() {
    return isValid() && myRepoFiles.hasVirtualFileFor(myNode);
  }

  @Override
  public long getTimeStamp() {
    return myTimeStamp;
  }

  public void setTimeStamp(long newTimeStamp) {
    myTimeStamp = newTimeStamp;
  }

  @Override
  public long getModificationStamp() {
    return myModificationStamp;
  }

  public void setModificationStamp(long newValue) {
    myModificationStamp = newValue;
  }

  @Override
  public boolean isInProject(@NotNull Project project) {
    final MPSProject mpsProject = ProjectHelper.fromIdeaProject(project);
    SModelReference modelReference = myNode.getModelReference(); // could be null for a provisional file we didn't resolve yet
    if (modelReference != null && mpsProject != null && mpsProject.getRepository() != null) {
      final boolean[] result = new boolean[]{false};
      mpsProject.getRepository().getModelAccess().runReadAction(() -> {
        final SModel model = modelReference.resolve(mpsProject.getRepository());
        result[0] = model != null && !model.isReadOnly();
      });
      return result[0];
    }
    return false;
  }
}
