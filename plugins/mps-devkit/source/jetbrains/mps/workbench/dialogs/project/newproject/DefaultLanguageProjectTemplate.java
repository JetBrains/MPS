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

import com.intellij.openapi.application.ApplicationManager;
import com.intellij.openapi.startup.StartupManager;
import com.intellij.openapi.ui.Messages;
import jetbrains.mps.icons.MPSIcons.Nodes;
import jetbrains.mps.ide.ui.dialogs.modules.NameLocationPanel;
import jetbrains.mps.project.modules.LanguageAndSolutionsProducer;
import jetbrains.mps.project.modules.NewModuleCheck;
import jetbrains.mps.util.IStatus;
import jetbrains.mps.workbench.DocumentationHelper;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import javax.swing.Icon;
import javax.swing.JCheckBox;
import javax.swing.JComponent;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.File;

public class DefaultLanguageProjectTemplate implements LanguageProjectTemplate {
  private static final String DEFAULT_LANGUAGE_NAME = "NewLanguage";
  private static final String LANGUAGES_DIR = "languages";

  private final NameLocationPanel mySettings;
  private final JCheckBox myRuntimeSolution;
  private final JCheckBox mySandboxSolution;
  private final JCheckBox myGenerator;

  public DefaultLanguageProjectTemplate() {
    myRuntimeSolution = new JCheckBox("Create Runtime Solution");
    myRuntimeSolution.addActionListener(new ActionListener() {
      @Override
      public void actionPerformed(ActionEvent actionEvent) {
        fireSettingsChanged();
      }
    });
    mySandboxSolution = new JCheckBox("Create Sandbox Solution");
    mySandboxSolution.addActionListener(new ActionListener() {
      @Override
      public void actionPerformed(ActionEvent actionEvent) {
        fireSettingsChanged();
      }
    });
    myGenerator = new JCheckBox("Create Generator (as part of the language)");
    myGenerator.addActionListener(new ActionListener() {
      @Override
      public void actionPerformed(ActionEvent actionEvent) {
        fireSettingsChanged();
      }
    });
    mySettings = new NameLocationPanel(new File("."), "Language name:", "Language file location:") {
      {
        // logic derived from NewLanguageSettings, see NewLanguage_Action for further considerations.
        add(myRuntimeSolution, 4, 0.0);
        add(mySandboxSolution, 5, 0.0);
        add(myGenerator, 6, 0.0);
      }
      @Override
      public void reset() {
        super.reset();
        myRuntimeSolution.setSelected(false);
        mySandboxSolution.setSelected(false);
        myGenerator.setSelected(true);
      }
    };
    mySettings.withDefaults(DEFAULT_LANGUAGE_NAME, LANGUAGES_DIR);
    mySettings.onChange(this::fireSettingsChanged);
  }

  @Nullable
  @Override
  public Icon getIcon() {
    return Nodes.Language;
  }

  @NotNull
  @Override
  public String getName() {
    return "Language project";
  }

  @Nullable
  @Override
  public String getDescription() {
    return "In MPS, you create new languages and then use them to write code " +
           "in solutions. An <a href=\"" + DocumentationHelper.getHelpCenterBase() +
           "mps-project-structure.html#languages\">MPS language</a> describes the syntax, editor, generator and other aspects of the " +
           "new language.";
  }

  @Nullable
  @Override
  public JComponent getSettings() {
    mySettings.reset();
    return mySettings;
  }


  @NotNull
  @Override
  public TemplateFiller getTemplateFiller() {
    return project -> StartupManager.getInstance(project.getProject()).runAfterOpened(() -> project.getModelAccess().executeCommandInEDT(() -> {
      final LanguageAndSolutionsProducer lp = new LanguageAndSolutionsProducer(project);
      lp.withRuntimeSolution(myRuntimeSolution.isSelected()).withSandboxSolution(mySandboxSolution.isSelected()).withGenerator(myGenerator.isSelected());
      try {
        lp.create(mySettings.getModuleName(), MPSProjectTemplate.getModuleHome(project, mySettings.getModuleLocation()));
      } catch (IllegalStateException | IllegalArgumentException e) {
        // This is really just a fallback check if the producer raises an exception despite all the checks made by NewModuleUtil.check()
        final String message = e.getMessage() != null ? e.getMessage() : "No message was provided by exception";
        ApplicationManager.getApplication().invokeLater(() -> Messages.showErrorDialog(message, "Project Creation Failed"));
        throw e;
      }
    }));
  }

  @Override
  public void setProjectPath(String projectPath) {
    mySettings.withProjectPath(new File(projectPath));
  }

  @Nullable
  @Override
  public String getProjectPathFromSettings() {
    return MPSProjectTemplate.getProjectPathFromModuleLocation(mySettings.getModuleLocation(), LANGUAGES_DIR);
  }

  @Nullable
  @Override
  public String checkSettings() {
    final IStatus s = new NewModuleCheck().forLanguage().withName(mySettings.getModuleName()).withHome(mySettings.getModuleLocation()).checkAll();
    if (s.isError()) {
      return s.getMessage();
    }
    if (myRuntimeSolution.isSelected()) {
      final File moduleLocation = new File(mySettings.getModuleLocation().getAbsolutePath() + ".runtime");
      final IStatus status = new NewModuleCheck().forSolution().withName(mySettings.getModuleName() + ".runtime").withHome(moduleLocation).checkAll();
      if (status.isError()) {
        return status.getMessage();
      }
    }
    if (mySandboxSolution.isSelected()) {
      final File moduleLocation = new File(mySettings.getModuleLocation().getAbsolutePath() + ".sandbox");
      final IStatus status = new NewModuleCheck().forSolution().withName(mySettings.getModuleName() + ".sandbox").withHome(moduleLocation).checkAll();
      if (status.isError()) {
        return status.getMessage();
      }
    }
    return s.getMessage();
  }
}
