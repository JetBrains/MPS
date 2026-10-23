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
package jetbrains.mps.generator.impl;

import jetbrains.mps.extapi.model.ResolveInfoUpdater;
import jetbrains.mps.generator.IGeneratorLogger;
import jetbrains.mps.generator.impl.cache.MappingsMemento;
import jetbrains.mps.generator.impl.plan.CheckpointState;
import jetbrains.mps.generator.impl.plan.CrossModelEnvironment.OriginalModelTag;
import jetbrains.mps.generator.plan.CheckpointIdentity;
import jetbrains.mps.smodel.ModelDependencyUpdate;
import jetbrains.mps.smodel.ModelImports;
import jetbrains.mps.util.SNodePresentationComparator;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeId;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;

/**
 * Translate information about mapping labels known at checkpoint step to read-only, persisted (even though memory-only now) {@link CheckpointState state}
 * @author Artem Tikhomirov
 * @since 3.3
 */
class CheckpointStateBuilder {
  // FIXME refactor/replace MappingsMemento with more sophisticated storage, with ML objects instead of Map/String/Object.
  //       Shall support origins other than coming from previous inputModel (either original or checkpoint) - i.e. xModel references to unrelated models
  /*
   * FIXME myMemento is of no use unless we uncomment stepLabels.export(this) call in addMappings() below.
   */
  private final MappingsMemento myMemento;
  private final ModelTransitions myTransitionTrace;
  private final SModel myTransientModel;
  private final SModel myCheckpointModel;
  private final IGeneratorLogger myLogger;
  private boolean myCloneDone = false;
  private SNode myDebugMappingNode; // optional, we don't keep any extra node unless there are label info to record.

  public CheckpointStateBuilder(@NotNull SModel transientModel, @NotNull SModel blankCheckpointModel, @NotNull ModelTransitions transitionTrace, @NotNull IGeneratorLogger log) {
    myTransientModel = transientModel;
    myCheckpointModel = blankCheckpointModel;
    myTransitionTrace = transitionTrace;
    myMemento = new MappingsMemento();
    myLogger = log;
  }

  public void record(SNode inputNode, String mappingLabel, SNode outputNode) {
    SNodeId origin = getInputOrigin(inputNode);
    if (origin == null) {
      return;
    }
    /*
    FIXME it's possible for outputNode to belong to another model than the transient one supplied at construction:
          e.g. when there's post-processing step right before the CP. In this case, most labels would point to a model
          that was input for the post-processing step (most, but not all as it's possible to register MLs through genContext.register from scripts)
          Hence this assertion prevented us from employing GPs in some scenarios. However, I don't feel it's completely useless, perhaps,
          we shall fix it another way round, with MLs updated to point to right transient model.
    assert myOutputModel.equals(outputNode.getModel().getReference());
    */
    // FIXME here we assume checkpoint model is cloned with nodeId of outputNode kept.
    myMemento.addOutputNodeByInputNodeAndMappingName(origin, mappingLabel, outputNode);
  }

  public void record(SNode inputNode, String mappingLabel, Collection<SNode> outputNodes) {
    SNodeId origin = getInputOrigin(inputNode);
    if (origin == null) {
      return;
    }
    /*
    FIXME see record() above
    for (SNode o : outputNodes) {
      assert myOutputModel.equals(o.getModel().getReference());
    }
    */
    // FIXME here we assume checkpoint model is cloned with nodeId of outputNode kept.
    myMemento.addOutputNodeByInputNodeAndMappingName(origin, mappingLabel, outputNodes);
  }

  public void record(String mappingLabel, SNode outputNode) {
    myMemento.addNewOutputNode(mappingLabel, outputNode.getNodeId());
  }

  // FIXME add similar operation to get true identity of output node(s). Now MappingsMemento implicitly assumes (with outputNode.getNodeId() call)
  // identity of nodes in checkpoint model match that in transient/output model
  private SNodeId getInputOrigin(SNode inputNode) {
    // FIXME shall record identity of input model in a way it could be referenced from outside
    // (i.e. either as regular model or another checkpoint model). E.g. pair (previous cp model + node id).
    // For the time being, however, consider regular model as possible input (last cp) only,
    // do not track 'previous' checkpoint and therefore can reuse MappingsMemento.
    return myTransitionTrace.getActiveTransition().getOrigin(inputNode);
  }

  /**
   * optional operation, to record generator mappings in the state being built.
   * Invoke prior to {@link #create(CheckpointIdentity)}
   * Optional, for a hypothetical (didn't check/think over too much) scenario when CP comes as the very first step.
   *  @param originalInputModel non-null
   * @param stepLabels non-null
   */
  /*package*/ void addMappings(SModel originalInputModel, final GeneratorMappings stepLabels) {
    // FIXME likely, GeneratorMappings shall care about MappingMemento only (pass TransitionTrace there as well).
    //
    // FIXME stepLabels.export is commented out as we restore MappingsMemento for the CPState through persisted state and MappingLabelExtractor, to get
    // correct node ids (those changed to pre-ordered values for CP models to stay the same on regeneration). Another alternative would be to keep
    // SNodeId->SNodeId map in ConsistentNodeIdentityHelper and update values in myMemento, which seems too much work for me now.
//    stepLabels.export(this);
    // IMPORTANT need to create CP model first, as DebugMappingsBuilder need cloned nodes to substitute
    // reference targets from transient model to that in CP model (see DMB.substitute)
    // ^^^ now with explicit function to get output node in CP model (see 3rd arg in DMB cons), and a split "factory" vs "checkpoint" model, I might want to reconsider this.
    cloneTransientToCheckpoint();
    new ModelImports(myCheckpointModel).addModelImport(originalInputModel.getReference());
    DebugMappingsBuilder dmb = new DebugMappingsBuilder(myCheckpointModel, myTransitionTrace.getActiveTransition(), (label, outputNode) -> {
      /*
       * GeneratorMappings keep nodes from transient models as ML output. They are not necessarily always
       * nodes from the very last step (i.e. if there's a transformation step that records ML and subsequent post-processing
       * script that modifies the model again, SNode values in GeneratorMappings would be 'stale' and likely from a model already
       * disposed (unless transients are kept). That's why we stick to SNodeId only.
       * It's unlikely (i.e. I can't imagine a reasonable scenario, other than explicit genContext.registerLabel) that an output node won't be from a transient model
       * or that we would mistakenly take a wrong one (i.e. if aforementioned script removes a node registered as an output and adds another one with the same id).
       *
       * Note, as MPSSPRT-335 suggests, when a generator that records labeled mappings is part of group of generators that may further transform
       * output node, we may face errors here.
       */
      SNode tn = myCheckpointModel.getNode(outputNode.getNodeId());
      if (tn == null) {
        String s = String.format("Didn't find labeled output node in a checkpoint model, original value left. Instance of %s, label %s", outputNode.getConcept().getName(), label);
        myLogger.error(outputNode.getReference(), s);
        return outputNode;
      }
      return tn;
    });
    ArrayList<String> availableLabels = new ArrayList<String>(stepLabels.getAvailableLabels());
    Collections.sort(availableLabels);
    myDebugMappingNode = dmb
        .withInput(availableLabels, stepLabels::getSortedMappingKeys, (l, k) -> stepLabels.getMappingsForLabel(l).get(k).valueStream())
        .withoutInput(stepLabels.getConditionalRootLabels(), stepLabels::getConditionalRoots)
        .withComposite(stepLabels.getOrderedRecords())
        .done();
    // see MPSSPRT-455
    OriginalModelTag.installTo(myDebugMappingNode, originalInputModel.getReference());
  }

  /*package*/ CheckpointState create(CheckpointIdentity step) {
    cloneTransientToCheckpoint();
    // need saveActiveTransition() call to prepare transitions regardless of node<DebugMappings> root presence.
    myTransitionTrace.saveActiveTransition(myCheckpointModel);
    if (myDebugMappingNode != null) {
      if (myCheckpointModel.getRootNodes().iterator().hasNext() || myDebugMappingNode.getFirstChild() != null) {
        // not a nice way to deal with non-empty input model that has all its roots abandoned and no LMs recorded.
        // there's empty myDebugMappingNode then, and CheckpointVaule.updateCheckpointsOf() + CheckpointState.isEmptyCheckpoint()
        // could not detect blank CP model and proceed to serialize it, leading to effects of MPS-35118 (see 'feedback'/ProblemKind part)
        // Perhaps, better way to fix this is to modify isEmptyCheckpoint() to detect empty GeneratorDebug_Mappings instance?
        myCheckpointModel.addRootNode(myDebugMappingNode);
      }
    }
    ConsistentNodeIdentityHelper consistentNodeIdentity = new ConsistentNodeIdentityHelper(new SNodePresentationComparator());
    consistentNodeIdentity.apply(myCheckpointModel);
    //
    // Update model imports. The reason we didn't do it on model clone is that we need imports in a predictable order for different
    // generation modes. In-place, parallel options affect order of roots and order of imports (ModelDependencyScanner from
    // ModelDependencyUpdate collects imports in the order roots are iterated.
    //
    // ReferenceResolvers could have added references to nodes in other checkpoint models, we need to propagate these
    // dependencies into imports to ensure subsequent module.forget() could find and clear all dependant models as well
    // RR would not change list of languages, hence no updateUsedLanguages() call. And we don't care about explicit
    // imports of language's accessory models either.
    new ModelDependencyUpdate(myCheckpointModel).updateImportedModels(null);

    new ResolveInfoUpdater().updateResolveInfoInRefs(myCheckpointModel);

    // XXX in fact, both prevCheckpoint and step CPs are already coded inside myCheckpointModel, see CME.createBlankCheckpointModel
    CheckpointIdentity prevCheckpoint = myTransitionTrace.getMostRecentCheckpoint();
    myTransitionTrace.newTransition(step, myTransientModel, consistentNodeIdentity.getChangedNodes());
    return new CheckpointState(myCheckpointModel, prevCheckpoint, step);
  }

  private void cloneTransientToCheckpoint() {
    if (!myCloneDone) {
      // XXX here, we clone user objects, including TransitionTrace.ORIGIN_TRACE value. If the node from CP model serves as a key
      //     to some ML for subsequent CP, DebugMappingsBuilder may extract wrong origin for the ML's input node! Shall I clear all/certain user objects here?
      new CloneUtil(myTransientModel, myCheckpointModel).cloneModel();
      // Here, CP model has no model imports, we gonna update them later, once we have our roots in predefined order so that
      // imports are in predefined order, too.
      myCloneDone = true;
    }
  }
}
