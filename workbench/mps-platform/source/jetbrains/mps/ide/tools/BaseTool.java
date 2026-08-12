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
package jetbrains.mps.ide.tools;

import com.intellij.ide.actions.ActivateToolWindowAction;
import com.intellij.openapi.actionSystem.AnAction;
import com.intellij.openapi.actionSystem.KeyboardShortcut;
import com.intellij.openapi.application.ApplicationManager;
import com.intellij.openapi.keymap.Keymap;
import com.intellij.openapi.keymap.KeymapManager;
import com.intellij.openapi.project.DumbAware;
import com.intellij.openapi.project.DumbService;
import com.intellij.openapi.project.Project;
import com.intellij.openapi.project.ProjectManager;
import com.intellij.openapi.wm.RegisterToolWindowTask;
import com.intellij.openapi.wm.ToolWindow;
import com.intellij.openapi.wm.ToolWindowAnchor;
import com.intellij.openapi.wm.ToolWindowFactory;
import com.intellij.openapi.wm.ToolWindowManager;
import com.intellij.ui.content.Content;
import com.intellij.ui.content.ContentManager;
import jetbrains.mps.ide.ThreadUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import javax.swing.Icon;
import javax.swing.JComponent;
import javax.swing.KeyStroke;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

public abstract class BaseTool {

  private final Project myProject;
  private final String myId;
  private final Icon myIcon;
  private final ToolWindowAnchor myAnchor;
  private final boolean mySideTool;
  private final boolean myCanCloseContent;
  private final Map<String, KeyStroke> myShortcutsByKeymap;
  private boolean myIsRegistered;
  private boolean myIsDisposed = false;
  /** True when {@link #ensureToolWindowRegistered()} registered the platform window itself (no EP entry). */
  private boolean myFallbackToolWindowRegistered = false;

  private JComponent myComponent = null;

  protected static Map<String, KeyStroke> shortcutsFromNumber(int number) {
    if (number == -1) {
      return Collections.emptyMap();
    }
    Map<String, KeyStroke> result = new HashMap<>(6); // avoiding rehash & decrease default capacity
    result.put(KeymapManager.DEFAULT_IDEA_KEYMAP, KeyStroke.getKeyStroke("alt " + number));
    result.put(KeymapManager.MAC_OS_X_KEYMAP, KeyStroke.getKeyStroke("meta " + number));
    result.put(KeymapManager.MAC_OS_X_10_5_PLUS_KEYMAP, KeyStroke.getKeyStroke("meta " + number));
    return result;
  }

  public BaseTool(Project project, String id, Map<String, KeyStroke> shortcutsByKeymap, Icon icon, ToolWindowAnchor anchor, boolean sideTool,
                  boolean canCloseContent) {
    myShortcutsByKeymap = shortcutsByKeymap;
    myId = id;
    myIcon = icon;
    myProject = project;
    myAnchor = anchor == null ? ToolWindowAnchor.BOTTOM : anchor;
    mySideTool = sideTool;
    myCanCloseContent = canCloseContent;
    myIsRegistered = false;
  }

  public String getId() {
    return myId;
  }

  public Icon getIcon() {
    return myIcon;
  }

  private boolean isRegistered() {
    return myIsRegistered;
  }

  public boolean toolIsOpened() {
    ThreadUtils.assertEDT();
    ToolWindow toolWindow = getToolWindow();
    return toolWindow != null && toolWindow.isVisible();
  }

  /**
   * Runs {@link jetbrains.mps.ide.tools.BaseTool#openTool} later in EDT event pool.
   *
   * @param setActive determine if tool window must be just opened or additionally became active and attract focus
   */
  public void openToolLater(final boolean setActive) {
    ApplicationManager.getApplication().invokeLater(() -> openTool(setActive));
  }

  /**
   * Opens the tool's window, shows tool if invisible at the moment.
   * Need to be called in EDT.
   *
   * @param setActive determine if tool window must be just opened or additionally became active and attract focus
   */
  public void openTool(boolean setActive) {
    ThreadUtils.assertEDT();
    ToolWindow window = getToolWindow();
    if (window == null) {
      return;
    }
    if (!window.isAvailable()) {
      makeAvailable();
    }
    if (!window.isVisible()) {
      window.show(null);
    }
    if (setActive) {
      window.activate(null);
    }
  }

  /**
   * Minimizes the window, doesn't remove tool from panel
   */
  public void close() {
    ThreadUtils.assertEDT();
    if (isAvailable() && toolIsOpened()) {
      getToolWindow().hide(null);
    }
  }

  /**
   * @return whether the tool is visible by user (in the panel)
   */
  public boolean isAvailable() {
    ThreadUtils.assertEDT();
    ToolWindow toolWindow = getToolWindow();
    return toolWindow != null && toolWindow.isAvailable();
  }

  public void setAvailable(boolean state) {
    ThreadUtils.assertEDT();
    if (state) {
      makeAvailable();
    } else {
      makeUnavailable();
    }
  }

  /**
   * Runs {@link jetbrains.mps.ide.tools.BaseTool#makeAvailable} later in EDT event pool.
   */
  public void makeAvailableLater() {
    ThreadUtils.runInUIThreadNoWait(this::makeAvailable);
  }

  /**
   * If the tool is visible, does nothing, else show the tool in panel in minimized state
   */
  public void makeAvailable() {
    ThreadUtils.assertEDT();
    ToolWindow toolWindow = getToolWindow();
    if (toolWindow != null && !toolWindow.isAvailable()) {
      toolWindow.setAvailable(true, null);
    }
  }

  /**
   * Runs {@link jetbrains.mps.ide.tools.BaseTool#makeUnavailable} later in EDT event pool.
   */
  public void makeUnavailableLater() {
    ThreadUtils.runInUIThreadNoWait(this::makeUnavailable);
  }

  /**
   * Removes the tool from the panel
   */
  public void makeUnavailable() {
    ThreadUtils.assertEDT();
    ToolWindow toolWindow = getToolWindow();
    if (toolWindow != null && toolWindow.isAvailable()) {
      toolWindow.setAvailable(false, null);
    }
  }

  public ToolWindow getToolWindow() {
    ThreadUtils.assertEDT();
    // The tool window is declared via the com.intellij.toolWindow EP and owned by the platform,
    // so we just read the pre-existing window instead of creating it imperatively.
    final ToolWindowManager toolWindowManager = ToolWindowManager.getInstance(myProject);
    return toolWindowManager == null ? null : toolWindowManager.getToolWindow(myId);
  }

  public void registerLater() {
    ApplicationManager.getApplication().invokeLater(() -> {
      final Project project = getProject();
      if (project.isDisposed() || this.myIsDisposed) {
        return;
      }
      DumbService.getInstance(project).runWhenSmart(this::register);
    });
  }

  /**
   * Marks this tool registered and installs shortcuts immediately, then ensures the platform tool window and
   * initial availability once the tool-window set is ready.
   * <p>
   * On project restore at startup, {@code runWhenSmart} can run before the platform finishes creating EP tool
   * windows and the default tool-window pane. Calling {@link ToolWindowManager#registerToolWindow} in that window
   * throws {@code IllegalStateException}. When the window is not present yet we therefore complete registration via
   * {@link ToolWindowManager#invokeLater(Runnable)}, which runs after {@code ToolWindowSetInitializer} (pane + EP
   * registration). If the window already exists, completion is synchronous for late callers such as Usages.
   */
  public final void register() {
    if (myProject.isDisposed() || myIsDisposed) {
      return;
    }
    if (isRegistered()) {
      return;
    }
    ThreadUtils.assertEDT();

    // Resolve TWM before committing registration state: a null manager must leave the tool unregistered so a
    // later register() can still succeed once the service is available.
    ToolWindowManager toolWindowManager = ToolWindowManager.getInstance(myProject);
    if (toolWindowManager == null) {
      return;
    }

    myIsRegistered = true;
    installShortcuts();

    // The tool window itself is owned by the platform (declared via the com.intellij.toolWindow EP); we drive
    // only its initial availability. setAvailable(true) lazily triggers MpsToolWindowFactory -> attachTo(), which
    // builds the tool's UI; on-demand tools stay hidden until openTool()/setAvailable(true) is invoked elsewhere.
    // The helpers below cover the non-EP and post-reload edge cases; see their Javadoc. Must not run until the
    // default tool-window pane exists (see method Javadoc).
    Runnable completeRegistration = () -> {
      if (myProject.isDisposed() || myIsDisposed || !isRegistered()) {
        return;
      }
      ensureToolWindowRegistered();
      reattachContentIfReloaded();
      setAvailable(isInitiallyAvailable());
    };

    if (getToolWindow() != null) {
      completeRegistration.run();
    } else {
      toolWindowManager.invokeLater(completeRegistration);
    }
  }

  /**
   * Re-adds this tool's content to an already-existing, platform-owned (EP-declared) tool window after a plugin
   * reload. The platform builds a tool window's content exactly once and then discards the content factory, so
   * once a tool has been shown, {@link #unregister()}'s content removal leaves the persistent window empty and
   * {@code MpsToolWindowFactory} will not fire again for it — the window would stay blank for the rest of the
   * session. We rebuild the content ourselves via {@link #rebuildContent()} (not {@link #attachTo}, to avoid
   * installing a duplicate content watcher on the surviving window).
   * <p>
   * No-op in the normal cases: the fallback window (no EP entry) is re-created fresh by {@link #unregister()} so
   * it is skipped here; and before a tool's first show its content manager does not exist yet
   * ({@link ToolWindow#getContentManagerIfCreated()} is {@code null}), so the factory still builds the content
   * lazily as designed.
   */
  private void reattachContentIfReloaded() {
    if (myFallbackToolWindowRegistered) {
      return;
    }
    ToolWindow toolWindow = getToolWindow();
    if (toolWindow == null) {
      return;
    }
    ContentManager contentManager = toolWindow.getContentManagerIfCreated();
    if (contentManager != null && contentManager.isEmpty()) {
      rebuildContent();
    }
  }

  /**
   * Ensures the platform tool window backing this tool exists before {@link #setAvailable(boolean)} drives it.
   * Must only run after the tool-window set is initialized (default pane ready); {@link #register()} gates that via
   * {@link ToolWindowManager#invokeLater(Runnable)} when needed.
   * <p>
   * Bundled MPS tools declare the window through the {@code com.intellij.toolWindow} extension point, so it is
   * already present here and this is a no-op. Third-party / standalone plugins hand-write their {@code plugin.xml}
   * and are not regenerated by MPS; after the MPS-39764 migration removed imperative registration from
   * {@link #register()}, such a plugin whose descriptor lacks the EP entry would get no tool window at all. For
   * that case we register the window programmatically, backed by a factory that reconnects it to this
   * {@link BaseTool} exactly the way {@code jetbrains.mps.plugins.tool.MpsToolWindowFactory} does for the EP path
   * (kept local because that class lives in mps-workbench, which this module must not depend on).
   */
  private void ensureToolWindowRegistered() {
    if (getToolWindow() != null) {
      // Declared via the com.intellij.toolWindow EP (all bundled MPS tools) -> nothing to do.
      return;
    }
    ToolWindowManager toolWindowManager = ToolWindowManager.getInstance(myProject);
    if (toolWindowManager == null) {
      return;
    }
    toolWindowManager.registerToolWindow(new RegisterToolWindowTask(myId, myAnchor, null, mySideTool, myCanCloseContent,
        true, false, new ToolWindowContentFactory(), myIcon, null));
    myFallbackToolWindowRegistered = true;
  }

  /**
   * Content factory for a tool window registered programmatically by {@link #ensureToolWindowRegistered()}. Mirrors
   * {@code jetbrains.mps.plugins.tool.MpsToolWindowFactory}: the platform owns the window's lifecycle; this only
   * connects the freshly built window to its owning {@link BaseTool}. {@link #shouldBeAvailable(Project)} returns
   * {@code false} so the stripe stays hidden until {@link #register()} drives {@link #setAvailable(boolean)}.
   */
  private final class ToolWindowContentFactory implements ToolWindowFactory, DumbAware {
    @Override
    public boolean shouldBeAvailable(@NotNull Project project) {
      return false;
    }

    @Override
    public void createToolWindowContent(@NotNull Project project, @NotNull ToolWindow toolWindow) {
      attachTo(toolWindow);
    }
  }

  /**
   * Installs the tool window activation shortcuts (Alt+number, ...) into the relevant keymaps.
   * Invoked once when the owning project plugin registers the tool.
   */
  private void installShortcuts() {
    if (myShortcutsByKeymap == null) {
      return;
    }
    String actionId = ActivateToolWindowAction.Manager.getActionIdForToolWindow(myId);

    List<Keymap> keymaps = new ArrayList<>(myShortcutsByKeymap.size());
    for (Entry<String, KeyStroke> keymapItem : myShortcutsByKeymap.entrySet()) {
      Keymap keymap = KeymapManager.getInstance().getKeymap(keymapItem.getKey());
      if (keymap != null) {
        keymaps.add(keymap);
      }
    }
    // keymaps topsort here is needed because we need to remove inherited shortcuts if they are overwritten
    keymaps.sort((o1, o2) -> {
      for (Keymap parent = o1.getParent(); parent != null; parent = parent.getParent()) {
        if (parent.equals(o2)) {
          return 1;
        }
      }
      for (Keymap parent = o2.getParent(); parent != null; parent = parent.getParent()) {
        if (parent.equals(o1)) {
          return -1;
        }
      }
      return 0;
    });

    for (Keymap keymap : keymaps) {
      KeyboardShortcut defShortcut = new KeyboardShortcut(myShortcutsByKeymap.get(keymap.getName()), null);
      keymap.removeAllActionShortcuts(actionId);
      keymap.addShortcut(actionId, defShortcut);
    }
  }

  /**
   * Connects the EP-declared platform tool window to this tool: installs the content watcher, performs
   * implementation-specific registration ({@link #doRegister()}) and attaches the tool's component as content.
   * Invoked by {@code jetbrains.mps.plugins.tool.MpsToolWindowFactory} when the platform builds the window content.
   */
  public void attachTo(@NotNull ToolWindow toolWindow) {
    ThreadUtils.assertEDT();

    rebuildContent();

    // The content watcher must be installed only AFTER the content has been added.
    // ContentManagerWatcher.watchContentManager() eagerly calls toolWindow.setAvailable(!contentManager.isEmpty());
    // installing it on a still-empty content manager - which is exactly the state while the platform builds the
    // window during its very first show - would immediately flip the window unavailable in the middle of that show
    // (setAvailable(false) -> toolWindowUnavailable -> hide). The window would then stay closed until the tool
    // button is clicked a second time. Adding the content first guarantees the watcher sees a non-empty manager.
    // watchContentManager() adds a listener unconditionally, so it must run exactly once per window: attachTo is
    // the single install site (invoked once per ToolWindow by the platform's content factory); reload re-adds
    // content through rebuildContent() alone, reusing the persistent window's existing watcher.
    toolWindow.installWatcher(toolWindow.getContentManager());
  }

  /**
   * (Re)builds this tool's component and adds it as the tool window's content, WITHOUT installing the
   * {@link com.intellij.ide.impl.ContentManagerWatcher}. {@link #attachTo} installs the watcher once per window;
   * on a plugin reload the tool window (and its watcher) persist, so only the content has to be rebuilt.
   */
  private void rebuildContent() {
    doRegister();

    if (myComponent == null) {
      myComponent = getComponent();
    }
    if (myComponent != null) {
      addContent(myComponent, "", null, false);
    }
  }

  /**
   * Override this method to add implementation specific registration.
   * Called in {@link jetbrains.mps.ide.tools.BaseTool#register} before {@link jetbrains.mps.ide.tools.BaseTool#getComponent()}.
   */
  protected void doRegister() {

  }

  public int getCurrentTabIndex() {
    final ContentManager contentManager = getContentManager();
    final Content selectedContent = contentManager.getSelectedContent();
    return selectedContent == null ? -1 : contentManager.getIndexOfContent(selectedContent);
  }

  protected AnAction createCloseAction() {
    return new CloseAction(this);
  }

  protected boolean isInitiallyAvailable() {
    return false;
  }


  /**
   * Unregisters the tool and removes its shortcuts in case of reload.
   * Need to be called in EDT.
   * <p>
   * Shortcuts are global (registered by action id), so if this project is closing while other projects are still
   * open, the shortcuts must not be removed - a BaseTool instance still exists for those projects. On a reload
   * (unregister on an open project) we do remove them, because {@link #register()} will re-install the (possibly
   * changed) shortcuts on load.
   */
  public final void unregister() {
    if (!isRegistered()) {
      return;
    }
    ThreadUtils.assertEDT();

    doUnregister();

    // see Javadoc for if condition explanation
    final List<Project> openedProjects = Arrays.asList(ProjectManager.getInstance().getOpenProjects());
    if (myShortcutsByKeymap != null && (openedProjects.contains(getProject()) || openedProjects.isEmpty())) {
      for (Entry<String, KeyStroke> keymapItem : myShortcutsByKeymap.entrySet()) {
        Keymap keymap = KeymapManager.getInstance().getKeymap(keymapItem.getKey());
        if (keymap != null) {
          keymap.removeAllActionShortcuts(ActivateToolWindowAction.Manager.getActionIdForToolWindow(myId));
        }
      }
    }

    myIsRegistered = false;
    myComponent = null;

    if (myProject.isDisposed()) {
      return;
    }
    final ToolWindowManager toolWindowManager = ToolWindowManager.getInstance(myProject);
    if (toolWindowManager == null) {
      return;
    }
    if (myFallbackToolWindowRegistered) {
      // This window has no com.intellij.toolWindow EP entry; we registered it programmatically in
      // ensureToolWindowRegistered(). The platform consumes a tool window's content factory exactly once, so
      // merely detaching the content would leave a re-registered window permanently empty on the next
      // register() (e.g. after a plugin reload). Unregister the whole window instead, so register() recreates
      // it with a fresh factory.
      myFallbackToolWindowRegistered = false;
      toolWindowManager.unregisterToolWindow(myId);
      return;
    }
    // The platform owns the EP-declared tool window, so we do not unregister it; we only detach our content.
    ToolWindow toolWindow = toolWindowManager.getToolWindow(myId);
    if (toolWindow != null) {
      ContentManager contentManager = toolWindow.getContentManager();
      if (!contentManager.isDisposed()) {
        contentManager.removeAllContents(true);
      }
    }
  }

  /**
   * Override this method to add implementation specific unregistration.
   * Called in {@link jetbrains.mps.ide.tools.BaseTool#unregister} before default unregister process.
   */
  protected void doUnregister() {

  }

  // TODO: make method abstract - fix jetbrains.mps.ide.findusages.view.UsagesViewTool
  public JComponent getComponent() {
    return null;
  }

  protected Content addContent(JComponent component, @NotNull String name, Icon icon, boolean isLockable) {
    ContentManager contentManager = getContentManager();
    Content content = contentManager.getFactory().createContent(component, name, isLockable);
    if (icon != null) {
      content.putUserData(ToolWindow.SHOW_CONTENT_ICON, Boolean.TRUE);
      content.setIcon(icon);
    } else {
      content.setIcon(myIcon);
    }
    contentManager.addContent(content);
    return content;
  }

  public void setSelectedComponent(JComponent component) {
    ContentManager manager = getContentManager();
    Content content = manager.getContent(component);
    manager.setSelectedContent(content);
  }

  @Nullable
  protected ContentManager getContentManager() {
    if (myProject.isDisposed()) {
      return null;
    }
    ToolWindowManager wm = ToolWindowManager.getInstance(myProject);
    ToolWindow tw = wm == null ? null : wm.getToolWindow(myId);
    return tw == null ? null : tw.getContentManager();
  }

  @Override
  public String toString() {
    return String.format("Tool %s (%s)", getId(), getClass().getName());
  }

  protected Project getProject() {
    return myProject;
  }

  public void init(Project project) {
  }

  public boolean isDisposed() {
    return myIsDisposed;
  }

  public void dispose() {
    this.myIsDisposed = true;
    // FIXME what's the contract for this method? Seems that it's only BaseProjectPlugin that cares to invoke it.
    //       There's BaseProjectTool subclass, with disposeComponent() that doesn't invoke dispose(), is it right?
    //       No idea where to put general dispose code in subclasses like UsagesViewTool - shall I use disposeComponent() or dispose()?
    //       E.g. UsagesViewTool restores some UI stuff but doesn't add tabs until made visible. If IDE is closed w/o view being displayed
    //       there's no dispose for UI stuff, allocated during state restore. dispose() would be very helpful at this point.
  }
}
