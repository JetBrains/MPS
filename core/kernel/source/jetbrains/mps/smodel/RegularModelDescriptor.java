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
package jetbrains.mps.smodel;

import jetbrains.mps.extapi.model.SModelBase;
import jetbrains.mps.smodel.loading.ModelLoadingState;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.model.SModelReference;
import org.jetbrains.mps.openapi.persistence.DataSource;

/**
 * General [openapi]SModel implementation, with proper synchronization and loading notifications, with factory method {@link #createModel()}
 * for subclasses to override.
 *
 * IMPLEMENTATION NOTES:
 * Bears 'ModelDescriptor' name to keep it consistent, where model data is smodel.SModel, and openapi.SModel implementation is
 * merely a proxy to model data. Once I can do similar implementation using API classes only, shall switch to use 'Model' for
 * these proxies (openapi.SModel) and stick to various XXXModelData for smodel.SModel.
 *
 * Lives in j.m.smodel, not j.m.extapi.model as it depends from smodel.SModel now, and I want API to use API classes only.
 */
public abstract class RegularModelDescriptor extends SModelBase {
  // FIXME SModelBase/SModelDefscriptorStub with getSModelInternal demand we keep SModel, not SModelData
  private volatile jetbrains.mps.smodel.SModel mySModel;

  /**
   * left protected for subclasses that need extended control over loading process (i.e. partial/sequential model loading)
   */
  protected final Object myLoadLock = new Object();

  protected RegularModelDescriptor(@NotNull SModelReference modelReference, @NotNull DataSource dataSource) {
    super(modelReference, dataSource);
  }

  @Override
  public final jetbrains.mps.smodel.SModel getSModel() {
    SModel copy = mySModel;
    if (copy != null) {
      return copy;
    }
    final ModelLoadingState oldState;
    boolean replaced = false;
    synchronized (myLoadLock) {
      oldState = getLoadingState();
      if (mySModel == null) {
        ModelLoadResult<jetbrains.mps.smodel.SModel> loadResult = createModel();
        final jetbrains.mps.smodel.SModel newlyLoaded = loadResult.getModelData();
        setLoadingState(loadResult.getState());
        // has to go inside a lock to prevent race condition like MPS-40002, mySModel shall never escape
        // getSModel() without proper ModelDescriptor set
        replaceInstance(null, newlyLoaded);
        mySModel = newlyLoaded;
        replaced = true;
      }
    }
    // don't send more than once in case few threads got into this method
    if (replaced) {
      // in fact, null->mySModel is no-op
      fireInstanceReplaced(null, mySModel);
      fireModelStateChanged(oldState, getLoadingState());
    }
    return mySModel;
  }

  @Nullable
  @Override
  protected final jetbrains.mps.smodel.SModel getCurrentModelInternal() {
    return mySModel;
  }

  /**
   * @return new model data and level it was loaded to
   */
  @NotNull
  protected abstract ModelLoadResult<jetbrains.mps.smodel.SModel> createModel();

  @Override
  protected void doUnload() {
    synchronized (myLoadLock) {
      super.doUnload();
      mySModel = null;
    }
  }

  /**
   * Handy utility when the new model data is known/obtained beforehand, not through #createModel() factory
   */
  protected void replace(@NotNull ModelLoadResult<jetbrains.mps.smodel.SModel> newModel) {
    final ModelLoadingState oldState;
    final SModel oldModel;
    synchronized (myLoadLock) {
      oldState = getLoadingState();
      oldModel = mySModel;
      mySModel = newModel.getModelData();
      setLoadingState(newModel.getState());
      replaceInstance(oldModel, mySModel);
    }
    fireInstanceReplaced(oldModel, mySModel);
    fireModelStateChanged(oldState, getLoadingState());
  }
}
