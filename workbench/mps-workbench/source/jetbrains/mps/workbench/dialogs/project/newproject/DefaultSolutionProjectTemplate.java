/*
 * Copyright 2003-2022 JetBrains s.r.o.
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
package jetbrains.mps.workbench.dialogs.project.newproject;

import com.intellij.openapi.startup.StartupManager;
import jetbrains.mps.icons.MPSIcons.Nodes;
import jetbrains.mps.ide.ui.dialogs.modules.NameLocationPanel;
import jetbrains.mps.project.modules.NewModuleCheck;
import jetbrains.mps.project.modules.SolutionProducer;
import jetbrains.mps.util.IStatus;
import jetbrains.mps.workbench.DocumentationHelper;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import javax.swing.Icon;
import javax.swing.JComponent;
import java.io.File;

public class DefaultSolutionProjectTemplate implements SolutionProjectTemplate {
  private static final String DEFAULT_SOLUTION_NAME = "NewSolution";
  private static final String SOLUTIONS_DIR = "solutions";

  private final NameLocationPanel myNewSolutionSettings;

  public DefaultSolutionProjectTemplate() {
    myNewSolutionSettings = new NameLocationPanel(new File("."), "Solution name:", "Solution file location:");
    myNewSolutionSettings.withDefaults(DEFAULT_SOLUTION_NAME, SOLUTIONS_DIR);
    myNewSolutionSettings.onChange(this::fireSettingsChanged);
  }

  @Nullable
  @Override
  public Icon getIcon() {
    return Nodes.Solution;
  }

  @NotNull
  @Override
  public String getName() {
    return "Solution project";
  }

  @Nullable
  @Override
  public String getDescription() {
    return "Solutions are used to store code written in MPS languages. " +
           "Each <a href=\"" + DocumentationHelper.getHelpCenterBase() + "mps-project-structure.html#solutions\">MPS solution</a> " +
           "is a set of models with a name.";
  }

  @Nullable
  @Override
  public JComponent getSettings() {
    myNewSolutionSettings.reset();
    return myNewSolutionSettings;
  }

  @NotNull
  @Override
  public TemplateFiller getTemplateFiller() {
    return project -> StartupManager.getInstance(project.getProject()).runAfterOpened(() -> project.getModelAccess().executeCommandInEDT(
        () -> new SolutionProducer(project).create(myNewSolutionSettings.getModuleName(), MPSProjectTemplate.getModuleHome(project, myNewSolutionSettings.getModuleLocation()))
    ));
  }

  @Override
  public void setProjectPath(String projectPath) {
    myNewSolutionSettings.withProjectPath(new File(projectPath));
  }

  @Nullable
  @Override
  public String getProjectPathFromSettings() {
    return MPSProjectTemplate.getProjectPathFromModuleLocation(myNewSolutionSettings.getModuleLocation(), SOLUTIONS_DIR);
  }

  @Nullable
  @Override
  public String checkSettings() {
    final IStatus s = new NewModuleCheck().forSolution().withName(myNewSolutionSettings.getModuleName()).withHome(myNewSolutionSettings.getModuleLocation()).checkAll();
    return s.getMessage();
  }
}
