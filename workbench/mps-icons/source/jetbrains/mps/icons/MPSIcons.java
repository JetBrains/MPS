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
package jetbrains.mps.icons;

import com.intellij.icons.AllIcons;
import com.intellij.ui.IconManager;

import javax.swing.Icon;

public class MPSIcons {
  private static Icon load(String path) {
    // XXX used to be IconLoader.getIcon(), but c.i.icons.AllIcons uses IconManager, why wouldn't MPS then?
    return IconManager.getInstance().getIcon(path, MPSIcons.class.getClassLoader());
  }
  
  public static class Ant {
    // Copy of icons.AntIcons#Build from ant plugin
    public static final Icon Build = load("/ant/build.png");
  }

  public static class Actions {
    public static final Icon AddToVCS = load("/actions/addToVcs.png");
    public static final Icon GroupByCategory = load("/actions/groupByCategory.png");
    public static final Icon GroupByModel = load("/actions/groupByModel.png");
    public static final Icon GroupByModule = load("/actions/groupByModule.png");
    public static final Icon GroupByRoot = load("/actions/groupByRoot.png");
    public static final Icon GroupSearched = load("/actions/groupSearched.png");
    public static final Icon ImportModulesFromFolder = load("/actions/importModulesFromFolder.png");
    public static final Icon MigrationBulb = load("/actions/migrationBulb.png");
    // todo: create icon
    public static final Icon SuppressedError = new CachedLayeredIcon(AllIcons.Nodes.ErrorMark, AllIcons.Actions.Close);
    public static final Icon SearchedNodes = load("/actions/searchedNodes.png");
    public static final Icon ShowCellInExplorer = load("/actions/showCellInExplorer.png");
    public static final Icon ShowOnlyStrongSubtypes = load("/actions/showOnlyStrongSubtypes.png");
  }

  public static class CellExplorer {
    public static final Icon CellActionKey = load("/cellExplorer/cellActionKey.png");
    public static final Icon CellComponent = load("/cellExplorer/cellComponent.png");
    public static final Icon CellConst = load("/cellExplorer/cellConst.png");
    public static final Icon CellDefault = load("/cellExplorer/cellDefault.png");
    public static final Icon CellError = load("/cellExplorer/cellError.png");
    public static final Icon CellExplorer = load("/cellExplorer/cellExplorer.png");
    public static final Icon CellKeyMap = load("/cellExplorer/cellKeyMap.png");
    public static final Icon CellProperty = load("/cellExplorer/cellProperty.png");
    public static final Icon Cells = load("/cellExplorer/cells.png");
  }

  public static class Debug {
    public static final Icon AddBreakPoint = load("/debugger/addBreakpoint.svg");
    public static final Icon DeleteBreakpoint = load("/debugger/deleteBreakpoint.svg");
    public static final Icon GoToSource = load("/debugger/goToSource.png");
  }

  public static class General {
    public static final Icon Dependencies = load("/general/dependencies.png");
    public static final Icon ModelChecker = load("/general/modelChecker.png");
    public static final Icon Runtime = load("/general/runtime.png");
    public static final Icon Java = load("/general/java.png");
    public static final Icon GeneratorPriorities = load("/general/generatorsPriorities.png");
    public static final Icon UsedLanguages = load("/general/usedLanguages.png");
  }

  public static class Generator {
    public static final Icon CopyOperation = load("/generator/copy-operation.png");
    public static final Icon Input = load("/generator/input.png");
    public static final Icon Macro = load("/generator/macro.png");
    public static final Icon MappingScript = load("/generator/mapping-script.png");
    public static final Icon Output = load("/generator/output.png");
    public static final Icon RuleConsequence = load("/generator/rule-consequence.png");
    public static final Icon Rule = load("/generator/rule.png");
    public static final Icon Switch = load("/generator/switch.png");
    public static final Icon Template = load("/generator/template.png");
  }

  public static class IdeaIntegration {
    public static final Icon Connected = load("/ideaIntegration/connected.png");
    public static final Icon ConnectedWithErrors = load("/ideaIntegration/connected_with_errors.png");
    public static final Icon Disconnected = load("/ideaIntegration/disconnected.png");
    public static final Icon TryingToConnect = load("/ideaIntegration/trying.png");
  }

  public static class Nodes {
    public static final Icon Action = load("/nodes/action.png");
    public static final Icon Behavior = load("/nodes/behavior.png");
    public static final Icon Constraint = load("/nodes/constraint.png");
    public static final Icon DataFlow = load("/nodes/dataFlow.png");
    public static final Icon Default = load("/nodes/default.png");
    public static final Icon DevKit = load("/nodes/devkit.png");
    public static final Icon Editor = load("/nodes/editor.png");
    public static final Icon Generator = load("/nodes/generator.png");
    public static final Icon Language = load("/nodes/language.png");
    public static final Icon LanguageRuntime = new CachedLayeredIcon(Language, AllIcons.Nodes.Locked);
    public static final Icon MappingConfig = load("/nodes/mappingConf.png");
    public static final Icon Model = load("/nodes/model.png");
    public static final Icon Node = load("/nodes/node.png");
    public static final Icon Reduction = load("/nodes/reduction.png");
    public static final Icon Refactoring = load("/nodes/refactoring.png");
    public static final Icon RootNode = load("/nodes/rootNode.png");
    public static final Icon Rule = load("/nodes/rule.png");
    public static final Icon Solution = load("/nodes/solution.png");
    public static final Icon Structure = load("/nodes/structure.png");
    public static final Icon TestModel = new CachedLayeredIcon(Nodes.Model, AllIcons.Nodes.JunitTestMark);
    public static final Icon TextGen = load("/nodes/textGen.png");
    public static final Icon TransientModule = load("/nodes/transient.svg");
    public static final Icon TransientModuleDisabled = load("/nodes/transientDisable.svg");
    public static final Icon Type = load("/nodes/type.png");
    public static final Icon Unknown = load("/nodes/unknown.png");
    public static final Icon UsagesResultOverlay = load("/nodes/usages-result-overlay.png");
    public static final Icon UsagesFinder = load("/nodes/usagesFinder.png");
    public static final Icon TrackRunningTest = load("nodes/renderer.svg");

    public static class Models {
      public static final Icon AspectModel = load("/nodes/models/aspect.png");
      public static final Icon TemplatesModel = load("/nodes/models/templatesModel.png");
      public static final Icon TestsModel = load("/nodes/models/tests.png");
      public static final Icon AccessoryModel = load("/nodes/models/accessoryModel.png");
    }
  }

  /**
   * @deprecated replace with {@link Nodes#LanguageRuntime}
   */
  @Deprecated(since = "2022.3", forRemoval = true)
  public static final Icon LanguageRuntime = Nodes.LanguageRuntime;

  public static class ProjectPane {
    public static final Icon LogicalView = load("/projectPane/logicalView.png");
  }

  public static class Small {
    public static final Icon Error = load("/small/error.png");
  }

  public static class ToolWindows {
    @Deprecated /* Will be removed after MPS 2018.2 incl minor versions. Use com.intellij.icons.AllIcons.Toolwindows.ToolWindowHierarchy instead*/
    public static final Icon ClassHierarchyView = AllIcons.Toolwindows.ToolWindowHierarchy;
    public static final Icon Default = load("/toolWindows/default.png");
    public static final Icon ModelChecker = load("/toolWindows/modelChecker.png");
    // Copy of icons.TerminalIcons#OpenTerminal_13x13 from terminal plugin
    public static final Icon OpenTerminal_13x13 = load("/toolWindows/OpenTerminal_13x13.svg");
    public static final Icon Console = load("/toolWindows/OpenTerminal_13x13.svg");
    public static final Icon terminal = load("/toolWindows/terminal.svg");
    public static final Icon TypeTraceView = load("/toolWindows/typeTraceView.png");
    public static final Icon CellExplorer = load("/toolWindows/cellExplorer.png");
    public static final Icon DependencyAnalyzer = load("/toolWindows/dependencyAnalyzer.svg");
    public static final Icon ContextActions = load("/toolWindows/context.svg");
  }

  public static final Icon MPS16x16 = load("/mps_16.svg");
}
