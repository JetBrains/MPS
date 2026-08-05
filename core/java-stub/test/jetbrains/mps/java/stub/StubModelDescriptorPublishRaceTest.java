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
package jetbrains.mps.java.stub;

import jetbrains.mps.components.ComponentHost;
import jetbrains.mps.extapi.module.SModuleBase;
import jetbrains.mps.extapi.persistence.FolderSetDataSource;
import jetbrains.mps.persistence.java.library.JavaClassStubModelDescriptor;
import jetbrains.mps.project.ModuleId;
import jetbrains.mps.project.structure.modules.ModuleReference;
import jetbrains.mps.smodel.SNodeId.Foreign;
import jetbrains.mps.tool.environment.Environment;
import jetbrains.mps.tool.environment.EnvironmentAware;
import jetbrains.mps.util.PathManager;
import jetbrains.mps.vfs.IFileSystem;
import jetbrains.mps.vfs.VFSManager;
import jetbrains.mps.vfs.util.PathUtil;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.language.SLanguage;
import org.jetbrains.mps.openapi.model.SModelReference;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeId;
import org.jetbrains.mps.openapi.module.SDependency;
import org.jetbrains.mps.openapi.module.SModuleFacet;
import org.jetbrains.mps.openapi.module.SModuleId;
import org.jetbrains.mps.openapi.module.SModuleReference;
import org.jetbrains.mps.openapi.persistence.ModelRoot;
import org.junit.Assert;
import org.junit.Test;

import java.util.Collections;
import java.util.Set;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/**
 * Demonstrates a data-race in the lazy publication of a model's data instance in
 * {@link jetbrains.mps.smodel.RegularModelDescriptor#getSModel()}.
 * <p>
 * {@code getSModel()} assigns the freshly created {@code SModel} data to its (volatile) field and lets the
 * lock-free fast path ({@code if (mySModel != null) return mySModel;}) hand it out <em>before</em>
 * {@code replaceModelAndFireEvent()} attaches the descriptor to the data via
 * {@code SModel.setModelDescriptor(this, ...)}. A concurrent reader can therefore obtain a data instance whose
 * {@code getModelDescriptor() == null}. For a java stub such an instance is only INTERFACE_LOADED (class
 * skeletons only, no members). On it {@code SModel.enforceFullLoad()} is a silent no-op, because it is guarded
 * by {@code if (myModelDescriptor != null) md.load();}. As a result any member/constructor/inner-class
 * reference resolves to {@code null} and — since MPS resolves references silently and never retries — surfaces
 * as a spurious, permanent "Unresolved reference".
 * <p>
 * The interleaving is made deterministic by overriding the standard {@code replaceModelAndFireEvent()} seam to
 * pause after the data instance has been published to the field but before the descriptor is attached; a reader
 * thread resolves a member in that window. No production-only test hooks are required.
 * <p>
 * Expected: the member resolves on every thread (assertion holds). With the buggy publication order the reader
 * observes a descriptor-less instance and {@link org.jetbrains.mps.openapi.model.SModel#getNode(SNodeId)}
 * returns {@code null}, failing the assertion. With the fix (attach the descriptor before the instance is
 * published) the assertion holds.
 * <p>
 * Since the model under test is not attached to a repository, no model access control is in place (same as
 * {@link StubModelLazyLoadStressTest}).
 */
public class StubModelDescriptorPublishRaceTest implements EnvironmentAware {

  private ComponentHost myPlatform;

  @Override
  public void setEnvironment(@NotNull Environment env) {
    myPlatform = env.getPlatform();
  }

  @Test
  public void memberResolvesWhileModelIsBeingPublished() throws InterruptedException {
    final ModuleReference moduleRef = new ModuleReference("fake", ModuleId.regular());
    final SModelReference modelRef = new JavaPackageNameStub("gnu.trove").asModelReference(moduleRef);
    final FolderSetDataSource dataSource = new FolderSetDataSource();
    // any jar with JavaClassStubModelDescriptor would do; trove keeps parity with StubModelLazyLoadStressTest
    final String path = PathUtil.toSystemIndependent(PathManager.getLibPath()) + "/trove.jar!/gnu/trove";
    final IFileSystem jarFS = myPlatform.findComponent(VFSManager.class).getFileSystem(VFSManager.JAR_FS);
    dataSource.addPath(jarFS.getFile(path));

    // Have the loader thread pause inside replaceModelAndFireEvent(), after mySModel is assigned but before
    // the descriptor is attached, until the reader has tried to resolve the reference.
    final CountDownLatch published = new CountDownLatch(1);
    final CountDownLatch readerObserved = new CountDownLatch(1);

    final JavaClassStubModelDescriptor model = new JavaClassStubModelDescriptor(modelRef, dataSource) {
      @Override
      protected void replaceModelAndFireEvent(jetbrains.mps.smodel.SModel oldModel, jetbrains.mps.smodel.SModel newModel) {
        // mySModel is now published to the field (reachable via the lock-free fast path), but the descriptor
        // has NOT been attached to newModel yet. Let a reader observe exactly this state.
        published.countDown();
        try {
          readerObserved.await(10, TimeUnit.SECONDS);
        } catch (InterruptedException ignore) {
          Thread.currentThread().interrupt();
        }
        super.replaceModelAndFireEvent(oldModel, newModel);
      }
    };
    model.setModule(fakeModule(moduleRef));

    // A member (constructor) that only materialises at FULLY_LOADED.
    final SNodeId memberId = new Foreign("~THashMap.<init>()");

    // Loader: performs the initial getSModel() and parks in the overridden replaceModelAndFireEvent().
    final Thread loader = new Thread(model::getSModel, "publish-race-loader");
    loader.start();

    // Reader: resolves the member while the model is published-but-not-attached.
    SNode resolved;
    Assert.assertTrue("loader did not reach the publish window in time", published.await(10, TimeUnit.SECONDS));
    try {
      resolved = model.getNode(memberId);
    } finally {
      readerObserved.countDown();
    }
    loader.join(TimeUnit.SECONDS.toMillis(10));

    Assert.assertNotNull("node should have been resolved but was not found", resolved);
  }

  private static SModuleBase fakeModule(final ModuleReference moduleRef) {
    return new SModuleBase() {
      @Override
      public @NotNull SModuleId getModuleId() {
        return getModuleReference().getModuleId();
      }

      @Override
      public @Nullable String getModuleName() {
        return getModuleReference().getModuleName();
      }

      @Override
      public int getUsedLanguageVersion(@NotNull SLanguage usedLanguage) {
        return -1;
      }

      @Override
      public @NotNull SModuleReference getModuleReference() {
        return moduleRef;
      }

      @Override
      public boolean isReadOnly() {
        return true;
      }

      @Override
      public boolean isPackaged() {
        return false;
      }

      @Override
      public Iterable<SDependency> getDeclaredDependencies() {
        return Collections.emptyList();
      }

      @Override
      public Set<SLanguage> getUsedLanguages() {
        return Collections.emptySet();
      }

      @Override
      public @NotNull Iterable<SModuleFacet> getFacets() {
        return Collections.emptyList();
      }

      @Override
      public Iterable<ModelRoot> getModelRoots() {
        return Collections.emptyList();
      }
    };
  }
}
