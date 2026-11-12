/*
 * Copyright 2003-2023 JetBrains s.r.o.
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

import jetbrains.mps.generator.impl.GenControllerContext;
import jetbrains.mps.generator.impl.GenerationSessionLogger;
import jetbrains.mps.generator.impl.plan.CrossModelEnvironment;
import jetbrains.mps.generator.template.ITemplateGenerator;
import jetbrains.mps.generator.trace.TraceFacility;
import jetbrains.mps.smodel.SNodePointer;
import jetbrains.mps.smodel.SNodeUtil;
import jetbrains.mps.util.IterableUtil;
import jetbrains.mps.util.containers.ConcurrentHashSet;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SModelReference;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeAccessUtil;
import org.jetbrains.mps.openapi.model.SNodeReference;
import org.jetbrains.mps.openapi.module.SRepository;

import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.atomic.AtomicInteger;

/**
 * Available from {@link ITemplateGenerator#getGeneratorSessionContext()}.
 * Generally shall not get exposed in generated code, however there are templates that cast genContext to TemplateQueryContext and access ITemplateGenerator
 * from there, with subsequent access to this class (e.g. bl.java.closures - those under BL, not that standalone).
 * Igor Alshannikov
 * Sep 19, 2005
 */
public class GenerationSessionContext {

  private final Object COPIED_ROOTS = new Object();

  private final SModel myOriginalInputModel;

  private final GenControllerContext myEnvironment;
  private final TransientModelsModule myTransientModule;
  private final GenerationSessionLogger myLogger;

  private final Object NULL_OBJECT = new Object();

  /**
   * Transient objects survive micro-step only
   */
  private final Map<Object, Object> myTransientObjects;
  /**
   * Step objects survive major step
   */
  private final Map<Object, Object> myStepObjects;
  /**
   * Session objects survive complete generation session for the given model
   */
  private final Map<Object, Object> mySessionObjects;

  private final ConcurrentMap<SNodeReference, ConcurrentMap<String, AtomicInteger>> myIndexedNames;

  // these objects survive through all steps of generation
  private final ConcurrentMap<SNodeReference, Set<String>> myUsedNames;
  private final SNodeReference myFakeNameTopContextNode = new SNodePointer((SModelReference) null, null);
  private final Map<SNode, String> topToSuffix = new ConcurrentHashMap<>();

  public GenerationSessionContext(GenControllerContext environment, TransientModelsModule transientModule,
                                  GenerationSessionLogger logger,
                                  SModel inputModel) {

    myEnvironment = environment;
    myTransientModule = transientModule;
    myOriginalInputModel = inputModel;
    myLogger = logger;
    mySessionObjects = new ConcurrentHashMap<>();
    myTransientObjects = new ConcurrentHashMap<>();
    myStepObjects = new ConcurrentHashMap<>();
    myUsedNames = new ConcurrentHashMap<>();
    myIndexedNames = new ConcurrentHashMap<>();
  }

  /**
   * copy cons for each major step. Nothing but an odd way to clear step and transient objects
   */
  public GenerationSessionContext(@NotNull GenerationSessionContext prevContext) {
    myEnvironment = prevContext.myEnvironment;
    myTransientModule = prevContext.myTransientModule;
    myOriginalInputModel = prevContext.myOriginalInputModel;
    myLogger = prevContext.myLogger;
    mySessionObjects = prevContext.mySessionObjects;
    myUsedNames = prevContext.myUsedNames;
    // this copy cons indicate new major step, hence new empty maps
    myTransientObjects = new ConcurrentHashMap<>();
    myStepObjects = new ConcurrentHashMap<>();
    myIndexedNames = new ConcurrentHashMap<>();
  }

  public void clearTransientObjects() {
    myTransientObjects.clear();
  }

  public SModel getOriginalInputModel() {
    return myOriginalInputModel;
  }

  @NotNull
  public TransientModelsModule getModule() {
    return myTransientModule;
  }

  /**
   * @deprecated Transitional access to SRepository. Likely, the code that needs a repository shall get refactored
   *             not to use one. Contract is questionable, provided we head towards distinct repository for transient models.
   *             For the time being, this repository corresponds to generator's environment, e.g. project it's run from.
   */
  @Deprecated
  public SRepository getRepository() {
    return myEnvironment.getRepository();
  }

  public String toString() {
    return String.format("%s: generating %s in", getClass().getSimpleName(), myOriginalInputModel.getName());
  }

  public void putTransientObject(Object key, Object o) {
    myTransientObjects.put(key, o != null ? o : NULL_OBJECT);
  }

  public Object getTransientObject(Object key) {
    Object result = myTransientObjects.get(key);
    return result == NULL_OBJECT ? null : result;
  }

  public void putStepObject(Object key, Object o) {
    myStepObjects.put(key, o != null ? o : NULL_OBJECT);
  }

  public Object getStepObject(Object key) {
    Object result = myStepObjects.get(key);
    return result == NULL_OBJECT ? null : result;
  }

  public void putSessionObject(Object key, Object o) {
    mySessionObjects.put(key, o != null ? o : NULL_OBJECT);
  }

  public Object getSessionObject(Object key) {
    Object result = mySessionObjects.get(key);
    return result == NULL_OBJECT ? null : result;
  }

  private static void appendNodeUniqueId(SNode node, StringBuilder sb, boolean useContainmentlinkToIndexAt) {
    SNode parent = node.getParent();

    if (parent == null) {
      return;
    }
    sb.append('_');
    boolean sym = true;
    do {
      int index = IterableUtil.asList(parent.getChildren(useContainmentlinkToIndexAt ? node.getContainmentLink() : null)).indexOf(node);
      if (index == 0) {
        sb.append(sym ? 'a' : '0');
      }
      while (index > 0) {
        int curr = sym ? 'a' + (index % 26) : '0' + (index % 10);
        index /= sym ? 26 : 10;
        sb.appendCodePoint(curr);
      }
      sym = !sym;
      node = parent;
      parent = node.getParent();
    } while (parent != null);
  }


  public String createUniqueName(String roughName, SNode contextNode, SNode inputNode) {
    StringBuilder uniqueNameBuffer = new StringBuilder(50);
    uniqueNameBuffer.append(roughName);
    if (roughName.length() > 0 && roughName.charAt(roughName.length()-1) == '_') {
      uniqueNameBuffer.setLength(roughName.length()-1);
    }

    if (contextNode != null) {
      // find topmost 'named' ancestor
      SNode topmostNamed = null;
      SNode node_ = contextNode;
      while (node_ != null) {
        if (node_.getConcept().isSubConceptOf(SNodeUtil.concept_INamedConcept)) {
          topmostNamed = node_;
        }
        node_ = node_.getParent();
      }

      if (topmostNamed != null) {
        String suffix = topToSuffix.get(topmostNamed);
        if (suffix != null) {
          uniqueNameBuffer.append('_');
          uniqueNameBuffer.append(suffix);
        } else {
//          String name = topmostNamed.getName();
          String name = SNodeAccessUtil.getProperty(topmostNamed, SNodeUtil.property_INamedConcept_name);
          if (name != null) {
            // In fact, ("v2".hashCode >>> 1) == ("v3".hashCode >>> 1) and "unique" names
            // in two distinct roots (and distinct contextNode) happen to share top suffix.
            // When such two roots were generated in parallel, unique names weren't truly unique, and got mixed up.
            // Can't simply get rid of >>>1 as it would require rebuilding all the models where unique names were
            // used (i.e. almost every model out there).
            suffix = Integer.toString(name.hashCode() >>> 1, Character.MAX_RADIX);
            topToSuffix.put(topmostNamed, suffix);
            uniqueNameBuffer.append('_');
            uniqueNameBuffer.append(suffix);
          }
        }
        contextNode = topmostNamed;
      }
    } // if(contextNode != null)

    if (inputNode != null) {
      appendNodeUniqueId(inputNode, uniqueNameBuffer, roughName == null || !roughName.startsWith("Pattern_"));
    }

    final boolean suffixAdded = roughName.length() < uniqueNameBuffer.length();
    String uniqueName = uniqueNameBuffer.toString();

    final Set<String> usedNames = getUsedNames(contextNode);

    if (suffixAdded && usedNames.add(uniqueName)) {
      return uniqueName;
    }
    // assumption: !suffixAdded || usedNames.contains(uniqueName);
    uniqueNameBuffer.append('_');
    final int trimPos = uniqueNameBuffer.length();
    for (int count = 0; ; count++) {
      uniqueNameBuffer.append(count);
      uniqueName = uniqueNameBuffer.toString();
      if (usedNames.add(uniqueName)) {
        break;
      }
      uniqueNameBuffer.setLength(trimPos);
    }
    return uniqueName;
  }


  // baseName != null, contextNode may be null; noIndexForFirst == false means index is always added
  // If noIndexForFirst == true, the sequence would be "baseName", "baseName1", "baseName2", ...
  // if noIndexForFirst == false, the sequence is "baseName0", "baseName1", "baseName2", ...
  public String createIndexedName(String baseName, SNode contextNode, boolean noIndexForFirst) {
    SNodeReference key = contextNode == null ? myFakeNameTopContextNode : contextNode.getReference();
    ConcurrentMap<String, AtomicInteger> nameIndex = myIndexedNames.computeIfAbsent(key, o -> new ConcurrentHashMap<>());
    AtomicInteger index = nameIndex.computeIfAbsent(baseName, o -> new AtomicInteger(0));
    int value = index.getAndIncrement();
    if (value == 0 && noIndexForFirst) {
      return baseName;
    }
    return baseName + value;
  }

  /**
   * names are unique within given context, not globally in the session
   */
  private Set<String> getUsedNames(SNode contextNode) {
    SNodeReference key = contextNode == null ? myFakeNameTopContextNode : contextNode.getReference();
    Set<String> rv = myUsedNames.putIfAbsent(key, new ConcurrentHashSet<>());
    return rv == null ? myUsedNames.get(key) : rv;
  }


  public void clearCopiedRootsSet() {
    Set<SNode> set = getCopiedRoots(false);
    if (set != null) {
      set.clear();
    }
  }

  public void registerCopiedRoot(SNode outputRootNode) {
    getCopiedRoots(true).add(outputRootNode);
  }

  public boolean isCopiedRoot(SNode inputNode) {
    Set<SNode> set = getCopiedRoots(false);
    return set != null && set.contains(inputNode);
  }

  private Set<SNode> getCopiedRoots(boolean create) {
    @SuppressWarnings("unchecked")
    Set<SNode> set = (Set<SNode>) getStepObject(COPIED_ROOTS);
    if (set == null && create) {
      putStepObject(COPIED_ROOTS, set = new HashSet<>());
    }
    return set;
  }

  public Object getGenerationParameter(String name) {
    if (getGenerationOptions().getParametersProvider() != null) {
      final Map<String, Object> parameters = getGenerationOptions().getParametersProvider().getParameters(myOriginalInputModel);
      return parameters == null ? null : parameters.get(name);
    }
    return null;
  }

  public GenerationOptions getGenerationOptions() {
    return myEnvironment.getOptions();
  }

  /**
   * @return never <code>null</code>
   */
  public IGeneratorLogger getLogger() {
    return myLogger;
  }

  /**
   * @return never <code>null</code>
   */
  public CrossModelEnvironment getCrossModelEnvironment() {
    // same considerations applies as for #getRoleValidationFacility() above, need a distinct implementation context for TG (could use StepArguments, perhaps).
    return myEnvironment.getCrossModelEnvironment();
  }

  @Nullable
  public TraceFacility getTraceSession() {
    return myEnvironment.getTraceSession();
  }
}
