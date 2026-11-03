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

import jetbrains.mps.generator.impl.RuleManager;
import jetbrains.mps.generator.impl.TemplateSwitchGraph;
import jetbrains.mps.generator.impl.plan.ModuleFacetPresentLegacyForkCondition;
import jetbrains.mps.generator.plan.CheckpointIdentity;
import jetbrains.mps.generator.plan.ForkCondition;
import jetbrains.mps.generator.plan.ModelSetup;
import jetbrains.mps.generator.runtime.TemplateMappingConfiguration;
import jetbrains.mps.generator.runtime.TemplateModel;
import jetbrains.mps.generator.runtime.TemplateModule;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.language.SLanguage;
import org.jetbrains.mps.openapi.model.SModel;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;

/**
 * Is it a final breakdown of shall I treat list of TMC as a raw input and re-order them as appropriate?
 * evgeny, 1/12/12
 */
public interface ModelGenerationPlan {

  List<Step> getSteps();

  Collection<TemplateModule> getGenerators();

  // PROVISIONAL, for migration purposes here.
  // Seems to be bad design - if we allow external plans (with partial generation), then
  // we shall leave it up to caller to decide whether to report errors about unexpected languages in an output model
  // Besides, even if language is 'covered', nothing tells it is 'yet to get processed' one, not the one 'already processed'
  // (so/ output nodes in that language still make no sense). Perhaps, could be part of Step, and each Step knows
  // what languages are to come down the road?
  // Shall drop, but first need to replace with a mechanism that collects all languages that emerge during generation
  boolean coversLanguage(SLanguage language);

  /*
   * Give a chance for a plan implementation to accommodate to actual input being transformed. Plans are inherently read-only,
   * so to give an input-specific plan, one need to make a copy of a template and augment it.
   * <p/>
   * Invoked once per each processed {@linkplain GeneratorTask generation task} prior to any step.
   *
   * @return An instance of the plan modified according to languages present in the task, or {@code this} if this
   * plan doesn't depend on transformed input.
   */
//  @NotNull
//  default ModelGenerationPlan prepare(@NotNull GeneratorTask task) {
//    return this;
//  }

  /**
   * <p>PROVISIONAL API</p>
   * <p>Chances for a plan to perform some additional model mutations, e.g. set/clear model attributes or user objects</p>
   * <p>Still can't decide whether to use dedicated {@code Step} subclass or explicit configure() method</p>
   * @param model a model to apply plan to, subject to modifications
   */
  default void configure(@NotNull SModel model) {}

  interface Step {
    // e.g. to print MCs that take part, if Transform step populates objects rather than return list of MC
//    String describe();
  }

  final class Checkpoint implements Step {
    private final boolean mySynchOnly;
    private final CheckpointIdentity myIdentity;

    public Checkpoint(@NotNull CheckpointIdentity cpIdentity) {
      this(cpIdentity, false);
    }

    public Checkpoint(@NotNull CheckpointIdentity cpIdentity, boolean synchOnly) {
      mySynchOnly = synchOnly;
      myIdentity = cpIdentity;
    }

    public String getName() {
      // FIXME I'm not sure I shall keep this method at all. Is it describe(), merely to present GP to user?
      return myIdentity.getName();
    }

    public CheckpointIdentity getIdentity() {
      return myIdentity;
    }

    /**
     * @return {@code true} if model state at this checkpoint is to be saved into a storage, {@code false} means this checkpoint is for
     * synchronization with other models only.
     */
    public boolean isPersisted() {
      return !mySynchOnly;
    }
  }

  final class Transform implements Step {
    private final TemplateMappingConfiguration[] myMapCfg;
    private final boolean myMergeLabeledTransformations;

    public Transform(@NotNull Collection<TemplateMappingConfiguration> tmc) {
      myMapCfg = tmc.toArray(new TemplateMappingConfiguration[0]);
      myMergeLabeledTransformations = false;
    }

    public Transform(@NotNull Collection<TemplateMappingConfiguration> tmc, boolean mergeLabeledTransformations) {
      myMapCfg = tmc.toArray(new TemplateMappingConfiguration[0]);
      myMergeLabeledTransformations = mergeLabeledTransformations;
    }


    @NotNull
    public List<TemplateMappingConfiguration> getTransformations() {
      return Arrays.asList(myMapCfg);
    }

    // Do I need this?
    public List<TemplateModel> getTemplateModels() {
      ArrayList<TemplateModel> rv = new ArrayList<>(myMapCfg.length);
      // generally, there are very few distinct template models per step, don't care about performance here
      for (TemplateMappingConfiguration mc : myMapCfg) {
        if (!rv.contains(mc.getModel())) {
          rv.add(mc.getModel());
        }
      }
      return rv;
    }

    public boolean shallMergeLabeledTransformations() {
      return myMergeLabeledTransformations;
    }

    // alternatively, why not to give control over rule/switch manager to the step?
    // i.e. to avoid extra iface to hold both TMC and nested plan.
    // XXX need to drop !TMC.isApplicable and report these

    RuleManager getRuleManager() {
      return null;
    }

    void fill(RuleManager ruleManager) {
    }

    TemplateSwitchGraph getSwitchGraph() {
      return null;
    }
  }

  final class Fork implements Step {
    private final List<Step> myBranch;
    private final ForkCondition myForkSelector;
    private final ModelSetup myModelConfigurator;

    public Fork(List<Step> branch) {
      this(branch, null, null);
    }

    /**
     * Use {@link Fork(List,ForkCondition)} instead
     */
    @Deprecated(since = "2025.3", forRemoval = true)
    public Fork(List<Step> branch, String generationTarget) {
      this(branch, generationTarget != null ? new ModuleFacetPresentLegacyForkCondition(generationTarget) : null, null);
    }

    public Fork(List<Step> branch, @Nullable ForkCondition forkSelector, @Nullable ModelSetup modelConfiguration) {
      myBranch = branch;
      myForkSelector = forkSelector;
      myModelConfigurator = modelConfiguration;
    }

    public List<Step> getBranch() {
      return myBranch;
    }

    @Nullable
    public ForkCondition getCondition() {
      return myForkSelector;
    }

    public void configure(@NotNull SModel model) {
      if (myModelConfigurator != null) {
        myModelConfigurator.apply(model);
      }
    }
  }

  /**
   * Marker to indicate source capable to supply ModelGenerationPlan for a model
   */
  interface Provider {
    /**
     * @param model what we need plan for.
     * @return {@code null} if this provider could not give a plan for the model
     */
    @Nullable
    ModelGenerationPlan getPlan(@NotNull SModel model);
  }
}
