/*
 * Copyright 2000-2026 JetBrains s.r.o. Use of this source code is governed by the Apache 2.0 license that can be found in the LICENSE file.
 */
package jetbrains.mps.editor.intentions;

import com.intellij.openapi.actionSystem.ActionGroup;
import com.intellij.openapi.actionSystem.ActionManager;
import com.intellij.openapi.actionSystem.ActionPlaces;
import com.intellij.openapi.actionSystem.ActionUiKind;
import com.intellij.openapi.actionSystem.AnAction;
import com.intellij.openapi.actionSystem.AnActionEvent;
import com.intellij.openapi.actionSystem.Constraints;
import com.intellij.openapi.actionSystem.DataContext;
import com.intellij.openapi.actionSystem.DefaultActionGroup;
import com.intellij.openapi.actionSystem.Presentation;
import com.intellij.openapi.actionSystem.ex.ActionUtil;
import jetbrains.mps.editor.runtime.commands.EditorCommand;
import jetbrains.mps.ide.actions.MPSActions;
import jetbrains.mps.intentions.IntentionsManager;
import jetbrains.mps.intentions.IntentionsManager.QueryDescriptor;
import jetbrains.mps.intentions.icons.Icons;
import jetbrains.mps.intentions.icons.IntentionIconProvider;
import jetbrains.mps.nodeEditor.IntentionActionsProvider;
import jetbrains.mps.openapi.editor.EditorComponent;
import jetbrains.mps.openapi.editor.EditorContext;
import jetbrains.mps.openapi.intentions.IntentionExecutable;
import jetbrains.mps.smodel.UndoRunnable;
import jetbrains.mps.typechecking.TypecheckingFacade;
import jetbrains.mps.typechecking.TypecheckingSession;
import jetbrains.mps.util.Pair;
import jetbrains.mps.workbench.action.BaseAction;
import jetbrains.mps.workbench.action.BaseGroup;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.model.SNode;

import javax.swing.Icon;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.stream.Collectors;

/**
 * Provisional code to get rid of reflection access to EditorComponent and IntentionsSupport internals
 * For future improvements, consider employing regular IDEA actions (MPSActions.EDITOR_SHOW_INTENTIONS_POPUP_ACTION is just a
 * keyboard shortcut holder now)
 *
 * @author Artem Tikhomirov
 * @since 2022.2
 */
public class IntentionMenuProducer {

  private final EditorComponent myEditor;

  public IntentionMenuProducer(EditorComponent editor) {
    myEditor = editor;
  }

  /**
   * invoked in EDT with model read
   * @return null if no intention action found
   */
  @Nullable
  public ActionGroup getIntentionsGroup(final @NotNull DataContext dataContext) {
    // intentions
    List<Pair<IntentionExecutable, SNode>> groupItems = new ArrayList<>(getEnabledIntentions());

    // actions as intentions
    List<AnAction> actions = new ArrayList<>();
    collectActionsAsIntentions(ActionManager.getInstance().getAction(MPSActions.ACTIONS_AS_INTENTIONS_GROUP), actions, dataContext);

    List<AnAction> errorActions = new ArrayList<>();
    collectActionsAsIntentions(ActionManager.getInstance().getAction(MPSActions.ACTIONS_AS_ERROR_INTENTIONS_GROUP), errorActions, dataContext);

    if (groupItems.isEmpty() && actions.isEmpty()) {
      return null;
    }
    BaseGroup group = new BaseGroup("");
    for (final Pair<IntentionExecutable, SNode> pair : groupItems) {
      group.add(getIntentionActionOrGroup(pair.o1, pair.o2));
    }
    errorActions = errorActions.stream().sorted((a, b) -> a.getTemplateText().compareTo(b.getTemplateText())).collect(Collectors.toList());
    for (AnAction errorAction : errorActions) {
      group.add(errorAction, Constraints.FIRST);
    }
    actions = actions.stream().sorted((a, b) -> a.getTemplateText().compareTo(b.getTemplateText())).collect(Collectors.toList());
    group.addAll(actions);
    return group;
  }

  protected Collection<Pair<IntentionExecutable, SNode>> getEnabledIntentions() {
    final Set<Pair<IntentionExecutable, SNode>> result = new LinkedHashSet<>();
    final SNode node = myEditor.getSelectedNode();
    final EditorContext editorContext = myEditor.getEditorContext();
    if (node != null) {
      final QueryDescriptor query = new QueryDescriptor();
      query.setEnabledOnly(true);
      // FIXME I hate cast and dependency it induces to [editor-runtime], but as long there's cyclic dependency
      //       b/w [intentions-runtime] and [editor-runtime], I don't feel in the mood to deal with this right now.
      //       Perhaps, as the story with IDEA action for Show Intentions popup evolves (MPS-31891), I could make this code
      //       better.
      final TypecheckingSession typecheckingSession = ((jetbrains.mps.nodeEditor.EditorComponent) myEditor).getTypecheckingSession();
      if (typecheckingSession != null) {
        final Collection<Pair<IntentionExecutable, SNode>> availableIntentions =
            TypecheckingFacade
                .getFromContext()
                .computeWithSession(typecheckingSession,
                                    (session) -> IntentionsManager
                                                     .getInstance()
                                                     .getAvailableIntentions(query, node, editorContext));
        result.addAll(availableIntentions);
      }
    }
    return result;
  }

  /** for a given intention executable code, gives AnAction to run it, or a group of actions related to the intention
   * (e.g. navigation to intention declaration).
   */
  protected AnAction getIntentionActionOrGroup(final IntentionExecutable intention, final SNode node) {
    Icon icon = new IntentionIconProvider(intention.getDescriptor().getKind()).getIcon();
    String text = intention.getDescription(node, myEditor.getEditorContext());

    final IntentionCommand ic = new IntentionCommand(text, intention, node);

    List<AnAction> intentionActions = new ArrayList<>();
    for (IntentionActionsProvider provider : IntentionActionsProvider.EP_NAME.getExtensionList()) {
      intentionActions.addAll(Arrays.asList(provider.getIntentionActions(intention)));
    }

    if (intentionActions.isEmpty()) {
      return new BaseAction(text, null, icon) {
        @Override
        protected void doExecute(AnActionEvent e, Map<String, Object> params) {
          // FIXME perhaps, IntentionSupport shall supply Factory that creates Runnable from IntentionExecutable to hide
          //   IntentionCommand and model access (so it's IntentionSupport and editor-runtime to know where to take
          //    proper MA and what's a command. Just need to sort out Pair<IE, SNode> and overall module dependency mess
          ic.getRepository().getModelAccess().executeCommandInEDT(ic);
        }
      };
    } else {
      DefaultActionGroup intentionActionGroup = new DefaultActionGroup(text, true) {
        @Override
        public void actionPerformed(@NotNull AnActionEvent e) {
          ic.getRepository().getModelAccess().executeCommandInEDT(ic);
        }
      };
      intentionActionGroup.getTemplatePresentation().setPerformGroup(true);
      intentionActionGroup.addAll(intentionActions);
      intentionActionGroup.getTemplatePresentation().setIcon(icon);
      return intentionActionGroup;
    }
  }

  private static void collectActionsAsIntentions(AnAction action, List<AnAction> actions, DataContext dataContext) {
    if (action instanceof ActionGroup actionGroup) {
      AnAction [] children = (actionGroup instanceof DefaultActionGroup dag) ? dag.getChildren(ActionManager.getInstance()) : actionGroup.getChildren(null);
      for (AnAction child : children) {
        collectActionsAsIntentions(child, actions, dataContext);
      }
    } else if (action instanceof BaseAction) {
      // clone() is vital not to get into Presentation.assertNotTemplatePresentation() troubles
      // Although setIcon() for a non-template presentation seems to be ok, we not necessarily need clone() from
      // the very beginning *just for action.update()), I didn't make it work either way (no icon is shown for the
      // action, but doesn't throw any assert), and I leave this code in a futile attempt to address this defect later.
      //noinspection UseOfClone
      Presentation presentation = action.getTemplatePresentation().clone();
      if (presentation.getIcon() == null) {
        presentation.setIcon(Icons.REAL_INTENTION);
      }
      // FIXME if the code above doesn't work, shall I use null for presentation, perhaps? Could I make it work?
      ActionUtil.updateAction(action, AnActionEvent.createEvent(dataContext, presentation, ActionPlaces.UNKNOWN, ActionUiKind.NONE, null));
      if (presentation.isVisible()) {
        actions.add(action);
      }
    }
  }

  // UndoRunnable to make sure Edit->Undo shows name of the intention. No idea if we could use group id here.
  // FIXME don't like access to myEditor field of outer class
  private class IntentionCommand extends EditorCommand implements UndoRunnable {
    private final String myText;
    private final IntentionExecutable myIntention;
    private final SNode myNode;

    /*package*/ IntentionCommand(String text, IntentionExecutable intention, SNode node) {
      super(myEditor.getCommandContext());
      myText = text;
      myIntention = intention;
      myNode = node;
    }

    @Nullable
    @Override
    public String getName() {
      return myText;
    }

    @Override
    protected void doExecute() {
      myIntention.execute(myNode, myEditor.getEditorContext());
    }
  }
}
