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
package jetbrains.mps.ide.findusages.view;

import com.intellij.icons.AllIcons.Actions;
import com.intellij.icons.AllIcons.General;
import com.intellij.icons.AllIcons.Toolwindows;
import com.intellij.ide.actions.PinActiveTabAction;
import com.intellij.openapi.actionSystem.ActionManager;
import com.intellij.openapi.actionSystem.ActionUpdateThread;
import com.intellij.openapi.actionSystem.AnAction;
import com.intellij.openapi.actionSystem.AnActionEvent;
import com.intellij.openapi.actionSystem.DataContext;
import com.intellij.openapi.actionSystem.ex.ActionUtil;
import com.intellij.openapi.actionSystem.impl.SimpleDataContext;
import com.intellij.openapi.actionSystem.impl.SimpleDataContext.Builder;
import com.intellij.openapi.Disposable;
import com.intellij.openapi.application.ApplicationManager;
import com.intellij.openapi.components.PersistentStateComponent;
import com.intellij.openapi.components.Service;
import com.intellij.openapi.components.State;
import com.intellij.openapi.components.Storage;
import com.intellij.openapi.components.StoragePathMacros;
import com.intellij.openapi.progress.PerformInBackgroundOption;
import com.intellij.openapi.progress.ProgressIndicator;
import com.intellij.openapi.progress.Task.Backgroundable;
import com.intellij.openapi.project.Project;
import com.intellij.openapi.ui.MessageType;
import com.intellij.openapi.wm.ToolWindow;
import com.intellij.openapi.wm.ToolWindowAnchor;
import com.intellij.openapi.wm.ToolWindowManager;
import com.intellij.ui.content.Content;
import com.intellij.ui.content.ContentManager;
import jetbrains.mps.ide.ThreadUtils;
import jetbrains.mps.ide.actions.MPSActions;
import jetbrains.mps.ide.actions.MPSCommonDataKeys;
import jetbrains.mps.ide.actions.SModelActionData;
import jetbrains.mps.ide.actions.SNodeActionData;
import jetbrains.mps.ide.findusages.CantLoadSomethingException;
import jetbrains.mps.ide.findusages.CantSaveSomethingException;
import jetbrains.mps.ide.findusages.model.IResultProvider;
import jetbrains.mps.ide.findusages.model.SearchQuery;
import jetbrains.mps.ide.findusages.model.SearchResult;
import jetbrains.mps.ide.findusages.model.SearchResults;
import jetbrains.mps.ide.findusages.view.UsagesView.RebuildAction;
import jetbrains.mps.ide.findusages.view.UsagesView.RerunAction;
import jetbrains.mps.ide.findusages.view.UsagesView.SearchTaskImpl;
import jetbrains.mps.ide.findusages.view.treeholder.tree.DataTreeChangesNotifier;
import jetbrains.mps.ide.findusages.view.treeholder.treeview.INodeRepresentator;
import jetbrains.mps.ide.findusages.view.treeholder.treeview.ViewOptions;
import jetbrains.mps.ide.project.ProjectHelper;
import jetbrains.mps.ide.tools.BaseTabbedProjectTool;
import jetbrains.mps.logging.Logger;
import jetbrains.mps.openapi.navigation.EditorNavigator;
import jetbrains.mps.progress.ProgressMonitorAdapter;
import jetbrains.mps.smodel.RepoListenerRegistrar;
import org.jdom.Attribute;
import org.jdom.Element;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeReference;
import org.jetbrains.mps.openapi.module.SRepository;

import javax.swing.Icon;
import javax.swing.JComponent;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

@State(
    name = "UsagesViewTool",
    storages = @Storage(StoragePathMacros.WORKSPACE_FILE)
)
@Service(Service.Level.PROJECT)
public final class UsagesViewTool extends BaseTabbedProjectTool implements PersistentStateComponent<Element>, Disposable {

  private static final Logger LOG = Logger.getLogger(UsagesViewTool.class);

  private static final String VERSION_NUMBER = "1";
  private static final String VERSION = "version";
  private static final String ID = "id";

  private static final String TAB = "tab";
  private static final String TABS = "tabs";

  private static final String DEFAULT_VIEW_OPTIONS = "default_view_options";
  private static final String TOOL_WINDOW_ID = "Usages";

  // Copy-on-write: tabs are registered and unregistered in the EDT, while getState() iterates from the settings
  // save thread, where neither a ConcurrentModificationException nor a torn copy of a growing ArrayList is an option.
  private final List<UsageViewData> myUsageViewsData = new CopyOnWriteArrayList<>();
  private final ViewOptions myDefaultViewOptions = createFindUsagesDefaults();
  private final DataTreeChangesNotifier myChangeTracker = new DataTreeChangesNotifier();

  private volatile Runnable loadedTabInitializer = null;
  /**
   * The state to report while the tool window has no tabs to derive it from: first the element {@link #read} was
   * given, then the last state {@link #getState()} produced from live tabs. Deliberately never reset to
   * {@code null}, see {@link #getState()} for what a {@code null} state does to the stored one.
   */
  private volatile Element loadedState = null;

  //----CONSTRUCT STUFF----

  public UsagesViewTool(Project project) {
    super(project, TOOL_WINDOW_ID, shortcutsFromNumber(3), Toolwindows.ToolWindowFind, ToolWindowAnchor.BOTTOM, true);
  }

  private static ViewOptions createFindUsagesDefaults() {
    ViewOptions options = new ViewOptions();
    // Virtual-package grouping is a Find Usages default; other UsagesView consumers keep it off.
    options.myVirtualPackage = true;
    return options;
  }

  @Nullable
  public static UsagesViewTool getInstance(Project project) {
    final UsagesViewTool service = project.getService(UsagesViewTool.class);
    //ensure tool window registration
    final ToolWindow toolWindow = ToolWindowManager.getInstance(project).getToolWindow(TOOL_WINDOW_ID);
    if (toolWindow!=null) {
      return service;
    } else {
      return null;
    }
  }

  /*package*/ void register(UsageViewData viewData) {
    if (myUsageViewsData.isEmpty()) {
      new RepoListenerRegistrar(ProjectHelper.getProjectRepository(getProject()), myChangeTracker).attach();
    }
    myUsageViewsData.add(viewData);
  }

  /*package*/ void unregister(UsageViewData viewData) {
    myUsageViewsData.remove(viewData);
    if (myUsageViewsData.isEmpty()) {
      new RepoListenerRegistrar(ProjectHelper.getProjectRepository(getProject()), myChangeTracker).detach();
    }
  }

  //----TOOL STUFF----

  @Override
  public void dispose() {
    super.dispose();
    // if any data left (e.g. data restored but not visualized by addTab() - still in the myUsagesViewsData)
    ArrayList<UsageViewData> copy = new ArrayList<>(myUsageViewsData);
    copy.forEach(this::unregisterAndDispose);
  }

  /** Common cleanup for a {@link UsageViewData} that is going away, be it via a closed tab or tool disposal. */
  private void unregisterAndDispose(UsageViewData usageViewData) {
    unregister(usageViewData);
    usageViewData.myUsagesView.dispose();
  }

  @Override
  protected boolean isInitiallyAvailable() {
    return true;
  }

  //---FIND USAGES STUFF----

  /**
   * Display usages in a tool window of a respective project, according to options supplied.
   */
  public static void showUsages(@NotNull Project project, @NotNull IResultProvider provider, @NotNull SearchQuery query, @NotNull UsageToolOptions options) {
    final UsagesViewTool tool = UsagesViewTool.getInstance(project);
    if (tool == null) {
      LOG.warning("No " + TOOL_WINDOW_ID + " tool window, usages are not shown");
      return;
    }
    tool.findUsages(provider, query, options);
  }

  private void findUsages(IResultProvider provider, final SearchQuery query, final UsageToolOptions options) {
    final SearchTaskImpl searchTask = new SearchTaskImpl(ProjectHelper.fromIdeaProject(getProject()), provider, query);
    ThreadUtils.runInUIThreadNoWait(() -> new Backgroundable(getProject(), "Searching", true, PerformInBackgroundOption.DEAF) {
      private SearchResults<?> searchResults;

      @Override
      public void run(@NotNull final ProgressIndicator indicator) {
        searchResults = searchTask.execute(new ProgressMonitorAdapter(indicator));
      }

      @Override
      public void onSuccess() {
        showResults(searchTask, searchResults, options, null);
      }
    }.queue());
  }

  public void show(SearchResults<?> results, String notFoundMsg) {
    show(results, notFoundMsg, null);
  }

  public <T> void show(SearchResults<T> results, String notFoundMsg, @Nullable INodeRepresentator<T> representator) {
    ThreadUtils.assertEDT();
    showResults(null, results, new UsageToolOptions().navigateIfSingle(false).allowRunAgain(false).notFoundMessage(notFoundMsg), representator);
  }

  private <T> void showResults(@Nullable SearchTaskImpl searchTask, final SearchResults<T> searchResults, UsageToolOptions options, @Nullable INodeRepresentator<T> representator) {
    register();  //Make sure the tool window is properly initialized before showing results.
    if (options.myRunAgain && searchTask == null) {
      throw new IllegalStateException("Search task should be provided to allow rerunning.");
    }
    final jetbrains.mps.project.Project mpsProject = ProjectHelper.fromIdeaProject(getProject());
    int resCount = searchResults.getSearchResults2().size();
    if (resCount == 0) {
      final ToolWindowManager manager = ToolWindowManager.getInstance(getProject());
      manager.notifyByBalloon(TOOL_WINDOW_ID, MessageType.INFO, options.myNotFoundMessage, null, null);
      return;
    } else if (resCount == 1 && options.myNavigateIfSingle) {
      final SearchResult<?> searchResult = searchResults.getSearchResults2().get(0);
      if (searchResult.getObject() instanceof SNode) {
        final SNode node = (SNode) searchResult.getObject();
        new EditorNavigator(mpsProject).shallFocus(true).selectIfChild().open(node.getReference());
        return;
      }
      // FALL THROUGH (a single result we can't navigate to)
    }
    UsagesView usagesView = createUsageView(options.myRunAgain ? searchTask : null);
    usagesView.setCustomNodeRepresentator(representator);
    final UsageViewData usageViewData = new UsageViewData(usagesView, options.myRunAgain ? searchTask : null);
    usageViewData.setTransientView(options.myTransientView);
    register(usageViewData);

    usagesView.setContents(searchResults);

    addTab(usageViewData, options.myForceNewTab, true);
  }

  private void addTab(final UsageViewData usageViewData, boolean forceNewTab, boolean openTool) {
    UsagesView usagesView = usageViewData.myUsagesView;
    Icon icon = usagesView.getIcon();
    String caption = usagesView.getCaption();
    JComponent component = usagesView.getComponent();
    addTab(new Tab(component, caption, icon, usageViewData) {
      @Override
      public void disposeTab() {
        unregisterAndDispose(usageViewData);
      }
    }, forceNewTab, openTool);
    if (findTab(component) == null) {
      // addTab() above bailed out (no content manager, e.g. tool window/project torn down): no Content was
      // created and the Tab above was never added to the tab list, so nothing will ever invoke its disposeTab().
      // Clean up here instead of leaking usageViewData - and, if it was the only one, the repo listener - forever.
      unregisterAndDispose(usageViewData);
      return;
    }
    if (usageViewData.myPinned) {
      pinTab(component);
    }
  }

  //---END FIND STUFF----

  private void read(Element element, jetbrains.mps.project.Project project) {
    if (loadedTabInitializer != null || getContentManagerIfCreated() != null) {
      // loadState() comes again whenever the workspace file changes underneath us (VCS update, external edit).
      // Such a state cannot be honoured: the platform builds a tool window's content exactly once, so tabs read
      // here would never be materialised, while the tabs already restored - or about to be - are the ones the user
      // works with. Bail out before UsageViewData.read() creates UsagesView instances nobody would dispose.
      LOG.info("Ignoring reloaded " + TOOL_WINDOW_ID + " state, tabs of this project are already restored");
      return;
    }
    // Retain the element no matter how much of it we manage to restore below: until there are live tabs to write,
    // it *is* the state (see getState()), and tabs we fail to read must not disappear from the workspace file.
    loadedState = element.clone();

    Element versionXML = element.getChild(VERSION);
    if (versionXML == null) {
      return;
    }
    String version = versionXML.getAttribute(ID).getValue();
    if (!VERSION_NUMBER.equals(version)) {
      return;
    }

    Element tabsXML = element.getChild(TABS);
    final List<UsageViewData> loadedUsageViewData = new ArrayList<>();
    if (tabsXML != null) {
      for (Element tabXML : tabsXML.getChildren()) {
        final UsageViewData usageViewData;
        try {
          usageViewData = UsageViewData.read(this, tabXML, project);
        } catch (RuntimeException ex) {
          LOG.info("Failed to restore usages view tab", ex);
          continue;
        } catch (CantLoadSomethingException e) {
          continue;
        }
        loadedUsageViewData.add(usageViewData);
      }
    }

    Element defaultViewOptionsXML = element.getChild(DEFAULT_VIEW_OPTIONS);
    myDefaultViewOptions.read(defaultViewOptionsXML, project);

    if (!loadedUsageViewData.isEmpty()) {
      // We must delay adding visual tabs until the tool window is registered with ToolWindowManager,
      loadedTabInitializer = new Runnable() {
        @Override
        public void run() {
          for (UsageViewData d : loadedUsageViewData) {
            // read() only schedules a delayed tree rebuild. Materialize the restored contents while this factory
            // is on the EDT, before exposing the component; leave the queued rebuild as a fallback if this fails.
            try {
              d.myUsagesView.rebuildNow();
            } catch (RuntimeException ex) {
              LOG.info("Failed to materialize restored usages view tab", ex);
            }
            register(d);
            // Re-open only data captured from the loaded state. A live view registered while lazy content creation
            // is in progress has its own addTab() call and must not get a second Content for the same component.
            UsagesViewTool.this.addTab(d, true, false);
          }
          // Last, because addTab() selects every tab it adds. A state with no tab marked selected (written before
          // the selection was persisted) leaves the last restored tab selected, as before.
          for (UsageViewData d : loadedUsageViewData) {
            if (d.mySelected) {
              UsagesViewTool.this.selectTabSafely(d.myUsagesView.getComponent());
              break;
            }
          }
        }
      };
    }
  }

  private void write(Element element, jetbrains.mps.project.Project project, @NotNull ContentManager contentManager) {
    Element versionXML = new Element(VERSION);
    versionXML.setAttribute(ID, VERSION_NUMBER);
    element.addContent(versionXML);

    Element tabsXML = new Element(TABS);
    // Tab order comes from the ContentManager, not from the append-only myUsageViewsData: a drag-reorder moves the
    // Content alone, and it reaches us as the temporary-removal/re-add pair BaseTabbedProjectTool deliberately
    // ignores to keep the tab's data alive. The manager's index space is thus the only record of the order the user
    // sees - as it already is for the pinned flag and the selection. Iterated as a single snapshot, since this runs
    // off the EDT, where a lookup per tab could observe tabs moving in between.
    final List<UsageViewData> saved = new ArrayList<>();
    for (Content content : contentManager.getContentsRecursively()) {
      final UsageViewData usageViewData = findUsageViewData(content.getComponent());
      if (usageViewData == null || usageViewData.isTransientView()) {
        continue;
      }
      saved.add(usageViewData);
      try {
        Element tabXML = new Element(TAB);
        usageViewData.write(tabXML, project, content.isPinned(), content.isSelected());
        tabsXML.addContent(tabXML);
      } catch (CantSaveSomethingException e) {
        // ignore
      }
    }
    // myUsageViewsData is copy-on-write, so this iterates a snapshot even though tabs come and go in the EDT. Data
    // with no tab content of its own is not visualized, e.g. addTab() bailed out on a tool window being torn down.
    for (UsageViewData usageViewData : myUsageViewsData) {
      if (!usageViewData.isTransientView() && !saved.contains(usageViewData)) {
        LOG.info("Not saving usages tab '" + usageViewData.myUsagesView.getCaption() + "', it has no tab content");
      }
    }
    element.addContent(tabsXML);

    Element defaultViewOptionsXML = new Element(DEFAULT_VIEW_OPTIONS);
    myDefaultViewOptions.write(defaultViewOptionsXML, project);
    element.addContent(defaultViewOptionsXML);
  }

  /**
   * @return the data behind the tab showing {@code tabComponent}, or {@code null} for a tab that is none of ours
   * (content of a placeholder or of a previous tool instance). Resolved primarily via {@link #findTab}, which
   * {@link #addTab} attaches the {@link UsageViewData} to as the tab's payload; falls back to a scan of
   * {@link #myUsageViewsData} for data registered but not yet turned into a tab (see {@link #dispose()}), which
   * {@link #findTab} cannot see.
   */
  @Nullable
  private UsageViewData findUsageViewData(@NotNull JComponent tabComponent) {
    IDisposableTab tab = findTab(tabComponent);
    Object payload = tab == null ? null : tab.getPayload();
    if (payload instanceof UsageViewData) {
      return (UsageViewData) payload;
    }
    for (UsageViewData usageViewData : myUsageViewsData) {
      if (usageViewData.myUsagesView.getComponent() == tabComponent) {
        return usageViewData;
      }
    }
    return null;
  }

  /**
   * Unlike what its {@link PersistentStateComponent#getState()} contract suggests, a {@code null} state does not
   * make the platform keep the state it already stores: it drops our component from the workspace file
   * ({@code ComponentStoreImpl} -> {@code XmlElementStorage} -> {@code setStateAndCloneIfNeeded}). Neither may this
   * method derive a state from {@link #myUsageViewsData} before the loaded tabs are materialised - the list is
   * still empty then, and an element with empty {@code tabs} discards the persisted ones just as effectively.
   * Hence {@link #loadedState}, which stands in for the tabs until there are any; {@code null} is left for the one
   * case where it costs nothing, namely nothing loaded and no tab ever created.
   *
   * @return the state to persist, or {@code null} if there is none - neither live, nor loaded, nor saved before.
   */
  @Nullable
  @Override
  public Element getState() {
    final Element live = writeLiveState();
    if (live != null) {
      // Keep it: by the time we are asked again the tool window content may be gone (project teardown).
      loadedState = live;
      // The platform is free to mutate what it gets, our copy must stay as written.
      return live.clone();
    }
    final Element loaded = loadedState;
    return loaded == null ? null : loaded.clone();
  }

  /**
   * @return the state of the tabs the tool window actually shows, or {@code null} while it shows none: its content
   * was never created, or a loaded state is still waiting for {@link #loadedTabInitializer} to turn it into tabs.
   */
  @Nullable
  private Element writeLiveState() {
    // Resolved once and handed down, so that a single save observes one state of the manager (see
    // BaseTool.addContent(ContentManager, ...) for the same reasoning).
    final ContentManager contentManager = getContentManagerIfCreated();
    if (contentManager == null || loadedTabInitializer != null) {
      return null;
    }
    final jetbrains.mps.project.Project mpsProject = ProjectHelper.fromIdeaProject(getProject());
    final Element state = new Element("state");
    mpsProject.getModelAccess().runReadAction(() -> write(state, mpsProject, contentManager));
    return state;
  }

  @Override
  public void loadState(@NotNull final Element state) {
      if (getProject().isDisposed()) {
        return;
      }
      final jetbrains.mps.project.Project mpsProject = ProjectHelper.fromIdeaProject(getProject());
      mpsProject.getModelAccess().runReadAction(() -> read(state, mpsProject));
  }

  private UsagesView createUsageView(@Nullable SearchTaskImpl searchTask) {
    jetbrains.mps.project.Project mpsProject = ProjectHelper.fromIdeaProject(getProject());
    final UsagesView view = new UsagesView(mpsProject, myDefaultViewOptions, myChangeTracker);
    ArrayList<AnAction> actions = new ArrayList<>();
    if (searchTask != null) {
      final RerunAction rerunAction = new RerunAction(view, "Run again");
      rerunAction.setRunOptions(searchTask);
      actions.add(rerunAction);
      view.setCaption(searchTask.getCaption());
    }
    actions.add(new RebuildAction(view));
    actions.add(new AnAction("Close", "", Actions.Cancel) {
      @Override
      public void actionPerformed(@NotNull AnActionEvent e) {
        closeTab(view.getComponent());
      }
    });
    actions.add(new PinActiveTabAction.TW());
    if (ActionManager.getInstance().getAction(MPSActions.FIND_USAGES_WITH_DIALOG_ACTION) != null && searchTask != null) {
      actions.add(new FindUsagesWithDialogAction(mpsProject.getRepository(), searchTask));
    }
    view.setActions(actions);
    return view;
  }

  /**
   * Tracks result presentation and optional task to re-populate the view.
   * Persists state
   */
  private static class UsageViewData {
    private static final String USAGE_VIEW = "usage_view";
    private static final String USAGE_VIEW_OPTIONS = "usage_view_options";
    private static final String PINNED = "pinned";
    private static final String SELECTED = "selected";

    public final UsagesView myUsagesView;
    public final SearchTaskImpl mySearchTask;
    // Restore-time seeds only, read once each (addTab() for myPinned, the loadedTabInitializer's second pass for
    // mySelected) to prime the Content the platform creates for the restored tab. Once that Content exists, it -
    // not these fields - is authoritative: write() persists content.isPinned()/isSelected(), never these.
    private final boolean myPinned;
    private final boolean mySelected;
    private boolean myIsTransientView = false;
    // now it's not in use, but will be used to implement constructable finders
//    private FindUsagesOptions myOptions = new FindUsagesOptions();

    public UsageViewData(@NotNull UsagesView view, @Nullable SearchTaskImpl searchTask, boolean pinned, boolean selected) {
      myUsagesView = view;
      mySearchTask = searchTask;
      myPinned = pinned;
      mySelected = selected;
    }

    public UsageViewData(@NotNull UsagesView view, @Nullable SearchTaskImpl searchTask) {
      this(view, searchTask, false, false);
    }

    /*package*/void setTransientView(boolean isTransientView) {
      myIsTransientView = isTransientView;
    }

    /*package*/boolean isTransientView() {
      return myIsTransientView;
    }

    @NotNull
    public static UsageViewData read(UsagesViewTool tool, Element element, jetbrains.mps.project.Project project) throws CantLoadSomethingException {
      final SearchTaskImpl task = SearchTaskImpl.read(element, project);
      final UsagesView usageView = tool.createUsageView(task);
      Element usageViewXML = element.getChild(USAGE_VIEW);
      usageView.read(usageViewXML, project);

//      Element usageViewOptionsXML = element.getChild(USAGE_VIEW_OPTIONS);
//      myOptions = new FindUsagesOptions(usageViewOptionsXML, project);
      final Attribute pinned = element.getAttribute(PINNED);
      final Attribute selected = element.getAttribute(SELECTED);
      return new UsageViewData(usageView, task, isTrue(pinned), isTrue(selected));
    }

    private static boolean isTrue(@Nullable Attribute attribute) {
      return attribute != null && "true".equals(attribute.getValue());
    }

    public void write(Element element, jetbrains.mps.project.Project project, boolean pinned, boolean selected) throws CantSaveSomethingException {
      //this is to partially fix MPS-14671
      if (myUsagesView.getIncludedResultNodes().size() > 500) {
        throw new CantSaveSomethingException("usages view size too big to save");
      }
      element.setAttribute(PINNED, Boolean.toString(pinned));
      element.setAttribute(SELECTED, Boolean.toString(selected));

      if (mySearchTask != null) {
        mySearchTask.write(element, project);
      }
      Element usageViewXML = new Element(USAGE_VIEW);
      myUsagesView.write(usageViewXML, project);
      element.addContent(usageViewXML);

//      Element usageViewOptionsXML = new Element(USAGE_VIEW_OPTIONS);
//      myOptions.write(usageViewOptionsXML, project);
//      element.addContent(usageViewOptionsXML);
    }
  }

  private static class FindUsagesWithDialogAction extends AnAction {
    private final SRepository myRepository;
    private final SearchTaskImpl mySearchTask;

    public FindUsagesWithDialogAction(@NotNull SRepository repository, @NotNull SearchTaskImpl searchTask) {
      super("Settings...", "Show find usages settings dialog", General.GearPlain);
      myRepository = repository;
      mySearchTask = searchTask;
    }

    @Override
    public void update(AnActionEvent e) {
      if (mySearchTask.canExecute() && mySearchTask.getSearchObject() instanceof SNodeReference) {
        e.getPresentation().setEnabled(ActionManager.getInstance().getAction(MPSActions.FIND_USAGES_WITH_DIALOG_ACTION) != null);
      } else {
        e.getPresentation().setEnabled(false);
      }
    }

    @Override
    public @NotNull ActionUpdateThread getActionUpdateThread() {
      return ActionUpdateThread.BGT;
    }

    @Override
    public void actionPerformed(final AnActionEvent e) {
      final SNodeReference searchedNode = (SNodeReference) mySearchTask.getSearchObject();
      final DataContext dc = myRepository.getModelAccess().computeReadAction(() -> {
        final Builder dcBuilder = SimpleDataContext.builder().setParent(e.getDataContext());
        SNode resolved = searchedNode.resolve(myRepository);
        if (resolved != null) {
          // XXX FWIW, jetbrains.mps.ide.actions.FindSpecificNodeUsages_Action doesn't look into CONTEXT_MODEL, likely no need to pass one.
          dcBuilder.add(MPSCommonDataKeys.CONTEXT_MODEL, resolved.getModel());
          // FIXME have to keep this code (legacy NODE DataKey) as long as our own actions query NODE, not SNodeActionData.
          //    Once templates for actions switch to SNodeActionData, shall fix this code to handle respective KEY.
          //    Besides, this is dynamic context, not visible to IDEA's PreCachedDataContext, no need to worry it
          //    is accessed in not appropriate moment of time
          // FIXME this code traces back to 5ec439b5 (2013), and I'm confused whether we still need it
          //    or can contribute FIND_USAGES_WITH_DIALOG_ACTION action by regular IDEA means (contributor to toolbar?)
          dcBuilder.add(MPSCommonDataKeys.NODE, resolved);
          // XXX not sure if this is needed, just an attempt to avoid LegacyDataContextBridge (see BaseAction.legacyWrap) to override values we've just set
          //     with values of SNodeActionData/SModelActionData from parent (event's) data context
          dcBuilder.addNull(SModelActionData.KEY);
          dcBuilder.addNull(SNodeActionData.KEY);
        }
        return dcBuilder.build();
      });

      // XXX consider ActionManager.tryToExecute(), just need a mechanism to alter DataContext
      AnAction action = ActionManager.getInstance().getAction(MPSActions.FIND_USAGES_WITH_DIALOG_ACTION);
      ActionUtil.performAction(action, e.withDataContext(dc));
    }
  }

  private static class Factory implements com.intellij.openapi.wm.ToolWindowFactory {
    /**
     * Returning false when no usage data has been loaded ensures that the tool button is not shown upon start.
     * If no usages report data was loaded, without this method, the platform shows a tool button, which disappears as soon as clicked.
     * This method instantiates the Usages service and loads its persistent state.
     * Special care must be taken in the service's loadState/read methods to avoid registering this tool window with ToolWindowManager,
     * since it leads to double-registering and an exception thrown.
     */
    @Override
    public boolean shouldBeAvailable(@NotNull Project project) {
      final UsagesViewTool service = project.getService(UsagesViewTool.class);
      return service != null && service.loadedTabInitializer != null;
    }

    /**
     * Initializes the tabs from the loaded state. The tool window itself is kept from popping open at project
     * start by {@code doNotActivateOnStart="true"} in MPSUI.xml, so this method must not call {@code hide()} -
     * doing so would also cancel the very "show" a user's first click on the tool button is already in progress of.
     */
    @Override
    public void createToolWindowContent(@NotNull Project project, @NotNull ToolWindow toolWindow) {
      //Initialize loading of saved tabs
      final UsagesViewTool service = project.getService(UsagesViewTool.class);
      if (service != null) {
        //Propagate the loaded usages report data into actual visual tabs
        final Runnable initializer = service.loadedTabInitializer;
        if (initializer != null) {
          final Runnable runnable = () -> {
            try {
              initializer.run();
            } finally {
              // Whatever the restore managed to add is live from now on, so getState() has to derive the state
              // from the tabs, not from the element they came from - a restore that threw halfway included, or we
              // would keep re-persisting tabs that are no longer the ones the user sees.
              service.loadedTabInitializer = null;
            }
          };
          if (ThreadUtils.isInEDT()) {
            runnable.run();
          } else {
            ApplicationManager.getApplication().invokeLater(runnable);
          }
        }
      }
    }
  }
}
