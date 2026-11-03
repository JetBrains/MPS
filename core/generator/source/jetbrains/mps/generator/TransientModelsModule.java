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
package jetbrains.mps.generator;

import jetbrains.mps.extapi.model.ModelWithAttributes;
import jetbrains.mps.extapi.model.SModelBase;
import jetbrains.mps.extapi.module.SModuleBase;
import jetbrains.mps.extapi.module.TransientSModule;
import jetbrains.mps.generator.TransientModelsProvider.TransientSwapSpace;
import jetbrains.mps.generator.impl.ModelVault;
import jetbrains.mps.logging.Logger;
import jetbrains.mps.module.SDependencyImpl;
import jetbrains.mps.project.DevKit;
import jetbrains.mps.smodel.EditableModelDescriptor;
import jetbrains.mps.smodel.FastNodeFinderManager;
import jetbrains.mps.smodel.Language;
import jetbrains.mps.smodel.ModelDependencyScanner;
import jetbrains.mps.smodel.ModelImports;
import jetbrains.mps.smodel.ModelLoadResult;
import jetbrains.mps.smodel.SModel.ImportElement;
import jetbrains.mps.smodel.SModelHeader;
import jetbrains.mps.smodel.SModelId.IntegerSModelId;
import jetbrains.mps.smodel.SNodeImplAccess;
import jetbrains.mps.smodel.loading.ModelLoadingState;
import jetbrains.mps.util.containers.ConcurrentHashSet;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.language.SLanguage;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SModelId;
import org.jetbrains.mps.openapi.model.SModelReference;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeUtil;
import org.jetbrains.mps.openapi.module.SDependency;
import org.jetbrains.mps.openapi.module.SDependencyScope;
import org.jetbrains.mps.openapi.module.SModule;
import org.jetbrains.mps.openapi.module.SModuleFacet;
import org.jetbrains.mps.openapi.module.SModuleReference;
import org.jetbrains.mps.openapi.module.SRepository;
import org.jetbrains.mps.openapi.persistence.ModelRoot;
import org.jetbrains.mps.openapi.persistence.NullDataSource;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.function.BiConsumer;

public class TransientModelsModule extends SModuleBase implements TransientSModule {
  private static final Logger LOG = Logger.getLogger(TransientModelsModule.class);

  private final SModuleReference myModuleReference;
  private final TransientModelsProvider myComponent;

  private final Set<SModel> myPublished = new ConcurrentHashSet<>();
  private final ModelVault<TransientSModelDescriptor> myModelVault = new ModelVault<>();
  // this is a quick hack to avoid unloading output model when 'save transients' is OFF as it's going to get loaded back
  // right away once TextGen tries to access it.
  private final Set<SModelReference> myMarkedOutput = new HashSet<>();

  private final Map<String, GenerationTrace> myTraces = new HashMap<>();

  // facility to generate IntegerSModelId, unique within a transient module
  private final AtomicInteger myCounter = new AtomicInteger(0);

  private TransientSwapSpace mySwapSpace;

  /*package*/ TransientModelsModule(@NotNull TransientModelsProvider tmProvider, @NotNull SModuleReference moduleReference) {
    myComponent = tmProvider;
    myModuleReference = moduleReference;
  }

  @NotNull
  @Override
  public SModuleReference getModuleReference() {
    return myModuleReference;
  }

  @Override
  public Set<SLanguage> getUsedLanguages() {
    // pretty much inspired by local getDeclaredDependencies() and AM.getUsedLanguages()
    assertCanRead();
    Set<SLanguage> usedLanguages = new LinkedHashSet<>();
    Set<SModuleReference> devkits = new LinkedHashSet<>();

    for (SModel m : getModels()) {
      final ModelImports mi = new ModelImports(m);
      usedLanguages.addAll(mi.getUsedLanguages());
      devkits.addAll(mi.getUsedDevKits());
    }

    if (getRepository() != null) {
      // need to resolve devkit to get its exported languages. XXX however, need to account for evolution when TMM lives in its own repository (not project's)
      devkits.stream().map(mr -> mr.resolve(getRepository())).filter(Objects::nonNull).forEach(dk -> ((DevKit) dk).getAllExportedLanguageIds().forEach(usedLanguages::add));
    }
    return usedLanguages;
  }

  @Override
  public @NotNull Iterable<SModuleFacet> getFacets() {
    return Collections.emptyList();
  }

  @Override
  public Iterable<ModelRoot> getModelRoots() {
    return Collections.emptyList();
  }

  @Override
  public boolean isReadOnly() {
    // I treat this as an end-user POV; it's generator that modifies this module internally, but users don't need to
    // deal with the module. This doesn't mean any [openapi]TransientSModule has to be read-only; only the one of Generator scenario.
    return true;
  }

  @Override
  public boolean isPackaged() {
    return false;
  }

  public boolean hasPublished() {
    return !myPublished.isEmpty();
  }

  @Override
  public void dispose() {
    discard();
    super.dispose();
  }

  /**
   * Drop the swap space and all models of this module. Unlike {@link #dispose()}, this does not require the module to be
   * attached to a repository: {@link TransientModelsProvider} uses it for a module it never published, e.g. when the
   * generation was cancelled before {@link TransientModelsProvider#publishAll()}.
   */
  /*package*/ void discard() {
    if (mySwapSpace != null) {
      mySwapSpace.clear();
      mySwapSpace = null;
    }
    clearAll();
  }

  public void clearAll() {
    removeAll();
    myPublished.clear();
    myModelVault.clear();
  }

  public void removeAll() {
    for (SModel model : myModelVault.allModels()) {
      removeModel(model);
    }
  }

  public void clearUnused(boolean dropNotExplicitlyPublished) {
    // mature references as a distinct step (not as part of unload()) just in case there are reference
    // between the models to publish and unload (hence, mature) in improper order may leave reference broken.
    for (TransientSModelDescriptor model : myModelVault.modelsToPublish()) {
      if (!model.isLoaded()) {
        // if it's another model, generated earlier, recorded for publishing, we've already processed its references and unloaded,
        // no need to do it again.
        continue;
      }
      model.makeRefsMature();
    }
    for (TransientSModelDescriptor model : myModelVault.modelsToPublish()) {
      if (!model.isLoaded()) {
        // see same condition in makeRefsMature() cycle, above.
        continue;
      }
      if (myMarkedOutput.contains(model.getReference())) {
        continue;
      }
      // FIXME unloading a model discards its attributes (an old defect that we swap out nodes only, neither model imports nor attributes get serialized
      //       and now that we use model attributes to pass generationTarget value, we truly need to care about attributes being persisted
      //       Besides, keeping model loaded also helps to address lack of MA.read in TextGen, where ModuleStaleFileManager needs to access repositories of
      //       both input and output models (now it doesn't access neither)
      unloadModel(model);
    }
    for (TransientSModelDescriptor model : myModelVault.modelsNotToPublish()) {
      if (dropNotExplicitlyPublished) {
        removeModel(model);
      } else {
        unloadModel(model);
      }
    }
  }

  public boolean addModelToKeep(@NotNull SModelReference modelReference, boolean force) {
    assert isMyTransientModel(modelReference);
    if (force) {
      myModelVault.publish(modelReference);
      return true;
    }
    if (myModelVault.isPublished(modelReference)) {
      return true;
    }
    if (!myComponent.canKeepOneMore()) {
      // maximum number of models reached
      return false;
    }
    myModelVault.publish(modelReference);
    myComponent.decreaseKeptModels();
    return true;
  }

  // hints that the model is part of output collection (and likely doesn't need to get unloaded)
  public void recordOutputModel(@NotNull SModelReference modelReference) {
    assert isMyTransientModel(modelReference);
    addModelToKeep(modelReference, true);
    assert myModelVault.isPublished(modelReference);
    myMarkedOutput.add(modelReference);
  }

  // to remove published model, one needs write access to a repository,
  // which is not always possible e.g. when a new checkpoint model replaces existing
  public void forgetModel(SModel model, boolean forgetDependants) {
    SModelReference modelReference = model.getReference();
    assert isMyTransientModel(modelReference);
    myModelVault.forget(model);
    if (forgetDependants) {
      for (TransientSModelDescriptor tm : myModelVault.allModels()) {
        for (SModelReference importElement : tm.getModelImports()) {
          if (modelReference.equals(importElement)) {
            myModelVault.forget(tm);
            break;
          }
        }
      }
    }
  }

  // model removal doesn't affect list of models to publish. To unpublish a model, call #forgetModel() first
  public void removeModel(SModel md) {
    // FNF is poor in tracking transients models (unpublished models do not show up in a repository)
    // This code might need reconsideration once we have a distinct repository for transient modules (we'll either
    // get capability to track models, or FNFM will attach finders to a specific repo and dispose all of them at once
    // when transient repo is thrown away).
    FastNodeFinderManager.dispose(md);
    myModelVault.remove(md);
    if (myPublished.remove(md)) {
      unregisterModel((SModelBase) md);
    }
    if (md instanceof TransientSModelDescriptor) {
      ((TransientSModelDescriptor) md).dropModel();
    }
  }

  private void unloadModel(TransientSModelDescriptor model) {
    model.unloadModelNoSave();
  }

  public void publishAll() {
    for (TransientSModelDescriptor model : myModelVault.modelsToPublish()) {
      if (myPublished.add(model)) {
        registerModel(model);
      }
    }
    for (TransientSModelDescriptor model : myModelVault.modelsNotToPublish()) {
      if (myPublished.contains(model)) {
        removeModel(model);
      }
    }
  }

  public SModel createTransientModel(SModelReference modelReference) {
    TransientSModelDescriptor result = new TransientSModelDescriptor(modelReference);
    // XXX why do we load new model?
    result.load();

    myModelVault.add(result);

    return result;
  }

  // TODO generify attributes so that we can pass whatever information we find handy along with a transient model
  public SModel createTransientModel(SModelReference modelReference, int branchSerial) {
    TransientSModelDescriptor result = (TransientSModelDescriptor) createTransientModel(modelReference);
    result.setBranchSerial(branchSerial);
    return result;
  }

  public String toString() {
    return getModuleName() + " [transient models module]";
  }

  // Purpose of this implementation is to resolve references to yet not public transient models
  private SModel findInVault(SModelId reference) {
    for (SModel m : myModelVault.allModelsExceptScheduled2Drop()) {
      if (reference.equals(m.getModelId())) {
        return m;
      }
    }
    return null;
  }

  @Override
  public SModel getModel(SModelId id) {
    SModel rv = super.getModel(id);
    // we may find CP model published during previous generator run but already re-generated (and scheduled to drop) during actual run.
    if (rv != null && !myModelVault.isScheduled2Drop(rv)) {
      return rv;
    }
    return findInVault(id);
  }

  public boolean isMyTransientModel(SModelReference modelRef) {
    return modelRef != null && myModelVault.known(modelRef);
  }


  /**
   * @param idHint 5 hex digits for your own use, not necessarily unique for models from this module
   * @return simple integer id unique within this module, with value from MPS reserved range {@link IntegerSModelId}
   */
  public IntegerSModelId nextModelId(int idHint) {
//    int prefix = 0x100 + myCounter.getAndIncrement();
//    return new IntegerSModelId((prefix << 20) | (idHint & 0x000FFFFF));
    // next alternative gives almost complete integer range (except some ~270M)
    return new IntegerSModelId(0x10000000 + myCounter.incrementAndGet());
  }

  /**
   * Module of any referenced model we can access through our repository (one of TransientModelsProvider) is deemed declared dependency.
   * There's little value to show 'out of scope' errors for transient nodes, that's why everything is here.
   * It used to be GMDM(originalModule, Compile), but I don't see any reason for that.
   */
  @Override
  public Iterable<SDependency> getDeclaredDependencies() {
    final long start = System.nanoTime();
    assertCanRead();
    // SModelOperations.validateLanguagesAndImports could update this set for us (if I override addDependency() to record values),
    // but I don't think the method deserves to survive, and its extra use doesn't help this.
    HashSet<SModelReference> referencedModels = new HashSet<>();
    for (SModel m : getModels()) {
      // I'd love to collect importedModel.getModuleReference(), but GUID model references would leave out quite some module dependencies
      referencedModels.addAll(new ModelImports(m).getImportedModels());
    }
    HashSet<SModule> deps = new HashSet<>();
    for (SModelReference mr : referencedModels) {
      SModel model = mr.resolve(myComponent.getRepository());
      if (model != null && model.getModule() != null) {
        deps.add(model.getModule());
      }
    }
    ArrayList<SDependency> rv = new ArrayList<>(deps.size());
    deps.forEach(m -> rv.add(new SDependencyImpl(m, SDependencyScope.DEFAULT, false)));
    final long end = System.nanoTime();
    System.out.printf("TMM.getDeclaredDeps(): %d µs\n", (end - start)/1_000);
    return rv;
  }

  public GenerationTrace getTrace(SModelReference model) {
    return myTraces.get(model.getName().getLongName());
  }

  public void publishTrace(@NotNull SModelReference model, @NotNull GenerationTrace trace) {
    myTraces.put(model.getName().getLongName(), trace);
  }

  public void changeModelReference(@NotNull SModel transientModel, @NotNull SModelReference newRef) {
    assert isMyTransientModel(transientModel.getReference());
    ((TransientSModelDescriptor) transientModel).changeModelReference(newRef);
  }

  /*package*/ TransientSwapSpace getSwapSpace() {
    if (mySwapSpace == null) {
      // I don't care to guard thread access, as it's responsibility of TransientSwapOwner to make swap allocation atomic (so that check for existence and
      // create/clear can not get into race condition), and here I don't care if I initialize the field twice with the same value.
      mySwapSpace = myComponent.getTransientSwapSpace(this);
    }
    return mySwapSpace;
  }

  public final class TransientSModelDescriptor extends EditableModelDescriptor implements jetbrains.mps.extapi.model.TransientSModel, ModelWithAttributes {
    private boolean wasUnloaded = false;
    // XXX IRT relies on model changed events. TransientSModel.canFireEvents suggests our intention here was not
    // to fire any events at all. It's not true now - we respect canFireEvents() for few SModelListener events only,
    // perhaps, worth respecting the flag for all modification events, in which case IRT here would make no sense.

    private int myBranchSerial = 0;

    private TransientSModelDescriptor(@NotNull SModelReference modelRef) {
      super(modelRef, new NullDataSource());
    }

    /*package*/ void setBranchSerial(int v) {
      myBranchSerial = v;
    }

    public int getBranchSerial() {
      return myBranchSerial;
    }

    @Override
    protected void assertCanChange() {
      // This model descriptor, unlike others, supports 'unloading' of model data.
      // IOW, has special handling for models that are already attached to a repository but its model data
      // could be restored and updated on load. Thus, we allow model modifications unless completely loaded.
      if (isLoaded()) {
        super.assertCanChange();
      }
    }

    @Override
    @NotNull
    protected ModelLoadResult<jetbrains.mps.smodel.SModel> createModel() {
      if (wasUnloaded) {
        LOG.debug("Re-loading " + getReference());

        TransientSwapSpace swap = getSwapSpace();
        if (swap == null) {
          // if we got here, it means doUnload managed to access swap and wrote model down there.
          throw new IllegalStateException("no swap space");
        }

        // FIXME need lazy loading now (with transient models unloaded at the end of a model generation) - navigating to transients module
        //       triggers complete loading of all models at once

        TransientSModel m = swap.restoreFromSwap(getReference(), new TransientSModel(getReference()));

        if (m == null) {
          throw new IllegalStateException("lost swapped out model");
        }
        // FIXME restoreFromSwap is supposed to get imports (and not only imports!) back
        //noinspection UnnecessaryUnboxing
        if (Boolean.FALSE.booleanValue()) {

          // ensure imports are back
          // XXX don't ask me why we don't swap out models with imports, but bare nodes only.
          // TransientModelsModule is not necessarily inside a repository, need to take one
          // where it would end up if published
          SRepository repository = TransientModelsModule.this.myComponent.getRepository();
          // next code is just an inlined copy of ModelDependencyUpdate, which can't be used here as
          // it deals with [openapi].SModel, while here we've got detached model data only ([smodel].SModel)
          // Note, here I assume 'm' holds nodes only, no imports or used languages (MDU does).
          // new ModelDependencyUpdate(this).updateUsedLanguages().updateImportedModels(repository);
          final ModelDependencyScanner mds = new ModelDependencyScanner();
          mds.crossModelReferences(true).usedLanguages(true).walk(SNodeUtil.getDescendants(m.getRootNodes()));
          for (SLanguage language : mds.getUsedLanguages()) {
            m.addLanguage(language, m.getLanguageImportVersion(language));
            // XXX see ModelDependencyUpdate#updateImportedModels() for further questions/rant
            SModuleReference langModuleRef = language.getSourceModuleReference();
            SModule languageModule = langModuleRef == null ? null : langModuleRef.resolve(repository);
            if (false == languageModule instanceof Language) {
              continue;
            }
            // XXX I wonder if this is necessary, provided MDS could detect accessory model references
            for (SModel am : ((Language) languageModule).getAccessoryModels()) {
              m.addModelImport(new ImportElement(am.getReference()));
            }
          }

          for (SModelReference targetModuleReference : mds.getCrossModelReferences()) {
            m.addModelImport(new ImportElement(targetModuleReference));
          }
        }

        wasUnloaded = false;
        return new ModelLoadResult<>(m, ModelLoadingState.FULLY_LOADED);
      } else {
        return new ModelLoadResult<>(new TransientSModel(getReference()), ModelLoadingState.FULLY_LOADED);
      }
    }

    @Override
    protected void doUnload() {
      if (!wasUnloaded) {
        LOG.debug("Un-loading " + getReference());

        TransientSwapSpace swap = getSwapSpace();
        if (swap == null || !swap.swapOut(getCurrentModelInternal())) {
          return;
        }

        super.doUnload(); // changes loading state as recorded in the descriptor
        wasUnloaded = true;
      }
    }

    // Can't use openapi's unload as EditableSModelBase does save() on unload(), which is (likely? it's guess) not what
    // originally deemed necessary for transient models (although save() seems to be restricted with isChanged(), which is always false here?),
    // thus mimics what SModelBase#unload does.
    // FIXME now that we're subclassing EditableModelDescriptor, use unload() instead of this method directly
    /*package*/ void unloadModelNoSave() {
      final ModelLoadingState oldState = getLoadingState();
      doUnload();
      fireModelStateChanged(oldState, getLoadingState());
    }

    // unlike unload, doesn't not swap out model data
    private void dropModel() {
      // FIXME seems to be identical to #unloadModelNoSave(), check usage scenarios!
      if (getCurrentModelInternal() != null) {
        LOG.debug("Dropped " + getReference());
        super.doUnload();
      }
    }

    @Override
    public SModule getModule() {
      return TransientModelsModule.this;
    }

    @Override
    public boolean isChanged() {
      // TODO move transient models outside of the default repository; false here prevents model from saving
      return false;
    }

    @Override
    public void setChanged(boolean changed) {
      // no-op, see #isChanged()
    }

    @Override
    public void save() {
      throw new UnsupportedOperationException();
    }

    @Override
    public void reloadFromSource() {
      // no-op
    }

    public void makeRefsMature() {
      for ( SNode n : getRootNodes()) {
        new SNodeImplAccess(n).makeReferencesIndirect();
        // XXX makeIndirect() doesn't force 'maturing' of references to hanging nodes (from models not in repository)
        //     I wonder if transient model happen to have a reference to a checkpoint model, does it mean we fail to
        //     serialize these? Is it an issue?
      }
    }

    private SModelHeader getModelHeader() {
      jetbrains.mps.smodel.SModel md = getSModel();// init model just in case it hasn't been initialized
      return ((TransientSModel) md).getSModelHeader();
    }

    @Override
    public void setAttribute(@NotNull String key, @Nullable String value) {
      if (value == null) {
        getModelHeader().removeOptionalProperty(key);
      } else {
        getModelHeader().setOptionalProperty(key, value);
      }
      setChanged(true);
    }

    @Nullable
    @Override
    public String getAttribute(@NotNull String key) {
      return getModelHeader().getOptionalProperty(key);
    }

    @Override
    public void forEachAttribute(@NotNull BiConsumer<String, String> action) {
      getModelHeader().getOptionalProperties().forEach(action);
    }
  }
}
