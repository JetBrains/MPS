# Concept Catalog

All FQNs below are usable directly in the `concept` field of JSON blueprints.

## Root Concepts (Rootable)

| FQN (short) | Alias | Purpose |
|---|---|---|
| `jetbrains.mps.lang.plugin.structure.ActionDeclaration` | Action | A single invocable action |
| `jetbrains.mps.lang.plugin.structure.ActionGroupDeclaration` | Group | A named collection of actions / sub-groups / anchors / separators |
| `jetbrains.mps.lang.plugin.structure.InterfaceGroup` | Bootstrap Group | A wrapper that represents an action group defined elsewhere (usually in IDEA's plugin.xml) so MPS code can add to it |
| `jetbrains.mps.lang.plugin.structure.ToolDeclaration` | Tool | A tool-window declaration |
| `jetbrains.mps.lang.plugin.structure.TabbedToolDeclaration` | Tabbed Tool | A tool window with a built-in tab container |
| `jetbrains.mps.lang.plugin.structure.KeymapChangesDeclaration` | — | Shortcut bindings for a specific keymap |
| `jetbrains.mps.lang.plugin.structure.PreferencesComponentDeclaration` | Preferences Component | Persistent settings + UI pages in Preferences dialog |
| `jetbrains.mps.lang.plugin.structure.EditorTab` | (none) | Adds a tab to the MPS concept editor (the editor header tabs shown in language definition editors — see `jetbrains.mps.ide.devkit.editor` for the `Structure`/`Editor`/`Behavior`/… tabs) |
| `jetbrains.mps.lang.plugin.structure.Order` | — | Sequences a list of `EditorTab`s; MPS uses the declared order to render the tab strip |
| `jetbrains.mps.lang.plugin.structure.NonDumbAwareActions` | — | Lists actions that are **not** dumb-aware (i.e. must wait for indexing to finish before they can run) |
| `jetbrains.mps.lang.plugin.structure.IdeaConfigurationXml` | IdeaComponents.xml | Produces a plugin.xml fragment — declares application/project components, services, or action descriptors that live in plain IDEA XML |
| `jetbrains.mps.lang.plugin.structure.IdeaInitializerDescriptor` | — | Declares plugin.xml integration (application components etc.) |
| `jetbrains.mps.lang.plugin.standalone.structure.ApplicationPluginDeclaration` | Application Plugin | Application-scoped init/dispose hook |
| `jetbrains.mps.lang.plugin.standalone.structure.ProjectPluginDeclaration` | Project Plugin | Project-scoped init/dispose hook |
| `jetbrains.mps.lang.plugin.standalone.structure.StandalonePluginDescriptor` | — | Opts a plugin model into static registration when the model name doesn't follow the `<solution>.plugin` convention |

## Non-Root Concepts You Will Reference

| FQN (short) | Alias | Role |
|---|---|---|
| `jetbrains.mps.lang.plugin.structure.ExecuteBlock` | execute | The action's body |
| `jetbrains.mps.lang.plugin.structure.IsApplicableBlock` | isApplicable | Returns boolean; action is enabled only when true |
| `jetbrains.mps.lang.plugin.structure.DoUpdateBlock` | update | Imperative presentation update (enable/disable/rename at runtime) |
| `jetbrains.mps.lang.plugin.structure.UpdateBlock` | (abstract) | Super of IsApplicableBlock + DoUpdateBlock. Use one of its subconcepts. |
| `jetbrains.mps.lang.plugin.structure.ActionDataParameterDeclaration` | simple parameter (java class) | Action param extracted from an IDE `DataKey` (project, model, module, node, editor, etc.) |
| `jetbrains.mps.lang.plugin.structure.ActionParameterDeclaration` | complex parameter (node<>,...) | Typed param (e.g. `node<Concept>`) derived from other simple parameters via filter conditions |
| `jetbrains.mps.lang.plugin.structure.ActionConstructionParameterDeclaration` | — | Parameter passed when the action is **instantiated** inside an `ActionInstance` |
| `jetbrains.mps.lang.plugin.structure.ActionParameterCondition` | (interface) | Super of `RequiredCondition`, etc. Attached to a param to declare it mandatory/derived. |
| `jetbrains.mps.lang.plugin.structure.RequiredCondition` | required | Marks a parameter as required (action is disabled if missing). Alternatively, set the parameter's `isOptional` property to the inverse. |
| `jetbrains.mps.lang.plugin.structure.EditorTabReference` | — | Used inside an `Order` to point at an `EditorTab` (reference `editorTab`) |
| `jetbrains.mps.lang.plugin.structure.ActionReference` | — | Used inside a `NonDumbAwareActions` root to point at an `ActionDeclaration` |
| `jetbrains.mps.lang.plugin.structure.IdeaActionsDescriptor` | actions | Child of `IdeaConfigurationXml` — lists actions to emit into plugin.xml |
| `jetbrains.mps.lang.plugin.structure.ActionGroupMember` | (interface) | Anything that can appear in a group's element list |
| `jetbrains.mps.lang.plugin.structure.ActionInstance` | — | Reference to an action inside a group's element list; carries construction-parameter values |
| `jetbrains.mps.lang.plugin.structure.GroupAnchor` | -> | Named extension point inside a group |
| `jetbrains.mps.lang.plugin.structure.Separator` | <---> | A menu separator |
| `jetbrains.mps.lang.plugin.structure.GroupContents` | (interface) | Super of `ElementListContents`, `BuildGroupBlock`, `UpdateGroupBlock` |
| `jetbrains.mps.lang.plugin.structure.ElementListContents` | element list | Static list of actions / sub-groups / anchors / separators |
| `jetbrains.mps.lang.plugin.structure.BuildGroupBlock` | build | Imperative body building the group's elements once |
| `jetbrains.mps.lang.plugin.structure.UpdateGroupBlock` | update | Imperative body rebuilt before every display |
| `jetbrains.mps.lang.plugin.structure.ModificationStatement` | add | "Add this group/anchor to another group at a point". Attached under the `modifier` child of an `ActionGroupDeclaration`. |
| `jetbrains.mps.lang.plugin.structure.InitBlock` | init | Tool lifecycle init |
| `jetbrains.mps.lang.plugin.structure.DisposeBlock` | dispose | Tool lifecycle dispose |
| `jetbrains.mps.lang.plugin.structure.GetComponentBlock` | getComponent | Tool body — returns a Swing `JComponent` |
| `jetbrains.mps.lang.plugin.structure.KeyMapKeystroke` | — | A single keystroke (modifiers + keycode) |
| `jetbrains.mps.lang.plugin.structure.SimpleShortcutChange` | simple | Binds one keystroke (or a sequence) to an action |
| `jetbrains.mps.lang.plugin.structure.PreferencePage` | — | A tab inside a PreferencesComponent |
| `jetbrains.mps.lang.plugin.structure.PreferencePageCommitBlock` | commit | Apply dialog state → persistent fields |
| `jetbrains.mps.lang.plugin.structure.PreferencePageResetBlock` | reset | Refresh dialog from persistent fields |
| `jetbrains.mps.lang.plugin.structure.PreferencePageIsModifiedBlock` | isModified | Gate the Apply button |
| `jetbrains.mps.lang.plugin.structure.PersistentPropertyDeclaration` | — | A field of a PreferencesComponent that is serialized to workspace.xml |
| `jetbrains.mps.lang.plugin.structure.OnAfterReadBlock` / `OnBeforeWriteBlock` | — | Custom (de)serialization hooks |
| `jetbrains.mps.lang.plugin.standalone.structure.ApplicationPluginInitBlock` / `ApplicationPluginDisposeBlock` | init / dispose | Application plugin body |
| `jetbrains.mps.lang.plugin.standalone.structure.ProjectPluginInitBlock` / `ProjectPluginDisposeBlock` | init / dispose | Project plugin body (receives `project`) |
| `jetbrains.mps.lang.plugin.standalone.structure.GetToolInProjectOperation` | — | Expression `project.tool<ToolName>` — retrieves a tool instance |
| `jetbrains.mps.lang.plugin.standalone.structure.GetPreferencesComponentInProjectOperation` | — | Expression `project.preferenceComponent<ComponentName>` |
