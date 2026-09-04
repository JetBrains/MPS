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
package jetbrains.mps.ide.tools;

import com.intellij.openapi.project.Project;
import com.intellij.openapi.wm.ToolWindowAnchor;
import com.intellij.ui.content.Content;
import com.intellij.ui.content.ContentManager;
import com.intellij.ui.content.ContentManagerEvent;
import com.intellij.ui.content.ContentManagerListener;
import jetbrains.mps.logging.Logger;
import jetbrains.mps.plugins.tool.IComponentDisposer;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import javax.swing.Icon;
import javax.swing.JComponent;
import javax.swing.KeyStroke;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public abstract class BaseTabbedProjectTool extends BaseTool {

  private static final Logger LOG = Logger.getLogger(BaseTabbedProjectTool.class);

  private final List<IDisposableTab> myTabList = new ArrayList<>();
  /**
   * The {@link ContentManager} instance {@link #addContentRemovedListenerIfNeeded} last installed
   * {@link #myContentRemovedListener} on, or {@code null} if none. Tracking the instance (rather than a plain
   * "did we ever install it" flag) matters for three cases a boolean cannot express: (1) if resolving the manager
   * throws (e.g. a nested lazy-content-creation failure) before the listener is installed, a flag set eagerly
   * would wrongly claim "already installed" forever; (2) a plugin reload or unregister/register cycle can
   * dispose the old manager and create a new instance, which needs its own listener; (3) {@link #onUnregistered()}
   * has to remove the listener from exactly the manager it was added to.
   */
  private ContentManager myListenerInstalledOn;
  /** The listener installed on {@link #myListenerInstalledOn}, kept so that it can be removed again. */
  private ContentManagerListener myContentRemovedListener;

  protected BaseTabbedProjectTool(Project project, String id, Map<String, KeyStroke> shortcutsByKeymap, Icon icon,
                                  ToolWindowAnchor anchor, boolean canCloseContent) {
    super(project, id, shortcutsByKeymap, icon, anchor, false, canCloseContent);
  }

  /**
   * Changing the visibility, since the generated subclasses need to call this method,
   * yet the actual TabbedTool concept instances are not subclasses of {@link BaseTabbedProjectTool}
   * @return Delegates to the BaseTool class
   */
  @Override
  public @Nullable ContentManager getContentManager() {
    return super.getContentManager();
  }

  /**
   * Changing the visibility, for the same reason as {@link #getContentManager()} above: generated subclasses
   * (declared as node&lt;TabbedToolDeclaration&gt; instances) cannot see protected superclass members.
   * @return Delegates to the BaseTool class
   */
  @Override
  public @Nullable ContentManager getContentManagerIfCreated() {
    return super.getContentManagerIfCreated();
  }

  /**
   * Non-creating tab lookup: never forces a never-shown tool window to build its content.
   * @return the {@link Content} backing {@code tab}, or {@code null} if there is no content manager yet or no
   * such tab.
   */
  @Nullable
  public Content findContent(@Nullable JComponent tab) {
    if (tab == null) {
      return null;
    }
    ContentManager contentManager = getContentManagerIfCreated();
    return contentManager == null ? null : contentManager.getContent(tab);
  }

  /**
   * @return whether {@code tab} is pinned; {@code false} (not an exception) when there is no content manager
   * yet or no matching tab.
   */
  public boolean isTabPinned(@Nullable JComponent tab) {
    Content content = findContent(tab);
    return content != null && content.isPinned();
  }

  /**
   * Selects {@code tab} if it currently has backing {@link Content}; a no-op (never a
   * {@code setSelectedContent(null)} crash) when there is no content manager yet or no matching tab.
   */
  public void selectTabSafely(@Nullable JComponent tab) {
    ContentManager contentManager = getContentManagerIfCreated();
    Content content = findContent(tab);
    if (contentManager == null || content == null) {
      return;
    }
    contentManager.setSelectedContent(content);
  }

  public void closeTab(JComponent component) {
    ContentManager contentManager = getContentManager();
    if (contentManager == null) {
      return;
    }
    Content content = contentManager.getContent(component);
    if (content != null) {
      contentManager.removeContent(content, true);
    }
  }

  public <T extends JComponent> void addTab(final T tabComponent, @NotNull String title, Icon icon,
      final IComponentDisposer<T> tabDisposer, boolean openTool) {
    Tab tab;
    if (tabDisposer == null) {
      tab = new Tab(tabComponent, title, icon);
    } else {
      tab = new Tab(tabComponent, title, icon) {
        @Override
        public void disposeTab() {
          tabDisposer.disposeComponent(tabComponent);
        }
      };
    }
    addTab(tab, false, openTool);
  }

  /**
   * Resolving the content manager is the FIRST statement, and deliberately so: for a tool that has never been
   * shown before, {@link #getContentManager()} runs the platform's lazy content-creation path to completion
   * ({@code attachTo -> rebuildContent -> doRegister}), and for tabbed tools {@code doRegister} typically
   * populates an initial set of tabs (e.g. the Console's {@code initTabs()}) by calling back into this very
   * method. That nested call must fully finish - including its own listener install and bookkeeping - before
   * this (outer) call touches {@code myTabList} or the listener state; resolving the manager any later (e.g.
   * only when installing the listener) would let the two calls interleave. {@code cm} is threaded through the
   * rest of the method instead of re-resolving it, so every step below observes the same instance the nested
   * call (if any) already finished with.
   */
  public void addTab(final Tab tab, boolean forceNewTab, boolean openTool) {
    ContentManager cm = getContentManager();
    if (cm == null) {
      // Tool window absent (e.g. project closing) or project disposed: never partially mutate myTabList/content.
      LOG.warning("addTab(\"" + tab.getTitle() + "\") ignored: no content manager for tool " + getId());
      return;
    }
    addContentRemovedListenerIfNeeded(cm);
    if (!forceNewTab) {
      closeCurrentTabIfUnpinned(cm);
    }
    addContent(cm, tab.getComponent(), tab.getTitle(), tab.getIcon(), true);
    setSelectedComponent(cm, tab.getComponent());
    myTabList.add(tab);
    if (openTool) {
      openToolLater(true);
    }
  }

  /**
   * Non-creating identity lookup into the live tab list, by the same component identity {@link #addTab} indexes
   * tabs by. Shared by {@link #addContentRemovedListenerIfNeeded}'s listener and by subclasses that need to
   * resolve their own per-tab payload (see {@link Tab#getPayload()}) without keeping a second list in lockstep
   * with this one.
   * @return the tab whose {@link IDisposableTab#getComponent()} is identical to {@code component}, or
   * {@code null} if there is none.
   */
  @Nullable
  protected final IDisposableTab findTab(@Nullable JComponent component) {
    if (component == null) {
      return null;
    }
    for (IDisposableTab candidate : myTabList) {
      if (candidate.getComponent() == component) {
        return candidate;
      }
    }
    return null;
  }

  @SuppressWarnings("unused")
  public JComponent getSelectedTab() {
    ContentManager contentManager = getContentManager();
    if (contentManager == null) {
      return null;
    }
    Content selectedContent = contentManager.getSelectedContent();
    if (selectedContent == null) {
      return null;
    } else {
      return selectedContent.getComponent();
    }
  }

  /**
   * Indicate tab is of interest and shall not be closed/replaced with a new one
   * Does nothing if tab is <code>null</code> or not found
   */
  @SuppressWarnings("unused")
  public <T extends JComponent> void pinTab(@Nullable T tab) {
    // findContent() honours the @Nullable contract above: ContentManager.getContent(JComponent) is
    // @NotNull-parametered and NPEs inside SwingUtilities.isDescendingFrom for a null tab.
    Content content = findContent(tab);
    if (content != null) {
      content.setPinned(true);
    }
  }

  /**
   * Indicates tab could be replaced with a new one.
   * Does nothing if tab is <code>null</code> or not found
   */
  @SuppressWarnings("unused")
  public <T extends JComponent> void unpinTab(@Nullable T tab) {
    // See pinTab() above for why this goes through findContent().
    Content content = findContent(tab);
    if (content != null) {
      content.setPinned(false);
    }
  }

  private void closeCurrentTabIfUnpinned(@NotNull ContentManager contentManager) {
    Content selectedContent = contentManager.getSelectedContent();
    if (selectedContent == null) {
      return;
    }
    if (!(selectedContent.isPinned())) {
      contentManager.removeContent(selectedContent, true);
    }
  }

  private void addContentRemovedListenerIfNeeded(@NotNull ContentManager cm) {
    if (cm == myListenerInstalledOn) {
      return;
    }

    ContentManagerListener listener = new ContentManagerListener() {
      @Override
      public void contentRemoved(@NotNull ContentManagerEvent event) {
        // Tab reordering temporarily removes and re-adds the same Content; its component is still live.
        if (Boolean.TRUE.equals(event.getContent().getUserData(Content.TEMPORARY_REMOVED_KEY))) {
          return;
        }
        // Identity lookup, not a positional remove(index): myTabList's order is not the ContentManager's index
        // space - the user can drag-reorder tabs - and the events are not limited to our own live tabs either:
        // a removeAllContents(true) burst on unregister, or a listener from a previous tool instance still
        // attached to the surviving manager, both deliver content with no matching myTabList entry. A positional
        // remove would then dispose an unrelated - or already stale - tab.
        IDisposableTab removedTab = findTab(event.getContent().getComponent());
        if (removedTab == null) {
          // No matching entry - nothing of ours to dispose.
          return;
        }
        myTabList.remove(removedTab);
        removedTab.disposeTab();
      }
    };
    cm.addContentManagerListener(listener);
    // Record the state only after addContentManagerListener() actually succeeded, and record `cm` itself (not
    // just "installed = true"): see the field's Javadoc for why a plain boolean is unsafe here. The listener is
    // NOT removed automatically - the EP-declared tool window and its ContentManager outlive unregister() - so
    // onUnregistered() removes it explicitly.
    myListenerInstalledOn = cm;
    myContentRemovedListener = listener;
  }

  /**
   * Removes the {@link ContentManagerListener} installed by {@link #addContentRemovedListenerIfNeeded}, invoked by
   * {@link BaseTool#unregister()} on every unregistration path - after the tool's content has been detached, so
   * the removal events still reach the listener and drain {@code myTabList}.
   * <p>
   * Explicit removal is required because the tool window is owned by the platform (declared via the
   * {@code com.intellij.toolWindow} EP): {@code unregister()} does not dispose its {@link ContentManager}. Without
   * this, every plugin reload would leave the previous tool's listener attached to the surviving manager, strongly
   * referencing that dead tool and its whole tab graph (MPS editors included).
   */
  @Override
  void onUnregistered() {
    if (myListenerInstalledOn == null) {
      return;
    }
    // Remove from the exact instance the listener was added to, not from whatever getContentManager() would
    // return now: a project reopen creates a new manager, and the old one may already be disposed.
    myListenerInstalledOn.removeContentManagerListener(myContentRemovedListener);
    myListenerInstalledOn = null;
    myContentRemovedListener = null;
  }

  @Override
  public Project getProject() {
    // FIXME methods declared inside node<TabbedToolDeclaration> instance don't see protected
    //       methods from BaseTabbedProjectTool/BaseTool superclasses, despite recognizing these.
    //       To address this limitation, provisionally expose protected method as public
    //       Pretty much the same needed for getContentManager(), overcame that with getToolWindow().getContentManager()
    return super.getProject();
  }

  public interface IDisposableTab {
    default void disposeTab() {}

    JComponent getComponent();

    /**
     * @return the subclass-specific object this tab stands for, or {@code null} if it carries none. Lets a
     * subclass resolve its own per-tab data via {@link #findTab} instead of maintaining a second, component-keyed
     * list that has to be kept in lockstep with the tab list.
     */
    @Nullable
    default Object getPayload() {
      return null;
    }
  }

  public static class Tab implements IDisposableTab {
    private final JComponent myComponent;
    private final String myTitle;
    private final Icon myIcon;
    private final Object myPayload;

    public Tab(@NotNull JComponent component, @NotNull String title, Icon icon) {
      this(component, title, icon, null);
    }

    public Tab(@NotNull JComponent component, @NotNull String title, Icon icon, @Nullable Object payload) {
      myComponent = component;
      myTitle = title;
      myIcon = icon;
      myPayload = payload;
    }

    @Override
    public JComponent getComponent() {
      return myComponent;
    }

    public String getTitle() {
      return myTitle;
    }

    public Icon getIcon() {
      return myIcon;
    }

    @Override
    @Nullable
    public Object getPayload() {
      return myPayload;
    }
  }
}
