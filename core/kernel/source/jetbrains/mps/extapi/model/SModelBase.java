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
package jetbrains.mps.extapi.model;

import jetbrains.mps.extapi.module.SModuleBase;
import jetbrains.mps.logging.Logger;
import jetbrains.mps.smodel.IllegalModelAccessException;
import jetbrains.mps.smodel.InvalidSModel;
import jetbrains.mps.smodel.MPSModuleRepository;
import jetbrains.mps.smodel.NodeIdentityComponent;
import jetbrains.mps.smodel.event.DependencyChangeBridge;
import jetbrains.mps.smodel.event.ModelEventDispatch;
import jetbrains.mps.smodel.event.ModelListenerDispatch;
import jetbrains.mps.smodel.event.SModelDevKitEvent;
import jetbrains.mps.smodel.event.SModelImportEvent;
import jetbrains.mps.smodel.event.SModelLanguageEvent;
import jetbrains.mps.smodel.loading.ModelLoadingState;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.language.SConcept;
import org.jetbrains.mps.openapi.language.SLanguage;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SModelId;
import org.jetbrains.mps.openapi.model.SModelListener;
import org.jetbrains.mps.openapi.model.SModelListener.DependencyChange;
import org.jetbrains.mps.openapi.model.SModelName;
import org.jetbrains.mps.openapi.model.SModelReference;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeAccessListener;
import org.jetbrains.mps.openapi.model.SNodeChangeListener;
import org.jetbrains.mps.openapi.model.SNodeId;
import org.jetbrains.mps.openapi.module.SModule;
import org.jetbrains.mps.openapi.module.SModuleReference;
import org.jetbrains.mps.openapi.module.SRepository;
import org.jetbrains.mps.openapi.persistence.DataSource;
import org.jetbrains.mps.openapi.persistence.ModelRoot;

import java.util.Collections;

/**
 * Base implementation of {@link org.jetbrains.mps.openapi.model.SModel}, with actual
 * {@link jetbrains.mps.extapi.model.SModelData model data} kept separately, ready for e.g. re-load.
 *
 * This implementation tracks load state of the model data ({@link #getLoadingState()}) and expects
 * subclasses to {@link #setLoadingState(ModelLoadingState) update} this state appropriately.
 *
 * {@link #getModelData()} provides access to actual node storage.
 *
 * TODO relocate to [smodel]
 */
public abstract class SModelBase extends SModelDescriptorStub implements SModel {
  private static final Logger LOG = Logger.getLogger(SModelBase.class);

  private final ModelEventDispatch myNodeEventDispatch;
  // XXX when necessary, shall get exposed with protected accessor. fire* methods kept for now as some of them do delegation to legacy
  // listeners as well, could get removed once smodel.SModelListener gone. Besides, I'm not yet sure multi-cast approach of
  // ModelListenerDispatch shall prevail, to limit future changes, let fire* method stay non deprecated for now.
  private final ModelListenerDispatch myModelEventDispatch;

  @NotNull private final DataSource mySource;
  @NotNull private SModelReference myModelReference;
  @Nullable private ModelRoot myModelRoot;

  private SModule myModule;
  private volatile SRepository myRepository = null;

  /**
   * model is treated {@link #isLoaded() loaded} when the state == FULLY_LOADED.
   * There are model implementations with simple NOT_LOADED -- FULLY_LOADED cycle,
   * and more complex with NOT_LOADED -- INTERFACE_LOADED -- FULLY_LOADED.
   */
  private ModelLoadingState myModelLoadState = ModelLoadingState.NOT_LOADED;

  protected SModelBase(@NotNull SModelReference modelReference, @NotNull DataSource source) {
    myModelReference = modelReference;
    mySource = source;
    myNodeEventDispatch = new ModelEventDispatch(this, this::fireModelNodesChanged);
    myModelEventDispatch = new ModelListenerDispatch();
  }

  @Override
  public SRepository getRepository() {
//    assertCanRead(); we don't require write lock when myRepo is assigned, why would require read to get?
    return myRepository;
  }

  @Override
  public SNode createNode(@NotNull SConcept concept) {
    // nodeId should be model's responsibility, not SNode's as we shall migrate towards model-local node ids, preferably int instead of long,
    // and at least not random
    return new jetbrains.mps.smodel.SNode(concept, NodeIdentityComponent.getInstance().issue(this));
  }

  @Override
  public SNode createNode(@NotNull SConcept concept, @Nullable SNodeId nodeId) {
    if (nodeId == null) {
      nodeId = NodeIdentityComponent.getInstance().issue(this);
    }
    return new jetbrains.mps.smodel.SNode(concept, nodeId);
  }

  public void attach(@NotNull SRepository repo) {
    if (myRepository == repo) {
      LOG.warning("The model " + this + " is already attached to the repository " + repo);
      return;
    }
    if (myRepository != null) {
      throw new IllegalModelAccessException("Model is already attached to a repository, can't attach to another one");
    }
    repo.getModelAccess().checkReadAccess();
    myRepository = repo;
    myModelEventDispatch.modelAttached(this, repo);
  }

  public void detach() {
    assertCanChange();
    if (myRepository != null) {
      myModelEventDispatch.modelDetached(this, myRepository);
      myRepository = null;
    }
    fireBeforeModelDisposed(this);
    setModelRoot(null);
    jetbrains.mps.smodel.SModel model = getCurrentModelInternal();
    if (model != null) {
      // XXX In fact, seems reasonable to call doUnload() here, as subclasses might need to clear their state on detach in
      //     a manner similar to unload (just w/o event dispatch, though this is questionable as well - why detach doesn't
      //     need to send out 'unloaded' event?). However, at the moment TransientModel does swap out on doUnload, and it's
      //     NOT what we want on model detach. Need a better contract for unload, detach and cleanup of instance fields.
      // OTOH, it's not apparent why detach of a model shall dispose its data. Perhaps, all we need to do here
      //     is to clean fields to free references, and leave model data intact?
      model.dispose();
      setLoadingState(ModelLoadingState.NOT_LOADED);
    }
    clearListeners();
    setModule(null);
  }

  @Override
  protected void clearListeners() {
    super.clearListeners();
    myModelEventDispatch.clearListeners();
    myNodeEventDispatch.clearListeners();
  }

  @Override
  public Iterable<SNode> getRootNodes() {
    assertCanRead();
    return getModelData().getRootNodes();
  }

  @Override
  public SNode getNode(SNodeId id) {
    assertCanRead();
    return getModelData().getNode(id);
  }


  @Override
  @NotNull
  public SModelReference getReference() {
    return myModelReference;
  }

  @NotNull
  @Override
  public SModelId getModelId() {
    return myModelReference.getModelId();
  }

  @Override
  @Deprecated
  public String getModelName() {
    return myModelReference.getModelName();
  }

  @NotNull
  @Override
  public SModelName getName() {
    return myModelReference.getName();
  }

  @Override
  @NotNull
  public DataSource getSource() {
    return mySource;
  }

  public void setModule(SModule module) {
    assertCanRead(); // FIXME why not write?
    myModule = module;
  }

  /**
   * TODO make final
   */
  @Override
  @Nullable
  public SModule getModule() {
    // FIXME provided setModule() requires read lock, another read lock here doesn't prevent from
    // myModule being modified in a parallel read, and the reason to have read check here eludes from me.
    // Code like SModuleOperations.getOutputRoot(SModel) fails with assert enabled, and
    // it's not obvious whether it's the client code to fix (to obtain read lock) or
    // this method shall not check for read access at all.
//    assertCanRead();
    return myModule;
  }

  public void setModelRoot(@Nullable ModelRoot modelRoot) {
    assertCanChange();
//    if (myModelRoot != null && modelRoot != null) {
//      LOG.error("Duplicate model roots for model " + getLongName() + " in module " + modelRoot.getModule() + ": \n" +
//        "1. " + myModelRoot.getPresentation() + "\n" +
//        "2. " + modelRoot.getPresentation()
//      );
//    }
    myModelRoot = modelRoot;
  }

  @Override
  @Nullable
  public ModelRoot getModelRoot() {
    assertCanRead();
    return myModelRoot;
  }

  @Override
  public void addRootNode(@NotNull SNode node) {
    throw new UnsupportedOperationException();
  }

  @Override
  public void removeRootNode(@NotNull SNode node) {
    throw new UnsupportedOperationException();
  }

  @Override
  public boolean isReadOnly() {
    return getSource().isReadOnly(); // reasonable default
  }

  /**
   * Access actual node storage. Might trigger model load if model is not yet loaded.
   * XXX perhaps, this method shall live in SModelDescriptorStub?
   * @return node storage. Generally, shall not return <code>null</code> (FIXME revisit contract, enforce)
   */
  public SModelData getModelData() {
    return getSModel();
  }

  /**
   * Likely, shall return SModelData eventually
   *
   * @return actual model data or <code>null</code> if not initialized yet
   */
  @Nullable
  protected abstract jetbrains.mps.smodel.SModel getCurrentModelInternal();

  @NotNull
  @Override
  public Iterable<Problem> getProblems() {
    assertCanRead();
    SModelData modelData = getModelData();
    if (modelData instanceof InvalidSModel) {
      return ((InvalidSModel) modelData).getProblems();
    }
    return Collections.emptySet();
  }

  @Override
  public void load() {
    // perhaps, both load() and unload() shall be left to implementors?
    getModelData();
  }

  /**
   * Dispose model data, change model's {@link #getLoadingState() loading state} and
   * dispatch {@link #fireModelStateChanged(ModelLoadingState, ModelLoadingState) state change event}.
   * Base implementation does nothing if there's no {@link #getCurrentModelInternal() initialized model data}.
   * Generally, subclasses shall override {@link #doUnload()} to perform actual cleanup of instance fields.
   */
  @Override
  public void unload() {
    assertCanChange();

    if (getCurrentModelInternal() == null) {
      return;
    }

    final ModelLoadingState oldState = getLoadingState();
    doUnload();
    ModelLoadingState newState = getLoadingState();

    //we'd like to have this at least until all usages will be corrected (and maybe even after that since
    // the model is actually replaced)
    fireModelReplaced();

    fireModelStateChanged(oldState, newState);
  }

  /**
   * Perform actual dispose of model data and {@link #setLoadingState(ModelLoadingState)} changes loading state}.
   * No loading state event is sent (responsibility of {@link #unload()}. Subclasses shall override to
   * clean instance fields and generally shall delegate to this implementation first to dispose model data.
   */
  protected void doUnload() {
    jetbrains.mps.smodel.SModel modelData = getCurrentModelInternal();
    if (modelData == null) {
      return;
    }
    modelData.dispose();
    setLoadingState(ModelLoadingState.NOT_LOADED);
  }

  @Override
  public boolean isLoaded() {
    return getLoadingState() == ModelLoadingState.FULLY_LOADED;
  }

  @Override
  public void addModelListener(SModelListener l) {
    myModelEventDispatch.addListener(l);
  }

  @Override
  public void removeModelListener(SModelListener l) {
    myModelEventDispatch.removeListener(l);
  }

  @Override
  public void addAccessListener(SNodeAccessListener l) {
    myNodeEventDispatch.addAccessListener(l);
  }

  @Override
  public void removeAccessListener(SNodeAccessListener l) {
    myNodeEventDispatch.removeAccessListener(l);
  }

  /**
   * This class doesn't dispatch change events, no listeners are tracked.
   */
  @Override
  public void addChangeListener(SNodeChangeListener l) {
    // intentionally no-op
  }

  /**
   * This class doesn't dispatch change events, no listeners are tracked.
   */
  @Override
  public void removeChangeListener(SNodeChangeListener l) {
    // intentionally no-op
  }

  protected final void fireBeforeModelRenamed(SModelReference newName) {
    SModule module = getModule();
    if (module instanceof SModuleBase) {
      ((SModuleBase) module).fireBeforeModelRenamed(this, newName);
    }
  }

  protected final void fireModelRenamed(SModelReference oldName) {
    SModule module = getModule();
    if (module instanceof SModuleBase) {
      ((SModuleBase) module).fireModelRenamed(this, oldName);
    }
  }

  /**
   * This method sends out proper notifications unless old and new state values are the same.
   * Note, it's not this method's responsibility to do actual change of the state, do it with {@link #setLoadingState(ModelLoadingState)}
   */
  protected void fireModelStateChanged(ModelLoadingState oldState, ModelLoadingState newState) {
    if (oldState == newState) {
      return;
    }
    super.fireModelStateChanged(newState);
    if (newState == ModelLoadingState.NOT_LOADED) {
      myModelEventDispatch.modelUnloaded(this);
    } else {
      myModelEventDispatch.modelLoaded(this, newState == ModelLoadingState.INTERFACE_LOADED);
    }
  }

  @Override
  protected void fireModelSaved() {
    super.fireModelSaved();
    myModelEventDispatch.modelSaved(this);
  }

  /**
   * why is it here if and not in EditableSModel? what is conflict?
   */
  protected void fireConflictDetected() {
    myModelEventDispatch.conflictDetected(this);
  }

  protected void fireProblemsDetected(Iterable<Problem> problems) {
    myModelEventDispatch.problemsDetected(this, problems);
  }

  protected void fireModelReplaced() {
    myModelEventDispatch.modelReplaced(this);
  }

  @Override
  protected void fireUsedLanguageAdded(SLanguage language) {
    myModelEventDispatch.dependenciesChanged(this, new DependencyChangeBridge(new SModelLanguageEvent(this, language, true)));
  }

  @Override
  protected void fireUsedLanguageRemoved(SLanguage language) {
    myModelEventDispatch.dependenciesChanged(this, new DependencyChangeBridge(new SModelLanguageEvent(this, language, false)));
  }

  @Override
  protected void fireDevKitAdded(SModuleReference ref) {
    myModelEventDispatch.dependenciesChanged(this, new DependencyChangeBridge(new SModelDevKitEvent(this, ref, true)));
  }

  @Override
  protected void fireDevKitRemoved(SModuleReference ref) {
    myModelEventDispatch.dependenciesChanged(this, new DependencyChangeBridge(new SModelDevKitEvent(this, ref, false)));
  }

  @Override
  protected void fireModelImportAdded(SModelReference ref) {
    myModelEventDispatch.dependenciesChanged(this, new DependencyChangeBridge(new SModelImportEvent(this, ref, true)));
  }

  @Override
  protected void fireModelImportRemoved(SModelReference ref) {
    myModelEventDispatch.dependenciesChanged(this, new DependencyChangeBridge(new SModelImportEvent(this, ref, false)));
  }

  protected void fireModelNodesChanged() {
    myModelEventDispatch.nodesChanged(this);
  }

  @Override
  public void changeModelReference(SModelReference newModelReference) {
    super.changeModelReference(newModelReference);
    myModelReference = newModelReference;
  }

  @Override
  public boolean isDisposed() {
    final jetbrains.mps.smodel.SModel mi = getCurrentModelInternal();
    if (mi == null) {
      return false;
    }
    return mi.isDisposed();
  }

  @Override
  @Nullable
  public final StackTraceElement[] getDisposedStacktrace() {
    final jetbrains.mps.smodel.SModel mi = getCurrentModelInternal();
    if (mi == null) {
      return null;
    }
    return mi.getDisposedStacktrace();
  }


  /**
   * This method does nothing about model load state, it updates model descriptor of the models passed and dispatches a notification.
   * Seems reasonable to dispatch proper modelUnloaded/modelLoaded events in addition to modelReplaced as there are listeners that
   * expect either, not both. Especially, in case if load level is changed due to replacement (i.e. was FULL, became INTERFACE)
   * FIXME it's synchronized, do we still need that (with RegularModelDescriptor using distinct lock object)
   * XXX there are two uses in subclasses of not-so-nice EditableSModelBase (lazy and custom) that can't get replaced readily with
   * nice and convenient RegularModelDescriptor.replace() call.
   * @deprecated we are going to remove this method
   */
  @Deprecated(forRemoval = true, since = "2026.2")
  protected void replaceModelAndFireEvent(jetbrains.mps.smodel.SModel oldModel, jetbrains.mps.smodel.SModel newModel) {
    replaceInstance(oldModel, newModel);
    fireInstanceReplaced(oldModel, newModel);
  }

  protected final void replaceInstance(jetbrains.mps.smodel.SModel oldModel, jetbrains.mps.smodel.SModel newModel) {
    if (oldModel != null) {
      oldModel.dispose();
    }
    if (newModel != null) {
      newModel.setModelDescriptor(this, getNodeEventDispatch());
    }
  }

  // FIXME once we confirm that there's no longer race condition, we may need to rework
  //       (or delete) StubModelDescriptorPublishRaceTest, remove original replaceModelAndFireEvent() method
  //       and make this one final.
  protected void fireInstanceReplaced(jetbrains.mps.smodel.SModel oldModel, jetbrains.mps.smodel.SModel newModel) {
    if (oldModel != null && newModel != null) {
      // there are events like model 'loaded' (null to something) and 'unloaded' (something to null), I don't see a reason
      // to distrubute 'replaced' unless both are 'something'. However, there are exceptions (defects), see #unload(),
      // where explicit fireModelReplaced() is necessary
      fireModelReplaced();
    }

    if (getRepository() instanceof MPSModuleRepository) { // for a model not yet visible to anyone, no reason to drop a cache
      // FIXME cache invalidation shall be a repository listener, and not done forcefully on model change
      //       Besides, invalidateCaches() doesn't really care about model contents at all, it refreshes module scope which deals with modules only.
      ((MPSModuleRepository) getRepository()).invalidateCaches();
    }
  }

  @Override
  protected void assertCanRead() {
    final SRepository repo = myRepository;
    if (repo != null) {
      repo.getModelAccess().checkReadAccess();
    }
  }

  @Override
  protected void assertCanChange() {
    final SRepository repo = myRepository;
    if (repo != null) {
      repo.getModelAccess().checkWriteAccess();
    }
//      if (!UndoHelper.getInstance().isInsideUndoableCommand()) {
//        throw new IllegalModelChangeError("registered model can only be modified inside undoable command");
//      }
  }

  /**
   * Generally, shall be protected (as well as {@link #setLoadingState(ModelLoadingState)}, but made public for uses in
   * {@code PartialModelDataSupport} aka {@code jetbrains.mps.smodel.loading.UpdateableModel}.
   */
  @NotNull
  public final ModelLoadingState getLoadingState() {
    return myModelLoadState;
  }

  public final void setLoadingState(@NotNull ModelLoadingState modelLoadState) {
    myModelLoadState = modelLoadState;
  }


  /**
   * CLIENTS SHALL NOT USE THIS METHOD. It's public merely to overcome java package boundaries (those of SModelData implementation and this class).
   * FIXME This is a hack. We shall pass myEventDispatch the moment internal model is initialized.
   * However, it's tricky to find out exact moment with present approach (getSModelInternal() either
   * returns existing or creates new), fireModeStateChanged is feasible option, but misguiding as well.
   * Refactoring required to split access to SModel internal from initialization.
   * To put event dispatch into smodel.SModel doesn't seem to be an option as we need to add listeners without
   * loading whole model.
   */
  @NotNull
  protected final ModelEventDispatch getNodeEventDispatch() {
    return myNodeEventDispatch;
  }
}
