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
import jetbrains.mps.extapi.model.SModelData;
import jetbrains.mps.smodel.loading.ModelLoadingState;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.persistence.NullDataSource;

/**
 * <p>
 * Model openapi.SModel implementation to parasitize on (utilize) existing SModelBase and smodel.SModel classes.
 * It takes existing SModelData and provides it to outer world through openapi.SModel.
 * Perhaps, parts of SModelBase could move to SModelDescriptorStub, and this class could use SModelDescriptorStub then.
 *</p>
 * <br/>
 * <em>FIXME move to [smodel] once SModelBase cease to depend on [kernel] stuff</em>
 * <br/>
 * <p>
 * Note, this class doesn't it support add/remove root operations. Either override in your class or use another
 * superclass, like {@link EditableModelDescriptor} or {@link RegularModelDescriptor} with {@link RegularModelDescriptor#replace(ModelLoadResult)}
 * </p>
 * @author Artem Tikhomirov
 */
public class TrivialModelDescriptor extends SModelBase {
  private final SModel myModelData;

  /**
   * @param modelData actual model data represented with this descriptor. Note, data's modelDescriptor is set to <code>this</code>
   */
  public TrivialModelDescriptor(@NotNull SModel modelData) {
    super(modelData.getReference(), new NullDataSource());
    myModelData = modelData;
    replaceInstance(null, modelData); // no need to fire any events, we've just instantiated the model,
    // all we need to do is to associate this descriptor with the data
    setLoadingState(ModelLoadingState.FULLY_LOADED);
  }

  @Override
  public SModel getSModel() {
    return getCurrentModelInternal();
  }

  @Nullable
  @Override
  protected SModel getCurrentModelInternal() {
    return myModelData;
  }

  @Override
  public SModelData getModelData() {
    return myModelData;
  }

  //no-op since currently we don't know how to load this type of model after unloading
  @Override
  public void unload() {

  }
}
