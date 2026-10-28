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

import jetbrains.mps.generator.IGeneratorLogger;
import jetbrains.mps.generator.IGeneratorLogger.ProblemDescription;
import jetbrains.mps.generator.impl.cache.MappingsMemento;
import jetbrains.mps.generator.runtime.LabelDeclaration;
import jetbrains.mps.generator.runtime.TemplateContext;
import jetbrains.mps.smodel.adapter.structure.concept.SConceptAdapterById;
import jetbrains.mps.smodel.runtime.StaticScope;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.language.SConcept;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeReference;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.Semaphore;
import java.util.stream.Collectors;

/**
 * Runtime state of mapping labels at some transformation step.
 * {@link MappingsMemento} is persistence-friendly companion.
 *
 * Evgeny Gryaznov, Feb 16, 2010
 */
public final class GeneratorMappings {
  private final List<LabelDeclaration> myPrivateLabels;
  private final IGeneratorLogger myLog;

  /* input -> output */
  private final ConcurrentMap<SNode, Object> myCopiedOutputNodeForInputNode = new ConcurrentHashMap<>();

  /* templateId -> [input -> output,generation] */
  private final ConcurrentMap<String, NodeTagCabinet> myTemplateNodeIdAndInputNodeToOutputNodeMap = new ConcurrentHashMap<>();

  private final LMCollector myLabeledMappings = new LMCollector();

  public GeneratorMappings(@NotNull List<LabelDeclaration> privateLabels, IGeneratorLogger log) {
    myPrivateLabels = privateLabels;
    myLog = log;
  }

  // add methods

  void fillFrom(Collection<LMCollector> lmCollectors) {
    for (LMCollector lmCollector : lmCollectors) {
      if (lmCollector.isEmpty()) {
        continue;
      }
      // JFTR, #expose(), below, is sort of reverse operation
      lmCollector.forEachNoInput(myLabeledMappings::add);
      lmCollector.forEachWithInput(myLabeledMappings::add);
      // Bit of history:
      // Here, we record labeled transformations, and chances are we get similar input/output nodes with the same ML
      // (e.g. multipleLoopVarDecl rmt -> rmt_var) more than once - e.g. typesystem makes a copy of some rules
      // to generate two methods, and if there's an MultiForLoop in the original code, we get two almost identical
      // ML entries (presentation of output and key's original nodes are the same, see comparator in #getSortedMappingKeys(),
      // below. Therefore, for nodes that are 'equal' that way, we need to keep an order they were registered at, and
      // ut used to be LinkedHashMap here. Now, with output nodes coming from LMCollector in uncontrolled order (there's hash by SNode),
      // I've introduced an extra condition into key comparator, that treats nodes with id matching one of their origin as preceding those with
      // completely arbitrary node id. Indeed, this works only in scenarios when master node is not far from original model and still keeps its id.
      // I don't think it's a drawback as I'd rather avoid template code that duplicates fragments of input models during transformation at all.
      lmCollector.forEachComposite(myLabeledMappings::addComposite);
    }
  }

  void addCopiedOutputNodeForInputNode(SNode inputNode, SNode outputNode) {
    if (outputNode == null) {
      return;
    }

    Object prev = myCopiedOutputNodeForInputNode.putIfAbsent(inputNode, outputNode);
    // It's possible for the same pair input->output to get registered more than once,
    // e.g. when a rule does COPY-SRC for input. Both the copy macro and the rule would
    // try to register same output, and we shall not treat this as ambiguity. Generally it's
    // odd to use COPY-SRC for rule's primary transformation, we've had only 1 use like this
    // (build language, mapBuildProject did $WEAVE$ $COPY-SRC$).
    if (prev instanceof SNode && prev != outputNode) {
      // ambiguity! store prev element (wrapped into Collection)
      myCopiedOutputNodeForInputNode.put(inputNode, Collections.singletonList(prev));
    }
  }

  private NodeTagCabinet recordsOf(String templateNodeId) {
    return myTemplateNodeIdAndInputNodeToOutputNodeMap.computeIfAbsent(templateNodeId, p -> new NodeTagCabinet());
  }

  private final ConcurrentHashMap<SConcept, Boolean> myConceptCouldNotBeTarget = new ConcurrentHashMap<>();

  // Doesn't make any sense to record outputNode when its concept doesn't bear 'could be reference target' StaticScope
  private boolean couldNotBeReferenceTarget(SConcept concept) {
    return myConceptCouldNotBeTarget.computeIfAbsent(concept, c -> c instanceof SConceptAdapterById ? ((SConceptAdapterById) c).getConceptDescriptor().getStaticScope() == StaticScope.NONE : Boolean.FALSE);
  }

  // templateContext, templateNodeId != null
  // generally, outputNode is outcome of preceding env.createOutputNode and assumed to be != null, too.
  void addOutputNodeForContext(TemplateContext templateContext, String templateNodeId, SNode outputNode) {
    if (couldNotBeReferenceTarget(outputNode.getConcept())) {
      return;
    }
    final NodeTagCabinet templateRecords = recordsOf(templateNodeId);
    final int tag = templateContext.executionPathIdentity();
    if (templateContext.getInput() == null) {
      // see addOutputNodeByTemplateNode() comment, below, for reasons we have to handle null input scenario
      templateRecords.withoutInput(tag, outputNode);
      return;
    }
    // == addOutputNodeByInputAndTemplateNode(templateContext, templateNodeId, outputNode);
    templateRecords.put(templateContext.getInput(), tag, outputNode);
    // ~38 cases in MPS itself when it's important, mostly for tests
    for (SNode historyInputNode : templateContext.getInputHistory()) {
      templateRecords.putIfAbsent(historyInputNode, tag, outputNode);
    }
      /*
       recording output node for a template node traces back to 2007's RuleUtil (c2ebb2dbd9eb3b2607006768c84d3921b02fd7c5), with vague 'fixing some problems"
       I see no reason to perform this mapping in case we do have input node, the only scenario is when a
       new root is created (think QueriesGenerated or LanguageConceptSwitch) and referenced directly from templates.
       MPS+mbeddr are fine without this; in this case the mechanism that helps to address CreateRoot scenario is dynamic references and proper resolve info
       (we don't use MLs in all such cases). However, I prefer static references, therefore I handle null input scenario, above.
       */
//    addOutputNodeByTemplateNode(templateNodeId, outputNode);
  }

  // find methods

  public SNode findOutputNodeByInputNodeAndMappingName(@Nullable SNode inputNode, @Nullable String mappingName) {
    if (mappingName == null) {
      return null;
    }
    if (inputNode == null) {
      // don't see a reason to account for null input node in scenarios where input node is expected.
      return null;
    }
    NodeMapRecord o = myLabeledMappings.record(mappingName, inputNode);
    if (o == null || o.count() == 0) {
      return null;
    }
    if (o.count() > 1) {
      final List<SNode> list = o.valueStream().toList();
      ProblemDescription[] descr = new ProblemDescription[list.size() + 1];
      for (int i = 0; i < list.size(); i++) {
        descr[i] = GeneratorUtil.describe(list.get(i), "output");
      }
      descr[list.size()] = GeneratorUtil.describe(inputNode, "input");
      String msg = "%d  output nodes found for mapping label '%s'";
      myLog.warning(inputNode == null ? null : inputNode.getReference(), String.format(msg, list.size(), mappingName), descr);
      return list.get(0);
    }

    return o.soleValue();
  }

  public List<SNode> findAllOutputNodesByInputNodeAndMappingName(SNode inputNode, String mappingName) {
    if (mappingName == null) {
      return null;
    }
    if (inputNode == null) {
      // don't see a reason to account for null input node in scenarios where input node is expected.
      return null;
    }
    NodeMapRecord o = myLabeledMappings.record(mappingName, inputNode);
    if (o == null || o.count() == 0) {
      return Collections.emptyList();
    }
    return o.valuesInto(new ArrayList<>(o.count()));
  }

  public SNode findCopiedOutputNodeForInputNode(@NotNull SNode inputNode) {
    Object o = myCopiedOutputNodeForInputNode.get(inputNode);
    if (o instanceof SNode) {
      return (SNode) o;
    }
    if (o instanceof List) {
      return (SNode) ((List) o).get(0);
    }
    return null;
  }


  @Nullable
  public SNode findOutputForTemplate(String templateNodeId, TemplateContext templateContext, @Nullable SNodeReference templateModelLocation) {
    final NodeTagCabinet l = recordsOf(templateNodeId);
    // try to find for the same inputNode
    final int tag = templateContext.executionPathIdentity();
    if (myLog.needsWarnings() && l.countWithTag(templateContext.getInput(), tag) > 1) {
      // MPS-31826 generator should report error on attempt to obtain not unique output-node
      // in fact, the text misses 'within an execution path', which seems too technical and rather confusing.
      // XXX not sure if I need to report templateNodeId, it seems to be the target of a reference @templateModelLocation, why would I
      //     get users frightened by something like "tpl:/..." then?
      // XXX also I wonder if I shall move logging outside of GM completely, RI_Template could do this, instead
      final String m = "Multiple output nodes recorded for template which is target of the resolved reference";
      myLog.warning(templateModelLocation, m, GeneratorUtil.describeInput(templateContext));
    }
    // tc.input == null is ok, we do record 'unique' output for a template node in this case, see #addOutputNodeForContext(), above
    SNode outputTargetNode = l.get(templateContext.getInput(), tag);
    // Here comes a change compared to old GM/RI_Template behavior:
    // Prior to the change, if template has been applied exactly once, then we had unique output node for each template node
    //  (I've changed that to no-input scenario only, as it doesn't make sense to record both input and input-less mapping)
    // The key was Pair(templateId, inputNode), and with no-input scenario it's basically templateId only.
    // Now, with the change of executionPathIdentity, NodeTagCabinet.get() takes the tag into account, therefore same templates applied in different
    // 'execution paths' are now 'unique', too. As they would have been non-unique before and not resolve then, I don't expect this to break anything,
    // however, that may give too much freedom for a template author I don't really like to provide, hence this heads up.
    if (outputTargetNode != null) {
      return outputTargetNode;
    }

    // try to find for indirect input nodes
    // FIXME likely, templateContext.getInput() we've checked already above, would come here again. check what's the contract of getInputHistory!
    for (SNode historyInputNode : templateContext.getInputHistory()) {
      outputTargetNode = l.get(historyInputNode, tag);
      if (outputTargetNode != null) {
        return outputTargetNode;
      }
    }

    // XXX getInputHistory() ignores null input node, which is a legitimate case e.g. for a Create Root template
    //     If we generate node "A" without any inputNode and then references to "A" with some inputNode set
    //     (e.g. in lang.generator, for each reduction rule with condition, we generate instantiation of
    //     a respective query class, which is not generated unless there are rules with conditions.)
    //     To restore such reference, we have to check 'l.withoutInput()' case (see addOutputNodeForContext(), above).
    //     I don't want to modify getInputHistory() yet to give null input (I suppose almost any TC would end up
    //     with null in its input history then, and I don't want to record excessive values). Therefore, I check
    //     here explicitly for null input just in case the one has been recorded.
    if (templateContext.getInput() != null) {
      // if it's null, we've checked this scenario already
      outputTargetNode = l.get(null, tag);
    }
    return outputTargetNode;
  }

  public boolean isInputNodeHasUniqueCopiedOutputNode(SNode inputNode) {
    Object o = myCopiedOutputNodeForInputNode.get(inputNode);
    return !(o instanceof List);
  }

  @Nullable
  public SNode findNewOutputNode(@Nullable String mappingLabel) {
    if (mappingLabel == null) {
      // all other methods tolerate null parameters, why this one would not?
      return null;
    }
    return myLabeledMappings.streamNoInput(mappingLabel).findFirst().orElse(null);
  }

  /*package*/ LMLookup getCompositeLabelsLookup(final String label) {
    return myLabeledMappings.getLookup(label);
  }

  // serialization

  /**
   * Record MLs into checkpoint state, assuming output nodes of the mappings are from the model being marked as 'checkpoint',
   * and input nodes being traced with transitionTrace
   */
  public void export(CheckpointStateBuilder cp) {
    myLabeledMappings.forEachWithInput((label, map) -> {
      map.forEachRecord(i -> {
        SNode inputNode = i.key();
        if (inputNode == null) {
          // FIXME shall I track nodes newly introduced at the given checkpoint step? Yes.
          //       However, for newly introduced nodes we keep separate collection, and there should be no
          //       null input nodes in this map. The check left just in case there's one (no check for null input in addOutput.. yet).
          return;
        }
        // perhaps, would be useful to record mappings even without original node (marked as 'useless')
        // to ease debug (once there's mechanism to show mapping labels as part of transient model/module)
        if (i.count() == 1) {
          cp.record(inputNode, label, i.soleValue());
        } else if (i.count() > 1) {
          @SuppressWarnings("unchecked")
          Collection<SNode> collection = (Collection<SNode>) i.value();
          cp.record(inputNode, label, collection);
        }
      });
    });
    myLabeledMappings.forEachNoInput(cp::record);
  }

  /**
   * We don't need to keep complete GeneratorMappings, just a subset with labeled input->output
   * and conditional roots, LMCollector is enough.
   *
   * @return set of labeled records to get exposed in checkpoint models (excluding MLs considered 'private')
   */
  /*package*/ LMCollector exposed() {
    // this is a third iteration I believe to make "persistence snapshot" of GM,
    // first one being MappingMemento, the next one unused GM#export(). Now GenerationSession
    // needs to keep tack of LMs from few steps, that's why we expose state as an object, rather than
    // encapsulate LM record processing in here. Besides, the way CheckpointStateBuilder+DebugMappingsBuilder
    // work doesn't leave me too much room for creativity here.
    // What is beneficial is that we now keep only labels we gonna need (i.e. not complete GM with
    // copied/template nodes)
    final LMCollector exposed = new LMCollector();
    final Set<String> privateLabels = myPrivateLabels.stream().map(LabelDeclaration::getName).collect(Collectors.toUnmodifiableSet());
    myLabeledMappings.forEachNoInput((l, n) -> {
      if (!privateLabels.contains(l)) {
        exposed.add(l, n);
      }
    });
    myLabeledMappings.forEachWithInput((l, nm) -> {
      if (!privateLabels.contains(l)) {
        exposed.add(l, nm);
      }
    });
    myLabeledMappings.forEachComposite(lr -> {
      if (!privateLabels.contains(lr.label)) {
        exposed.addComposite(lr);
      }
    });
    return exposed;
  }

  private static final class TagNodeList {
    final static int INITIAL_SIZE = 10;
    private int[] tags = new int[INITIAL_SIZE];
    private SNode[] nodes = new SNode[INITIAL_SIZE];
    private final Semaphore myChangeLock = new Semaphore(1);
    private int count;

    TagNodeList(SNode ignored) {

    }

    public void add(SNode n, int t) {
      myChangeLock.acquireUninterruptibly();
      implGrowAndAdd(n, t);
      myChangeLock.release();
    }

    private void implGrowAndAdd(SNode n, int t) {
      int capacity = tags.length;
      if (count == capacity) {
        capacity += INITIAL_SIZE;
        tags = Arrays.copyOf(tags, capacity);
        nodes = Arrays.copyOf(nodes, capacity);
      }
      tags[count] = t;
      nodes[count] = n;
      count++;
    }

    public void addIfNewTag(final SNode n, final int t) {
      final int[] cp = tags;
      final int cpCnt = count;
      for (int x = cpCnt - 1; x >= 0; x--) {
        if (cp[x] == t) {
          return;
        }
      }
      myChangeLock.acquireUninterruptibly();
      // repeat the search, just in case there's any change; check only those added
      boolean alreadyThere = false;
      if (cp != tags) {
        // array has been copied, up to cpCnt it's the same, though.
        for (int x = count - 1; x >= cpCnt; x--) {
          if (tags[x] == t) {
            alreadyThere = true;
            break;
          }
        }
      }
      if (!alreadyThere) {
        implGrowAndAdd(n, t);
      }
      myChangeLock.release();
    }


    SNode first() {
      return nodes[0];
    }

    int countWithTag(final int tag) {
      int rv = 0;
      for (int i = 0; i < count; i++) {
        if (tags[i] == tag) {
          rv++;
        }
      }
      return rv;
    }

    SNode lastWithTag(final int tag) {
      for (int i = count - 1; i >= 0; i--) {
        if (tags[i] == tag) {
          return nodes[i];
        }
      }
      return null;
    }

    int size() {
      return count;
    }
  }

  // FIXME in fact, seems more fruitful to keep thread-local instances, don't bother with synchronize, and merge them before references get resolved
  private static class NodeTagCabinet {
    private final ConcurrentMap<SNode, TagNodeList> myMap = new ConcurrentHashMap<>();
    private final TagNodeList myNoInput = new TagNodeList(null);

    void put(final SNode key, final int tag, final SNode value) {
      myMap.computeIfAbsent(key, TagNodeList::new).add(value, tag);
    }

    void putIfAbsent(final SNode key, final int tag, final SNode value) {
      myMap.computeIfAbsent(key, TagNodeList::new).addIfNewTag(value, tag);
    }

    void withoutInput(final int tag, final SNode value) {
      myNoInput.add(value, tag);
    }

    int countWithTag(SNode key, int tag) {
      final TagNodeList l = key == null ? myNoInput : myMap.get(key);
      if (l == null) {
        return 0;
      }
      return l.countWithTag(tag);
    }

    @Nullable
    SNode get(SNode key, int tag) {
      final TagNodeList l = key == null ? myNoInput : myMap.get(key);
      if (l == null) {
        return null;
      }

      if (l.size() == 1) {
        return l.first();
      }
      // get the last one, just in case same input node has been reduced to different output nodes in the same template
      // I've seen that in Template_string_switch_template (jdk7), where
      //    tnode1.addChild(myAggregationLinks[2], child7);
      // changed to
      //    tnode1.addChild(myAggregationLinks[2], child6);
      return l.lastWithTag(tag);
    }
  }
}
