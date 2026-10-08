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
package jetbrains.mps.newTypesystem.state.blocks;

import gnu.trove.THashSet;
import jetbrains.mps.lang.typesystem.runtime.AbstractInequationReplacementRule_Runtime;
import jetbrains.mps.lang.typesystem.runtime.InequationReplacementRule_Runtime;
import jetbrains.mps.lang.typesystem.runtime.IsApplicable2Status;
import jetbrains.mps.languageScope.LanguageScopeExecutor;
import jetbrains.mps.newTypesystem.SubTypingManagerNew;
import jetbrains.mps.newTypesystem.SubtypingResolver;
import jetbrains.mps.newTypesystem.TypesUtil;
import jetbrains.mps.newTypesystem.operation.AddRemarkOperation;
import jetbrains.mps.newTypesystem.operation.CheckSubTypeOperation;
import jetbrains.mps.newTypesystem.operation.ProcessReplacementRuleOperation;
import jetbrains.mps.newTypesystem.state.Equations;
import jetbrains.mps.newTypesystem.state.State;
import jetbrains.mps.smodel.SNodeUtil;
import jetbrains.mps.typesystem.inference.EquationInfo;
import jetbrains.mps.typesystem.inference.TypeCheckerHelper;
import jetbrains.mps.typesystemEngine.util.LatticeUtil;
import jetbrains.mps.util.CollectionUtil;
import jetbrains.mps.util.Pair;
import org.jetbrains.mps.openapi.model.SNode;

import java.util.LinkedList;
import java.util.List;
import java.util.Set;

public class InequalityBlock extends RelationBlock {
  private final boolean lessThan;

  public SNode getOutput() {
    if (lessThan) {
      return myLeftNode;
    } else {
      return myRightNode;
    }
  }

  public SNode getInput() {
    if (isCheckOnly()) {
      return null;
    }
    if (lessThan) {
      return myRightNode;
    } else {
      return myLeftNode;
    }
  }

  @Override
  public List<Pair<SNode, SNode>> getInputsAndOutputs() {
    List<Pair<SNode, SNode>> result = new LinkedList<>();
    result.add(new Pair<>(getInput(), getOutput()));
    return result;
  }

  public InequalityBlock(State state, SNode left, SNode right, boolean lessThen, RelationKind kind, EquationInfo equationInfo) {
    super(state, left, right, kind, equationInfo);
    this.lessThan = lessThen;
  }

  @Override
  public void performAction() {
    SNode left = getResolvedInput(myLeftNode);
    SNode right = getResolvedInput(myRightNode);
    processInequality(left, right);
  }

  private boolean processReplacementRules(final SNode subType, final SNode superType) {
    final TypeCheckerHelper typeCheckerHelper = getState().getTypeCheckingContext().getTypeCheckerHelper();

    List<Pair<InequationReplacementRule_Runtime, IsApplicable2Status>> replacementRules =
      LanguageScopeExecutor.execWithMultiLanguageScope(
          SubTypingManagerNew.collectLanguagesRecursively(subType, superType),
          () -> typeCheckerHelper.getRulesManager().getReplacementRules(subType, superType),
          typeCheckerHelper.getScopeFactory());

    for (jetbrains.mps.util.Pair<InequationReplacementRule_Runtime, IsApplicable2Status> inequalityReplacementRule : replacementRules) {
      final InequationReplacementRule_Runtime rule = inequalityReplacementRule.o1;

      final IsApplicable2Status status = inequalityReplacementRule.o2;
      getState().executeOperation(new ProcessReplacementRuleOperation(subType, superType, myRelationKind.isWeak(),
                                                                      () -> ((AbstractInequationReplacementRule_Runtime) rule).processInequation(subType, superType, myEquationInfo, getState().getTypeCheckingContext(), status, myRelationKind.isWeak(), lessThan)));
      return true;
    }
    return false;
  }

  private void processInequality(final SNode subType, final SNode superType) {
    if (subType == null || superType == null || subType == superType) {
      return;
    }
    if (!TypesUtil.hasVariablesInside(subType) && !TypesUtil.hasVariablesInside(superType)){
      //no need to check if we don't need error reporting
      if (getState().getTypeCheckingContext().isSingleTypeComputation()) return;
      if (TypesUtil.match(subType, superType)) {
        getState().executeOperation(new AddRemarkOperation("Matched: " + subType + " and " + superType));
        return;
      }
    }
    if (processReplacementRules(subType, superType)) {
      return;
    }
    final SubTypingManagerNew subTyping = (SubTypingManagerNew) getState().getTypeCheckingContext().getTypeCheckerHelper().getSubtypingManager();
    getState().executeOperation(new CheckSubTypeOperation(subType, superType, myRelationKind.isWeak(), () -> {
      if (!calcIsSubtype(subTyping, subType, superType)) {
        getState().getNodeMaps().reportSubTypeError(subType, superType, myEquationInfo, myRelationKind.isWeak());
      }
    }));
  }

  private boolean calcIsSubtype(SubTypingManagerNew subTyping, SNode subType, SNode superType) {
    THashSet<Pair<SNode, SNode>> matchingPairs = new THashSet<>();
    SubtypingResolver subtypingResolver = new SubtypingResolver(myRelationKind.isWeak(), getState().getTypeCheckingContext(), matchingPairs);
    boolean result = subtypingResolver.calcIsSubType(subType, superType);
    if (result) {
      Equations equations = getState().getEquations();
      if (equations != null) {
        equations.addEquations(matchingPairs, myEquationInfo);
      }
    }
    return result;
  }

  @Override
  public Set<Pair<SNode, ConditionKind>> getInitialInputs() {
    if (isCheckOnly()) {
      return CollectionUtil.set(new Pair<>(myLeftNode, ConditionKind.CONCRETE),
                                new Pair<>(myRightNode, ConditionKind.CONCRETE));
    } else {
      //hack
      ConditionKind left = ConditionKind.SHALLOW;
      if (LatticeUtil.isPolymorphic(myLeftNode)) {
        left = ConditionKind.CONCRETE;
      }
      ConditionKind right = ConditionKind.SHALLOW;
      if (LatticeUtil.isPolymorphic(myRightNode)) {
        right = ConditionKind.CONCRETE;
      }
      return CollectionUtil.set(new Pair<>(myLeftNode, left),
                                new Pair<>(myRightNode, right));
    }
  }

  @Override
  public BlockKind getBlockKind() {
    return BlockKind.INEQUALITY;
  }

  private String getPresentationInternal(SNode left, SNode right) {
    if (lessThan) {
      return SNodeUtil.getPresentation(left) + myRelationKind.getRelationSign() + SNodeUtil.getPresentation(right);
    } else {
      return SNodeUtil.getPresentation(right) + myRelationKind.getReversedRelationSign() + SNodeUtil.getPresentation(left);
    }
  }

  @Override
  public String getShortPresentation() {
    return getPresentationInternal(myLeftNode, myRightNode);
  }


  @Override
  public String getExpandedPresentation(State state) {
    return getPresentationInternal(state.expand(myLeftNode), state.expand(myRightNode));
  }
}
