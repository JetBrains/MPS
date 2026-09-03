/*
 * Copyright 2003-2024 JetBrains s.r.o.
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
package jetbrains.mps.ide.devkit.generator;

import com.intellij.openapi.actionSystem.ActionGroup;
import com.intellij.openapi.actionSystem.ActionManager;
import com.intellij.openapi.actionSystem.ActionPlaces;
import com.intellij.openapi.actionSystem.ActionToolbar;
import com.intellij.openapi.application.ApplicationManager;
import com.intellij.openapi.project.Project;
import com.intellij.openapi.startup.StartupManager;
import com.intellij.ui.content.ContentManager;
import jetbrains.mps.generator.GenerationSettingsProvider;
import jetbrains.mps.generator.GenerationTrace;
import jetbrains.mps.generator.IGenerationSettings.GenTraceSettings;
import jetbrains.mps.generator.TransientModelsProvider;
import jetbrains.mps.ide.project.ProjectHelper;
import jetbrains.mps.ide.tools.BaseTabbedProjectTool;
import jetbrains.mps.ide.tools.BaseTabbedProjectTool.Tab;
import jetbrains.mps.ide.tools.CloseAction;
import jetbrains.mps.project.MPSProject;
import jetbrains.mps.smodel.ModelAccessHelper;
import jetbrains.mps.util.Computable;
import jetbrains.mps.workbench.action.ActionUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.model.SModelReference;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeReference;

import javax.swing.BoxLayout;
import javax.swing.Icon;
import javax.swing.JComponent;
import javax.swing.JLabel;
import javax.swing.JPanel;
import java.awt.BorderLayout;
import java.awt.Component;
import java.awt.GridBagConstraints;
import java.awt.GridBagLayout;
import java.util.ArrayList;
import java.util.List;

public final class GenerationTracerViewToolState {
  private final NoTabsComponent myNoTabsComponent;

  private final List<GenerationTracerView> myTracerViews = new ArrayList<>();
  /**
   * Whether the owning tool is registered, i.e. {@link #createTool()} ran and {@link #unregister()} did not. Guards
   * the callbacks both of them defer to a later EDT event, which may run after the tool has gone away.
   */
  private boolean myRegistered;
  private final TransientModelsProvider myTransientModelsOwner;
  private final Project myProject;
  private final BaseTabbedProjectTool myTool;
  private final GenTraceSettings myTraceSettings;
  private boolean myAutoscroll;

  public GenerationTracerViewToolState(Project project, BaseTabbedProjectTool tool) {
    myProject = project;
    myTool = tool;
    MPSProject mpsProject = ProjectHelper.fromIdeaProject(project);
    myTransientModelsOwner = mpsProject.getComponent(TransientModelsProvider.class);
    myNoTabsComponent = new NoTabsComponent(this);
    myTraceSettings = mpsProject.getComponent(GenerationSettingsProvider.class).getGenerationSettings().getTraceSettings();
  }

  //////
  public boolean hasTracingData() {
    Computable<Boolean> r = () -> {
      // FIXME not quite nice code
      return myTransientModelsOwner.getModules().iterator().hasNext();
    };
    return new ModelAccessHelper(myTransientModelsOwner.getRepository()).runReadAction(r);
  }
  public boolean hasTraceInputData(@Nullable SModelReference modelReference) {
    return modelReference != null && myTransientModelsOwner.getTrace(modelReference) != null;
  }
  public boolean hasTracebackData(@Nullable SModelReference modelReference) {
    return modelReference != null && myTransientModelsOwner.getTrace(modelReference) != null;
  }
  public boolean showTraceInputData(@NotNull SNode node) {
    if (selectExistingView(GenerationTracerView.Kind.TraceForward, node.getReference())) {
      return true;
    }

    TraceNodeUI tracerNode = buildForwardTrace(node);
    if (tracerNode == null) {
      return false;
    }
    showTraceView(GenerationTracerView.Kind.TraceForward, tracerNode, node);
    return true;
  }

  public boolean showTracebackData(SNode node) {
    if (selectExistingView(GenerationTracerView.Kind.TraceBackward, node.getReference())) {
      return true;
    }
    TraceNodeUI tracerNode = buildBackwardTrace(node);
    if (tracerNode == null) {
      return false;
    }
    showTraceView(GenerationTracerView.Kind.TraceBackward, tracerNode, node);
    return true;
  }

  //////////////////

  public void createTool() {
    myRegistered = true;
    StartupManager.getInstance(getProject()).runWhenProjectIsInitialized(() -> {
      if (getProject().isDisposed() || !myRegistered) return;
      showNoTabsComponent();
      setTracingDataIsAvailable(hasTracingData());
      myTool.setAvailable(false);
    });
  }

  public void unregister() {
    myRegistered = false;
    myTracerViews.clear();
    closeAll();
  }

  /**
   * Common tail of every tab's {@code disposeTab()} (see {@link #showNoTabsComponent()} and
   * {@link #showTraceView}): brings the "no tabs" placeholder back, or hides the tool, once the tool window has no
   * tabs left. Relies on {@link BaseTabbedProjectTool}'s own content-manager listener to invoke {@code disposeTab()}
   * in the first place - this class installs none of its own.
   */
  private void onTabClosed(JComponent closedComponent) {
    ContentManager manager = myTool.getContentManagerIfCreated();
    if (manager == null || manager.getContentCount() > 0) {
      return;
    }
    if (closedComponent == myNoTabsComponent) {
      // The user closed the placeholder itself: hide the tool instead of putting the tab back. Note that
      // makeUnavailableLater() runs synchronously here (we are on EDT), so re-adding the placeholder
      // afterwards would flip the tool window available again through the ContentManagerWatcher.
      myTool.makeUnavailableLater();
      return;
    }
    // Deferred on purpose: the manager is in the middle of delivering this very removal event, and
    // showNoTabsComponent() adds content back to it.
    ApplicationManager.getApplication().invokeLater(this::showNoTabsComponent, myProject.getDisposed());
  }

  /**
   * Shows the "no tabs" placeholder tab, unless the tool window already shows something (or is gone altogether).
   * Never creates the tool window's content: this runs from deferred callbacks that may outlive the tool.
   */
  private void showNoTabsComponent() {
    if (!myRegistered) {
      return;
    }
    ContentManager manager = myTool.getContentManagerIfCreated();
    if (manager == null || manager.isDisposed() || manager.getContentCount() > 0) {
      return;
    }
    myTool.addTab(new Tab(myNoTabsComponent, "", null) {
      @Override
      public void disposeTab() {
        onTabClosed(myNoTabsComponent);
      }
    }, false, false);
  }

  public void closeAll() {
    ContentManager manager = myTool.getContentManagerIfCreated();
    if (manager != null && !manager.isDisposed()) {
      manager.removeAllContents(true);
    }
  }

  /**
   * Selects the tab of an already open view for {@code kind} and {@code node}, if there is one.
   * <p>
   * A view whose tab is gone is dropped rather than reused: the content-manager listener that normally maintains
   * {@link #myTracerViews} is installed only once the project is initialized and out of dumb mode, so a tab closed
   * before that leaves a stale entry behind - and reusing it would leave the caller reporting success while
   * selecting nothing.
   *
   * @return whether an open view has been selected
   */
  private boolean selectExistingView(GenerationTracerView.Kind kind, SNodeReference node) {
    GenerationTracerView existingView = findView(kind, node);
    if (existingView == null) {
      return false;
    }
    if (myTool.findContent(existingView.getComponent()) == null) {
      myTracerViews.remove(existingView);
      return false;
    }
    myTool.selectTabSafely(existingView.getComponent());
    myTool.openToolLater(true);
    return true;
  }

  @Nullable
  private GenerationTracerView findView(GenerationTracerView.Kind kind, SNodeReference node) {
    for (GenerationTracerView tracerView : myTracerViews) {
      if (tracerView.isViewFor(kind, node)) {
        return tracerView;
      }
    }
    return null;
  }
  boolean isAutoscroll() {
    return myAutoscroll;
  }
  void autoscrollsChanged(boolean b) {
    if (myAutoscroll != b) {
      myAutoscroll = b;
      for (GenerationTracerView tracerView : myTracerViews) {
        tracerView.setAutoscrollToSource(b);
      }
    }
  }
  void close(GenerationTracerView view) {
    // Idempotent with the content-manager listener, which may not be installed yet, see selectExistingView().
    myTracerViews.remove(view);
    myTool.closeTab(view.getComponent());
  }

  void showTraceView(GenerationTracerView.Kind viewToken, TraceNodeUI tracerNode, SNode node) {
    if (myTool.getContentManager() == null) {
      // Tool window absent or project closing - addTab() would drop the tab. Checked upfront so that no view (and
      // no tree rebuild of it) is built for a tab that cannot be shown.
      return;
    }
    GenerationTracerView tracerView = new GenerationTracerView(this, node.getReference(), viewToken, tracerNode);
    Icon i = Icons.getIcon(tracerView.isForwardTraceView() ? TraceNodeUI.Kind.INPUT : TraceNodeUI.Kind.OUTPUT, node);
    myTool.addTab(new Tab(tracerView.getComponent(), node.getPresentation(), i) {
      @Override
      public void disposeTab() {
        // Identity lookup rather than remove(event.getIndex()): myTracerViews deliberately excludes the "no tabs"
        // tab the ContentManager holds, so the two index spaces are offset, and tabs can be reordered on top.
        myTracerViews.removeIf(view -> view.getComponent() == getComponent());
        onTabClosed(getComponent());
      }
    }, true, true);
    myTracerViews.add(tracerView);
    myTool.closeTab(myNoTabsComponent);
    myTool.openToolLater(true);
  }

  public void setTracingDataIsAvailable(final boolean dataPresent) {
    ApplicationManager.getApplication().invokeLater(() -> myNoTabsComponent.setDataIsAvailable(dataPresent));
  }

  public Project getProject() {
    return myProject; // public for GenerationTracerView
  }

  TraceNodeUI buildForwardTrace(SNode node) {
    final GenerationTrace ngt = myTransientModelsOwner.getTrace(node.getModel().getReference());
    if (ngt == null) {
      return null;
    }
    TraceNodeUI newTrace = new TraceNodeUI("New gen tracer", Icons.COLLECTION, node.getReference());
    // XXX for now, we assume template source models reside in the same repository as the transient/origin node, this in
    // not generally true. Likely shall be project repository (if different than that of transient modules) or the one with deployed languages
    for (TraceNodeUI n : TraceBuilderUI.buildTrace(ngt, node, node.getModel().getRepository(), myTraceSettings)) {
      newTrace.addChild(n);
    }
    return newTrace;
  }
  TraceNodeUI buildBackwardTrace(SNode node) {
    final GenerationTrace ngt = myTransientModelsOwner.getTrace(node.getModel().getReference());
    if (ngt == null) {
      return null;
    }
    TraceNodeUI newTrace = new TraceNodeUI("New gen tracer", Icons.COLLECTION, node.getReference());
    for (TraceNodeUI n : TraceBuilderUI.buildBackTrace(ngt, node, node.getModel().getRepository(), myTraceSettings)) {
      newTrace.addChild(n);
    }
    return newTrace;
  }

  public static final class NoTabsComponent extends JPanel {
    JPanel myLabelsPanel = new JPanel();

    public NoTabsComponent(final GenerationTracerViewToolState tool) {
      setLayout(new BorderLayout());

      JPanel mainPanel = new JPanel(new GridBagLayout());
      myLabelsPanel.setLayout(new BoxLayout(myLabelsPanel, BoxLayout.Y_AXIS));
      GridBagConstraints c = new GridBagConstraints();
      c.anchor = GridBagConstraints.CENTER;
      mainPanel.add(myLabelsPanel, c);
      add(mainPanel, BorderLayout.CENTER);

      ApplicationManager.getApplication().invokeLater(() -> {
        ActionGroup group = ActionUtils.groupFromActions(new CloseAction(tool.myTool));

        ActionToolbar toolbar = ActionManager.getInstance().createActionToolbar(ActionPlaces.TOOLBAR, group, false);
        toolbar.setTargetComponent(this);
        add(toolbar.getComponent(), BorderLayout.WEST);
      });
    }

    public void setDataIsAvailable(boolean state) {
      myLabelsPanel.removeAll();

      String[] strings;
      if (state) {
        strings = new String[]{"Tracing data is available.", "To view trace/traceback data use generated node's popup menu."};
      } else {
        strings = new String[]{"No data available.", "To use the 'generation tracer' generate model with the 'save transient models' option."};
      }

      for (String string : strings) {
        JLabel label = new JLabel(string);
        label.setAlignmentX(Component.CENTER_ALIGNMENT);
        myLabelsPanel.add(label);
      }
    }
  }
}
