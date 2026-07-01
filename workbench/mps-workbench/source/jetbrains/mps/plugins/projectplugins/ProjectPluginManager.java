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
package jetbrains.mps.plugins.projectplugins;

import com.intellij.openapi.Disposable;
import com.intellij.openapi.components.PersistentStateComponent;
import com.intellij.openapi.components.State;
import com.intellij.openapi.components.Storage;
import com.intellij.openapi.components.StoragePathMacros;
import com.intellij.openapi.fileEditor.FileEditorManager;
import com.intellij.openapi.project.Project;
import com.intellij.util.xmlb.annotations.MapAnnotation;
import jetbrains.mps.ide.editor.MPSFileNodeEditor;
import jetbrains.mps.ide.editor.NodeEditor;
import jetbrains.mps.ide.editor.tabs.TabbedEditor;
import jetbrains.mps.ide.project.ProjectHelper;
import jetbrains.mps.ide.tools.BaseTool;
import jetbrains.mps.logging.Logger;
import jetbrains.mps.nodeEditor.highlighter.EditorsHelper;
import jetbrains.mps.plugins.BasePluginManager;
import jetbrains.mps.plugins.PluginContributor;
import jetbrains.mps.plugins.prefs.BaseProjectPrefsComponent;
import jetbrains.mps.plugins.projectplugins.BaseProjectPlugin.PluginState;
import jetbrains.mps.plugins.projectplugins.ProjectPluginManager.PluginsState;
import jetbrains.mps.plugins.relations.RelationDescriptor;
import jetbrains.mps.project.MPSProject;
import jetbrains.mps.project.ProjectLifecycleListener;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.model.SNode;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Is a {@link BasePluginManager} which is responsible for loading project plugins {@link BaseProjectPlugin};
 * Starts listening to the reload events of {@link jetbrains.mps.plugins.PluginReloadingListener} on {@link #runStartupActivity()}.
 * The plugin creation/disposal is triggered from the superclass (#afterPluginsCreated).
 */
@State(
    name = "ProjectPluginManager",
    storages = @Storage(StoragePathMacros.WORKSPACE_FILE)
)
public final class ProjectPluginManager extends BasePluginManager<BaseProjectPlugin> implements PersistentStateComponent<PluginsState>, Disposable {

  public static class Activity implements ProjectLifecycleListener {
    @Override
    public void projectReady(@NotNull MPSProject project, @NotNull Context context) {
      ProjectPluginManager.getInstance(project.getProject()).runStartupActivity();
    }

    @Override
    public void projectDiscarded(@NotNull MPSProject project, @NotNull Context context) {
      ProjectPluginManager.getInstance(project.getProject()).runShutDownActivity();
    }
  }

  private static final Logger LOG = Logger.getLogger(ProjectPluginManager.class);

  private PluginsState myState = new PluginsState();
  private final Project myProject;
  private final jetbrains.mps.project.Project myMpsProject;

  public static ProjectPluginManager getInstance(Project ideaProject) {
    // FTR in 2023.3, we changed tool<> template to use this method instead of project.getComponent().
    // now, in 2026.1, we changed component to project service
    return ideaProject.getService(ProjectPluginManager.class);
  }

  public ProjectPluginManager(@NotNull Project project) {
    myProject = project;
    myMpsProject = ProjectHelper.fromIdeaProject(project);
  }

  @Override
  public void dispose() {
  }

  /*package*/ void runStartupActivity() {
    LOG.debug("Running startup activity");
    register();
    LOG.debug("Finished running startup activity");
  }

  /*package*/ void runShutDownActivity() {
    LOG.debug("Running shutdown activity");
    unregister();
    LOG.debug("Finished running shutdown activity");
  }

  @Nullable
  public <T extends BaseTool> T getTool(Class<T> toolClass) {
    synchronized (myPluginsLock) {
      for (BaseProjectPlugin plugin : getPlugins()) {
        List<BaseTool> tools = plugin.getTools();
        for (BaseTool tool : tools) {
          if (toolClass.isInstance(tool)) {
            return toolClass.cast(tool);
          }
        }
      }
      return null;
    }
  }

  /**
   * Looks up a registered {@link BaseTool} by its tool window id. Invoked by
   * {@link jetbrains.mps.plugins.tool.MpsToolWindowFactory#createToolWindowContent(Project,
   * com.intellij.openapi.wm.ToolWindow)} on EDT, when the platform builds the content of an MPS tool window
   * declared via the {@code com.intellij.toolWindow} EP — the lookup matches the window's id against
   * {@link BaseTool#getId()}.
   *
   * @param id the tool window id, see {@link BaseTool#getId()}
   * @return the matching tool, or {@code null} if no tool with such id is registered
   */
  @Nullable
  public BaseTool getTool(String id) {
    synchronized (myPluginsLock) {
      for (BaseProjectPlugin plugin : getPlugins()) {
        for (BaseTool tool : plugin.getTools()) {
          if (id.equals(tool.getId())) {
            return tool;
          }
        }
      }
      return null;
    }
  }

  public <T extends BaseProjectPrefsComponent> T getPrefsComponent(Class<T> componentClass) {
    synchronized (myPluginsLock) {
      for (BaseProjectPlugin plugin : getPlugins()) {
        List<BaseProjectPrefsComponent> components = plugin.getPrefsComponents();
        for (BaseProjectPrefsComponent component : components) {
          if (componentClass.isInstance(component)) {
            return componentClass.cast(component);
          }
        }
      }
      return null;
    }
  }

  public List<RelationDescriptor> getTabDescriptors() {
    synchronized (myPluginsLock) {
      List<RelationDescriptor> result = new ArrayList<>();
      for (BaseProjectPlugin plugin : getPlugins()) {
        result.addAll(plugin.getTabDescriptors());
      }
      return result;
    }
  }

  public static List<RelationDescriptor> getApplicableTabs(Project p, SNode node) {
    List<RelationDescriptor> result = new ArrayList<>();
    final ProjectPluginManager ppm = ProjectPluginManager.getInstance(p);
    List<RelationDescriptor> tabs = ppm == null ? Collections.emptyList() : ppm.getTabDescriptors();
    for (RelationDescriptor tab : tabs) {
      try {
        if (tab.isApplicable(node)) {
          result.add(tab);
        }
      } catch (Throwable t) {
        LOG.error("Exception in extension code: ", t);
      }
    }
    return result;
  }

  //----------------RELOAD STUFF---------------------
  @Override
  protected BaseProjectPlugin createPlugin(PluginContributor contributor) {
    BaseProjectPlugin plugin = contributor.createProjectPlugin();
    if (plugin == null) {
      return null;
    }

    plugin.init(myProject);

    return plugin;
  }

  @Override
  protected void afterPluginsCreated(List<BaseProjectPlugin> plugins) {
    if (!myProject.isDisposed()) {
      spreadState(plugins);
      for (BaseProjectPlugin plugin : plugins) {
        if (!plugin.getTabDescriptors().isEmpty()) {
          recreateTabbedEditors();
          break;
        }
      }
    }
  }

  @Override
  protected void beforePluginsDisposed(List<BaseProjectPlugin> plugins) {
    if (!myProject.isDisposed()) {
      collectState(plugins);
    }
  }

  @Override
  protected void disposePlugin(BaseProjectPlugin plugin) {
    plugin.dispose();
  }

  @Override
  public boolean isDisposed() {
    return myMpsProject.isDisposed();
  }

  //----------------STATE STUFF------------------------

  @Override
  public PluginsState getState() {
    collectState(getPlugins());
    return myState;
  }

  @Override
  public void loadState(@NotNull PluginsState state) {
    myState = state;
  }

  protected void collectState(List<BaseProjectPlugin> plugins) {
//    myState.pluginsState.clear();
    for (BaseProjectPlugin plugin : plugins) {
      PluginState state = plugin.getState();
      // XXX can make BaseProjectPlugin.getState() return null if there's nothing to store,
      //     however, null return value sort of PersistentStateComponent.getState() has special
      //     meaning (use previous). Although it's just this PPM that asks getState() and
      //     we could establish own contract, I decided not to - well, unless we replace
      //     IDEA's API with own (identical), where we can have this contract explicit.
      //     That's why here's a !myComponentsState.isEmpty check, not to write blank xml elements
      //     into workspace.xml for each MPS Project Plugin.
      if (state != null && !state.myComponentsState.isEmpty()) {
        myState.pluginsState.put(plugin.getClass().getName(), state);
      } else {
        myState.pluginsState.remove(plugin.getClass().getName());
      }
    }
  }

  protected void spreadState(List<BaseProjectPlugin> plugins) {
    for (BaseProjectPlugin plugin : plugins) {
      PluginState state = myState.pluginsState.get(plugin.getClass().getName());
      if (state != null) {
        plugin.loadState(state);
      }
    }
  }

  public static class PluginsState {
    @MapAnnotation(surroundWithTag = false, entryTagName = "option", keyAttributeName = "name")
    public final Map<String, PluginState> pluginsState = new HashMap<>();
  }

  //--------------ADDITIONAL----------------

  private void recreateTabbedEditors() {
    myMpsProject.getModelAccess().runReadInEDT(() -> {
      for (MPSFileNodeEditor editor : EditorsHelper.getAllEditors(FileEditorManager.getInstance(myProject))) {
        if (!editor.isValid()) {
          continue;
        }

        if (editor.getNodeEditor() instanceof TabbedEditor) {
          //this is for recreating tabbed editors on reload to renew tab classes
          editor.recreateEditorOnTabChange();
        } else if (editor.getNodeEditor() instanceof NodeEditor) {
          //and this is to make non-tabbed editors tabbed if they need to
          for (RelationDescriptor tab : getTabDescriptors()) {
            SNode node = editor.getNodeEditor().getCurrentlyEditedNode().resolve(myMpsProject.getRepository());
            if (tab.isApplicable(node)) {
              editor.recreateEditorOnTabChange();
              break;
            }
          }
        }
      }
    });
  }

  @Override
  public String toString() {
    return "ProjectPluginManager " + myMpsProject;
  }
}
