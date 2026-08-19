/*
 * Copyright 2000-2024 JetBrains s.r.o. Use of this source code is governed by the Apache 2.0 license that can be found in the LICENSE file.
 */
package jetbrains.mps.project;

import com.intellij.openapi.Disposable;
import com.intellij.openapi.project.Project;
import jetbrains.mps.errors.MessageStatus;
import jetbrains.mps.errors.item.ReportItem;
import jetbrains.mps.ide.project.ProjectHelper;
import jetbrains.mps.smodel.SObject;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SModelReference;
import org.jetbrains.mps.openapi.module.SModule;
import org.jetbrains.mps.openapi.module.SModuleReference;
import org.jetbrains.mps.openapi.module.SRepository;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.function.Predicate;
import java.util.stream.Collectors;

/**
 * @author Fedor Isakov
 */
public class MessagesContainer implements Disposable {

  private static class Index {

    private final ConcurrentMap<SModuleReference, Set<SModelReference>> myModelsWithMessages = new ConcurrentHashMap<>();
    private final ConcurrentMap<SModelReference, List<ReportItem>> myModelMessages = new ConcurrentHashMap<>();
    private final ConcurrentMap<SModuleReference, List<ReportItem>> myModuleMessages = new ConcurrentHashMap<>();

    void reportMessages(SModuleReference moduleReference, Collection<? extends ReportItem> errors) {
      myModuleMessages.merge(moduleReference, new ArrayList<>(errors), (oldList, newList) -> {
        // copy on write
        newList.addAll(oldList); return newList;
      });
    }

    void reportMessages(SModuleReference moduleReference, SModelReference modelReference, Collection<? extends ReportItem> errors) {
      myModelsWithMessages.putIfAbsent(moduleReference, new HashSet<>());
      myModelsWithMessages.merge(moduleReference,
                                 new HashSet<>(Collections.singleton(modelReference)),
                                 (oldSet, newSet) -> {
                                    newSet.addAll(oldSet); return newSet;
                                  });
      myModelMessages.merge(modelReference, new ArrayList<>(errors), (oldList, newList) -> {
        // copy on write
        newList.addAll(oldList); return newList;
      });
    }

    List<ReportItem> getModuleMessages(SModuleReference moduleReference) {
      return myModuleMessages.getOrDefault(moduleReference, Collections.emptyList());
    }

    List<ReportItem> getModelMessages(SModelReference modelReference) {
      return myModelMessages.getOrDefault(modelReference, Collections.emptyList());
    }

    boolean clearMessages(SModuleReference moduleReference) {
      boolean changed = myModuleMessages.remove(moduleReference) != null;
      Set<SModelReference> set = myModelsWithMessages.remove(moduleReference);
      if (set != null) {
        changed |= set.stream()
                      .reduce(false, (acc, modelRef) -> myModelMessages.remove(modelRef) != null || acc, (a, b) -> a || b);
      }
      return changed;
    }

    boolean clearMessages(SModelReference modelReference) {
      return myModelMessages.remove(modelReference) != null;
    }

    boolean hasAnyMessages(Predicate<SObject> predicate, Predicate<ReportItem> reportItemFilter, SRepository repository) {
      return hasModuleMessages(predicate, reportItemFilter, repository) || hasModelMessages(predicate, reportItemFilter, repository);
    }

    boolean hasModuleMessages(Predicate<SObject> predicate, Predicate<ReportItem> reportItemFilter, SRepository repository) {
      return myModuleMessages.entrySet().stream()
          .filter(e -> e.getKey().resolve(repository) != null)
          .filter(e -> predicate.test(SObject.of(e.getKey().resolve(repository))))
          .flatMap(e -> e.getValue().stream())
          .anyMatch(reportItemFilter);
    }

    boolean hasModelMessages(Predicate<SObject> predicate, Predicate<ReportItem> reportItemFilter, SRepository repository) {
      for (Map.Entry<SModuleReference, Set<SModelReference>> moduleEntry : myModelsWithMessages.entrySet()) {
        SModule module = moduleEntry.getKey().resolve(repository);
        if (module == null || !predicate.test(SObject.wildcardOf(module))) {
          continue;
        }
        for (SModelReference modelReference : moduleEntry.getValue()) {
          SModel model = modelReference.resolve(repository);
          if (model == null || !predicate.test(SObject.of(model))) {
            continue;
          }
          for (ReportItem reportItem : myModelMessages.getOrDefault(modelReference, Collections.emptyList())) {
            if (reportItemFilter.test(reportItem)) {
              return true;
            }
          }
        }
      }
      return false;
    }

  }

  private EnumMap<MessageStatus, Index> myIndices = new EnumMap<>(MessageStatus.class);
  private final Project myProject;

  protected MessagesContainer(Project project) {
    myProject = project;
    for (MessageStatus status : MessageStatus.values()) {
      myIndices.put(status, new Index());
    }
  }

  @Override
  public void dispose() {
    myIndices.clear();
  }

  protected void reportMessages(SModule module, Collection<? extends ReportItem> errors) {
    assert (!errors.isEmpty());
    errors.stream()
          .collect(Collectors.groupingBy(ReportItem::getSeverity))
          .forEach((severity, errorsForSeverity) -> {
            myIndices.get(severity).reportMessages(module.getModuleReference(), errorsForSeverity);
          });
  }

  protected void reportMessages(SModel model, Collection<? extends ReportItem> errors) {
    assert (!errors.isEmpty());
    if (model.getModule() == null) return;
    errors.stream()
          .collect(Collectors.groupingBy(ReportItem::getSeverity))
          .forEach((severity, errorsForSeverity) -> {
            myIndices.get(severity).reportMessages(model.getModule().getModuleReference(), model.getReference(), errorsForSeverity);
          });
  }

  protected boolean clearMessages(SModuleReference moduleReference) {
    return myIndices.values().stream()
        .reduce(false, (acc, idx) -> idx.clearMessages(moduleReference) || acc, (a, b) -> a || b);
  }

  protected boolean clearMessages(SModule module) {
    return clearMessages(module.getModuleReference());
  }

  protected boolean clearMessages(SModelReference modelReference) {
    return myIndices.values().stream()
                    .reduce(false, (acc, idx) -> idx.clearMessages(modelReference) || acc, (a, b) -> a || b);
  }

  protected boolean clearMessages(SModel model) {
    return clearMessages(model.getReference());
  }

  public boolean hasErrorsInHierarchy(Predicate<SObject> hierarchyContains) {
    return hasMessagesInHierarchy(hierarchyContains, MessageStatus.ERROR, true);
  }

  public boolean hasWarningsOrErrorsInHierarchy(Predicate<SObject> hierarchyContains) {
    return hasMessagesInHierarchy(hierarchyContains, MessageStatus.WARNING, false);
  }

  public boolean hasMessagesInHierarchy(Predicate<SObject> hierarchyContains, MessageStatus severity, boolean exactly) {
    return hasMessagesInHierarchy(hierarchyContains, ReportItem.class::isInstance, severity, exactly);
  }

  /**
   * Tests if there are errors assigned to a node in the S-objects hierarchy. The parameter {@code hierarchyContains}
   * is used to test whether the hierarchy contains a given S-object.
   * The predicate {@code hierarchyContains} is expected to accept wildcard SObject instances in order to facilitate
   * filtering of messages by groups.
   */
  public boolean hasMessagesInHierarchy(Predicate<SObject> hierarchyContains, Predicate<ReportItem> reportItemFilter, MessageStatus severity, boolean exactly) {
    MPSProject mpsProject = ProjectHelper.fromIdeaProject(myProject);
    return mpsProject.getModelAccess().computeReadAction(() -> {
      SRepository repository = mpsProject.getRepository();
      if (exactly) {
        Index index = myIndices.get(severity);
        return index != null && index.hasAnyMessages(hierarchyContains, reportItemFilter, repository);
      }
      for (Map.Entry<MessageStatus, Index> index : myIndices.entrySet()) {
        if (index.getKey().compareTo(severity) < 0) {
          continue;
        }
        if (index.getValue().hasAnyMessages(hierarchyContains, reportItemFilter, repository)) {
          return true;
        }
      }
      return false;
    });
  }

  public List<ReportItem> getMessages(SModuleReference moduleRef, MessageStatus severity, boolean exactly) {
    return myIndices.entrySet().stream()
                    .filter(index -> severityIsAtLeast(index.getKey(), severity, exactly))
                    .flatMap(index -> index.getValue().getModuleMessages(moduleRef).stream())
                    .collect(Collectors.toList());
  }

  public List<ReportItem> getMessages(SModule module, MessageStatus severity, boolean exactly) {
    return getMessages(module.getModuleReference(), severity, exactly);
  }

  public List<ReportItem> getMessages(SModelReference modelRef, MessageStatus severity, boolean exactly) {
    return myIndices.entrySet().stream()
                    .filter(index -> severityIsAtLeast(index.getKey(), severity, exactly))
                    .flatMap(index -> index.getValue().getModelMessages(modelRef).stream())
                    .collect(Collectors.toList());
  }

  public List<ReportItem> getMessages(SModel model, MessageStatus severity, boolean exactly) {
    return getMessages(model.getReference(), severity, exactly);
  }

  public List<ReportItem> getInfoMessages(SModel model) {
    return getMessages(model, MessageStatus.OK, true);
  }

  public List<ReportItem> getInfoMessages(SModule module) {
    return getMessages(module, MessageStatus.OK, true);
  }

  public List<ReportItem> getWarninngMessages(SModel model) {
    return getMessages(model, MessageStatus.WARNING, true);
  }

  public List<ReportItem> getWarningMessages(SModule module) {
    return getMessages(module, MessageStatus.WARNING, true);
  }

  public List<ReportItem> getErrorMessages(SModel model) {
    return getMessages(model, MessageStatus.ERROR, true);
  }

  public List<ReportItem> getErrorMessages(SModule module) {
    return getMessages(module, MessageStatus.ERROR, true);
  }

  private static boolean severityIsAtLeast(MessageStatus severity, MessageStatus toCompare, boolean exactly) {
    int sign = severity.compareTo(toCompare);
    return exactly ? sign == 0 : sign >= 0;
  }

}
