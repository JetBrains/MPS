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
package jetbrains.mps.ide.ui.dialogs.properties;

import com.intellij.icons.AllIcons.Nodes;
import com.intellij.ide.util.BrowseFilesListener;
import com.intellij.openapi.actionSystem.AnActionEvent;
import com.intellij.openapi.application.ApplicationManager;
import com.intellij.openapi.application.ModalityState;
import com.intellij.openapi.fileChooser.FileChooserDescriptor;
import com.intellij.openapi.fileChooser.FileChooserDescriptorFactory;
import com.intellij.openapi.fileChooser.FileChooserFactory;
import com.intellij.openapi.progress.ProgressIndicator;
import com.intellij.openapi.progress.ProgressManager;
import com.intellij.openapi.progress.Task;
import com.intellij.openapi.progress.util.BackgroundTaskUtil;
import com.intellij.openapi.project.Project;
import com.intellij.openapi.ui.ComboBox;
import com.intellij.openapi.ui.DialogWrapper;
import com.intellij.openapi.ui.Messages;
import com.intellij.openapi.util.Disposer;
import com.intellij.openapi.util.EmptyRunnable;
import com.intellij.refactoring.RefactoringBundle;
import com.intellij.ui.AnActionButtonRunnable;
import com.intellij.ui.AnActionButtonUpdater;
import com.intellij.ui.CheckboxTree;
import com.intellij.ui.CheckboxTreeBase.CheckPolicy;
import com.intellij.ui.CheckedTreeNode;
import com.intellij.ui.FieldPanel;
import com.intellij.ui.IdeBorderFactory;
import com.intellij.ui.InsertPathAction;
import com.intellij.ui.ScrollPaneFactory;
import com.intellij.ui.SpeedSearchComparator;
import com.intellij.ui.ToolbarDecorator;
import com.intellij.ui.components.JBCheckBox;
import com.intellij.ui.components.JBLabel;
import com.intellij.ui.table.JBTable;
import com.intellij.uiDesigner.core.GridConstraints;
import com.intellij.uiDesigner.core.GridLayoutManager;
import com.intellij.util.ui.AbstractTableCellEditor;
import com.intellij.util.ui.ItemRemovable;
import com.intellij.util.ui.JBUI;
import com.intellij.util.ui.UIUtil;
import jetbrains.mps.VisibleModuleRegistry;
import jetbrains.mps.extapi.module.FacetsRegistry;
import jetbrains.mps.findUsages.CompositeFinder;
import jetbrains.mps.icons.MPSIcons.General;
import jetbrains.mps.ide.documentation.DocumentationFacetTab;
import jetbrains.mps.ide.findusages.model.IResultProvider;
import jetbrains.mps.ide.findusages.model.SearchQuery;
import jetbrains.mps.ide.findusages.model.holders.GenericHolder;
import jetbrains.mps.ide.findusages.model.holders.ModelsHolder;
import jetbrains.mps.ide.findusages.model.scopes.FindUsagesScope;
import jetbrains.mps.ide.findusages.model.scopes.ModelsScope;
import jetbrains.mps.ide.findusages.model.scopes.ModulesScope;
import jetbrains.mps.ide.findusages.view.FindUtils;
import jetbrains.mps.ide.generator.GenPlanPickPanel;
import jetbrains.mps.ide.project.ProjectHelper;
import jetbrains.mps.ide.ui.dialogs.properties.choosers.CommonChoosers;
import jetbrains.mps.ide.ui.dialogs.properties.editors.RuleTypeEditor;
import jetbrains.mps.ide.ui.dialogs.properties.genpriorities.GeneratorPrioritiesTree;
import jetbrains.mps.ide.ui.dialogs.properties.input.ModuleCollector;
import jetbrains.mps.ide.ui.dialogs.properties.renderers.RuleTypeRenderer;
import jetbrains.mps.ide.ui.dialogs.properties.renders.DependencyCellState;
import jetbrains.mps.ide.ui.dialogs.properties.renders.ModelTableCellRender;
import jetbrains.mps.ide.ui.dialogs.properties.renders.ModuleTableCellRender;
import jetbrains.mps.ide.ui.dialogs.properties.roots.editors.ModelRootContentEntriesEditor;
import jetbrains.mps.ide.ui.dialogs.properties.tables.items.DependenciesTableItem;
import jetbrains.mps.ide.ui.dialogs.properties.tables.items.DependenciesTableItem.ModuleType;
import jetbrains.mps.ide.ui.dialogs.properties.tables.models.DependTableModel;
import jetbrains.mps.ide.ui.dialogs.properties.tables.models.ModuleDependTableModel;
import jetbrains.mps.ide.ui.dialogs.properties.tables.models.UsedLangsTableModel;
import jetbrains.mps.ide.ui.dialogs.properties.tabs.BaseTab;
import jetbrains.mps.ide.ui.finders.LanguageModelImportFinder;
import jetbrains.mps.ide.ui.finders.LanguageUsagesFinder;
import jetbrains.mps.ide.ui.finders.ModelUsagesFinder;
import jetbrains.mps.ide.ui.finders.ModuleUsagesFinder;
import jetbrains.mps.module.PersistenceContextImpl;
import jetbrains.mps.persistence.MementoImpl;
import jetbrains.mps.project.AbstractModule;
import jetbrains.mps.project.DevKit;
import jetbrains.mps.project.MPSProject;
import jetbrains.mps.project.ModuleInstanceCondition;
import jetbrains.mps.project.Solution;
import jetbrains.mps.project.VisibleModuleCondition;
import jetbrains.mps.project.structure.modules.Dependency;
import jetbrains.mps.project.structure.modules.DevkitDescriptor;
import jetbrains.mps.project.structure.modules.GeneratorDescriptor;
import jetbrains.mps.project.structure.modules.LanguageDescriptor;
import jetbrains.mps.project.structure.modules.ModuleDescriptor;
import jetbrains.mps.project.structure.modules.mappingpriorities.MappingConfig_AbstractRef;
import jetbrains.mps.project.structure.modules.mappingpriorities.MappingConfig_ExternalRef;
import jetbrains.mps.project.structure.modules.mappingpriorities.MappingConfig_RefSet;
import jetbrains.mps.project.structure.modules.mappingpriorities.MappingPriorityRule;
import jetbrains.mps.project.structure.modules.mappingpriorities.RuleType;
import jetbrains.mps.refactoring.Renamer;
import jetbrains.mps.scope.VisibleDepsSearchScope;
import jetbrains.mps.smodel.Generator;
import jetbrains.mps.smodel.Language;
import jetbrains.mps.smodel.ModelAccessHelper;
import jetbrains.mps.smodel.ModelReadRunnable;
import jetbrains.mps.smodel.ModuleDependencyVersions;
import jetbrains.mps.smodel.language.LanguageRegistry;
import jetbrains.mps.util.Computable;
import jetbrains.mps.util.ConditionalIterable;
import jetbrains.mps.util.FileUtil;
import jetbrains.mps.util.IterableUtil;
import jetbrains.mps.util.NameUtil;
import jetbrains.mps.util.Pair;
import jetbrains.mps.util.ToStringComparator;
import jetbrains.mps.vfs.IFile;
import jetbrains.mps.vfs.IFileSystem;
import jetbrains.mps.vfs.VFSManager;
import jetbrains.mps.vfs.util.PathUtil;
import org.jetbrains.annotations.Nls;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.language.SLanguage;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SModelReference;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeReference;
import org.jetbrains.mps.openapi.module.FacetsFacade;
import org.jetbrains.mps.openapi.module.SDependencyScope;
import org.jetbrains.mps.openapi.module.SModule;
import org.jetbrains.mps.openapi.module.SModuleFacet;
import org.jetbrains.mps.openapi.module.SModuleReference;
import org.jetbrains.mps.openapi.module.SRepository;
import org.jetbrains.mps.openapi.module.SearchScope;
import org.jetbrains.mps.openapi.persistence.ModulePersistenceContext;
import org.jetbrains.mps.openapi.ui.Modifiable;
import org.jetbrains.mps.openapi.ui.persistence.Tab;

import javax.swing.BorderFactory;
import javax.swing.BoxLayout;
import javax.swing.DefaultCellEditor;
import javax.swing.JComboBox;
import javax.swing.JComponent;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JSpinner;
import javax.swing.JTable;
import javax.swing.JTextField;
import javax.swing.ListSelectionModel;
import javax.swing.SpinnerNumberModel;
import javax.swing.event.ChangeEvent;
import javax.swing.table.AbstractTableModel;
import javax.swing.table.TableCellEditor;
import javax.swing.table.TableCellRenderer;
import javax.swing.table.TableColumn;
import javax.swing.text.DefaultFormatter;
import javax.swing.tree.TreeNode;
import java.awt.Component;
import java.awt.Dimension;
import java.awt.FlowLayout;
import java.awt.event.FocusEvent;
import java.awt.event.FocusListener;
import java.awt.event.ItemEvent;
import java.awt.event.ItemListener;
import java.awt.event.MouseEvent;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.EventObject;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Queue;
import java.util.Set;
import java.util.function.Predicate;
import java.util.stream.Collectors;
import java.util.stream.Stream;
import java.util.stream.StreamSupport;

public class ModulePropertiesConfigurable extends MPSPropertiesConfigurable {
  private final ModuleDescriptor myModuleDescriptor;
  private AbstractModule myModule;
  /*
   * Generally module's repository would be the same as the project's.
   * However, one of possible repository story evolution scenario suggests deployed modules could
   * belong to a different repository than the project's, hence it's better to record actual one.
   * XXX is it possible that module comes here not attached to a repo?
   */
  private final SRepository myModuleRepository;
  private final Project myIdeaProject;
  private final FacetTabsPersistence myFacetTabsPersistence;

  private ModuleCommonTab myCommonTab;
  private AddFacetsTab myControlTab;

  // We are tightly coupled with IDEA IDE here, no reason to be shy about project kind.
  public ModulePropertiesConfigurable(SModule module, MPSProject project) {
    super(project);
    myIdeaProject = project.getProject();
    // XXX for whatever reason, it looks like we are not inside read although passing SModule here (e.g. ModuleProperties_Action doesn't bother to get one). Why?
    //     Same for ModelPropertiesConfigurable, btw.
    //     For scenario when module comes not from the project's repo, use of module.getRepository looks odd as we lock project repo
    //     to get data of a module from a different repository (although one can pretend that locking project repo locks all dependency repositories as well).
    myModuleRepository = module.getRepository();
    myModule = (AbstractModule) module;
    myModuleDescriptor = myModule.getModuleDescriptor();
    myFacetTabsPersistence = new FacetTabsPersistence(project).initFromEP();

    setReadOnly(module.isReadOnly());

    myCommonTab = new ModuleCommonTab();
    registerTabs(myCommonTab);

    if (!(myModule instanceof DevKit)) {
      final ModuleDependenciesTab moduleDependenciesTab = new ModuleDependenciesTab();
      registerTabs(moduleDependenciesTab, new ModuleUsedLanguagesTab());
      if (myModule instanceof Language) {
        registerTabs(new RuntimeTab());
      }
      if (myModule instanceof Generator) {
        registerTabs(new GeneratorAdvancesTab((Generator) myModule, new GeneratorDependencyProvider(moduleDependenciesTab)));
      }
    }
    // facet tabs and managing AddFacetTab get updated on each apply to reflect actual SModuleFacet instances, see #apply(), below
    for (SModuleFacet moduleFacet : myModule.getFacets()) {
      Tab facetTab = myFacetTabsPersistence.getFacetTab(moduleFacet);
      if (facetTab != null) {
        registerTabs(facetTab);
      }
    }

    registerTabs(myControlTab = new AddFacetsTab());
  }

  @Override
  public boolean isModified() {
    if (myModule.isReadOnly()) {
      return false;
    }
    return super.isModified();
  }

  @Override
  public void apply() {
    super.apply();
    final int selectedTabIndex = getSelectedTabIndex();
    myFacetTabsPersistence.forEachTab(this::removeTab);
    myFacetTabsPersistence.clearTabs();
    removeTab(myControlTab);
    myModuleRepository.getModelAccess().runReadAction(() -> {
      if (!(myModule instanceof DevKit)) {
        myCommonTab.reloadModelRoots();
      }
      // unlike similar code in the cons, above, we init() and add tabs right away
      for (SModuleFacet moduleFacet : myModule.getFacets()) {
        Tab facetTab = myFacetTabsPersistence.getFacetTab(moduleFacet);
        if (facetTab != null) {
          facetTab.init();
          addTab(facetTab);
        }
      }
      myControlTab = new AddFacetsTab();
      myControlTab.init();
      addTab(myControlTab);
    });
    if (getTabsCount() > selectedTabIndex) {
      // XXX indeed, not a very nice assumption that new tabs are in the same order, just didn't find a better way to keep actual tab open
      selectTab(selectedTabIndex);
    }
  }

  @Override
  protected void save() {
    // let facet instances serialize their data into facet descriptors. Would be better to do that for
    // changed (Tab.isModified()) facets only, but there's no (easy?) way to figure out module facet from a tab, thus
    // we save all module facets with active descriptors (it's AddFacetTab#apply() responsibility to add facet descriptors
    // for newly added facets, and to remove descriptors for unchecked facets. This sharing is questionable, perhaps, could do both here).
    ModulePersistenceContext mpc = PersistenceContextImpl.forModule(myModule);
    for (SModuleFacet moduleFacet : myModule.getFacets()) {
      myModuleDescriptor.updateFacetDescriptor(moduleFacet, mpc);
    }

    if (myModule instanceof Language) {
      final ModuleDependencyVersions mv = new ModuleDependencyVersions(myMPSProject.getComponent(LanguageRegistry.class), myModuleRepository);
      mv.resetVersions();
      for (Generator generator : ((Language) myModule).getOwnedGenerators()) {
        if (!mv.dependenciesPresent(generator)) {
          continue; //can't update module versions for a module with broken dep
        }
        mv.update(generator);
      }
    }

    // todo: !!!
    myModule.setModuleDescriptor(myModuleDescriptor);
    //In case of Generator saving lead to reload of containing Language
    //As result Language unload old Generator module and creates new - so we need to update object
    // FIXME why on Earth do we set module descriptor to a module?! Is there better way to tell module to refresh its settings????
    //TODO: remove when generator will be separated from language
    if (myModule instanceof Generator) {
      myModule = (AbstractModule) myModuleDescriptor.getModuleReference().resolve(myModuleRepository);
    }
    myModule.save();
  }

  @Nls
  @Override
  public String getDisplayName() {
    return String.format(PropertiesBundle.message("module.title"), myModule.getClass().getSimpleName(), myModule.getModuleName());
  }

  private FindUsagesScope getModuleAndOwnedModelsScope() {
    return new ModelAccessHelper(myMPSProject.getModelAccess()).runReadAction((Computable<FindUsagesScope>) () -> {
      final ModulesScope rv = new ModulesScope(myModule);
      rv.resolveRespectsAllVisible(true);
      return rv;
    });
  }

  /*package*/ void findModuleUsages(List<SModuleReference> modules) {
    String cap;
    if (modules.size() == 1) {
      cap = NameUtil.compactNamespace(modules.getFirst().getModuleName());
    } else {
      cap = "%s: usages of %d modules".formatted(NameUtil.compactNamespace(myModule.getModuleName()), modules.size());
    }
    final SearchQuery query = new SearchQuery(new GenericHolder<Object>(modules, cap), getModuleAndOwnedModelsScope());
    final IResultProvider provider = FindUtils.makeProvider(new CompositeFinder(new ModuleUsagesFinder(true)));
    showUsageImpl(query, provider);
    forceCancelCloseDialog();
  }

  /*package*/ void findModelUsages(List<SModelReference> models) {
    final SearchQuery query = new SearchQuery(new ModelsHolder(models), getModuleAndOwnedModelsScope());
    final IResultProvider provider = FindUtils.makeProvider(new CompositeFinder(new ModelUsagesFinder()));
    showUsageImpl(query, provider);
    forceCancelCloseDialog();
  }

  /*package*/ void findLanguageUsages(List<SLanguage> languages) {
    ModelsScope scope = new ModelAccessHelper(myModuleRepository).runReadAction(() -> new ModelsScope(myModule.getModels()));
    final SearchQuery query = new SearchQuery(new GenericHolder<>(languages, "Languages"), scope);
    final IResultProvider provider =
        FindUtils.makeProvider(new CompositeFinder(new LanguageModelImportFinder()), new CompositeFinder(new LanguageUsagesFinder()));
    showUsageImpl(query, provider);
    forceCancelCloseDialog();
  }


  public class ModuleCommonTab extends CommonTab {

    private ModuleDependenciesTab myModuleDependenciesTab;
    private ModelRootContentEntriesEditor myEntriesEditor;
    private JTextField myGenOut;
    private JTextField myGeneratorAlias;
    private JSpinner myLanguageVersion;
    private JSpinner myModuleVersion;
    private DevkitVisibleScope myPlanPickScope;
    private GenPlanPickPanel myPlanPanel;

    /*package*/ void reloadModelRoots() {
      // refresh the model-root list in place after an apply, so newly created roots (e.g. java_classes
      // from an added Java library) appear; null for a DevKit, whose common tab has no roots editor
      if (myEntriesEditor != null) {
        myEntriesEditor.reload();
      }
    }

    @Override
    protected String getConfigItemName() {
      return myModuleDescriptor.getNamespace();
    }

    @Override
    protected String getConfigItemPath() {
      if (myModule.getDescriptorFile() == null) {
        return "";
      } else {
        return FileUtil.getCanonicalPath(myModule.getDescriptorFile().getPath());
      }
    }

    @Override
    protected JComponent getBottomComponent() {
      if (myModule instanceof DevKit) {
        myModuleDependenciesTab = new ModuleDependenciesTab();
        myModuleDependenciesTab.init(); // init to avoid myModuleDependenciesTab.getTabComponent() == null
        return myModuleDependenciesTab.getTabComponent();
      } else {
        myEntriesEditor = new ModelRootContentEntriesEditor(myModule, (MPSProject) myMPSProject);
        Disposer.register(getDisposable(), myEntriesEditor);
        return myEntriesEditor.getComponent();
      }
    }

    //null=not supported
    @Nullable
    protected Integer getLanguageVersion() {
      if (!(myModule instanceof Language)) {
        return null;
      }
      return ((Language) myModule).getLanguageVersion();
    }

    @Nullable
    protected Integer getModuleVersion() {
      if (myModule instanceof DevKit) {
        return null;
      }
      return myModule.getModuleVersion();
    }

    @Override
    protected JComponent getTopComponent() {
      if (myModule instanceof Language || myModule instanceof Solution) {

        boolean hasLanguageVersion = getLanguageVersion() != null;
        boolean hasModuleVersion = getModuleVersion() != null;
        JPanel panel = new JPanel();
        panel.setLayout(new GridLayoutManager(1 + (hasLanguageVersion ? 1 : 0) + (hasModuleVersion ? 1 : 0), 2, JBUI.emptyInsets(), -1, -1));

        int row = 0;

        JBLabel label = new JBLabel(PropertiesBundle.message("module.genoutput.title"));
        panel.add(label, new GridConstraints(row, 0, 1, 1, GridConstraints.ANCHOR_WEST, GridConstraints.FILL_NONE, GridConstraints.SIZEPOLICY_FIXED,
                                             GridConstraints.SIZEPOLICY_FIXED, null, null, null, 0, false));

        myGenOut = new JTextField();
        myGenOut.setEditable(false); // Allow edit only with FileChooser
        final FileChooserDescriptor outputPathsChooserDescriptor = FileChooserDescriptorFactory.createSingleFolderDescriptor();
        InsertPathAction.addTo(myGenOut, outputPathsChooserDescriptor);
        outputPathsChooserDescriptor.setHideIgnored(false);
        BrowseFilesListener listener = new BrowseFilesListener(myGenOut, outputPathsChooserDescriptor);
        FieldPanel genOutPath = new FieldPanel(myGenOut, null, null, listener, EmptyRunnable.getInstance());
        FileChooserFactory.getInstance().installFileCompletion(genOutPath.getTextField(), outputPathsChooserDescriptor, true, null);

        genOutPath.setText(PathUtil.toSystemDependent(getGenOutPath()));
        panel.add(genOutPath,
                  new GridConstraints(row++, 1, 1, 1, GridConstraints.ANCHOR_WEST, GridConstraints.FILL_HORIZONTAL, GridConstraints.SIZEPOLICY_CAN_GROW,
                                      GridConstraints.SIZEPOLICY_FIXED, null, null, null, 0, false));

        if (hasLanguageVersion) {
          JLabel verLabel = new JBLabel(PropertiesBundle.message("mps.properties.configurable.language.version"));
          panel.add(verLabel,
                    new GridConstraints(row, 0, 1, 1, GridConstraints.ANCHOR_WEST, GridConstraints.FILL_NONE, GridConstraints.SIZEPOLICY_FIXED,
                                        GridConstraints.SIZEPOLICY_FIXED, null, null, null, 0, false));

          myLanguageVersion = new JSpinner(new SpinnerNumberModel((int) getLanguageVersion(), 0, getLanguageVersion() + 10000, 1));
          JSpinner.NumberEditor jsEditor = (JSpinner.NumberEditor) myLanguageVersion.getEditor();
          DefaultFormatter formatter = (DefaultFormatter) jsEditor.getTextField().getFormatter();
          formatter.setAllowsInvalid(false);
          panel.add(myLanguageVersion,
                    new GridConstraints(row++, 1, 1, 1, GridConstraints.ANCHOR_WEST, GridConstraints.FILL_NONE, GridConstraints.SIZEPOLICY_WANT_GROW,
                                        GridConstraints.SIZEPOLICY_FIXED, null, new Dimension(30, -1), null, 0, false));
        }
        if (hasModuleVersion) {
          JLabel verLabel = new JBLabel(PropertiesBundle.message("mps.properties.configurable.module.version"));
          panel.add(verLabel,
                    new GridConstraints(row, 0, 1, 1, GridConstraints.ANCHOR_WEST, GridConstraints.FILL_NONE, GridConstraints.SIZEPOLICY_FIXED,
                                        GridConstraints.SIZEPOLICY_FIXED, null, null, null, 0, false));

          myModuleVersion = new JSpinner(new SpinnerNumberModel((int) getModuleVersion(), 0, getModuleVersion() + 10000, 1));
          JSpinner.NumberEditor jsEditor = (JSpinner.NumberEditor) myModuleVersion.getEditor();
          DefaultFormatter formatter = (DefaultFormatter) jsEditor.getTextField().getFormatter();
          formatter.setAllowsInvalid(false);
          panel.add(myModuleVersion,
                    new GridConstraints(row, 1, 1, 1, GridConstraints.ANCHOR_WEST, GridConstraints.FILL_NONE, GridConstraints.SIZEPOLICY_WANT_GROW,
                                        GridConstraints.SIZEPOLICY_FIXED, null, new Dimension(30, -1), null, 0, false));
        }

        return panel;
      } else if (myModule instanceof DevKit) {
        // XXX
        myPlanPickScope = new DevkitVisibleScope(myModuleRepository, (DevKit) myModule);
        myPlanPanel = new GenPlanPickPanel((MPSProject) myMPSProject, myPlanPickScope, "Generation plan for models using this devkit");
        myPlanPanel.setPlanModel(((DevkitDescriptor) myModuleDescriptor).getAssociatedGenPlan());
        return myPlanPanel;
      } else if (myModule instanceof Generator && myModuleDescriptor instanceof GeneratorDescriptor) {
        JPanel p = new JPanel();
        p.setLayout(new GridLayoutManager(1, 3));
        JLabel l = new JLabel(PropertiesBundle.message("module.common.generator.alias"));
        p.add(l, new GridConstraints(0, 0, 1, 1, GridConstraints.ANCHOR_WEST, GridConstraints.FILL_NONE, GridConstraints.SIZEPOLICY_FIXED,
                                     GridConstraints.SIZEPOLICY_FIXED, null, null, null, 0, false));

        myGeneratorAlias = new JTextField();
        p.add(myGeneratorAlias,
              new GridConstraints(0, 1, 1, 1, GridConstraints.ANCHOR_WEST, GridConstraints.FILL_HORIZONTAL, GridConstraints.SIZEPOLICY_FIXED,
                                  GridConstraints.SIZEPOLICY_FIXED, null, new Dimension(250, -1), null, 0, false));
        myGeneratorAlias.setText(((GeneratorDescriptor) myModuleDescriptor).getAlias());
        p.add(new JPanel(), new GridConstraints(0, 2, 1, 1, GridConstraints.ANCHOR_WEST, GridConstraints.FILL_HORIZONTAL, GridConstraints.SIZEPOLICY_WANT_GROW,
                                                GridConstraints.SIZEPOLICY_FIXED, null, null, null, 0, false));
        return p;
      }
      return null;
    }

    private String getGenOutPath() {
      IFile outputDir = myModule.getOutputPath();
      return outputDir != null ? FileUtil.getCanonicalPath(outputDir.getPath()) : "";
    }

    @Override
    public boolean isModified() {
      if (super.isModified()) {
        return true;
      }
      if (myModule instanceof DevKit) {
        if (myModuleDependenciesTab.isModified()) {
          return true;
        }
        SModelReference currentPlan = ((DevkitDescriptor) myModuleDescriptor).getAssociatedGenPlan();
        final SModelReference uiPlanValue = myPlanPanel.getPlanModel();
        if (currentPlan == null ? uiPlanValue != null : !currentPlan.equals(uiPlanValue)) {
          return true;
        }
        // fall-through
      }
      if (!(myModule instanceof DevKit) && myEntriesEditor.isModified()) {
        return true;
      }
      if (myGenOut != null && !(getGenOutPath().equals(PathUtil.toSystemIndependent(myGenOut.getText())))) {
        return true;
      }

      if (myLanguageVersion != null) {
        try {
          int newLanguageVersion = ((Integer) myLanguageVersion.getValue());
          if (!Objects.equals(newLanguageVersion, getLanguageVersion())) {
            return true;
          }
        } catch (NumberFormatException e) {
          //just continue omitting this field
        }
      }
      if (myModuleVersion != null) {
        try {
          int newModuleVersion = ((Integer) myModuleVersion.getValue());
          if (!Objects.equals(newModuleVersion, getModuleVersion())) {
            return true;
          }
        } catch (NumberFormatException e) {
          //just continue omitting this field
        }
      }
      return myGeneratorAlias != null && !myGeneratorAlias.getText().equals(((GeneratorDescriptor) myModuleDescriptor).getAlias());

    }

    @Override
    public void apply() {
      String renameTo = null;
      if (super.isModified()) {
        renameTo = myTextFieldName.getText();
      }
      if (myModuleDescriptor instanceof DevkitDescriptor) {
        myModuleDependenciesTab.apply();
        ((DevkitDescriptor) myModuleDescriptor).setAssociatedPlan(myPlanPanel.getPlanModel());
        myPlanPickScope.reset();
      } else {
        if (myGenOut != null) {
          final String genOut = PathUtil.toSystemIndependent(myGenOut.getText());
          if (!genOut.equals(getGenOutPath())) {
            if (genOut.isEmpty()) {
              myModule.setOutputPath(null);
              // this comes as MPS-36789 fix, the reason is save(), above, first set MD, which triggers update of field values
              // of AM from MD, effectively clearing AM.outputPath
              myModuleDescriptor.setOutputRoot(genOut);
            } else {
              // here we imply getGenOutPath() method uses AM.getOutputPath()
              IFileSystem localFS = myMPSProject.getPlatform().findComponent(VFSManager.class).getFileSystem(VFSManager.FILE_FS);
              // can not use IDEA's LocalFileSystem here as it's not friendly with non-existent files
              IFile vfGenOut = localFS.getFile(genOut);
              // XXX in fact, due to save()/setMD logic (see comment above), there's no real need to set IFile, can do MD.setOutputRoot only!
              // utilize the fact AM keeps IFile (perhaps, shall resort to PathSpec, instead?)
              myModule.setOutputPath(vfGenOut);
              myModuleDescriptor.setOutputRoot(genOut); // see above, have to decide how we edit a module
            }
          }
        }
        if (myLanguageVersion != null) {
          try {
            int newLanguageVersion = ((Integer) myLanguageVersion.getValue());
            ((Language) myModule).setLanguageVersion(newLanguageVersion);
          } catch (NumberFormatException e) {
            //just continue omitting this field
          }
        }
        if (myModuleVersion != null) {
          try {
            int newModuleVersion = ((Integer) myModuleVersion.getValue());
            myModule.setModuleVersion(newModuleVersion);
          } catch (NumberFormatException e) {
            //just continue omitting this field
          }
        }
        if (myGeneratorAlias != null) {
          ((GeneratorDescriptor) myModuleDescriptor).setAlias(myGeneratorAlias.getText().trim());
        }
        myModuleDescriptor.clearModelRootDescriptors();
        myEntriesEditor.apply(myModuleDescriptor.getModelRootDescriptors());
      }
      if (renameTo != null) {
        final String finalRenameTo = renameTo;
        Renamer r = new Renamer((MPSProject) myMPSProject, myModule, null);
        myMPSProject.getModelAccess().runReadAction(r::collectRenames);
        r.prepareRename(finalRenameTo);
        if (r.hasPrimaryRename() || r.hasDependantRenames()) {
          final Task.Modal renameTask = new Task.Modal(myIdeaProject, "Renaming...", false) {
            @Override
            public void run(@NotNull ProgressIndicator indicator) {
              ApplicationManager.getApplication().invokeAndWait(r::runRenameCommand);
            }
          };
          ApplicationManager.getApplication().invokeLater(() -> {
            String renameTitle = RefactoringBundle.message("rename.title");
            int dialogResult = Messages.showOkCancelDialog(myIdeaProject, r.getDependantRenamesHTML(),
                                                           renameTitle, renameTitle, Messages.getCancelButton(), UIUtil.getInformationIcon());
            if (Messages.OK == dialogResult) {
              ProgressManager.getInstance().run(renameTask);
            } else {
              myTextFieldName.setText(myModule.getModuleName());
            }
          });
        }
      }
    }
  }


  public class ModuleDependenciesTab extends DependenciesTab {
    private final ModuleDependTableModel myTableModel = new ModuleDependTableModel();

    @Override
    public void init() {
      myTableModel.init(myMPSProject.getRepository(), myModuleDescriptor);
      super.init();
      setTableContentIsLoading(true);
    }

    @Override
    public boolean isModified() {
      return myTableModel.isModified(myModuleDescriptor);
    }

    @Override
    public void apply() {
      myTableModel.apply(myModuleDescriptor);
    }


    /*package*/ List<DependenciesTableItem> getActualDependencies() {
      int x = myTableModel.getRowCount();
      ArrayList<DependenciesTableItem> rv = new ArrayList<>(x);
      for (int i = 0; i < x; i++) {
        rv.add(myTableModel.getValueAt(i));
      }
      return rv;
    }

    @Override
    protected DependTableModel getDependTableModel() {
      return myTableModel;
    }

    @Override
    protected TableCellEditor getTableCellEditor() {
      return new DependenciesTableCellEditor();
    }

    @Override
    protected AnActionButtonRunnable getAnActionButtonRunnable() {
      return anActionButton -> {
        final boolean isDevkit = myModule instanceof DevKit;
        Iterable<SModule> selectionSet = new ConditionalIterable<>(getProjectModules(), object -> object != myModule);
        if (isDevkit) {
          selectionSet = new ConditionalIterable<>(selectionSet, new VisibleModuleCondition());
        }

        final List<SModuleReference> c = myMPSProject.getModelAccess().computeReadAction(new ModuleCollector(selectionSet));
        final String dialogTitle = isDevkit ? "Choose DevKit contents" : "Choose modules";
        final List<SModuleReference> list = CommonChoosers.showModuleSetChooser(myMPSProject, dialogTitle, c);
        if (list.isEmpty()) {
          return;
        }
        myMPSProject.getModelAccess().runReadAction(() -> {
          for (SModuleReference moduleReference : list) {
            final SModule module = moduleReference.resolve(myMPSProject.getRepository());
            final Dependency dep;
            if (isDevkit) {
              dep = new Dependency(moduleReference, SDependencyScope.EXTENDS);
            } else {
              dep = new Dependency(moduleReference, SDependencyScope.DEFAULT, false);
            }
            if (module instanceof Language) {
              myTableModel.addLanguageItem(dep);
            } else if (module instanceof Generator) {
              myTableModel.addGeneratorItem(dep);
            } else if (module instanceof Solution) {
              myTableModel.addSolutionItem(dep);
            } else if (module instanceof DevKit) {
              myTableModel.addDevkitItem(dep);
            } else {
              myTableModel.addUnspecifiedItem(dep);
            }
          } // foreach moduleReference
        });
      };
    }

    @Override
    protected TableCellRenderer getTableCellRender() {
      final ModuleTableCellRender cellRender = new ModuleTableCellRender(myModuleRepository);
      cellRender.addCellState(Objects::isNull, DependencyCellState.NOT_AVAILABLE);
      final ScanModuleDependencyTask scanTask = new ScanModuleDependencyTask(myModule);
      //scanTask.whenChanged(myDependTableModel::fireTableDataChanged);
      Runnable whenDone = () -> {
        if (myModule instanceof Language) {
          // XXX would be great to report superfluous extends for generators as well (populate extendSet from template model scanner
          //     that knows what constitutes 'extends' between generators. The main problem is nobody knows how to tell generators are truly
          //     in 'extends' relation.
          cellRender.addCellState(moduleImport -> {
            SModuleReference importRef = moduleImport.getModuleReference();
            // XXX not quite nice as the same module may be imported twice, as a regular dependency as well as 'extends',
            // here we don't tell one from another and warn both. Would be better to refactor StateTableCellRenderer to give more
            // info about table row (access to underlying table value?)
            boolean isExtendsDep = myTableModel.getExtendedModules().contains(importRef);
            return isExtendsDep && !scanTask.getExtendsSet().contains(moduleImport.getModuleReference());
          }, DependencyCellState.SUPERFLUOUS_EXTENDS);
        }
        if (false == myModule instanceof DevKit) {
          // unused imports make no sense for devkit. Perhaps, for other modules, too, but
          // this is the way we've got MPS now
          cellRender.addCellState(
              moduleImport -> !scanTask.getGenerationTargets().contains(moduleImport.getModuleReference()) &&
                              !scanTask.getCrossModuleSet().contains(moduleImport.getModuleReference()),
              DependencyCellState.UNUSED);
        }
        myTableModel.fireTableDataChanged();
        ModuleDependenciesTab.this.setTableContentIsLoading(false);
      };
      // invokeLater(Runnable) uses ModalityState.defaultModalityState() which is non-model when invoked from non-EDT thread
      // as long as we need this code to get executed in the dialog, have to specify ModalityState explicitly
      scanTask.whenDone(() -> ApplicationManager.getApplication().invokeLater(whenDone, ModalityState.any()));
      BackgroundTaskUtil.executeOnPooledThread(getDisposable(), new ModelReadRunnable(myModuleRepository, scanTask));
      return cellRender;
    }

    @Nullable
    @Override
    protected FindActionButton getFindAnAction(final JBTable table) {
      return new FindActionButton(() -> {
        List<SModuleReference> modules = new ArrayList<>();
        for (int i : table.getSelectedRows()) {
          final DependenciesTableItem valueAt = myTableModel.getValueAt(i);
          modules.add(valueAt.getItem().getModuleRef());
        }
        findModuleUsages(modules);
      });
    }

    private class DependenciesTableCellEditor extends DefaultCellEditor {
      public DependenciesTableCellEditor() {
        super(new ComboBox<SDependencyScope>());
      }

      @Override
      public Component getTableCellEditorComponent(final JTable table, Object value, boolean isSelected, int row, int column) {
        final JComboBox<SDependencyScope> combo = (JComboBox<SDependencyScope>) super.getTableCellEditorComponent(table, value, isSelected, row, column);
        combo.removeAllItems();
        if (row < 0 || row >= table.getModel().getRowCount()) {
          return combo;
        }
        DependenciesTableItem rowItem = myTableModel.getValueAt(row);
        getItemsForCell(rowItem).forEach(combo::addItem);
        combo.setSelectedItem(rowItem.getItem().getScope());

        // MPS-22987 As we don't know height of editor before creation, we need to update row height and return it back after
        final int tableRowHeight = table.getRowHeight();
        table.setRowHeight(row, (int) combo.getPreferredSize().getHeight());
        combo.addFocusListener(new FocusListener() {
          @Override
          public void focusGained(FocusEvent e) {
          }

          @Override
          public void focusLost(FocusEvent e) {
            table.setRowHeight(tableRowHeight);
            combo.removeFocusListener(this);
          }
        });

        return combo;
      }

      private List<SDependencyScope> getItemsForCell(DependenciesTableItem item) {
        List<SDependencyScope> scopes = new ArrayList<>(5);
        scopes.add(SDependencyScope.DEFAULT);
        if (isLangToLang(item)) {
          scopes.add(SDependencyScope.EXTENDS);
          scopes.add(SDependencyScope.GENERATES_INTO);
        }
        if (isGenToGen(item)) {
          scopes.add(SDependencyScope.EXTENDS);
          // DESIGN dependencies between generators allows use of referenced generators in priority rules without
          // imposing any run-time dependency between generators.
          scopes.add(SDependencyScope.DESIGN);
        }
        return scopes;
      }

      private boolean isLangToLang(DependenciesTableItem item) {
        return myModuleDescriptor instanceof LanguageDescriptor && item.getModuleType() == ModuleType.LANGUAGE;
      }

      private boolean isGenToGen(DependenciesTableItem item) {
        return myModuleDescriptor instanceof GeneratorDescriptor && item.getModuleType() == ModuleType.GENERATOR;
      }
    }
  }

  public class RuntimeTab extends BaseTab {
    private RuntimeTableModel myRuntimeTableModel;
    private AccessoriesModelsTableModel myAccessoriesModelsTableModel;

    public RuntimeTab() {
      super(PropertiesBundle.message("mps.properties.runtime.title"), General.Runtime, PropertiesBundle.message("mps.properties.runtime.tip"));
    }

    @Override
    public void apply() {
      myRuntimeTableModel.apply();
      myAccessoriesModelsTableModel.apply();
    }

    @Override
    public void init() {
      JPanel usedLangsTab = new JPanel();
      usedLangsTab.setLayout(new GridLayoutManager(2, 1, INSETS, -1, -1));

      final JBTable runtimeTable = new JBTable();
      runtimeTable.setShowHorizontalLines(false);
      runtimeTable.setShowVerticalLines(false);
      runtimeTable.setAutoCreateRowSorter(false);
      runtimeTable.setAutoscrolls(true);
      runtimeTable.setSelectionMode(ListSelectionModel.MULTIPLE_INTERVAL_SELECTION);

      myRuntimeTableModel = new RuntimeTableModel();
      myRuntimeTableModel.init();
      runtimeTable.setModel(myRuntimeTableModel);

      runtimeTable.setDefaultRenderer(SModuleReference.class, new ModuleTableCellRender(myModuleRepository));

      ToolbarDecorator decorator = ToolbarDecorator.createDecorator(runtimeTable);
      decorator.setAddAction(anActionButton -> {
        Iterable<SModule> modules = new ConditionalIterable<>(getProjectModules(), new ModuleInstanceCondition(Solution.class));
        modules = new ConditionalIterable<>(modules, new VisibleModuleCondition());
        List<SModuleReference> c = myMPSProject.getModelAccess().computeReadAction(new ModuleCollector(modules));
        List<SModuleReference> list = CommonChoosers.showModuleSetChooser(myMPSProject, "Choose solutions", c);
        for (SModuleReference reference : list) {
          myRuntimeTableModel.addItem(reference);
        }
      }).setRemoveAction(new RemoveEntryAction(runtimeTable));
      decorator.addExtraAction(new FindActionButton(() -> findModuleUsages(Arrays.stream(runtimeTable.getSelectedRows()).mapToObj(myRuntimeTableModel::getValueAt).toList())));
      if (myIsReadOnly) {
        final AnActionButtonUpdater disableEdit = (u) -> false;
        decorator.setAddActionUpdater(disableEdit);
        decorator.setRemoveActionUpdater(disableEdit);
      }
      decorator.setPreferredSize(new Dimension(500, 150));

      JPanel table = decorator.createPanel();
      table.setBorder(IdeBorderFactory.createBorder());
      usedLangsTab.add(table, new GridConstraints(0, 0, 1, 1, GridConstraints.ANCHOR_CENTER, GridConstraints.FILL_BOTH,
                                                  GridConstraints.SIZEPOLICY_CAN_SHRINK | GridConstraints.SIZEPOLICY_CAN_GROW,
                                                  GridConstraints.SIZEPOLICY_CAN_SHRINK | GridConstraints.SIZEPOLICY_CAN_GROW, null, null, null, 0, false));

      new TableColumnSearch(runtimeTable, 0).setComparator(new SpeedSearchComparator(false, true));

      //---------------------------------------------

      final JBTable accessoriesTable = new JBTable();
      accessoriesTable.setShowHorizontalLines(false);
      accessoriesTable.setShowVerticalLines(false);
      accessoriesTable.setAutoCreateRowSorter(false);
      accessoriesTable.setAutoscrolls(true);
      accessoriesTable.setSelectionMode(ListSelectionModel.MULTIPLE_INTERVAL_SELECTION);

      myAccessoriesModelsTableModel = new AccessoriesModelsTableModel();
      myAccessoriesModelsTableModel.init();
      accessoriesTable.setModel(myAccessoriesModelsTableModel);

      accessoriesTable.setDefaultRenderer(SModelReference.class, new ModelTableCellRender(myMPSProject.getRepository()));

      ToolbarDecorator decoratorForAccessories = ToolbarDecorator.createDecorator(accessoriesTable);
      decoratorForAccessories.setAddAction(anActionButton -> {
        List<SModelReference> models = new ModelAccessHelper(myMPSProject.getModelAccess()).runReadAction(new Computable<List<SModelReference>>() {
          @Override
          public List<SModelReference> compute() {
            // AddAccessoryModel_Action builds same scope using FilteredGlobalScope, I like this more as it's expressive and shows what's in the scope
            final Predicate<SModule> isVisible = VisibleModuleRegistry.getInstance()::isVisible;
            final Stream<SModule> visibleModules = StreamSupport.stream(myMPSProject.getRepository().getModules().spliterator(), false).filter(isVisible);
            return visibleModules.flatMap(m -> StreamSupport.stream(m.getModels().spliterator(), false)).map(SModel::getReference).collect(Collectors.toList());
          }
        });
        List<SModelReference> list = CommonChoosers.showDialogModelCollectionChooser(ProjectHelper.toIdeaProject(myMPSProject), models, null);
        for (SModelReference reference : list) {
          myAccessoriesModelsTableModel.addItem(reference);
        }
      }).setRemoveAction(new RemoveEntryAction(accessoriesTable));
      decorator.addExtraAction(new FindActionButton(() -> findModelUsages(Arrays.stream(accessoriesTable.getSelectedRows()).mapToObj(myAccessoriesModelsTableModel::getValueAt).toList())));
      if (myIsReadOnly) {
        final AnActionButtonUpdater disableEdit = (u) -> false;
        decoratorForAccessories.setAddActionUpdater(disableEdit);
        decoratorForAccessories.setRemoveActionUpdater(disableEdit);
      }

      decoratorForAccessories.setPreferredSize(new Dimension(500, 150));

      table = decoratorForAccessories.createPanel();
      table.setBorder(IdeBorderFactory.createBorder());
      usedLangsTab.add(table, new GridConstraints(1, 0, 1, 1, GridConstraints.ANCHOR_CENTER, GridConstraints.FILL_BOTH,
                                                  GridConstraints.SIZEPOLICY_CAN_SHRINK | GridConstraints.SIZEPOLICY_CAN_GROW,
                                                  GridConstraints.SIZEPOLICY_CAN_SHRINK | GridConstraints.SIZEPOLICY_CAN_GROW, null, null, null, 0, false));

      new TableColumnSearch(accessoriesTable, 0).setComparator(new SpeedSearchComparator(false, true));

      setTabComponent(usedLangsTab);
    }

    @Override
    public boolean isModified() {
      return myRuntimeTableModel.isModified() || myAccessoriesModelsTableModel.isModified();
    }

    private class RuntimeTableModel extends AbstractTableModel implements ItemRemovable, Modifiable {

      private List<SModuleReference> myTableItems = new LinkedList<>();

      public RuntimeTableModel() {
      }

      @Override
      public void init() {
        myTableItems.addAll(((LanguageDescriptor) myModuleDescriptor).getRuntimeModules());
      }

      @Override
      public int getColumnCount() {
        return 1;
      }

      @Override
      public int getRowCount() {
        return myTableItems.size();
      }

      public void addItem(SModuleReference moduleReference) {
        if (moduleReference == null || myTableItems.contains(moduleReference)) {
          return;
        }
        myTableItems.add(moduleReference);
        fireTableDataChanged();
      }

      public SModuleReference getValueAt(int rowIndex) {
        return myTableItems.get(rowIndex);
      }

      @Override
      public Object getValueAt(int rowIndex, int columnIndex) {
        return this.getValueAt(rowIndex);
      }

      @Override
      public void removeRow(int idx) {
        myTableItems.remove(idx);
      }

      @Override
      public Class<?> getColumnClass(int columnIndex) {
        return SModuleReference.class;
      }

      @Override
      public boolean isModified() {
        LanguageDescriptor languageDescriptor = (LanguageDescriptor) myModuleDescriptor;
        return !(languageDescriptor.getRuntimeModules().containsAll(myTableItems) && myTableItems.containsAll(languageDescriptor.getRuntimeModules()));
      }

      @Override
      public String getColumnName(int column) {
        return PropertiesBundle.message("mps.properties.runtime.solutionstable.header");
      }

      @Override
      public void apply() {
        LanguageDescriptor languageDescriptor = (LanguageDescriptor) myModuleDescriptor;
        languageDescriptor.getRuntimeModules().clear();
        languageDescriptor.getRuntimeModules().addAll(myTableItems);
      }
    }

    private class AccessoriesModelsTableModel extends AbstractTableModel implements ItemRemovable, Modifiable {

      private List<SModelReference> myTableItems = new LinkedList<>();

      public AccessoriesModelsTableModel() {
      }

      @Override
      public void init() {
        myTableItems.addAll(((LanguageDescriptor) myModuleDescriptor).getAccessoryModels());
      }

      @Override
      public int getColumnCount() {
        return 1;
      }

      @Override
      public int getRowCount() {
        return myTableItems.size();
      }

      public void addItem(SModelReference modelReference) {
        if (modelReference == null || myTableItems.contains(modelReference)) {
          return;
        }
        myTableItems.add(modelReference);
        fireTableDataChanged();
      }

      public SModelReference getValueAt(int rowIndex) {
        return myTableItems.get(rowIndex);
      }

      @Override
      public Object getValueAt(int rowIndex, int columnIndex) {
        return this.getValueAt(rowIndex);
      }

      @Override
      public void removeRow(int idx) {
        myTableItems.remove(idx);
      }

      @Override
      public Class<?> getColumnClass(int columnIndex) {
        return SModelReference.class;
      }

      @Override
      public boolean isModified() {
        LanguageDescriptor languageDescriptor = (LanguageDescriptor) myModuleDescriptor;
        return !(languageDescriptor.getAccessoryModels().containsAll(getAccessoryModels()) && myTableItems.containsAll(
            languageDescriptor.getAccessoryModels()));
      }

      @Override
      public String getColumnName(int column) {
        return PropertiesBundle.message("mps.properties.runtime.accessorytable.header");
      }

      private LinkedList<jetbrains.mps.smodel.SModelReference> getAccessoryModels() {
        LinkedList<jetbrains.mps.smodel.SModelReference> linkedList = new LinkedList<>();
        for (SModelReference modelReference : myTableItems) {
          linkedList.add((jetbrains.mps.smodel.SModelReference) modelReference);
        }

        return linkedList;
      }

      @Override
      public void apply() {
        LanguageDescriptor languageDescriptor = (LanguageDescriptor) myModuleDescriptor;

        languageDescriptor.getAccessoryModels().clear();
        languageDescriptor.getAccessoryModels().addAll(getAccessoryModels());
      }
    }
  }

  public class ModuleUsedLanguagesTab extends UsedLanguagesTab {

    @Override
    protected UsedLangsTableModel getUsedLangsTableModel() {
      final List<SLanguage> usedLanguages = new ArrayList<>(myModule.getUsedLanguages());
      final UsedLangsTableModel rv = new UsedLangsTableModel(myMPSProject.getRepository());
      usedLanguages.sort(new ToStringComparator());
      rv.init(usedLanguages, Collections.emptySet());
      return rv;
    }

    @Override
    protected ToolbarDecorator createToolbar(JBTable table) {
      return super.createToolbar(table).addExtraAction(new FindActionButton(() -> findLanguageUsages(getSelectedLanguages())));
    }

    @Override
    public void apply() {
      // no-op
    }
  }

  /**
   * Supply set of accessible/visible generators, so that Advanced tab could utilize actual dependencies from ModuleDependenciesTab
   */
  static class GeneratorDependencyProvider {
    private final ModuleDependenciesTab myDependenciesTab;

    GeneratorDependencyProvider(ModuleDependenciesTab dependenciesTab) {
      myDependenciesTab = dependenciesTab;
    }

    Set<SModuleReference> getGenerators() {
      final HashSet<SModuleReference> depGenerators = new LinkedHashSet<>();
      for (DependenciesTableItem dependencyItem : myDependenciesTab.getActualDependencies()) {
        if (dependencyItem.getModuleType() == ModuleType.GENERATOR) {
          depGenerators.add(dependencyItem.getItem().getModuleRef());
        }
      }
      return depGenerators;
    }
  }

  public class GeneratorAdvancesTab extends BaseTab {

    private final Generator myGenerator;
    private final GeneratorDependencyProvider myDepGenerators;
    private GenPrioritiesTableModel myPrioritiesTableModel;
    private JBCheckBox myGenerateTemplates;
    private JBTable myTable;

    public GeneratorAdvancesTab(Generator generator, GeneratorDependencyProvider depGenerators) {
      super(PropertiesBundle.message("module.generator.title"), General.GeneratorPriorities, PropertiesBundle.message("module.generator.tip"));
      myGenerator = generator;
      myDepGenerators = depGenerators;
    }

    @Override
    public void apply() {
      if (myTable.isEditing()) {
        myTable.getCellEditor().stopCellEditing();
      }
      final GeneratorDescriptor genDescr = myGenerator.getModuleDescriptor();
      genDescr.setGenerateTemplates(myGenerateTemplates.isSelected());
      myPrioritiesTableModel.apply(myDepGenerators);
    }

    @Override
    public void init() {
      JPanel panel = new JPanel();
      panel.setLayout(new GridLayoutManager(2, 1, INSETS, -1, -1));

      myTable = new JBTable();
      myTable.setAutoscrolls(true);
      myTable.getTableHeader().setReorderingAllowed(false);

      myPrioritiesTableModel = new GenPrioritiesTableModel(myGenerator.getModuleDescriptor());
      myTable.setModel(myPrioritiesTableModel);

      myTable.setDefaultRenderer(RuleType.class, new RuleTypeRenderer());
      RuleTypeEditor ruleTypeEditor = new RuleTypeEditor();
      myTable.setDefaultEditor(RuleType.class, ruleTypeEditor);

      myTable.setDefaultRenderer(MappingConfig_AbstractRef.class, new TableCellRenderer() {
        private final Map<MappingConfig_AbstractRef, CheckboxTree> myMappingConf2TreeMap = new HashMap<>();

        @Override
        public Component getTableCellRendererComponent(final JTable table, Object value, boolean isSelected, boolean hasFocus, final int row,
                                                       final int column) {
          if (!(value instanceof MappingConfig_AbstractRef)) {
            return null;
          }

          MappingConfig_AbstractRef mapping = (MappingConfig_AbstractRef) value;

          // Tree to return
          CheckboxTree checkboxTree;

          // Use cache to avoid creating a lot of components
          if (myMappingConf2TreeMap.containsKey(mapping)) {
            checkboxTree = myMappingConf2TreeMap.get(mapping);
          } else {
            GeneratorPrioritiesTree generatorPrioritiesTree =
                new GeneratorPrioritiesTree(myMPSProject.getRepository(), myGenerator, mapping, column == 0, myDepGenerators.getGenerators());

            CheckedTreeNode rootNode = (CheckedTreeNode) generatorPrioritiesTree.getTree().getModel().getRoot();
            rootNode = column == 0 ? (CheckedTreeNode) rootNode.getFirstChild() : rootNode;
            allChildrenChecked(rootNode);
            noCheckedChildren(rootNode);

            // Use new CheckboxTree instance instead of generatorPrioritiesTree.getTree(),
            // because need different render and don't want to handle switching, when editing mapping configuration
            checkboxTree = new CheckboxTree(GeneratorPrioritiesTree.getCheckboxTreeCellRenderer(false), rootNode, new CheckPolicy(true, true, false, true));
            checkboxTree.setRootVisible(true);

            GeneratorPrioritiesTree.expandAllRows(checkboxTree);

//            // TODO: find better solution: this introduces bug, when row can't be resized to smaller height
//            table.setRowHeight(
//                row, Math.max(checkboxTree.getPreferredSize().height + 10, table.getRowHeight(row))
//            );

            // Needed to set background color
            checkboxTree.setOpaque(true);

            myMappingConf2TreeMap.put(mapping, checkboxTree);
          }

          // We have to implement changing of background color, because we use custom render
          checkboxTree.setBackground(isSelected && !hasFocus ? table.getSelectionBackground() : table.getBackground());

          return checkboxTree;
        }

        private boolean allChildrenChecked(CheckedTreeNode node) {
          List<CheckedTreeNode> children = (List) Collections.list(node.children());
          boolean allChildrenChecked = true;
          for (CheckedTreeNode child : children) {
            if (!allChildrenChecked(child) || !child.isChecked()) {
              allChildrenChecked = false;
            }
          }
          if (allChildrenChecked && node.isChecked()) {
            for (CheckedTreeNode child : children) {
              node.remove(child);
              child.removeFromParent();
            }
          }
          return allChildrenChecked;
        }

        private boolean noCheckedChildren(CheckedTreeNode node) {
          Stream<CheckedTreeNode> children = Collections.list(node.children()).stream().filter(CheckedTreeNode.class::isInstance).map(CheckedTreeNode.class::cast);
          for (CheckedTreeNode child : children.toList()) {
            if (noCheckedChildren(child) && !child.isChecked()) {
              node.remove(child);
              child.removeFromParent();
            }
          }
          return node.isLeaf();
        }
      });

      myTable.setDefaultEditor(MappingConfig_AbstractRef.class, new AbstractTableCellEditor() {
        private GeneratorPrioritiesTree myCurrentTree = null;

        @Override
        public boolean isCellEditable(EventObject e) {
          return e instanceof MouseEvent && ((MouseEvent) e).getClickCount() >= 2;
        }

        @Override
        public Component getTableCellEditorComponent(final JTable table, Object value, boolean isSelected, int row, int column) {
          if (value instanceof MappingConfig_AbstractRef) {
            MappingConfig_AbstractRef mapping = (MappingConfig_AbstractRef) value;

            myCurrentTree = new GeneratorPrioritiesTree(myMPSProject.getRepository(), myGenerator, mapping, column == 0, myDepGenerators.getGenerators());

            final DialogWrapper dialogWrapper = new DialogWrapper(ProjectHelper.toIdeaProject(myMPSProject)) {
              {
                setModal(true);
                super.init();
              }

              @Override
              protected JComponent createCenterPanel() {
                final JScrollPane scrollPane = ScrollPaneFactory.createScrollPane(myCurrentTree.getTreePanel(), true);
                final Dimension preferredSize = myCurrentTree.getTreePanel().getPreferredSize();
                if (preferredSize.getHeight() > 600) {
                  preferredSize.setSize(preferredSize.getWidth(), 600);
                }
                scrollPane.setPreferredSize(preferredSize);
                return scrollPane;
              }

              @Nullable
              @Override
              public JComponent getPreferredFocusedComponent() {
                return myCurrentTree.getTreePanel();
              }

              @Override
              protected void doOKAction() {
                table.editingStopped(new ChangeEvent(this));
                table.revalidate();
                table.repaint();
                super.doOKAction();
              }

              @Override
              public void doCancelAction() {
                //myCurrentTree = null;
                table.editingCanceled(new ChangeEvent(this));
                super.doCancelAction();
              }
            };

            final Component tableCellRendererComponent =
                myTable.getCellRenderer(row, column).getTableCellRendererComponent(table, value, isSelected, true, row, column);
            tableCellRendererComponent.addFocusListener(new FocusListener() {
              @Override
              public void focusGained(FocusEvent e) {
                dialogWrapper.show();
              }

              @Override
              public void focusLost(FocusEvent e) {
                tableCellRendererComponent.removeFocusListener(this);
              }
            });
            return tableCellRendererComponent;
          }
          return null;
        }

        @Override
        public Object getCellEditorValue() {
          GeneratorPrioritiesTree result = myCurrentTree;
          myCurrentTree = null;
          return result != null ? result.getEditResult() : null;
        }
      });

      TableColumn column = myTable.getColumnModel().getColumn(1);
      int contentWidth = ruleTypeEditor.getComponent().getPreferredSize().width + myTable.getIntercellSpacing().width;
      Component header = myTable.getTableHeader().getDefaultRenderer()
          .getTableCellRendererComponent(myTable, column.getHeaderValue(), false, false, -1, 1);
      int ruleColumnWidth = Math.max(contentWidth, header.getPreferredSize().width);
      // A wider dialog distributes spare width to every column. The combo is centered and does not
      // fill that space, so cap the column at the fit width and let the generator columns grow.
      column.setResizable(false);
      column.setMinWidth(ruleColumnWidth);
      column.setPreferredWidth(ruleColumnWidth);
      column.setMaxWidth(ruleColumnWidth);

      ToolbarDecorator decorator = ToolbarDecorator.createDecorator(myTable);
      decorator.setAddAction(anActionButton -> {
        myPrioritiesTableModel.addItem(new MappingPriorityRule());
        myPrioritiesTableModel.fireTableDataChanged();
      }).setRemoveAction(new RemoveEntryAction(myTable));
      decorator.setToolbarBorder(IdeBorderFactory.createBorder());

      panel.add(decorator.createPanel(), new GridConstraints(0, 0, 1, 1, GridConstraints.ANCHOR_CENTER, GridConstraints.FILL_BOTH,
                                                             GridConstraints.SIZEPOLICY_CAN_SHRINK | GridConstraints.SIZEPOLICY_CAN_GROW,
                                                             GridConstraints.SIZEPOLICY_CAN_SHRINK | GridConstraints.SIZEPOLICY_CAN_GROW, null, null, null, 0,
                                                             false));

      final GeneratorDescriptor genDescr = myGenerator.getModuleDescriptor();
      JPanel generationOptions = new JPanel();
      generationOptions.setLayout(new FlowLayout(FlowLayout.LEFT));
      myGenerateTemplates = new JBCheckBox(PropertiesBundle.message("module.generator.gentemplates.name"), genDescr.isGenerateTemplates());
      myGenerateTemplates.setToolTipText(PropertiesBundle.message("module.generator.gentemplates.tip"));
      generationOptions.add(myGenerateTemplates);
      panel.add(generationOptions,
                new GridConstraints(1, 0, 1, 1, GridConstraints.ANCHOR_WEST, GridConstraints.FILL_HORIZONTAL, GridConstraints.SIZEPOLICY_CAN_GROW,
                                    GridConstraints.SIZEPOLICY_FIXED, null, null, null, 0, false));

      panel.setPreferredSize(new Dimension(500, 300));
      setTabComponent(panel);
    }

    @Override
    public boolean isModified() {
      final GeneratorDescriptor genDescr = myGenerator.getModuleDescriptor();
      final boolean b1 = genDescr.isGenerateTemplates();
      return myPrioritiesTableModel.isModified() || myGenerateTemplates.isSelected() != b1;
    }
  }

  private static class GenPrioritiesTableModel extends AbstractTableModel implements ItemRemovable {
    private final GeneratorDescriptor myModuleDescriptor;
    private final List<MappingPriorityRule> myMappingPriorityRules = new LinkedList<>();

    public GenPrioritiesTableModel(GeneratorDescriptor moduleDescriptor) {
      super();
      myModuleDescriptor = moduleDescriptor;
      for (MappingPriorityRule rule : myModuleDescriptor.getPriorityRules()) {
        myMappingPriorityRules.add(rule.copy());
      }
    }

    @Override
    public int getColumnCount() {
      return 3;
    }

    @Override
    public int getRowCount() {
      return myMappingPriorityRules.size();
    }

    public void addItem(MappingPriorityRule mappingPriorityRule) {
      if (mappingPriorityRule != null) {
        myMappingPriorityRules.add(mappingPriorityRule);
      }
    }

    @Override
    public Object getValueAt(int rowIndex, int columnIndex) {
      MappingPriorityRule rule = myMappingPriorityRules.get(rowIndex);
      if (columnIndex == 0) {
        return rule.getLeft();
      }
      if (columnIndex == 1) {
        return rule.getType();
      }
      if (columnIndex == 2) {
        return rule.getRight();
      }
      return null;
    }

    @Override
    public void setValueAt(Object aValue, int rowIndex, int columnIndex) {
      MappingPriorityRule rule = myMappingPriorityRules.get(rowIndex);
      if (columnIndex == 0 && aValue instanceof MappingConfig_AbstractRef) {
        rule.setLeft((MappingConfig_AbstractRef) aValue);
      }
      if (columnIndex == 1 && aValue instanceof RuleType) {
        rule.setType((RuleType) aValue);
      }
      if (columnIndex == 2 && aValue instanceof MappingConfig_AbstractRef) {
        rule.setRight((MappingConfig_AbstractRef) aValue);
      }
    }

    @Override
    public void removeRow(int idx) {
      myMappingPriorityRules.remove(idx);
    }

    @Override
    public Class<?> getColumnClass(int columnIndex) {
      if (columnIndex == 0 || columnIndex == 2) {
        return MappingConfig_AbstractRef.class;
      }
      if (columnIndex == 1) {
        return RuleType.class;
      }
      return super.getColumnClass(columnIndex);
    }

    @Override
    public String getColumnName(int column) {
      switch (column) {
        case 0:
          return "Language Generator";
        case 1:
          return "Rule";
        case 2:
          return "Extended Generators";
        default:
          return "";
      }
    }

    @Override
    public boolean isCellEditable(int rowIndex, int columnIndex) {
      return true;
    }

    public boolean isModified() {
      return !(myModuleDescriptor.getPriorityRules().containsAll(myMappingPriorityRules)
               && myMappingPriorityRules.containsAll(myModuleDescriptor.getPriorityRules())
      );
    }

    public void apply(GeneratorDependencyProvider generatorDependencies) {
      // Dubious code. The idea seems to be to remove rules when module import is gone. However:
      // (a) it's not nice to alter user data without notice;
      // (b) external refs inside RefSet only are considered for removal, ExternalRef with missing generator right in a rule (not under RefSet) is ignored
      // Would be better to warn user instead.
      final Set<SModuleReference> accessibleGenerators = generatorDependencies.getGenerators();
      accessibleGenerators.add(myModuleDescriptor.getModuleReference()); // generator module being edited is always accessible
      for (MappingPriorityRule rule : myMappingPriorityRules) {
        Queue<Pair<MappingConfig_AbstractRef, MappingConfig_RefSet>> queue = new LinkedList<>();
        // map entry to set it lives in
        queue.add(new Pair<>(rule.getRight(), null));
        while (!queue.isEmpty()) {
          Pair<MappingConfig_AbstractRef, MappingConfig_RefSet> ref = queue.poll();
          if (ref.o1 instanceof MappingConfig_RefSet) {
            final MappingConfig_RefSet refSet = (MappingConfig_RefSet) ref.o1;
            for (MappingConfig_AbstractRef ref1 : refSet.getMappingConfigs()) {
              // record children of RefSet along with RefSet itself for further processing
              queue.add(new Pair<>(ref1, refSet));
            }
          } else if (ref.o1 instanceof MappingConfig_ExternalRef) {
            final MappingConfig_ExternalRef extRef = (MappingConfig_ExternalRef) ref.o1;
            if (!accessibleGenerators.contains(extRef.getGenerator()) && ref.o2 != null) {
              ref.o2.getMappingConfigs().remove(ref.o1);
            }
          }
        }
      }
      myModuleDescriptor.getPriorityRules().clear();
      myModuleDescriptor.getPriorityRules().addAll(myMappingPriorityRules);
    }
  }

  public class AddFacetsTab extends BaseTab {
    private final List<FacetCheckBox> myCheckBoxes = new ArrayList<>();

    public AddFacetsTab() {
      super(PropertiesBundle.message("module.facets.title"), Nodes.Plugin, PropertiesBundle.message("module.facets.tip"));
    }

    @Override
    public void init() {
      final HashMap<String, SModuleFacet> existingFacetTypes = new HashMap<>();
      for (final SModuleFacet moduleFacet : myModule.getFacets()) {
        existingFacetTypes.put(moduleFacet.getFacetType(), moduleFacet);
      }

      final FacetsRegistry facetsRegistry = myMPSProject.getComponent(FacetsRegistry.class);

      Set<String> applicableFacetTypes = facetsRegistry.getApplicableFacetTypes(myModule.getUsedLanguages());

      for (String facetType : facetsRegistry.getFacetTypes()) {
        if (!facetsRegistry.getFacetFactory(facetType).isApplicable(myModule)) {
          continue;
        }

        SModuleFacet existingFacetInstance = existingFacetTypes.get(facetType);
        String facetPresentation = facetsRegistry.getFacetFactory(facetType).getPresentation();
        if (facetPresentation.isEmpty()) {
          facetPresentation = type2PresentationConverter(facetType);
        }
        if (applicableFacetTypes.contains(facetType)) {
          facetPresentation = String.format(
              PropertiesBundle.message("module.facets.checkbox.title"),
              facetPresentation
          );
        }
        FacetCheckBox checkBox = existingFacetTypes.containsKey(facetType)
                                 ? new FacetCheckBox(AddFacetsTab.this,
                                                     existingFacetInstance,
                                                     myFacetTabsPersistence.getFacetTab(existingFacetInstance),
                                                     facetPresentation)
                                 : new FacetCheckBox(AddFacetsTab.this,
                                                     facetType,
                                                     facetPresentation);

        myCheckBoxes.add(checkBox);
      }

      final JPanel panel = new JPanel();
      panel.setLayout(new BoxLayout(panel, BoxLayout.Y_AXIS));
      final int i = 5;
      panel.setBorder(BorderFactory.createEmptyBorder(i, i, i, i));
      if (myCheckBoxes.isEmpty()) {
        panel.add(new JBLabel("No facets suitable for the module found"));
      } else {
        Collections.sort(myCheckBoxes);
        for (FacetCheckBox checkBox : myCheckBoxes) {
          checkBox.addTo(panel);
        }
      }

      setTabComponent(panel);
    }

    /**
     * Converts ID-like facet type to better human readable label.
     * <p>
     * This is temporary helper method for transition period.
     * Should be removed alongside with {@link FacetsFacade#addFactory(String, FacetsFacade.FacetFactory)}.
     */
    @Deprecated(since = "2020.1", forRemoval = true)
    private String type2PresentationConverter(String facetType) {
      final StringBuilder builder = new StringBuilder(facetType.length());
      if (!facetType.isEmpty()) {
        builder.append(Character.toUpperCase(facetType.charAt(0)));
      }
      for (int i = 1; i < facetType.length(); i++) {
        if (Character.isUpperCase(facetType.charAt(i))) {
          builder.append(' ');
        }
        builder.append(facetType.charAt(i));
      }
      return NameUtil.captionWithNamingPolicy(builder.toString());
    }

    @Override
    public boolean isModified() {
      for (FacetCheckBox checkBox : myCheckBoxes) {
        if (checkBox.isExistingToRemove() || checkBox.isNewlyCreated()) {
          return true;
        }
      }
      return false;
    }

    @Override
    public void apply() {
      for (FacetCheckBox checkBox : myCheckBoxes) {
        SModuleFacet facet = checkBox.getFacet();
        Tab tab = checkBox.getTab();
        if (checkBox.isNewlyCreated()) {
          if (tab != null) {
            // not all facets necessarily feature UI component, but in case they do, let the tab populate facet with updated values.
            // The reason is that apply() for AddFacetsTab comes earlier than apply to any newly added tab (due to natural order of tab addition).
            // Should not be an issue to apply twice (once here and subsequently from MPSPropertiesConfigurable#apply())
            tab.apply();
            if (tab instanceof DocumentationFacetTab) {
              // DocumentationFacetTab#apply() requires SModule, which is unavailable
              // due to `DocumentationFacet.module` being null.
              // That's why I use DocumentationFacetTab#apply(SModule).
              ((DocumentationFacetTab) tab).apply(myModule);
            }
          }
          myModuleDescriptor.addFacetDescriptor(facet);
          checkBox.created();
        } else if (checkBox.isExistingToRemove()) {
          if (tab != null) {
            tab.unapply();
            if (tab instanceof DocumentationFacetTab){
              ((DocumentationFacetTab) tab).unapply(myModule);
            }
          }
          myModuleDescriptor.removeFacetDescriptor(checkBox.getFacet());
          checkBox.existingRemoved();
        }
      }
    }

  }

  /*package*/ class FacetCheckBox implements ItemListener, Comparable<FacetCheckBox> {
    private final JBCheckBox myCheckBox;
    private final String myFacetType;
    private boolean myExisting;
    private final Tab myAnchorTab;
    private Tab myFacetTab;
    private SModuleFacet myFacet;

    public FacetCheckBox(@NotNull Tab anchorTab, @NotNull SModuleFacet facet, @Nullable Tab tab, @NotNull String label) {
      myAnchorTab = anchorTab;
      myCheckBox = new JBCheckBox(label, myExisting = true);
      myCheckBox.addItemListener(this);
      myFacet = facet;
      myFacetType = facet.getFacetType();
      myFacetTab = tab;
    }

    public FacetCheckBox(@NotNull Tab anchorTab, @NotNull String facetType, @NotNull String label) {
      myAnchorTab = anchorTab;
      myFacetType = facetType;
      myCheckBox = new JBCheckBox(label, myExisting = false);
      myCheckBox.addItemListener(this);
      myFacetTab = null;
    }

    public boolean isExistingToRemove() {
      // unchecked ==> scheduled for removal
      return myExisting && !myCheckBox.isSelected();
    }

    public boolean isNewlyCreated() {
      // created and still checked in UI
      // (myFacet stays != null once created, even if newly created facet is unchecked, to preserve page values)
      return !myExisting && myFacet != null && myCheckBox.isSelected();
    }

    // tell the checkbox that it's 'existingToRemove' state has been honoured. Still, we don't forget myFacet as user may want to revert back
    // (e.g. uncheck facet, Apply, check back, Apply again)
    /*package*/ void existingRemoved() {
      assert myExisting;
      myExisting = false;
    }

    /*package*/ void created() {
      assert !myExisting;
      myExisting = true;
    }

    @Override
    public void itemStateChanged(ItemEvent e) {
      if (!e.getSource().equals(myCheckBox)) {
        return;
      }
      if (myCheckBox.isSelected()) {
        if (myFacet == null) {
          final FacetsRegistry facetRegistry = myMPSProject.getComponent(FacetsRegistry.class);
          myFacet = facetRegistry.getFacetFactory(myFacetType).create(myModule);
          // Give the new facet instance chance to initialize itself with defaults. This doesn't look nice,
          // but there's no general contract what's initialization sequence for a facet is.
          // Alternatives are: (1) to initialize facet defaults inside factory/cons, which is not that good, too
          // as it would happen for regular facets that would get populated later with subsequent load(properMemento) call;
          // (2) not to use Facet instance to represent a tab but rather ModuleFacetDescriptor (the code that adds facet in apply
          // goes from Facet instance through MFD anyway). Latter change is far greater and would expose memento keys to UI
          // (now FacetTab could use typed access of Facet instance), which is not perfect either.
          // XXX I wonder why not to extend ModuleFacet interface with another, explicit `loadDefaults()` method?
          myFacet.load(new MementoImpl(), PersistenceContextImpl.forModule(myModule));
        }
        if (myFacetTab == null) {
          myFacetTab = myFacetTabsPersistence.getFacetTab(myFacet);
          if (myFacetTab != null) {
            // perhaps, would be better if MPSPropertiesConfigurable is responsible for tab initialization,
            // and keeps track of which one is already initialized to avoid multiple initializations.
            myFacetTab.init();
          }
        }
        if (myFacetTab != null) {
          ModulePropertiesConfigurable.this.insertTab(myFacetTab, ModulePropertiesConfigurable.this.indexOfTab(myAnchorTab));
        }
      } else {
        if (myFacetTab != null) {
          ModulePropertiesConfigurable.this.removeTab(myFacetTab);
        }
      }
    }

    /*package*/ SModuleFacet getFacet() {
      return myFacet;
    }

    /*package*/ void addTo(JPanel panel) {
      panel.add(myCheckBox);
    }

    /**
     * @return <code>null</code> if there's no UI component (Tab) for the facet.
     */
    /*package*/ Tab getTab() {
      return myFacetTab;
    }

    @Override
    public int compareTo(@NotNull FacetCheckBox o) {
      return myCheckBox.getText().toLowerCase().compareTo(o.myCheckBox.getText().toLowerCase());
    }
  }

  /*package*/ final static class DevkitVisibleScope implements SearchScope {
    private final SRepository myRepository;
    private final DevKit myModule;
    private VisibleDepsSearchScope myDelegate;

    // XXX In fact, shall look into ModuleDependenciesTab and myDependTableModel, to avoid extra apply() to get new deps,
    //     but I'm too lazy to spend time on this subtle difference
    public DevkitVisibleScope(SRepository repository, DevKit module) {
      myRepository = repository;
      myModule = module;
    }

    private void init() {
      // don't deal with multi-threading, the scope is local for single thread
      if (myDelegate == null) {
        // XXX not sure whether I shall use exportedSolutions vs allExportedSolutions (latter seems right but the idea of the scope was it
        //     would walk dependencies itself. OTOH, as long as it has no idea we're looking at a devkit, how would it know to walk extended devkits?)
        //     What I don't like about 'all', especially allExportedLanguageIds, is that behind the scene there's resolve for module references, while
        //     used languages has to be recorded/computed SLanguage w/o need to resolve language module first. Once we have Devkit API in a proper way
        //     (shall expose languages as 'SLanguage', not as SModuleReference/Language module, we can refactor this code.
        Collection<SLanguage> exportedLanguages = IterableUtil.asCollection(myModule.getAllExportedLanguageIds());
        myDelegate = new VisibleDepsSearchScope(myRepository, myModule.getAllExportedSolutions(), exportedLanguages);
      }
    }

    /*package*/ void reset() {
      myDelegate = null;
    }

    @NotNull
    @Override
    public Iterable<SModule> getModules() {
      init();
      return myDelegate.getModules();
    }


    @NotNull
    @Override
    public Iterable<SModel> getModels() {
      init();
      return myDelegate.getModels();
    }

    @Nullable
    @Override
    public SModel resolve(@NotNull SModelReference reference) {
      init();
      return myDelegate.resolve(reference);
    }

    @Nullable
    @Override
    public SModule resolve(@NotNull SModuleReference reference) {
      init();
      return myDelegate.resolve(reference);
    }

    @Nullable
    @Override
    public SNode resolve(@NotNull SNodeReference reference) {
      init();
      return myDelegate.resolve(reference);
    }
  }
}
