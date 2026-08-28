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

import jetbrains.mps.extapi.model.EditableSModelBase;
import jetbrains.mps.smodel.loading.ModelLoadingState;
import jetbrains.mps.smodel.loading.PartialModelDataSupport;
import jetbrains.mps.smodel.loading.PartialModelDataSupport.ModelLoader;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.model.SModelReference;
import org.jetbrains.mps.openapi.module.SRepository;
import org.jetbrains.mps.openapi.persistence.DataSource;

/**
 * Model with data that could get gradually loaded in subsequent steps.
 * evgeny, 6/6/13
 */
public abstract class LazyEditableSModelBase extends EditableSModelBase {
  private final PartialModelDataSupport<SModel> myLoadSupport;

  public LazyEditableSModelBase(@NotNull SModelReference modelReference, @NotNull DataSource source) {
    super(modelReference, source);
    myLoadSupport = new PartialModelDataSupport<>(this, new ModelLoader<SModel>() {
      @Override
      public @NotNull ModelLoadResult<SModel> doLoad(ModelLoadingState state) {
        ModelLoadResult<SModel> result = LazyEditableSModelBase.this.loadSModel(state);
        if (result.getModelData() != null) {
          result.getModelData().setModelDescriptor(LazyEditableSModelBase.this, LazyEditableSModelBase.this.getNodeEventDispatch());
        }
        return result;
      }

      @Override
      public void completeUpdate(SModel modelData) {
        // XXX still not sure if it's the best idea to update references on load, it's legacy approach and
        //     I don't see proper justification. Doing this on 'save' might be enough (for MPS-22440 scenario,
        //     'generation required' won't show up as the model won't be marked as changed on 'full load').
        final SRepository repo = LazyEditableSModelBase.this.getRepository();
        if (repo != null) {
          boolean needToSave = modelData.updateExternalReferences(repo);

          if (needToSave && !getSource().isReadOnly()) {
            LazyEditableSModelBase.this.setChanged(true);
          }
        }
      }
    });
  }

  @Override
  public final SModel getSModel() {
    ModelLoadingState oldState = getLoadingState();
    SModel res = myLoadSupport.getModel(ModelLoadingState.INTERFACE_LOADED);
    if (res == null) {
      return null; // this is when we are in recursion
    }
    fireModelStateChanged(oldState, getLoadingState()); // doesn't dispatch if state is the same
    return res;
  }

  @Override
  public final void load() {
    ModelLoadingState oldState = getLoadingState();
    myLoadSupport.getModel(ModelLoadingState.FULLY_LOADED);
    // e.g. could transition from INTERFACE_LOADED to FULLY_LOADED
    fireModelStateChanged(oldState, getLoadingState());
  }

  @Override
  protected final SModel getCurrentModelInternal() {
    // getModel(null) is not expected to change loading state, hence no fireModeStateChanged here
    return myLoadSupport.getModel(null);
  }


  @Override
  protected void doUnload() {
    super.doUnload();
    myLoadSupport.replaceWith(null, ModelLoadingState.NOT_LOADED);
  }

  /**
   * loads model from the source, w/o changing state of SModelDescriptor
   */
  protected abstract ModelLoadResult<SModel> loadSModel(ModelLoadingState state);

  void replaceModel(final SModel newModel, final ModelLoadingState state) {
    final boolean needToChangeReference = needToChangeReference(getReference(), newModel.getReference());
    if (newModel == getCurrentModelInternal() && !needToChangeReference) {
      return;
    }
    setChanged(false);
    final SModel oldModel = getCurrentModelInternal();
    myLoadSupport.replaceWith(newModel, state);
    // newModel to get modelDescriptor
    replaceInstance(oldModel, newModel);
    // and event firing comes separately
    fireInstanceReplaced(oldModel, newModel);

    // fixme AP since we have reference separately from the model data; will go away once the name as well as id is stored inside model data
    if (needToChangeReference) {
      changeModelReference(newModel.getReference());
    }
  }

  @Deprecated(since = "0", forRemoval = true)
  private static boolean needToChangeReference(SModelReference oldRef, SModelReference newRef) {
    return !(oldRef.getModelId().equals(newRef.getModelId()) && oldRef.getName().equals(newRef.getName()));
  }

  @Override
  protected void reloadContents() {
    if (getLoadingState() == ModelLoadingState.NOT_LOADED) {
      // even though model is not loaded, it might be an invalid model that failed to load due to some error inside a file.
      // once file is changed, we get reloadContents() through file listener, and need to clear old InvalidSModel instance of model data.
      final SModel modelData = myLoadSupport.getModel(null);
      if (modelData != null) {
        myLoadSupport.replaceWith(null, ModelLoadingState.NOT_LOADED);
        modelData.dispose();
      }
      return;
    }

    ModelLoadResult<SModel> result = loadSModel(getLoadingState());
    replaceModel(result.getModelData(), result.getState());
  }
}
