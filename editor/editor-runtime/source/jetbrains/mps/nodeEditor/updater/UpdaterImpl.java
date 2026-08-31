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
package jetbrains.mps.nodeEditor.updater;

import jetbrains.mps.editor.runtime.HeadlessEditorComponent;
import jetbrains.mps.ide.ThreadUtils;
import jetbrains.mps.ide.project.ProjectHelper;
import jetbrains.mps.logging.Logger;
import jetbrains.mps.nodeEditor.EditorComponent;
import jetbrains.mps.nodeEditor.cells.APICellAdapter;
import jetbrains.mps.nodeEditor.commands.CommandContextImpl;
import jetbrains.mps.nodeEditor.commands.CommandContextListener;
import jetbrains.mps.openapi.editor.EditorComponentState;
import jetbrains.mps.openapi.editor.EditorContext;
import jetbrains.mps.openapi.editor.cells.EditorCell;
import jetbrains.mps.openapi.editor.update.Updater;
import jetbrains.mps.openapi.editor.update.UpdaterListener;
import jetbrains.mps.project.Project;
import jetbrains.mps.smodel.event.SModelEvent;
import jetbrains.mps.typechecking.TypecheckingFacade;
import jetbrains.mps.util.Pair;
import jetbrains.mps.util.WeakSet;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeReference;

import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;

/**
 * User: shatalin
 * Date: 03/09/14
 */
public class UpdaterImpl implements Updater {
  private static final Logger LOG = Logger.getLogger(UpdaterImpl.class);

  @NotNull
  private final EditorComponent myEditorComponent;
  private UpdateSessionImpl myUpdateSession;
  private final UpdaterModelListenersController myModelListenersController;
  private List<UpdaterListener> myListeners = new ArrayList<>();

  private Map<SNode, WeakReference<EditorCell>> myBigCellsMap = new WeakHashMap<>();
  private Map<EditorCell, Set<SNode>> myRelatedNodes = new WeakHashMap<>();
  private Map<EditorCell, Set<SNodeReference>> myRelatedRefTargets = new WeakHashMap<>();
  private Map<Pair<SNodeReference, String>, WeakSet<EditorCell>> myCleanDependentCells = new HashMap<>();
  private Map<Pair<SNodeReference, String>, WeakSet<EditorCell>> myDirtyDependentCells = new HashMap<>();
  private Map<Pair<SNodeReference, String>, WeakSet<EditorCell>> myExistenceDependentCells = new HashMap<>();
  private boolean myDisposed;
  private String[] myInitialHints;
  private Map<SNodeReference, Collection<String>> myEditorHintsForNodeMap = new HashMap<>();
  private UpdateInfoIndex myUpdateInfoIndex;
  private boolean myInProgress;
  private boolean myProcessSelection;

  public UpdaterImpl(@NotNull EditorComponent editorComponent, CommandContextImpl commandContext) {
    myEditorComponent = editorComponent;
    commandContext.addListener(new CommandContextListenerImpl());
    myModelListenersController = new UpdaterModelListenersController(this);
  }

  @Override
  public void update() {
    assert !myDisposed;
    boolean wasInProgress = fireEditorUpdateStarted();
    // first cleaning collected events because subsequent update process may call flushModelEvents()
    // for now and it is expected that all events should be already processed
    myModelListenersController.clearCollectedEvents();
    doUpdate(null);
    fireEditorUpdated(wasInProgress);
  }

  void update(List<SModelEvent> events) {
    boolean wasInProgress = fireEditorUpdateStarted();
    doUpdate(events);
    fireEditorUpdated(wasInProgress);
  }

  private void doUpdate(List<SModelEvent> events) {
    assertInEdt();
    if (myDisposed) {
      return;
    }
    getEditorContext().getRepository().getModelAccess().checkReadAccess();

    SNode editedNode = myEditorComponent.getEditedNode();
    if (editedNode == null || editedNode.getModel() == null) {
      myEditorComponent.setRootCell(myEditorComponent.createEmptyCell());
    } else {
      EditorComponentState state = myEditorComponent.captureState();
      myEditorComponent.setRootCell(updateRootCell(editedNode, events));
      myEditorComponent.restoreState(state);
    }
  }

  private EditorCell updateRootCell(SNode node, List<SModelEvent> events) {
    assert !myDisposed;
    Project project = ProjectHelper.getProject(getEditorContext().getRepository());
    assert
        project == null || !project.isDisposed() :
        "Update was executed for the editor associated with disposed project: " + project + ", editor: " + getEditorComponent() + ", node: " +
        getEditorComponent().getEditedNode();

    assert myUpdateSession == null;
    myUpdateSession = createUpdateSession(node, events);
    try {
      Pair<EditorCell, UpdateInfoIndex> result =
          TypecheckingFacade
              .getFromContext()
              .computeWithSession(myEditorComponent.getTypecheckingSession(), (session) -> myUpdateSession.performUpdate());

      EditorCell rootCell = result.o1;
      myUpdateInfoIndex = result.o2;
      myModelListenersController.attachListeners(node, getRelatedNodes(rootCell), getRelatedRefTargets(rootCell));
      return rootCell;
    } finally {
      myUpdateSession = null;
    }
  }

  @Override
  public UpdateSessionImpl getCurrentUpdateSession() {
    return myUpdateSession;
  }

  @Override
  public void flushModelEvents() {
    assert !myDisposed;
    assertInEdt();
    myModelListenersController.flush();
  }

  protected void assertInEdt() {
    if (myEditorComponent instanceof HeadlessEditorComponent) return;
    if (!ThreadUtils.isInEDT()) {
      LOG.error("This method should be called in EDT", new Throwable());
    }
  }

  @Override
  public void addListener(UpdaterListener listener) {
    myListeners.add(listener);
  }

  @Override
  public void removeListener(UpdaterListener listener) {
    myListeners.remove(listener);
  }

  @Override
  public boolean setInitialEditorHints(@Nullable String[] hints) {
    assert !myDisposed : "editor is already disposed";
    boolean changed = !Arrays.equals(myInitialHints, hints);
    myInitialHints = hints;
    return changed;
  }

  @Nullable
  @Override
  public String[] getInitialEditorHints() {
    assert !myDisposed;
    if (myInitialHints == null) {
      return null;
    }
    String[] result = new String[myInitialHints.length];
    System.arraycopy(myInitialHints, 0, result, 0, myInitialHints.length);
    return result;
  }

  @Override
  public void addExplicitEditorHintsForNode(SNodeReference nodeReference, String... hints) {
    Collection<String> currentHints = myEditorHintsForNodeMap.get(nodeReference);
    if (currentHints == null) {
      currentHints = new ArrayList<>();
      Collections.addAll(currentHints, hints);
      myEditorHintsForNodeMap.put(nodeReference, currentHints);
    } else {
      for (String hint : hints) {
        if (!currentHints.contains(hint)) {
          currentHints.add(hint);
        }
      }
    }
  }

  @Override
  public void removeExplicitEditorHintsForNode(SNodeReference nodeReference, String... hints) {
    Collection<String> currentHints = myEditorHintsForNodeMap.get(nodeReference);
    if (currentHints != null) {
      for (String hint : hints) {
        currentHints.remove(hint);
      }
      if (currentHints.isEmpty()) {
        myEditorHintsForNodeMap.remove(nodeReference);
      }
    }

  }

  @Override
  public String[] getExplicitEditorHintsForNode(SNodeReference nodeReference) {
    Collection<String> hints = myEditorHintsForNodeMap.get(nodeReference);
    return hints == null ? null : hints.toArray(new String[0]);
  }

  @Override
  public void clearExplicitHints() {
    myEditorHintsForNodeMap.clear();
  }

  private void fireCellSynchronized(EditorCell cell) {
    for (UpdaterListener nextListener : new ArrayList<>(myListeners)) {
      nextListener.cellSynchronizedWithModel(cell);
    }
  }

  private boolean fireEditorUpdateStarted() {
    if (myInProgress) {
      return true;
    }
    myInProgress = true;
    for (UpdaterListener nextListener : new ArrayList<>(myListeners)) {
      nextListener.editorUpdateStarted(myEditorComponent);
    }
    return false;
  }

  private void fireEditorUpdated(boolean wasInProgress) {
    if (wasInProgress) {
      return;
    }
    for (UpdaterListener nextListener : new ArrayList<>(myListeners)) {
      nextListener.editorUpdated(myEditorComponent);
    }
    myInProgress = false;
  }

  protected UpdateSessionImpl createUpdateSession(SNode node, List<SModelEvent> events) {
    UpdateSessionImpl result =
        new UpdateSessionImpl(node, events, this, myBigCellsMap, myRelatedNodes, myRelatedRefTargets, myCleanDependentCells, myDirtyDependentCells,
                              myExistenceDependentCells, myUpdateInfoIndex);
    result.setInitialEditorHints(myInitialHints);
    result.setEditorHintsForNodeMap(myEditorHintsForNodeMap);
// TODO: clean local state completely & use only info from this UpdateSessionImpl to update the editor after it.
//    myUpdateInfoIndex = null;
    return result;
  }

  @NotNull
  EditorContext getEditorContext() {
    return myEditorComponent.getEditorContext();
  }

  private void clearCaches() {
    myBigCellsMap.clear();
    myRelatedNodes.clear();
    myRelatedRefTargets.clear();
    myCleanDependentCells.clear();
    myDirtyDependentCells.clear();
    myExistenceDependentCells.clear();
  }

  public void dispose() {
    myModelListenersController.dispose();
    clearCaches();
    myDisposed = true;
  }

  public EditorCell getBigCell(SNode node) {
    assert !myDisposed;
    WeakReference<EditorCell> editorCellWeakReference = myBigCellsMap.get(node);
    return editorCellWeakReference == null ? null : editorCellWeakReference.get();
  }

  public void clearDependencies(EditorCell cell) {
    assert !myDisposed;
    myRelatedNodes.remove(cell);
    myRelatedRefTargets.remove(cell);
  }

  public Set<SNode> getRelatedNodes(EditorCell cell) {
    assert !myDisposed;
    Set<SNode> nodes = myRelatedNodes.get(cell);
    if (nodes == null) {
      return null;
    }
    return Collections.unmodifiableSet(nodes);
  }

  public Set<SNodeReference> getRelatedRefTargets(EditorCell cell) {
    assert !myDisposed;
    Set<SNodeReference> nodeProxies = myRelatedRefTargets.get(cell);
    if (nodeProxies == null) {
      return null;
    }
    return Collections.unmodifiableSet(nodeProxies);
  }

  public boolean isRelated(EditorCell cell, Pair<SNode, SNodeReference> modification) {
    assert !myDisposed;
    Set<SNode> sNodes = myRelatedNodes.get(cell);
    if (sNodes != null && sNodes.contains(modification.o1)) {
      return true;
    }

    Set<SNodeReference> refTargets = myRelatedRefTargets.get(cell);
    return refTargets != null && refTargets.contains(modification.o2);
  }

  /**
   * Used by UpdaterModelListener. Indicates if editor update should be executed as a
   * response for the specified property change, or it's sufficient to trigger EditorCells
   * synchronization.
   * <p/>
   * editor update should be triggered if:
   * - specified property was accessed "dirtily" while building this editor
   * - specified property was added/removed and corresponding property existence was checked
   * while building the editor
   *
   * @param propertyChange - pair of SNodeReference and property name modified
   * @param addedRemoved   - indicates if property was newly added or removed from node
   * @return true if incremental editor update should be triggered
   */
  boolean requiresUpdate(Pair<SNodeReference, String> propertyChange, boolean addedRemoved) {
    return myDirtyDependentCells.containsKey(propertyChange) || myExistenceDependentCells.containsKey(propertyChange) && addedRemoved;
  }

  /**
   * Performs EditorCells synchronization as a response to specified property change.
   * This method should be called only if requiresUpdate() returns false.
   *
   * @param propertyChange - pair of SNodeReference and property name modified
   */
  void synchronizeCells(Pair<SNodeReference, String> propertyChange) {
    // TODO: do we need to synchronize myExistenceDependentCells cells at all?
    Iterable<EditorCell> cellsToSynchronize = myExistenceDependentCells.get(propertyChange);
    if (cellsToSynchronize != null) {
      for (EditorCell cell : cellsToSynchronize) {
        APICellAdapter.synchronizeViewWithModel(cell);
        fireCellSynchronized(cell);
      }
    }

    cellsToSynchronize = myCleanDependentCells.get(propertyChange);
    if (cellsToSynchronize != null) {
      for (EditorCell cell : cellsToSynchronize) {
        APICellAdapter.synchronizeViewWithModel(cell);
        fireCellSynchronized(cell);
      }
    }

    /*
     In the prev. version of the editor updater there was a code calling
     APICellAdapter.synchronizeViewWithModel(cell) for all editorCells within the same BigCell.
     This can be useful to revert any modifications performed by user, but not reflected within
     the model (just changing visual cell state e.g. modifying editable constant cell).

     I've removed this code because I did not find any reasons for this logic. If there will be
     use cases where it will be useful, corresponding code can be returned here.
    */
  }

  boolean isSelectionProcessingAllowed() {
    return myProcessSelection;
  }

  @NotNull
  EditorComponent getEditorComponent() {
    return myEditorComponent;
  }

  UpdateInfoIndex getUpdateInfoIndex() {
    return myUpdateInfoIndex;
  }

  private class CommandContextListenerImpl extends CommandContextListener {
    @Override
    public void topLevelCommandStarted() {
      myProcessSelection = true;
    }

    @Override
    public void topLevelCommandFinished() {
      try {
        myModelListenersController.flush();
      } finally {
        myProcessSelection = false;
      }
    }
  }
}
