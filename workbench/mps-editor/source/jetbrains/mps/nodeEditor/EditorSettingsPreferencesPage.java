/*
 * Copyright 2003-2020 JetBrains s.r.o.
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
package jetbrains.mps.nodeEditor;

import com.intellij.openapi.Disposable;
import com.intellij.openapi.editor.EditorFactory;
import com.intellij.ui.ContextHelpLabel;
import com.intellij.ui.IdeBorderFactory;
import com.intellij.ui.components.JBRadioButton;
import com.intellij.ui.components.panels.VerticalLayout;
import com.intellij.uiDesigner.core.GridConstraints;
import com.intellij.uiDesigner.core.GridLayoutManager;
import com.intellij.util.ui.JBInsets;
import com.intellij.util.ui.JBUI;
import jetbrains.mps.nodeEditor.resources.EditorSettingsBundle;

import javax.swing.Box;
import javax.swing.BoxLayout;
import javax.swing.ButtonGroup;
import javax.swing.JCheckBox;
import javax.swing.JComponent;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JSpinner;
import javax.swing.JTextField;
import javax.swing.SpinnerNumberModel;
import java.awt.BorderLayout;
import java.awt.GridLayout;

class EditorSettingsPreferencesPage implements Disposable {
  private static final int RIGHT_MARGIN_MIN = 1;
  private static final int RIGHT_MARGIN_MAX = 1000;
  private static final int RIGHT_MARGIN_STEP = 20;

  private static final int INDENT_SIZE_MIN = 0;
  private static final int INDENT_SIZE_MAX = 100;
  private static final int INDENT_SIZE_STEP = 2;

  private JPanel myEditorSettingsPanel;
  private final JSpinner myRightMargin;
  private final JSpinner myIndentSize;
  private final JCheckBox myAutoQuickFixCheckBox;
  private final JCheckBox myCompletionStylingCheckBox;
  private final JCheckBox myUseBraces;
  private final JCheckBox myUseTwoStepDeletion;
  private final JCheckBox myTypeOverExistingText;
  private final JCheckBox mySyncWithModelOnSelectionChange;
  private final JCheckBox myHighlightNodeUnderCursor;
  private final JCheckBox myDisableImmediateQuickFix;
  private final JCheckBox myShowContextAssistant;
  private final JBRadioButton myDontShow;
  private final JBRadioButton myTabPerAspect;
  private final JBRadioButton myTabPerNode;
  private final JBRadioButton myAllTabs;
  private JBRadioButton myFirstSelection;

  @SuppressWarnings("UnusedAssignment")
  EditorSettingsPreferencesPage() {
    final int gap = 5;
    final JBInsets insets = new JBInsets(gap, gap, gap, gap);
    int mainPanelRowCount = 0;
    JPanel panel = new JPanel(new GridLayoutManager(4, 1, insets, gap, gap));

    ButtonGroup group = new ButtonGroup();

    JPanel editorTabsRB = new JPanel(new GridLayout(4, 1));
    editorTabsRB.setBorder(IdeBorderFactory.createTitledBorder(EditorSettingsBundle.message("border.title.aspect.tabs"), true));

    myDontShow = new JBRadioButton(EditorSettingsBundle.message("radiobutton.aspect.tabs.do.not.show"));
    editorTabsRB.add(myDontShow);
    group.add(myDontShow);

    myTabPerAspect = new JBRadioButton(EditorSettingsBundle.message("radiobutton.aspect.tabs.for.aspect"));
    editorTabsRB.add(myTabPerAspect);
    group.add(myTabPerAspect);

    myTabPerNode = new JBRadioButton(EditorSettingsBundle.message("radiobutton.aspect.tabs.for.node"));
    editorTabsRB.add(myTabPerNode);
    group.add(myTabPerNode);

    myAllTabs = new JBRadioButton(EditorSettingsBundle.message("radiobutton.aspect.tabs.for.non.existing"));
    editorTabsRB.add(myAllTabs);
    group.add(myAllTabs);

    myFirstSelection = myTabPerAspect;
    myFirstSelection.setSelected(true);

    panel.add(editorTabsRB, getConstraint(mainPanelRowCount++, 0));

    JPanel codeFormattingPanel = new JPanel(new GridLayoutManager(2, 2, insets, gap, gap));

    codeFormattingPanel.add(new JLabel(EditorSettingsBundle.message("label.text.width")), getConstraint(0, 0));
    myRightMargin = new JSpinner(new SpinnerNumberModel(RIGHT_MARGIN_MIN, RIGHT_MARGIN_MIN, RIGHT_MARGIN_MAX, RIGHT_MARGIN_STEP));
    ((JSpinner.DefaultEditor) myRightMargin.getEditor()).getTextField().setHorizontalAlignment(JTextField.LEFT);
    codeFormattingPanel.add(myRightMargin, getConstraint(0, 1));

    codeFormattingPanel.add(new JLabel(EditorSettingsBundle.message("label.indent.size")), getConstraint(1, 0));
    myIndentSize = new JSpinner(new SpinnerNumberModel(INDENT_SIZE_MIN, INDENT_SIZE_MIN, INDENT_SIZE_MAX, INDENT_SIZE_STEP));
    ((JSpinner.DefaultEditor) myIndentSize.getEditor()).getTextField().setHorizontalAlignment(JTextField.LEFT);
    codeFormattingPanel.add(myIndentSize, getConstraint(1, 1));

    panel.add(codeFormattingPanel, getConstraint(mainPanelRowCount++, 0));

    JPanel checkboxes = new JPanel(new VerticalLayout(0));
    myUseBraces = new JCheckBox(EditorSettingsBundle.message("checkbox.use.braces"));
    checkboxes.add(myUseBraces);

    myCompletionStylingCheckBox = new JCheckBox(EditorSettingsBundle.message("checkbox.completion.styling"));
    checkboxes.add(myCompletionStylingCheckBox);

    myShowContextAssistant = new JCheckBox(EditorSettingsBundle.message("checkbox.context.assistant"));
    checkboxes.add(myShowContextAssistant);

    myUseTwoStepDeletion = new JCheckBox(EditorSettingsBundle.message("checkbox.use.two.step.deletion"));
    checkboxes.add(myUseTwoStepDeletion);

    myTypeOverExistingText = new JCheckBox(EditorSettingsBundle.message("checkbox.type.over.existing.text"));
    checkboxes.add(myTypeOverExistingText);

    mySyncWithModelOnSelectionChange = new JCheckBox(EditorSettingsBundle.message("checkbox.sync.with.model.on.selection.change"));
    checkboxes.add(withTooltip(mySyncWithModelOnSelectionChange, EditorSettingsBundle.message("checkbox.sync.with.model.on.selection.change.tooltip")));

    myHighlightNodeUnderCursor = new JCheckBox(EditorSettingsBundle.message("checkbox.highlight.current.node"));
    checkboxes.add(myHighlightNodeUnderCursor);

    myDisableImmediateQuickFix = new JCheckBox(EditorSettingsBundle.message("checkbox.disable.immediate.quick.fix"));
    checkboxes.add(myDisableImmediateQuickFix);

    myAutoQuickFixCheckBox = new JCheckBox(EditorSettingsBundle.message("checkbox.auto.resolve.refs"));
    checkboxes.add(withTooltip(myAutoQuickFixCheckBox, EditorSettingsBundle.message("checkbox.auto.resolve.refs.tooltip")));

    panel.add(checkboxes, getConstraint(mainPanelRowCount++, 0));

    myEditorSettingsPanel = new JPanel(new BorderLayout());
    myEditorSettingsPanel.add(panel, BorderLayout.NORTH);
  }

  private static JComponent withTooltip(JComponent component, String tooltip) {
    JPanel wrapper = new JPanel();
    wrapper.setLayout(new BoxLayout(wrapper, BoxLayout.LINE_AXIS));
    wrapper.add(component);
    wrapper.add(Box.createRigidArea(JBUI.size(5, 0)));
    wrapper.add(ContextHelpLabel.create(tooltip));
    return wrapper;
  }

  private GridConstraints getConstraint(int row, int column) {
    return new GridConstraints(
        row, column, 1, 1,
        GridConstraints.ANCHOR_WEST, column == 0 ? GridConstraints.FILL_NONE : GridConstraints.FILL_HORIZONTAL,
        column == 0 ? GridConstraints.SIZEPOLICY_FIXED : GridConstraints.SIZEPOLICY_CAN_GROW | GridConstraints.SIZEPOLICY_CAN_SHRINK,
        GridConstraints.SIZEPOLICY_FIXED, null, null, null);
  }

  public JComponent getComponent() {
    return myEditorSettingsPanel;
  }

  public void commit() {
    final EditorSettings editorSettings = EditorSettings.getInstance();
    editorSettings.setVerticalBound((Integer) myRightMargin.getModel().getValue());

    editorSettings.setIndentSize((Integer) myIndentSize.getModel().getValue());

    editorSettings.setUseBraces(myUseBraces.isSelected());
    editorSettings.setShowContextAssistant(myShowContextAssistant.isSelected());
    editorSettings.setUseTwoStepDeletion(myUseTwoStepDeletion.isSelected());
    editorSettings.setTypeOverExistingText(myTypeOverExistingText.isSelected());
    editorSettings.setSyncWithModelOnSelectionChange(mySyncWithModelOnSelectionChange.isSelected());
    editorSettings.setHighlightNodeUnderCursor(myHighlightNodeUnderCursor.isSelected());
    editorSettings.setDisableImmediateQuickFix(myDisableImmediateQuickFix.isSelected());

    editorSettings.setAutoQuickFix(myAutoQuickFixCheckBox.isSelected());

    editorSettings.setCompletionStyling(myCompletionStylingCheckBox.isSelected());

    editorSettings.setShow(myTabPerAspect.isSelected() || myTabPerNode.isSelected() || myAllTabs.isSelected());
    editorSettings.setShowPlain(myTabPerNode.isSelected() || myAllTabs.isSelected());
    editorSettings.setShowGrayed(myAllTabs.isSelected());
    applyState();

    editorSettings.updateCachedValue();
    EditorFactory.getInstance().refreshAllEditors();
    editorSettings.fireEditorSettingsChanged();
  }

  private void applyState() {
    final EditorSettings editorSettings = EditorSettings.getInstance();
    if (!editorSettings.isShow()) {
      myFirstSelection = myDontShow;
    } else if (!editorSettings.isShowPlain()) {
      myFirstSelection = myTabPerAspect;
    } else if (!editorSettings.isShowGrayed()) {
      myFirstSelection = myTabPerNode;
    } else {
      myFirstSelection = myAllTabs;
    }
  }

  public boolean isModified() {
    final EditorSettings editorSettings = EditorSettings.getInstance();
    boolean sameTextWidth = myRightMargin.getModel().getValue().equals(editorSettings.getVerticalBound());
    boolean sameIndentSize = myIndentSize.getModel().getValue().equals(editorSettings.getIndentSize());
    boolean sameUseBraces = myUseBraces.isSelected() == editorSettings.useBraces();
    boolean sameTwoStepBackspace = myUseTwoStepDeletion.isSelected() == editorSettings.isUseTwoStepDeletion();
    boolean sameTypeOverExistingText = myTypeOverExistingText.isSelected() == editorSettings.isTypeOverExistingText();
    boolean sameSyncWithModelOnSelectionChange = mySyncWithModelOnSelectionChange.isSelected() == editorSettings.isSyncWithModelOnSelectionChange();
    boolean sameHighlightNodeUnderCursor = myHighlightNodeUnderCursor.isSelected() == editorSettings.isHighlightNodeUnderCursor();
    boolean sameDisableImmediateQuickFix = myDisableImmediateQuickFix.isSelected() == editorSettings.isDisableImmediateQuickFix();
    boolean sameAutoQuickFix = myAutoQuickFixCheckBox.isSelected() == editorSettings.isAutoQuickFix();
    boolean sameCompletionStyling = myCompletionStylingCheckBox.isSelected() == editorSettings.isCompletionStyling();
    boolean sameTabs = myFirstSelection.isSelected();
    boolean sameUseContextAssistant = myShowContextAssistant.isSelected() == editorSettings.isShowContextAssistant();

    return !(sameTextWidth && sameIndentSize &&
             sameUseBraces && sameTwoStepBackspace &&
             sameTypeOverExistingText && sameAutoQuickFix &&
             sameSyncWithModelOnSelectionChange &&
             sameDisableImmediateQuickFix &&
             sameHighlightNodeUnderCursor &&
             sameCompletionStyling &&
             sameTabs && sameUseContextAssistant);
  }

  public void reset() {
    final EditorSettings editorSettings = EditorSettings.getInstance();
    myRightMargin.setValue(editorSettings.getVerticalBound());
    myIndentSize.setValue(editorSettings.getIndentSize());
    myUseBraces.setSelected(editorSettings.useBraces());
    myUseTwoStepDeletion.setSelected(editorSettings.isUseTwoStepDeletion());
    myTypeOverExistingText.setSelected(editorSettings.isTypeOverExistingText());
    mySyncWithModelOnSelectionChange.setSelected(editorSettings.isSyncWithModelOnSelectionChange());
    myHighlightNodeUnderCursor.setSelected(editorSettings.isHighlightNodeUnderCursor());
    myDisableImmediateQuickFix.setSelected(editorSettings.isDisableImmediateQuickFix());
    myAutoQuickFixCheckBox.setSelected(editorSettings.isAutoQuickFix());
    myCompletionStylingCheckBox.setSelected(editorSettings.isCompletionStyling());
    myShowContextAssistant.setSelected(editorSettings.isShowContextAssistant());
    applyState();
    myFirstSelection.setSelected(true);
  }

  @Override
  public void dispose() {
    myEditorSettingsPanel = null;
  }
}
