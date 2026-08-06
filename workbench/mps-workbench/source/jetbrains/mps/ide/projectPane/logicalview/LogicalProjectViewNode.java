/*
 * Copyright 2000-2024 JetBrains s.r.o. Use of this source code is governed by the Apache 2.0 license that can be found in the LICENSE file.
 */
package jetbrains.mps.ide.projectPane.logicalview;

import com.intellij.icons.AllIcons;
import com.intellij.ide.projectView.PresentationData;
import com.intellij.ide.projectView.ProjectViewNode;
import com.intellij.ide.projectView.ViewSettings;
import com.intellij.ide.util.treeView.AbstractTreeNode;
import com.intellij.ide.util.treeView.InplaceCommentAppender;
import com.intellij.ide.util.treeView.PathElementIdProvider;
import com.intellij.openapi.project.Project;
import com.intellij.openapi.util.registry.Registry;
import com.intellij.openapi.vfs.VirtualFile;
import com.intellij.ui.LayeredIcon;
import com.intellij.ui.SimpleTextAttributes;
import jetbrains.mps.errors.MessageStatus;
import jetbrains.mps.errors.item.ReportItem;
import jetbrains.mps.ide.project.ProjectHelper;
import jetbrains.mps.ide.projectView.MPSProjectViewSettings;
import jetbrains.mps.ide.projectView.MPSProjectViewSettings.Immutable;
import jetbrains.mps.ide.ui.tree.ContextValueProvider;
import jetbrains.mps.ide.vfs.IdeaFileSystem;
import jetbrains.mps.nodefs.MPSNodeVirtualFile;
import jetbrains.mps.project.DevKit;
import jetbrains.mps.project.GenerationStatus;
import jetbrains.mps.project.HasGenerationStatus;
import jetbrains.mps.project.MPSProject;
import jetbrains.mps.project.MissionControl;
import jetbrains.mps.project.Solution;
import jetbrains.mps.smodel.Generator;
import jetbrains.mps.smodel.Language;
import jetbrains.mps.smodel.SObject;
import jetbrains.mps.vfs.IFile;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SModelReference;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.module.SModule;
import org.jetbrains.mps.openapi.module.SModuleReference;

import javax.swing.Icon;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Optional;
import java.util.function.Predicate;

/**
 * Defines basic structure of the project view nodes hierarchy.
 * Also contains utility support for bridging IDEA's VirtualFile-based API with MPS's SModel.
 *
 * @author Fedor Isakov
 */
public abstract class LogicalProjectViewNode<Value> extends ProjectViewNode<Value> implements ContextValueProvider, PathElementIdProvider {

  private volatile @Nullable Boolean myHasOwnProblems = null;

  protected LogicalProjectViewNode(Project project, @NotNull Value value, ViewSettings viewSettings) {
    super(project, value, viewSettings);
  }

  @Override
  public @NotNull String getPathElementId() {
    Object value = getEqualityObject();
    return value != null ? value.toString() : "";
  }

  @Override
  public <ValueType> Optional<ValueType> contextValueOfType(Class<ValueType> valueTypeClass) {
    AbstractTreeNode<?> candidate = this;
    while (candidate != null) {
      if (valueTypeClass.isInstance(candidate.getValue())) {
        return Optional.of(valueTypeClass.cast(candidate.getValue()));
      }
      candidate = candidate.getParent();
    }
    return Optional.empty();
  }

  @Override
  public <ValueType> Optional<ValueType> parentContextValueOfType(Class<ValueType> valueTypeClass) {
    if (getParent() instanceof ContextValueProvider) {
      return ((ContextValueProvider) getParent()).contextValueOfType(valueTypeClass);
    }
    return Optional.empty();
  }

  /**
   * Tries to extract objects belonging to MPS SModel API from the virtual file.
   * The associated values may be instances of:
   * <ul>
   *   <li>SModule</li>
   *   <li>SModel</li>
   *   <li>SNode</li>
   * </ul>.
   * <p>These are wrapped into {@link SObject} and returned as a collection.
   * <p>Must be called in a read action
   *
   * @return collection of SObject instances corresponding to {@code virtualFile} or an empty collection
   */
  protected Collection<SObject> extractSObjects(VirtualFile virtualFile) {
    MPSProject mpsProject = ProjectHelper.fromIdeaProject(getProject());
    mpsProject.getModelAccess().checkReadAccess();
    if (virtualFile instanceof MPSNodeVirtualFile) {
      SNode node = ((MPSNodeVirtualFile) virtualFile).getNode();
      return node != null ? Collections.singletonList(SObject.of(node)) : Collections.emptyList();
    }
    IFile file = toIFile(virtualFile, mpsProject.getFileSystem());
    if (file != null) {
      MissionControl.ProjectFileLookup lookup = MissionControl.getInstance(getProject()).lookupProjectFile(file);
      Collection<SModuleReference> sModuleReferences = lookup.getModuleReferences();
      if (!sModuleReferences.isEmpty()) {
        if (sModuleReferences.size() == 1) {
          SModule module = sModuleReferences.iterator().next().resolve(mpsProject.getRepository());
          return module == null ? Collections.emptyList() : Collections.singletonList(SObject.of(module));
        }
        List<SObject> result = new ArrayList<>(sModuleReferences.size());
        for (SModuleReference reference : sModuleReferences) {
          SModule module = reference.resolve(mpsProject.getRepository());
          if (module != null) {
            result.add(SObject.of(module));
          }
        }
        return result;
      }

      SModelReference modelRef = lookup.getModelReference();
      if (modelRef != null) {
        SModel model = modelRef.resolve(mpsProject.getRepository());
        return model != null ?  Collections.singletonList(SObject.of(model)) : Collections.emptyList();
      }
    }
    return Collections.emptyList();
  }

  protected <T> ProjectViewNode<?> createNode(T value) {
    if (value instanceof Language) {
      return new LanguageProjectViewNode(getProject(), (Language) value, getSettings());
    } else if (value instanceof Solution) {
      return new SolutionProjectViewNode(getProject(), (Solution) value, getSettings());
    } else if (value instanceof DevKit) {
      return new DevkitProjectViewNode(getProject(), (DevKit) value, getSettings());
    } else if (value instanceof Generator) {
      return new GeneratorProjectViewNode(getProject(), (Generator) value, getSettings());
    } else {
      return null;
    }
  }

  protected MPSProjectViewSettings getMPSSettings() {
    // FIXME the method getSettings in superclass should be made open
    if (getSettings() instanceof MPSProjectViewSettings) return ((MPSProjectViewSettings) getSettings());
    return Immutable.DEFAULT;
  }

  @Override
  protected void update(@NotNull PresentationData presentation) {
    ProjectHelper.fromIdeaProject(getProject()).getModelAccess()
                 .runReadAction(() -> updateInReadAction(presentation));
  }

  /**
   * Will be called in read action. Either this method or {@link #update(PresentationData)}
   * must be overridden.
   */
  protected void updateInReadAction(PresentationData presentation) {
    //
  }

  @Override
  protected void postprocess(@NotNull PresentationData presentation) {
    super.postprocess(presentation);
    if (Registry.is("projectView.showHierarchyErrors") && this instanceof LogicalProjectViewNode.ProblemHierarchyNode) {
      this.myHasOwnProblems = hasProblems(this::matchesExactly);
    }
    
    if (Registry.is("mps.projectView.generationRequired.icon")) {
      MissionControl missionControl = MissionControl.getInstance(getProject());
      if (missionControl != null) {
        if (missionControl.getMessagesContainer().hasMessagesInHierarchy(this::matches, this::shouldMarkModified, MessageStatus.OK, true)) {
          presentation.setIcon(getModifiedIcon(presentation.getIcon(true)));
        }
      }
    }
  }

  @Override
  protected void appendInplaceComments(@NotNull InplaceCommentAppender appender) {
    if (!Registry.is("mps.projectView.generationRequired.icon")) {
      MissionControl missionControl = MissionControl.getInstance(getProject());
      if (missionControl != null) {
        if (missionControl.getMessagesContainer().hasMessagesInHierarchy(this::matches, this::shouldMarkModified, MessageStatus.OK, true)) {
          appender.append(String.format(" (%s)", GenerationStatus.REQUIRED.getMessage()), SimpleTextAttributes.GRAY_ATTRIBUTES);
        }
      }
    }
  }

  protected boolean shouldMarkModified(ReportItem reportItem) {
    return (reportItem instanceof HasGenerationStatus &&
            ((HasGenerationStatus) reportItem).getStatus() == GenerationStatus.REQUIRED);
  }

  protected boolean shouldMarkReadonly(ReportItem reportItem) {
    return (reportItem instanceof HasGenerationStatus &&
            ((HasGenerationStatus) reportItem).getStatus() == GenerationStatus.READONLY);
  }

  protected Icon getModifiedIcon(@Nullable Icon sourceIcon) {
    LayeredIcon icon = new LayeredIcon(2);
    icon.setIcon(sourceIcon, 0);
    icon.setIcon(AllIcons.General.Modified, 1, -AllIcons.General.Modified.getIconWidth(), 0);
    return icon;
  }

  public boolean hasOwnProblems() {
    Boolean hasOwnProblems = myHasOwnProblems;
    return hasOwnProblems != null ? hasOwnProblems : false ;
  }

  @Override
  protected boolean hasProblemFileBeneath() {
    if (!Registry.is("projectView.showHierarchyErrors")) return false;

    return hasProblems(this::matches);
  }

  private boolean hasProblems(Predicate<SObject> matches) {
    MissionControl missionControl = MissionControl.getInstance(getProject());
    if (missionControl == null) return false;
    return getMPSSettings().isShowErrorsOnly() ?
           missionControl.getMessagesContainer().hasErrorsInHierarchy(matches) :
           missionControl.getMessagesContainer().hasWarningsOrErrorsInHierarchy(matches);
  }

  protected String formatErrorsToolTip(List<ReportItem> errorMessages) {
    if (errorMessages.isEmpty()) {
      return null;
    }
    StringBuilder sb = new StringBuilder();
    ReportItem firstItem = errorMessages.get(0);
    sb.append(firstItem.getSeverity()).append(": ").append(firstItem.getMessage());
    if (errorMessages.size() > 1) {
      sb.append(" (and ").append(errorMessages.size() - 1).append(" more issues)");
    }
    return sb.toString();
  }

  @Override
  public boolean contains(@NotNull VirtualFile file) {
    MPSProject mpsProject = ProjectHelper.fromIdeaProject(getProject());
    return mpsProject.getModelAccess()
             .computeReadAction(() -> {
                 boolean contains = false;
                 for (SObject sObject : extractSObjects(file)) {
                   if (containsSObject(sObject)) {
                     contains = true;
                     break;
                   }
                 }
                 if (LOG.isDebugEnabled() && contains) {
                   LOG.debug(String.format("%s(%s) contains %s", this.getClass().getSimpleName(), getValue(), file));
                 }
                 return contains;
             });
  }

  /**
   * Test if an SObject is contained within this node's hierarchy.
   * Always called in a read action.
   */
  protected boolean containsSObject(SObject sObject) {
    return false;
  }

  /**
   * Test if the node's value matches a wildcard specified in the parameter.
   * For a non-wildcard SObject, this is equivalent to {@link #containsSObject(SObject)}.
   * For a partially specified SObject, first ensure the node's parent matches it.
   */
  protected boolean matches(SObject wildcard) {
    return containsSObject(wildcard);
  }

  /**
   * Test if the node's value matches a wildcard specified in the parameter.
   * For a non-wildcard SObject, this is equivalent to {@link #canRepresentSObject(SObject)}.
   * For a partially specified SObject, first ensure the node's parent matches it.
   */
  protected final boolean matchesExactly(SObject wildcard) {
    return parentMatches(wildcard) && canRepresentSObject(wildcard);
  }

  protected boolean parentMatches(SObject wildcard) {
    if (getParent() instanceof LogicalProjectViewNode) {
      return ((LogicalProjectViewNode<?>) getParent()).matches(wildcard);
    }
    return false;
  }

  public boolean canRepresent(Object element) {
    if (element instanceof VirtualFile) {
      MPSProject mpsProject = ProjectHelper.fromIdeaProject(getProject());
      return mpsProject.getModelAccess().computeReadAction(() -> {
        for (SObject sObject : extractSObjects((VirtualFile) element)) {
          if (canRepresentSObject(sObject)) {
            return true;
          }
        }
        return false;
      });
    }
    return false;
  }

  /**
   * Always called in a read action.
   */
  protected boolean canRepresentSObject(SObject sObject) {
    return false;
  }

  protected Icon layeredIcon(Icon... icons) {
    return LayeredIcon.layeredIcon(icons);
  }

  @SuppressWarnings({"removal"})
  private IFile toIFile(VirtualFile virtualFile, IdeaFileSystem fs) {
    // FIXME this code is kept around only for the lack of a better alternative
    if (!fs.canConvert(virtualFile)) {
      return null;
    }
    return fs.fromVirtualFile(virtualFile);
  }

  protected <Type> Type anscestorOfType(Class<Type> typeClass) {
    AbstractTreeNode<?> candidate = this.getParent();
    while (candidate != null) {
      if (typeClass.isInstance(candidate)) {
        return typeClass.cast(candidate);
      }
      candidate = candidate.getParent();
    }
    return null;
  }


  /**
   * Marker interface to detect nodes that are containers, yet can have own error messages attached.
   */
  protected interface ProblemHierarchyNode {

  }
}
