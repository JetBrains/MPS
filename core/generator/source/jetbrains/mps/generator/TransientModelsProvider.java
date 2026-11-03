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

import jetbrains.mps.extapi.model.SModelData;
import jetbrains.mps.extapi.module.SRepositoryExt;
import jetbrains.mps.project.ModuleId;
import jetbrains.mps.project.structure.modules.ModuleReference;
import jetbrains.mps.smodel.BaseMPSModuleOwner;
import jetbrains.mps.smodel.MPSModuleOwner;
import jetbrains.mps.util.annotation.AccessAsPlatformService;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.model.SModelReference;
import org.jetbrains.mps.openapi.module.SModule;
import org.jetbrains.mps.openapi.module.SModuleReference;
import org.jetbrains.mps.openapi.module.SRepository;
import org.jetbrains.mps.openapi.persistence.PersistenceFacade;

import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.Semaphore;
import java.util.concurrent.atomic.AtomicInteger;

@AccessAsPlatformService
public class TransientModelsProvider {

  private final ConcurrentMap<GeneratorTask, TransientModelsModule> myModuleMap = new ConcurrentHashMap<>();
  private int myModelsToKeepMax = 0; /* unlimited */
  private final SRepositoryExt myRepository;
  private int myKeptModels;
  private final TransientSwapOwner myTransientSwapOwner;
  private String mySessionId;
  private final MPSModuleOwner myOwner = new BaseMPSModuleOwner();
  private TransientModelsModule myCheckpointsModule;
  private final Semaphore mySwapLock = new Semaphore(1);

  public TransientModelsProvider(@NotNull SRepository repository, @Nullable TransientSwapOwner swapOwner) {
    myRepository = (SRepositoryExt) repository;
    myTransientSwapOwner = swapOwner;
  }

  /**
   * @return repository where transient modules reside
   */
  public SRepository getRepository() {
    return myRepository;
  }

  protected void clearAll(final boolean dropCheckpoint) {
    myRepository.getModelAccess().runWriteAction(() -> {
      Collection<TransientModelsModule> toRemove = getModuleMapValues();
      myModuleMap.clear();
      for (TransientModelsModule m : toRemove) {
        if (m.getRepository() != null) {
          myRepository.unregisterModule(m, myOwner);
        } else {
          // Associated, but never published: a generation that failed or was cancelled before #publishAll()
          // leaves the module unregistered, and unregistering it would throw.
          m.discard();
        }
      }
      if (dropCheckpoint && myCheckpointsModule != null) {
        myRepository.unregisterModule(myCheckpointsModule, myOwner);
        myCheckpointsModule = null;
      }
    });

    TransientSwapSpace space = getTransientSwapSpace();
    if (space != null) {
      space.clear();
    }
    mySessionId = null;
    myKeptModels = 0;
  }

  /**
   * Requires write lock for {@linkplain #getRepository() associated repository}
   */
  public void publishAll() {
    for (TransientModelsModule m : getModuleMapValues()) {
      myRepository.registerModule(m, myOwner);
      m.publishAll();
    }
    if (myCheckpointsModule != null) {
      myCheckpointsModule.publishAll();
    }
  }

  private static final AtomicInteger ourModuleCounter = new AtomicInteger();

  /**
   * Instantiate new transient, free-floating module with given {@code moduleName} augmented with implementation-specific stereotype.
   * The module is NOT registered with any repository (including associated {@linkplain #getRepository() one}). Transient modules
   * get registered in the associated repository when {@link #publishAll()} is requested. Thus, only publish activity would require write lock,
   * while the transformation process is ok with a read on source model's repository. It's not final, though. If we manage to maintain distinct
   * repository for transients, we still may lock it for write during transformation process (transitively locking source model's one for read)
   * and there would be no reason to be minimalistic about write lock then.
   * @param moduleName name for a new transient module, without stereotype
   * @return new module instance
   */
  @NotNull
  public TransientModelsModule createModule(@NotNull String moduleName) {
    String fqName = moduleName + "@transient" + ourModuleCounter.getAndIncrement();
    SModuleReference reference = PersistenceFacade.getInstance().createModuleReference(ModuleId.regular(), fqName);
    final TransientModelsModule transientModelsModule = new TransientModelsModule(this, reference);
    return transientModelsModule;
  }

  /**
   * Record module that keeps transient models for the given task. Module originates from {@link #createModule(String)}.
   * This association is utilized by {@link #getModule(GeneratorTask)}. Silently overwrites existing association, if any.
   * @param task transformation activity
   * @param transientModule module to keep transient models at
   */
  public void associate(@NotNull GeneratorTask task, @NotNull TransientModelsModule transientModule) {
    myModuleMap.put(task, transientModule);
  }

  /**
   * XXX perhaps, GeneratorTask shall answer getTransientModule():SModule itself.
   *
   * @param task not {@code null}
   * @return module to keep transients models of the task at
   */
  public TransientModelsModule getModule(GeneratorTask task) {
    if (myModuleMap.containsKey(task)) {
      return myModuleMap.get(task);
    }
    throw new IllegalStateException("No transient module associated with task " + task);
  }

  // despite public, not part of API/contract. Made available to friend classes
  public TransientModelsModule getCheckpointsModule() {
    return myCheckpointsModule;
  }

  private final UUID myCheckpointModuleId = new UUID(0x0000000000004000L, ((long) "checkpoints".hashCode()) << 32 | "checkpoints".hashCode());

  /**
   * Requires model write to register checkpoint module with a {@linkplain #getRepository() repository}.
   */
  public void initCheckpointModule() {
    if (myCheckpointsModule == null) {
      final String checkpointModuleName = "checkpoints";
      // HACK. Though Make disposes TMP if creates one, there's distinct TMP for each model generated during the session.
      // We can't dispose all transients right after generation (need them for textgen), hence we re-use checkpoints module here
      for (SModule m : myRepository.getModules()) {
        if (checkpointModuleName.equals(m.getModuleName()) && m instanceof TransientModelsModule) {
          myCheckpointsModule = (TransientModelsModule) m;
          return;
        }
      }
      SModuleReference cpModuleRef = new ModuleReference(checkpointModuleName, ModuleId.regular(myCheckpointModuleId));
      // I could have used custom subclass of AbstractModule and regular models (instanceof extapi.TransientSModel, not necessarily
      // the same as generator.TransientSModel TransientModelsModule class produces), there's no true need in TransientModelsModule, however,
      // (a) don't want to refactor right now; (b) perhaps, could use swap mechanism of TransientModelsModule in future to keep checkpoint models
      // (though later could be addressed with extra consumer for TransientSwapOwner, not to mix the two kinds of transient models into single module kind).
      myCheckpointsModule = new TransientModelsModule(this, cpModuleRef);
      myRepository.registerModule(myCheckpointsModule, myOwner);
    }
  }

  public boolean canKeepOneMore() {
    return myModelsToKeepMax <= 0 || myKeptModels < myModelsToKeepMax;
  }

  public void decreaseKeptModels() {
    if (myModelsToKeepMax <= 0) {
      return;
    }
    myKeptModels++; // I know it's stupid and misguiding, but these two methods (canKeepOneMore and decreaseKeptModels) shall become history anyway
  }

  @Nullable
  private TransientSwapOwner getTransientSwapOwner() {
    return myTransientSwapOwner;
  }

  @Nullable
  public TransientSwapSpace getTransientSwapSpace() {
    if (mySessionId == null) {
      return null;
    }
    return getOrCreateSwapSpace(mySessionId);
  }

  private TransientSwapSpace getOrCreateSwapSpace(String id) {
    TransientSwapOwner tso = getTransientSwapOwner();
    if (tso == null) {
      return null;
    }

    mySwapLock.acquireUninterruptibly();
    try {
      TransientSwapSpace space = tso.accessSwapSpace(id);
      if (space != null) {
        return space;
      }

      return tso.initSwapSpace(id);
    } finally {
      mySwapLock.release();
    }
  }

  /*package*/ TransientSwapSpace getTransientSwapSpace(TransientModelsModule transientModule) {
    if (mySessionId == null) {
      // just to ensure TMP is alive
      return null;
    }
    return getOrCreateSwapSpace(mySessionId + '-' + transientModule.getModuleName());
  }


  public void removeAllTransient() {
    clearAll(false);
  }

  public void removeAllTransients(boolean includeCheckpoints) {
    clearAll(includeCheckpoints);
  }

  public Iterable<TransientModelsModule> getModules() {
    myRepository.getModelAccess().checkReadAccess();

    Collection<TransientModelsModule> knownTransientModules = getModuleMapValues();
    List<TransientModelsModule> result = new ArrayList<>(knownTransientModules.size() + 1);
    if (getCheckpointsModule() != null && getCheckpointsModule().hasPublished()) {
      result.add(getCheckpointsModule());
    }
    for (TransientModelsModule m : knownTransientModules) {
      if (m.hasPublished()) {
        result.add(m);
      }
    }

    return result;
  }

  @Nullable
  public GenerationTrace getTrace(@NotNull SModelReference model) {
    for (TransientModelsModule m : getModuleMapValues()) {
      if (m.hasPublished() ) {
        // not quite sure there's strong reason to check if module has anything published,
        // although we are likely to navigate from trace to transient models and would need them published
        GenerationTrace trace = m.getTrace(model);
        if (trace != null) {
          return trace;
        }
      }
    }
    return null;
  }

  public void startGeneration(int numberOfModelsToKeep) {
    if (mySessionId == null) {
      mySessionId = newSessionId();
      myKeptModels = 0;
    }
    myModelsToKeepMax = numberOfModelsToKeep;
  }

  private String newSessionId() {
    return Long.toHexString(System.identityHashCode(myRepository) + System.currentTimeMillis());
  }

  /**
   * @return collection of unique modules associated with tasks
   */
  private Collection<TransientModelsModule> getModuleMapValues() {
    return new LinkedHashSet<>(myModuleMap.values());
  }

  public interface TransientSwapSpace {

    // FIXME likely not SModelData but extapi.model.TransientSModel, perhaps. Or any other openapi.SModel? Or custom BinaryPersistance variant dealing with SModelData?
    boolean swapOut(SModelData model);

    // FIXME swapOut():Token and use token here, instead of SModelReference
    <T extends SModelData> T restoreFromSwap(SModelReference mref, T modelData);

    void clear();
  }

  public interface TransientSwapOwner {

    TransientSwapSpace initSwapSpace(String spaceId);

    TransientSwapSpace accessSwapSpace(String spaceId);
  }
}
