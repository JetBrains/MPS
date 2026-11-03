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
package jetbrains.mps.generator.impl.plan;

import jetbrains.mps.generator.GenerationPlanBuilder;
import jetbrains.mps.generator.ModelGenerationPlan;
import jetbrains.mps.generator.ModelGenerationPlan.Checkpoint;
import jetbrains.mps.generator.ModelGenerationPlan.Fork;
import jetbrains.mps.generator.ModelGenerationPlan.Step;
import jetbrains.mps.generator.ModelGenerationPlan.Transform;
import jetbrains.mps.generator.RigidGenerationPlan;
import jetbrains.mps.generator.plan.CheckpointIdentity;
import jetbrains.mps.generator.plan.ForkCondition;
import jetbrains.mps.generator.plan.ForkConditionBuilder;
import jetbrains.mps.generator.plan.ModelSetup;
import jetbrains.mps.generator.plan.PlanIdentity;
import jetbrains.mps.generator.runtime.TemplateMappingConfiguration;
import jetbrains.mps.generator.runtime.TemplateModel;
import jetbrains.mps.generator.runtime.TemplateModule;
import jetbrains.mps.logging.Logger;
import jetbrains.mps.messages.IMessageHandler;
import jetbrains.mps.messages.LogHandler;
import jetbrains.mps.messages.Message;
import jetbrains.mps.messages.MessageKind;
import jetbrains.mps.project.facets.GenerationTargetFacet;
import jetbrains.mps.smodel.SLanguageHierarchy;
import jetbrains.mps.smodel.language.GeneratorRuntime;
import jetbrains.mps.smodel.language.LanguageRegistry;
import jetbrains.mps.smodel.language.LanguageRuntime;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.language.SLanguage;
import org.jetbrains.mps.openapi.module.SModule;
import org.jetbrains.mps.openapi.module.SModuleReference;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.function.Predicate;
import java.util.function.Supplier;
import java.util.stream.Collectors;
import java.util.stream.Stream;

/**
 * XXX Now, I don't like the idea both plan builder and its client (GenPlanTranslator) need runtime information about deployed modules. I shall restrict
 *  API of this class to identity of generators/languages/MCs. Then, both present interpreted and future generated plan translation code could be simple and
 *  straightforward, without a need to figure out particular TemplateModule from a runtime registry it hardly has access to.
 *
 * XXX myEngagedGenerators are in use only during wrapUp. Perhaps, shall pass them at this moment, rather than at construction time?
 *
 * Though I hate the name as it doesn't tell anything, it's a plan builder for regular use, targeted
 * for everyday scenarios like model make in IDE. Name alternatives are ScopedPlanBuilder, RestrictExtendsPB and others of the same degree of imperfection.
 * Likely, we'll need different approaches to extension processing, and the name shall reflect the approach, but at the moment I can't come up with a better one.
 * <p/>
 * Supports all operations.
 * <p/>
 * IMPORTANT: Treats extensions to generators on a 'first come, first served basis'.
 * Tries to consume as many extensions as possible for the first statement that calls for extensions.
 * Extensions are looked up among generators denoted as 'engaged'. If generatorB extends generatorA, and there's 'apply with extensions generatorA',
 * then generatorB would get into final transformation sequence only when it's listed among 'engaged' generators supplied at the builder's construction time.
 * Note, this implementation use these generators to limit 'upper' boundary only, in the aforementioned example it doesn't matter whether list of 'engaged'
 * includes generatorA, which gets into transformation sequence regardless of 'engaged' generators. Perhaps, this has to be changed (and ScopedPB would be
 * more appropriate name then)
 *
 * @author Artem Tikhomirov
 * @since 2017.1
 */
public class RegularPlanBuilder implements GenerationPlanBuilder {
  private final LanguageRegistry myLanguageRegistry;
  private final Collection<TemplateModule> myEngagedGenerators;
  private final IMessageHandler myMessageHandler;
  private final List<StepEntry> mySteps = new ArrayList<>();
  private ModelSetup myModelSetup;

  public RegularPlanBuilder(@NotNull LanguageRegistry languageRegistry, Collection<TemplateModule> allEngagedGenerators) {
    this(languageRegistry, allEngagedGenerators, new LogHandler(Logger.getLogger(RegularPlanBuilder.class)));
  }

  public RegularPlanBuilder(@NotNull LanguageRegistry languageRegistry, Collection<TemplateModule> allEngagedGenerators, @Nullable IMessageHandler messageHandler) {
    myLanguageRegistry = languageRegistry;
    myEngagedGenerators = allEngagedGenerators;
    myMessageHandler = messageHandler == null ? IMessageHandler.NULL_HANDLER : messageHandler;
  }

  @Override
  public void transformLanguage(@NotNull SLanguage... languages) {
    ArrayList<TemplateModule> tm = new ArrayList<>(languages.length);
    for (SLanguage language : languages) {
      if (language == null) {
        myMessageHandler.handle(new Message(MessageKind.ERROR, RegularPlanBuilder.class, "Request to apply null language"));
        continue;
      }
      LanguageRuntime lr = myLanguageRegistry.getLanguage(language);
      if (lr == null) {
        myMessageHandler.handle(new Message(MessageKind.ERROR, RegularPlanBuilder.class, String.format("Language %s not found among deployed", language)));
        continue;
      }
      lr.getGenerators().stream().filter(TemplateModule.class::isInstance).map(TemplateModule.class::cast).forEach(tm::add);
    }
    // Perhaps, shall record LanguageEntry and build set of templates when required?
    mySteps.add(new TransformEntry(this, tm, true, false));
  }

  @Override
  public TransformStepBuilder transform(final boolean individualStepsPerGenerator) {
    class TSB implements TransformStepBuilder {
      private final List<Predicate<? super TemplateModule>> subSteps1 = new ArrayList<>(4);
      private final List<Supplier<Stream<TemplateModule>>> subSteps2 = new ArrayList<>(4);
      @Override
      public TransformStepBuilder include(@NotNull SLanguage language, BuilderOption option) {
        if (BuilderOption.Extend.presentIn(option)) {
          final Set<SLanguage> extending = new SLanguageHierarchy(myLanguageRegistry, Collections.singleton(language)).getExtending();
          extending.remove(language);
          // all generators of extending are subject to be consumed by this step in case they show up in actual model
          subSteps1.add(ofLanguage(extending));
        } else if (BuilderOption.TargetTo.presentIn(option)) {
          // consume all where TemplateModule.getTargetLanguage()
          subSteps1.add(ofTarget(language));
        } else {
          subSteps2.add(ofLanguage(myLanguageRegistry, language));
        }
        return this;
      }

      @Override
      public void complete() {
        mySteps.add(new TransformEntry2(individualStepsPerGenerator, subSteps1, subSteps2));
      }

      private Supplier<Stream<TemplateModule>> ofLanguage(final LanguageRegistry languageRegistry, final SLanguage l) {
        // XXX just takes the first one, although it might be better to get a compound Supplier that gives all generators
        // of the language?
        return () -> {
          // XXX why did I use supplier that postpones access to lr.generators?
          final LanguageRuntime lr = languageRegistry.getLanguage(l);
          if (lr == null) {
            return Stream.empty();
          }
          return lr.getGenerators().stream().filter(gr -> gr instanceof TemplateModule).map(TemplateModule.class::cast);
        };
      }

      private Predicate<TemplateModule> ofLanguage(final Collection<SLanguage> ll) {
        return tm -> ll.stream().anyMatch(l -> l.equals(tm.getSourceLanguage().getIdentity()));
      }

      private Predicate<TemplateModule> ofTarget(final SLanguage l) {
        // XXX first part of condition is to cover cases like BL, when language generator is mostly de-sugaring and
        //     is further processed by language own textgen.
        return tm -> !l.equals(tm.getSourceLanguage().getIdentity()) && tm.getTargetLanguages().contains(l);
      }

    }
    return new TSB();
  }

  @Override
  public void applyGeneratorWithExtended(@NotNull SModule ... generator) {
    mySteps.add(new TransformEntry(this, asTemplateModules(generator), false, false));
  }

  @Override
  public void applyGenerators(@NotNull Collection<SModuleReference> generators, @NotNull BuilderOption... options) {
    boolean withExtended = BuilderOption.WithExtendedGenerators.presentIn(options);
    boolean respectPriorityRules = withExtended && BuilderOption.WithPriorityRules.presentIn(options);
    mySteps.add(new TransformEntry(this, asTemplateModules(generators), !withExtended, respectPriorityRules));
  }

  @Override
  public void apply(@NotNull Collection<TemplateMappingConfiguration> tmc) {
    mySteps.add(new PreparedEntry(new ArrayList<>(tmc)));
  }

  @Override
  public void recordCheckpoint(@NotNull CheckpointIdentity cp) {
    mySteps.add(new CheckpointEntry(cp, false));
  }

  @Override
  public void synchronizeWithCheckpoint(@NotNull CheckpointIdentity cp) {
    mySteps.add(new CheckpointEntry(cp, true));
  }

  @NotNull
  @Override
  public ModelGenerationPlan wrapUp(@NotNull PlanIdentity planIdentity) {
    HashSet<TemplateModule> explicitlyMentioned = new HashSet<>();
    mySteps.forEach(s -> s.reportInvolvedGenerators(explicitlyMentioned));
    final HashSet<TemplateModule> availableAsExt = new HashSet<>(myEngagedGenerators);
    class S {
      private final TemplateModule generator;
      private final Collection<SModuleReference> directlyExtendedGenerators;
      public S(TemplateModule g, Collection<SModuleReference> extendedGenerators) {
        generator = g;
        directlyExtendedGenerators = extendedGenerators;
      }

      TemplateModule generator() {
        return generator;
      }

      Collection<SModuleReference> directlyExtendedGenerators() {
        return directlyExtendedGenerators;
      }
    }
    // topological sort
    final class TopoSort {
      private final HashSet<TemplateModule> visited = new HashSet<>();
      final List<S> topoOrder = new ArrayList<>();

      void depthFirst(TemplateModule tm) {
        visited.add(tm);
        final Collection<TemplateModule> extGen = tm.getExtendedGenerators();
        for (TemplateModule etm : extGen) {
          if (visited(etm)) {
            continue;
          }
          depthFirst(etm);
        }
        // we've already visited all dependencies; if this TM is of interest (among availableAsExt), record it in the ordered list
        if (availableAsExt.contains(tm)) {
          topoOrder.add(new S(tm, extGen.stream().map(GeneratorRuntime::getModuleReference).collect(Collectors.toList())));
        }
      }

      boolean visited(TemplateModule tm) {
        return visited.contains(tm);
      }
    }

    TopoSort ts = new TopoSort();
    for (TemplateModule ttt : availableAsExt) {
      if (ts.visited(ttt)) {
        continue;
      }
      ts.depthFirst(ttt);
    }
    // It's intentional (though not necessarily right) that we look into generators extended directly only, not transitive closure.
    // The idea is that given C extends B extends A, and A.withExtensions and C among availableExt and no B whatsoever, I don't want C to show up.
    //
    /* C -> B -> A
     * D -> A
     * E -> B & D
     * G -> E
     * F -> E & A
     * Extends direction is bottom to top:
     * A__
     * |\ \
     * | \ \
     * B  D \
     * |\ |  \
     * | \|  |
     * C  E  |
     *    |\ |
     *    | \|
     *    G  F
     * If A and B explicitly mentioned in a plan:
     * For B: C, E, G, F
     * For A: D, E, G, F
     * If A, B and E explicitly mentioned in a plan:
     * For A: D, F
     * For B: C
     * For E: G, F
     */
    for (S s : ts.topoOrder) {
      final SModuleReference tmr = s.generator().getModuleReference();
      // FIXME quite ineffective way to deal with LanguageRuntime.getGenerators producing new instance of TemplateModule each time asked.
      // XXX with no interpreted generators instantiated from LR.getGenerators, can get rid of this code.
      if (explicitlyMentioned.stream().anyMatch(em -> em.getModuleReference().equals(tmr))) {
        // we can't exclude explicitly mentioned generators before we build topo order (as it used to be)
        // as it might break transitive dependencies: X, Y -> Z, Z from 'explicitly mentioned'; Q -> Y;
        // X.compareTo(Y) == 0, and Q.compareTo(X) == 0, but Q.compareTo(Y) != 0. Therefore, I try to keep
        // "base" generators in the list to help with sorting (though this doesn't mean it would help always,
        // there could be scenario when "base" is still not enough. Need to write a custom sorting algorithm
        // that treats compareTo() == 0 as 'irrelevant' instead of 'equal'.
        continue;
      }
      Collection<SModuleReference> directlyExtendedGenerators = s.directlyExtendedGenerators();
      for (StepEntry se : mySteps) {
        if (!se.registerIfIntersects(directlyExtendedGenerators, s.generator())) {
          break;
        }
      }
    }
    ArrayList<Step> steps = new ArrayList<>(mySteps.size());
    mySteps.forEach(s -> s.createStep(steps));
    return new RigidGenerationPlan(planIdentity, steps, myModelSetup);
  }

  @Override
  public GenerationPlanBuilder fork() {
    final ForkEntry forkStep = new ForkEntry();
    mySteps.add(forkStep);
    return new RegularPlanBuilder(myLanguageRegistry, myEngagedGenerators, myMessageHandler) {
      @SuppressWarnings("removal")
      @Override
      public void setGenerationTarget(String targetHint) {
        if (targetHint == null) {
          return;
        }
        // if myForkSelector has been initialized using withFConditionSelector().complete(), do not overwrite with this legacy support value
        if (forkStep.myForkSelector == null) {
          forkStep.selector(new ModuleFacetPresentLegacyForkCondition(targetHint));
        }
        forkStep.configurator(ModelSetup.withAttributes(Map.of(GenerationTargetFacet.TARGET_MODEL_ATTR, targetHint)));
      }

      @Override
      public @NotNull ForkConditionBuilder withConditionSelector() {
        return new ConditionBuilder(forkStep::selector);
      }

      @Override
      public void modelSetup(@NotNull ModelSetup configurator) {
        // FIXME why not to keep ModelSetup as part of Plan only, and use RigidGenerationPlan instance in forkStep:ForkEntry instead
        //       of explicit list of steps (== getEntries(), see wrapUp(), below)?
        forkStep.configurator(configurator);
      }

      @NotNull
      @Override
      public ModelGenerationPlan wrapUp(@NotNull PlanIdentity planIdentity) {
        forkStep.steps(getEntries());
        // blank, non-null return value, shall be ignored
        //   OTOH, why not to use this value in forkStep???
        return new RigidGenerationPlan(planIdentity, Collections.emptyList());
      }
    };
  }

  @Override
  public void modelSetup(@NotNull ModelSetup configurator) {
    myModelSetup = configurator;
  }

  // just to ensure subclass in fork() accesses right mySteps field (not the one from enclosing entry)
  protected final List<StepEntry> getEntries() {
    return mySteps;
  }

  private Collection<TemplateModule> asTemplateModules(@NotNull Collection<SModuleReference> generators) {
    ArrayList<TemplateModule> tm = new ArrayList<>(generators.size());
    for (SModuleReference generatorIdentity : generators) {
      TemplateModule gr = findDeployedGenerator(generatorIdentity);
      if (gr != null) {
        tm.add(gr);
      }
    }
    return tm;
  }

  private Collection<TemplateModule> asTemplateModules(@NotNull SModule... generators) {
    ArrayList<TemplateModule> tm = new ArrayList<>(generators.length);
    for (SModule generator : generators) {
      if (generator == null) {
        myMessageHandler.handle(new Message(MessageKind.ERROR, RegularPlanBuilder.class, "Request to transform with null generator"));
        continue;
      }
      TemplateModule gr = findDeployedGenerator(generator.getModuleReference());
      if (gr != null) {
        tm.add(gr);
      }
    }
    return tm;
  }

  @Nullable
  private TemplateModule findDeployedGenerator(SModuleReference deployedGeneratorIdentity) {
    GeneratorRuntime gr = myLanguageRegistry.getGenerator(deployedGeneratorIdentity);
    if (gr instanceof TemplateModule) {
      return ((TemplateModule) gr);
    }
    String msg = String.format(gr == null ? "Generator %s not found among deployed" : "Generator %s is not a TemplateModule", deployedGeneratorIdentity.getModuleName());
    myMessageHandler.handle(new Message(MessageKind.ERROR, RegularPlanBuilder.class, msg).setHintObject(deployedGeneratorIdentity));
    return null;
  }

  private boolean isNextStepIsPersistedCheckpoint(TransformEntry entry) {
    int i = mySteps.indexOf(entry);
    assert i >= 0; // no one else could pass here anything unexpected
    return mySteps.size() > i + 1 && mySteps.get(i+1) instanceof CheckpointEntry;
  }


  private interface StepEntry {
    /**
     * @param result collections to feed with generators of this step
     */
    void reportInvolvedGenerators(Collection<TemplateModule> result);

    /**
     * Step has a chance to 'consume' {@code extCandidate} generator if the step explicitly lists any of {@code directExtendedGenerators} as engaged.
     * 'Consumed' here doesn't mean other steps could not consume it as well. Basically, its PlanBuilder telling its step entries: "look, here's a generator
     * I'd like to put somewhere, grab it if you like".
     * @param directExtendedGenerators generators directly extended by {@code extCandidate}, just an handy, calculated-once set.
     * @param extCandidate generator
     * @return {@code false} to indicate no further offering of the candidate is necessary
     */
    boolean registerIfIntersects(Collection<SModuleReference> directExtendedGenerators, TemplateModule extCandidate);

    /**
     * @param steps ordered collection to receive new plan step(s) according to this entry.
     */
    void createStep(List<Step> steps);
  }

  private static class TransformEntry implements StepEntry {
    private final RegularPlanBuilder myPlanBuilder;
    private final ArrayList<TemplateModule> myGenerators;
    private final boolean myIsSealed; // true if no extensions are considered.
    // true if shall read priority rules from specified generators and break this step further down to smaller according to these rules.
    private final boolean myRespectPriorityRules;
    private final ArrayList<TemplateModule> myExtensions = new ArrayList<>(4);

    TransformEntry(RegularPlanBuilder planBuilder, Collection<TemplateModule> generators, boolean isSealed, boolean respectPriorityRules) {
      myPlanBuilder = planBuilder;
      myGenerators = new ArrayList<>(generators);
      myIsSealed = isSealed;
      myRespectPriorityRules = respectPriorityRules;
    }

    @Override
    public void reportInvolvedGenerators(Collection<TemplateModule> result) {
      result.addAll(myGenerators);
    }

    @Override
    public boolean registerIfIntersects(Collection<SModuleReference> directExtendedGenerators, TemplateModule extCandidate) {
      if (myIsSealed) {
        return true;
      }
      if (myExtensions.contains(extCandidate)) {
        // already seen that one
        return true;
      }

      if (Stream.concat(myGenerators.stream(), myExtensions.stream()).map(TemplateModule::getModuleReference).anyMatch(directExtendedGenerators::contains)) {
        myExtensions.add(extCandidate);
      }
      return true; // that's the original logic, don't restrict other steps from consuming the generator
    }

    @Override
    public void createStep(List<Step> steps) {
      Stream<TemplateModule> generators = Stream.concat(myGenerators.stream(), myExtensions.stream());
      if (!myIsSealed && myRespectPriorityRules) {
        final boolean isBeforeCheckpoint = myPlanBuilder.isNextStepIsPersistedCheckpoint(this);
        GenerationPartitioner gp = new GenerationPartitioner(generators.collect(Collectors.toList()));
        List<List<TemplateMappingConfiguration>> mappingSets = gp.createMappingSets();
        // if there's only 1 step, there's no need to collect its labels for propagation, they are already there in the last (and only) set of MLs.
        // XXX perhaps, shall simplify condition by removing mappingSets.size() > 1, however, that would yield different results when
        //     GenerationSession.myLastBigTransformStepMappings != null before a step with single MC. Not sure if it's good or bad.
        final boolean needToPropagateLabeledTransforms = isBeforeCheckpoint && mappingSets.size() > 1;
        boolean firstInSeries = true;
        for (List<TemplateMappingConfiguration> tmc4Step : mappingSets) {
          // FIXME not very good logic, first Transform in this series shall use false just in case there's GS.myLastBigTransformStepMappings != null
          //       so that we reset it, to match existing behavior, revisit.
          steps.add(new Transform(tmc4Step, needToPropagateLabeledTransforms && !firstInSeries));
          firstInSeries = false;
        }
      } else {
        ArrayList<TemplateMappingConfiguration> tmc = new ArrayList<>();
        generators.flatMap(tm -> tm.getModels().stream()).map(TemplateModel::getConfigurations).forEach(tmc::addAll);
        steps.add(new Transform(tmc));
      }
    }
  }

  private static class TransformEntry2 implements StepEntry {
    private final ArrayList<TemplateModule> myGenerators = new ArrayList<>(4);
    private final boolean myIndividualStepsPerGenerator;
    private final List<Predicate<? super TemplateModule>> myConditions;
    private final List<Supplier<Stream<TemplateModule>>> myInvolvedGenerators;

    TransformEntry2(boolean individualStepsPerGenerator, List<Predicate<? super TemplateModule>> conditions, List<Supplier<Stream<TemplateModule>>> involvedGenerators) {
      myIndividualStepsPerGenerator = individualStepsPerGenerator;
      myConditions = conditions;
      myInvolvedGenerators = involvedGenerators;
    }

    @Override
    public void reportInvolvedGenerators(Collection<TemplateModule> result) {
      myInvolvedGenerators.stream().flatMap(Supplier::get).filter(Objects::nonNull).forEach(result::add);
    }

    @Override
    public boolean registerIfIntersects(Collection<SModuleReference> directExtendedGenerators, TemplateModule extCandidate) {
      // don't expect myGenerators to ever contain extCandidate already, I assume extCandidate values are unique, and we don't add anything
      // but these values into myGenerators
      assert !myGenerators.contains(extCandidate); // just sanity check
      //
      if (myConditions.stream().anyMatch(c -> c.test(extCandidate))) {
        myGenerators.add(extCandidate);
        return false; // greedy
      }
      return true;
    }

    @Override
    public void createStep(List<Step> steps) {
      // FIXME explicitly mentioned generators are added as last, usually it's  `lang TargetTo` followed by `lang Transform`
      //      anyway, though would be great to keep order as intended by GP designer
      myInvolvedGenerators.stream().flatMap(Supplier::get).filter(Objects::nonNull).forEach(myGenerators::add);
      if (myGenerators.isEmpty()) {
        // FIXME need feedback so that user can find out there's nothing in the step.
        //       either provide it here or add a dedicated step that indicates none matched the step
        //       (perhaps, can use ordinal to distinguish the step, or introduce an optional name for a step?)
        return;
      }
      if (myIndividualStepsPerGenerator) {
        // FIXME need to arrange individual steps according to output/target languages
        //       e.g. if there are two languages, B and C, that `TargetTo` language A, and also have
        //       a dependency between them (like B TargetTo C), we'd better place step with B in front of step with C then.
        for (TemplateModule tm : myGenerators) {
          ArrayList<TemplateMappingConfiguration> tmc = new ArrayList<>();
          tm.getModels().stream().map(TemplateModel::getConfigurations).forEach(tmc::addAll);
          steps.add(new Transform(tmc));
        }
      } else {
        Stream<TemplateModule> generators = myGenerators.stream();
        ArrayList<TemplateMappingConfiguration> tmc = new ArrayList<>();
        generators.flatMap(tm -> tm.getModels().stream()).map(TemplateModel::getConfigurations).forEach(tmc::addAll);
        steps.add(new Transform(tmc));
      }
    }
  }


  private static class CheckpointEntry implements StepEntry {
    private final CheckpointIdentity myIdentity;
    private final boolean myIsSynchOnly;

    CheckpointEntry(CheckpointIdentity cpIdentity, boolean isSynchOnly) {
      myIdentity = cpIdentity;
      myIsSynchOnly = isSynchOnly;
    }

    @Override
    public void reportInvolvedGenerators(Collection<TemplateModule> result) {
      // no-op
    }


    @Override
    public boolean registerIfIntersects(Collection<SModuleReference> directExtendedGenerators, TemplateModule extCandidate) {
      // no-op
      return true;
    }

    @Override
    public void createStep(List<Step> steps) {
      steps.add(new Checkpoint(myIdentity, myIsSynchOnly));
    }
  }

  private static class PreparedEntry implements StepEntry {
    private final List<TemplateMappingConfiguration> myElements;

    PreparedEntry(List<TemplateMappingConfiguration> tmc) {
      myElements = tmc;
    }

    @Override
    public void reportInvolvedGenerators(Collection<TemplateModule> result) {
      // Report tmc's module as 'involved', effectively telling that
      // generators of explicitly specified TMCs are NOT available for consideration with
      // 'generators with extensions' stmt. We treat explicitly specified MC as 'LD knows what to do with a generator'
      for (TemplateMappingConfiguration tmc : myElements) {
        result.add(tmc.getModel().getModule());
      }
    }

    @Override
    public boolean registerIfIntersects(Collection<SModuleReference> directExtendedGenerators, TemplateModule extCandidate) {
      // no-op
      return true;
    }

    @Override
    public void createStep(List<Step> steps) {
      steps.add(new Transform(myElements));
    }
  }

  private static class ForkEntry implements StepEntry {
    private List<StepEntry> mySteps = Collections.emptyList();
    private ForkCondition myForkSelector = null;
    private ModelSetup mySetup;

    public void steps(List<StepEntry> steps) {
      assert !steps.contains(this) : "Fork step shall not include itself";
      mySteps = steps;
    }

    @Override
    public void reportInvolvedGenerators(Collection<TemplateModule> result) {
      mySteps.forEach(s -> s.reportInvolvedGenerators(result));
    }

    @Override
    public boolean registerIfIntersects(Collection<SModuleReference> directExtendedGenerators, TemplateModule extCandidate) {
      for (StepEntry s : mySteps) {
        if (!s.registerIfIntersects(directExtendedGenerators, extCandidate)) {
          return false;
        }
      }
      return true;
    }

    @Override
    public void createStep(List<Step> steps) {
      final ArrayList<Step> branch = new ArrayList<>();
      mySteps.forEach(s -> s.createStep(branch));
      steps.add(new Fork(branch, myForkSelector, mySetup));
    }

    void selector(ForkCondition condition) {
      myForkSelector = condition;
    }

    void configurator(ModelSetup modelSetup) {
      // ATM, allow multiple calls/value overrides to support legacy setGenerationTarget() along with new GPB.modelSetup()
      // perhaps, once setGenerationTarget() is history, may want to forbid override or introduce some logic to combine/merge values
      mySetup = modelSetup;
    }
  }
}
