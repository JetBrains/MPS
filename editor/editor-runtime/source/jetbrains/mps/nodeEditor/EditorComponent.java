/*
 * Copyright 2000-2026 JetBrains s.r.o. Use of this source code is governed by the Apache 2.0 license that can be found in the LICENSE file.
 */
package jetbrains.mps.nodeEditor;

import com.intellij.codeInsight.hint.LineTooltipRenderer;
import com.intellij.codeInsight.hint.TooltipController;
import com.intellij.codeInsight.hint.TooltipGroup;
import com.intellij.codeInsight.hint.TooltipRenderer;
import com.intellij.ide.BrowserUtil;
import com.intellij.ide.CopyProvider;
import com.intellij.ide.CutProvider;
import com.intellij.ide.DataManager;
import com.intellij.ide.PasteProvider;
import com.intellij.ide.ui.AntialiasingType;
import com.intellij.ide.ui.UISettings;
import com.intellij.openapi.actionSystem.ActionGroup;
import com.intellij.openapi.actionSystem.ActionManager;
import com.intellij.openapi.actionSystem.ActionPlaces;
import com.intellij.openapi.actionSystem.ActionUpdateThread;
import com.intellij.openapi.actionSystem.AnAction;
import com.intellij.openapi.actionSystem.AnActionEvent;
import com.intellij.openapi.actionSystem.CommonDataKeys;
import com.intellij.openapi.actionSystem.DataContext;
import com.intellij.openapi.actionSystem.DataSink;
import com.intellij.openapi.actionSystem.DefaultActionGroup;
import com.intellij.openapi.actionSystem.KeyboardShortcut;
import com.intellij.openapi.actionSystem.PlatformDataKeys;
import com.intellij.openapi.actionSystem.Separator;
import com.intellij.openapi.actionSystem.UiDataProvider;
import com.intellij.openapi.application.ApplicationManager;
import com.intellij.openapi.editor.colors.EditorColors;
import com.intellij.openapi.editor.colors.EditorColorsManager;
import com.intellij.openapi.editor.ex.EditorSettingsExternalizable;
import com.intellij.openapi.editor.ex.util.EditorUtil;
import com.intellij.openapi.keymap.KeymapManager;
import com.intellij.openapi.project.DumbAware;
import com.intellij.openapi.ui.popup.Balloon;
import com.intellij.openapi.ui.popup.Balloon.Position;
import com.intellij.openapi.vfs.VirtualFileManager;
import com.intellij.openapi.wm.IdeFrame;
import com.intellij.openapi.wm.WindowManager;
import com.intellij.openapi.wm.ex.StatusBarEx;
import com.intellij.ui.components.JBScrollPane;
import com.intellij.ui.components.JBScrollPane.Flip;
import com.intellij.util.io.URLUtil;
import com.intellij.util.ui.ButtonlessScrollBarUI;
import com.intellij.util.ui.UIUtil;
import gnu.trove.THashSet;
import jetbrains.mps.editor.EditorComponentTrackService;
import jetbrains.mps.editor.intentions.IntentionMenuProducer;
import jetbrains.mps.editor.runtime.HighlightUsagesSupport;
import jetbrains.mps.editor.runtime.cells.ReadOnlyUtil;
import jetbrains.mps.editor.runtime.commands.EditorCommand;
import jetbrains.mps.editor.runtime.commands.EditorCommandAdapter;
import jetbrains.mps.editor.runtime.style.StyleAttributes;
import jetbrains.mps.editor.runtime.style.StyleImpl;
import jetbrains.mps.errors.item.IssueKindReportItem;
import jetbrains.mps.extapi.model.ModelWithDisposeInfo;
import jetbrains.mps.ide.ThreadUtils;
import jetbrains.mps.ide.actions.MPSActions;
import jetbrains.mps.ide.actions.MPSCommonDataKeys;
import jetbrains.mps.ide.actions.SNodeActionData;
import jetbrains.mps.ide.editor.MPSEditorDataKeys;
import jetbrains.mps.ide.project.ProjectHelper;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.AttributeOperations;
import jetbrains.mps.logging.Logger;
import jetbrains.mps.messages.IMessageHandler;
import jetbrains.mps.nodeEditor.actions.ActionHandlerImpl;
import jetbrains.mps.nodeEditor.assist.DefaultContextAssistantManager;
import jetbrains.mps.nodeEditor.assist.DisabledContextAssistantManager;
import jetbrains.mps.nodeEditor.cellMenu.CompletionHelper;
import jetbrains.mps.nodeEditor.cellMenu.NodeSubstituteChooser;
import jetbrains.mps.nodeEditor.cells.CellFinderUtil;
import jetbrains.mps.nodeEditor.cells.CellFinderUtil.Finder;
import jetbrains.mps.nodeEditor.cells.EditorCell;
import jetbrains.mps.nodeEditor.cells.EditorCell_Basic;
import jetbrains.mps.nodeEditor.cells.EditorCell_Collection;
import jetbrains.mps.nodeEditor.cells.EditorCell_Constant;
import jetbrains.mps.nodeEditor.cells.EditorCell_Label;
import jetbrains.mps.nodeEditor.cells.EditorCell_Property;
import jetbrains.mps.nodeEditor.commands.CommandContextImpl;
import jetbrains.mps.nodeEditor.commands.CommandContextWrapper;
import jetbrains.mps.nodeEditor.configuration.EditorConfiguration;
import jetbrains.mps.nodeEditor.configuration.EditorConfigurationBuilder;
import jetbrains.mps.nodeEditor.documentation.MPSDocumentationManager;
import jetbrains.mps.nodeEditor.highlighter.EditorHighlighter;
import jetbrains.mps.nodeEditor.inspector.InspectorEditorComponent;
import jetbrains.mps.nodeEditor.keymaps.AWTKeymapHandler;
import jetbrains.mps.nodeEditor.keymaps.KeymapHandler;
import jetbrains.mps.nodeEditor.leftHighlighter.LeftEditorHighlighter;
import jetbrains.mps.nodeEditor.messageTargets.EditorMessageWithTarget;
import jetbrains.mps.nodeEditor.selection.SelectionInternal;
import jetbrains.mps.nodeEditor.selection.SelectionManagerImpl;
import jetbrains.mps.nodeEditor.sidetransform.EditorCell_STHint;
import jetbrains.mps.nodeEditor.ui.InputMethodRequestsImpl;
import jetbrains.mps.nodeEditor.updater.UpdaterImpl;
import jetbrains.mps.openapi.editor.ActionHandler;
import jetbrains.mps.openapi.editor.DeletionApprover;
import jetbrains.mps.openapi.editor.EditorComponentSettings;
import jetbrains.mps.openapi.editor.EditorComponentState;
import jetbrains.mps.openapi.editor.assist.ContextAssistant;
import jetbrains.mps.openapi.editor.assist.ContextAssistantManager;
import jetbrains.mps.openapi.editor.cells.CellAction;
import jetbrains.mps.openapi.editor.cells.CellActionType;
import jetbrains.mps.openapi.editor.cells.CellConditions.AggregationCellCondition;
import jetbrains.mps.openapi.editor.cells.CellConditions.AssociationCellCondition;
import jetbrains.mps.openapi.editor.cells.CellMessagesUtil;
import jetbrains.mps.openapi.editor.cells.CellTraversalUtil;
import jetbrains.mps.openapi.editor.cells.EditorCellContext;
import jetbrains.mps.openapi.editor.cells.KeyMapAction;
import jetbrains.mps.openapi.editor.cells.SubstituteInfo;
import jetbrains.mps.openapi.editor.commands.CommandContext;
import jetbrains.mps.openapi.editor.message.EditorMessageOwner;
import jetbrains.mps.openapi.editor.message.SimpleEditorMessage;
import jetbrains.mps.openapi.editor.selection.Selection;
import jetbrains.mps.openapi.editor.selection.SelectionManager;
import jetbrains.mps.openapi.editor.selection.SingularSelection;
import jetbrains.mps.openapi.editor.style.StyleRegistry;
import jetbrains.mps.openapi.editor.update.Updater;
import jetbrains.mps.project.MPSProject;
import jetbrains.mps.smodel.CancellableReadAction;
import jetbrains.mps.typechecking.TypecheckingFacade;
import jetbrains.mps.typechecking.TypecheckingSession;
import jetbrains.mps.typechecking.TypecheckingSession.Flags;
import jetbrains.mps.typechecking.TypecheckingSession.Handle;
import jetbrains.mps.util.Pair;
import jetbrains.mps.util.Reference;
import jetbrains.mps.workbench.ActionPlace;
import jetbrains.mps.workbench.action.ActionUtils;
import jetbrains.mps.workbench.action.BaseAction;
import org.jetbrains.annotations.MustBeInvokedByOverriders;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.annotations.Internal;
import org.jetbrains.mps.openapi.language.SContainmentLink;
import org.jetbrains.mps.openapi.language.SReferenceLink;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeReference;
import org.jetbrains.mps.openapi.model.SNodeUtil;
import org.jetbrains.mps.openapi.module.SRepository;
import org.jetbrains.mps.util.Condition;

import javax.swing.AbstractAction;
import javax.swing.JComponent;
import javax.swing.JPanel;
import javax.swing.JPopupMenu;
import javax.swing.JScrollBar;
import javax.swing.JScrollPane;
import javax.swing.JViewport;
import javax.swing.KeyStroke;
import javax.swing.Scrollable;
import javax.swing.SwingConstants;
import javax.swing.SwingUtilities;
import javax.swing.event.ChangeEvent;
import javax.swing.event.ChangeListener;
import javax.swing.text.DefaultEditorKit;
import java.awt.Adjustable;
import java.awt.Color;
import java.awt.Component;
import java.awt.Container;
import java.awt.Dimension;
import java.awt.FocusTraversalPolicy;
import java.awt.Font;
import java.awt.FontMetrics;
import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.KeyboardFocusManager;
import java.awt.Point;
import java.awt.Rectangle;
import java.awt.RenderingHints;
import java.awt.Toolkit;
import java.awt.event.ActionEvent;
import java.awt.event.FocusEvent;
import java.awt.event.FocusListener;
import java.awt.event.KeyAdapter;
import java.awt.event.KeyEvent;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.awt.event.MouseListener;
import java.awt.event.MouseWheelEvent;
import java.awt.im.InputMethodRequests;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Deque;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.TreeSet;
import java.util.function.Supplier;
import java.util.stream.Collectors;

/*
 * There are a lot of casts of {@code openapi.EditorComponent} to {@code nodeEditor.EditorComponent} implementation.
 * To get rid of odd "hierarchy inversion" with {@link #getExternalComponent()}, there are three possible approaches:
 *  1. Keep this EC extends JComponent + openapi.EC, extract 'EditorComponentDecorator' == myContainer
 *     ECD to aggregate EC (as it's now). Minimize access ECD, try not to access it through this EC component.
 *  2. Make this nodeEditor.EC == myContainer (panel with scrollpane) + openapi.EC,
 *     extract 'AbstractEditorComponent', JComponent+Scrollable. Aggregate AEC.
 *     Likely would ruin scenarios when external listeners added to EC, background get changed or coordinates re-calculated.
 *  3. This class not JComponent, aggregate UI. Makes it right as removes confusion of EC being Swing element (it's rather a
 *     'controller' for UI element.
 *     Seems next to impossible, as there are hundreds of uses of nodeEditor.EC as JComponent (color, coordinates, icons/components, etc)
 *  Keep in mind headless EC story and a need to keep DataProvider separate (preferably, not in
 *  [editor-runtime] but in [mps-editor]
 */
public abstract class EditorComponent extends JComponent implements Scrollable, UiDataProvider,
                                                                    jetbrains.mps.openapi.editor.EditorComponent {

  private static final Logger LOG = Logger.getLogger(EditorComponent.class);

  private static final int SCROLL_GAP = 15;

  private String myDefaultPopupGroupId = MPSActions.EDITOR_POPUP_GROUP;
  private InputMethodRequests myInputMethodRequests;
  protected volatile Handle myTypecheckingSessionHandle;

  public static void turnOnAliasingIfPossible(Graphics2D g) {
    if (!RenderingHints.VALUE_TEXT_ANTIALIAS_OFF.equals(AntialiasingType.getKeyForCurrentScope(true))) {
      Toolkit tk = Toolkit.getDefaultToolkit();
      //noinspection HardCodedStringLiteral
      Map map = (Map) tk.getDesktopProperty("awt.font.desktophints");
      if (map != null) {
        g.addRenderingHints(map);
      } else {
        g.setRenderingHint(RenderingHints.KEY_TEXT_ANTIALIASING, AntialiasingType.getKeyForCurrentScope(true));
        g.setRenderingHint(RenderingHints.KEY_ANTIALIASING, RenderingHints.VALUE_ANTIALIAS_ON);
        g.setRenderingHint(RenderingHints.KEY_RENDERING, RenderingHints.VALUE_RENDER_QUALITY);
      }
      g.setRenderingHint(RenderingHints.KEY_TEXT_LCD_CONTRAST, UIUtil.getLcdContrastValue());
    }
  }

  private final Object myAdditionalPaintersLock = new Object();

  private final Map<jetbrains.mps.openapi.editor.cells.EditorCell, Boolean> myCollapseStates = new HashMap<>();
  private final Set<EditorCell> myBracesEnabledCells = new HashSet<>();

  private final CellTracker myCellTracker = new CellTracker();

  private boolean myDisposed = false;
  // additional debugging field
  private StackTraceElement[] myModelDisposedStackTrace = null;
  private Throwable myDisposedTrace = null;

  private final Set<AdditionalPainter> myAdditionalPainters = new TreeSet<>((o1, o2) -> {
    if (o1.isAbove(o2, EditorComponent.this)) {
      return 1;
    }
    if (o2.isAbove(o1, EditorComponent.this)) {
      return -1;
    }
    return o1.equals(o2) ? 0 : Integer.signum(System.identityHashCode(o1) - System.identityHashCode(o2));
  });
  private final Map<Object, AdditionalPainter> myItemsToAdditionalPainters = new HashMap<>();

  private final List<LeftMarginMouseListener> myLeftMarginPressListeners = new ArrayList<>(0);

  private final EditorSettingsListener mySettingsListener = () -> getModelAccess().runReadInEDT(() -> {
    if (isDisposed() || isProjectDisposed()) {
      return;
    }
    releaseTypecheckingSession(true);
    requestTypecheckingSession();
    rebuildEditorContent();
    refreshContentHighlighter();
    refreshHighlighter();
  });

  private boolean myReadOnly;
  private String myLastWrittenStatus = "";

  @NotNull
  private final SRepository myRepository;

  //TODO: make @NotNull after separating UI-less logic into AbstractEditorComponent class
  private JScrollPane myScrollPane;
  //TODO: make @NotNull after separating UI-less logic into AbstractEditorComponent class
  private EditorComponentDecoration myContainer;

  protected EditorCell myRootCell;
  private final int myShiftX = 15;
  private final int myShiftY = 10;

  private final SelectionManagerImpl mySelectionManager = new SelectionManagerImpl(this);
  @NotNull
  private final CommandContextImpl myCommandContext;
  private final UpdaterImpl myUpdater;

  private Deque<KeyboardHandler> myKbdHandlersStack;
  private MouseListener myMouseEventHandler;

  private final Object myEditorComponentActionsLock = new Object();
  private volatile EditorComponentActions myEditorComponentActions;

  private NodeSubstituteChooser myNodeSubstituteChooser;
  private NodeInformationDialog myNodeInformationDialog;

  private List<EditorDisposeListener> myDisposeListeners = new ArrayList<>();
  private final NodeHighlightManager myHighlightManager;

  private MessagesGutter myMessagesGutter;
  private LeftEditorHighlighter myLeftHighlighter;
  @Nullable
  protected SNode myNode;

  @Nullable
  protected SNodeReference myNodePointer;
  @NotNull
  private EditorContext myEditorContext;
  @NotNull
  private final EditorConfiguration myEditorConfiguration;
  private final EditorMessageOwner myOwner = new EditorMessageOwner() {
  };

  private IntentionsSupport myIntentionsSupport;
  @SuppressWarnings({"UnusedDeclaration"})
  private AutoValidator myAutoValidator;
  private SearchPanel mySearchPanel = null;
  private BracesHighlighter myBracesHighlighter = new BracesHighlighter(this);
  private HighlightUsagesSupport myHighlightUsagesSupport;
  private final CompletionHelper myCompletionHelper = new CompletionHelper(this);

  private KeymapHandler<KeyEvent> myKeymapHandler = new AWTKeymapHandler();
  private ActionHandler myActionHandler = new ActionHandlerImpl(this);

  @NotNull
  private final EditorHighlighter myHighlighter = new EditorHighlighter(this);

  private EditorTooltipProvider myTooltipProvider = new DefaultTooltipProvider();

  @NotNull
  private final EditorComponentFocusTracker myFocusTracker = new EditorComponentFocusTracker(this);
  private final EditorComponentSettingsImpl myEditorComponentSettings;

  @Nullable
  private PlatformEditorEmulation myPlatformEditorEmulation;

  // true when conditions to send componentCreated event were met and the event has been sent
  private boolean myCreateNotified = false;

  public EditorComponent(@NotNull SRepository repository) {
    this(repository, EditorConfigurationBuilder.buildDefault());
  }

  protected EditorComponent(@NotNull SRepository repository, @NotNull EditorConfiguration configuration) {
    myEditorComponentSettings = new EditorComponentSettingsImpl(this);
    myRepository = repository;
    myEditorConfiguration = configuration;
    myReadOnly = myEditorConfiguration.readOnly;
    myCommandContext = createCommandContext();
    myUpdater = createUpdater(myCommandContext);
    // XXX NodeHighlightManager accesses myUpdater, not quite good for an incomplete this object (still in cons here)
    myHighlightManager = new NodeHighlightManager(this);

    setLayout(new EditorComponentLayoutManager(this));
    setEditorContext(null, repository);
    myRootCell = new EditorCell_Constant(getEditorContext(), null, "");
    myRootCell.setSelectable(false);

    if (configuration.showSelectionLine) {
      myAdditionalPainters.add(new SelectedLinePainter());
    }

    setFocusCycleRoot(true);
    final Supplier<Boolean> myIsInFiguresHierarchy = () -> myContainer != null && myContainer.isInFiguresHierarchy();
    setFocusTraversalPolicy(new FocusTraversalPolicy() {
      @Override
      public Component getComponentAfter(Container aContainer, Component aComponent) {
        if (myIsInFiguresHierarchy.get()) {
          executeComponentAction(CellActionType.NEXT);
        }
        return myIsInFiguresHierarchy.get() ? aContainer : null;
      }

      @Override
      public Component getComponentBefore(Container aContainer, Component aComponent) {
        if (myIsInFiguresHierarchy.get()) {
          executeComponentAction(CellActionType.PREV);
        }
        return myIsInFiguresHierarchy.get() ? aContainer : null;
      }

      @Override
      public Component getFirstComponent(Container aContainer) {
        return myIsInFiguresHierarchy.get() ? aContainer : null;
      }

      @Override
      public Component getLastComponent(Container aContainer) {
        return myIsInFiguresHierarchy.get() ? aContainer : null;
      }

      @Override
      public Component getDefaultComponent(Container aContainer) {
        return myIsInFiguresHierarchy.get() ? aContainer : null;
      }
    });
    setFocusTraversalKeysEnabled(false);

    setDoubleBuffered(true);

    myNodeSubstituteChooser = new NodeSubstituteChooser(this);

    // --- keyboard handling ---
    myKbdHandlersStack = new LinkedList<>();
    myKbdHandlersStack.push(new EditorComponentKeyboardHandler(myKeymapHandler));

    // XXX I wonder if these kb actions need a transition to IDEA actions, like Escape, Fold, Find, etc?
    registerKeyboardAction(new AbstractAction() {
      @Override
      public void actionPerformed(ActionEvent e) {
        goToNextErrorCell(false);
      }
    }, KeyStroke.getKeyStroke("F2"), WHEN_ANCESTOR_OF_FOCUSED_COMPONENT);

    registerKeyboardAction(new AbstractAction() {
      @Override
      public void actionPerformed(ActionEvent e) {
        goToNextErrorCell(true);
      }
    }, KeyStroke.getKeyStroke("shift F2"), WHEN_ANCESTOR_OF_FOCUSED_COMPONENT);

    registerKeyboardAction(new AbstractAction() {
      @Override
      public void actionPerformed(ActionEvent e) {
        goToNextHighlightedCell(false);
      }
    }, KeyStroke.getKeyStroke("F3"), WHEN_ANCESTOR_OF_FOCUSED_COMPONENT);

    registerKeyboardAction(new AbstractAction() {
      @Override
      public void actionPerformed(ActionEvent e) {
        goToNextHighlightedCell(true);
      }
    }, KeyStroke.getKeyStroke("shift F3"), WHEN_ANCESTOR_OF_FOCUSED_COMPONENT);

    addMouseListener(new MouseAdapter() {
      @Override
      public void mousePressed(final MouseEvent e) {
        if (areMouseEventsBlocked()) {
          return;
        }
        processMousePressed(e);
        maybeShowPopup(e);
      }

      @Override
      public void mouseReleased(MouseEvent e) {
        if (areMouseEventsBlocked()) {
          return;
        }
        maybeShowPopup(e);
      }

      private void maybeShowPopup(MouseEvent e) {
        if (e.isPopupTrigger()) {
          processPopupMenu(e);
        }
      }

      @Override
      public void mouseClicked(MouseEvent e) {
        if (areMouseEventsBlocked()) {
          return;
        }
        jetbrains.mps.openapi.editor.cells.EditorCell selectedCell = getSelectedCell();
        boolean inSelectedCell = selectedCell != null && myRootCell.findLeaf(e.getX(), e.getY()) == selectedCell;
        if (inSelectedCell) {
          Selection selection = getSelectionManager().getSelection();
          if (selection.canExecuteAction(CellActionType.CLICK)) {
            selection.executeAction(CellActionType.CLICK);
          } else if (e.getClickCount() == 2 && selectedCell instanceof EditorCell_Label) {
            ((EditorCell_Label) selectedCell).selectWordOrAll();
            repaintExternalComponent();
          }
        }
      }
    });

    addKeyListener(new KeyAdapter() {
      @Override
      public void keyPressed(final KeyEvent e) {
        processKeyPressed(e);
      }

      @Override
      public void keyTyped(KeyEvent e) {
        processKeyTyped(e);
      }

      @Override
      public void keyReleased(final KeyEvent e) {
        processKeyReleased(e);
      }
    });

    addFocusListener(new FocusListener() {
      @Override
      public void focusGained(FocusEvent e) {
        if (isDisposed()) {
          return;
        }
        setDefaultSelection();
        activateCaretBlinker();
      }

      @Override
      public void focusLost(FocusEvent e) {
        commitAllCellValues();
        deActivateCaretBlinker();
      }
    });

    myAutoValidator = new AutoValidator(this);
    attachListeners();
    enablePasteFromHistory();

    if (configuration.withUI) {
      createUI(configuration);
    }

    if (hasUI()) {
      // Platform Editor emulation allows one to reuse the smart tooltips from the platform.
      // TODO find a way to create good tooltips without implementing platform's Editor interface
      // this should be done with the issue https://youtrack.jetbrains.com/issue/MPSSPRT-295
      myPlatformEditorEmulation = new PlatformEditorEmulation(this);
      myPlatformEditorEmulation.installListeners(this);
      myPlatformEditorEmulation.installListeners(myLeftHighlighter);
    }
  }

  @Nullable
  protected EditorTooltipProvider getTooltipProvider() {
    return myTooltipProvider;
  }

  public void setTooltipProvider(EditorTooltipProvider tooltipProvider) {
    myTooltipProvider = tooltipProvider;
  }

  private class DefaultTooltipProvider implements EditorTooltipProvider {

    jetbrains.mps.openapi.editor.cells.EditorCell myLastCellUnderMouse;
    private final TooltipGroup MPS_EDITOR_TOOLTIP_GROUP = new TooltipGroup("MPS_EDITOR_TOOLTIP_GROUP", 0);

    @Override
    public TooltipGroup getTooltipGroup() {
      return MPS_EDITOR_TOOLTIP_GROUP;
    }

    @Override
    public TooltipRenderer getTooltipRenderer(MouseEvent e) {
      jetbrains.mps.openapi.editor.cells.EditorCell cell = getCellAtPoint(e.getPoint());
      if (cell != myLastCellUnderMouse) {
        TooltipController.getInstance().cancelTooltip(MPS_EDITOR_TOOLTIP_GROUP, e, true);
        myLastCellUnderMouse = cell;
      }

      List<EditorMessageWithTarget> messages = getEditorMessagesFor(cell);
      if (cell == null || messages.isEmpty()) {
        TooltipController.getInstance().cancelTooltip(MPS_EDITOR_TOOLTIP_GROUP, null, false);
        return null;
      }
      
      return getTooltipRenderer(messages);
    }

    @Override
    public TooltipRenderer getTooltipRenderer(List<? extends SimpleEditorMessage> messages) {
      LineTooltipRenderer bigRenderer = null;
      //do not show same tooltip twice
      Set<String> tooltips = null;

      for (ListIterator<? extends SimpleEditorMessage> it = messages.listIterator(messages.size()); it.hasPrevious(); ) {
        final String text = it.previous().getFormattedMessage();
        if (text == null || text.isEmpty()) {
          continue;
        }
        if (tooltips == null) {
          tooltips = new THashSet<>();
        }
        if (tooltips.add(text)) {
          if (bigRenderer == null) {
            bigRenderer = new LineTooltipRenderer(text, new Object[]{messages});
          } else {
            bigRenderer.addBelow(text);
          }
        }
      }
      return bigRenderer;
    }


    @Override
    public Position getPreferredPosition() {
      return Balloon.Position.atRight;
    }
  }

  // TODO:
  // - extract all UI-free common logic into a super-class (AbstractEditorComponent)
  // - let HeadlessEditorComponent extend AbstractEditorComponent
  // - make this method again a part of constructor for this class
  private void createUI(EditorConfiguration editorConfiguration) {
    MyScrollBar verticalScrollBar = new MyScrollBar(Adjustable.VERTICAL);

    myScrollPane = createScrollPane();
    if (editorConfiguration.rightToLeft) {
      myScrollPane.putClientProperty(JBScrollPane.Flip.class, Flip.HORIZONTAL);
    }
    myScrollPane.setVerticalScrollBarPolicy(JScrollPane.VERTICAL_SCROLLBAR_ALWAYS);
    myScrollPane.setVerticalScrollBar(verticalScrollBar);
    myScrollPane.setHorizontalScrollBarPolicy(JScrollPane.HORIZONTAL_SCROLLBAR_AS_NEEDED);
    myScrollPane.setViewportView(this);
    myScrollPane.getViewport().addChangeListener(new ChangeListener() {

      @Override
      public void stateChanged(ChangeEvent e) {
        if (!getNodeSubstituteChooser().isVisible()) {
          return;
        }
        Point point = getNodeSubstituteChooser().calcPatternEditorLocation();
        if (point == null) {
          return;
        }
        Rectangle viewRect = getViewport().getViewRect();
        if (isInsideEditor(point, viewRect)) {
          getNodeSubstituteChooser().moveToContextCell();
        } else {
          deactivateSubstituteChooser();
        }
      }

      private boolean isInsideEditor(Point point, Rectangle viewRect) {
        return isShowing() && point != null
               && point.getX() >= 0 && point.getX() <= getLocationOnScreen().getX() + viewRect.getX() + viewRect.getWidth()
               && point.getY() >= 0 &&
               point.getY() <= getLocationOnScreen().getY() + viewRect.getY() + viewRect.getHeight() + myScrollPane.getHorizontalScrollBar().getHeight();
      }
    });

    myContainer = new EditorComponentDecoration();

    myContainer.getMessagePanel().init(this); // FIXME this one is ugly, eventually ECD would be responsibility of Project-aware code.
    myContainer.addMainView(myScrollPane);

    myMessagesGutter = new MessagesGutter(this, editorConfiguration.rightToLeft);
    if (editorConfiguration.showErrorsGutter) {
      verticalScrollBar.setPersistentUI(myMessagesGutter);
    } else {
      verticalScrollBar.setPersistentUI(new ButtonlessScrollBarUI() {
        @Override
        public boolean alwaysShowTrack() {
          return true;
        }
      });
    }
    myLeftHighlighter = new LeftEditorHighlighter(this, editorConfiguration.rightToLeft);
    if (editorConfiguration.showLeftHighlighter) {
      myLeftHighlighter.addMouseListener(new MouseAdapter() {
        @Override
        public void mousePressed(MouseEvent e) {
          for (LeftMarginMouseListener listener : new ArrayList<>(myLeftMarginPressListeners)) {
            listener.mousePressed(e, EditorComponent.this);
          }
        }

        @Override
        public void mouseReleased(MouseEvent e) {
          for (LeftMarginMouseListener listener : new ArrayList<>(myLeftMarginPressListeners)) {
            listener.mouseReleased(e, EditorComponent.this);
          }
        }

        @Override
        public void mouseClicked(MouseEvent e) {
          for (LeftMarginMouseListener listener : new ArrayList<>(myLeftMarginPressListeners)) {
            listener.mouseClicked(e, EditorComponent.this);
          }
        }
      });
      myScrollPane.setRowHeaderView(myLeftHighlighter);
    }

    myIntentionsSupport = new IntentionsSupport(this);
    refreshHighlighter();

    getSelectionManager().addSelectionListener((editorComponent, oldSelection, newSelection) -> {
      if (oldSelection == newSelection) {
        if (myNodeSubstituteChooser.isVisible()) {
          myNodeSubstituteChooser.selectionChanged();
        }
        return;
      }
      deactivateSubstituteChooser();
      updateStatusBarMessage();

      if (oldSelection != null) {
        for (jetbrains.mps.openapi.editor.cells.EditorCell editorCell : oldSelection.getSelectedCells()) {
          repaint(editorCell);
        }
      }
      if (newSelection != null) {
        for (jetbrains.mps.openapi.editor.cells.EditorCell editorCell : newSelection.getSelectedCells()) {
          repaint(editorCell);
        }
      }
      if (myHighlightUsagesSupport != null) {
        myHighlightUsagesSupport.selectionChanged(newSelection);
      }
      myLeftHighlighter.selectionChanged();
      myLeftHighlighter.repaint();
    });
    new ReferenceUnderliner(this);

    UISettings.setupEditorAntialiasing(this);
  }


  protected JScrollPane createScrollPane() {
    return new FontSizeChangingScrollPane();
  }

  public PlatformEditorEmulation getPlatformEditorEmulation() {
    return myPlatformEditorEmulation;
  }

  public JScrollPane getScrollPane() {
    assert hasUI();
    return myScrollPane;
  }

  /**
   * This method is made public, so we can update this editor's font size using
   * an event happened in another editor.
   */
  public void processChangeFontSizeEvent(MouseWheelEvent e) {
    assert EditorUtil.isChangeFontSize(e);
    if (!EditorSettingsExternalizable.getInstance().isWheelFontChangeEnabled()) {
      return;
    }
    if (e.getWheelRotation() < 0) {
      myEditorComponentSettings.increaseUIScale();
    } else {
      myEditorComponentSettings.decreaseUIScale();
    }
    mySettingsListener.settingsChanged();
  }

  private final class FontSizeChangingScrollPane extends JBScrollPane {

    private static final int MIN_FONT_SIZE = 8;

    @Override
    protected void processMouseWheelEvent(MouseWheelEvent e) {
      if (EditorUtil.isChangeFontSize(e)) {
        processChangeFontSizeEvent(e);
      }
      // a super method should always be invoked in order to notify other listeners.
      super.processMouseWheelEvent(e);
    }
  }

  @Override
  public EditorComponentSettings getEditorComponentSettings() {
    return myEditorComponentSettings;
  }

  @Override
  public StyleRegistry getStyleRegistry() {
    // FIXME provisional implementation. Now we focus on replacing singleton access with this method.
    // Next, we change the way instance is obtained, either through ComponentHost or, perhaps, with a "snapshot" copy?
    return StyleRegistry.getInstance();
  }

  boolean hasUI() {
    return myEditorConfiguration.withUI;
  }

  private void enablePasteFromHistory() {
    // Registering DefaultEditorKit.pasteAction in the action map enables 'Paste from History'
    getActionMap().put(DefaultEditorKit.pasteAction, new AbstractAction() {
      @Override
      public void actionPerformed(ActionEvent e) {
        performPaste();
      }
    });
  }

  protected UpdaterImpl createUpdater(CommandContextImpl commandContext) {
    return new UpdaterImpl(this, commandContext);
  }

  protected CommandContextImpl createCommandContext() {
    return new CommandContextImpl(this);
  }

  protected void attachListeners() {
    EditorSettings.getInstance().addEditorSettingsListener(mySettingsListener);
  }

  protected void notifyCreation() {
    // FIXME This notification doesn't seem to be responsibility of this base class, rather
    //       of the subclass dedicated to IDE editors. OTOH, the contract of EditorComponentCreateListener
    //       doesn't tell exactly what kind of EC notifies about their creation. Moreover, I think it should
    //       be code *external* to EC to send out IDEA project-related notifications.
    //       FWIW, I don't understand commit f1c88fba (therefore, don't agree), and think IDE-editor related
    //       subclass shall send out events and this base class shall not care at all, even about notifiesCreation().
    //       Check UIEditorComponent subclass uses. While UIEditorComponent doesn't send these notifications,
    //       InspectorEditorComponent it receives as argument does. Now, with EditorConfiguration.notifyCreateDispose,
    //       we fixed this issue, but generally it's better to keep this notification outside of EC.
    //   Update: EditorComponentTrackService moves notification outside of [editor-runtime] to [mps-editor] (platform
    //   integration code). Still, I feel this method should be in a dedicated subclass rather that in generic component.
    jetbrains.mps.project.Project project = ProjectHelper.getProject(myRepository);
    if (project == null) {
      return;
    }
    final EditorComponentTrackService ecTracker = project.getComponent(EditorComponentTrackService.class);
    if (ecTracker != null) {
      ecTracker.editorComponentCreated(project, this);
    }
  }

  protected void notifyDisposal() {
    jetbrains.mps.project.Project project = ProjectHelper.getProject(myRepository);
    if (project == null) {
      return;
    }
    if (project.isDisposed()) {
      LOG.error("Trying to notify disposal of EditorComponent related to disposed project. This may cause memory leaks.");
      return;
    }
    final EditorComponentTrackService ecTracker = project.getComponent(EditorComponentTrackService.class);
    if (ecTracker != null) {
      ecTracker.editorComponentDisposed(project, this);
    }
  }

  private void notifyNodeChange(SNode oldValue, SNode newValue) {
    if (oldValue == newValue) {
      return; // don't see a reason to trigger an update, although there's no such logic before my changes.
    }
    jetbrains.mps.project.Project project = ProjectHelper.getProject(myRepository);
    if (project == null) {
      return;
    }
    final EditorComponentTrackService ecTracker = project.getComponent(EditorComponentTrackService.class);
    if (ecTracker != null) {
      ecTracker.editorComponentNodeChanged(project, this, oldValue, newValue);
    }
  }

  public boolean onEscape() {
    return false;
  }

  public int getShiftX() {
    return myShiftX;
  }

  public JViewport getViewport() {
    return getScrollPane().getViewport();
  }

  public int getHorizontalScrollBarOffset() {
    JScrollBar bar = getScrollPane().getHorizontalScrollBar();
    return bar != null && bar.isVisible() ? bar.getPreferredSize().height : 0;
  }

  public int getScrollPaneOffset() {
    // XXX likely need to move whole method into EditorComponentDecoration
    int offset = 0;
    if (isSearchPanelVisible()) {
      offset += mySearchPanel.getPreferredSize().height;
    }
    if (hasUI()) {
      offset += myContainer.getMessagePanelHeight();
    }
    return offset;
  }

  Point getViewPosition() {
    return hasUI() ? getViewport().getViewPosition() : new Point(0, 0);
  }

  void setViewPosition(Point point) {
    if (!hasUI()) {
      return;
    }
    getViewport().setViewPosition(point);
  }


  /**
   * use {@code getScrollPane().getVerticalScrollBar()} if utterly necessary
   */
  @Deprecated(since = "2022.3", forRemoval = true)
  @NotNull
  public JScrollBar getVerticalScrollBar() {
    return getScrollPane().getVerticalScrollBar();
  }

  @Override
  public SNode getSelectedNode() {
    jetbrains.mps.openapi.editor.cells.EditorCell selectedCell = getSelectedCell();
    if (selectedCell == null) {
      return null;
    }
    return selectedCell.getSNode();
  }

  @Override
  public List<SNode> getSelectedNodes() {
    Selection selection = mySelectionManager.getSelection();
    return selection != null ? selection.getSelectedNodes() : Collections.emptyList();
  }

  public String[] getEditorHintsForNode(SNode node) {
    jetbrains.mps.openapi.editor.cells.EditorCell nodeCell = findNodeCell(node);
    if (nodeCell != null) {
      EditorCellContext cellContext = nodeCell.getCellContext();
      if (cellContext == null) {
        return null;
      }
      final Collection<String> nodeContextHints = cellContext.getHints();
      return nodeContextHints.toArray(new String[0]);
    }
    return null;
  }

  public EditorMessageOwner getHighlightMessagesOwner() {
    return myOwner;
  }

  private void goToNextErrorCell(boolean backwards) {
    if (getSelectedCell() == null) {
      return;
    }
    new CellNavigator(this) {
      @Override
      boolean isSuitableCell(jetbrains.mps.openapi.editor.cells.EditorCell cell) {
        return CellMessagesUtil.hasErrorMessages(cell);

      }
    }.goToNextCell(backwards);
  }

  private void goToNextHighlightedCell(boolean backwards) {
    if (getSelectedCell() == null) {
      return;
    }
    new CellNavigator(this) {
      @Override
      boolean isSuitableCell(jetbrains.mps.openapi.editor.cells.EditorCell cell) {
        for (SimpleEditorMessage m : getHighlightManager().getMessagesFor(cell.getSNode())) {
          if (m.getOwner() == getHighlightMessagesOwner()) {
            return true;
          }
        }
        return false;
      }
    }.goToNextCell(backwards);
  }

  @Override
  public SNode getEditedNode() {
    return myNode;
  }

  @Override
  public void touch() {
  }

  @Override
  public SNodeReference getEditedNodePointer() {
    return myNodePointer;
  }

  @Override
  public String getToolTipText(MouseEvent event) {
    if (getTooltipProvider() != null) {
      return null;
    }
    final Reference<String> rv = new Reference<>(null);
    getModelAccess().runReadAction(new CancellableReadAction() {
      @Override
      protected void execute() {
        if (isDisposed()) {
          return;
        }

        jetbrains.mps.openapi.editor.cells.EditorCell cell = myRootCell.findLeaf(event.getX(), event.getY());
        if (cell == null) {
          return;
        }
        if (isCancelRequested()) {
          confirmCancel();
          return;
        }
        String text = getMessagesTextFor(cell);
        rv.set(text);
      }
    });
    return rv.get();
  }

  @Override
  public Point getToolTipLocation(final MouseEvent event) {
    final Reference<Point> rv = new Reference<>(null);
    getModelAccess().runReadAction(new CancellableReadAction() {
      @Override
      protected void execute() {
        if (isDisposed()) {
          return;
        }

        jetbrains.mps.openapi.editor.cells.EditorCell cell = myRootCell.findLeaf(event.getX(), event.getY());
        if (cell == null) {
          return;
        }
        if (isCancelRequested()) {
          confirmCancel();
          return;
        }
        if (getMessagesTextFor(cell) != null) {
          rv.set(new Point(event.getX(), event.getY()));
        }
      }
    });
    return rv.get();
  }

  @Override
  public boolean isFocusOwner() {
    // intentional override of JComponent method to facilitate split of EC and JComponent
    // Once split, review usages and decide whether need to expose the method in API
    return super.isFocusOwner();
  }

  /**
   * @deprecated use {@link #isFocusOwner()}
   */
  @Deprecated(forRemoval = true)
  @Override
  public boolean hasFocus() {
    // intentional override of JComponent method to facilitate split of EC and JComponent
    // keep this method for couple of releases (once EC no longer extends JComponent), then remove
    return super.hasFocus();
  }

  @Override
  public Color getBackground() {
    // intentional override of JComponent method to facilitate split of EC and JComponent
    // review uses and decide whether the method has to be part of this class API, EC API or cease to exist
    return getStyleRegistry().getEditorBackground();
  }

  /**
   * @deprecated don't assume {@code EditorComponent} is {@link JComponent}
   */
  @Deprecated(forRemoval = true)
  @Override
  public int getWidth() {
    // intentional override of JComponent method to facilitate split of EC and JComponent
    return super.getWidth();
  }

  /**
   * @deprecated don't assume {@code EditorComponent} is {@link JComponent}
   */
  @Deprecated(forRemoval = true)
  @Override
  public int getHeight() {
    // intentional override of JComponent method to facilitate split of EC and JComponent
    return super.getHeight();
  }

  private jetbrains.mps.openapi.editor.cells.EditorCell getCellAtPoint(Point point) {
    final Reference<jetbrains.mps.openapi.editor.cells.EditorCell> rv = new Reference<>(null);
    getModelAccess().runReadAction(new CancellableReadAction() {
      @Override
      protected void execute() {
        if (isDisposed()) {
          return;
        }
        jetbrains.mps.openapi.editor.cells.EditorCell cell = myRootCell.findLeaf(point.x, point.y);
        rv.set(cell);
      }
    });
    return rv.get();
  }


  public void updateStatusBarMessage() {
    if (!isFocusOwner()) {
      return;
    }
    getModelAccess().runReadInEDT(() -> {
      if (!isFocusOwner() || getCurrentProject() == null || isProjectDisposed()) {
        return;
      }

      jetbrains.mps.openapi.editor.cells.EditorCell selection = getSelectedCell();
      String info = "";
      if (selection != null) {
        HighlighterMessage message = getHighlighterMessageFor(selection);
        if (message != null) {
          info = message.getMessage();
        }
      }

      jetbrains.mps.project.Project project = getCurrentProject();
      IdeFrame ideFrame = WindowManager.getInstance().getIdeFrame(ProjectHelper.toIdeaProject(project));
      StatusBarEx statusBar = (StatusBarEx) ideFrame.getStatusBar();

      //current info is significant or the editor removes its own message
      if (!info.isEmpty() || myLastWrittenStatus.equals(statusBar.getInfo())) {
        statusBar.setInfo(info);
        if (!info.isEmpty()) {
          myLastWrittenStatus = info;
        }
      }
    });
  }

  public String getMessagesTextFor(jetbrains.mps.openapi.editor.cells.EditorCell cell) {
    List<EditorMessageWithTarget> messages = getEditorMessagesFor(cell);
    if (messages.isEmpty()) {
      return null;
    }
    StringBuilder result = new StringBuilder();
    SimpleEditorMessage prevMessage = null;
    for (var it = messages.listIterator(messages.size()); it.hasPrevious(); ) {
      SimpleEditorMessage message = it.previous();
      String formattedMessage = message.getFormattedMessage();
      if (!formattedMessage.isBlank()) {
        if (prevMessage != null && prevMessage.getClass() != message.getClass()) {
          result.append(UIUtil.BORDER_LINE).append(UIUtil.BR);
        }
        result.append(formattedMessage);
        result.append("<br/>");
        prevMessage = message;
      }
    }
    return result.toString();
  }

  @NotNull
  private List<EditorMessageWithTarget> getEditorMessagesFor(jetbrains.mps.openapi.editor.cells.EditorCell cell) {
    jetbrains.mps.openapi.editor.cells.EditorCell parent = cell;
    List<EditorMessageWithTarget> messages = new ArrayList<>();
    while (parent != null) {
      if (cell.getBottom() < parent.getBottom() && parent.getSNode() != cell.getSNode()) {
        // HighlighterMessage instances should display a tooltip for the bottom line only if the collection
        // of cells consists of several lines. this part was removed by 97b7fdbeb0c0032ebe385482023bd515a671fe01, now it's back
        return messages;
      }
      messages.addAll(CellMessagesUtil.getMessages(parent, EditorMessageWithTarget.class));
      parent = parent.getParent();
    }
    return messages;
  }

  @NotNull
  private List<HighlighterMessage> getHighlighterMessagesFor(jetbrains.mps.openapi.editor.cells.EditorCell cell) {
    return getEditorMessagesFor(cell).stream().filter(message -> message instanceof HighlighterMessage).map(message -> (HighlighterMessage) message).collect(
        Collectors.toList());
  }

  private HighlighterMessage getHighlighterMessageFor(jetbrains.mps.openapi.editor.cells.EditorCell cell) {
    List<HighlighterMessage> messages = getHighlighterMessagesFor(cell);
    ListIterator<HighlighterMessage> it = messages.listIterator(messages.size());
    return it.hasPrevious() ? it.previous() : null;
  }

  /*
    sorted by severity, from lower to high
   */
  public Collection<IssueKindReportItem> getReportItemsForCell(jetbrains.mps.openapi.editor.cells.EditorCell cell) {
    List<HighlighterMessage> messages = getHighlighterMessagesFor(cell);
    return messages.stream().map(HighlighterMessage::getReportItem).collect(Collectors.toList());
  }

  /**
   * @deprecated unused, replaced with {@link EditorConfiguration#notifyCreateDispose}.
   *             I'd like to make it final as a heads-up for potential overrides, but can't due to use in mbeddr
   */
  @Deprecated(forRemoval = true, since = "2022.3")
  protected boolean notifiesCreation() {
    return false;
  }

  public synchronized void editNode(final SNode node) {
    if (isDisposed()) {
      return;
    }
    myEditorComponentSettings.reset();
    clearModelDisposedTrace();
    if (hasUI()) {
      myContainer.getMessagePanel().clearAndHide();
    }

    getModelAccess().runReadAction(() -> {
      if (node != null) {
        assert node.getModel() != null : "Can't edit a node that is not registered in a model";
        assert SNodeUtil.isAccessible(node, myRepository) :
            String.format("editNode() accepts nodes from editor's associated repository only (expects repository: %s, node's model: %s, from repository: %s)", myRepository, node.getModel(), node.getModel().getRepository());
      }

      // respect notifiesCreation() for the sake of mbeddr.SPreferencesEditorComponent (until it migrates to 22.3)
      final boolean notifyCreateDispose = myEditorConfiguration.notifyCreateDispose || notifiesCreation();
      final SNode originalNode = myNode;

      final boolean needNewTypecheckingSession = updateContainingRoot(node);
      if (needNewTypecheckingSession) {
        releaseTypecheckingSession(false);
      }

      myNode = node;
      if (myNode != null) {
        myNodePointer = myNode.getReference();
        SModel model = node.getModel();
        assert model != null : "Can't edit a node that is not registered in a model";
        setEditorContext(model, myRepository);
        myReadOnly = myEditorConfiguration.readOnly || model.isReadOnly();
      } else {
        myNodePointer = null;
        setEditorContext(null, myRepository);
        myReadOnly = true;
      }
      myCommandContext.updateContextNode();

      if (needNewTypecheckingSession) {
        requestTypecheckingSession();
      }

      rebuildEditorIgnoreViewport();
      if (hasUI()) {
        scrollToTopLeft();
        refreshContentHighlighter();
      }

      if (notifyCreateDispose) {
        if (!myCreateNotified) {
          notifyCreation();
          myCreateNotified = true;
        }
        assert myCreateNotified;
        notifyNodeChange(originalNode, myNode);
      }
    });
  }

  protected synchronized void requestTypecheckingSession() {
    if (myNode != null) {
      SNode nodeForTypechecking = getNodeForTypechecking();
      if (nodeForTypechecking != null) {
        Flags flags = Flags.forRoot(nodeForTypechecking).incremental();
        // paranoid check: DataManager fails if no Application instance is set
        if (ApplicationManager.getApplication() != null) {
          jetbrains.mps.project.Project project = getCurrentProject();
          if (project != null) {
            flags = flags.withParameters(TypecheckingFacade.getFromContext().configure(project));
          }
        }
        myTypecheckingSessionHandle = TypecheckingFacade
            .getFromContext()
            .requestNewSession(flags);
      }
    }
  }

  protected synchronized void releaseTypecheckingSession(boolean invalidate) {
    Handle handle = myTypecheckingSessionHandle;
    myTypecheckingSessionHandle = null;
    if (handle != null) {
      if (invalidate) {
        handle.invalidateAndRelease();

      } else {
        handle.release();
      }
    }
  }

  public void addAdditionalPainter(AdditionalPainter additionalPainter) {
    synchronized (myAdditionalPaintersLock) {
      if (!myAdditionalPainters.contains(additionalPainter)) {
        myAdditionalPainters.add(additionalPainter);
        myItemsToAdditionalPainters.put(additionalPainter.getItem(), additionalPainter);
        additionalPainter.afterAdding(this);
      }
    }
  }

  public void removeAdditionalPainter(AdditionalPainter additionalPainter) {
    synchronized (myAdditionalPaintersLock) {
      if (myAdditionalPainters.contains(additionalPainter)) {
        additionalPainter.beforeRemoval(this);
        myAdditionalPainters.remove(additionalPainter);
        myItemsToAdditionalPainters.remove(additionalPainter.getItem());
      }
    }
  }

  public void removeAdditionalPainterByItem(Object item) {
    synchronized (myAdditionalPaintersLock) {
      AdditionalPainter additionalPainter = myItemsToAdditionalPainters.get(item);
      if (additionalPainter != null) {
        additionalPainter.beforeRemoval(this);
        myItemsToAdditionalPainters.remove(item);
        myAdditionalPainters.remove(additionalPainter);
      }
    }
  }

  public Color getAdditionalCellFontColor(@NotNull EditorCell_Label cell) {
    synchronized (myAdditionalPaintersLock) {
      for (AdditionalPainter additionalPainter : myAdditionalPainters) {
        Rectangle coverageArea = additionalPainter.getCoverageArea(this);
        if (coverageArea != null) {
          if (coverageArea.contains(cell.getX(), cell.getY(), cell.getWidth(), cell.getHeight())) {
            Color color = additionalPainter.getCellsFontColor(cell);
            if (color != null) {
              return color;
            }
          }
        }
      }
      return null;
    }
  }

  public AdditionalPainter getAdditionalPainterByItem(Object item) {
    synchronized (myAdditionalPaintersLock) {
      return myItemsToAdditionalPainters.get(item);
    }
  }

  public List<AdditionalPainter> getAdditionalPainters() {
    List<AdditionalPainter> result;
    synchronized (myAdditionalPaintersLock) {
      result = new ArrayList<>(myAdditionalPainters);
    }
    return result;
  }

  // TODO pool this method up to NodeEditorComponent
  @NotNull
  public MessagesGutter getMessagesGutter() {
    assert hasUI();
    return myMessagesGutter;
  }

  @NotNull
  public LeftEditorHighlighter getLeftEditorHighlighter() {
    assert hasUI();
    return myLeftHighlighter;
  }

  /**
   * @deprecated don't use outside of MPS implementation, it's impl detail not to be dependent of;
   *             clients shall interact with the search panel through CellActionType.FINDxxx
   */
  @NotNull
  @Deprecated(since = "2022.3")
  public SearchPanel getSearchPanel() {
    // FIXME seems that need to introduce an abstraction of SearchPanel, like EditorInspector, with no ties to Swing or
    //  [mps-ui].AbstractSearchPanel
    assert hasUI();
    if (mySearchPanel == null) {
      mySearchPanel = new SearchPanel(this);
    }
    return mySearchPanel;
  }

  /**
   * @deprecated just to discourage its uses outside of MPS implementation
   */
  @Deprecated(since = "2022.3")
  public boolean isSearchPanelVisible() {
    // FIXME there's 1 suspicious use in [mps-workbench], PasteNode_Action.
    //       perhaps, has to be not just isVisible, but also isTextFieldFocused(), i.e. rather "isInSearchPanel" condition.
    //       Anyway, PaseNode_Action shall definitely not use the method directly (some CellActionType, perhaps?)
    return mySearchPanel != null && mySearchPanel.isVisible();
  }

  /**
   * @deprecated please justify exposure of internal UI element structure.
   *             seems to be poorly designed API with single intended usecase (SearchPanel), therefore not actively employed.
   *             there are no uses in MPS or mbeddr, remove once 2022.3 is out.
   */
  @Deprecated(since = "2022.3", forRemoval = true)
  public JPanel getUpperPanel() {
    assert hasUI();
    return myContainer.getUpperPanel();
  }

  /**
   * @deprecated see {@link #getUpperPanel()} for explanation
   */
  @Deprecated(since = "2022.3", forRemoval = true)
  public void addUpperComponent(JComponent component) {
    addUpperComponent(component, null);
  }

  /**
   * @deprecated see {@link #getUpperPanel()} for explanation
   *             moreover, due to defect in {@link #removeUpperComponent(JComponent)}, there was a memory leak
   *             that never cleared components added with id.
   */
  @Deprecated(since = "2022.3", forRemoval = true)
  public void addUpperComponent(JComponent component, String id) {
    assert hasUI();
    myContainer.addTopPanel(component, id);
  }

  /**
   * @deprecated see {@link #getUpperPanel()} for explanation
   */
  @Deprecated(since = "2022.3", forRemoval = true)
  public void removeUpperComponent(JComponent component) {
    assert hasUI();
    myContainer.removeTopPanel(component);
  }

  /**
   * @deprecated see {@link #getUpperPanel()} for explanation
   */
  @Deprecated(since = "2022.3", forRemoval = true)
  public void removeUpperComponent(String id) {
    assert hasUI();
    myContainer.removeTopPanel(id);
  }

  protected Set<SimpleEditorMessage> getMessages() {
    return new LinkedHashSet<>(myHighlightManager.getMessages());
  }

  private EditorCell_WithComponent findCellForComponent(Component component, jetbrains.mps.openapi.editor.cells.EditorCell root) {
    if (root instanceof EditorCell_WithComponent && ((EditorCell_WithComponent) root).getComponent() == component) {
      return (EditorCell_WithComponent) root;
    }

    if (root instanceof EditorCell_Collection) {
      EditorCell_Collection collection = (EditorCell_Collection) root;
      for (jetbrains.mps.openapi.editor.cells.EditorCell cell : collection) {
        EditorCell_WithComponent result = findCellForComponent(component, cell);
        if (result != null) {
          return result;
        }
      }
    }

    return null;
  }

  private void processPopupMenu(final MouseEvent e) {
    if (!myEditorConfiguration.hasContextMenu) {
      return;
    }
    showPopupMenu(e);
  }

  private void showPopupMenu(MouseEvent e) {
    ActionGroup baseGroup = ActionUtils.getDefaultGroup(myDefaultPopupGroupId);
    if (baseGroup == null) {
      return;
    }

    baseGroup.setPopup(false);

    DefaultActionGroup group = ActionUtils.groupFromActions(
        baseGroup,
        new Separator(),
        getCellActionsGroup()
    );

    JPopupMenu popupMenu = ActionManager.getInstance().createActionPopupMenu(ActionPlaces.EDITOR_POPUP, group).getComponent();
    popupMenu.show(EditorComponent.this, e.getX(), e.getY());
    e.consume();
  }

  protected String getDefaultPopupGroupId() {
    return myDefaultPopupGroupId;
  }

  protected void setDefaultPopupGroupId(String id) {
    myDefaultPopupGroupId = id;
  }

  private DefaultActionGroup getCellActionsGroup() {
    DefaultActionGroup result = new DefaultActionGroup("Cell actions", true);
    result.setPopup(false);
    jetbrains.mps.openapi.editor.cells.EditorCell cell = getSelectedCell();

    // Action code is given an EditorContext which contains SNode. Guard it with model read.
    EditorContext editorContext = createEditorContextForActions();
    Collection<KeyMapAction> registeredActions = myKeymapHandler.getRegisteredActions(cell, editorContext,
                                                                                      action -> action.isShownInPopupMenu() && action.canExecute(editorContext));
    for (final KeyMapAction action : registeredActions) {
      try {
        BaseAction mpsAction = new MyBaseAction(action, editorContext);
        mpsAction.addPlace(ActionPlace.EDITOR);
        result.add(mpsAction);
      } catch (Throwable t) {
        LOG.error(t);
      }
    }

    return result;
  }

  private EditorContext createEditorContextForActions() {
    return new EditorContext(this, getEditedNode() != null ? getEditedNode().getModel() : null, myRepository, myEditorConfiguration,
                             new DisabledContextAssistantManager());
  }

  @NotNull
  public JComponent getExternalComponent() {
    assert hasUI();
    return myContainer;
  }

  public void repaintExternalComponent() {
    if (!hasUI()) {
      return;
    }
    getExternalComponent().repaint();
  }

  public void validateExternalComponent() {
    if (!hasUI()) {
      return;
    }
    getExternalComponent().validate();
  }

  @NotNull
  @Override
  public EditorContext getEditorContext() {
// TODO: uncomment this assertion. Was commented out because this method is called indirectly from the dispose() method (failing tests).
//    assert !isDisposed();
    return myEditorContext;
  }

  @NotNull
  protected EditorConfiguration getEditorConfiguration() {
    return myEditorConfiguration;
  }

  @NotNull
  protected SRepository getRepository() {
    return myRepository;
  }

  /**
   * Creating a cell representing empty editor content. Empty means editor has no node (getEditedNode() == null)
   * or currently editing node is not within a model (getEditedNode().getModel() == null)
   *
   * @return new EditorCell
   */
  public jetbrains.mps.openapi.editor.cells.EditorCell createEmptyCell() {
    return new EditorCell_Constant(getEditorContext(), getEditedNode(), getEditedNode() == null ? "<no node>" : "<node is not inside a model>");
  }

  public void setCollapseState(jetbrains.mps.openapi.editor.cells.EditorCell cell, Boolean collapsed) {
    if (collapsed == null) {
      resetCollapseState(cell);
    } else {
      myCollapseStates.put(cell, collapsed);
    }
    if (myHighlightUsagesSupport != null) {
      myHighlightUsagesSupport.selectionChanged(mySelectionManager.getSelection(), 0);
    }
    for (AdditionalPainter painter : getAdditionalPainters()) {
      painter.onUpdate(this);
    }
  }

  public void resetCollapseState(jetbrains.mps.openapi.editor.cells.EditorCell cell) {
    myCollapseStates.remove(cell);
  }

  public List<Pair<jetbrains.mps.openapi.editor.cells.EditorCell, Boolean>> getCollapseStates() {
    List<Pair<jetbrains.mps.openapi.editor.cells.EditorCell, Boolean>> result = new ArrayList<>();
    for (Entry<jetbrains.mps.openapi.editor.cells.EditorCell, Boolean> collapseState : myCollapseStates.entrySet()) {
      result.add(new Pair<>(collapseState.getKey(), collapseState.getValue()));
    }
    return result;
  }

  public void setBracesEnabled(EditorCell cell, boolean enabled) {
    if (enabled) {
      myBracesEnabledCells.add(cell);
    } else {
      myBracesEnabledCells.remove(cell);
    }
  }

  public Set<EditorCell> getBracesEnabledCells() {
    return new HashSet<>(myBracesEnabledCells);
  }

  void clearBracesEnabledCells() {
    myBracesEnabledCells.clear();
  }

  @Override
  public void dispose() {
    assertInEDT();
    if (myDisposed) {
      throw new IllegalStateException(myDisposedTrace);
    }
    if (myCreateNotified) {
      notifyDisposal();
      myCreateNotified = false; // not needed, just like to be pedantic
    }
    if (myPlatformEditorEmulation != null) {
      myPlatformEditorEmulation.uninstallListeners(this);
      myPlatformEditorEmulation.uninstallListeners(getLeftEditorHighlighter());
      myPlatformEditorEmulation.release();
    }
    fireEditorWillBeDisposed();
    myDisposed = true;
    myDisposedTrace = new Throwable("Editor was disposed by: ");

    releaseTypecheckingSession(false);

    myHighlightManager.dispose();

    detachListeners();
    // we expect this method to be executed at least inside model read
    // TODO: add assertion here
    myAutoValidator.dispose();
    myUpdater.dispose();

    if (hasUI()) {
      myLeftHighlighter.dispose();
      myMessagesGutter.dispose();
    }

    if (myNodeSubstituteChooser != null) {
      myNodeSubstituteChooser.dispose();
    }
    if (myEditorContext != null) {
      // there's no 'dispose()', but reset clears all we care about
      myEditorContext.reset();
    }
    if (myRootCell != null) {
      ((EditorCell_Basic) myRootCell).onRemove();
      myRootCell = null;
    }
    mySelectionManager.dispose();

    myLeftMarginPressListeners.clear();

    myFocusTracker.dispose();
  }

  protected void detachListeners() {
    EditorSettings.getInstance().removeEditorSettingsListener(mySettingsListener);
  }

  public boolean hasValidSelectedNode() {
    SNode selectedNode = getSelectedNode();
    return selectedNode != null && SNodeUtil.isAccessible(selectedNode, myRepository);
  }

  @Override
  public boolean isDisposed() {
    return myDisposed;
  }

  @NotNull
  @Override
  public EditorComponentState captureState() {
    // XXX not sure I understand the reason it's essential not to keep node reference for regular EditorComponent
    return new Memento(this, this instanceof InspectorEditorComponent);
  }

  @Override
  public void restoreState(@NotNull EditorComponentState state) {
    if (state instanceof Memento) {
      Memento memento = (Memento) state;
      myRepository.getModelAccess().runReadAction(() -> {
        relayout();
        memento.restore(this);
      });

      getUpdater().flushModelEvents();
    }
  }

  public void assertModelNotDisposed() {
    // if by any chance you need model access here, use myRepository
    assert myModelDisposedStackTrace == null : getModelDisposedMessage();
    if (myNode == null) {
      return;
    }
    SModel model = myNode.getModel();
    if (model == null) {
      return;
    }
    assert model.getRepository() != null : getNodeDisposedMessage(model);
  }

  private String getNodeDisposedMessage(SModel model) {
    StringBuilder sb = new StringBuilder("editor (" + this + ") is invalid");
    if (myNode != null && model instanceof ModelWithDisposeInfo) {
      sb.append(", myNode is disposed");
      StackTraceElement[] modelDisposedTrace = ((ModelWithDisposeInfo) model).getDisposedStacktrace();
      if (modelDisposedTrace != null) {
        for (StackTraceElement element : modelDisposedTrace) {
          sb.append("\nat ");
          sb.append(element);
        }
      }
    } else {
      sb.append(", myNode == null");
    }
    sb.append("____________________________");
    return sb.toString();
  }

  private String getModelDisposedMessage() {
    StringBuilder sb = new StringBuilder("Model was disposed through:");
    for (StackTraceElement element : myModelDisposedStackTrace) {
      sb.append("\nat ");
      sb.append(element);
    }
    sb.append('\n');
    sb.append("EditorComponent.myDisposed == ");
    sb.append(isDisposed());
    sb.append('\n');
    return sb.toString();
  }

  // This method should be called each time we set new node for and editor
  protected void clearModelDisposedTrace() {
    myModelDisposedStackTrace = null;
  }

  public void setModelDisposedTrace(StackTraceElement[] trace) {
    myModelDisposedStackTrace = trace;
  }

  /*
    Can be used to check if editor is in valid state or not.
    Editor can be in invalid state then corresponding model
    was reloaded, but current editor instance was not
    updated yet.
   */
  public boolean isInvalid() {
    return isInvalidLightweight() || !SNodeUtil.isAccessible(getEditedNode(), myRepository);
  }

  /*
    Lightweight check for editor validity state. Similar to isInvalid,
    but can be called outside of read action.
   */
  private boolean isInvalidLightweight() {
    return isDisposed() || getEditedNode() == null;
  }

  public void setRootCell(@NotNull jetbrains.mps.openapi.editor.cells.EditorCell rootCell) {
    if (getComponents().length > 0) {
      removeAll();
    }
    ((EditorCell_Basic) myRootCell).onRemove();

    myRootCell = (EditorCell) rootCell;
    // let root cell inherit some default values, but don't set these explicitly to the cell's style to avoid issues like MPS-35277
    // FTR, root cell for a user-supplied editor is exactly the one specified by user, there's no "umbrella" root cell MPS could manage.
    // Perhaps, it's worth adding a dedicated class for root cell, and moving EC.paintComponent logic in there.
    StyleImpl styleDefaults = new StyleImpl();
    styleDefaults.set(StyleAttributes.TEXT_COLOR, getStyleRegistry().getEditorForeground());
    styleDefaults.set(StyleAttributes.NULL_TEXT_COLOR, getStyleRegistry().getColor("DEFAULT_NULL_TEXT_COLOR"));
    styleDefaults.set(StyleAttributes.BACKGROUND_COLOR, getStyleRegistry().getEditorBackground());
    myRootCell.getStyle().setParent(styleDefaults, Arrays.asList(StyleAttributes.TEXT_COLOR, StyleAttributes.NULL_TEXT_COLOR, StyleAttributes.BACKGROUND_COLOR));

    ((EditorCell_Basic) myRootCell).onAdd();
    for (EditorCell_WithComponent component : getCellTracker().getComponentCells()) {
      add(component.getComponent());
    }
    for (AdditionalPainter painter : getAdditionalPainters()) {
      painter.onUpdate(this);
    }
  }

  @Override
  public EditorCell getRootCell() {
    return myRootCell;
  }

  @NotNull
  public NodeHighlightManager getHighlightManager() {
    return myHighlightManager;
  }

  public CellActionType getActionType(KeyEvent keyEvent, EditorContext editorContext) {
    if (keyPressed(keyEvent) && keyEvent.getKeyCode() == KeyEvent.VK_HOME && shiftDown(keyEvent)) {
      return CellActionType.SELECT_HOME;
    }
    if (keyPressed(keyEvent) && keyEvent.getKeyCode() == KeyEvent.VK_END && shiftDown(keyEvent)) {
      return CellActionType.SELECT_END;
    }
    if (keyPressed(keyEvent) && keyEvent.getKeyCode() == KeyEvent.VK_PAGE_DOWN && noKeysDown(keyEvent)) {
      return CellActionType.PAGE_DOWN;
    }
    if (keyPressed(keyEvent) && keyEvent.getKeyCode() == KeyEvent.VK_PAGE_UP && noKeysDown(keyEvent)) {
      return CellActionType.PAGE_UP;
    }
    if (keyPressed(keyEvent) && keyEvent.getKeyCode() == KeyEvent.VK_TAB && noKeysDown(keyEvent)) {
      return CellActionType.NEXT;
    }
    if (keyPressed(keyEvent) && keyEvent.getKeyCode() == KeyEvent.VK_TAB && shiftDown(keyEvent)) {
      return CellActionType.PREV;
    }
    if (keyEvent.getModifiers() == KeyEvent.CTRL_MASK && keyEvent.getKeyCode() == KeyEvent.VK_F1) {
      return CellActionType.SHOW_MESSAGE;
    }

    // ---
    if (keyTyped(keyEvent) && keyEvent.getKeyChar() == ' ' && noKeysDown(keyEvent)) {
      jetbrains.mps.openapi.editor.cells.EditorCell selectedCell = editorContext.getNodeEditorComponent().getSelectedCell();

      if (!(selectedCell instanceof EditorCell_STHint)) {
        if (!(selectedCell instanceof EditorCell_Label)) {
          return CellActionType.RIGHT_TRANSFORM;
        }
        EditorCell_Label labelCell = (EditorCell_Label) selectedCell;

        // caret at the end of text ?
        String text = labelCell.getText();
        int caretPosition = labelCell.getCaretPosition();
        //System.out.println("text:" + text + " len:" + text.length() + "caret at:" + caretPosition);
        if (caretPosition == text.length()) {
          if (caretPosition == 0 && labelCell instanceof EditorCell_Constant) {
            //empty unbound constant cells should ignore the space key when empty
            return CellActionType.SELECT_END;
          } else {
            return CellActionType.RIGHT_TRANSFORM;
          }
        }

        if (caretPosition == 0) {
          return CellActionType.LEFT_TRANSFORM;
        }
      }
    }
    return null;
  }

  private boolean ctrlShiftDown(KeyEvent keyEvent) {
    return keyEvent.getModifiers() == (KeyEvent.CTRL_MASK + KeyEvent.SHIFT_MASK);
  }

  private boolean shiftDown(KeyEvent keyEvent) {
    return keyEvent.getModifiers() == KeyEvent.SHIFT_MASK;
  }

  private boolean noKeysDown(KeyEvent keyEvent) {
    return keyEvent.getModifiers() == 0;
  }

  private boolean keyTyped(KeyEvent keyEvent) {
    return keyEvent.getID() == KeyEvent.KEY_TYPED;
  }

  private boolean keyPressed(KeyEvent keyEvent) {
    return keyEvent.getID() == KeyEvent.KEY_PRESSED;
  }

  private boolean ctrlDown(KeyEvent keyEvent) {
    return keyEvent.getModifiers() == KeyEvent.CTRL_MASK;
  }

  boolean executeComponentAction(CellActionType type) {
    final CellAction action = getComponentAction(type);
    if (action != null && action.executeInCommand()) {
      getModelAccess().executeCommand(new EditorCommand(getCommandContext()) {
        @Override
        protected void doExecute() {
          action.execute(getEditorContext());
        }
      });
      return true;
    }
    return false;
  }


  @Override
  public CellAction getComponentAction(final CellActionType type) {
    //todo ensure that this method is called only from EDT, write the contract and then get rid of synchronization
    if (myEditorComponentActions == null) {
      synchronized (myEditorComponentActionsLock) {
        if (myEditorComponentActions == null) {
          myEditorComponentActions = new EditorComponentActions(this);
        }
      }
    }
    return myEditorComponentActions.getComponentAction(type);
  }

  public void relayout() {
    if (isDisposed()) {
      return;
    }
    doRelayout();
    repaintExternalComponent();
  }

  private void doRelayout() {
    myRootCell.setX(myShiftX);
    myRootCell.setY(myShiftY);
    myRootCell.relayout();
    if (!hasUI()) {
      return;
    }
    revalidate();
    myLeftHighlighter.relayout(true);
    if (isSearchPanelVisible()) {
      mySearchPanel.search(false);
    }
  }

  public void leftHighlightCell(EditorCell cell, Color c) {
    if (!hasUI()) {
      return;
    }
    myLeftHighlighter.highlight(cell, cell, c);
  }

  public void leftHighlightCells(EditorCell cell, EditorCell cell2, Color c) {
    if (!hasUI()) {
      return;
    }
    myLeftHighlighter.highlight(cell, cell2, c);
  }

  public void leftUnhighlightCell(EditorCell cell) {
    if (!hasUI()) {
      return;
    }
    myLeftHighlighter.unHighlight(cell);
  }

  @Override
  public void selectNode(final SNode node) {
    getModelAccess().runReadAction(() -> {
      EditorCell nodeCell = findNodeCell(node);
      if (nodeCell != null) {
        changeSelection(nodeCell);
      }
    });
  }

  public void selectNode(final SNode node, final String cellId) {
    getModelAccess().runReadAction(() -> {
      EditorCell nodeCell = findCellWithId(node, cellId);
      if (nodeCell != null) {
        changeSelection(nodeCell);
      }
    });
  }

  @Override
  @Nullable
  public EditorCell findNodeCell(final SNode node) {
    return findNodeCell(node, false);
  }

  @Override
  @Nullable
  public EditorCell findNodeCell(final SNode node, boolean findUnderFolded) {
    jetbrains.mps.openapi.editor.cells.EditorCell bigCell = myUpdater.getBigCell(node);
    if (bigCell != null && (bigCell.getRootParent() != getRootCell() || (!findUnderFolded && CellTraversalUtil.getFoldedParent(bigCell) != null))) {
      return null;
    }
    return (EditorCell) bigCell;
  }

  @Override
  public jetbrains.mps.openapi.editor.cells.EditorCell findNodeCellWithRole(SNode node, @Nullable SReferenceLink link) {
    if (node == null || link == null) {
      return null;
    }
    EditorCell rootCell = findNodeCell(node);
    if (rootCell == null) {
      return null;
    }
    return CellFinderUtil.findChildByCondition(rootCell, new AssociationCellCondition(node, link), true, true);
  }

  @Override
  public jetbrains.mps.openapi.editor.cells.EditorCell findNodeCellWithRole(SNode node, @Nullable SContainmentLink link) {
    if (node == null || link == null) {
      return null;
    }
    EditorCell rootCell = findNodeCell(node);
    if (rootCell == null) {
      return null;
    }
    return CellFinderUtil.findChildByCondition(rootCell, new AggregationCellCondition(node, link), true, true);
  }

  @Override
  public EditorCell findCellWithId(final SNode node, final @NotNull String id) {
    final EditorCell bigCell = findNodeCell(node);

    if (bigCell == null) {
      return null;
    }

    return (EditorCell) myRepository.getModelAccess().computeReadAction(() -> findCellWithIdWithingBigCell(bigCell, id, node));
  }

  private jetbrains.mps.openapi.editor.cells.EditorCell findCellWithIdWithingBigCell(jetbrains.mps.openapi.editor.cells.EditorCell root, String id,
                                                                                     SNode node) {
    if (id == null) {
      return null;
    }

    if (id.equals(root.getCellId()) && root.getSNode() == node) {
      return root;
    }

    if (root instanceof jetbrains.mps.openapi.editor.cells.EditorCell_Collection) {
      for (jetbrains.mps.openapi.editor.cells.EditorCell child : ((jetbrains.mps.openapi.editor.cells.EditorCell_Collection) root)) {
        SNode childNode = child.getSNode();
        if (childNode == node || (childNode != null && AttributeOperations.isAttribute(childNode) && childNode.getParent() == node)) {
          jetbrains.mps.openapi.editor.cells.EditorCell result = findCellWithIdWithingBigCell(child, id, node);
          if (result != null) {
            return result;
          }
        }
      }
    }

    return null;
  }

  private void scrollToTopLeft() {
    JScrollPane scrollPane = getScrollPane();
    JScrollBar verticalScrollBar = scrollPane.getVerticalScrollBar();
    verticalScrollBar.setValue(verticalScrollBar.getMinimum());
    JScrollBar horizontalScrollBar = scrollPane.getHorizontalScrollBar();
    horizontalScrollBar.setValue(horizontalScrollBar.getMinimum());
  }

  private void rebuildEditorIgnoreViewport() {
    getUpdater().update();
    relayout();
  }

  @Override
  public void rebuildEditorContent() {
    assertInEDT();

    // XXX is myScrollPane == null possible here? perhaps, for !hasUI() case?
    ViewportState vps = new ViewportState(myScrollPane == null ? null : myScrollPane.getViewport());
    rebuildEditorIgnoreViewport();
    // JFTR, this (EC) is Viewport's View component
    vps.restore(this.getPreferredSize());
  }

  private void refreshHighlighter() {
    if (ApplicationManager.getApplication().isHeadlessEnvironment()) {
      return;
    }
    if (EditorSettings.getInstance().isHighlightNodeUnderCursor()) {
      if (myHighlightUsagesSupport == null) {
        myHighlightUsagesSupport = HighlightUsagesSupport.create(this, myRepository);
        if (myHighlightUsagesSupport != null) {
          myHighlightUsagesSupport.selectionChanged(mySelectionManager.getSelection(), 0);
        }
      }
    } else {
      if (myHighlightUsagesSupport != null) {
        myHighlightUsagesSupport.selectionChanged(null);
        myHighlightUsagesSupport = null;
      }
    }
  }

  protected void assertInEDT() {
    LOG.assertLog(ThreadUtils.isInEDT(), "You should do this in EDT");
  }

  private void fireEditorWillBeDisposed() {
    for (EditorDisposeListener listener : new ArrayList<>(myDisposeListeners)) {
      listener.editorWillBeDisposed(this);
    }
    myDisposeListeners.clear();
  }

  /**
   * Adds a listener to be called when this instance is disposed. It is not necessary to remove a listener when it has been called since the collection of
   * listeners is cleared during the disposal.
   *
   * @param listener the listener to add
   */
  public void addDisposeListener(@NotNull EditorDisposeListener listener) {
    if (!myDisposeListeners.contains(listener)) {
      myDisposeListeners.add(listener);
    }
  }

  /**
   * Removes a listener so that it is no longer called when this instance is disposed. It is not necessary to remove a listener when it has been called since
   * the collection of listeners is cleared during the disposal.
   *
   * @param listener the listener to remove
   */
  public void removeDisposeListener(@NotNull EditorDisposeListener listener) {
    myDisposeListeners.remove(listener);
  }

  public jetbrains.mps.openapi.editor.cells.EditorCell findCellWeak(int x, int y) {
    jetbrains.mps.openapi.editor.cells.EditorCell cell = myRootCell.findLeaf(x, y);
    if (cell == null) {
      cell = myRootCell.findNearestLeafOnLine(x, y, Condition.TRUE_CONDITION);
    }
    return cell;
  }

  private void processMousePressed(MouseEvent mouseEvent) {
    requestFocus();
    processCoordSelection(mouseEvent);

    if (mouseEvent.getButton() == MouseEvent.BUTTON2) {
      goByCurrentReference();
    }

    boolean ctrlDown = com.intellij.openapi.util.SystemInfo.isMac ? mouseEvent.isMetaDown() : mouseEvent.isControlDown();
    if (ctrlDown) {
      if (mouseEvent.isAltDown()) {
        showCellError();
      } else {
        jetbrains.mps.openapi.editor.cells.EditorCell selectedCell = getSelectedCell();
        if (selectedCell != null) {
          String url = selectedCell.getStyle().get(StyleAttributes.URL);
          if (url != null) {
            if (!url.startsWith(URLUtil.HTTP_PROTOCOL)) {
              url = VirtualFileManager.constructUrl(URLUtil.HTTP_PROTOCOL, url);
            }
            BrowserUtil.browse(url);
          } else {
            goByCurrentReference();
          }
        }
      }
    }
  }

  public void goByCurrentReference() {
    final DataContext dataContext = DataManager.getInstance().getDataContext(this);
    getModelAccess().executeCommand(new EditorCommand(getCommandContext()) {
      @Override
      protected void doExecute() {
        AnAction action = ActionManager.getInstance().getAction(MPSActions.EDITOR_GOTO_DECLARATION);
        if (action != null) {
          AnActionEvent event = ActionUtils.createEvent(ActionPlaces.EDITOR_POPUP, dataContext);
          ActionUtils.updateAndPerformAction(action, event);
        }
      }
    });
  }

  @NotNull
  private org.jetbrains.mps.openapi.module.ModelAccess getModelAccess() {
    return myRepository.getModelAccess();
  }

  public void showCellError() {
    final jetbrains.mps.openapi.editor.cells.EditorCell selectedCell = getSelectedCell();
    if (selectedCell != null) {
      myPlatformEditorEmulation.cancelShowInfoToolTipRequest();
      MPSDocumentationManager.getInstance().cancelAll();
      final HighlighterMessage message = getHighlighterMessageFor(selectedCell);
      MPSErrorDialog.showCellErrorDialog(getCurrentProject(), SwingUtilities.windowForComponent(EditorComponent.this), message);
    }
  }

  public void addLeftMarginPressListener(LeftMarginMouseListener listener) {
    myLeftMarginPressListeners.add(listener);
  }

  public void removeLeftMarginPressListener(LeftMarginMouseListener listener) {
    myLeftMarginPressListeners.remove(listener);
  }

  public List<LeftMarginMouseListener> getLeftMarginPressListeners() {
    return Collections.unmodifiableList(myLeftMarginPressListeners);
  }

  public void clearLeftMarginListeners() {
    myLeftMarginPressListeners.clear();
  }

  private void processCoordSelection(MouseEvent mouseEvent) {
    jetbrains.mps.openapi.editor.cells.EditorCell newSelectedCell = myRootCell.findLeaf(mouseEvent.getX(), mouseEvent.getY());
    if (newSelectedCell != null && CellTraversalUtil.getFoldedParent(newSelectedCell) != null) {
      // mouse was pressed on a cell representing folded collection
      return;
    }
    if (newSelectedCell == null || !newSelectedCell.isSelectable()) {
      newSelectedCell = myRootCell.findNearestLeafOnLine(mouseEvent.getX(), mouseEvent.getY(), jetbrains.mps.openapi.editor.cells.CellConditions.SELECTABLE);
    }

    if (newSelectedCell != null && (mouseEvent.getButton() != MouseEvent.BUTTON3 || !isUnderSelection(getSelectionManager().getSelection(), newSelectedCell))) {
      mySelectionManager.setSelection(newSelectedCell);
      ((EditorCell) newSelectedCell).processMousePressed(mouseEvent);
    }
  }

  private boolean isUnderSelection(Selection selection, jetbrains.mps.openapi.editor.cells.EditorCell cell) {
    if (selection == null) {
      return false;
    }
    for (jetbrains.mps.openapi.editor.cells.EditorCell selectedCell : selection.getSelectedCells()) {
      if (CellTraversalUtil.isAncestorOrEquals(selectedCell, cell)) {
        return true;
      }
    }
    return false;
  }

  public void clearSelectionStack() {
    getSelectionManager().clearSelection();
  }

  public void pushSelection(jetbrains.mps.openapi.editor.cells.EditorCell cell) {
    getSelectionManager().pushSelection(getSelectionManager().createSelection(cell));
  }

//  public EditorCell popSelection() {
//    Selection selection = getSelectionManager().popSelection();
//    return selection instanceof SingularSelection ? ((SingularSelection) selection).getEditorCell() : null;
//  }

  public jetbrains.mps.openapi.editor.cells.EditorCell peekSelection() {
    return getSelectedCell();
  }

  public boolean selectionStackContains(EditorCell cell) {
    for (Selection nextSelection : getSelectionManager().getSelectionStackIterable()) {
      if (nextSelection instanceof SingularSelection) {
        if (((SingularSelection) nextSelection).getEditorCell().equals(cell)) {
          return true;
        }
      }
    }
    return false;
  }

  @Override
  public final void changeSelection(@NotNull jetbrains.mps.openapi.editor.cells.EditorCell newSelectedCell) {
    mySelectionManager.setSelection(newSelectedCell);
    showCellInViewPort(newSelectedCell);
  }

  // TODO: replace this method with selection listener
  private void showCellInViewPort(@NotNull jetbrains.mps.openapi.editor.cells.EditorCell newSelectedCell) {
    if (!hasUI()) {
      return;
    }
    if (getVisibleRect().isEmpty()) {
      final JViewport viewport = getViewport();
      viewport.addChangeListener(new ChangeListener() {
        @Override
        public void stateChanged(ChangeEvent e) {
          if (!getVisibleRect().isEmpty()) {
            viewport.removeChangeListener(this);
            if (getSelectedCell() != null) {
              scrollToCell(getSelectedCell());
            }
          }
        }
      });
    } else {
      scrollToCell(newSelectedCell);
    }
  }

  @Override
  public void scrollToNode(SNode node) {
    EditorCell cell = findNodeCell(node);
    if (cell != null) {
      scrollToCell(cell);
    }
  }

  @Override
  public void scrollToTop() {
    JScrollBar scrollBar = getScrollPane().getVerticalScrollBar();
    scrollBar.setValue(scrollBar.getMinimum());
  }

  @Override
  public void scrollToBottom() {
    JScrollBar scrollBar = getScrollPane().getVerticalScrollBar();
    scrollBar.setValue(scrollBar.getMaximum());
  }

  public void ensureSelectionVisible() {
    if (getSelectedCell() == null) {
      return;
    }
    scrollToCell(getSelectedCell());
  }

  @Override
  public void scrollToCell(@NotNull jetbrains.mps.openapi.editor.cells.EditorCell cell) {
    if (!hasUI() || getVisibleRect().isEmpty()) {
      return;
    }

    int viewportWidth = getViewport().getWidth();

    int x0;
    int width;

    if (cell instanceof EditorCell_Label) {
      EditorCell_Label cellLabel = (EditorCell_Label) cell;
      int caretX = cellLabel.getCaretX();
      int charWidth = cellLabel.getCharWidth();
      width = 4 * charWidth;
      x0 = caretX - 2 * charWidth;
    } else if (getDeepestSelectedCell() instanceof EditorCell_Label && cell.getWidth() > viewportWidth) {
      EditorCell_Label cellLabel = (EditorCell_Label) getDeepestSelectedCell();
      int caretX = cellLabel.getCaretX();
      int charWidth = cellLabel.getCharWidth();
      x0 = Math.max(cell.getX(), caretX + 2 * charWidth - viewportWidth);
      width = viewportWidth;
    } else {
      x0 = cell.getX();
      width = cell.getWidth();
    }

    Rectangle visibleRect = getVisibleRect();
    Rectangle rectangle = new Rectangle(x0, visibleRect.y, width, visibleRect.height);
    if (!rectangle.isEmpty()) {
      boolean adjustHorizontally = !visibleRect.contains(rectangle);
      if (adjustHorizontally) {
        if (width <= viewportWidth) {
          int x1 = Math.max(0, x0 + width - viewportWidth);
          scrollToRectIfNotVisible(
              expandRectangleOneLine(
                  new Rectangle(x1, cell.getY(), x0 - x1 + width, cell.getHeight()
                  )
              )
          );
        } else {
          scrollToRectIfNotVisible(
              expandRectangleOneLine(
                  new Rectangle(x0 - SCROLL_GAP, cell.getY(), viewportWidth + SCROLL_GAP, cell.getHeight()
                  )
              )
          );
        }
      } else {
        scrollToRectIfNotVisible(
            expandRectangleOneLine(
                new Rectangle(x0, cell.getY(), width, cell.getHeight()
                )
            )
        );
      }
    }
  }

  private void scrollToRectIfNotVisible(Rectangle rect) {
    if (getVisibleRect().contains(rect)) {
      return;
    }

    scrollRectToVisible(rect);
  }

  private Rectangle expandRectangleOneLine(Rectangle r) {
    Font defaultFont = EditorSettings.getInstance().getDefaultEditorFont();
    FontMetrics fontMetrics = getFontMetrics(defaultFont);
    int height = fontMetrics.getHeight();
    return new Rectangle(r.x, r.y - height, r.width, r.height + 2 * height);
  }

  @Override
  protected void paintComponent(Graphics gg) {
    Graphics2D g = (Graphics2D) gg;

    turnOnAliasingIfPossible(g);

    g.setColor(getBackground());
    Rectangle bounds = g.getClipBounds();

    g.fillRect(bounds.x, bounds.y, bounds.width, bounds.height);

    List<AdditionalPainter> additionalPainters = getAdditionalPainters();
    for (AdditionalPainter additionalPainter : additionalPainters) {
      if (additionalPainter.paintsBackground()) {
        additionalPainter.paintBackground(g, this);
      }
    }

    if (isDisposed()) {
      return;
    }
    myRootCell.relayout();

    if (myRootCell.isInClipRegion(g)) {
      g.setColor(EditorColorsManager.getInstance().getGlobalScheme().getColor(EditorColors.RIGHT_MARGIN_COLOR));
      int boundPosition = myRootCell.getX() + myEditorComponentSettings.getRightMargin();
      g.drawLine(boundPosition, 0, boundPosition, getHeight());

      myRootCell.paint(g);
    }

    for (AdditionalPainter additionalPainter : additionalPainters) {
      if (additionalPainter.paintsAbove()) {
        additionalPainter.paint(g, this);
      }
    }
  }

  Dimension getPreferredComponentSize() {
    return isDisposed() ? new Dimension(0, 0) : new Dimension(myRootCell.getWidth() + myShiftX + 10, myRootCell.getHeight() + myShiftY + 10);
  }

  @Override
  public Dimension getPreferredScrollableViewportSize() {
    return getPreferredSize();
  }

  @Override
  public int getScrollableUnitIncrement(Rectangle visibleRect, int orientation, int direction) {
    if (orientation == SwingConstants.VERTICAL) {
      return 20;
    } else { // if orientation == SwingConstants.HORIZONTAL
      return 20;
    }
  }

  @Override
  public int getScrollableBlockIncrement(Rectangle visibleRect, int orientation, int direction) {
    return visibleRect.height;
  }

  @Override
  public boolean getScrollableTracksViewportWidth() {
    assert hasUI(); // XXX perhaps, no need for assert here, with instanceof, it's just 'false'.
    // EditorComponentImpl from IDEA does getParent(), Swing classes use SwingUtilities, I'd stick to latter.
    final Container parent = SwingUtilities.getUnwrappedParent(this);
    return parent instanceof JViewport && parent.getWidth() > getPreferredSize().width;
  }

  @Override
  public boolean getScrollableTracksViewportHeight() {
    assert hasUI();
    final Container parent = SwingUtilities.getUnwrappedParent(this);
    return parent instanceof JViewport && parent.getHeight() > getPreferredSize().height;
  }

  @Override
  public jetbrains.mps.openapi.editor.cells.EditorCell getDeepestSelectedCell() {
    if (isDisposed()) {
      return null;
    }
    Selection deepestSelection = getSelectionManager().getDeepestSelection();
    return deepestSelection instanceof SingularSelection ? ((SingularSelection) deepestSelection).getEditorCell() : null;
  }

  @Nullable
  public jetbrains.mps.openapi.editor.cells.EditorCell getSelectedCell() {
    if (isDisposed()) {
      return null;
    }
    Selection currentSelection = getSelectionManager().getSelection();
    return currentSelection instanceof SingularSelection ? ((SingularSelection) currentSelection).getEditorCell() : null;
  }

  @NotNull
  public SelectionManager getSelectionManager() {
    return mySelectionManager;
  }

  @NotNull
  @Override
  public Updater getUpdater() {
    return myUpdater;
  }

  public KeyboardHandler peekKeyboardHandler() {
    return myKbdHandlersStack.peek();
  }

  public KeyboardHandler popKeyboardHandler() {
    return myKbdHandlersStack.pop();
  }

  public void pushKeyboardHandler(KeyboardHandler kbdHandler) {
    myKbdHandlersStack.push(kbdHandler);
  }

  public void setMouseEventHandler(MouseListener l) {
    assert myMouseEventHandler == null : "Mouse event handler was already specified";
    addMouseListener(myMouseEventHandler = l);
  }

  public void removeMouseEventHandler() {
    assert myMouseEventHandler != null : "Mouse event handler was was not specified";
    removeMouseListener(myMouseEventHandler);
    myMouseEventHandler = null;
  }

  private boolean areMouseEventsBlocked() {
    return myMouseEventHandler != null;
  }

  /**
   * The returned session is supposed to be used directly for running a typechecking command,
   * it is not supposed to be cached.
   *
   * @return
   */
  public synchronized TypecheckingSession getTypecheckingSession() {
    Handle handle = myTypecheckingSessionHandle;
    return handle != null ? handle.session() : null;
  }

  /**
   * Internal API to control the way intention popup menu looks like, intended for use from MPS-extensions project
   * @param menuProducer use {@code null} to reset to default
   */
  @Internal
  public void setIntentionMenuProducer(@Nullable IntentionMenuProducer menuProducer) {
    if (menuProducer == null) {
      myIntentionsSupport.resetMenuProducer();
    } else {
      myIntentionsSupport.setMenuProducer(menuProducer);
    }
  }

  /**
   * Returns false iff the containing root has been changed as a result of this method call.
   */
  protected boolean updateContainingRoot(SNode node) {
    return myNode != node;
  }

  public SNode getNodeForTypechecking() {
    return getEditedNode();
  }

  public void sendKeyEvent(KeyEvent keyEvent) {
    if (keyEvent.getID() == KeyEvent.KEY_PRESSED) {
      processKeyPressed(keyEvent);
    } else if (keyEvent.getID() == KeyEvent.KEY_RELEASED) {
      processKeyReleased(keyEvent);
    }
  }

  @Override
  public void update() {
    getModelAccess().runReadAction(() -> {
      //TODO: check if it's necessary to clear updater caches here?..
      rebuildAfterReloadModel();
      rebuildEditorContent();
      refreshContentHighlighter();
    });
  }

  private void refreshContentHighlighter() {
    final jetbrains.mps.project.Project p = getCurrentProject();
    final Highlighter highlighter = p == null ? null : p.getComponent(Highlighter.class);
    if (highlighter != null) {
      highlighter.resetCheckedStateInBackground(EditorComponent.this);
    }
  }

  public void processKeyPressed(final KeyEvent keyEvent) {
    if (keyEvent.isConsumed() || isDisposed()) {
      return;
    }

    // hardcoded "update" action
    if (keyEvent.getKeyCode() == KeyEvent.VK_F5 && noKeysDown(keyEvent)) {
      //this lock should be obtained before the following read action to avoid deadlock
      update();
      keyEvent.consume();
      return;
    }

    if (keyEvent.getKeyCode() == KeyEvent.VK_F11 && noKeysDown(keyEvent)) {
      relayout();
      keyEvent.consume();
      return;
    }

    if (isKeyboardHandlerProcessingEnabled(keyEvent)) {
      for (KeyboardHandler keyboardHandler : myKbdHandlersStack) {
        if (keyboardHandler.processKeyPressed(getEditorContext(), keyEvent)) {
          keyEvent.consume();
          break;
        }
      }
    }

    repaintExternalComponent();
  }

  public void processKeyReleased(final KeyEvent keyEvent) {
    if (keyEvent.isConsumed()) {
      return;
    }

    if (isKeyboardHandlerProcessingEnabled(keyEvent)) {
      for (KeyboardHandler keyboardHandler : myKbdHandlersStack) {
        if (keyboardHandler.processKeyReleased(getEditorContext(), keyEvent)) {
          keyEvent.consume();
          break;
        }
      }
    }

    repaintExternalComponent();
  }

  public void processKeyTyped(final KeyEvent keyEvent) {
    if (keyEvent.isConsumed()) {
      return;
    }

    if (isKeyboardHandlerProcessingEnabled(keyEvent)) {
      for (KeyboardHandler keyboardHandler : myKbdHandlersStack) {
        if (keyboardHandler.processKeyTyped(getEditorContext(), keyEvent)) {
          keyEvent.consume();
          break;
        }
      }
    }
    if (myNodeSubstituteChooser.isVisible()) {
      myNodeSubstituteChooser.updateAfterKeyEvent();
    }

    repaintExternalComponent();
  }

  private boolean isKeyboardHandlerProcessingEnabled(KeyEvent keyEvent) {
    if (!ReadOnlyUtil.isSelectionReadOnlyInEditor(this)) {
      return true;
    }
    CellActionType actionType = getActionType(keyEvent, getEditorContext());
    if (actionType != null) {
      switch (actionType) {
        case SELECT_LEFT:
        case SELECT_RIGHT:
        case SELECT_HOME:
        case SELECT_END:
        case PAGE_UP:
        case PAGE_DOWN:
        case NEXT:
        case PREV:
          return true;
      }
    }
    return false;
  }

  public CommandContext getCommandContext() {
    return myCommandContext;
  }

  private CommandContext getNoSelectionProcessingCommandContext() {
    // Hiding command start/stop notification.
    return new CommandContextWrapper(getCommandContext()) {
      @Override
      public void commandStarted() {
      }

      @Override
      public void commandFinished() {
      }
    };
  }

  /**
   * nb: just something to think about editor component does not always correspond to a project!
   */
  @Nullable
  protected final jetbrains.mps.project.Project getCurrentProject() {
    // It is safer to get IntelliJ project and convert to MPS one:
    // There are different DataManager implementations for normal/test mode with several possible DataProvider classes.
    // Such providers behavior with custom MPSCommonDataKeys can be different, but more stable with platform CommonDataKeys.
    DataContext dataContext = DataManager.getInstance().getDataContext(this.getParent());
    // fixme this is a hack to avoid some assertEDT exception in IdeaPlugin tests, see e6fc5f7de189683ae0f39e6bb2a2a08733f9a70f
    //       no reason to use IJ project aside from that
    // fixme use carefully this potentially leads to a SOE if used in #getData because our BaseNodeEditor#MyPanel#getData delegates to descendant#getData (this class)
    //       I just hack there for the project key (there is project there btw) but this complex system is no good
    final MPSProject p = ProjectHelper.fromIdeaProject(CommonDataKeys.PROJECT.getData(dataContext));
    return p != null ? p : ProjectHelper.getProject(myRepository);
  }

  @Override
  public boolean isAutomaticSubstitutionEnabled() {
    return !myNodeSubstituteChooser.isVisible() || myNodeSubstituteChooser.isAutoMode();
  }

  public void activateNodeSubstituteChooser(@NotNull jetbrains.mps.nodeEditor.cells.EditorCell cell) {
    myCompletionHelper.show(cell);
  }

  public boolean activateNodeSubstituteChooser(jetbrains.mps.openapi.editor.cells.EditorCell editorCell, boolean resetPattern) {
    return activateNodeSubstituteChooser(editorCell, resetPattern, false);
  }

  public boolean activateNodeSubstituteChooser(jetbrains.mps.openapi.editor.cells.EditorCell editorCell, boolean resetPattern, boolean isSmart) {
    if (myNodeSubstituteChooser.isVisible()) {
      return true;
      //todo: rebuild menu if smartness changed
    }

    // try to obtain substitute info
    SubstituteInfo substituteInfo = null;
    if (editorCell != null) {
      substituteInfo = editorCell.getSubstituteInfo();
    }

    return activateNodeSubstituteChooser(editorCell, substituteInfo, resetPattern, isSmart);
  }

  public boolean activateNodeSubstituteChooser(jetbrains.mps.openapi.editor.cells.EditorCell editorCell, SubstituteInfo substituteInfo,
                                               boolean resetPattern) {
    return activateNodeSubstituteChooser(editorCell, substituteInfo, resetPattern, false);
  }

  public boolean activateNodeSubstituteChooser(jetbrains.mps.openapi.editor.cells.EditorCell editorCell, SubstituteInfo substituteInfo, boolean resetPattern,
                                               boolean isSmart) {
    if (editorCell == null || substituteInfo == null) {
      return false;
    }
    myCompletionHelper.showNow(editorCell, substituteInfo, resetPattern, isSmart);
    return true;
  }

  public final void deactivateSubstituteChooser() {
    myCompletionHelper.hide();
  }

  public NodeSubstituteChooser getNodeSubstituteChooser() {
    return myNodeSubstituteChooser;
  }

  void setNodeInformationDialog(NodeInformationDialog dialog) {
    myNodeInformationDialog = dialog;
  }

  public boolean hasNodeInformationDialog() {
    // FIXME now that NodeInformationDialog uses popup, not JDialog, and is smart to handle cancellation, is there any reason
    //       to keep this association and keep handling in Escape_Action?
    return myNodeInformationDialog != null;
  }

  @Override
  public void paint(Graphics g) {
    super.paint(g);
    Selection selection = getSelectionManager().getSelection();
    if (selection != null) {
      ((SelectionInternal) selection).paintSelection((Graphics2D) g);
    }
  }

  public Set<SNode> getNodesCellDependOn(jetbrains.mps.openapi.editor.cells.EditorCell cell) {
    return myUpdater.getRelatedNodes(cell);
  }

  public Set<SNodeReference> getCopyOfRefTargetsCellDependsOn(jetbrains.mps.openapi.editor.cells.EditorCell cell) {
    return myUpdater.getRelatedRefTargets(cell);
  }

  @Nullable
  public EditorCell getBigValidCellForNode(SNode node) {
    EditorCell result = findNodeCell(node);
    if (isValid(result)) {
      return result;
    }
    return null;
  }

  public boolean isValid(jetbrains.mps.openapi.editor.cells.EditorCell cell) {
    if (cell == null) {
      return false;
    }
    return ((EditorCell_Basic) cell).isInTree() && cell.getEditorComponent() == this;
  }

  public jetbrains.mps.openapi.editor.cells.EditorCell changeSelectionWRTFocusPolicy(@NotNull jetbrains.mps.openapi.editor.cells.EditorCell cell) {
    jetbrains.mps.openapi.editor.cells.EditorCell focusPolicyCell = FocusPolicyUtil.findFocusedCell(cell);
    jetbrains.mps.openapi.editor.cells.EditorCell toSelect;
    if (focusPolicyCell == null || (focusPolicyCell == cell && !FocusPolicyUtil.hasFocusPolicy(focusPolicyCell))) {
      toSelect = CellFinderUtil.findChildByManyFinders(cell, Finder.FIRST_ERROR, Finder.FIRST_EDITABLE, Finder.FIRST_SELECTABLE_LEAF);
    } else {
      toSelect = focusPolicyCell;
    }
    if (toSelect == null) {
      toSelect = cell;
    }
    changeSelection(toSelect);

    if (toSelect instanceof EditorCell_Label) {
      EditorCell_Label label = (EditorCell_Label) toSelect;
      jetbrains.mps.editor.runtime.style.CaretPosition defaultCaretPosition = label.getStyle().get(StyleAttributes.DEFAULT_CARET_POSITION);
      if (defaultCaretPosition != null) {
        if (defaultCaretPosition == jetbrains.mps.editor.runtime.style.CaretPosition.FIRST) {
          label.home();
        }
        if (defaultCaretPosition == jetbrains.mps.editor.runtime.style.CaretPosition.LAST) {
          label.end();
        }
      } else if (!toSelect.isErrorState()) {
        label.end();
      }
    }

    return toSelect;
  }

  private void setEditorContext(@Nullable SModel model, @NotNull SRepository repository) {
    if (myEditorContext != null && myEditorContext.getModel() == model && myEditorContext.getRepository() == repository) {
      myEditorContext.reset();
      return;
    }
    myEditorContext = createEditorContext(model, repository);
  }

  /**
   * This method is called from the constructor, so you cannot use local variables and any other
   * EditorComponent state here!
   *
   * @param model
   * @param repository
   */
  @NotNull
  protected EditorContext createEditorContext(@Nullable SModel model, @NotNull SRepository repository) {
    return new EditorContext(this, model, repository, getEditorConfiguration(), createContextAssistantManager(repository));
  }

  protected ContextAssistantManager createContextAssistantManager(SRepository repository) {
    return DefaultContextAssistantManager.newInstance(this, repository);
  }

  @Override
  public boolean isReadOnly() {
    return myReadOnly;
  }


  /**
   * @deprecated Override uiDataSnapshot(DataSink) instead; keep for 1 release and remove then
   */
  @Deprecated(since = "2026.1", forRemoval = true)
  public Object getData(String dataId) {
    // a placeholder to get overriding classes to compile, and a hack to address PARENT_PASTE_PROVIDER scenario of BaseConsoleTab
    if (PlatformDataKeys.PASTE_PROVIDER.is(dataId)) {
      return new MyPasteProvider();
    }
    // XXX a hack to move on with MPS tests that explicitly ask ec.getData(SELECTED_ITEM)
    if (PlatformDataKeys.SELECTED_ITEM.is(dataId) && myNodeSubstituteChooser.isVisible()) {
      return myNodeSubstituteChooser.getCurrentSubstituteAction();
    }

    throw new UnsupportedOperationException("Override uiDataSnapshot(DataSink) instead");
  }

  @Override
  public void uiDataSnapshot(@NotNull DataSink dataSink) {
    if (isDisposed()) {
      return;
    }

    boolean isInSearchPanel = isSearchPanelVisible() && mySearchPanel.isTextFieldFocused();
    boolean isInSubstituteChooser = myNodeSubstituteChooser.isVisible();

    //MPSDK
    if (!isInSubstituteChooser && !isInSearchPanel) {
      // see 276c525c
      Selection selection = mySelectionManager.getSelection();
      final List<SNode> selectedNodes = selection == null ? Collections.emptyList() : selection.getSelectedNodes();
      if (selection instanceof SingularSelection && selectedNodes.size() == 1) {
        dataSink.set(SNodeActionData.KEY, SNodeActionData.from(selectedNodes.getFirst().getReference()));
      } else if (!selectedNodes.isEmpty()) {
        dataSink.set(SNodeActionData.KEY, SNodeActionData.from(selectedNodes.stream().map(SNode::getReference)));
      }
    }
    dataSink.lazy(MPSCommonDataKeys.CONTEXT_MODEL, () -> getModelAccess().computeReadAction(() -> {
      SNode node = getRootCell().getSNode();
      return node == null ? null : node.getModel();
    }));
    dataSink.lazyValue(MPSCommonDataKeys.CONTEXT_MODULE, dataMap -> {
      SModel model = dataMap.get(MPSCommonDataKeys.CONTEXT_MODEL);
      // XXX perhaps, read access won't hurt here, yet it works w/o one ATM
      return model == null ? null : model.getModule();
    });
    dataSink.set(MPSEditorDataKeys.EDITOR_CONTEXT, getEditorContext());
    if (!isInSubstituteChooser && !isInSearchPanel) {
      dataSink.set(MPSEditorDataKeys.EDITOR_CELL, getSelectedCell());
    }
    if (!isInSearchPanel) {
      dataSink.set(MPSEditorDataKeys.EDITOR_COMPONENT, this);
    }
    if (isInSubstituteChooser) {
      dataSink.set(PlatformDataKeys.SELECTED_ITEM, myNodeSubstituteChooser.getCurrentSubstituteAction());
    }
    dataSink.set(MPSCommonDataKeys.PLACE, ActionPlace.EDITOR);

    //PDK
    dataSink.set(PlatformDataKeys.CUT_PROVIDER, new MyCutProvider());
    dataSink.set(PlatformDataKeys.COPY_PROVIDER, new MyCopyProvider());
    if (isFocusOwner() || !isSearchPanelVisible()) {
      dataSink.set(PlatformDataKeys.PASTE_PROVIDER, new MyPasteProvider());
    }
  }

  public void commitAllCellValues() {
    final List<EditorCell_Property> cellsToCommit = getCellsToCommit();
    if (cellsToCommit.isEmpty()) {
      return;
    }

    getModelAccess().executeCommand(new EditorCommandAdapter(() -> doCommitAll(cellsToCommit), getNoSelectionProcessingCommandContext()));
  }

  private void setDefaultSelection() {
    if (getSelectionManager().getSelection() != null) {
      return;
    }

    EditorCell rootCell = getRootCell();
    if (rootCell instanceof EditorCell_Collection) {
      jetbrains.mps.openapi.editor.cells.EditorCell focusPolicyCell = FocusPolicyUtil.findFocusedCell(rootCell);
      jetbrains.mps.openapi.editor.cells.EditorCell toSelect;
      if (focusPolicyCell == null || (focusPolicyCell == rootCell && !FocusPolicyUtil.hasFocusPolicy(focusPolicyCell))) {
        toSelect = CellFinderUtil.findChildByManyFinders(rootCell, Finder.FIRST_EDITABLE, Finder.FIRST_SELECTABLE_LEAF);
      } else {
        toSelect = focusPolicyCell;
      }
      if (toSelect == null) {
        toSelect = rootCell;
      }
      changeSelection(toSelect);
      return;
    }
    if (rootCell != null && rootCell.isSelectable()) {
      changeSelection(rootCell);
    }
  }

  private void closeSubstituteChooser(Component newFocusOwner) {
    if (myNodeSubstituteChooser.getWindow() != null &&
        (myNodeSubstituteChooser.getWindow().isAncestorOf(newFocusOwner) || myNodeSubstituteChooser.getWindow() == newFocusOwner)) {
      return;
    }
    deactivateSubstituteChooser();
  }

  private void activateCaretBlinker() {
    myEditorConfiguration.caretManager.setActiveEditor(this);
  }

  private void deActivateCaretBlinker() {
    myEditorConfiguration.caretManager.unsetActiveEditor(this);
  }

  private List<EditorCell_Property> getCellsToCommit() {
    List<EditorCell_Property> cells = new ArrayList<>();

    for (EditorCell_Property cell : getCellTracker().getTransactionalCells()) {
      if (cell.hasUncommittedValue()) {
        cells.add(cell);
      }
    }

    return cells;
  }

  private void doCommitAll(List<EditorCell_Property> cells) {
    for (EditorCell_Property cell : cells) {
      cell.commit();
    }
  }

  private boolean isProjectDisposed() {
    final jetbrains.mps.project.Project p = getCurrentProject();
    // XXX NOTE, we check the project is there, i.e. missing project is not treated as disposed. Is it right?
    return p != null && p.isDisposed();
  }

  public CellTracker getCellTracker() {
    return myCellTracker;
  }

  public BracesHighlighter getBracesHighlighter() {
    return myBracesHighlighter;
  }

  public void rebuildAfterReloadModel() {
    releaseTypecheckingSession(true);
    if (myNodePointer != null) {
      myNode = myNodePointer.resolve(getRepository());
      myEditorContext = createEditorContext(myNode == null ? null : myNode.getModel(), myRepository);
      myUpdater.clearExplicitHints();
    }
    myCommandContext.updateContextNode();
    requestTypecheckingSession();
  }

  @NotNull
  @Override
  public IMessageHandler getMessageHandler() {
    if (hasUI()) {
      return myContainer.getMessagePanel();
    }
    // XXX perhaps, shall split message handling from UI component to handle messages?
    return IMessageHandler.NULL_HANDLER;
  }

  private static class MyBaseAction extends BaseAction implements DumbAware {
    private final KeyMapAction myAction;
    private final EditorContext myEditorContext;

    public MyBaseAction(KeyMapAction action, EditorContext editorContext) {
      super("" + action.getDescriptionText());
      myAction = action;
      myEditorContext = editorContext;
      String keyStrokeString = action.getKeyStroke();
      if (keyStrokeString == null || keyStrokeString.length() == 0) {
        return;
      }
      KeyStroke keyStroke = KeyStroke.getKeyStroke(keyStrokeString);
      if (keyStroke == null) {
        LOG.error("Invalid keystroke (" + keyStrokeString + ") specified for the action: " + action.getClass().getName());
        return;
      }
      KeyboardShortcut shortcut = new KeyboardShortcut(keyStroke, null);
      KeymapManager.getInstance().getKeymap(KeymapManager.DEFAULT_IDEA_KEYMAP).addShortcut(getActionId(), shortcut);
      setExecuteOutsideCommand(true);
    }

    @Override
    protected void doExecute(AnActionEvent e, Map<String, Object> _params) {
      myEditorContext.getRepository().getModelAccess().executeCommand(new EditorCommand(myEditorContext) {
        @Override
        protected void doExecute() {
          try {
            myAction.execute(myEditorContext);
          } catch (Throwable t) {
            LOG.error(t);
          }
        }
      });
    }
  }

  public interface EditorDisposeListener {
    void editorWillBeDisposed(@NotNull EditorComponent component);
  }

  public void repaint(@NotNull jetbrains.mps.openapi.editor.cells.EditorCell cell) {
    // The +1 for height takes into account decorations such as selection or border, which may currently be drawn outside the cell.
    repaint(0, cell.getY(), getWidth(), cell.getHeight() + 1);
  }

  @Override
  public ActionHandler getActionHandler() {
    return myActionHandler;
  }

  /**
   * Return true if UI focus "within" this editor component. Means: owned by this component or any child-components
   * (in case of component cells displayed inside this editor). Context assistant is a special case: if it is focused,
   * the editor is considered inactive.
   *
   * @return true if the focus is inside this EditorComponent
   */
  public boolean isActive() {
    if (isContextAssistantFocused()) {
      return false;
    }
    if (isFocusOwner()) {
      return true;
    }

    Component focusOwner = KeyboardFocusManager.getCurrentKeyboardFocusManager().getFocusOwner();
    return isAncestorOf(focusOwner);
  }

  public boolean isContextAssistantFocused() {
    ContextAssistant activeAssistant = myEditorContext.getContextAssistantManager().getActiveAssistant();
    return activeAssistant != null && activeAssistant.hasFocus();
  }

  @NotNull
  public EditorHighlighter getHighlighter() {
    return myHighlighter;
  }

  @NotNull
  public EditorComponentFocusTracker getFocusTracker() {
    return myFocusTracker;
  }

  private class MyCutProvider implements CutProvider {
    @Override
    public void performCut(@NotNull final DataContext dataContext) {
      getModelAccess().executeCommandInEDT(new EditorCommand(getCommandContext()) {
        @Override
        protected void doExecute() {
          if (isInvalid() || !isCutEnabled(dataContext)) {
            return;
          }
          jetbrains.mps.openapi.editor.cells.EditorCell selectedCell = getSelectedCell();
          if (selectedCell != null) {
            myActionHandler.executeAction(selectedCell, CellActionType.CUT);
          } else {
            getSelectionManager().getSelection().executeAction(CellActionType.CUT);
          }
        }
      });
    }

    @Override
    public boolean isCutEnabled(@NotNull DataContext dataContext) {
      return !(isDisposed() || isInvalidLightweight() || getSelectionManager().getSelection() == null ||
               ReadOnlyUtil.canDeleteNodes(EditorComponent.this, getSelectedNodes()));
    }

    @Override
    public boolean isCutVisible(@NotNull DataContext dataContext) {
      return true;
    }

    @Override
    @NotNull
    public ActionUpdateThread getActionUpdateThread() {
      // See same method in MyCopyProvider, below, for considerations.
      return ActionUpdateThread.BGT;
    }
  }

  private class MyCopyProvider implements CopyProvider {
    @Override
    public @NotNull ActionUpdateThread getActionUpdateThread() {
      // XXX not sure selection manager from #isCopyEnabled() is ok w/ uses from thread other than EDT,
      //     decided to see if BGT causes any trouble. If it does, EDT is fine (#isCopyEnabled() is fast in out cease)
      //     although a thread-safe SelectionManager might be a viable alternative.
      return ActionUpdateThread.BGT;
    }

    @Override
    public void performCopy(@NotNull DataContext dataContext) {
      getModelAccess().executeCommandInEDT(new EditorCommand(getCommandContext()) {
        @Override
        protected void doExecute() {
          if (isDisposed() || isInvalid()) {
            return;
          }
          jetbrains.mps.openapi.editor.cells.EditorCell selectedCell = getSelectedCell();
          if (selectedCell != null) {
            myActionHandler.executeAction(selectedCell, CellActionType.COPY);
          } else {
            getSelectionManager().getSelection().executeAction(CellActionType.COPY);
          }
        }
      });
    }

    @Override
    public boolean isCopyEnabled(@NotNull DataContext dataContext) {
      return !isDisposed() && !isInvalidLightweight() && getSelectionManager().getSelection() != null;
    }

    @Override
    public boolean isCopyVisible(@NotNull DataContext dataContext) {
      return true;
    }
  }

  private class MyPasteProvider implements PasteProvider {
    @Override
    public void performPaste(@NotNull final DataContext dataContext) {
      EditorComponent.this.performPaste();
    }

    @Override
    public boolean isPastePossible(@NotNull DataContext dataContext) {
      return EditorComponent.this.isPastePossible();
    }

    @Override
    public boolean isPasteEnabled(@NotNull DataContext dataContext) {
      return true;
    }

    @Override
    @NotNull
    public ActionUpdateThread getActionUpdateThread() {
      // not sure if this affects isPasteEnabled() only or isPastePossible() as well. If latter, see same method in MyCopyProvider, above, for considerations.
      return ActionUpdateThread.BGT;
    }
  }

  private void performPaste() {
    getModelAccess().executeCommandInEDT(new EditorCommand(getCommandContext()) {
      @Override
      protected void doExecute() {
        if (isInvalid() || !isPastePossible()) {
          return;
        }
        jetbrains.mps.openapi.editor.cells.EditorCell selectedCell = getSelectedCell();
        if (selectedCell != null) {
          myActionHandler.executeAction(selectedCell, CellActionType.PASTE);
        } else {
          getSelectionManager().getSelection().executeAction(CellActionType.PASTE);
        }
      }
    });
  }

  private boolean isPastePossible() {
    return !(isDisposed() || isInvalidLightweight() || ReadOnlyUtil.isSelectionReadOnlyInEditor(EditorComponent.this) ||
             getSelectionManager().getSelection() == null);
  }

  @Override
  public InputMethodRequests getInputMethodRequests() {
// Uncomment at the moment https://youtrack.jetbrains.com/issue/JRE-252 is fixed
//    if (ReadOnlyUtil.isSelectionReadOnlyInEditor(this)) {
//      return null;
//    }

    if (myInputMethodRequests == null) {
      myInputMethodRequests = new InputMethodRequestsImpl(this);
    }
    return myInputMethodRequests;
  }

  /**
   * Returns deletion approver
   * It first checks if deletion approving should be used and then returns an appropriate
   * instance. If instance doesn't exist, it creates it and initializes it properly
   *
   * @return deletion approver instance
   */
  public DeletionApprover getDeletionApprover() {
    // keep the method to avoid broken references from MPS code.
    // I admire javadoc, btw ;)
    return getEditorContext().getDeletionApprover();
  }
}
