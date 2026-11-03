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

import jetbrains.mps.generator.ModelGenerationPlan.Step;
import org.jetbrains.mps.openapi.model.SModel;

import java.util.List;
import java.util.function.Consumer;

/**
 * Sequence of plan steps to transform an input model and to produce an output model
 */
/*package*/ final class PlanBranchInfo {
  SModel inputModel;
  LMSnapshot actualStateCopyOfLastBitTransformStepMappings;
  ModelTransitions transitionTrace;
  int majorStepAtFork;
  int minorStepAtFork;
  List<Step> branch;
  Consumer<SModel> xxxProvisionalPostConfigure;

  // just an identifier of a branch for later reference (e.g. distinguish models of different branches in UI)
  final int serial;

  PlanBranchInfo() {
    serial = 0;
  }

  PlanBranchInfo(int ix) {
    serial = ix;
  }
}