/*
 * Copyright 2003-2024 JetBrains s.r.o.
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
package jetbrains.mps.generator.impl.plan;

import jetbrains.mps.extapi.model.ModelWithAttributes;
import jetbrains.mps.generator.GenerationStatus;
import jetbrains.mps.generator.TransientModelsModule;
import jetbrains.mps.generator.TransientModelsProvider;
import jetbrains.mps.generator.cache.CacheGenerator;
import jetbrains.mps.generator.generationTypes.StreamHandler;
import jetbrains.mps.generator.impl.CloneUtil;
import jetbrains.mps.generator.impl.MappingLabelExtractor;
import jetbrains.mps.generator.impl.ModelStreamManager;
import jetbrains.mps.generator.plan.CheckpointIdentity;
import jetbrains.mps.generator.plan.PlanIdentity;
import jetbrains.mps.smodel.ModelAccessHelper;
import jetbrains.mps.smodel.SModelId.IntegerSModelId;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SModelName;
import org.jetbrains.mps.openapi.model.SModelReference;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.persistence.PersistenceFacade;

import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;

/**
 * Captures what outer world would like to tell generator about available cross-model reference targets.
 * <p>
 * FIXME likely, we shall not keep checkpoint models for actions other than true generate
 * (e.g. text preview). Still shall resolve cross model references, but #createCheckpoint shall become no-op.
 * OTOH, what if I preview 2 nodes ith cross-references from 2 different models? Kept, but separately?
 * <p>
 * XXX perhaps, can instantiate CME with PlanIdentity at hand (does plan change during generation run? It's per-model, after all).
 *
 * @author Artem Tikhomirov
 * @since 3.3
 */
public class CrossModelEnvironment {
  private static final String GENERATION_PLAN = "generation-plan";
  private static final String CHECKPOINT = "checkpoint";
  private static final String PREV_GENERATION_PLAN = "prev-generation-plan";
  private static final String PREV_CHECKPOINT = "prev-checkpoint";

  // these are checkpoints for actual plan, for different models that are cross-referenced from the one being transformed
  private final HashMap<SModelReference, ModelCheckpoints> myTransientCheckpoints = new HashMap<>();
  // these are CPs for all plans of x-referenced models
  private final HashMap<SModelReference, CheckpointVault> myPersistedCheckpoints = new HashMap<>();
  // these are CPs for actual plan, loaded from persisted CPs and re-published as transient models
  private final HashMap<SModelReference, ModelCheckpoints> myExposedPersisted = new HashMap<>();
  private final TransientModelsModule myModule;
  private final ModelStreamManager.Provider myStreamProvider;
  private final TransientModelsProvider myTransientModelProvider;

  public CrossModelEnvironment(TransientModelsProvider tmProvider, ModelStreamManager.Provider streamProvider) {
    myTransientModelProvider = tmProvider;
    myModule = tmProvider.getCheckpointsModule();
    // FIXME in the future - populate from existing cp models
    // but for prototype, models visible within same make would suffice
    myStreamProvider = streamProvider;
  }

  public static boolean isCheckpointModel(@Nullable SModel m) {
    return m instanceof ModelWithAttributes && ((ModelWithAttributes) m).getAttribute(CHECKPOINT) != null;
  }

  /**
   * FIXME Given CP could be defined in a plan/CPSet other then the one being executed, is there any sense to
   * pass planIdentity, not CPIdentity here. Perhaps, could hide ModelCheckpoints concept altogether as
   * implementation detail?
   *
   * @return recorded checkpoints for the model, if any
   */
  @Nullable
  public ModelCheckpoints getState(@NotNull SModel model) {
    if (isCheckpointModel(model)) {
      // FIXME provisional fix.
      // Assume if input comes from a checkpoint, it's the one already loaded, look at
      // transients first, then among persisted. Perhaps, shall extract CP identity from the model and use it to find proper MCp.
      // Alternatively, shall keep model reference of the origin along with CP model, so that can navigate to an appropriate MCp/CpV
      // using model reference as for the general scenario. However, don't want to persist origin model ref in a CP model, and didn't
      // come up with a nice way to satisfy that (filtering model attributes are not to my liking).
      for (ModelCheckpoints mcp : myTransientCheckpoints.values()) {
        CheckpointState cps = mcp.findStateWith(model);
        if (cps != null) {
          return mcp;
        }
      }
      for (CheckpointVault cpv : myPersistedCheckpoints.values()) {
        ModelCheckpoints mcp = cpv.getCheckpointsIfOwns(model);
        if (mcp != null) {
          return mcp;
        }
      }
      return null;
    }
    ModelCheckpoints mcp = getTransientCheckpoints(model.getReference());
    if (mcp != null) {
      return mcp;
    }
    // Persisted CPs, once exposed, are recorded in myExposedPersisted to tell them from CP models generated in this session,
    // see #createBlankCheckpointModel()
    mcp = getPersistedCheckpoints(model).getCheckpointsFor((m, cp) -> {
      // XXX for now, expose whole ModelCheckpoints at once, although just specific CheckpointState
      //     (accessed later though MC.find) would suffice
      SModel exposed = createBlankCheckpointModel(model.getReference(), null /*FIXME need distinct method to create CP model from existing*/, cp);
      new CloneUtil(m, exposed).cloneModelWithImports();
      assert exposed instanceof ModelWithAttributes;
      assert m instanceof ModelWithAttributes;
      ((ModelWithAttributes) m).forEachAttribute(((ModelWithAttributes) exposed)::setAttribute);
      SNode debugNode = MappingLabelExtractor.findDebugNode(exposed);
      if (debugNode != null) {
        OriginalModelTag.installTo(debugNode, model.getReference());
      }
      myModule.addModelToKeep(exposed.getReference(), true);
      CheckpointIdentity persistedCheckpoint = readIdentityAttributes((ModelWithAttributes) m, GENERATION_PLAN, CHECKPOINT);
      CheckpointIdentity prevCheckpoint = readIdentityAttributes((ModelWithAttributes) m, PREV_GENERATION_PLAN, PREV_CHECKPOINT);
      assert cp.equals(persistedCheckpoint) : String.format("CP consistency issue: expected to read CP %s, but model comes with CP value %s", cp, persistedCheckpoint);
      return new CheckpointState(exposed, prevCheckpoint, cp);
    });
    myExposedPersisted.put(model.getReference(), mcp);
    return mcp;
  }

  @Nullable
  private ModelCheckpoints getTransientCheckpoints(SModelReference originModel) {
    ModelCheckpoints mcp = myTransientCheckpoints.get(originModel);
    if (mcp == null) {
      mcp = loadFromTransientModule(originModel);
      if (mcp != null) {
        myTransientCheckpoints.put(originModel, mcp);
      }
    }
    return mcp;
  }

  /**
   * look up checkpoint models in transient module
   * CP models may be there if they were generated as part of the same make session or exposed there due to 'copy' of persisted model
   * when a reference to persisted CP was resolved.
   * <p>
   * both parameters are !null
   */
  private ModelCheckpoints loadFromTransientModule(SModelReference originalModel) {
    final SModelName originalModelName = originalModel.getName();
    // XXX getCheckpointModelsFor iterates models of the module, hence needs a model read
    //     OTOH, just a wrap with model read doesn't make sense here (models could get disposed right after the call),
    //     so likely we shall populate myCheckpoints in constructor/dedicated method. Still, what about checkpoint model disposed *after*
    //     I've collected all the relevant state for this class?
    //     Not sure whether read shall be local to this class or external on constructor/initialization method
    //     It seems to be an implementation detail that we traverse model and use its nodes to persist mapping label information (that's what we need RA for).
    return new ModelAccessHelper(myTransientModelProvider.getRepository()).runReadAction(() -> {
      String nameNoStereotype = originalModelName.getLongName();
      ArrayList<CheckpointState> cpModels = new ArrayList<>(4);
      for (SModel m : myModule.getModels()) {
        if (!nameNoStereotype.equals(m.getName().getLongName()) || false == m instanceof ModelWithAttributes) {
          continue;
        }

        OriginalModelTag omt;
        if ((omt = OriginalModelTag.from(MappingLabelExtractor.findDebugNode(m))) == null || !omt.matches(originalModel)) {
          // XXX not every CP model has debugNode (see CheckpointStateBuilder.addMappings()), perhaps, it's not wise to exclude model like that here?
          continue;
        }
        // we keep CP (both origin and actual) as model properties to facilitate scenario when CP models are not persisted.
        // Otherwise, we could have use values written into CheckpointVault's registry file. As long as there's no registry for workspace models,
        // we have to use this dubious mechanism (not necessarily bad, just a bit confusing as we duplicate actual CP value as model attribute and
        // in the CheckpointVault's registry).
        CheckpointIdentity modelCheckpoint = readIdentityAttributes((ModelWithAttributes) m, GENERATION_PLAN, CHECKPOINT);
        if (modelCheckpoint == null) {
          continue;
        }
        CheckpointIdentity prevCheckpoint = readIdentityAttributes((ModelWithAttributes) m, PREV_GENERATION_PLAN, PREV_CHECKPOINT);
        cpModels.add(new CheckpointState(m, prevCheckpoint, modelCheckpoint));
      }
      return cpModels.isEmpty() ? null : new ModelCheckpoints(cpModels);
    });
  }

  @Nullable
  private static CheckpointIdentity readIdentityAttributes(ModelWithAttributes m, String planKey, String pointKey) {
    String gpAttrValue = m.getAttribute(planKey);
    String cpAttrValue = m.getAttribute(pointKey);
    if (gpAttrValue == null || cpAttrValue == null) {
      return null;
    }
    PlanIdentity modelPlan = new PlanIdentity(gpAttrValue);
    return new CheckpointIdentity(modelPlan, cpAttrValue /* here, persistent identity*/);
  }

  /**
   * look up checkpoint models in persisted model-associated streams
   */
  private CheckpointVault getPersistedCheckpoints(SModel model) {
    // FIXME synchronization - synchronized or concurrent map?
    CheckpointVault cpv = myPersistedCheckpoints.get(model.getReference());
    if (cpv == null) {
      cpv = new CheckpointVault(myStreamProvider.getStreamManager(model));
      cpv.readCheckpointRegistry();
      myPersistedCheckpoints.put(model.getReference(), cpv);
    }
    return cpv;
  }

  /**
   * FIXME Not sure if it's right to pass CPI here, not CP. On one hand, we use CPI to identify any its use in any plan.
   * OTOH, here we construct name for a model being transformed (not *referenced*), and as such we care about specific CP in a specific plan,
   * not just its identity.
   */
  /*package*/
  static SModelName createCheckpointModelName(SModelReference originalModel, CheckpointIdentity step) {
    String longName = originalModel.getName().getLongName();
    String stereotype = step.getPersistenceValue();
    return new SModelName(longName, stereotype);
  }

  // originalModel is just to construct name/reference of the checkpoint model
  // FIXME this method is used both to 'expose' existing CP and to create a new. For the former case, don't need checkpoint information as it's already
  //       persisted inside a model, moreover, I can't get it in #getState() above anyway.
  public SModel createBlankCheckpointModel(SModelReference originalModel, @Nullable CheckpointIdentity previousCheckpoint, CheckpointIdentity step) {
    final SModelName transientModelName = createCheckpointModelName(originalModel, step);
    // I'd like to have stable model id to minimize number of changes in CP models
    int mid = originalModel.getModelId().hashCode() ^ step.getName().hashCode();
    // make sure value fits into MPS reserved range, see IntegerSModelId doc.
    mid &= 0x0FFFFFFF;
    mid |= 0x0F000000;
    final SModelReference mr = PersistenceFacade.getInstance()
                                                .createModelReference(myModule.getModuleReference(), new IntegerSModelId(mid), transientModelName);
    SModel existing = myModule.getModel(mr.getModelId());
    if (existing != null) {
      // Why it's important to forget existing model? E.g. if a model being generated has been already generated and exposed as checkpoint, and
      // was renamed since. Renamed here means change of model name, e.g. due to rename of a containing language module.
      // Besides, it doesn't hurt to drop old checkpoint in any case.
      // There were few possible ways to address MPS-26174 (rename of a module breaks x-model generation).
      //  - listen to changes of original model/module and react (e.g. remove related CP models or clear all CPs altogether).
      //  - drop all transients as part of rename module action (likely, most safe)
      //  - respect model name when building module id value, above. Leaves duplicated, hard-to-distinguish models among checkpoints.
      //  - detect there's already model with same id and forget it (least destructive, keeps other CP models in place).
      // However, if existing model is a persisted CP exposed to resolve x-model references, keep CP models generated against it
      // in this session. They are no worse than CP models persisted by a regular build, and other models of the session may
      // already reference their nodes (e.g. descriptorClass label of a typesystem aspect CP, MPS-37514).
      myModule.forgetModel(existing, !isExposedPersisted(existing));
    }
    SModel checkpointModel = myModule.createTransientModel(mr);
    assert checkpointModel instanceof ModelWithAttributes;
    ((ModelWithAttributes) checkpointModel).setAttribute(GENERATION_PLAN, step.getPlan().getName());
    ((ModelWithAttributes) checkpointModel).setAttribute(CHECKPOINT, step.getName());
    if (previousCheckpoint != null) {
      ((ModelWithAttributes) checkpointModel).setAttribute(PREV_GENERATION_PLAN, previousCheckpoint.getPlan().getName());
      ((ModelWithAttributes) checkpointModel).setAttribute(PREV_CHECKPOINT, previousCheckpoint.getName());
    }
    return checkpointModel;
  }

  private boolean isExposedPersisted(SModel checkpointModel) {
    for (ModelCheckpoints mcp : myExposedPersisted.values()) {
      if (mcp.findStateWith(checkpointModel) != null) {
        return true;
      }
    }
    return false;
  }

  public void publishCheckpoint(@NotNull SModelReference originalModel, @NotNull CheckpointState cpState) {
    ModelCheckpoints checkpoints = getTransientCheckpoints(originalModel);
    if (checkpoints == null) {
      // XXX what if there's one in persistent? Shall we copy it into transient and update with the code below?
      myTransientCheckpoints.put(originalModel, new ModelCheckpoints(cpState));
      // fall-through to register cp model
    } else {
      CheckpointState replaced = checkpoints.updateAndDiscardOutdated(cpState);
      if (replaced != null) {
        discardExisting(replaced);
      }
      // fall-through to register cp model
    }
    myModule.addModelToKeep(cpState.getCheckpointModel().getReference(), true);
  }

  private void discardExisting(CheckpointState replaced) {
    HashSet<SModelReference> forgottenCheckpoints = new HashSet<>();
    ArrayDeque<CheckpointState> discarded = new ArrayDeque<>();
    discarded.add(replaced);
    do {
      CheckpointState next = discarded.removeFirst();
      // XXX once checkpoint model is removed, any other checkpoint model referencing it is broken, i.e.
      // m1@cp1 and m2@cp1, latter referencing the former, and we rebuild m1. Once we get here, we'd schedule m1@cp1 for removal
      // and at the end of the day we've got m1'@cp1 and m2@cp1 with references pointing to no-longer-existing m1@cp1.
      // Then, if there'd m3 to generate with the same plan, which references both m1 and m2, it's not clear how to match the two.
      // The question is, do we need to update references in other @cp1 models, shall we keep all models to preserve any other
      // checkpoint models (i.e. no forgetModel), or perhaps a dedicated SModelReference that resolves to whatever checkpoint is there.
      //
      // Present approach is to drop any model that depends on the one re-generated (resolve to latest CP model might still leave
      // broken references if m1 is changed, and it's not easy to match nodes of old m1@cp1 versus new m1@cp1, model reference won't suffice
      // as node id might be different, and we got no control over nodes as they are outcome of black-box ReferenceResolver code.
      SModelReference cpReference = next.getCheckpointModel().getReference();
      forgottenCheckpoints.add(cpReference);
      myModule.forgetModel(next.getCheckpointModel(), true);
      // drop any other checkpoints that may reference the one removed. We've scheduled for removal their respective
      // transient models already (above with forgetModel(..., true)), now it's time to forget CheckpointState.
      // Perhaps, shall forget models here explicitly, rather than do the same in TransientModelsModule.forgetModel(..., true)
      for (ModelCheckpoints mcp : myTransientCheckpoints.values()) {
        // intentionally  don't skip mcp == checkpoints - we need to drop any further checkpoint models not only for
        // external dependencies, but for subsequent cp models of the same original one, provided they reference the one we've dropped.
        // Note that the cycle above drops only relevant cp model (compares checkpoint name).
        mcp.discardOutdated(forgottenCheckpoints, discarded);
      }
    } while (!discarded.isEmpty());
  }

  public static class CacheGen implements CacheGenerator<GenerationStatus> {
    @Override
    public void generateCache(GenerationStatus status, StreamHandler handler) {
      CrossModelEnvironment cme = status.getCrossModelEnvironment();
      if (cme == null) {
        return;
      }
      ModelCheckpoints mcp = cme.myTransientCheckpoints.get(status.getInputModel().getReference());
      if (mcp == null) {
        // may happen if the model has been generated without a custom plan
        // FIXME we shall look into generation tasks rather than original input model, and there could be tasks
        //       that do not produce ModelCheckpoints (i.e. are generated without a custom plan)
        return;
      }
      CheckpointVault cpVault = cme.getPersistedCheckpoints(status.getInputModel());
      assert cpVault != null;
      cpVault.updateCheckpointsOf(mcp);
      cpVault.saveChanged(handler);
    }
  }

  // user object we attach to debug node in a CP model to identify original model, to overcome limitations of name-based lookup
  // can't use SModelReference UO directly as they get get serialized (see UserObjectEncoder), and I don't want to change existing CP models (to save
  // some generation effort)
  public static final class OriginalModelTag {
    private final SModelReference myModelRef;

    private OriginalModelTag(SModelReference originalModel) {
      myModelRef = originalModel;
    }

    @Nullable
    public static OriginalModelTag from(@Nullable SNode debugNode) {
      Object mr = debugNode == null ? null : debugNode.getUserObject("original-model");
      return mr instanceof OriginalModelTag ? (OriginalModelTag) mr : null;
    }

    public static void installTo(@NotNull SNode debugNode, @NotNull SModelReference originalModel) {
      debugNode.putUserObject("original-model", new OriginalModelTag(originalModel));
    }

    public boolean matches(SModelReference mr) {
      return myModelRef.equals(mr);
    }
  }
}
