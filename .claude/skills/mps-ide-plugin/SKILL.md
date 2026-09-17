---
name: mps-ide-plugin
description: >-
  Use when authoring or modifying MPS IDE plugins — code that integrates with the MPS / IntelliJ host IDE shell. Covers ActionDeclaration, ActionGroupDeclaration, ToolDeclaration/TabbedToolDeclaration (dockable tool windows), KeymapChangesDeclaration (shortcuts), PreferencesComponentDeclaration (settings pages), EditorTab+Order (concept editor tabs), InterfaceGroup (bootstrap wrappers around external groups), NonDumbAwareActions, IdeaConfigurationXml, ApplicationPluginDeclaration/ProjectPluginDeclaration/StandalonePluginDescriptor (lifecycle hooks). Uses jetbrains.mps.lang.plugin and jetbrains.mps.lang.plugin.standalone. Trigger terms: action group, tool window, menu item, MainMenu, EditorPopup, NodeActions, ModelActions, ModuleActions, ProjectViewPopupMenu, MPS plugin solution, ActionInstance, ModificationStatement, DataKey, MPSCommonDataKeys, MPSDataKeys, dumb-aware, project.tool<...>, project.preferenceComponent<...>, application plugin<...>, project plugin<...>.
type: reference
---

# MPS IDE Plugin Language

## Loading companion skills

Companion names in this skill are lazy dependencies: load only those relevant to the current task. If this skill came from an MCP server, use the host's skill loader to resolve the companion's unique discovered entry URI on the same host-assigned originating server. If the host has no server-backed skill loader, stop and report that limitation; do not silently fall back to a filesystem copy. If this skill came from a filesystem catalog, load the named sibling from that same catalog at `<skills-root>/<skill-name>/SKILL.md`, even if remote skill loaders are also available. Do not invent a tool name or server endpoint.

This skill covers **IDE plugins**: code that integrates with the MPS/IntelliJ host IDE — menu actions, tool windows, shortcuts, settings panels. Plugin code lives in a regular `Solution` module (compilation mode: "Regular MPS module contributing extensions to MPS") with model(s) using `jetbrains.mps.lang.plugin` and `jetbrains.mps.lang.plugin.standalone`. The canonical model name is `<solution_name>.plugin` — MPS auto-registers it on that convention.

Official documentation: <https://www.jetbrains.com/help/mps/plugin.html>

## Critical Directives

- **Disambiguate the overloaded vocabulary first.** "Plugin", "tool", "action group" each mean two or three different things. See `references/terminology.md` before naming anything.
- **A plugin solution is NOT an IntelliJ plugin jar.** The solution contains MPS models; the jar is what the MPS Build Language packages from it. Don't conflate.
- **A `Tool` is a tool window** — a dockable panel — **not** a CLI tool or an action.
- **Use MPS MCP tools for edits.** `mps_mcp_insert_root_node_from_json`, `mps_mcp_update_node`, `mps_mcp_print_node`. Resolve concept names with `mps_mcp_search_concepts` / `mps_mcp_get_concept_details`; never guess.
- **`ModificationStatement.modifiedGroup` is a node reference (`r:...`), not a concept reference (`c:...`).** Look up the target group via `mps_mcp_search_root_node_by_name` to obtain the node ref.
- **Add a model dependency on `jetbrains.mps.ide.actions`** before referencing built-in groups (`MainMenu`, `EditorPopup`, `NodeActions`, `ModelActions`, `ModuleActions`, `MainToolbar`, `ProjectViewPopupMenu`).
- **Pick `requiredAccess` deliberately:** `none` (no model touch), `read` (safe traversal), `command` (mutates with undo + write lock — **never open modal dialogs from here**), `editorCommand` (correct undo scope for editor-driven edits).
- **Don't call `project.tool<…>` from `dispose`.** The lookup can fail during teardown.
- **Mac keymap trap:** with `Keymap = Default`, MPS translates `ctrl` → `cmd` on macOS. If you specifically want `ctrl` on Mac, add a separate `Mac_OS_X` `KeymapChangesDeclaration`.
- After edits, rebuild the module (`mps_mcp_alter_nodes` MAKE) so generated Java is current, then **Reload All** in MPS for hot-load.
- Validate every new root with `mps_mcp_check_root_node_problems`.

## Required Used Languages (on the Model)

- `jetbrains.mps.lang.plugin` — core concepts (Action, Group, Tool, …).
- `jetbrains.mps.lang.plugin.standalone` — ApplicationPlugin / ProjectPlugin, `project.tool<...>`, `project.preferenceComponent<...>`, `StandalonePluginDescriptor`.
- `jetbrains.mps.baseLanguage` (+ `.classifiers`, `.collections`, `.closures`) — for code bodies.
- `jetbrains.mps.lang.smodel` if you touch nodes/models.
- `jetbrains.mps.lang.resources` for icons.

## Common-Path Workflow

For a typical "add a menu item that does X on the selected node":

1. **Identify the context** — which IDE menu/toolbar should it appear in? (`MainMenu`, `EditorPopup`, `NodeActions`, `ProjectViewPopupMenu`, …).
2. **Locate the target group.** `mps_mcp_search_root_node_by_name` for the group name. Inspect with `mps_mcp_print_node` to discover the `GroupAnchor`s you can target.
3. **Decide plugin solution location.** Reuse an existing `*.pluginSolution` module if one fits; otherwise create a new solution and a `<name>.plugin` model with the used languages above.
4. **Author an `ActionDeclaration`** — see `references/actions.md`. Set name, caption, parameters (`MPSCommonDataKeys.MPS_PROJECT` / `.NODE` etc.), `requiredAccess`, isApplicable, execute body.
5. **Author an `ActionGroupDeclaration`** — see `references/action-groups.md`. Owns your action(s) via `ElementListContents` → `ActionInstance`. Add a `ModificationStatement` under `modifier` targeting the existing group + an anchor.
6. **Add a keybinding** (optional) — new `KeymapChangesDeclaration` referencing the action — see `references/keymaps.md`.
7. **Rebuild** the solution via `mps_mcp_alter_nodes` MAKE; reload MPS.
8. **Validate** with `mps_mcp_check_root_node_problems` on each new root.

For other task families: tool window → `references/tools.md`; settings page → `references/preferences.md`; editor tabs → `references/editor-tabs.md`; bespoke startup → `references/lifecycle-plugins.md`.

## Reference Examples in This Repository

Seed `mps_mcp_print_node` / `mps_mcp_query_nodes` (FIND_USAGES) with these:

| Concept | Example nodes | Model |
|---|---|---|
| `ActionDeclaration` | `ShowHelpForNode`, `ShowDefaultHelp`, `ShowHelpForRoot`, `ShowHelpForAspect` | `jetbrains.mps.lang.structure.pluginSolution.plugin` |
| `ActionGroupDeclaration` | `ShowHelp` (contributes to `Structure` and `ModelActions`) | `jetbrains.mps.lang.structure.pluginSolution.plugin` |
| `ToolDeclaration` | `TodoViewer` | `jetbrains.mps.ide.tools.todo` |
| `PreferencesComponentDeclaration` | `BehaviorDialogsPersistentOptions` | `jetbrains.mps.ide.actions` |
| `InterfaceGroup` | `IDEAWindows`, `IDEAGoTo`, `IDEAEdit`, `IDEAFile`, `IDEAView`, `IDEATools`, `IDEAVCS` | `jetbrains.mps.ide.actions` |
| `EditorTab` | `Actions`, `Behavior`, `Constraints`, `Data Flow`, `Editor`, `Feedback`, `Find Usages`, `Generator`, `Intentions`, `Refactorings`, `Structure`, `Textgen`, `Typesystem` | `jetbrains.mps.ide.devkit.editor` |
| `EditorTab` (alt) | `Run Configuration`, `Executor`, `Producer` | `jetbrains.mps.execution.configurations.pluginSolution.plugin` |
| `Order` (editor tabs) | `Order` root | `jetbrains.mps.ide.devkit.editor` |

## Related Skills

- `mps-aspect-actions` — **node factories**, unrelated to IDE actions despite the name.
- `mps-aspect-intentions` — Alt+Enter context actions *inside* the projectional editor.
- `mps-aspect-editor-menus-and-keymaps` — editor cell actions, substitute menus, side transforms (a different layer from the IDE shell).
- `mps-build-language` — packaging a plugin solution into a distributable MPS/IDEA plugin (the build script must copy `startup.properties` from the solution's resources).
- `mps-quotations` / `mps-model-manipulation` — writing the base-language bodies inside `execute`/`isApplicable`/`init`/`dispose` blocks. These bodies do **not** already hold a model lock the way a rule or behavior body does, so open only `references/concurrent-access.md` in the `mps-model-manipulation` skill root after loading that companion skill from the same origin — the `command` / `read action` / `execute command in EDT` wrappers.
- `mps-baselanguage` — mechanics of building BaseLanguage JSON.

## Reference Index

- Open `references/terminology.md` when **starting any plugin task** — disambiguates "plugin solution" vs "IntelliJ plugin", `ApplicationPlugin`/`ProjectPlugin` vs the deployable jar, `Tool` (tool window) vs "CLI tool", `ActionGroup` vs `BootstrapGroup`/`InterfaceGroup`, anchor (`->`), `EditorMenu`/`SubstituteMenu` (different aspect), Intention (different aspect), Node Factory (different language).
- Open `references/concept-catalog.md` when **looking up a concept FQN** — every rootable concept (`ActionDeclaration`, `ActionGroupDeclaration`, `InterfaceGroup`, `ToolDeclaration`, `TabbedToolDeclaration`, `KeymapChangesDeclaration`, `PreferencesComponentDeclaration`, `EditorTab`, `Order`, `NonDumbAwareActions`, `IdeaConfigurationXml`, `IdeaInitializerDescriptor`, `ApplicationPluginDeclaration`, `ProjectPluginDeclaration`, `StandalonePluginDescriptor`) plus every non-root concept you reference (blocks, parameters, instances, anchors, separators, keystrokes, shortcut changes, preference pages, persistent properties, etc.).
- Open `references/actions.md` when **declaring or modifying an `ActionDeclaration`** — all fields (`name`, `caption`, `description`, `mnemonic`, `ID`, `overrides`, `isAlwaysVisible`, `requiredAccess`, `outsideCommandExecution`, `updateInBackground`, `fillActionContext`, `nativeLanguage`, `updateBlock`, `executeFunction`, `icon`, `parameter`, `constructionParameter`, `methodDeclaration`, `places`), the two parameter kinds (`ActionDataParameterDeclaration` simple-from-DataKey vs `ActionParameterDeclaration` complex-typed), `RequiredCondition` vs `isOptional`, how to refer to parameters inside bodies (`ActionParameterReferenceOperation` / `ActionDataParameterReferenceOperation`), the `ShowHelpForNode` blueprint with typical `MPSCommonDataKeys.MPS_PROJECT` + `MPSCommonDataKeys.NODE`, and the `requiredAccess` table (`none` / `read` / `command` / `editorCommand`) with the dialog-from-`command` deadlock warning.
- Open `references/action-groups.md` when **assembling menus / toolbars / popups** — `ActionGroupDeclaration` fields (`name`, `caption`, `mnemonic`, `isPopup`, `isInvisibleWhenDisabled`, `isInternal`, `isPluginXmlGroup`, `updateInBackground`, `modifier`, `contents`), the three `contents` variants (`ElementListContents` static / `BuildGroupBlock` once / `UpdateGroupBlock` every open), `ActionGroupMember` interface, `ActionInstance` with `actualParameter` for construction parameters, `GroupAnchor` (named slots), `Separator`, `InterfaceExtentionPoint` (`bootstrap ->`), `ModificationStatement` to plug into `MainMenu` / `EditorPopup` / `NodeActions` / etc., and the `ShowHelp` blueprint.
- Open `references/tools.md` when **building a tool window** — `ToolDeclaration` fields (`name`, `caption`, `position` enum, `isAvailableOnStartup`, `number` deprecated, `icon` deprecated, `toolIcon`, `getComponentBlock`, `toolInitBlock`, `toolDisposeBlock`, `fieldDeclaration`, `methodDeclaration`, `shortcut`), the lifecycle (`BaseProjectTool`, init once, dispose on close, never call `project.tool<…>` from dispose), retrieval via `project.tool<MyTool>` (`GetToolInProjectOperation`), the `TodoViewer` blueprint, and `TabbedToolDeclaration` differences (no `getComponentBlock`, tabs added from init).
- Open `references/keymaps.md` when **adding shortcuts** — `KeymapChangesDeclaration` fields (`name`, `keymap` enum: `Default` / `Mac_OS_X` / `Mac_OS_X_Plus` / `XWin` / `GNOME` / `KDE`, `isPluginXmlKeymap`, `shortcutChange`), `SimpleShortcutChange` with action ref + ordered `KeyMapKeystroke` sequence (chords), `KeyMapKeystroke` fields (`modifiers` space-separated string, `keycode` Java-style like `VK_F9`, `change` enum `replace_all` / `remove`), the `Default` → `cmd`-on-Mac translation, blueprint for `HelpKeymap` with `Ctrl-F1`.
- Open `references/preferences.md` when **creating a Settings dialog page** — `PreferencesComponentDeclaration` fields (`name`, `persistenPropertyDeclaration`, `afterReadBlock`, `beforeWriteBlock`, `preferencePage`), `PreferencePage` fields (`name`, `helpTopic`, `icon`, `component`, `isModifiedBlock`, `resetBlock`, `commitBlock`), how to retrieve from code (`project.preferenceComponent<MyPrefs>`), persistence to `workspace.xml`, the `MyPluginPrefs` skeleton.
- Open `references/editor-tabs.md` when **adding tabs to a concept editor** (e.g. the language-definition editor's `Structure`/`Editor`/`Behavior` tabs) — `EditorTab` fields (`name`, `shortcutChar`, `commandOnCreate` deprecated, `baseNodeConcept`, `icon`, `order` legacy, `listenBlock`, `baseNodeBlock`, `isApplicableBlock`, `nodesBlock`, `createTabBlock`), `Order` root + `EditorTabReference` for left-to-right ordering, the `Behavior` tab blueprint.
- Open `references/interface-group.md` when **targeting an external (IDEA / platform) action group** — `InterfaceGroup` fields (`name`, `groupID`, `contents`, `modifier`), the `groupID` expression pattern (`IdeActions.GROUP_FILE` etc.), the `IDEAFile` blueprint, and `InterfaceExtentionPoint` (`bootstrap ->`) for external extension-point ids inside an `ElementListContents`.
- Open `references/non-dumb-aware.md` when **opting actions out of dumb mode** — `NonDumbAwareActions` root, one per plugin model, listing actions that must not run while indexing is in progress.
- Open `references/idea-configuration-xml.md` when **the higher-level concepts can't express something** — `IdeaConfigurationXml` (`outputPath`, `actions` child of `IdeaActionsDescriptor`) for emitting raw `META-INF/IdeaComponents.xml`. Use sparingly.
- Open `references/lifecycle-plugins.md` when **needing bespoke application or project lifecycle hooks** — `ApplicationPluginDeclaration` (app scope) vs `ProjectPluginDeclaration` (project scope, `initBlock`/`disposeBlock` receive `project`), `fieldDeclaration` for private state, retrieval via `application plugin<Name>` / `project plugin<Name>`, the `ProjectPlugin` skeleton, when to add `StandalonePluginDescriptor` (model not following `<solution>.plugin` convention; `needInitConfig` UI toggle).
- Open `references/common-failures.md` when **a plugin feature misbehaves** — "Group X not found" (missing `jetbrains.mps.ide.actions` dep); concept-ref-vs-node-ref confusion on `modifiedGroup`; action doesn't appear (modifier missing / required param unresolved / `isAlwaysVisible` not set); deadlock when opening dialog from execute (`requiredAccess = command` holds write lock — compute inputs first, then `project.modelAccess.executeCommand { ... }`); `TabbedTool` missing `getComponentBlock` (by design); ctrl shortcut works on Win but not Mac (`Default` translates to `cmd`); `constructionParameter` without `toString()` causes generated-ID collisions; IDE doesn't see edits (rebuild + Reload All).
